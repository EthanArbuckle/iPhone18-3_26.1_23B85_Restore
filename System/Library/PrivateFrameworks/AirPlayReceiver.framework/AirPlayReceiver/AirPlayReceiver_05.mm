void _NotifyIsPlayingAmbientAudio(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = a1 != 0;
  if (APSIsAPMSpeaker())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___NotifyIsPlayingAmbientAudio_block_invoke;
    block[3] = &unk_278C5FC48;
    block[4] = &v5;
    if (_NotifyIsPlayingAmbientAudio_sTokenOnce != -1)
    {
      dispatch_once(&_NotifyIsPlayingAmbientAudio_sTokenOnce, block);
    }

    if (*(v6 + 6))
    {
      APSLogErrorAt();
      if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v2 = notify_set_state(_NotifyIsPlayingAmbientAudio_sToken, v1);
      *(v6 + 6) = v2;
      if (v2)
      {
        APSLogErrorAt();
        if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v3 = notify_post("com.apple.airplay.isPlayingAmbientAudioChanged");
        *(v6 + 6) = v3;
        if (!v3)
        {
          if (gLogCategory_AirPlayReceiverPlatform > 50 || gLogCategory_AirPlayReceiverPlatform == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_11;
          }

LABEL_9:
          LogPrintF();
          goto LABEL_11;
        }

        APSLogErrorAt();
        if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_11:
  _Block_object_dispose(&v5, 8);
}

void sub_23E9F92BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float _GetHWVolumeSliderValue()
{
  v1 = 0.0;
  if ([objc_msgSend(MEMORY[0x277D26E58] "sharedAVSystemController")])
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      APSVolumeConvertSliderValueToDB();
LABEL_7:
      LogPrintF();
    }
  }

  else if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_7;
  }

  return v1;
}

void __AirPlayReceiverServerPlatformInitialize_block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 52))
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    AirPlayReceiverServerSendMediaRemoteCommand(*(*(a1 + 40) + 216), 1885495660);
    *(*(a1 + 32) + 52) = 0;
  }
}

void __AirPlayReceiverServerPlatformInitialize_block_invoke_3(uint64_t a1)
{
  if (CFObjectGetPropertyInt64Sync())
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    AirPlayReceiverServerSendMediaRemoteCommand(*(*(a1 + 40) + 216), 1885499506);
    *(*(a1 + 32) + 52) = 1;
  }
}

uint64_t __AirPlayReceiverServerPlatformInitialize_block_invoke_5(uint64_t a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  if ([MEMORY[0x277CBEB68] null] == a4 || a4 == 0)
  {
    v11 = *(a1 + 32);
    v12 = a2;
    v13 = a3;
    v14 = 0;
  }

  else
  {
    v15 = CFGetTypeID(a4);
    if (v15 != CFDictionaryGetTypeID())
    {
      return 4294960582;
    }

    v11 = *(a1 + 32);
    v12 = a2;
    v13 = a3;
    v14 = a4;
  }

  return AirPlayReceiverServerControl(v11, 1, v12, v13, v14, a5);
}

void AirPlayReceiverServerPlatformFinalize(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CCAB98] defaultCenter];
    [v1 removeObserver:a1 name:*MEMORY[0x277CB8068] object:0];
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 removeObserver:a1 name:*MEMORY[0x277CB80A0] object:0];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:a1 name:*MEMORY[0x277CB8098] object:0];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v4 = *(a1 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 16) = 0;
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 24) = 0;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 32) = 0;
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 40) = 0;
    }

    [a1 _unregisterAVSystemControllerNotifications];
    [*(a1 + 152) invalidate];

    *(a1 + 152) = 0;
    v8 = *(a1 + 128);
    if (v8 != -1)
    {
      notify_cancel(v8);
      *(a1 + 128) = -1;
    }

    v9 = *(a1 + 132);
    if (v9 != -1)
    {
      notify_cancel(v9);
      *(a1 + 132) = -1;
    }

    v10 = *(a1 + 136);
    if (v10 != -1)
    {
      notify_cancel(v10);
      *(a1 + 136) = -1;
    }

    v11 = *(a1 + 140);
    if (v11 != -1)
    {
      notify_cancel(v11);
      *(a1 + 140) = -1;
    }

    v12 = *(a1 + 144);
    if (v12 != -1)
    {
      notify_cancel(v12);
      *(a1 + 144) = -1;
    }

    [*(a1 + 168) setDelegate:0];
    v13 = *(a1 + 120);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 120) = 0;
    }

    *(a1 + 168) = 0;
    *(a1 + 64) = 0;

    *(a1 + 56) = 0;
    v14 = *(a1 + 176);
    if (v14)
    {
      dispatch_release(v14);
      *(a1 + 176) = 0;
    }
  }
}

uint64_t AirPlayReceiverServerPlatformControl(uint64_t a1, CFTypeRef cf1, const void *a3, const __CFDictionary *a4)
{
  v8 = *(a1 + 16);
  if (CFEqual(cf1, @"dacpStatus"))
  {
    if (*(a1 + 250))
    {
      Int64 = CFDictionaryGetInt64();
      if (Int64)
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        notify_set_state(*(v8 + 128), Int64);
        notify_post("com.apple.airplay.dacp.error");
      }
    }

    return 0;
  }

  if (!CFEqual(cf1, @"updatePrefs"))
  {
    if (CFEqual(cf1, @"updateActiveSessionRegistration"))
    {
      Value = CFDictionaryGetValue(a4, @"session");
      if (Value)
      {
        v11 = Value;
        v12 = CFDictionaryGetInt64();
        [v8 updateActiveSessionRegistration:v11 regType:v12 regOp:CFDictionaryGetInt64()];
        return 0;
      }
    }

    else if (CFEqual(cf1, @"updateHijackID"))
    {
      if (CFDictionaryGetValue(a4, @"hijackID"))
      {
        return 0;
      }
    }

    else
    {
      if (CFEqual(cf1, @"reportSessionStall"))
      {
        _TriggerWiFiDECaptureIfNeeded(a1);
        return 0;
      }

      if (!CFEqual(cf1, @"triggerStackShot"))
      {
        if (CFEqual(cf1, @"partnerProcessDeath"))
        {
          if (FigCFEqual())
          {
            v15 = -[AVAudioSession opaqueSessionID]([+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager session], "opaqueSessionID");
            if (gLogCategory_AirPlayReceiverPlatform <= 30)
            {
              v16 = v15;
              if (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize())
              {
                v18 = *(v8 + 104);
                v19 = v16;
                LogPrintF();
              }
            }

            *(v8 + 104) = -[AVAudioSession opaqueSessionID]([+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager session:v18], "opaqueSessionID");
          }

          return 0;
        }

        return -6714;
      }

      if (!a3 || (v14 = CFGetTypeID(a3), v14 == CFStringGetTypeID()))
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        WriteStackshotReport_async();
        return 0;
      }
    }

    APSLogErrorAt();
    return -6705;
  }

  return 0;
}

void _TriggerWiFiDECaptureIfNeeded(void *a1)
{
  v6 = 0;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  v3 = a1[11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___TriggerWiFiDECaptureIfNeeded_block_invoke;
  block[3] = &__block_descriptor_44_e5_v8__0l;
  v5 = Int64Ranged;
  block[4] = a1;
  dispatch_async(v3, block);
}

__CFString *AirPlayReceiverServerPlatformCopyProperty(int a1, int a2, CFTypeRef cf1, uint64_t a4, int *a5)
{
  if (CFEqual(cf1, @"audioJackStatus"))
  {
    v7 = @"connected";
  }

  else
  {
    if (!CFEqual(cf1, @"skewCompensation"))
    {
      v7 = 0;
      v8 = -6714;
      if (!a5)
      {
        return v7;
      }

      goto LABEL_6;
    }

    v7 = *MEMORY[0x277CBED28];
  }

  CFRetain(v7);
  v8 = 0;
  if (a5)
  {
LABEL_6:
    *a5 = v8;
  }

  return v7;
}

uint64_t AirPlayReceiverServerPlatformSetProperty(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, const void *a5)
{
  if (!cf1)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 16);
  if (CFEqual(cf1, @"receiverSessionCount"))
  {
    if (a5)
    {
      v8 = CFGetTypeID(a5);
      if (v8 == CFNumberGetTypeID())
      {
        [v7 setReceiverSessionCountAndUpdateStateIfNeeded:CFGetInt64()];
        return 0;
      }
    }

LABEL_21:
    APSLogErrorAt();
    return 4294960591;
  }

  if (CFEqual(cf1, @"mainMediaReceiverSession"))
  {
    if (!APSMultiPrimariesEnabled())
    {
      goto LABEL_24;
    }

    if (a5)
    {
      v9 = CFGetTypeID(a5);
      if (APReceiverRequestProcessorGetClassID_once != -1)
      {
        dispatch_once(&APReceiverRequestProcessorGetClassID_once, &__block_literal_global_303);
      }

      if (v9 != CMBaseClassGetCFTypeID())
      {
LABEL_24:
        APSLogErrorAt();
        return 4294960561;
      }
    }

    [v7 setMainMediaReceiverSession:a5];
    return 0;
  }

  if (!CFEqual(cf1, @"isMuted"))
  {
    return 4294960582;
  }

  if (!a5)
  {
    goto LABEL_21;
  }

  v11 = CFGetTypeID(a5);
  if (v11 != CFBooleanGetTypeID())
  {
    goto LABEL_21;
  }

  result = APSIsAPMSpeaker();
  if (result)
  {
    Value = CFBooleanGetValue(a5);
    _SetHWIsMuted(v7, 0, Value);
    return 0;
  }

  return result;
}

uint64_t _SetHWIsMuted(uint64_t a1, uint64_t a2, int a3)
{
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    v6 = "yes";
    if (*(a1 + 88))
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (!a3)
    {
      v6 = "no";
    }

    v14 = v7;
    v15 = v6;
    LogPrintF();
  }

  if (*(a1 + 88) != a3)
  {
    *(a1 + 88) = a3;
    if (a2)
    {
      v8 = AirPlayReceiverSessionAddMuteRequest(a2, a3);
      if (v8)
      {
        v12 = v8;
        APSLogErrorAt();
        return v12;
      }
    }

    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      if (*(a1 + 88))
      {
        v9 = "yes";
      }

      else
      {
        v9 = "no";
      }

      v14 = v9;
      LogPrintF();
    }

    v10 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 88) != 0];
    [v10 setAttribute:v11 forKey:*MEMORY[0x277D26BE8] error:0];
  }

  return 0;
}

void _AirPlayReceiverSessionPlatformInvalidate(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v22 = v2;
    v3 = a1[3];
    v4 = *(v3 + 16);
    if (*(v3 + 249) && v2[24])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetNumber();
      *(v22 + 24) = 0;
      *(v22 + 7) = 0;
      v6 = a1[75];
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v7)
      {
        v7(v6, Mutable);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v8 = a1[6];
    Empty = CFDictionaryGetEmpty();
    if (v8)
    {
      v10 = Empty;
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [*(v8 + 48) setMRNowPlayingInfo:v10 withMergePolicy:{1, a1}];
      }

      else
      {
        [*(v8 + 48) setMRNowPlayingInfo:v10 withMergePolicy:{1, v21}];
      }
    }

    v11 = v22;
    if (*(v4 + 160))
    {
      [*(v22 + 6) setDelegate:0];
      v11 = v22;
    }

    v12 = v22;
    *(v22 + 6) = 0;
    v13 = *(v22 + 11);
    if (v13)
    {
      IOPMAssertionRelease(v13);
      v12 = v22;
      *(v22 + 11) = 0;
      if (gLogCategory_AirPlayReceiverPlatform <= 40)
      {
        if (gLogCategory_AirPlayReceiverPlatform != -1 || (v14 = _LogCategory_Initialize(), v12 = v22, v14))
        {
          LogPrintF();
          v12 = v22;
        }
      }
    }

    v15 = v12[1];
    if (v15)
    {
      v16 = *(v15 + 32);
      v17 = *(*(a1[3] + 216) + 48);
      v18 = v17 && v17 == v16;
      if (v18 && APSIsMemberOfHTGroup())
      {
        [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager setDuckOthers:"setDuckOthers:error:" error:0, 0];
      }
    }

    v19 = v22;
    v20 = *(v22 + 7);
    if (v20)
    {
      [v20 setResult:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", *MEMORY[0x277CCA590], -6723, 0)}];

      v19 = v22;
      *(v22 + 7) = 0;
    }

    a1[6] = 0;
    v19[1] = 0;
  }
}

void _HandleReceiverUINotification(int a1, void *a2, CFTypeRef cf1, uint64_t a4, uint64_t a5)
{
  if (CFEqual(cf1, @"stopAudio"))
  {
    if (a5)
    {
      Int64 = CFDictionaryGetInt64();
      v9 = a2[6];
      if (v9)
      {
        if (*(v9 + 28) == Int64)
        {
          CFRetain(a2);
          v10 = a2[2];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ___HandleReceiverUINotification_block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = a2;
          dispatch_async(v10, block);
          return;
        }

        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }

  else if (CFEqual(cf1, @"startPlayingOverP2P") || CFEqual(cf1, @"stopPlayingOverP2P"))
  {
    CFObjectControlAsync();
  }

  else if (CFEqual(cf1, @"startingVideo") || CFEqual(cf1, @"updateAudioMode"))
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();

    _UpdateAVAudioSessionAudioMode(TypedValue);
  }

  else if (CFEqual(cf1, @"MakeNowPlayingSession"))
  {
    v12 = a2[6];
    if (v12)
    {
      [*(v12 + 48) makeNowPlayingPlayer];
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
LABEL_10:
        LogPrintF();
      }
    }
  }
}

uint64_t _UpdateAVAudioSessionAudioMode(uint64_t a1)
{
  v2 = 0;
  result = [+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager setAudioMode:"setAudioMode:isLongForm:error:" isLongForm:a1 error:1, &v2];
  if (result)
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50)
    {
      if (gLogCategory_AirPlayReceiverPlatform != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  else if (gLogCategory_AirPlayReceiverPlatform <= 60)
  {
    if (gLogCategory_AirPlayReceiverPlatform != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t AirPlayReceiverSessionPlatformControl(uint64_t a1, CFTypeRef cf1)
{
  v4 = *(a1 + 48);
  if (!CFEqual(cf1, @"duckAudio"))
  {
    if (!CFEqual(cf1, @"unduckAudio"))
    {
      if (CFEqual(cf1, @"handleMediaAudioStartingForSession"))
      {
        v5 = *(a1 + 48);
        if (!v5)
        {
          return v5;
        }

        v6 = *(a1 + 24);
        if (*(v6 + 249))
        {
          v7 = *(v6 + 16);
          if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (*(v7 + 160))
          {
            [*(v5 + 48) setDelegate:v5];
          }
        }

        v5 = *(a1 + 48);
        if (!v5)
        {
          return v5;
        }

        if (!APSIsAPMSpeaker())
        {
          if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          _SetSessionSoftwareVolumeSliderValue(a1);
        }
      }

      else if (CFEqual(cf1, @"handleMediaAudioStoppingForSession"))
      {
        if (*(a1 + 48) && gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else if (!CFEqual(cf1, @"startSession"))
      {
        if (CFEqual(cf1, @"stopSession"))
        {
          _AirPlayReceiverSessionPlatformInvalidate(a1);
        }

        else
        {
          if (!CFEqual(cf1, @"EnsurePlatformIsReadyToAcceptAudio"))
          {
            if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            return 4294960582;
          }

          if (*(a1 + 683))
          {
            APSLogErrorAt();
            return 4294960561;
          }

          v15 = *(v4 + 56);
          if (v15)
          {
            if (gLogCategory_AirPlayReceiverPlatform <= 50)
            {
              if (gLogCategory_AirPlayReceiverPlatform != -1 || (v16 = _LogCategory_Initialize(), v15 = *(v4 + 56), v16))
              {
                v17 = a1;
                v18 = v15;
                LogPrintF();
                v15 = *(v4 + 56);
              }
            }

            [v15 result];
            v5 = NSErrorToOSStatus();
            if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
            {
              goto LABEL_72;
            }

            return v5;
          }
        }
      }

      return 0;
    }

    v19 = 0;
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = *(*(*(a1 + 24) + 216) + 48);
    if (v10)
    {
      v11 = v10 == *(a1 + 32);
    }

    else
    {
      v11 = 0;
    }

    if (v11 && APSIsMemberOfHTGroup())
    {
      [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager setDuckOthers:"setDuckOthers:error:" error:0, &v19];
      v12 = NSErrorToOSStatus();
      v5 = 0;
      if (v12)
      {
        v13 = v12;
        APSLogErrorAt();
        if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return v13;
      }

      return v5;
    }

LABEL_75:
    APSLogErrorAt();
    return 4294960587;
  }

  v19 = 0;
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = *(*(*(a1 + 24) + 216) + 48);
  if (v8)
  {
    v9 = v8 == *(a1 + 32);
  }

  else
  {
    v9 = 0;
  }

  if (!v9 || !APSIsMemberOfHTGroup())
  {
    goto LABEL_75;
  }

  [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager setDuckOthers:"setDuckOthers:error:" error:1, &v19];
  v5 = NSErrorToOSStatus();
  if (v5)
  {
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
LABEL_72:
      LogPrintF();
    }
  }

  return v5;
}

uint64_t _SetSessionSoftwareVolumeSliderValue(uint64_t a1)
{
  APSVolumeConvertSliderValueToLinearGain();
  valuePtr = v2;
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloat32Type, &valuePtr);
  if (!v4)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v5 = v4;
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    CFRelease(v5);
    return 4294960568;
  }

  v7 = Mutable;
  CFDictionarySetValue(Mutable, @"volumeLinear", v5);
  AirPlayReceiverSessionControl(a1, v8, @"volumeChanged");
  v9 = *(a1 + 600);
  if (v9)
  {
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v10(v9, @"Volume", v5);
    }
  }

  CFRelease(v5);
  CFRelease(v7);
  return 0;
}

CFNumberRef AirPlayReceiverSessionPlatformCopyProperty(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, int *a5)
{
  if (CFEqual(cf1, @"volume"))
  {
    if (a1)
    {
      if (APSIsAPMSpeaker())
      {
        _GetHWVolumeSliderValue();
      }

      else
      {
        _GetSWVolumeSliderValue(*(*(a1 + 48) + 32));
      }

      APSVolumeConvertSliderValueToDB();
      valuePtr = v9;
      result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      if (result)
      {
        v8 = 0;
        if (!a5)
        {
          return result;
        }

        goto LABEL_10;
      }

      APSLogErrorAt();
      v8 = -6728;
    }

    else
    {
      APSLogErrorAt();
      v8 = -6705;
      APSLogErrorAt();
    }

    result = 0;
    if (!a5)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v8 = -6714;
    if (!a5)
    {
      return result;
    }
  }

LABEL_10:
  *a5 = v8;
  return result;
}

float _GetSWVolumeSliderValue(float a1)
{
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return a1;
}

uint64_t AirPlayReceiverSessionPlatformSetProperty(uint64_t a1, int a2, CFTypeRef cf1, __CFString *a4, const __CFArray *a5)
{
  v5 = *(a1 + 48);
  if (!v5)
  {
    return 0;
  }

  v10 = *(*(a1 + 24) + 16);
  if (CFEqual(cf1, @"mrNowPlayingInfo"))
  {
    if (a4 != @"replace")
    {
      if (a4)
      {
        if (CFEqual(a4, @"replace"))
        {
          goto LABEL_6;
        }

        a4 = 0;
      }

      *&v11 = COERCE_DOUBLE("Update");
LABEL_22:
      v16 = gLogCategory_AirPlayReceiverPlatform;
      if (*(v10 + 50))
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50)
        {
          if (gLogCategory_AirPlayReceiverPlatform != -1)
          {
            goto LABEL_25;
          }

          if (_LogCategory_Initialize())
          {
            v16 = gLogCategory_AirPlayReceiverPlatform;
LABEL_25:
            if (v16 == -1)
            {
              _LogCategory_Initialize();
            }

LABEL_44:
            LogPrintF();
          }
        }

        return 0;
      }

      if (gLogCategory_AirPlayReceiverPlatform <= 50)
      {
        if (gLogCategory_AirPlayReceiverPlatform != -1)
        {
LABEL_29:
          if (v16 > 30)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 == -1 && _LogCategory_Initialize() == 0;
          }

          v37 = v17;
          v38 = a5;
          v35 = *&a1;
          v36 = *&v11;
          LogPrintF();
          goto LABEL_51;
        }

        if (_LogCategory_Initialize())
        {
          v16 = gLogCategory_AirPlayReceiverPlatform;
          goto LABEL_29;
        }
      }

LABEL_51:
      [*(v5 + 48) setMRNowPlayingInfo:a5 withMergePolicy:{a4, *&v35, *&v36, v37, v38}];
      return 0;
    }

LABEL_6:
    a4 = 1;
    *&v11 = COERCE_DOUBLE("Replace");
    goto LABEL_22;
  }

  if (CFEqual(cf1, @"metaData"))
  {
    if (*(*(a1 + 24) + 249))
    {
      [*(v5 + 48) setAPNowPlayingInfo:a5];
      if (*(v5 + 24))
      {
        v12 = *(a1 + 600);
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v13)
        {
          v13(v12, @"AudioMetadata", a5);
        }
      }
    }

    return 0;
  }

  if (CFEqual(cf1, @"progress"))
  {
    if (!*(*(a1 + 24) + 249) || !*(v5 + 24))
    {
      return 0;
    }

    v14 = *(a1 + 600);
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(v14, @"AudioProgress", a5);
    }

    [*(v5 + 48) setAPNowPlayingInfo:a5];
    if (gLogCategory_AirPlayReceiverPlatform > 10 || gLogCategory_AirPlayReceiverPlatform == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

    goto LABEL_44;
  }

  if (CFEqual(cf1, @"volume"))
  {
    CFGetDouble();
    APSVolumeConvertDBToClampedSliderValue();
    v19 = v18;
    if (APSIsAPMSpeaker())
    {
      v20 = *(*(a1 + 24) + 16);
      if (v20)
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          APSVolumeConvertSliderValueToDB();
          v35 = v21;
          v36 = v19;
          LogPrintF();
        }

        if (!APSVolumeSliderValuesAreNoticeablyDifferent() && *(v20 + 88) == (v19 == 0.0))
        {
          return 0;
        }

        valuePtr = v19;
        v27 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
        if (v27)
        {
          v28 = v27;
          v29 = _AddVolumeOrMuteRequest(a1, v27);
          if (v29)
          {
            IsMuted = v29;
            APSLogErrorAt();
            CFRelease(v28);
          }

          else
          {
            *(a1 + 712) = valuePtr;
            CFRelease(v28);
            if (!*(v20 + 88) || (*(v20 + 88) = 0, v30 = AirPlayReceiverSessionAddMuteRequest(a1, 0), !v30))
            {
              *(v20 + 84) = v19;
              if (gLogCategory_AirPlayReceiverPlatform <= 40)
              {
                if (gLogCategory_AirPlayReceiverPlatform == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_76;
                  }

                  v19 = *(v20 + 84);
                }

                v35 = v19;
                LogPrintF();
              }

LABEL_76:
              v31 = [MEMORY[0x277D26E58] sharedAVSystemController];
              LODWORD(v32) = *(v20 + 84);
              if (([v31 setVolumeTo:@"Audio/Video" forCategory:v32] & 1) != 0 || gLogCategory_AirPlayReceiverPlatform > 90 || gLogCategory_AirPlayReceiverPlatform == -1 && !_LogCategory_Initialize())
              {
                return 0;
              }

              goto LABEL_44;
            }

            IsMuted = v30;
          }
        }

        else
        {
          APSLogErrorAt();
          IsMuted = 4294960568;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        IsMuted = 4294960591;
      }
    }

    else
    {
      IsMuted = _SetSWVolumeSliderValue(a1, 0, v19);
      if (!IsMuted)
      {
        return IsMuted;
      }
    }

