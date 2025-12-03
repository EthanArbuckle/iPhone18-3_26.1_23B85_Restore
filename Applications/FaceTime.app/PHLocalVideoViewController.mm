@interface PHLocalVideoViewController
- (BOOL)deviceIsFrontFacingOrExternal:(id)external;
- (BOOL)isFaceTimeLaunchPageEnabled;
- (BOOL)isUsingIPadExternalCamera;
- (BOOL)localVideoLayersAreAssociated;
- (BOOL)shouldDeferStartCameraAction;
- (PHLocalVideoViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_scene;
- (int)_tuVideoDeviceOrientationForDeviceOrientation:(int64_t)orientation;
- (int64_t)interfaceOrientationForDeviceOrientation:(int64_t)orientation;
- (void)_adjustForOrientationAnimated:(BOOL)animated;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationEnteredBackgroundOrWillResignActive:(id)active;
- (void)_applyAutoRotationCorrectionForCurrentOrientationWithTransitionCoordinator:(id)coordinator;
- (void)_applyAutoRotationCorrectionForOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)_applyPreviewMSROptimizationTransformsForOrientation:(int64_t)orientation;
- (void)_avFirstPreviewFrameArrived:(id)arrived;
- (void)_dissociateVideoLayers;
- (void)_ensureLocalVideoWillBecomeVisible;
- (void)_ensureVideoLayersExist;
- (void)_fadeInVideo;
- (void)_handleLocalCameraAvailableNotification:(id)notification;
- (void)_handleLocalCameraErrorNotification:(id)notification;
- (void)_handleLocalCameraUIDChangedNotification:(id)notification;
- (void)_handleSystemPreferredCameraChangedNotification:(id)notification;
- (void)_handleVideoPreviewDidStartNotification:(id)notification;
- (void)_previewMSROptimizationCompensationForOrientation:(int64_t)orientation withTransform:(CGAffineTransform *)transform withBounds:(CGRect *)bounds;
- (void)_setNewRotationBoundsForView:(id)view withCenter:(CGPoint)center landscapeBounds:(CGRect)bounds bounds:(CGRect)a6 transform:(CGAffineTransform *)transform;
- (void)_setupVideoLayers;
- (void)_updateLocalPreviewStatusBarGradient;
- (void)_updateLocalVideoOrientationAnimated:(BOOL)animated;
- (void)associateLocalVideoLayers;
- (void)dealloc;
- (void)fadeInAnimated:(BOOL)animated;
- (void)fadeOutAnimated:(BOOL)animated;
- (void)loadView;
- (void)startPreview;
- (void)stopPreview;
- (void)updateVideoLayers:(int64_t)layers;
- (void)updateViewControllerForOrientation:(int64_t)orientation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PHLocalVideoViewController

- (BOOL)isFaceTimeLaunchPageEnabled
{
  v2 = +[CNKFeatures sharedInstance];
  isFaceTimeLaunchPageEnabled = [v2 isFaceTimeLaunchPageEnabled];

  return isFaceTimeLaunchPageEnabled;
}

- (BOOL)isUsingIPadExternalCamera
{
  featureFlags = [(PHLocalVideoViewController *)self featureFlags];
  if ([featureFlags wombatWisdomEnabled])
  {
    v4 = +[TUCallCenter sharedInstance];
    videoDeviceController = [v4 videoDeviceController];
    if ([videoDeviceController currentInputIsExternal])
    {
      v6 = +[UIDevice currentDevice];
      v7 = [v6 userInterfaceIdiom] == 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7 != [(PHLocalVideoViewController *)self cachedIsUsingIPadExternalCamera])
  {
    v8 = sub_100003B9C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updated cachedIsUsingIPadExternalCamera to %d", v10, 8u);
    }

    [(PHLocalVideoViewController *)self setCachedIsUsingIPadExternalCamera:v7];
  }

  return v7;
}

