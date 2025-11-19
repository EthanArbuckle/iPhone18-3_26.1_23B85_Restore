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
- (BOOL)wrapperViewControllerShouldReturnRestoreWrappedViewControllerHierarchy:(id)a3;
- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)a3;
- (CGSize)wrapperViewControllerPreferredContentSize:(id)a3;
- (CNKFaceTimePiPSourceProviding)sourceProvider;
- (UIViewController)pipContentViewController;
- (UIWindow)windowForTransitionAnimation;
- (id)initForScreenSharing:(BOOL)a3;
- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)a3;
- (id)stringForPIPState:(int64_t)a3;
- (id)viewControllerToRestoreWhenCancellingPIP;
- (int64_t)pictureInPictureProxyContentType:(id)a3;
- (void)callCenterCallStatusChangedNotification:(id)a3;
- (void)cancelPIPIfNeeded;
- (void)dealloc;
- (void)handleDisableCameraAction;
- (void)handleEnableCameraAction;
- (void)handleFlipCameraAction;
- (void)handleMuteMicrophoneAction;
- (void)handleShowSystemHUDAction;
- (void)handleUnmuteMicrophoneAction;
- (void)manuallyStopPIPWithCompletion:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pictureInPictureProxy:(id)a3 didRequestFaceTimeAction:(int64_t)a4;
- (void)pictureInPictureProxy:(id)a3 didStartPictureInPictureWithAnimationType:(int64_t)a4;
- (void)pictureInPictureProxy:(id)a3 didStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5;
- (void)pictureInPictureProxy:(id)a3 didUpdateStashedOrUnderLockState:(BOOL)a4;
- (void)pictureInPictureProxy:(id)a3 failedToStartPictureInPictureWithAnimationType:(int64_t)a4 error:(id)a5;
- (void)pictureInPictureProxy:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)pictureInPictureProxy:(id)a3 willStartPictureInPictureWithAnimationType:(int64_t)a4;
- (void)pictureInPictureProxy:(id)a3 willStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5;
- (void)pictureInPictureProxyPictureInPictureInterruptionBegan:(id)a3;
- (void)pictureInPictureProxyPictureInPictureInterruptionEnded:(id)a3;
- (void)pictureInPictureProxyWillSetupPictureInPictureStop:(id)a3;
- (void)resetPipContentViewController;
- (void)rotatePIPDeviceOrientationTo:(int64_t)a3 withCompletion:(id)a4;
- (void)sceneDidUpdate;
- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4;
- (void)screenSharingStateMonitor:(id)a3 didUpdateScreenSharingBroadcastingState:(BOOL)a4;
- (void)setClientSessionIdentifierFromPiPAuthorization:(id)a3;
- (void)setPipContentViewController:(id)a3;
- (void)setPipState:(int64_t)a3;
- (void)setScreenSharingTitle:(id)a3 andAvatarIfNeeded:(id)a4;
- (void)setSourceProvider:(id)a3;
- (void)setWindowForTransitionAnimation:(id)a3;
- (void)startPIPNow;
- (void)startPIPWithCompletion:(id)a3;
- (void)stopPIPAndStealViewController:(id)a3;
- (void)updatePIPFrame;
- (void)updatePIPProxyCameraControlStates;
- (void)updatePIPProxyControlStates;
- (void)updatePIPProxyLayerCloning;
- (void)updatePIPProxyMicrophoneControlStates;
- (void)updatePIPSize;
- (void)updatePipSharePlaySessionWithConversation:(id)a3;
- (void)updateShouldPIPWhenEnteringBackground;
- (void)wrapperViewControllerNeedsCleanup:(id)a3;
@end

@implementation PHPIPController

- (void)updateShouldPIPWhenEnteringBackground
{
  v3 = [(PHPIPController *)self shouldPIPWhenEnteringBackground];
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating shouldPIPWhenEnteringBackground to %d", &v6, 0x12u);
  }

  v5 = [(PHPIPController *)self pipProxy];
  [v5 setPictureInPictureShouldStartWhenEnteringBackground:v3];
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
    v33 = self;
    v12 = "%{public}@: isPictureInPictureSupported is false";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, &v32, 0xCu);
    return 0;
  }

  v3 = [(PHPIPController *)self windowForTransitionAnimation];

  if (!v3)
  {
    v11 = sub_10000B2A0();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v32 = 138543362;
    v33 = self;
    v12 = "%{public}@: windowForTransitionAnimation is nil";
    goto LABEL_15;
  }

  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 currentAudioAndVideoCallCount];

  if (v5 == 1)
  {
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v6 currentAudioAndVideoCalls];
    v8 = [v7 firstObject];

    if (([v8 isConnected] & 1) == 0 && objc_msgSend(v8, "status") != 3)
    {
      v14 = sub_10000B2A0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v32 = 138543362;
        v33 = self;
        v15 = "%{public}@: call is not connected or sending";
        goto LABEL_27;
      }

