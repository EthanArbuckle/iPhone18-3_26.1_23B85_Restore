@interface TouchIDSensorSPIBusIntegrityTestController
- (void)finish;
- (void)runDiagnostic;
- (void)start;
- (void)teardown;
@end

@implementation TouchIDSensorSPIBusIntegrityTestController

- (void)start
{
  v3 = [(TouchIDSensorSPIBusIntegrityTestController *)self inputs];
  if ([v3 numberOfRuns])
  {
    v4 = [(TouchIDSensorSPIBusIntegrityTestController *)self inputs];
    [v4 runDelay];
    v6 = v5;

    if (v6 != 0.0)
    {
      v7 = [(TouchIDSensorSPIBusIntegrityTestController *)self result];
      [v7 setStatusCode:&off_100004258];

      v8 = [NSMutableArray alloc];
      v9 = [(TouchIDSensorSPIBusIntegrityTestController *)self inputs];
      v10 = [v8 initWithCapacity:{objc_msgSend(v9, "numberOfRuns")}];
      [(TouchIDSensorSPIBusIntegrityTestController *)self setAllResults:v10];

      [(TouchIDSensorSPIBusIntegrityTestController *)self setRunCount:0];
      if (([(TouchIDSensorSPIBusIntegrityTestController *)self isCancelled]& 1) == 0)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100000F34;
        block[3] = &unk_100004110;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
      }

      return;
    }
  }

  else
  {
  }

  v11 = [(TouchIDSensorSPIBusIntegrityTestController *)self result];
  [v11 setStatusCode:&off_100004240];

  [(TouchIDSensorSPIBusIntegrityTestController *)self setFinished:1];
}

- (void)runDiagnostic
{
  if (([(TouchIDSensorSPIBusIntegrityTestController *)self isCancelled]& 1) != 0)
  {
    goto LABEL_5;
  }

  v3 = [(TouchIDSensorSPIBusIntegrityTestController *)self runTimer];
  if (!v3 || (v4 = v3, v5 = -[TouchIDSensorSPIBusIntegrityTestController runCount](self, "runCount"), -[TouchIDSensorSPIBusIntegrityTestController inputs](self, "inputs"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 numberOfRuns], v6, v4, v5 >= v7))
  {
LABEL_5:
    v9 = [(TouchIDSensorSPIBusIntegrityTestController *)self runTimer];
    [v9 invalidate];
  }

  else
  {
    v8 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-4182.SPIIntegrity", 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000010F0;
    block[3] = &unk_100004110;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

- (void)finish
{
  v6 = @"results";
  v3 = [(TouchIDSensorSPIBusIntegrityTestController *)self allResults];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5 = [(TouchIDSensorSPIBusIntegrityTestController *)self result];
  [v5 setData:v4];

  [(TouchIDSensorSPIBusIntegrityTestController *)self setFinished:1];
}

- (void)teardown
{
  v3 = [(TouchIDSensorSPIBusIntegrityTestController *)self runTimer];

  if (v3)
  {
    v4 = [(TouchIDSensorSPIBusIntegrityTestController *)self runTimer];
    [v4 invalidate];

    [(TouchIDSensorSPIBusIntegrityTestController *)self setRunTimer:0];
  }
}

@end