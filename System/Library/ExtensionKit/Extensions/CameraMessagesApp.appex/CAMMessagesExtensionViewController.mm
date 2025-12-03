@interface CAMMessagesExtensionViewController
+ (int64_t)_AVFlashModeForCAMTorchMode:(int64_t)mode;
+ (int64_t)_CAMTorchModeForAVFlashMode:(int64_t)mode;
+ (void)_removeChildViewController:(id)controller;
+ (void)_startRegularCamera:(id)camera;
+ (void)_stopRegularCamera:(id)camera;
+ (void)initialize;
- (BOOL)_isReviewControllerPresented;
- (BOOL)_shouldDisableCameraForMultitasking;
- (BOOL)_transitionIfPossibleToNextCaptureState:(int64_t)state;
- (BOOL)assetExplorerReviewScreenViewController:(id)controller canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (BOOL)assetExplorerReviewScreenViewController:(id)controller shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (CAMMessagesExtensionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CGSize)_portraitOrientedSizeForSize:(CGSize)size;
- (id)_descriptionForState:(int64_t)state;
- (id)_reviewViewControllerForAsset:(id)asset source:(unint64_t)source;
- (id)_stopAndReleaseRegularCameraViewController;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (unint64_t)availableControlsCountForReviewTransition:(id)transition;
- (void)_adoptChildViewController:(id)controller;
- (void)_createAndEmbedRegularCameraViewControllerIfNecessary;
- (void)_dismissReviewController;
- (void)_handleHostDidEnterBackgroundNotification:(id)notification;
- (void)_handlePreviewDidStartRunning:(id)running;
- (void)_prepareForPresentationWithCompletionHandler:(id)handler;
- (void)_presentReviewControllerForAsset:(id)asset source:(unint64_t)source;
- (void)_regularCameraDidStartCaptureSession;
- (void)_regularCameraDidStopCaptureSession;
- (void)_saveAssetIfNeeded:(id)needed;
- (void)_setCaptureState:(int64_t)state;
- (void)_startActiveCameraSession;
- (void)_startRegularCamera;
- (void)_stopRegularCamera;
- (void)_transportAsset:(id)asset forCompletionAction:(unint64_t)action sourceType:(unint64_t)type suppressLivePhoto:(BOOL)photo completion:(id)completion;
- (void)_updateLayoutParametersForReviewBarsModel:(id)model viewBounds:(CGRect)bounds orientation:(int64_t)orientation forceLayout:(BOOL)layout;
- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d;
- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)cancel;
- (void)assetExplorerReviewScreenViewControllerDidPressRetake:(id)retake;
- (void)cameraViewController:(id)controller didCaptureAVAsset:(id)asset andAudioMix:(id)mix withProperties:(id)properties error:(id)error;
- (void)cameraViewController:(id)controller didCaptureLivePhoto:(id)photo withProperties:(id)properties error:(id)error;
- (void)cameraViewController:(id)controller didCapturePhoto:(id)photo withProperties:(id)properties error:(id)error;
- (void)cameraViewControllerDidResumeCameraSession:(id)session;
- (void)cameraViewControllerDidSuspendCameraSession:(id)session;
- (void)cameraViewControllerRequestedDismissal:(id)dismissal;
- (void)dealloc;
- (void)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CAMMessagesExtensionViewController

+ (void)initialize
{
  CAMSignpostWithIDAndArgs();

  +[CAMCaptureEngine preheatCaptureResources];
}

- (CAMMessagesExtensionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  bundleCopy = bundle;
  nameCopy = name;
  CAMSignpostWithIDAndArgs();
  Current = CFAbsoluteTimeGetCurrent();
  v16.receiver = self;
  v16.super_class = CAMMessagesExtensionViewController;
  v9 = [(CAMMessagesExtensionViewController *)&v16 initWithNibName:nameCopy bundle:bundleCopy];

  if (v9)
  {
    [(CAMMessagesExtensionViewController *)v9 _setLogReferenceTime:Current];
    [(CAMMessagesExtensionViewController *)v9 _setLogReferenceDescription:@"init"];
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CAMMessagesExtensionViewController init", v15, 2u);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v9 selector:"_handlePreviewDidStartRunning:" name:AVCaptureVideoPreviewLayerDidStartRunningNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v9 selector:"_handleHostDidEnterBackgroundNotification:" name:NSExtensionHostDidEnterBackgroundNotification object:0];

    [objc_opt_class() registerActivityAttribution];
    CAMSignpostWithIDAndArgs();
    v13 = v9;
  }

  return v9;
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CAMMessagesExtensionViewController dealloc", buf, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  _stopAndReleaseRegularCameraViewController = [(CAMMessagesExtensionViewController *)self _stopAndReleaseRegularCameraViewController];
  v6.receiver = self;
  v6.super_class = CAMMessagesExtensionViewController;
  [(CAMMessagesExtensionViewController *)&v6 dealloc];
}