LABEL_108:
    APSLogErrorAt();
    return IsMuted;
  }

  if (!CFEqual(cf1, @"isMuted"))
  {
    if (CFEqual(cf1, @"mrPlaybackState"))
    {
      *&v26 = COERCE_DOUBLE(CFGetInt64Ranged());
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        v35 = *&a1;
        v36 = *&v26;
        LogPrintF();
      }

      [*(v5 + 48) setMRPlaybackState:{v26, *&v35, *&v36}];
    }

    else if (CFEqual(cf1, @"mrSupportedCommandsFromSender"))
    {
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        if (a5)
        {
          *&v33 = COERCE_DOUBLE(CFArrayGetCount(a5));
        }

        else
        {
          *&v33 = 0.0;
        }

        v35 = *&a1;
        v36 = *&v33;
        LogPrintF();
      }

      [*(v5 + 48) setMRSupportedCommandsFromSerializedArray:{a5, *&v35, *&v36}];
    }

    else
    {
      if (!CFEqual(cf1, @"mrNowPlayingClient"))
      {
        return 4294960582;
      }

      if (a5 && (v34 = CFGetTypeID(a5), v34 == CFDataGetTypeID()))
      {
        [*(v5 + 48) setMRNowPlayingClient:a5];
      }

      else
      {
        APSLogErrorAt();
      }
    }

    return 0;
  }

  v22 = CFGetInt64();
  if (a4)
  {
    v23 = CFGetTypeID(a4);
    if (v23 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  if (gLogCategory_AirPlayReceiverPlatform <= 40 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  IsMuted = _SetIsMuted(a1, v22 != 0);
  if (IsMuted)
  {
    goto LABEL_108;
  }

  return IsMuted;
}

uint64_t _SetSWVolumeSliderValue(uint64_t a1, int a2, float a3)
{
  if (a1)
  {
    v6 = *(a1 + 48);
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      APSVolumeConvertSliderValueToDB();
      LogPrintF();
    }

    result = APSVolumeSliderValuesAreNoticeablyDifferent();
    if (result)
    {
      *(v6 + 32) = a3;
      if (!a2)
      {
        *(v6 + 36) = 0;
        APSVolumeConvertSliderValueToDB();
        CFObjectSetPropertyDouble();
      }

      return _SetSessionSoftwareVolumeSliderValue(a1);
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return result;
}

uint64_t _SetIsMuted(uint64_t a1, int a2)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  if (!APSIsAPMSpeaker())
  {
    APSVolumeConvertDBToSliderValue();
    APSVolumeConvertDBToSliderValue();
    v6 = *(a1 + 48);
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      APSVolumeConvertSliderValueToDB();
      LogPrintF();
    }

    if (*(v6 + 36) == a2)
    {
      return 0;
    }

    v7 = *(*(a1 + 48) + 32);
    _GetSWVolumeSliderValue(v7);
    v8 = *(v6 + 40);
    if (v8 <= 0.0)
    {
      *(v6 + 40) = 1045220557;
      v8 = 0.2;
    }

    APSVolumeConvertDBToSliderValue();
    if (a2 == 1)
    {
      v8 = v9;
    }

    else
    {
      v7 = v9;
    }

    *(v6 + 40) = v7;
    *(v6 + 36) = a2;
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = _SetSWVolumeSliderValue(a1, 1, v8);
    if (v10)
    {
      APSLogErrorAt();
    }

    return v10;
  }

  v4 = *(*(a1 + 24) + 16);

  return _SetHWIsMuted(v4, a1, a2);
}

void sysInfo_updateAdvertiserInfoAndNotify(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 56) = 0;
  }

  v5 = *MEMORY[0x277CBECE8];
  v69 = 0;
  v6 = APAdvertiserInfoCreate(v5, &v69);
  if (v6)
  {
    v52 = v6;
    APSLogErrorAt();
    v7 = v69;
    goto LABEL_89;
  }

  v7 = v69;
  v8 = CFObjectSetPropertyInt64();
  if (v8)
  {
    v52 = v8;
LABEL_128:
    APSLogErrorAt();
    goto LABEL_89;
  }

  v9 = CFObjectSetPropertyInt64();
  if (v9)
  {
    v52 = v9;
    goto LABEL_128;
  }

  __str[0] = 0;
  if (IsAppleTV() || APSIsAPMSpeaker())
  {
    v10 = *(a1 + 720);
    if (v10)
    {
      CFDataGetBytePtr(v10);
      HardwareAddressToCString();
      v11 = CFObjectSetPropertyCString();
      if (v11)
      {
        v52 = v11;
        goto LABEL_128;
      }
    }
  }

  DeviceNameInternal = sysInfo_getDeviceNameInternal(a1, __str, 0x401uLL);
  if (DeviceNameInternal)
  {
    v52 = DeviceNameInternal;
    goto LABEL_128;
  }

  v13 = CFObjectSetPropertyCString();
  if (v13)
  {
    v52 = v13;
    goto LABEL_128;
  }

  HardwareAddressToCString();
  v14 = CFObjectSetPropertyCString();
  if (v14)
  {
    v52 = v14;
    goto LABEL_128;
  }

  v17 = *(a1 + 120);
  if (v17)
  {
    APAdvertiserInfoSetProperty(v7, v15, @"deviceEnclosureColor", v16, v17);
  }

  FeaturesInternal = sysInfo_createFeaturesInternal(a1);
  if (FeaturesInternal)
  {
    v21 = FeaturesInternal;
    v22 = APAdvertiserInfoSetProperty(v7, v19, @"featuresEx", v20, FeaturesInternal);
    if (v22)
    {
      v52 = v22;
      goto LABEL_120;
    }

    sysInfo_getStatusFlags(a1);
    v23 = CFObjectSetPropertyInt64();
    if (v23)
    {
      v52 = v23;
      goto LABEL_120;
    }

    v26 = *(a1 + 144);
    if (!v26)
    {
LABEL_29:
      v33 = *(a1 + 160);
      if (v33)
      {
        v34 = APAdvertiserInfoSetProperty(v7, v24, @"parentGroupID", v25, v33);
        if (v34)
        {
          v52 = v34;
          goto LABEL_120;
        }

        v35 = CFObjectSetProperty();
        if (v35)
        {
          v52 = v35;
          goto LABEL_120;
        }
      }

      v36 = *(a1 + 256);
      if (v36)
      {
        v37 = APAdvertiserInfoSetProperty(v7, v24, @"persistentGroupUUID", v25, v36);
        if (v37)
        {
          v52 = v37;
          goto LABEL_120;
        }

        if (*(a1 + 240) >= 1)
        {
          CFObjectSetPropertyInt64();
        }

        CFObjectSetPropertyInt64();
        APAdvertiserInfoSetProperty(v7, v38, @"persistentGroupModel", v39, *(a1 + 296));
        v40 = *(a1 + 280);
        if (v40)
        {
          APAdvertiserInfoSetProperty(v7, v24, @"persistentGroupMemberID", v25, v40);
        }
      }

      v41 = *(a1 + 176);
      if (v41)
      {
        v42 = APAdvertiserInfoSetProperty(v7, v24, @"tightSyncUUID", v25, v41);
        if (v42)
        {
          v52 = v42;
          goto LABEL_120;
        }

        APAdvertiserInfoSetProperty(v7, v43, @"tightSyncGroupModel", v44, *(a1 + 200));
      }

      __str[0] = 0;
      sysInfo_getDeviceModel(__str);
      if (__str[0])
      {
        v45 = CFObjectSetPropertyCString();
        if (v45)
        {
          v52 = v45;
          goto LABEL_120;
        }
      }

      v46 = CFObjectSetPropertyInt64();
      if (v46)
      {
        v52 = v46;
        goto LABEL_120;
      }

      v47 = CFObjectSetPropertyCString();
      if (v47)
      {
        v52 = v47;
        goto LABEL_120;
      }

      v50 = *(a1 + 464);
      if (v50)
      {
        v51 = APAdvertiserInfoSetProperty(v7, v48, @"publicCUAirPlayPairingIdentity", v49, v50);
        if (v51)
        {
          v52 = v51;
          goto LABEL_120;
        }
      }

      else if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v53 = *(a1 + 456);
      if (v53)
      {
        v54 = APAdvertiserInfoSetProperty(v7, v48, @"publicCUSystemPairingIdentity", v49, v53);
        if (v54)
        {
          v52 = v54;
          goto LABEL_120;
        }
      }

      else if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (sysInfo_getPairingPublicKeyID())
      {
        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        DataToHexCStringEx();
        v55 = CFObjectSetPropertyCString();
        if (v55)
        {
          v52 = v55;
          goto LABEL_120;
        }
      }

      APSVersionUtilsGetShortVersionLength();
      v56 = CFObjectSetPropertyCString();
      if (v56)
      {
        v52 = v56;
      }

      else
      {
        v70 = 0;
        v72 = 0u;
        v73 = 0u;
        GestaltGetCString();
        if (!v70 && (v70 = CFObjectSetPropertyCString()) == 0 || (APSLogErrorAt(), (v52 = v70) == 0))
        {
          VONlh32NYbFTEnv();
          v57 = CFObjectSetPropertyInt64();
          if (v57)
          {
            v52 = v57;
          }

          else
          {
            snprintf(__str, 0x401uLL, "%u", 65537);
            v58 = CFObjectSetPropertyCString();
            if (v58)
            {
              v52 = v58;
            }

            else
            {
              v59 = CFObjectSetPropertyInt64();
              if (v59)
              {
                v52 = v59;
              }

              else
              {
                v60 = CFObjectSetPropertyInt64();
                if (v60)
                {
                  v52 = v60;
                }

                else
                {
                  v61 = APSFeaturesHasFeature() != 0;
                  if (APSFeaturesHasFeature())
                  {
                    v62 = (2 * v61) | 4;
                  }

                  else
                  {
                    v62 = 2 * v61;
                  }

                  if (APSFeaturesHasFeature())
                  {
                    v63 = v62 + 1;
                  }

                  else
                  {
                    v63 = v62;
                  }

                  if (v63 && (v64 = CFObjectSetPropertyInt64()) != 0)
                  {
                    v52 = v64;
                  }

                  else
                  {
                    v65 = CFObjectSetProperty();
                    if (v65)
                    {
                      v52 = v65;
                    }

                    else
                    {
                      v66 = CFObjectSetPropertyCString();
                      if (v66)
                      {
                        v52 = v66;
                      }

                      else
                      {
                        v67 = *(a1 + 316);
                        if (v67 != 2 && !*(a1 + 424) || (v68 = CFObjectSetPropertyInt64()) == 0)
                        {
                          v52 = 0;
                          *(a1 + 56) = v7;
                          v69 = 0;
                          v7 = 0;
LABEL_88:
                          CFRelease(v21);
                          goto LABEL_89;
                        }

                        v52 = v68;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_120:
      APSLogErrorAt();
      goto LABEL_88;
    }

    if (*(a1 + 256))
    {
      v27 = 288;
    }

    else
    {
      if (!*(a1 + 176))
      {
        v28 = 0;
        goto LABEL_24;
      }

      v27 = 208;
    }

    v28 = *(a1 + v27);
LABEL_24:
    v29 = APAdvertiserInfoSetProperty(v7, v24, @"groupID", v25, v26);
    if (v29)
    {
      v52 = v29;
      goto LABEL_120;
    }

    v30 = CFObjectSetProperty();
    if (v30)
    {
      v52 = v30;
      goto LABEL_120;
    }

    v31 = CFObjectSetProperty();
    if (v31)
    {
      v52 = v31;
      goto LABEL_120;
    }

    if (v28)
    {
      v32 = APAdvertiserInfoSetProperty(v7, v24, @"groupPublicName", v25, v28);
      if (v32)
      {
        v52 = v32;
        goto LABEL_120;
      }
    }

    goto LABEL_29;
  }

  APSLogErrorAt();
  v52 = -6728;
LABEL_89:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v52)
  {
    APSLogErrorAt();
  }

  else
  {
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    sysInfo_handleInfoDictUpdate(a1);
  }
}

uint64_t sysInfo_getDeviceNameInternal(uint64_t a1, char *__dst, size_t __size)
{
  if (__size)
  {
    v5 = *(a1 + 400);
    if (v5)
    {
LABEL_3:
      strlcpy(__dst, v5, __size);
      return 0;
    }

    *__dst = 0;
    strlcpy(__dst, (a1 + 336), __size);
    result = 0;
    if (!*__dst)
    {
      v5 = "AirPlay";
      goto LABEL_3;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895275;
  }

  return result;
}

uint64_t sysInfo_createFeaturesInternal(uint64_t a1)
{
  Mutable = APSFeaturesCreateMutable();
  if (Mutable)
  {
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    if (!*(a1 + 568))
    {
      APSFeaturesSetFeature();
      if (!APSIsAPMSpeaker() && !APSSettingsGetInt64() && !*(a1 + 682))
      {
        APSFeaturesSetFeature();
        APSFeaturesSetFeature();
        if (!APSSettingsGetIntWithDefault())
        {
          APSFeaturesSetFeature();
        }

        if (APSSettingsGetIntWithDefault())
        {
          APSFeaturesSetFeature();
        }

        if (APSSettingsGetIntWithDefault())
        {
          APSFeaturesSetFeature();
        }

        if (APSSettingsGetIntWithDefault())
        {
          APSFeaturesSetFeature();
        }

        APSFeaturesSetFeature();
        APSFeaturesSetFeature();
        APSFeaturesSetFeature();
        APSFeaturesSetFeature();
      }
    }

    if (!APSIsAPMSpeaker())
    {
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
    }

    if (APSIsAPValeriaScreenSender())
    {
      APSFeaturesSetFeature();
    }

    if (!APSIsAPMSpeaker())
    {
      APSFeaturesSetFeature();
    }

    if (!APSIsAPMSpeaker() && GestaltGetBoolean())
    {
      APSFeaturesSetFeature();
    }

    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    if (!*(a1 + 315))
    {
      APSFeaturesSetFeature();
      if (!*(a1 + 568))
      {
        APSFeaturesSetFeature();
      }

      APSFeaturesSetFeature();
    }

    if (APSSettingsGetInt64())
    {
      APSFeaturesSetFeature();
    }

    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    if (*(a1 + 311))
    {
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      if (*(a1 + 311))
      {
        if (GestaltGetBoolean())
        {
          APSFeaturesSetFeature();
        }
      }
    }

    if (!*(a1 + 312))
    {
      APSFeaturesSetFeature();
    }

    APSFeaturesSetFeature();
    if (APSSettingsIsFeatureEnabled())
    {
      APSFeaturesSetFeature();
    }

    if (APSSettingsIsFeatureEnabled())
    {
      APSFeaturesSetFeature();
    }

    if (APSIsAPMSpeaker())
    {
      APSFeaturesSetFeature();
    }

    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    if (IsAppleTV())
    {
      APSFeaturesSetFeature();
    }

    if (IsAppleTV() || APSIsAPMSpeaker())
    {
      APSFeaturesSetFeature();
    }

    if (IsAppleTV())
    {
      APSFeaturesSetFeature();
    }

    if (*(a1 + 128))
    {
      APSFeaturesSetFeature();
    }

    if (APSIsProximityReceiverEnabled())
    {
      APSFeaturesSetFeature();
    }

    if (APSIsOpenNANReceiverEnabled())
    {
      APSFeaturesSetFeature();
    }

    if (!APSFeaturesIsEmpty())
    {
      APSFeaturesClearAllFeatures();
    }

    if (APSIsSetMRInfoCommandEnabled())
    {
      APSFeaturesSetFeature();
    }

    if (APSIsAPMSpeaker())
    {
      APSFeaturesSetFeature();
    }

    if (APSSettingsGetIntWithDefault())
    {
      APSFeaturesSetFeature();
    }

    if (APSSettingsIsFeatureEnabled() && FVDUtilsEncryptedDecodeSupported())
    {
      APSFeaturesSetFeature();
    }
  }

  else
  {
    APSLogErrorAt();
  }

  return Mutable;
}

uint64_t sysInfo_getStatusFlags(_BYTE *a1)
{
  if (a1[480])
  {
    v2 = 8;
  }

  else
  {
    v2 = (a1[481] != 0) << 7;
  }

  if (a1[433])
  {
    v2 |= 0x200u;
  }

  if (a1[129])
  {
    v3 = 524292;
  }

  else
  {
    v3 = 4;
  }

  v4 = v3 | v2;
  if (APSSettingsGetInt64() && a1[307])
  {
    v4 |= 0x40u;
  }

  if (a1[682])
  {
    v5 = v4 | 0x40000;
  }

  else
  {
    v5 = v4;
  }

  if (a1[309])
  {
    v5 |= 0x100u;
  }

  if (a1[310])
  {
    v6 = v5 | 0x400;
  }

  else
  {
    v6 = v5;
  }

  if (a1[169] && APSMultiPrimariesEnabled())
  {
    v6 |= 0x800u;
  }

  if (a1[225])
  {
    v7 = v6 | 0x20000;
  }

  else
  {
    v7 = v6;
  }

  if (a1[226])
  {
    v8 = v7 | 0x100000;
  }

  else
  {
    v8 = v7;
  }

  if (IsAppleTV() || APSIsAPMSpeaker() || a1[314])
  {
    if (a1[305])
    {
      v9 = v8 | 0x1000;
    }

    else
    {
      v9 = v8;
    }

    if (a1[304])
    {
      v9 |= 0x8000u;
    }

    if (a1[308])
    {
      v8 = v9 | 0x10000;
    }

    else
    {
      v8 = v9;
    }
  }

  if (APSIsAPMSpeaker())
  {
    if (a1[184])
    {
      v10 = v8 | 0x2000;
    }

    else
    {
      v10 = v8;
    }

    if (a1[306])
    {
      return v10 | 0x200000;
    }

    else
    {
      return v10;
    }
  }

  return v8;
}

__n128 sysInfo_getDeviceModel(uint64_t a1)
{
  *a1 = 0;
  GetDeviceModelString();
  if (!*a1)
  {
    if (APSIsAPMSpeaker())
    {
      *(a1 + 16) = 49;
      v3 = "AudioAccessory1,1";
LABEL_4:
      result = *v3;
      *a1 = *v3;
      return result;
    }

    if (!*a1)
    {
      *(a1 + 16) = 49;
      v3 = "AirPlayGeneric1,1";
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sysInfo_getPairingPublicKeyID()
{
  v0 = gQblcfSzZBQsYCCV();
  if (v0)
  {
    v1 = v0;
    goto LABEL_5;
  }

  v1 = KUY675K4ryxHGzD5GVD();
  CFRelease(0);
  if (v1)
  {
LABEL_5:
    APSLogErrorAt();
  }

  return v1;
}

void sysInfo_handleInfoDictUpdate(uint64_t a1)
{
  v6 = 0;
  cf = 0;
  if (!IsAppleTV() && !APSIsAPMSpeaker())
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (CFArrayEnsureCreatedAndAppend() || CFArrayEnsureCreatedAndAppend())
  {
    APSLogErrorAt();
    v3 = 0;
    v5 = 0;
    goto LABEL_18;
  }

  v2 = *MEMORY[0x277CBECE8];
  sysInfo_copyInfoDictInternal(a1, cf, *MEMORY[0x277CBECE8], &v6);
  v3 = v6;
  if (!v6)
  {
    APSLogErrorAt();
LABEL_24:
    v5 = 0;
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(v2, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"InfoDict", v3);
    if (!APSXPCClientSendCommandCreatingReply())
    {
      goto LABEL_8;
    }
  }

  APSLogErrorAt();
LABEL_18:
  if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t sysInfo_copyInfoDictInternal(uint64_t a1, const __CFArray *a2, CFAllocatorRef allocator, __CFDictionary **a4)
{
  v37 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v32 = 4294895276;
    APSLogErrorAt();
    v19 = 0;
    v29 = 0;
    FeaturesInternal = 0;
    goto LABEL_100;
  }

  HardwareAddressToCString();
  CFDictionarySetCString();
  FeaturesInternal = sysInfo_createFeaturesInternal(a1);
  if (!APSFeaturesIsEmpty())
  {
    v36 = 0;
    v9 = APSFeaturesCopyStringRepresentation();
    if (v9)
    {
      v32 = v9;
      APSLogErrorAt();
      v19 = 0;
      goto LABEL_112;
    }

    CFDictionarySetValue(Mutable, @"featuresEx", v36);
    CFRelease(v36);
    APSFeaturesGetLegacyFlags();
    CFDictionarySetInt64();
  }

  v10 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(Mutable, @"keepAliveSendStatsAsBody", *MEMORY[0x277CBED28]);
  v11 = *MEMORY[0x277CBED10];
  if (*(a1 + 681))
  {
    v12 = v10;
  }

  else
  {
    v12 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"canRecordScreenStream", v12);
  if (*(a1 + 684))
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  CFDictionarySetValue(Mutable, @"forwardFrameUserData", v13);
  if (*(a1 + 682))
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  CFDictionarySetValue(Mutable, @"screenDemoMode", v14);
  if (sysInfo_getReceiverHDRCapability_sCheckOnce != -1)
  {
    dispatch_once(&sysInfo_getReceiverHDRCapability_sCheckOnce, &__block_literal_global_561);
  }

  CFDictionarySetValue(Mutable, @"receiverHDRCapability", sysInfo_getReceiverHDRCapability_capability);
  if (*(a1 + 683))
  {
    CFDictionarySetValue(Mutable, @"supportsSenderUIEvents", v10);
  }

  __dst[0] = 0;
  sysInfo_getDeviceModel(__dst);
  CFDictionarySetCString();
  v15 = *(a1 + 120);
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"deviceEnclosureColor", v15);
  }

  __dst[0] = 0;
  sysInfo_getDeviceNameInternal(a1, __dst, 0x401uLL);
  CFDictionarySetCString();
  __dst[0] = 0;
  GetSystemBuildVersionString();
  CFDictionarySetCString();
  CFDictionarySetCString();
  if (sysInfo_getPairingPublicKeyID())
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    CFDictionarySetData();
  }

  v16 = *(a1 + 464);
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"pi", v16);
  }

  v17 = *(a1 + 456);
  if (v17)
  {
    CFDictionarySetValue(Mutable, @"psi", v17);
  }

  APSVersionUtilsGetShortVersionLength();
  CFDictionarySetCString();
  sysInfo_getStatusFlags(a1);
  CFDictionarySetInt64();
  if (a2)
  {
    CFArrayGetCount(a2);
    CFArrayApplyBlock();
  }

  VONlh32NYbFTEnv();
  CFDictionarySetInt64();
  v18 = *MEMORY[0x277CBECE8];
  v19 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v19)
  {
    v32 = 4294895276;
    APSLogErrorAt();
LABEL_112:
    v29 = 0;
    goto LABEL_100;
  }

  v34 = a4;
  if (APSFeaturesHasFeature())
  {
    CFDictionarySetValue(v19, @"supportsUIForAudioOnlyContent", v10);
    CFDictionarySetValue(v19, @"supportsFPSSecureStop", v10);
    if (APSSettingsGetIntWithDefault())
    {
      v20 = v10;
    }

    else
    {
      v20 = v11;
    }

    CFDictionarySetValue(v19, @"supportsStopAtEndOfQueue", v20);
LABEL_45:
    v24 = APSSettingsIsFeatureEnabled() != 0;
    goto LABEL_46;
  }

  HasFeature = APSFeaturesHasFeature();
  if (HasFeature)
  {
    v22 = v10;
  }

  else
  {
    v22 = v11;
  }

  CFDictionarySetValue(v19, @"supportsUIForAudioOnlyContent", v22);
  CFDictionarySetValue(v19, @"supportsFPSSecureStop", v22);
  if (APSSettingsGetIntWithDefault())
  {
    v23 = v10;
  }

  else
  {
    v23 = v11;
  }

  CFDictionarySetValue(v19, @"supportsStopAtEndOfQueue", v23);
  if (HasFeature)
  {
    goto LABEL_45;
  }

  v24 = 0;
LABEL_46:
  if (gLogCategory_APReceiverSystemInfo <= 30 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v24)
  {
    v25 = v10;
  }

  else
  {
    v25 = v11;
  }

  CFDictionarySetValue(v19, @"supportsOfflineHLS", v25);
  APSFeaturesHasFeature();
  CFDictionarySetValue(v19, @"supportsV2ArtworkMetadata", v11);
  if (APSSettingsIsFeatureEnabled())
  {
    CFDictionarySetValue(v19, @"supportsCoordinatedAirPlayVideo", v10);
  }

  CFDictionarySetValue(v19, @"supportsAirPlayVideoWithSharePlay", v10);
  CFDictionarySetValue(Mutable, @"playbackCapabilities", v19);
  CFRelease(v19);
  v26 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v26)
  {
    v27 = v26;
    APAudioFormatGetSupportedTransportAudioFormatsForRealTimeReceiver();
    CFDictionarySetInt64();
    APAudioFormatGetSupportedTransportAudioFormatsForBufferedReceiver();
    CFDictionarySetInt64();
    APAudioFormatGetSupportedTransportAudioFormatsForScreenReceiver();
    CFDictionarySetInt64();
    APAudioFormatGetSupportedTransportAudioFormatsLowLatencyReceiver();
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"supportedFormats", v27);
    CFRelease(v27);
  }

  else if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v28 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v28)
  {
    if (APSSettingsGetIntWithDefault())
    {
      v19 = APSAudioFormatDescriptionListCreateForMediumLatencyReceiver();
      if (v19 && !APSAudioFormatDescriptionListCreateAdvertisementArray())
      {
        CFDictionarySetValue(v28, @"mediumLatencyAudioStream", 0);
        CFDictionarySetValue(Mutable, @"supportedAudioFormatsExtended", v28);
      }
    }

    else
    {
      v19 = 0;
    }

    if (IsAppleTV() && !*(a1 + 306))
    {
      FigCFDictionaryGetValue();
      FigCFDictionaryGetValue();
    }

    v29 = APSAudioFormatDescriptionListCreateForBufferedReceiverWithAudioCapabilities();
    if (v29)
    {
      if (APSAudioFormatDescriptionListCreateAdvertisementArray())
      {
        if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        CFDictionarySetValue(v28, @"bufferStream", 0);
        CFDictionarySetValue(Mutable, @"supportedAudioFormatsExtended", v28);
      }
    }

    else
    {
      if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v29 = 0;
    }
  }

  else
  {
    if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v29 = 0;
    v19 = 0;
  }

  v30 = *(a1 + 696);
  if (v30)
  {
    CFDictionarySetValue(Mutable, @"volumeControlType", v30);
  }

  CFDictionarySetDouble();
  if (APSSettingsIsFeatureEnabled())
  {
    CFDictionarySetInt64();
    if (*(a1 + 713))
    {
      v31 = v10;
    }

    else
    {
      v31 = v11;
    }

    CFDictionarySetValue(Mutable, @"isMuted", v31);
  }

  *v34 = Mutable;
  if (v28)
  {
    CFRelease(v28);
  }

  v32 = 0;
  Mutable = 0;
LABEL_100:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (FeaturesInternal)
  {
    CFRelease(FeaturesInternal);
  }

  return v32;
}

void __sysInfo_copyInfoDictInternal_block_invoke(uint64_t a1, CFTypeRef cf1)
{
  cf = 0;
  if (CFEqual(cf1, @"txtAirPlay"))
  {
    v4 = *(*(a1 + 32) + 56);
    if (!v4)
    {
      return;
    }

    APAdvertiserInfoCopyAirPlayDataWithNANServiceType(v4, 0, &cf);
  }

  else if (CFEqual(cf1, @"txtRAOP"))
  {
    v5 = *(*(a1 + 32) + 56);
    if (!v5)
    {
      return;
    }

    APAdvertiserInfoCopyRAOPData(v5, &cf);
  }

  else if (CFEqual(cf1, @"displayCapabilities"))
  {
    if (!APSSettingsIsFeatureEnabled())
    {
      return;
    }

    [objc_msgSend(MEMORY[0x277CD9E40] "mainDisplay")];
    APSDisplayUtilsCopyDisplayCapabilities();
  }

  else if (CFEqual(cf1, @"uglServerInfo"))
  {
    v6 = *(a1 + 32);
    if (*(v6 + 313))
    {
      if (*(v6 + 752))
      {
        if (gLogCategory_APReceiverSystemInfo <= 50)
        {
          if (gLogCategory_APReceiverSystemInfo != -1 || (v7 = _LogCategory_Initialize(), v6 = *(a1 + 32), v7))
          {
            FigCFDictionaryGetValue();
            LogPrintF();
            v6 = *(a1 + 32);
          }
        }
      }

      v8 = *(v6 + 752);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      cf = v8;
    }
  }

  FigCFDictionarySetValue();
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __sysInfo_getReceiverHDRCapability_block_invoke()
{
  result = GetDeviceModelString();
  if (*v3 == 0x355654656C707041 && *&v3[3] == 0x332C355654656CLL)
  {
    v2 = @"1080p60";
  }

  else if (*v3 ^ 0x365654656C707041 | *&v3[3] ^ 0x322C365654656CLL)
  {
    v2 = @"4k60";
  }

  else
  {
    v2 = @"4k30";
  }

  sysInfo_getReceiverHDRCapability_capability = v2;
  return result;
}

uint64_t __APReceiverSystemInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APReceiverSystemInfoGetTypeID_typeID = result;
  return result;
}

void sysInfo_Finalize(uint64_t a1)
{
  [*(a1 + 728) invalidate];

  *(a1 + 728) = 0;
  v2 = *(a1 + 328);
  if (v2)
  {
    [v2 invalidate];

    *(a1 + 328) = 0;
  }

  v3 = *(a1 + 36);
  if (v3 != -1)
  {
    notify_cancel(v3);
    *(a1 + 36) = -1;
  }

  v4 = *(a1 + 24);
  if (v4 != -1)
  {
    notify_cancel(v4);
    *(a1 + 24) = -1;
  }

  v5 = *(a1 + 28);
  if (v5 != -1)
  {
    notify_cancel(v5);
    *(a1 + 28) = -1;
  }

  v6 = *(a1 + 40);
  if (v6 != -1)
  {
    notify_cancel(v6);
    *(a1 + 40) = -1;
  }

  v7 = *(a1 + 44);
  if (v7 != -1)
  {
    notify_cancel(v7);
    *(a1 + 44) = -1;
  }

  v8 = *(a1 + 48);
  if (v8 != -1)
  {
    notify_cancel(v8);
    *(a1 + 48) = -1;
  }

  v9 = *(a1 + 32);
  if (v9 != -1)
  {
    notify_cancel(v9);
    *(a1 + 32) = -1;
  }

  v10 = *(a1 + 400);
  if (v10)
  {
    free(v10);
    *(a1 + 400) = 0;
  }

  v11 = *(a1 + 120);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 120) = 0;
  }

  v12 = *(a1 + 760);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 760) = 0;
  }

  v13 = *(a1 + 464);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 464) = 0;
  }

  v14 = *(a1 + 456);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 456) = 0;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 56) = 0;
  }

  v16 = *(a1 + 720);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 720) = 0;
  }

  v17 = *(a1 + 736);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 736) = 0;
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 72) = 0;
  }

  v19 = *(a1 + 752);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 752) = 0;
  }

  *(a1 + 744) = 0;
  v20 = *(a1 + 416);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 416) = 0;
  }

  v21 = *(a1 + 144);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 144) = 0;
  }

  v22 = *(a1 + 160);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 160) = 0;
  }

  v23 = *(a1 + 176);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 176) = 0;
  }

  v24 = *(a1 + 200);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 200) = 0;
  }

  v25 = *(a1 + 192);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 192) = 0;
  }

  v26 = *(a1 + 208);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 208) = 0;
  }

  v27 = *(a1 + 216);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 216) = 0;
  }

  v28 = *(a1 + 232);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 232) = 0;
  }

  v29 = *(a1 + 256);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 256) = 0;
  }

  v30 = *(a1 + 264);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 264) = 0;
  }

  v31 = *(a1 + 280);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 280) = 0;
  }

  v32 = *(a1 + 296);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 296) = 0;
  }

  v33 = *(a1 + 288);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 288) = 0;
  }

  v34 = *(a1 + 696);
  if (v34)
  {
    CFRelease(v34);
    *(a1 + 696) = 0;
  }

  v35 = *(a1 + 704);
  if (v35)
  {
    CFRelease(v35);
    *(a1 + 704) = 0;
  }

  v36 = *(a1 + 552);
  if (v36)
  {
    dispatch_release(v36);
    *(a1 + 552) = 0;
  }

  v37 = *(a1 + 584);
  if (v37)
  {
    CFRelease(v37);
    *(a1 + 584) = 0;
  }

  v38 = *(a1 + 640);
  if (v38)
  {
    CFRelease(v38);
    *(a1 + 640) = 0;
  }

  v39 = *(a1 + 648);
  if (v39)
  {
    CFRelease(v39);
    *(a1 + 648) = 0;
  }

  v40 = *(a1 + 656);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 656) = 0;
  }

  v41 = *(a1 + 664);
  if (v41)
  {
    CFRelease(v41);
    *(a1 + 664) = 0;
  }

  v42 = *(a1 + 576);
  if (v42)
  {
    dispatch_release(v42);
    *(a1 + 576) = 0;
  }

  v43 = *(a1 + 16);
  if (v43)
  {
    dispatch_release(v43);
    *(a1 + 16) = 0;
  }

  v44 = *(a1 + 88);
  if (v44)
  {
    CFRelease(v44);
    *(a1 + 88) = 0;
  }
}

