@interface BCCoreAnalytics
+ (id)sharedInstance;
+ (void)logEventForChatSuggestDidNotAppearForBizItem:(id)item error:(id)error isVisible:(BOOL)visible latency:(int64_t)latency;
+ (void)logEventForView:(id)view bizItem:(id)item bizItemReturnedAfterAction:(BOOL)action latency:(int64_t)latency;
- (void)setLastActionTaken:(id)taken withLatency:(int64_t)latency;
@end

@implementation BCCoreAnalytics

+ (id)sharedInstance
{
  v2 = qword_10001E918;
  if (!qword_10001E918)
  {
    if (qword_10001E920 != -1)
    {
      dispatch_once(&qword_10001E920, &stru_100018648);
    }

    v2 = qword_10001E918;
  }

  return v2;
}

+ (void)logEventForView:(id)view bizItem:(id)item bizItemReturnedAfterAction:(BOOL)action latency:(int64_t)latency
{
  itemCopy = item;
  v7 = itemCopy;
  if (itemCopy)
  {
    v8 = itemCopy;
    AnalyticsSendEventLazy();
  }
}

+ (void)logEventForChatSuggestDidNotAppearForBizItem:(id)item error:(id)error isVisible:(BOOL)visible latency:(int64_t)latency
{
  itemCopy = item;
  errorCopy = error;
  v11 = errorCopy;
  if (itemCopy && !errorCopy)
  {
    v12 = v17;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v13 = sub_1000068A8;
    v14 = itemCopy;
LABEL_6:
    v12[2] = v13;
    v12[3] = &unk_100018670;
    v15 = v14;
    *(v12 + 48) = visible;
    v12[4] = v15;
    v12[5] = latency;
    AnalyticsSendEventLazy();

    goto LABEL_7;
  }

  if (errorCopy)
  {
    v12 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v13 = sub_1000069F4;
    v14 = errorCopy;
    goto LABEL_6;
  }

LABEL_7:
}

- (void)setLastActionTaken:(id)taken withLatency:(int64_t)latency
{
  [(BCCoreAnalytics *)self setLastActionTaken:taken];

  [(BCCoreAnalytics *)self setLastActionLatency:latency];
}

@end