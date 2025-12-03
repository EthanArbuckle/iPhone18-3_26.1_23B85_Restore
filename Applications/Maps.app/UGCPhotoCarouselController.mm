@interface UGCPhotoCarouselController
- (NSString)downloadToken;
- (UGCPhotoCarouselController)initWithDelegate:(id)delegate maximumNumberOfPhotos:(unint64_t)photos prefersMenu:(BOOL)menu;
- (UGCPhotoCarouselRequestDelegate)delegate;
- (UIBarButtonItem)anchoringBarButtonItem;
- (UIView)anchoringView;
- (UIViewController)presentingViewController;
- (double)preferredCellHeight;
- (id)_buildSnapshotFromCurrentState;
- (id)_viewModelForIdentifier:(id)identifier;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)visibleImageViewForIdentifier:(id)identifier;
- (void)_addViewModel:(id)model;
- (void)_cellRequestsRemoveImageForIdentifier:(id)identifier;
- (void)_invokeChangeHandler;
- (void)_removeImageForIdentifier:(id)identifier;
- (void)_updateAddButtonState;
- (void)addImage:(id)image forIdentifier:(id)identifier;
- (void)addImageURL:(id)l forIdentifier:(id)identifier;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)photoCellDidCancel:(id)cancel;
- (void)photoOptionsMenuButtonDidSelectAddFromLibrary;
- (void)photoOptionsMenuButtonDidSelectTakePhoto;
- (void)setMaximumNumberOfPhotos:(unint64_t)photos;
- (void)setupCollectionView:(id)view;
@end

@implementation UGCPhotoCarouselController

- (UIBarButtonItem)anchoringBarButtonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_anchoringBarButtonItem);

  return WeakRetained;
}

- (UGCPhotoCarouselRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)photoOptionsMenuButtonDidSelectAddFromLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 photoCarouselControllerRequestsAddingNewPhoto:self forSourceType:2];
  }
}

- (void)photoOptionsMenuButtonDidSelectTakePhoto
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 photoCarouselControllerRequestsAddingNewPhoto:self forSourceType:1];
  }
}

- (void)photoCellDidCancel:(id)cancel
{
  identifier = [cancel identifier];
  [(UGCPhotoCarouselController *)self _cellRequestsRemoveImageForIdentifier:identifier];
}

- (double)preferredCellHeight
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  result = 90.0;
  if (userInterfaceIdiom == 5)
  {
    return 48.0;
  }

  return result;
}

- (UIView)anchoringView
{
  WeakRetained = objc_loadWeakRetained(&self->_addCell);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_addCell);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _addCell != ((void *)0)", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_buildSnapshotFromCurrentState
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v21 = @"DefaultCarouselSection";
  v4 = [NSArray arrayWithObjects:&v21 count:1];
  [v3 appendSectionsWithIdentifiers:v4];

  v5 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_viewModels;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        _maps_diffableDataSourceIdentifier = [*(*(&v16 + 1) + 8 * i) _maps_diffableDataSourceIdentifier];
        [v5 addObject:_maps_diffableDataSourceIdentifier];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v12 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [v5 addObject:@"AddPhotoCellIdentifier"];
  }

  else
  {
    [v5 insertObject:@"AddPhotoCellIdentifier" atIndex:0];
  }

  v14 = [v5 copy];
  [v3 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:@"DefaultCarouselSection"];

  return v3;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v8 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:path];
  if ([v8 isEqualToString:@"AddPhotoCellIdentifier"])
  {
    if ([(NSMutableArray *)self->_viewModels count]>= self->_maximumNumberOfPhotos)
    {
      goto LABEL_7;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained photoCarouselControllerRequestsAddingNewPhoto:self];
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained photoCarouselController:self didSelectImageWithIdentifier:v8];
  }

