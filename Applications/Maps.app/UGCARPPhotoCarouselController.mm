@interface UGCARPPhotoCarouselController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UGCARPPhotoCarouselController)initWithDelegate:(id)delegate presentingViewController:(id)controller maximumNumberOfPhotos:(unint64_t)photos previouslySubmittedPhotosExist:(BOOL)exist mapItemCoordinate:(CLLocationCoordinate2D)coordinate showPhotoCarousel:(BOOL)carousel;
- (id)_buildSnapshotFromCurrentState;
- (id)_viewModelForIdentifier:(id)identifier;
- (id)_viewModelForPhotoWithMetadata:(id)metadata;
- (id)anchoringView;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionViewButtonTitle;
- (id)collectionViewHeaderTitleForNumberOfSelectedPhotos:(unint64_t)photos;
- (id)configurePhotoCreditStringForCollectionViewHeader;
- (unint64_t)_numberOfSelectedPhotos;
- (void)_enableSelection:(BOOL)selection;
- (void)_handleAddFromSuggestionImage:(id)image atIndexPath:(id)path;
- (void)_invokeChangeHandler;
- (void)_refreshCollectionViewWithAnimatingDifferences:(BOOL)differences;
- (void)_updateSelection;
- (void)addPhotoWithMetadata:(id)metadata forIdentifier:(id)identifier;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)fetchPhotoCreditPreferences;
- (void)fetchSuggestedImageAssetsWithCallbackQueue:(id)queue completion:(id)completion;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setupCollectionView:(id)view;
- (void)setupSuggestedPhotosIfNeeded;
@end

@implementation UGCARPPhotoCarouselController

- (void)addPhotoWithMetadata:(id)metadata forIdentifier:(id)identifier
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  if (!self->_photoCreditFetchStatus)
  {
    self->_photoCreditFetchStatus = 1;
    [(UGCARPPhotoCarouselController *)self fetchPhotoCreditPreferences];
  }

  v7 = [(UGCARPPhotoCarouselController *)self _viewModelForPhotoWithMetadata:metadataCopy];
  if (!v7)
  {
    v7 = [[UGCARPPhotoCarouselViewModel alloc] initWithImageManager:self->_imageManager];
    [(UGCARPPhotoCarouselViewModel *)v7 setPhotoWithMetadata:metadataCopy];
    [(UGCARPPhotoCarouselViewModel *)v7 setIdentifier:identifierCopy];
    [(UGCARPPhotoCarouselViewModel *)v7 setChecked:1];
    [(NSMutableArray *)self->_viewModels insertObject:v7 atIndex:0];
  }

  [(UGCARPPhotoCarouselController *)self _updateSelection];
  [(UGCARPPhotoCarouselController *)self _refreshCollectionViewWithAnimatingDifferences:1];
}