- (void)_prepareForPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  CAMSignpostWithIDAndArgs();
  Current = CFAbsoluteTimeGetCurrent();
  _logReferenceDescription = [(CAMMessagesExtensionViewController *)self _logReferenceDescription];

  if (_logReferenceDescription)
  {
    [(CAMMessagesExtensionViewController *)self _logReferenceTime];
    v9 = v8;
    v10 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = NSStringFromSelector(a2);
    _logReferenceDescription2 = [(CAMMessagesExtensionViewController *)self _logReferenceDescription];
    v13 = 138543874;
    v14 = v11;
    v15 = 2048;
    v16 = Current - v9;
    v17 = 2114;
    v18 = _logReferenceDescription2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %.3f seconds after %{public}@", &v13, 0x20u);
  }

  else
  {
    [(CAMMessagesExtensionViewController *)self _setLogReferenceTime:Current];
    [(CAMMessagesExtensionViewController *)self _setLogReferenceDescription:@"_prepareForPresentationWithCompletionHandler"];
    v10 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = NSStringFromSelector(a2);
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", &v13, 0xCu);
  }

LABEL_7:
  if (![(CAMMessagesExtensionViewController *)self _captureState])
  {
    [(CAMMessagesExtensionViewController *)self _setCaptureState:1];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  CAMSignpostWithIDAndArgs();
}

- (void)_handlePreviewDidStartRunning:(id)running
{
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMMessagesExtensionViewController *)self _logReferenceTime];
  v6 = v5;
  v7 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _logReferenceDescription = [(CAMMessagesExtensionViewController *)self _logReferenceDescription];
    *buf = 134218242;
    v11 = Current - v6;
    v12 = 2114;
    v13 = _logReferenceDescription;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AVCaptureVideoPreviewLayerDidStartRunningNotification %.3f seconds after %{public}@. Preloading frameworks.", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002704;
  block[3] = &unk_1000104D0;
  block[4] = self;
  if (qword_100015AD0 != -1)
  {
    dispatch_once(&qword_100015AD0, block);
  }
}

- (void)dismiss
{
  CAMSignpostWithIDAndArgs();
  v3.receiver = self;
  v3.super_class = CAMMessagesExtensionViewController;
  [(CAMMessagesExtensionViewController *)&v3 dismiss];
}

