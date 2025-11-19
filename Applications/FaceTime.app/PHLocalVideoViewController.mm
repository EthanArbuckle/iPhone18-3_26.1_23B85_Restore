@interface PHLocalVideoViewController
- (BOOL)deviceIsFrontFacingOrExternal:(id)a3;
- (BOOL)isFaceTimeLaunchPageEnabled;
- (BOOL)isUsingIPadExternalCamera;
- (BOOL)localVideoLayersAreAssociated;
- (BOOL)shouldDeferStartCameraAction;
- (PHLocalVideoViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_scene;
- (int)_tuVideoDeviceOrientationForDeviceOrientation:(int64_t)a3;
- (int64_t)interfaceOrientationForDeviceOrientation:(int64_t)a3;
- (void)_adjustForOrientationAnimated:(BOOL)a3;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationEnteredBackgroundOrWillResignActive:(id)a3;
- (void)_applyAutoRotationCorrectionForCurrentOrientationWithTransitionCoordinator:(id)a3;
- (void)_applyAutoRotationCorrectionForOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)_applyPreviewMSROptimizationTransformsForOrientation:(int64_t)a3;
- (void)_avFirstPreviewFrameArrived:(id)a3;
- (void)_dissociateVideoLayers;
- (void)_ensureLocalVideoWillBecomeVisible;
- (void)_ensureVideoLayersExist;
- (void)_fadeInVideo;
- (void)_handleLocalCameraAvailableNotification:(id)a3;
- (void)_handleLocalCameraErrorNotification:(id)a3;
- (void)_handleLocalCameraUIDChangedNotification:(id)a3;
- (void)_handleSystemPreferredCameraChangedNotification:(id)a3;
- (void)_handleVideoPreviewDidStartNotification:(id)a3;
- (void)_previewMSROptimizationCompensationForOrientation:(int64_t)a3 withTransform:(CGAffineTransform *)a4 withBounds:(CGRect *)a5;
- (void)_setNewRotationBoundsForView:(id)a3 withCenter:(CGPoint)a4 landscapeBounds:(CGRect)a5 bounds:(CGRect)a6 transform:(CGAffineTransform *)a7;
- (void)_setupVideoLayers;
- (void)_updateLocalPreviewStatusBarGradient;
- (void)_updateLocalVideoOrientationAnimated:(BOOL)a3;
- (void)associateLocalVideoLayers;
- (void)dealloc;
- (void)fadeInAnimated:(BOOL)a3;
- (void)fadeOutAnimated:(BOOL)a3;
- (void)loadView;
- (void)startPreview;
- (void)stopPreview;
- (void)updateVideoLayers:(int64_t)a3;
- (void)updateViewControllerForOrientation:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PHLocalVideoViewController

- (BOOL)isFaceTimeLaunchPageEnabled
{
  v2 = +[CNKFeatures sharedInstance];
  v3 = [v2 isFaceTimeLaunchPageEnabled];

  return v3;
}