- (id)_viewModelForPhotoWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_viewModels;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        photoWithMetadata = [v9 photoWithMetadata];
        v11 = [photoWithMetadata isEqual:metadataCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_viewModelForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_viewModels;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        _maps_diffableDataSourceIdentifier = [v9 _maps_diffableDataSourceIdentifier];
        v11 = [_maps_diffableDataSourceIdentifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_refreshCollectionViewWithAnimatingDifferences:(BOOL)differences
{
  differencesCopy = differences;
  _buildSnapshotFromCurrentState = [(UGCARPPhotoCarouselController *)self _buildSnapshotFromCurrentState];
  [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:_buildSnapshotFromCurrentState animatingDifferences:differencesCopy];
  [(UGCARPPhotoCarouselController *)self _invokeChangeHandler];
}

- (id)_buildSnapshotFromCurrentState
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v19 = @"DefaultCarouselSection";
  v4 = [NSArray arrayWithObjects:&v19 count:1];
  [v3 appendSectionsWithIdentifiers:v4];

  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_viewModels;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        _maps_diffableDataSourceIdentifier = [*(*(&v14 + 1) + 8 * i) _maps_diffableDataSourceIdentifier];
        [v5 addObject:_maps_diffableDataSourceIdentifier];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  [v3 appendItemsWithIdentifiers:v12 intoSectionWithIdentifier:@"DefaultCarouselSection"];

  return v3;
}

- (void)_enableSelection:(BOOL)selection
{
  if (self->_allowSelection != selection)
  {
    self->_allowSelection = selection;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_viewModels;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (self->_allowSelection)
          {
            checked = 1;
          }

          else
          {
            checked = [*(*(&v11 + 1) + 8 * v8) checked];
          }

          [v9 setEnabled:{checked, v11}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(UGCARPPhotoCarouselController *)self _refreshCollectionViewWithAnimatingDifferences:1];
  }
}

- (void)_updateSelection
{
  if ([(UGCARPPhotoCarouselController *)self _numberOfSelectedPhotos]>= self->_maximumNumberOfPhotos || self->_allowSelection)
  {
    if ([(UGCARPPhotoCarouselController *)self _numberOfSelectedPhotos]< self->_maximumNumberOfPhotos || !self->_allowSelection)
    {
      return;
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  [(UGCARPPhotoCarouselController *)self _enableSelection:v3];
}

- (void)_invokeChangeHandler
{
  changeHandler = [(UGCPhotoCarouselController *)self changeHandler];

  if (changeHandler)
  {
    changeHandler2 = [(UGCPhotoCarouselController *)self changeHandler];
    changeHandler2[2]();
  }
}

- (void)_handleAddFromSuggestionImage:(id)image atIndexPath:(id)path
{
  imageCopy = image;
  v8 = objc_alloc_init(NSMutableArray);
  [v8 addObject:imageCopy];

  WeakRetained = objc_loadWeakRetained(&self->_addPhotosDelegate);
  v7 = [v8 copy];
  [WeakRetained suggestedPhotoController:self didSelectPhotosWithMetadata:v7];
}

- (id)anchoringView
{
  headerView = self->_headerView;
  if (headerView)
  {
    v3 = headerView;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _headerView != ((void *)0)", v5, 2u);
  }

  return headerView;
}

- (void)fetchPhotoCreditPreferences
{
  if (self->_showPhotoCarousel)
  {
    objc_initWeak(&location, self);
    v2 = +[UGCPhotoAttributionPreferencesManager sharedManager];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100B76744;
    v3[3] = &unk_10163B510;
    objc_copyWeak(&v4, &location);
    [v2 photoAttributionPreferencesWithCompletion:v3];

    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

- (id)collectionViewButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[UGC Contribution Card] More" value:@"localized string not found" table:0];

  return v3;
}

- (id)collectionViewHeaderTitleForNumberOfSelectedPhotos:(unint64_t)photos
{
  if (photos)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[UGC Contribution Card] # of Photos Selected photo carousel header" value:@"localized string not found" table:0];
    photos = [NSString localizedStringWithFormat:v5, photos];
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    photos = [v4 localizedStringForKey:@"[UGC Contribution Card] Add Your Photos collection view header" value:@"localized string not found" table:0];
  }

  return photos;
}

- (id)configurePhotoCreditStringForCollectionViewHeader
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[UGC Contribution Card] Add Photo Credit" value:@"localized string not found" table:0];

  photoCreditName = self->_photoCreditName;
  if (photoCreditName && self->_isPhotoCreditOn)
  {
    v6 = photoCreditName;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v6 = [v7 localizedStringForKey:@"[UGC Contribution Card] Off" value:@"localized string not found" table:0];
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[UGC Contribution Card] Photo Credit: (Name)" value:@"localized string not found" table:0];
  v10 = [NSString stringWithFormat:v9, v6];

  if (self->_photoCreditNotSetupYet)
  {
    v11 = v4;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;

  return v11;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  [(UGCARPPhotoCarouselController *)self lastContentOffset:dragging];
  if (v6 <= offset->x)
  {
    v7 = 325;
  }

  else
  {
    v7 = 333;
  }

  [GEOAPPortal captureUserAction:v7 target:666 value:0];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [dragging contentOffset];

  [(UGCARPPhotoCarouselController *)self setLastContentOffset:?];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy cellForItemAtIndexPath:pathCopy];
  identifier = [v8 identifier];
  v10 = [(UGCARPPhotoCarouselController *)self _viewModelForIdentifier:identifier];

  if ([v10 enabled])
  {
    if ([v10 checked])
    {
      [v10 setChecked:0];
      [v10 setIsLoading:0];
      [v8 setViewModel:v10];
      objc_initWeak(&location, self);
      delegate = [(UGCPhotoCarouselController *)self delegate];
      photoWithMetadata = [v10 photoWithMetadata];
      photoMetadata = [photoWithMetadata photoMetadata];
      clientImageUuid = [photoMetadata clientImageUuid];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100B76F80;
      v32[3] = &unk_10165FC50;
      objc_copyWeak(&v34, &location);
      v33 = v10;
      [delegate photoCarouselController:self requestsRemovingImageForIdentifier:clientImageUuid completion:v32];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }

    else if (([v10 checked] & 1) == 0)
    {
      if ([(UGCARPPhotoCarouselController *)self _numberOfSelectedPhotos]>= self->_maximumNumberOfPhotos)
      {
        goto LABEL_9;
      }

      _maps_diffableDataSourceIdentifier = [v10 _maps_diffableDataSourceIdentifier];
      [v8 setIdentifier:_maps_diffableDataSourceIdentifier];

      [v10 setChecked:1];
      [v10 setIsLoading:1];
      [v8 setViewModel:v10];
      ++self->_numberOfLoadingPhotos;
      [(UGCARPPhotoCarouselController *)self _updateSelection];
      traitCollection = [v8 traitCollection];
      [traitCollection displayScale];
      v18 = v17;

      suggestedPhotosImageDownloadingQueue = self->_suggestedPhotosImageDownloadingQueue;
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100B77014;
      v26 = &unk_10163B4E8;
      selfCopy = self;
      v28 = v10;
      v31 = v18;
      v29 = v8;
      v30 = pathCopy;
      dispatch_async(suggestedPhotosImageDownloadingQueue, &v23);
    }

    v20 = [(UGCPhotoCarouselController *)self delegate:v23];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate2 = [(UGCPhotoCarouselController *)self delegate];
      [delegate2 photoCarouselControllerDidToggleImage:self];
    }
  }

LABEL_9:
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v5 = -[NSMutableArray objectAtIndexedSubscript:](self->_viewModels, "objectAtIndexedSubscript:", [path row]);
  [v5 imageSizeForCell];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  v11 = +[(UGCPhotoThumbnailCollectionViewCell *)UGCPhotoThumbnailCheckmarkCollectionViewCell];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  v13 = [(UGCARPPhotoCarouselController *)self _viewModelForIdentifier:identifierCopy];

  [v12 _setContinuousCornerRadius:4.0];
  [v12 setClipsToBounds:1];
  _maps_diffableDataSourceIdentifier = [v13 _maps_diffableDataSourceIdentifier];
  [v12 setIdentifier:_maps_diffableDataSourceIdentifier];

  [v12 setViewModel:v13];
  traitCollection = [v12 traitCollection];
  [traitCollection displayScale];
  v17 = v16;

  suggestedPhotosImageDownloadingQueue = self->_suggestedPhotosImageDownloadingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B77828;
  block[3] = &unk_10165E668;
  v25 = v13;
  v27 = v17;
  v19 = v12;
  v26 = v19;
  v20 = v13;
  dispatch_async(suggestedPhotosImageDownloadingQueue, block);
  v21 = v26;
  v22 = v19;

  return v19;
}

- (void)setupCollectionView:(id)view
{
  obj = view;
  v4 = objc_alloc_init(UICollectionViewFlowLayout);
  [v4 setScrollDirection:1];
  [v4 setMinimumInteritemSpacing:8.0];
  [v4 setSectionInset:{0.0, 16.0, 0.0, 16.0}];
  [obj setCollectionViewLayout:v4];
  v5 = objc_opt_class();
  v6 = +[(UGCPhotoThumbnailCollectionViewCell *)UGCPhotoThumbnailCheckmarkCollectionViewCell];
  [obj registerClass:v5 forCellWithReuseIdentifier:v6];

  [obj setDelegate:self];
  [obj setScrollEnabled:1];
  objc_storeWeak(&self->_collectionView, obj);
  diffableDataSource = self->_diffableDataSource;
  if (!diffableDataSource)
  {
    v8 = [UICollectionViewDiffableDataSource alloc];
    v9 = sub_1007CDFC8(self);
    v10 = [v8 initWithCollectionView:obj cellProvider:v9];
    v11 = self->_diffableDataSource;
    self->_diffableDataSource = v10;

    diffableDataSource = self->_diffableDataSource;
  }

  v12 = sub_1007CE178(self);
  [(UICollectionViewDiffableDataSource *)diffableDataSource setSupplementaryViewProvider:v12];

  _buildSnapshotFromCurrentState = [(UGCARPPhotoCarouselController *)self _buildSnapshotFromCurrentState];
  [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:_buildSnapshotFromCurrentState animatingDifferences:0];
  if (!MapsFeature_IsEnabled_ARPCommunityID() || !GEOConfigGetBOOL())
  {
    if (self->_previouslySubmittedPhotosExist)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!self->_previouslySubmittedPhotosExist && MKGetHasUserConsentedToAddingContributions() == 1)
  {
LABEL_9:
    [(UGCARPPhotoCarouselController *)self setupSuggestedPhotosIfNeeded];
  }

LABEL_10:
}

- (void)fetchSuggestedImageAssetsWithCallbackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = objc_alloc_init(PHCachingImageManager);
  imageManager = self->_imageManager;
  self->_imageManager = v8;

  v10 = +[PHPhotoLibrary sharedPhotoLibrary];
  library = self->_library;
  self->_library = v10;

  v12 = objc_alloc_init(PHFetchOptions);
  v13 = +[NSDate now];
  v14 = [NSPredicate predicateWithFormat:@"creationDate <= %@", v13];
  [v12 setPredicate:v14];

  [v12 setFetchLimit:GEOConfigGetUInteger()];
  v15 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:0];
  v25 = v15;
  v16 = [NSArray arrayWithObjects:&v25 count:1];
  [v12 setSortDescriptors:v16];

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B77D80;
  block[3] = &unk_101660380;
  block[4] = self;
  v22 = v12;
  v23 = queueCopy;
  v24 = completionCopy;
  v18 = completionCopy;
  v19 = queueCopy;
  v20 = v12;
  dispatch_async(serialQueue, block);
}

