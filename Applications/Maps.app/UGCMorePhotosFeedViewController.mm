@interface UGCMorePhotosFeedViewController
- (BOOL)supportsPhotoAlbums;
- (GEOMapItemPhotoOptions)thumbnailOptionsForMorePhotosFeed;
- (NSString)downloadToken;
- (UGCMorePhotosFeedViewController)initWithMapItem:(id)item;
- (UGCMorePhotosFeedViewControllerDelegate)delegate;
- (id)_thumbnailGalleryLayout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)imageViewForIndex:(unint64_t)index;
- (id)keyCommands;
- (id)userUploadDataProviderForDataSource:(id)source;
- (void)_attachErrorView;
- (void)_captureUserAction:(int)action index:(unint64_t)index;
- (void)_doneButtonPressed;
- (void)_updateHeaderIfNeeded;
- (void)_updateHeaderViewWithTitleText:(id)text subtitleText:(id)subtitleText options:(unint64_t)options;
- (void)_updateSnapshotForCurrentState;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)photoFeedHeaderView:(id)view selectedAddPhotoWithEntryPoint:(int64_t)point usingPresentationOptions:(id)options;
- (void)photoViewerDataSourceDidUpdate:(id)update;
- (void)photoViewerDataSourceDidUpdate:(id)update withError:(id)error;
- (void)scrollToPhotoAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)scrollableSegmentedPickerView:(id)view didChangeSelectedIndex:(unint64_t)index;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation UGCMorePhotosFeedViewController

- (UGCMorePhotosFeedViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollableSegmentedPickerView:(id)view didChangeSelectedIndex:(unint64_t)index
{
  [(UGCPhotoViewerDataSource *)self->_dataSource setAlbumIndex:index];
  currentPhotoList = [(UGCPhotoViewerDataSource *)self->_dataSource currentPhotoList];
  [(UGCMorePhotosFeedViewController *)self setPhotoList:currentPhotoList];

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

- (id)userUploadDataProviderForDataSource:(id)source
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

- (void)photoViewerDataSourceDidUpdate:(id)update withError:(id)error
{
  if (([update hasDataToShow] & 1) == 0)
  {

    [(UGCMorePhotosFeedViewController *)self _attachErrorView];
  }
}

- (void)photoViewerDataSourceDidUpdate:(id)update
{
  updateCopy = update;
  currentPhotoList = [updateCopy currentPhotoList];
  [(UGCMorePhotosFeedViewController *)self setPhotoList:currentPhotoList];

  LODWORD(currentPhotoList) = [updateCopy hasDataToShow];
  if (currentPhotoList)
  {
    [(LoadingModeView *)self->_loadingModeView removeFromSuperview];
  }

  [(UGCMorePhotosFeedViewController *)self _updateHeaderIfNeeded];

  [(UGCMorePhotosFeedViewController *)self _updateSnapshotForCurrentState];
}

- (void)scrollToPhotoAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(NSArray *)self->_photoList count]> index)
  {
    collectionView = self->_collectionView;
    v8 = [NSIndexPath indexPathForRow:index inSection:0];
    [(UICollectionView *)collectionView scrollToItemAtIndexPath:v8 atScrollPosition:2 animated:animatedCopy];
  }
}

- (id)imageViewForIndex:(unint64_t)index
{
  v4 = [NSIndexPath indexPathForRow:index inSection:0];
  v5 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v4];
  photoImageView = [v5 photoImageView];

  return photoImageView;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  if (y <= 0.0)
  {
    if (y >= 0.0)
    {
      goto LABEL_6;
    }

    v8 = draggingCopy;
    [(UGCMorePhotosFeedViewController *)self _handleScrollUp];
  }

  else
  {
    v8 = draggingCopy;
    [(UGCMorePhotosFeedViewController *)self _handleScrollDown];
  }

  draggingCopy = v8;
LABEL_6:
}

- (void)_captureUserAction:(int)action index:(unint64_t)index
{
  v4 = *&action;
  index = [NSString stringWithFormat:@"%lu", index];
  [(UGCMorePhotosFeedViewController *)self _captureUserAction:v4 value:index];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  v14 = [viewCopy cellForItemAtIndexPath:pathCopy];

  v9 = [pathCopy row];
  [(UGCMorePhotosFeedViewController *)self _captureUserAction:6006 index:v9];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  photoList = [(UGCMorePhotosFeedViewController *)self photoList];
  currentAlbumCategory = [(UGCPhotoViewerDataSource *)self->_dataSource currentAlbumCategory];
  photoImageView = [v14 photoImageView];
  [WeakRetained photoThumbnailGalleryViewController:self selectedPhotoAtIndex:v8 photoList:photoList albumCategory:currentAlbumCategory imageViewForTransition:photoImageView];
}