- (PHLocalVideoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v13.receiver = self;
  v13.super_class = PHLocalVideoViewController;
  v4 = [(PHLocalVideoViewController *)&v13 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[UIDevice currentDevice];
    if ([v5 userInterfaceIdiom] == 1)
    {
      v6 = +[CNKFeatures sharedInstance];
      isFaceTimeLaunchPageEnabled = [v6 isFaceTimeLaunchPageEnabled];

      if ((isFaceTimeLaunchPageEnabled & 1) == 0)
      {
        v4->_showsLocalPreviewStatusBarGradient = 1;
      }
    }

    else
    {
    }

    if ([UIApp contentViewCanRotate])
    {
      v4->_supportsAutoRotation = 1;
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v4 selector:"_avFirstPreviewFrameArrived:" name:TUVideoDeviceControllerReceivedFirstPreviewFrameNotification object:0];
    [v8 addObserver:v4 selector:"_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
    [v8 addObserver:v4 selector:"_applicationEnteredBackgroundOrWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];
    [v8 addObserver:v4 selector:"_applicationEnteredBackgroundOrWillResignActive:" name:UIApplicationDidEnterBackgroundNotification object:0];
    [v8 addObserver:v4 selector:"_handleLocalCameraErrorNotification:" name:TUVideoDeviceControllerDeviceDidReceiveErrorNotification object:0];
    [v8 addObserver:v4 selector:"_handleLocalCameraAvailableNotification:" name:TUVideoDeviceControllerDeviceBecameAvailableNotification object:0];
    [v8 addObserver:v4 selector:"_handleVideoPreviewDidStartNotification:" name:TUVideoDeviceControllerDidStartPreviewNotification object:0];
    [v8 addObserver:v4 selector:"_handleSystemPreferredCameraChangedNotification:" name:TUVideoDeviceControllerSystemPreferredCameraChangedNotification object:0];
    [v8 addObserver:v4 selector:"_handleLocalCameraUIDChangedNotification:" name:TUVideoDeviceControllerDidChangeLocalCameraUIDNotification object:0];
    v9 = +[UIDevice currentDevice];
    v4->_lastKnownOrientation = [v9 orientation];

    if (![(PHLocalVideoViewController *)v4 _isValidFaceTimeOrientation:v4->_lastKnownOrientation])
    {
      v4->_lastKnownOrientation = [(PHLocalVideoViewController *)v4 supportsAutoRotation]^ 1;
    }

    v10 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v4->_featureFlags;
    v4->_featureFlags = v10;

    v4->_readyForPreview = 1;
    v4->_screensaverActive = 0;
    if ([(PHLocalVideoViewController *)v4 isFaceTimeLaunchPageEnabled])
    {
      v4->_isFirstLaunch = 1;
    }
  }

  return v4;
}

- (void)dealloc
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(PHLocalVideoViewController *)self stopPreview];
  [(PHLocalVideoViewController *)self _dissociateVideoLayers];
  v4.receiver = self;
  v4.super_class = PHLocalVideoViewController;
  [(PHLocalVideoViewController *)&v4 dealloc];
}

- (void)fadeOutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PHLocalVideoViewController *)self view];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028614;
  v4 = v7[3] = &unk_10010AD48;
  v8 = v4;
  v5 = objc_retainBlock(v7);
  v6 = v5;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v5 animations:0.400000006];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (void)fadeInAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PHLocalVideoViewController *)self view];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000286F4;
  v4 = v7[3] = &unk_10010AD48;
  v8 = v4;
  v5 = objc_retainBlock(v7);
  v6 = v5;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v5 animations:0.400000006];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (BOOL)localVideoLayersAreAssociated
{
  isFaceTimeLaunchPageEnabled = [(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled];
  v4 = +[TUCallCenter sharedInstance];
  videoDeviceController = [v4 videoDeviceController];
  localFrontLayer = [videoDeviceController localFrontLayer];
  layer = [(UIView *)self->_localVideoView layer];
  v8 = [localFrontLayer isEqual:layer];
  v9 = isFaceTimeLaunchPageEnabled ^ 1;
  v10 = (isFaceTimeLaunchPageEnabled ^ 1) & v8;
  if (v9 & 1) == 0 && (v8)
  {
    v11 = +[TUCallCenter sharedInstance];
    videoDeviceController2 = [v11 videoDeviceController];
    localBackLayer = [videoDeviceController2 localBackLayer];
    layer2 = [(UIView *)self->_backVideoView layer];
    v10 = [localBackLayer isEqual:layer2];
  }

  return v10;
}

- (void)associateLocalVideoLayers
{
  [(PHLocalVideoViewController *)self _ensureVideoLayersExist];
  v3 = +[TUCallCenter sharedInstance];
  videoDeviceController = [v3 videoDeviceController];
  layer = [(UIView *)self->_localVideoView layer];
  [videoDeviceController setLocalFrontLayer:layer];

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
  {
    v8 = +[TUCallCenter sharedInstance];
    videoDeviceController2 = [v8 videoDeviceController];
    layer2 = [(UIView *)self->_backVideoView layer];
    [videoDeviceController2 setLocalBackLayer:layer2];
  }
}

- (void)_dissociateVideoLayers
{
  v3 = +[TUCallCenter sharedInstance];
  videoDeviceController = [v3 videoDeviceController];

  localFrontLayer = [videoDeviceController localFrontLayer];
  layer = [(UIView *)self->_localVideoView layer];

  if (localFrontLayer == layer)
  {
    [videoDeviceController setLocalFrontLayer:0];
  }

  else
  {
    v7 = sub_100003B9C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Not clearing the local front video layer because this isn't the current displayController's layer", buf, 2u);
    }
  }

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
  {
    localBackLayer = [videoDeviceController localBackLayer];
    layer2 = [(UIView *)self->_backVideoView layer];

    if (localBackLayer == layer2)
    {
      [videoDeviceController setLocalBackLayer:0];
    }

    else
    {
      v10 = sub_100003B9C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Not clearing the local back video layer because this isn't the current displayController's layer", v11, 2u);
      }
    }
  }
}