- (void)setupSuggestedPhotosIfNeeded
{
  if (self->_showPhotoCarousel)
  {
    objc_initWeak(&location, self);
    v3 = &_dispatch_main_q;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100B78234;
    v4[3] = &unk_101654BC0;
    objc_copyWeak(&v5, &location);
    [(UGCARPPhotoCarouselController *)self fetchSuggestedImageAssetsWithCallbackQueue:&_dispatch_main_q completion:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (unint64_t)_numberOfSelectedPhotos
{
  WeakRetained = objc_loadWeakRetained(&self->_addPhotosDelegate);
  v4 = [WeakRetained numberOfSelectedPhotosForAddPhotosController:self];
  numberOfLoadingPhotos = self->_numberOfLoadingPhotos;

  return v4 + numberOfLoadingPhotos;
}

- (void)dealloc
{
  v3 = +[UGCPhotoAttributionPreferencesManager sharedManager];
  [v3 removeObserver:self];

  [(PHCachingImageManager *)self->_imageManager stopCachingImagesForAllAssets];
  v4.receiver = self;
  v4.super_class = UGCARPPhotoCarouselController;
  [(UGCPhotoCarouselController *)&v4 dealloc];
}

- (UGCARPPhotoCarouselController)initWithDelegate:(id)delegate presentingViewController:(id)controller maximumNumberOfPhotos:(unint64_t)photos previouslySubmittedPhotosExist:(BOOL)exist mapItemCoordinate:(CLLocationCoordinate2D)coordinate showPhotoCarousel:(BOOL)carousel
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  delegateCopy = delegate;
  controllerCopy = controller;
  v28.receiver = self;
  v28.super_class = UGCARPPhotoCarouselController;
  v17 = [(UGCARPPhotoCarouselController *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_addPhotosDelegate, delegateCopy);
    v18->_centerCoordinate.latitude = latitude;
    v18->_centerCoordinate.longitude = longitude;
    objc_storeWeak(&v18->_presentingViewController, controllerCopy);
    v18->_previouslySubmittedPhotosExist = exist;
    v18->_showPhotoCarousel = carousel;
    v18->_numberOfLoadingPhotos = 0;
    v18->_maximumNumberOfPhotos = photos;
    v19 = objc_alloc_init(NSMutableArray);
    viewModels = v18->_viewModels;
    v18->_viewModels = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.maps.ARPPhotoCarouselController.SuggestedPhotoFetch", v21);
    serialQueue = v18->_serialQueue;
    v18->_serialQueue = v22;

    v24 = geo_dispatch_queue_create_with_qos();
    suggestedPhotosImageDownloadingQueue = v18->_suggestedPhotosImageDownloadingQueue;
    v18->_suggestedPhotosImageDownloadingQueue = v24;

    [(UGCPhotoCarouselController *)v18 setPhotoSliderShouldEnablePagingScroll:1];
    if (v18->_showPhotoCarousel)
    {
      v26 = +[UGCPhotoAttributionPreferencesManager sharedManager];
      [v26 addObserver:v18];
    }

    v18->_allowSelection = 1;
  }

  return v18;
}

@end