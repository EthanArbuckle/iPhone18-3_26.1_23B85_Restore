@interface CellularDataDiagnosticsSuiteController
- (void)start;
@end

@implementation CellularDataDiagnosticsSuiteController

- (void)start
{
  v3 = [(CellularDataDiagnosticsSuiteController *)self result];
  [v3 setStatusCode:&off_1000042D8];

  v4 = objc_alloc_init(SpeedTestConfig);
  cellularTestStartRef = self->cellularTestStartRef;
  self->cellularTestStartRef = v4;

  v6 = self->cellularTestStartRef;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001A64;
  v7[3] = &unk_1000041D8;
  v7[4] = self;
  [(SpeedTestConfig *)v6 startDownloadTest:v7];
}

@end