- (void)_ensureVideoLayersExist
{
  view = [(PHLocalVideoViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (!self->_videoGroupView)
  {
    v12 = [[UIControl alloc] initWithFrame:{v5, v7, v9, v11}];
    videoGroupView = self->_videoGroupView;
    self->_videoGroupView = v12;

    [(UIControl *)self->_videoGroupView setAutoresizingMask:18];
    layer = [(UIControl *)self->_videoGroupView layer];
    [layer setName:@"PHLocalVideoControllerGroupView"];

    view2 = [(PHLocalVideoViewController *)self view];
    [view2 addSubview:self->_videoGroupView];
  }

  if (!self->_localVideoView)
  {
    v16 = [[UIView alloc] initWithFrame:{v5, v7, v9, v11}];
    localVideoView = self->_localVideoView;
    self->_localVideoView = v16;

    [(UIView *)self->_localVideoView setAutoresizingMask:18];
    layer2 = [(UIView *)self->_localVideoView layer];
    [layer2 setContentsGravity:kCAGravityResizeAspectFill];

    layer3 = [(UIView *)self->_localVideoView layer];
    [layer3 setMasksToBounds:1];

    layer4 = [(UIView *)self->_localVideoView layer];
    [layer4 setName:@"PHLocalVideoControllerLocalVideoView"];

    [(UIControl *)self->_videoGroupView addSubview:self->_localVideoView];
    [(PHLocalVideoViewController *)self setWaitingForLocalVideoFirstFrame:1];
  }

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled]&& !self->_backVideoView)
  {
    v21 = [[UIView alloc] initWithFrame:{v5, v7, v9, v11}];
    backVideoView = self->_backVideoView;
    self->_backVideoView = v21;

    [(UIView *)self->_backVideoView setAutoresizingMask:18];
    layer5 = [(UIView *)self->_backVideoView layer];
    [layer5 setContentsGravity:kCAGravityResizeAspectFill];

    layer6 = [(UIView *)self->_backVideoView layer];
    [layer6 setMasksToBounds:1];

    layer7 = [(UIView *)self->_backVideoView layer];
    [layer7 setName:@"PHLocalVideoControllerBackVideoView"];

    [(UIControl *)self->_videoGroupView addSubview:self->_backVideoView];

    [(PHLocalVideoViewController *)self setWaitingForLocalVideoFirstFrame:1];
  }
}

- (void)_setupVideoLayers
{
  [(PHLocalVideoViewController *)self associateLocalVideoLayers];

  [(PHLocalVideoViewController *)self _updateLocalVideoOrientationAnimated:0];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PHLocalVideoViewController;
  [(PHLocalVideoViewController *)&v3 loadView];
  [(PHLocalVideoViewController *)self _setupVideoLayers];
  [(PHLocalVideoViewController *)self startPreview];
  [(PHLocalVideoViewController *)self _updateLocalPreviewStatusBarGradient];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PHLocalVideoViewController;
  [(PHLocalVideoViewController *)&v4 viewWillAppear:appear];
  [(PHLocalVideoViewController *)self _updateLocalVideoOrientationAnimated:0];
  if ([(PHLocalVideoViewController *)self isViewLoaded])
  {
    [(PHLocalVideoViewController *)self startPreview];
    [(PHLocalVideoViewController *)self _updateLocalPreviewStatusBarGradient];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PHLocalVideoViewController;
  [(PHLocalVideoViewController *)&v4 viewDidAppear:appear];
  [(PHLocalVideoViewController *)self _ensureLocalVideoWillBecomeVisible];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PHLocalVideoViewController;
  [(PHLocalVideoViewController *)&v6 viewDidDisappear:disappear];
  localVideoView = [(PHLocalVideoViewController *)self localVideoView];
  [localVideoView setAlpha:0.0];

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
  {
    backVideoView = [(PHLocalVideoViewController *)self backVideoView];
    [backVideoView setAlpha:0.0];
  }

  [(PHLocalVideoViewController *)self setWaitingForLocalVideoFirstFrame:1];
  [(PHLocalVideoViewController *)self stopPreview];
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

- (void)_applicationDidBecomeActive:(id)active
{
  [(PHLocalVideoViewController *)self _updateLocalVideoOrientationAnimated:0];
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController _applicationDidBecomeActive", v5, 2u);
  }

  if ([(PHLocalVideoViewController *)self isViewLoaded])
  {
    [(PHLocalVideoViewController *)self startPreview];
    [(PHLocalVideoViewController *)self _updateLocalPreviewStatusBarGradient];
  }
}

- (void)_applicationEnteredBackgroundOrWillResignActive:(id)active
{
  activeCopy = active;
  name = [activeCopy name];
  v6 = name;
  if (name != UIApplicationWillResignActiveNotification)
  {

LABEL_7:
    v9 = sub_100003B9C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [activeCopy name];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = name2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopping preview due to application notification %@", &buf, 0xCu);
    }

    [(PHLocalVideoViewController *)self stopPreview];
    goto LABEL_10;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v7 = off_100126998;
  v14 = off_100126998;
  if (!off_100126998)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v16 = sub_10002B420;
    v17 = &unk_10010B2A0;
    v18 = &v11;
    sub_10002B420(&buf);
    v7 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v7)
  {
    sub_1000C46F0();
  }

  v8 = v7(0) == 0;

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_10:
}

- (void)_adjustForOrientationAnimated:(BOOL)animated
{
  v4 = +[UIDevice currentDevice];
  lastKnownOrientation = [v4 orientation];

  if (![(PHLocalVideoViewController *)self _isValidFaceTimeOrientation:lastKnownOrientation])
  {
    if ([(PHLocalVideoViewController *)self _isValidFaceTimeOrientation:self->_lastKnownOrientation])
    {
      lastKnownOrientation = self->_lastKnownOrientation;
    }

    else
    {
      lastKnownOrientation = [UIApp statusBarOrientation];
    }
  }

  if ([UIApp isStatusBarHidden] && !-[PHLocalVideoViewController supportsAutoRotation](self, "supportsAutoRotation"))
  {
    v6 = [(PHLocalVideoViewController *)self interfaceOrientationForDeviceOrientation:lastKnownOrientation];
    [UIApp setStatusBarOrientation:v6];
  }

  self->_lastKnownOrientation = lastKnownOrientation;
}

