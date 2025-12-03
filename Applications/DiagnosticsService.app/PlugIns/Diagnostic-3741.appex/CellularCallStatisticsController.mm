@interface CellularCallStatisticsController
- (void)cancel;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
@end

@implementation CellularCallStatisticsController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  v5 = objc_opt_new();
  [(CellularCallStatisticsController *)self setAggregator:v5];
}

- (void)start
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000D04;
  block[3] = &unk_100004068;
  block[4] = self;
  dispatch_async(v3, block);

  aggregator = [(CellularCallStatisticsController *)self aggregator];
  getSynchronousResult = [aggregator getSynchronousResult];

  if (([(CellularCallStatisticsController *)self isCancelled]& 1) == 0 && getSynchronousResult)
  {
    result = [(CellularCallStatisticsController *)self result];
    [result setStatusCode:&off_100004098];

    result2 = [(CellularCallStatisticsController *)self result];
    [result2 setData:getSynchronousResult];
  }

  [(CellularCallStatisticsController *)self setFinished:1];
}

- (void)cancel
{
  aggregator = [(CellularCallStatisticsController *)self aggregator];
  [aggregator cancel];
}

- (void)teardown
{
  aggregator = [(CellularCallStatisticsController *)self aggregator];
  [aggregator cancel];

  [(CellularCallStatisticsController *)self setAggregator:0];
}

@end