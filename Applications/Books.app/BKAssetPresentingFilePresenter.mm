@interface BKAssetPresentingFilePresenter
- (BKAssetPresentingFilePresenter)initWithViewController:(id)a3;
- (BKBasePresentingViewController)viewController;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
@end

@implementation BKAssetPresentingFilePresenter

- (BKAssetPresentingFilePresenter)initWithViewController:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = BKAssetPresentingFilePresenter;
  v5 = [(BKAssetPresentingFilePresenter *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, v4);
    v7 = [(BKAssetPresentingFilePresenter *)v6 viewController];
    v8 = [v7 assetViewController];
    v9 = [v8 asset];
    v10 = [v9 url];
    urlForPresentingBook = v6->_urlForPresentingBook;
    v6->_urlForPresentingBook = v10;

    v12 = objc_opt_new();
    bookCoordinator = v6->_bookCoordinator;
    v6->_bookCoordinator = v12;

    [NSFileCoordinator addFilePresenter:v6];
    v6->_active = 1;
    v14 = v6->_urlForPresentingBook;
    if (v14)
    {
      v15 = [NSFileAccessIntent readingIntentWithURL:v14 options:0];
      v16 = v6->_urlForPresentingBook;
      v17 = v6->_bookCoordinator;
      v27 = v15;
      v18 = [NSArray arrayWithObjects:&v27 count:1];
      v19 = objc_opt_new();
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100196E28;
      v23[3] = &unk_100A09D98;
      v24 = v16;
      v25 = v15;
      v20 = v15;
      v21 = v16;
      [(NSFileCoordinator *)v17 coordinateAccessWithIntents:v18 queue:v19 byAccessor:v23];
    }

    else
    {
      v20 = BCCurrentBookLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100792BE0(v20);
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  if (self->_active)
  {
    [NSFileCoordinator removeFilePresenter:self];
  }

  v3.receiver = self;
  v3.super_class = BKAssetPresentingFilePresenter;
  [(BKAssetPresentingFilePresenter *)&v3 dealloc];
}

- (void)activate
{
  if (!self->_active)
  {
    self->_active = 1;
    [NSFileCoordinator addFilePresenter:self];
  }
}

- (void)deactivate
{
  if (self->_active)
  {
    self->_active = 0;
    [NSFileCoordinator removeFilePresenter:self];
  }
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BKAssetPresentingFilePresenter *)self viewController];
  [v5 im_dismissAnimated:0 immediate:1];

  v7 = objc_retainBlock(v4);
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
    v6 = v7;
  }
}

- (BKBasePresentingViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end