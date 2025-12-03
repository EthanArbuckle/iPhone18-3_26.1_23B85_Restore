@interface _MapsApplicationTestSideEffectDelegate
+ (void)failedTest:(id)test applicationTestingDelegate:(id)delegate;
+ (void)finishedTest:(id)test extraResults:(id)results applicationTestingDelegate:(id)delegate;
@end

@implementation _MapsApplicationTestSideEffectDelegate

+ (void)failedTest:(id)test applicationTestingDelegate:(id)delegate
{
  testCopy = test;
  delegateCopy = delegate;
  v7 = sub_100798744();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = testCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "!!! PPT Test Failed: %@", &v12, 0xCu);
  }

  currentTest = [delegateCopy currentTest];
  testName = [currentTest testName];
  v10 = [testCopy isEqualToString:testName];

  if (v10)
  {
    currentTest2 = [delegateCopy currentTest];
    [currentTest2 cleanup:0];
  }

  [delegateCopy setCurrentTest:0];
}

+ (void)finishedTest:(id)test extraResults:(id)results applicationTestingDelegate:(id)delegate
{
  testCopy = test;
  delegateCopy = delegate;
  currentTest = [delegateCopy currentTest];

  if (currentTest)
  {
    v9 = sub_100798744();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = testCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "!!! PPT Test Finished: %@", &v14, 0xCu);
    }
  }

  currentTest2 = [delegateCopy currentTest];
  testName = [currentTest2 testName];
  v12 = [testCopy isEqualToString:testName];

  if (v12)
  {
    currentTest3 = [delegateCopy currentTest];
    [currentTest3 cleanup:1];
  }

  if (([testCopy isEqualToString:@"launch"] & 1) == 0)
  {
    [delegateCopy setCurrentTest:0];
  }
}

@end