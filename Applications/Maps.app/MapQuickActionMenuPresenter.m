@interface MapQuickActionMenuPresenter
- (BOOL)_isValidLabelMarkerForInitiatingOrbGesture:(id)a3;
- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)a3 inView:(id)a4;
- (MapQuickActionMenuPresenter)initWithMapView:(id)a3;
- (id)_imageForStyleAttributes:(id)a3 screenScale:(double)a4 isNightMode:(BOOL)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)previewViewController;
- (void)_fetchImageForLabelMarkerWithCompletion:(id)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)dealloc;
- (void)invalidateIfNeeded;
- (void)reset;
@end

@implementation MapQuickActionMenuPresenter

- (id)_imageForStyleAttributes:(id)a3 screenScale:(double)a4 isNightMode:(BOOL)a5
{
  iconFetchingQueue = self->_iconFetchingQueue;
  v8 = a3;
  dispatch_assert_queue_V2(iconFetchingQueue);
  LOBYTE(v12) = a5;
  v9 = [MKIconManager imageForStyle:v8 size:4 forScale:1 format:0 transparent:0 transitMode:1 interactive:a4 nightMode:v12];

  if (!v9)
  {
    v10 = [[GEOFeatureStyleAttributes alloc] initWithAttributes:{5, 3, 6, 223, 0}];
    LOBYTE(v13) = a5;
    v9 = [MKIconManager imageForStyle:v10 size:4 forScale:1 format:0 transparent:0 transitMode:1 interactive:a4 nightMode:v13];
  }

  return v9;
}

- (void)_fetchImageForLabelMarkerWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    dispatch_assert_queue_V2(&_dispatch_main_q);
    v5 = [(QuickActionMenuPresenter *)self presentingViewController];
    v6 = [v5 view];
    v7 = [v6 window];
    v8 = [v7 screen];
    v9 = v8;
    if (v8)
    {
      [v8 scale];
      v11 = v10;
    }

    else
    {
      v12 = +[UIScreen mainScreen];
      [v12 scale];
      v11 = v13;
    }

    v14 = [(VKLabelMarker *)self->super._labelMarker iconImageKeys];
    v15 = [(VKLabelMarker *)self->super._labelMarker featureType];
    v16 = [(MKMapView *)self->_mapView traitCollection];
    v17 = [v16 userInterfaceStyle] == 2;

    v18 = [(VKLabelMarker *)self->super._labelMarker styleAttributes];
    iconFetchingQueue = self->_iconFetchingQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100D28D74;
    v22[3] = &unk_1016519D8;
    v23 = v14;
    v27 = v11;
    v28 = v15;
    v25 = v18;
    v26 = v4;
    v24 = self;
    v29 = v17;
    v20 = v18;
    v21 = v14;
    dispatch_async(iconFetchingQueue, v22);
  }
}

- (BOOL)_isValidLabelMarkerForInitiatingOrbGesture:(id)a3
{
  v4 = a3;
  v5 = [(QuickActionMenuPresenter *)self delegate];
  LOBYTE(self) = [v5 mapQuickActionMenuPresenter:self shouldBeginOrbGestureForLabelMarkerOnMap:v4];

  return self;
}

- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 hitTest:0 withEvent:{x, y}];
  [(MKMapView *)self->_mapView convertPoint:v7 fromView:x, y];
  v10 = v9;
  v12 = v11;
  if ([(MKMapView *)self->_mapView calloutViewContainsPoint:?])
  {
    v13 = [(MKMapView *)self->_mapView selectedAnnotations];
    v14 = [v13 count];

    if (v14 == 1)
    {
      v15 = [(MKMapView *)self->_mapView selectedAnnotations];
      v16 = [v15 firstObject];

      [(MapQuickActionMenuPresenter *)self setAnnotation:v16];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 annotation];

        v16 = v17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(QuickActionMenuPresenter *)self setSearchResult:v16];
        v18 = self;
        v19 = 4;
        goto LABEL_20;
      }
    }

    v16 = [(MKMapView *)self->_mapView _selectedLabelMarker];
    if (![(MapQuickActionMenuPresenter *)self _isValidLabelMarkerForInitiatingOrbGesture:v16])
    {
      v34 = 0;
      goto LABEL_34;
    }

    [(QuickActionMenuPresenter *)self setLabelMarker:v16];
    [(QuickActionMenuPresenter *)self setUiTarget:4];
    if (![v16 isTransitLine])
    {
LABEL_21:
      v34 = 1;
LABEL_34:

      goto LABEL_35;
    }

    v18 = self;
    v19 = 7;
LABEL_20:
    [(QuickActionMenuPresenter *)v18 setUiTarget:v19];
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
      v16 = [(MKMapView *)self->_mapView _annotationAtPoint:0 avoidCurrent:v10, v12];
      [(MapQuickActionMenuPresenter *)self setAnnotation:v16];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [v16 annotation];

        v16 = v32;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(QuickActionMenuPresenter *)self setSearchResult:v16];
        v33 = [(SearchResult *)self->super._searchResult appearance];
        if (v33 == 1)
        {
          v18 = self;
          v19 = 5;
        }

        else if (v33 == 3)
        {
          v18 = self;
          v19 = 6;
        }

        else
        {
          v18 = self;
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

        [(MKMapView *)self->_mapView convertPoint:v7 toCoordinateFromView:x, y];
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

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  if (a5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100D295C0;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [a5 addCompletion:{v6, a4}];
  }

  else
  {

    [(MapQuickActionMenuPresenter *)self invalidateIfNeeded:a3];
  }
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = [(QuickActionMenuPresenter *)self containerViewController:a3];
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
    v10 = [v9 layer];
    [v10 setCornerRadius:25.0];

    [v9 setClipsToBounds:1];
    v11 = [UIView alloc];
    v12 = [(QuickActionMenuPresenter *)self containerViewController];
    v13 = [v12 view];
    [v13 bounds];
    v14 = [v11 initWithFrame:?];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(QuickActionMenuPresenter *)self containerViewController];
    v16 = [v15 view];
    [v16 addSubview:v14];

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

- (MapQuickActionMenuPresenter)initWithMapView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MapQuickActionMenuPresenter;
  v6 = [(QuickActionMenuPresenter *)&v11 initWithView:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapView, a3);
    v8 = geo_dispatch_queue_create_with_qos();
    iconFetchingQueue = v7->_iconFetchingQueue;
    v7->_iconFetchingQueue = v8;
  }

  return v7;
}

@end