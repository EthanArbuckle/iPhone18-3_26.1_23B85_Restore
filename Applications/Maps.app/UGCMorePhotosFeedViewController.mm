@interface UGCMorePhotosFeedViewController
- (BOOL)supportsPhotoAlbums;
- (GEOMapItemPhotoOptions)thumbnailOptionsForMorePhotosFeed;
- (NSString)downloadToken;
- (UGCMorePhotosFeedViewController)initWithMapItem:(id)a3;
- (UGCMorePhotosFeedViewControllerDelegate)delegate;
- (id)_thumbnailGalleryLayout;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)imageViewForIndex:(unint64_t)a3;
- (id)keyCommands;
- (id)userUploadDataProviderForDataSource:(id)a3;
- (void)_attachErrorView;
- (void)_captureUserAction:(int)a3 index:(unint64_t)a4;
- (void)_doneButtonPressed;
- (void)_updateHeaderIfNeeded;
- (void)_updateHeaderViewWithTitleText:(id)a3 subtitleText:(id)a4 options:(unint64_t)a5;
- (void)_updateSnapshotForCurrentState;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)photoFeedHeaderView:(id)a3 selectedAddPhotoWithEntryPoint:(int64_t)a4 usingPresentationOptions:(id)a5;
- (void)photoViewerDataSourceDidUpdate:(id)a3;
- (void)photoViewerDataSourceDidUpdate:(id)a3 withError:(id)a4;
- (void)scrollToPhotoAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)scrollableSegmentedPickerView:(id)a3 didChangeSelectedIndex:(unint64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation UGCMorePhotosFeedViewController

- (UGCMorePhotosFeedViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollableSegmentedPickerView:(id)a3 didChangeSelectedIndex:(unint64_t)a4
{
  [(UGCPhotoViewerDataSource *)self->_dataSource setAlbumIndex:a4];
  v5 = [(UGCPhotoViewerDataSource *)self->_dataSource currentPhotoList];
  [(UGCMorePhotosFeedViewController *)self setPhotoList:v5];

  [(UGCMorePhotosFeedViewController *)self _updateHeaderIfNeeded];
  if ([(UGCPhotoViewerDataSource *)self->_dataSource hasDataToShow])
  {

    [(UGCMorePhotosFeedViewController *)self _updateSnapshotForCurrentState];
  }

  else
  {
    dataSource = self->_dataSource;

    [(UGCPhotoViewerDataSource *)dataSource fetchNextBatchRequestIfNeeded];
  }
}

- (id)userUploadDataProviderForDataSource:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 userUploadedDataProviderForThumbnailGallery:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)photoViewerDataSourceDidUpdate:(id)a3 withError:(id)a4
{
  if (([a3 hasDataToShow] & 1) == 0)
  {

    [(UGCMorePhotosFeedViewController *)self _attachErrorView];
  }
}

- (void)photoViewerDataSourceDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 currentPhotoList];
  [(UGCMorePhotosFeedViewController *)self setPhotoList:v5];

  LODWORD(v5) = [v4 hasDataToShow];
  if (v5)
  {
    [(LoadingModeView *)self->_loadingModeView removeFromSuperview];
  }

  [(UGCMorePhotosFeedViewController *)self _updateHeaderIfNeeded];

  [(UGCMorePhotosFeedViewController *)self _updateSnapshotForCurrentState];
}

- (void)scrollToPhotoAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(NSArray *)self->_photoList count]> a3)
  {
    collectionView = self->_collectionView;
    v8 = [NSIndexPath indexPathForRow:a3 inSection:0];
    [(UICollectionView *)collectionView scrollToItemAtIndexPath:v8 atScrollPosition:2 animated:v4];
  }
}

- (id)imageViewForIndex:(unint64_t)a3
{
  v4 = [NSIndexPath indexPathForRow:a3 inSection:0];
  v5 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v4];
  v6 = [v5 photoImageView];

  return v6;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v7 = a3;
  if (y <= 0.0)
  {
    if (y >= 0.0)
    {
      goto LABEL_6;
    }

    v8 = v7;
    [(UGCMorePhotosFeedViewController *)self _handleScrollUp];
  }

  else
  {
    v8 = v7;
    [(UGCMorePhotosFeedViewController *)self _handleScrollDown];
  }

  v7 = v8;
LABEL_6:
}

