@interface BKLibraryManagerAccountIdentifiers
- (BKLibraryManagerAccountIdentifiers)initWithAsset:(id)a3;
- (BKLibraryManagerAccountIdentifiers)initWithPurchasedDSID:(id)a3 downloadedDSID:(id)a4 familyID:(id)a5;
@end

@implementation BKLibraryManagerAccountIdentifiers

- (BKLibraryManagerAccountIdentifiers)initWithPurchasedDSID:(id)a3 downloadedDSID:(id)a4 familyID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = BKLibraryManagerAccountIdentifiers;
  v11 = [(BKLibraryManagerAccountIdentifiers *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    purchasedDSID = v11->_purchasedDSID;
    v11->_purchasedDSID = v12;

    v14 = [v9 copy];
    downloadedDSID = v11->_downloadedDSID;
    v11->_downloadedDSID = v14;

    v16 = [v10 copy];
    familyID = v11->_familyID;
    v11->_familyID = v16;
  }

  return v11;
}

- (BKLibraryManagerAccountIdentifiers)initWithAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 purchasedDSID];
  v6 = [v4 downloadedDSID];
  v7 = [v4 familyID];

  v8 = [(BKLibraryManagerAccountIdentifiers *)self initWithPurchasedDSID:v5 downloadedDSID:v6 familyID:v7];
  return v8;
}

@end