uint64_t __sysInfo_registerForNotificationsAsNeeded_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 153))
  {
    result = *(v1 + 144);
    if (result)
    {
      v2 = *(v1 + 160);
      if (v2)
      {
        result = CFEqual(result, v2);
        if (result)
        {
          if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CMNotificationCenterGetDefaultLocalCenter();

          return CMNotificationCenterPostNotification();
        }
      }
    }
  }

  return result;
}

void __sysInfo_registerForNotificationsAsNeeded_block_invoke_4(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  sysInfo_updatePrefs(v2, 0, v3);
}

void __sysInfo_registerForNotificationsAsNeeded_block_invoke_5(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 32);

  sysInfo_updatePrefs(v2, 0, 1);
}

uint64_t __sysInfo_registerForNotificationsAsNeeded_block_invoke_6(uint64_t result)
{
  if (*(*(result + 32) + 176))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void __sysInfo_registerForNotificationsAsNeeded_block_invoke_8(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 32);

  sysInfo_updatePrefs(v2, 0, 0);
}

void __APReceiverSystemInfoCreate_block_invoke(uint64_t a1)
{
  sysInfo_updateAPGroupInfo(*(a1 + 32));
  v2 = *(a1 + 32);
  if (!*(v2 + 568))
  {
    sysInfo_handleCloudConnectivityChange(v2, *(v2 + 24), 1);
    sysInfo_handleConferenceRoomModeChange(*(a1 + 32), *(*(a1 + 32) + 28), 1);
    sysInfo_updatePrefs(*(a1 + 32), 1, 1);
    v2 = *(a1 + 32);
  }

  sysInfo_updateAdvertiserInfoAndNotify(v2, 0);
  sysInfo_updatePowerAssertionState(*(a1 + 32));
  v3 = *(a1 + 32);

  sysInfo_handleDeviceNameChanged(v3);
}

void sysInfo_updateAPGroupInfo(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    CFRetain(*(a1 + 144));
  }

  if (!*(a1 + 224))
  {
    v4 = *(a1 + 160);
    if (v4)
    {
      if (gLogCategory_APReceiverSystemInfo >= 51)
      {
        v7 = *(a1 + 144);
      }

      else
      {
        if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }

        v4 = *(a1 + 160);
        v7 = *(a1 + 144);
        if (!v4)
        {
          goto LABEL_29;
        }
      }

      CFRetain(v4);
LABEL_29:
      *(a1 + 144) = v4;
      if (v7)
      {
        CFRelease(v7);
      }

      *(a1 + 152) = *(a1 + 168);
      goto LABEL_57;
    }
  }

  if (APSIsAPMSpeaker())
  {
    v3 = 1;
  }

  else
  {
    v3 = IsAppleTV() != 0;
  }

  if (APSIsMemberOfHTGroup())
  {
    v5 = APSIsAPMSpeaker() == 0;
  }

  else
  {
    v5 = 1;
  }

  if (*(a1 + 314))
  {
    v6 = gLogCategory_APReceiverSystemInfo;
    if (!*(a1 + 144))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v8 = *(a1 + 216);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *(a1 + 144) = v8;
      v6 = gLogCategory_APReceiverSystemInfo;
    }

    *(a1 + 152) = 257;
    if (v6 <= 50 && (v6 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 305) = 1;
  }

  else
  {
    if (*(a1 + 129))
    {
      if (!*(a1 + 225) && !*(a1 + 130))
      {
        CFStringGetTypeID();
        CFDictionaryGetTypedValue();
      }

      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    v9 = *(a1 + 144);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 144) = 0;
    }

    if (IsAppleTV() || APSIsAPMSpeaker())
    {
      APSCopyClusterInfo();
    }

    v10 = *(a1 + 216);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    cf = v10;
    *(a1 + 144) = APSCreateGroupID();
    if (v3)
    {
      v11 = *(a1 + 480) == 0;
    }

    else
    {
      v5 = 0;
      v11 = 0;
    }

    *(a1 + 152) = v11;
    *(a1 + 153) = v5;
    CFRelease(cf);
  }

LABEL_57:
  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void sysInfo_handleCloudConnectivityChange(uint64_t a1, int token, int a3)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v5 = state64 != 0;
  if (*(a1 + 307) != v5)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 307) = v5;
    if (!a3)
    {
      sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingParameterChanged");
    }
  }
}

void sysInfo_handleConferenceRoomModeChange(uint64_t a1, int token, int a3)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v5 = state64 != 0;
  if (*(a1 + 309) != v5)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 309) = v5;
    if (!a3)
    {
      sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingParameterChanged");
    }
  }
}

void sysInfo_updatePrefs(uint64_t a1, int a2, int a3)
{
  cf1[8] = *MEMORY[0x277D85DE8];
  v49 = 0;
  if (*(a1 + 568))
  {
    return;
  }

  APSSettingsSynchronize();
  v6 = APSSettingsGetInt64() != 0;
  [MEMORY[0x277D262A0] sharedConnection];
  v7 = objc_opt_respondsToSelector() ^ 1;
  v8 = v7 & v6;
  if ((v7 & 1) == 0 && v6)
  {
    v8 = [objc_msgSend(MEMORY[0x277D262A0] "sharedConnection")];
  }

  if (*(a1 + 64) != (v8 & 1))
  {
    *(a1 + 64) = v8 & 1;
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v9 = APSSettingsGetInt64() != 0;
  if (*(a1 + 80) != v9)
  {
    *(a1 + 80) = v9;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v10 = APSSettingsGetInt64() != 0;
  if (*(a1 + 310) == v10)
  {
    v11 = 0;
  }

  else
  {
    *(a1 + 310) = v10;
    v11 = 1;
  }

  if (*(a1 + 315) || APSGetAccessControlConfig())
  {
    v49 = *(a1 + 320);
  }

  else if (*(a1 + 316))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 316) = 0;
    v11 = 1;
  }

  v12 = v49;
  if (v49 != *(a1 + 320))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo != -1 || (v13 = _LogCategory_Initialize(), v12 = v49, v13))
      {
        LogPrintF();
        v12 = v49;
      }
    }

    *(a1 + 320) = v12;
    v11 = 1;
  }

  if (a3)
  {
    cf1[0] = 0;
    APSCopyPersistentGroupInfo();
    v14 = 0;
    if (*(a1 + 240))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(a1 + 240) = 0;
      v14 = 1;
      v11 = 1;
    }

    v17 = *(a1 + 248);
    v16 = v17 == 0;
    if (v17)
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(a1 + 248) = 0;
      v15 = 1;
      v14 = 1;
      v11 = 1;
    }

    else
    {
      v15 = 0;
    }

    v18 = *(a1 + 256);
    if (cf1[0] != v18 && (!cf1[0] || !v18 || !CFEqual(cf1[0], v18)))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v19 = *(a1 + 256);
      v20 = cf1[0];
      *(a1 + 256) = cf1[0];
      if (v20)
      {
        CFRetain(v20);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      v15 = 1;
      v14 = 1;
      v11 = 1;
    }

    if (*(a1 + 264))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v21 = *(a1 + 264);
      *(a1 + 264) = 0;
      if (v21)
      {
        CFRelease(v21);
      }
    }

    if (*(a1 + 280))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v22 = *(a1 + 280);
      *(a1 + 280) = 0;
      if (v22)
      {
        CFRelease(v22);
      }

      v14 = 1;
      v11 = 1;
    }

    if (*(a1 + 272))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(a1 + 272) = 0;
    }

    if (*(a1 + 296))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v23 = *(a1 + 296);
      *(a1 + 296) = 0;
      if (v23)
      {
        CFRelease(v23);
      }

      v11 = 1;
    }

    if (*(a1 + 288))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v24 = *(a1 + 288);
      *(a1 + 288) = 0;
      if (v24)
      {
        CFRelease(v24);
      }

      v11 = 1;
    }

    if (cf1[0])
    {
      CFRelease(cf1[0]);
      cf1[0] = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v16 = 1;
  }

  cf1[0] = 0;
  APSCopyTightSyncInfo();
  if (*(a1 + 176))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v25 = *(a1 + 176);
    *(a1 + 176) = cf1[0];
    if (v25)
    {
      CFRelease(v25);
    }

    if (!a2)
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (*(a1 + 305) && *(a1 + 176) && !*(a1 + 129))
      {
        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        notify_post("kAirPlayWHANotification_InterruptedByPreWHASender");
      }
    }

    v14 = 1;
    v11 = 1;
  }

  if (*(a1 + 192))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v26 = *(a1 + 192);
    *(a1 + 192) = 0;
    if (v26)
    {
      CFRelease(v26);
    }
  }

  if (*(a1 + 184))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 184) = 0;
    v14 = 1;
    v11 = 1;
  }

  if (*(a1 + 200))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v27 = *(a1 + 200);
    *(a1 + 200) = 0;
    if (v27)
    {
      CFRelease(v27);
    }

    v11 = 1;
  }

  if (*(a1 + 208))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v28 = *(a1 + 208);
    *(a1 + 208) = 0;
    if (v28)
    {
      CFRelease(v28);
    }

    v11 = 1;
  }

  if (cf1[0])
  {
    CFRelease(cf1[0]);
    cf1[0] = 0;
  }

  v29 = *(a1 + 256);
  if (v29 && *(a1 + 248) == 1)
  {
    v30 = IsAppleTV();
    APSSettingsSetValue();
  }

  else if (*(a1 + 176) && !*(a1 + 248) || v29 && *(a1 + 248) <= 1u)
  {
    v30 = APSSettingsGetInt64() != 0;
  }

  else
  {
    APSSettingsRemoveValue();
    v30 = 0;
  }

  if (v30 != *(a1 + 306))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 306) = v30;
    v11 = 1;
  }

  v31 = APSSettingsGetInt64() != 0;
  if (*(a1 + 304) != v31)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 304) = v31;
    v11 = 1;
  }

  v32 = APSSettingsGetInt64() != 0;
  if (*(a1 + 308) != v32)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 308) = v32;
    v11 = 1;
  }

  v33 = APSSettingsGetInt64() != 0;
  if (*(a1 + 311) != v33)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 311) = v33;
    v11 = 1;
  }

  Int64 = APSSettingsGetInt64();
  if (Int64 != *(a1 + 676))
  {
    *(a1 + 676) = Int64;
  }

  v35 = APSGetP2PAllow();
  if (v35 != *(a1 + 408))
  {
    *(a1 + 408) = v35;
    v15 = 1;
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  if (*(a1 + 409) != IntWithDefault)
  {
    v37 = IntWithDefault;
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 409) = v37;
    v15 = 1;
  }

  v38 = APSSettingsGetInt64() != 0;
  if (*(a1 + 410) != v38)
  {
    *(a1 + 410) = v38;
  }

  v39 = APSSettingsCopyValue();
  v40 = *(a1 + 416);
  if (v39 == v40)
  {
LABEL_193:
    if (!v39)
    {
      goto LABEL_195;
    }

    goto LABEL_194;
  }

  if (!v40 || !v39)
  {
    if (!v39)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  if (!CFEqual(v39, *(a1 + 416)))
  {
    v40 = *(a1 + 416);
LABEL_190:
    CFRetain(v39);
LABEL_191:
    *(a1 + 416) = v39;
    if (v40)
    {
      CFRelease(v40);
    }

    goto LABEL_193;
  }

LABEL_194:
  CFRelease(v39);
LABEL_195:
  if (!*(a1 + 315))
  {
    v41 = APSSettingsGetInt64() != 0;
    if (*(a1 + 432) != v41)
    {
      *(a1 + 432) = v41;
      v11 = 1;
    }

    v42 = APSSettingsGetInt64() != 0;
    if (*(a1 + 433) != v42)
    {
      *(a1 + 433) = v42;
      v11 = 1;
    }

    v43 = APSSettingsGetInt64() != 0;
    v44 = *(a1 + 480);
    if (v44 != v43)
    {
      sysInfo_deleteLegacyPairingPeers();
      *(a1 + 480) = v43;
      sysInfo_updatePINInternal(a1, v43);
      v44 = *(a1 + 480);
      v14 = 1;
      v11 = 1;
    }

    *(a1 + 472) = 0;
    if (v44)
    {
      APSSettingsGetCString();
      if (*(a1 + 472))
      {
        sysInfo_handleAuthStringUpdate((a1 + 472));
      }
    }

    if (*(a1 + 480))
    {
      goto LABEL_209;
    }

    LOBYTE(cf1[0]) = 0;
    APSSettingsGetCString();
    if (sysInfo_updatePlayPassword(a1, cf1))
    {
      sysInfo_deleteLegacyPairingPeers();
      v11 = 1;
    }

    if (*(a1 + 480))
    {
LABEL_209:
      v45 = 3;
    }

    else if (*(a1 + 481))
    {
      v45 = 2;
    }

    else
    {
      if (!*(a1 + 433))
      {
        *(a1 + 428) = 0;
        goto LABEL_211;
      }

      v45 = 1;
    }

    *(a1 + 428) = v45;
  }

LABEL_211:
  v46 = APSSettingsGetInt64() != 0;
  if (*(a1 + 560) != v46)
  {
    *(a1 + 560) = v46;
  }

  v47 = APSSettingsGetInt64();
  if (v47 >= 1)
  {
    v48 = v47;
  }

  else
  {
    v48 = 30;
  }

  *(a1 + 564) = v48;
  if (v14)
  {
    sysInfo_updateAPGroupInfo(a1);
  }

  if (v15)
  {
    sysInfo_updateAdvertiserInfoAndNotify(a1, @"P2PSettingChanged");
  }

  if (v11)
  {
    sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingParameterChanged");
  }

  if (!v16)
  {
    sysInfo_updatePowerAssertionState(a1);
  }
}

