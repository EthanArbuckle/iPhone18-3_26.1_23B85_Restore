@interface EKEventMapDetailItem
- (BOOL)_shouldShowMapView;
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (double)_mapHeight;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update;
- (id)_mapRelatedViewConstraintsForMapRelatedView:(id)view inCell:(id)cell;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)_animateMapIfNeededWithPresentingController:(id)controller presentingView:(id)view;
- (void)_loadMapItem:(id)item;
- (void)_setupCell;
- (void)_setupCellAsEmpty;
- (void)_setupCellWithMapView;
- (void)reset;
- (void)setupMapView;
- (void)updateViewColors;
@end

@implementation EKEventMapDetailItem

- (void)updateViewColors
{
  layer = [(UIView *)self->_loadingView layer];
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [layer setBorderColor:{objc_msgSend(separatorColor, "CGColor")}];

  layer2 = [(UIView *)self->_loadingView layer];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [layer2 setBackgroundColor:{objc_msgSend(secondarySystemBackgroundColor, "CGColor")}];
}

- (void)reset
{
  objc_storeStrong(&self->_oldCell, self->_cell);
  cell = self->_cell;
  self->_cell = 0;

  self->_visibilityChanged = self->_shouldShowCell != [(EKEventMapDetailItem *)self _shouldShowMapView];
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  result = [(EKEventMapDetailItem *)self _shouldShowMapView:event];
  self->_shouldShowCell = result;
  return result;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update
{
  v6 = [(EKEventMapDetailItem *)self _shouldShowMapView:index];
  result = 0.0;
  if (v6)
  {
    _mapHeight = [(EKEventMapDetailItem *)self _mapHeight];
    v10 = v9;
    v11 = MEMORY[0x1D38B98D0](_mapHeight);
    v12 = 16.0;
    if (v11)
    {
      v12 = 0.0;
    }

    v13 = v10 + v12;
    v14 = MEMORY[0x1D38B98D0]();
    v15 = 25.0;
    if (v14)
    {
      v15 = 0.0;
    }

    return v13 + v15;
  }

  return result;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  if (!self->_cell)
  {
    oldCell = self->_oldCell;
    if (oldCell && (location = self->_location) != 0 && (-[EKEvent preferredLocation](self->super._event, "preferredLocation", index), v6 = objc_claimAutoreleasedReturnValue(), [v6 geoLocation], v7 = objc_claimAutoreleasedReturnValue(), -[CLLocation distanceFromLocation:](location, "distanceFromLocation:", v7), v9 = v8, v7, v6, oldCell = self->_oldCell, v9 < 2.0))
    {
      objc_storeStrong(&self->_cell, oldCell);
    }

    else
    {
      self->_oldCell = 0;

      [(EKEventMapDetailItem *)self _setupCell];
    }
  }

  [(EKEventMapCell *)self->_cell setAccessibilityIdentifier:@"event-details-location-map-cell"];
  cell = self->_cell;

  return cell;
}

- (BOOL)_shouldShowMapView
{
  preferredLocation = [(EKEvent *)self->super._event preferredLocation];
  geoLocation = [preferredLocation geoLocation];
  if (geoLocation)
  {
    preferredLocation2 = [(EKEvent *)self->super._event preferredLocation];
    v6 = [preferredLocation2 isPrediction] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_setupCell
{
  if ([(EKEventMapDetailItem *)self _shouldShowMapView])
  {

    [(EKEventMapDetailItem *)self _setupCellWithMapView];
  }

  else
  {

    [(EKEventMapDetailItem *)self _setupCellAsEmpty];
  }
}

- (void)_setupCellWithMapView
{
  cell = self->_cell;
  if (!cell)
  {
    goto LABEL_4;
  }

  if (![(EKEventMapCell *)cell setupAsEmptyView])
  {
    return;
  }

  if (!self->_cell)
  {
LABEL_4:
    v4 = [[EKEventMapCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_cell;
    self->_cell = v4;

    [(EKEventMapCell *)self->_cell setDrawingEnabled:1];
    [(EKEventMapCell *)self->_cell setSelectionStyle:0];
    [(EKEventMapCell *)self->_cell setDetailItem:self];
  }

  preferredLocation = [(EKEvent *)self->super._event preferredLocation];
  geoLocation = [preferredLocation geoLocation];
  location = self->_location;
  self->_location = geoLocation;

  v9 = [objc_alloc(EKWeakLinkClass()) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  mapView = self->_mapView;
  self->_mapView = v9;

  if (MEMORY[0x1D38B98D0]([(MKMapItemView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0]))
  {
    if (MEMORY[0x1D38B98D0]())
    {
      v11 = 25.0;
    }

    else
    {
      v11 = 8.0;
    }

    layer = [(MKMapItemView *)self->_mapView layer];
    [layer setCornerRadius:v11];

    layer2 = [(MKMapItemView *)self->_mapView layer];
    v14 = EKUIScaleFactor();
    CalRoundToScreenScale(1.0 / v14);
    [layer2 setBorderWidth:?];

    layer3 = [(MKMapItemView *)self->_mapView layer];
    [layer3 setMasksToBounds:1];

    layer4 = [(MKMapItemView *)self->_mapView layer];
    quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    [layer4 setBorderColor:{objc_msgSend(quaternaryLabelColor, "CGColor")}];
  }

  else
  {
    [(MKMapItemView *)self->_mapView setShouldShowBorders:1];
  }

  [(MKMapItemView *)self->_mapView setShouldLaunchDefaultNavigation:1];
  v18 = objc_alloc(MEMORY[0x1E69DD250]);
  v19 = [v18 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  loadingView = self->_loadingView;
  self->_loadingView = v19;

  if (MEMORY[0x1D38B98D0]())
  {
    v21 = 25.0;
  }

  else
  {
    v21 = 8.0;
  }

  layer5 = [(UIView *)self->_loadingView layer];
  [layer5 setCornerRadius:v21];

  layer6 = [(UIView *)self->_loadingView layer];
  [layer6 setBorderWidth:1.0 / EKUIScaleFactor()];

  layer7 = [(UIView *)self->_loadingView layer];
  [layer7 setMasksToBounds:1];

  [(UIView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(EKEventMapDetailItem *)self updateViewColors];
  [(EKEventMapCell *)self->_cell addSubview:self->_mapView];
  [(EKEventMapCell *)self->_cell addSubview:self->_loadingView];
  [(MKMapItemView *)self->_mapView setAlpha:0.0];
  v25 = [(EKEventMapDetailItem *)self _mapRelatedViewConstraintsForMapRelatedView:self->_mapView inCell:self->_cell];
  mapViewConstraints = self->_mapViewConstraints;
  self->_mapViewConstraints = v25;

  v27 = [(EKEventMapDetailItem *)self _mapRelatedViewConstraintsForMapRelatedView:self->_loadingView inCell:self->_cell];
  loadingViewConstraints = self->_loadingViewConstraints;
  self->_loadingViewConstraints = v27;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_mapViewConstraints];
  [MEMORY[0x1E696ACD8] activateConstraints:self->_loadingViewConstraints];
  [(EKEventMapCell *)self->_cell setSetupAsEmptyView:0];
  self->_animationHasRan = 0;
  v29 = self->_cell;

  [(EKEventMapCell *)v29 setMapViewSetup:0];
}

- (void)_setupCellAsEmpty
{
  cell = self->_cell;
  if (!cell)
  {
    goto LABEL_4;
  }

  if ([(EKEventMapCell *)cell setupAsEmptyView])
  {
    return;
  }

  if (!self->_cell)
  {
LABEL_4:
    v4 = [[EKEventMapCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_cell;
    self->_cell = v4;

    [(EKEventMapCell *)self->_cell setDrawingEnabled:1];
    [(EKEventMapCell *)self->_cell setSelectionStyle:0];
    [(EKEventMapCell *)self->_cell setDetailItem:self];
  }

  location = self->_location;
  self->_location = 0;

  [(MKMapItemView *)self->_mapView removeFromSuperview];
  mapView = self->_mapView;
  self->_mapView = 0;

  [(UIView *)self->_loadingView removeFromSuperview];
  loadingView = self->_loadingView;
  self->_loadingView = 0;

  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_mapViewConstraints];
  mapViewConstraints = self->_mapViewConstraints;
  self->_mapViewConstraints = 0;

  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_loadingViewConstraints];
  loadingViewConstraints = self->_loadingViewConstraints;
  self->_loadingViewConstraints = 0;

  [(EKEventMapCell *)self->_cell setSetupAsEmptyView:1];
  self->_animationHasRan = 0;
  v11 = self->_cell;

  [(EKEventMapCell *)v11 setMapViewSetup:0];
}

- (id)_mapRelatedViewConstraintsForMapRelatedView:(id)view inCell:(id)cell
{
  v24[5] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ACD8];
  cellCopy = cell;
  viewCopy = view;
  if (MEMORY[0x1D38B98D0]())
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 16.0;
  }

  v10 = [v6 constraintWithItem:viewCopy attribute:3 relatedBy:0 toItem:cellCopy attribute:3 multiplier:1.0 constant:v9];
  v11 = MEMORY[0x1E696ACD8];
  if (MEMORY[0x1D38B98D0]())
  {
    v12 = 0.0;
  }

  else
  {
    v12 = -25.0;
  }

  v13 = [v11 constraintWithItem:viewCopy attribute:4 relatedBy:0 toItem:cellCopy attribute:4 multiplier:1.0 constant:v12];
  [(EKEventMapDetailItem *)self _mapHeight];
  v15 = [MEMORY[0x1E696ACD8] constraintWithItem:viewCopy attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v14];
  v16 = MEMORY[0x1E696ACD8];
  if (MEMORY[0x1D38B98D0]())
  {
    v17 = 5;
  }

  else
  {
    v17 = 17;
  }

  v18 = [v16 constraintWithItem:viewCopy attribute:5 relatedBy:0 toItem:cellCopy attribute:v17 multiplier:1.0 constant:0.0];
  v19 = MEMORY[0x1E696ACD8];
  if (MEMORY[0x1D38B98D0]())
  {
    v20 = 6;
  }

  else
  {
    v20 = 18;
  }

  v21 = [v19 constraintWithItem:viewCopy attribute:6 relatedBy:0 toItem:cellCopy attribute:v20 multiplier:1.0 constant:0.0];

  v24[0] = v10;
  v24[1] = v13;
  v24[2] = v15;
  v24[3] = v18;
  v24[4] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];

  return v22;
}

- (void)setupMapView
{
  v18 = *MEMORY[0x1E69E9840];
  [(MKMapItemView *)self->_mapView setAlpha:0.0];
  [(UIView *)self->_loadingView setAlpha:1.0];
  preferredLocation = [(EKEvent *)self->super._event preferredLocation];
  v4 = EKWeakLinkClass();
  mapKitHandle = [preferredLocation mapKitHandle];

  v6 = kEKUILogHandle;
  v7 = os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO);
  if (mapKitHandle)
  {
    if (v7)
    {
      v8 = v6;
      mapKitHandle2 = [preferredLocation mapKitHandle];
      *buf = 138412290;
      v17 = mapKitHandle2;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_INFO, "Found mapKitHandle, loading MKMapItemView with mapKitHandle: %@", buf, 0xCu);
    }

    mapKitHandle3 = [preferredLocation mapKitHandle];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36__EKEventMapDetailItem_setupMapView__block_invoke;
    v13[3] = &unk_1E8442568;
    v15 = v4;
    v13[4] = self;
    v14 = preferredLocation;
    [v4 _mapItemFromHandle:mapKitHandle3 completionHandler:v13];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "Did not find mapKitHandle, falling back to load MKMapItemView with geoLocation", buf, 2u);
    }

    v11 = [[v4 alloc] initWithCLLocation:self->_location];
    title = [preferredLocation title];
    [v11 setName:title];

    [(EKEventMapDetailItem *)self _loadMapItem:v11];
  }
}

void __36__EKEventMapDetailItem_setupMapView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 domain];
      *buf = 138412546;
      v16 = v9;
      v17 = 2048;
      v18 = [v6 code];
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "Received error while recreating mapItem from mapKitHandle: %@ - %ld. Falling back to load MKMapItemView with geoLocation.", buf, 0x16u);
    }

    v10 = [objc_alloc(*(a1 + 48)) initWithCLLocation:*(*(a1 + 32) + 128)];

    v11 = [*(a1 + 40) title];
    [v10 setName:v11];

    v5 = v10;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__EKEventMapDetailItem_setupMapView__block_invoke_56;
  v13[3] = &unk_1E843EFB8;
  v13[4] = *(a1 + 32);
  v14 = v5;
  v12 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (void)_loadMapItem:(id)item
{
  mapView = self->_mapView;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__EKEventMapDetailItem__loadMapItem___block_invoke;
  v4[3] = &unk_1E8442590;
  v4[4] = self;
  [(MKMapItemView *)mapView loadMapItem:item completionHandler:v4];
}

