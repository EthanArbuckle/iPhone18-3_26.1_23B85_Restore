@interface AEAccountIdentifiers
+ (id)accountIdentifiersFromPurchasedDSID:(id)d downloadedDSID:(id)iD familyID:(id)familyID;
- (AEAccountIdentifiers)initWithPurchasedDSID:(id)d downloadedDSID:(id)iD familyID:(id)familyID;
- (NSString)downloadedDSID;
- (NSString)familyID;
- (NSString)purchasedDSID;
@end

@implementation AEAccountIdentifiers

+ (id)accountIdentifiersFromPurchasedDSID:(id)d downloadedDSID:(id)iD familyID:(id)familyID
{
  familyIDCopy = familyID;
  iDCopy = iD;
  dCopy = d;
  v11 = [[self alloc] initWithPurchasedDSID:dCopy downloadedDSID:iDCopy familyID:familyIDCopy];

  return v11;
}

- (AEAccountIdentifiers)initWithPurchasedDSID:(id)d downloadedDSID:(id)iD familyID:(id)familyID
{
  dCopy = d;
  iDCopy = iD;
  familyIDCopy = familyID;
  v14.receiver = self;
  v14.super_class = AEAccountIdentifiers;
  v11 = [(AEAccountIdentifiers *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_purchasedDSID, dCopy);
    objc_storeWeak(&v12->_downloadedDSID, iDCopy);
    objc_storeWeak(&v12->_familyID, familyIDCopy);
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