LABEL_28:
      v10 = 0;
LABEL_29:

      return v10;
    }

    if ([(PHPIPController *)self isUsedForScreenSharing])
    {
      v9 = sub_10000B2A0();
      v10 = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v32 = 138543362;
        v33 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@: pip isUsedForScreenSharing", &v32, 0xCu);
      }

      goto LABEL_29;
    }

    if (([v8 isVideo] & 1) == 0)
    {
      v14 = sub_10000B2A0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v32 = 138543362;
        v33 = self;
        v15 = "%{public}@: call is not video";
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (([v8 isConversation] & 1) == 0)
    {
      v16 = sub_10000B2A0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = v16;
        [v8 isVideo];
        v18 = NSStringFromBOOL();
        v32 = 138543618;
        v33 = self;
        v34 = 2112;
        v35 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@: call isVideo is %@", &v32, 0x16u);
      }

      v10 = [v8 isVideo];
      goto LABEL_29;
    }

    if ([v8 wantsHoldMusic])
    {
      v14 = sub_10000B2A0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v32 = 138543362;
        v33 = self;
        v15 = "%{public}@: call wantsHoldMusic";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v15, &v32, 0xCu);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    v19 = +[TUCallCenter sharedInstance];
    v20 = [v19 activeConversationForCall:v8];

    if (!v20)
    {
      v23 = sub_10000B2A0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = v23;
        [v8 isVideo];
        v25 = NSStringFromBOOL();
        v32 = 138543618;
        v33 = self;
        v34 = 2112;
        v35 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}@: conversation is nil, call isVideo is %@", &v32, 0x16u);
      }

      v10 = [v8 isVideo];
      goto LABEL_42;
    }

    if ([v20 isContinuitySession])
    {
      v21 = sub_10000B2A0();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
LABEL_38:
        v10 = 0;
LABEL_42:

        goto LABEL_29;
      }

      v32 = 138543362;
      v33 = self;
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
      v33 = self;
      v22 = "%{public}@: conversation has not been joined";
      goto LABEL_37;
    }

    if ([v20 isOneToOneModeEnabled])
    {
      v26 = sub_10000B2A0();
      v10 = 1;
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_42;
      }

      v32 = 138543362;
      v33 = self;
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
        v33 = self;
        v22 = "%{public}@: conversation hasParticipantVideoForActiveConversation is false";
        goto LABEL_37;
      }

      v29 = [v20 remoteMembers];
      v30 = [v29 count];

      v21 = sub_10000B2A0();
      v31 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (!v30)
      {
        if (!v31)
        {
          goto LABEL_38;
        }

        v32 = 138543362;
        v33 = self;
        v22 = "%{public}@: conversation remoteMembers equals 0";
        goto LABEL_37;
      }

      if (!v31)
      {
        v10 = 1;
        goto LABEL_42;
      }

      v32 = 138543362;
      v33 = self;
      v27 = "%{public}@: shouldPIPWhenEnteringBackground";
      v28 = v21;
      v10 = 1;
    }

    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, v27, &v32, 0xCu);
    goto LABEL_42;
  }

  v11 = sub_10000B2A0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v32 = 138543362;
    v33 = self;
    v12 = "%{public}@: currentAudioAndVideoCallCount is not 1";
    goto LABEL_15;
  }

  return 0;
}

- (void)updatePIPProxyMicrophoneControlStates
{
  v3 = +[TUCallCenter sharedInstance];
  v6 = [v3 currentVideoCall];

  v4 = [v6 isUplinkMuted];
  v5 = [(PHPIPController *)self pipProxy];
  [v5 setMicrophoneMuted:v4];
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
  v4 = [v3 currentVideoCall];
  v5 = [v4 isSendingVideo];

  v6 = [(PHPIPController *)self pipProxy];
  [v6 setCameraActive:v5];

  v7 = [(PHPIPController *)self pipProxy];
  [v7 setCanSwitchCamera:v5];
}

- (BOOL)isPIPProxyInterrupted
{
  v2 = [(PHPIPController *)self pipProxy];
  v3 = [v2 isPictureInPictureInterrupted];

  return v3;
}

- (BOOL)isPIPProxyActive
{
  v2 = [(PHPIPController *)self pipProxy];
  v3 = [v2 isPictureInPictureActive];

  return v3;
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

  v8 = [(PHPIPController *)self pipProxy];
  [v8 setDisablesLayerCloning:v7];
}

