@interface AXSpringBoardServer
- (BOOL)gaxIsSystemAppShowingTransientOverlay;
- (BOOL)gaxIsWebAppAndForegroundRunning:(id)a3;
- (BOOL)gaxLaunchApplication:(id)a3 withConfiguration:(unsigned int)a4 appLaunchGeneration:(unint64_t)a5 enqueueError:(id *)a6;
- (BOOL)gaxServerIsReady;
- (id)_windowsToHost;
- (id)appIconForBundleID:(id)a3 format:(int)a4;
- (id)appNameForDisplayID:(id)a3;
- (void)acquireSystemApertureInertAssertion;
- (void)activateApp:(id)a3;
- (void)animateWallpaperStyleToNormal;
- (void)animateWallpaperStyleToOriginal;
- (void)beginRequiringWallpaper;
- (void)gaxBackboardStateDidChange:(id *)a3;
- (void)gaxBackboardStateDidChange:(id *)a3 completion:(id)a4;
- (void)gaxDidChangeMode:(unsigned int)a3 shouldAcquireLockScreenAssertion:(BOOL)a4 gaxState:(id *)a5;
- (void)gaxDisconnectAllCalls;
- (void)gaxEndRequiringWallpaper;
- (void)gaxFrontmostAppDidCheckIn:(id)a3;
- (void)gaxGetDisplayNameForBundleId:(id)a3 completion:(id)a4;
- (void)gaxGetNewPasscodeLengthWithCompletion:(id)a3;
- (void)gaxPrepareForTransitionToWorkspaceWithAppID:(id)a3 completion:(id)a4;
- (void)gaxPreventPotentialAppLaunches;
- (void)gaxTerminateRunningApplicationsOtherThan:(id)a3 forReason:(id)a4;
- (void)gaxTimeRestrictionStatusDidChange;
- (void)gaxUnlockDevice;
- (void)gaxUpdateStateOfHostedApplicationWithIdentifier:(id)a3 scaleFactorNumber:(id)a4 centerStringRepresentation:(id)a5 animationDurationNumber:(id)a6;
- (void)invalidateSystemApertureInertAssertion;
- (void)quitTopApplication;
- (void)stopHostingWorkspaceApplicationImmediately;
- (void)updateLockAndIdleTimers;
@end

@implementation AXSpringBoardServer

- (void)gaxFrontmostAppDidCheckIn:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
    {
      _AXAssert();
    }

    else
    {
      v5 = [AXIPCMessage alloc];
      v8 = @"GAXIPCPayloadKeyFrontmostAppIdentifier";
      v9 = v4;
      v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      v7 = [v5 initWithKey:4800 payload:v6];
      [(AXSpringBoardServer *)self sendSimpleMessage:v7];
    }
  }
}

- (void)gaxDidChangeMode:(unsigned int)a3 shouldAcquireLockScreenAssertion:(BOOL)a4 gaxState:(id *)a5
{
  v6 = a4;
  v7 = *&a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {

    _AXAssert();
  }

  else
  {
    v14[0] = *&a5->var0;
    *(v14 + 12) = *&a5->var3;
    v9 = serializeGAXBackboardState(v14);
    v15[0] = @"GAXIPCPayloadKeyServerMode";
    v10 = [NSNumber numberWithUnsignedInt:v7];
    v16[0] = v10;
    v15[1] = @"GAXIPCPayloadKeyShouldHaveLockScreenDisableAssertion";
    v11 = [NSNumber numberWithBool:v6];
    v15[2] = @"GAXIPCPayloadKeyGAXBackboardState";
    v16[1] = v11;
    v16[2] = v9;
    v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

    v13 = [[AXIPCMessage alloc] initWithKey:4801 payload:v12];
    [(AXSpringBoardServer *)self sendSimpleMessage:v13];
  }
}

- (BOOL)gaxIsWebAppAndForegroundRunning:(id)a3
{
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
    v5 = 0;
  }

  else
  {
    v9 = @"GAXIPCPayloadKeyApplicationIdentifier";
    v10 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [[AXIPCMessage alloc] initWithKey:4802 payload:v6];
    v5 = [(AXSpringBoardServer *)self sendSimpleMessageWithResult:v7];
  }

  return v5;
}

- (BOOL)gaxIsSystemAppShowingTransientOverlay
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
    return 0;
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4809 payload:0];
    v5 = [(AXSpringBoardServer *)self sendSimpleMessageWithResult:v4];

    return v5;
  }
}

