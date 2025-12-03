@interface PHPIPController
+ (id)defaultPIPController;
+ (id)newScreenSharingPIPController;
- (BOOL)isPIPProxyActive;
- (BOOL)isPIPProxyActiveAndHidden;
- (BOOL)isPIPProxyInterrupted;
- (BOOL)isPreparedToAnimateToFullScreen;
- (BOOL)pipIsBeingResized;
- (BOOL)pipStateIsTransitory;
- (BOOL)shouldPIPWhenEnteringBackground;
- (BOOL)wrapperViewControllerShouldReturnRestoreWrappedViewControllerHierarchy:(id)hierarchy;
- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)animation;
- (CGSize)wrapperViewControllerPreferredContentSize:(id)size;
- (CNKFaceTimePiPSourceProviding)sourceProvider;
- (UIViewController)pipContentViewController;
- (UIWindow)windowForTransitionAnimation;
- (id)initForScreenSharing:(BOOL)sharing;
- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)animation;
- (id)stringForPIPState:(int64_t)state;
- (id)viewControllerToRestoreWhenCancellingPIP;
- (int64_t)pictureInPictureProxyContentType:(id)type;
- (void)callCenterCallStatusChangedNotification:(id)notification;
- (void)cancelPIPIfNeeded;
- (void)dealloc;
- (void)handleDisableCameraAction;
- (void)handleEnableCameraAction;
- (void)handleFlipCameraAction;
- (void)handleMuteMicrophoneAction;
- (void)handleShowSystemHUDAction;
- (void)handleUnmuteMicrophoneAction;
- (void)manuallyStopPIPWithCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pictureInPictureProxy:(id)proxy didRequestFaceTimeAction:(int64_t)action;
- (void)pictureInPictureProxy:(id)proxy didStartPictureInPictureWithAnimationType:(int64_t)type;
- (void)pictureInPictureProxy:(id)proxy didStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason;
- (void)pictureInPictureProxy:(id)proxy didUpdateStashedOrUnderLockState:(BOOL)state;
- (void)pictureInPictureProxy:(id)proxy failedToStartPictureInPictureWithAnimationType:(int64_t)type error:(id)error;
- (void)pictureInPictureProxy:(id)proxy restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler;
- (void)pictureInPictureProxy:(id)proxy willStartPictureInPictureWithAnimationType:(int64_t)type;
- (void)pictureInPictureProxy:(id)proxy willStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason;
- (void)pictureInPictureProxyPictureInPictureInterruptionBegan:(id)began;
- (void)pictureInPictureProxyPictureInPictureInterruptionEnded:(id)ended;
- (void)pictureInPictureProxyWillSetupPictureInPictureStop:(id)stop;
- (void)resetPipContentViewController;
- (void)rotatePIPDeviceOrientationTo:(int64_t)to withCompletion:(id)completion;
- (void)sceneDidUpdate;
- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status;
- (void)screenSharingStateMonitor:(id)monitor didUpdateScreenSharingBroadcastingState:(BOOL)state;
- (void)setClientSessionIdentifierFromPiPAuthorization:(id)authorization;
- (void)setPipContentViewController:(id)controller;
- (void)setPipState:(int64_t)state;
- (void)setScreenSharingTitle:(id)title andAvatarIfNeeded:(id)needed;
- (void)setSourceProvider:(id)provider;
- (void)setWindowForTransitionAnimation:(id)animation;
- (void)startPIPNow;
- (void)startPIPWithCompletion:(id)completion;
- (void)stopPIPAndStealViewController:(id)controller;
- (void)updatePIPFrame;
- (void)updatePIPProxyCameraControlStates;
- (void)updatePIPProxyControlStates;
- (void)updatePIPProxyLayerCloning;
- (void)updatePIPProxyMicrophoneControlStates;
- (void)updatePIPSize;
- (void)updatePipSharePlaySessionWithConversation:(id)conversation;
- (void)updateShouldPIPWhenEnteringBackground;
- (void)wrapperViewControllerNeedsCleanup:(id)cleanup;
@end

@implementation PHPIPController

- (void)updateShouldPIPWhenEnteringBackground
{
  shouldPIPWhenEnteringBackground = [(PHPIPController *)self shouldPIPWhenEnteringBackground];
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 1024;
    v9 = shouldPIPWhenEnteringBackground;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating shouldPIPWhenEnteringBackground to %d", &v6, 0x12u);
  }

  pipProxy = [(PHPIPController *)self pipProxy];
  [pipProxy setPictureInPictureShouldStartWhenEnteringBackground:shouldPIPWhenEnteringBackground];
}

- (BOOL)shouldPIPWhenEnteringBackground
{
  if ((+[PGPictureInPictureProxy isPictureInPictureSupported]& 1) == 0)
  {
    v11 = sub_10000B2A0();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v32 = 138543362;
    selfCopy15 = self;
    v12 = "%{public}@: isPictureInPictureSupported is false";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, &v32, 0xCu);
    return 0;
  }

  windowForTransitionAnimation = [(PHPIPController *)self windowForTransitionAnimation];

  if (!windowForTransitionAnimation)
  {
    v11 = sub_10000B2A0();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v32 = 138543362;
    selfCopy15 = self;
    v12 = "%{public}@: windowForTransitionAnimation is nil";
    goto LABEL_15;
  }

  v4 = +[TUCallCenter sharedInstance];
  currentAudioAndVideoCallCount = [v4 currentAudioAndVideoCallCount];

  if (currentAudioAndVideoCallCount == 1)
  {
    v6 = +[TUCallCenter sharedInstance];
    currentAudioAndVideoCalls = [v6 currentAudioAndVideoCalls];
    firstObject = [currentAudioAndVideoCalls firstObject];

    if (([firstObject isConnected] & 1) == 0 && objc_msgSend(firstObject, "status") != 3)
    {
      v14 = sub_10000B2A0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v32 = 138543362;
        selfCopy15 = self;
        v15 = "%{public}@: call is not connected or sending";
        goto LABEL_27;
      }

LABEL_28:
      isVideo = 0;
LABEL_29:

      return isVideo;
    }

    if ([(PHPIPController *)self isUsedForScreenSharing])
    {
      v9 = sub_10000B2A0();
      isVideo = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v32 = 138543362;
        selfCopy15 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@: pip isUsedForScreenSharing", &v32, 0xCu);
      }

      goto LABEL_29;
    }

    if (([firstObject isVideo] & 1) == 0)
    {
      v14 = sub_10000B2A0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v32 = 138543362;
        selfCopy15 = self;
        v15 = "%{public}@: call is not video";
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (([firstObject isConversation] & 1) == 0)
    {
      v16 = sub_10000B2A0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = v16;
        [firstObject isVideo];
        v18 = NSStringFromBOOL();
        v32 = 138543618;
        selfCopy15 = self;
        v34 = 2112;
        v35 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@: call isVideo is %@", &v32, 0x16u);
      }

      isVideo = [firstObject isVideo];
      goto LABEL_29;
    }

    if ([firstObject wantsHoldMusic])
    {
      v14 = sub_10000B2A0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v32 = 138543362;
        selfCopy15 = self;
        v15 = "%{public}@: call wantsHoldMusic";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v15, &v32, 0xCu);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    v19 = +[TUCallCenter sharedInstance];
    v20 = [v19 activeConversationForCall:firstObject];

    if (!v20)
    {
      v23 = sub_10000B2A0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = v23;
        [firstObject isVideo];
        v25 = NSStringFromBOOL();
        v32 = 138543618;
        selfCopy15 = self;
        v34 = 2112;
        v35 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}@: conversation is nil, call isVideo is %@", &v32, 0x16u);
      }

      isVideo = [firstObject isVideo];
      goto LABEL_42;
    }

    if ([v20 isContinuitySession])
    {
      v21 = sub_10000B2A0();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
LABEL_38:
        isVideo = 0;
LABEL_42:

        goto LABEL_29;
      }

      v32 = 138543362;
      selfCopy15 = self;
      v22 = "%{public}@: conversation presentationMode is continuitySession";