+ (id)newScreenSharingPIPController
{
  v2 = [[PHPIPController alloc] initForScreenSharing:1];
  [v2 setShouldObtainDismissalAssertions:0];
  return v2;
}

- (id)initForScreenSharing:(BOOL)a3
{
  v3 = a3;
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

    v13 = [(PHPIPController *)v5 wrapperViewController];
    [v13 setDelegate:v5];

    v14 = +[PHInCallUtilities sharedInstance];
    if ([v14 isIPadIdiom] & !v3)
    {
      v15 = 2;
    }

    else
    {
      v15 = 4;
    }

    v16 = [(PHPIPController *)v5 wrapperViewController];
    v17 = [PGPictureInPictureProxy pictureInPictureProxyWithControlsStyle:v15 viewController:v16];
    [(PHPIPController *)v5 setPipProxy:v17];

    v18 = [(PHPIPController *)v5 pipProxy];
    [v18 setDelegate:v5];

    [(PHPIPController *)v5 setShouldObtainDismissalAssertions:1];
    [(PHPIPController *)v5 setIsUsedForScreenSharing:v3];
    v19 = [(PHPIPController *)v5 pipProxy];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100051180;
    v28[3] = &unk_100356E10;
    v29 = v3;
    [v19 updatePlaybackStateUsingBlock:v28];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v5 selector:"callCenterCallStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
    [v20 addObserver:v5 selector:"callCenterCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v20 addObserver:v5 selector:"callCenterCallStatusChangedNotification:" name:TUCallCenterCallConnectedNotification object:0];
    [v20 addObserver:v5 selector:"callCenterCallStatusChangedNotification:" name:TUCallUpgradedToVideoNotification object:0];
    [v20 addObserver:v5 selector:"uplinkMuteStatusChangedNotification:" name:TUCallIsUplinkMutedChangedNotification object:0];
    [v20 addObserver:v5 selector:"callIsSendingVideoChanged:" name:TUCallIsSendingVideoChangedNotification object:0];
    v21 = [(PHPIPController *)v5 pipProxy];
    [v21 addObserver:v5 forKeyPath:@"pictureInPictureActive" options:0 context:&off_100356E30];

    v22 = [(PHPIPController *)v5 pipProxy];
    [v22 addObserver:v5 forKeyPath:@"pictureInPicturePossible" options:0 context:&off_100356E38];

    v23 = +[TUCallCenter sharedInstance];
    v24 = [v23 conversationManager];
    [v24 addDelegate:v5 queue:&_dispatch_main_q];

    v25 = [(CNKScreenSharingStateMonitorFactory *)v5->_screenSharingMonitorFactory sharedMonitor];
    [v25 addObserver:v5];

    v26 = [(CNKScreenSharingInteractionControllerFactory *)v5->_screenSharingInteractionControllerFactory sharedController];
    [v26 addDelegate:v5];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(PHPIPController *)self pipProxy];
  [v4 removeObserver:self forKeyPath:@"pictureInPictureActive" context:&off_100356E30];

  v5 = [(PHPIPController *)self pipProxy];
  [v5 removeObserver:self forKeyPath:@"pictureInPicturePossible" context:&off_100356E38];

  v6 = [(CNKScreenSharingStateMonitorFactory *)self->_screenSharingMonitorFactory sharedMonitor];
  [v6 removeObserver:self];

  v7 = [(CNKScreenSharingInteractionControllerFactory *)self->_screenSharingInteractionControllerFactory sharedController];
  [v7 removeDelegate:self];

  v8.receiver = self;
  v8.super_class = PHPIPController;
  [(PHPIPController *)&v8 dealloc];
}

- (void)setWindowForTransitionAnimation:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowForTransitionAnimation);

  if (WeakRetained != v4)
  {
    v6 = sub_10000B2A0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating PIP with window %@", &v7, 0x16u);
    }

    objc_storeWeak(&self->_windowForTransitionAnimation, v4);
    [(PHPIPController *)self updateShouldPIPWhenEnteringBackground];
    [(PHPIPController *)self updatePIPFrame];
  }
}

- (void)setPipContentViewController:(id)a3
{
  v4 = a3;
  v5 = [(PHPIPController *)self wrapperViewController];
  [v5 setWrappedViewController:v4];

  [(PHPIPController *)self updatePIPFrame];
}

- (UIViewController)pipContentViewController
{
  v2 = [(PHPIPController *)self wrapperViewController];
  v3 = [v2 wrappedViewController];

  return v3;
}

- (void)setSourceProvider:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_sourceProvider, v4);
  v5 = [v4 viewControllerForPiP];

  [(PHPIPController *)self setPipContentViewController:v5];
}

- (void)resetPipContentViewController
{
  v2 = [(PHPIPController *)self wrapperViewController];
  [v2 setWrappedViewController:0];
}