- (void)_captureUserAction:(int)a3 index:(unint64_t)a4
{
  v4 = *&a3;
  v6 = [NSString stringWithFormat:@"%lu", a4];
  [(UGCMorePhotosFeedViewController *)self _captureUserAction:v4 value:v6];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 row];
  v14 = [v7 cellForItemAtIndexPath:v6];

  v9 = [v6 row];
  [(UGCMorePhotosFeedViewController *)self _captureUserAction:6006 index:v9];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [(UGCMorePhotosFeedViewController *)self photoList];
  v12 = [(UGCPhotoViewerDataSource *)self->_dataSource currentAlbumCategory];
  v13 = [v14 photoImageView];
  [WeakRetained photoThumbnailGalleryViewController:self selectedPhotoAtIndex:v8 photoList:v11 albumCategory:v12 imageViewForTransition:v13];
}

- (void)_updateSnapshotForCurrentState
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [v3 appendSectionsWithIdentifiers:&off_1016ED6D0];
  v4 = [(UGCMorePhotosFeedViewController *)self photoList];

  if (v4)
  {
    v5 = [(UGCMorePhotosFeedViewController *)self photoList];
    [v3 appendItemsWithIdentifiers:v5];
  }

  if (![(UGCPhotoViewerDataSource *)self->_dataSource hasReachedTotalCount])
  {
    [v3 appendSectionsWithIdentifiers:&off_1016ED6E8];
    [v3 appendItemsWithIdentifiers:&off_1016ED700];
  }

  objc_initWeak(&location, self);
  diffableDataSource = self->_diffableDataSource;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C23A44;
  v7[3] = &unk_101661B98;
  objc_copyWeak(&v8, &location);
  [(UICollectionViewDiffableDataSource *)diffableDataSource applySnapshot:v3 animatingDifferences:1 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v20 = a4;
  v7 = a5;
  if ([(UGCMorePhotosFeedViewController *)self shouldCancelImageDownloads])
  {
    v8 = [v7 row];
    v9 = [(UGCMorePhotosFeedViewController *)self photoList];
    v10 = [v9 count];

    if (v8 < v10)
    {
      v11 = [(UGCMorePhotosFeedViewController *)self photoList];
      v12 = [v11 objectAtIndex:{objc_msgSend(v7, "row")}];

      v13 = [v12 geoMapItemPhoto];
      [v20 frame];
      v16 = [v13 bestPhotoForSize:1 allowSmaller:{v14, v15}];

      v17 = [UGCDownloadablePhotoInfoComposer downloadablePhotoForGeoMapItemPhotoInfo:v16];
      photoDownloadManager = self->_photoDownloadManager;
      v19 = [(UGCMorePhotosFeedViewController *)self downloadToken];
      [(UGCPhotoDownloadManager *)photoDownloadManager cancelRequestForPhotoInfo:v17 downloadToken:v19];
    }
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dataSource = self->_dataSource;

    [(UGCPhotoViewerDataSource *)dataSource fetchNextBatchRequestIfNeeded];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v8 = a4;
  v9 = a3;
  if ([a5 isEqual:@"LoadingCellIdentifier"])
  {
    v10 = +[MKCollectionBatchCell reuseIdentifier];
    v11 = [v9 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v8];

    [v11 startedLoadingBatch];
  }

  else
  {
    v12 = +[UGCPhotoThumbnailCollectionViewCell reuseIdentifier];
    v13 = [v9 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v8];

    v14 = [(UGCMorePhotosFeedViewController *)self photoList];
    v15 = [v8 row];

    v16 = [v14 objectAtIndex:v15];

    v17 = [(UGCMorePhotosFeedViewController *)self traitCollection];
    [v17 displayScale];
    v19 = v18;

    v20 = [v16 geoMapItemPhoto];
    [v13 frame];
    v22 = v21;
    v24 = v23;
    v25 = [(UGCMorePhotosFeedViewController *)self thumbnailOptionsForMorePhotosFeed];
    v26 = [v20 bestPhotoForFrameSize:v25 displayScale:v22 options:{v24, v19}];

    v27 = [v16 photoID];
    [v13 setAssetIdentifier:v27];

    v28 = [UGCDownloadablePhotoInfoComposer downloadablePhotoForGeoMapItemPhotoInfo:v26];
    v29 = [v16 needsObfuscationWhenRenderedInFullScreen];
    v30 = [(UGCMorePhotosFeedViewController *)self mapItem];
    v31 = [v30 _allPhotoAttributions];
    v32 = [v31 count];

    if (v32 == 1 || (v29 & 1) == 0)
    {
      [v13 setProviderName:0];
    }

    else
    {
      v33 = [v16 attribution];
      v34 = [v33 providerName];
      [v13 setProviderName:v34];
    }

    photoDownloadManager = self->_photoDownloadManager;
    v36 = [(UGCMorePhotosFeedViewController *)self downloadToken];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100C23F98;
    v41[3] = &unk_101654148;
    v37 = v13;
    v42 = v37;
    v43 = v16;
    v38 = v16;
    [(UGCPhotoDownloadManager *)photoDownloadManager fetchImageForPhotoInfo:v28 downloadToken:v36 completion:v41];

    v39 = v43;
    v11 = v37;
  }

  return v11;
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"_doneButtonPressed"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)photoFeedHeaderView:(id)a3 selectedAddPhotoWithEntryPoint:(int64_t)a4 usingPresentationOptions:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained photoThumbnailGalleryViewController:self selectedAddPhotosUsingEntryPoint:a4 presentationOptions:v7];
}