LABEL_37:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v22, &v32, 0xCu);
      goto LABEL_38;
    }

    if ([v20 state] != 2 && objc_msgSend(v20, "state") != 3)
    {
      v21 = sub_10000B2A0();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      v32 = 138543362;
      selfCopy15 = self;
      v22 = "%{public}@: conversation has not been joined";
      goto LABEL_37;
    }

    if ([v20 isOneToOneModeEnabled])
    {
      v26 = sub_10000B2A0();
      isVideo = 1;
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_42;
      }

      v32 = 138543362;
      selfCopy15 = self;
      v27 = "%{public}@: conversation isOneToOneModeEnabled";
      v28 = v26;
    }

    else
    {
      if (![(PHPIPController *)self hasParticipantVideoForActiveConversation])
      {
        v21 = sub_10000B2A0();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          goto LABEL_38;
        }

        v32 = 138543362;
        selfCopy15 = self;
        v22 = "%{public}@: conversation hasParticipantVideoForActiveConversation is false";
        goto LABEL_37;
      }

      remoteMembers = [v20 remoteMembers];
      v30 = [remoteMembers count];

      v21 = sub_10000B2A0();
      v31 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (!v30)
      {
        if (!v31)
        {
          goto LABEL_38;
        }

        v32 = 138543362;
        selfCopy15 = self;
        v22 = "%{public}@: conversation remoteMembers equals 0";
        goto LABEL_37;
      }

      if (!v31)
      {
        isVideo = 1;
        goto LABEL_42;
      }

      v32 = 138543362;
      selfCopy15 = self;
      v27 = "%{public}@: shouldPIPWhenEnteringBackground";
      v28 = v21;
      isVideo = 1;
    }

    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, v27, &v32, 0xCu);
    goto LABEL_42;
  }

  v11 = sub_10000B2A0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v32 = 138543362;
    selfCopy15 = self;
    v12 = "%{public}@: currentAudioAndVideoCallCount is not 1";
    goto LABEL_15;
  }

  return 0;
}

- (void)updatePIPProxyMicrophoneControlStates
{
  v3 = +[TUCallCenter sharedInstance];
  currentVideoCall = [v3 currentVideoCall];

  isUplinkMuted = [currentVideoCall isUplinkMuted];
  pipProxy = [(PHPIPController *)self pipProxy];
  [pipProxy setMicrophoneMuted:isUplinkMuted];
}

- (UIWindow)windowForTransitionAnimation
{
  WeakRetained = objc_loadWeakRetained(&self->_windowForTransitionAnimation);

  return WeakRetained;
}

+ (id)defaultPIPController
{
  if (qword_1003B0C50 != -1)
  {
    sub_1002542EC();
  }

  v3 = qword_1003B0C48;

  return v3;
}

- (void)updatePIPProxyControlStates
{
  [(PHPIPController *)self updatePIPProxyMicrophoneControlStates];

  [(PHPIPController *)self updatePIPProxyCameraControlStates];
}

- (void)updatePIPProxyCameraControlStates
{
  v3 = +[TUCallCenter sharedInstance];
  currentVideoCall = [v3 currentVideoCall];
  isSendingVideo = [currentVideoCall isSendingVideo];

  pipProxy = [(PHPIPController *)self pipProxy];
  [pipProxy setCameraActive:isSendingVideo];

  pipProxy2 = [(PHPIPController *)self pipProxy];
  [pipProxy2 setCanSwitchCamera:isSendingVideo];
}

- (BOOL)isPIPProxyInterrupted
{
  pipProxy = [(PHPIPController *)self pipProxy];
  isPictureInPictureInterrupted = [pipProxy isPictureInPictureInterrupted];

  return isPictureInPictureInterrupted;
}

- (BOOL)isPIPProxyActive
{
  pipProxy = [(PHPIPController *)self pipProxy];
  isPictureInPictureActive = [pipProxy isPictureInPictureActive];

  return isPictureInPictureActive;
}

- (void)updatePIPProxyLayerCloning
{
  v3 = sub_10000B2A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    if ([(PHPIPController *)self isBroadcastingScreenSharing])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    if ([(PHPIPController *)self isBeingRemoteControlled])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating disables layer cloning for PiP, isBroadcastingScreenSharing: %@ isBeingRemoteControlled: %@", &v9, 0x16u);
  }

  if ([(PHPIPController *)self isBroadcastingScreenSharing])
  {
    v7 = [(PHPIPController *)self isBeingRemoteControlled]^ 1;
  }

  else
  {
    v7 = 0;
  }

  pipProxy = [(PHPIPController *)self pipProxy];
  [pipProxy setDisablesLayerCloning:v7];
}

+ (id)newScreenSharingPIPController
{
  v2 = [[PHPIPController alloc] initForScreenSharing:1];
  [v2 setShouldObtainDismissalAssertions:0];
  return v2;
}