void __37__EKEventMapDetailItem__loadMapItem___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, "Received error while loading MKMapItemView: %@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 80) setCurrentlyLoading:0];
  }

  else
  {
    [*(*(a1 + 32) + 80) setNeedsLayout];
    [*(*(a1 + 32) + 80) layoutIfNeeded];
    v5 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) delegate];
      v7 = [v6 noninteractivePlatterMode];

      v8 = 0.3;
      if (v7)
      {
        v8 = 0.0;
      }
    }

    else
    {

      v8 = 0.3;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__EKEventMapDetailItem__loadMapItem___block_invoke_62;
    v10[3] = &unk_1E843EC60;
    v11 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__EKEventMapDetailItem__loadMapItem___block_invoke_2;
    v9[3] = &unk_1E843EC10;
    v9[4] = v11;
    [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:v9 completion:v8];
  }
}

uint64_t __37__EKEventMapDetailItem__loadMapItem___block_invoke_62(uint64_t a1)
{
  [*(*(a1 + 32) + 112) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 96);

  return [v2 setAlpha:1.0];
}

void __37__EKEventMapDetailItem__loadMapItem___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 80) setCurrentlyLoading:0];
  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if ((v3 & 1) == 0)
    {
      return;
    }

    v4 = [*(a1 + 32) delegate];
    v7 = [v4 eventDetailsScrollView];

    v5 = [*(a1 + 32) delegate];
    v6 = [v5 eventDetailsViewController];

    [*(a1 + 32) _animateMapIfNeededWithPresentingController:v6 presentingView:v7];
  }
}

