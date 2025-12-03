@interface BNBookDataStoreServices
+ (BOOL)_isOwned:(id)owned;
+ (id)_contentDataForContentID:(id)d tracker:(id)tracker;
+ (void)addStoreIDToWantToRead:(id)read tracker:(id)tracker completion:(id)completion;
@end

@implementation BNBookDataStoreServices

+ (void)addStoreIDToWantToRead:(id)read tracker:(id)tracker completion:(id)completion
{
  readCopy = read;
  trackerCopy = tracker;
  completionCopy = completion;
  v11 = kBKCollectionDefaultIDWantToRead;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001DCC;
  v15[3] = &unk_100008468;
  v16 = readCopy;
  v17 = trackerCopy;
  v18 = completionCopy;
  selfCopy = self;
  v12 = completionCopy;
  v13 = trackerCopy;
  v14 = readCopy;
  [BDSServiceCenter addStoreID:v14 toCollectionID:v11 completion:v15];
}

+ (id)_contentDataForContentID:(id)d tracker:(id)tracker
{
  trackerCopy = tracker;
  dCopy = d;
  v8 = [trackerCopy contentPrivateIDForContentID:dCopy];
  v9 = [trackerCopy contentUserIDForContentID:dCopy];

  v10 = [[BAContentData alloc] initWithContentID:dCopy contentType:0 contentPrivateID:v8 contentUserID:v9 contentAcquisitionType:objc_msgSend(self contentSubType:"_isOwned:" contentLength:dCopy) supplementalContentCount:0 seriesType:0 productionType:0 isUnified:0 contentKind:{0, 0, 0}];

  return v10;
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