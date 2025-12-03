@interface AXSpringBoardServer
- (BOOL)gaxIsSystemAppShowingTransientOverlay;
- (BOOL)gaxIsWebAppAndForegroundRunning:(id)running;
- (BOOL)gaxLaunchApplication:(id)application withConfiguration:(unsigned int)configuration appLaunchGeneration:(unint64_t)generation enqueueError:(id *)error;
- (BOOL)gaxServerIsReady;
- (id)_windowsToHost;
- (id)appNameForDisplayID:(id)d;
- (void)acquireSystemApertureInertAssertion;
- (void)activateApp:(id)app;
- (void)animateWallpaperStyleToNormal;
- (void)animateWallpaperStyleToOriginal;
- (void)beginRequiringWallpaper;
- (void)gaxBackboardStateDidChange:(id *)change;
- (void)gaxBackboardStateDidChange:(id *)change completion:(id)completion;
- (void)gaxDisconnectAllCalls;
- (void)gaxEndRequiringWallpaper;
- (void)gaxFrontmostAppDidCheckIn:(id)in;
- (void)gaxGetDisplayNameForBundleId:(id)id completion:(id)completion;
- (void)gaxGetNewPasscodeLengthWithCompletion:(id)completion;
- (void)gaxPrepareForTransitionToWorkspaceWithAppID:(id)d completion:(id)completion;
- (void)gaxPreventPotentialAppLaunches;
- (void)gaxTerminateRunningApplicationsOtherThan:(id)than forReason:(id)reason;
- (void)gaxTimeRestrictionStatusDidChange;
- (void)gaxUnlockDevice;
- (void)gaxUpdateStateOfHostedApplicationWithIdentifier:(id)identifier scaleFactorNumber:(id)number centerStringRepresentation:(id)representation animationDurationNumber:(id)durationNumber;
- (void)invalidateSystemApertureInertAssertion;
- (void)quitTopApplication;
- (void)stopHostingWorkspaceApplicationImmediately;
- (void)updateLockAndIdleTimers;
@end

@implementation AXSpringBoardServer

- (void)gaxFrontmostAppDidCheckIn:(id)in
{
  inCopy = in;
  if (inCopy)
  {
    if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
    {
      _AXAssert();
    }

    else
    {
      v5 = [AXIPCMessage alloc];
      v8 = @"GAXIPCPayloadKeyFrontmostAppIdentifier";
      v9 = inCopy;
      v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      v7 = [v5 initWithKey:4800 payload:v6];
      [(AXSpringBoardServer *)self sendSimpleMessage:v7];
    }
  }
}

- (BOOL)gaxIsWebAppAndForegroundRunning:(id)running
{
  runningCopy = running;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
    v5 = 0;
  }

  else
  {
    v9 = @"GAXIPCPayloadKeyApplicationIdentifier";
    v10 = runningCopy;
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

- (void)gaxBackboardStateDidChange:(id *)change
{
  v3[0] = *&change->var0;
  *(v3 + 12) = *&change->var3;
  [(AXSpringBoardServer *)self gaxBackboardStateDidChange:v3 completion:&stru_2CF98];
}

- (void)gaxBackboardStateDidChange:(id *)change completion:(id)completion
{
  completionCopy = completion;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
  }

  else
  {
    v12[0] = *&change->var0;
    *(v12 + 12) = *&change->var3;
    v7 = serializeGAXBackboardState(v12);
    v13 = @"GAXIPCPayloadKeyGAXBackboardState";
    v14 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [[AXIPCMessage alloc] initWithKey:4804 payload:v8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_CADC;
    v10[3] = &unk_2CFC0;
    v11 = completionCopy;
    [(AXSpringBoardServer *)self sendAsynchronousMessage:v9 replyOnQueue:&_dispatch_main_q handler:v10];
  }
}

- (void)gaxPrepareForTransitionToWorkspaceWithAppID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_CD4C;
    v22 = &unk_2C720;
    v23 = completionCopy;
    AXPerformBlockAsynchronouslyOnMainThread();
    v8 = v23;
  }

  else if (dCopy)
  {
    v9 = [AXIPCMessage alloc];
    v24 = @"GAXIPCPayloadKeyFrontmostAppIdentifier";
    v25 = dCopy;
    v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v8 = [v9 initWithKey:4803 payload:v10];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_CD74;
    v12[3] = &unk_2CFC0;
    v13 = completionCopy;
    [(AXSpringBoardServer *)self sendAsynchronousMessage:v8 replyOnQueue:&_dispatch_main_q handler:v12];
  }

  else
  {
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_16A68();
    }

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_CD60;
    v17 = &unk_2C720;
    v18 = completionCopy;
    AXPerformBlockAsynchronouslyOnMainThread();
    v8 = v18;
  }
}

