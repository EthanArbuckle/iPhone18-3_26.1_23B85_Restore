@interface AKTestData
+ (id)SAMLGetResponseDictionary;
+ (id)SAMLPostResponseDictionary;
+ (id)SIMDataForOTPResync;
+ (id)SPDForAuthorizationSRPSuccess;
+ (id)SPDForCriticalAuthTokensSRPSuccess;
+ (id)SPDForDemoAccountSRPSuccess;
+ (id)SPDForFidoAccountSRPSuccess;
+ (id)SPDForHSA2AccountSRPPiggybacking;
+ (id)SPDForHSA2AccountSRPSuccess;
+ (id)SPDForHSA2MissingCKToken;
+ (id)SPDForMakoAccountSRPSuccess;
+ (id)SPDForManagedAccountSRPSuccess;
+ (id)SPDForSLTRequestSRPSuccess;
+ (id)SPDForStandardAccountSRPSuccess;
+ (id)SPDForStandardAccountSRPSuccessWithADPCohort;
+ (id)SPDForUnderAgeAuthorizationSRPSuccess;
+ (id)SPDMissingCriticalAuthTokensSRPSuccess;
+ (id)backoffServerInfoConfig;
+ (id)backoffServerInfoConfigOption1;
+ (id)backoffServerInfoConfigOption2;
+ (id)backoffServerInfoConfigOption3;
+ (id)backoffServerInfoConfigOption4;
+ (id)backoffServerInfoConfigOption5;
+ (id)successfulAppleIDContinuationResponse;
+ (id)successfulAppleIDCreationResponse;
+ (id)successfulChildAccountCreationResponse;
+ (id)successfulFederatedMultiUserResponse;
+ (id)successfulFederatedResponseBody;
+ (id)successfulFederatedSingleUserResponse;
+ (id)successfulFederatedSingleUserResponseWithPDPInfo;
+ (id)successfulRepairCompletionResponse;
+ (id)successfulTeenAccountCreationResponse;
+ (id)successfuliForgotCompletionResponse;
+ (id)succssfuliCSCRecoveryInitiationResponse;
+ (id)testCKGenerationAuthParameters;
+ (id)testTiburonWebApplicationName;
+ (id)testTiburonWebBundleIdentifier;
+ (id)urlBag;
@end

@implementation AKTestData

+ (id)successfuliForgotCompletionResponse
{
  v7[2] = self;
  v7[1] = a2;
  v8[0] = @"X-Apple-AK-Action";
  v9[0] = @"complete";
  v8[1] = @"X-Apple-AK-Auth-Type";
  v9[1] = @"sa";
  v8[2] = @"X-Apple-Alternate-Id";
  v9[2] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v8[3] = @"X-Apple-DSID";
  0x1634561156027D1 = [NSString stringWithFormat:@"%llu", 0x1634561156027D1];
  v9[3] = 0x1634561156027D1;
  v8[4] = @"X-Apple-Session-Key";
  v9[4] = @"ORMD1JhHa4VAcrOF29SftzhK3AU15YEzcahubvLdgbA=";
  v8[5] = @"X-Apple-Encrypted-Session-Key";
  v9[5] = @"M2E0OWU3NmItYzY4YS00NDBiLWI2OWEtYzhmN2M3ZTVmMDEwVDR3VkRodVpEVnlQSzlXS0pNTTdZYzV1cWR3RkJ5OUtnUE81dGgyOXdjQ0tsSmpSRXJOb25Eb3V0OWpKZ0VpMWFoZWNKYzJSVG50Mm42bDMwT2d0Zms3eWprK3Z4SEMrOGQzUWJQSU0rbmZOSDUyK1paS2hsZk5hTW1FbHlHaFdXRnBI";
  v8[6] = @"X-Apple-Identity-Token";
  v9[6] = @"Y29tLmFwcGxlLmdzLmlkbXMuYXV0aDpBQUFBQkx3SUFBQUFBRlhXRlhnUkRHZHpMbWxrYlhNdVlYVjBhTDBBZlJ2L1RaVXNsWVA4Y1BLb2Vmci9pcUR2ZXJMYnJsc2FEODFqb09SQ1B6N0d1Zy9zZFVtcnkvTW85Skl6cVdhVTVPTmtSV2UvSGI4eGJvc2dtMlJoWE42ZURXWU9HVEpkQjJnZUFpQXFhVUtqZVBCN1JoTStkV2hBOXlMcnpGT3BWOXBhUVFob0NXTnpTN3VlVFRTdjJPMTNpTVE9OjM2MDA=";
  v8[7] = @"X-Apple-PE-Token";
  v9[7] = @"Y29tLmFwcGxlLmdzLmlkbXMucGV0OkdWdEhLNHViNWdCelQyckVaZGk0UVlhZ3J4MVFhMVhvNzVyaUhCTm9zWkYrMFVsZlVQVnFPNCsyVU9TK241b1ZyTmJBOVplRWpVQ0tCZlJINnZuMDJkQlhrV1NDblB0SjBhV3RkN0I1QXNyREtsdlFHMDBVTmcrRW1sQ3hYd0hKN1Q2RFl0a2oySitQOHlvK3RSMUJONmFwUDV2Y3NRbnhMd2R3UTFEaS9rNjdIQ2c0RzMwWXpyM1g3ZlV2eTBHNm5PQXd3bmF3bHZyT3g5d2VwSld4cFQ1aHJtQWVYKzB5RWp6WGl3enNKMWtweUVacjRHMHp5T1hJMzdUaHA2ampQUGVSWW11MjFCeHFGcFRrOW5wWlF3VXJaa3l0elNVQ29KOCtaYlFCTUlSdHErSjBIU0R5V21CYkx6UVh5S0o4WWdsblR4ST1QRVQ6MzAw";
  v8[8] = @"Content-Type";
  v9[8] = @"text/xml;charset=UTF-8";
  v7[0] = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:9];

  v4 = [NSHTTPURLResponse alloc];
  v5 = [NSURL URLWithString:@"https://gsa.apple.com/iforgot/password/unlock"];
  v6 = [v4 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

  objc_storeStrong(v7, 0);

  return v6;
}

