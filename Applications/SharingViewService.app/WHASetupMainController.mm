@interface WHASetupMainController
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleHomeButtonPressed;
- (void)_pairSetupTryPIN:(id)n;
- (void)_sessionHandleProgress:(unsigned int)progress info:(id)info;
- (void)_sessionStart;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss:(int)dismiss completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)logUsageDone:(int)done;
- (void)logUsageStart:(int)start;
- (void)showAuthUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)showDoneUI:(int)i error:(id)error;
- (void)showHomePickerUI:(id)i defaultIndex:(int64_t)index;
- (void)showProgressUI;
- (void)showRoomPickerUI:(id)i firstSuggestedIndex:(int64_t)index;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation WHASetupMainController

- (void)_pairSetupTryPIN:(id)n
{
  nCopy = n;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    v4 = IsAppleInternalBuild();
    v5 = @"*";
    if (v4)
    {
      v5 = nCopy;
    }

    v6 = v5;
    LogPrintF();
  }

  [(SFDeviceSetupWHASession *)self->_setupSession pairSetupTryPIN:nCopy, v6];
}

- (void)showProgressUI
{
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  vcProgress = self->_vcProgress;
  if (!vcProgress)
  {
    v4 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"ProgressUI"];
    v5 = self->_vcProgress;
    self->_vcProgress = v4;

    [(SVSBaseViewController *)self->_vcProgress setMainController:self];
    vcProgress = self->_vcProgress;
  }

  vcNav = self->_vcNav;

  sub_100127D6C(vcNav, vcProgress, 0);
}

- (void)showRoomPickerUI:(id)i firstSuggestedIndex:(int64_t)index
{
  iCopy = i;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  vcRoomPicker = self->_vcRoomPicker;
  if (!vcRoomPicker)
  {
    v7 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"RoomPickerUI"];
    v8 = self->_vcRoomPicker;
    self->_vcRoomPicker = v7;

    [(SVSBaseViewController *)self->_vcRoomPicker setMainController:self];
    vcRoomPicker = self->_vcRoomPicker;
  }

  [(WHASetupRoomPickerViewController *)vcRoomPicker setRooms:iCopy];
  [(WHASetupRoomPickerViewController *)self->_vcRoomPicker setFirstSuggestedIndex:index];
  sub_100127D6C(self->_vcNav, self->_vcRoomPicker, 0);
}

- (void)showHomePickerUI:(id)i defaultIndex:(int64_t)index
{
  iCopy = i;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  vcHomePicker = self->_vcHomePicker;
  if (!vcHomePicker)
  {
    v7 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"HomePickerUI"];
    v8 = self->_vcHomePicker;
    self->_vcHomePicker = v7;

    [(SVSBaseViewController *)self->_vcHomePicker setMainController:self];
    vcHomePicker = self->_vcHomePicker;
  }

  [(WHASetupHomePickerViewController *)vcHomePicker setHomes:iCopy];
  [(WHASetupHomePickerViewController *)self->_vcHomePicker setDefaultHomeIndex:index];
  sub_100127D6C(self->_vcNav, self->_vcHomePicker, 0);
}

- (void)showDoneUI:(int)i error:(id)error
{
  v4 = *&i;
  errorCopy = error;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    v11 = v4;
    v12 = errorCopy;
    LogPrintF();
  }

  [(SFDeviceSetupWHASession *)self->_setupSession invalidate:v11];
  setupSession = self->_setupSession;
  self->_setupSession = 0;

  vcDone = self->_vcDone;
  if (!vcDone)
  {
    if ((v4 - 301000) > 0xF)
    {
      v8 = @"DoneUI";
    }

    else
    {
      v8 = *(&off_100195B08 + (v4 - 301000));
    }

    v9 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:v8];
    v10 = self->_vcDone;
    self->_vcDone = v9;

    [(SVSBaseViewController *)self->_vcDone setMainController:self];
    vcDone = self->_vcDone;
  }

  [(WHASetupDoneViewController *)vcDone setStatus:v4];
  [(WHASetupDoneViewController *)self->_vcDone setError:errorCopy];
  sub_100127D6C(self->_vcNav, self->_vcDone, 0);
  [(WHASetupMainController *)self logUsageDone:v4];
}

