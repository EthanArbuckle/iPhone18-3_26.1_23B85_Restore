@interface GAXSpringboard
+ (id)sharedInstance;
- (BOOL)_applicationWithIdentifierIsWebApplicationAndForegroundRunning:(id)running;
- (BOOL)_sendReplayableSimpleMessageToBackboardWithIdentifier:(int)identifier payload:(id)payload description:(id)description error:(id *)error;
- (BOOL)allowsAutolock;
- (BOOL)allowsLockButton;
- (BOOL)allowsMotion;
- (BOOL)allowsTouch;
- (BOOL)allowsVolumeButtons;
- (BOOL)isActive;
- (BOOL)isBundleIDAllowedApp:(id)app;
- (BOOL)isFrontmostAppLayout:(id)layout;
- (BOOL)isInWorkspace;
- (BOOL)isInactive;
- (BOOL)isOnlyGuidedAccessDisablingSystemGestures;
- (BOOL)previouslyEnabledStageManager;
- (BOOL)previouslyEnabledWindowedApps;
- (BOOL)shouldAllowMedusaGestures;
- (BOOL)wantsAppSelfLockMode;
- (BOOL)wantsSingleAppMode;
- (BOOL)wantsSingleAppModeOrAppSelfLockMode;
- (GAXSpringboard)init;
- (id)_debugGAXDescription;
- (id)_gaxHandleFrontmostAppDidCheckIn:(id)in;
- (id)_handleGetDisplayNameForBundleID:(id)d;
- (id)_handleGetNewPasscodeLength:(id)length;
- (id)_handleIsSystemAppShowingTransientOverlay:(id)overlay;
- (id)_handleIsWebApplicationAndForegroundRunning:(id)running;
- (id)_handleLaunchApplication:(id)application;
- (id)_handlePrepareTransitionToWorkspace:(id)workspace;
- (id)_handleServerIsReady:(id)ready;
- (id)_handleServerModeTransitionDidComplete:(id)complete;
- (id)_handleTerminateApplications:(id)applications;
- (id)_handleTimeRestrictionStatusDidChange:(id)change;
- (id)_handleUpdateGAXBackboardState:(id)state;
- (id)_handleUpdateHostedApplicationState:(id)state;
- (int64_t)currentMultitaskingMode;
- (unsigned)profileConfiguration;
- (void)_effectiveVolumeChanged:(id)changed;
- (void)_endHostingApplicationImmediately;
- (void)_extendAXSpringServerInstanceIfExists:(id)exists;
- (void)_handleAXSpringBoardServerDidInit:(id)init;
- (void)_handleDeviceWasLockedNotification:(id)notification;
- (void)_handleDidShowTripleClickAlertNotification:(id)notification;
- (void)_prepareTransitionToWorkspaceWithCompletionHandler:(id)handler;
- (void)_sendMessageToBackboardWithIdentifier:(int)identifier payload:(id)payload description:(id)description replyHandler:(id)handler;
- (void)_updateAVSystemControllerWithVolume:(float)volume;
- (void)_updateSpringBoardForServerMode:(unsigned int)mode previousServerMode:(unsigned int)serverMode;
- (void)_updateStateOfHostedApplicationWithIdentifier:(id)identifier scaleFactor:(double)factor center:(CGPoint)center animationDuration:(double)duration;
- (void)dealloc;
- (void)deviceWasUnlocked;
- (void)handleGuestPassSessionChanged:(BOOL)changed;
- (void)setCurrentMultitaskingMode:(int64_t)mode;
- (void)setRequiringWallpaper:(BOOL)wallpaper;
- (void)setupGuestPassSessionMonitoring;
@end

@implementation GAXSpringboard

+ (id)sharedInstance
{
  if (AXProcessIsSpringBoard())
  {
    if (qword_3B2C8 != -1)
    {
      sub_16454();
    }

    v2 = qword_3B2C0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (GAXSpringboard)init
{
  if ((AXProcessIsSpringBoard() & 1) == 0)
  {
    _AXAssert();
  }

  v22.receiver = self;
  v22.super_class = GAXSpringboard;
  v3 = [(GAXSpringboard *)&v22 init];
  if (v3)
  {
    v4 = dispatch_queue_create("GAXStateAccessQueue", 0);
    gaxStateAccessQueue = v3->_gaxStateAccessQueue;
    v3->_gaxStateAccessQueue = v4;

    v6 = +[AXSpringBoardServer server];
    v7 = objc_opt_new();
    [v7 setUp];
    [(GAXSpringboard *)v3 setSpringboardOverrideHandler:v7];
    v8 = objc_opt_class();
    v9 = [[AXAccessQueue alloc] initWithParentClass:v8 description:@"BackboardMessageQueue" appendUUIDToLabel:0];
    [(GAXSpringboard *)v3 setBackboardMessageQueue:v9];
    v10 = [[AXAccessQueue alloc] initWithParentClass:v8 description:@"ApplicationLaunchingQueue" appendUUIDToLabel:0];
    [(GAXSpringboard *)v3 setApplicationLaunchingQueue:v10];
    v11 = [[AXIPCClient alloc] initWithServiceName:@"com.apple.accessibility.gax.backboard"];
    [v11 setShouldRegisterCallbackSourceOnMainRunloop:1];
    [(GAXSpringboard *)v3 setBackboardClient:v11];
    v12 = [[AXIPCServer alloc] initWithServiceName:@"com.apple.accessibility.gax.springboard" perPidService:0];
    [(GAXSpringboard *)v3 setSpringboardServer:v12];
    v21 = 0;
    v13 = [v12 startServerWithError:&v21];
    v14 = v21;
    if ((v13 & 1) == 0)
    {
      v15 = GAXLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_16468();
      }
    }

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v3 selector:"_handleDeviceWasLockedNotification:" name:@"SBLockScreenUIDidLockNotification" object:0];
    [v16 addObserver:v3 selector:"_handleDeviceWasLockedNotification:" name:@"SBLockScreenUIRelockedNotification" object:0];
    [v16 addObserver:v3 selector:"_handleDidShowTripleClickAlertNotification:" name:AXSBServerDidShowTripleClickNotification object:0];
    [v16 addObserver:v3 selector:"_handleAXSpringBoardServerDidInit:" name:AXSpringBoardServerInstanceDidInitializeNotification object:0];
    [v16 addObserver:v3 selector:"_effectiveVolumeChanged:" name:AVSystemController_EffectiveVolumeDidChangeNotification object:0];
    v17 = +[AVSystemController sharedAVSystemController];
    [v17 getActiveCategoryVolume:&v3->_volume andName:0];
    v18 = +[_AXSpringBoardServerInstance springBoardServerInstanceIfExists];
    [(GAXSpringboard *)v3 _extendAXSpringServerInstanceIfExists:v18];

    [(GAXSpringboard *)v3 setNeedsToUpdatePrefersMirroringForExternalDisplaysDefault:1];
    v19 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"SBLockScreenUIDidLockNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"SBLockScreenUIRelockedNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:AXSpringBoardServerInstanceDidInitializeNotification object:0];

  springboardServer = [(GAXSpringboard *)self springboardServer];
  v17 = 0;
  v7 = [springboardServer stopServerWithError:&v17];
  v8 = v17;

  if ((v7 & 1) == 0)
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_164D0();
    }
  }

  backboardClient = [(GAXSpringboard *)self backboardClient];
  v16 = v8;
  v11 = [backboardClient disconnectWithError:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    v13 = GAXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_16538();
    }
  }

  [(GAXSpringboard *)self _updateStateOfHostedApplicationWithIdentifier:0 scaleFactor:1.0 center:INFINITY animationDuration:INFINITY, 0.0];
  springboardOverrideHandler = [(GAXSpringboard *)self springboardOverrideHandler];
  [springboardOverrideHandler tearDown];

  v15.receiver = self;
  v15.super_class = GAXSpringboard;
  [(GAXSpringboard *)&v15 dealloc];
}

