@interface StoreKitRevocationInfo
- (StoreKitRevocationInfo)initWithUserID:(id)d bundleID:(id)iD productID:(id)productID;
@end

@implementation StoreKitRevocationInfo

- (StoreKitRevocationInfo)initWithUserID:(id)d bundleID:(id)iD productID:(id)productID
{
  dCopy = d;
  iDCopy = iD;
  productIDCopy = productID;
  v15.receiver = self;
  v15.super_class = StoreKitRevocationInfo;
  v12 = [(StoreKitRevocationInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userID, d);
    objc_storeStrong(&v13->_bundleID, iD);
    objc_storeStrong(&v13->_productID, productID);
  }

  return v13;
}

@end