- (id)initForScreenSharing:(BOOL)sharing
{
  sharingCopy = sharing;
  v30.receiver = self;
  v30.super_class = PHPIPController;
  v4 = [(PHPIPController *)&v30 init];
  v5 = v4;
  if (v4)
  {
    v4->_pipState = 0;
    v4->_currentPIPAnimationStyle = 0;
    v6 = objc_opt_new();
    screenSharingMonitorFactory = v5->_screenSharingMonitorFactory;
    v5->_screenSharingMonitorFactory = v6;

    v8 = objc_opt_new();
    screenSharingInteractionControllerFactory = v5->_screenSharingInteractionControllerFactory;
    v5->_screenSharingInteractionControllerFactory = v8;

    v10 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v5->_featureFlags;
    v5->_featureFlags = v10;

    v12 = objc_alloc_init(PHPIPWrapperViewController);
    [(PHPIPController *)v5 setWrapperViewController:v12];

    wrapperViewController = [(PHPIPController *)v5 wrapperViewController];
    [wrapperViewController setDelegate:v5];

    v14 = +[PHInCallUtilities sharedInstance];
    if ([v14 isIPadIdiom] & !sharingCopy)
    {
      v15 = 2;
    }

    else
    {
      v15 = 4;
    }

    wrapperViewController2 = [(PHPIPController *)v5 wrapperViewController];
    v17 = [PGPictureInPictureProxy pictureInPictureProxyWithControlsStyle:v15 viewController:wrapperViewController2];
    [(PHPIPController *)v5 setPipProxy:v17];

    pipProxy = [(PHPIPController *)v5 pipProxy];
    [pipProxy setDelegate:v5];

    [(PHPIPController *)v5 setShouldObtainDismissalAssertions:1];
    [(PHPIPController *)v5 setIsUsedForScreenSharing:sharingCopy];
    pipProxy2 = [(PHPIPController *)v5 pipProxy];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100051180;
    v28[3] = &unk_100356E10;
    v29 = sharingCopy;
    [pipProxy2 updatePlaybackStateUsingBlock:v28];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v5 selector:"callCenterCallStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
    [v20 addObserver:v5 selector:"callCenterCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v20 addObserver:v5 selector:"callCenterCallStatusChangedNotification:" name:TUCallCenterCallConnectedNotification object:0];
    [v20 addObserver:v5 selector:"callCenterCallStatusChangedNotification:" name:TUCallUpgradedToVideoNotification object:0];
    [v20 addObserver:v5 selector:"uplinkMuteStatusChangedNotification:" name:TUCallIsUplinkMutedChangedNotification object:0];
    [v20 addObserver:v5 selector:"callIsSendingVideoChanged:" name:TUCallIsSendingVideoChangedNotification object:0];
    pipProxy3 = [(PHPIPController *)v5 pipProxy];
    [pipProxy3 addObserver:v5 forKeyPath:@"pictureInPictureActive" options:0 context:&off_100356E30];

    pipProxy4 = [(PHPIPController *)v5 pipProxy];
    [pipProxy4 addObserver:v5 forKeyPath:@"pictureInPicturePossible" options:0 context:&off_100356E38];

    v23 = +[TUCallCenter sharedInstance];
    conversationManager = [v23 conversationManager];
    [conversationManager addDelegate:v5 queue:&_dispatch_main_q];

    sharedMonitor = [(CNKScreenSharingStateMonitorFactory *)v5->_screenSharingMonitorFactory sharedMonitor];
    [sharedMonitor addObserver:v5];

    sharedController = [(CNKScreenSharingInteractionControllerFactory *)v5->_screenSharingInteractionControllerFactory sharedController];
    [sharedController addDelegate:v5];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  pipProxy = [(PHPIPController *)self pipProxy];
  [pipProxy removeObserver:self forKeyPath:@"pictureInPictureActive" context:&off_100356E30];

  pipProxy2 = [(PHPIPController *)self pipProxy];
  [pipProxy2 removeObserver:self forKeyPath:@"pictureInPicturePossible" context:&off_100356E38];

  sharedMonitor = [(CNKScreenSharingStateMonitorFactory *)self->_screenSharingMonitorFactory sharedMonitor];
  [sharedMonitor removeObserver:self];

  sharedController = [(CNKScreenSharingInteractionControllerFactory *)self->_screenSharingInteractionControllerFactory sharedController];
  [sharedController removeDelegate:self];

  v8.receiver = self;
  v8.super_class = PHPIPController;
  [(PHPIPController *)&v8 dealloc];
}

- (void)setWindowForTransitionAnimation:(id)animation
{
  animationCopy = animation;
  WeakRetained = objc_loadWeakRetained(&self->_windowForTransitionAnimation);

  if (WeakRetained != animationCopy)
  {
    v6 = sub_10000B2A0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      selfCopy = self;
      v9 = 2112;
      v10 = animationCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating PIP with window %@", &v7, 0x16u);
    }

    objc_storeWeak(&self->_windowForTransitionAnimation, animationCopy);
    [(PHPIPController *)self updateShouldPIPWhenEnteringBackground];
    [(PHPIPController *)self updatePIPFrame];
  }
}

- (void)setPipContentViewController:(id)controller
{
  controllerCopy = controller;
  wrapperViewController = [(PHPIPController *)self wrapperViewController];
  [wrapperViewController setWrappedViewController:controllerCopy];

  [(PHPIPController *)self updatePIPFrame];
}

- (UIViewController)pipContentViewController
{
  wrapperViewController = [(PHPIPController *)self wrapperViewController];
  wrappedViewController = [wrapperViewController wrappedViewController];

  return wrappedViewController;
}

- (void)setSourceProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_sourceProvider, providerCopy);
  viewControllerForPiP = [providerCopy viewControllerForPiP];

  [(PHPIPController *)self setPipContentViewController:viewControllerForPiP];
}

- (void)resetPipContentViewController
{
  wrapperViewController = [(PHPIPController *)self wrapperViewController];
  [wrapperViewController setWrappedViewController:0];
}

