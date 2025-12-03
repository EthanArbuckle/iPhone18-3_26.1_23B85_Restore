@interface MKPlaceInlineMapViewController
+ (id)inlineMapWithMapItem:(id)item configuration:(id)configuration;
- (CGSize)_mapSize;
- (MKPlaceInlineMapViewController)initWithMKMapItem:(id)item configuration:(id)configuration;
- (MKPlaceInlineMapViewControllerDelegate)delegate;
- (NSArray)visibleMapItems;
- (id)traitCollectionForSnapshot;
- (int64_t)preferredUserInterfaceStyle;
- (void)_handleTapOnMap;
- (void)_launchMaps;
- (void)_updateInlineMapWithRefinedMapItems;
- (void)_updateMap;
- (void)_updateMapIfNeeded;
- (void)_updateSnapshotImage:(id)image;
- (void)cancelSnapshotRequestIfNeeded;
- (void)loadView;
- (void)setBottomHairlineHidden:(BOOL)hidden;
- (void)setMapItem:(id)item;
- (void)updateInlineMapWithRefinedMapItems;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MKPlaceInlineMapViewController

- (MKPlaceInlineMapViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)preferredUserInterfaceStyle
{
  traitCollectionForSnapshot = [(MKPlaceInlineMapViewController *)self traitCollectionForSnapshot];
  userInterfaceStyle = [traitCollectionForSnapshot userInterfaceStyle];

  return userInterfaceStyle;
}

- (id)traitCollectionForSnapshot
{
  useWindowTraitCollectionForUserInterfaceStyle = [(MKPlaceInlineMapViewControllerConfiguration *)self->_configuration useWindowTraitCollectionForUserInterfaceStyle];
  view = [(MKPlaceInlineMapViewController *)self view];
  v5 = view;
  if (useWindowTraitCollectionForUserInterfaceStyle)
  {
    [view window];
  }

  else
  {
    [view superview];
  }
  v6 = ;
  traitCollection = [v6 traitCollection];

  return traitCollection;
}

- (void)_launchMaps
{
  mapItem = [(MKPlaceInlineMapViewController *)self mapItem];
  [mapItem openInMapsWithLaunchOptions:0 completionHandler:&__block_literal_global_1956];
}

void __45__MKPlaceInlineMapViewController__launchMaps__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v4 bundleIdentifier];
    NSLog(&cfstr_CouldnTLaunchM.isa, v3);
  }
}

- (void)_handleTapOnMap
{
  delegate = [(MKPlaceInlineMapViewController *)self delegate];
  v4 = [delegate inlineMapViewControllerDidSelectMap:self];

  if ((v4 & 1) == 0)
  {

    [(MKPlaceInlineMapViewController *)self _launchMaps];
  }
}

- (void)_updateSnapshotImage:(id)image
{
  imageCopy = image;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MKPlaceInlineMapViewController__updateSnapshotImage___block_invoke;
  v6[3] = &unk_1E76CD810;
  v6[4] = self;
  v7 = imageCopy;
  v5 = imageCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __55__MKPlaceInlineMapViewController__updateSnapshotImage___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__MKPlaceInlineMapViewController__updateSnapshotImage___block_invoke_2;
  v3[3] = &unk_1E76CD810;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  [v1 _mapkit_animateWithDuration:v3 animations:0 completion:0.200000003];
}

- (CGSize)_mapSize
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;

  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  view = [(MKPlaceInlineMapViewController *)self view];
  [view layoutMargins];
  v11 = v10;
  v13 = v12;

  [(_MKPlaceInlineMapContentView *)self->_contentView mapViewHeight];
  v15 = v14;
  v16 = v8 - v11 - v13;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)cancelSnapshotRequestIfNeeded
{
  collectionSnapshotter = self->_collectionSnapshotter;
  if (collectionSnapshotter && [(MKAnnotatedMapSnapshotter *)collectionSnapshotter isLoading])
  {
    v4 = MKGetMKPlaceInlineMapVCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Cancelling snapshot request.", v5, 2u);
    }

    [(MKAnnotatedMapSnapshotter *)self->_collectionSnapshotter cancel];
    objc_storeWeak(&self->_updatingInlineMapItem, 0);
  }
}