- (void)_handleAXSpringBoardServerDidInit:(id)init
{
  object = [init object];
  [(GAXSpringboard *)self _extendAXSpringServerInstanceIfExists:object];
}

- (void)_extendAXSpringServerInstanceIfExists:(id)exists
{
  existsCopy = exists;
  if (existsCopy && (byte_3B2D0 & 1) == 0)
  {
    v5 = existsCopy;
    [existsCopy registerHandlerForMessageKey:4800 target:self selector:"_gaxHandleFrontmostAppDidCheckIn:" entitlements:&off_32658];
    [v5 registerHandlerForMessageKey:4801 target:self selector:"_handleServerModeTransitionDidComplete:" entitlements:&off_32670];
    [v5 registerHandlerForMessageKey:4802 target:self selector:"_handleIsWebApplicationAndForegroundRunning:" entitlements:&off_32688];
    [v5 registerHandlerForMessageKey:4809 target:self selector:"_handleIsSystemAppShowingTransientOverlay:" entitlements:&off_326A0];
    [v5 registerHandlerForMessageKey:4803 target:self selector:"_handlePrepareTransitionToWorkspace:" entitlements:&off_326B8];
    [v5 registerHandlerForMessageKey:4804 target:self selector:"_handleUpdateGAXBackboardState:" entitlements:&off_326D0];
    [v5 registerHandlerForMessageKey:4805 target:self selector:"_handleLaunchApplication:" entitlements:&off_326E8];
    [v5 registerHandlerForMessageKey:4806 target:self selector:"_handleEndRequiringWallpaper:" entitlements:&off_32700];
    [v5 registerHandlerForMessageKey:4807 target:self selector:"_handleUpdateHostedApplicationState:" entitlements:&off_32718];
    [v5 registerHandlerForMessageKey:4808 target:self selector:"_handleUnlockDevice:" entitlements:&off_32730];
    [v5 registerHandlerForMessageKey:4810 target:self selector:"_handleGetNewPasscodeLength:" entitlements:&off_32748];
    [v5 registerHandlerForMessageKey:4811 target:self selector:"_handleStopHostingWorkspaceAppImmediately:" entitlements:&off_32760];
    [v5 registerHandlerForMessageKey:4812 target:self selector:"_handleTimeRestrictionStatusDidChange:" entitlements:&off_32778];
    [v5 registerHandlerForMessageKey:4814 target:self selector:"_handleTerminateApplications:" entitlements:&off_32790];
    [v5 registerHandlerForMessageKey:4815 target:self selector:"_handleDisconnectAllCalls:" entitlements:&off_327A8];
    [v5 registerHandlerForMessageKey:4816 target:self selector:"_handlePreventPotentialAppLaunches:" entitlements:&off_327C0];
    [v5 registerHandlerForMessageKey:4813 target:self selector:"_handleGetDisplayNameForBundleID:" entitlements:&off_327D8];
    [v5 registerHandlerForMessageKey:4817 target:self selector:"_handleServerIsReady:" entitlements:&off_327F0];
    [v5 registerHandlerForMessageKey:4818 target:self selector:"_handleAcquireSystemApertureInertAssertion:" entitlements:&__NSArray0__struct];
    [v5 registerHandlerForMessageKey:4819 target:self selector:"_handleInvalidateSystemApertureInertAssertion:" entitlements:&__NSArray0__struct];
    existsCopy = v5;
    byte_3B2D0 = 1;
  }
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2054;
  v5[3] = &unk_2C618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isInWorkspace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_211C;
  v5[3] = &unk_2C618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isInactive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_21E4;
  v5[3] = &unk_2C618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)allowsTouch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_22AC;
  v5[3] = &unk_2C618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)allowsLockButton
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2370;
  v5[3] = &unk_2C618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)allowsMotion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2434;
  v5[3] = &unk_2C618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)allowsAutolock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_24F8;
  v5[3] = &unk_2C618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)allowsVolumeButtons
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_25BC;
  v5[3] = &unk_2C618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)profileConfiguration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2680;
  v5[3] = &unk_2C618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setRequiringWallpaper:(BOOL)wallpaper
{
  if (self->_requiringWallpaper != wallpaper)
  {
    wallpaperCopy = wallpaper;
    self->_requiringWallpaper = wallpaper;
    v5 = +[AXSpringBoardServer server];
    v6 = v5;
    if (wallpaperCopy)
    {
      [v5 beginRequiringWallpaper];
    }

    else
    {
      [v5 gaxEndRequiringWallpaper];
    }
  }
}