- (void)rotatePIPDeviceOrientationTo:(int64_t)to withCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PHPIPController *)self pipDeviceOrientation]!= to)
  {
    v7 = sub_10000B2A0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2048;
      toCopy = to;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Rotating pip to device orientation %ld", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100051820;
    v13[3] = &unk_100356E48;
    objc_copyWeak(&v15, buf);
    v13[4] = self;
    v14 = completionCopy;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100051958;
    v11[3] = &unk_100356E70;
    v11[4] = self;
    v8 = objc_retainBlock(v13);
    v12 = v8;
    v9 = objc_retainBlock(v11);
    if (to > 2)
    {
      if (to == 3)
      {
        if ([(PHPIPController *)self pipDeviceOrientation]== 1)
        {
          goto LABEL_28;
        }

        if ([(PHPIPController *)self pipDeviceOrientation]== 4)
        {
          goto LABEL_26;
        }

        if ([(PHPIPController *)self pipDeviceOrientation]!= 2)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (to != 4)
        {
          goto LABEL_30;
        }

        if ([(PHPIPController *)self pipDeviceOrientation]!= 1)
        {
          if ([(PHPIPController *)self pipDeviceOrientation]== 3)
          {
            v10 = 3;
LABEL_29:
            (v9[2])(v9, v10);
            goto LABEL_30;
          }

          if ([(PHPIPController *)self pipDeviceOrientation]== 2)
          {
            goto LABEL_28;
          }

          goto LABEL_30;
        }
      }
    }

    else
    {
      if (to != 1)
      {
        if (to == 2)
        {
          if ([(PHPIPController *)self pipDeviceOrientation]!= 1)
          {
            if ([(PHPIPController *)self pipDeviceOrientation]!= 3)
            {
              if ([(PHPIPController *)self pipDeviceOrientation]!= 4)
              {
                goto LABEL_30;
              }

              goto LABEL_19;
            }

LABEL_28:
            v10 = 1;
            goto LABEL_29;
          }

LABEL_26:
          v10 = 2;
          goto LABEL_29;
        }

LABEL_30:
        [(PHPIPController *)self setPipDeviceOrientation:to];

        objc_destroyWeak(&v15);
        objc_destroyWeak(buf);
        goto LABEL_31;
      }

      if ([(PHPIPController *)self pipDeviceOrientation]!= 3)
      {
        if ([(PHPIPController *)self pipDeviceOrientation]== 4)
        {
          goto LABEL_28;
        }

        if ([(PHPIPController *)self pipDeviceOrientation]== 2)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

LABEL_19:
    v10 = 0;
    goto LABEL_29;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_31:
}

- (id)viewControllerToRestoreWhenCancellingPIP
{
  sourceProvider = [(PHPIPController *)self sourceProvider];
  restoreViewControllerHierarchyWhenExitingPiP = [sourceProvider restoreViewControllerHierarchyWhenExitingPiP];

  if (restoreViewControllerHierarchyWhenExitingPiP)
  {
    sourceProvider2 = [(PHPIPController *)self sourceProvider];
    viewControllerForPiP = [sourceProvider2 viewControllerForPiP];
  }

  else
  {
    viewControllerForPiP = 0;
  }

  return viewControllerForPiP;
}

- (void)setScreenSharingTitle:(id)title andAvatarIfNeeded:(id)needed
{
  titleCopy = title;
  neededCopy = needed;
  if ([(PHPIPController *)self isUsedForScreenSharing])
  {
    featureFlags = [(PHPIPController *)self featureFlags];
    supportsScreenSharing = [featureFlags supportsScreenSharing];

    if (supportsScreenSharing)
    {
      v10 = sub_10000B2A0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 138543874;
        *&v15[4] = self;
        v16 = 1024;
        v17 = titleCopy != 0;
        v18 = 1024;
        v19 = neededCopy != 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating screen sharing title and avatar on PiP Proxy; hasTitle: %i; hasImage: %i", v15, 0x18u);
      }

      pipProxy = [(PHPIPController *)self pipProxy];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        pipProxy2 = [(PHPIPController *)self pipProxy];
        [pipProxy2 setScreenSharingTitle:titleCopy avatar:neededCopy];
      }

      else
      {
        v14 = sub_10000B2A0();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100254300(self, v14);
        }
      }
    }
  }
}

- (void)startPIPWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_sourceProvider);
  viewControllerForPiP = [WeakRetained viewControllerForPiP];

  [(PHPIPController *)self setPipContentViewController:viewControllerForPiP];
  [(PHPIPController *)self setStartCompletionBlock:completionCopy];

  pipProxy = [(PHPIPController *)self pipProxy];
  LODWORD(WeakRetained) = [pipProxy isPictureInPicturePossible];

  if (WeakRetained)
  {
    [(PHPIPController *)self startPIPNow];
  }

  else
  {
    [(PHPIPController *)self setShouldStartPIPWhenPossible:1];
  }
}

- (void)startPIPNow
{
  [(PHPIPController *)self setShouldStartPIPWhenPossible:0];
  pipProxy = [(PHPIPController *)self pipProxy];
  [pipProxy startPictureInPicture];
}

- (void)stopPIPAndStealViewController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_10000B2A0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    restoreUserInterfaceForPictureInPictureStopCompletionBlock = [(PHPIPController *)self restoreUserInterfaceForPictureInPictureStopCompletionBlock];
    v8 = objc_retainBlock(restoreUserInterfaceForPictureInPictureStopCompletionBlock);
    *buf = 138543618;
    selfCopy2 = self;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: stopPIPAndStealViewController (we have this restore UI block %@)", buf, 0x16u);
  }

  pipProxy = [(PHPIPController *)self pipProxy];

  if (pipProxy)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v16, &location);
    v10 = [(PHPIPController *)self wrapperViewController:_NSConcreteStackBlock];
    [v10 setWillAnimatePictureInPictureStopCompletionBlock:&v15];

    wrapperViewController = [(PHPIPController *)self wrapperViewController];
    [wrapperViewController setDidAnimatePictureInPictureStopCompletionBlock:controllerCopy];

    restoreUserInterfaceForPictureInPictureStopCompletionBlock2 = [(PHPIPController *)self restoreUserInterfaceForPictureInPictureStopCompletionBlock];

    if (restoreUserInterfaceForPictureInPictureStopCompletionBlock2)
    {
      v13 = sub_10000B2A0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: ... stopPIPAndStealViewController running the restore UI block", buf, 0xCu);
      }

      restoreUserInterfaceForPictureInPictureStopCompletionBlock3 = [(PHPIPController *)self restoreUserInterfaceForPictureInPictureStopCompletionBlock];
      restoreUserInterfaceForPictureInPictureStopCompletionBlock3[2](restoreUserInterfaceForPictureInPictureStopCompletionBlock3, 1);

      [(PHPIPController *)self setRestoreUserInterfaceForPictureInPictureStopCompletionBlock:0];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)manuallyStopPIPWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PHPIPController *)self pipState]== 2)
  {
    v5 = sub_10000B2A0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Manually calling stop picture in picture", &v7, 0xCu);
    }

    [(PHPIPController *)self setPreparedToAnimateToFullScreenCompletionBlock:completionCopy];
    pipProxy = [(PHPIPController *)self pipProxy];
    [pipProxy stopPictureInPictureAndRestoreUserInterface:1];
  }
}

