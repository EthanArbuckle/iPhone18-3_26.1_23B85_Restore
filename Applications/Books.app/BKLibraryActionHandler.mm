@interface BKLibraryActionHandler
- (BKLibraryBookshelfCollectionViewController)bookshelfCVC;
- (id)_dataModelForLibraryAsset:(id)asset fromSourceView:(id)view inCollection:(id)collection;
- (id)analyticsAssetPropertyProviderForLibraryAsset:(id)asset fromSourceView:(id)view inCollection:(id)collection;
- (id)menuWithLibraryAsset:(id)asset sourceView:(id)view collection:(id)collection;
- (id)tracker;
- (void)_checkAudiobookAvailabilityForAsset:(id)asset completion:(id)completion;
- (void)_showActionNotAvailableBecauseContentNotAvailableAlert;
- (void)bookCancelDownload:(id)download;
- (void)bookMarkedFinished:(id)finished;
- (void)bookResumeDownload:(id)download;
- (void)bookTapped:(id)tapped;
- (void)bookTapped:(id)tapped completion:(id)completion;
- (void)bookUpdateStarRating:(id)rating rating:(double)a4 completion:(id)completion;
- (void)bookWriteReview:(id)review;
- (void)changeSortModeTo:(unint64_t)to;
- (void)descriptionUpdated;
- (void)directBuyTapped:(id)tapped buyParameters:(id)parameters;
- (void)directBuyTapped:(id)tapped buyParameters:(id)parameters completion:(id)completion;
- (void)showGrid;
- (void)showList;
- (void)showReadingLists;
- (void)toggleEditMode;
@end

@implementation BKLibraryActionHandler

- (id)menuWithLibraryAsset:(id)asset sourceView:(id)view collection:(id)collection
{
  assetCopy = asset;
  viewCopy = view;
  collectionCopy = collection;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001BA788;
  v18[3] = &unk_100A0A888;
  objc_copyWeak(&v22, &location);
  v11 = assetCopy;
  v19 = v11;
  v12 = viewCopy;
  v20 = v12;
  v13 = collectionCopy;
  v21 = v13;
  v14 = [UIDeferredMenuElement elementWithUncachedProvider:v18];
  v24 = v14;
  v15 = [NSArray arrayWithObjects:&v24 count:1];
  v16 = [UIMenu menuWithTitle:&stru_100A30A68 children:v15];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v16;
}

- (id)tracker
{
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  ba_effectiveAnalyticsTracker = [bookshelfCVC ba_effectiveAnalyticsTracker];

  return ba_effectiveAnalyticsTracker;
}

- (id)analyticsAssetPropertyProviderForLibraryAsset:(id)asset fromSourceView:(id)view inCollection:(id)collection
{
  v5 = [(BKLibraryActionHandler *)self _dataModelForLibraryAsset:asset fromSourceView:view inCollection:collection];
  v6 = +[BKContextMenuProvider sharedProvider];
  v7 = [v6 analyticsAssetPropertyProviderForDataModel:v5];

  return v7;
}

- (id)_dataModelForLibraryAsset:(id)asset fromSourceView:(id)view inCollection:(id)collection
{
  collectionCopy = collection;
  viewCopy = view;
  assetCopy = asset;
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  dataSourceAdaptor = [bookshelfCVC dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  assetID = [assetCopy assetID];
  v15 = [booksDataSource productInfoForAssetID:assetID];

  v16 = [BSUIContextActionDataModel alloc];
  v17 = [[BSUIContextActionDataAssetModel alloc] initWithLibraryAsset:assetCopy productProfile:v15];

  v18 = [v16 initWithAssetModel:v17 sourceView:viewCopy];
  [v18 setOriginatingLocation:collectionCopy];

  bookshelfCVC2 = [(BKLibraryActionHandler *)self bookshelfCVC];
  v20 = [bookshelfCVC2 im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BCTransactionProviding];
  [v18 setTransactionProvider:v20];

  return v18;
}

- (void)showGrid
{
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC changeViewModeTo:1];
}

- (void)showList
{
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC changeViewModeTo:2];
}

- (void)toggleEditMode
{
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  bookshelfCVC2 = [(BKLibraryActionHandler *)self bookshelfCVC];
  +[BKLibraryBookshelfController reconfigureBookshelfCollectionViewController:forEditModeState:](BKLibraryBookshelfController, "reconfigureBookshelfCollectionViewController:forEditModeState:", bookshelfCVC, [bookshelfCVC2 isEditing] ^ 1);
}

