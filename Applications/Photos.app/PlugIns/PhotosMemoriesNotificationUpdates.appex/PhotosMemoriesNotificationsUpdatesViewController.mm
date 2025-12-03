@interface PhotosMemoriesNotificationsUpdatesViewController
- (void)_dismissOneUpViewController;
- (void)_presentViewControllerForMemoryUUID:(id)d photoLibraryURLString:(id)string;
- (void)_updatePreferredContentSizeForPreferredPreviewSize:(CGSize)size;
- (void)didReceiveNotification:(id)notification;
@end

@implementation PhotosMemoriesNotificationsUpdatesViewController

- (void)didReceiveNotification:(id)notification
{
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];
  v7 = [userInfo objectForKey:kNotificationKeyMemoryUUID];
  if (!v7)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PhotosMemoriesNotificationsUpdatesViewController.m" lineNumber:107 description:@"Missing memory UUID for Memories Notification."];
  }

  v8 = [userInfo objectForKey:kNotificationKeyPhotoLibraryURLString];
  if (!v8)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PhotosMemoriesNotificationsUpdatesViewController.m" lineNumber:110 description:@"Missing photoLibraryURLString for Memories Notification."];
  }

  [(PhotosMemoriesNotificationsUpdatesViewController *)self _presentViewControllerForMemoryUUID:v7 photoLibraryURLString:v8];
}

- (void)_dismissOneUpViewController
{
  [(UIViewController *)self->_previewViewController willMoveToParentViewController:0];
  view = [(UIViewController *)self->_previewViewController view];
  [view removeFromSuperview];

  [(UIViewController *)self->_previewViewController removeFromParentViewController];
  previewViewController = self->_previewViewController;
  self->_previewViewController = 0;
}

- (void)_presentViewControllerForMemoryUUID:(id)d photoLibraryURLString:(id)string
{
  dCopy = d;
  stringCopy = string;
  if (!dCopy)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PhotosMemoriesNotificationsUpdatesViewController.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"memoryUUID"}];
  }

  if (self->_previewViewController)
  {
    [(PhotosMemoriesNotificationsUpdatesViewController *)self _dismissOneUpViewController];
  }

  v9 = [PHMemory localIdentifierWithUUID:dCopy];
  v10 = [PHPhotoLibrary alloc];
  v11 = [NSURL URLWithString:stringCopy];
  v12 = [v10 initWithPhotoLibraryURL:v11];

  if (![v12 openAndWaitWithUpgrade:0 error:0])
  {
    goto LABEL_8;
  }

  librarySpecificFetchOptions = [v12 librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v31 = v9;
  v14 = [NSArray arrayWithObjects:&v31 count:1];
  v15 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v14 options:librarySpecificFetchOptions];

  firstObject = [v15 firstObject];

  if (firstObject)
  {
    v17 = [PXPhotosDetailsContext photosDetailsContextForMemory:firstObject];
    v18 = [[PXPhotosDetailsUIViewController alloc] initWithContext:v17 options:8];
    previewViewController = self->_previewViewController;
    self->_previewViewController = v18;

    view = [(PhotosMemoriesNotificationsUpdatesViewController *)self view];
    [view bounds];
    v22 = v21;
    v24 = v23;

    [(UIViewController *)self->_previewViewController setPreferredContentSize:v22, v24];
    [(PhotosMemoriesNotificationsUpdatesViewController *)self addChildViewController:self->_previewViewController];
    view2 = [(UIViewController *)self->_previewViewController view];
    view3 = [(PhotosMemoriesNotificationsUpdatesViewController *)self view];
    [view3 bounds];
    [view2 setFrame:?];

    view4 = [(PhotosMemoriesNotificationsUpdatesViewController *)self view];
    [view4 addSubview:view2];

    [(UIViewController *)self->_previewViewController didMoveToParentViewController:self];
    [(UIViewController *)self->_previewViewController preferredContentSize];
    [(PhotosMemoriesNotificationsUpdatesViewController *)self _updatePreferredContentSizeForPreferredPreviewSize:?];
  }

  else
  {
LABEL_8:
    firstObject = PLUIGetLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = dCopy;
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_ERROR, "No memory was fetchable with memory UUID: %@, hence can't present detail view context for that memory.", buf, 0xCu);
    }
  }
}

- (void)_updatePreferredContentSizeForPreferredPreviewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(PhotosMemoriesNotificationsUpdatesViewController *)self view];
  [view bounds];
  v8 = v7;

  v9 = 0.0;
  if (width > 0.0)
  {
    v9 = floor(height * (v8 / width));
  }

  [(PhotosMemoriesNotificationsUpdatesViewController *)self preferredContentSize];
  if (v11 != v8 || v10 != v9)
  {

    [(PhotosMemoriesNotificationsUpdatesViewController *)self setPreferredContentSize:v8, v9];
  }
}

@end