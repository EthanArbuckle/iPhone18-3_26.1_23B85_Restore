@interface BNBookDataStoreServices
+ (BOOL)_isOwned:(id)a3;
+ (id)_contentDataForContentID:(id)a3 tracker:(id)a4;
+ (void)addStoreIDToWantToRead:(id)a3 tracker:(id)a4 completion:(id)a5;
@end

@implementation BNBookDataStoreServices

+ (void)addStoreIDToWantToRead:(id)a3 tracker:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = kBKCollectionDefaultIDWantToRead;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001DCC;
  v15[3] = &unk_100008468;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = a1;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [BDSServiceCenter addStoreID:v14 toCollectionID:v11 completion:v15];
}

+ (id)_contentDataForContentID:(id)a3 tracker:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 contentPrivateIDForContentID:v7];
  v9 = [v6 contentUserIDForContentID:v7];

  v10 = [[BAContentData alloc] initWithContentID:v7 contentType:0 contentPrivateID:v8 contentUserID:v9 contentAcquisitionType:objc_msgSend(a1 contentSubType:"_isOwned:" contentLength:v7) supplementalContentCount:0 seriesType:0 productionType:0 isUnified:0 contentKind:{0, 0, 0}];

  return v10;
}

+ (BOOL)_isOwned:(id)a3
{
  v3 = a3;
  v4 = BSUIGetLibraryItemStateProvider();
  v5 = [v4 itemStateWithIdentifier:v3];

  v6 = [v5 library] == 1 || objc_msgSend(v5, "library") == 3 || objc_msgSend(v5, "library") == 4 || objc_msgSend(v5, "library") == 5;
  return v6;
}

@end