- (void)rotatePIPDeviceOrientationTo:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  if ([(PHPIPController *)self pipDeviceOrientation]!= a3)
  {
    v7 = sub_10000B2A0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = self;
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Rotating pip to device orientation %ld", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100051820;
    v13[3] = &unk_100356E48;
    objc_copyWeak(&v15, buf);
    v13[4] = self;
    v14 = v6;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100051958;
    v11[3] = &unk_100356E70;
    v11[4] = self;
    v8 = objc_retainBlock(v13);
    v12 = v8;
    v9 = objc_retainBlock(v11);
    if (a3 > 2)
    {
      if (a3 == 3)
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
        if (a3 != 4)
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
      if (a3 != 1)
      {
        if (a3 == 2)
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
        [(PHPIPController *)self setPipDeviceOrientation:a3];

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

  if (v6)
  {
    v6[2](v6);
  }

LABEL_31:
}

- (id)viewControllerToRestoreWhenCancellingPIP
{
  v3 = [(PHPIPController *)self sourceProvider];
  v4 = [v3 restoreViewControllerHierarchyWhenExitingPiP];

  if (v4)
  {
    v5 = [(PHPIPController *)self sourceProvider];
    v6 = [v5 viewControllerForPiP];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setScreenSharingTitle:(id)a3 andAvatarIfNeeded:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PHPIPController *)self isUsedForScreenSharing])
  {
    v8 = [(PHPIPController *)self featureFlags];
    v9 = [v8 supportsScreenSharing];

    if (v9)
    {
      v10 = sub_10000B2A0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 138543874;
        *&v15[4] = self;
        v16 = 1024;
        v17 = v6 != 0;
        v18 = 1024;
        v19 = v7 != 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating screen sharing title and avatar on PiP Proxy; hasTitle: %i; hasImage: %i", v15, 0x18u);
      }

      v11 = [(PHPIPController *)self pipProxy];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [(PHPIPController *)self pipProxy];
        [v13 setScreenSharingTitle:v6 avatar:v7];
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

- (void)startPIPWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sourceProvider);
  v7 = [WeakRetained viewControllerForPiP];

  [(PHPIPController *)self setPipContentViewController:v7];
  [(PHPIPController *)self setStartCompletionBlock:v4];

  v6 = [(PHPIPController *)self pipProxy];
  LODWORD(WeakRetained) = [v6 isPictureInPicturePossible];

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
  v3 = [(PHPIPController *)self pipProxy];
  [v3 startPictureInPicture];
}

- (void)stopPIPAndStealViewController:(id)a3
{
  v4 = a3;
  v5 = sub_10000B2A0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(PHPIPController *)self restoreUserInterfaceForPictureInPictureStopCompletionBlock];
    v8 = objc_retainBlock(v7);
    *buf = 138543618;
    v19 = self;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: stopPIPAndStealViewController (we have this restore UI block %@)", buf, 0x16u);
  }

  v9 = [(PHPIPController *)self pipProxy];

  if (v9)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v16, &location);
    v10 = [(PHPIPController *)self wrapperViewController:_NSConcreteStackBlock];
    [v10 setWillAnimatePictureInPictureStopCompletionBlock:&v15];

    v11 = [(PHPIPController *)self wrapperViewController];
    [v11 setDidAnimatePictureInPictureStopCompletionBlock:v4];

    v12 = [(PHPIPController *)self restoreUserInterfaceForPictureInPictureStopCompletionBlock];

    if (v12)
    {
      v13 = sub_10000B2A0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: ... stopPIPAndStealViewController running the restore UI block", buf, 0xCu);
      }

      v14 = [(PHPIPController *)self restoreUserInterfaceForPictureInPictureStopCompletionBlock];
      v14[2](v14, 1);

      [(PHPIPController *)self setRestoreUserInterfaceForPictureInPictureStopCompletionBlock:0];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)manuallyStopPIPWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PHPIPController *)self pipState]== 2)
  {
    v5 = sub_10000B2A0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Manually calling stop picture in picture", &v7, 0xCu);
    }

    [(PHPIPController *)self setPreparedToAnimateToFullScreenCompletionBlock:v4];
    v6 = [(PHPIPController *)self pipProxy];
    [v6 stopPictureInPictureAndRestoreUserInterface:1];
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
    v12 = self;
    v8 = "%{public}@: No need to cancel PiP since it's not starting or active";
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v9, v10, v8, &v11, 0xCu);
    return;
  }

  v3 = [(PHPIPController *)self pipProxy];

  v4 = sub_10000B2A0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (!v5)
    {
      return;
    }

    v11 = 138543362;
    v12 = self;
    v8 = "%{public}@: Not cancelling PiP because pipProxy is nil";
    v9 = v4;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  if (v5)
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: cancelPIP", &v11, 0xCu);
  }

  v6 = [(PHPIPController *)self pipProxy];
  [v6 stopPictureInPictureAndRestoreUserInterface:0];

  [(PHPIPController *)self setPipState:3];
}