- (int64_t)interfaceOrientationForDeviceOrientation:(int64_t)orientation
{
  if ((orientation - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return orientation;
  }
}

- (int)_tuVideoDeviceOrientationForDeviceOrientation:(int64_t)orientation
{
  if ((orientation - 2) < 3)
  {
    return orientation - 1;
  }

  else
  {
    return 0;
  }
}

- (void)_updateLocalVideoOrientationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (-[PHLocalVideoViewController isUsingIPadExternalCamera](self, "isUsingIPadExternalCamera") || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 userInterfaceIdiom], v5, v6 == 5))
  {
    v13 = +[TUCallCenter sharedInstance];
    videoDeviceController = [v13 videoDeviceController];
    [videoDeviceController setCurrentVideoOrientation:2];
  }

  else
  {
    v8 = +[UIDevice currentDevice];
    lastKnownOrientation = [v8 orientation];

    if (![(PHLocalVideoViewController *)self _isValidFaceTimeOrientation:lastKnownOrientation])
    {
      lastKnownOrientation = self->_lastKnownOrientation;
    }

    if ((lastKnownOrientation - 1) <= 3)
    {
      v10 = [(PHLocalVideoViewController *)self _tuVideoDeviceOrientationForDeviceOrientation:lastKnownOrientation];
      v11 = +[TUCallCenter sharedInstance];
      videoDeviceController2 = [v11 videoDeviceController];
      [videoDeviceController2 setCurrentVideoOrientation:v10];

      [(PHLocalVideoViewController *)self _adjustForOrientationAnimated:animatedCopy];
    }
  }
}

- (void)_previewMSROptimizationCompensationForOrientation:(int64_t)orientation withTransform:(CGAffineTransform *)transform withBounds:(CGRect *)bounds
{
  v8 = sub_100003B9C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromCGRect(*bounds);
    LODWORD(buf.a) = 138412290;
    *(&buf.a + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController _previewMSROptimizationCompensationForTransform bounds %@", &buf, 0xCu);
  }

  bounds->origin.x = 0.0;
  bounds->origin.y = 0.0;
  bounds->size = vextq_s8(bounds->size, bounds->size, 8uLL);
  v10 = dbl_1000D6BC0[(orientation - 3) < 2];
  if ((orientation - 3) >= 2)
  {
    v11 = -1.0;
  }

  else
  {
    v11 = 1.0;
  }

  if ((orientation - 3) >= 2)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = -1.0;
  }

  v13 = *&transform->c;
  *&v17.a = *&transform->a;
  *&v17.c = v13;
  *&v17.tx = *&transform->tx;
  CGAffineTransformRotate(&buf, &v17, v10);
  v14 = *&buf.c;
  *&transform->a = *&buf.a;
  *&transform->c = v14;
  *&transform->tx = *&buf.tx;
  v15 = *&transform->c;
  *&v17.a = *&transform->a;
  *&v17.c = v15;
  *&v17.tx = *&transform->tx;
  CGAffineTransformScale(&buf, &v17, v12, v11);
  v16 = *&buf.c;
  *&transform->a = *&buf.a;
  *&transform->c = v16;
  *&transform->tx = *&buf.tx;
}

- (void)_applyAutoRotationCorrectionForOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  v6 = [(PHLocalVideoViewController *)self supportsAutoRotation:orientation];
  v7 = sub_100003B9C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = orientation;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController _applyAutoRotationCorrectionForOrientation %lu (supportsAutoRotation = YES)", &buf, 0xCu);
    }

    [(UIControl *)self->_videoGroupView bounds];
    v11 = v9;
    v12 = v10;
    v26 = v13;
    *&v27 = v14;
    *(&v27 + 1) = v9;
    v28 = v10;
    v15 = *&CGAffineTransformIdentity.c;
    *&buf.a = *&CGAffineTransformIdentity.a;
    *&buf.c = v15;
    *&buf.tx = *&CGAffineTransformIdentity.tx;
    if (orientation > 2)
    {
      if (orientation == 4)
      {
        v26 = 0;
        *&v27 = 0;
        *(&v27 + 1) = v10;
        v28 = v9;
        v16 = 1.57079633;
        goto LABEL_17;
      }

      if (orientation == 3)
      {
        v26 = 0;
        *&v27 = 0;
        *(&v27 + 1) = v10;
        v28 = v9;
        v16 = -1.57079633;
        goto LABEL_17;
      }
    }

    else
    {
      if (orientation == 1)
      {
        goto LABEL_20;
      }

      if (orientation == 2)
      {
        v16 = 3.14159203;
LABEL_17:
        CGAffineTransformMakeRotation(&buf, v16);
        goto LABEL_20;
      }
    }

    localVideoView = [(PHLocalVideoViewController *)self localVideoView];
    v18 = localVideoView;
    if (localVideoView)
    {
      [localVideoView transform];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    buf = v25;

LABEL_20:
    v19 = v11 * 0.5;
    v20 = v12 * 0.5;
    featureFlags = [(PHLocalVideoViewController *)self featureFlags];
    previewMSROptimizationEnabled = [featureFlags previewMSROptimizationEnabled];

    if (previewMSROptimizationEnabled)
    {
      [(PHLocalVideoViewController *)self _previewMSROptimizationCompensationForOrientation:orientation withTransform:&buf withBounds:&v26];
    }

    localVideoView2 = [(PHLocalVideoViewController *)self localVideoView];
    v25 = buf;
    [(PHLocalVideoViewController *)self _setNewRotationBoundsForView:localVideoView2 withCenter:&v25 landscapeBounds:v19 bounds:v20 transform:0.0, 0.0, v12, v11, v26, v27, *&v28];

    if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
    {
      backVideoView = [(PHLocalVideoViewController *)self backVideoView];
      v25 = buf;
      [(PHLocalVideoViewController *)self _setNewRotationBoundsForView:backVideoView withCenter:&v25 landscapeBounds:v19 bounds:v20 transform:0.0, 0.0, v12, v11, v26, v27, *&v28];
    }

    return;
  }

  if (v8)
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = orientation;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController _applyAutoRotationCorrectionForOrientation %lu (supportsAutoRotation = NO)", &buf, 0xCu);
  }
}