- (void)viewDidLoad
{
  CAMSignpostWithIDAndArgs();
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMMessagesExtensionViewController *)self _logReferenceTime];
  v6 = v5;
  v7 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    _logReferenceDescription = [(CAMMessagesExtensionViewController *)self _logReferenceDescription];
    *buf = 138543874;
    v14 = v8;
    v15 = 2048;
    v16 = Current - v6;
    v17 = 2114;
    v18 = _logReferenceDescription;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %.3f seconds after %{public}@", buf, 0x20u);
  }

  v12.receiver = self;
  v12.super_class = CAMMessagesExtensionViewController;
  [(CAMMessagesExtensionViewController *)&v12 viewDidLoad];
  [(CAMMessagesExtensionViewController *)self _setCaptureState:1];
  v10 = dispatch_time(0, 2000000000);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002AE0;
  v11[3] = &unk_1000104F8;
  v11[4] = self;
  v11[5] = 0x4000000000000000;
  dispatch_after(v10, &_dispatch_main_q, v11);
  CAMSignpostWithIDAndArgs();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  CAMSignpostWithIDAndArgs();
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMMessagesExtensionViewController *)self _logReferenceTime];
  v8 = v7;
  v9 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    _logReferenceDescription = [(CAMMessagesExtensionViewController *)self _logReferenceDescription];
    *buf = 138543874;
    v19 = v10;
    v20 = 2048;
    v21 = Current - v8;
    v22 = 2114;
    v23 = _logReferenceDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %.3f seconds after %{public}@", buf, 0x20u);
  }

  v17.receiver = self;
  v17.super_class = CAMMessagesExtensionViewController;
  [(CAMMessagesExtensionViewController *)&v17 viewWillAppear:appearCopy];
  [(CAMMessagesExtensionViewController *)self _setDidReceiveViewWillAppear:1];
  [(CAMMessagesExtensionViewController *)self _setCaptureState:1];
  [(CAMMessagesExtensionViewController *)self _startActiveCameraSession];
  view = [(CAMMessagesExtensionViewController *)self view];
  window = [view window];
  layer = [window layer];
  context = [layer context];
  LODWORD(v16) = 1065361605;
  [context setDesiredDynamicRange:v16];

  CAMSignpostWithIDAndArgs();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  CAMSignpostWithIDAndArgs();
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMMessagesExtensionViewController *)self _logReferenceTime];
  v8 = v7;
  v9 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    _logReferenceDescription = [(CAMMessagesExtensionViewController *)self _logReferenceDescription];
    *buf = 138543874;
    v14 = v10;
    v15 = 2048;
    v16 = Current - v8;
    v17 = 2114;
    v18 = _logReferenceDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %.3f seconds after %{public}@", buf, 0x20u);
  }

  v12.receiver = self;
  v12.super_class = CAMMessagesExtensionViewController;
  [(CAMMessagesExtensionViewController *)&v12 viewDidAppear:appearCopy];
  CAMSignpostWithIDAndArgs();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  CAMSignpostWithIDAndArgs();
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMMessagesExtensionViewController *)self _logReferenceTime];
  v8 = v7;
  v9 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    _logReferenceDescription = [(CAMMessagesExtensionViewController *)self _logReferenceDescription];
    *buf = 138543874;
    v14 = v10;
    v15 = 2048;
    v16 = Current - v8;
    v17 = 2114;
    v18 = _logReferenceDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %.3f seconds after %{public}@", buf, 0x20u);
  }

  v12.receiver = self;
  v12.super_class = CAMMessagesExtensionViewController;
  [(CAMMessagesExtensionViewController *)&v12 viewWillDisappear:disappearCopy];
  [(CAMMessagesExtensionViewController *)self _stopActiveCameraSession];
  CAMSignpostWithIDAndArgs();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  CAMSignpostWithIDAndArgs();
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMMessagesExtensionViewController *)self _logReferenceTime];
  v8 = v7;
  v9 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    _logReferenceDescription = [(CAMMessagesExtensionViewController *)self _logReferenceDescription];
    *buf = 138543874;
    v14 = v10;
    v15 = 2048;
    v16 = Current - v8;
    v17 = 2114;
    v18 = _logReferenceDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %.3f seconds after %{public}@", buf, 0x20u);
  }

  v12.receiver = self;
  v12.super_class = CAMMessagesExtensionViewController;
  [(CAMMessagesExtensionViewController *)&v12 viewDidDisappear:disappearCopy];
  [(CAMMessagesExtensionViewController *)self _dismissReviewController];
  [(CAMMessagesExtensionViewController *)self _setCaptureState:0];
  [(CAMMessagesExtensionViewController *)self _setLogReferenceDescription:0];
  [(CAMMessagesExtensionViewController *)self _setLogReferenceTime:0.0];
  CAMSignpostWithIDAndArgs();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v18.receiver = self;
  v18.super_class = CAMMessagesExtensionViewController;
  [(CAMMessagesExtensionViewController *)&v18 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  _reviewController = [(CAMMessagesExtensionViewController *)self _reviewController];
  reviewBarsModel = [_reviewController reviewBarsModel];
  view = [_reviewController view];
  window = [view window];

  if (window)
  {
    _toWindowOrientation = [window _toWindowOrientation];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000033C0;
    v13[3] = &unk_100010520;
    v15 = width;
    v16 = height;
    v13[4] = self;
    v14 = reviewBarsModel;
    v17 = _toWindowOrientation;
    [coordinatorCopy animateAlongsideTransition:v13 completion:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = CAMMessagesExtensionViewController;
  [(CAMMessagesExtensionViewController *)&v2 viewWillLayoutSubviews];
}

- (void)_adoptChildViewController:(id)controller
{
  if (controller)
  {
    controllerCopy = controller;
    view = [controllerCopy view];
    view2 = [(CAMMessagesExtensionViewController *)self view];
    [(CAMMessagesExtensionViewController *)self addChildViewController:controllerCopy];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    leftAnchor = [view leftAnchor];
    leftAnchor2 = [view2 leftAnchor];
    v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v21[0] = v17;
    rightAnchor = [view rightAnchor];
    rightAnchor2 = [view2 rightAnchor];
    v6 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v21[1] = v6;
    topAnchor = [view topAnchor];
    topAnchor2 = [view2 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v21[2] = v9;
    [view bottomAnchor];
    v10 = v14 = self;
    bottomAnchor = [view2 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:bottomAnchor];
    v21[3] = v12;
    v13 = [NSArray arrayWithObjects:v21 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    [controllerCopy didMoveToParentViewController:v14];
  }
}

+ (void)_removeChildViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy willMoveToParentViewController:0];
  view = [controllerCopy view];
  [view removeFromSuperview];

  [controllerCopy removeFromParentViewController];
}

- (void)_createAndEmbedRegularCameraViewControllerIfNecessary
{
  if (!self->__regularCameraViewController)
  {
    CAMSignpostWithIDAndArgs();
    view = [(CAMMessagesExtensionViewController *)self view];
    v4 = CAMLayoutStyleForView();

    v5 = [[CAMCameraViewController alloc] initWithOverrides:0 initialLayoutStyle:v4 privateOptions:5];
    regularCameraViewController = self->__regularCameraViewController;
    self->__regularCameraViewController = v5;

    [(CAMCameraViewController *)self->__regularCameraViewController setUberDelegate:self];
    [(CAMCameraViewController *)self->__regularCameraViewController setAutomaticallyManagesCameraSession:0];
    [(CAMCameraViewController *)self->__regularCameraViewController setPersistenceBehavior:1];
    [(CAMCameraViewController *)self->__regularCameraViewController setDisablingAdditionalCaptures:1];
    [(CAMCameraViewController *)self->__regularCameraViewController setDisablingMultipleCaptureFeatures:1];
    [(CAMMessagesExtensionViewController *)self _adoptChildViewController:self->__regularCameraViewController];

    CAMSignpostWithIDAndArgs();
  }
}

- (id)_stopAndReleaseRegularCameraViewController
{
  _regularCameraViewController = [(CAMMessagesExtensionViewController *)self _regularCameraViewController];
  if (_regularCameraViewController)
  {
    [(CAMCameraViewController *)self->__regularCameraViewController setUberDelegate:0];
    regularCameraViewController = self->__regularCameraViewController;
    self->__regularCameraViewController = 0;

    [objc_opt_class() _stopRegularCamera:_regularCameraViewController];
    v5 = _regularCameraViewController;
  }

  return _regularCameraViewController;
}

- (void)_startActiveCameraSession
{
  if ([(CAMMessagesExtensionViewController *)self _captureState]== 1)
  {

    [(CAMMessagesExtensionViewController *)self _startRegularCamera];
  }
}

- (void)_startRegularCamera
{
  _captureState = [(CAMMessagesExtensionViewController *)self _captureState];
  if (_captureState)
  {
    if (_captureState == 1)
    {
      v4 = objc_opt_class();
      _regularCameraViewController = [(CAMMessagesExtensionViewController *)self _regularCameraViewController];
      [v4 _startRegularCamera:?];
    }
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CAMMessagesExtensionViewController *)self _descriptionForState:[(CAMMessagesExtensionViewController *)self _captureState]];
      *buf = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Should not be trying to start regular camera from %{public}@", buf, 0xCu);
    }
  }
}