- (BOOL)isPreparedToAnimateToFullScreen
{
  v2 = [(PHPIPController *)self restoreUserInterfaceForPictureInPictureStopCompletionBlock];
  v3 = v2 != 0;

  return v3;
}

- (void)pictureInPictureProxy:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  [(PHPIPController *)self setRestoreUserInterfaceForPictureInPictureStopCompletionBlock:a4];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerDidRequestReturnToFullScreenNotification" object:self];

  v6 = [(PHPIPController *)self preparedToAnimateToFullScreenCompletionBlock];

  if (v6)
  {
    v7 = [(PHPIPController *)self preparedToAnimateToFullScreenCompletionBlock];
    v7[2]();

    [(PHPIPController *)self setPreparedToAnimateToFullScreenCompletionBlock:0];
  }
}

- (BOOL)isPIPProxyActiveAndHidden
{
  v3 = [(PHPIPController *)self pipProxy];
  if ([v3 isPictureInPictureActive])
  {
    v4 = [(PHPIPController *)self pipProxy];
    v5 = [v4 isPictureInPictureStashedOrUnderLock];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPipState:(int64_t)a3
{
  if (self->_pipState != a3)
  {
    self->_pipState = a3;
    v5 = sub_10000B2A0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(PHPIPController *)self stringForPIPState:a3];
      v9 = 138543618;
      v10 = self;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: PIPState changed to %@", &v9, 0x16u);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"PHPIPControllerStateDidChangeNotification" object:self userInfo:0];
  }
}

- (void)wrapperViewControllerNeedsCleanup:(id)a3
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

- (BOOL)wrapperViewControllerShouldReturnRestoreWrappedViewControllerHierarchy:(id)a3
{
  v3 = [(PHPIPController *)self sourceProvider];
  v4 = [v3 restoreViewControllerHierarchyWhenExitingPiP];

  return v4;
}

- (CGSize)wrapperViewControllerPreferredContentSize:(id)a3
{
  v3 = [(PHPIPController *)self sourceProvider];
  [v3 preferredPiPContentAspectRatio];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)stringForPIPState:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_100356F38[a3];
  }
}

- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)a3
{
  v3 = [(PHPIPController *)self sourceProvider];
  [v3 frameForRestoreAnimation];
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

- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)a3
{
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(PHPIPController *)self windowForTransitionAnimation];
    v9 = 138543618;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP controller checked which ICS window to use for PIP: %@", &v9, 0x16u);
  }

  v7 = [(PHPIPController *)self windowForTransitionAnimation];

  return v7;
}

- (void)pictureInPictureProxy:(id)a3 willStartPictureInPictureWithAnimationType:(int64_t)a4
{
  v6 = sub_10000B2A0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: willStart animationType: %ld", &v9, 0x16u);
  }

  [(PHPIPController *)self setShouldStartPIPWhenPossible:0];
  if (a4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(PHPIPController *)self setCurrentPIPAnimationStyle:v7];
  v8 = [(PHPIPController *)self pipProxy];
  [v8 preferredContentSizeDidChangeForViewController];

  [(PHPIPController *)self setPipState:1];
  if ([(PHPIPController *)self shouldObtainDismissalAssertions])
  {
    [objc_msgSend(objc_opt_class() "inCallRootViewControllerClass")];
  }
}

- (void)pictureInPictureProxy:(id)a3 didStartPictureInPictureWithAnimationType:(int64_t)a4
{
  v6 = sub_10000B2A0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didStart animationType: %ld", &v12, 0x16u);
  }

  if (![(PHPIPController *)self shouldPIPWhenEnteringBackground])
  {
    v7 = sub_10000B2A0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100254378(v7);
    }

    v8 = [(PHPIPController *)self pipProxy];
    [v8 stopPictureInPictureAndRestoreUserInterface:0];

    [(PHPIPController *)self setPipState:3];
    [(PHPIPController *)self updateShouldPIPWhenEnteringBackground];
  }

  if (a4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [(PHPIPController *)self setCurrentPIPAnimationStyle:v9];
  [(PHPIPController *)self setPipState:2];
  v10 = [(PHPIPController *)self startCompletionBlock];

  if (v10)
  {
    v11 = [(PHPIPController *)self startCompletionBlock];
    v11[2]();

    [(PHPIPController *)self setStartCompletionBlock:0];
  }
}