- (void)_updateStateOfHostedApplicationWithIdentifier:(id)identifier scaleFactor:(double)factor center:(CGPoint)center animationDuration:(double)duration
{
  y = center.y;
  x = center.x;
  identifierCopy = identifier;
  selfCopy = self;
  hostedApplicationWindow = [(GAXSpringboard *)self hostedApplicationWindow];
  v12 = +[UIScreen mainScreen];
  fixedCoordinateSpace = [v12 fixedCoordinateSpace];
  v14 = fabs(factor + -1.0);
  [fixedCoordinateSpace bounds];
  v16 = v15;
  v18 = v17;

  activeInterfaceOrientation = [UIApp activeInterfaceOrientation];
  v20 = v16 - y;
  v21 = v18 - y;
  if (activeInterfaceOrientation != (&dword_0 + 2))
  {
    v21 = y;
  }

  if (activeInterfaceOrientation == (&dword_0 + 3))
  {
    v21 = x;
  }

  else
  {
    v20 = x;
  }

  if (activeInterfaceOrientation == &dword_4)
  {
    v22 = v18 - x;
  }

  else
  {
    v22 = v21;
  }

  if (activeInterfaceOrientation == &dword_4)
  {
    v23 = y;
  }

  else
  {
    v23 = v20;
  }

  if (v14 >= 2.22044605e-16 && hostedApplicationWindow == 0)
  {
    v27 = +[AXSpringBoardServer server];
    _windowsToHost = [v27 _windowsToHost];

    firstObject = [_windowsToHost firstObject];
    windowScene = [firstObject windowScene];

    v57 = [[UIWindow alloc] initWithWindowScene:windowScene];
    [v57 setWindowLevel:10000004.0];
    v55 = +[NSMutableArray array];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = _windowsToHost;
    v30 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
    if (v30)
    {
      v56 = *v76;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v76 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v75 + 1) + 8 * i);
          v69 = 0.0;
          v70 = &v69;
          v71 = 0x3032000000;
          v72 = sub_2E48;
          v73 = sub_2E58;
          v74 = 0;
          v33 = [NSString stringWithFormat:@"com.apple.GuidedAccess.Workspace.%p", v32];
          v65[5] = _NSConcreteStackBlock;
          v65[6] = 3221225472;
          v65[7] = sub_2E60;
          v65[8] = &unk_2C680;
          v68 = &v69;
          v65[9] = v32;
          v34 = v57;
          v66 = v34;
          v35 = v33;
          v67 = v35;
          AXPerformSafeBlock();
          if (*(v70 + 5))
          {
            [v55 addObject:?];
            buf[0] = 0;
            objc_opt_class();
            v36 = [*(v70 + 5) safeValueForKey:@"hostView"];
            v37 = __UIAccessibilityCastAsClass();

            if (buf[0] == 1)
            {
              abort();
            }

            v38 = *&CGAffineTransformIdentity.c;
            *buf = *&CGAffineTransformIdentity.a;
            v80 = v38;
            v81 = *&CGAffineTransformIdentity.tx;
            [v37 setTransform:buf];
            [v34 bounds];
            [v37 setFrame:?];
            [v37 setAutoresizingMask:18];
            [v34 addSubview:v37];
          }

          else
          {
            v37 = GAXLogCommon();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              *&buf[4] = v32;
              _os_log_fault_impl(&dword_0, v37, OS_LOG_TYPE_FAULT, "Could not create a hosting wrapper for window: %@.", buf, 0xCu);
            }
          }

          _Block_object_dispose(&v69, 8);
        }

        v30 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
      }

      while (v30);
    }

    [v57 setHidden:0];
    [(GAXSpringboard *)selfCopy setContextHostWrappers:v55];
    [(GAXSpringboard *)selfCopy setHostedApplicationWindow:v57];

    v26 = &stru_2C658;
    v25 = v57;
    if (!v57)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v25 = hostedApplicationWindow;
  if (v14 < 2.22044605e-16)
  {
    if (x == INFINITY && y == INFINITY)
    {
      [hostedApplicationWindow bounds];
      v40 = v83.origin.x;
      v41 = v83.origin.y;
      width = v83.size.width;
      height = v83.size.height;
      MidX = CGRectGetMidX(v83);
      v84.origin.x = v40;
      v84.origin.y = v41;
      v84.size.width = width;
      v84.size.height = height;
      [hostedApplicationWindow convertPoint:0 toWindow:{MidX, CGRectGetMidY(v84)}];
      v23 = v45;
      v22 = v46;
    }

    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_2EF0;
    v65[3] = &unk_2C6D0;
    v65[4] = selfCopy;
    v26 = objc_retainBlock(v65);
    factor = 1.0;
    v25 = hostedApplicationWindow;
    if (!hostedApplicationWindow)
    {
      goto LABEL_37;
    }

LABEL_32:
    [v25 transform];
    v39 = v69 + *&v71;
    goto LABEL_38;
  }

  v26 = &stru_2C658;
  if (hostedApplicationWindow)
  {
    goto LABEL_32;
  }

LABEL_37:
  v39 = 0.0;
