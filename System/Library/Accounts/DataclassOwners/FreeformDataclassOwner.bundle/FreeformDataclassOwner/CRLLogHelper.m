@interface CRLLogHelper
+ (id)sharedInstance;
- (BOOL)incrementThrottleCountAndCheckThottleMax:(unint64_t)a3;
@end

@implementation CRLLogHelper

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[CRLLogHelper sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

void __30__CRLLogHelper_sharedInstance__block_invoke(id a1)
{
  sharedInstance__instance = objc_alloc_init(CRLLogHelper);

  _objc_release_x1();
}

- (BOOL)incrementThrottleCountAndCheckThottleMax:(unint64_t)a3
{
  v5 = [(CRLLogHelper *)self throttleCount];
  [(CRLLogHelper *)self setThrottleCount:[(CRLLogHelper *)self throttleCount]+ 1];
  v6 = [(CRLLogHelper *)self lastThrottleCheck];
  if (v5 == a3)
  {
    if (CRLPerformanceCat_init_token != -1)
    {
      [CRLLogHelper incrementThrottleCountAndCheckThottleMax:];
    }

    v7 = CRLPerformanceCat_log_t;
    if (os_log_type_enabled(CRLPerformanceCat_log_t, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Start throttling logging", buf, 2u);
    }
  }

  if (v5 < a3 || !v6)
  {
    goto LABEL_16;
  }

  [v6 timeIntervalSinceNow];
  v9 = v8;
  [v6 timeIntervalSinceNow];
  if (v10 < -300.0)
  {
    if (CRLPerformanceCat_init_token != -1)
    {
      [CRLLogHelper incrementThrottleCountAndCheckThottleMax:];
    }

    v11 = CRLPerformanceCat_log_t;
    if (os_log_type_enabled(CRLPerformanceCat_log_t, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "End throttling logging", v15, 2u);
    }

    [(CRLLogHelper *)self setThrottleCount:0];
  }

  if (v9 >= -60.0)
  {
    v12 = 1;
  }

  else
  {
LABEL_16:
    v13 = +[NSDate date];
    [(CRLLogHelper *)self setLastThrottleCheck:v13];

    v12 = 0;
  }

  return v12;
}

void __57__CRLLogHelper_incrementThrottleCountAndCheckThottleMax___block_invoke(id a1)
{
  CRLPerformanceCat_log_t = CRLLogCreateCategory("CRLPerformanceCat");

  _objc_release_x1();
}

void __57__CRLLogHelper_incrementThrottleCountAndCheckThottleMax___block_invoke_221(id a1)
{
  CRLPerformanceCat_log_t = CRLLogCreateCategory("CRLPerformanceCat");

  _objc_release_x1();
}

@end