@interface PedestrianARRenderingView
- (ARSession)session;
- (BOOL)shouldGenerateFeatures;
- (BOOL)shouldShowFeatures;
- (PedestrianARRenderingView)initWithGuidanceObserver:(id)a3 navigationService:(id)a4;
- (void)dealloc;
- (void)deviceOrientationDidChange:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)setRoute:(id)a3;
- (void)setSession:(id)a3;
- (void)setShouldGenerateFeatures:(BOOL)a3;
- (void)setShouldShowFeatures:(BOOL)a3;
- (void)tapGestureRecognizerFired:(id)a3;
@end

@implementation PedestrianARRenderingView

- (ARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)tapGestureRecognizerFired:(id)a3
{
  v7 = a3;
  v4 = [(PedestrianARRenderingView *)self vkMapView];
  v5 = [v4 enableDebugLabelHighlighting];

  if (v5)
  {
    v6 = [(PedestrianARRenderingView *)self vkMapView];
    [v7 locationInView:self];
    [v6 debugHighlightLabelAtPoint:?];
  }
}

- (void)deviceOrientationDidChange:(id)a3
{
  v4 = [(PedestrianARRenderingView *)self window];
  v5 = [v4 windowScene];

  if (v5)
  {
    v10 = [(PedestrianARRenderingView *)self vkMapView];
    v6 = [(PedestrianARRenderingView *)self window];
    v7 = [v6 windowScene];
    v8 = [v7 interfaceOrientation] - 1;
    if (v8 > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_101213570[v8];
    }

    [v10 setARInterfaceOrientation:v9];
  }
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v5 = sub_100D1FF38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Got first frame from ARKit", buf, 0xCu);
  }

  v6 = [(PedestrianARRenderingView *)self session];
  [v6 _removeObserver:self];

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D1FF8C;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v8, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)setShouldShowFeatures:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100D1FF38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v9 = 134349314;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Should show features: %@", &v9, 0x16u);
  }

  v8 = [(PedestrianARRenderingView *)self vkRenderer];
  [v8 setShouldShowFeatures:v3];
}

- (BOOL)shouldShowFeatures
{
  v2 = [(PedestrianARRenderingView *)self vkRenderer];
  v3 = [v2 shouldShowFeatures];

  return v3;
}

- (void)setShouldGenerateFeatures:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100D1FF38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v9 = 134349314;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Should generate features: %@", &v9, 0x16u);
  }

  v8 = [(PedestrianARRenderingView *)self vkRenderer];
  [v8 setShouldGenerateFeatures:v3];
}

- (BOOL)shouldGenerateFeatures
{
  v2 = [(PedestrianARRenderingView *)self vkRenderer];
  v3 = [v2 shouldGenerateFeatures];

  return v3;
}

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    objc_storeStrong(&self->_route, a3);
    v6 = sub_100D1FF38();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 134349314;
      v9 = self;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got a new route: %@", &v8, 0x16u);
    }

    v7 = [(PedestrianARRenderingView *)self vkRenderer];
    [v7 setRoute:v5];
  }
}

- (void)setSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_session);

  if (WeakRetained != v4)
  {
    v6 = sub_100D1FF38();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134349314;
      v10 = self;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got a new ARSession: %@", &v9, 0x16u);
    }

    v7 = objc_loadWeakRetained(&self->_session);
    [v7 _removeObserver:self];

    v8 = objc_storeWeak(&self->_session, v4);
    [v4 _addObserver:self];

    self->_gotFirstFrame = 0;
  }
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = PedestrianARRenderingView;
  [(PedestrianARRenderingView *)&v8 didMoveToWindow];
  v3 = [(PedestrianARRenderingView *)self vkMapView];
  v4 = [(PedestrianARRenderingView *)self window];
  v5 = [v4 windowScene];
  v6 = [v5 interfaceOrientation] - 1;
  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_101213570[v6];
  }

  [v3 setARInterfaceOrientation:v7];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PedestrianARRenderingView;
  [(PedestrianARRenderingView *)&v12 layoutSubviews];
  [(PedestrianARRenderingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PedestrianARRenderingView *)self vkMapView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)dealloc
{
  v3 = sub_100D1FF38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  [WeakRetained _removeObserver:self];

  [(VKMapView *)self->_vkMapView setARSession:0];
  v5.receiver = self;
  v5.super_class = PedestrianARRenderingView;
  [(PedestrianARRenderingView *)&v5 dealloc];
}

- (PedestrianARRenderingView)initWithGuidanceObserver:(id)a3 navigationService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v29 = sub_10006D178();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v37 = "[PedestrianARRenderingView initWithGuidanceObserver:navigationService:]";
      v38 = 2080;
      v39 = "PedestrianARRenderingView.m";
      v40 = 1024;
      v41 = 48;
      v42 = 2080;
      v43 = "guidanceObserver != nil";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v30 = sub_10006D178();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v37 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v7)
  {
    v32 = sub_10006D178();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v37 = "[PedestrianARRenderingView initWithGuidanceObserver:navigationService:]";
      v38 = 2080;
      v39 = "PedestrianARRenderingView.m";
      v40 = 1024;
      v41 = 49;
      v42 = 2080;
      v43 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v33 = sub_10006D178();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v37 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v35.receiver = self;
  v35.super_class = PedestrianARRenderingView;
  v8 = [(PedestrianARRenderingView *)&v35 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = sub_100D1FF38();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v10 = +[MKSystemController sharedInstance];
    v11 = [v10 requiresRTT];
    v12 = +[UIScreen mainScreen];
    [v12 nativeScale];
    v13 = [VKMapViewDescriptor descriptorWithShouldRasterize:v11 inBackground:0 contentScale:0 auditToken:0 mapViewPurpose:1 allowsAntialiasing:?];

    v14 = [[VKMapView alloc] initWithDescriptor:v13];
    vkMapView = v8->_vkMapView;
    v8->_vkMapView = v14;

    [(VKMapView *)v8->_vkMapView setDesiredMapMode:4];
    [(VKMapView *)v8->_vkMapView setMapType:9];
    v16 = [v7 lastLocation];

    if (v16)
    {
      v17 = [(VKMapView *)v8->_vkMapView userLocationAnimator];
      v18 = [v7 lastLocation];
      v19 = [v7 lastLocation];
      v20 = [v19 routeMatch];
      [v17 updateLocation:v18 routeMatch:v20];
    }

    v21 = [[PedestrianARVKMapViewMapDelegate alloc] initWithMapView:v8->_vkMapView];
    mapViewDelegate = v8->_mapViewDelegate;
    v8->_mapViewDelegate = v21;

    v23 = [[PedestrianARVKRenderer alloc] initWithMapView:v8->_vkMapView navigationService:v7 mapViewDelegate:v8->_mapViewDelegate guidanceObserver:v6];
    vkRenderer = v8->_vkRenderer;
    v8->_vkRenderer = v23;

    v25 = [(PedestrianARRenderingView *)v8 layer];
    [v25 addSublayer:v8->_vkMapView];

    v26 = [[UITapGestureRecognizer alloc] initWithTarget:v8 action:"tapGestureRecognizerFired:"];
    [v26 setDelaysTouchesEnded:0];
    [(PedestrianARRenderingView *)v8 addGestureRecognizer:v26];
    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v8 selector:"deviceOrientationDidChange:" name:UIDeviceOrientationDidChangeNotification object:0];
  }

  return v8;
}

@end