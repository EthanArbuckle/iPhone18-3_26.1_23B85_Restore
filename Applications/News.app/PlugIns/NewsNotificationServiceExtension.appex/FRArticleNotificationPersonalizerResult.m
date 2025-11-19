@interface FRArticleNotificationPersonalizerResult
- (FRArticleNotificationPersonalizerResult)initWithItems:(id)a3 baselineClickThroughRate:(double)a4 todayData:(id)a5;
@end

@implementation FRArticleNotificationPersonalizerResult

- (FRArticleNotificationPersonalizerResult)initWithItems:(id)a3 baselineClickThroughRate:(double)a4 todayData:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FRArticleNotificationPersonalizerResult;
  v11 = [(FRArticleNotificationPersonalizerResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_items, a3);
    v12->_baselineClickThroughRate = a4;
    objc_storeStrong(&v12->_todayData, a5);
  }

  return v12;
}

@end