- (void)_setNewRotationBoundsForView:(id)view withCenter:(CGPoint)center landscapeBounds:(CGRect)bounds bounds:(CGRect)a6 transform:(CGAffineTransform *)transform
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v12 = center.y;
  v13 = center.x;
  viewCopy = view;
  [viewCopy setCenter:{v13, v12}];
  if ([(PHLocalVideoViewController *)self isUsingIPadExternalCamera])
  {
    featureFlags = [(PHLocalVideoViewController *)self featureFlags];
    if ([featureFlags previewMSROptimizationEnabled])
    {
      [(UIControl *)self->_videoGroupView bounds];
      x = v17;
      y = v18;
      width = v19;
      height = v20;
    }

    [viewCopy setBounds:{x, y, width, height}];

    featureFlags2 = [(PHLocalVideoViewController *)self featureFlags];
    previewMSROptimizationEnabled = [featureFlags2 previewMSROptimizationEnabled];
    v23 = -1.57079633;
    if (previewMSROptimizationEnabled)
    {
      v23 = 3.14159203;
    }

    CGAffineTransformMakeRotation(&v26, v23);
    v25 = v26;
    [viewCopy setTransform:&v25];
  }

  else
  {
    [viewCopy setBounds:{a6.origin.x, a6.origin.y, a6.size.width, a6.size.height}];
    v24 = *&transform->c;
    *&v25.a = *&transform->a;
    *&v25.c = v24;
    *&v25.tx = *&transform->tx;
    [viewCopy setTransform:&v25];
  }
}

- (void)_applyPreviewMSROptimizationTransformsForOrientation:(int64_t)orientation
{
  v5 = *&CGAffineTransformIdentity.c;
  v35 = *&CGAffineTransformIdentity.a;
  v36 = v5;
  v37 = *&CGAffineTransformIdentity.tx;
  [(UIControl *)self->_videoGroupView bounds];
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  [(PHLocalVideoViewController *)self _previewMSROptimizationCompensationForOrientation:orientation withTransform:&v35 withBounds:&v31];
  v10 = v31;
  v11 = v32;
  v12 = v33;
  v13 = v34;
  localVideoView = [(PHLocalVideoViewController *)self localVideoView];
  [localVideoView setBounds:{v10, v11, v12, v13}];

  v28 = v35;
  v29 = v36;
  v30 = v37;
  localVideoView2 = [(PHLocalVideoViewController *)self localVideoView];
  v25 = v28;
  v26 = v29;
  v27 = v30;
  [localVideoView2 setTransform:&v25];

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
  {
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    backVideoView = [(PHLocalVideoViewController *)self backVideoView];
    [backVideoView setBounds:{v16, v17, v18, v19}];

    v22 = v35;
    v23 = v36;
    v24 = v37;
    backVideoView2 = [(PHLocalVideoViewController *)self backVideoView];
    v25 = v22;
    v26 = v23;
    v27 = v24;
    [backVideoView2 setTransform:&v25];
  }
}

