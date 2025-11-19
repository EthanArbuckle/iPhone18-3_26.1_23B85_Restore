@interface MKPlaceInlineMapViewController
+ (id)inlineMapWithMapItem:(id)a3 configuration:(id)a4;
- (CGSize)_mapSize;
- (MKPlaceInlineMapViewController)initWithMKMapItem:(id)a3 configuration:(id)a4;
- (MKPlaceInlineMapViewControllerDelegate)delegate;
- (NSArray)visibleMapItems;
- (id)traitCollectionForSnapshot;
- (int64_t)preferredUserInterfaceStyle;
- (void)_handleTapOnMap;
- (void)_launchMaps;
- (void)_updateInlineMapWithRefinedMapItems;
- (void)_updateMap;
- (void)_updateMapIfNeeded;
- (void)_updateSnapshotImage:(id)a3;
- (void)cancelSnapshotRequestIfNeeded;
- (void)loadView;
- (void)setBottomHairlineHidden:(BOOL)a3;
- (void)setMapItem:(id)a3;
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
  v2 = [(MKPlaceInlineMapViewController *)self traitCollectionForSnapshot];
  v3 = [v2 userInterfaceStyle];

  return v3;
}

- (id)traitCollectionForSnapshot
{
  v3 = [(MKPlaceInlineMapViewControllerConfiguration *)self->_configuration useWindowTraitCollectionForUserInterfaceStyle];
  v4 = [(MKPlaceInlineMapViewController *)self view];
  v5 = v4;
  if (v3)
  {
    [v4 window];
  }

  else
  {
    [v4 superview];
  }
  v6 = ;
  v7 = [v6 traitCollection];

  return v7;
}

- (void)_launchMaps
{
  v2 = [(MKPlaceInlineMapViewController *)self mapItem];
  [v2 openInMapsWithLaunchOptions:0 completionHandler:&__block_literal_global_1956];
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
  v3 = [(MKPlaceInlineMapViewController *)self delegate];
  v4 = [v3 inlineMapViewControllerDidSelectMap:self];

  if ((v4 & 1) == 0)
  {

    [(MKPlaceInlineMapViewController *)self _launchMaps];
  }
}