- (void)showAuthUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  vcAuth = self->_vcAuth;
  if (vcAuth)
  {

    [(WHASetupAuthViewController *)vcAuth showWithFlags:*&flags throttleSeconds:*&seconds];
  }

  else
  {
    if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"AuthUI"];
    v7 = self->_vcAuth;
    self->_vcAuth = v6;

    [(SVSBaseViewController *)self->_vcAuth setMainController:self];
    vcNav = self->_vcNav;
    v9 = self->_vcAuth;

    sub_100127D6C(vcNav, v9, 0);
  }
}

- (void)_sessionHandleProgress:(unsigned int)progress info:(id)info
{
  v4 = *&progress;
  infoCopy = info;
  v7 = infoCopy;
  v14 = infoCopy;
  if (dword_1001BF408 > 30)
  {
    goto LABEL_218;
  }

  if (dword_1001BF408 == -1)
  {
    infoCopy = _LogCategory_Initialize();
    v7 = v14;
    if (!infoCopy)
    {
      goto LABEL_218;
    }
  }

  if (v4 > 279)
  {
    if (v4 > 709)
    {
      if (v4 <= 899)
      {
        if (v4 <= 802)
        {
          if (v4 == 710)
          {
            v8 = "AudioPasscodeEnded";
            goto LABEL_215;
          }

          if (v4 == 800)
          {
            v8 = "AuthAccountsStart";
            goto LABEL_215;
          }

          goto LABEL_214;
        }

        if (v4 == 803)
        {
          v8 = "AuthAccountsiCloudProgress";
          goto LABEL_215;
        }

        if (v4 == 804)
        {
          v8 = "AuthAccountsStoreProgress";
          goto LABEL_215;
        }

        if (v4 != 805)
        {
          goto LABEL_214;
        }

        v8 = "AuthAccountsGameCenterProgress";
      }

      else
      {
        if (v4 <= 999)
        {
          switch(v4)
          {
            case 900:
              v8 = "SU-No-SetupScanAttempt";
              break;
            case 901:
              v8 = "SU-No-SetupStatusUpdate";
              break;
            case 902:
              v8 = "SU-No-SetupWipeWifi";
              break;
            case 903:
              v8 = "SU-No-SetupCancelled";
              break;
            case 904:
              v8 = "SU-No-SetupObliterate";
              break;
            case 905:
              v8 = "SU-No-SetupCannotCancel";
              break;
            case 906:
              v8 = "SysDrop AirDrop Event";
              break;
            case 907:
              v8 = "SysDrop Sysdiagnose Event";
              break;
            case 908:
              v8 = "SysDrop Cancel Event";
              break;
            case 909:
              v8 = "File Transfer Progress Event";
              break;
            case 910:
              v8 = "File Transfer Completed Event";
              break;
            case 911:
              v8 = "iOSWiFiSetup";
              break;
            case 912:
              v8 = "HKPrimaryResidentSSIDFetchStart";
              break;
            case 913:
              v8 = "LoggingProfileTransfer";
              break;
            default:
              goto LABEL_214;
          }

          goto LABEL_215;
        }

        if (v4 <= 1099)
        {
          if (v4 == 1000)
          {
            v8 = "SecureIntentStart";
            goto LABEL_215;
          }

          if (v4 == 1001)
          {
            v8 = "SecureIntentFinish";
            goto LABEL_215;
          }

          goto LABEL_214;
        }

        if (v4 == 1100)
        {
          v8 = "OneTimeCodeDetected";
          goto LABEL_215;
        }

        if (v4 == 2000)
        {
          v8 = "DependentStart";
          goto LABEL_215;
        }

        if (v4 != 2001)
        {
          goto LABEL_214;
        }

        v8 = "DependentEnd";
      }
    }

    else if (v4 <= 499)
    {
      if (v4 > 400)
      {
        if (v4 > 419)
        {
          switch(v4)
          {
            case 0x1A4:
              v8 = "FileTransferReady";
              goto LABEL_215;
            case 0x1AE:
              v8 = "eSimExternal2FAStart";
              goto LABEL_215;
            case 0x1AF:
              v8 = "eSimExternal2FAStop";
              goto LABEL_215;
          }

          goto LABEL_214;
        }

        if (v4 == 401)
        {
          v8 = "PINPair";
          goto LABEL_215;
        }

        if (v4 == 410)
        {
          v8 = "MigrateStart";
          goto LABEL_215;
        }

        if (v4 != 411)
        {
          goto LABEL_214;
        }

        v8 = "MigrateStop";
      }

      else
      {
        if (v4 > 299)
        {
          switch(v4)
          {
            case 0x12C:
              v8 = "BackupProgress";
              goto LABEL_215;
            case 0x136:
              v8 = "SyncProgress";
              goto LABEL_215;
            case 0x190:
              v8 = "StopSetup";
              goto LABEL_215;
          }

          goto LABEL_214;
        }

        if (v4 == 280)
        {
          v8 = "TVLCalFailed";
          goto LABEL_215;
        }

        if (v4 == 281)
        {
          v8 = "TVLCalTryAgain";
          goto LABEL_215;
        }

        if (v4 != 282)
        {
          goto LABEL_214;
        }

        v8 = "TVLCalFinal";
      }
    }

    else if (v4 <= 554)
    {
      if (v4 > 529)
      {
        if (v4 == 530)
        {
          v8 = "SiriDialogBHome";
          goto LABEL_215;
        }

        if (v4 == 540)
        {
          v8 = "SiriDialogBNews";
          goto LABEL_215;
        }

        if (v4 != 550)
        {
          goto LABEL_214;
        }

        v8 = "SiriDialogBWeather";
      }

      else
      {
        if (v4 == 500)
        {
          v8 = "SiriWelcome";
          goto LABEL_215;
        }

        if (v4 == 510)
        {
          v8 = "SiriDialogA";
          goto LABEL_215;
        }

        if (v4 != 520)
        {
          goto LABEL_214;
        }

        v8 = "SiriDialogBStart";
      }
    }

    else
    {
      if (v4 <= 569)
      {
        switch(v4)
        {
          case 0x22B:
            v8 = "SiriDialogBClock";
            goto LABEL_215;
          case 0x22E:
            v8 = "SiriDialogBMusic";
            goto LABEL_215;
          case 0x230:
            v8 = "SiriDialogCMusic";
            goto LABEL_215;
        }

        goto LABEL_214;
      }

      if (v4 > 599)
      {
        if (v4 == 600)
        {
          v8 = "SiriSkipDemo";
          goto LABEL_215;
        }

        if (v4 == 700)
        {
          v8 = "StopSetupLEDs";
          goto LABEL_215;
        }

        goto LABEL_214;
      }

      if (v4 == 570)
      {
        v8 = "SiriDialogCNews";
        goto LABEL_215;
      }

      if (v4 != 580)
      {
        goto LABEL_214;
      }

      v8 = "SiriDialogCWeather";
    }
  }

  else if (v4 <= 121)
  {
    if (v4 > 69)
    {
      if (v4 > 95)
      {
        if (v4 <= 98)
        {
          if (v4 == 96)
          {
            v8 = "SetupFinished";
          }

          else if (v4 == 97)
          {
            v8 = "SetupResumed";
          }

          else
          {
            v8 = "SetupSuspend";
          }

          goto LABEL_215;
        }

        if (v4 == 99)
        {
          v8 = "SetupPeerSWUpdate";
          goto LABEL_215;
        }

        if (v4 == 100)
        {
          v8 = "Finished";
          goto LABEL_215;
        }

        if (v4 != 120)
        {
          goto LABEL_214;
        }

        v8 = "CheckingiCloud";
      }

      else if (v4 > 91)
      {
        if (v4 == 92)
        {
          v8 = "StepStart";
          goto LABEL_215;
        }

        if (v4 == 94)
        {
          v8 = "StepFinish";
          goto LABEL_215;
        }

        if (v4 != 95)
        {
          goto LABEL_214;
        }

        v8 = "PreFinish";
      }

      else
      {
        if (v4 == 70)
        {
          v8 = "SecurityFinish";
          goto LABEL_215;
        }

        if (v4 == 80)
        {
          v8 = "BasicConfigStart";
          goto LABEL_215;
        }

        if (v4 != 90)
        {
          goto LABEL_214;
        }

        v8 = "BasicConfigFinish";
      }
    }

    else if (v4 > 32)
    {
      if (v4 > 49)
      {
        if (v4 == 50)
        {
          v8 = "PreAuthFinish";
          goto LABEL_215;
        }

        if (v4 == 60)
        {
          v8 = "SecurityStart";
          goto LABEL_215;
        }

        if (v4 != 65)
        {
          goto LABEL_214;
        }

        v8 = "SecurityAPCLoopStart";
      }

      else
      {
        if (v4 == 33)
        {
          v8 = "SessionSecured";
          goto LABEL_215;
        }

        if (v4 == 35)
        {
          v8 = "ConnectStart";
          goto LABEL_215;
        }

        if (v4 != 40)
        {
          goto LABEL_214;
        }

        v8 = "PreAuthStart";
      }
    }

    else
    {
      if (v4 > 29)
      {
        if (v4 == 30)
        {
          v8 = "Error";
        }

        else if (v4 == 31)
        {
          v8 = "SessionStarted";
        }

        else
        {
          v8 = "SessionEnded";
        }

        goto LABEL_215;
      }

      if (!v4)
      {
        v8 = "Invalid";
        goto LABEL_215;
      }

      if (v4 == 10)
      {
        v8 = "Start";
        goto LABEL_215;
      }

      if (v4 != 20)
      {
        goto LABEL_214;
      }

      v8 = "Final";
    }
  }

  else if (v4 <= 239)
  {
    if (v4 > 209)
    {
      if (v4 > 229)
      {
        switch(v4)
        {
          case 0xE6:
            v8 = "HomeKitStart";
            goto LABEL_215;
          case 0xEA:
            v8 = "HomeKitSetupStart";
            goto LABEL_215;
          case 0xEC:
            v8 = "CDPSetupStart";
            goto LABEL_215;
        }

        goto LABEL_214;
      }

      if (v4 == 210)
      {
        v8 = "ActivationStart";
        goto LABEL_215;
      }

      if (v4 == 220)
      {
        v8 = "iCloudStart";
        goto LABEL_215;
      }

      if (v4 != 224)
      {
        goto LABEL_214;
      }

      v8 = "AppleIDSetupStart";
    }

    else
    {
      if (v4 > 139)
      {
        switch(v4)
        {
          case 0x8C:
            v8 = "RecognizeVoice";
            goto LABEL_215;
          case 0x96:
            v8 = "SiriForEveryone";
            goto LABEL_215;
          case 0xC8:
            v8 = "WiFiStart";
            goto LABEL_215;
        }

        goto LABEL_214;
      }

      if (v4 == 122)
      {
        v8 = "CheckingAppleMusic";
        goto LABEL_215;
      }

      if (v4 == 124)
      {
        v8 = "CheckingAccount";
        goto LABEL_215;
      }

      if (v4 != 130)
      {
        goto LABEL_214;
      }

      v8 = "WiFiPoweredOff";
    }
  }

  else
  {
    if (v4 > 269)
    {
      if (v4 > 275)
      {
        if (v4 > 277)
        {
          if (v4 == 278)
          {
            v8 = "TVLCalStart";
          }

          else
          {
            v8 = "TVLCalStep";
          }
        }

        else if (v4 == 276)
        {
          v8 = "TVLSTryAgain";
        }

        else
        {
          v8 = "TVLSToneBegan";
        }

        goto LABEL_215;
      }

      switch(v4)
      {
        case 0x10E:
          v8 = "TVLSEstimateStart";
          goto LABEL_215;
        case 0x110:
          v8 = "TVLSEstimateFinal";
          goto LABEL_215;
        case 0x112:
          v8 = "TVLSEstimateFailed";
          goto LABEL_215;
      }

LABEL_214:
      v8 = "?";
      goto LABEL_215;
    }

    if (v4 > 249)
    {
      if (v4 == 250)
      {
        v8 = "ReportSuccess";
        goto LABEL_215;
      }

      if (v4 == 260)
      {
        v8 = "TVLSStart";
        goto LABEL_215;
      }

      if (v4 != 264)
      {
        goto LABEL_214;
      }

      v8 = "TVLSFinish";
    }

    else
    {
      if (v4 == 240)
      {
        v8 = "BuddyStarting";
        goto LABEL_215;
      }

      if (v4 == 241)
      {
        v8 = "BuddyProgress";
        goto LABEL_215;
      }

      if (v4 != 242)
      {
        goto LABEL_214;
      }

      v8 = "BuddyFinished";
    }
  }

LABEL_215:
  v9 = &stru_100195CA8;
  if (v7)
  {
    v9 = v7;
  }

  v12 = v8;
  v13 = v9;
  infoCopy = LogPrintF();
  v7 = v14;
LABEL_218:
  if (!self->_setupSession)
  {
    goto LABEL_224;
  }

  if (v4 <= 199)
  {
    switch(v4)
    {
      case 0x14:
        if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [(WHASetupMainController *)self showDoneUI:0, v12, v13];
        _remoteViewControllerProxy = [(WHASetupMainController *)self _remoteViewControllerProxy];
        [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.WHASetup"];

        goto LABEL_223;
      case 0x1E:
        CFErrorGetTypeID();
        v10 = CFDictionaryGetTypedValue();
        if (dword_1001BF408 <= 60 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [(WHASetupMainController *)self showDoneUI:NSErrorToOSStatus() error:v10];

        goto LABEL_223;
      case 0x46:
        infoCopy = [(WHASetupMainController *)self showProgressUI];
        goto LABEL_223;
    }
  }

  else if ((v4 - 200) <= 0x1E && ((1 << (v4 + 56)) & 0x40100401) != 0)
  {
    infoCopy = [(WHASetupProgressViewController *)self->_vcProgress handleProgressEvent:v4];
LABEL_223:
    v7 = v14;
  }

LABEL_224:

  _objc_release_x1(infoCopy, v7);
}

- (void)_sessionStart
{
  CFStringGetTypeID();
  v3 = CFDictionaryGetTypedValue();
  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
    if (v4)
    {
      v5 = objc_alloc_init(SFDevice);
      [v5 setIdentifier:v4];
      [(SFDeviceSetupWHASession *)self->_setupSession invalidate];
      v6 = objc_alloc_init(SFDeviceSetupWHASession);
      setupSession = self->_setupSession;
      self->_setupSession = v6;

      [(SFDeviceSetupWHASession *)self->_setupSession setPeerDevice:v5];
      [(SFDeviceSetupWHASession *)self->_setupSession setPresentingViewController:self->_vcStart];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10012F110;
      v12[3] = &unk_1001959F8;
      v12[4] = self;
      [(SFDeviceSetupWHASession *)self->_setupSession setProgressHandler:v12];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10012F120;
      v11[3] = &unk_100195A20;
      v11[4] = self;
      [(SFDeviceSetupWHASession *)self->_setupSession setPromptForHomeHandler:v11];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10012F1DC;
      v10[3] = &unk_100195A48;
      v10[4] = self;
      [(SFDeviceSetupWHASession *)self->_setupSession setPromptForPINHandler:v10];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10012F284;
      v9[3] = &unk_100195A20;
      v9[4] = self;
      [(SFDeviceSetupWHASession *)self->_setupSession setPromptForRoomHandler:v9];
      [(SFDeviceSetupWHASession *)self->_setupSession activate];
      [(WHASetupMainController *)self logUsageStart:9];
      _remoteViewControllerProxy = [(WHASetupMainController *)self _remoteViewControllerProxy];
      [_remoteViewControllerProxy setIdleTimerDisabled:1 forReason:@"com.apple.SharingViewService.WHASetup"];
    }

    else if (dword_1001BF408 <= 90 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else if (dword_1001BF408 <= 90 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)logUsageDone:(int)done
{
  if (!self->_loggedUsageDone)
  {
    v3 = *&done;
    self->_loggedUsageDone = 1;
    CFStringGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = &stru_100195CA8;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    mach_absolute_time();
    v8 = UpTicksToMilliseconds();
    v14[0] = @"_cat";
    v14[1] = @"_op";
    v15[0] = @"WHASetup";
    v15[1] = @"Done";
    v15[2] = v6;
    v14[2] = @"sid";
    v14[3] = @"rssi";
    v9 = [NSNumber numberWithInt:Int64Ranged];
    v15[3] = v9;
    v14[4] = @"error";
    v10 = [NSNumber numberWithInt:v3];
    v15[4] = v10;
    v14[5] = @"ms";
    v11 = [NSNumber numberWithUnsignedLongLong:v8];
    v15[5] = v11;
    v14[6] = @"badPIN";
    v12 = [NSNumber numberWithUnsignedInt:self->_badPINCount];
    v15[6] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:7];
    SFDashboardLogJSON();

    if (dword_1001BF408 <= 50 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)logUsageStart:(int)start
{
  if (!self->_loggedUsageStart)
  {
    v3 = *&start;
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
    v13[0] = @"WHASetup";
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

    if (dword_1001BF408 <= 50 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)_handleHomeButtonPressed
{
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (self->_homePressed || MKBGetDeviceLockState() - 1 > 1)
  {

    [(WHASetupMainController *)self dismiss:4];
  }

  else
  {
    if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_homePressed = 1;
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * i) events] & 0x10) != 0)
        {
          if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(WHASetupMainController *)self _handleHomeButtonPressed];
        }
      }

      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dismiss:(int)dismiss completion:(id)completion
{
  v4 = *&dismiss;
  completionCopy = completion;
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    [(WHASetupMainController *)self logUsageStart:v4];
    _remoteViewControllerProxy = [(WHASetupMainController *)self _remoteViewControllerProxy];
    v8 = _remoteViewControllerProxy;
    vcNav = self->_vcNav;
    if (vcNav)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10012FB80;
      v10[3] = &unk_1001959D0;
      v12 = completionCopy;
      v11 = v8;
      [(SVSCommonNavController *)vcNav dismissViewControllerAnimated:1 completion:v10];
    }

    else
    {
      [_remoteViewControllerProxy dismiss];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _remoteViewControllerProxy = [(WHASetupMainController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.WHASetup"];

  if (!self->_dismissed)
  {
    if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(WHASetupMainController *)self dismiss:21];
  }

  dismissNotifyToken = self->_dismissNotifyToken;
  if (dismissNotifyToken != -1)
  {
    notify_cancel(dismissNotifyToken);
    self->_dismissNotifyToken = -1;
  }

  [(SFDeviceSetupWHASession *)self->_setupSession invalidate];
  setupSession = self->_setupSession;
  self->_setupSession = 0;

  storyboard = self->_storyboard;
  self->_storyboard = 0;

  [(SVSBaseViewController *)self->_vcAuth setMainController:0];
  vcAuth = self->_vcAuth;
  self->_vcAuth = 0;

  [(SVSBaseViewController *)self->_vcDone setMainController:0];
  vcDone = self->_vcDone;
  self->_vcDone = 0;

  vcNav = self->_vcNav;
  self->_vcNav = 0;

  [(SVSBaseViewController *)self->_vcProgress setMainController:0];
  vcProgress = self->_vcProgress;
  self->_vcProgress = 0;

  [(SVSBaseViewController *)self->_vcHomePicker setMainController:0];
  vcHomePicker = self->_vcHomePicker;
  self->_vcHomePicker = 0;

  [(SVSBaseViewController *)self->_vcRoomPicker setMainController:0];
  vcRoomPicker = self->_vcRoomPicker;
  self->_vcRoomPicker = 0;

  [(SVSBaseViewController *)self->_vcStart setMainController:0];
  vcStart = self->_vcStart;
  self->_vcStart = 0;

  v16.receiver = self;
  v16.super_class = WHASetupMainController;
  [(SVSBaseMainController *)&v16 viewDidDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v19 = 0;
  v18.receiver = self;
  v18.super_class = WHASetupMainController;
  [(WHASetupMainController *)&v18 viewDidAppear:appearCopy];
  self->_viewAppearedTicks = mach_absolute_time();
  Int64 = CFPrefs_GetInt64();
  if (v19)
  {
    v6 = 1;
  }

  else
  {
    v6 = Int64 == 0;
  }

  v7 = !v6;
  self->_placeholderUI = v7;
  v8 = [UIStoryboard storyboardWithName:@"WHASetup" bundle:0];
  storyboard = self->_storyboard;
  self->_storyboard = v8;

  instantiateInitialViewController = [(UIStoryboard *)self->_storyboard instantiateInitialViewController];
  vcNav = self->_vcNav;
  self->_vcNav = instantiateInitialViewController;

  [(SVSCommonNavController *)self->_vcNav setDelegate:self];
  [(SVSCommonNavController *)self->_vcNav setModalPresentationStyle:4];
  v12 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v12 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SVSCommonNavController *)self->_vcNav setModalTransitionStyle:2];
  }

  [(SVSCommonNavController *)self->_vcNav setTransitioningDelegate:self->_vcNav];
  viewControllers = [(SVSCommonNavController *)self->_vcNav viewControllers];
  firstObject = [viewControllers firstObject];
  vcStart = self->_vcStart;
  self->_vcStart = firstObject;

  [(SVSBaseViewController *)self->_vcStart setMainController:self];
  [(WHASetupMainController *)self presentViewController:self->_vcNav animated:1 completion:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100130078;
  v17[3] = &unk_1001959A8;
  v17[4] = self;
  notify_register_dispatch("com.apple.sharing.ProxCard.dismiss", &self->_dismissNotifyToken, &_dispatch_main_q, v17);
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(WHASetupMainController *)self view];
  window = [view window];

  if (!window)
  {
    return 30;
  }

  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return (1 << [UIApp activeInterfaceOrientation]);
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  self->_dismissNotifyToken = -1;
  userInfo = [context userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = userInfo;

  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000001"])
  {
    v9 = 1;
LABEL_25:
    v10 = completionCopy;
LABEL_26:
    self->_testMode = v9;
    goto LABEL_27;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000002"])
  {
    v9 = 2;
    goto LABEL_25;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000003"])
  {
    v9 = 3;
    goto LABEL_25;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000004"])
  {
    v9 = 4;
    goto LABEL_25;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000005"])
  {
    v9 = 5;
    goto LABEL_25;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000006"])
  {
    v9 = 6;
    goto LABEL_25;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000007"])
  {
    v9 = 7;
    goto LABEL_25;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000008"])
  {
    v9 = 8;
    goto LABEL_25;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000009"])
  {
    v9 = 9;
    goto LABEL_25;
  }

  if ([v8 isEqual:@"00000000-0000-0000-0000-00000000000A"])
  {
    v9 = 10;
    goto LABEL_25;
  }

  v11 = [v8 isEqual:@"00000000-0000-0000-0000-00000000000B"];
  v10 = completionCopy;
  if (v11)
  {
    v9 = 11;
    goto LABEL_26;
  }

LABEL_27:
  if (v10)
  {
    completionCopy[2](completionCopy);
  }
}

@end