- (void)pictureInPictureProxy:(id)a3 failedToStartPictureInPictureWithAnimationType:(int64_t)a4 error:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = sub_10000B2A0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543874;
    v12 = self;
    v13 = 2048;
    v14 = a4;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: failedToStart animationType: %ld error: %@", &v11, 0x20u);
  }

  [(PHPIPController *)self setCurrentPIPAnimationStyle:0];
  [v9 stopPictureInPictureAndRestoreUserInterface:1];

  [(PHPIPController *)self setPipState:0];
  if ([(PHPIPController *)self shouldObtainDismissalAssertions])
  {
    [objc_msgSend(objc_opt_class() "inCallRootViewControllerClass")];
  }
}

- (void)pictureInPictureProxy:(id)a3 willStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5
{
  v8 = sub_10000B2A0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543874;
    v12 = self;
    v13 = 2048;
    v14 = a4;
    v15 = 2048;
    v16 = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: willStop animationType: %ld reason: %ld", &v11, 0x20u);
  }

  if (a4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [(PHPIPController *)self setCurrentPIPAnimationStyle:v9];
  if (a5 == 1)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"PHPIPControllerWillCancelNotification" object:self];
  }
}

- (void)pictureInPictureProxy:(id)a3 didStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5
{
  v8 = sub_10000B2A0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    v11 = self;
    v12 = 2048;
    v13 = a4;
    v14 = 2048;
    v15 = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: didStop animationType: %ld reason: %ld", &v10, 0x20u);
  }

  [(PHPIPController *)self setCurrentPIPAnimationStyle:0];
  [(PHPIPController *)self setPipState:0];
  if ([(PHPIPController *)self shouldObtainDismissalAssertions])
  {
    [objc_msgSend(objc_opt_class() "inCallRootViewControllerClass")];
  }

  if (a5 == 1)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"PHPIPControllerDidCancelNotification" object:self];
  }

  else
  {
    if (a5)
    {
      return;
    }

    v9 = [(PHPIPController *)self pipProxy];
    [v9 preferredContentSizeDidChangeForViewController];
  }
}

- (void)pictureInPictureProxyPictureInPictureInterruptionBegan:(id)a3
{
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    v22 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP interruption began", &v21, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerInterruptionChangeNotification" object:self];

  if (![(PHPIPController *)self isUsedForScreenSharing])
  {
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v6 currentVideoCall];
    -[PHPIPController setVideoWasPausedForInterruption:](self, "setVideoWasPausedForInterruption:", [v7 isSendingVideo]);

    v8 = sub_10000B2A0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(PHPIPController *)self videoWasPausedForInterruption];
      v21 = 138543618;
      v22 = self;
      v23 = 1024;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Storing videoWasPausedForInterruption as %d before stopping sending video", &v21, 0x12u);
    }

    v11 = +[TUCallCenter sharedInstance];
    v12 = [v11 currentVideoCall];

    v13 = +[TUCallCenter sharedInstance];
    v14 = [v13 activeConversationForCall:v12];

    if ([v12 isConversation] && (objc_msgSend(v14, "isOneToOneModeEnabled") & 1) == 0)
    {
      if ([(PHPIPController *)self videoWasPausedForInterruption])
      {
        [v12 setRemoteVideoPresentationState:2];
      }

      v15 = +[TUCallCenter sharedInstance];
      v16 = [v15 videoDeviceController];
      [v16 stopPreview];
    }

    else
    {
      if ([(PHPIPController *)self videoWasPausedForInterruption])
      {
        [v12 setIsSendingVideo:0];
      }

      v15 = +[TUCallCenter sharedInstance];
      v16 = [v15 videoDeviceController];
      [v16 pausePreview];
    }

    if ([(PHPIPController *)self videoWasPausedForInterruption])
    {
      v17 = +[NSNotificationCenter defaultCenter];
      [v17 postNotificationName:@"PHPIPControllerDidHandleVideoMuteControlAction" object:self];
    }

    v18 = +[TUCallCenter sharedInstance];
    v19 = [v18 currentVideoCall];
    v20 = [v19 uniqueProxyIdentifier];
    [(PHPIPController *)self setPipInterruptedCallIdentifier:v20];
  }
}

- (void)pictureInPictureProxyPictureInPictureInterruptionEnded:(id)a3
{
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = self;
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
        v7 = [v6 frontmostAudioOrVideoCall];
        v8 = [v7 isVideo];

        if (v8)
        {
          v9 = +[TUCallCenter sharedInstance];
          v10 = [v9 currentVideoCall];

          v11 = +[TUCallCenter sharedInstance];
          v12 = [v11 activeConversationForCall:v10];

          if ([v10 isConversation] && (objc_msgSend(v12, "isOneToOneModeEnabled") & 1) == 0)
          {
            [v10 setRemoteVideoPresentationState:1];
          }

          else
          {
            [v10 setIsSendingVideo:1];
          }

          v14 = +[TUCallCenter sharedInstance];
          v15 = [v14 videoDeviceController];
          [v15 startPreview];
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
            v20 = self;
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
      v20 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Not handling PIP interruption ended because we are not PIPped", &v19, 0xCu);
    }
  }
}

