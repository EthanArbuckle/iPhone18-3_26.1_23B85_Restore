@interface BKLibraryManagerAccountIdentifiers
- (BKLibraryManagerAccountIdentifiers)initWithAsset:(id)asset;
- (BKLibraryManagerAccountIdentifiers)initWithPurchasedDSID:(id)d downloadedDSID:(id)iD familyID:(id)familyID;
@end

@implementation BKLibraryManagerAccountIdentifiers

- (BKLibraryManagerAccountIdentifiers)initWithPurchasedDSID:(id)d downloadedDSID:(id)iD familyID:(id)familyID
{
  dCopy = d;
  iDCopy = iD;
  familyIDCopy = familyID;
  v19.receiver = self;
  v19.super_class = BKLibraryManagerAccountIdentifiers;
  v11 = [(BKLibraryManagerAccountIdentifiers *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    purchasedDSID = v11->_purchasedDSID;
    v11->_purchasedDSID = v12;

    v14 = [iDCopy copy];
    downloadedDSID = v11->_downloadedDSID;
    v11->_downloadedDSID = v14;

    v16 = [familyIDCopy copy];
    familyID = v11->_familyID;
    v11->_familyID = v16;
  }

  return v11;
}

- (BKLibraryManagerAccountIdentifiers)initWithAsset:(id)asset
{
  assetCopy = asset;
  purchasedDSID = [assetCopy purchasedDSID];
  downloadedDSID = [assetCopy downloadedDSID];
  familyID = [assetCopy familyID];

  v8 = [(BKLibraryManagerAccountIdentifiers *)self initWithPurchasedDSID:purchasedDSID downloadedDSID:downloadedDSID familyID:familyID];
  return v8;
}

@end