@interface AAFAnalyticsEvent(AppleIDAuthentication)
+ (__CFString)eventNameForService:()AppleIDAuthentication;
+ (__CFString)finishEventNameForService:()AppleIDAuthentication;
+ (__CFString)startEventNameForService:()AppleIDAuthentication;
+ (id)accountForAuthenticationResults:()AppleIDAuthentication accountManager:;
+ (id)aida_analyticsDurationEventForAIDAServiceType:()AppleIDAuthentication accountManager:authenticationResults:;
+ (id)aida_analyticsEventWithEventName:()AppleIDAuthentication;
+ (id)aida_analyticsEventWithEventName:()AppleIDAuthentication accountManager:authenticationResults:;
+ (id)aida_analyticsFinishEventForAIDAServiceType:()AppleIDAuthentication accountManager:authenticationResults:success:error:;
+ (id)aida_analyticsStartEventForAIDAServiceType:()AppleIDAuthentication accountManager:authenticationResults:;
- (void)aida_updateEventWithSuccess:()AppleIDAuthentication error:;
- (void)aida_updateTelemetryIdsWithAuthenticationResults:()AppleIDAuthentication accountManager:;
@end

@implementation AAFAnalyticsEvent(AppleIDAuthentication)

+ (id)aida_analyticsStartEventForAIDAServiceType:()AppleIDAuthentication accountManager:authenticationResults:
{
  v8 = MEMORY[0x1E6985DB0];
  v9 = a5;
  v10 = a4;
  v11 = [v8 startEventNameForService:a3];
  v12 = [self aida_analyticsEventWithEventName:v11 accountManager:v10 authenticationResults:v9];

  return v12;
}

+ (id)aida_analyticsFinishEventForAIDAServiceType:()AppleIDAuthentication accountManager:authenticationResults:success:error:
{
  v12 = MEMORY[0x1E6985DB0];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = [v12 finishEventNameForService:a3];
  v17 = [self aida_analyticsEventWithEventName:v16 accountManager:v15 authenticationResults:v14];

  [v17 aida_updateEventWithSuccess:a6 error:v13];

  return v17;
}

+ (id)aida_analyticsDurationEventForAIDAServiceType:()AppleIDAuthentication accountManager:authenticationResults:
{
  v8 = MEMORY[0x1E6985DB0];
  v9 = a5;
  v10 = a4;
  v11 = [v8 eventNameForService:a3];
  v12 = [self aida_analyticsEventWithEventName:v11 accountManager:v10 authenticationResults:v9];

  return v12;
}

+ (id)aida_analyticsEventWithEventName:()AppleIDAuthentication accountManager:authenticationResults:
{
  v8 = a5;
  v9 = a4;
  v10 = [self aida_analyticsEventWithEventName:a3];
  [v10 aida_updateTelemetryIdsWithAuthenticationResults:v8 accountManager:v9];

  return v10;
}

+ (id)aida_analyticsEventWithEventName:()AppleIDAuthentication
{
  v3 = MEMORY[0x1E6985DB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithEventName:v4 eventCategory:0x1F59D0CF8 initData:0];

  return v5;
}

- (void)aida_updateEventWithSuccess:()AppleIDAuthentication error:
{
  [self populateUnderlyingErrorsStartingWithRootError:a4];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [self setObject:v6 forKeyedSubscript:*MEMORY[0x1E6985E40]];
}

- (void)aida_updateTelemetryIdsWithAuthenticationResults:()AppleIDAuthentication accountManager:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6985DB0] accountForAuthenticationResults:v6 accountManager:v7];
  if (v8)
  {
    v9 = [v7 telemetryDeviceSessionIDForAccount:v8];
    [self setObject:v9 forKeyedSubscript:*MEMORY[0x1E6985E38]];

    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];
    [self setObject:v10 forKeyedSubscript:*MEMORY[0x1E6985E50]];
  }

  else
  {
    v11 = _AKLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AAFAnalyticsEvent(AppleIDAuthentication) aida_updateTelemetryIdsWithAuthenticationResults:v11 accountManager:?];
    }
  }
}

