@interface SVSBaseMainController
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss:(int)dismiss;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SVSBaseMainController

- (void)dismiss:(int)dismiss
{
  v3 = [NSException exceptionWithName:@"SubclassUnimplementedException" reason:@"dismiss must be overridden by a subclasses." userInfo:0];
  [v3 raise];
}

- (void)_willAppearInRemoteViewController
{
  if (dword_1001BF128 <= 30 && (dword_1001BF128 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _remoteViewControllerProxy = [(SVSBaseMainController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsBanners:1];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:{-[SVSBaseMainController desiredHomeButtonEvents](self, "desiredHomeButtonEvents")}];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF128 <= 30 && (dword_1001BF128 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  proxCardSessionServer = self->_proxCardSessionServer;
  if (proxCardSessionServer)
  {
    v6 = proxCardSessionServer;
    [(SFProxCardSessionServer *)v6 invalidate];
    v7 = self->_proxCardSessionServer;
    self->_proxCardSessionServer = 0;
  }

  v8.receiver = self;
  v8.super_class = SVSBaseMainController;
  [(SVSBaseMainController *)&v8 viewDidDisappear:disappearCopy];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (dword_1001BF128 <= 30 && (dword_1001BF128 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  userInfo = [contextCopy userInfo];
  objc_storeStrong(&self->_userInfo, userInfo);
  xpcEndpoint = [contextCopy xpcEndpoint];
  if (xpcEndpoint && CFDictionaryGetInt64())
  {
    v10 = objc_alloc_init(SFProxCardSessionServer);
    objc_storeStrong(&self->_proxCardSessionServer, v10);
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    if (v11)
    {
      [v10 setLabel:v11];
    }

    v12 = objc_alloc_init(NSXPCListenerEndpoint);
    [v12 _setEndpoint:xpcEndpoint];
    [v10 setXpcEndpoint:v12];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10012560C;
    v13[3] = &unk_100195708;
    v13[4] = v10;
    v13[5] = self;
    [v10 activateWithCompletion:v13];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

@end