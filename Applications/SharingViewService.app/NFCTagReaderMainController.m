@interface NFCTagReaderMainController
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismissAnimated:(BOOL)a3;
- (void)dismissIfIdle;
- (void)handleButtonActions:(id)a3;
- (void)nfcTagScannedCount:(int64_t)a3;
- (void)setPurpose:(id)a3;
- (void)uiOperationEnd;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation NFCTagReaderMainController

- (void)uiOperationEnd
{
  v2 = self->_operationCount - 1;
  self->_operationCount = v2;
  if (!v2 && self->_dismissPending && !self->_dismissing)
  {
    if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_dismissPending = 0;

    [(NFCTagReaderMainController *)self dismiss:8];
  }
}

- (void)setPurpose:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_purpose, a3);
  if (self->_appeared)
  {
    [(NFCTagReaderScanViewController *)self->_vcScan setSubtitle:v5];
  }
}

- (void)nfcTagScannedCount:(int64_t)a3
{
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a3)
  {
    if (a3 >= 1)
    {
      self->_tagCount = a3;
      if (self->_appeared)
      {
        vcScan = self->_vcScan;

        [(NFCTagReaderScanViewController *)vcScan nfcTagScanned];
      }

      else
      {

        [(NFCTagReaderMainController *)self uiOperationBegin];
      }
    }
  }

  else
  {
    v6 = self->_vcScan;

    [(NFCTagReaderScanViewController *)v6 showFailureUI];
  }
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (([*(*(&v9 + 1) + 8 * i) events] & 0x10) != 0)
        {
          if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(NFCTagReaderMainController *)self dismiss:4];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dismissIfIdle
{
  if (self->_dismissing)
  {
    if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
    {

      LogPrintF();
    }
  }

  else if (self->_operationCount < 1)
  {
    if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(NFCTagReaderMainController *)self dismiss:8];
  }

  else
  {
    if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_dismissPending = 1;
  }
}

- (void)dismissAnimated:(BOOL)a3
{
  if (!self->_dismissed)
  {
    v3 = a3;
    self->_dismissed = 1;
    v5 = [(NFCTagReaderMainController *)self _remoteViewControllerProxy];
    v6 = v5;
    vcNav = self->_vcNav;
    if (vcNav)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000F9270;
      v8[3] = &unk_100195AC0;
      v9 = v5;
      [(UINavigationController *)vcNav dismissViewControllerAnimated:v3 completion:v8];
    }

    else
    {
      [v5 dismiss];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = [(NFCTagReaderMainController *)self _remoteViewControllerProxy];
  [v5 setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.NFCTagReader"];

  if (!self->_dismissed)
  {
    if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(NFCTagReaderMainController *)self dismiss:21];
  }

  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = self->_xpcAgent;
  xpcAgent = self->_xpcAgent;
  self->_xpcAgent = 0;

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F953C;
  v17[3] = &unk_100195940;
  v8 = v6;
  v18 = v8;
  v9 = [(CUXPCAgent *)v8 remoteObjectProxyWithErrorHandler:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F95E0;
  v15[3] = &unk_100195940;
  v16 = v8;
  v10 = v8;
  [v9 uiInvalidatedWithCompletion:v15];

  storyboard = self->_storyboard;
  self->_storyboard = 0;

  vcNav = self->_vcNav;
  self->_vcNav = 0;

  [(NFCTagReaderScanViewController *)self->_vcScan setMainController:0];
  vcScan = self->_vcScan;
  self->_vcScan = 0;

  v14.receiver = self;
  v14.super_class = NFCTagReaderMainController;
  [(SVSBaseMainController *)&v14 viewDidDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12.receiver = self;
  v12.super_class = NFCTagReaderMainController;
  [(NFCTagReaderMainController *)&v12 viewDidAppear:v3];
  v5 = objc_alloc_init(NFCTagReaderScanViewController);
  [(NFCTagReaderScanViewController *)v5 setMainController:self];
  vcScan = self->_vcScan;
  self->_vcScan = v5;
  v7 = v5;

  v8 = [(NFCTagReaderMainController *)self presentProxCardFlowWithDelegate:self initialViewController:v7];
  vcNav = self->_vcNav;
  self->_vcNav = v8;

  v10 = [(NFCTagReaderMainController *)self _remoteViewControllerProxy];
  [v10 setStatusBarHidden:1 withDuration:0.3];

  v11 = [(NFCTagReaderMainController *)self _remoteViewControllerProxy];
  [v11 setIdleTimerDisabled:1 forReason:@"com.apple.SharingViewService.NFCTagReader"];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = v8;

  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  purpose = self->_purpose;
  self->_purpose = v10;

  v12 = [v6 xpcEndpoint];

  if (v12 && (v13 = objc_alloc_init(NSXPCListenerEndpoint), [v6 xpcEndpoint], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "_setEndpoint:", v14), v14, v13))
  {
    if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v15 = objc_alloc_init(CUXPCAgent);
    xpcAgent = self->_xpcAgent;
    self->_xpcAgent = v15;

    [(CUXPCAgent *)self->_xpcAgent setDispatchQueue:&_dispatch_main_q];
    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SFNFCTagReaderUIInterface];
    [(CUXPCAgent *)self->_xpcAgent setExportedInterface:v17];

    [(CUXPCAgent *)self->_xpcAgent setExportedObject:self];
    v18 = [NSString stringWithUTF8String:off_1001BE820];
    [(CUXPCAgent *)self->_xpcAgent setLabel:v18];

    [(CUXPCAgent *)self->_xpcAgent setListenerEndpoint:v13];
    v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SFNFCTagReaderControllerInterface];
    [(CUXPCAgent *)self->_xpcAgent setRemoteObjectInterface:v19];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000FB12C;
    v26[3] = &unk_100195AC0;
    v26[4] = self;
    [(CUXPCAgent *)self->_xpcAgent setInterruptionHandler:v26];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000FB1B0;
    v25[3] = &unk_100195AC0;
    v25[4] = self;
    [(CUXPCAgent *)self->_xpcAgent setInvalidationHandler:v25];
    v20 = self->_xpcAgent;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000FB234;
    v24[3] = &unk_100195940;
    v24[4] = self;
    [(CUXPCAgent *)v20 activateWithCompletion:v24];
  }

  else if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v7)
  {
    v7[2](v7);
  }

  out_token = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000FB304;
  handler[3] = &unk_1001959A8;
  handler[4] = self;
  notify_register_dispatch("SFNFCUISuccess", &out_token, &_dispatch_main_q, handler);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000FB310;
  v21[3] = &unk_1001959A8;
  v21[4] = self;
  notify_register_dispatch("SFNFCUIFailure", &out_token, &_dispatch_main_q, v21);
}

@end