LABEL_38:
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_3084;
  v60[3] = &unk_2C6F8;
  v47 = factor / fabs(v39);
  v48 = v25;
  v61 = v48;
  v62 = v23;
  v63 = v22;
  v64 = v47;
  v49 = objc_retainBlock(v60);
  v50 = v49;
  if (fabs(duration) >= 2.22044605e-16)
  {
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_3110;
    v58[3] = &unk_2C720;
    v59 = v49;
    [UIView animateWithDuration:v58 animations:v26 completion:duration];
  }

  else
  {
    (v49[2])(v49);
    v26->invoke(v26, 1);
  }
}

- (void)_endHostingApplicationImmediately
{
  contextHostWrappers = [(GAXSpringboard *)self contextHostWrappers];
  hostedApplicationWindow = [(GAXSpringboard *)self hostedApplicationWindow];
  if (contextHostWrappers | hostedApplicationWindow)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = contextHostWrappers;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          AXPerformSafeBlock();
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [hostedApplicationWindow setHidden:1];
    [(GAXSpringboard *)self setHostedApplicationWindow:0];
    [(GAXSpringboard *)self setContextHostWrappers:0];
  }
}

- (void)deviceWasUnlocked
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"GAXDeviceWasUnlockedNotification" object:0];

  [(GAXSpringboard *)self _sendSimpleMessageToBackboardWithIdentifier:13002 payload:0 description:@"device was unlocked"];
}

- (BOOL)wantsSingleAppMode
{
  v2 = +[MCProfileConnection sharedConnection];
  isInSingleAppMode = [v2 isInSingleAppMode];

  return isInSingleAppMode;
}

- (BOOL)wantsAppSelfLockMode
{
  v2 = +[GAXSpringboard sharedInstance];
  v3 = [v2 profileConfiguration] == 3;

  return v3;
}

- (BOOL)wantsSingleAppModeOrAppSelfLockMode
{
  if ([(GAXSpringboard *)self wantsSingleAppMode])
  {
    return 1;
  }

  return [(GAXSpringboard *)self wantsAppSelfLockMode];
}

- (BOOL)shouldAllowMedusaGestures
{
  if ([(GAXSpringboard *)self isActive]|| [(GAXSpringboard *)self isInWorkspace])
  {
    return 0;
  }

  else
  {
    return ![(GAXSpringboard *)self wantsSingleAppModeOrAppSelfLockMode];
  }
}

- (BOOL)isOnlyGuidedAccessDisablingSystemGestures
{
  v2 = +[_AXSpringBoardServerInstance springBoardServerInstanceIfExists];
  onlySystemGesturesDisabledHolderIsGuidedAccess = [v2 onlySystemGesturesDisabledHolderIsGuidedAccess];

  return onlySystemGesturesDisabledHolderIsGuidedAccess;
}

- (BOOL)isBundleIDAllowedApp:(id)app
{
  appCopy = app;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = +[MCProfileConnection sharedConnection];
  effectiveWhitelistedAppsAndOptions = [v4 effectiveWhitelistedAppsAndOptions];

  v6 = [effectiveWhitelistedAppsAndOptions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = kMCAppWhitelistIdentifierKey;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(effectiveWhitelistedAppsAndOptions);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) objectForKey:v9];
        v12 = [v11 isEqualToString:appCopy];

        if (v12)
        {

          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [effectiveWhitelistedAppsAndOptions countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [appCopy isEqualToString:@"com.apple.AccessibilityUIServer"];
LABEL_11:

  return v13;
}

- (BOOL)isFrontmostAppLayout:(id)layout
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  layoutCopy = layout;
  AXPerformSafeBlock();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_prepareTransitionToWorkspaceWithCompletionHandler:(id)handler
{
  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_3D0C;
  v38 = &unk_2C7C0;
  selfCopy = self;
  handlerCopy = handler;
  v40 = handlerCopy;
  v5 = objc_retainBlock(&v35);
  v6 = [AXSpringBoardServer server:v35];
  isSystemAppFrontmost = [v6 isSystemAppFrontmost];

  if (isSystemAppFrontmost)
  {
    v8 = +[AXSettings sharedInstance];
    if ([v8 guidedAccessAllowsUnlockWithTouchID])
    {
      workspaceTransitionRetryCount = self->_workspaceTransitionRetryCount;

      if (workspaceTransitionRetryCount <= 9)
      {
        v10 = GAXLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = self->_workspaceTransitionRetryCount;
          *buf = 134218240;
          v42 = v11;
          v43 = 2048;
          v44 = 10;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "System app is frontmost during biometric exit (retry %ld/%ld); will retry transition to workspace after delay.", buf, 0x16u);
        }

        ++self->_workspaceTransitionRetryCount;
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (!handlerCopy)
    {
      goto LABEL_26;
    }

    v17 = +[AXSettings sharedInstance];
    if ([v17 guidedAccessAllowsUnlockWithTouchID])
    {
      v18 = self->_workspaceTransitionRetryCount;

      if (v18 >= 10)
      {
        v19 = GAXLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_165A0(v19, v20, v21, v22, v23, v24, v25, v26);
        }

LABEL_25:

        self->_workspaceTransitionRetryCount = 0;
        (*(handlerCopy + 2))(handlerCopy, 1);
        goto LABEL_26;
      }
    }

    else
    {
    }

    v19 = GAXLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Aborting transition because system app is frontmost.", buf, 2u);
    }

    goto LABEL_25;
  }

  self->_workspaceTransitionRetryCount = 0;
  v13 = +[AXSpringBoardServer server];
  isNotificationCenterVisible = [v13 isNotificationCenterVisible];

  v15 = +[AXSpringBoardServer server];
  v16 = v15;
  if (isNotificationCenterVisible)
  {
    [v15 hideNotificationCenter];

LABEL_9:
    v12.n128_u64[0] = 0.5;
    (v5[2])(v5, v12);
    goto LABEL_26;
  }

  isAppSwitcherVisible = [v15 isAppSwitcherVisible];

  v28 = +[AXSpringBoardServer server];
  v29 = v28;
  if (isAppSwitcherVisible)
  {
    [v28 dismissAppSwitcher];

LABEL_20:
    v30.n128_u64[0] = 0x3FC999999999999ALL;
    (v5[2])(v5, v30);
    goto LABEL_26;
  }

  isSiriVisible = [v28 isSiriVisible];

  if (isSiriVisible)
  {
    v32 = +[AXSpringBoardServer server];
    [v32 dismissSiri];

    goto LABEL_20;
  }

  didEndRequiringWallpaperCheckTimer = [(GAXSpringboard *)self didEndRequiringWallpaperCheckTimer];
  [didEndRequiringWallpaperCheckTimer cancel];

  if (![(GAXSpringboard *)self isRequiringWallpaper])
  {
    [(GAXSpringboard *)self setRequiringWallpaper:1];
    v34 = +[AXSpringBoardServer server];
    [v34 animateWallpaperStyleToNormal];
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_26:
}

