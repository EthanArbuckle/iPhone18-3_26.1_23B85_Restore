@interface MapQuickActionMenuPresenter
- (BOOL)_isValidLabelMarkerForInitiatingOrbGesture:(id)gesture;
- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)location inView:(id)view;
- (MapQuickActionMenuPresenter)initWithMapView:(id)view;
- (id)_imageForStyleAttributes:(id)attributes screenScale:(double)scale isNightMode:(BOOL)mode;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)previewViewController;
- (void)_fetchImageForLabelMarkerWithCompletion:(id)completion;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)invalidateIfNeeded;
- (void)reset;
@end

@implementation MapQuickActionMenuPresenter

- (id)_imageForStyleAttributes:(id)attributes screenScale:(double)scale isNightMode:(BOOL)mode
{
  iconFetchingQueue = self->_iconFetchingQueue;
  attributesCopy = attributes;
  dispatch_assert_queue_V2(iconFetchingQueue);
  LOBYTE(v12) = mode;
  v9 = [MKIconManager imageForStyle:attributesCopy size:4 forScale:1 format:0 transparent:0 transitMode:1 interactive:scale nightMode:v12];

  if (!v9)
  {
    v10 = [[GEOFeatureStyleAttributes alloc] initWithAttributes:{5, 3, 6, 223, 0}];
    LOBYTE(v13) = mode;
    v9 = [MKIconManager imageForStyle:v10 size:4 forScale:1 format:0 transparent:0 transitMode:1 interactive:scale nightMode:v13];
  }

  return v9;
}

- (void)_fetchImageForLabelMarkerWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    dispatch_assert_queue_V2(&_dispatch_main_q);
    presentingViewController = [(QuickActionMenuPresenter *)self presentingViewController];
    view = [presentingViewController view];
    window = [view window];
    screen = [window screen];
    v9 = screen;
    if (screen)
    {
      [screen scale];
      v11 = v10;
    }

    else
    {
      v12 = +[UIScreen mainScreen];
      [v12 scale];
      v11 = v13;
    }

    iconImageKeys = [(VKLabelMarker *)self->super._labelMarker iconImageKeys];
    featureType = [(VKLabelMarker *)self->super._labelMarker featureType];
    traitCollection = [(MKMapView *)self->_mapView traitCollection];
    v17 = [traitCollection userInterfaceStyle] == 2;

    styleAttributes = [(VKLabelMarker *)self->super._labelMarker styleAttributes];
    iconFetchingQueue = self->_iconFetchingQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100D28D74;
    v22[3] = &unk_1016519D8;
    v23 = iconImageKeys;
    v27 = v11;
    v28 = featureType;
    v25 = styleAttributes;
    v26 = completionCopy;
    selfCopy = self;
    v29 = v17;
    v20 = styleAttributes;
    v21 = iconImageKeys;
    dispatch_async(iconFetchingQueue, v22);
  }
}

- (BOOL)_isValidLabelMarkerForInitiatingOrbGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(QuickActionMenuPresenter *)self delegate];
  LOBYTE(self) = [delegate mapQuickActionMenuPresenter:self shouldBeginOrbGestureForLabelMarkerOnMap:gestureCopy];

  return self;
}

- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  v8 = [viewCopy hitTest:0 withEvent:{x, y}];
  [(MKMapView *)self->_mapView convertPoint:viewCopy fromView:x, y];
  v10 = v9;
  v12 = v11;
  if ([(MKMapView *)self->_mapView calloutViewContainsPoint:?])
  {
    selectedAnnotations = [(MKMapView *)self->_mapView selectedAnnotations];
    v14 = [selectedAnnotations count];

    if (v14 == 1)
    {
      selectedAnnotations2 = [(MKMapView *)self->_mapView selectedAnnotations];
      firstObject = [selectedAnnotations2 firstObject];

      [(MapQuickActionMenuPresenter *)self setAnnotation:firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        annotation = [firstObject annotation];

        firstObject = annotation;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(QuickActionMenuPresenter *)self setSearchResult:firstObject];
        selfCopy5 = self;
        v19 = 4;
        goto LABEL_20;
      }
    }

    firstObject = [(MKMapView *)self->_mapView _selectedLabelMarker];
    if (![(MapQuickActionMenuPresenter *)self _isValidLabelMarkerForInitiatingOrbGesture:firstObject])
    {
      v34 = 0;
      goto LABEL_34;
    }

    [(QuickActionMenuPresenter *)self setLabelMarker:firstObject];
    [(QuickActionMenuPresenter *)self setUiTarget:4];
    if (![firstObject isTransitLine])
    {
LABEL_21:
      v34 = 1;
LABEL_34:

      goto LABEL_35;
    }

    selfCopy5 = self;
    v19 = 7;
