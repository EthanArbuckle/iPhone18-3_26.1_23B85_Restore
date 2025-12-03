@interface ATXExpiredData
- (ATXExpiredData)initWithExpiredBundleIds:(id)ids expiredActionKeys:(id)keys;
@end

@implementation ATXExpiredData

- (ATXExpiredData)initWithExpiredBundleIds:(id)ids expiredActionKeys:(id)keys
{
  idsCopy = ids;
  keysCopy = keys;
  v12.receiver = self;
  v12.super_class = ATXExpiredData;
  v9 = [(ATXExpiredData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expiredBundleIds, ids);
    objc_storeStrong(&v10->_expiredActionKeys, keys);
  }

  return v10;
}

@end