- (void)pictureInPictureProxy:(id)a3 didUpdateStashedOrUnderLockState:(BOOL)a4
{
  v5 = [NSNotificationCenter defaultCenter:a3];
  [v5 postNotificationName:@"PHPIPControllerStashChangeNotification" object:self];
}

- (void)pictureInPictureProxyWillSetupPictureInPictureStop:(id)a3
{
  v4 = sub_10000B2A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP will set up for picture-in-picture stop", &v6, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerWillSetupPIPStopNotification" object:self];
}

- (int64_t)pictureInPictureProxyContentType:(id)a3
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

  v3 = [(PHPIPController *)self wrapperViewController];
  v4 = [v3 pipIsBeingResized];

  return v4;
}

- (void)callCenterCallStatusChangedNotification:(id)a3
{
  [(PHPIPController *)self updateShouldPIPWhenEnteringBackground];
  if ([(PHPIPController *)self pipState]== 2 && ![(PHPIPController *)self isUsedForScreenSharing])
  {
    v4 = +[TUCallCenter sharedInstance];
    v5 = [v4 incomingCall];
    if (v5)
    {
    }

    else
    {
      v6 = +[TUCallCenter sharedInstance];
      v7 = [v6 incomingVideoCall];

      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v8 = sub_10000B2A0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = self;
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
          v13 = self;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Call center status changed to no current calls, but InCallRootViewController still wants to show SOS. Manually animating out of PIP", &v12, 0xCu);
        }

        [(PHPIPController *)self manuallyStopPIPWithCompletion:0];
      }
    }
  }

  [(PHPIPController *)self updatePIPProxyControlStates];
}

- (void)updatePipSharePlaySessionWithConversation:(id)a3
{
  v4 = a3;
  v5 = [(PHPIPController *)self featureFlags];
  if (![v5 expanseEnabled])
  {
LABEL_17:

    goto LABEL_18;
  }

  v6 = [(PHPIPController *)self isUsedForScreenSharing];

  if ((v6 & 1) == 0)
  {
    v7 = +[TUCallCenter sharedInstance];
    v8 = [v7 hasCurrentVideoCalls];

    if (v8)
    {
      v9 = +[TUCallCenter sharedInstance];
      v10 = [v9 currentVideoCall];

      v11 = +[TUCallCenter sharedInstance];
      v5 = [v11 activeConversationForCall:v10];

      if (v5 && [v4 isEqualToConversation:v5])
      {
        v12 = sub_10000B2A0();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [v4 groupUUID];
          v28 = 138543618;
          v29 = self;
          v30 = 2112;
          v31 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring conversation update for groupUUID %@.", &v28, 0x16u);
        }

        goto LABEL_17;
      }
    }

    else
    {
      v5 = 0;
    }

    v15 = [v4 activitySessions];
    v16 = [v15 allObjects];
    v17 = [v16 tu_firstObjectPassingTest:&stru_100356ED8];

    v18 = [v17 activity];
    v19 = [v18 activityIdentifier];
    v20 = [v19 isEqualToString:TUGroupActivityIdentifierScreenSharing];

    if ((v20 & 1) != 0 || ([v17 activity], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "bundleIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), v21, !v22))
    {
      v23 = [v4 activeRemoteParticipants];
      v24 = [v23 tu_containsObjectPassingTest:&stru_100356F18];

      if (v24)
      {
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v22 = [v25 bundleIdentifier];
      }

      else
      {
        v22 = 0;
      }
    }

    v26 = sub_10000B2A0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138543618;
      v29 = self;
      v30 = 2114;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting PiP to SharePlay session ID: %{public}@", &v28, 0x16u);
    }

    v27 = [(PHPIPController *)self pipProxy];
    [v27 setClientSessionIdentifier:v22];

    goto LABEL_17;
  }

LABEL_18:
}

- (void)setClientSessionIdentifierFromPiPAuthorization:(id)a3
{
  v4 = a3;
  v5 = [(PHPIPController *)self featureFlags];
  v6 = [v5 supportsScreenSharing];

  if (v6)
  {
    v7 = sub_10000B2A0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting PiP client session identifier for background PiP authorization to session ID: %{public}@", &v9, 0x16u);
    }

    v8 = [(PHPIPController *)self pipProxy];
    [v8 setClientSessionIdentifier:v4];
  }
}