uint64_t sysInfo_updatePowerAssertionState(uint64_t a1)
{
  result = IsAppleTV();
  if (result)
  {
    v3 = *(a1 + 248) == 1;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 736) && *(a1 + 744) != v3)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v3)
    {
      result = APSPowerAssertionRaise();
    }

    else
    {
      result = APSPowerAssertionRelease();
    }

    *(a1 + 744) = v3;
  }

  return result;
}

void sysInfo_handleDeviceNameChanged(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  __s1[0] = 0;
  GetDeviceName();
  if (strcmp(__s1, (a1 + 336)))
  {
    sysInfo_setDeviceName(a1);
  }
}

void sysInfo_setDeviceName(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  __strlcpy_chk();

  sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingDeviceSettingChanged");
}

void sysInfo_deleteLegacyPairingPeers()
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!gQblcfSzZBQsYCCV())
  {
    PHDcW8();
    CFRelease(0);
  }

  if (!PairingSessionCreate())
  {
    PairingSessionSetKeychainInfo();
    PairingSessionDeletePeer();
    CFRelease(0);
  }
}

void sysInfo_updatePINInternal(uint64_t a1, int a2)
{
  v4 = *(a1 + 552);
  if (v4)
  {
    dispatch_source_cancel(*(a1 + 552));
    dispatch_release(v4);
    *(a1 + 552) = 0;
  }

  if (*(a1 + 480) && (a2 || !*(a1 + 225)))
  {
    if (*(a1 + 472))
    {
      __strlcpy_chk();
    }

    else
    {
      RandomString();
    }

    sysInfo_handleAuthStringUpdate((a1 + 481));
  }
}

void sysInfo_handleAuthStringUpdate(_BYTE *a1)
{
  if (IsAppleTV() || APSIsAPMSpeaker())
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable && (!*a1 || !CFDictionarySetCString()) && !APSXPCClientSendCommandCreatingReply())
    {
      goto LABEL_7;
    }

    APSLogErrorAt();
    if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (Mutable)
    {
LABEL_7:

      CFRelease(Mutable);
    }
  }
}

BOOL sysInfo_updatePlayPassword(uint64_t a1, char *__s1)
{
  v3 = strcmp(__s1, (a1 + 481));
  if (v3)
  {
    __strlcpy_chk();
    sysInfo_handleAuthStringUpdate((a1 + 481));
  }

  return v3 != 0;
}

void sysInfo_updateCurrentDisplayInfo(uint64_t a1)
{
  if (!IsAppleTV())
  {
    v3 = 0;
LABEL_36:
    v19 = 0;
    goto LABEL_32;
  }

  v2 = [MEMORY[0x277CD9E40] mainDisplay];
  v19 = [v2 currentMode];
  v3 = [v2 uniqueId];
  if (v3)
  {
    *(a1 + 680) = [v2 isOverscanned];
    v4 = *(a1 + 584);
    CFRetain(v3);
    *(a1 + 584) = v3;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (!v19)
  {
    goto LABEL_36;
  }

  v5 = [v19 width];
  v6 = [v19 height];
  [v19 refreshRate];
  v8 = v7;
  if (v5 >= 1920 && v6 >= 1080)
  {
    *(a1 + 592) = v5;
    *(a1 + 600) = v6;
    v9 = *(a1 + 648);
    v10 = [v19 hdrMode];
    v11 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    *(a1 + 648) = v11;
    if (v9)
    {
      CFRelease(v9);
    }

    v12 = *(a1 + 664);
    v13 = [v19 colorMode];
    v14 = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    *(a1 + 664) = v14;
    if (v12)
    {
      CFRelease(v12);
    }

    v15 = *(a1 + 656);
    v16 = [v19 colorGamut];
    v17 = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    *(a1 + 656) = v17;
    if (v15)
    {
      CFRelease(v15);
    }

    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (v8 > 0.0)
  {
    v18 = v8 <= 30.0 ? 30 : 60;
    *(a1 + 672) = v18;
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

LABEL_32:
}

uint64_t __APReceiverSystemInfoGetDeviceName_block_invoke(uint64_t a1)
{
  result = sysInfo_getDeviceNameInternal(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t APReceiverSystemInfoCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a1 && a3)
  {
    v6 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverSystemInfoCopyProperty_block_invoke;
    block[3] = &unk_278C5FC70;
    block[6] = a1;
    block[7] = a3;
    block[8] = a4;
    block[4] = &v15;
    block[5] = &v11;
    dispatch_sync(v6, block);
    v7 = *(v16 + 6);
    if (v7 != -72025 && v7)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    *(v16 + 6) = -72021;
  }

  if (a5)
  {
    *a5 = *(v16 + 6);
  }

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void sub_23EA03EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void __APReceiverSystemInfoCopyProperty_block_invoke(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[6];
  v5 = *(a1[5] + 8);
  v20 = 0;
  if (gLogCategory_APReceiverSystemInfo <= 30 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(v2, @"AirPlayGroupPublicName"))
  {
    if (*(v4 + 256))
    {
      v6 = 288;
      goto LABEL_13;
    }

    if (*(v4 + 176))
    {
      v6 = 208;
LABEL_13:
      v7 = *(v4 + v6);
      if (!v7)
      {
        goto LABEL_46;
      }

      goto LABEL_28;
    }

LABEL_46:
    v8 = -72025;
    goto LABEL_47;
  }

  if (CFEqual(v2, @"AirPlayGroupID"))
  {
    v7 = *(v4 + 144);
    if (!v7)
    {
      APSLogErrorAt();
      v8 = -72023;
LABEL_47:
      v20 = v8;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"IsAirPlayGroupLeader"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 153);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"GroupContainsDiscoverableLeader"))
  {
    v11 = *(v4 + 152);
LABEL_22:
    if (*(v4 + 313))
    {
      v11 |= *(v4 + 752) != 0;
    }

    if (v11)
    {
      v9 = MEMORY[0x277CBED28];
    }

    else
    {
      v9 = MEMORY[0x277CBED10];
    }

    goto LABEL_27;
  }

  if (CFEqual(v2, @"IsSilentPrimary"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 305);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"ReceiverSessionIsActive"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 225);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"ReceiverDeviceIsPlaying"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 226);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"SystemPairingIdentity"))
  {
    v7 = *(v4 + 456);
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"LocalRouteInfo"))
  {
    v7 = *(v4 + 232);
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"TightSyncUUID"))
  {
    v7 = *(v4 + 176);
    if (!v7)
    {
      goto LABEL_46;
    }

LABEL_28:
    Int64 = CFRetain(v7);
LABEL_29:
    v13 = Int64;
LABEL_30:
    *(v5 + 24) = v13;
    v20 = 0;
    goto LABEL_31;
  }

  if (CFEqual(v2, @"IsTightSyncGroupLeader"))
  {
    if (!*(v4 + 176) || !*(v4 + 184))
    {
      v9 = MEMORY[0x277CBED10];
      goto LABEL_27;
    }

LABEL_51:
    v9 = MEMORY[0x277CBED28];
LABEL_27:
    v7 = *v9;
    goto LABEL_28;
  }

  if (CFEqual(v2, @"TightSyncGroupLeaderUUID"))
  {
    v7 = *(v4 + 192);
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"ClusterUUID"))
  {
    v14 = *(v4 + 176);
    v15 = *(v4 + 256);
LABEL_58:
    if (!(v14 | v15))
    {
      goto LABEL_46;
    }

    if (v15)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"ClusterType"))
  {
    v16 = *(v4 + 256);
    if (*(v4 + 176))
    {
      if (!v16)
      {
        v7 = @"ClusterType_StereoPair";
        goto LABEL_28;
      }
    }

    else if (!v16)
    {
      goto LABEL_46;
    }

    if (*(v4 + 248) == 1)
    {
      v7 = @"ClusterType_HT";
    }

    else
    {
      v7 = @"ClusterType_Generic";
    }

    goto LABEL_28;
  }

  v17 = *MEMORY[0x277CBECE8];
  if (CFEqual(v2, @"ClusterSize"))
  {
    *valuePtr = 0;
    if (*(v4 + 256))
    {
      *valuePtr = *(v4 + 240);
    }

    else if (*(v4 + 176))
    {
      *valuePtr = 2;
    }

    Int64 = CFNumberCreate(v17, kCFNumberSInt32Type, valuePtr);
    goto LABEL_29;
  }

  if (CFEqual(v2, @"IsClusterLeader"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 306);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"ClusterLeaderUUID"))
  {
    v14 = *(v4 + 192);
    v15 = *(v4 + 264);
    goto LABEL_58;
  }

  if (CFEqual(v2, @"ParentGroupID"))
  {
    v7 = *(v4 + 160);
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"ParentGroupContainsDiscoverableLeader"))
  {
    v11 = *(v4 + 168);
    goto LABEL_22;
  }

  if (CFEqual(v2, @"ParentGroupLeaderSupportsRelay"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 169);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"ParentGroupLeaderSupportsGroupCohesion"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 170);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"AccessControlType"))
  {
    Int64 = CFNumberCreateInt64();
    if (Int64)
    {
      goto LABEL_29;
    }

LABEL_157:
    APSLogErrorAt();
    v8 = -72020;
    goto LABEL_47;
  }

  if (CFEqual(v2, @"AccessControlLevelHK"))
  {
    Int64 = CFNumberCreate(v17, kCFNumberIntType, (v4 + 320));
    if (Int64)
    {
      goto LABEL_29;
    }

    goto LABEL_157;
  }

  if (CFEqual(v2, @"EnableHKAccessControl"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 310);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"BluetoothAddress"))
  {
    v7 = *(v4 + 720);
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (!CFEqual(v2, @"Passcode"))
  {
    if (CFEqual(v2, @"Password"))
    {
      Int64 = CFStringCreateWithCString(v17, (v4 + 481), 0x8000100u);
      if (Int64)
      {
        goto LABEL_29;
      }

      goto LABEL_157;
    }

    if (CFEqual(v2, @"SecurityMode"))
    {
      Int64 = CFNumberCreate(v17, kCFNumberSInt32Type, (v4 + 428));
      if (Int64)
      {
        goto LABEL_29;
      }

      goto LABEL_157;
    }

    if (CFEqual(v2, @"IsPINRequiredForPairing"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 433);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"IsPairingRequiredForAllClients"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 432);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"IsPINRequiredForEverySession"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 480);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"IsP2PAllowed"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 408);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"RestrictToInfraAdvertising"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 409);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"IsPairingRequiredForP2PClients"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 410);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"VolumeDB"))
    {
      Int64 = CFNumberCreate(v17, kCFNumberFloat32Type, (v4 + 692));
      if (Int64)
      {
        goto LABEL_29;
      }

      goto LABEL_157;
    }

    if (CFEqual(v2, @"VolumeControlType"))
    {
      v7 = *(v4 + 696);
      if (v7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!CFEqual(v2, @"VolumeControlTypeEx"))
      {
        if (CFEqual(v2, @"IsMuted"))
        {
          v9 = MEMORY[0x277CBED28];
          v10 = *(v4 + 713);
        }

        else if (CFEqual(v2, @"SupportRelativeVolumeTesting"))
        {
          v9 = MEMORY[0x277CBED28];
          v10 = *(v4 + 712);
        }

        else
        {
          if (CFEqual(v2, @"audioJackStatus"))
          {
            v7 = @"connected";
            goto LABEL_28;
          }

          if (CFEqual(v2, @"skewCompensation"))
          {
            goto LABEL_51;
          }

          if (CFEqual(v2, @"AdvertiserInfo"))
          {
            v7 = *(v4 + 56);
            if (v7)
            {
              goto LABEL_28;
            }

            goto LABEL_166;
          }

          if (CFEqual(v2, @"IsAirPlayEnabled"))
          {
            v9 = MEMORY[0x277CBED28];
            v10 = *(v4 + 64);
          }

          else
          {
            if (CFEqual(v2, @"DenyInterruptions"))
            {
              v7 = *(v4 + 88);
              if (v7)
              {
                goto LABEL_28;
              }

              v9 = MEMORY[0x277CBED28];
              v10 = *(v4 + 80);
              goto LABEL_17;
            }

            if (CFEqual(v2, @"OverscanOverride"))
            {
              Int64 = CFNumberCreate(v17, kCFNumberIntType, (v4 + 676));
              if (Int64)
              {
                goto LABEL_29;
              }

              goto LABEL_157;
            }

            if (CFEqual(v2, @"DisplayUUID"))
            {
              v13 = @"e5f7a68d-7b0f-4305-984b-974f677a150b";
              CFRetain(@"e5f7a68d-7b0f-4305-984b-974f677a150b");
              v20 = 0;
              goto LABEL_30;
            }

            if (CFEqual(v2, @"TimeoutDataSeconds"))
            {
              Int64 = CFNumberCreate(v17, kCFNumberIntType, (v4 + 564));
              if (Int64)
              {
                goto LABEL_29;
              }

              goto LABEL_157;
            }

            if (!CFEqual(v2, @"QoSDisabled"))
            {
              if (CFEqual(v2, @"DeviceID"))
              {
                HardwareAddressToCString();
                Int64 = CFStringCreateWithCString(v17, valuePtr, 0x8000100u);
                goto LABEL_29;
              }

              if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              goto LABEL_166;
            }

            v9 = MEMORY[0x277CBED28];
            v10 = *(v4 + 560);
          }
        }

LABEL_17:
        if (!v10)
        {
          v9 = MEMORY[0x277CBED10];
        }

        goto LABEL_27;
      }

      v7 = *(v4 + 704);
      if (v7)
      {
        goto LABEL_28;
      }
    }

LABEL_166:
    v13 = 0;
    goto LABEL_30;
  }

  if (v3 && (v18 = CFGetTypeID(v3), v18 == CFBooleanGetTypeID()))
  {
    Value = CFBooleanGetValue(v3);
  }

  else
  {
    Value = 1;
  }

  v13 = sysInfo_copyPasscodeString(v4, Value, v17, &v20);
  if (!v20)
  {
    goto LABEL_30;
  }

  APSLogErrorAt();
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_31:
  *(*(a1[4] + 8) + 24) = v20;
}

CFStringRef sysInfo_copyPasscodeString(uint64_t a1, int a2, CFAllocatorRef alloc, int *a4)
{
  if (a2 && *(a1 + 481))
  {
    v7 = (a1 + 481);
  }

  else
  {
    sysInfo_updatePairPINIfNeeded(a1);
    v7 = (a1 + 434);
  }

  v8 = CFStringCreateWithCString(alloc, v7, 0x8000100u);
  if (!v8)
  {
    APSLogErrorAt();
    v9 = -72020;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v9 = 0;
  if (a4)
  {
LABEL_7:
    *a4 = v9;
  }

  return v8;
}

void sysInfo_updatePairPINIfNeeded(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 434) || (mach_absolute_time(), UpTicksToSeconds() >= 0x3D))
  {
    if (*(a1 + 472))
    {
      __strlcpy_chk();
    }

    else
    {
      RandomString();
    }

    __strlcpy_chk();
    *(a1 + 448) = mach_absolute_time();
    if (*(a1 + 480))
    {
      __strlcpy_chk();
    }

    sysInfo_handleAuthStringUpdate(v2);
  }
}