- (BOOL)_applicationWithIdentifierIsWebApplicationAndForegroundRunning:(id)running
{
  runningCopy = running;
  v4 = +[AXSpringBoardServer server];
  v5 = [v4 applicationWithIdentifier:runningCopy];

  v6 = [v5 safeValueForKey:@"isWebApplication"];
  LODWORD(v4) = [v6 BOOLValue];

  if (v4)
  {
    v7 = +[AXSpringBoardServer server];
    focusedAppProcess = [v7 focusedAppProcess];

    v9 = [v5 isEqual:focusedAppProcess];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateSpringBoardForServerMode:(unsigned int)mode previousServerMode:(unsigned int)serverMode
{
  v7 = [AXSafeClassFromString() safeValueForKeyPath:@"sharedInstance.mainDisplayWindowScene.floatingDockController"];
  v8 = mode - 1 < 2 && serverMode == 0;
  v9 = v8;
  if (v8)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, kAXSGuidedAccessStartBlockingEventsInSpringBoard, 0, 0, 1u);
    [(GAXSpringboard *)self _acquireSystemApertureInertAssertion];
    [(GAXSpringboard *)self _acquireCameraButtonAssertion];
    v35[6] = _NSConcreteStackBlock;
    v35[7] = 3221225472;
    v35[8] = sub_4948;
    v35[9] = &unk_2C6A8;
    v11 = &v36;
    v36 = v7;
    AXPerformSafeBlock();
    v12 = +[UIApplication sharedApplication];
    v13 = [v12 safeValueForKey:@"bannerManager"];

    v35[1] = _NSConcreteStackBlock;
    v35[2] = 3221225472;
    v35[3] = sub_4958;
    v35[4] = &unk_2C6A8;
    v35[5] = v13;
    v14 = v13;
    AXPerformSafeBlock();

    v15 = 0;
  }

  else
  {
    v15 = serverMode == 2;
    v16 = mode == 0;
    if (mode || serverMode - 1 > 1)
    {
      goto LABEL_14;
    }

    v17 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v17, kAXSGuidedAccessStopBlockingEventsInSpringBoard, 0, 0, 1u);
    [(GAXSpringboard *)self _invalidateSystemApertureInertAssertion];
    [(GAXSpringboard *)self _invalidateCameraButtonAssertion];
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_496C;
    v34 = &unk_2C6A8;
    v11 = v35;
    v35[0] = v7;
    AXPerformSafeBlock();
  }

  v16 = v9 ^ 1;

LABEL_14:
  v18 = mode != 2 && v15;
  v19 = serverMode != 2 && mode == 2;
  if (v19 || v18)
  {
    v20 = [AXSafeClassFromString() safeValueForKey:@"sharedInstanceIfExists"];
    v21 = [v20 safeValueForKey:@"_rebuildAppListCache"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_497C;
    v29[3] = &unk_2C808;
    modeCopy = mode;
    [v20 _enumerateSwitcherControllersWithBlock:v29];
    if (mode == 2)
    {
      [(GAXSpringboard *)self setupGuestPassSessionMonitoring];
    }
  }

  wantsSingleAppModeOrAppSelfLockMode = [(GAXSpringboard *)self wantsSingleAppModeOrAppSelfLockMode];
  if ((v9 | wantsSingleAppModeOrAppSelfLockMode))
  {
    currentMultitaskingMode = [(GAXSpringboard *)self currentMultitaskingMode];
    currentMultitaskingMode2 = [(GAXSpringboard *)self currentMultitaskingMode];
    [(GAXSpringboard *)self setPreviouslyEnabledStageManager:currentMultitaskingMode == 2];
    [(GAXSpringboard *)self setPreviouslyEnabledWindowedApps:currentMultitaskingMode2 == 1];
    if (currentMultitaskingMode == 2 || currentMultitaskingMode2 == 1)
    {
      v25 = GAXLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Turning off multitasking, enforcing Full Screen Apps mode for Guided Access", v28, 2u);
      }

      [(GAXSpringboard *)self setCurrentMultitaskingMode:0];
    }
  }

  if (!(wantsSingleAppModeOrAppSelfLockMode & 1 | ((v16 & 1) == 0)) && ([(GAXSpringboard *)self previouslyEnabledStageManager]|| [(GAXSpringboard *)self previouslyEnabledWindowedApps]))
  {
    v26 = GAXLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Reinstating multitasking since Guided Access is ending and we found that multitasking was previously enabled", v28, 2u);
    }

    if ([(GAXSpringboard *)self previouslyEnabledStageManager])
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    [(GAXSpringboard *)self setCurrentMultitaskingMode:v27];
  }
}

