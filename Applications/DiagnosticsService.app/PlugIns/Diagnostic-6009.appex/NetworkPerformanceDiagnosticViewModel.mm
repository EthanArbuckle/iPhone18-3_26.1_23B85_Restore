@interface NetworkPerformanceDiagnosticViewModel
- (_TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel)init;
- (void)performanceTest:(id)a3 didReceiveDownloadSpeedMetric:(id)a4;
- (void)performanceTest:(id)a3 didReceiveUploadSpeedMetric:(id)a4;
- (void)performanceTestWillStartDownload;
- (void)performanceTestWillStartPing;
- (void)performanceTestWillStartUpload;
@end

@implementation NetworkPerformanceDiagnosticViewModel

- (_TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel)init
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1000114AC();

  return v2;
}

- (void)performanceTestWillStartPing
{
  v2 = self;
  sub_100018BA0();
}

- (void)performanceTestWillStartDownload
{
  v2 = self;
  sub_100018C10();
}

- (void)performanceTestWillStartUpload
{
  v2 = self;
  sub_100018F30();
}

- (void)performanceTest:(id)a3 didReceiveDownloadSpeedMetric:(id)a4
{
  v4 = qword_1000315D8;
  v5 = a4;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100032D68 + 16);

  sub_1000200F4();
}

- (void)performanceTest:(id)a3 didReceiveUploadSpeedMetric:(id)a4
{
  v4 = qword_1000315D8;
  v5 = a4;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100032D68 + 24);

  sub_1000200F4();
}

@end