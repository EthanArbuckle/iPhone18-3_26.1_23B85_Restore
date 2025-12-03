@interface NetworkPerformanceDiagnosticViewModel
- (_TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel)init;
- (void)performanceTest:(id)test didReceiveDownloadSpeedMetric:(id)metric;
- (void)performanceTest:(id)test didReceiveUploadSpeedMetric:(id)metric;
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
  selfCopy = self;
  sub_100018BA0();
}

- (void)performanceTestWillStartDownload
{
  selfCopy = self;
  sub_100018C10();
}

- (void)performanceTestWillStartUpload
{
  selfCopy = self;
  sub_100018F30();
}

- (void)performanceTest:(id)test didReceiveDownloadSpeedMetric:(id)metric
{
  v4 = qword_1000315D8;
  metricCopy = metric;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100032D68 + 16);

  sub_1000200F4();
}

- (void)performanceTest:(id)test didReceiveUploadSpeedMetric:(id)metric
{
  v4 = qword_1000315D8;
  metricCopy = metric;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100032D68 + 24);

  sub_1000200F4();
}

@end