- (void)updateViewControllerForOrientation:(int64_t)orientation
{
  if ([(PHLocalVideoViewController *)self supportsAutoRotation])
  {

    [(PHLocalVideoViewController *)self _applyAutoRotationCorrectionForOrientation:orientation withTransitionCoordinator:0];
  }

  else
  {
    v5 = sub_100003B9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController.updateViewControllerForOrientation: Ignoring since supportsAutoRotation = NO", v8, 2u);
    }

    featureFlags = [(PHLocalVideoViewController *)self featureFlags];
    previewMSROptimizationEnabled = [featureFlags previewMSROptimizationEnabled];

    if (previewMSROptimizationEnabled)
    {
      [(PHLocalVideoViewController *)self _applyPreviewMSROptimizationTransformsForOrientation:orientation];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(PHLocalVideoViewController *)self supportsAutoRotation])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100029D7C;
    v13[3] = &unk_10010B278;
    v13[4] = self;
    v14 = coordinatorCopy;
    [v14 animateAlongsideTransition:v13 completion:0];
  }

  else
  {
    featureFlags = [(PHLocalVideoViewController *)self featureFlags];
    previewMSROptimizationEnabled = [featureFlags previewMSROptimizationEnabled];

    if (previewMSROptimizationEnabled)
    {
      v10 = objc_opt_new();
      compose = [v10 compose];

      -[PHLocalVideoViewController _applyPreviewMSROptimizationTransformsForOrientation:](self, "_applyPreviewMSROptimizationTransformsForOrientation:", [compose makeInterfaceOrientationFrom:objc_msgSend(compose whenFailing:{"deviceOrientation"), 1}]);
    }
  }

  v12.receiver = self;
  v12.super_class = PHLocalVideoViewController;
  [(PHLocalVideoViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (id)_scene
{
  view = [(PHLocalVideoViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  return windowScene;
}

- (void)startPreview
{
  if (+[NSThread isMainThread])
  {
    _scene = [(PHLocalVideoViewController *)self _scene];
    v4 = _scene;
    if (_scene && (![_scene activationState] || objc_msgSend(v4, "activationState") == 1))
    {
      if ([(PHLocalVideoViewController *)self isReadyForPreview])
      {
        featureFlags = [(PHLocalVideoViewController *)self featureFlags];
        previewMSROptimizationEnabled = [featureFlags previewMSROptimizationEnabled];

        if (previewMSROptimizationEnabled)
        {
          [(PHLocalVideoViewController *)self associateLocalVideoLayers];
        }

        v7 = +[TUCallCenter sharedInstance];
        videoDeviceController = [v7 videoDeviceController];

        currentInputDevice = [videoDeviceController currentInputDevice];
        if ([(PHLocalVideoViewController *)self shouldDeferStartCameraAction])
        {
          v10 = sub_100003B9C();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deferring start camera action until systemPreferredCamera is initialized", buf, 2u);
          }

          [(PHLocalVideoViewController *)self setDidDeferStartCameraAction:1];
        }

        else
        {
          if (![(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
          {
            self->_isFirstLaunch = 1;
          }

          if (!currentInputDevice || self->_isFirstLaunch && ![(PHLocalVideoViewController *)self deviceIsFrontFacingOrExternal:currentInputDevice])
          {
            v13 = sub_100003B9C();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resetting camera on TUVideoDeviceController to be front-facing or external", buf, 2u);
            }

            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            inputDevices = [videoDeviceController inputDevices];
            v15 = [inputDevices countByEnumeratingWithState:&v25 objects:v31 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v26;
              while (2)
              {
                for (i = 0; i != v16; i = i + 1)
                {
                  if (*v26 != v17)
                  {
                    objc_enumerationMutation(inputDevices);
                  }

                  v19 = *(*(&v25 + 1) + 8 * i);
                  if ([(PHLocalVideoViewController *)self deviceIsFrontFacingOrExternal:v19])
                  {
                    [videoDeviceController setCurrentInputDevice:v19];
                    goto LABEL_37;
                  }
                }

                v16 = [inputDevices countByEnumeratingWithState:&v25 objects:v31 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

LABEL_37:

            if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
            {
              self->_isFirstLaunch = 0;
            }
          }

          v20 = sub_100003B9C();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController startPreview", buf, 2u);
          }

          disabledOverlayView = [(PHLocalVideoViewController *)self disabledOverlayView];

          if (disabledOverlayView)
          {
            disabledOverlayView2 = [(PHLocalVideoViewController *)self disabledOverlayView];
            [disabledOverlayView2 removeFromSuperview];

            [(PHLocalVideoViewController *)self setDisabledOverlayView:0];
          }

          currentInputDevice2 = [videoDeviceController currentInputDevice];

          if (currentInputDevice2)
          {
            [videoDeviceController startPreview];
          }

          else
          {
            v24 = sub_100003B9C();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController was asked to start preview, but the current input device is nil", buf, 2u);
            }
          }
        }

        goto LABEL_49;
      }

      videoDeviceController = sub_100003B9C();
      if (os_log_type_enabled(videoDeviceController, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "PHLocalVideoViewController rejected a start preview request because the client has not indicated it is ready";
        goto LABEL_19;
      }
    }

    else
    {
      videoDeviceController = sub_100003B9C();
      if (os_log_type_enabled(videoDeviceController, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "PHLocalVideoViewController rejected a start preview request because the scene is not in the foreground";
LABEL_19:
        _os_log_impl(&_mh_execute_header, videoDeviceController, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      }
    }

LABEL_49:

    return;
  }

  v11 = sub_100003B9C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4768(v11);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A2A0;
  block[3] = &unk_10010AD48;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateVideoLayers:(int64_t)layers
{
  if (layers == 1)
  {
    v4 = 0;
  }

  else
  {
    if (layers != 2)
    {
      return;
    }

    layers = 0;
    v4 = 1;
  }

  [(UIView *)self->_localVideoView setHidden:layers];
  backVideoView = self->_backVideoView;

  [(UIView *)backVideoView setHidden:v4];
}

- (BOOL)deviceIsFrontFacingOrExternal:(id)external
{
  externalCopy = external;
  if ([externalCopy position] == 2)
  {
    v4 = 1;
  }

  else
  {
    deviceType = [externalCopy deviceType];
    v4 = deviceType == AVCaptureDeviceTypeExternal;
  }

  return v4;
}

- (BOOL)shouldDeferStartCameraAction
{
  featureFlags = [(PHLocalVideoViewController *)self featureFlags];
  if ([featureFlags wombatWisdomEnabled])
  {
    v3 = +[UIDevice currentDevice];
    if ([v3 userInterfaceIdiom] == 1)
    {
      v4 = +[AVCaptureDevice systemPreferredCamera];
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)stopPreview
{
  v2 = sub_100003B9C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = 1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "VideoDeviceController stopPreview: %d", v5, 8u);
  }

  v3 = +[TUCallCenter sharedInstance];
  videoDeviceController = [v3 videoDeviceController];
  [videoDeviceController stopPreview];
}

- (void)_fadeInVideo
{
  [(PHLocalVideoViewController *)self setWaitingForLocalVideoFirstFrame:0];
  isFaceTimeLaunchPageEnabled = [(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled];
  localVideoView = [(PHLocalVideoViewController *)self localVideoView];
  [localVideoView alpha];
  v6 = v5;
  if (!isFaceTimeLaunchPageEnabled)
  {

    if (v6 == 1.0)
    {
      return;
    }

    v10 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v11 = sub_10002A720;
    goto LABEL_9;
  }

  if (v5 != 1.0)
  {

    goto LABEL_8;
  }

  backVideoView = [(PHLocalVideoViewController *)self backVideoView];
  [backVideoView alpha];
  v9 = v8;

  if (v9 != 1.0)
  {
LABEL_8:
    v10 = v14;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v11 = sub_10002A6B0;
LABEL_9:
    v10[2] = v11;
    v10[3] = &unk_10010AD48;
    v10[4] = self;
    v12 = objc_retainBlock(v10);
    [UIView animateWithDuration:v12 animations:0.300000012];
  }
}

- (void)_ensureLocalVideoWillBecomeVisible
{
  v3 = sub_100003B9C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    selfCopy = self;
    v16 = 2080;
    v17 = "[PHLocalVideoViewController _ensureLocalVideoWillBecomeVisible]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", &v14, 0x16u);
  }

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
  {
    v4 = +[TUCallCenter sharedInstance];
    videoDeviceController = [v4 videoDeviceController];
    currentInputDevice = [videoDeviceController currentInputDevice];
    -[PHLocalVideoViewController updateVideoLayers:](self, "updateVideoLayers:", [currentInputDevice position]);

    localVideoView = [(PHLocalVideoViewController *)self localVideoView];
    [localVideoView alpha];
    if (v8 == 0.0)
    {

      goto LABEL_10;
    }

    backVideoView = [(PHLocalVideoViewController *)self backVideoView];
    [backVideoView alpha];
    v11 = v10;
  }

  else
  {
    localVideoView2 = [(PHLocalVideoViewController *)self localVideoView];
    [localVideoView2 setHidden:0];

    localVideoView = [(PHLocalVideoViewController *)self localVideoView];
    [localVideoView alpha];
    v11 = v13;
  }

  if (v11 != 0.0)
  {
    self->_waitingForLocalVideoFirstFrame = 0;
    return;
  }

LABEL_10:
  [(PHLocalVideoViewController *)self performSelector:"_autoFadeInVideo" withObject:0 afterDelay:0.5];
}

- (void)_avFirstPreviewFrameArrived:(id)arrived
{
  if ([(PHLocalVideoViewController *)self waitingForLocalVideoFirstFrame])
  {
    v4 = sub_100003B9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "First frame arrived: fading in local video", buf, 2u);
    }

    [(PHLocalVideoViewController *)self setWaitingForLocalVideoFirstFrame:0];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_autoFadeInVideo" object:0];
    [(PHLocalVideoViewController *)self _fadeInVideo];
  }

  v5 = sub_100003B9C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "First local video frame arrived, updating the video layer in case the camera source changed", v6, 2u);
  }

  [(PHLocalVideoViewController *)self _applyAutoRotationCorrectionForCurrentOrientationWithTransitionCoordinator:0];
}

- (void)_handleLocalCameraErrorNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:TUVideoDeviceControllerDeviceDidReceiveErrorErrorKey];

  if (v5 && [v5 code] == 32023)
  {
    v6 = sub_100003B9C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Local camera was pre-empted from FaceTime local preview", v14, 2u);
    }

    disabledOverlayView = [(PHLocalVideoViewController *)self disabledOverlayView];

    if (!disabledOverlayView)
    {
      v8 = [PHLocalVideoDisabledOverlayView alloc];
      view = [(PHLocalVideoViewController *)self view];
      [view bounds];
      v10 = [(PHLocalVideoDisabledOverlayView *)v8 initWithFrame:?];
      [(PHLocalVideoViewController *)self setDisabledOverlayView:v10];

      disabledOverlayView2 = [(PHLocalVideoViewController *)self disabledOverlayView];
      [disabledOverlayView2 setAutoresizingMask:18];

      view2 = [(PHLocalVideoViewController *)self view];
      disabledOverlayView3 = [(PHLocalVideoViewController *)self disabledOverlayView];
      [view2 addSubview:disabledOverlayView3];
    }
  }
}

- (void)_handleLocalCameraAvailableNotification:(id)notification
{
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Local camera pre-emption ended and the camera became available", v7, 2u);
  }

  disabledOverlayView = [(PHLocalVideoViewController *)self disabledOverlayView];

  if (disabledOverlayView)
  {
    disabledOverlayView2 = [(PHLocalVideoViewController *)self disabledOverlayView];
    [disabledOverlayView2 removeFromSuperview];

    [(PHLocalVideoViewController *)self setDisabledOverlayView:0];
  }
}

- (void)_handleVideoPreviewDidStartNotification:(id)notification
{
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Local preview did start notification, we'll remove the disabled overlay view if it exists", v7, 2u);
  }

  disabledOverlayView = [(PHLocalVideoViewController *)self disabledOverlayView];

  if (disabledOverlayView)
  {
    disabledOverlayView2 = [(PHLocalVideoViewController *)self disabledOverlayView];
    [disabledOverlayView2 removeFromSuperview];

    [(PHLocalVideoViewController *)self setDisabledOverlayView:0];
  }
}

