@interface CRLLogHelper
+ (id)sharedInstance;
- (BOOL)incrementThrottleCountAndCheckThottleMax:(unint64_t)max;
@end

@implementation CRLLogHelper

+ (id)sharedInstance
{
  if (qword_1000D92F0 != -1)
  {
    sub_1000890E8();
  }

  v3 = qword_1000D92E8;

  return v3;
}

- (BOOL)incrementThrottleCountAndCheckThottleMax:(unint64_t)max
{
  throttleCount = [(CRLLogHelper *)self throttleCount];
  [(CRLLogHelper *)self setThrottleCount:[(CRLLogHelper *)self throttleCount]+ 1];
  lastThrottleCheck = [(CRLLogHelper *)self lastThrottleCheck];
  if (throttleCount == max)
  {
    if (CRLPerformanceCat_init_token != -1)
    {
      sub_1000890FC();
    }

    v7 = CRLPerformanceCat_log_t;
    if (os_log_type_enabled(CRLPerformanceCat_log_t, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Start throttling logging", buf, 2u);
    }
  }

  if (throttleCount < max || !lastThrottleCheck)
  {
    goto LABEL_16;
  }

  [lastThrottleCheck timeIntervalSinceNow];
  v9 = v8;
  [lastThrottleCheck timeIntervalSinceNow];
  if (v10 < -300.0)
  {
    if (CRLPerformanceCat_init_token != -1)
    {
      sub_100089110();
    }

    v11 = CRLPerformanceCat_log_t;
    if (os_log_type_enabled(CRLPerformanceCat_log_t, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "End throttling logging", v15, 2u);
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

@end