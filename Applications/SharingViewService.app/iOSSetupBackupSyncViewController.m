@interface iOSSetupBackupSyncViewController
- (void)_handleTestTimerFired;
- (void)handleHideButton:(id)a3;
- (void)handleProgressEvent:(unsigned int)a3 info:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation iOSSetupBackupSyncViewController

- (void)_handleTestTimerFired
{
  v3 = *(&self->_progressLabel + 5);
  if (v3 <= 0xA)
  {
    if (v3)
    {
      v4 = 500.0 - v3 / 10.0 * 500.0;
    }

    else
    {
      v4 = -1.0;
    }

    v5 = 300;
LABEL_11:
    *(&self->_progressLabel + 5) = v3 + 1;
    mainController = self->super.super._mainController;
    v17[0] = @"progress";
    v7 = [NSNumber numberWithDouble:?];
    v17[1] = @"remainSecs";
    v18[0] = v7;
    v8 = [NSNumber numberWithDouble:v4];
    v18[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    [mainController showBackupSyncUI:v5 info:v9];

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000F6048;
    handler[3] = &unk_100195A70;
    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v16 = self;
    v10 = v15;
    dispatch_source_set_event_handler(v10, handler);
    SFDispatchTimerSet();
    dispatch_resume(v10);

    return;
  }

  if (v3 - 11 <= 0xA)
  {
    if (v3 == 11)
    {
      v4 = -1.0;
    }

    else
    {
      v4 = 2000.0 - (v3 - 11) / 10.0 * 2000.0;
    }

    v5 = 310;
    goto LABEL_11;
  }

  v11 = [self->super.super._mainController testMode];
  v12 = self->super.super._mainController;
  if (v11 == 1)
  {

    [v12 showDoneUI:0];
  }

  else
  {
    v13 = NSErrorWithOSStatusF();
    [v12 showDoneUI:?];
  }
}

- (void)handleProgressEvent:(unsigned int)a3 info:(id)a4
{
  v50 = a4;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    v47 = sub_1000F0C00(a3);
    v49 = v50;
    LogPrintF();
  }

  if (a3 == 310)
  {
    if (*(&self->_progressLabel + 1) != 310)
    {
      v10 = sub_10012794C(@"Localizable", @"IOS_SETUP_SYNC_TITLE");
      [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v10];

      v11 = sub_10012794C(@"Localizable", @"IOS_SETUP_SYNC_INFO");
      [*(&self->_titleLabel + 1) setText:v11];

      *(&self->_progressLabel + 1) = 310;
    }
  }

  else
  {
    if (a3 != 300)
    {
      goto LABEL_27;
    }

    if (*(&self->_progressLabel + 1) != 300)
    {
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"IOS_SETUP_BACKUP_TITLE" value:&stru_100195CA8 table:@"Localizable"];
      [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v7];

      v8 = SFDeviceClassCodeGet() - 1;
      if (v8 > 6)
      {
        v9 = @"_IPHONE";
      }

      else
      {
        v9 = off_100195818[v8];
      }

      v12 = [@"IOS_SETUP_BACKUP_INFO" stringByAppendingString:{v9, v47, v49}];
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

      v23 = sub_100127B60(v15, v16, v17, v18, v19, v20, v21, v22, v48);
      [*(&self->_titleLabel + 1) setText:v23];

      *(&self->_progressLabel + 1) = 300;
    }
  }

  CFDictionaryGetDouble();
  if (v24 > 1.0)
  {
    v24 = 1.0;
  }

  if (v24 < 0.0)
  {
    v24 = 0.0;
  }

  *&v24 = v24;
  [*(&self->_infoLabel + 1) setProgress:{v24, v47}];
  CFDictionaryGetDouble();
  if (v25 >= 0.0)
  {
    v36 = v25;
    v37 = *(&self->_lastProgressEvent + 1);
    if (!v37)
    {
      v38 = objc_alloc_init(NSDateComponentsFormatter);
      v39 = *(&self->_lastProgressEvent + 1);
      *(&self->_lastProgressEvent + 1) = v38;

      [*(&self->_lastProgressEvent + 1) setUnitsStyle:3];
      [*(&self->_lastProgressEvent + 1) setIncludesApproximationPhrase:1];
      [*(&self->_lastProgressEvent + 1) setAllowedUnits:240];
      [*(&self->_lastProgressEvent + 1) setMaximumUnitCount:1];
      v37 = *(&self->_lastProgressEvent + 1);
    }

    v26 = [v37 stringFromTimeInterval:v36];
    v27 = sub_100127B60(@"IOS_SETUP_REMAINING_SECONDS_FORMAT", v40, v41, v42, v43, v44, v45, v46, v26);
    [*(&self->_progressBar + 1) setText:v27];
  }

  else
  {
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"ESTIMATING" value:&stru_100195CA8 table:@"Localizable"];
    v35 = sub_100127B60(@"IOS_SETUP_REMAINING_SECONDS_FORMAT", v28, v29, v30, v31, v32, v33, v34, v27);
    [*(&self->_progressBar + 1) setText:v35];
  }

  [*(&self->_progressBar + 1) setHidden:0];
LABEL_27:
}

- (void)handleHideButton:(id)a3
{
  v4 = a3;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = iOSSetupBackupSyncViewController;
  [(iOSSetupBackupSyncViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v21.receiver = self;
  v21.super_class = iOSSetupBackupSyncViewController;
  [(SVSBaseViewController *)&v21 viewWillAppear:v3];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"IOS_SETUP_BACKUP_TITLE" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v6];

  v7 = SFDeviceClassCodeGet() - 1;
  if (v7 > 6)
  {
    v8 = @"_IPHONE";
  }

  else
  {
    v8 = off_100195818[v7];
  }

  v9 = [@"IOS_SETUP_BACKUP_INFO" stringByAppendingString:v8];
  v10 = [self->super.super._mainController otherDeviceClassCode] - 1;
  if (v10 > 6)
  {
    v11 = @"_IPHONE";
  }

  else
  {
    v11 = off_100195818[v10];
  }

  v12 = [v9 stringByAppendingString:v11];

  v20 = sub_100127B60(v12, v13, v14, v15, v16, v17, v18, v19, v21.receiver);
  [*(&self->_titleLabel + 1) setText:v20];

  if ([self->super.super._mainController testMode])
  {
    [(iOSSetupBackupSyncViewController *)self _handleTestTimerFired];
  }
}

@end