uint64_t APReceiverSystemInfoSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a1 && a3)
  {
    v5 = *(a1 + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __APReceiverSystemInfoSetProperty_block_invoke;
    v8[3] = &unk_278C60780;
    v8[4] = &v9;
    v8[5] = a1;
    v8[6] = a3;
    v8[7] = a5;
    dispatch_sync(v5, v8);
    v6 = *(v10 + 6);
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294895275;
    *(v10 + 6) = -72021;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

void __APReceiverSystemInfoSetProperty_block_invoke(void *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  if (gLogCategory_APReceiverSystemInfo <= 30 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(v3, @"Passcode"))
  {
    if (!v4)
    {
      LODWORD(v5) = 0;
      *(v2 + 434) = 0;
      goto LABEL_31;
    }

    LODWORD(v5) = -72021;
LABEL_81:
    APSLogErrorAt();
    goto LABEL_31;
  }

  if (CFEqual(v3, @"Password"))
  {
    if (v4 && CFStringGetCString(v4, buffer, 64, 0x8000100u))
    {
      if (sysInfo_updatePlayPassword(v2, buffer))
      {
        if (*(v2 + 480))
        {
          v6 = 3;
        }

        else if (*(v2 + 481))
        {
          v6 = 2;
        }

        else
        {
          if (!*(v2 + 433))
          {
            *(v2 + 428) = 0;
            goto LABEL_29;
          }

          v6 = 1;
        }

        *(v2 + 428) = v6;
LABEL_29:
        sysInfo_updateAdvertiserInfoAndNotify(v2, @"AdvertisingParameterChanged");
      }

LABEL_30:
      LODWORD(v5) = 0;
      goto LABEL_31;
    }

LABEL_91:
    APSLogErrorAt();
    LODWORD(v5) = -72021;
    goto LABEL_31;
  }

  if (CFEqual(v3, @"DeviceName"))
  {
    if (v4)
    {
      *buffer = 0;
      LODWORD(v5) = CFStringCopyUTF8CString();
      if (!v5)
      {
        CUSetSystemName();
        sysInfo_setDeviceName(v2);
        free(*buffer);
        goto LABEL_31;
      }

      goto LABEL_81;
    }

    goto LABEL_30;
  }

  if (CFEqual(v3, @"VolumeDB"))
  {
    if (!v4 || (v7 = CFGetTypeID(v4), v7 != CFNumberGetTypeID()))
    {
      LODWORD(v5) = -72021;
      goto LABEL_81;
    }

    if (gLogCategory_APReceiverSystemInfo <= 40 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFGetDouble();
    LODWORD(v5) = 0;
    *&v11 = v11;
    *(v2 + 692) = LODWORD(v11);
    goto LABEL_31;
  }

  if (CFEqual(v3, @"IsMuted"))
  {
    if (!v4 || (v8 = CFGetTypeID(v4), v8 != CFBooleanGetTypeID()))
    {
      LODWORD(v5) = -72021;
      goto LABEL_81;
    }

    if (gLogCategory_APReceiverSystemInfo <= 40 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    LODWORD(v5) = 0;
    *(v2 + 713) = *MEMORY[0x277CBED28] == v4;
    goto LABEL_31;
  }

  if (CFEqual(v3, @"DenyInterruptions"))
  {
    if (v4)
    {
      v9 = CFGetTypeID(v4);
      if (v9 != CFBooleanGetTypeID())
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }
    }

    if (!FigCFEqual())
    {
      v10 = *(v2 + 88);
      *(v2 + 88) = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    goto LABEL_30;
  }

  if (!CFEqual(v3, @"SupportsSenderUIEvents"))
  {
    if (v3 == @"VolumeControlTypeEx" || v3 && CFEqual(v3, @"VolumeControlTypeEx"))
    {
      if (!v4 || (v15 = CFGetTypeID(v4), v15 != CFNumberGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }

      v16 = *(v2 + 704);
      if (v16 == v4 || v16 && CFEqual(v16, v4))
      {
        goto LABEL_30;
      }

      FigCFNumberGetSInt32();
      APSVolumeControlTypeFromEx();
      SInt32 = FigCFNumberCreateSInt32();
      if (!SInt32)
      {
        APSLogErrorAt();
        LODWORD(v5) = -6728;
        goto LABEL_31;
      }

      v18 = SInt32;
      v19 = *(v2 + 696);
      *(v2 + 696) = SInt32;
      CFRetain(SInt32);
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = *(v2 + 704);
      *(v2 + 704) = v4;
      CFRetain(v4);
      if (v20)
      {
        CFRelease(v20);
      }

LABEL_72:
      CFRelease(v18);
      goto LABEL_29;
    }

    if (CFEqual(v3, @"ReceiverDeviceIsPlaying"))
    {
      if (!v4 || (v21 = CFGetTypeID(v4), v21 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }

      Value = CFBooleanGetValue(v4);
      if (*(v2 + 226) != Value)
      {
        v23 = Value;
        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(v2 + 226) = v23;
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (CFEqual(v3, @"ReceiverSessionIsActive"))
    {
      if (!v4 || (v24 = CFGetTypeID(v4), v24 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }

      v25 = CFBooleanGetValue(v4);
      if (*(v2 + 225) != v25)
      {
        v26 = v25;
        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(v2 + 225) = v26;
        if (!*(v2 + 130))
        {
          sysInfo_updateNonMRSourcedSilentPrimaryStatusIfNeeded(v2);
        }

        sysInfo_updateAPGroupInfo(v2);
        if (*(v2 + 480))
        {
          if (v26)
          {
            sysInfo_cancelPINUpdate(v2);
          }

          else
          {
            sysInfo_schedulePINUpdate(v2);
          }
        }

        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (CFEqual(v3, @"SecondHopEligibleSenderSessionIsActive"))
    {
      if (!v4 || (v27 = CFGetTypeID(v4), v27 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }

      v28 = CFBooleanGetValue(v4);
      if (*(v2 + 224) == v28)
      {
        goto LABEL_30;
      }

      v29 = v28;
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v2 + 224) = v29;
LABEL_127:
      sysInfo_updateAPGroupInfo(v2);
      goto LABEL_29;
    }

    if (CFEqual(v3, @"UsePTPClock"))
    {
      if (!v4 || (v30 = CFGetTypeID(v4), v30 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }

      v31 = CFBooleanGetValue(v4);
      if (*(v2 + 311) != v31)
      {
        v32 = v31;
        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(v2 + 311) = v32;
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (CFEqual(v3, @"CanRecordScreenStream"))
    {
      if (!v4 || (v33 = CFGetTypeID(v4), v33 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }

      v34 = CFBooleanGetValue(v4);
      if (*(v2 + 681) == v34)
      {
        goto LABEL_30;
      }

      v35 = v34;
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      LODWORD(v5) = 0;
      *(v2 + 681) = v35;
      goto LABEL_31;
    }

    if (CFEqual(v3, @"ScreenDemoMode"))
    {
      if (!v4 || (v36 = CFGetTypeID(v4), v36 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }

      v37 = CFBooleanGetValue(v4);
      if (*(v2 + 682) != v37)
      {
        v38 = v37;
        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(v2 + 682) = v38;
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (CFEqual(v3, @"ForwardFrameUserData"))
    {
      if (!v4 || (v39 = CFGetTypeID(v4), v39 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }

      v40 = CFBooleanGetValue(v4);
      if (*(v2 + 684) == v40)
      {
        goto LABEL_30;
      }

      v41 = v40;
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      LODWORD(v5) = 0;
      *(v2 + 684) = v41;
      goto LABEL_31;
    }

    if (CFEqual(v3, @"DisplaySizeOverride"))
    {
      *buffer = *MEMORY[0x277CBF3A8];
      if (v4)
      {
        v42 = CFGetTypeID(v4);
        if (v42 == CFDictionaryGetTypeID() && CGSizeMakeWithDictionaryRepresentation(v4, buffer))
        {
          if (*buffer != *(v2 + 608) || *&buffer[8] != *(v2 + 616))
          {
            if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            *(v2 + 608) = *buffer;
          }

          goto LABEL_30;
        }
      }

      goto LABEL_91;
    }

    if (CFEqual(v3, @"DisplaySizeMaxOverride"))
    {
      *buffer = *MEMORY[0x277CBF3A8];
      if (v4)
      {
        v43 = CFGetTypeID(v4);
        if (v43 == CFDictionaryGetTypeID() && CGSizeMakeWithDictionaryRepresentation(v4, buffer))
        {
          if (*buffer != *(v2 + 624) || *&buffer[8] != *(v2 + 632))
          {
            if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            *(v2 + 624) = *buffer;
          }

          goto LABEL_30;
        }
      }

      goto LABEL_91;
    }

    if (CFEqual(v3, @"DisplayHDRModeOverride"))
    {
      if (v4)
      {
        v44 = CFGetTypeID(v4);
        if (v44 != CFStringGetTypeID())
        {
          LODWORD(v5) = -72021;
          goto LABEL_81;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_30;
      }

      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(v2 + 640);
      *(v2 + 640) = v4;
      if (v4)
      {
        goto LABEL_220;
      }

      goto LABEL_221;
    }

    if (CFEqual(v3, @"RoutingContextID"))
    {
      if (!v4 || (v45 = CFGetTypeID(v4), v45 != CFStringGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }

      if (*(v2 + 130))
      {
        if (FigCFEqual())
        {
          goto LABEL_30;
        }

        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v54 = *(v2 + 136);
        *(v2 + 136) = v4;
        CFRetain(v4);
        if (v54)
        {
          CFRelease(v54);
        }

        goto LABEL_127;
      }

LABEL_274:
      APSLogErrorAt();
      LODWORD(v5) = -72023;
      goto LABEL_31;
    }

    if (CFEqual(v3, @"IsSilentPrimary"))
    {
      if (!v4 || (v46 = CFGetTypeID(v4), v46 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_81;
      }

      if (*(v2 + 130))
      {
        v47 = CFBooleanGetValue(v4);
        if (v47 == *(v2 + 305))
        {
          goto LABEL_30;
        }

        v48 = v47;
        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(v2 + 305) = v48;
        goto LABEL_29;
      }

      goto LABEL_274;
    }

    if (!CFEqual(v3, @"IsClusterLeader"))
    {
      if (CFEqual(v3, @"audioCapabilities"))
      {
        if (!v4 || (v53 = CFGetTypeID(v4), v53 != CFDictionaryGetTypeID()))
        {
          LODWORD(v5) = -72021;
          goto LABEL_81;
        }

        if (FigCFEqual())
        {
          goto LABEL_30;
        }

        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v18 = *(v2 + 72);
        *(v2 + 72) = v4;
        CFRetain(v4);
        if (!v18)
        {
          goto LABEL_29;
        }

        goto LABEL_72;
      }

      if (CFEqual(v3, @"AirPlayGroupID"))
      {
        if (v4)
        {
          v55 = CFGetTypeID(v4);
          if (v55 != CFStringGetTypeID())
          {
            LODWORD(v5) = -72021;
            goto LABEL_81;
          }
        }

        if (*(v2 + 314))
        {
          if (FigCFEqual())
          {
            goto LABEL_30;
          }

          if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v5 = *(v2 + 144);
          *(v2 + 144) = v4;
          if (v4)
          {
LABEL_220:
            CFRetain(v4);
          }

LABEL_221:
          if (!v5)
          {
            goto LABEL_31;
          }

          CFRelease(v5);
          goto LABEL_30;
        }

        LODWORD(v5) = -72023;
        if (gLogCategory_APReceiverSystemInfo > 60 || gLogCategory_APReceiverSystemInfo == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_31;
        }
      }

      else
      {
        LODWORD(v5) = -72022;
        if (gLogCategory_APReceiverSystemInfo > 50 || gLogCategory_APReceiverSystemInfo == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_31;
        }
      }

      LogPrintF();
      goto LABEL_31;
    }

    if (!v4 || (v49 = CFGetTypeID(v4), v49 != CFBooleanGetTypeID()))
    {
      LODWORD(v5) = -72021;
      goto LABEL_81;
    }

    if (!*(v2 + 176) || *(v2 + 248))
    {
      if (*(v2 + 256))
      {
        v50 = *(v2 + 248);
        if (!v50)
        {
          goto LABEL_214;
        }

        if (v50 == 1)
        {
          LODWORD(v5) = -72021;
          goto LABEL_81;
        }
      }

      APSLogErrorAt();
      LODWORD(v5) = -72025;
      goto LABEL_31;
    }

LABEL_214:
    v51 = CFBooleanGetValue(v4);
    if (v51 == *(v2 + 306))
    {
      goto LABEL_30;
    }

    v52 = v51;
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(v2 + 306) = v52;
    APSSettingsSetValue();
    if (v52)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    goto LABEL_29;
  }

  if (!v4 || (v12 = CFGetTypeID(v4), v12 != CFBooleanGetTypeID()))
  {
    LODWORD(v5) = -72021;
    goto LABEL_81;
  }

  v13 = CFBooleanGetValue(v4);
  if (*(v2 + 683) == v13)
  {
    goto LABEL_30;
  }

  v14 = v13;
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  LODWORD(v5) = 0;
  *(v2 + 683) = v14;
LABEL_31:
  *(*(a1[4] + 8) + 24) = v5;
}

void sysInfo_updateNonMRSourcedSilentPrimaryStatusIfNeeded(uint64_t a1)
{
  v5 = *(a1 + 232) && ((Int64 = CFDictionaryGetInt64(), v3 = CFDictionaryGetInt64(), !Int64) ? (v4 = v3 == 0) : (v4 = 1), !v4) && *(a1 + 225) == 0;
  if (*(a1 + 305) != v5)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 305) = v5;
    sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingParameterChanged");
    if (*(a1 + 305) && *(a1 + 176) && !*(a1 + 129))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      notify_post("kAirPlayWHANotification_InterruptedByPreWHASender");
    }
  }
}

void sysInfo_cancelPINUpdate(uint64_t a1)
{
  v1 = *(a1 + 552);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 552));
    dispatch_release(v1);
    *(a1 + 552) = 0;
  }
}

void sysInfo_schedulePINUpdate(dispatch_queue_t *a1)
{
  v2 = a1[69];
  if (v2)
  {
    dispatch_source_cancel(a1[69]);
    dispatch_release(v2);
    a1[69] = 0;
  }

  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a1[2]);
  a1[69] = v3;
  if (v3)
  {
    CFRetain(a1);
    dispatch_set_context(a1[69], a1);
    dispatch_source_set_event_handler_f(a1[69], sysInfo_updatePINTimerFired);
    dispatch_source_set_cancel_handler_f(a1[69], sysInfo_updatePINTimerCanceled);
    v4 = a1[69];
    v5 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v4, v5, 0x7FFFFFFFFFFFFFFFuLL, 0x3B9ACA00uLL);
    v6 = a1[69];

    dispatch_resume(v6);
  }

  else
  {

    APSLogErrorAt();
  }
}

uint64_t APReceiverSystemInfoCopyInfoDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a1 && a4)
  {
    v4 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverSystemInfoCopyInfoDict_block_invoke;
    block[3] = &unk_278C5FC98;
    block[4] = &v8;
    block[5] = a1;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v4, block);
    v5 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294895275;
    *(v9 + 6) = -72021;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __APReceiverSystemInfoCopyInfoDict_block_invoke(uint64_t a1)
{
  result = sysInfo_copyInfoDictInternal(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t APReceiverSystemInfoAllowsP2PConnectionFromMACAddress(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APReceiverSystemInfoAllowsP2PConnectionFromMACAddress_block_invoke;
  block[3] = &unk_278C607D0;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APReceiverSystemInfoAllowsP2PConnectionFromMACAddress_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v7 = 0u;
  v8 = 0u;
  *cStr = 0u;
  v6 = 0u;
  if (*(v2 + 416))
  {
    HardwareAddressToCString();
    v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
    cStr[0] = 0;
    v4 = 1;
    if (CFStringCompare(*(v2 + 416), v3, 1uLL))
    {
      if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = 0;
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    v4 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

uint64_t __APReceiverSystemInfoCopyFeatures_block_invoke(uint64_t a1)
{
  result = sysInfo_createFeaturesInternal(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void APReceiverSystemInfoEnsurePIN(uint64_t a1)
{
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APReceiverSystemInfoEnsurePIN_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void __APReceiverSystemInfoEnsurePIN_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 481))
  {
    sysInfo_updatePairPINIfNeeded(v1);
  }
}

uint64_t __APReceiverSystemInfoGetDisplaySizeForUserVersion_block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 < 1)
  {
    v2 = 1280.0;
    v3 = 720.0;
  }

  else if (v1 == 1)
  {
    v2 = 1920.0;
    v3 = 1080.0;
  }

  else
  {
    v4 = *(result + 40);
    v2 = *(v4 + 592);
    v3 = *(v4 + 600);
    if (v2 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
    {
      v3 = 1080.0;
      v2 = 1920.0;
    }
  }

  v5 = *(*(result + 32) + 8);
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  return result;
}

uint64_t APReceiverSystemInfoCopyDisplaysInfoForUserVersion(uint64_t a1, const __CFAllocator *a2, int a3, __CFArray **a4)
{
  if (!a4)
  {
    v24 = 4294895275;
    APSLogErrorAt();
    return v24;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895276;
  }

  v9 = Mutable;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3010000000;
  v46 = 0;
  v47 = 0;
  v45 = &unk_23EAD36B9;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3010000000;
  v40 = 0;
  v41 = 0;
  v39 = &unk_23EAD36B9;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 60;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v10 = *(a1 + 576);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __sysInfo_copyMainDisplayInfo_block_invoke;
  block[3] = &unk_278C5FD68;
  block[9] = &v30;
  block[10] = a1;
  v29 = a3;
  block[4] = &v42;
  block[5] = &v36;
  block[6] = &v52;
  block[7] = &v48;
  block[8] = v34;
  dispatch_sync(v10, block);
  v12 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  if (v37[2].f64[0] == *MEMORY[0x277CBF3A8] && v37[2].f64[1] == v11)
  {
    v37[2] = v43[2];
  }

  v13 = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v13)
  {
    if (*(a1 + 608) != v12 || *(a1 + 616) != v11)
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v43[2] = *(a1 + 608);
    }

    if (*(a1 + 624) == v12 && *(a1 + 632) == v11)
    {
      v14 = v37;
    }

    else
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v14 = v37;
      v37[2] = *(a1 + 624);
    }

    v43[2] = vbslq_s8(vcgtq_f64(v14[2], v43[2]), v43[2], v14[2]);
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (v53[3])
    {
      v15 = CopyEDIDbyUUID();
      if (v15)
      {
        CFDictionarySetValue(v13, @"edid", v15);
        CFRelease(v15);
      }
    }

    v16 = v53[3];
    if (v16)
    {
      CFRelease(v16);
    }

    CFRetain(@"e5f7a68d-7b0f-4305-984b-974f677a150b");
    v53[3] = @"e5f7a68d-7b0f-4305-984b-974f677a150b";
    CFDictionarySetValue(v13, @"uuid", @"e5f7a68d-7b0f-4305-984b-974f677a150b");
    v17 = *(a1 + 676);
    if (v17 < 0)
    {
      v17 = *(v31 + 6);
    }

    *(v31 + 6) = v17;
    v18 = *MEMORY[0x277CBED28];
    v19 = *MEMORY[0x277CBED10];
    if (v17)
    {
      v20 = *MEMORY[0x277CBED28];
    }

    else
    {
      v20 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v13, @"overscanned", v20);
    CFDictionarySetInt64();
    CFDictionarySetValue(v13, @"rotation", v18);
    if (APSSettingsGetIntWithDefault())
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }

    CFDictionarySetValue(v13, @"receiverSupports444", v21);
    v22 = *(a1 + 640);
    if (v22)
    {
      v49[3] = v22;
    }

    else if (!v49[3])
    {
      goto LABEL_47;
    }

    v23 = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(v23, *MEMORY[0x277CD6540], v49[3]);
    CFDictionarySetValue(v13, @"HDRInfo", v23);
    CFRelease(v23);
LABEL_47:
    if (gLogCategory_APReceiverSystemInfo <= 30 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v24 = 0;
    goto LABEL_52;
  }

  APSLogErrorAt();
  v24 = 4294960568;
LABEL_52:
  v25 = v53[3];
  if (v25)
  {
    CFRelease(v25);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  if (v13)
  {
    CFArrayAppendValue(v9, v13);
    *a4 = v9;
    v26 = v13;
  }

  else
  {
    APSLogErrorAt();
    v26 = v9;
  }

  CFRelease(v26);
  return v24;
}

void sub_23EA0700C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 208), 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

CFTypeRef __sysInfo_copyMainDisplayInfo_block_invoke(uint64_t a1)
{
  sysInfo_updateCurrentDisplayInfo(*(a1 + 80));
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (v3 < 1)
  {
    v4 = 1280.0;
    v5 = 720.0;
  }

  else if (v3 == 1)
  {
    v4 = 1920.0;
    v5 = 1080.0;
  }

  else
  {
    v4 = *(v2 + 592);
    v5 = *(v2 + 600);
    if (v4 == *MEMORY[0x277CBF3A8] && v5 == *(MEMORY[0x277CBF3A8] + 8))
    {
      v5 = 1080.0;
      v4 = 1920.0;
    }
  }

  v6 = *(*(a1 + 32) + 8);
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(*(*(a1 + 40) + 8) + 32) = *(v2 + 592);
  result = *(*(a1 + 80) + 584);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 48) + 8) + 24) = result;
  v8 = *(*(a1 + 80) + 648);
  if (v8)
  {
    result = CFEqual(v8, *MEMORY[0x277CDA168]);
    if (result)
    {
      v9 = *MEMORY[0x277CD6530];
    }

    else
    {
      result = CFEqual(v8, *MEMORY[0x277CDA160]);
      v9 = *MEMORY[0x277CD6528];
      if (!result)
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v9;
  v10 = *(a1 + 80);
  *(*(*(a1 + 64) + 8) + 24) = *(v10 + 672);
  *(*(*(a1 + 72) + 8) + 24) = *(v10 + 680);
  return result;
}

void APReceiverSystemInfoClearVideoCache()
{
  memset(&v4, 0, sizeof(v4));
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([(NSArray *)v0 count])
  {
    v1 = [objc_msgSend(-[NSArray objectAtIndex:](v0 objectAtIndex:{0), "stringByAppendingPathComponent:", @"AppleTV/Video/LocalAndRental/CachedMedia*", "UTF8String"}];
    if (v1)
    {
      if (!glob(v1, 0, 0, &v4))
      {
        if (v4.gl_pathc)
        {
          v3 = 0;
          do
          {
            if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            if (remove(v4.gl_pathv[v3], v2) && gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            ++v3;
          }

          while (v3 < v4.gl_pathc);
        }

        globfree(&v4);
      }
    }
  }
}

void __APReceiverSystemInfoSetParentGroupInfo_block_invoke(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 160);
  if (v2)
  {
    CFRetain(*(a1 + 40));
  }

  *(v3 + 160) = v2;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);
  v5[168] = *(a1 + 56);
  v5[169] = *(a1 + 57);
  v5[170] = *(a1 + 58);
  if (!FigCFEqual())
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      FigCFDictionaryGetValue();
      FigCFDictionaryGetValue();
      LogPrintF();
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 752);
    v8 = *(a1 + 48);
    *(v6 + 752) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  sysInfo_updateAPGroupInfo(*(a1 + 32));
  v9 = *(a1 + 32);

  sysInfo_updateAdvertiserInfoAndNotify(v9, @"AdvertisingParameterChanged");
}

void __APReceiverSystemInfoResetParentGroupInfo_block_invoke(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 32);
  if (*(v2 + 160))
  {
    CFRelease(*(v2 + 160));
    *(*(a1 + 32) + 160) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 168) = 0;
  *(v2 + 170) = 0;
  if (*(v2 + 314))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo != -1 || (v3 = _LogCategory_Initialize(), v2 = *(a1 + 32), v3))
      {
        FigCFDictionaryGetValue();
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }
  }

  if (*(v2 + 752))
  {
    CFRelease(*(v2 + 752));
    *(*(a1 + 32) + 752) = 0;
    v2 = *(a1 + 32);
  }

  sysInfo_updateAPGroupInfo(v2);
  v4 = *(a1 + 32);

  sysInfo_updateAdvertiserInfoAndNotify(v4, @"AdvertisingParameterChanged");
}

void APReceiverSystemInfoHandleAPServicesReset(void *a1)
{
  if (IsAppleTV() || APSIsAPMSpeaker())
  {
    CFRetain(a1);
    v2 = a1[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverSystemInfoHandleAPServicesReset_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

void __APReceiverSystemInfoHandleAPServicesReset_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = sysInfo_copyPasscodeString(*(a1 + 32), 1, *MEMORY[0x277CBECE8], 0);
  v3 = v2;
  if (v2)
  {
    if (CFStringGetCString(v2, buffer, 64, 0x8000100u))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      sysInfo_handleAuthStringUpdate(buffer);
    }

    else if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  sysInfo_handleInfoDictUpdate(*(a1 + 32));
  sysInfo_handleLocalSenderStateChanged(*(a1 + 32), 0);
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (APSXPCClientSendCommandCreatingReply() && gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(*(a1 + 32));
}

void sysInfo_handleLocalSenderStateChanged(uint64_t a1, const void *a2)
{
  if (a2)
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v5 = CFDictionaryGetInt64() != 0;
    Int64 = CFDictionaryGetInt64();
  }

  else
  {
    v5 = 0;
    TypedValue = 0;
    Int64 = 0;
  }

  v7 = *(a1 + 232);
  if (v7)
  {
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    v9 = CFDictionaryGetInt64() != 0;
    v7 = CFDictionaryGetInt64();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (v8 == TypedValue)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
    if (v8 && TypedValue)
    {
      v10 = CFEqual(v8, TypedValue) == 0;
    }
  }

  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = *(a1 + 232);
  *(a1 + 232) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v9 != v5 || v7 != Int64)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (!*(a1 + 130))
  {
    sysInfo_updateNonMRSourcedSilentPrimaryStatusIfNeeded(a1);
    if (*(a1 + 129) != 0 && v10)
    {
      sysInfo_updateAPGroupInfo(a1);

      sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingParameterChanged");
    }
  }
}

void __APReceiverSystemInfoHandleLocalSenderStateChanged_block_invoke(uint64_t a1)
{
  sysInfo_handleLocalSenderStateChanged(*(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void rcsMediaRemote_handleMediaDataControlFailure(uint64_t a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a3);
  v6 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsMediaRemote_handleMediaDataControlFailure_block_invoke;
  block[3] = &__block_descriptor_tmp_36;
  block[4] = a3;
  v8 = a2;
  dispatch_async(v6, block);
}

void __rcsMediaRemote_handleMediaDataControlFailure_block_invoke(uint64_t a1)
{
  rcsMediaRemote_callDelegateHandleFailed(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void rcsMediaRemote_callDelegateHandleFailed(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 56))
  {
    return;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 64))
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v6)
    {
      if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return;
    }
  }

  else
  {
    v6 = 0;
  }

  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  (*(v5 + 56))(v6, a1, a2);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t rcsMediaRemote_handleMediaDataControlRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 30 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v11)
  {
    v12 = v11(a6, a5);
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = -12782;
  }

  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_13:

  return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v12);
}

uint64_t rcsMediaRemote_sendDataCallback(uint64_t a1, const __CFData *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v7 = Mutable;
  v8 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v8)
  {
    APSLogErrorAt();
    CFRelease(v7);
    return 4294960568;
  }

  v9 = v8;
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    CFDataGetLength(a2);
    LogPrintF();
  }

  CFDictionarySetValue(v9, @"data", a2);
  CFDictionarySetValue(v7, @"params", v9);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    v11 = 4294954514;
LABEL_12:
    APSLogErrorAt();
    goto LABEL_13;
  }

  v11 = v10(a3, v7);
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_13:
  CFRelease(v7);
  CFRelease(v9);
  return v11;
}

uint64_t rcsMediaRemote_HandleOutgoingMessage(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 96))
  {
    APSLogErrorAt();
    v13 = 4294960587;
    goto LABEL_12;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  if (!*(v5 + 96))
  {
    APSLogErrorAt();
    goto LABEL_17;
  }

  v6 = v5;
  v7 = *(v5 + 112) + 1;
  *(v5 + 112) = v7;
  v8 = *(v5 + 48);
  if (v8)
  {
    if (!*(v5 + 64))
    {
      v10 = 0;
LABEL_9:
      CFRetain(a1);
      CFRetain(a2);
      v12 = *(v6 + 80);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = __rcsMediaRemote_sendOutgoingMessageInternal_block_invoke;
      v16[3] = &__block_descriptor_tmp_28;
      v16[4] = a1;
      v16[5] = v7;
      v16[6] = a2;
      v16[7] = v8;
      v16[8] = v10;
      dispatch_async(v12, v16);
      if (v10)
      {
        CFRelease(v10);
      }

      goto LABEL_11;
    }

    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v9)
    {
      v10 = v9;
      CFRetain(v9);
      goto LABEL_9;
    }

    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_17:
    v13 = 4294960587;
    APSLogErrorAt();
    goto LABEL_12;
  }

  CFRetain(a1);
  CFRetain(a2);
  v11 = *(v6 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsMediaRemote_sendOutgoingMessageInternal_block_invoke_2;
  block[3] = &__block_descriptor_tmp_29;
  block[4] = a1;
  block[5] = a2;
  block[6] = v7;
  dispatch_async(v11, block);
LABEL_11:
  v13 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  return v13;
}

void __rcsMediaRemote_sendOutgoingMessageInternal_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = gLogCategory_APReceiverRemoteControlSessionMediaRemote;
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50)
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v5 = gLogCategory_APReceiverRemoteControlSessionMediaRemote;
    }

    if (v5 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_9:
  v6 = *(DerivedStorage + 88);
  v7 = dispatch_time(0, 10000000000);
  v8 = APMediaDataControlServerSendRequestSync(v6, v3, v7);
  if (v8)
  {
    v10 = v8;
    APSLogErrorAt();
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    rcsMediaRemote_callDelegateHandleFailed(v2, v10);
  }

  CFRelease(*(a1 + 32));
  v9 = *(a1 + 40);

  CFRelease(v9);
}

void __rcsMediaRemote_sendOutgoingMessageInternal_block_invoke(uint64_t a1)
{
  v2 = gLogCategory_APReceiverRemoteControlSessionMediaRemote;
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50)
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v2 = gLogCategory_APReceiverRemoteControlSessionMediaRemote;
    }

    if (v2 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_9:
  (*(a1 + 56))(*(a1 + 64), *(a1 + 32), *(a1 + 48));
  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(*(a1 + 32));
  v4 = *(a1 + 48);

  CFRelease(v4);
}

