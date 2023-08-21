SELECT
    stamp
-- referrer의 호스트 이름 부분 추출하기
-- PostgreSQL의 경우 substring 함수와 정규 표현식 사용하기
, SUBSTRING(referrer from 'https?://[^/]*)')AS referrer_host
-- Redshift의 경우 정규 표현식에 그룹을 사용할 수 없으므로
--, regexp_substr 함수과 regexp_replace함수를 조합해서 사용하기
--, regexp_replace(regexp_substr(referrer,'https?://[^/]*)'), 'https?://', '')