- (double)_mapHeight
{
  v17 = *MEMORY[0x1E69E9840];
  delegate = [(EKEventDetailItem *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(EKEventDetailItem *)self delegate];
    eventDetailsScrollView = [delegate2 eventDetailsScrollView];

    [eventDetailsScrollView bounds];
    Width = CGRectGetWidth(v18);
    [eventDetailsScrollView layoutMargins];
    v9 = Width - v8;
    [eventDetailsScrollView layoutMargins];
    v11 = (v9 - v10) * 0.4;
LABEL_5:

    goto LABEL_6;
  }

  v12 = kEKUILogHandle;
  v11 = 0.0;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    eventDetailsScrollView = v12;
    delegate3 = [(EKEventDetailItem *)self delegate];
    v15 = 138412290;
    v16 = delegate3;
    _os_log_impl(&dword_1D3400000, eventDetailsScrollView, OS_LOG_TYPE_ERROR, "Delegate [%@] does not respond to eventDetailsScrollView, so setting map height to 0.", &v15, 0xCu);

    goto LABEL_5;
  }

LABEL_6:
  CalRoundToScreenScale(v11);
  return result;
}

- (void)_animateMapIfNeededWithPresentingController:(id)controller presentingView:(id)view
{
  v37 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewCopy = view;
  if (!self->_animationHasRan && ![(EKEventMapCell *)self->_cell currentlyLoading])
  {
    [viewCopy bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    mapView = self->_mapView;
    [(MKMapItemView *)mapView bounds];
    [(MKMapItemView *)mapView convertRect:viewCopy toView:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    navigationController = [controllerCopy navigationController];
    toolbar = [navigationController toolbar];

    [toolbar bounds];
    [toolbar convertRect:viewCopy toView:?];
    v27 = CGRectGetMinY(v38) - v11;
    if (v27 >= v15)
    {
      v28 = v15;
    }

    else
    {
      v28 = v27;
    }

    v29 = v9;
    v30 = v11;
    v31 = v13;
    v41.origin.x = v18;
    v41.origin.y = v20;
    v41.size.width = v22;
    v41.size.height = v24;
    v39 = CGRectIntersection(*(&v28 - 3), v41);
    Height = CGRectGetHeight(v39);
    v40.origin.x = v18;
    v40.origin.y = v20;
    v40.size.width = v22;
    v40.size.height = v24;
    v33 = Height / CGRectGetHeight(v40);
    if (v33 >= 0.75)
    {
      v34 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        v35 = 134217984;
        v36 = v33;
        _os_log_impl(&dword_1D3400000, v34, OS_LOG_TYPE_DEBUG, "Triggering MapItemView animation with cell percent visible: %f", &v35, 0xCu);
      }

      self->_animationHasRan = 1;
      [(MKMapItemView *)self->_mapView triggerAnimation];
    }
  }
}

@end