uint64_t rcsMediaRemote_HandleIncomingMessage(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 104);
  if (!*(DerivedStorage + 96))
  {
    APSLogErrorAt();
    v10 = 4294960587;
    goto LABEL_10;
  }

  if (!a2)
  {
    APSLogErrorAt();
LABEL_22:
    v10 = 4294960591;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(a2, @"params");
  if (!Value)
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote > 90 || gLogCategory_APReceiverRemoteControlSessionMediaRemote == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_22;
    }

LABEL_18:
    LogPrintF();
    goto LABEL_22;
  }

  v5 = CFDictionaryGetValue(Value, @"data");
  if (!v5)
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote > 90 || gLogCategory_APReceiverRemoteControlSessionMediaRemote == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v6 = v5;
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    CFDataGetLength(v6);
    LogPrintF();
  }

  v7 = CFRetain(*(DerivedStorage + 32));
  v8 = CFRetain(*(DerivedStorage + 24));
  CFRetain(v6);
  v9 = *(DerivedStorage + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsMediaRemote_HandleIncomingMessage_block_invoke;
  block[3] = &__block_descriptor_tmp_2323;
  block[4] = v7;
  block[5] = v6;
  block[6] = v8;
  dispatch_async(v9, block);
  v10 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t rcsMediaRemote_Start()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 97) || *(DerivedStorage + 96))
  {
    APSLogErrorAt();
    v2 = 4294960587;
LABEL_9:
    FigSimpleMutexUnlock();
    rcsMediaRemote_stop();
    return v2;
  }

  v1 = *(DerivedStorage + 88);
  if (v1)
  {
    v4 = *(DerivedStorage + 88);
    v5 = 0;
    dispatch_sync_f(*(v1 + 112), &v4, controlServer_startInternal);
    v2 = v5;
    if (v5)
    {
      APSLogErrorAt();
      goto LABEL_9;
    }
  }

  *(DerivedStorage + 96) = 1;
  FigSimpleMutexUnlock();
  return 0;
}

void rcsMediaRemote_stop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 88);
  if (v1)
  {
    v2[0] = *(DerivedStorage + 88);
    v2[1] = 0;
    dispatch_sync_f(*(v1 + 112), v2, controlServer_stopInternal);
  }
}

uint64_t CMBaseObjectNotificationBarrier(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t rcsMediaRemote_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  APSLogErrorAt();
  return 4294960591;
}

uint64_t rcsMediaRemote_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2 || !a4)
  {
    APSLogErrorAt();
    v8 = 4294960591;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"RRCS::Property::SessionID"))
  {
    SInt32 = CFRetain(*(DerivedStorage + 16));
  }

  else
  {
    if (!CFEqual(a2, @"RRCS::Property::ListenPort"))
    {
      v8 = 4294960569;
      goto LABEL_7;
    }

    if (!*(DerivedStorage + 88))
    {
      SInt32 = 0;
      v8 = 4294960561;
      goto LABEL_6;
    }

    SInt32 = FigCFNumberCreateSInt32();
    if (!SInt32)
    {
      APSLogErrorAt();
      v8 = 4294960568;
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_6:
  *a4 = SInt32;
LABEL_7:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t rcsMediaRemote_Finalize()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = result;
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50)
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  if (*(v1 + 97))
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 16) = 0;
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 24) = 0;
    }

    v4 = *(v1 + 32);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 32) = 0;
    }

    v5 = *(v1 + 64);
    if (v5)
    {
      CFRelease(v5);
      *(v1 + 64) = 0;
    }

    v6 = *(v1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(v1 + 88) = 0;
    }

    v7 = *(v1 + 72);
    if (v7)
    {
      dispatch_release(v7);
      *(v1 + 72) = 0;
    }

    v8 = *(v1 + 80);
    if (v8)
    {
      dispatch_release(v8);
      *(v1 + 80) = 0;
    }

    result = FigSimpleMutexDestroy();
    *(v1 + 120) = 0;
  }

  else
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 100)
    {
      if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t rcsMediaRemote_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 97))
  {
    APSLogErrorAt();
    goto LABEL_14;
  }

  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = *(DerivedStorage + 32);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  if (v1)
  {
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(gAPReceiverMediaRemoteService_1, v1);
    FigSimpleMutexUnlock();
    APReceiverMediaRemoteXPCService_PostEvent(@"didCloseCommChannel", v1, 0);
    if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    APSLogErrorAt();
  }

  if (!*(DerivedStorage + 96))
  {
    *(DerivedStorage + 97) = 1;
LABEL_14:
    FigSimpleMutexUnlock();
    return 0;
  }

  *(DerivedStorage + 96) = 256;
  FigSimpleMutexUnlock();
  rcsMediaRemote_stop();
  return 0;
}

uint64_t AirPlayReceiverServerGetTypeID()
{
  if (gAirPlayReceiverServerInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverServerInitOnce, 0, _GetTypeID);
  }

  return gAirPlayReceiverServerTypeID;
}

uint64_t _GetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAirPlayReceiverServerTypeID = result;
  return result;
}

void _Finalize_2410(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (IsAppleInternalBuild())
  {
    DebugIPC_EnsureFinalized();
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(a1 + 32) = -1;
  }

  CMNotificationCenterRemoveListener();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterRemoveListener();
  if (APSIsAPMSpeaker())
  {
    CMNotificationCenterRemoveListener();
    CMNotificationCenterRemoveListener();
  }

  _StopServers(a1);
  AirPlayReceiverServerPlatformFinalize(*(a1 + 16));
  v3 = *(a1 + 216);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 216) = 0;
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 160) = 0;
  }

  v5 = *(a1 + 264);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 264) = 0;
  }

  v6 = *(a1 + 224);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 224) = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    dispatch_source_cancel(*(a1 + 56));
    dispatch_release(v7);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    dispatch_release(v8);
    *(a1 + 24) = 0;
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    dispatch_release(v9);
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 176);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 176) = 0;
  }

  v11 = *(a1 + 184);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 184) = 0;
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 72) = 0;
  }

  v13 = *(a1 + 280);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 280) = 0;
  }

  gAirPlayReceiverServer = 0;
  v14 = *(a1 + 288);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 288) = 0;
  }
}

void _StopServers(uint64_t a1)
{
  if (*(a1 + 132))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __APAdvertiserStop_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v2;
      dispatch_sync(v3, block);
      APAdvertiserInvalidate(*(a1 + 40));
      v4 = *(a1 + 40);
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 40) = 0;
      }
    }

    if (gAirTunesDACPClient)
    {
      AirTunesDACPClient_Delete(gAirTunesDACPClient);
      gAirTunesDACPClient = 0;
    }

    v5 = *(a1 + 192);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 192) = 0;
    }

    if (*(a1 + 80))
    {
      CFObjectSetProperty();
      CFRelease(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    if (*(a1 + 96))
    {
      CFObjectSetProperty();
      CFRelease(*(a1 + 96));
      *(a1 + 96) = 0;
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 72) = 0;
    }

    v7 = *(a1 + 280);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 280) = 0;
    }

    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 132) = 0;
  }
}

void _HandleSystemInfoNotification(int a1, void *a2, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"AdvertisingDeviceSettingChanged"))
  {
    CFRetain(a2);
    v5 = a2[3];
    v6 = _HandleAdvertisingDeviceSettingChanged;
  }

  else
  {
    if (CFEqual(cf1, @"AdvertisingParameterChanged"))
    {
      v7 = CFDictionaryGetInt64() == 0;
      CFRetain(a2);
      v8 = a2[3];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = ___HandleSystemInfoNotification_block_invoke;
      v9[3] = &__block_descriptor_41_e5_v8__0l;
      v9[4] = a2;
      v10 = v7;
      dispatch_async(v8, v9);
      return;
    }

    if (CFEqual(cf1, @"EnableAirPlayStatusChanged"))
    {
      CFRetain(a2);
      v5 = a2[3];
      v6 = _HandleEnableAirPlayStatusChanged;
    }

    else if (CFEqual(cf1, @"DenyInterruptionsStatusChanged"))
    {
      CFRetain(a2);
      v5 = MEMORY[0x277D85CD0];
      v6 = _HandleDenyInterruptionsStatusChanged;
    }

    else if (CFEqual(cf1, @"SimulateUserStop"))
    {
      CFRetain(a2);
      v5 = a2[3];
      v6 = _HandleSimulateUserStop;
    }

    else if (CFEqual(cf1, @"P2PSettingChanged"))
    {
      CFRetain(a2);
      v5 = a2[3];
      v6 = _HandleP2PSettingChanged;
    }

    else if (CFEqual(cf1, @"TightSyncBuddyBecameReachable"))
    {
      CFRetain(a2);
      v5 = a2[11];
      v6 = _HandleTightSyncBuddyBecameReachable;
    }

    else
    {
      if (!CFEqual(cf1, @"PersistentConnectionConfigChanged"))
      {
        return;
      }

      CFRetain(a2);
      v5 = a2[11];
      v6 = _HandlePersistentConnectionConfigChanged;
    }
  }

  dispatch_async_f(v5, a2, v6);
}

void _HandlePersistentConnectionConfigChanged(void *cf)
{
  v2 = cf[27];
  v3 = *(v2 + 48);
  if (v3)
  {
    CFRetain(*(v2 + 48));
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    AirPlayReceiverServerCloseConnection(cf, v3);
    CFRelease(v3);
  }

  CFRelease(cf);
}

uint64_t AirPlayReceiverServerCloseConnection(uint64_t result, uint64_t a2)
{
  v3 = 0;
  if (result)
  {
    if (a2)
    {
      result = _FindHTTPConnectionForSession(result, a2, &v3);
      if (result)
      {
        v2 = result;
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return _DestroyHTTPConnection(v3, v2);
      }
    }
  }

  return result;
}

uint64_t _FindHTTPConnectionForSession(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    result = *(v4 + 56);
    if (result)
    {
      while (*(*(result + 40) + 280) != a2)
      {
        result = *(result + 16);
        if (!result)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_10;
    }
  }

LABEL_5:
  v4 = *(a1 + 96);
  if (!v4)
  {
    return 0;
  }

  result = *(v4 + 56);
  if (result)
  {
    while (*(*(result + 40) + 280) != a2)
    {
      result = *(result + 16);
      if (!result)
      {
        return result;
      }
    }

LABEL_10:
    if (a3)
    {
      *a3 = v4;
    }
  }

  return result;
}

uint64_t _DestroyHTTPConnection(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = (result + 56);
    result = *(result + 56);
    if (result)
    {
      do
      {
        if (result == a2)
        {
          *v2 = *(result + 16);
          _DestroyConnection(result);
        }

        else
        {
          v2 = (result + 16);
        }

        result = *v2;
      }

      while (*v2);
    }
  }

  return result;
}

void _DestroyConnection(_BYTE *a1)
{
  HTTPConnectionStop();
  if (a1[229] && gLogCategory_AirPlayReceiverServer <= 40 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRelease(a1);
}

void _HandleTightSyncBuddyBecameReachable(uint64_t *a1)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(a1[27], 0, 0, &cf);
  v2 = cf;
  if (!cf)
  {
    goto LABEL_13;
  }

  if (!*(cf + 683) && !*(cf + 682))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v4 = Mutable;
      CFDictionarySetValue(Mutable, @"type", @"regroupTightSyncBuddy");
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (!AirPlayReceiverSessionSendCommandForObject(v2, 0, v4, 0, 0))
      {
        CFRelease(v4);
        goto LABEL_11;
      }

      APSLogErrorAt();
      CFRelease(v4);
    }

    else
    {
      APSLogErrorAt();
    }

    APSLogErrorAt();
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_13:
  CFRelease(a1);
}

void _HandleP2PSettingChanged(const void *a1)
{
  _DetermineP2PSettings(a1);
  _ConfigureServersWithP2PSettings(a1);
  _RestartAdvertising(a1);

  CFRelease(a1);
}

uint64_t _DetermineP2PSettings(uint64_t a1)
{
  result = APSIsVirtualMachine();
  if (result || *(a1 + 264) || (result = CFObjectGetPropertyInt64Sync()) != 0)
  {
    *(a1 + 52) = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    v3 = APSIsMemberOfHTGroup();
    if (APSSettingsIsFeatureEnabled())
    {
      v4 = APSIsMemberOfStereoPair() != 0;
    }

    else
    {
      v4 = 0;
    }

    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    *(a1 + 48) = PropertyInt64Sync != 0;
    *(a1 + 49) = (IsAppleTV() | v3) != 0;
    v6 = APSIsAPMSpeaker();
    v7 = v3 != 0 || v4;
    if (!v6)
    {
      v7 = 0;
    }

    *(a1 + 52) = v7;
    result = IsAppleInternalBuild();
    if (result)
    {
      result = APSIsOpenNANReceiverEnabled();
      if (result)
      {
        *(a1 + 50) = PropertyInt64Sync != 0;
        *(a1 + 51) = PropertyInt64Sync == 0;
      }
    }
  }

  return result;
}

uint64_t _ConfigureServersWithP2PSettings(uint64_t a1)
{
  if (*(a1 + 80))
  {
    CFObjectSetProperty();
  }

  result = *(a1 + 96);
  if (result)
  {

    return CFObjectSetProperty();
  }

  return result;
}

void _RestartAdvertising(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (*(a1 + 133))
    {
      if (APAdvertiserFlushBonjourRecords(v2) || _UpdateAdvertiserInfo(a1, v3))
      {
        goto LABEL_17;
      }

      if (!*(a1 + 40))
      {
        return;
      }

      P2PConfigDictForAdvertiser = _CreateP2PConfigDictForAdvertiser(a1);
      if (!P2PConfigDictForAdvertiser)
      {
LABEL_17:

        APSLogErrorAt();
      }

      else
      {
        v5 = P2PConfigDictForAdvertiser;
        APAdvertiserSetProperty(*(a1 + 40), @"P2PConfig", P2PConfigDictForAdvertiser);

        CFRelease(v5);
      }
    }

    else if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {

      LogPrintF();
    }
  }
}

uint64_t _UpdateAdvertiserInfo(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (*(a1 + 40))
  {
    v3 = APReceiverSystemInfoCopyProperty(*(a1 + 160), a2, @"AdvertiserInfo", 0, &v5);
    if (v5 || (v5 = APAdvertiserSetProperty(*(a1 + 40), @"advertiserInfo", v3)) != 0)
    {
      APSLogErrorAt();
      if (!v3)
      {
        return v5;
      }

      goto LABEL_10;
    }

    notify_post("com.apple.airplay.advertisingDidChange");
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      if (!v3)
      {
        return v5;
      }

      goto LABEL_10;
    }

    if (v3)
    {
LABEL_10:
      CFRelease(v3);
    }
  }

  return v5;
}

__CFDictionary *_CreateP2PConfigDictForAdvertiser(_BYTE *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  v4 = *MEMORY[0x277CBED28];
  v5 = *MEMORY[0x277CBED10];
  if (a1[48])
  {
    v6 = *MEMORY[0x277CBED28];
  }

  else
  {
    v6 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"allowFullBonjourAdvertisingOverAWDL", v6);
  if (a1[49])
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  CFDictionarySetValue(v3, @"allowPartialBonjourAdvertisingOverAWDL", v7);
  if (a1[50])
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  CFDictionarySetValue(v3, @"allowOpenFullNANAdvertising", v8);
  if (a1[51])
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  CFDictionarySetValue(v3, @"allowOpenPartialNANAdvertising", v9);
  if (a1[52])
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  CFDictionarySetValue(v3, @"allowSecurePartialNANAdvertising", v10);
  return v3;
}