+ (id)succssfuliCSCRecoveryInitiationResponse
{
  v7[2] = self;
  v7[1] = a2;
  v8[0] = @"X-Apple-AK-Action";
  v9[0] = @"continue";
  v8[1] = @"X-Apple-AK-Auth-Type";
  v9[1] = @"hsa2";
  v8[2] = @"X-Apple-Alternate-Id";
  v9[2] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v8[3] = @"X-Apple-DSID";
  0x1634561156027D1 = [NSString stringWithFormat:@"%llu", 0x1634561156027D1];
  v9[3] = 0x1634561156027D1;
  v8[4] = @"X-Apple-Session-Key";
  v9[4] = @"ORMD1JhHa4VAcrOF29SftzhK3AU15YEzcahubvLdgbA=";
  v8[5] = @"X-Apple-Encrypted-Session-Key";
  v9[5] = @"M2E0OWU3NmItYzY4YS00NDBiLWI2OWEtYzhmN2M3ZTVmMDEwVDR3VkRodVpEVnlQSzlXS0pNTTdZYzV1cWR3RkJ5OUtnUE81dGgyOXdjQ0tsSmpSRXJOb25Eb3V0OWpKZ0VpMWFoZWNKYzJSVG50Mm42bDMwT2d0Zms3eWprK3Z4SEMrOGQzUWJQSU0rbmZOSDUyK1paS2hsZk5hTW1FbHlHaFdXRnBI";
  v8[6] = @"X-Apple-iCSC-Identity-Token";
  v9[6] = @"Y29tLmFwcGxlLmdzLmlkbXMuYXV0aDpBQUFBQkx3SUFBQUFBRlhXRlhnUkRHZHpMbWxrYlhNdVlYVjBhTDBBZlJ2L1RaVXNsWVA4Y1BLb2Vmci9pcUR2ZXJMYnJsc2FEODFqb09SQ1B6N0d1Zy9zZFVtcnkvTW85Skl6cVdhVTVPTmtSV2UvSGI4eGJvc2dtMlJoWE42ZURXWU9HVEpkQjJnZUFpQXFhVUtqZVBCN1JoTStkV2hBOXlMcnpGT3BWOXBhUVFob0NXTnpTN3VlVFRTdjJPMTNpTVE9OjM2MDA=";
  v8[7] = @"X-Apple-iCSC-PE-Token";
  v9[7] = @"Y29tLmFwcGxlLmdzLmlkbXMucGV0OkdWdEhLNHViNWdCelQyckVaZGk0UVlhZ3J4MVFhMVhvNzVyaUhCTm9zWkYrMFVsZlVQVnFPNCsyVU9TK241b1ZyTmJBOVplRWpVQ0tCZlJINnZuMDJkQlhrV1NDblB0SjBhV3RkN0I1QXNyREtsdlFHMDBVTmcrRW1sQ3hYd0hKN1Q2RFl0a2oySitQOHlvK3RSMUJONmFwUDV2Y3NRbnhMd2R3UTFEaS9rNjdIQ2c0RzMwWXpyM1g3ZlV2eTBHNm5PQXd3bmF3bHZyT3g5d2VwSld4cFQ1aHJtQWVYKzB5RWp6WGl3enNKMWtweUVacjRHMHp5T1hJMzdUaHA2ampQUGVSWW11MjFCeHFGcFRrOW5wWlF3VXJaa3l0elNVQ29KOCtaYlFCTUlSdHErSjBIU0R5V21CYkx6UVh5S0o4WWdsblR4ST1QRVQ6MzAw";
  v8[8] = @"Content-Type";
  v9[8] = @"text/xml;charset=UTF-8";
  v7[0] = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:9];

  v4 = [NSHTTPURLResponse alloc];
  v5 = [NSURL URLWithString:@"https://gsa.apple.com/iforgot/password/unlock"];
  v6 = [v4 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

  objc_storeStrong(v7, 0);

  return v6;
}

+ (id)successfulAppleIDCreationResponse
{
  v7[2] = self;
  v7[1] = a2;
  v8[0] = @"X-Apple-AK-Action";
  v9[0] = @"complete";
  v8[1] = @"X-Apple-AK-Auth-Type";
  v9[1] = @"sa";
  v8[2] = @"X-Apple-Alternate-Id";
  v9[2] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v8[3] = @"X-Apple-DSID";
  0x1634561156027D1 = [NSString stringWithFormat:@"%llu", 0x1634561156027D1];
  v9[3] = 0x1634561156027D1;
  v8[4] = @"X-Apple-Session-Key";
  v9[4] = @"ORMD1JhHa4VAcrOF29SftzhK3AU15YEzcahubvLdgbA=";
  v8[5] = @"X-Apple-Encrypted-Session-Key";
  v9[5] = @"M2E0OWU3NmItYzY4YS00NDBiLWI2OWEtYzhmN2M3ZTVmMDEwVDR3VkRodVpEVnlQSzlXS0pNTTdZYzV1cWR3RkJ5OUtnUE81dGgyOXdjQ0tsSmpSRXJOb25Eb3V0OWpKZ0VpMWFoZWNKYzJSVG50Mm42bDMwT2d0Zms3eWprK3Z4SEMrOGQzUWJQSU0rbmZOSDUyK1paS2hsZk5hTW1FbHlHaFdXRnBI";
  v8[6] = @"X-Apple-Identity-Token";
  v9[6] = @"Y29tLmFwcGxlLmdzLmlkbXMuYXV0aDpBQUFBQkx3SUFBQUFBRlhXRlhnUkRHZHpMbWxrYlhNdVlYVjBhTDBBZlJ2L1RaVXNsWVA4Y1BLb2Vmci9pcUR2ZXJMYnJsc2FEODFqb09SQ1B6N0d1Zy9zZFVtcnkvTW85Skl6cVdhVTVPTmtSV2UvSGI4eGJvc2dtMlJoWE42ZURXWU9HVEpkQjJnZUFpQXFhVUtqZVBCN1JoTStkV2hBOXlMcnpGT3BWOXBhUVFob0NXTnpTN3VlVFRTdjJPMTNpTVE9OjM2MDA=";
  v8[7] = @"X-Apple-PE-Token";
  v9[7] = @"Y29tLmFwcGxlLmdzLmlkbXMucGV0OkdWdEhLNHViNWdCelQyckVaZGk0UVlhZ3J4MVFhMVhvNzVyaUhCTm9zWkYrMFVsZlVQVnFPNCsyVU9TK241b1ZyTmJBOVplRWpVQ0tCZlJINnZuMDJkQlhrV1NDblB0SjBhV3RkN0I1QXNyREtsdlFHMDBVTmcrRW1sQ3hYd0hKN1Q2RFl0a2oySitQOHlvK3RSMUJONmFwUDV2Y3NRbnhMd2R3UTFEaS9rNjdIQ2c0RzMwWXpyM1g3ZlV2eTBHNm5PQXd3bmF3bHZyT3g5d2VwSld4cFQ1aHJtQWVYKzB5RWp6WGl3enNKMWtweUVacjRHMHp5T1hJMzdUaHA2ampQUGVSWW11MjFCeHFGcFRrOW5wWlF3VXJaa3l0elNVQ29KOCtaYlFCTUlSdHErSjBIU0R5V21CYkx6UVh5S0o4WWdsblR4ST1QRVQ6MzAw";
  v8[8] = @"Content-Type";
  v9[8] = @"text/xml;charset=UTF-8";
  v8[9] = @"X-Apple-I-Accepted-Terms";
  v9[9] = @"eyJ2ZXJzaW9uIjoiNTI4NjAxOjUyODgwMTowOjA6MTE5NjU4OjUyNjAwMTowOjA6MDowOjA6MDowIiwiaWNsb3VkVmVyc2lvbiI6IjUyODgwMSIsImNvdW50cnlDb2RlIiA6ICJDTiIsIm1ldGFkYXRhIjoiY3lsb24sY3lydXMyMDAifQ==";
  v7[0] = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:10];

  v4 = [NSHTTPURLResponse alloc];
  v5 = [NSURL URLWithString:@"https://gsa.apple.com/appleid/account"];
  v6 = [v4 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

  objc_storeStrong(v7, 0);

  return v6;
}

+ (id)successfulChildAccountCreationResponse
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = [self successfulAppleIDCreationResponse];
  allHeaderFields = [v9[0] allHeaderFields];
  v8 = [allHeaderFields mutableCopy];

  [v8 setObject:@"hsa2" forKeyedSubscript:@"X-Apple-AK-Auth-Type"];
  [v8 setObject:@"Y29tLmFwcGxlLmdzLmlkbXMuaGI6QUFBQUJMd0lBQUFBQUdlU3FEVVJDbWR6TG1sa2JYTXVhR0tPQkFBQUFDaTlBQVgvcVlkVDZXZENoZGg5V0ZKblp3S1JFZzVXZlIyV2NIRVpmS3lXMmloZ1dTa01LTmN6QUhvV254cnl5ZCt2VTdqcDByQU9IVTZGR01WMk1hc1ByTjdlM2xJVTVzc0VwbDdsZjlPc0JFZDIwMVNxZTN3amxuZVRUVU04MmZXQ0V5eW41eEtwMWprbXZyZ3dpTEx6L3Y2YWVCdFNlYk9wN3duUGl0T3FaSy9mZnUrenlDbnFCQnVqc2NJWTdrTExheVorSnQwPTozMTUzNjAwMDoxNzM3NjY0NTY1NjQy" forKeyedSubscript:@"X-Apple-HB-Token"];
  [v8 setObject:@"c12af1946b6e2b21a85896741332124" forKeyedSubscript:@"X-Apple-I-CK"];
  [v8 setObject:@"TEST PRK" forKeyedSubscript:@"X-Apple-I-PRK"];
  v5 = [NSHTTPURLResponse alloc];
  v6 = [v9[0] URL];
  statusCode = [v9[0] statusCode];
  v7 = [v5 initWithURL:v6 statusCode:statusCode HTTPVersion:@"1.1" headerFields:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);

  return v7;
}