- (void)gaxBackboardStateDidChange:(id *)a3
{
  v3[0] = *&a3->var0;
  *(v3 + 12) = *&a3->var3;
  [(AXSpringBoardServer *)self gaxBackboardStateDidChange:v3 completion:&stru_5D8D0];
}

- (void)gaxBackboardStateDidChange:(id *)a3 completion:(id)a4
{
  v6 = a4;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
  }

  else
  {
    v12[0] = *&a3->var0;
    *(v12 + 12) = *&a3->var3;
    v7 = serializeGAXBackboardState(v12);
    v13 = @"GAXIPCPayloadKeyGAXBackboardState";
    v14 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [[AXIPCMessage alloc] initWithKey:4804 payload:v8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1BCCC;
    v10[3] = &unk_5D8F8;
    v11 = v6;
    [(AXSpringBoardServer *)self sendAsynchronousMessage:v9 replyOnQueue:&_dispatch_main_q handler:v10];
  }
}

- (void)gaxPrepareForTransitionToWorkspaceWithAppID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1BF3C;
    v22 = &unk_5D920;
    v23 = v7;
    AXPerformBlockAsynchronouslyOnMainThread();
    v8 = v23;
  }

  else if (v6)
  {
    v9 = [AXIPCMessage alloc];
    v24 = @"GAXIPCPayloadKeyFrontmostAppIdentifier";
    v25 = v6;
    v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v8 = [v9 initWithKey:4803 payload:v10];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1BF64;
    v12[3] = &unk_5D8F8;
    v13 = v7;
    [(AXSpringBoardServer *)self sendAsynchronousMessage:v8 replyOnQueue:&_dispatch_main_q handler:v12];
  }

  else
  {
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_33BD0();
    }

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1BF50;
    v17 = &unk_5D920;
    v18 = v7;
    AXPerformBlockAsynchronouslyOnMainThread();
    v8 = v18;
  }
}

- (BOOL)gaxLaunchApplication:(id)a3 withConfiguration:(unsigned int)a4 appLaunchGeneration:(unint64_t)a5 enqueueError:(id *)a6
{
  v11 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
    if (a6)
    {
      v12 = NSStringFromSelector(a2);
      *a6 = [AXSubsystemSBServer errorWithDescription:@"Can't call %@ locally", v12];

LABEL_9:
      LOBYTE(a6) = 0;
    }
  }

  else
  {
    if (!v11)
    {
      v17 = GAXLogAppLaunching();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_33C10();
      }

      goto LABEL_9;
    }

    v19[0] = @"GAXIPCPayloadKeyProfileConfiguration";
    v13 = [NSNumber numberWithUnsignedInteger:a4];
    v20[0] = v13;
    v20[1] = v11;
    v19[1] = @"GAXIPCPayloadKeyApplicationIdentifier";
    v19[2] = @"GAXIPCPayloadKeyAppLaunchGeneration";
    v14 = [NSNumber numberWithUnsignedInteger:a5];
    v20[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v16 = [[AXIPCMessage alloc] initWithKey:4805 payload:v15];
    LOBYTE(a6) = [(AXSpringBoardServer *)self sendSimpleMessage:v16 enqueueError:a6];
  }

  return a6;
}

- (void)gaxEndRequiringWallpaper
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v4 endRequiringWallpaperWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4806 payload:0];
    [(AXSpringBoardServer *)self sendSimpleMessage:?];
  }
}

- (void)acquireSystemApertureInertAssertion
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Oops - _shouldDispatchLocally", v5, 2u);
    }

    _AXAssert();
  }

  v4 = [[AXIPCMessage alloc] initWithKey:4818 payload:0];
  [(AXSpringBoardServer *)self sendSimpleMessageWithResult:v4];
}

- (void)invalidateSystemApertureInertAssertion
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Oops - _shouldDispatchLocally", v5, 2u);
    }

    _AXAssert();
  }

  v4 = [[AXIPCMessage alloc] initWithKey:4819 payload:0];
  [(AXSpringBoardServer *)self sendSimpleMessageWithResult:v4];
}

- (void)gaxUpdateStateOfHostedApplicationWithIdentifier:(id)a3 scaleFactorNumber:(id)a4 centerStringRepresentation:(id)a5 animationDurationNumber:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
  }

  else
  {
    v13 = [[NSDictionary alloc] initWithObjectsAndKeys:{v12, @"GAXIPCPayloadKeyAnimationDuration", v10, @"GAXIPCPayloadKeyHostedApplicationScaleFactor", v11, @"GAXIPCPayloadKeyHostedApplicationCenter", v15, @"GAXIPCPayloadKeyApplicationIdentifier", 0}];
    v14 = [[AXIPCMessage alloc] initWithKey:4807 payload:v13];
    [(AXSpringBoardServer *)self sendSimpleMessage:v14];
  }
}