void _HandleSimulateUserStop(const void *a1)
{
  if (AirPlayReceiverServerControl(a1, 1, @"sessionDied", 0, 0, 0))
  {
    APSLogErrorAt();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  CFRelease(a1);
}

uint64_t AirPlayReceiverServerControl(uint64_t a1, int a2, CFTypeRef cf1, const void *a4, const void *a5, CFTypeRef *a6)
{
  if (CFEqual(cf1, @"sendVolumeUpdate"))
  {
    if (!*(a1 + 132))
    {
      return 0;
    }

    v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
    if (!v12)
    {
      APSLogErrorAt();
      return 4294960568;
    }

    v13 = v12;
    *v12 = a1;
    v12[1] = a5;
    CFRetain(a1);
    CFRetain(a5);
    v14 = *(a1 + 88);
    v15 = _HandleVolumeUpdate;
    v16 = v13;
LABEL_5:
    dispatch_async_f(v14, v16, v15);
    return 0;
  }

  if (CFEqual(cf1, @"clearPIN"))
  {
    if (gLogCategory_AirPlayReceiverServer <= 20 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    started = APReceiverSystemInfoSetProperty(*(a1 + 160), v18, @"Passcode", v19, 0);
    if (!started)
    {
      return started;
    }

    goto LABEL_49;
  }

  if (CFEqual(cf1, @"prefsChanged"))
  {
    if (*(a1 + 133))
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      APSSettingsSynchronize();
      AirPlayReceiverServerPlatformControl(a1, @"updatePrefs", 0, 0);
    }

    return 0;
  }

  if (CFEqual(cf1, @"startServer"))
  {
    *(a1 + 133) = 1;
    APSSettingsSynchronize();
    AirPlayReceiverServerPlatformControl(a1, @"updatePrefs", 0, 0);
    _StartOrStopServersIfNeeded(a1);
    return 0;
  }

  if (CFEqual(cf1, @"stopServer"))
  {
    if (*(a1 + 133))
    {
      *(a1 + 133) = 0;
      _StopServers(a1);
      dispatch_sync(*(a1 + 88), &__block_literal_global_2439);
    }

    return 0;
  }

  if (CFEqual(cf1, @"startAssistedModeAdvertising"))
  {
    if (!*(a1 + 40))
    {
      return 0;
    }

    started = _StartAssistedModeAdvertising(a1, a5, a6);
    if (!started)
    {
      return started;
    }

LABEL_49:
    APSLogErrorAt();
    return started;
  }

  if (CFEqual(cf1, @"stopAssistedModeAdvertising"))
  {
    if (*(a1 + 40))
    {
      _StopAssistedModeAdvertising(a1);
    }

    return 0;
  }

  if (CFEqual(cf1, @"startedPlayingOverAWDL"))
  {
    ++*(a1 + 128);
    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = APAdvertiserSetProperty(v21, @"enforceSolo", *MEMORY[0x277CBED28]);
      if (v22)
      {
        started = v22;
        goto LABEL_49;
      }
    }

    if (gLogCategory_AirPlayReceiverServer > 50 || gLogCategory_AirPlayReceiverServer == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

LABEL_38:
    LogPrintF();
    return 0;
  }

  if (CFEqual(cf1, @"stoppedPlayingOverAWDL"))
  {
    v23 = *(a1 + 128) - 1;
    *(a1 + 128) = v23;
    if (gLogCategory_AirPlayReceiverServer <= 50)
    {
      if (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      v23 = *(a1 + 128);
    }

    if (v23 > 0)
    {
      return 0;
    }

    *(a1 + 128) = 0;
    v24 = *(a1 + 40);
    if (!v24)
    {
      return 0;
    }

    started = APAdvertiserSetProperty(v24, @"enforceSolo", *MEMORY[0x277CBED10]);
    if (!started)
    {
      return started;
    }

    goto LABEL_49;
  }

  if (CFEqual(cf1, @"sessionDied"))
  {
    if (a4)
    {
      _RemoveConnectionForSession(a1, a4);
    }

    else
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      _RemoveAllConnectionsOfType(a1);
    }

    return 0;
  }

  if (CFEqual(cf1, @"forceKeyFrame"))
  {
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!IsAppleInternalBuild())
    {
      return 0;
    }

    CFRetain(a1);
    v14 = *(a1 + 88);
    v15 = _HandleForceKeyFrame;
    v16 = a1;
    goto LABEL_5;
  }

  if (CFEqual(cf1, @"sendRCSCommand"))
  {
    if (gLogCategory_AirPlayReceiverServer > 50 || gLogCategory_AirPlayReceiverServer == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

    goto LABEL_38;
  }

  if (CFEqual(cf1, @"audioInterruptionBegan") || CFEqual(cf1, @"audioInterruptionEnded") || CFEqual(cf1, @"otherProcessStartedPlaying") || CFEqual(cf1, @"partnerProcessDeath"))
  {
    CFRetain(a1);
    CFRetain(cf1);
    if (a4)
    {
      CFRetain(a4);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    v25 = *(a1 + 88);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __AirPlayReceiverServerControl_block_invoke_2;
    block[3] = &__block_descriptor_68_e5_v8__0l;
    block[4] = cf1;
    block[5] = a4;
    v27 = a2;
    block[6] = a1;
    block[7] = a5;
    dispatch_async(v25, block);
    return 0;
  }

  return AirPlayReceiverServerPlatformControl(a1, cf1, a4, a5);
}

void _StartOrStopServersIfNeeded(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (CFObjectGetPropertyInt64Sync())
  {
    if (*(a1 + 132))
    {
      return;
    }

    *(a1 + 80) = _CreateHTTPServerForPort(a1, *(a1 + 272));
    if (*(a1 + 252))
    {
      *(a1 + 96) = _CreateHTTPServerForPort(a1, 5000);
    }

    if (*(a1 + 248))
    {
      RemovePath();
    }

    if (!*(a1 + 250))
    {
LABEL_16:
      _DetermineP2PSettings(a1);
      _ConfigureServersWithP2PSettings(a1);
      v6 = a1 + 72;
      if (!*(a1 + 72))
      {
        APSWiFiTransactionCreate();
      }

      v7 = MEMORY[0x277CBECE8];
      if (*(a1 + 257))
      {
        v17 = 0;
        v18 = 0;
        *bytes = 0;
        v15 = 0;
        v16 = 0;
        if (*(a1 + 258))
        {
          if (RandomBytes() || Base64EncodeEx() || (v8 = CFStringCreateWithBytes(*v7, bytes, 0, 0x8000100u, 0), (*(a1 + 280) = v8) == 0))
          {
            APSLogErrorAt();
          }
        }

        APReceiverSystemInfoSetProperty(*(a1 + 160), v5, @"Password", v6, *(a1 + 280));
      }

      if (*(a1 + 80))
      {
        CFObjectSetProperty();
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (*(a1 + 257) && gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      if (*(a1 + 252))
      {
        if (*(a1 + 96))
        {
          CFObjectSetProperty();
          if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }
      }

      if (*(a1 + 253))
      {
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_60;
      }

      Mutable = CFDictionaryCreateMutable(*v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetInt64();
      v10 = *(a1 + 264);
      if (v10)
      {
        CFDictionarySetValue(Mutable, @"interfaceName", v10);
      }

      v11 = MEMORY[0x277CBED28];
      if (*(a1 + 64))
      {
        CFDictionarySetValue(Mutable, @"useAltAdvertising", *MEMORY[0x277CBED28]);
      }

      if (*(a1 + 53))
      {
        CFDictionarySetValue(Mutable, @"useAssistedModeAdvertising", *v11);
      }

      P2PConfigDictForAdvertiser = _CreateP2PConfigDictForAdvertiser(a1);
      if (!P2PConfigDictForAdvertiser || (CFDictionarySetValue(Mutable, @"P2PConfig", P2PConfigDictForAdvertiser), CFDictionarySetValue(Mutable, @"systemInfo", *(a1 + 160)), APAdvertiserCreate(Mutable, (a1 + 40))) || _UpdateAdvertiserInfo(a1, v13) || (!IsAppleInternalBuild() || !APSSettingsGetInt64()) && APAdvertiserStart(*(a1 + 40)))
      {
        APSLogErrorAt();
        if (!Mutable)
        {
LABEL_58:
          if (P2PConfigDictForAdvertiser)
          {
            CFRelease(P2PConfigDictForAdvertiser);
          }

LABEL_60:
          APSIntrospectorInit();
          *(a1 + 132) = 1;
          if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          return;
        }
      }

      else if (!Mutable)
      {
        goto LABEL_58;
      }

      CFRelease(Mutable);
      goto LABEL_58;
    }

    v2 = malloc_type_calloc(1uLL, 0xA600uLL, 0x10F0040ACF67C9AuLL);
    if (v2)
    {
      v3 = v2;
      *v2 = 1684104048;
      v4 = v2 + 8;
      if (!pthread_mutex_init((v2 + 8), 0))
      {
        *(v3 + 9) = v4;
        if (!pthread_cond_init((v3 + 20), 0))
        {
          *(v3 + 16) = v3 + 20;
          if (!NetSocket_Create() && !pthread_create(v3 + 17, 0, _AirTunesDACPClient_Thread, v3))
          {
            *(v3 + 18) = v3 + 34;
            gAirTunesDACPClient = v3;
            goto LABEL_14;
          }
        }
      }

      APSLogErrorAt();
      AirTunesDACPClient_Delete(v3);
    }

    else
    {
      APSLogErrorAt();
    }

    v3 = gAirTunesDACPClient;
    if (!gAirTunesDACPClient)
    {
LABEL_81:
      APSLogErrorAt();
      goto LABEL_16;
    }

LABEL_14:
    if (*v3 == 1684104048)
    {
      *(v3 + 21) = _HandleDACPStatus;
      *(v3 + 22) = a1;
      goto LABEL_16;
    }

    goto LABEL_81;
  }

  _StopServers(a1);
}

uint64_t _StartAssistedModeAdvertising(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!*(a1 + 53) || *(a1 + 56))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  if (!CFDictionaryGetInt64())
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v5 = APAdvertiserCopyProperty(*(a1 + 40), @"assistedModeInfo", a3);
  if (v5)
  {
    v13 = v5;
LABEL_16:
    APSLogErrorAt();
    return v13;
  }

  v6 = APAdvertiserSetProperty(*(a1 + 40), @"allowAssistedModeAdvertisingOverAWDL", *MEMORY[0x277CBED28]);
  if (v6)
  {
    v13 = v6;
    goto LABEL_16;
  }

  Int64 = CFDictionaryGetInt64();
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 24));
  *(a1 + 56) = v8;
  if (v8)
  {
    CFRetain(a1);
    v9 = *(a1 + 56);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = ___StartAssistedModeAdvertising_block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = a1;
    dispatch_source_set_event_handler(v9, handler);
    v10 = *(a1 + 56);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___StartAssistedModeAdvertising_block_invoke_2;
    v15[3] = &__block_descriptor_40_e5_v8__0l;
    v15[4] = a1;
    dispatch_source_set_cancel_handler(v10, v15);
    dispatch_resume(*(a1 + 56));
    v11 = *(a1 + 56);
    if (Int64)
    {
      v12 = dispatch_time(0, 1000000000 * Int64);
    }

    else
    {
      v12 = -1;
    }

    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }
}

void _StopAssistedModeAdvertising(uint64_t a1)
{
  if (*(a1 + 53))
  {
    APAdvertiserSetProperty(*(a1 + 40), @"allowAssistedModeAdvertisingOverAWDL", *MEMORY[0x277CBED10]);
    v2 = *(a1 + 56);
    if (v2)
    {
      dispatch_source_cancel(*(a1 + 56));
      dispatch_release(v2);
      *(a1 + 56) = 0;
    }
  }
}

void _RemoveConnectionForSession(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 88);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = ___RemoveConnectionForSession_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void _RemoveAllConnectionsOfType(uint64_t a1)
{
  _RemoveHTTPServerConnectionsOfType(a1, *(a1 + 80));
  v2 = *(a1 + 96);

  _RemoveHTTPServerConnectionsOfType(a1, v2);
}

void __AirPlayReceiverServerControl_block_invoke_2(uint64_t a1)
{
  if (CFEqual(*(a1 + 32), @"partnerProcessDeath") && FigCFEqual())
  {
    AirPlayReceiverServerPlatformControl(*(a1 + 48), *(a1 + 32), *(a1 + 40), *(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = APReceiverSessionManagerCopyAllSessions(*(v2 + 216));
  if (v3)
  {
    v4 = v3;
    CFArrayGetCount(v3);
    CFArrayApplyBlock();
    CFRelease(v4);
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 32));
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }
}

void _HandleForceKeyFrame(uint64_t *a1)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(a1[27], 2, 0, &cf);
  if (!cf)
  {
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"forceKeyFrame");
  if (AirPlayReceiverSessionSendCommandForObject(cf, 0, Mutable, 0, 0))
  {
    APSLogErrorAt();
    if (!Mutable)
    {
      goto LABEL_10;
    }

LABEL_9:
    CFRelease(Mutable);
    goto LABEL_10;
  }

  if (gLogCategory_AirPlayReceiverServer > 50 || gLogCategory_AirPlayReceiverServer == -1 && !_LogCategory_Initialize())
  {
    if (!Mutable)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  LogPrintF();
  if (Mutable)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  CFRelease(a1);
}

void _RemoveHTTPServerConnectionsOfType(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    if (v4)
    {
      v5 = v4;
      CFRetain(a2);
      *v5 = a2;
      v5[2] = 1;
      v6 = *(a1 + 88);

      dispatch_sync_f(v6, v5, _RemoveHTTPServerConnections);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void _RemoveHTTPServerConnections(_DWORD *a1)
{
  v2 = *a1;
  if (v2)
  {
    v4 = v2 + 7;
    v3 = v2[7];
    if (v3)
    {
      do
      {
        v5 = a1[2];
        v6 = *(*(v3 + 40) + 280);
        if (v6)
        {
          LODWORD(v6) = CFObjectGetInt64();
        }

        if (v6 == v5)
        {
          *v4 = *(v3 + 16);
          _DestroyConnection(v3);
        }

        else
        {
          v4 = (v3 + 16);
        }

        v3 = *v4;
      }

      while (*v4);
      v2 = *a1;
    }

    CFRelease(v2);
  }

  free(a1);
}

uint64_t APReceiverRequestProcessorCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 0;
  }

  return v6(a1, a2, a3);
}

uint64_t _CreateHTTPServerForPort(uint64_t a1, int a2)
{
  if (HTTPServerCreate())
  {
    APSLogErrorAt();
  }

  else
  {
    MEMORY[0xEC] = -a2;
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    HTTPServerSetDispatchQueue();
  }

  return 0;
}

void _HandleHTTPConnectionCreated(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *&v11.sa_len = 0;
  *&v11.sa_data[6] = 0;
  v13 = 0;
  v12 = 0;
  *&v8.sa_len = 0;
  *&v8.sa_data[6] = 0;
  v10 = 0;
  v9 = 0;
  v7 = 28;
  getsockname(*(a2 + 136), &v11, &v7);
  v7 = 28;
  getpeername(*(a2 + 136), &v8, &v7);
  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *a3 = a4;
  a3[1] = a2;
  a3[2] = 0;
  v14 = 0;
  v16 = 0;
  v20 = 0;
  v22 = 0u;
  v15 = a3;
  v17 = _HandleHTTPConnectionInitialize;
  v18 = _HandleHTTPConnectionFinalize;
  v19 = _HandleHTTPConnectionClose;
  v21 = _HandleHTTPConnectionMessage;
  HTTPConnectionSetDelegate();
  _UpdateIdleTimeoutTimer(a4);
}

void _UpdateIdleTimeoutTimer(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 && *(v2 + 56) || (v3 = *(a1 + 96)) != 0 && *(v3 + 56))
  {
    if (!*(a1 + 136))
    {
      v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 88));
      *(a1 + 136) = v4;
      if (v4)
      {
        CFRetain(a1);
        dispatch_set_context(*(a1 + 136), a1);
        dispatch_source_set_event_handler_f(*(a1 + 136), _HandleIdleTimeoutTimerFired);
        dispatch_source_set_cancel_handler_f(*(a1 + 136), _HandleIdleTimeoutTimerCanceled);
        v5 = *(a1 + 136);
        v6 = dispatch_time(0, 90000000000);
        dispatch_source_set_timer(v5, v6, 0x14F46B0400uLL, 0x53D1AC100uLL);
        v7 = *(a1 + 136);

        dispatch_resume(v7);
      }

      else
      {

        APSLogErrorAt();
      }
    }
  }

  else
  {
    v8 = *(a1 + 136);
    if (v8)
    {
      dispatch_source_cancel(*(a1 + 136));
      dispatch_release(v8);
      *(a1 + 136) = 0;
    }
  }
}

uint64_t _HandleIdleTimeoutTimerFired(void *a1)
{
  v2 = mach_absolute_time();
  v3 = a1[10];
  if (v3)
  {
    _TimeoutIdleHTTPConnections(v3, a1[19], v2);
  }

  result = a1[12];
  if (result)
  {
    v5 = a1[19];

    return _TimeoutIdleHTTPConnections(result, v5, v2);
  }

  return result;
}

uint64_t _TimeoutIdleHTTPConnections(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v6 = result;
    do
    {
      v7 = v3;
      v3 = *(v3 + 16);
      result = *(*(v7 + 40) + 280);
      if (result)
      {
        result = CFObjectGetInt64();
        if (result)
        {
          continue;
        }
      }

      if (a3 - *(v7 + 408) > a2)
      {
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        result = _DestroyHTTPConnection(v6, v7);
      }
    }

    while (v3);
  }

  return result;
}

