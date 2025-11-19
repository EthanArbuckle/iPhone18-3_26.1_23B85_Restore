@interface TriggerWiFiDECaptureIfNeeded
@end

@implementation TriggerWiFiDECaptureIfNeeded

void ___TriggerWiFiDECaptureIfNeeded_block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    v15 = *(a1 + 40);
    LogPrintF();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 40);
  switch(v4)
  {
    case 0:
      v11 = *(v3 + 72) - 1;
      *(v3 + 72) = v11;
      if (v11)
      {
        break;
      }

      v10 = @"abort";
LABEL_26:
      v18[0] = @"DEExtensionHostAppKey";
      v18[1] = @"uuid";
      v13 = *(v3 + 64);
      v19[0] = @"AirPlay Transport";
      v19[1] = v13;
      v18[2] = @"trigger";
      v19[2] = v10;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:{3, v15}];
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        v17 = *(a1 + 40);
        LogPrintF();
        [*(v3 + 56) attachmentsForParameters:v14 andHandler:{0, v17}];
      }

      else
      {
        [*(v3 + 56) attachmentsForParameters:v14 andHandler:{0, v16}];
      }

      break;
    case 2:
      if (!*(v3 + 72))
      {
        APSLogErrorAt();
        break;
      }

      *(v3 + 72) = 0;
      v10 = @"post";
      goto LABEL_26;
    case 1:
      v5 = *(v3 + 72);
      *(v3 + 72) = v5 + 1;
      if (!v5)
      {
        v6 = *(v3 + 64);
        v7 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
        v8 = v7;
        *(v3 + 64) = v7;

        IsAppleInternalBuild();
        if (IsAppleInternalBuild())
        {
          v9 = 50;
        }

        else
        {
          v9 = 30;
        }

        if (v9 >= gLogCategory_AirPlayReceiverPlatform)
        {
          if (gLogCategory_AirPlayReceiverPlatform != -1 || (IsAppleInternalBuild(), _LogCategory_Initialize()))
          {
            IsAppleInternalBuild();
            v15 = *(a1 + 32);
            LogPrintF();
          }
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.airplay.connection.stalled", 0, 0, 1u);
        v10 = @"pre";
        goto LABEL_26;
      }

      break;
    default:
      if (gLogCategory_AirPlayReceiverPlatform <= 60 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      break;
  }

  CFRelease(*(a1 + 32));
  objc_autoreleasePoolPop(v2);
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

@end