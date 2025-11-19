@interface AEAccountIdentifiers
+ (id)accountIdentifiersFromPurchasedDSID:(id)a3 downloadedDSID:(id)a4 familyID:(id)a5;
- (AEAccountIdentifiers)initWithPurchasedDSID:(id)a3 downloadedDSID:(id)a4 familyID:(id)a5;
- (NSString)downloadedDSID;
- (NSString)familyID;
- (NSString)purchasedDSID;
@end

@implementation AEAccountIdentifiers

+ (id)accountIdentifiersFromPurchasedDSID:(id)a3 downloadedDSID:(id)a4 familyID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithPurchasedDSID:v10 downloadedDSID:v9 familyID:v8];

  return v11;
}

- (AEAccountIdentifiers)initWithPurchasedDSID:(id)a3 downloadedDSID:(id)a4 familyID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AEAccountIdentifiers;
  v11 = [(AEAccountIdentifiers *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_purchasedDSID, v8);
    objc_storeWeak(&v12->_downloadedDSID, v9);
    objc_storeWeak(&v12->_familyID, v10);
  }

  return v12;
}

- (NSString)purchasedDSID
{
  WeakRetained = objc_loadWeakRetained(&self->_purchasedDSID);

  return WeakRetained;
}

- (NSString)downloadedDSID
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadedDSID);

  return WeakRetained;
}

- (NSString)familyID
{
  WeakRetained = objc_loadWeakRetained(&self->_familyID);

  return WeakRetained;
}

@end