- (void)cancelPIPIfNeeded
{
  if (![(PHPIPController *)self isPippedOrStartingPIP])
  {
    v7 = sub_10000B2A0();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v11 = 138543362;
    selfCopy3 = self;
    v8 = "%{public}@: No need to cancel PiP since it's not starting or active";
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v9, v10, v8, &v11, 0xCu);
    return;
  }

  pipProxy = [(PHPIPController *)self pipProxy];

  v4 = sub_10000B2A0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!pipProxy)
  {
    if (!v5)
    {
      return;
    }

    v11 = 138543362;
    selfCopy3 = self;
    v8 = "%{public}@: Not cancelling PiP because pipProxy is nil";
    v9 = v4;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  if (v5)
  {
    v11 = 138543362;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: cancelPIP", &v11, 0xCu);
  }

  pipProxy2 = [(PHPIPController *)self pipProxy];
  [pipProxy2 stopPictureInPictureAndRestoreUserInterface:0];

  [(PHPIPController *)self setPipState:3];
}

- (BOOL)isPreparedToAnimateToFullScreen
{
  restoreUserInterfaceForPictureInPictureStopCompletionBlock = [(PHPIPController *)self restoreUserInterfaceForPictureInPictureStopCompletionBlock];
  v3 = restoreUserInterfaceForPictureInPictureStopCompletionBlock != 0;

  return v3;
}

- (void)pictureInPictureProxy:(id)proxy restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler
{
  [(PHPIPController *)self setRestoreUserInterfaceForPictureInPictureStopCompletionBlock:handler];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerDidRequestReturnToFullScreenNotification" object:self];

  preparedToAnimateToFullScreenCompletionBlock = [(PHPIPController *)self preparedToAnimateToFullScreenCompletionBlock];

  if (preparedToAnimateToFullScreenCompletionBlock)
  {
    preparedToAnimateToFullScreenCompletionBlock2 = [(PHPIPController *)self preparedToAnimateToFullScreenCompletionBlock];
    preparedToAnimateToFullScreenCompletionBlock2[2]();

    [(PHPIPController *)self setPreparedToAnimateToFullScreenCompletionBlock:0];
  }
}

- (BOOL)isPIPProxyActiveAndHidden
{
  pipProxy = [(PHPIPController *)self pipProxy];
  if ([pipProxy isPictureInPictureActive])
  {
    pipProxy2 = [(PHPIPController *)self pipProxy];
    isPictureInPictureStashedOrUnderLock = [pipProxy2 isPictureInPictureStashedOrUnderLock];
  }

  else
  {
    isPictureInPictureStashedOrUnderLock = 0;
  }

  return isPictureInPictureStashedOrUnderLock;
}

- (void)setPipState:(int64_t)state
{
  if (self->_pipState != state)
  {
    self->_pipState = state;
    v5 = sub_10000B2A0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(PHPIPController *)self stringForPIPState:state];
      v9 = 138543618;
      selfCopy = self;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: PIPState changed to %@", &v9, 0x16u);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"PHPIPControllerStateDidChangeNotification" object:self userInfo:0];
  }
}

- (void)wrapperViewControllerNeedsCleanup:(id)cleanup
{
  [(PHPIPController *)self setPipState:0];
  UIAnimationDragCoefficient();
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005256C;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (BOOL)wrapperViewControllerShouldReturnRestoreWrappedViewControllerHierarchy:(id)hierarchy
{
  sourceProvider = [(PHPIPController *)self sourceProvider];
  restoreViewControllerHierarchyWhenExitingPiP = [sourceProvider restoreViewControllerHierarchyWhenExitingPiP];

  return restoreViewControllerHierarchyWhenExitingPiP;
}

- (CGSize)wrapperViewControllerPreferredContentSize:(id)size
{
  sourceProvider = [(PHPIPController *)self sourceProvider];
  [sourceProvider preferredPiPContentAspectRatio];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)stringForPIPState:(int64_t)state
{
  if (state > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_100356F38[state];
  }
}

- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)animation
{
  sourceProvider = [(PHPIPController *)self sourceProvider];
  [sourceProvider frameForRestoreAnimation];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)animation
{
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    windowForTransitionAnimation = [(PHPIPController *)self windowForTransitionAnimation];
    v9 = 138543618;
    selfCopy = self;
    v11 = 2112;
    v12 = windowForTransitionAnimation;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP controller checked which ICS window to use for PIP: %@", &v9, 0x16u);
  }

  windowForTransitionAnimation2 = [(PHPIPController *)self windowForTransitionAnimation];

  return windowForTransitionAnimation2;
}

- (void)pictureInPictureProxy:(id)proxy willStartPictureInPictureWithAnimationType:(int64_t)type
{
  v6 = sub_10000B2A0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: willStart animationType: %ld", &v9, 0x16u);
  }

  [(PHPIPController *)self setShouldStartPIPWhenPossible:0];
  if (type)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(PHPIPController *)self setCurrentPIPAnimationStyle:v7];
  pipProxy = [(PHPIPController *)self pipProxy];
  [pipProxy preferredContentSizeDidChangeForViewController];

  [(PHPIPController *)self setPipState:1];
  if ([(PHPIPController *)self shouldObtainDismissalAssertions])
  {
    [objc_msgSend(objc_opt_class() "inCallRootViewControllerClass")];
  }
}

- (void)pictureInPictureProxy:(id)proxy didStartPictureInPictureWithAnimationType:(int64_t)type
{
  v6 = sub_10000B2A0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didStart animationType: %ld", &v12, 0x16u);
  }

  if (![(PHPIPController *)self shouldPIPWhenEnteringBackground])
  {
    v7 = sub_10000B2A0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100254378(v7);
    }

    pipProxy = [(PHPIPController *)self pipProxy];
    [pipProxy stopPictureInPictureAndRestoreUserInterface:0];

    [(PHPIPController *)self setPipState:3];
    [(PHPIPController *)self updateShouldPIPWhenEnteringBackground];
  }

  if (type)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [(PHPIPController *)self setCurrentPIPAnimationStyle:v9];
  [(PHPIPController *)self setPipState:2];
  startCompletionBlock = [(PHPIPController *)self startCompletionBlock];

  if (startCompletionBlock)
  {
    startCompletionBlock2 = [(PHPIPController *)self startCompletionBlock];
    startCompletionBlock2[2]();

    [(PHPIPController *)self setStartCompletionBlock:0];
  }
}

