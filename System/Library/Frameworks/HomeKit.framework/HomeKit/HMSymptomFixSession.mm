@interface HMSymptomFixSession
+ (id)_createDeviceRepairSession;
+ (id)_createSymptomDisappearanceTimer;
+ (id)logCategory;
- (BOOL)hasSymptomDisappeared;
- (BOOL)isDeviceRepairSessionFinished;
- (HMFTimer)symptomDisappearanceTimer;
- (HMSymptomFixSession)init;
- (HMSymptomFixSession)initWithSymptom:(id)symptom deviceIdentifier:(id)identifier context:(id)context;
- (HMSymptomFixSessionDelegate)delegate;
- (NSError)error;
- (SFDeviceRepairSession)deviceRepairSession;
- (int64_t)state;
- (unsigned)deviceRepairFlags;
- (void)_startSymptomDisappearanceTimer;
- (void)_updateForDeviceSetupProgressEvent:(unsigned int)event error:(id)error;
- (void)_updateState;
- (void)dealloc;
- (void)noteSymptomDisappeared;
- (void)setDelegate:(id)delegate;
- (void)setDeviceRepairFlags:(unsigned int)flags;
- (void)setDeviceRepairSession:(id)session;
- (void)setDeviceRepairSessionFinished:(BOOL)finished;
- (void)setError:(id)error;
- (void)setHasSymptomDisappeared:(BOOL)disappeared;
- (void)setState:(int64_t)state;
- (void)setSymptomDisappearanceTimer:(id)timer;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMSymptomFixSession

- (void)timerDidFire:(id)fire
{
  v17 = *MEMORY[0x1E69E9840];
  fireCopy = fire;
  symptomDisappearanceTimer = [(HMSymptomFixSession *)self symptomDisappearanceTimer];

  if (symptomDisappearanceTimer == fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      [fireCopy timeInterval];
      v13 = 138543618;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Symptom still exists %fs after being fixed. Marking as finished with timeout error", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:8];
    [(HMSymptomFixSession *)selfCopy setError:v11];

    [(HMSymptomFixSession *)selfCopy setSymptomDisappearanceTimer:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_startSymptomDisappearanceTimer
{
  v13 = *MEMORY[0x1E69E9840];
  _createSymptomDisappearanceTimer = [objc_opt_class() _createSymptomDisappearanceTimer];
  [_createSymptomDisappearanceTimer setDelegate:self];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = _createSymptomDisappearanceTimer;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting timer for symptom disappearance: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [_createSymptomDisappearanceTimer resume];
  [(HMSymptomFixSession *)selfCopy setSymptomDisappearanceTimer:_createSymptomDisappearanceTimer];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateState
{
  error = [(HMSymptomFixSession *)self error];
  if (error)
  {
  }

  else if (![(HMSymptomFixSession *)self isDeviceRepairSessionFinished]|| ![(HMSymptomFixSession *)self hasSymptomDisappeared])
  {
    return;
  }

  [(HMSymptomFixSession *)self setState:2];
}

- (void)_updateForDeviceSetupProgressEvent:(unsigned int)event error:(id)error
{
  [(HMSymptomFixSession *)self setError:error];
  if (event == 30 || event == 20)
  {
    [(HMSymptomFixSession *)self setDeviceRepairSessionFinished:1];
    error = [(HMSymptomFixSession *)self error];

    if (!error)
    {

      [(HMSymptomFixSession *)self _startSymptomDisappearanceTimer];
    }
  }
}

- (void)noteSymptomDisappeared
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notified that symptom has disappeared", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMSymptomFixSession *)selfCopy setHasSymptomDisappeared:1];
  [(HMSymptomFixSession *)selfCopy setSymptomDisappearanceTimer:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Asked to stop symptom fix session", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  state = [(HMSymptomFixSession *)selfCopy state];
  if (state >= 2)
  {
    if (state == 2)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = selfCopy;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Not stopping symptom fix session because it is already finished", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:23];
    [(HMSymptomFixSession *)selfCopy setError:v8];

    deviceRepairSession = [(HMSymptomFixSession *)selfCopy deviceRepairSession];
    [deviceRepairSession invalidate];

    [(HMSymptomFixSession *)selfCopy setSymptomDisappearanceTimer:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v43 = *MEMORY[0x1E69E9840];
  if ([(HMSymptomFixSession *)self state])
  {
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Cannot start a session that has already been started" userInfo:0];
    objc_exception_throw(v29);
  }

  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Asked to start symptom fix session", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  _createDeviceRepairSession = [objc_opt_class() _createDeviceRepairSession];
  [(HMSymptomFixSession *)selfCopy setDeviceRepairSession:_createDeviceRepairSession];

  location = 0;
  p_location = &location;
  v34 = 0x2050000000;
  v8 = getSFDeviceClass_softClass;
  v35 = getSFDeviceClass_softClass;
  if (!getSFDeviceClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSFDeviceClass_block_invoke;
    v37 = &unk_1E754CB30;
    *v38 = &location;
    __getSFDeviceClass_block_invoke(buf);
    v8 = p_location[3];
  }

  v9 = v8;
  _Block_object_dispose(&location, 8);
  v10 = objc_alloc_init(v8);
  deviceIdentifier = [(HMSymptomFixSession *)selfCopy deviceIdentifier];
  [v10 setIdentifier:deviceIdentifier];

  deviceRepairSession = [(HMSymptomFixSession *)selfCopy deviceRepairSession];
  [deviceRepairSession setPeerDevice:v10];

  presentingViewController = [(HMSymptomFixSession *)selfCopy presentingViewController];
  deviceRepairSession2 = [(HMSymptomFixSession *)selfCopy deviceRepairSession];
  [deviceRepairSession2 setPresentingViewController:presentingViewController];

  deviceRepairFlags = [(HMSymptomFixSession *)selfCopy deviceRepairFlags];
  deviceRepairSession3 = [(HMSymptomFixSession *)selfCopy deviceRepairSession];
  [deviceRepairSession3 setRepairFlags:deviceRepairFlags];

  objc_initWeak(&location, selfCopy);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __28__HMSymptomFixSession_start__block_invoke;
  v30[3] = &unk_1E754BD30;
  objc_copyWeak(&v31, &location);
  deviceRepairSession4 = [(HMSymptomFixSession *)selfCopy deviceRepairSession];
  [deviceRepairSession4 setProgressHandler:v30];

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    deviceRepairSession5 = [(HMSymptomFixSession *)v19 deviceRepairSession];
    symptom = [(HMSymptomFixSession *)v19 symptom];
    deviceIdentifier2 = [(HMSymptomFixSession *)v19 deviceIdentifier];
    presentingViewController2 = [(HMSymptomFixSession *)v19 presentingViewController];
    deviceRepairFlags2 = [(HMSymptomFixSession *)v19 deviceRepairFlags];
    *buf = 138544642;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = deviceRepairSession5;
    *&buf[22] = 2112;
    v37 = symptom;
    *v38 = 2112;
    *&v38[2] = deviceIdentifier2;
    v39 = 2112;
    v40 = presentingViewController2;
    v41 = 1024;
    v42 = deviceRepairFlags2;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Activating SFDeviceRepairSession %@ for symptom %@ with deviceIdentifier: %@ presentingViewController: %@ repairFlags: %d", buf, 0x3Au);
  }

  objc_autoreleasePoolPop(v18);
  deviceRepairSession6 = [(HMSymptomFixSession *)v19 deviceRepairSession];
  [deviceRepairSession6 activate];

  [(HMSymptomFixSession *)v19 setState:1];
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  v28 = *MEMORY[0x1E69E9840];
}

void __28__HMSymptomFixSession_start__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = v10;
    if (a2 > 279)
    {
      if (a2 > 709)
      {
        if (a2 <= 899)
        {
          if (a2 <= 802)
          {
            if (a2 == 710)
            {
              v12 = "AudioPasscodeEnded";
              goto LABEL_212;
            }

            if (a2 == 800)
            {
              v12 = "AuthAccountsStart";
              goto LABEL_212;
            }

            goto LABEL_211;
          }

          if (a2 == 803)
          {
            v12 = "AuthAccountsiCloudProgress";
            goto LABEL_212;
          }

          if (a2 == 804)
          {
            v12 = "AuthAccountsStoreProgress";
            goto LABEL_212;
          }

          if (a2 != 805)
          {
            goto LABEL_211;
          }

          v12 = "AuthAccountsGameCenterProgress";
        }

        else
        {
          if (a2 <= 999)
          {
            switch(a2)
            {
              case 900:
                v12 = "SU-No-SetupScanAttempt";
                break;
              case 901:
                v12 = "SU-No-SetupStatusUpdate";
                break;
              case 902:
                v12 = "SU-No-SetupWipeWifi";
                break;
              case 903:
                v12 = "SU-No-SetupCancelled";
                break;
              case 904:
                v12 = "SU-No-SetupObliterate";
                break;
              case 905:
                v12 = "SU-No-SetupCannotCancel";
                break;
              case 906:
                v12 = "SysDrop AirDrop Event";
                break;
              case 907:
                v12 = "SysDrop Sysdiagnose Event";
                break;
              case 908:
                v12 = "SysDrop Cancel Event";
                break;
              case 909:
                v12 = "File Transfer Progress Event";
                break;
              case 910:
                v12 = "File Transfer Completed Event";
                break;
              case 911:
                v12 = "iOSWiFiSetup";
                break;
              case 912:
                v12 = "HKPrimaryResidentSSIDFetchStart";
                break;
              case 913:
                v12 = "LoggingProfileTransfer";
                break;
              default:
                goto LABEL_211;
            }

            goto LABEL_212;
          }

          if (a2 <= 1099)
          {
            if (a2 == 1000)
            {
              v12 = "SecureIntentStart";
              goto LABEL_212;
            }

            if (a2 == 1001)
            {
              v12 = "SecureIntentFinish";
              goto LABEL_212;
            }

            goto LABEL_211;
          }

          if (a2 == 1100)
          {
            v12 = "OneTimeCodeDetected";
            goto LABEL_212;
          }

          if (a2 == 2000)
          {
            v12 = "DependentStart";
            goto LABEL_212;
          }

          if (a2 != 2001)
          {
            goto LABEL_211;
          }

          v12 = "DependentEnd";
        }
      }

      else if (a2 <= 499)
      {
        if (a2 > 400)
        {
          if (a2 > 419)
          {
            switch(a2)
            {
              case 0x1A4:
                v12 = "FileTransferReady";
                goto LABEL_212;
              case 0x1AE:
                v12 = "eSimExternal2FAStart";
                goto LABEL_212;
              case 0x1AF:
                v12 = "eSimExternal2FAStop";
                goto LABEL_212;
            }

            goto LABEL_211;
          }

          if (a2 == 401)
          {
            v12 = "PINPair";
            goto LABEL_212;
          }

          if (a2 == 410)
          {
            v12 = "MigrateStart";
            goto LABEL_212;
          }

          if (a2 != 411)
          {
            goto LABEL_211;
          }

          v12 = "MigrateStop";
        }

        else
        {
          if (a2 > 299)
          {
            switch(a2)
            {
              case 0x12C:
                v12 = "BackupProgress";
                goto LABEL_212;
              case 0x136:
                v12 = "SyncProgress";
                goto LABEL_212;
              case 0x190:
                v12 = "StopSetup";
                goto LABEL_212;
            }

            goto LABEL_211;
          }

          if (a2 == 280)
          {
            v12 = "TVLCalFailed";
            goto LABEL_212;
          }

          if (a2 == 281)
          {
            v12 = "TVLCalTryAgain";
            goto LABEL_212;
          }

          if (a2 != 282)
          {
            goto LABEL_211;
          }

          v12 = "TVLCalFinal";
        }
      }

      else if (a2 <= 554)
      {
        if (a2 > 529)
        {
          if (a2 == 530)
          {
            v12 = "SiriDialogBHome";
            goto LABEL_212;
          }

          if (a2 == 540)
          {
            v12 = "SiriDialogBNews";
            goto LABEL_212;
          }

          if (a2 != 550)
          {
            goto LABEL_211;
          }

          v12 = "SiriDialogBWeather";
        }

        else
        {
          if (a2 == 500)
          {
            v12 = "SiriWelcome";
            goto LABEL_212;
          }

          if (a2 == 510)
          {
            v12 = "SiriDialogA";
            goto LABEL_212;
          }

          if (a2 != 520)
          {
            goto LABEL_211;
          }

          v12 = "SiriDialogBStart";
        }
      }

      else
      {
        if (a2 <= 569)
        {
          switch(a2)
          {
            case 0x22B:
              v12 = "SiriDialogBClock";
              goto LABEL_212;
            case 0x22E:
              v12 = "SiriDialogBMusic";
              goto LABEL_212;
            case 0x230:
              v12 = "SiriDialogCMusic";
              goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 > 599)
        {
          if (a2 == 600)
          {
            v12 = "SiriSkipDemo";
            goto LABEL_212;
          }

          if (a2 == 700)
          {
            v12 = "StopSetupLEDs";
            goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 == 570)
        {
          v12 = "SiriDialogCNews";
          goto LABEL_212;
        }

        if (a2 != 580)
        {
          goto LABEL_211;
        }

        v12 = "SiriDialogCWeather";
      }
    }

    else if (a2 <= 121)
    {
      if (a2 > 69)
      {
        if (a2 > 95)
        {
          if (a2 <= 98)
          {
            if (a2 == 96)
            {
              v12 = "SetupFinished";
            }

            else if (a2 == 97)
            {
              v12 = "SetupResumed";
            }

            else
            {
              v12 = "SetupSuspend";
            }

            goto LABEL_212;
          }

          if (a2 == 99)
          {
            v12 = "SetupPeerSWUpdate";
            goto LABEL_212;
          }

          if (a2 == 100)
          {
            v12 = "Finished";
            goto LABEL_212;
          }

          if (a2 != 120)
          {
            goto LABEL_211;
          }

          v12 = "CheckingiCloud";
        }

        else if (a2 > 91)
        {
          if (a2 == 92)
          {
            v12 = "StepStart";
            goto LABEL_212;
          }

          if (a2 == 94)
          {
            v12 = "StepFinish";
            goto LABEL_212;
          }

          if (a2 != 95)
          {
            goto LABEL_211;
          }

          v12 = "PreFinish";
        }

        else
        {
          if (a2 == 70)
          {
            v12 = "SecurityFinish";
            goto LABEL_212;
          }

          if (a2 == 80)
          {
            v12 = "BasicConfigStart";
            goto LABEL_212;
          }

          if (a2 != 90)
          {
            goto LABEL_211;
          }

          v12 = "BasicConfigFinish";
        }
      }

      else if (a2 > 32)
      {
        if (a2 > 49)
        {
          if (a2 == 50)
          {
            v12 = "PreAuthFinish";
            goto LABEL_212;
          }

          if (a2 == 60)
          {
            v12 = "SecurityStart";
            goto LABEL_212;
          }

          if (a2 != 65)
          {
            goto LABEL_211;
          }

          v12 = "SecurityAPCLoopStart";
        }

        else
        {
          if (a2 == 33)
          {
            v12 = "SessionSecured";
            goto LABEL_212;
          }

          if (a2 == 35)
          {
            v12 = "ConnectStart";
            goto LABEL_212;
          }

          if (a2 != 40)
          {
            goto LABEL_211;
          }

          v12 = "PreAuthStart";
        }
      }

      else
      {
        if (a2 > 29)
        {
          if (a2 == 30)
          {
            v12 = "Error";
          }

          else if (a2 == 31)
          {
            v12 = "SessionStarted";
          }

          else
          {
            v12 = "SessionEnded";
          }

          goto LABEL_212;
        }

        if (!a2)
        {
          v12 = "Invalid";
          goto LABEL_212;
        }

        if (a2 == 10)
        {
          v12 = "Start";
          goto LABEL_212;
        }

        if (a2 != 20)
        {
          goto LABEL_211;
        }

        v12 = "Final";
      }
    }

    else if (a2 <= 239)
    {
      if (a2 > 209)
      {
        if (a2 > 229)
        {
          switch(a2)
          {
            case 0xE6:
              v12 = "HomeKitStart";
              goto LABEL_212;
            case 0xEA:
              v12 = "HomeKitSetupStart";
              goto LABEL_212;
            case 0xEC:
              v12 = "CDPSetupStart";
              goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 == 210)
        {
          v12 = "ActivationStart";
          goto LABEL_212;
        }

        if (a2 == 220)
        {
          v12 = "iCloudStart";
          goto LABEL_212;
        }

        if (a2 != 224)
        {
          goto LABEL_211;
        }

        v12 = "AppleIDSetupStart";
      }

      else
      {
        if (a2 > 139)
        {
          switch(a2)
          {
            case 0x8C:
              v12 = "RecognizeVoice";
              goto LABEL_212;
            case 0x96:
              v12 = "SiriForEveryone";
              goto LABEL_212;
            case 0xC8:
              v12 = "WiFiStart";
              goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 == 122)
        {
          v12 = "CheckingAppleMusic";
          goto LABEL_212;
        }

        if (a2 == 124)
        {
          v12 = "CheckingAccount";
          goto LABEL_212;
        }

        if (a2 != 130)
        {
          goto LABEL_211;
        }

        v12 = "WiFiPoweredOff";
      }
    }

    else
    {
      if (a2 > 269)
      {
        if (a2 > 275)
        {
          if (a2 > 277)
          {
            if (a2 == 278)
            {
              v12 = "TVLCalStart";
            }

            else
            {
              v12 = "TVLCalStep";
            }
          }

          else if (a2 == 276)
          {
            v12 = "TVLSTryAgain";
          }

          else
          {
            v12 = "TVLSToneBegan";
          }

          goto LABEL_212;
        }

        switch(a2)
        {
          case 0x10E:
            v12 = "TVLSEstimateStart";
            goto LABEL_212;
          case 0x110:
            v12 = "TVLSEstimateFinal";
            goto LABEL_212;
          case 0x112:
            v12 = "TVLSEstimateFailed";
            goto LABEL_212;
        }

LABEL_211:
        v12 = "?";
        goto LABEL_212;
      }

      if (a2 > 249)
      {
        if (a2 == 250)
        {
          v12 = "ReportSuccess";
          goto LABEL_212;
        }

        if (a2 == 260)
        {
          v12 = "TVLSStart";
          goto LABEL_212;
        }

        if (a2 != 264)
        {
          goto LABEL_211;
        }

        v12 = "TVLSFinish";
      }

      else
      {
        if (a2 == 240)
        {
          v12 = "BuddyStarting";
          goto LABEL_212;
        }

        if (a2 == 241)
        {
          v12 = "BuddyProgress";
          goto LABEL_212;
        }

        if (a2 != 242)
        {
          goto LABEL_211;
        }

        v12 = "BuddyFinished";
      }
    }

LABEL_212:
    v15 = 138544130;
    v16 = v10;
    v17 = 2080;
    v18 = v12;
    v19 = 1024;
    v20 = a2;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Received new device repair session progress event: %s (%d) and info: %@", &v15, 0x26u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [v5 objectForKeyedSubscript:@"eo"];
  [v8 _updateForDeviceSetupProgressEvent:a2 error:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setSymptomDisappearanceTimer:(id)timer
{
  timerCopy = timer;
  os_unfair_lock_lock_with_options();
  symptomDisappearanceTimer = self->_symptomDisappearanceTimer;
  self->_symptomDisappearanceTimer = timerCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMFTimer)symptomDisappearanceTimer
{
  os_unfair_lock_lock_with_options();
  v3 = self->_symptomDisappearanceTimer;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHasSymptomDisappeared:(BOOL)disappeared
{
  os_unfair_lock_lock_with_options();
  self->_hasSymptomDisappeared = disappeared;
  os_unfair_lock_unlock(&self->_lock);

  [(HMSymptomFixSession *)self _updateState];
}

- (BOOL)hasSymptomDisappeared
{
  os_unfair_lock_lock_with_options();
  hasSymptomDisappeared = self->_hasSymptomDisappeared;
  os_unfair_lock_unlock(&self->_lock);
  return hasSymptomDisappeared;
}

- (void)setDeviceRepairFlags:(unsigned int)flags
{
  os_unfair_lock_lock_with_options();
  self->_deviceRepairFlags = flags;

  os_unfair_lock_unlock(&self->_lock);
}

- (unsigned)deviceRepairFlags
{
  os_unfair_lock_lock_with_options();
  deviceRepairFlags = self->_deviceRepairFlags;
  os_unfair_lock_unlock(&self->_lock);
  return deviceRepairFlags;
}

- (void)setDeviceRepairSessionFinished:(BOOL)finished
{
  os_unfair_lock_lock_with_options();
  self->_deviceRepairSessionFinished = finished;
  os_unfair_lock_unlock(&self->_lock);

  [(HMSymptomFixSession *)self _updateState];
}

- (BOOL)isDeviceRepairSessionFinished
{
  os_unfair_lock_lock_with_options();
  deviceRepairSessionFinished = self->_deviceRepairSessionFinished;
  os_unfair_lock_unlock(&self->_lock);
  return deviceRepairSessionFinished;
}

- (void)setDeviceRepairSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  deviceRepairSession = self->_deviceRepairSession;
  self->_deviceRepairSession = sessionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (SFDeviceRepairSession)deviceRepairSession
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceRepairSession;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  error = self->_error;
  self->_error = errorCopy;

  os_unfair_lock_unlock(&self->_lock);

  [(HMSymptomFixSession *)self _updateState];
}

- (NSError)error
{
  os_unfair_lock_lock_with_options();
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMSymptomFixSessionDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setState:(int64_t)state
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(HMSymptomFixSession *)self state]!= state)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543874;
      v17 = v8;
      v18 = 2048;
      state = [(HMSymptomFixSession *)selfCopy state];
      v20 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating state from %ld to %ld", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    os_unfair_lock_lock_with_options();
    selfCopy->_state = state;
    os_unfair_lock_unlock(&selfCopy->_lock);
    delegate = [(HMSymptomFixSession *)selfCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      context = [(HMSymptomFixSession *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __32__HMSymptomFixSession_setState___block_invoke;
      v13[3] = &unk_1E754E5C0;
      v14 = delegate;
      v15 = selfCopy;
      [delegateCaller invokeBlock:v13];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __32__HMSymptomFixSession_setState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 state];

  return [v1 fixSession:v2 didChangeState:v3];
}

- (int64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)dealloc
{
  [(SFDeviceRepairSession *)self->_deviceRepairSession invalidate];
  v3.receiver = self;
  v3.super_class = HMSymptomFixSession;
  [(HMSymptomFixSession *)&v3 dealloc];
}

- (HMSymptomFixSession)initWithSymptom:(id)symptom deviceIdentifier:(id)identifier context:(id)context
{
  symptomCopy = symptom;
  identifierCopy = identifier;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = HMSymptomFixSession;
  v12 = [(HMSymptomFixSession *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_symptom, symptom);
    objc_storeStrong(&v13->_deviceIdentifier, identifier);
    objc_storeStrong(&v13->_context, context);
    v13->_state = 0;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v13->_symptom, v13->_deviceIdentifier];
    logIdentifier = v13->_logIdentifier;
    v13->_logIdentifier = v14;
  }

  return v13;
}

- (HMSymptomFixSession)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_42240 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_42240, &__block_literal_global_42241);
  }

  v3 = logCategory__hmf_once_v25_42242;

  return v3;
}

uint64_t __34__HMSymptomFixSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_42242;
  logCategory__hmf_once_v25_42242 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)_createSymptomDisappearanceTimer
{
  mEMORY[0x1E69A2A40] = [MEMORY[0x1E69A2A40] sharedPreferences];
  v3 = [mEMORY[0x1E69A2A40] preferenceForKey:@"symptomDisappearanceTimeout"];

  numberValue = [v3 numberValue];
  if (numberValue)
  {
    numberValue2 = [v3 numberValue];
    [numberValue2 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 30.0;
  }

  v8 = [objc_alloc(MEMORY[0x1E69A2A68]) initWithTimeInterval:1 options:v7];

  return v8;
}

+ (id)_createDeviceRepairSession
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getSFDeviceRepairSessionClass_softClass;
  v10 = getSFDeviceRepairSessionClass_softClass;
  if (!getSFDeviceRepairSessionClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getSFDeviceRepairSessionClass_block_invoke;
    v6[3] = &unk_1E754CB30;
    v6[4] = &v7;
    __getSFDeviceRepairSessionClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);

  return v4;
}

@end