- (void)_stopRegularCamera
{
  v3 = objc_opt_class();
  _regularCameraViewController = [(CAMMessagesExtensionViewController *)self _regularCameraViewController];
  [v3 _stopRegularCamera:_regularCameraViewController];
}

+ (void)_startRegularCamera:(id)camera
{
  cameraCopy = camera;
  if (cameraCopy)
  {
    CAMSignpostWithIDAndArgs();
    [cameraCopy resumeCameraSession];
  }

  else
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trying to start RegularCamera but no view controller found", v5, 2u);
    }
  }
}

+ (void)_stopRegularCamera:(id)camera
{
  if (camera)
  {
    cameraCopy = camera;
    CAMSignpostWithIDAndArgs();
    [cameraCopy suspendCameraSession];
  }
}

- (void)_setCaptureState:(int64_t)state
{
  captureState = self->__captureState;
  if (captureState != state)
  {
    if ([(CAMMessagesExtensionViewController *)self _isValidStateTransitionFrom:self->__captureState to:state])
    {
      CAMSignpostWithIDAndArgs();
      [(CAMMessagesExtensionViewController *)self _stateChangeReferenceTime];
      v7 = v6;
      [(CAMMessagesExtensionViewController *)self _setStateChangeReferenceTime:CFAbsoluteTimeGetCurrent()];
      if (v7 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        [(CAMMessagesExtensionViewController *)self _stateChangeReferenceTime];
        v9 = v8 - v7;
      }

      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(CAMMessagesExtensionViewController *)self _descriptionForState:self->__captureState];
        v13 = [(CAMMessagesExtensionViewController *)self _descriptionForState:state];
        v17 = 138543874;
        v18 = v12;
        v19 = 2114;
        v20 = v13;
        v21 = 2048;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Changing state from %{public}@ to %{public}@ (took %.3f seconds)", &v17, 0x20u);
      }

      self->__captureState = state;
      if (state == 1)
      {
        [(CAMMessagesExtensionViewController *)self _createAndEmbedRegularCameraViewControllerIfNecessary];
        [(CAMMessagesExtensionViewController *)self _startRegularCamera];
      }

      else if (!state)
      {
        _stopAndReleaseRegularCameraViewController = [(CAMMessagesExtensionViewController *)self _stopAndReleaseRegularCameraViewController];
        [objc_opt_class() _removeChildViewController:_stopAndReleaseRegularCameraViewController];
      }
    }

    else
    {
      v10 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = [(CAMMessagesExtensionViewController *)self _descriptionForState:captureState];
        v16 = [(CAMMessagesExtensionViewController *)self _descriptionForState:state];
        v17 = 138543618;
        v18 = v15;
        v19 = 2114;
        v20 = v16;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Ignoring invalid transition from %{public}@ to %{public}@", &v17, 0x16u);
      }
    }
  }
}