- (BOOL)isUsingIPadExternalCamera
{
  v3 = [(PHLocalVideoViewController *)self featureFlags];
  if ([v3 wombatWisdomEnabled])
  {
    v4 = +[TUCallCenter sharedInstance];
    v5 = [v4 videoDeviceController];
    if ([v5 currentInputIsExternal])
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

- (PHLocalVideoViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v13.receiver = self;
  v13.super_class = PHLocalVideoViewController;
  v4 = [(PHLocalVideoViewController *)&v13 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[UIDevice currentDevice];
    if ([v5 userInterfaceIdiom] == 1)
    {
      v6 = +[CNKFeatures sharedInstance];
      v7 = [v6 isFaceTimeLaunchPageEnabled];

      if ((v7 & 1) == 0)
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

- (void)fadeOutAnimated:(BOOL)a3
{
  v3 = a3;
  [(PHLocalVideoViewController *)self view];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028614;
  v4 = v7[3] = &unk_10010AD48;
  v8 = v4;
  v5 = objc_retainBlock(v7);
  v6 = v5;
  if (v3)
  {
    [UIView animateWithDuration:v5 animations:0.400000006];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (void)fadeInAnimated:(BOOL)a3
{
  v3 = a3;
  [(PHLocalVideoViewController *)self view];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000286F4;
  v4 = v7[3] = &unk_10010AD48;
  v8 = v4;
  v5 = objc_retainBlock(v7);
  v6 = v5;
  if (v3)
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
  v3 = [(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled];
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 videoDeviceController];
  v6 = [v5 localFrontLayer];
  v7 = [(UIView *)self->_localVideoView layer];
  v8 = [v6 isEqual:v7];
  v9 = v3 ^ 1;
  v10 = (v3 ^ 1) & v8;
  if (v9 & 1) == 0 && (v8)
  {
    v11 = +[TUCallCenter sharedInstance];
    v12 = [v11 videoDeviceController];
    v13 = [v12 localBackLayer];
    v14 = [(UIView *)self->_backVideoView layer];
    v10 = [v13 isEqual:v14];
  }

  return v10;
}

- (void)associateLocalVideoLayers
{
  [(PHLocalVideoViewController *)self _ensureVideoLayersExist];
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 videoDeviceController];
  v5 = [(UIView *)self->_localVideoView layer];
  [v4 setLocalFrontLayer:v5];

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
  {
    v8 = +[TUCallCenter sharedInstance];
    v6 = [v8 videoDeviceController];
    v7 = [(UIView *)self->_backVideoView layer];
    [v6 setLocalBackLayer:v7];
  }
}

- (void)_dissociateVideoLayers
{
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 videoDeviceController];

  v5 = [v4 localFrontLayer];
  v6 = [(UIView *)self->_localVideoView layer];

  if (v5 == v6)
  {
    [v4 setLocalFrontLayer:0];
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
    v8 = [v4 localBackLayer];
    v9 = [(UIView *)self->_backVideoView layer];

    if (v8 == v9)
    {
      [v4 setLocalBackLayer:0];
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
  v3 = [(PHLocalVideoViewController *)self view];
  [v3 bounds];
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
    v14 = [(UIControl *)self->_videoGroupView layer];
    [v14 setName:@"PHLocalVideoControllerGroupView"];

    v15 = [(PHLocalVideoViewController *)self view];
    [v15 addSubview:self->_videoGroupView];
  }

  if (!self->_localVideoView)
  {
    v16 = [[UIView alloc] initWithFrame:{v5, v7, v9, v11}];
    localVideoView = self->_localVideoView;
    self->_localVideoView = v16;

    [(UIView *)self->_localVideoView setAutoresizingMask:18];
    v18 = [(UIView *)self->_localVideoView layer];
    [v18 setContentsGravity:kCAGravityResizeAspectFill];

    v19 = [(UIView *)self->_localVideoView layer];
    [v19 setMasksToBounds:1];

    v20 = [(UIView *)self->_localVideoView layer];
    [v20 setName:@"PHLocalVideoControllerLocalVideoView"];

    [(UIControl *)self->_videoGroupView addSubview:self->_localVideoView];
    [(PHLocalVideoViewController *)self setWaitingForLocalVideoFirstFrame:1];
  }

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled]&& !self->_backVideoView)
  {
    v21 = [[UIView alloc] initWithFrame:{v5, v7, v9, v11}];
    backVideoView = self->_backVideoView;
    self->_backVideoView = v21;

    [(UIView *)self->_backVideoView setAutoresizingMask:18];
    v23 = [(UIView *)self->_backVideoView layer];
    [v23 setContentsGravity:kCAGravityResizeAspectFill];

    v24 = [(UIView *)self->_backVideoView layer];
    [v24 setMasksToBounds:1];

    v25 = [(UIView *)self->_backVideoView layer];
    [v25 setName:@"PHLocalVideoControllerBackVideoView"];

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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHLocalVideoViewController;
  [(PHLocalVideoViewController *)&v4 viewWillAppear:a3];
  [(PHLocalVideoViewController *)self _updateLocalVideoOrientationAnimated:0];
  if ([(PHLocalVideoViewController *)self isViewLoaded])
  {
    [(PHLocalVideoViewController *)self startPreview];
    [(PHLocalVideoViewController *)self _updateLocalPreviewStatusBarGradient];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHLocalVideoViewController;
  [(PHLocalVideoViewController *)&v4 viewDidAppear:a3];
  [(PHLocalVideoViewController *)self _ensureLocalVideoWillBecomeVisible];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PHLocalVideoViewController;
  [(PHLocalVideoViewController *)&v6 viewDidDisappear:a3];
  v4 = [(PHLocalVideoViewController *)self localVideoView];
  [v4 setAlpha:0.0];

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
  {
    v5 = [(PHLocalVideoViewController *)self backVideoView];
    [v5 setAlpha:0.0];
  }

  [(PHLocalVideoViewController *)self setWaitingForLocalVideoFirstFrame:1];
  [(PHLocalVideoViewController *)self stopPreview];
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

- (void)_applicationDidBecomeActive:(id)a3
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

- (void)_applicationEnteredBackgroundOrWillResignActive:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = v5;
  if (v5 != UIApplicationWillResignActiveNotification)
  {

LABEL_7:
    v9 = sub_100003B9C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 name];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
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

- (void)_adjustForOrientationAnimated:(BOOL)a3
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

- (int64_t)interfaceOrientationForDeviceOrientation:(int64_t)a3
{
  if ((a3 - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (int)_tuVideoDeviceOrientationForDeviceOrientation:(int64_t)a3
{
  if ((a3 - 2) < 3)
  {
    return a3 - 1;
  }

  else
  {
    return 0;
  }
}

- (void)_updateLocalVideoOrientationAnimated:(BOOL)a3
{
  v3 = a3;
  if (-[PHLocalVideoViewController isUsingIPadExternalCamera](self, "isUsingIPadExternalCamera") || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 userInterfaceIdiom], v5, v6 == 5))
  {
    v13 = +[TUCallCenter sharedInstance];
    v7 = [v13 videoDeviceController];
    [v7 setCurrentVideoOrientation:2];
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
      v12 = [v11 videoDeviceController];
      [v12 setCurrentVideoOrientation:v10];

      [(PHLocalVideoViewController *)self _adjustForOrientationAnimated:v3];
    }
  }
}

- (void)_previewMSROptimizationCompensationForOrientation:(int64_t)a3 withTransform:(CGAffineTransform *)a4 withBounds:(CGRect *)a5
{
  v8 = sub_100003B9C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromCGRect(*a5);
    LODWORD(buf.a) = 138412290;
    *(&buf.a + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController _previewMSROptimizationCompensationForTransform bounds %@", &buf, 0xCu);
  }

  a5->origin.x = 0.0;
  a5->origin.y = 0.0;
  a5->size = vextq_s8(a5->size, a5->size, 8uLL);
  v10 = dbl_1000D6BC0[(a3 - 3) < 2];
  if ((a3 - 3) >= 2)
  {
    v11 = -1.0;
  }

  else
  {
    v11 = 1.0;
  }

  if ((a3 - 3) >= 2)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = -1.0;
  }

  v13 = *&a4->c;
  *&v17.a = *&a4->a;
  *&v17.c = v13;
  *&v17.tx = *&a4->tx;
  CGAffineTransformRotate(&buf, &v17, v10);
  v14 = *&buf.c;
  *&a4->a = *&buf.a;
  *&a4->c = v14;
  *&a4->tx = *&buf.tx;
  v15 = *&a4->c;
  *&v17.a = *&a4->a;
  *&v17.c = v15;
  *&v17.tx = *&a4->tx;
  CGAffineTransformScale(&buf, &v17, v12, v11);
  v16 = *&buf.c;
  *&a4->a = *&buf.a;
  *&a4->c = v16;
  *&a4->tx = *&buf.tx;
}

- (void)_applyAutoRotationCorrectionForOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  v6 = [(PHLocalVideoViewController *)self supportsAutoRotation:a3];
  v7 = sub_100003B9C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = a3;
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
    if (a3 > 2)
    {
      if (a3 == 4)
      {
        v26 = 0;
        *&v27 = 0;
        *(&v27 + 1) = v10;
        v28 = v9;
        v16 = 1.57079633;
        goto LABEL_17;
      }

      if (a3 == 3)
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
      if (a3 == 1)
      {
        goto LABEL_20;
      }

      if (a3 == 2)
      {
        v16 = 3.14159203;
LABEL_17:
        CGAffineTransformMakeRotation(&buf, v16);
        goto LABEL_20;
      }
    }

    v17 = [(PHLocalVideoViewController *)self localVideoView];
    v18 = v17;
    if (v17)
    {
      [v17 transform];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    buf = v25;

LABEL_20:
    v19 = v11 * 0.5;
    v20 = v12 * 0.5;
    v21 = [(PHLocalVideoViewController *)self featureFlags];
    v22 = [v21 previewMSROptimizationEnabled];

    if (v22)
    {
      [(PHLocalVideoViewController *)self _previewMSROptimizationCompensationForOrientation:a3 withTransform:&buf withBounds:&v26];
    }

    v23 = [(PHLocalVideoViewController *)self localVideoView];
    v25 = buf;
    [(PHLocalVideoViewController *)self _setNewRotationBoundsForView:v23 withCenter:&v25 landscapeBounds:v19 bounds:v20 transform:0.0, 0.0, v12, v11, v26, v27, *&v28];

    if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
    {
      v24 = [(PHLocalVideoViewController *)self backVideoView];
      v25 = buf;
      [(PHLocalVideoViewController *)self _setNewRotationBoundsForView:v24 withCenter:&v25 landscapeBounds:v19 bounds:v20 transform:0.0, 0.0, v12, v11, v26, v27, *&v28];
    }

    return;
  }

  if (v8)
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController _applyAutoRotationCorrectionForOrientation %lu (supportsAutoRotation = NO)", &buf, 0xCu);
  }
}

- (void)_setNewRotationBoundsForView:(id)a3 withCenter:(CGPoint)a4 landscapeBounds:(CGRect)a5 bounds:(CGRect)a6 transform:(CGAffineTransform *)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4.y;
  v13 = a4.x;
  v15 = a3;
  [v15 setCenter:{v13, v12}];
  if ([(PHLocalVideoViewController *)self isUsingIPadExternalCamera])
  {
    v16 = [(PHLocalVideoViewController *)self featureFlags];
    if ([v16 previewMSROptimizationEnabled])
    {
      [(UIControl *)self->_videoGroupView bounds];
      x = v17;
      y = v18;
      width = v19;
      height = v20;
    }

    [v15 setBounds:{x, y, width, height}];

    v21 = [(PHLocalVideoViewController *)self featureFlags];
    v22 = [v21 previewMSROptimizationEnabled];
    v23 = -1.57079633;
    if (v22)
    {
      v23 = 3.14159203;
    }

    CGAffineTransformMakeRotation(&v26, v23);
    v25 = v26;
    [v15 setTransform:&v25];
  }

  else
  {
    [v15 setBounds:{a6.origin.x, a6.origin.y, a6.size.width, a6.size.height}];
    v24 = *&a7->c;
    *&v25.a = *&a7->a;
    *&v25.c = v24;
    *&v25.tx = *&a7->tx;
    [v15 setTransform:&v25];
  }
}

- (void)_applyPreviewMSROptimizationTransformsForOrientation:(int64_t)a3
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
  [(PHLocalVideoViewController *)self _previewMSROptimizationCompensationForOrientation:a3 withTransform:&v35 withBounds:&v31];
  v10 = v31;
  v11 = v32;
  v12 = v33;
  v13 = v34;
  v14 = [(PHLocalVideoViewController *)self localVideoView];
  [v14 setBounds:{v10, v11, v12, v13}];

  v28 = v35;
  v29 = v36;
  v30 = v37;
  v15 = [(PHLocalVideoViewController *)self localVideoView];
  v25 = v28;
  v26 = v29;
  v27 = v30;
  [v15 setTransform:&v25];

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
  {
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v20 = [(PHLocalVideoViewController *)self backVideoView];
    [v20 setBounds:{v16, v17, v18, v19}];

    v22 = v35;
    v23 = v36;
    v24 = v37;
    v21 = [(PHLocalVideoViewController *)self backVideoView];
    v25 = v22;
    v26 = v23;
    v27 = v24;
    [v21 setTransform:&v25];
  }
}

- (void)updateViewControllerForOrientation:(int64_t)a3
{
  if ([(PHLocalVideoViewController *)self supportsAutoRotation])
  {

    [(PHLocalVideoViewController *)self _applyAutoRotationCorrectionForOrientation:a3 withTransitionCoordinator:0];
  }

  else
  {
    v5 = sub_100003B9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController.updateViewControllerForOrientation: Ignoring since supportsAutoRotation = NO", v8, 2u);
    }

    v6 = [(PHLocalVideoViewController *)self featureFlags];
    v7 = [v6 previewMSROptimizationEnabled];

    if (v7)
    {
      [(PHLocalVideoViewController *)self _applyPreviewMSROptimizationTransformsForOrientation:a3];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([(PHLocalVideoViewController *)self supportsAutoRotation])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100029D7C;
    v13[3] = &unk_10010B278;
    v13[4] = self;
    v14 = v7;
    [v14 animateAlongsideTransition:v13 completion:0];
  }

  else
  {
    v8 = [(PHLocalVideoViewController *)self featureFlags];
    v9 = [v8 previewMSROptimizationEnabled];

    if (v9)
    {
      v10 = objc_opt_new();
      v11 = [v10 compose];

      -[PHLocalVideoViewController _applyPreviewMSROptimizationTransformsForOrientation:](self, "_applyPreviewMSROptimizationTransformsForOrientation:", [v11 makeInterfaceOrientationFrom:objc_msgSend(v11 whenFailing:{"deviceOrientation"), 1}]);
    }
  }

  v12.receiver = self;
  v12.super_class = PHLocalVideoViewController;
  [(PHLocalVideoViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (id)_scene
{
  v2 = [(PHLocalVideoViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  return v4;
}

- (void)startPreview
{
  if (+[NSThread isMainThread])
  {
    v3 = [(PHLocalVideoViewController *)self _scene];
    v4 = v3;
    if (v3 && (![v3 activationState] || objc_msgSend(v4, "activationState") == 1))
    {
      if ([(PHLocalVideoViewController *)self isReadyForPreview])
      {
        v5 = [(PHLocalVideoViewController *)self featureFlags];
        v6 = [v5 previewMSROptimizationEnabled];

        if (v6)
        {
          [(PHLocalVideoViewController *)self associateLocalVideoLayers];
        }

        v7 = +[TUCallCenter sharedInstance];
        v8 = [v7 videoDeviceController];

        v9 = [v8 currentInputDevice];
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

          if (!v9 || self->_isFirstLaunch && ![(PHLocalVideoViewController *)self deviceIsFrontFacingOrExternal:v9])
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
            v14 = [v8 inputDevices];
            v15 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
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
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v25 + 1) + 8 * i);
                  if ([(PHLocalVideoViewController *)self deviceIsFrontFacingOrExternal:v19])
                  {
                    [v8 setCurrentInputDevice:v19];
                    goto LABEL_37;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
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

          v21 = [(PHLocalVideoViewController *)self disabledOverlayView];

          if (v21)
          {
            v22 = [(PHLocalVideoViewController *)self disabledOverlayView];
            [v22 removeFromSuperview];

            [(PHLocalVideoViewController *)self setDisabledOverlayView:0];
          }

          v23 = [v8 currentInputDevice];

          if (v23)
          {
            [v8 startPreview];
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

      v8 = sub_100003B9C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "PHLocalVideoViewController rejected a start preview request because the client has not indicated it is ready";
        goto LABEL_19;
      }
    }

    else
    {
      v8 = sub_100003B9C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "PHLocalVideoViewController rejected a start preview request because the scene is not in the foreground";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
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

- (void)updateVideoLayers:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = 0;
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    a3 = 0;
    v4 = 1;
  }

  [(UIView *)self->_localVideoView setHidden:a3];
  backVideoView = self->_backVideoView;

  [(UIView *)backVideoView setHidden:v4];
}

- (BOOL)deviceIsFrontFacingOrExternal:(id)a3
{
  v3 = a3;
  if ([v3 position] == 2)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 deviceType];
    v4 = v5 == AVCaptureDeviceTypeExternal;
  }

  return v4;
}

- (BOOL)shouldDeferStartCameraAction
{
  v2 = [(PHLocalVideoViewController *)self featureFlags];
  if ([v2 wombatWisdomEnabled])
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
  v4 = [v3 videoDeviceController];
  [v4 stopPreview];
}

- (void)_fadeInVideo
{
  [(PHLocalVideoViewController *)self setWaitingForLocalVideoFirstFrame:0];
  v3 = [(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled];
  v4 = [(PHLocalVideoViewController *)self localVideoView];
  [v4 alpha];
  v6 = v5;
  if (!v3)
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

  v7 = [(PHLocalVideoViewController *)self backVideoView];
  [v7 alpha];
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
    v15 = self;
    v16 = 2080;
    v17 = "[PHLocalVideoViewController _ensureLocalVideoWillBecomeVisible]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", &v14, 0x16u);
  }

  if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
  {
    v4 = +[TUCallCenter sharedInstance];
    v5 = [v4 videoDeviceController];
    v6 = [v5 currentInputDevice];
    -[PHLocalVideoViewController updateVideoLayers:](self, "updateVideoLayers:", [v6 position]);

    v7 = [(PHLocalVideoViewController *)self localVideoView];
    [v7 alpha];
    if (v8 == 0.0)
    {

      goto LABEL_10;
    }

    v9 = [(PHLocalVideoViewController *)self backVideoView];
    [v9 alpha];
    v11 = v10;
  }

  else
  {
    v12 = [(PHLocalVideoViewController *)self localVideoView];
    [v12 setHidden:0];

    v7 = [(PHLocalVideoViewController *)self localVideoView];
    [v7 alpha];
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

- (void)_avFirstPreviewFrameArrived:(id)a3
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

- (void)_handleLocalCameraErrorNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:TUVideoDeviceControllerDeviceDidReceiveErrorErrorKey];

  if (v5 && [v5 code] == 32023)
  {
    v6 = sub_100003B9C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Local camera was pre-empted from FaceTime local preview", v14, 2u);
    }

    v7 = [(PHLocalVideoViewController *)self disabledOverlayView];

    if (!v7)
    {
      v8 = [PHLocalVideoDisabledOverlayView alloc];
      v9 = [(PHLocalVideoViewController *)self view];
      [v9 bounds];
      v10 = [(PHLocalVideoDisabledOverlayView *)v8 initWithFrame:?];
      [(PHLocalVideoViewController *)self setDisabledOverlayView:v10];

      v11 = [(PHLocalVideoViewController *)self disabledOverlayView];
      [v11 setAutoresizingMask:18];

      v12 = [(PHLocalVideoViewController *)self view];
      v13 = [(PHLocalVideoViewController *)self disabledOverlayView];
      [v12 addSubview:v13];
    }
  }
}

- (void)_handleLocalCameraAvailableNotification:(id)a3
{
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Local camera pre-emption ended and the camera became available", v7, 2u);
  }

  v5 = [(PHLocalVideoViewController *)self disabledOverlayView];

  if (v5)
  {
    v6 = [(PHLocalVideoViewController *)self disabledOverlayView];
    [v6 removeFromSuperview];

    [(PHLocalVideoViewController *)self setDisabledOverlayView:0];
  }
}

- (void)_handleVideoPreviewDidStartNotification:(id)a3
{
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Local preview did start notification, we'll remove the disabled overlay view if it exists", v7, 2u);
  }

  v5 = [(PHLocalVideoViewController *)self disabledOverlayView];

  if (v5)
  {
    v6 = [(PHLocalVideoViewController *)self disabledOverlayView];
    [v6 removeFromSuperview];

    [(PHLocalVideoViewController *)self setDisabledOverlayView:0];
  }
}

- (void)_handleSystemPreferredCameraChangedNotification:(id)a3
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

- (void)_handleLocalCameraUIDChangedNotification:(id)a3
{
  v4 = [(PHLocalVideoViewController *)self cachedIsUsingIPadExternalCamera];
  v5 = [(PHLocalVideoViewController *)self isUsingIPadExternalCamera];
  if (v4 != v5)
  {
    v6 = v5;
    v7 = sub_100003B9C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109376;
      v11[1] = v4;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Local camera UID changed, oldIsUsingIPadExternalCamera=%d, newIsUsingIPadExternalCamera=%d", v11, 0xEu);
    }

    v8 = [(PHLocalVideoViewController *)self localVideoView];
    [v8 setAlpha:0.0];

    if ([(PHLocalVideoViewController *)self isFaceTimeLaunchPageEnabled])
    {
      v9 = [(PHLocalVideoViewController *)self backVideoView];
      [v9 setAlpha:0.0];
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

- (void)_applyAutoRotationCorrectionForCurrentOrientationWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(PHLocalVideoViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [v8 compose];

    -[PHLocalVideoViewController _applyAutoRotationCorrectionForOrientation:withTransitionCoordinator:](self, "_applyAutoRotationCorrectionForOrientation:withTransitionCoordinator:", [v9 makeInterfaceOrientationFrom:objc_msgSend(v9 whenFailing:{"deviceOrientation"), objc_msgSend(v7, "interfaceOrientation")}], v4);
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
  v3 = [(PHLocalVideoViewController *)self showsLocalPreviewStatusBarGradient];
  localVideoStatusBarGradientView = self->_localVideoStatusBarGradientView;
  if (v3)
  {
    if (!localVideoStatusBarGradientView)
    {
      v5 = [(PHLocalVideoViewController *)self view];
      [v5 bounds];
      v7 = v6;

      v8 = [[PHStatusBarGradientView alloc] initWithFrame:0.0, 0.0, v7, 40.0];
      v9 = self->_localVideoStatusBarGradientView;
      self->_localVideoStatusBarGradientView = &v8->super;

      [(UIView *)self->_localVideoStatusBarGradientView setAutoresizingMask:34];
      v10 = [(PHLocalVideoViewController *)self view];
      [v10 addSubview:self->_localVideoStatusBarGradientView];

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