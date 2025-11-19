@interface BKLibraryCollectionsFlowController
- (BKLibraryCollectionsFlowController)initWithLibraryAssetProvider:(id)a3;
- (BOOL)collectionListView:(id)a3 collectionDeleted:(id)a4;
- (id)collectionListView:(id)a3 alertControllerForDeletingCollection:(id)a4 completionHandler:(id)a5;
- (id)libraryCollectionListViewControllerWithAssetIDs:(id)a3 knownAssetTypes:(id)a4 knownStoreAssetIDs:(id)a5 containsSeriesContainer:(BOOL)a6;
- (void)collectionListView:(id)a3 addSelectedAssetIDs:(id)a4 toCollection:(id)a5 knownAssetTypes:(id)a6 animationDestination:(CGRect)a7;
- (void)collectionListView:(id)a3 cancelSelected:(BOOL)a4;
- (void)collectionListView:(id)a3 collectionSelected:(id)a4;
- (void)showLibraryCollectionInPlaceWithTransaction:(id)a3 collectionID:(id)a4 replaceExistingPresentedCollection:(BOOL)a5;
- (void)showLibraryWithTransaction:(id)a3 animated:(BOOL)a4 assetID:(id)a5 completion:(id)a6;
- (void)showLibraryWithTransaction:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation BKLibraryCollectionsFlowController

- (BKLibraryCollectionsFlowController)initWithLibraryAssetProvider:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = BKLibraryCollectionsFlowController;
  v6 = [(BKLibraryCollectionsFlowController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryAssetProvider, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("BKLibraryCollectionsFlowController.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

- (id)libraryCollectionListViewControllerWithAssetIDs:(id)a3 knownAssetTypes:(id)a4 knownStoreAssetIDs:(id)a5 containsSeriesContainer:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[BKLibraryCollectionsListViewController alloc] initWithSelectedBookIDs:v12 knownAssetTypes:v11 knownStoreAssetIDs:v10 containsSeriesContainer:v6];

  [(BKLibraryCollectionsListViewController *)v13 setDelegate:self];
  v14 = +[BKLibraryManager defaultManager];
  v15 = [v14 uiChildContext];
  [(BKLibraryCollectionsListViewController *)v13 setManagedObjectContext:v15];

  return v13;
}

- (void)collectionListView:(id)a3 cancelSelected:(BOOL)a4
{
  v4 = [a3 bc_windowForViewController];
  v5 = [v4 rootViewController];

  v6 = v5;
  v7 = [v6 presentedViewController];

  if (v7)
  {
    v12 = v6;
    do
    {
      v8 = v12;

      v12 = [v8 presentedViewController];

      v9 = [v12 presentedViewController];

      v6 = v8;
    }

    while (v9);
  }

  else
  {
    v12 = v6;
    v8 = v6;
  }

  v10 = [v8 navigationController];
  v11 = [v10 popToViewController:v8 animated:1];
}

- (void)collectionListView:(id)a3 collectionSelected:(id)a4
{
  v5 = a3;
  v6 = [a4 collectionID];
  [v5 bk_presentCollectionWithID:v6];
}

- (void)collectionListView:(id)a3 addSelectedAssetIDs:(id)a4 toCollection:(id)a5 knownAssetTypes:(id)a6 animationDestination:(CGRect)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a5;
  v15 = [v14 collectionID];
  v16 = [v14 title];

  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000BC17C;
  v23[3] = &unk_100A05908;
  v24 = v12;
  v25 = v15;
  v26 = v13;
  v27 = v11;
  v28 = v16;
  v29 = self;
  v18 = v16;
  v19 = v11;
  v20 = v13;
  v21 = v15;
  v22 = v12;
  dispatch_async(queue, v23);
}

- (BOOL)collectionListView:(id)a3 collectionDeleted:(id)a4
{
  v4 = a4;
  v5 = +[BKLibraryManager defaultManager];
  v6 = [v5 collectionController];
  v7 = [v6 deleteCollectionOnMainQueue:v4];

  return v7;
}

- (id)collectionListView:(id)a3 alertControllerForDeletingCollection:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [a4 title];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_100A30A68;
  }

  v10 = v9;

  v11 = +[NSBundle mainBundle];
  v28 = [v11 localizedStringForKey:@"…" value:&stru_100A30A68 table:0];

  v12 = [(__CFString *)v10 stringByTruncatingToLength:50 options:3 truncationString:v28];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Delete Collection?" value:&stru_100A30A68 table:0];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"If you delete the collection “%@” value:its content will remain in your library." table:{&stru_100A30A68, 0}];
  v17 = [NSString localizedStringWithFormat:v16, v12];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Delete" value:&stru_100A30A68 table:0];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Cancel" value:&stru_100A30A68 table:0];

  v22 = [UIAlertController alertControllerWithTitle:v14 message:v17 preferredStyle:1];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000BCF84;
  v31[3] = &unk_100A051C8;
  v23 = v6;
  v32 = v23;
  v24 = [UIAlertAction actionWithTitle:v19 style:2 handler:v31];
  [v22 addAction:v24];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000BCFD4;
  v29[3] = &unk_100A051C8;
  v30 = v23;
  v25 = v23;
  v26 = [UIAlertAction actionWithTitle:v21 style:1 handler:v29];
  [v22 addAction:v26];

  return v22;
}

- (void)showLibraryWithTransaction:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BD0E4;
  v7[3] = &unk_100A03490;
  v9 = a4;
  v7[4] = self;
  v8 = a5;
  v6 = v8;
  [a3 commit:v7];
}

- (void)showLibraryWithTransaction:(id)a3 animated:(BOOL)a4 assetID:(id)a5 completion:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BD2C8;
  v10[3] = &unk_100A057C8;
  v13 = a4;
  v10[4] = self;
  v11 = a5;
  v12 = a6;
  v8 = v12;
  v9 = v11;
  [a3 commit:v10];
}

- (void)showLibraryCollectionInPlaceWithTransaction:(id)a3 collectionID:(id)a4 replaceExistingPresentedCollection:(BOOL)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BD4A0;
  v8[3] = &unk_100A03E80;
  v8[4] = self;
  v9 = a4;
  v10 = a5;
  v7 = v9;
  [a3 commit:v8];
}

@end