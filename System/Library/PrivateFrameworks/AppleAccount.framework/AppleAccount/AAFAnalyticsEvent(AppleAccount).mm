@interface AAFAnalyticsEvent(AppleAccount)
+ (id)analyticsEventWithName:()AppleAccount altDSID:flowID:;
@end

@implementation AAFAnalyticsEvent(AppleAccount)

+ (id)analyticsEventWithName:()AppleAccount altDSID:flowID:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc(MEMORY[0x1E6985DB0]);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v11 = getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr_0;
  v22 = getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr_0;
  if (!getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr_0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_block_invoke_0;
    v18[3] = &unk_1E7C9AE88;
    v18[4] = &v19;
    __getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_block_invoke_0(v18);
    v11 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v11)
  {
    +[AAFAnalyticsEvent(AppleAccount) analyticsEventWithName:altDSID:flowID:];
  }

  v12 = [v10 initWithEventName:v7 eventCategory:*v11 initData:0];
  v13 = v12;
  if (v9)
  {
    [v12 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6985E50]];
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v15 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:v8];
  if ([mEMORY[0x1E698DC80] accountAccessTelemetryOptInForAccount:v15])
  {
    v16 = [mEMORY[0x1E698DC80] telemetryDeviceSessionIDForAccount:v15];
    [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6985E38]];
  }

  return v13;
}

+ (void)analyticsEventWithName:()AppleAccount altDSID:flowID:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNumber *const getkCDPRTCEventCategoryAccountDataAccessRecovery(void)"];
  [v0 handleFailureInFunction:v1 file:@"AAFAnalyticsEvent+AppleAccount.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

@end