- (void)_updateInlineMapWithRefinedMapItems
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = MKGetMKPlaceInlineMapVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "Updating inline map.", buf, 2u);
  }

  if (self->_collectionSnapshotter)
  {
    [(MKPlaceInlineMapViewController *)self cancelSnapshotRequestIfNeeded];
  }

  WeakRetained = objc_loadWeakRetained(&self->_updatingInlineMapItem);
  v5 = WeakRetained == self->_mapItem;

  if (!v5)
  {
    visibleMapItems = [(MKPlaceInlineMapViewController *)self visibleMapItems];
    v7 = [visibleMapItems count] == 0;

    if (!v7)
    {
      visibleMapItems2 = [(MKPlaceInlineMapViewController *)self visibleMapItems];
      firstObject = [visibleMapItems2 firstObject];
      [firstObject _coordinate];
      v11 = v10;
      v13 = v12;

      if (fabs(v13) <= 180.0 && fabs(v11) <= 90.0)
      {
        objc_storeWeak(&self->_updatingInlineMapItem, self->_mapItem);
        visibleMapItems3 = [(MKPlaceInlineMapViewController *)self visibleMapItems];
        v15 = [visibleMapItems3 count] == 1;

        if (v15)
        {
          visibleMapItems4 = [(MKPlaceInlineMapViewController *)self visibleMapItems];
          [(MKPlaceInlineMapViewController *)self _mapSize];
          v19 = mapRectContainingMapItems(visibleMapItems4, v17, v18);
          v21 = v20;
          v23 = v22;
          v25 = v24;

          view = [(MKPlaceInlineMapViewController *)self view];
          [view layoutMargins];
          v28 = v27;
          v30 = v29;

          [(_MKPlaceInlineMapContentView *)self->_contentView bounds];
          v32 = v31;
          [(_MKPlaceInlineMapContentView *)self->_contentView mapViewHeight];
          v34 = v33;
          mapItemView = [(_MKPlaceInlineMapContentView *)self->_contentView mapItemView];
          [mapItemView setFrame:{0.0, 0.0, v32 - v28 - v30, v34}];

          objc_initWeak(buf, self);
          mapItemView2 = [(_MKPlaceInlineMapContentView *)self->_contentView mapItemView];
          v60.origin.x = v19;
          v60.origin.y = v21;
          v60.size.width = v23;
          v60.size.height = v25;
          v61 = MKCoordinateRegionForMapRect(v60);
          latitudeDelta = v61.span.latitudeDelta;
          longitudeDelta = v61.span.longitudeDelta;
          mapItem = self->_mapItem;
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __69__MKPlaceInlineMapViewController__updateInlineMapWithRefinedMapItems__block_invoke;
          v53[3] = &unk_1E76C9CC0;
          objc_copyWeak(&v54, buf);
          [mapItemView2 loadMapItem:mapItem coordinateSpan:v53 completionHandler:{latitudeDelta, longitudeDelta}];

          objc_destroyWeak(&v54);
          objc_destroyWeak(buf);
        }

        else
        {
          v40 = [MKAnnotatedMapSnapshotter alloc];
          visibleMapItems5 = [(MKPlaceInlineMapViewController *)self visibleMapItems];
          [(MKPlaceInlineMapViewController *)self _mapSize];
          v42 = [(MKAnnotatedMapSnapshotter *)v40 initWithMapItems:visibleMapItems5 mapSize:1 useSnapshotService:?];
          collectionSnapshotter = self->_collectionSnapshotter;
          self->_collectionSnapshotter = v42;

          traitCollectionForSnapshot = [(MKPlaceInlineMapViewController *)self traitCollectionForSnapshot];
          [(MKAnnotatedMapSnapshotter *)self->_collectionSnapshotter setTraitCollection:traitCollectionForSnapshot];

          objc_initWeak(&location, self);
          v45 = MKGetMKPlaceInlineMapVCLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            [(MKPlaceInlineMapViewController *)self _mapSize];
            v47 = v46;
            [(MKPlaceInlineMapViewController *)self _mapSize];
            *buf = 134218240;
            v56 = v47;
            v57 = 2048;
            v58 = v48;
            _os_log_impl(&dword_1A2EA0000, v45, OS_LOG_TYPE_INFO, "Proceeding for snapshot. Size: %f x %f", buf, 0x16u);
          }

          v49 = self->_collectionSnapshotter;
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __69__MKPlaceInlineMapViewController__updateInlineMapWithRefinedMapItems__block_invoke_11;
          v50[3] = &unk_1E76C6A78;
          objc_copyWeak(&v51, &location);
          [(MKAnnotatedMapSnapshotter *)v49 startWithCompletionHandler:v50];
          objc_destroyWeak(&v51);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __69__MKPlaceInlineMapViewController__updateInlineMapWithRefinedMapItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeWeak(WeakRetained + 125, 0);
    v2 = [v3[124] mapItemView];
    [v2 triggerAnimation];

    WeakRetained = v3;
  }
}

void __69__MKPlaceInlineMapViewController__updateInlineMapWithRefinedMapItems__block_invoke_11(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeWeak(WeakRetained + 125, 0);
    if (v5)
    {
      if (!a3)
      {
        v8 = MKGetMKPlaceInlineMapVCLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = 0;
          _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_ERROR, "Snapshot Error: %@", &v10, 0xCu);
        }

        v9 = [v5 image];
        [v7 _updateSnapshotImage:v9];
      }
    }
  }
}