- (void)changeSortModeTo:(unint64_t)to
{
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC changeSortModeTo:to];
}

- (void)bookTapped:(id)tapped
{
  tappedCopy = tapped;
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC bookTapped:tappedCopy completion:0];
}

- (void)bookTapped:(id)tapped completion:(id)completion
{
  completionCopy = completion;
  tappedCopy = tapped;
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC bookTapped:tappedCopy completion:completionCopy];
}

- (void)directBuyTapped:(id)tapped buyParameters:(id)parameters
{
  parametersCopy = parameters;
  tappedCopy = tapped;
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC directBuyTapped:tappedCopy buyParameters:parametersCopy completion:0];
}

- (void)directBuyTapped:(id)tapped buyParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  parametersCopy = parameters;
  tappedCopy = tapped;
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC directBuyTapped:tappedCopy buyParameters:parametersCopy completion:completionCopy];
}

- (void)showReadingLists
{
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC showReadingListsForActionHandler:self];
}

- (void)bookMarkedFinished:(id)finished
{
  finishedCopy = finished;
  assetID = [finishedCopy assetID];
  if (assetID)
  {
    v6 = +[BKAppDelegate delegate];
    serviceCenter = [v6 serviceCenter];
    readingActivityService = [serviceCenter readingActivityService];

    +[BKLibraryManager defaultManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001BAF70;
    v12 = v11[3] = &unk_100A096C0;
    v13 = assetID;
    v14 = readingActivityService;
    v15 = finishedCopy;
    selfCopy = self;
    v9 = readingActivityService;
    v10 = v12;
    [v10 performBlockOnWorkerQueue:v11];
  }
}

- (void)bookCancelDownload:(id)download
{
  downloadCopy = download;
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC cancelDownloadBook:downloadCopy];
}

- (void)bookResumeDownload:(id)download
{
  downloadCopy = download;
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC resumeDownloadBook:downloadCopy];
}

- (void)bookWriteReview:(id)review
{
  reviewCopy = review;
  storeID = [reviewCopy storeID];

  if (storeID)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001BB404;
    v6[3] = &unk_100A03E30;
    v7 = reviewCopy;
    selfCopy = self;
    [(BKLibraryActionHandler *)self _checkAudiobookAvailabilityForAsset:v7 completion:v6];
  }
}

- (void)bookUpdateStarRating:(id)rating rating:(double)a4 completion:(id)completion
{
  ratingCopy = rating;
  completionCopy = completion;
  [(BKLibraryActionHandler *)self bookshelfCVC];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001BB59C;
  v13[3] = &unk_100A0A928;
  v18 = a4;
  v15 = v14 = ratingCopy;
  selfCopy = self;
  v17 = completionCopy;
  v10 = completionCopy;
  v11 = v15;
  v12 = ratingCopy;
  [(BKLibraryActionHandler *)self _checkAudiobookAvailabilityForAsset:v12 completion:v13];
}

- (void)descriptionUpdated
{
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  ba_effectiveAnalyticsTracker = [bookshelfCVC ba_effectiveAnalyticsTracker];

  bookshelfCVC2 = [(BKLibraryActionHandler *)self bookshelfCVC];
  collectionID = [bookshelfCVC2 collectionID];

  v6 = +[BAEventReporter sharedReporter];
  [v6 emitCollectionDescriptionEventWithTracker:ba_effectiveAnalyticsTracker collectionID:collectionID];
}

- (void)_checkAudiobookAvailabilityForAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  if ([assetCopy isStore] && (objc_msgSend(assetCopy, "isContainer") & 1) == 0 && ((objc_msgSend(assetCopy, "isAudiobook") & 1) != 0 || (objc_msgSend(assetCopy, "isStoreAudiobook"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v7)))
  {
    storeID = [assetCopy storeID];
    [BSUIStoreServices checkAudiobookAvailabilityForStoreID:storeID completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_showActionNotAvailableBecauseContentNotAvailableAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Audiobook Unavailable" value:&stru_100A30A68 table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"This audiobook can’t be rated or reviewed value:because it is no longer available on Apple Books." table:{&stru_100A30A68, 0}];
  v11 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];

  [v11 addAction:v9];
  bookshelfCVC = [(BKLibraryActionHandler *)self bookshelfCVC];
  [bookshelfCVC presentViewController:v11 animated:1 completion:0];
}

- (BKLibraryBookshelfCollectionViewController)bookshelfCVC
{
  WeakRetained = objc_loadWeakRetained(&self->_bookshelfCVC);

  return WeakRetained;
}

@end