- (void)_updateSnapshotImage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MKPlaceInlineMapViewController__updateSnapshotImage___block_invoke;
  v6[3] = &unk_1E76CD810;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
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

  v9 = [(MKPlaceInlineMapViewController *)self view];
  [v9 layoutMargins];
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
    v6 = [(MKPlaceInlineMapViewController *)self visibleMapItems];
    v7 = [v6 count] == 0;

    if (!v7)
    {
      v8 = [(MKPlaceInlineMapViewController *)self visibleMapItems];
      v9 = [v8 firstObject];
      [v9 _coordinate];
      v11 = v10;
      v13 = v12;

      if (fabs(v13) <= 180.0 && fabs(v11) <= 90.0)
      {
        objc_storeWeak(&self->_updatingInlineMapItem, self->_mapItem);
        v14 = [(MKPlaceInlineMapViewController *)self visibleMapItems];
        v15 = [v14 count] == 1;

        if (v15)
        {
          v16 = [(MKPlaceInlineMapViewController *)self visibleMapItems];
          [(MKPlaceInlineMapViewController *)self _mapSize];
          v19 = mapRectContainingMapItems(v16, v17, v18);
          v21 = v20;
          v23 = v22;
          v25 = v24;

          v26 = [(MKPlaceInlineMapViewController *)self view];
          [v26 layoutMargins];
          v28 = v27;
          v30 = v29;

          [(_MKPlaceInlineMapContentView *)self->_contentView bounds];
          v32 = v31;
          [(_MKPlaceInlineMapContentView *)self->_contentView mapViewHeight];
          v34 = v33;
          v35 = [(_MKPlaceInlineMapContentView *)self->_contentView mapItemView];
          [v35 setFrame:{0.0, 0.0, v32 - v28 - v30, v34}];

          objc_initWeak(buf, self);
          v36 = [(_MKPlaceInlineMapContentView *)self->_contentView mapItemView];
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
          [v36 loadMapItem:mapItem coordinateSpan:v53 completionHandler:{latitudeDelta, longitudeDelta}];

          objc_destroyWeak(&v54);
          objc_destroyWeak(buf);
        }

        else
        {
          v40 = [MKAnnotatedMapSnapshotter alloc];
          v41 = [(MKPlaceInlineMapViewController *)self visibleMapItems];
          [(MKPlaceInlineMapViewController *)self _mapSize];
          v42 = [(MKAnnotatedMapSnapshotter *)v40 initWithMapItems:v41 mapSize:1 useSnapshotService:?];
          collectionSnapshotter = self->_collectionSnapshotter;
          self->_collectionSnapshotter = v42;

          v44 = [(MKPlaceInlineMapViewController *)self traitCollectionForSnapshot];
          [(MKAnnotatedMapSnapshotter *)self->_collectionSnapshotter setTraitCollection:v44];

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
  v3 = [(MKPlaceInlineMapViewController *)self mapItem];
  v4 = [v3 _hasResolvablePartialInformation];

  if ((v4 & 1) == 0)
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
    v4 = [(MKPlaceInlineMapViewController *)self view];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    width = p_currentSize->width;
    height = p_currentSize->height;

    if (width != v6 || height != v8)
    {
      v12 = MKGetMKPlaceInlineMapVCLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [(MKPlaceInlineMapViewController *)self view];
        [v13 frame];
        v15 = v14;
        v16 = [(MKPlaceInlineMapViewController *)self view];
        [v16 frame];
        v21 = 134218240;
        v22 = v15;
        v23 = 2048;
        v24 = v17;
        _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_INFO, "Size Changed: %f x %f", &v21, 0x16u);
      }

      v18 = [(MKPlaceInlineMapViewController *)self view];
      [v18 frame];
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

- (void)setMapItem:(id)a3
{
  v5 = a3;
  if (self->_mapItem != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_mapItem, a3);
    v6 = [(MKPlaceInlineMapViewController *)self isViewLoaded];
    v5 = v7;
    if (v6)
    {
      [(_MKPlaceInlineMapContentView *)self->_contentView setMap:0];
      [(MKPlaceInlineMapViewController *)self _updateMap];
      v5 = v7;
    }
  }
}

- (void)setBottomHairlineHidden:(BOOL)a3
{
  self->_bottomHairlineHidden = a3;
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
  v3 = [(MKPlaceInlineMapViewController *)self view];
  contentView = self->_contentView;
  self->_contentView = v3;

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
  v4 = [(MKPlaceInlineMapViewControllerConfiguration *)self->_configuration suppressLookAround];
  v5 = [(MKPlaceInlineMapViewControllerConfiguration *)self->_configuration showMapAttribution];
  v7 = [(MKPlaceInlineMapViewControllerConfiguration *)self->_configuration mapSnapshotAuditToken];
  v6 = [(_MKPlaceInlineMapContentView *)v3 initWithFrame:v4 hideLookAroundView:v5 showMapAttribution:v7 mapSnapshotAuditToken:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MKPlaceInlineMapViewController *)self setView:v6];
}

- (MKPlaceInlineMapViewController)initWithMKMapItem:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MKPlaceInlineMapViewController;
  v9 = [(MKPlaceInlineMapViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a4);
    objc_storeStrong(&v10->_mapItem, a3);
    v10->_currentSize = *MEMORY[0x1E695F060];
  }

  return v10;
}

+ (id)inlineMapWithMapItem:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 _isMapItemTypeBrand])
  {
    v7 = 0;
  }

  else
  {
    [v5 _coordinate];
    v7 = 0;
    if (fabs(v9) <= 180.0 && fabs(v8) <= 90.0)
    {
      v7 = [[MKPlaceInlineMapViewController alloc] initWithMKMapItem:v5 configuration:v6];
    }
  }

  return v7;
}

@end