- (BOOL)_transitionIfPossibleToNextCaptureState:(int64_t)state
{
  _captureState = [(CAMMessagesExtensionViewController *)self _captureState];
  v6 = [(CAMMessagesExtensionViewController *)self _isValidStateTransitionFrom:_captureState to:state];
  if (v6)
  {
    if ([(CAMMessagesExtensionViewController *)self _isReviewControllerPresented])
    {
      v7 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(CAMMessagesExtensionViewController *)self _descriptionForState:_captureState];
        v9 = [(CAMMessagesExtensionViewController *)self _descriptionForState:state];
        v11 = 138543618;
        v12 = v8;
        v13 = 2114;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring capture state transition from %{public}@ to %{public}@ because review controller is presented", &v11, 0x16u);
      }

      LOBYTE(v6) = 0;
    }

    else
    {
      [(CAMMessagesExtensionViewController *)self _setCaptureState:state];
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (id)_descriptionForState:(int64_t)state
{
  v3 = @"RegularCamera";
  if (state != 1)
  {
    v3 = 0;
  }

  if (state)
  {
    return v3;
  }

  else
  {
    return @"None";
  }
}

- (BOOL)_isReviewControllerPresented
{
  _reviewController = [(CAMMessagesExtensionViewController *)self _reviewController];
  v3 = _reviewController != 0;

  return v3;
}

- (void)_presentReviewControllerForAsset:(id)asset source:(unint64_t)source
{
  assetCopy = asset;
  CAMSignpostWithIDAndArgs();
  v7 = objc_alloc_init(CAMAnalyticsMessagesCaptureEvent);
  [v7 populateFromReviewAsset:assetCopy withSourceType:source];
  [v7 publish];
  [(CAMMessagesExtensionViewController *)self _stopActiveCameraSession];
  v8 = [(CAMMessagesExtensionViewController *)self _reviewViewControllerForAsset:assetCopy source:source];
  [v8 setModalPresentationStyle:0];
  [v8 setModalTransitionStyle:2];
  [(CAMMessagesExtensionViewController *)self _setCurrentReviewAssset:assetCopy];

  [(CAMMessagesExtensionViewController *)self _setReviewController:v8];
  _regularCameraViewController = [(CAMMessagesExtensionViewController *)self _regularCameraViewController];
  [_regularCameraViewController setMessagesTransitionState:1 animated:1];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004160;
  v10[3] = &unk_1000104D0;
  v10[4] = self;
  [(CAMMessagesExtensionViewController *)self presentViewController:v8 animated:1 completion:v10];
  CAMSignpostWithIDAndArgs();
}

- (void)_dismissReviewController
{
  CAMSignpostWithIDAndArgs();
  _regularCameraViewController = [(CAMMessagesExtensionViewController *)self _regularCameraViewController];
  [_regularCameraViewController setMessagesTransitionState:3 animated:1];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000043A4;
  v4[3] = &unk_1000104D0;
  v4[4] = self;
  [(CAMMessagesExtensionViewController *)self dismissViewControllerAnimated:1 completion:v4];
  [(CAMMessagesExtensionViewController *)self _setCurrentReviewAssset:0];
  [(CAMMessagesExtensionViewController *)self _setReviewController:0];
  CAMSignpostWithIDAndArgs();
}

- (void)_updateLayoutParametersForReviewBarsModel:(id)model viewBounds:(CGRect)bounds orientation:(int64_t)orientation forceLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  modelCopy = model;
  view = [(CAMMessagesExtensionViewController *)self view];
  v15 = CAMLayoutStyleForView();

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000044DC;
  v16[3] = &unk_100010588;
  *&v16[5] = x;
  *&v16[6] = y;
  *&v16[7] = width;
  *&v16[8] = height;
  v16[4] = self;
  v16[9] = v15;
  v16[10] = orientation;
  layoutCopy = layout;
  [modelCopy performChanges:v16];
}

- (id)_reviewViewControllerForAsset:(id)asset source:(unint64_t)source
{
  assetCopy = asset;
  v6 = objc_alloc_init(PUReviewDataSource);
  [v6 insertAsset:assetCopy];
  v19 = [[PUReviewAssetsDataSourceManager alloc] initWithReviewDataSource:v6];
  v7 = objc_alloc_init(PUReviewScreenBarsModel);
  view = [(CAMMessagesExtensionViewController *)self view];
  window = [view window];

  _windowInterfaceOrientation = [window _windowInterfaceOrientation];
  view2 = [(CAMMessagesExtensionViewController *)self view];
  [view2 bounds];
  [(CAMMessagesExtensionViewController *)self _updateLayoutParametersForReviewBarsModel:v7 viewBounds:_windowInterfaceOrientation orientation:0 forceLayout:?];

  v12 = [PUAssetExplorerReviewScreenViewController alloc];
  v13 = objc_alloc_init(PUReviewAssetsMediaProvider);
  v14 = [NSIndexPath indexPathForRow:0 inSection:0];
  identifier = [assetCopy identifier];

  v16 = [NSSet setWithObject:identifier];
  v17 = [v12 initWithDataSourceManager:v19 mediaProvider:v13 reviewAssetProvider:0 initialIndexPath:v14 initialSelectedAssetUUIDs:v16 initialDisabledLivePhotoAssetUUIDs:0 sourceType:source reviewBarsModel:v7 options:1];

  [v17 setDelegate:self];

  return v17;
}