- (void)_handleSystemPreferredCameraChangedNotification:(id)notification
{
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "System preferred camera changed", buf, 2u);
  }

  if ([(PHLocalVideoViewController *)self didDeferStartCameraAction])
  {
    v5 = +[AVCaptureDevice systemPreferredCamera];

    v6 = sub_100003B9C();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting camera that was deferred due to systemPreferredCamera initialization", v9, 2u);
      }

      [(PHLocalVideoViewController *)self setDidDeferStartCameraAction:0];
      [(PHLocalVideoViewController *)self startPreview];
    }

    else
    {
      if (v7)
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring change to systemPreferredCamera because it's nil", v10, 2u);
      }
    }
  }

  else
  {
    v8 = sub_100003B9C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring change to systemPreferredCamera because there's no pending start camera action", v11, 2u);
    }
  }
}

- (void)_handleLocalCameraUIDChangedNotification:(id)notification
{
  cachedIsUsingIPadExternalCamera = [(PHLocalVideoViewController *)self cachedIsUsingIPadExternalCamera];
  isUsingIPadExternalCamera = [(PHLocalVideoViewController *)self isUsingIPadExternalCamera];
  if (cachedIsUsingIPadExternalCamera != isUsingIPadExternalCamera)
  {
    v6 = isUsingIPadExternalCamera;
    v7 = sub_100003B9C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109376;
      v11[1] = cachedIsUsingIPadExternalCamera;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Local camera UID changed, oldIsUsingIPadExternalCamera=%d, newIsUsingIPadExternalCamera=%d", v11, 0xEu);
    }

    localVideoView = [(PHLocalVideoViewController *)self localVideoView];
    [localVideoView setAlpha:0.0];

    if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
    {
      backVideoView = [(PHLocalVideoViewController *)self backVideoView];
      [backVideoView setAlpha:0.0];
    }

    [(PHLocalVideoViewController *)self setWaitingForLocalVideoFirstFrame:1];
  }

  v10 = sub_100003B9C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Local camera UID changed, updating the video layer in case we switched between a built-in and external camera", v11, 2u);
  }

  [(PHLocalVideoViewController *)self _applyAutoRotationCorrectionForCurrentOrientationWithTransitionCoordinator:0];
}

