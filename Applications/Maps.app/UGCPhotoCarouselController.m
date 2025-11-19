@interface UGCPhotoCarouselController
- (NSString)downloadToken;
- (UGCPhotoCarouselController)initWithDelegate:(id)a3 maximumNumberOfPhotos:(unint64_t)a4 prefersMenu:(BOOL)a5;
- (UGCPhotoCarouselRequestDelegate)delegate;
- (UIBarButtonItem)anchoringBarButtonItem;
- (UIView)anchoringView;
- (UIViewController)presentingViewController;
- (double)preferredCellHeight;
- (id)_buildSnapshotFromCurrentState;
- (id)_viewModelForIdentifier:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)visibleImageViewForIdentifier:(id)a3;
- (void)_addViewModel:(id)a3;
- (void)_cellRequestsRemoveImageForIdentifier:(id)a3;
- (void)_invokeChangeHandler;
- (void)_removeImageForIdentifier:(id)a3;
- (void)_updateAddButtonState;
- (void)addImage:(id)a3 forIdentifier:(id)a4;
- (void)addImageURL:(id)a3 forIdentifier:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)photoCellDidCancel:(id)a3;
- (void)photoOptionsMenuButtonDidSelectAddFromLibrary;
- (void)photoOptionsMenuButtonDidSelectTakePhoto;
- (void)setMaximumNumberOfPhotos:(unint64_t)a3;
- (void)setupCollectionView:(id)a3;
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

- (void)photoCellDidCancel:(id)a3
{
  v4 = [a3 identifier];
  [(UGCPhotoCarouselController *)self _cellRequestsRemoveImageForIdentifier:v4];
}

- (double)preferredCellHeight
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = 90.0;
  if (v3 == 5)
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

        v11 = [*(*(&v16 + 1) + 8 * i) _maps_diffableDataSourceIdentifier];
        [v5 addObject:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = +[UIDevice currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 5)
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v8 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:a4];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([v8 isEqualToString:@"AddPhotoCellIdentifier"])
  {
    v11 = +[UGCAddPhotoCollectionViewCell reuseIdentifier];
    v12 = [v10 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v9];

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
    v13 = [v10 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v9];

    [v13 setDelegate:self];
    v16 = [(UGCPhotoCarouselController *)self _viewModelForIdentifier:v8];
    v17 = [v16 identifier];
    [v13 setIdentifier:v17];

    v18 = [v16 image];

    if (v18)
    {
      v19 = [v16 image];
      [v13 setImage:v19];
    }

    else
    {
      v19 = +[UGCPhotoDownloadManager sharedDownloadManager];
      [v13 beginAnimatingActivityIndicator];
      v20 = [(UGCPhotoCarouselController *)self downloadToken];
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100DA85CC;
      v26 = &unk_101654148;
      v27 = v13;
      v28 = v16;
      [v19 fetchImageForPhotoInfo:v28 downloadToken:v20 completion:&v23];
    }
  }

  [v13 _setContinuousCornerRadius:{4.0, v23, v24, v25, v26}];
  [v13 setClipsToBounds:1];
  v21 = [(UGCPhotoCarouselController *)self cellBackgroundColor];
  [v13 setBackgroundColor:v21];

  return v13;
}

- (id)_viewModelForIdentifier:(id)a3
{
  v4 = a3;
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
        v10 = [v9 _maps_diffableDataSourceIdentifier];
        v11 = [v10 isEqualToString:v4];

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

- (void)_removeImageForIdentifier:(id)a3
{
  v4 = a3;
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

        v12 = [*(*(&v15 + 1) + 8 * v10) identifier];
        v13 = [v12 isEqualToString:v4];

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
    v14 = [(UGCPhotoCarouselController *)self _buildSnapshotFromCurrentState];
    [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v14 animatingDifferences:1];
    [(UGCPhotoCarouselController *)self _invokeChangeHandler];
  }
}

- (void)_cellRequestsRemoveImageForIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100DA8BB8;
  v7[3] = &unk_10165FC50;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [WeakRetained photoCarouselController:self requestsRemovingImageForIdentifier:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setupCollectionView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = +[UGCPhotoCollectionViewCell reuseIdentifier];
  [v4 registerClass:v5 forCellWithReuseIdentifier:v6];

  v7 = objc_opt_class();
  v8 = +[UGCAddPhotoCollectionViewCell reuseIdentifier];
  [v4 registerClass:v7 forCellWithReuseIdentifier:v8];

  [v4 setDelegate:self];
  objc_storeWeak(&self->_collectionView, v4);
  v9 = [UICollectionViewDiffableDataSource alloc];
  v10 = sub_1007CDFC8(self);
  v11 = [v9 initWithCollectionView:v4 cellProvider:v10];

  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v11;

  v13 = [(UGCPhotoCarouselController *)self _buildSnapshotFromCurrentState];
  [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v13 animatingDifferences:0];
}

- (void)_invokeChangeHandler
{
  v3 = [(UGCPhotoCarouselController *)self changeHandler];

  if (v3)
  {
    v4 = [(UGCPhotoCarouselController *)self changeHandler];
    v4[2]();
  }
}

- (void)_addViewModel:(id)a3
{
  v5 = a3;
  if ([(NSMutableArray *)self->_viewModels count]< self->_maximumNumberOfPhotos)
  {
    [(NSMutableArray *)self->_viewModels addObject:v5];
    [(UGCPhotoCarouselController *)self _updateAddButtonState];
    v4 = [(UGCPhotoCarouselController *)self _buildSnapshotFromCurrentState];
    [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v4 animatingDifferences:1];
    [(UGCPhotoCarouselController *)self _invokeChangeHandler];
  }
}

- (id)visibleImageViewForIdentifier:(id)a3
{
  v4 = [(UGCPhotoCarouselController *)self _viewModelForIdentifier:a3];
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    v6 = [WeakRetained visibleCells];

    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            v12 = [v11 identifier];
            v13 = [v4 _maps_diffableDataSourceIdentifier];
            v14 = [v12 isEqual:v13];

            if (v14)
            {
              v7 = [v11 imageView];

              goto LABEL_15;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
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
    v7 = 0;
  }

  return v7;
}

- (void)addImageURL:(id)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_UGCPhotoCarouselViewModel);
  [(_UGCPhotoCarouselViewModel *)v8 setImageURL:v7];

  [(_UGCPhotoCarouselViewModel *)v8 setIdentifier:v6];
  [(UGCPhotoCarouselController *)self _addViewModel:v8];
}

- (void)addImage:(id)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_UGCPhotoCarouselViewModel);
  [(_UGCPhotoCarouselViewModel *)v8 setImage:v7];

  [(_UGCPhotoCarouselViewModel *)v8 setIdentifier:v6];
  [(UGCPhotoCarouselController *)self _addViewModel:v8];
}

- (void)setMaximumNumberOfPhotos:(unint64_t)a3
{
  if (self->_maximumNumberOfPhotos != a3)
  {
    self->_maximumNumberOfPhotos = a3;
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
        v10 = [(UGCPhotoCarouselController *)self downloadToken];
        [v3 cancelRequestForPhotoInfo:v9 downloadToken:v10];

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

- (UGCPhotoCarouselController)initWithDelegate:(id)a3 maximumNumberOfPhotos:(unint64_t)a4 prefersMenu:(BOOL)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = UGCPhotoCarouselController;
  v9 = [(UGCPhotoCarouselController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v10->_maximumNumberOfPhotos = a4;
    v11 = objc_alloc_init(NSMutableArray);
    viewModels = v10->_viewModels;
    v10->_viewModels = v11;

    v13 = +[UIColor systemGroupedBackgroundColor];
    cellBackgroundColor = v10->_cellBackgroundColor;
    v10->_cellBackgroundColor = v13;

    v10->_prefersMenu = a5;
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