- (void)pictureInPictureProxy:(id)proxy failedToStartPictureInPictureWithAnimationType:(int64_t)type error:(id)error
{
  errorCopy = error;
  proxyCopy = proxy;
  v10 = sub_10000B2A0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543874;
    selfCopy = self;
    v13 = 2048;
    typeCopy = type;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: failedToStart animationType: %ld error: %@", &v11, 0x20u);
  }

  [(PHPIPController *)self setCurrentPIPAnimationStyle:0];
  [proxyCopy stopPictureInPictureAndRestoreUserInterface:1];

  [(PHPIPController *)self setPipState:0];
  if ([(PHPIPController *)self shouldObtainDismissalAssertions])
  {
    [objc_msgSend(objc_opt_class() "inCallRootViewControllerClass")];
  }
}

- (void)pictureInPictureProxy:(id)proxy willStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason
{
  v8 = sub_10000B2A0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543874;
    selfCopy = self;
    v13 = 2048;
    typeCopy = type;
    v15 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: willStop animationType: %ld reason: %ld", &v11, 0x20u);
  }

  if (type)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [(PHPIPController *)self setCurrentPIPAnimationStyle:v9];
  if (reason == 1)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"PHPIPControllerWillCancelNotification" object:self];
  }
}

- (void)pictureInPictureProxy:(id)proxy didStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason
{
  v8 = sub_10000B2A0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    selfCopy = self;
    v12 = 2048;
    typeCopy = type;
    v14 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: didStop animationType: %ld reason: %ld", &v10, 0x20u);
  }

  [(PHPIPController *)self setCurrentPIPAnimationStyle:0];
  [(PHPIPController *)self setPipState:0];
  if ([(PHPIPController *)self shouldObtainDismissalAssertions])
  {
    [objc_msgSend(objc_opt_class() "inCallRootViewControllerClass")];
  }

  if (reason == 1)
  {
    pipProxy = +[NSNotificationCenter defaultCenter];
    [pipProxy postNotificationName:@"PHPIPControllerDidCancelNotification" object:self];
  }

  else
  {
    if (reason)
    {
      return;
    }

    pipProxy = [(PHPIPController *)self pipProxy];
    [pipProxy preferredContentSizeDidChangeForViewController];
  }
}

- (void)pictureInPictureProxyPictureInPictureInterruptionBegan:(id)began
{
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP interruption began", &v21, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerInterruptionChangeNotification" object:self];

  if (![(PHPIPController *)self isUsedForScreenSharing])
  {
    v6 = +[TUCallCenter sharedInstance];
    currentVideoCall = [v6 currentVideoCall];
    -[PHPIPController setVideoWasPausedForInterruption:](self, "setVideoWasPausedForInterruption:", [currentVideoCall isSendingVideo]);

    v8 = sub_10000B2A0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      videoWasPausedForInterruption = [(PHPIPController *)self videoWasPausedForInterruption];
      v21 = 138543618;
      selfCopy2 = self;
      v23 = 1024;
      v24 = videoWasPausedForInterruption;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Storing videoWasPausedForInterruption as %d before stopping sending video", &v21, 0x12u);
    }

    v11 = +[TUCallCenter sharedInstance];
    currentVideoCall2 = [v11 currentVideoCall];

    v13 = +[TUCallCenter sharedInstance];
    v14 = [v13 activeConversationForCall:currentVideoCall2];

    if ([currentVideoCall2 isConversation] && (objc_msgSend(v14, "isOneToOneModeEnabled") & 1) == 0)
    {
      if ([(PHPIPController *)self videoWasPausedForInterruption])
      {
        [currentVideoCall2 setRemoteVideoPresentationState:2];
      }

      v15 = +[TUCallCenter sharedInstance];
      videoDeviceController = [v15 videoDeviceController];
      [videoDeviceController stopPreview];
    }

    else
    {
      if ([(PHPIPController *)self videoWasPausedForInterruption])
      {
        [currentVideoCall2 setIsSendingVideo:0];
      }

      v15 = +[TUCallCenter sharedInstance];
      videoDeviceController = [v15 videoDeviceController];
      [videoDeviceController pausePreview];
    }

    if ([(PHPIPController *)self videoWasPausedForInterruption])
    {
      v17 = +[NSNotificationCenter defaultCenter];
      [v17 postNotificationName:@"PHPIPControllerDidHandleVideoMuteControlAction" object:self];
    }

    v18 = +[TUCallCenter sharedInstance];
    currentVideoCall3 = [v18 currentVideoCall];
    uniqueProxyIdentifier = [currentVideoCall3 uniqueProxyIdentifier];
    [(PHPIPController *)self setPipInterruptedCallIdentifier:uniqueProxyIdentifier];
  }
}

- (void)pictureInPictureProxyPictureInPictureInterruptionEnded:(id)ended
{
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP interruption ended", &v19, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerInterruptionChangeNotification" object:self];

  if ([(PHPIPController *)self isPipped])
  {
    if (![(PHPIPController *)self isUsedForScreenSharing])
    {
      if ([(PHPIPController *)self videoWasPausedForInterruption])
      {
        v6 = +[TUCallCenter sharedInstance];
        frontmostAudioOrVideoCall = [v6 frontmostAudioOrVideoCall];
        isVideo = [frontmostAudioOrVideoCall isVideo];

        if (isVideo)
        {
          v9 = +[TUCallCenter sharedInstance];
          currentVideoCall = [v9 currentVideoCall];

          v11 = +[TUCallCenter sharedInstance];
          v12 = [v11 activeConversationForCall:currentVideoCall];

          if ([currentVideoCall isConversation] && (objc_msgSend(v12, "isOneToOneModeEnabled") & 1) == 0)
          {
            [currentVideoCall setRemoteVideoPresentationState:1];
          }

          else
          {
            [currentVideoCall setIsSendingVideo:1];
          }

          v14 = +[TUCallCenter sharedInstance];
          videoDeviceController = [v14 videoDeviceController];
          [videoDeviceController startPreview];
        }

        [(PHPIPController *)self setVideoWasPausedForInterruption:0];
        v16 = +[NSNotificationCenter defaultCenter];
        [v16 postNotificationName:@"PHPIPControllerDidHandleVideoMuteControlAction" object:self];

        if ([(PHPIPController *)self expectingSystemInitiatedPIPInterruptionStop])
        {
          v17 = sub_10000B2A0();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138543362;
            selfCopy3 = self;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP interruption was ended by system, posting notification...", &v19, 0xCu);
          }

          v18 = +[NSNotificationCenter defaultCenter];
          [v18 postNotificationName:@"PHPIPControllerSystemInitiatedPIPInterruptionStoppedNotification" object:self];
        }
      }

      [(PHPIPController *)self setExpectingSystemInitiatedPIPInterruptionStop:0];
      [(PHPIPController *)self setPipInterruptedCallIdentifier:0];
    }
  }

  else
  {
    v13 = sub_10000B2A0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Not handling PIP interruption ended because we are not PIPped", &v19, 0xCu);
    }
  }
}