- (void)_applyAutoRotationCorrectionForCurrentOrientationWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  view = [(PHLocalVideoViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    v8 = objc_opt_new();
    compose = [v8 compose];

    -[PHLocalVideoViewController _applyAutoRotationCorrectionForOrientation:withTransitionCoordinator:](self, "_applyAutoRotationCorrectionForOrientation:withTransitionCoordinator:", [compose makeInterfaceOrientationFrom:objc_msgSend(compose whenFailing:{"deviceOrientation"), objc_msgSend(windowScene, "interfaceOrientation")}], coordinatorCopy);
  }

  else
  {
    v10 = sub_100003B9C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to apply auto-rotation correction because there's no window scene to determine a valid fallback orientation", v11, 2u);
    }
  }
}

- (void)_updateLocalPreviewStatusBarGradient
{
  showsLocalPreviewStatusBarGradient = [(PHLocalVideoViewController *)self showsLocalPreviewStatusBarGradient];
  localVideoStatusBarGradientView = self->_localVideoStatusBarGradientView;
  if (showsLocalPreviewStatusBarGradient)
  {
    if (!localVideoStatusBarGradientView)
    {
      view = [(PHLocalVideoViewController *)self view];
      [view bounds];
      v7 = v6;

      v8 = [[PHStatusBarGradientView alloc] initWithFrame:0.0, 0.0, v7, 40.0];
      v9 = self->_localVideoStatusBarGradientView;
      self->_localVideoStatusBarGradientView = &v8->super;

      [(UIView *)self->_localVideoStatusBarGradientView setAutoresizingMask:34];
      view2 = [(PHLocalVideoViewController *)self view];
      [view2 addSubview:self->_localVideoStatusBarGradientView];

      localVideoStatusBarGradientView = self->_localVideoStatusBarGradientView;
    }

    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  [(UIView *)localVideoStatusBarGradientView setAlpha:v11];
}

@end