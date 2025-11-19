@interface RepairMainController
- (id)productImage;
- (unint64_t)supportedInterfaceOrientations;
- (void)_sessionHandleProgress:(unsigned int)a3 info:(id)a4;
- (void)_sessionStart:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismiss:(int)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)logUsageDone:(int)a3;
- (void)logUsageStart:(int)a3;
- (void)showDoneUI:(int)a3 error:(id)a4 final:(BOOL)a5;
- (void)showProgressUI;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation RepairMainController

- (id)productImage
{
  productImage = self->_productImage;
  if (!productImage)
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
    sub_100126C30(1u, [(RepairMainController *)self deviceColorCode], 13, &v9, 0, &v8, &v7);
    v4 = [UIImage imageNamed:v9 inBundle:v7];
    v5 = self->_productImage;
    self->_productImage = v4;

    productImage = self->_productImage;
  }

  return productImage;
}

- (void)showProgressUI
{
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  vcProgress = self->_vcProgress;
  if (!vcProgress)
  {
    v4 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"Progress"];
    v5 = self->_vcProgress;
    self->_vcProgress = v4;

    [(SVSBaseViewController *)self->_vcProgress setMainController:self];
    vcProgress = self->_vcProgress;
  }

  vcNav = self->_vcNav;

  sub_100127D6C(vcNav, vcProgress, 0);
}

- (void)showDoneUI:(int)a3 error:(id)a4 final:(BOOL)a5
{
  v5 = a5;
  v6 = *&a3;
  v14 = a4;
  if (self->_vcDone)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    v13 = v6;
    LogPrintF();
  }

  if ((v6 & 0xFFFFFFFB) == 0x497C8)
  {
    v8 = @"WiFiError";
  }

  else
  {
    v8 = @"Done";
  }

  v9 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:v8, v13];
  vcDone = self->_vcDone;
  self->_vcDone = v9;

  [(SVSBaseViewController *)self->_vcDone setMainController:self];
  [(RepairDoneViewController *)self->_vcDone setStatus:v6];
  [(RepairDoneViewController *)self->_vcDone setError:v14];
  sub_100127D6C(self->_vcNav, self->_vcDone, 0);
  [(RepairMainController *)self logUsageDone:v6];
  if (v5)
  {
LABEL_12:
    if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(SFDeviceRepairSession *)self->_sfSession invalidate];
    sfSession = self->_sfSession;
    self->_sfSession = 0;

    v12 = [(RepairMainController *)self _remoteViewControllerProxy];
    [v12 setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.Repair"];
  }

LABEL_17:
}

- (void)_sessionHandleProgress:(unsigned int)a3 info:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (v4 <= 199)
  {
    switch(v4)
    {
      case 0x14:
        v8 = v6;
        if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [(RepairMainController *)self showDoneUI:0 error:0 final:1];
        break;
      case 0x1E:
        v8 = v6;
        CFErrorGetTypeID();
        v7 = CFDictionaryGetTypedValue();
        if (dword_1001BED68 <= 60 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [(RepairMainController *)self showDoneUI:NSErrorToOSStatus() error:v7 final:1];

        break;
      case 0x60:
        v8 = v6;
        if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [(RepairMainController *)self showDoneUI:0];
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v4 - 200) <= 0x1E && ((1 << (v4 + 56)) & 0x40100001) != 0)
  {
    v8 = v6;
    [(RepairProgressViewController *)self->_vcProgress handleProgressEvent:v4];
LABEL_23:
    v6 = v8;
  }

LABEL_24:
}

- (void)_sessionStart:(id)a3
{
  v4 = a3;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    v9 = v4;
    LogPrintF();
  }

  [(RepairMainController *)self logUsageStart:9, v9];
  [(RepairMainController *)self showProgressUI];
  if (self->_testMode)
  {
    v5 = dispatch_time(0, 3000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100114D18;
    block[3] = &unk_100195AC0;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }

  else
  {
    [(SFDeviceRepairSession *)self->_sfSession invalidate];
    v6 = objc_alloc_init(SFDeviceRepairSession);
    sfSession = self->_sfSession;
    self->_sfSession = v6;

    [(SFDeviceRepairSession *)self->_sfSession setPeerDevice:v4];
    [(SFDeviceRepairSession *)self->_sfSession setPresentingViewController:self->_vcStart];
    [(SFDeviceRepairSession *)self->_sfSession setRepairFlags:CFDictionaryGetInt64Ranged()];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100114D4C;
    v10[3] = &unk_1001959F8;
    v10[4] = self;
    [(SFDeviceRepairSession *)self->_sfSession setProgressHandler:v10];
    [(SFDeviceRepairSession *)self->_sfSession activate];
    v8 = [(RepairMainController *)self _remoteViewControllerProxy];
    [v8 setIdleTimerDisabled:1 forReason:@"com.apple.SharingViewService.Repair"];
  }
}