- (void)setupGuestPassSessionMonitoring
{
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4DB4;
  v4[3] = &unk_2C830;
  objc_copyWeak(&v5, &location);
  [v3 registerUpdateBlock:v4 forRetrieveSelector:"guestPassSessionIsActive" withListener:self];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)handleGuestPassSessionChanged:(BOOL)changed
{
  changedCopy = changed;
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"inactive";
    if (changedCopy)
    {
      v5 = @"active";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Gudied Access is refreshing idle timers because Guest Pass changed to: %@", &v7, 0xCu);
  }

  v6 = +[AXSpringBoardServer server];
  [v6 updateLockAndIdleTimers];
}

- (void)_updateAVSystemControllerWithVolume:(float)volume
{
  v4 = +[AVSystemController sharedAVSystemController];
  v8 = 0;
  [v4 getActiveCategoryVolume:0 andName:&v8];
  v5 = v8;
  *&v6 = volume;
  [v4 setActiveCategoryVolumeTo:v6];
  v7 = GAXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v5;
    v11 = 2048;
    volumeCopy = volume;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Set volume for category %@ to %f", buf, 0x16u);
  }
}

- (void)_effectiveVolumeChanged:(id)changed
{
  changedCopy = changed;
  v5 = changedCopy;
  if (changedCopy && ([changedCopy userInfo], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(GAXSpringboard *)self volume];
    v8 = v7;
    userInfo = [v5 userInfo];
    v10 = [userInfo objectForKeyedSubscript:AVSystemController_EffectiveVolumeNotificationParameter_Volume];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11;
      userInfo2 = [v5 userInfo];
      v14 = [userInfo2 objectForKeyedSubscript:AVSystemController_EffectiveVolumeNotificationParameter_VolumeChangeReason];

      v15 = GAXLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v20 = v12;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Effective volume changed: %f. Reason: %@", buf, 0x16u);
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_5220;
      v16[3] = &unk_2C858;
      v16[4] = self;
      v17 = v8;
      v18 = v12;
      dispatch_async(&_dispatch_main_q, v16);
    }

    else
    {
      v14 = GAXLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_16614(v14);
      }
    }
  }

  else
  {
    v10 = GAXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_16658(v10);
    }
  }
}

- (int64_t)currentMultitaskingMode
{
  springBoardDefaults = [(GAXSpringboard *)self springBoardDefaults];
  v4 = [springBoardDefaults BOOLForKey:@"SBChamoisWindowingEnabled"];

  springBoardDefaults2 = [(GAXSpringboard *)self springBoardDefaults];
  v6 = [springBoardDefaults2 BOOLForKey:@"SBMedusaMultitaskingEnabled"];

  if (v4)
  {
    return 2;
  }

  else
  {
    return v6;
  }
}

- (void)setCurrentMultitaskingMode:(int64_t)mode
{
  springBoardDefaults = [(GAXSpringboard *)self springBoardDefaults];
  [springBoardDefaults setBool:mode == 2 forKey:@"SBChamoisWindowingEnabled"];

  if (mode != 2)
  {
    springBoardDefaults2 = [(GAXSpringboard *)self springBoardDefaults];
    [springBoardDefaults2 setBool:mode == 1 forKey:@"SBMedusaMultitaskingEnabled"];
  }
}

- (BOOL)previouslyEnabledStageManager
{
  springBoardDefaults = [(GAXSpringboard *)self springBoardDefaults];
  v3 = [springBoardDefaults BOOLForKey:@"GAXSBChamoisWindowingPreviouslyEnabled"];

  return v3;
}

- (BOOL)previouslyEnabledWindowedApps
{
  springBoardDefaults = [(GAXSpringboard *)self springBoardDefaults];
  v3 = [springBoardDefaults BOOLForKey:@"GAXSBMedusaMultitaskingPreviouslyEnabled"];

  return v3;
}

- (void)_handleDeviceWasLockedNotification:(id)notification
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"GAXDeviceWasLockedOrRelockedNotification" object:0];

  [(GAXSpringboard *)self _sendSimpleMessageToBackboardWithIdentifier:13007 payload:0 description:@"device was locked"];
}

- (void)_handleDidShowTripleClickAlertNotification:(id)notification
{
  userInfo = [notification userInfo];
  [(GAXSpringboard *)self _sendSimpleMessageToBackboardWithIdentifier:13008 payload:userInfo description:@"did show triple click alert"];
}

- (id)_gaxHandleFrontmostAppDidCheckIn:(id)in
{
  inCopy = in;
  v3 = inCopy;
  AXPerformBlockOnMainThread();

  return 0;
}

- (id)_handleServerModeTransitionDidComplete:(id)complete
{
  completeCopy = complete;
  payload = [completeCopy payload];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v5 = [payload objectForKey:@"GAXIPCPayloadKeyShouldHaveLockScreenDisableAssertion"];
  bOOLValue = [v5 BOOLValue];

  v10 = bOOLValue;
  v8 = completeCopy;
  AXPerformBlockAsynchronouslyOnMainThread();

  _Block_object_dispose(v9, 8);
  return 0;
}

