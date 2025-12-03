@interface FRArticleNotificationPersonalizerResult
- (FRArticleNotificationPersonalizerResult)initWithItems:(id)items baselineClickThroughRate:(double)rate todayData:(id)data;
@end

@implementation FRArticleNotificationPersonalizerResult

- (FRArticleNotificationPersonalizerResult)initWithItems:(id)items baselineClickThroughRate:(double)rate todayData:(id)data
{
  itemsCopy = items;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = FRArticleNotificationPersonalizerResult;
  v11 = [(FRArticleNotificationPersonalizerResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_items, items);
    v12->_baselineClickThroughRate = rate;
    objc_storeStrong(&v12->_todayData, data);
  }

  return v12;
}

@end