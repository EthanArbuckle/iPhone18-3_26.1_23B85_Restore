@interface AAAnalyticsRTCReporter
+ (id)reporter;
@end

@implementation AAAnalyticsRTCReporter

+ (id)reporter
{
  if (reporter_onceToken != -1)
  {
    +[AAAnalyticsRTCReporter reporter];
  }

  v3 = reporter_rtcReporter;

  return v3;
}

void __34__AAAnalyticsRTCReporter_reporter__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  v2 = MEMORY[0x1E6985DC8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v3 = getkCDPRTCClientTypeSymbolLoc_ptr;
  v14 = getkCDPRTCClientTypeSymbolLoc_ptr;
  if (!getkCDPRTCClientTypeSymbolLoc_ptr)
  {
    v4 = CoreCDPLibrary_0();
    v12[3] = dlsym(v4, "kCDPRTCClientType");
    getkCDPRTCClientTypeSymbolLoc_ptr = v12[3];
    v3 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v3)
  {
    __34__AAAnalyticsRTCReporter_reporter__block_invoke_cold_2();
  }

  v5 = *v3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getkCDPRTCClientNameDNUSymbolLoc_ptr;
  v14 = getkCDPRTCClientNameDNUSymbolLoc_ptr;
  if (!getkCDPRTCClientNameDNUSymbolLoc_ptr)
  {
    v7 = CoreCDPLibrary_0();
    v12[3] = dlsym(v7, "kCDPRTCClientNameDNU");
    getkCDPRTCClientNameDNUSymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v6)
  {
    __34__AAAnalyticsRTCReporter_reporter__block_invoke_cold_1();
  }

  v8 = [v2 analyticsTransportRTCWithClientType:v5 clientBundleId:v1 clientName:*v6];

  v9 = [MEMORY[0x1E6985DB8] analyticsReporterWithTransport:v8];
  v10 = reporter_rtcReporter;
  reporter_rtcReporter = v9;
}

void __34__AAAnalyticsRTCReporter_reporter__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *const getkCDPRTCClientNameDNU(void)"];
  [v0 handleFailureInFunction:v1 file:@"AAAnalyticsRTCReporter.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

void __34__AAAnalyticsRTCReporter_reporter__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNumber *const getkCDPRTCClientType(void)"];
  [v0 handleFailureInFunction:v1 file:@"AAAnalyticsRTCReporter.m" lineNumber:15 description:{@"%s", dlerror()}];

  __break(1u);
}

@end