- (id)_handleIsWebApplicationAndForegroundRunning:(id)running
{
  payload = [running payload];
  v5 = [payload objectForKey:@"GAXIPCPayloadKeyApplicationIdentifier"];

  if (v5)
  {
    v6 = [(GAXSpringboard *)self _applicationWithIdentifierIsWebApplicationAndForegroundRunning:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [AXIPCMessage alloc];
  v12 = @"GAXIPCPayloadKeyIsWebApplicationAndForegroundRunning";
  v8 = [NSNumber numberWithBool:v6];
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [v7 initWithKey:4802 payload:v9];

  return v10;
}

- (id)_handleIsSystemAppShowingTransientOverlay:(id)overlay
{
  v3 = [AXSafeClassFromString() safeValueForKey:@"mainWorkspace"];
  v4 = [v3 safeValueForKey:@"transientOverlayPresentationManager"];

  v5 = [v4 safeBoolForKey:@"hasActivePresentation"];
  v6 = [AXIPCMessage alloc];
  v11 = @"result";
  v7 = [NSNumber numberWithBool:v5];
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [v6 initWithKey:4809 payload:v8];

  return v9;
}

- (id)_handlePrepareTransitionToWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[1] = _NSConcreteStackBlock;
  v21[2] = 3221225472;
  v21[3] = sub_6470;
  v21[4] = &unk_2C960;
  v21[5] = self;
  v21[6] = &v26;
  v21[7] = &v22;
  AXPerformBlockAsynchronouslyOnMainThread();
  while ((v23[3] & 1) == 0)
  {
    v5 = +[NSRunLoop currentRunLoop];
    v6 = [NSDate dateWithTimeIntervalSinceNow:0.05];
    [v5 runUntilDate:v6];
  }

  if (*(v27 + 24) == 1)
  {
    v7 = [NSDictionary alloc];
    v8 = [NSNumber numberWithBool:1];
    v9 = [v7 initWithObjectsAndKeys:{v8, @"GAXIPCPayloadKeyShouldAbortServerModeTransition", 0}];
  }

  else
  {
    payload = [workspaceCopy payload];
    v11 = [payload objectForKey:@"GAXIPCPayloadKeyFrontmostAppIdentifier"];

    if (v11)
    {
      v12 = +[AXSpringBoardServer server];
      v8 = [v12 appNameForDisplayID:v11];

      v13 = +[AXSpringBoardServer server];
      v14 = [v13 appIconForBundleID:v11 format:0];

      if (v14)
      {
        v21[0] = 0;
        v15 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v21];
        v16 = v21[0];
        if (v16)
        {
          v17 = GAXLogCommon();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1669C();
          }
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v8 = 0;
    }

    v18 = objc_alloc_init(NSMutableDictionary);
    v9 = v18;
    if (v8)
    {
      [v18 setObject:v8 forKey:@"GAXIPCPayloadKeyFrontmostAppName"];
    }

    if (v15)
    {
      [v9 setObject:v15 forKey:@"GAXIPCPayloadKeyFrontmostArchivedAppIcon"];
    }
  }

  v19 = [[AXIPCMessage alloc] initWithKey:4803 payload:v9];
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v19;
}

- (id)_handleUpdateGAXBackboardState:(id)state
{
  stateCopy = state;
  memset(v17, 0, 28);
  extractGAXBackboardStateFromMessage(stateCopy, v17);
  v9 = 0;
  v10 = &v9;
  v11 = 0x4010000000;
  v12 = &unk_281A9;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6618;
  v7[3] = &unk_2C8A8;
  v7[4] = self;
  v7[5] = &v9;
  v8[0] = v17[0];
  *(v8 + 12) = *(v17 + 12);
  dispatch_sync(gaxStateAccessQueue, v7);
  [(GAXSpringboard *)self _updateSpringBoardForServerMode:LODWORD(v17[0]) previousServerMode:*(v10 + 8)];
  _Block_object_dispose(&v9, 8);

  return 0;
}

- (id)_handleLaunchApplication:(id)application
{
  applicationCopy = application;
  payload = [applicationCopy payload];
  v6 = [payload objectForKey:@"GAXIPCPayloadKeyApplicationIdentifier"];

  payload2 = [applicationCopy payload];
  v8 = [payload2 objectForKey:@"GAXIPCPayloadKeyProfileConfiguration"];

  payload3 = [applicationCopy payload];

  v10 = [payload3 objectForKey:@"GAXIPCPayloadKeyAppLaunchGeneration"];

  applicationLaunchingQueue = [(GAXSpringboard *)self applicationLaunchingQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_67BC;
  v16[3] = &unk_2CB28;
  v17 = v6;
  selfCopy = self;
  v19 = v10;
  v20 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v6;
  [applicationLaunchingQueue performAsynchronousWritingBlock:v16];

  return 0;
}

- (id)_handleUpdateHostedApplicationState:(id)state
{
  payload = [state payload];
  v4 = [payload objectForKey:@"GAXIPCPayloadKeyAnimationDuration"];
  [v4 doubleValue];

  v5 = [payload objectForKey:@"GAXIPCPayloadKeyHostedApplicationScaleFactor"];
  [v5 doubleValue];

  v6 = [payload objectForKey:@"GAXIPCPayloadKeyHostedApplicationCenter"];
  CGPointFromString(v6);

  v9 = [payload objectForKey:@"GAXIPCPayloadKeyApplicationIdentifier"];
  v7 = v9;
  AXPerformBlockOnMainThread();

  return 0;
}

- (id)_handleGetNewPasscodeLength:(id)length
{
  v13 = 0;
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 unlockScreenTypeWithOutSimplePasscodeType:&v13];

  v5 = 4;
  if (v13 == 1)
  {
    v5 = 6;
  }

  if (v13 != -1 && v4 == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6;
  }

  v8 = [AXIPCMessage alloc];
  v14 = @"GAXIPCPayloadKeyNewPasscodeLength";
  v9 = [NSNumber numberWithUnsignedInteger:v7];
  v15 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v11 = [v8 initWithKey:4810 payload:v10];

  return v11;
}

- (id)_handleTimeRestrictionStatusDidChange:(id)change
{
  v3 = +[AXSpringBoardServer server];
  [v3 updateLockAndIdleTimers];

  return 0;
}

- (id)_handleTerminateApplications:(id)applications
{
  applicationsCopy = applications;
  payload = [applicationsCopy payload];
  v5 = [payload objectForKeyedSubscript:@"GAXIPCPayloadKeyAppsNotToTerminate"];

  v43 = applicationsCopy;
  payload2 = [applicationsCopy payload];
  v7 = [payload2 objectForKeyedSubscript:@"GAXIPCPayloadKeyAppTerminationReason"];

  v8 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  buf[0] = 0;
  objc_opt_class();
  v42 = v8;
  v9 = [v8 safeValueForKey:@"runningApplications"];
  v10 = __UIAccessibilityCastAsClass();

  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = @"SBApplication";
    v14 = *v53;
    v15 = &SecTaskCopyValueForEntitlement_ptr;
    v44 = *v53;
    do
    {
      v16 = 0;
      v45 = v12;
      do
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v52 + 1) + 8 * v16);
        buf[0] = 0;
        v18 = __UIAccessibilitySafeClass();
        if (buf[0] == 1)
        {
          goto LABEL_34;
        }

        v19 = v18;

        buf[0] = 0;
        v20 = v15[152];
        objc_opt_class();
        v21 = [v19 safeValueForKey:@"bundleIdentifier"];
        v22 = __UIAccessibilityCastAsClass();

        if (buf[0] == 1)
        {
LABEL_34:
          abort();
        }

        if (([v5 containsObject:v22] & 1) == 0)
        {
          v23 = v13;
          v24 = v5;
          v25 = GAXLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v58 = v22;
            v59 = 2112;
            v60 = v7;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Terminating %@ because %@", buf, 0x16u);
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v26 = +[FBProcessManager sharedInstance];
          v27 = [v26 applicationProcessesForBundleIdentifier:v22];

          v28 = [v27 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v49;
            do
            {
              for (i = 0; i != v29; i = i + 1)
              {
                if (*v49 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                [*(*(&v48 + 1) + 8 * i) killForReason:5 andReport:0 withDescription:v7];
              }

              v29 = [v27 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v29);
          }

          v5 = v24;
          v13 = v23;
          v14 = v44;
          v12 = v45;
          v15 = &SecTaskCopyValueForEntitlement_ptr;
        }

        v16 = v16 + 1;
      }

      while (v16 != v12);
      v12 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v12);
  }

  if (([v5 containsObject:@"com.apple.shortcuts"] & 1) == 0)
  {
    v32 = [RBSTerminateRequest alloc];
    v33 = [RBSProcessPredicate predicateMatchingBundleIdentifier:@"com.apple.WorkflowKit.BackgroundShortcutRunner"];
    v34 = [[RBSTerminateContext alloc] initWithExplanation:v7];
    v35 = [v32 initWithPredicate:v33 context:v34];

    v47 = 0;
    LODWORD(v34) = [v35 execute:&v47];
    v36 = v47;
    v37 = v36;
    if (v34)
    {
      v38 = GAXLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v7;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "Terminated BackgroundShortcutRunner for reason %@", buf, 0xCu);
      }
    }

    else
    {
      domain = [v36 domain];
      if ([domain isEqualToString:RBSRequestErrorDomain])
      {
        code = [v37 code];

        if (code == &dword_0 + 3)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      v38 = GAXLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_167B0();
      }
    }

