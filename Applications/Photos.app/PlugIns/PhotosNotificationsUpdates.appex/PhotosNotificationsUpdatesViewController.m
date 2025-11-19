@interface PhotosNotificationsUpdatesViewController
- (id)_photosDataSourceForAssetUUID:(id)a3;
- (void)_dismissOneUpViewController;
- (void)_presentOneUpViewControllerForAssetUUID:(id)a3;
- (void)_updatePreferredContentSizeForPreferredPreviewSize:(CGSize)a3;
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
- (void)loadView;
@end

@implementation PhotosNotificationsUpdatesViewController

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v5 = a4;
  PLProcessNotificationResponse();
  v5[2](v5, 1);
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  [(PhotosNotificationsUpdatesViewController *)self _beginDelayingPresentation:&stru_1000041D0 cancellationHandler:1.0];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v5 = qword_100008910;
  v19 = qword_100008910;
  if (!qword_100008910)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v21 = sub_1000013C4;
    v22 = &unk_100004248;
    v23 = &v16;
    sub_1000013C4(&buf);
    v5 = v17[3];
  }

  v6 = v5;
  _Block_object_dispose(&v16, 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001518;
  v15[3] = &unk_1000041F8;
  v15[4] = self;
  [v5 prefetchSensitiveContentPolicy:v15];
  v7 = [v4 request];
  v8 = [v7 content];

  v9 = [v8 userInfo];
  v10 = [v9 objectForKey:kNotificationKeyAssetUUID];
  v11 = PLUIGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received notification for asset UUID: %@", &buf, 0xCu);
  }

  if (v10)
  {
    [(PhotosNotificationsUpdatesViewController *)self _presentOneUpViewControllerForAssetUUID:v10];
    v12 = dispatch_get_global_queue(0, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000015DC;
    v13[3] = &unk_100004220;
    v14 = v9;
    dispatch_async(v12, v13);
  }
}

- (void)_dismissOneUpViewController
{
  [(UIViewController *)self->_previewViewController willMoveToParentViewController:0];
  v3 = [(UIViewController *)self->_previewViewController view];
  [v3 removeFromSuperview];

  [(UIViewController *)self->_previewViewController removeFromParentViewController];
  previewViewController = self->_previewViewController;
  self->_previewViewController = 0;

  [(PUOneUpPresentationHelper *)self->_oneUpPresentationHelper setDelegate:0];
  oneUpPresentationHelper = self->_oneUpPresentationHelper;
  self->_oneUpPresentationHelper = 0;
}

- (void)_presentOneUpViewControllerForAssetUUID:(id)a3
{
  v16 = [(PhotosNotificationsUpdatesViewController *)self _photosDataSourceForAssetUUID:a3];
  v4 = [[PUOneUpPresentationHelper alloc] initWithPhotosDataSource:v16];
  oneUpPresentationHelper = self->_oneUpPresentationHelper;
  self->_oneUpPresentationHelper = v4;

  [(PUOneUpPresentationHelper *)self->_oneUpPresentationHelper setDelegate:self];
  v6 = [v16 indexPathForFirstAsset];
  v7 = [(PUOneUpPresentationHelper *)self->_oneUpPresentationHelper previewViewControllerForItemAtIndexPath:v6 allowingActions:0];
  previewViewController = self->_previewViewController;
  self->_previewViewController = v7;

  [(PhotosNotificationsUpdatesViewController *)self addChildViewController:self->_previewViewController];
  [(UIViewController *)self->_previewViewController preferredContentSize];
  v10 = v9;
  v12 = v11;
  v13 = [(UIViewController *)self->_previewViewController view];
  [v13 setFrame:{0.0, 0.0, v10, v12}];
  v14 = [(PhotosNotificationsUpdatesViewController *)self view];
  [v14 addSubview:v13];

  v15 = [(PhotosNotificationsUpdatesViewController *)self view];
  [v15 addSubview:v13];

  [(UIViewController *)self->_previewViewController didMoveToParentViewController:self];
  [(PhotosNotificationsUpdatesViewController *)self _updatePreferredContentSizeForPreferredPreviewSize:v10, v12];
}

- (void)_updatePreferredContentSizeForPreferredPreviewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PhotosNotificationsUpdatesViewController *)self view];
  [v6 bounds];
  v8 = v7;

  v9 = 0.0;
  if (width > 0.0)
  {
    v9 = floor(height * (v8 / width));
  }

  [(PhotosNotificationsUpdatesViewController *)self preferredContentSize];
  if (v11 != v8 || v10 != v9)
  {

    [(PhotosNotificationsUpdatesViewController *)self setPreferredContentSize:v8, v9];
  }
}

- (id)_photosDataSourceForAssetUUID:(id)a3
{
  v3 = [PHAsset localIdentifierWithUUID:a3];
  v16 = v3;
  v4 = [NSArray arrayWithObjects:&v16 count:1];
  v5 = +[PHFetchOptions px_standardFetchOptions];
  v6 = [PHAsset fetchAssetsWithLocalIdentifiers:v4 options:v5];

  v7 = [PHAssetCollection transientAssetCollectionWithAssetFetchResult:v6 title:0];
  v15 = v7;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [PHCollectionList transientCollectionListWithCollections:v8 title:0];

  v10 = +[PHFetchOptions px_standardFetchOptions];
  v11 = [PHCollectionList fetchCollectionsInCollectionList:v9 options:v10];

  v12 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v11 options:0];
  v13 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v12];

  return v13;
}

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(PhotosNotificationsUpdatesViewController *)self setView:v3];
}

@end