- (void)pictureInPictureProxy:(id)proxy didUpdateStashedOrUnderLockState:(BOOL)state
{
  v5 = [NSNotificationCenter defaultCenter:proxy];
  [v5 postNotificationName:@"PHPIPControllerStashChangeNotification" object:self];
}

- (void)pictureInPictureProxyWillSetupPictureInPictureStop:(id)stop
{
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP will set up for picture-in-picture stop", &v6, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerWillSetupPIPStopNotification" object:self];
}

- (int64_t)pictureInPictureProxyContentType:(id)type
{
  if ([(PHPIPController *)self isUsedForScreenSharing])
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (BOOL)pipIsBeingResized
{
  if ([(PHPIPController *)self pipState]!= 2)
  {
    return 0;
  }

  wrapperViewController = [(PHPIPController *)self wrapperViewController];
  pipIsBeingResized = [wrapperViewController pipIsBeingResized];

  return pipIsBeingResized;
}

- (void)callCenterCallStatusChangedNotification:(id)notification
{
  [(PHPIPController *)self updateShouldPIPWhenEnteringBackground];
  if ([(PHPIPController *)self pipState]== 2 && ![(PHPIPController *)self isUsedForScreenSharing])
  {
    v4 = +[TUCallCenter sharedInstance];
    incomingCall = [v4 incomingCall];
    if (incomingCall)
    {
    }

    else
    {
      v6 = +[TUCallCenter sharedInstance];
      incomingVideoCall = [v6 incomingVideoCall];

      if (!incomingVideoCall)
      {
        goto LABEL_9;
      }
    }

    v8 = sub_10000B2A0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Call center call status changed to an incoming call, manually animating out of the PIP to show call waiting", &v12, 0xCu);
    }

    [(PHPIPController *)self manuallyStopPIPWithCompletion:0];
  }

LABEL_9:
  if ([(PHPIPController *)self pipState]== 2)
  {
    v9 = +[TUCallCenter sharedInstance];
    if ([v9 hasCurrentCalls])
    {
    }

    else
    {
      v10 = +[PHSOSViewController isSOSDismissalAssertionActive];

      if (v10)
      {
        v11 = sub_10000B2A0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543362;
          selfCopy2 = self;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Call center status changed to no current calls, but InCallRootViewController still wants to show SOS. Manually animating out of PIP", &v12, 0xCu);
        }

        [(PHPIPController *)self manuallyStopPIPWithCompletion:0];
      }
    }
  }

  [(PHPIPController *)self updatePIPProxyControlStates];
}

- (void)updatePipSharePlaySessionWithConversation:(id)conversation
{
  conversationCopy = conversation;
  featureFlags = [(PHPIPController *)self featureFlags];
  if (![featureFlags expanseEnabled])
  {
LABEL_17:

    goto LABEL_18;
  }

  isUsedForScreenSharing = [(PHPIPController *)self isUsedForScreenSharing];

  if ((isUsedForScreenSharing & 1) == 0)
  {
    v7 = +[TUCallCenter sharedInstance];
    hasCurrentVideoCalls = [v7 hasCurrentVideoCalls];

    if (hasCurrentVideoCalls)
    {
      v9 = +[TUCallCenter sharedInstance];
      currentVideoCall = [v9 currentVideoCall];

      v11 = +[TUCallCenter sharedInstance];
      featureFlags = [v11 activeConversationForCall:currentVideoCall];

      if (featureFlags && [conversationCopy isEqualToConversation:featureFlags])
      {
        v12 = sub_10000B2A0();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          groupUUID = [conversationCopy groupUUID];
          v28 = 138543618;
          selfCopy2 = self;
          v30 = 2112;
          v31 = groupUUID;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring conversation update for groupUUID %@.", &v28, 0x16u);
        }

        goto LABEL_17;
      }
    }

    else
    {
      featureFlags = 0;
    }

    activitySessions = [conversationCopy activitySessions];
    allObjects = [activitySessions allObjects];
    v17 = [allObjects tu_firstObjectPassingTest:&stru_100356ED8];

    activity = [v17 activity];
    activityIdentifier = [activity activityIdentifier];
    v20 = [activityIdentifier isEqualToString:TUGroupActivityIdentifierScreenSharing];

    if ((v20 & 1) != 0 || ([v17 activity], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "bundleIdentifier"), bundleIdentifier = objc_claimAutoreleasedReturnValue(), v21, !bundleIdentifier))
    {
      activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
      v24 = [activeRemoteParticipants tu_containsObjectPassingTest:&stru_100356F18];

      if (v24)
      {
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        bundleIdentifier = [v25 bundleIdentifier];
      }

      else
      {
        bundleIdentifier = 0;
      }
    }

    v26 = sub_10000B2A0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138543618;
      selfCopy2 = self;
      v30 = 2114;
      v31 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting PiP to SharePlay session ID: %{public}@", &v28, 0x16u);
    }

    pipProxy = [(PHPIPController *)self pipProxy];
    [pipProxy setClientSessionIdentifier:bundleIdentifier];

    goto LABEL_17;
  }

LABEL_18:
}

- (void)setClientSessionIdentifierFromPiPAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  featureFlags = [(PHPIPController *)self featureFlags];
  supportsScreenSharing = [featureFlags supportsScreenSharing];

  if (supportsScreenSharing)
  {
    v7 = sub_10000B2A0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = authorizationCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting PiP client session identifier for background PiP authorization to session ID: %{public}@", &v9, 0x16u);
    }

    pipProxy = [(PHPIPController *)self pipProxy];
    [pipProxy setClientSessionIdentifier:authorizationCopy];
  }
}