+ (id)successfulTeenAccountCreationResponse
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [self successfulChildAccountCreationResponse];
  v3 = v4[0];
  objc_storeStrong(v4, 0);

  return v3;
}

+ (id)successfulFederatedSingleUserResponse
{
  v6[2] = self;
  v6[1] = a2;
  v7[0] = @"X-Apple-Session-Key";
  v8[0] = @"ORMD1JhHa4VAcrOF29SftzhK3AU15YEzcahubvLdgbA=";
  v7[1] = @"X-Apple-Encrypted-Session-Key";
  v8[1] = @"M2E0OWU3NmItYzY4YS00NDBiLWI2OWEtYzhmN2M3ZTVmMDEwVDR3VkRodVpEVnlQSzlXS0pNTTdZYzV1cWR3RkJ5OUtnUE81dGgyOXdjQ0tsSmpSRXJOb25Eb3V0OWpKZ0VpMWFoZWNKYzJSVG50Mm42bDMwT2d0Zms3eWprK3Z4SEMrOGQzUWJQSU0rbmZOSDUyK1paS2hsZk5hTW1FbHlHaFdXRnBI";
  v7[2] = @"X-Apple-Identity-Token";
  v8[2] = @"Y29tLmFwcGxlLmdzLmlkbXMuYXV0aDpBQUFBQkx3SUFBQUFBRlhXRlhnUkRHZHpMbWxrYlhNdVlYVjBhTDBBZlJ2L1RaVXNsWVA4Y1BLb2Vmci9pcUR2ZXJMYnJsc2FEODFqb09SQ1B6N0d1Zy9zZFVtcnkvTW85Skl6cVdhVTVPTmtSV2UvSGI4eGJvc2dtMlJoWE42ZURXWU9HVEpkQjJnZUFpQXFhVUtqZVBCN1JoTStkV2hBOXlMcnpGT3BWOXBhUVFob0NXTnpTN3VlVFRTdjJPMTNpTVE9OjM2MDA=";
  v7[3] = @"X-Apple-PE-Token";
  v8[3] = @"Y29tLmFwcGxlLmdzLmlkbXMucGV0OkdWdEhLNHViNWdCelQyckVaZGk0UVlhZ3J4MVFhMVhvNzVyaUhCTm9zWkYrMFVsZlVQVnFPNCsyVU9TK241b1ZyTmJBOVplRWpVQ0tCZlJINnZuMDJkQlhrV1NDblB0SjBhV3RkN0I1QXNyREtsdlFHMDBVTmcrRW1sQ3hYd0hKN1Q2RFl0a2oySitQOHlvK3RSMUJONmFwUDV2Y3NRbnhMd2R3UTFEaS9rNjdIQ2c0RzMwWXpyM1g3ZlV2eTBHNm5PQXd3bmF3bHZyT3g5d2VwSld4cFQ1aHJtQWVYKzB5RWp6WGl3enNKMWtweUVacjRHMHp5T1hJMzdUaHA2ampQUGVSWW11MjFCeHFGcFRrOW5wWlF3VXJaa3l0elNVQ29KOCtaYlFCTUlSdHErSjBIU0R5V21CYkx6UVh5S0o4WWdsblR4ST1QRVQ6MzAw";
  v7[4] = @"Content-Type";
  v8[4] = @"text/xml;charset=UTF-8";
  v6[0] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5];
  v3 = [NSHTTPURLResponse alloc];
  v4 = [NSURL URLWithString:@"https://gsa.apple.com/appleid/acsURL"];
  v5 = [v3 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

  objc_storeStrong(v6, 0);

  return v5;
}

+ (id)successfulFederatedSingleUserResponseWithPDPInfo
{
  v6[2] = self;
  v6[1] = a2;
  v7[0] = @"X-Apple-Session-Key";
  v8[0] = @"ORMD1JhHa4VAcrOF29SftzhK3AU15YEzcahubvLdgbA=";
  v7[1] = @"X-Apple-Encrypted-Session-Key";
  v8[1] = @"M2E0OWU3NmItYzY4YS00NDBiLWI2OWEtYzhmN2M3ZTVmMDEwVDR3VkRodVpEVnlQSzlXS0pNTTdZYzV1cWR3RkJ5OUtnUE81dGgyOXdjQ0tsSmpSRXJOb25Eb3V0OWpKZ0VpMWFoZWNKYzJSVG50Mm42bDMwT2d0Zms3eWprK3Z4SEMrOGQzUWJQSU0rbmZOSDUyK1paS2hsZk5hTW1FbHlHaFdXRnBI";
  v7[2] = @"X-Apple-Identity-Token";
  v8[2] = @"Y29tLmFwcGxlLmdzLmlkbXMuYXV0aDpBQUFBQkx3SUFBQUFBRlhXRlhnUkRHZHpMbWxrYlhNdVlYVjBhTDBBZlJ2L1RaVXNsWVA4Y1BLb2Vmci9pcUR2ZXJMYnJsc2FEODFqb09SQ1B6N0d1Zy9zZFVtcnkvTW85Skl6cVdhVTVPTmtSV2UvSGI4eGJvc2dtMlJoWE42ZURXWU9HVEpkQjJnZUFpQXFhVUtqZVBCN1JoTStkV2hBOXlMcnpGT3BWOXBhUVFob0NXTnpTN3VlVFRTdjJPMTNpTVE9OjM2MDA=";
  v7[3] = @"X-Apple-PE-Token";
  v8[3] = @"Y29tLmFwcGxlLmdzLmlkbXMucGV0OkdWdEhLNHViNWdCelQyckVaZGk0UVlhZ3J4MVFhMVhvNzVyaUhCTm9zWkYrMFVsZlVQVnFPNCsyVU9TK241b1ZyTmJBOVplRWpVQ0tCZlJINnZuMDJkQlhrV1NDblB0SjBhV3RkN0I1QXNyREtsdlFHMDBVTmcrRW1sQ3hYd0hKN1Q2RFl0a2oySitQOHlvK3RSMUJONmFwUDV2Y3NRbnhMd2R3UTFEaS9rNjdIQ2c0RzMwWXpyM1g3ZlV2eTBHNm5PQXd3bmF3bHZyT3g5d2VwSld4cFQ1aHJtQWVYKzB5RWp6WGl3enNKMWtweUVacjRHMHp5T1hJMzdUaHA2ampQUGVSWW11MjFCeHFGcFRrOW5wWlF3VXJaa3l0elNVQ29KOCtaYlFCTUlSdHErSjBIU0R5V21CYkx6UVh5S0o4WWdsblR4ST1QRVQ6MzAw";
  v7[4] = @"Content-Type";
  v8[4] = @"text/xml;charset=UTF-8";
  v7[5] = @"X-Apple-I-PDP-S";
  v8[5] = @"2";
  v7[6] = @"X-Apple-I-PV";
  v8[6] = @"19813";
  v7[7] = @"X-Apple-I-SP";
  v8[7] = @"s2kk";
  v7[8] = @"X-Apple-I-Salt";
  v8[8] = @"fakeSalt";
  v7[9] = @"X-Apple-I-Iters";
  v8[9] = @"38626";
  v6[0] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:10];
  v3 = [NSHTTPURLResponse alloc];
  v4 = [NSURL URLWithString:@"https://gsa.apple.com/appleid/acsURL"];
  v5 = [v3 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

  objc_storeStrong(v6, 0);

  return v5;
}