- (BOOL)pipStateIsTransitory
{
  v3 = [(PHPIPController *)self pipState];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(PHPIPController *)self pipState]== 3;
  }

  return v3;
}

- (void)updatePIPSize
{
  if ([(PHPIPController *)self isRotating])
  {

    [(PHPIPController *)self setWantsPreferredContentSizeUpdateAfterRotationFinishes:1];
  }

  else
  {
    v3 = [(PHPIPController *)self pipProxy];
    [v3 preferredContentSizeDidChangeForViewController];
  }
}

- (void)updatePIPFrame
{
  v2 = [(PHPIPController *)self pipProxy];
  [v2 viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
}

- (void)sceneDidUpdate
{
  v3 = sub_10000B2A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating PIP proxy scene info", &v5, 0xCu);
  }

  v4 = [(PHPIPController *)self pipProxy];
  [v4 viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
}

- (void)pictureInPictureProxy:(id)a3 didRequestFaceTimeAction:(int64_t)a4
{
  v6 = sub_10000B2A0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP proxy requested FaceTime action %ld", &v8, 0x16u);
  }

  if (a4 > 3)
  {
    switch(a4)
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
    switch(a4)
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
    sub_1002543BC(self, a4, v7);
  }
}

- (void)handleEnableCameraAction
{
  v6 = +[TUCallCenter sharedInstance];
  v3 = [v6 currentVideoCall];
  [v3 setIsSendingVideo:1];

  v4 = [v6 videoDeviceController];
  [v4 startPreview];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerDidHandleVideoMuteControlAction" object:self];
}

- (void)handleDisableCameraAction
{
  v6 = +[TUCallCenter sharedInstance];
  v3 = [v6 currentVideoCall];
  [v3 setIsSendingVideo:0];

  v4 = [v6 videoDeviceController];
  [v4 stopPreview];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"PHPIPControllerDidHandleVideoMuteControlAction" object:self];
}

- (void)handleMuteMicrophoneAction
{
  v3 = +[TUCallCenter sharedInstance];
  v2 = [v3 currentVideoCall];
  [v2 setUplinkMuted:1];
}

- (void)handleUnmuteMicrophoneAction
{
  v3 = +[TUCallCenter sharedInstance];
  v2 = [v3 currentVideoCall];
  [v2 setUplinkMuted:0];
}

- (void)handleFlipCameraAction
{
  v3 = +[TUCallCenter sharedInstance];
  v2 = [v3 videoDeviceController];
  [v2 flipCamera];
}

- (void)handleShowSystemHUDAction
{
  v4 = +[UIApplication sharedApplication];
  v2 = [v4 delegate];
  v3 = [v2 bannerPresentationManager];
  [v3 presentSystemHUD];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == &off_100356E30)
  {
    if (![v10 isEqualToString:@"pictureInPictureActive"])
    {
      goto LABEL_13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    v13 = v11;
    v15 = [(PHPIPController *)self pipProxy];
    v16 = [v13 isEqual:v15];

    if (v16)
    {
      v17 = sub_10000B2A0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [(PHPIPController *)self pipProxy];
        v21 = 138543618;
        v22 = self;
        v23 = 1024;
        v24 = [v19 isPictureInPictureActive];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: PGPictureInPictureProxy isPictureInPictureActive changed to %d, firing state change notification", &v21, 0x12u);
      }

      v20 = +[NSNotificationCenter defaultCenter];
      [v20 postNotificationName:@"PHPIPControllerPIPProxyActiveDidChangeNotification" object:self userInfo:0];
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a6 != &off_100356E38)
  {
    goto LABEL_13;
  }

  v13 = [(PHPIPController *)self pipProxy];
  if (![v13 isPictureInPicturePossible])
  {
    goto LABEL_12;
  }

  v14 = [(PHPIPController *)self shouldStartPIPWhenPossible];

  if (v14)
  {
    [(PHPIPController *)self startPIPNow];
  }

LABEL_13:
}

- (void)screenSharingStateMonitor:(id)a3 didUpdateScreenSharingBroadcastingState:(BOOL)a4
{
  v4 = a4;
  if (![(PHPIPController *)self isUsedForScreenSharing])
  {
    [(PHPIPController *)self setIsBroadcastingScreenSharing:v4];

    [(PHPIPController *)self updatePIPProxyLayerCloning];
  }
}

- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4
{
  v4 = a4;
  v6 = [(PHPIPController *)self featureFlags];
  v7 = [v6 screenSharingRemoteControlEnabled];

  v8 = sub_10000B2A0();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = @"NO";
      if (v4)
      {
        v10 = @"YES";
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating state for remote control, remote control state is %@", &v11, 0xCu);
    }

    [(PHPIPController *)self setIsBeingRemoteControlled:v4];
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