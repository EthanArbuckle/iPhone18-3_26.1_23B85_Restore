@interface _MapsApplication
- (void)failedTest:(id)test;
- (void)finishedTest:(id)test extraResults:(id)results;
@end

@implementation _MapsApplication

- (void)failedTest:(id)test
{
  v6.receiver = self;
  v6.super_class = _MapsApplication;
  testCopy = test;
  [(_MapsApplication *)&v6 failedTest:testCopy];
  v5 = [(_MapsApplication *)self delegate:v6.receiver];
  [_MapsApplicationTestSideEffectDelegate failedTest:testCopy applicationTestingDelegate:v5];
}

- (void)finishedTest:(id)test extraResults:(id)results
{
  if (test)
  {
    v9.receiver = self;
    v9.super_class = _MapsApplication;
    resultsCopy = results;
    testCopy = test;
    [(_MapsApplication *)&v9 finishedTest:testCopy extraResults:resultsCopy];
    v8 = [(_MapsApplication *)self delegate:v9.receiver];
    [_MapsApplicationTestSideEffectDelegate finishedTest:testCopy extraResults:resultsCopy applicationTestingDelegate:v8];
  }
}

@end