uint64_t _HandleHTTPConnectionMessage(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v113 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 304);
  mach_absolute_time();
  if (!a3)
  {
    APSLogErrorAt();
    return -6705;
  }

  v7 = (a2 + 24);
  a3[2] = a3[2] + 1;
  v8 = strnicmp_prefix();
  v9 = "RTSP/1.0";
  if (!v8)
  {
    v9 = "HTTP/1.1";
  }

  *(a1 + 48) = v9;
  if (strnicmpx() && (strnicmpx() || strnicmp_suffix()) || gLogCategory_AirPlayReceiverServerHTTP <= 10 && (gLogCategory_AirPlayReceiverServerHTTP != -1 || _LogCategory_Initialize()))
  {
    LogHTTP();
    v81 = 0;
  }

  else
  {
    if (!IsAppleInternalBuild())
    {
      HTTPGetHeaderField();
      v81 = 1;
      v82 = 1;
      goto LABEL_18;
    }

    v81 = 1;
  }

  HTTPGetHeaderField();
  if (gLogCategory_AirPlayReceiverServerHTTP <= 50 && (gLogCategory_AirPlayReceiverServerHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v82 = 0;
LABEL_18:
  HTTPGetHeaderField();
  HTTPScanFHeaderValue();
  v10 = a3[5];
  if (!v10)
  {
    v10 = SockAddrToDeviceID();
    a3[5] = v10;
  }

  v83 = v6;
  if (a3[35])
  {
LABEL_53:
    if (!*(a3 + 48))
    {
      *buffer = 0;
      cf[0] = 0;
      HTTPGetHeaderField();
    }

    if (!strnicmp_suffix() && IsAppleInternalBuild())
    {
      LODWORD(cf[0]) = 0;
      *buffer = 0;
      CFDictionaryGetTypeID();
      v28 = CFCreateWithPlistBytes();
      v29 = gLogCategory_AirPlayReceiverServer;
      if (gLogCategory_AirPlayReceiverServer <= 50)
      {
        if (gLogCategory_AirPlayReceiverServer == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_264;
          }

          v29 = gLogCategory_AirPlayReceiverServer;
        }

        if (v29 == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
      }

LABEL_264:
      Value = CFDictionaryGetValue(v28, @"controlCommand");
      if (!Value || (v62 = CFGetTypeID(Value), v62 != CFStringGetTypeID()) || (v63 = CFDictionaryGetValue(v28, @"controlParams")) != 0 && (v64 = CFGetTypeID(v63), v64 != CFDictionaryGetTypeID()))
      {
        APSLogErrorAt();
        v31 = 400;
        if (!v28)
        {
          goto LABEL_283;
        }

        goto LABEL_282;
      }

      if (!a3[4] && (LODWORD(cf[0]) = NetPerfCreate()) != 0 || (LODWORD(cf[0]) = CFObjectControlSync()) != 0)
      {
        APSLogErrorAt();
        v31 = 500;
        if (!v28)
        {
          goto LABEL_283;
        }

        goto LABEL_282;
      }

      v65 = *(a3[1] + 38);
      if (!*(v65 + 8216))
      {
        strnicmp_prefix();
        inited = HTTPHeader_InitResponse();
        if (inited)
        {
          v67 = inited;
          APSLogErrorAt();
          v31 = 500;
          goto LABEL_279;
        }

        *(v65 + 8528) = 0;
      }

      v67 = HTTPMessageSetBody();
      if (v67)
      {
        APSLogErrorAt();
        v31 = 500;
      }

      else
      {
        v31 = 200;
      }

      v7 = (a2 + 24);
LABEL_279:
      LODWORD(cf[0]) = v67;
      if (*buffer)
      {
        CFRelease(*buffer);
      }

      if (!v28)
      {
LABEL_283:
        if (v31 != 200 && gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
LABEL_286:
          LogPrintF();
        }

LABEL_287:
        if (v31 == 200)
        {
          v31 = 200;
LABEL_342:
          APSVersionUtilsGetShortVersionLength();
          v84 = HTTPHeader_SetField();
          if (!v84 && (v31 != 401 || (v84 = HTTPMakeTimedNonce()) == 0 && (v84 = HTTPHeader_SetField()) == 0))
          {
            mach_absolute_time();
            UpTicksToSecondsF();
            if (v69 > 2.0)
            {
              v70 = *(a2 + 8216);
              if (v70 >= 1)
              {
                v71 = a2 + v70 + 24;
                v72 = v7;
                do
                {
                  v73 = *v72;
                  if (v73 == 10 || v73 == 13)
                  {
                    break;
                  }

                  ++v72;
                }

                while (v72 < v71);
              }

              if (gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }
            }

            if ((v81 & 1) == 0)
            {
              LogHTTP();
            }

            if ((v82 & 1) == 0 && gLogCategory_AirPlayReceiverServerHTTP <= 50 && (gLogCategory_AirPlayReceiverServerHTTP != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            HTTPHeader_SetField();
            UpTicksToMilliseconds();
            HTTPHeader_SetField();
            v84 = HTTPConnectionSendResponse();
            if (!v84)
            {
              a3[3] = a3[3] + 1;
              return v84;
            }
          }

LABEL_368:
          APSLogErrorAt();
          return v84;
        }

LABEL_340:
        v84 = HTTPHeader_InitResponse();
        if (v84)
        {
          goto LABEL_368;
        }

        *(v6 + 8528) = 0;
        v84 = HTTPHeader_SetField();
        if (v84)
        {
          goto LABEL_368;
        }

        goto LABEL_342;
      }

LABEL_282:
      CFRelease(v28);
      goto LABEL_283;
    }

    Int64 = CFObjectGetInt64();
    if (!Int64)
    {
      if (*(*(*a3 + 20) + 316) == 2 || APSIsRestrictiveHKAccessControl())
      {
        if (_IsRequestUnrestricted())
        {
          goto LABEL_60;
        }

LABEL_251:
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *buffer = 0;
        cf[0] = 0;
        HTTPGetHeaderField();
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v31 = 403;
        goto LABEL_340;
      }

      v41 = 1;
      if (!CFObjectGetPropertyInt64Sync())
      {
        v41 = CFObjectGetPropertyInt64Sync() != 0;
      }

      PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
      if (!PropertyInt64Sync || v41)
      {
        if (PropertyInt64Sync == 0 && !v41)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v43 = *(a3[1] + 48);
        if (v43 != 4 && v43 != 64 && v43 != 128)
        {
          goto LABEL_60;
        }
      }

      if (!_IsRequestUnrestricted() && (strnicmpx() || strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix()))
      {
        goto LABEL_251;
      }
    }

LABEL_60:
    v27 = CFObjectGetInt64();
    if (Int64 && v27)
    {
LABEL_62:
      *(a3 + 193) = 1;
      goto LABEL_69;
    }

    if (*(a3 + 193))
    {
      goto LABEL_69;
    }

    if (strnicmpx())
    {
      v7 = (a2 + 24);
      if (strnicmpx())
      {
LABEL_104:
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        *cf = 0u;
        v98 = 0u;
        CFObjectGetPropertyCStringSync();
        v32 = a3[37];
        if (v32)
        {
          v33 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v33)
          {
            v33(v32);
          }
        }

        goto LABEL_62;
      }

      if (strnicmp_suffix() && strnicmp_suffix())
      {
LABEL_246:
        if (!strnicmp_suffix())
        {
          goto LABEL_69;
        }

        goto LABEL_104;
      }
    }

    else
    {
      v7 = (a2 + 24);
      if (strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix())
      {
        goto LABEL_246;
      }
    }

LABEL_69:
    if (*(*a3 + 250) && CFObjectGetInt64())
    {
      *buffer = 0;
      LODWORD(cf[0]) = 0;
      if (HTTPScanFHeaderValue() == 1)
      {
        if (gAirTunesDACPClient && *gAirTunesDACPClient == 1684104048)
        {
          *(gAirTunesDACPClient + 41456) = *buffer;
        }

        else
        {
          APSLogErrorAt();
        }
      }

      if (HTTPScanFHeaderValue() == 1)
      {
        if (gAirTunesDACPClient && *gAirTunesDACPClient == 1684104048)
        {
          *(gAirTunesDACPClient + 41464) = cf[0];
        }

        else
        {
          APSLogErrorAt();
        }
      }
    }

    v84 = HTTPHeader_InitResponse();
    if (v84)
    {
      goto LABEL_368;
    }

    *(v6 + 8528) = 0;
    if (!strnicmpx())
    {
      v30 = 1869640819;
      goto LABEL_109;
    }

    if (!strnicmpx())
    {
      v30 = 1936749165;
      goto LABEL_108;
    }

    if (!strnicmpx())
    {
      v30 = 1718383464;
      goto LABEL_108;
    }

    v7 = (a2 + 24);
    if (!strnicmpx())
    {
      v30 = 1718839394;
      goto LABEL_109;
    }

    if (!strnicmpx())
    {
      v30 = 1835100003;
      goto LABEL_109;
    }

    if (!strnicmpx())
    {
      v30 = 1634624360;
      goto LABEL_108;
    }

    v30 = 1937012080;
    if (!strnicmpx())
    {
      v30 = 1937011316;
      goto LABEL_108;
    }

    if (!strnicmpx())
    {
      v30 = 1936875892;
      goto LABEL_108;
    }

    if (!strnicmpx())
    {
      v30 = 1936027749;
      goto LABEL_108;
    }

    if (!strnicmpx())
    {
      v30 = 1936027768;
      goto LABEL_108;
    }

    if (!strnicmpx())
    {
      v30 = 1735422573;
      goto LABEL_108;
    }

    if (!strnicmpx())
    {
      v30 = 1919119972;
      goto LABEL_108;
    }

    if (!strnicmpx())
    {
      v30 = 1634627171;
      goto LABEL_108;
    }

    if (strnicmpx())
    {
      v7 = (a2 + 24);
      if (strnicmpx())
      {
        if (strnicmpx())
        {
          if (strnicmpx())
          {
            if (!*(*a3 + 248) || strnicmpx())
            {
              v31 = 501;
LABEL_418:
              v6 = v83;
              goto LABEL_340;
            }

            if (strnicmp_suffix())
            {
              if (strnicmp_suffix())
              {
                if (strnicmp_suffix())
                {
                  if (strnicmp_suffix())
                  {
                    goto LABEL_415;
                  }

LABEL_453:
                  v30 = 1886679924;
                  goto LABEL_108;
                }

                v30 = 1886611505;
              }

              else
              {
                v30 = 1936748658;
              }
            }

            else
            {
              v30 = 1886414964;
            }

LABEL_108:
            v7 = (a2 + 24);
            goto LABEL_109;
          }

          if (strnicmp_suffix())
          {
            if (!strnicmp_suffix())
            {
              v30 = 1668247142;
              goto LABEL_108;
            }

            if (!strnicmp_suffix())
            {
              v30 = 1801807216;
              goto LABEL_108;
            }

            if (!strnicmp_suffix())
            {
              v30 = 1634562925;
              goto LABEL_108;
            }

            if (strnicmp_suffix())
            {
              if (!*(*a3 + 248) || strnicmp_suffix())
              {
                if (!strnicmp_suffix())
                {
                  v30 = 1768842863;
                  goto LABEL_108;
                }

                if (!strnicmp_suffix())
                {
                  v30 = 1836348024;
                  goto LABEL_108;
                }

                if (!strnicmp_suffix())
                {
                  v30 = 1886613612;
                  goto LABEL_108;
                }

                if (!strnicmp_suffix())
                {
                  v30 = 1702064240;
                  goto LABEL_108;
                }

                if (!strnicmp_suffix())
                {
                  v30 = 1886417780;
                  goto LABEL_108;
                }

                if (!strnicmp_suffix())
                {
                  v30 = 1885434725;
                  goto LABEL_108;
                }

                if (!strnicmp_suffix())
                {
                  v30 = 1885435493;
                  goto LABEL_108;
                }

                if (strnicmp_suffix())
                {
                  if (strnicmp_suffix())
                  {
                    if (!strnicmp_suffix())
                    {
                      v30 = 1885432944;
                      goto LABEL_108;
                    }

                    if (!strnicmp_suffix())
                    {
                      v31 = 551;
                      goto LABEL_416;
                    }

                    if (!*(*a3 + 248))
                    {
                      goto LABEL_415;
                    }

                    if (!strnicmp_suffix())
                    {
                      v30 = 1633907822;
                      goto LABEL_108;
                    }

                    if (!strnicmp_suffix())
                    {
                      v30 = 1885435252;
                      goto LABEL_108;
                    }

                    if (!strnicmp_suffix())
                    {
                      v30 = 1735422066;
                      goto LABEL_108;
                    }

                    if (!strnicmp_suffix())
                    {
                      v30 = 1886151033;
                      goto LABEL_108;
                    }

                    if (!strnicmp_suffix())
                    {
                      v30 = 1886545267;
                      goto LABEL_108;
                    }

                    if (strnicmp_suffix())
                    {
                      if (strnicmp_suffix())
                      {
                        if (!strnicmp_suffix())
                        {
                          v30 = 1920168547;
                          goto LABEL_108;
                        }

                        if (!strnicmp_suffix())
                        {
                          v30 = 1920365171;
                          goto LABEL_108;
                        }

                        if (!strnicmp_suffix())
                        {
                          v30 = 1936941938;
                          goto LABEL_108;
                        }

                        if (!strnicmp_suffix())
                        {
                          v30 = 1937010544;
                          goto LABEL_108;
                        }

                        if (!strnicmp_suffix())
                        {
                          goto LABEL_453;
                        }

                        if (!strnicmp_suffix())
                        {
                          v30 = 1886809964;
                          goto LABEL_108;
                        }

                        goto LABEL_415;
                      }

                      v78 = 24948;
                    }

                    else
                    {
                      v78 = 29797;
                    }

                    v30 = v78 | 0x72610000u;
                    goto LABEL_108;
                  }

                  v77 = 29296;
                }

                else
                {
                  v77 = 24944;
                }

                v30 = v77 | 0x70610000u;
                goto LABEL_108;
              }

              v76 = 29490;
            }

            else
            {
              v76 = 12853;
            }

            v30 = v76 | 0x66700000u;
            goto LABEL_108;
          }

          v30 = 1668246893;
        }

        else
        {
          if (strnicmp_suffix())
          {
            if (!*(*a3 + 248))
            {
              v31 = 404;
              goto LABEL_418;
            }

            v30 = 1735615346;
            if (!strnicmp_suffix())
            {
              v30 = 1735616870;
              goto LABEL_108;
            }

            if (!strnicmp_suffix())
            {
              v30 = 1735616614;
              goto LABEL_108;
            }

            if (!strnicmp_suffix())
            {
              v30 = 1735616561;
              goto LABEL_108;
            }

            if (!strnicmp_suffix())
            {
              v30 = 1886283375;
              goto LABEL_108;
            }

            if (!strnicmp_suffix())
            {
              goto LABEL_108;
            }

            if (!strnicmp_suffix())
            {
              v30 = 1735222134;
              goto LABEL_108;
            }

            if (!strnicmp_suffix())
            {
              v30 = 1735684980;
              goto LABEL_108;
            }

LABEL_415:
            v31 = 404;
LABEL_416:
            v7 = (a2 + 24);
            v6 = v83;
            goto LABEL_340;
          }

          v30 = 1768842863;
        }
      }

      else
      {
        v30 = 1952741230;
      }
    }

    else
    {
      *buffer = 0;
      cf[0] = 0;
      v7 = (a2 + 24);
      HTTPGetHeaderField();
      if (strnicmpx() && strnicmpx())
      {
        if (URLGetNextPathSegment())
        {
          APSLogErrorAt();
        }

        else
        {
          *buffer = "audio";
          cf[0] = 5;
          URLGetNextPathSegment();
          if (!strnicmpx())
          {
            v30 = 1936942192;
            goto LABEL_109;
          }
        }

        v31 = 400;
        goto LABEL_418;
      }
    }

LABEL_109:
    v85 = 0;
    if (!a3[35])
    {
      APSLogErrorAt();
      v31 = 400;
      v6 = v83;
LABEL_235:
      if (v85)
      {
        CFRelease(v85);
      }

      if (v31 != 200 && gLogCategory_AirPlayReceiverServer <= 90 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_286;
      }

      goto LABEL_287;
    }

    v86 = 0;
    Dictionary = HTTPMessageCreateDictionary();
    v35 = MEMORY[0x277CEA360];
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Dictionary);
    if (MutableCopy)
    {
      CFDictionarySetData();
      CFDictionarySetCString();
      if (v30 <= 1918989412)
      {
        if (v30 == 1718383464)
        {
          LOWORD(cf[0]) = 0;
          *buffer = 0;
          v86 = HTTPParseRTPInfo();
          if (!v86)
          {
            CFDictionarySetInt64();
LABEL_172:
            CFDictionarySetInt64();
            goto LABEL_173;
          }

LABEL_443:
          APSLogErrorAt();
          goto LABEL_173;
        }

        if (v30 == 1885435252)
        {
          *buffer = 0;
          cf[0] = 0;
          v86 = HTTPGetHeaderField();
          if (!v86)
          {
            v86 = CFDictionarySetCString();
            if (!v86)
            {
              goto LABEL_173;
            }
          }

          goto LABEL_443;
        }

        if (v30 != 1886809964)
        {
LABEL_173:
          v44 = v86;
          goto LABEL_174;
        }

        _GetFloatValueFromHTTPMessageURL(a2, "volume", &v86);
        if (v86)
        {
          goto LABEL_443;
        }
      }

      else
      {
        if (v30 <= 1936941937)
        {
          if (v30 != 1918989413)
          {
            if (v30 == 1936749165)
            {
              *buffer = 0;
              cf[0] = 0;
              HTTPGetHeaderField();
              if (!*(a2 + 8544))
              {
                v86 = 0;
                goto LABEL_173;
              }

              if (strnicmp_prefix() && strnicmpx())
              {
                if (strnicmpx() && strnicmpx() && strnicmpx())
                {
                  if (gLogCategory_AirPlayReceiverServer <= 90 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  v86 = -6705;
                }

                goto LABEL_173;
              }

              LODWORD(v89) = 0;
              v86 = HTTPParseRTPInfo();
              if (!v86)
              {
                goto LABEL_172;
              }

              goto LABEL_443;
            }

            goto LABEL_173;
          }

          _GetFloatValueFromHTTPMessageURL(a2, "value", &v86);
          if (v86)
          {
            goto LABEL_443;
          }

          CFDictionarySetDouble();
          cf[0] = 0;
          v89 = 0;
          __n = 0;
          v88 = 0;
          v39 = HTTPMessageGetOrCopyFormVariable();
          if (v39)
          {
            v40 = v39;
            if (v39 != -6727)
            {
              APSLogErrorAt();
            }
          }

          else if (v89 < 0x40 && (__strlcpy_chk(), sscanf(buffer, "%d", &v88) == 1))
          {
            v40 = 0;
          }

          else
          {
            APSLogErrorAt();
            v40 = -6705;
          }

          v86 = v40;
          if (__n)
          {
            free(__n);
            v40 = v86;
          }

          if (!v40 && v88 >= 1)
          {
            v38 = *MEMORY[0x277CBED28];
            v37 = @"forInterstitial";
            goto LABEL_144;
          }

          v44 = 0;
          v86 = 0;
LABEL_174:
          v45 = v44;
          if (Dictionary)
          {
            CFRelease(Dictionary);
            v45 = v86;
          }

          if (MutableCopy && v45)
          {
            CFRelease(MutableCopy);
            MutableCopy = 0;
          }

          if (v44)
          {
            APSLogErrorAt();
            v31 = 400;
          }

          else
          {
            v46 = -71934;
            v47 = a3[35];
            v48 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v48)
            {
              v46 = v48(v47, v30, MutableCopy, &v85);
            }

            v31 = _MapReqProcReturnCodeToHTTPReturnCode(v46);
            if (gLogCategory_AirPlayReceiverServer <= 10 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            if (v31 == 200)
            {
              v49 = v85;
              v88 = 0;
              __n = 0;
              if (!a3[35])
              {
                goto LABEL_320;
              }

              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              memset(buffer, 0, sizeof(buffer));
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              *cf = 0u;
              v98 = 0u;
              v89 = 0;
              if (v85)
              {
                CFStringGetTypeID();
                TypedValue = CFDictionaryGetTypedValue();
                CFDictionaryGetData();
                if (TypedValue)
                {
                  CFStringGetCString(TypedValue, buffer, 128, 0x8000100u);
                }
              }

              time(0);
              HTTPMakeDateString();
              HTTPHeader_SetField();
              if (HTTPMessageSetBody())
              {
                APSLogErrorAt();
                goto LABEL_322;
              }

              if (v30 > 1885434724)
              {
                if (v30 <= 1919119971)
                {
                  if ((v30 == 1885434725 || v30 == 1885435493) && v49 && CFDictionaryGetValue(v49, *MEMORY[0x277CEA368]))
                  {
                    Data = CFDictionaryGetData();
                    memcpy(a3 + 209, Data, __n);
                    v58 = CFDictionaryGetData();
                    memcpy(a3 + 241, v58, __n);
                    CFRetain(a3[1]);
                    *(v83 + 9672) = a3[1];
                    *(v83 + 9712) = _HandlePairVerifyCoreUtilsCompletion;
                  }

                  goto LABEL_231;
                }

                if (v30 == 1919119972)
                {
                  CFDictionaryGetInt64();
                  if (v88)
                  {
                    goto LABEL_322;
                  }

                  v88 = HTTPHeader_SetField();
                  if (v88)
                  {
                    goto LABEL_322;
                  }

                  goto LABEL_231;
                }

                if (v30 != 1920365171)
                {
                  if (v30 == 1936942192)
                  {
                    v88 = _HTTPSetField(v49, @"Transport");
                    if (v88)
                    {
                      goto LABEL_322;
                    }

                    v88 = _HTTPSetField(v49, @"Session");
                    if (v88)
                    {
                      goto LABEL_322;
                    }

                    v88 = _HTTPSetField(v49, @"Audio-Jack-Status");
                    if (v88)
                    {
                      goto LABEL_322;
                    }
                  }

                  goto LABEL_231;
                }

                v59 = CFDictionaryGetInt64();
                if (!v88)
                {
                  v60 = _MapReqProcReturnCodeToHTTPReturnCode(v59);
                  if (v60 != 200)
                  {
                    v31 = v60;
                    APSLogErrorAt();
                    goto LABEL_323;
                  }

                  v88 = HTTPHeader_InitResponse();
                  if (!v88)
                  {
                    HTTPHeader_SetField();
                    HTTPHeader_SetField();
                    goto LABEL_231;
                  }
                }

LABEL_322:
                APSLogErrorAt();
                v31 = 500;
LABEL_323:
                v7 = (a2 + 24);
LABEL_324:
                APSLogErrorAt();
                if (!MutableCopy)
                {
                  goto LABEL_234;
                }

                goto LABEL_233;
              }

              if (v30 > 1718839393)
              {
                if (v30 != 1718839394)
                {
                  if (v30 == 1869640819)
                  {
                    v88 = _HTTPSetField(v49, @"Public");
                    if (v88)
                    {
                      goto LABEL_322;
                    }
                  }

                  goto LABEL_231;
                }
              }

              else if (v30 != 1718383464)
              {
                if (v30 != 1718645554)
                {
LABEL_231:
                  v31 = 200;
                  goto LABEL_232;
                }

                if (!v49)
                {
                  goto LABEL_322;
                }

                v51 = CFDictionaryGetValue(v49, *v35);
                if (!v51)
                {
                  goto LABEL_322;
                }

                v52 = v51;
                CFRetain(v51);
                Length = CFDataGetLength(v52);
                v54 = CFDictionaryGetInt64();
                if (!v88)
                {
                  CFRetain(a1);
                  v55 = *(a1 + 304);
                  v55[1209] = a1;
                  v55[1210] = v52;
                  v55[1211] = Length;
                  v55[1212] = v54;
                  v55[1214] = _FPSetup2ResponseCompletionHandler;
                  v56 = CFDictionaryGetInt64();
                  if (!v88)
                  {
                    v31 = _MapReqProcReturnCodeToHTTPReturnCode(v56);
                    v88 = HTTPHeader_InitResponse();
                    v88 = HTTPMessageSetBody();
                    v7 = (a2 + 24);
                    if (v88)
                    {
                      APSLogErrorAt();
                      v31 = 500;
                    }

                    else if (v31 == 200)
                    {
                      v31 = 200;
                      if (!MutableCopy)
                      {
                        goto LABEL_234;
                      }

                      goto LABEL_233;
                    }

                    goto LABEL_324;
                  }

                  goto LABEL_322;
                }

LABEL_320:
                APSLogErrorAt();
                goto LABEL_231;
              }

              if (CFDictionaryContainsKey(v49, @"RTP-Info"))
              {
                v88 = _HTTPSetField(v49, @"RTP-Info");
                if (v88)
                {
                  goto LABEL_322;
                }
              }

              goto LABEL_231;
            }

            APSLogErrorAt();
          }

LABEL_232:
          v7 = (a2 + 24);
          if (!MutableCopy)
          {
LABEL_234:
            v6 = v83;
            goto LABEL_235;
          }

LABEL_233:
          CFRelease(MutableCopy);
          goto LABEL_234;
        }

        if (v30 != 1936941938)
        {
          if (v30 != 1936942192)
          {
            goto LABEL_173;
          }

          v37 = @"SDPSessionType";
          v38 = @"audio";
LABEL_144:
          CFDictionarySetValue(MutableCopy, v37, v38);
          goto LABEL_173;
        }

        _GetFloatValueFromHTTPMessageURL(a2, "position", &v86);
        if (v86)
        {
          goto LABEL_443;
        }
      }

      CFDictionarySetDouble();
      goto LABEL_173;
    }

    APSLogErrorAt();
    v44 = -6728;
    v86 = -6728;
    goto LABEL_174;
  }

  v11 = a3[37];
  v13 = *a3;
  v12 = a3[1];
  v14 = *(*a3 + 3);
  v15 = *(v12 + 48);
  v16 = *(*a3 + 27);
  *buffer = *(v12 + 228);
  *&buffer[12] = *(v12 + 15);
  cf[0] = 0;
  v80 = v14;
  if (APReceiverRequestProcessorGetClassID_once != -1)
  {
    dispatch_once(&APReceiverRequestProcessorGetClassID_once, &__block_literal_global_303);
  }

  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    APSLogErrorAt();
    goto LABEL_49;
  }

  v79 = v16;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 568) = mach_absolute_time();
  *(DerivedStorage + 8) = v11;
  *(DerivedStorage + 16) = a1;
  *DerivedStorage = v13;
  if (v11)
  {
    CFRetain(v11);
    v19 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 140), 0x8000100u);
    if (APSIsDirectLinkInterface())
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v20)
      {
        v20(v11, @"IsWiredLink", *MEMORY[0x277CBED28]);
      }
    }

    v21 = *(a1 + 192);
    if (v21 == 4 || v21 == 128 || v21 == 64)
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v22)
      {
        v22(v11, @"IsP2PWiFi", *MEMORY[0x277CBED28]);
      }
    }
  }

  else
  {
    v19 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 140), 0x8000100u);
  }

  *(DerivedStorage + 424) = v80;
  *(DerivedStorage + 24) = v15;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v23 = *(a1 + 256);
  v24 = *buffer;
  *(DerivedStorage + 288) = *(a1 + 268);
  *(DerivedStorage + 304) = v24;
  *(DerivedStorage + 276) = v23;
  *(DerivedStorage + 316) = *&buffer[12];
  *(DerivedStorage + 120) = v10;
  *(DerivedStorage + 432) = v79;
  v25 = cf[0];
  a3[35] = cf[0];
  cf[0] = 0;
  if (v19)
  {
    CFRelease(v19);
LABEL_49:
    v84 = v17;
    v6 = v83;
    if (v17)
    {
      goto LABEL_368;
    }

    v25 = a3[35];
    goto LABEL_52;
  }

  v6 = v83;
LABEL_52:
  v7 = (a2 + 24);
  if (v25)
  {
    goto LABEL_53;
  }

  APSLogErrorAt();
  return -6728;
}