- (void)_doneButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 photoThumbnailGalleryViewControllerDidSelectDone:self];
  }
}

- (void)_updateHeaderViewWithTitleText:(id)a3 subtitleText:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(UGCPhotoFeedHeaderTitleModel);
  [(UGCPhotoFeedHeaderTitleModel *)v10 setShowPunchoutSymbol:[(UGCPhotoViewerDataSource *)self->_dataSource isSingleVendorThatHasPhotosNeedingObfuscation]];
  [(UGCPhotoFeedHeaderTitleModel *)v10 setTitleText:v9];

  [(UGCPhotoFeedHeaderView *)self->_headerGradientView setTitleModel:v10];
  [(UGCPhotoFeedHeaderView *)self->_headerGradientView setSubtitleText:v8];

  [(UGCPhotoFeedHeaderView *)self->_headerGradientView setOptions:a5];
}

- (void)_updateHeaderIfNeeded
{
  if ([(UGCMorePhotosFeedViewController *)self shouldShowFloatingButtons])
  {
    if ([(UGCMorePhotosFeedViewController *)self shouldShowAddPhotosButton])
    {
      v3 = 3;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [(MKMapItem *)self->_mapItem _allPhotoAttributions];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Photos" value:@"localized string not found" table:0];

  if ([v4 count])
  {
    v7 = [MUPlacePhotoHeaderAttributionFormatter formattedHeaderStringForPhotoAttributions:v4];
    if ([v7 length])
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Photos from %@" value:@"localized string not found" table:0];

      v28 = [NSString localizedStringWithFormat:v9, v7];
    }

    else
    {
      v28 = v6;
    }
  }

  else
  {
    v28 = v6;
  }

  v10 = [(MKMapItem *)self->_mapItem name];
  v11 = [(UGCPhotoViewerDataSource *)self->_dataSource totalNumberOfPhotosForCurrentDataProvider];
  v12 = v10;
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"%2$@ · %1$lu [Photo viewer header subtitle]" value:@"localized string not found" table:0];

  v15 = [NSString localizedStringWithFormat:v14, v11, v12];

  if (![(UGCMorePhotosFeedViewController *)self supportsPhotoAlbums])
  {
    v23 = self;
    v24 = v28;
    v25 = v15;
LABEL_19:
    [(UGCMorePhotosFeedViewController *)v23 _updateHeaderViewWithTitleText:v24 subtitleText:v25 options:v3];
    goto LABEL_20;
  }

  v16 = [(MUScrollableSegmentedPickerView *)self->_albumFilterView selectedIndex];
  v17 = [(UGCPhotoViewerDataSource *)self->_dataSource albumCategories];
  v18 = [v17 count];

  if (v16 >= v18 || (-[UGCPhotoViewerDataSource albumCategories](self->_dataSource, "albumCategories"), v19 = objc_claimAutoreleasedReturnValue(), [v19 objectAtIndexedSubscript:{-[MUScrollableSegmentedPickerView selectedIndex](self->_albumFilterView, "selectedIndex")}], v20 = objc_claimAutoreleasedReturnValue(), v19, !v20))
  {
    v23 = self;
    v24 = v28;
    v25 = v28;
    goto LABEL_19;
  }

  v21 = [v20 categoryType];
  if (v21 < 2)
  {
    v22 = v28;
LABEL_26:
    v27 = v15;
    goto LABEL_27;
  }

  if (v21 == 2)
  {
    v26 = +[NSBundle mainBundle];
    v22 = [v26 localizedStringForKey:@"Photos From You" value:@"localized string not found" table:0];

    goto LABEL_26;
  }

  v22 = 0;
  v27 = 0;
LABEL_27:
  [(UGCMorePhotosFeedViewController *)self _updateHeaderViewWithTitleText:v22 subtitleText:v27 options:v3];

LABEL_20:
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UGCMorePhotosFeedViewController;
  [(UGCMorePhotosFeedViewController *)&v12 traitCollectionDidChange:v4];
  v5 = [v4 verticalSizeClass];
  v6 = [(UGCMorePhotosFeedViewController *)self traitCollection];
  if (v5 == [v6 verticalSizeClass])
  {
    v7 = [v4 horizontalSizeClass];
    v8 = [(UGCMorePhotosFeedViewController *)self traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v7 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  collectionView = self->_collectionView;
  v11 = [(UGCMorePhotosFeedViewController *)self _thumbnailGalleryLayout];
  [(UICollectionView *)collectionView setCollectionViewLayout:v11];

LABEL_6:
}

- (id)_thumbnailGalleryLayout
{
  v2 = [(UGCMorePhotosFeedViewController *)self traitCollection];
  v3 = [UGCMorePhotosFeedLayoutBuilder thumbnailGalleryLayoutForTraitCollection:v2];

  return v3;
}

- (UGCMorePhotosFeedViewController)initWithMapItem:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = UGCMorePhotosFeedViewController;
  v6 = [(UGCMorePhotosFeedViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
    v8 = +[UGCPhotoDownloadManager sharedDownloadManager];
    photoDownloadManager = v7->_photoDownloadManager;
    v7->_photoDownloadManager = v8;

    v10 = [UGCPhotoViewerDataSource alloc];
    v11 = [(UGCMorePhotosFeedViewController *)v7 mapItem];
    v12 = [(UGCPhotoViewerDataSource *)v10 initWithMapItem:v11 delegate:v7];
    dataSource = v7->_dataSource;
    v7->_dataSource = v12;

    v7->_shouldCancelImageDownloads = GEOConfigGetBOOL();
  }

  return v7;
}

- (void)_attachErrorView
{
  [(LoadingModeView *)self->_loadingModeView removeFromSuperview];
  errorModeView = self->_errorModeView;
  v4 = +[UGCErrorStringBuilder buildBestErrorStringForCurrentNetworkState];
  [(ErrorModeView *)errorModeView setTitle:&stru_1016631F0 andMessage:v4];

  v5 = [(UGCMorePhotosFeedViewController *)self view];
  [v5 insertSubview:self->_errorModeView aboveSubview:self->_collectionView];

  v6 = self->_errorModeView;
  v8 = [(UGCMorePhotosFeedViewController *)self view];
  v7 = [(ErrorModeView *)v6 _maps_constraintsForCenteringInView:v8];
  [NSLayoutConstraint activateConstraints:v7];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = UGCMorePhotosFeedViewController;
  [(UGCMorePhotosFeedViewController *)&v3 viewDidLayoutSubviews];
  [(MUScrollableSegmentedPickerView *)self->_albumFilterView updateSelectionViewPositionIfNeeded];
}

- (void)viewDidLoad
{
  v102.receiver = self;
  v102.super_class = UGCMorePhotosFeedViewController;
  [(UGCMorePhotosFeedViewController *)&v102 viewDidLoad];
  [(UGCPhotoViewerDataSource *)self->_dataSource setActive:1];
  v3 = [UICollectionView alloc];
  v4 = [(UGCMorePhotosFeedViewController *)self _thumbnailGalleryLayout];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v3 initWithFrame:v4 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  collectionView = self->_collectionView;
  self->_collectionView = v8;

  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setBounces:1];
  [(UICollectionView *)self->_collectionView setContentInsetAdjustmentBehavior:2];
  [(UICollectionView *)self->_collectionView setAutomaticallyAdjustsScrollIndicatorInsets:0];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  v10 = +[UIColor systemBackgroundColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v10];

  [(UICollectionView *)self->_collectionView setAccessibilityIdentifier:@"PhotosFeedCollectionView"];
  v11 = [UICollectionViewDiffableDataSource alloc];
  v12 = self->_collectionView;
  v13 = sub_1007CDFC8(self);
  v14 = [v11 initWithCollectionView:v12 cellProvider:v13];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v14;

  if ([(UGCMorePhotosFeedViewController *)self shouldShowFloatingButtons])
  {
    if ([(UGCMorePhotosFeedViewController *)self shouldShowAddPhotosButton])
    {
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [[UGCPhotoFeedHeaderView alloc] initWithOptions:v16];
  headerGradientView = self->_headerGradientView;
  self->_headerGradientView = v17;

  [(UGCPhotoFeedHeaderView *)self->_headerGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UGCPhotoFeedHeaderView *)self->_headerGradientView setPreservesSuperviewLayoutMargins:1];
  [(UGCPhotoFeedHeaderView *)self->_headerGradientView setDelegate:self];
  [(UGCPhotoFeedHeaderView *)self->_headerGradientView setUserInteractionEnabled:0];
  v99 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:self->_collectionView edge:1];
  [(UGCPhotoFeedHeaderView *)self->_headerGradientView addInteraction:?];
  if ([(UGCPhotoViewerDataSource *)self->_dataSource numberOfCategories]>= 2)
  {
    v19 = [[MUScrollableSegmentedPickerView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    albumFilterView = self->_albumFilterView;
    self->_albumFilterView = v19;

    [(MUScrollableSegmentedPickerView *)self->_albumFilterView setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [(UGCPhotoViewerDataSource *)self->_dataSource albumCategories];
    v22 = sub_100021DB0(v21, &stru_10164E130);
    [(MUScrollableSegmentedPickerView *)self->_albumFilterView setViewModels:v22];

    [(MUScrollableSegmentedPickerView *)self->_albumFilterView setSelectedIndex:[(UGCMorePhotosFeedViewController *)self selectedAlbumIndex]];
    [(MUScrollableSegmentedPickerView *)self->_albumFilterView setDelegate:self];
  }

  v23 = [LoadingModeView alloc];
  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
  v26 = [(LoadingModeView *)v23 initWithTitle:v25];
  loadingModeView = self->_loadingModeView;
  self->_loadingModeView = v26;

  [(LoadingModeView *)self->_loadingModeView setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = objc_alloc_init(ErrorModeView);
  errorModeView = self->_errorModeView;
  self->_errorModeView = v28;

  [(ErrorModeView *)self->_errorModeView setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [(UGCMorePhotosFeedViewController *)self view];
  [v30 setAccessibilityIdentifier:@"PhotosFeedView"];
  [v30 addSubview:self->_collectionView];
  [v30 addSubview:self->_loadingModeView];
  v100 = v30;
  [v30 addSubview:self->_headerGradientView];
  if ([(UGCMorePhotosFeedViewController *)self supportsPhotoAlbums])
  {
    [v30 addSubview:self->_albumFilterView];
  }

  v31 = self->_collectionView;
  v32 = objc_opt_class();
  v33 = +[UGCPhotoThumbnailCollectionViewCell reuseIdentifier];
  [(UICollectionView *)v31 registerClass:v32 forCellWithReuseIdentifier:v33];

  v34 = self->_collectionView;
  v35 = objc_opt_class();
  v36 = +[MKCollectionBatchCell reuseIdentifier];
  [(UICollectionView *)v34 registerClass:v35 forCellWithReuseIdentifier:v36];

  v101 = objc_alloc_init(NSMutableArray);
  v95 = [(UICollectionView *)self->_collectionView topAnchor];
  v97 = [(UGCMorePhotosFeedViewController *)self view];
  v93 = [v97 topAnchor];
  v91 = [v95 constraintEqualToAnchor:v93];
  v104[0] = v91;
  v89 = [(UICollectionView *)self->_collectionView leadingAnchor];
  v90 = [(UGCMorePhotosFeedViewController *)self view];
  v88 = [v90 leadingAnchor];
  v87 = [v89 constraintEqualToAnchor:v88];
  v104[1] = v87;
  v85 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v86 = [(UGCMorePhotosFeedViewController *)self view];
  v84 = [v86 trailingAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v104[2] = v83;
  v81 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v82 = [(UGCMorePhotosFeedViewController *)self view];
  v80 = [v82 bottomAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v104[3] = v79;
  v77 = [(LoadingModeView *)self->_loadingModeView topAnchor];
  v78 = [(UGCMorePhotosFeedViewController *)self view];
  v76 = [v78 topAnchor];
  v75 = [v77 constraintEqualToAnchor:v76];
  v104[4] = v75;
  v73 = [(LoadingModeView *)self->_loadingModeView leadingAnchor];
  v74 = [(UGCMorePhotosFeedViewController *)self view];
  v72 = [v74 leadingAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v104[5] = v71;
  v69 = [(LoadingModeView *)self->_loadingModeView trailingAnchor];
  v70 = [(UGCMorePhotosFeedViewController *)self view];
  v68 = [v70 trailingAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v104[6] = v67;
  v65 = [(LoadingModeView *)self->_loadingModeView bottomAnchor];
  v66 = [(UGCMorePhotosFeedViewController *)self view];
  v64 = [v66 bottomAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v104[7] = v63;
  v61 = [(UGCPhotoFeedHeaderView *)self->_headerGradientView topAnchor];
  v62 = [(UGCMorePhotosFeedViewController *)self view];
  v60 = [v62 topAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v104[8] = v59;
  v57 = [(UGCPhotoFeedHeaderView *)self->_headerGradientView leadingAnchor];
  v58 = [(UGCMorePhotosFeedViewController *)self view];
  v56 = [v58 leadingAnchor];
  v37 = [v57 constraintEqualToAnchor:v56];
  v104[9] = v37;
  v38 = [(UGCPhotoFeedHeaderView *)self->_headerGradientView trailingAnchor];
  v39 = [(UGCMorePhotosFeedViewController *)self view];
  v40 = [v39 trailingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  v104[10] = v41;
  v42 = [(UGCPhotoFeedHeaderView *)self->_headerGradientView bottomAnchor];
  v43 = [(UGCPhotoFeedHeaderView *)self->_headerGradientView attributionLabelBottomAnchor];
  v44 = [v42 constraintLessThanOrEqualToAnchor:v43 constant:20.0];
  v104[11] = v44;
  v45 = [NSArray arrayWithObjects:v104 count:12];
  [v101 addObjectsFromArray:v45];

  if ([(UGCMorePhotosFeedViewController *)self supportsPhotoAlbums])
  {
    v96 = [(MUScrollableSegmentedPickerView *)self->_albumFilterView leadingAnchor];
    v98 = [v100 layoutMarginsGuide];
    v94 = [v98 leadingAnchor];
    v92 = [v96 constraintEqualToAnchor:v94];
    v103[0] = v92;
    v46 = [(MUScrollableSegmentedPickerView *)self->_albumFilterView trailingAnchor];
    v47 = [v100 layoutMarginsGuide];
    v48 = [v47 trailingAnchor];
    v49 = [v46 constraintEqualToAnchor:v48];
    v103[1] = v49;
    v50 = [(MUScrollableSegmentedPickerView *)self->_albumFilterView bottomAnchor];
    v51 = [v100 layoutMarginsGuide];
    v52 = [v51 bottomAnchor];
    v53 = [v50 constraintEqualToAnchor:v52 constant:-8.0];
    v103[2] = v53;
    v54 = [NSArray arrayWithObjects:v103 count:3];
    [v101 addObjectsFromArray:v54];
  }

  v55 = [v101 copy];
  [NSLayoutConstraint activateConstraints:v55];

  [(UGCPhotoViewerDataSource *)self->_dataSource setAlbumIndex:[(UGCMorePhotosFeedViewController *)self selectedAlbumIndex]];
  [(UGCPhotoViewerDataSource *)self->_dataSource setIndexOfTappedPhoto:[(UGCMorePhotosFeedViewController *)self startingImageIndex]];
  [(UGCMorePhotosFeedViewController *)self _updateHeaderIfNeeded];
  [(UGCPhotoViewerDataSource *)self->_dataSource fetchNextBatchRequestIfNeeded];
}

- (BOOL)supportsPhotoAlbums
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    LOBYTE(dataSource) = [(UGCPhotoViewerDataSource *)dataSource numberOfCategories]> 1;
  }

  return dataSource;
}

- (GEOMapItemPhotoOptions)thumbnailOptionsForMorePhotosFeed
{
  if (qword_10195EBD8 != -1)
  {
    dispatch_once(&qword_10195EBD8, &stru_10164E0F0);
  }

  v3 = qword_10195EBD0;

  return v3;
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