- (BOOL)pipStateIsTransitory
{
  pipState = [(PHPIPController *)self pipState];
  if (pipState != 1)
  {
    LOBYTE(pipState) = [(PHPIPController *)self pipState]== 3;
  }

  return pipState;
}

- (void)updatePIPSize
{
  if ([(PHPIPController *)self isRotating])
  {

    [(PHPIPController *)self setWantsPreferredContentSizeUpdateAfterRotationFinishes:1];
  }

  else
  {
    pipProxy = [(PHPIPController *)self pipProxy];
    [pipProxy preferredContentSizeDidChangeForViewController];
  }
}

- (void)updatePIPFrame
{
  pipProxy = [(PHPIPController *)self pipProxy];
  [pipProxy viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
}

- (void)sceneDidUpdate
{
  v3 = sub_10000B2A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating PIP proxy scene info", &v5, 0xCu);
  }

  pipProxy = [(PHPIPController *)self pipProxy];
  [pipProxy viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
}

- (void)pictureInPictureProxy:(id)proxy didRequestFaceTimeAction:(int64_t)action
{
  v6 = sub_10000B2A0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2048;
    actionCopy = action;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP proxy requested FaceTime action %ld", &v8, 0x16u);
  }

  if (action > 3)
  {
    switch(action)
    {
      case 4:
        [(PHPIPController *)self handleUnmuteMicrophoneAction];
        return;
      case 5:
        [(PHPIPController *)self handleFlipCameraAction];
        return;
      case 6:
        [(PHPIPController *)self handleShowSystemHUDAction];
        return;
    }
  }

  else
  {
    switch(action)
    {
      case 1:
        [(PHPIPController *)self handleEnableCameraAction];
        return;
      case 2:
        [(PHPIPController *)self handleDisableCameraAction];
        return;
      case 3:
        [(PHPIPController *)self handleMuteMicrophoneAction];
        return;
    }
  }

  v7 = sub_10000B2A0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1002543BC(self, action, v7);
  }
}

- (void)handleEnableCameraAction
{
  v6 = +[TUCallCenter sharedInstance];
  currentVideoCall = [v6 currentVideoCall];
  [currentVideoCall setIsSendingVideo:1];

  videoDeviceController = [v6 videoDeviceController];
  [videoDeviceController startPreview];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerDidHandleVideoMuteControlAction" object:self];
}

- (void)handleDisableCameraAction
{
  v6 = +[TUCallCenter sharedInstance];
  currentVideoCall = [v6 currentVideoCall];
  [currentVideoCall setIsSendingVideo:0];

  videoDeviceController = [v6 videoDeviceController];
  [videoDeviceController stopPreview];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerDidHandleVideoMuteControlAction" object:self];
}

- (void)handleMuteMicrophoneAction
{
  v3 = +[TUCallCenter sharedInstance];
  currentVideoCall = [v3 currentVideoCall];
  [currentVideoCall setUplinkMuted:1];
}

- (void)handleUnmuteMicrophoneAction
{
  v3 = +[TUCallCenter sharedInstance];
  currentVideoCall = [v3 currentVideoCall];
  [currentVideoCall setUplinkMuted:0];
}

- (void)handleFlipCameraAction
{
  v3 = +[TUCallCenter sharedInstance];
  videoDeviceController = [v3 videoDeviceController];
  [videoDeviceController flipCamera];
}

- (void)handleShowSystemHUDAction
{
  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  bannerPresentationManager = [delegate bannerPresentationManager];
  [bannerPresentationManager presentSystemHUD];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &off_100356E30)
  {
    if (![pathCopy isEqualToString:@"pictureInPictureActive"])
    {
      goto LABEL_13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    pipProxy3 = objectCopy;
    pipProxy = [(PHPIPController *)self pipProxy];
    v16 = [pipProxy3 isEqual:pipProxy];

    if (v16)
    {
      v17 = sub_10000B2A0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        pipProxy2 = [(PHPIPController *)self pipProxy];
        v21 = 138543618;
        selfCopy = self;
        v23 = 1024;
        isPictureInPictureActive = [pipProxy2 isPictureInPictureActive];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: PGPictureInPictureProxy isPictureInPictureActive changed to %d, firing state change notification", &v21, 0x12u);
      }

      v20 = +[NSNotificationCenter defaultCenter];
      [v20 postNotificationName:@"PHPIPControllerPIPProxyActiveDidChangeNotification" object:self userInfo:0];
    }

LABEL_12:

    goto LABEL_13;
  }

  if (context != &off_100356E38)
  {
    goto LABEL_13;
  }

  pipProxy3 = [(PHPIPController *)self pipProxy];
  if (![pipProxy3 isPictureInPicturePossible])
  {
    goto LABEL_12;
  }

  shouldStartPIPWhenPossible = [(PHPIPController *)self shouldStartPIPWhenPossible];

  if (shouldStartPIPWhenPossible)
  {
    [(PHPIPController *)self startPIPNow];
  }

LABEL_13:
}

- (void)screenSharingStateMonitor:(id)monitor didUpdateScreenSharingBroadcastingState:(BOOL)state
{
  stateCopy = state;
  if (![(PHPIPController *)self isUsedForScreenSharing])
  {
    [(PHPIPController *)self setIsBroadcastingScreenSharing:stateCopy];

    [(PHPIPController *)self updatePIPProxyLayerCloning];
  }
}

- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status
{
  statusCopy = status;
  featureFlags = [(PHPIPController *)self featureFlags];
  screenSharingRemoteControlEnabled = [featureFlags screenSharingRemoteControlEnabled];

  v8 = sub_10000B2A0();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (screenSharingRemoteControlEnabled)
  {
    if (v9)
    {
      v10 = @"NO";
      if (statusCopy)
      {
        v10 = @"YES";
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating state for remote control, remote control state is %@", &v11, 0xCu);
    }

    [(PHPIPController *)self setIsBeingRemoteControlled:statusCopy];
    [(PHPIPController *)self updatePIPProxyLayerCloning];
  }

  else if (v9)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not updating state PiP state for remote control, screen sharing remote control feature flag is disabled", &v11, 2u);
  }
}

- (CNKFaceTimePiPSourceProviding)sourceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceProvider);

  return WeakRetained;
}

@end