- (void)gaxGetNewPasscodeLengthWithCompletion:(id)a3
{
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
  }

  else
  {
    v5 = [[AXIPCMessage alloc] initWithKey:4810 payload:0];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1C6F8;
    v6[3] = &unk_5D8F8;
    v7 = v4;
    [(AXSpringBoardServer *)self sendAsynchronousMessage:v5 replyOnQueue:&_dispatch_main_q handler:v6];
  }
}

- (void)gaxTimeRestrictionStatusDidChange
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {

    _AXAssert();
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4812 payload:0];
    [(AXSpringBoardServer *)self sendSimpleMessage:v3];
  }
}

- (void)gaxGetDisplayNameForBundleId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
  }

  else if (v6)
  {
    v8 = [AXIPCMessage alloc];
    v15 = @"GAXIPCPayloadKeyBundleIdentifier";
    v16 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [v8 initWithKey:4813 payload:v9];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1CA64;
    v11[3] = &unk_5D948;
    v12 = v7;
    [(AXSpringBoardServer *)self sendAsynchronousMessage:v10 replyOnQueue:&_dispatch_main_q objectResultHandler:v11];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1CA50;
    block[3] = &unk_5D920;
    v14 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)gaxUnlockDevice
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {

    _AXAssert();
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4808 payload:0];
    [(AXSpringBoardServer *)self sendSimpleMessage:v3];
  }
}

- (void)stopHostingWorkspaceApplicationImmediately
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {

    _AXAssert();
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4811 payload:0];
    [(AXSpringBoardServer *)self sendSimpleMessage:v3];
  }
}

- (void)gaxTerminateRunningApplicationsOtherThan:(id)a3 forReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
  }

  else
  {
    v10[0] = @"GAXIPCPayloadKeyAppsNotToTerminate";
    v10[1] = @"GAXIPCPayloadKeyAppTerminationReason";
    v11[0] = v6;
    v11[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    v9 = [[AXIPCMessage alloc] initWithKey:4814 payload:v8];
    [(AXSpringBoardServer *)self sendSimpleMessage:v9];
  }
}

- (void)gaxDisconnectAllCalls
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {

    _AXAssert();
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4815 payload:0];
    [(AXSpringBoardServer *)self sendSimpleMessage:v3];
  }
}

- (void)gaxPreventPotentialAppLaunches
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {

    _AXAssert();
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4816 payload:0];
    [(AXSpringBoardServer *)self sendSimpleMessage:v3];
  }
}

- (BOOL)gaxServerIsReady
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
    return 0;
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4817 payload:0];
    v5 = [(AXSpringBoardServer *)self sendSimpleMessageWithResult:v4];

    return v5;
  }
}

- (id)appIconForBundleID:(id)a3 format:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v7 = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    v8 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v9 = [v7 serverInstance:v8 appIconForBundleID:v6 format:v4];
  }

  else
  {
    _AXAssert();
    v9 = 0;
  }

  return v9;
}

- (id)appNameForDisplayID:(id)a3
{
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [v5 serverInstance:v6 appNameForDisplayID:v4];
  }

  else
  {
    _AXAssert();
    v7 = 0;
  }

  return v7;
}

- (void)activateApp:(id)a3
{
  v6 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v4 serverInstance:v5 activateApp:v6];
  }

  else
  {
    _AXAssert();
  }
}

- (void)quitTopApplication
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v4 quitTopApplicationWithServerInstance:v3];
  }

  else
  {

    _AXAssert();
  }
}

- (void)updateLockAndIdleTimers
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v4 updateLockAndIdleTimersWithServerInstance:v3];
  }

  else
  {

    _AXAssert();
  }
}

- (void)beginRequiringWallpaper
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v4 beginRequiringWallpaperWithServerInstance:v3];
  }

  else
  {

    _AXAssert();
  }
}

- (void)animateWallpaperStyleToNormal
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v4 animateWallpaperStyleToNormalWithServerInstance:v3];
  }

  else
  {

    _AXAssert();
  }
}

- (void)animateWallpaperStyleToOriginal
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v4 animateWallpaperStyleToOriginalWithServerInstance:v3];
  }

  else
  {

    _AXAssert();
  }
}

- (id)_windowsToHost
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    v4 = [v3 _windowsToHost];
  }

  else
  {
    _AXAssert();
    v4 = 0;
  }

  return v4;
}

@end