LABEL_20:
    [(QuickActionMenuPresenter *)selfCopy5 setUiTarget:v19];
    goto LABEL_21;
  }

  if ([v8 isDescendantOfView:self->_mapView])
  {
    [(MKMapView *)self->_mapView _edgeInsets];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [(MKMapView *)self->_mapView bounds];
    v39.origin.x = v28 + v23;
    v39.origin.y = v29 + v21;
    v39.size.width = v30 - (v23 + v27);
    v39.size.height = v31 - (v21 + v25);
    v38.x = v10;
    v38.y = v12;
    if (CGRectContainsPoint(v39, v38))
    {
      firstObject = [(MKMapView *)self->_mapView _annotationAtPoint:0 avoidCurrent:v10, v12];
      [(MapQuickActionMenuPresenter *)self setAnnotation:firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        annotation2 = [firstObject annotation];

        firstObject = annotation2;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(QuickActionMenuPresenter *)self setSearchResult:firstObject];
        appearance = [(SearchResult *)self->super._searchResult appearance];
        if (appearance == 1)
        {
          selfCopy5 = self;
          v19 = 5;
        }

        else if (appearance == 3)
        {
          selfCopy5 = self;
          v19 = 6;
        }

        else
        {
          selfCopy5 = self;
          v19 = 0;
        }

        goto LABEL_20;
      }

      v35 = [(MKMapView *)self->_mapView _labelMarkerAtPoint:v10, v12];
      if ([(MapQuickActionMenuPresenter *)self _isValidLabelMarkerForInitiatingOrbGesture:v35])
      {
        [(QuickActionMenuPresenter *)self setLabelMarker:v35];
        if (![v35 isTransitLine])
        {
          v34 = 1;
          [(QuickActionMenuPresenter *)self setUiTarget:1];
          goto LABEL_33;
        }

        [(QuickActionMenuPresenter *)self setUiTarget:7];
      }

      else
      {
        if (sub_10000FA08(self->_mapView) != 5)
        {
          v34 = 0;
          goto LABEL_33;
        }

        [(MKMapView *)self->_mapView convertPoint:viewCopy toCoordinateFromView:x, y];
        v36 = [SearchResult customSearchResultWithCoordinate:?];
        [(QuickActionMenuPresenter *)self setSearchResult:v36];
      }

      v34 = 1;
LABEL_33:

      goto LABEL_34;
    }
  }

  v34 = 0;
LABEL_35:

  return v34;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  if (animator)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100D295C0;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [animator addCompletion:{v6, configuration}];
  }

  else
  {

    [(MapQuickActionMenuPresenter *)self invalidateIfNeeded:interaction];
  }
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  v6 = [(QuickActionMenuPresenter *)self containerViewController:interaction];
  v7 = sub_10000FA08(v6);

  if (v7 == 5)
  {
    v8 = 0;
  }

  else
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100D297E4;
    v21[3] = &unk_1016519B0;
    v22 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    v9 = v22;
    [(MapQuickActionMenuPresenter *)self _fetchImageForLabelMarkerWithCompletion:v21];
    layer = [v9 layer];
    [layer setCornerRadius:25.0];

    [v9 setClipsToBounds:1];
    v11 = [UIView alloc];
    containerViewController = [(QuickActionMenuPresenter *)self containerViewController];
    view = [containerViewController view];
    [view bounds];
    v14 = [v11 initWithFrame:?];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    containerViewController2 = [(QuickActionMenuPresenter *)self containerViewController];
    view2 = [containerViewController2 view];
    [view2 addSubview:v14];

    objc_storeWeak(&self->_containerView, v14);
    v17 = [UIPreviewTarget alloc];
    [(QuickActionMenuPresenter *)self location];
    v18 = [v17 initWithContainer:v14 center:?];
    v19 = objc_opt_new();
    v8 = [[UITargetedPreview alloc] initWithView:v9 parameters:v19 target:v18];
  }

  return v8;
}

- (id)previewViewController
{
  v3 = [[PreviewViewController alloc] initWithNibName:0 bundle:0];
  [(PreviewViewController *)v3 setLabelMarker:self->super._labelMarker searchresult:self->super._searchResult mapView:self->_mapView];

  return v3;
}

- (void)reset
{
  v6.receiver = self;
  v6.super_class = MapQuickActionMenuPresenter;
  [(QuickActionMenuPresenter *)&v6 reset];
  labelMarker = self->super._labelMarker;
  self->super._labelMarker = 0;

  searchResult = self->super._searchResult;
  self->super._searchResult = 0;

  resolvedMapItem = self->super._resolvedMapItem;
  self->super._resolvedMapItem = 0;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MapQuickActionMenuPresenter;
  [(MapQuickActionMenuPresenter *)&v4 dealloc];
}

- (void)invalidateIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_containerView);
    [v4 removeFromSuperview];

    objc_storeWeak(&self->_containerView, 0);
  }

  [(MapQuickActionMenuPresenter *)self reset];
}

- (MapQuickActionMenuPresenter)initWithMapView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = MapQuickActionMenuPresenter;
  v6 = [(QuickActionMenuPresenter *)&v11 initWithView:viewCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapView, view);
    v8 = geo_dispatch_queue_create_with_qos();
    iconFetchingQueue = v7->_iconFetchingQueue;
    v7->_iconFetchingQueue = v8;
  }

  return v7;
}

@end