LABEL_7:
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  if ([identifierCopy isEqualToString:@"AddPhotoCellIdentifier"])
  {
    v11 = +[UGCAddPhotoCollectionViewCell reuseIdentifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

    [v12 setDelegate:self];
    [v12 setPrefersMenu:self->_prefersMenu];
    v13 = v12;
    WeakRetained = objc_loadWeakRetained(&self->_addCell);

    if (WeakRetained != v13)
    {
      objc_storeWeak(&self->_addCell, v13);
    }

    [(UGCPhotoCarouselController *)self _updateAddButtonState];
  }

  else
  {
    v15 = +[UGCPhotoCollectionViewCell reuseIdentifier];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:pathCopy];

    [v13 setDelegate:self];
    v16 = [(UGCPhotoCarouselController *)self _viewModelForIdentifier:identifierCopy];
    identifier = [v16 identifier];
    [v13 setIdentifier:identifier];

    image = [v16 image];

    if (image)
    {
      image2 = [v16 image];
      [v13 setImage:image2];
    }

    else
    {
      image2 = +[UGCPhotoDownloadManager sharedDownloadManager];
      [v13 beginAnimatingActivityIndicator];
      downloadToken = [(UGCPhotoCarouselController *)self downloadToken];
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100DA85CC;
      v26 = &unk_101654148;
      v27 = v13;
      v28 = v16;
      [image2 fetchImageForPhotoInfo:v28 downloadToken:downloadToken completion:&v23];
    }
  }

  [v13 _setContinuousCornerRadius:{4.0, v23, v24, v25, v26}];
  [v13 setClipsToBounds:1];
  cellBackgroundColor = [(UGCPhotoCarouselController *)self cellBackgroundColor];
  [v13 setBackgroundColor:cellBackgroundColor];

  return v13;
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

- (void)_updateAddButtonState
{
  v3 = [(NSMutableArray *)self->_viewModels count]>= self->_maximumNumberOfPhotos;
  WeakRetained = objc_loadWeakRetained(&self->_addCell);
  [WeakRetained setDimmed:v3];
}

- (void)_removeImageForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_viewModels;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        identifier = [*(*(&v15 + 1) + 8 * v10) identifier];
        v13 = [identifier isEqualToString:identifierCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_12;
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  if (v8 < [(NSMutableArray *)self->_viewModels count])
  {
    [(NSMutableArray *)self->_viewModels removeObjectAtIndex:v8];
    [(UGCPhotoCarouselController *)self _updateAddButtonState];
    _buildSnapshotFromCurrentState = [(UGCPhotoCarouselController *)self _buildSnapshotFromCurrentState];
    [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:_buildSnapshotFromCurrentState animatingDifferences:1];
    [(UGCPhotoCarouselController *)self _invokeChangeHandler];
  }
}

- (void)_cellRequestsRemoveImageForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100DA8BB8;
  v7[3] = &unk_10165FC50;
  objc_copyWeak(&v9, &location);
  v6 = identifierCopy;
  v8 = v6;
  [WeakRetained photoCarouselController:self requestsRemovingImageForIdentifier:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setupCollectionView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = +[UGCPhotoCollectionViewCell reuseIdentifier];
  [viewCopy registerClass:v5 forCellWithReuseIdentifier:v6];

  v7 = objc_opt_class();
  v8 = +[UGCAddPhotoCollectionViewCell reuseIdentifier];
  [viewCopy registerClass:v7 forCellWithReuseIdentifier:v8];

  [viewCopy setDelegate:self];
  objc_storeWeak(&self->_collectionView, viewCopy);
  v9 = [UICollectionViewDiffableDataSource alloc];
  v10 = sub_1007CDFC8(self);
  v11 = [v9 initWithCollectionView:viewCopy cellProvider:v10];

  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v11;

  _buildSnapshotFromCurrentState = [(UGCPhotoCarouselController *)self _buildSnapshotFromCurrentState];
  [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:_buildSnapshotFromCurrentState animatingDifferences:0];
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

- (void)_addViewModel:(id)model
{
  modelCopy = model;
  if ([(NSMutableArray *)self->_viewModels count]< self->_maximumNumberOfPhotos)
  {
    [(NSMutableArray *)self->_viewModels addObject:modelCopy];
    [(UGCPhotoCarouselController *)self _updateAddButtonState];
    _buildSnapshotFromCurrentState = [(UGCPhotoCarouselController *)self _buildSnapshotFromCurrentState];
    [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:_buildSnapshotFromCurrentState animatingDifferences:1];
    [(UGCPhotoCarouselController *)self _invokeChangeHandler];
  }
}

- (id)visibleImageViewForIdentifier:(id)identifier
{
  v4 = [(UGCPhotoCarouselController *)self _viewModelForIdentifier:identifier];
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    visibleCells = [WeakRetained visibleCells];

    imageView = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (imageView)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != imageView; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(visibleCells);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            identifier = [v11 identifier];
            _maps_diffableDataSourceIdentifier = [v4 _maps_diffableDataSourceIdentifier];
            v14 = [identifier isEqual:_maps_diffableDataSourceIdentifier];

            if (v14)
            {
              imageView = [v11 imageView];

              goto LABEL_15;
            }
          }
        }

        imageView = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (imageView)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    imageView = 0;
  }

  return imageView;
}

- (void)addImageURL:(id)l forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lCopy = l;
  v8 = objc_alloc_init(_UGCPhotoCarouselViewModel);
  [(_UGCPhotoCarouselViewModel *)v8 setImageURL:lCopy];

  [(_UGCPhotoCarouselViewModel *)v8 setIdentifier:identifierCopy];
  [(UGCPhotoCarouselController *)self _addViewModel:v8];
}

- (void)addImage:(id)image forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageCopy = image;
  v8 = objc_alloc_init(_UGCPhotoCarouselViewModel);
  [(_UGCPhotoCarouselViewModel *)v8 setImage:imageCopy];

  [(_UGCPhotoCarouselViewModel *)v8 setIdentifier:identifierCopy];
  [(UGCPhotoCarouselController *)self _addViewModel:v8];
}

- (void)setMaximumNumberOfPhotos:(unint64_t)photos
{
  if (self->_maximumNumberOfPhotos != photos)
  {
    self->_maximumNumberOfPhotos = photos;
    [(UGCPhotoCarouselController *)self _updateAddButtonState];
  }
}

- (void)dealloc
{
  v3 = +[UGCPhotoDownloadManager sharedDownloadManager];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_viewModels;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        downloadToken = [(UGCPhotoCarouselController *)self downloadToken];
        [v3 cancelRequestForPhotoInfo:v9 downloadToken:downloadToken];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11.receiver = self;
  v11.super_class = UGCPhotoCarouselController;
  [(UGCPhotoCarouselController *)&v11 dealloc];
}

- (UGCPhotoCarouselController)initWithDelegate:(id)delegate maximumNumberOfPhotos:(unint64_t)photos prefersMenu:(BOOL)menu
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = UGCPhotoCarouselController;
  v9 = [(UGCPhotoCarouselController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10->_maximumNumberOfPhotos = photos;
    v11 = objc_alloc_init(NSMutableArray);
    viewModels = v10->_viewModels;
    v10->_viewModels = v11;

    v13 = +[UIColor systemGroupedBackgroundColor];
    cellBackgroundColor = v10->_cellBackgroundColor;
    v10->_cellBackgroundColor = v13;

    v10->_prefersMenu = menu;
  }

  return v10;
}

- (NSString)downloadToken
{
  downloadToken = self->_downloadToken;
  if (!downloadToken)
  {
    v4 = [UGCPhotoDownloadManager generateRandomizedDownloadTokenForClass:objc_opt_class()];
    v5 = self->_downloadToken;
    self->_downloadToken = v4;

    downloadToken = self->_downloadToken;
  }

  return downloadToken;
}

@end