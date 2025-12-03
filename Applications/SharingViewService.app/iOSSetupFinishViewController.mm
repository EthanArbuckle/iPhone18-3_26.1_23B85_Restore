@interface iOSSetupFinishViewController
- (void)handleDismissButton:(id)button;
- (void)handleProgressEvent:(unsigned int)event;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation iOSSetupFinishViewController

- (void)handleProgressEvent:(unsigned int)event
{
  if (event == 97)
  {
    v4 = [self->super.super._mainController otherDeviceClassCode] - 1;
    if (v4 > 6)
    {
      v5 = @"_IPHONE";
    }

    else
    {
      v5 = off_100195818[v4];
    }

    v7 = [@"IOS_SETUP_FINISH_TITLE" stringByAppendingString:v5];
    v6 = sub_10012794C(@"Localizable", v7);
    [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v6];
  }

  else
  {
    if (event != 99)
    {
      return;
    }

    v7 = sub_10012794C(@"Localizable", @"WAITING_FOR_SOFTWARE_UPDATE");
    [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:?];
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(iOSSetupBaseViewController *)self dismissWithType:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = iOSSetupFinishViewController;
  [(iOSSetupFinishViewController *)&v6 viewDidDisappear:disappearCopy];
  [self->super.super._mainController setBlockHardwareButtons:0];
  _remoteViewControllerProxy = [self->super.super._mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:{objc_msgSend(self->super.super._mainController, "desiredHomeButtonEvents")}];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v28.receiver = self;
  v28.super_class = iOSSetupFinishViewController;
  [(SVSBaseViewController *)&v28 viewWillAppear:appearCopy];
  [self->super.super._mainController setBlockHardwareButtons:1];
  _remoteViewControllerProxy = [self->super.super._mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:17];
  v6 = [self->super.super._mainController otherDeviceClassCode] - 1;
  if (v6 > 6)
  {
    v7 = @"_IPHONE";
  }

  else
  {
    v7 = off_100195818[v6];
  }

  v8 = [@"IOS_SETUP_FINISH_TITLE" stringByAppendingString:v7];
  v9 = sub_10012794C(@"Localizable", v8);
  [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v9];

  v10 = SFDeviceClassCodeGet() - 1;
  if (v10 > 6)
  {
    v11 = @"_IPHONE";
  }

  else
  {
    v11 = off_100195818[v10];
  }

  v12 = [@"IOS_SETUP_FINISH_TRANSFER" stringByAppendingString:v11];
  v13 = [self->super.super._mainController otherDeviceClassCode] - 1;
  if (v13 > 6)
  {
    v14 = @"_IPHONE";
  }

  else
  {
    v14 = off_100195818[v13];
  }

  v15 = [v12 stringByAppendingString:v14];

  v23 = sub_100127B60(v15, v16, v17, v18, v19, v20, v21, v22, v25[0]);
  [*(&self->_titleLabel + 1) setText:v23];

  if ([self->super.super._mainController testMode])
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000F5C60;
    v25[3] = &unk_100195A70;
    v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    selfCopy = self;
    v24 = v26;
    dispatch_source_set_event_handler(v24, v25);
    SFDispatchTimerSet();
    dispatch_resume(v24);
  }
}

@end