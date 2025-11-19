@interface AKAnalyticsReporterRTC
+ (id)rtcAnalyticsReporter;
@end

@implementation AKAnalyticsReporterRTC

+ (id)rtcAnalyticsReporter
{
  v5 = &rtcAnalyticsReporter_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_20);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = rtcAnalyticsReporter_rtcReporter;

  return v2;
}

void __46__AKAnalyticsReporterRTC_rtcAnalyticsReporter__block_invoke(void *a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v5[0] = [v3 bundleIdentifier];
  MEMORY[0x1E69E5920](v3);
  v4 = [MEMORY[0x1E6985DC8] analyticsTransportRTCWithClientType:0x1F07B4E80 clientBundleId:v5[0] clientName:@"com.apple.aaa.dnu"];
  v1 = [MEMORY[0x1E6985DB8] analyticsReporterWithTransport:v4];
  v2 = rtcAnalyticsReporter_rtcReporter;
  rtcAnalyticsReporter_rtcReporter = v1;
  MEMORY[0x1E69E5920](v2);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);
}

@end