@interface PPXBookDataStoreServices
+ (BOOL)_isOwned:(id)a3;
+ (id)_contentDataForContentID:(id)a3 tracker:(id)a4;
+ (void)_analyticsSubmitRemoveFromWantListEventWithTracker:(id)a3 contentID:(id)a4;
+ (void)addStoreIDToWantToRead:(id)a3 tracker:(id)a4;
+ (void)fetchIsAssetID:(id)a3 inFinishedCollectionWithCompletion:(id)a4;
+ (void)fetchIsAssetID:(id)a3 inWantToReadCollectionWithCompletion:(id)a4;
+ (void)removeAssetFromWantToRead:(id)a3 tracker:(id)a4;
+ (void)removeAssetID:(id)a3 fromCollectionID:(id)a4 completion:(id)a5;
@end

@implementation PPXBookDataStoreServices

+ (void)removeAssetID:(id)a3 fromCollectionID:(id)a4 completion:(id)a5
{
  v7 = a5;
  v10 = [BCCollectionMember collectionMemberIDWithCollectionID:a4 assetID:a3];
  v8 = +[BCCloudCollectionsManager sharedManager];
  v9 = [v8 collectionMemberManager];

  [v9 deleteCollectionMemberForCollectionMemberID:v10 completion:v7];
}

+ (void)removeAssetFromWantToRead:(id)a3 tracker:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = kBKCollectionDefaultIDWantToRead;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003D84;
  v10[3] = &unk_100031550;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [PPXBookDataStoreServices removeAssetID:v8 fromCollectionID:v7 completion:v10];
}

+ (void)addStoreIDToWantToRead:(id)a3 tracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = kBKCollectionDefaultIDWantToRead;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003F8C;
  v11[3] = &unk_1000315A0;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [BDSServiceCenter addStoreID:v10 toCollectionID:v8 completion:v11];
}

+ (void)fetchIsAssetID:(id)a3 inWantToReadCollectionWithCompletion:(id)a4
{
  v5 = a4;
  v6 = kBKCollectionDefaultIDWantToRead;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000041A0;
  v8[3] = &unk_1000315C8;
  v9 = v5;
  v7 = v5;
  [BDSServiceCenter fetchIsAssetID:a3 inCollectionID:v6 completion:v8];
}

+ (void)fetchIsAssetID:(id)a3 inFinishedCollectionWithCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BCCloudAssetManager sharedManager];
  v8 = [v7 assetDetailManager];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004544;
  v10[3] = &unk_100031618;
  v11 = v5;
  v9 = v5;
  [v8 assetDetailForAssetID:v6 completion:v10];
}

+ (void)_analyticsSubmitRemoveFromWantListEventWithTracker:(id)a3 contentID:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (v7 && [v5 length])
  {
    v6 = +[BAEventReporter sharedReporter];
    [v6 emitRemoveFromWantListEventWithTracker:v7 contentID:v5 contentType:0];
  }
}

+ (id)_contentDataForContentID:(id)a3 tracker:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [BAContentData alloc];
  v9 = [v6 contentPrivateIDForContentID:v7];
  v10 = [v6 contentUserIDForContentID:v7];

  v11 = [a1 _isOwned:v7];
  v12 = +[BAEventReporter sharedReporter];
  v13 = [v8 initWithContentID:v7 contentType:0 contentPrivateID:v9 contentUserID:v10 contentAcquisitionType:v11 contentSubType:0 contentLength:0 supplementalContentCount:0 seriesType:objc_msgSend(v12 productionType:"seriesTypeForContentID:" isUnified:v7) contentKind:{0, 0, 0}];

  return v13;
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