- (BOOL)assetExplorerReviewScreenViewController:(id)controller canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  if (type > 7)
  {
    return 0;
  }

  if (((1 << type) & 0xD7) != 0)
  {
    return 1;
  }

  return type == 5 && [asset mediaType] == 1;
}

- (BOOL)assetExplorerReviewScreenViewController:(id)controller shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  v8 = assetCopy;
  if (type > 7)
  {
    goto LABEL_6;
  }

  if (((1 << type) & 0xF2) == 0)
  {
    if (((1 << type) & 5) != 0)
    {
      LOBYTE(v9) = 1;
      goto LABEL_7;
    }

LABEL_6:
    LOBYTE(v9) = 0;
    goto LABEL_7;
  }

  v9 = [assetCopy isTemporaryPlaceholder] ^ 1;
LABEL_7:

  return v9;
}

- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d
{
  controllerCopy = controller;
  iDsCopy = iDs;
  allValues = [d allValues];
  firstObject = [allValues firstObject];
  if (firstObject)
  {
    _currentReviewAssset = firstObject;

LABEL_4:
    identifier = [_currentReviewAssset identifier];
    v17 = [iDsCopy containsObject:identifier];

    view = [(CAMMessagesExtensionViewController *)self view];
    window = [view window];

    [window setUserInteractionEnabled:0];
    [(CAMMessagesExtensionViewController *)self _saveAssetIfNeeded:_currentReviewAssset];
    sourceType = [controllerCopy sourceType];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100004A7C;
    v23[3] = &unk_1000105B0;
    v24 = window;
    selfCopy = self;
    v21 = window;
    [(CAMMessagesExtensionViewController *)self _transportAsset:_currentReviewAssset forCompletionAction:action sourceType:sourceType suppressLivePhoto:v17 completion:v23];

    goto LABEL_5;
  }

  _currentReviewAssset = [(CAMMessagesExtensionViewController *)self _currentReviewAssset];

  if (_currentReviewAssset)
  {
    goto LABEL_4;
  }

  v22 = os_log_create("com.apple.camera", "CameraMessagesApp");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100007864();
  }

  [(CAMMessagesExtensionViewController *)self dismiss];
LABEL_5:
}

- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)cancel
{
  _currentReviewAssset = [(CAMMessagesExtensionViewController *)self _currentReviewAssset];
  v5 = +[NSProcessInfo processInfo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004C24;
  v9[3] = &unk_1000105D8;
  v10 = _currentReviewAssset;
  v6 = _currentReviewAssset;
  [v5 performExpiringActivityWithReason:@"Marking files purgeable" usingBlock:v9];

  v7 = os_log_create("com.apple.camera", "CameraMessagesApp");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dismissing from assetExplorerReviewScreenViewControllerDidPressCancel", v8, 2u);
  }

  [(CAMMessagesExtensionViewController *)self dismiss];
}

- (void)assetExplorerReviewScreenViewControllerDidPressRetake:(id)retake
{
  _currentReviewAssset = [(CAMMessagesExtensionViewController *)self _currentReviewAssset];
  v5 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004D64;
  block[3] = &unk_1000104D0;
  v8 = _currentReviewAssset;
  v6 = _currentReviewAssset;
  dispatch_async(v5, block);

  [(CAMMessagesExtensionViewController *)self _dismissReviewController];
  [(CAMMessagesExtensionViewController *)self _startActiveCameraSession];
}