- (void)logUsageDone:(int)a3
{
  if (!self->_loggedUsageDone)
  {
    v3 = *&a3;
    self->_loggedUsageDone = 1;
    CFStringGetTypeID();
    v4 = CFDictionaryGetTypedValue();
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &stru_100195CA8;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    mach_absolute_time();
    v7 = UpTicksToMilliseconds();
    v12[0] = @"_cat";
    v12[1] = @"_op";
    v13[0] = @"Repair";
    v13[1] = @"Done";
    v13[2] = v5;
    v12[2] = @"sid";
    v12[3] = @"rssi";
    v8 = [NSNumber numberWithInt:Int64Ranged];
    v13[3] = v8;
    v12[4] = @"error";
    v9 = [NSNumber numberWithInt:v3];
    v13[4] = v9;
    v12[5] = @"ms";
    v10 = [NSNumber numberWithUnsignedLongLong:v7];
    v13[5] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:6];
    SFDashboardLogJSON();

    if (dword_1001BED68 <= 50 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)logUsageStart:(int)a3
{
  if (!self->_loggedUsageStart)
  {
    v3 = *&a3;
    self->_loggedUsageStart = 1;
    CFStringGetTypeID();
    v4 = CFDictionaryGetTypedValue();
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &stru_100195CA8;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    mach_absolute_time();
    v7 = UpTicksToMilliseconds();
    v12[0] = @"_cat";
    v12[1] = @"_op";
    v13[0] = @"Repair";
    v13[1] = @"Start";
    v13[2] = v5;
    v12[2] = @"sid";
    v12[3] = @"rssi";
    v8 = [NSNumber numberWithInt:Int64Ranged];
    v13[3] = v8;
    v12[4] = @"action";
    v9 = [NSNumber numberWithInt:v3];
    v13[4] = v9;
    v12[5] = @"ms";
    v10 = [NSNumber numberWithUnsignedLongLong:v7];
    v13[5] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:6];
    SFDashboardLogJSON();

    if (dword_1001BED68 <= 50 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
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
          if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(RepairMainController *)self dismiss:4];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dismiss:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    [(RepairMainController *)self logUsageStart:v4];
    v7 = [(RepairMainController *)self _remoteViewControllerProxy];
    v8 = v7;
    vcNav = self->_vcNav;
    if (vcNav)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100115428;
      v10[3] = &unk_1001959D0;
      v12 = v6;
      v11 = v8;
      [(SVSCommonNavController *)vcNav dismissViewControllerAnimated:1 completion:v10];
    }

    else
    {
      [v7 dismiss];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = [(RepairMainController *)self _remoteViewControllerProxy];
  [v5 setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.Repair"];

  if (!self->_dismissed)
  {
    if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(RepairMainController *)self dismiss:21];
  }

  [(SFDeviceRepairSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  storyboard = self->_storyboard;
  self->_storyboard = 0;

  [(SVSBaseViewController *)self->_vcDone setMainController:0];
  vcDone = self->_vcDone;
  self->_vcDone = 0;

  vcNav = self->_vcNav;
  self->_vcNav = 0;

  [(SVSBaseViewController *)self->_vcProgress setMainController:0];
  vcProgress = self->_vcProgress;
  self->_vcProgress = 0;

  [(SVSBaseViewController *)self->_vcStart setMainController:0];
  vcStart = self->_vcStart;
  self->_vcStart = 0;

  v12.receiver = self;
  v12.super_class = RepairMainController;
  [(SVSBaseMainController *)&v12 viewDidDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = RepairMainController;
  [(RepairMainController *)&v14 viewDidAppear:v3];
  self->_viewAppearedTicks = mach_absolute_time();
  v5 = [UIStoryboard storyboardWithName:@"Repair" bundle:0];
  storyboard = self->_storyboard;
  self->_storyboard = v5;

  v7 = [(UIStoryboard *)self->_storyboard instantiateInitialViewController];
  vcNav = self->_vcNav;
  self->_vcNav = v7;

  [(SVSCommonNavController *)self->_vcNav setDelegate:self];
  [(SVSCommonNavController *)self->_vcNav setModalPresentationStyle:4];
  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SVSCommonNavController *)self->_vcNav setModalTransitionStyle:2];
  }

  [(SVSCommonNavController *)self->_vcNav setTransitioningDelegate:self->_vcNav];
  v11 = [(SVSCommonNavController *)self->_vcNav viewControllers];
  v12 = [v11 firstObject];
  vcStart = self->_vcStart;
  self->_vcStart = v12;

  [(SVSBaseViewController *)self->_vcStart setMainController:self];
  [(RepairMainController *)self presentViewController:self->_vcNav animated:1 completion:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(RepairMainController *)self view];
  v3 = [v2 window];

  if (!v3)
  {
    return 30;
  }

  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    return (1 << [UIApp activeInterfaceOrientation]);
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v15 = a4;
  v6 = [a3 userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = v6;

  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    v14 = self->super._userInfo;
    LogPrintF();
  }

  self->_deviceColorCode = CFDictionaryGetInt64Ranged();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    v9 = [[NSUUID alloc] initWithUUIDString:v8];
    deviceIdentifier = self->_deviceIdentifier;
    self->_deviceIdentifier = v9;
  }

  if ([v8 isEqual:{@"00000000-0000-0000-0000-000000000001", v14}])
  {
    v11 = 1;
LABEL_13:
    v12 = v15;
LABEL_14:
    self->_testMode = v11;
    goto LABEL_15;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000002"])
  {
    v11 = 2;
    goto LABEL_13;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000003"])
  {
    v11 = 3;
    goto LABEL_13;
  }

  v13 = [v8 isEqual:@"00000000-0000-0000-0000-000000000004"];
  v12 = v15;
  if (v13)
  {
    v11 = 4;
    goto LABEL_14;
  }

LABEL_15:
  if (v12)
  {
    v15[2]();
  }
}

@end