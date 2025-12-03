@interface AKRemoteViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_main_dismissAndExit;
- (void)dealloc;
- (void)dismissAndExit;
- (void)endUIService;
- (void)handleButtonActions:(id)actions;
- (void)handleCancellation:(id)cancellation;
- (void)setUpHostProxy;
- (void)setUpLookupConnection:(id)connection;
- (void)setupRemoteProxy;
@end

@implementation AKRemoteViewController

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(AKRemoteViewController *)self _invalidateLookupConnection];
  v2.receiver = selfCopy;
  v2.super_class = AKRemoteViewController;
  [(AKRemoteViewController *)&v2 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setUpHostProxy
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    sub_100001814(v4);
    _os_log_error_impl(&_mh_execute_header, log, type, "Host Proxy is set up in the subclass", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)setUpLookupConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  v11 = _AKLogSystem();
  v10 = 2;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    log = v11;
    type = v10;
    sub_100001814(v9);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Setting up look up connection", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  v8 = objc_opt_new();
  [v8 _setEndpoint:location[0]];
  v3 = [NSXPCConnection alloc];
  v7 = [v3 initWithListenerEndpoint:v8];
  remoteObjectInterface = [(AKRemoteViewController *)selfCopy remoteObjectInterface];
  [v7 setRemoteObjectInterface:?];

  [v7 resume];
  [(AKRemoteViewController *)selfCopy setLookupConnection:v7];
  [(AKRemoteViewController *)selfCopy setUpHostProxy];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)setupRemoteProxy
{
  v2[2] = self;
  v2[1] = a2;
  v2[0] = [(AKRemoteViewController *)self _remoteViewControllerProxy];
  [v2[0] setShouldDisableFadeInAnimation:1];
  [v2[0] setAllowsMenuButtonDismissal:1];
  [v2[0] setAllowsSiri:0];
  [v2[0] setAllowsAlertStacking:1];
  [v2[0] setDesiredHardwareButtonEvents:17];
  [v2[0] setSwipeDismissalStyle:0];
  [v2[0] setDismissalAnimationStyle:1];
  objc_storeStrong(v2, 0);
}

- (void)handleButtonActions:(id)actions
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, actions);
  memset(__b, 0, sizeof(__b));
  obj = location[0];
  v8 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v5);
      v11 = ([v13 events] & 0x10) != 0;
      v10 = ([v13 events] & 1) != 0;
      if (v11 || v10) && (objc_opt_respondsToSelector())
      {
        [(AKRemoteViewController *)selfCopy handleCancellation:location[0]];
      }

      v9 = 0;
      if (v11)
      {
        v9 = 16;
      }

      [v13 sendResponseWithUnHandledEvents:{objc_msgSend(v13, "events") ^ v9}];
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)handleCancellation:(id)cancellation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancellation);
  objc_storeStrong(location, 0);
}

- (void)dismissAndExit
{
  selfCopy = self;
  v9[1] = a2;
  v2 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100003F0C;
  v8 = &unk_1000143C8;
  v9[0] = selfCopy;
  dispatch_async(queue, &v4);

  objc_storeStrong(v9, 0);
}

- (void)endUIService
{
  _remoteViewControllerProxy = [(AKRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy invalidate];
}

- (void)_main_dismissAndExit
{
  v2 = &_dispatch_main_q;
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  [(AKRemoteViewController *)self dismissViewControllerAnimated:0 completion:0];
  [(AKRemoteViewController *)self endUIService];
}

@end