- (void)_transportAsset:(id)asset forCompletionAction:(unint64_t)action sourceType:(unint64_t)type suppressLivePhoto:(BOOL)photo completion:(id)completion
{
  photoCopy = photo;
  assetCopy = asset;
  completionCopy = completion;
  if (type == 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = 5;
  }

  activeConversation = [(CAMMessagesExtensionViewController *)self activeConversation];
  if (activeConversation)
  {
    v16 = [CAMAssetTransportController alloc];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v17 = qword_100015AF0;
    v38 = qword_100015AF0;
    if (!qword_100015AF0)
    {
      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_10000616C;
      v33 = &unk_100010660;
      v34 = &v35;
      sub_10000616C(&v30);
      v17 = v36[3];
    }

    v18 = v17;
    _Block_object_dispose(&v35, 8);
    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v19 = qword_100015AF8;
    v38 = qword_100015AF8;
    if (!qword_100015AF8)
    {
      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_100006328;
      v33 = &unk_100010660;
      v34 = &v35;
      sub_100006328(&v30);
      v19 = v36[3];
    }

    v29 = completionCopy;
    v20 = photoCopy;
    v21 = v19;
    _Block_object_dispose(&v35, 8);
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v22 = qword_100015B00;
    v38 = qword_100015B00;
    if (!qword_100015B00)
    {
      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_100006380;
      v33 = &unk_100010660;
      v34 = &v35;
      v23 = sub_1000061C4();
      v24 = dlsym(v23, "kUTTypeAssetPreviewImage");
      *(v34[1] + 24) = v24;
      qword_100015B00 = *(v34[1] + 24);
      v22 = v36[3];
    }

    _Block_object_dispose(&v35, 8);
    if (!v22)
    {
      v28 = sub_1000078CC();
      _Block_object_dispose(&v35, 8);
      _Unwind_Resume(v28);
    }

    v25 = [(CAMAssetTransportController *)v16 initWithConversation:activeConversation packageGeneratorClass:v17 statisticsManagerClass:v19 previewImageKey:*v22];
    if (action == 1)
    {
      CAMSignpostWithIDAndArgs();
      v27 = v20;
      completionCopy = v29;
      [v25 sendAsset:assetCopy suppressLivePhoto:v27 mediaOrigin:v14 completion:v29];
    }

    else if (action)
    {
      completionCopy = v29;
    }

    else
    {
      CAMSignpostWithIDAndArgs();
      v26 = v20;
      completionCopy = v29;
      [v25 stageAsset:assetCopy suppressLivePhoto:v26 mediaOrigin:v14 completion:v29];
    }
  }

  else
  {
    v25 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000078F0();
    }
  }
}

- (void)_saveAssetIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[CAMUserPreferences preferences];
  if ([v4 saveMessagesCapturesPhotoLibrary])
  {
    v5 = +[PHPhotoLibrary sharedPhotoLibrary];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000051E4;
    v6[3] = &unk_1000104D0;
    v7 = neededCopy;
    [v5 performChanges:v6 completionHandler:&stru_100010618];
  }
}

- (BOOL)_shouldDisableCameraForMultitasking
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isSplitScreenSupported = [v3 isSplitScreenSupported];

  if ([(CAMMessagesExtensionViewController *)self isViewLoaded])
  {
    view = [(CAMMessagesExtensionViewController *)self view];
  }

  else
  {
    view = 0;
  }

  window = [view window];
  screen = [window screen];
  if (window)
  {
    [window bounds];
    width = v10;
    height = v12;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  if (screen)
  {
    v14 = isSplitScreenSupported;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1 && (v15 = width, v16 = height, !CGRectIsEmpty(*&x)))
  {
    [screen _referenceBounds];
    v19 = v18;
    v21 = v20;
    [(CAMMessagesExtensionViewController *)self _portraitOrientedSizeForSize:width, height];
    v17 = v23 != v21 || v22 != v19;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CGSize)_portraitOrientedSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(CAMMessagesExtensionViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen _referenceBounds];
  v9 = v8;
  v11 = v10;

  v12 = width < height;
  if (v9 < v11)
  {
    v12 = width > height;
  }

  if (v12)
  {
    v13 = width;
  }

  else
  {
    v13 = height;
  }

  if (v12)
  {
    v14 = height;
  }

  else
  {
    v14 = width;
  }

  result.height = v13;
  result.width = v14;
  return result;
}

- (void)cameraViewController:(id)controller didCapturePhoto:(id)photo withProperties:(id)properties error:(id)error
{
  if (!photo || error)
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100007924();
    }
  }

  else
  {
    v8 = [CAMCameraReviewAdapter reviewAssetForPhoto:photo withProperties:properties];
    [(CAMMessagesExtensionViewController *)self _presentReviewControllerForAsset:v8 source:2];
  }
}

- (void)cameraViewController:(id)controller didCaptureLivePhoto:(id)photo withProperties:(id)properties error:(id)error
{
  if (!photo || error)
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100007958();
    }
  }

  else
  {
    v8 = [CAMCameraReviewAdapter reviewAssetForLivePhoto:photo withProperties:properties];
    [(CAMMessagesExtensionViewController *)self _presentReviewControllerForAsset:v8 source:2];
  }
}

- (void)cameraViewController:(id)controller didCaptureAVAsset:(id)asset andAudioMix:(id)mix withProperties:(id)properties error:(id)error
{
  if (!asset || error)
  {
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000798C();
    }
  }

  else
  {
    v9 = [CAMCameraReviewAdapter reviewAssetForAVAsset:asset audioMix:mix properties:properties];
    [(CAMMessagesExtensionViewController *)self _presentReviewControllerForAsset:v9 source:2];
  }
}

- (void)cameraViewControllerDidSuspendCameraSession:(id)session
{
  sessionCopy = session;
  _regularCameraViewController = [(CAMMessagesExtensionViewController *)self _regularCameraViewController];

  if (_regularCameraViewController == sessionCopy)
  {

    [(CAMMessagesExtensionViewController *)self _regularCameraDidStopCaptureSession];
  }
}

