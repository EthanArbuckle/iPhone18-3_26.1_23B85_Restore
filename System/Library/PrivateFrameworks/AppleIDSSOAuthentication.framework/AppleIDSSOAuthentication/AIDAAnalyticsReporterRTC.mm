@interface AIDAAnalyticsReporterRTC
+ (id)sharedTelemetryReporter;
@end

@implementation AIDAAnalyticsReporterRTC

+ (id)sharedTelemetryReporter
{
  if (sharedTelemetryReporter_onceToken != -1)
  {
    +[AIDAAnalyticsReporterRTC sharedTelemetryReporter];
  }

  v3 = sharedTelemetryReporter_rtcReporter;

  return v3;
}

void __51__AIDAAnalyticsReporterRTC_sharedTelemetryReporter__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 bundleIdentifier];

  v1 = [MEMORY[0x1E6985DC8] analyticsTransportRTCWithClientType:&unk_1F59D0CE0 clientBundleId:v4 clientName:@"com.apple.aaa.dnu"];
  v2 = [MEMORY[0x1E6985DB8] analyticsReporterWithTransport:v1];
  v3 = sharedTelemetryReporter_rtcReporter;
  sharedTelemetryReporter_rtcReporter = v2;
}

@end