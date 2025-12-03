@interface PPXBookDataStoreServices
+ (BOOL)_isOwned:(id)owned;
+ (id)_contentDataForContentID:(id)d tracker:(id)tracker;
+ (void)_analyticsSubmitRemoveFromWantListEventWithTracker:(id)tracker contentID:(id)d;
+ (void)addStoreIDToWantToRead:(id)read tracker:(id)tracker;
+ (void)fetchIsAssetID:(id)d inFinishedCollectionWithCompletion:(id)completion;
+ (void)fetchIsAssetID:(id)d inWantToReadCollectionWithCompletion:(id)completion;
+ (void)removeAssetFromWantToRead:(id)read tracker:(id)tracker;
+ (void)removeAssetID:(id)d fromCollectionID:(id)iD completion:(id)completion;
@end

@implementation PPXBookDataStoreServices

+ (void)removeAssetID:(id)d fromCollectionID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v10 = [BCCollectionMember collectionMemberIDWithCollectionID:iD assetID:d];
  v8 = +[BCCloudCollectionsManager sharedManager];
  collectionMemberManager = [v8 collectionMemberManager];

  [collectionMemberManager deleteCollectionMemberForCollectionMemberID:v10 completion:completionCopy];
}

+ (void)removeAssetFromWantToRead:(id)read tracker:(id)tracker
{
  readCopy = read;
  trackerCopy = tracker;
  v7 = kBKCollectionDefaultIDWantToRead;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003D84;
  v10[3] = &unk_100031550;
  v11 = trackerCopy;
  v12 = readCopy;
  v8 = readCopy;
  v9 = trackerCopy;
  [PPXBookDataStoreServices removeAssetID:v8 fromCollectionID:v7 completion:v10];
}

+ (void)addStoreIDToWantToRead:(id)read tracker:(id)tracker
{
  readCopy = read;
  trackerCopy = tracker;
  v8 = kBKCollectionDefaultIDWantToRead;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003F8C;
  v11[3] = &unk_1000315A0;
  v13 = trackerCopy;
  selfCopy = self;
  v12 = readCopy;
  v9 = trackerCopy;
  v10 = readCopy;
  [BDSServiceCenter addStoreID:v10 toCollectionID:v8 completion:v11];
}

+ (void)fetchIsAssetID:(id)d inWantToReadCollectionWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = kBKCollectionDefaultIDWantToRead;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000041A0;
  v8[3] = &unk_1000315C8;
  v9 = completionCopy;
  v7 = completionCopy;
  [BDSServiceCenter fetchIsAssetID:d inCollectionID:v6 completion:v8];
}

+ (void)fetchIsAssetID:(id)d inFinishedCollectionWithCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[BCCloudAssetManager sharedManager];
  assetDetailManager = [v7 assetDetailManager];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004544;
  v10[3] = &unk_100031618;
  v11 = completionCopy;
  v9 = completionCopy;
  [assetDetailManager assetDetailForAssetID:dCopy completion:v10];
}

+ (void)_analyticsSubmitRemoveFromWantListEventWithTracker:(id)tracker contentID:(id)d
{
  trackerCopy = tracker;
  dCopy = d;
  if (trackerCopy && [dCopy length])
  {
    v6 = +[BAEventReporter sharedReporter];
    [v6 emitRemoveFromWantListEventWithTracker:trackerCopy contentID:dCopy contentType:0];
  }
}

+ (id)_contentDataForContentID:(id)d tracker:(id)tracker
{
  trackerCopy = tracker;
  dCopy = d;
  v8 = [BAContentData alloc];
  v9 = [trackerCopy contentPrivateIDForContentID:dCopy];
  v10 = [trackerCopy contentUserIDForContentID:dCopy];

  v11 = [self _isOwned:dCopy];
  v12 = +[BAEventReporter sharedReporter];
  v13 = [v8 initWithContentID:dCopy contentType:0 contentPrivateID:v9 contentUserID:v10 contentAcquisitionType:v11 contentSubType:0 contentLength:0 supplementalContentCount:0 seriesType:objc_msgSend(v12 productionType:"seriesTypeForContentID:" isUnified:dCopy) contentKind:{0, 0, 0}];

  return v13;
}

+ (BOOL)_isOwned:(id)owned
{
  ownedCopy = owned;
  v4 = BSUIGetLibraryItemStateProvider();
  v5 = [v4 itemStateWithIdentifier:ownedCopy];

  v6 = [v5 library] == 1 || objc_msgSend(v5, "library") == 3 || objc_msgSend(v5, "library") == 4 || objc_msgSend(v5, "library") == 5;
  return v6;
}

@end