- (void)_regularCameraDidStopCaptureSession
{
  [(CAMMessagesExtensionViewController *)self _regularCameraViewController];

  CAMSignpostWithIDAndArgs();
  v3 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CAMMessagesExtensionViewController *)self _descriptionForState:[(CAMMessagesExtensionViewController *)self _captureState]];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Regular Camera stopped while in state %{public}@, not taking action", &v5, 0xCu);
  }
}

- (void)cameraViewControllerDidResumeCameraSession:(id)session
{
  sessionCopy = session;
  _regularCameraViewController = [(CAMMessagesExtensionViewController *)self _regularCameraViewController];

  if (_regularCameraViewController == sessionCopy)
  {

    [(CAMMessagesExtensionViewController *)self _regularCameraDidStartCaptureSession];
  }
}

- (void)_regularCameraDidStartCaptureSession
{
  [(CAMMessagesExtensionViewController *)self _regularCameraViewController];

  CAMSignpostWithIDAndArgs();
  if (![(CAMMessagesExtensionViewController *)self _transitionIfPossibleToNextCaptureState:1])
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CAMMessagesExtensionViewController *)self _descriptionForState:[(CAMMessagesExtensionViewController *)self _captureState]];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Regular Camera started while in state %{public}@, not taking action", &v5, 0xCu);
    }
  }
}

- (void)cameraViewControllerRequestedDismissal:(id)dismissal
{
  v4 = os_log_create("com.apple.camera", "CameraMessagesApp");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismissing for Done button pressed", v5, 2u);
  }

  [(CAMMessagesExtensionViewController *)self dismiss];
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v6 = objc_alloc_init(CAMReviewTransitionAnimator);
  [(CAMReviewTransitionAnimator *)v6 setTransitionDirection:0];
  _regularCameraViewController = [(CAMMessagesExtensionViewController *)self _regularCameraViewController];
  [(CAMReviewTransitionAnimator *)v6 setCameraViewController:_regularCameraViewController];

  _reviewController = [(CAMMessagesExtensionViewController *)self _reviewController];
  [(CAMReviewTransitionAnimator *)v6 setReviewViewController:_reviewController];

  [(CAMReviewTransitionAnimator *)v6 setDelegate:self];

  return v6;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v4 = objc_alloc_init(CAMReviewTransitionAnimator);
  [(CAMReviewTransitionAnimator *)v4 setTransitionDirection:1];
  _regularCameraViewController = [(CAMMessagesExtensionViewController *)self _regularCameraViewController];
  [(CAMReviewTransitionAnimator *)v4 setCameraViewController:_regularCameraViewController];

  _reviewController = [(CAMMessagesExtensionViewController *)self _reviewController];
  [(CAMReviewTransitionAnimator *)v4 setReviewViewController:_reviewController];

  [(CAMReviewTransitionAnimator *)v4 setDelegate:self];

  return v4;
}

- (unint64_t)availableControlsCountForReviewTransition:(id)transition
{
  _currentReviewAssset = [(CAMMessagesExtensionViewController *)self _currentReviewAssset];
  _reviewController = [(CAMMessagesExtensionViewController *)self _reviewController];
  v6 = [(CAMMessagesExtensionViewController *)self assetExplorerReviewScreenViewController:_reviewController canPerformActionType:6 onAsset:_currentReviewAssset inAssetCollection:0];
  v7 = [(CAMMessagesExtensionViewController *)self assetExplorerReviewScreenViewController:_reviewController canPerformActionType:5 onAsset:_currentReviewAssset inAssetCollection:0];
  v8 = 1;
  if (v6)
  {
    v8 = 2;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

+ (int64_t)_CAMTorchModeForAVFlashMode:(int64_t)mode
{
  if (mode == 2)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

+ (int64_t)_AVFlashModeForCAMTorchMode:(int64_t)mode
{
  if (mode == 2)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

- (void)_handleHostDidEnterBackgroundNotification:(id)notification
{
  _reviewController = [(CAMMessagesExtensionViewController *)self _reviewController];

  if (_reviewController)
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received NSExtensionHostDidEnterBackgroundNotification but ignoring since we are showing review screen.", buf, 2u);
    }
  }

  else
  {
    _regularCameraViewController = [(CAMMessagesExtensionViewController *)self _regularCameraViewController];
    v5 = _regularCameraViewController;
    if (_regularCameraViewController && (([_regularCameraViewController isCapturingPhoto]& 1) != 0 || ([v5 isCapturingLivePhoto]& 1) != 0 || ([v5 isRecording]& 1) != 0 || [v5 isPreventingAdditionalCaptures]))
    {
      v7 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received NSExtensionHostDidEnterBackgroundNotification but ignoring since we are capturing or awaiting review.", v10, 2u);
      }
    }

    else
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received NSExtensionHostDidEnterBackgroundNotification, dismissing CameraMessagesApp extension.", v9, 2u);
      }

      [(CAMMessagesExtensionViewController *)self dismiss];
    }
  }
}

@end