LABEL_32:
  }

  return 0;
}

- (id)_handleGetDisplayNameForBundleID:(id)d
{
  payload = [d payload];
  v4 = [payload objectForKeyedSubscript:@"GAXIPCPayloadKeyBundleIdentifier"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _AXAssert();
  }

  v5 = +[AXSpringBoardServer server];
  v6 = [v5 appNameForDisplayID:v4];

  v7 = [AXIPCMessage alloc];
  v8 = v7;
  if (v6)
  {
    v12 = @"result";
    v13 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [v8 initWithKey:4813 payload:v9];
  }

  else
  {
    v10 = [v7 initWithKey:4813 payload:0];
  }

  return v10;
}

- (id)_handleServerIsReady:(id)ready
{
  v3 = [[AXIPCMessage alloc] initWithKey:4817 payload:&off_32808];

  return v3;
}

- (BOOL)_sendReplayableSimpleMessageToBackboardWithIdentifier:(int)identifier payload:(id)payload description:(id)description error:(id *)error
{
  payloadCopy = payload;
  descriptionCopy = description;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_2E48;
  v29 = sub_2E58;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  backboardMessageQueue = [(GAXSpringboard *)self backboardMessageQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_89F8;
  v16[3] = &unk_2CC18;
  v16[4] = self;
  identifierCopy = identifier;
  v13 = payloadCopy;
  v17 = v13;
  v18 = &v21;
  v19 = &v25;
  [backboardMessageQueue performSynchronousWritingBlock:v16];

  if (error)
  {
    *error = v26[5];
  }

  v14 = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (void)_sendMessageToBackboardWithIdentifier:(int)identifier payload:(id)payload description:(id)description replyHandler:(id)handler
{
  payloadCopy = payload;
  descriptionCopy = description;
  handlerCopy = handler;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_8C28;
  v24[3] = &unk_2CC40;
  v25 = descriptionCopy;
  v13 = descriptionCopy;
  v14 = objc_retainBlock(v24);
  backboardMessageQueue = [(GAXSpringboard *)self backboardMessageQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_8C8C;
  v19[3] = &unk_2CC90;
  identifierCopy = identifier;
  v19[4] = self;
  v20 = payloadCopy;
  v21 = handlerCopy;
  v22 = v14;
  v16 = v14;
  v17 = handlerCopy;
  v18 = payloadCopy;
  [backboardMessageQueue performAsynchronousWritingBlock:v19];
}

- (id)_debugGAXDescription
{
  v3 = [NSMutableString stringWithString:@"\n************************************\n"];
  [v3 appendFormat:@"GAX Springboard: %p\n", self];
  *v6 = *&self->_reflectedBackboardState.mode;
  *&v6[3] = *&self->_reflectedBackboardState.tripleClickSheetWindowContextID;
  v4 = gaxDebugDescriptionForGAXBackboardState(v6);
  [v3 appendString:v4];

  [v3 appendFormat:@"Wants Single App Mode:%ld\n", -[GAXSpringboard wantsSingleAppMode](self, "wantsSingleAppMode")];
  [v3 appendFormat:@"Wants App Self-lock Mode:%ld\n", -[GAXSpringboard wantsAppSelfLockMode](self, "wantsAppSelfLockMode")];
  [v3 appendString:@"\n************************************\n"];

  return v3;
}

@end