+ (id)successfulFederatedMultiUserResponse
{
  v6[2] = self;
  v6[1] = a2;
  v7[0] = @"X-Apple-SL-Token";
  v8[0] = @"Y29tLmFwcGxlLmdzLmlkbXMuc2x0OjAyNTgwMWM4LTU1ZWYtNDU3Yy1iYmI4LWI4ZmFmMmY4MDNlNldGbGEvbU4rVlBIak1oMm9CMG9Jei8wVXlYeFZaZlI2K0docmxGQlRLdVlCT2J6L21kUXUzQnNpd0ZzZlNocGJjU21RZWh5NDdpMk9tZ25BYnRYcXBrR2R3TzdBSS9adGc1cWNaRXNBSUdBRWxnNks1bEhCU3ZMQVJ4c1BPWms3VlNFTUhrNUU2NFZTRjBCMjM2d1lwTFREZnYxVXVDN1pPMWd2MDFVSFJmMEJ1TmdObncrK3ZPYmlvRWJvYmQwbVVyZmdhWHQxY3RxVjVlWG10SW5rSkZJSXNHNU5iTW1LRjJXV2hrdUR3Z0daemNrK1hXR1BTanhlYVM5L3dnZ0hjTHhPQlJGN1A0d0lJN25DREdFVVlVL0xPNlI0M01yM2tqajBOcHl0S1lzPQ==";
  v7[1] = @"X-Apple-Session-Key";
  v8[1] = @"ORMD1JhHa4VAcrOF29SftzhK3AU15YEzcahubvLdgbA=";
  v7[2] = @"X-Apple-Encrypted-Session-Key";
  v8[2] = @"M2E0OWU3NmItYzY4YS00NDBiLWI2OWEtYzhmN2M3ZTVmMDEwVDR3VkRodVpEVnlQSzlXS0pNTTdZYzV1cWR3RkJ5OUtnUE81dGgyOXdjQ0tsSmpSRXJOb25Eb3V0OWpKZ0VpMWFoZWNKYzJSVG50Mm42bDMwT2d0Zms3eWprK3Z4SEMrOGQzUWJQSU0rbmZOSDUyK1paS2hsZk5hTW1FbHlHaFdXRnBI";
  v7[3] = @"Content-Type";
  v8[3] = @"text/xml;charset=UTF-8";
  v6[0] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v3 = [NSHTTPURLResponse alloc];
  v4 = [NSURL URLWithString:@"https://gsa.apple.com/appleid/acsURL"];
  v5 = [v3 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

  objc_storeStrong(v6, 0);

  return v5;
}

+ (id)successfulFederatedResponseBody
{
  v7[0] = @"DsPrsId";
  v8[0] = &off_10001A998;
  v7[1] = @"ec";
  v8[1] = &off_10001A9B0;
  v7[2] = @"em";
  v8[2] = &stru_100019330;
  v7[3] = @"fn";
  v8[3] = @"Lester";
  v7[4] = @"ln";
  v8[4] = @"All";
  v7[5] = @"ut";
  v8[5] = &off_10001A9C8;
  v7[6] = @"acname";
  v8[6] = @"account4test@icloud.apple";
  v7[7] = @"adsid";
  v8[7] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v7[8] = @"authmode";
  v8[8] = &off_10001A9E0;
  v7[9] = @"mdmInfoRequired";
  v8[9] = &off_10001A9C8;
  v7[10] = @"uireq";
  v8[10] = &__kCFBooleanTrue;
  v7[11] = @"fpc";
  v8[11] = &__kCFBooleanTrue;
  v7[12] = @"cd";
  v5 = @"com.apple.authkit.TestData";
  v6 = @"YnBsaXN0MDDRAQJVaGVsbG9Vd29ybGQICxEAAAAAAAABAQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAFw==";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v8[12] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:13];

  return v4;
}

