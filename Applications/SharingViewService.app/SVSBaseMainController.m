@interface SVSBaseMainController
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismiss:(int)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SVSBaseMainController

- (void)dismiss:(int)a3
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

  v3 = [(SVSBaseMainController *)self _remoteViewControllerProxy];
  [v3 setAllowsBanners:1];
  [v3 setDesiredHardwareButtonEvents:{-[SVSBaseMainController desiredHomeButtonEvents](self, "desiredHomeButtonEvents")}];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
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
  [(SVSBaseMainController *)&v8 viewDidDisappear:v3];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1001BF128 <= 30 && (dword_1001BF128 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = [v6 userInfo];
  objc_storeStrong(&self->_userInfo, v8);
  v9 = [v6 xpcEndpoint];
  if (v9 && CFDictionaryGetInt64())
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
    [v12 _setEndpoint:v9];
    [v10 setXpcEndpoint:v12];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10012560C;
    v13[3] = &unk_100195708;
    v13[4] = v10;
    v13[5] = self;
    [v10 activateWithCompletion:v13];
  }

  if (v7)
  {
    v7[2](v7);
  }
}

@end