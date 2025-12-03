@interface BKLibraryCollectionsFlowController
- (BKLibraryCollectionsFlowController)initWithLibraryAssetProvider:(id)provider;
- (BOOL)collectionListView:(id)view collectionDeleted:(id)deleted;
- (id)collectionListView:(id)view alertControllerForDeletingCollection:(id)collection completionHandler:(id)handler;
- (id)libraryCollectionListViewControllerWithAssetIDs:(id)ds knownAssetTypes:(id)types knownStoreAssetIDs:(id)iDs containsSeriesContainer:(BOOL)container;
- (void)collectionListView:(id)view addSelectedAssetIDs:(id)ds toCollection:(id)collection knownAssetTypes:(id)types animationDestination:(CGRect)destination;
- (void)collectionListView:(id)view cancelSelected:(BOOL)selected;
- (void)collectionListView:(id)view collectionSelected:(id)selected;
- (void)showLibraryCollectionInPlaceWithTransaction:(id)transaction collectionID:(id)d replaceExistingPresentedCollection:(BOOL)collection;
- (void)showLibraryWithTransaction:(id)transaction animated:(BOOL)animated assetID:(id)d completion:(id)completion;
- (void)showLibraryWithTransaction:(id)transaction animated:(BOOL)animated completion:(id)completion;
@end

@implementation BKLibraryCollectionsFlowController

- (BKLibraryCollectionsFlowController)initWithLibraryAssetProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = BKLibraryCollectionsFlowController;
  v6 = [(BKLibraryCollectionsFlowController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryAssetProvider, provider);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("BKLibraryCollectionsFlowController.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

- (id)libraryCollectionListViewControllerWithAssetIDs:(id)ds knownAssetTypes:(id)types knownStoreAssetIDs:(id)iDs containsSeriesContainer:(BOOL)container
{
  containerCopy = container;
  iDsCopy = iDs;
  typesCopy = types;
  dsCopy = ds;
  v13 = [[BKLibraryCollectionsListViewController alloc] initWithSelectedBookIDs:dsCopy knownAssetTypes:typesCopy knownStoreAssetIDs:iDsCopy containsSeriesContainer:containerCopy];

  [(BKLibraryCollectionsListViewController *)v13 setDelegate:self];
  v14 = +[BKLibraryManager defaultManager];
  uiChildContext = [v14 uiChildContext];
  [(BKLibraryCollectionsListViewController *)v13 setManagedObjectContext:uiChildContext];

  return v13;
}

- (void)collectionListView:(id)view cancelSelected:(BOOL)selected
{
  bc_windowForViewController = [view bc_windowForViewController];
  rootViewController = [bc_windowForViewController rootViewController];

  v6 = rootViewController;
  presentedViewController = [v6 presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = v6;
    do
    {
      v8 = presentedViewController2;

      presentedViewController2 = [v8 presentedViewController];

      v12PresentedViewController = [presentedViewController2 presentedViewController];

      v6 = v8;
    }

    while (v12PresentedViewController);
  }

  else
  {
    presentedViewController2 = v6;
    v8 = v6;
  }

  navigationController = [v8 navigationController];
  v11 = [navigationController popToViewController:v8 animated:1];
}

- (void)collectionListView:(id)view collectionSelected:(id)selected
{
  viewCopy = view;
  collectionID = [selected collectionID];
  [viewCopy bk_presentCollectionWithID:collectionID];
}

- (void)collectionListView:(id)view addSelectedAssetIDs:(id)ds toCollection:(id)collection knownAssetTypes:(id)types animationDestination:(CGRect)destination
{
  viewCopy = view;
  dsCopy = ds;
  typesCopy = types;
  collectionCopy = collection;
  collectionID = [collectionCopy collectionID];
  title = [collectionCopy title];

  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000BC17C;
  v23[3] = &unk_100A05908;
  v24 = dsCopy;
  v25 = collectionID;
  v26 = typesCopy;
  v27 = viewCopy;
  v28 = title;
  selfCopy = self;
  v18 = title;
  v19 = viewCopy;
  v20 = typesCopy;
  v21 = collectionID;
  v22 = dsCopy;
  dispatch_async(queue, v23);
}

- (BOOL)collectionListView:(id)view collectionDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = +[BKLibraryManager defaultManager];
  collectionController = [v5 collectionController];
  v7 = [collectionController deleteCollectionOnMainQueue:deletedCopy];

  return v7;
}

- (id)collectionListView:(id)view alertControllerForDeletingCollection:(id)collection completionHandler:(id)handler
{
  handlerCopy = handler;
  title = [collection title];
  v8 = title;
  if (title)
  {
    v9 = title;
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
  v23 = handlerCopy;
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

- (void)showLibraryWithTransaction:(id)transaction animated:(BOOL)animated completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BD0E4;
  v7[3] = &unk_100A03490;
  animatedCopy = animated;
  v7[4] = self;
  completionCopy = completion;
  v6 = completionCopy;
  [transaction commit:v7];
}

- (void)showLibraryWithTransaction:(id)transaction animated:(BOOL)animated assetID:(id)d completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BD2C8;
  v10[3] = &unk_100A057C8;
  animatedCopy = animated;
  v10[4] = self;
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = dCopy;
  [transaction commit:v10];
}

- (void)showLibraryCollectionInPlaceWithTransaction:(id)transaction collectionID:(id)d replaceExistingPresentedCollection:(BOOL)collection
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BD4A0;
  v8[3] = &unk_100A03E80;
  v8[4] = self;
  dCopy = d;
  collectionCopy = collection;
  v7 = dCopy;
  [transaction commit:v8];
}

@end