- (void)updateInlineMapWithRefinedMapItems
{
  v3 = dispatch_time(0, 1000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MKPlaceInlineMapViewController_updateInlineMapWithRefinedMapItems__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

- (void)_updateMap
{
  mapItem = [(MKPlaceInlineMapViewController *)self mapItem];
  _hasResolvablePartialInformation = [mapItem _hasResolvablePartialInformation];

  if ((_hasResolvablePartialInformation & 1) == 0)
  {

    [(MKPlaceInlineMapViewController *)self updateInlineMapWithRefinedMapItems];
  }
}

- (void)_updateMapIfNeeded
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_mapItem)
  {
    p_currentSize = &self->_currentSize;
    view = [(MKPlaceInlineMapViewController *)self view];
    [view frame];
    v6 = v5;
    v8 = v7;
    width = p_currentSize->width;
    height = p_currentSize->height;

    if (width != v6 || height != v8)
    {
      v12 = MKGetMKPlaceInlineMapVCLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        view2 = [(MKPlaceInlineMapViewController *)self view];
        [view2 frame];
        v15 = v14;
        view3 = [(MKPlaceInlineMapViewController *)self view];
        [view3 frame];
        v21 = 134218240;
        v22 = v15;
        v23 = 2048;
        v24 = v17;
        _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_INFO, "Size Changed: %f x %f", &v21, 0x16u);
      }

      view4 = [(MKPlaceInlineMapViewController *)self view];
      [view4 frame];
      p_currentSize->width = v19;
      p_currentSize->height = v20;

      [(MKPlaceInlineMapViewController *)self _updateMap];
    }
  }
}

- (NSArray)visibleMapItems
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_mapItem;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  if (self->_mapItem != itemCopy)
  {
    v7 = itemCopy;
    objc_storeStrong(&self->_mapItem, item);
    isViewLoaded = [(MKPlaceInlineMapViewController *)self isViewLoaded];
    itemCopy = v7;
    if (isViewLoaded)
    {
      [(_MKPlaceInlineMapContentView *)self->_contentView setMap:0];
      [(MKPlaceInlineMapViewController *)self _updateMap];
      itemCopy = v7;
    }
  }
}

- (void)setBottomHairlineHidden:(BOOL)hidden
{
  self->_bottomHairlineHidden = hidden;
  contentView = self->_contentView;
  if (contentView)
  {
    [(_MKPlaceInlineMapContentView *)contentView setBottomHairlineHidden:?];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MKPlaceInlineMapViewController;
  [(MKPlaceInlineMapViewController *)&v3 viewDidLayoutSubviews];
  [(MKPlaceInlineMapViewController *)self _updateMapIfNeeded];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MKPlaceInlineMapViewController;
  [(MKPlaceInlineMapViewController *)&v5 viewDidLoad];
  view = [(MKPlaceInlineMapViewController *)self view];
  contentView = self->_contentView;
  self->_contentView = view;

  [(_MKUIViewControllerClickableRootView *)self->_contentView setTarget:self action:sel__handleTapOnMap];
  [(_MKPlaceInlineMapContentView *)self->_contentView setBottomHairlineHidden:self->_bottomHairlineHidden];
  if (self->_mapItem)
  {
    [(MKPlaceInlineMapViewController *)self _updateMap];
  }
}

- (void)loadView
{
  v3 = [_MKPlaceInlineMapContentView alloc];
  suppressLookAround = [(MKPlaceInlineMapViewControllerConfiguration *)self->_configuration suppressLookAround];
  showMapAttribution = [(MKPlaceInlineMapViewControllerConfiguration *)self->_configuration showMapAttribution];
  mapSnapshotAuditToken = [(MKPlaceInlineMapViewControllerConfiguration *)self->_configuration mapSnapshotAuditToken];
  v6 = [(_MKPlaceInlineMapContentView *)v3 initWithFrame:suppressLookAround hideLookAroundView:showMapAttribution showMapAttribution:mapSnapshotAuditToken mapSnapshotAuditToken:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MKPlaceInlineMapViewController *)self setView:v6];
}

- (MKPlaceInlineMapViewController)initWithMKMapItem:(id)item configuration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = MKPlaceInlineMapViewController;
  v9 = [(MKPlaceInlineMapViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_mapItem, item);
    v10->_currentSize = *MEMORY[0x1E695F060];
  }

  return v10;
}

+ (id)inlineMapWithMapItem:(id)item configuration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  if ([itemCopy _isMapItemTypeBrand])
  {
    v7 = 0;
  }

  else
  {
    [itemCopy _coordinate];
    v7 = 0;
    if (fabs(v9) <= 180.0 && fabs(v8) <= 90.0)
    {
      v7 = [[MKPlaceInlineMapViewController alloc] initWithMKMapItem:itemCopy configuration:configurationCopy];
    }
  }

  return v7;
}

@end