+ (id)accountForAuthenticationResults:()AppleIDAuthentication accountManager:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v14 = 0;
  v8 = [v6 authKitAccountWithAltDSID:v7 error:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = _AKLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AAFAnalyticsEvent(AppleIDAuthentication) accountForAuthenticationResults:v9 accountManager:v10];
    }
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v12 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
    v11 = [v6 authKitAccountWithDSID:v12];
  }

  return v11;
}

+ (__CFString)startEventNameForService:()AppleIDAuthentication
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.AppleID.Service.Cloud"])
  {
    v4 = kAIDASignInStartTelemetryEventNameiCloud;
  }

  else if ([v3 isEqualToString:@"com.apple.AppleID.Service.Store"])
  {
    v4 = kAIDASignInStartTelemetryEventNameStore;
  }

  else if ([v3 isEqualToString:@"com.apple.AppleID.Service.Messages"])
  {
    v4 = kAIDASignInStartTelemetryEventNameMessages;
  }

  else if ([v3 isEqualToString:@"com.apple.AppleID.Service.FaceTime"])
  {
    v4 = kAIDASignInStartTelemetryEventNameFaceTime;
  }

  else
  {
    v5 = [v3 isEqualToString:@"com.apple.AppleID.Service.GameCenter"];
    v4 = kAIDASignInStartTelemetryEventNameUnknown;
    if (v5)
    {
      v4 = kAIDASignInStartTelemetryEventNameGameCenter;
    }
  }

  v6 = *v4;
  v7 = *v4;

  return v6;
}

+ (__CFString)eventNameForService:()AppleIDAuthentication
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.AppleID.Service.Cloud"])
  {
    v4 = kAIDASignInTelemetryEventNameiCloud;
  }

  else if ([v3 isEqualToString:@"com.apple.AppleID.Service.Store"])
  {
    v4 = kAIDASignInTelemetryEventNameStore;
  }

  else if ([v3 isEqualToString:@"com.apple.AppleID.Service.Messages"])
  {
    v4 = kAIDASignInTelemetryEventNameMessages;
  }

  else if ([v3 isEqualToString:@"com.apple.AppleID.Service.FaceTime"])
  {
    v4 = kAIDASignInTelemetryEventNameFaceTime;
  }

  else
  {
    v5 = [v3 isEqualToString:@"com.apple.AppleID.Service.GameCenter"];
    v4 = kAIDASignInTelemetryEventNameUnknown;
    if (v5)
    {
      v4 = kAIDASignInTelemetryEventNameGameCenter;
    }
  }

  v6 = *v4;
  v7 = *v4;

  return v6;
}

+ (__CFString)finishEventNameForService:()AppleIDAuthentication
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.AppleID.Service.Cloud"])
  {
    v4 = kAIDASignInFinishTelemetryEventNameiCloud;
  }

  else if ([v3 isEqualToString:@"com.apple.AppleID.Service.Store"])
  {
    v4 = kAIDASignInFinishTelemetryEventNameStore;
  }

  else if ([v3 isEqualToString:@"com.apple.AppleID.Service.Messages"])
  {
    v4 = kAIDASignInFinishTelemetryEventNameMessages;
  }

  else if ([v3 isEqualToString:@"com.apple.AppleID.Service.FaceTime"])
  {
    v4 = kAIDASignInFinishTelemetryEventNameFaceTime;
  }

  else
  {
    v5 = [v3 isEqualToString:@"com.apple.AppleID.Service.GameCenter"];
    v4 = &kAIDASignInFinishTelemetryEventNameUnknown;
    if (v5)
    {
      v4 = kAIDASignInFinishTelemetryEventNameGameCenter;
    }
  }

  v6 = *v4;
  v7 = *v4;

  return v6;
}

+ (void)accountForAuthenticationResults:()AppleIDAuthentication accountManager:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DEB1B000, a2, OS_LOG_TYPE_ERROR, "Error fetching IdMS account:%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end