@interface _MapsApplicationTestSideEffectDelegate
+ (void)failedTest:(id)a3 applicationTestingDelegate:(id)a4;
+ (void)finishedTest:(id)a3 extraResults:(id)a4 applicationTestingDelegate:(id)a5;
@end

@implementation _MapsApplicationTestSideEffectDelegate

+ (void)failedTest:(id)a3 applicationTestingDelegate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100798744();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "!!! PPT Test Failed: %@", &v12, 0xCu);
  }

  v8 = [v6 currentTest];
  v9 = [v8 testName];
  v10 = [v5 isEqualToString:v9];

  if (v10)
  {
    v11 = [v6 currentTest];
    [v11 cleanup:0];
  }

  [v6 setCurrentTest:0];
}

+ (void)finishedTest:(id)a3 extraResults:(id)a4 applicationTestingDelegate:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [v7 currentTest];

  if (v8)
  {
    v9 = sub_100798744();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "!!! PPT Test Finished: %@", &v14, 0xCu);
    }
  }

  v10 = [v7 currentTest];
  v11 = [v10 testName];
  v12 = [v6 isEqualToString:v11];

  if (v12)
  {
    v13 = [v7 currentTest];
    [v13 cleanup:1];
  }

  if (([v6 isEqualToString:@"launch"] & 1) == 0)
  {
    [v7 setCurrentTest:0];
  }
}

@end