@interface BKLibraryActionHandler
- (BKLibraryBookshelfCollectionViewController)bookshelfCVC;
- (id)_dataModelForLibraryAsset:(id)a3 fromSourceView:(id)a4 inCollection:(id)a5;
- (id)analyticsAssetPropertyProviderForLibraryAsset:(id)a3 fromSourceView:(id)a4 inCollection:(id)a5;
- (id)menuWithLibraryAsset:(id)a3 sourceView:(id)a4 collection:(id)a5;
- (id)tracker;
- (void)_checkAudiobookAvailabilityForAsset:(id)a3 completion:(id)a4;
- (void)_showActionNotAvailableBecauseContentNotAvailableAlert;
- (void)bookCancelDownload:(id)a3;
- (void)bookMarkedFinished:(id)a3;
- (void)bookResumeDownload:(id)a3;
- (void)bookTapped:(id)a3;
- (void)bookTapped:(id)a3 completion:(id)a4;
- (void)bookUpdateStarRating:(id)a3 rating:(double)a4 completion:(id)a5;
- (void)bookWriteReview:(id)a3;
- (void)changeSortModeTo:(unint64_t)a3;
- (void)descriptionUpdated;
- (void)directBuyTapped:(id)a3 buyParameters:(id)a4;
- (void)directBuyTapped:(id)a3 buyParameters:(id)a4 completion:(id)a5;
- (void)showGrid;
- (void)showList;
- (void)showReadingLists;
- (void)toggleEditMode;
@end

@implementation BKLibraryActionHandler

- (id)menuWithLibraryAsset:(id)a3 sourceView:(id)a4 collection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001BA788;
  v18[3] = &unk_100A0A888;
  objc_copyWeak(&v22, &location);
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v13 = v10;
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
  v2 = [(BKLibraryActionHandler *)self bookshelfCVC];
  v3 = [v2 ba_effectiveAnalyticsTracker];

  return v3;
}

- (id)analyticsAssetPropertyProviderForLibraryAsset:(id)a3 fromSourceView:(id)a4 inCollection:(id)a5
{
  v5 = [(BKLibraryActionHandler *)self _dataModelForLibraryAsset:a3 fromSourceView:a4 inCollection:a5];
  v6 = +[BKContextMenuProvider sharedProvider];
  v7 = [v6 analyticsAssetPropertyProviderForDataModel:v5];

  return v7;
}

- (id)_dataModelForLibraryAsset:(id)a3 fromSourceView:(id)a4 inCollection:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BKLibraryActionHandler *)self bookshelfCVC];
  v12 = [v11 dataSourceAdaptor];
  v13 = [v12 booksDataSource];
  v14 = [v10 assetID];
  v15 = [v13 productInfoForAssetID:v14];

  v16 = [BSUIContextActionDataModel alloc];
  v17 = [[BSUIContextActionDataAssetModel alloc] initWithLibraryAsset:v10 productProfile:v15];

  v18 = [v16 initWithAssetModel:v17 sourceView:v9];
  [v18 setOriginatingLocation:v8];

  v19 = [(BKLibraryActionHandler *)self bookshelfCVC];
  v20 = [v19 im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BCTransactionProviding];
  [v18 setTransactionProvider:v20];

  return v18;
}

- (void)showGrid
{
  v2 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v2 changeViewModeTo:1];
}

- (void)showList
{
  v2 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v2 changeViewModeTo:2];
}

- (void)toggleEditMode
{
  v4 = [(BKLibraryActionHandler *)self bookshelfCVC];
  v3 = [(BKLibraryActionHandler *)self bookshelfCVC];
  +[BKLibraryBookshelfController reconfigureBookshelfCollectionViewController:forEditModeState:](BKLibraryBookshelfController, "reconfigureBookshelfCollectionViewController:forEditModeState:", v4, [v3 isEditing] ^ 1);
}

- (void)changeSortModeTo:(unint64_t)a3
{
  v4 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v4 changeSortModeTo:a3];
}

- (void)bookTapped:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v5 bookTapped:v4 completion:0];
}

- (void)bookTapped:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v8 bookTapped:v7 completion:v6];
}

- (void)directBuyTapped:(id)a3 buyParameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v8 directBuyTapped:v7 buyParameters:v6 completion:0];
}

- (void)directBuyTapped:(id)a3 buyParameters:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v11 directBuyTapped:v10 buyParameters:v9 completion:v8];
}

- (void)showReadingLists
{
  v3 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v3 showReadingListsForActionHandler:self];
}

- (void)bookMarkedFinished:(id)a3
{
  v4 = a3;
  v5 = [v4 assetID];
  if (v5)
  {
    v6 = +[BKAppDelegate delegate];
    v7 = [v6 serviceCenter];
    v8 = [v7 readingActivityService];

    +[BKLibraryManager defaultManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001BAF70;
    v12 = v11[3] = &unk_100A096C0;
    v13 = v5;
    v14 = v8;
    v15 = v4;
    v16 = self;
    v9 = v8;
    v10 = v12;
    [v10 performBlockOnWorkerQueue:v11];
  }
}

- (void)bookCancelDownload:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v5 cancelDownloadBook:v4];
}

- (void)bookResumeDownload:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v5 resumeDownloadBook:v4];
}

- (void)bookWriteReview:(id)a3
{
  v4 = a3;
  v5 = [v4 storeID];

  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001BB404;
    v6[3] = &unk_100A03E30;
    v7 = v4;
    v8 = self;
    [(BKLibraryActionHandler *)self _checkAudiobookAvailabilityForAsset:v7 completion:v6];
  }
}

- (void)bookUpdateStarRating:(id)a3 rating:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(BKLibraryActionHandler *)self bookshelfCVC];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001BB59C;
  v13[3] = &unk_100A0A928;
  v18 = a4;
  v15 = v14 = v8;
  v16 = self;
  v17 = v9;
  v10 = v9;
  v11 = v15;
  v12 = v8;
  [(BKLibraryActionHandler *)self _checkAudiobookAvailabilityForAsset:v12 completion:v13];
}

- (void)descriptionUpdated
{
  v3 = [(BKLibraryActionHandler *)self bookshelfCVC];
  v7 = [v3 ba_effectiveAnalyticsTracker];

  v4 = [(BKLibraryActionHandler *)self bookshelfCVC];
  v5 = [v4 collectionID];

  v6 = +[BAEventReporter sharedReporter];
  [v6 emitCollectionDescriptionEventWithTracker:v7 collectionID:v5];
}

- (void)_checkAudiobookAvailabilityForAsset:(id)a3 completion:(id)a4
{
  v9 = a3;
  v5 = a4;
  if ([v9 isStore] && (objc_msgSend(v9, "isContainer") & 1) == 0 && ((objc_msgSend(v9, "isAudiobook") & 1) != 0 || (objc_msgSend(v9, "isStoreAudiobook"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v7)))
  {
    v8 = [v9 storeID];
    [BSUIStoreServices checkAudiobookAvailabilityForStoreID:v8 completion:v5];
  }

  else
  {
    v5[2](v5, 0);
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
  v10 = [(BKLibraryActionHandler *)self bookshelfCVC];
  [v10 presentViewController:v11 animated:1 completion:0];
}

- (BKLibraryBookshelfCollectionViewController)bookshelfCVC
{
  WeakRetained = objc_loadWeakRetained(&self->_bookshelfCVC);

  return WeakRetained;
}

@end