- (void)_updateSnapshotForCurrentState
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [v3 appendSectionsWithIdentifiers:&off_1016ED6D0];
  photoList = [(UGCMorePhotosFeedViewController *)self photoList];

  if (photoList)
  {
    photoList2 = [(UGCMorePhotosFeedViewController *)self photoList];
    [v3 appendItemsWithIdentifiers:photoList2];
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

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([(UGCMorePhotosFeedViewController *)self shouldCancelImageDownloads])
  {
    v8 = [pathCopy row];
    photoList = [(UGCMorePhotosFeedViewController *)self photoList];
    v10 = [photoList count];

    if (v8 < v10)
    {
      photoList2 = [(UGCMorePhotosFeedViewController *)self photoList];
      v12 = [photoList2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      geoMapItemPhoto = [v12 geoMapItemPhoto];
      [cellCopy frame];
      v16 = [geoMapItemPhoto bestPhotoForSize:1 allowSmaller:{v14, v15}];

      v17 = [UGCDownloadablePhotoInfoComposer downloadablePhotoForGeoMapItemPhotoInfo:v16];
      photoDownloadManager = self->_photoDownloadManager;
      downloadToken = [(UGCMorePhotosFeedViewController *)self downloadToken];
      [(UGCPhotoDownloadManager *)photoDownloadManager cancelRequestForPhotoInfo:v17 downloadToken:downloadToken];
    }
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dataSource = self->_dataSource;

    [(UGCPhotoViewerDataSource *)dataSource fetchNextBatchRequestIfNeeded];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  pathCopy = path;
  viewCopy = view;
  if ([identifier isEqual:@"LoadingCellIdentifier"])
  {
    v10 = +[MKCollectionBatchCell reuseIdentifier];
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

    [v11 startedLoadingBatch];
  }

  else
  {
    v12 = +[UGCPhotoThumbnailCollectionViewCell reuseIdentifier];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];

    photoList = [(UGCMorePhotosFeedViewController *)self photoList];
    v15 = [pathCopy row];

    v16 = [photoList objectAtIndex:v15];

    traitCollection = [(UGCMorePhotosFeedViewController *)self traitCollection];
    [traitCollection displayScale];
    v19 = v18;

    geoMapItemPhoto = [v16 geoMapItemPhoto];
    [v13 frame];
    v22 = v21;
    v24 = v23;
    thumbnailOptionsForMorePhotosFeed = [(UGCMorePhotosFeedViewController *)self thumbnailOptionsForMorePhotosFeed];
    v26 = [geoMapItemPhoto bestPhotoForFrameSize:thumbnailOptionsForMorePhotosFeed displayScale:v22 options:{v24, v19}];

    photoID = [v16 photoID];
    [v13 setAssetIdentifier:photoID];

    v28 = [UGCDownloadablePhotoInfoComposer downloadablePhotoForGeoMapItemPhotoInfo:v26];
    needsObfuscationWhenRenderedInFullScreen = [v16 needsObfuscationWhenRenderedInFullScreen];
    mapItem = [(UGCMorePhotosFeedViewController *)self mapItem];
    _allPhotoAttributions = [mapItem _allPhotoAttributions];
    v32 = [_allPhotoAttributions count];

    if (v32 == 1 || (needsObfuscationWhenRenderedInFullScreen & 1) == 0)
    {
      [v13 setProviderName:0];
    }

    else
    {
      attribution = [v16 attribution];
      providerName = [attribution providerName];
      [v13 setProviderName:providerName];
    }

    photoDownloadManager = self->_photoDownloadManager;
    downloadToken = [(UGCMorePhotosFeedViewController *)self downloadToken];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100C23F98;
    v41[3] = &unk_101654148;
    v37 = v13;
    v42 = v37;
    v43 = v16;
    v38 = v16;
    [(UGCPhotoDownloadManager *)photoDownloadManager fetchImageForPhotoInfo:v28 downloadToken:downloadToken completion:v41];

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

- (void)photoFeedHeaderView:(id)view selectedAddPhotoWithEntryPoint:(int64_t)point usingPresentationOptions:(id)options
{
  optionsCopy = options;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained photoThumbnailGalleryViewController:self selectedAddPhotosUsingEntryPoint:point presentationOptions:optionsCopy];
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

- (void)_updateHeaderViewWithTitleText:(id)text subtitleText:(id)subtitleText options:(unint64_t)options
{
  subtitleTextCopy = subtitleText;
  textCopy = text;
  v10 = objc_alloc_init(UGCPhotoFeedHeaderTitleModel);
  [(UGCPhotoFeedHeaderTitleModel *)v10 setShowPunchoutSymbol:[(UGCPhotoViewerDataSource *)self->_dataSource isSingleVendorThatHasPhotosNeedingObfuscation]];
  [(UGCPhotoFeedHeaderTitleModel *)v10 setTitleText:textCopy];

  [(UGCPhotoFeedHeaderView *)self->_headerGradientView setTitleModel:v10];
  [(UGCPhotoFeedHeaderView *)self->_headerGradientView setSubtitleText:subtitleTextCopy];

  [(UGCPhotoFeedHeaderView *)self->_headerGradientView setOptions:options];
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

  _allPhotoAttributions = [(MKMapItem *)self->_mapItem _allPhotoAttributions];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Photos" value:@"localized string not found" table:0];

  if ([_allPhotoAttributions count])
  {
    v7 = [MUPlacePhotoHeaderAttributionFormatter formattedHeaderStringForPhotoAttributions:_allPhotoAttributions];
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

  name = [(MKMapItem *)self->_mapItem name];
  totalNumberOfPhotosForCurrentDataProvider = [(UGCPhotoViewerDataSource *)self->_dataSource totalNumberOfPhotosForCurrentDataProvider];
  v12 = name;
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"%2$@ · %1$lu [Photo viewer header subtitle]" value:@"localized string not found" table:0];

  v15 = [NSString localizedStringWithFormat:v14, totalNumberOfPhotosForCurrentDataProvider, v12];

  if (![(UGCMorePhotosFeedViewController *)self supportsPhotoAlbums])
  {
    selfCopy2 = self;
    v24 = v28;
    v25 = v15;
LABEL_19:
    [(UGCMorePhotosFeedViewController *)selfCopy2 _updateHeaderViewWithTitleText:v24 subtitleText:v25 options:v3];
    goto LABEL_20;
  }

  selectedIndex = [(MUScrollableSegmentedPickerView *)self->_albumFilterView selectedIndex];
  albumCategories = [(UGCPhotoViewerDataSource *)self->_dataSource albumCategories];
  v18 = [albumCategories count];

  if (selectedIndex >= v18 || (-[UGCPhotoViewerDataSource albumCategories](self->_dataSource, "albumCategories"), v19 = objc_claimAutoreleasedReturnValue(), [v19 objectAtIndexedSubscript:{-[MUScrollableSegmentedPickerView selectedIndex](self->_albumFilterView, "selectedIndex")}], v20 = objc_claimAutoreleasedReturnValue(), v19, !v20))
  {
    selfCopy2 = self;
    v24 = v28;
    v25 = v28;
    goto LABEL_19;
  }

  categoryType = [v20 categoryType];
  if (categoryType < 2)
  {
    v22 = v28;
LABEL_26:
    v27 = v15;
    goto LABEL_27;
  }

  if (categoryType == 2)
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = UGCMorePhotosFeedViewController;
  [(UGCMorePhotosFeedViewController *)&v12 traitCollectionDidChange:changeCopy];
  verticalSizeClass = [changeCopy verticalSizeClass];
  traitCollection = [(UGCMorePhotosFeedViewController *)self traitCollection];
  if (verticalSizeClass == [traitCollection verticalSizeClass])
  {
    horizontalSizeClass = [changeCopy horizontalSizeClass];
    traitCollection2 = [(UGCMorePhotosFeedViewController *)self traitCollection];
    horizontalSizeClass2 = [traitCollection2 horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  collectionView = self->_collectionView;
  _thumbnailGalleryLayout = [(UGCMorePhotosFeedViewController *)self _thumbnailGalleryLayout];
  [(UICollectionView *)collectionView setCollectionViewLayout:_thumbnailGalleryLayout];

LABEL_6:
}

- (id)_thumbnailGalleryLayout
{
  traitCollection = [(UGCMorePhotosFeedViewController *)self traitCollection];
  v3 = [UGCMorePhotosFeedLayoutBuilder thumbnailGalleryLayoutForTraitCollection:traitCollection];

  return v3;
}

- (UGCMorePhotosFeedViewController)initWithMapItem:(id)item
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = UGCMorePhotosFeedViewController;
  v6 = [(UGCMorePhotosFeedViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    v8 = +[UGCPhotoDownloadManager sharedDownloadManager];
    photoDownloadManager = v7->_photoDownloadManager;
    v7->_photoDownloadManager = v8;

    v10 = [UGCPhotoViewerDataSource alloc];
    mapItem = [(UGCMorePhotosFeedViewController *)v7 mapItem];
    v12 = [(UGCPhotoViewerDataSource *)v10 initWithMapItem:mapItem delegate:v7];
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

  view = [(UGCMorePhotosFeedViewController *)self view];
  [view insertSubview:self->_errorModeView aboveSubview:self->_collectionView];

  v6 = self->_errorModeView;
  view2 = [(UGCMorePhotosFeedViewController *)self view];
  v7 = [(ErrorModeView *)v6 _maps_constraintsForCenteringInView:view2];
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
  _thumbnailGalleryLayout = [(UGCMorePhotosFeedViewController *)self _thumbnailGalleryLayout];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v3 initWithFrame:_thumbnailGalleryLayout collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
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
    albumCategories = [(UGCPhotoViewerDataSource *)self->_dataSource albumCategories];
    v22 = sub_100021DB0(albumCategories, &stru_10164E130);
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
  view = [(UGCMorePhotosFeedViewController *)self view];
  [view setAccessibilityIdentifier:@"PhotosFeedView"];
  [view addSubview:self->_collectionView];
  [view addSubview:self->_loadingModeView];
  v100 = view;
  [view addSubview:self->_headerGradientView];
  if ([(UGCMorePhotosFeedViewController *)self supportsPhotoAlbums])
  {
    [view addSubview:self->_albumFilterView];
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
  topAnchor = [(UICollectionView *)self->_collectionView topAnchor];
  view2 = [(UGCMorePhotosFeedViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v91 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v104[0] = v91;
  leadingAnchor = [(UICollectionView *)self->_collectionView leadingAnchor];
  view3 = [(UGCMorePhotosFeedViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v104[1] = v87;
  trailingAnchor = [(UICollectionView *)self->_collectionView trailingAnchor];
  view4 = [(UGCMorePhotosFeedViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v83 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v104[2] = v83;
  bottomAnchor = [(UICollectionView *)self->_collectionView bottomAnchor];
  view5 = [(UGCMorePhotosFeedViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v79 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v104[3] = v79;
  topAnchor3 = [(LoadingModeView *)self->_loadingModeView topAnchor];
  view6 = [(UGCMorePhotosFeedViewController *)self view];
  topAnchor4 = [view6 topAnchor];
  v75 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v104[4] = v75;
  leadingAnchor3 = [(LoadingModeView *)self->_loadingModeView leadingAnchor];
  view7 = [(UGCMorePhotosFeedViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v71 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v104[5] = v71;
  trailingAnchor3 = [(LoadingModeView *)self->_loadingModeView trailingAnchor];
  view8 = [(UGCMorePhotosFeedViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v67 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v104[6] = v67;
  bottomAnchor3 = [(LoadingModeView *)self->_loadingModeView bottomAnchor];
  view9 = [(UGCMorePhotosFeedViewController *)self view];
  bottomAnchor4 = [view9 bottomAnchor];
  v63 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v104[7] = v63;
  topAnchor5 = [(UGCPhotoFeedHeaderView *)self->_headerGradientView topAnchor];
  view10 = [(UGCMorePhotosFeedViewController *)self view];
  topAnchor6 = [view10 topAnchor];
  v59 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v104[8] = v59;
  leadingAnchor5 = [(UGCPhotoFeedHeaderView *)self->_headerGradientView leadingAnchor];
  view11 = [(UGCMorePhotosFeedViewController *)self view];
  leadingAnchor6 = [view11 leadingAnchor];
  v37 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v104[9] = v37;
  trailingAnchor5 = [(UGCPhotoFeedHeaderView *)self->_headerGradientView trailingAnchor];
  view12 = [(UGCMorePhotosFeedViewController *)self view];
  trailingAnchor6 = [view12 trailingAnchor];
  v41 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v104[10] = v41;
  bottomAnchor5 = [(UGCPhotoFeedHeaderView *)self->_headerGradientView bottomAnchor];
  attributionLabelBottomAnchor = [(UGCPhotoFeedHeaderView *)self->_headerGradientView attributionLabelBottomAnchor];
  v44 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:attributionLabelBottomAnchor constant:20.0];
  v104[11] = v44;
  v45 = [NSArray arrayWithObjects:v104 count:12];
  [v101 addObjectsFromArray:v45];

  if ([(UGCMorePhotosFeedViewController *)self supportsPhotoAlbums])
  {
    leadingAnchor7 = [(MUScrollableSegmentedPickerView *)self->_albumFilterView leadingAnchor];
    layoutMarginsGuide = [v100 layoutMarginsGuide];
    leadingAnchor8 = [layoutMarginsGuide leadingAnchor];
    v92 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v103[0] = v92;
    trailingAnchor7 = [(MUScrollableSegmentedPickerView *)self->_albumFilterView trailingAnchor];
    layoutMarginsGuide2 = [v100 layoutMarginsGuide];
    trailingAnchor8 = [layoutMarginsGuide2 trailingAnchor];
    v49 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v103[1] = v49;
    bottomAnchor6 = [(MUScrollableSegmentedPickerView *)self->_albumFilterView bottomAnchor];
    layoutMarginsGuide3 = [v100 layoutMarginsGuide];
    bottomAnchor7 = [layoutMarginsGuide3 bottomAnchor];
    v53 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-8.0];
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