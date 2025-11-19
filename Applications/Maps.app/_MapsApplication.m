@interface _MapsApplication
- (void)failedTest:(id)a3;
- (void)finishedTest:(id)a3 extraResults:(id)a4;
@end

@implementation _MapsApplication

- (void)failedTest:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MapsApplication;
  v4 = a3;
  [(_MapsApplication *)&v6 failedTest:v4];
  v5 = [(_MapsApplication *)self delegate:v6.receiver];
  [_MapsApplicationTestSideEffectDelegate failedTest:v4 applicationTestingDelegate:v5];
}

- (void)finishedTest:(id)a3 extraResults:(id)a4
{
  if (a3)
  {
    v9.receiver = self;
    v9.super_class = _MapsApplication;
    v6 = a4;
    v7 = a3;
    [(_MapsApplication *)&v9 finishedTest:v7 extraResults:v6];
    v8 = [(_MapsApplication *)self delegate:v9.receiver];
    [_MapsApplicationTestSideEffectDelegate finishedTest:v7 extraResults:v6 applicationTestingDelegate:v8];
  }
}

@end