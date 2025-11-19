@interface ReplayerAppDelegate
- (void)_applicationDidFinishLaunching;
@end

@implementation ReplayerAppDelegate

- (void)_applicationDidFinishLaunching
{
  v3 = off_100019798;
  if (os_signpost_enabled(off_100019798))
  {
    LOWORD(v23[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "MTLReplayer application finished launching!", v23, 2u);
  }

  v4 = objc_alloc_init(ReplayerViewController);
  replayerViewController = self->_replayerViewController;
  self->_replayerViewController = v4;

  [(UIWindow *)self->_window setRootViewController:self->_replayerViewController];
  [(UIWindow *)self->_window makeKeyAndVisible];
  v6 = GTMTLReplayClient_createNewTransport();
  replayFacility = self->_replayFacility;
  self->_replayFacility = v6;

  v8 = self->_replayerViewController;
  v9 = dispatch_queue_create("com.apple.gputools.display", 0);
  v10 = qword_10001CC50;
  qword_10001CC50 = v9;

  dispatch_suspend(qword_10001CC50);
  v11 = GTTransportServiceDaemonConnectionNew();
  v12 = qword_10001CC48;
  qword_10001CC48 = v11;

  objc_initWeak(&location, qword_10001CC48);
  v13 = qword_10001CC48;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000678C;
  v23[3] = &unk_1000149E8;
  objc_copyWeak(&v24, &location);
  [v13 activateWithMessageHandler:v23 andErrorHandler:&stru_100014A28];
  v14 = [GTDisplayService alloc];
  v15 = [(GTDisplayService *)v14 initWithDelegate:v8 connection:qword_10001CC48];
  v16 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTDisplayService];
  v17 = [qword_10001CC48 connection];
  v18 = registerService();

  if (v18)
  {
    v19 = [[GTDisplayServiceXPCDispatcher alloc] initWithService:v15 properties:v16];
    [qword_10001CC48 registerDispatcher:v19 forPort:{objc_msgSend(v16, "servicePort")}];
    dispatch_resume(qword_10001CC50);
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  displayService = self->_displayService;
  self->_displayService = v20;

  v22 = +[UIApplication sharedApplication];
  [v22 setIdleTimerDisabled:1];
}

@end