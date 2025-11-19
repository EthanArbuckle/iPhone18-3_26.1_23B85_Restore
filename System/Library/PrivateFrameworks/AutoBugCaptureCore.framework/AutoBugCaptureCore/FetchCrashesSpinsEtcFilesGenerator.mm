@interface FetchCrashesSpinsEtcFilesGenerator
- (FetchCrashesSpinsEtcFilesGenerator)initWithQueue:(id)a3;
@end

@implementation FetchCrashesSpinsEtcFilesGenerator

- (FetchCrashesSpinsEtcFilesGenerator)initWithQueue:(id)a3
{
  v7.receiver = self;
  v7.super_class = FetchCrashesSpinsEtcFilesGenerator;
  v3 = [(NetworkDiagnosticsReportGenerator *)&v7 initWithQueue:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(NetworkDiagnosticsReportGenerator *)v3 createDefaultTaskDictionaryWithTaskName:kNetDiagTaskFetchCrashesSpinsEtc[0]];
    [v5 setObject:&unk_28537A2C0 forKeyedSubscript:@"taskFileAge"];
    [(NetworkDiagnosticsReportGenerator *)v4 setOptions:v5];
  }

  return v4;
}

@end