- (BOOL)gaxLaunchApplication:(id)application withConfiguration:(unsigned int)configuration appLaunchGeneration:(unint64_t)generation enqueueError:(id *)error
{
  applicationCopy = application;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
    if (error)
    {
      v12 = NSStringFromSelector(a2);
      *error = [AXSubsystemSBServer errorWithDescription:@"Can't call %@ locally", v12];

LABEL_9:
      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (!applicationCopy)
    {
      v17 = GAXLogAppLaunching();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_16AA8();
      }

      goto LABEL_9;
    }

    v19[0] = @"GAXIPCPayloadKeyProfileConfiguration";
    v13 = [NSNumber numberWithUnsignedInteger:configuration];
    v20[0] = v13;
    v20[1] = applicationCopy;
    v19[1] = @"GAXIPCPayloadKeyApplicationIdentifier";
    v19[2] = @"GAXIPCPayloadKeyAppLaunchGeneration";
    v14 = [NSNumber numberWithUnsignedInteger:generation];
    v20[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v16 = [[AXIPCMessage alloc] initWithKey:4805 payload:v15];
    LOBYTE(error) = [(AXSpringBoardServer *)self sendSimpleMessage:v16 enqueueError:error];
  }

  return error;
}

- (void)gaxEndRequiringWallpaper
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _gax_axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_gax_axSpringBoardServerInstanceDelegate endRequiringWallpaperWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _gax_axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4806 payload:0];
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

- (void)gaxUpdateStateOfHostedApplicationWithIdentifier:(id)identifier scaleFactorNumber:(id)number centerStringRepresentation:(id)representation animationDurationNumber:(id)durationNumber
{
  identifierCopy = identifier;
  numberCopy = number;
  representationCopy = representation;
  durationNumberCopy = durationNumber;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
  }

  else
  {
    v13 = [[NSDictionary alloc] initWithObjectsAndKeys:{durationNumberCopy, @"GAXIPCPayloadKeyAnimationDuration", numberCopy, @"GAXIPCPayloadKeyHostedApplicationScaleFactor", representationCopy, @"GAXIPCPayloadKeyHostedApplicationCenter", identifierCopy, @"GAXIPCPayloadKeyApplicationIdentifier", 0}];
    v14 = [[AXIPCMessage alloc] initWithKey:4807 payload:v13];
    [(AXSpringBoardServer *)self sendSimpleMessage:v14];
  }
}

- (void)gaxGetNewPasscodeLengthWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
  }

  else
  {
    v5 = [[AXIPCMessage alloc] initWithKey:4810 payload:0];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_D508;
    v6[3] = &unk_2CFC0;
    v7 = completionCopy;
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

- (void)gaxGetDisplayNameForBundleId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
  }

  else if (idCopy)
  {
    v8 = [AXIPCMessage alloc];
    v15 = @"GAXIPCPayloadKeyBundleIdentifier";
    v16 = idCopy;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [v8 initWithKey:4813 payload:v9];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_D874;
    v11[3] = &unk_2CFE8;
    v12 = completionCopy;
    [(AXSpringBoardServer *)self sendAsynchronousMessage:v10 replyOnQueue:&_dispatch_main_q objectResultHandler:v11];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D860;
    block[3] = &unk_2C720;
    v14 = completionCopy;
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

- (void)gaxTerminateRunningApplicationsOtherThan:(id)than forReason:(id)reason
{
  thanCopy = than;
  reasonCopy = reason;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _AXAssert();
  }

  else
  {
    v10[0] = @"GAXIPCPayloadKeyAppsNotToTerminate";
    v10[1] = @"GAXIPCPayloadKeyAppTerminationReason";
    v11[0] = thanCopy;
    v11[1] = reasonCopy;
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

- (id)appNameForDisplayID:(id)d
{
  dCopy = d;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _gax_axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [_gax_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance appNameForDisplayID:dCopy];
  }

  else
  {
    _AXAssert();
    v7 = 0;
  }

  return v7;
}

- (void)activateApp:(id)app
{
  appCopy = app;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _gax_axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_gax_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance activateApp:appCopy];
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
    _gax_axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_gax_axSpringBoardServerInstanceDelegate quitTopApplicationWithServerInstance:_axSpringBoardServerInstance];
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
    _gax_axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_gax_axSpringBoardServerInstanceDelegate updateLockAndIdleTimersWithServerInstance:_axSpringBoardServerInstance];
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
    _gax_axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_gax_axSpringBoardServerInstanceDelegate beginRequiringWallpaperWithServerInstance:_axSpringBoardServerInstance];
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
    _gax_axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_gax_axSpringBoardServerInstanceDelegate animateWallpaperStyleToNormalWithServerInstance:_axSpringBoardServerInstance];
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
    _gax_axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_gax_axSpringBoardServerInstanceDelegate animateWallpaperStyleToOriginalWithServerInstance:_axSpringBoardServerInstance];
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
    _gax_axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _gax_axSpringBoardServerInstanceDelegate];
    _windowsToHost = [_gax_axSpringBoardServerInstanceDelegate _windowsToHost];
  }

  else
  {
    _AXAssert();
    _windowsToHost = 0;
  }

  return _windowsToHost;
}

@end