+ (id)successfulAppleIDContinuationResponse
{
  v6[2] = self;
  v6[1] = a2;
  v7[0] = @"Content-Type";
  v8[0] = @"text/xml;charset=UTF-8";
  v7[1] = @"X-Apple-AK-Action";
  v8[1] = @"continue";
  v7[2] = @"X-Apple-AK-Continuation-Data";
  v8[2] = @"ewogICJyZWFzb25LZXkiIDogImNyZWF0ZVUxMyIsCiAgImFjY291bnQiIDogewogICAgInBlcnNvbiIgOiB7CiAgICAgICJzaGlwcGluZ0FkZHJlc3NlcyIgOiBbIF0sCiAgICAgICJwaG9uZU51bWJlcnMiIDogWyBdLAogICAgICAibWF4QWxsb3dlZEFsdGVybmF0ZUVtYWlscyIgOiAwLAogICAgICAibWFuYWdlZEFkbWluaXN0cmF0b3IiIDogZmFsc2UsCiAgICAgICJhbGxvd0FkZGl0aW9uYWxBbHRlcm5hdGVFbWFpbCIgOiBmYWxzZSwKICAgICAgIm1heEFsbG93ZWRTaGFyZWROdW1iZXJzIiA6IDAsCiAgICAgICJpc0ZhbWlseU9yZ2FuaXplciIgOiBmYWxzZSwKICAgICAgImlzRGF0ZU9mQmlydGhFZGl0YWJsZSIgOiBmYWxzZSwKICAgICAgImlzSFNBMkVsaWdpYmxlIiA6IGZhbHNlLAogICAgICAibWluQmlydGhkYXkiIDogIjE4NjYtMTAtMTkiLAogICAgICAibWF4QmlydGhkYXkiIDogIjIwMTYtMTAtMTkiLAogICAgICAiYmlydGhkYXkiIDogIjIwMTQtMTAtMTkiLAogICAgICAiaGFzRmFtaWx5IiA6IGZhbHNlLAogICAgICAiaXNVbmRlckFnZSIgOiBmYWxzZSwKICAgICAgIm5hbWUiIDogewogICAgICAgICJtaWRkbGVOYW1lUmVxdWlyZWQiIDogZmFsc2UsCiAgICAgICAgIm1pZGRsZU5hbWUiIDogIiIsCiAgICAgICAgImZpcnN0TmFtZSIgOiAiIiwKICAgICAgICAibGFzdE5hbWUiIDogIiIKICAgICAgfQogICAgfSwKICAgICJwcmVmZXJlbmNlcyIgOiB7CiAgICAgICJtYXJrZXRpbmdQcmVmZXJlbmNlcyIgOiB7CiAgICAgICAgImlUdW5lc1VwZGF0ZXMiIDogZmFsc2UsCiAgICAgICAgImFwcGxlVXBkYXRlcyIgOiBmYWxzZSwKICAgICAgICAiYXBwbGVOZXdzIiA6IGZhbHNlCiAgICAgIH0KICAgIH0sCiAgICAicGF5bWVudE1ldGhvZFN0YXR1cyIgOiAiTk9UX0xPQURFRCIsCiAgICAib3duc0ZhbWlseVBheW1lbnRNZXRob2QiIDogZmFsc2UsCiAgICAiaGFzRmFtaWx5UGF5bWVudE1ldGhvZCIgOiBmYWxzZSwKICAgICJoYXNQcmltYXJ5UGF5bWVudE1ldGhvZCIgOiBmYWxzZSwKICAgICJpbnRlcm5hbEFjY291bnQiIDogZmFsc2UsCiAgICAicGFzc3dvcmQiIDogIiIKICB9Cn0=";
  v6[0] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  v3 = [NSHTTPURLResponse alloc];
  v4 = [NSURL URLWithString:@"https://gsa.apple.com/appleid/account/manage/repair/birthday"];
  v5 = [v3 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

  objc_storeStrong(v6, 0);

  return v5;
}

+ (id)SPDForStandardAccountSRPSuccess
{
  v16[0] = @"DsPrsId";
  v17[0] = &off_10001A998;
  v16[1] = @"adsid";
  v17[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v16[2] = @"alias";
  v17[2] = &__NSDictionary0__struct;
  v16[3] = @"acname";
  v17[3] = @"account4test@icloud.apple";
  v16[4] = @"ut";
  v17[4] = &off_10001A9E0;
  v16[5] = @"authmode";
  v17[5] = &off_10001A9C8;
  v16[6] = @"demoAccount";
  v17[6] = &off_10001A9C8;
  v16[7] = @"t";
  v14[0] = @"com.apple.gs.idms.pet";
  v12[0] = @"token";
  v13[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v12[1] = @"duration";
  v13[1] = &off_10001AA10;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:?];
  v15[0] = v7;
  v14[1] = @"com.apple.gs.tyler.test";
  v10[0] = @"token";
  v11[0] = @"TRC";
  v10[1] = @"duration";
  v11[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v6;
  v14[2] = @"com.apple.gs.fake.no-duration";
  v8 = @"token";
  v9 = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v15[2] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[7] = v3;
  v16[8] = @"additionalInfo";
  v17[8] = &off_10001B948;
  v4 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:9];

  return v4;
}

+ (id)SPDForHSA2AccountSRPSuccess
{
  v16[0] = @"DsPrsId";
  v17[0] = &off_10001A998;
  v16[1] = @"adsid";
  v17[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v16[2] = @"alias";
  v17[2] = &__NSDictionary0__struct;
  v16[3] = @"acname";
  v17[3] = @"account4test@icloud.apple";
  v16[4] = @"ut";
  v17[4] = &off_10001AA28;
  v16[5] = @"authmode";
  v17[5] = &off_10001A9C8;
  v16[6] = @"demoAccount";
  v17[6] = &off_10001A9C8;
  v16[7] = @"t";
  v14[0] = @"com.apple.gs.idms.pet";
  v12[0] = @"token";
  v13[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v12[1] = @"duration";
  v13[1] = &off_10001AA10;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:?];
  v15[0] = v7;
  v14[1] = @"com.apple.gs.tyler.test";
  v10[0] = @"token";
  v11[0] = @"TRC";
  v10[1] = @"duration";
  v11[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v6;
  v14[2] = @"com.apple.gs.fake.no-duration";
  v8 = @"token";
  v9 = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v15[2] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[7] = v3;
  v16[8] = @"additionalInfo";
  v17[8] = &off_10001B9C0;
  v4 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:9];

  return v4;
}

+ (id)SPDForHSA2AccountSRPPiggybacking
{
  v16[0] = @"DsPrsId";
  v17[0] = &off_10001A998;
  v16[1] = @"adsid";
  v17[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v16[2] = @"apb";
  v17[2] = &__kCFBooleanTrue;
  v16[3] = @"alias";
  v17[3] = &__NSDictionary0__struct;
  v16[4] = @"acname";
  v17[4] = @"account4test@icloud.apple";
  v16[5] = @"ut";
  v17[5] = &off_10001AA28;
  v16[6] = @"authmode";
  v17[6] = &off_10001A9C8;
  v16[7] = @"demoAccount";
  v17[7] = &off_10001A9C8;
  v16[8] = @"t";
  v14[0] = @"com.apple.gs.idms.pet";
  v12[0] = @"token";
  v13[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v12[1] = @"duration";
  v13[1] = &off_10001AA10;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:?];
  v15[0] = v7;
  v14[1] = @"com.apple.gs.tyler.test";
  v10[0] = @"token";
  v11[0] = @"TRC";
  v10[1] = @"duration";
  v11[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v6;
  v14[2] = @"com.apple.gs.fake.no-duration";
  v8 = @"token";
  v9 = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v15[2] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[8] = v3;
  v16[9] = @"additionalInfo";
  v17[9] = &off_10001BA38;
  v4 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:10];

  return v4;
}

+ (id)SPDForStandardAccountSRPSuccessWithADPCohort
{
  v16[0] = @"DsPrsId";
  v17[0] = &off_10001A998;
  v16[1] = @"adsid";
  v17[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v16[2] = @"alias";
  v17[2] = &__NSDictionary0__struct;
  v16[3] = @"acname";
  v17[3] = @"account4test@icloud.apple";
  v16[4] = @"ut";
  v17[4] = &off_10001A9E0;
  v16[5] = @"authmode";
  v17[5] = &off_10001A9C8;
  v16[6] = @"demoAccount";
  v17[6] = &off_10001A9C8;
  v16[7] = @"adpCh";
  v17[7] = &off_10001A9C8;
  v16[8] = @"t";
  v14[0] = @"com.apple.gs.idms.pet";
  v12[0] = @"token";
  v13[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v12[1] = @"duration";
  v13[1] = &off_10001AA10;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:?];
  v15[0] = v7;
  v14[1] = @"com.apple.gs.tyler.test";
  v10[0] = @"token";
  v11[0] = @"TRC";
  v10[1] = @"duration";
  v11[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v6;
  v14[2] = @"com.apple.gs.fake.no-duration";
  v8 = @"token";
  v9 = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v15[2] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[8] = v3;
  v16[9] = @"additionalInfo";
  v17[9] = &off_10001BAB0;
  v4 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:10];

  return v4;
}

+ (id)SPDForFidoAccountSRPSuccess
{
  v13[0] = @"DsPrsId";
  v14[0] = &off_10001A998;
  v13[1] = @"adsid";
  v14[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[2] = @"alias";
  v14[2] = &__NSDictionary0__struct;
  v13[3] = @"acname";
  v14[3] = @"account4test@icloud.apple";
  v13[4] = @"ut";
  v14[4] = &off_10001A9E0;
  v13[5] = @"authmode";
  v14[5] = &off_10001A9C8;
  v13[6] = @"demoAccount";
  v14[6] = &off_10001A9C8;
  v13[7] = @"t";
  v11[0] = @"com.apple.gs.idms.pet";
  v9[0] = @"token";
  v10[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v9[1] = @"duration";
  v10[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:?];
  v12[0] = v6;
  v11[1] = @"com.apple.gs.tyler.test";
  v7[0] = @"token";
  v8[0] = @"TRC";
  v7[1] = @"duration";
  v8[1] = &off_10001AA10;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[1] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[7] = v3;
  v13[8] = @"fidoAuth";
  v14[8] = &off_10001A9C8;
  v13[9] = @"additionalInfo";
  v14[9] = &off_10001BB28;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:10];

  return v4;
}

+ (id)SPDForDemoAccountSRPSuccess
{
  v13[0] = @"DsPrsId";
  v14[0] = &off_10001A998;
  v13[1] = @"adsid";
  v14[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[2] = @"alias";
  v14[2] = &__NSDictionary0__struct;
  v13[3] = @"acname";
  v14[3] = @"account4test@icloud.apple";
  v13[4] = @"ut";
  v14[4] = &off_10001AA28;
  v13[5] = @"authmode";
  v14[5] = &off_10001A9C8;
  v13[6] = @"demoAccount";
  v14[6] = &off_10001A9C8;
  v13[7] = @"t";
  v11[0] = @"com.apple.gs.idms.pet";
  v9[0] = @"token";
  v10[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v9[1] = @"duration";
  v10[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:?];
  v12[0] = v6;
  v11[1] = @"com.apple.gs.tyler.test";
  v7[0] = @"token";
  v8[0] = @"TRC";
  v7[1] = @"duration";
  v8[1] = &off_10001AA10;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[1] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[7] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v4;
}

+ (id)SPDForAuthorizationSRPSuccess
{
  v13[0] = @"DsPrsId";
  v14[0] = &off_10001A998;
  v13[1] = @"adsid";
  v14[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[2] = @"uid";
  v14[2] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[3] = @"atxid";
  v14[3] = @"w/tcrvi/f+jkMxrgIQLaoKrHARF4+Nj+5D5a/AFv1bMEKAVjCZP9JCC3556HOtVGgjPDLxkyLq/NtWRY";
  v13[4] = @"isLikelyRealUser";
  v14[4] = &off_10001A9C8;
  v13[5] = @"scopes";
  v14[5] = &off_10001C3E8;
  v13[6] = @"underAge";
  v14[6] = &__kCFBooleanFalse;
  v13[7] = @"privateEmail";
  v14[7] = @"private.email@icloud.com";
  v13[8] = @"t";
  v11[0] = @"authCode";
  v9[0] = @"token";
  v10[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v9[1] = @"duration";
  v10[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:?];
  v12[0] = v6;
  v11[1] = @"IDToken";
  v7[0] = @"token";
  v8[0] = @"TRC";
  v7[1] = @"duration";
  v8[1] = &off_10001AA10;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[1] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[8] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:9];

  return v4;
}

+ (id)SPDForUnderAgeAuthorizationSRPSuccess
{
  v13[0] = @"DsPrsId";
  v14[0] = &off_10001A998;
  v13[1] = @"adsid";
  v14[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[2] = @"uid";
  v14[2] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[3] = @"atxid";
  v14[3] = @"w/tcrvi/f+jkMxrgIQLaoKrHARF4+Nj+5D5a/AFv1bMEKAVjCZP9JCC3556HOtVGgjPDLxkyLq/NtWRY";
  v13[4] = @"scopes";
  v14[4] = &off_10001C400;
  v13[5] = @"underAge";
  v14[5] = &__kCFBooleanTrue;
  v13[6] = @"t";
  v11[0] = @"authCode";
  v9[0] = @"token";
  v10[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v9[1] = @"duration";
  v10[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:?];
  v12[0] = v6;
  v11[1] = @"IDToken";
  v7[0] = @"token";
  v8[0] = @"TRC";
  v7[1] = @"duration";
  v8[1] = &off_10001AA10;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[1] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[6] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];

  return v4;
}

+ (id)SPDForMakoAccountSRPSuccess
{
  v13[0] = @"DsPrsId";
  v14[0] = &off_10001A998;
  v13[1] = @"adsid";
  v14[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[2] = @"alias";
  v14[2] = &__NSDictionary0__struct;
  v13[3] = @"acname";
  v14[3] = @"15554224172";
  v13[4] = @"ut";
  v14[4] = &off_10001A9E0;
  v13[5] = @"ck";
  v14[5] = @"c12af1946b6e2b21a85896741332124";
  v13[6] = @"t";
  v11[0] = @"com.apple.gs.idms.pet";
  v9[0] = @"token";
  v10[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v9[1] = @"duration";
  v10[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:?];
  v12[0] = v6;
  v11[1] = @"com.apple.gs.tyler.test";
  v7[0] = @"token";
  v8[0] = @"TRC";
  v7[1] = @"duration";
  v8[1] = &off_10001AA10;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[1] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[6] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];

  return v4;
}

+ (id)SPDForManagedAccountSRPSuccess
{
  v13[0] = @"DsPrsId";
  v14[0] = &off_10001A998;
  v13[1] = @"adsid";
  v14[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[2] = @"alias";
  v14[2] = &__NSDictionary0__struct;
  v13[3] = @"acname";
  v14[3] = @"account4test@icloud.apple";
  v13[4] = @"ut";
  v14[4] = &off_10001AA40;
  v13[5] = @"mu";
  v14[5] = &off_10001A9C8;
  v13[6] = @"t";
  v11[0] = @"com.apple.gs.idms.pet";
  v9[0] = @"token";
  v10[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v9[1] = @"duration";
  v10[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:?];
  v12[0] = v6;
  v11[1] = @"com.apple.gs.tyler.test";
  v7[0] = @"token";
  v8[0] = @"TRC";
  v7[1] = @"duration";
  v8[1] = &off_10001AA10;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[1] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[6] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];

  return v4;
}

+ (id)SPDForSLTRequestSRPSuccess
{
  v7[0] = @"DsPrsId";
  v8[0] = &off_10001A998;
  v7[1] = @"acname";
  v8[1] = @"account4test@icloud.apple";
  v7[2] = @"adsid";
  v8[2] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v7[3] = @"cd";
  v5 = @"com.apple.authkit.TestData";
  v6 = @"YnBsaXN0MDDRAQJVaGVsbG9Vd29ybGQICxEAAAAAAAABAQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAFw==";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v8[3] = v3;
  v7[4] = @"fn";
  v8[4] = @"Lester";
  v7[5] = @"ln";
  v8[5] = @"All";
  v7[6] = @"mu";
  v8[6] = &off_10001A9C8;
  v7[7] = @"ut";
  v8[7] = &off_10001AA40;
  v7[8] = @"authmode";
  v8[8] = &off_10001A9C8;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:9];

  return v4;
}

+ (id)SIMDataForOTPResync
{
  v2 = [[NSData alloc] initWithBase64EncodedString:@"SGVyMy1yM3N5bmM9dzF0aC10aDFzLWJ1dC0xZi11LWRvbid0LXdhbnQtMi10aDNuLWYxbjMu" options:0];

  return v2;
}

+ (id)successfulRepairCompletionResponse
{
  v7[2] = self;
  v7[1] = a2;
  v8[0] = @"X-Apple-AK-Action";
  v9[0] = @"complete";
  v8[1] = @"X-Apple-AK-Auth-Type";
  v9[1] = @"sa";
  v8[2] = @"X-Apple-Alternate-Id";
  v9[2] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v8[3] = @"X-Apple-DSID";
  0x1634561156027D1 = [NSString stringWithFormat:@"%llu", 0x1634561156027D1];
  v9[3] = 0x1634561156027D1;
  v8[4] = @"X-Apple-Session-Key";
  v9[4] = @"ORMD1JhHa4VAcrOF29SftzhK3AU15YEzcahubvLdgbA=";
  v8[5] = @"X-Apple-Encrypted-Session-Key";
  v9[5] = @"M2E0OWU3NmItYzY4YS00NDBiLWI2OWEtYzhmN2M3ZTVmMDEwVDR3VkRodVpEVnlQSzlXS0pNTTdZYzV1cWR3RkJ5OUtnUE81dGgyOXdjQ0tsSmpSRXJOb25Eb3V0OWpKZ0VpMWFoZWNKYzJSVG50Mm42bDMwT2d0Zms3eWprK3Z4SEMrOGQzUWJQSU0rbmZOSDUyK1paS2hsZk5hTW1FbHlHaFdXRnBI";
  v8[6] = @"X-Apple-Identity-Token";
  v9[6] = @"Y29tLmFwcGxlLmdzLmlkbXMuYXV0aDpBQUFBQkx3SUFBQUFBRlhXRlhnUkRHZHpMbWxrYlhNdVlYVjBhTDBBZlJ2L1RaVXNsWVA4Y1BLb2Vmci9pcUR2ZXJMYnJsc2FEODFqb09SQ1B6N0d1Zy9zZFVtcnkvTW85Skl6cVdhVTVPTmtSV2UvSGI4eGJvc2dtMlJoWE42ZURXWU9HVEpkQjJnZUFpQXFhVUtqZVBCN1JoTStkV2hBOXlMcnpGT3BWOXBhUVFob0NXTnpTN3VlVFRTdjJPMTNpTVE9OjM2MDA=";
  v8[7] = @"X-Apple-PE-Token";
  v9[7] = @"Y29tLmFwcGxlLmdzLmlkbXMucGV0OkdWdEhLNHViNWdCelQyckVaZGk0UVlhZ3J4MVFhMVhvNzVyaUhCTm9zWkYrMFVsZlVQVnFPNCsyVU9TK241b1ZyTmJBOVplRWpVQ0tCZlJINnZuMDJkQlhrV1NDblB0SjBhV3RkN0I1QXNyREtsdlFHMDBVTmcrRW1sQ3hYd0hKN1Q2RFl0a2oySitQOHlvK3RSMUJONmFwUDV2Y3NRbnhMd2R3UTFEaS9rNjdIQ2c0RzMwWXpyM1g3ZlV2eTBHNm5PQXd3bmF3bHZyT3g5d2VwSld4cFQ1aHJtQWVYKzB5RWp6WGl3enNKMWtweUVacjRHMHp5T1hJMzdUaHA2ampQUGVSWW11MjFCeHFGcFRrOW5wWlF3VXJaa3l0elNVQ29KOCtaYlFCTUlSdHErSjBIU0R5V21CYkx6UVh5S0o4WWdsblR4ST1QRVQ6MzAw";
  v8[8] = @"Content-Type";
  v9[8] = @"text/xml;charset=UTF-8";
  v7[0] = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:9];

  v4 = [NSHTTPURLResponse alloc];
  v5 = [NSURL URLWithString:@"https://gsa.apple.com/grandslam/GsService2/repair"];
  v6 = [v4 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

  objc_storeStrong(v7, 0);

  return v6;
}

+ (id)SAMLGetResponseDictionary
{
  v5 = AKRequestURLKey;
  v3 = [NSURL URLWithString:@"https://www.apple.com?query=iPhone"];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v4;
}

+ (id)SAMLPostResponseDictionary
{
  v5[0] = AKRequestBodyKey;
  v6[0] = @"SAML RESPONSE";
  v5[1] = AKRequestURLKey;
  v3 = [NSURL URLWithString:@"https://www.apple.com"];
  v6[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v4;
}

+ (id)testTiburonWebApplicationName
{
  v5 = &unk_100021028;
  location = 0;
  objc_storeStrong(&location, &stru_100018480);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v3 = qword_100021038++;
  return [qword_100021030 objectAtIndexedSubscript:{v3 % objc_msgSend(qword_100021030, "count")}];
}

+ (id)testTiburonWebBundleIdentifier
{
  v5 = &unk_100021040;
  location = 0;
  objc_storeStrong(&location, &stru_1000184A0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v3 = qword_100021050++;
  return [qword_100021048 objectAtIndexedSubscript:{v3 % objc_msgSend(qword_100021048, "count")}];
}

+ (id)urlBag
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = @"<?xml version=1.0 encoding=UTF-8?>        <!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>        <plist version=1.0>        <dict>            <key>env</key>            <dict>                <key>apsEnv</key>                <string>production</string>                <key>idmsEnv</key>                <string>IdMS</string>            </dict>            <key>urls</key>            <dict>                <key>gsService</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/grandslam/GsService2</string>                </dict>                <key>fetchAuthorizedApps</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/grandslam/GsService2/fetchAuthorizedApps</string>                </dict>                <key>fetchUserInfo</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/grandslam/GsService2/fetchUserInfo</string>                </dict>                <key>federatedIntro</key>                <dict>                    <key>url</key>                    <string>%@</string>                </dict>                <key>repair</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/grandslam/GsService2/repair</string>                </dict>                <key>securityUpgrade</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/appleid/account/security/upgrade</string>                </dict>                <key>createAccount</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/appleid/account</string>                </dict>                <key>createChildAccount</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/appleid/account/child</string>                </dict>                <key>createTeenAccount</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/appleid/account/teen</string>                </dict>                <key>signInAlert</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/appleid/settings/account/manage/security/key/notify/auth</string>                </dict>                <key>iForgot</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/iforgot</string>                </dict>                <key>fetchAuthMode</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/grandslam/GsService2/fetchAuthMode</string>                </dict>                <key>passwordChange</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/appleid/account/manage/security/password</string>                </dict>                <key>secondaryAuth</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/appleid/settings/authenticate</string>                </dict>                <key>device_list_self</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/device_list_self</string>                </dict>                <key>collabAccountUpgrade</key>                <dict>                    <key>url</key>                    <string>https://gsa.apple.com/collabAccountUpgrade</string>                </dict>            </dict>        </dict>    </plist>";
  v4 = [v5[0] dataUsingEncoding:4];
  v3 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:?];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);

  return v3;
}

+ (id)SPDForHSA2MissingCKToken
{
  v13[0] = @"DsPrsId";
  v14[0] = &off_10001A998;
  v13[1] = @"adsid";
  v14[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[2] = @"alias";
  v14[2] = &__NSDictionary0__struct;
  v13[3] = @"acname";
  v14[3] = @"account4test@icloud.apple";
  v13[4] = @"ut";
  v14[4] = &off_10001A9E0;
  v13[5] = @"t";
  v11[0] = @"com.apple.gs.idms.pet";
  v9[0] = @"token";
  v10[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v9[1] = @"duration";
  v10[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:?];
  v12[0] = v6;
  v11[1] = @"com.apple.gs.tyler.test";
  v7[0] = @"token";
  v8[0] = @"TRC";
  v7[1] = @"duration";
  v8[1] = &off_10001AA10;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[1] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[5] = v3;
  v13[6] = @"cdp";
  v14[6] = &off_10001BBA0;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];

  return v4;
}

+ (id)testCKGenerationAuthParameters
{
  v10[0] = @"adsif";
  v11[0] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v10[1] = @"cpd";
  v8[0] = @"ckgen";
  v9[0] = &off_10001A9C8;
  v8[1] = @"X-Apple-I-Client-Time";
  v9[1] = @"2023-12-06T17:39:22Z";
  v8[2] = @"X-Apple-I-MD";
  v9[2] = @"AAAABQAAABCMXoDEbRZ1w7nikIkD3IgYAAAAAw==";
  v8[3] = @"X-Apple-I-MD-M";
  v9[3] = @"w/tcrvi/f+jkMxrgIQLaoKrHARF4+Nj+5D5a/AFv1bMEKAVjCZP9JCC3556HOtVGgjPDLxkyLq/NtWRY";
  v8[4] = @"X-Apple-I-MD-RINFO";
  v9[4] = &off_10001AA58;
  v8[5] = @"icdrsDisabled";
  v9[5] = &off_10001A9B0;
  v8[6] = @"svct";
  v9[6] = @"icloud";
  v8[7] = @"webAccessEnabled";
  v9[7] = &off_10001A9B0;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:8];
  v11[1] = v5;
  v10[2] = @"kAppleIDAuthSupportAdditionalHeaders";
  v6[0] = @"X-Apple-AK-Context-Type";
  v7[0] = @"icloud";
  v6[1] = @"X-Apple-I-MD";
  v7[1] = @"AAAABQAAABCMXoDEbRZ1w7nikIkD3IgYAAAAAw==";
  v6[2] = @"X-Apple-I-MD-M";
  v7[2] = @"w/tcrvi/f+jkMxrgIQLaoKrHARF4+Nj+5D5a/AFv1bMEKAVjCZP9JCC3556HOtVGgjPDLxkyLq/NtWRY";
  v6[3] = @"X-Apple-I-MD-RINFO";
  v7[3] = &off_10001AA58;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:?];
  v11[2] = v3;
  v10[3] = @"u";
  v11[3] = @"account4test@icloud.apple";
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v4;
}

+ (id)SPDForCriticalAuthTokensSRPSuccess
{
  v13[0] = @"DsPrsId";
  v14[0] = &off_10001A998;
  v13[1] = @"adsid";
  v14[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[2] = @"alias";
  v14[2] = &__NSDictionary0__struct;
  v13[3] = @"acname";
  v14[3] = @"account4test@icloud.apple";
  v13[4] = @"ut";
  v14[4] = &off_10001A9E0;
  v13[5] = @"authmode";
  v14[5] = &off_10001A9C8;
  v13[6] = @"demoAccount";
  v14[6] = &off_10001A9C8;
  v13[7] = @"t";
  v11[0] = @"com.apple.gs.idms.pet";
  v9[0] = @"token";
  v10[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v9[1] = @"duration";
  v10[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:?];
  v12[0] = v6;
  v11[1] = @"com.apple.gs.idms.hb";
  v7[0] = @"token";
  v8[0] = @"AAAABLwIAAAAAFiTawwRCmdzLmlkbXMuaGK9AEr1O7ISMGE6QcJKA0fCfvkIIQ7DtQLwTv+kNocsKs3dNKRf7mx806XNTvitHW5RCVRXc0/o0kkyS2x+/NoLMX5cr7AT4fY19m1DhpSYT3rS1KmKDNUd2gAnnp70Ehz3wv4MLmdwlkHNO/LKSbQMLISBNaRXfZBGETUqaNVvj5XT6FQNTzcXdREGGzXzNYfbx/uLVxpzFHUwee1T0tA91onStnNC";
  v7[1] = @"duration";
  v8[1] = &off_10001AA10;
  v7[2] = @"expiry";
  v8[2] = &off_10001AA70;
  v7[3] = @"cts";
  v8[3] = &off_10001AA88;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v12[1] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[7] = v3;
  v13[8] = @"fidoAuth";
  v14[8] = &off_10001A9C8;
  v13[9] = @"additionalInfo";
  v14[9] = &off_10001BC18;
  v13[10] = @"ck";
  v14[10] = @"rFOiZoNohvQwbVT95F/qB45idwC0VEJ45LIW4yhMMTHV0eXdihQ1vOyWKi/q0l+EePrrBHe4sYdoRyVP";
  v13[11] = @"prk";
  v14[11] = @"qB45idwC0VEJ45LIW4yhMMTHV0eXdihQ1vOyWKi/q0l+EePrrBHe4sYdoRyVP";
  v13[12] = @"continuationKey";
  v14[12] = &off_10001BC40;
  v13[13] = @"passwordResetKey";
  v14[13] = &off_10001BC68;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:14];

  return v4;
}

+ (id)SPDMissingCriticalAuthTokensSRPSuccess
{
  v13[0] = @"DsPrsId";
  v14[0] = &off_10001A998;
  v13[1] = @"adsid";
  v14[1] = @"001589-08-b439a955-e1e2-4c34-bdd0-e07f91ea8662";
  v13[2] = @"alias";
  v14[2] = &__NSDictionary0__struct;
  v13[3] = @"acname";
  v14[3] = @"account4test@icloud.apple";
  v13[4] = @"ut";
  v14[4] = &off_10001A9E0;
  v13[5] = @"authmode";
  v14[5] = &off_10001A9C8;
  v13[6] = @"demoAccount";
  v14[6] = &off_10001A9C8;
  v13[7] = @"t";
  v11[0] = @"com.apple.gs.idms.pet";
  v9[0] = @"token";
  v10[0] = @"GVtHK4ub5gBzT2rEZdi4QYagrx1Qa1Xo75riHBNosZF+0UlfUPVqO4+2UOS+n5oVrNbA9ZeEjUCKBfRH6vn02dBXkWSCnPtJ0aWtd7B5AsrDKlvQG00UNg+EmlCxXwHJ7T6DYtkj2J+P8yo+tR1BN6apP5vcsQnxLwdwQ1Di/k67HCg4G30Yzr3X7fUvy0G6nOAwwnawlvrOx9wepJWxpT5hrmAeX+0yEjzXiwzsJ1kpyEZr4G0zyOXI37Thp6jjPPeRYmu21BxqFpTk9npZQwUrZkytzSUCoJ8+ZbQBMIRtq+J0HSDyWmBbLzQXyKJ8YglnTxI=PET";
  v9[1] = @"duration";
  v10[1] = &off_10001AA10;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:?];
  v12[0] = v6;
  v11[1] = @"com.apple.gs.idms.hb";
  v7[0] = @"token";
  v8[0] = @"AAAABLwIAAAAAFiTawwRCmdzLmlkbXMuaGK9AEr1O7ISMGE6QcJKA0fCfvkIIQ7DtQLwTv+kNocsKs3dNKRf7mx806XNTvitHW5RCVRXc0/o0kkyS2x+/NoLMX5cr7AT4fY19m1DhpSYT3rS1KmKDNUd2gAnnp70Ehz3wv4MLmdwlkHNO/LKSbQMLISBNaRXfZBGETUqaNVvj5XT6FQNTzcXdREGGzXzNYfbx/uLVxpzFHUwee1T0tA91onStnNC";
  v7[1] = @"duration";
  v8[1] = &off_10001AA10;
  v7[2] = @"expiry";
  v8[2] = &off_10001AA70;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  v12[1] = v5;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[7] = v3;
  v13[8] = @"fidoAuth";
  v14[8] = &off_10001A9C8;
  v13[9] = @"additionalInfo";
  v14[9] = &off_10001BCE0;
  v13[10] = @"ck";
  v14[10] = @"rFOiZoNohvQwbVT95F/qB45idwC0VEJ45LIW4yhMMTHV0eXdihQ1vOyWKi/q0l+EePrrBHe4sYdoRyVP";
  v13[11] = @"prk";
  v14[11] = @"qB45idwC0VEJ45LIW4yhMMTHV0eXdihQ1vOyWKi/q0l+EePrrBHe4sYdoRyVP";
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:12];

  return v4;
}

+ (id)backoffServerInfoConfig
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = &off_10001BFD8;
  v3 = v4[0];
  objc_storeStrong(v4, 0);

  return v3;
}

+ (id)backoffServerInfoConfigOption1
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = &off_10001C028;
  v3 = v4[0];
  objc_storeStrong(v4, 0);

  return v3;
}

+ (id)backoffServerInfoConfigOption2
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = &off_10001C0F0;
  v3 = v4[0];
  objc_storeStrong(v4, 0);

  return v3;
}

+ (id)backoffServerInfoConfigOption3
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = &off_10001C1B8;
  v3 = v4[0];
  objc_storeStrong(v4, 0);

  return v3;
}

+ (id)backoffServerInfoConfigOption4
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = &off_10001C280;
  v3 = v4[0];
  objc_storeStrong(v4, 0);

  return v3;
}

+ (id)backoffServerInfoConfigOption5
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = &off_10001C348;
  v3 = v4[0];
  objc_storeStrong(v4, 0);

  return v3;
}

@end