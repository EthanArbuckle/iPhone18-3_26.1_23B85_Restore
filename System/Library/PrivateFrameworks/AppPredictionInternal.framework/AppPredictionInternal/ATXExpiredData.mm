@interface ATXExpiredData
- (ATXExpiredData)initWithExpiredBundleIds:(id)a3 expiredActionKeys:(id)a4;
@end

@implementation ATXExpiredData

- (ATXExpiredData)initWithExpiredBundleIds:(id)a3 expiredActionKeys:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXExpiredData;
  v9 = [(ATXExpiredData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expiredBundleIds, a3);
    objc_storeStrong(&v10->_expiredActionKeys, a4);
  }

  return v10;
}

@end