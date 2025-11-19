@interface StoreKitRevocationInfo
- (StoreKitRevocationInfo)initWithUserID:(id)a3 bundleID:(id)a4 productID:(id)a5;
@end

@implementation StoreKitRevocationInfo

- (StoreKitRevocationInfo)initWithUserID:(id)a3 bundleID:(id)a4 productID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = StoreKitRevocationInfo;
  v12 = [(StoreKitRevocationInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userID, a3);
    objc_storeStrong(&v13->_bundleID, a4);
    objc_storeStrong(&v13->_productID, a5);
  }

  return v13;
}

@end