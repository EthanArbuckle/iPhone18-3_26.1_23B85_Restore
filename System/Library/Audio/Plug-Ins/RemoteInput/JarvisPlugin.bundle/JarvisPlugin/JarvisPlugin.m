void sub_11D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_1214(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  v3 = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v4 = v3;
    if (v3)
    {
      v5 = Weak;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_12B4;
      block[3] = &unk_8388;
      block[4] = Weak;
      dispatch_async(v4, block);
    }
  }
}

void sub_12B4(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    if ([objc_msgSend(+[AVOutputContext sharedSystemRemoteDisplayContext](AVOutputContext "sharedSystemRemoteDisplayContext")] == &dword_0 + 2)
    {
      if (dword_C9B0 <= 50 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
      {
        sub_34D4();
      }

      [*(a1 + 32) createNewDevice];
    }

    else
    {
      if (dword_C9B0 <= 50 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
      {
        sub_34B8();
      }

      if ([*(*(a1 + 32) + 24) count])
      {
        v2 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:0];
        if (v2)
        {
          v3 = v2;
          [v2 stopRecordingWithOptionalForcedError:1919115630];
          [*(a1 + 32) destroyDevice:v3];
        }
      }
    }
  }

  v4 = *(a1 + 32);
}

void sub_14D4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v1);
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    *(*(a1 + 32) + 24) = 0;
  }
}

uint64_t sub_1828(const void *a1)
{
  if (dword_C9B0 <= 30 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
  {
    sub_3534();
  }

  return avvcDevice_clientDeadConnection(a1);
}

void sub_1898()
{
  if (dword_C9B0 <= 50 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
  {
    sub_3578();
  }
}

uint64_t sub_18FC()
{

  return LogPrintF();
}

void sub_2124(uint64_t a1)
{
  cf = 0;
  v37 = 0;
  v35 = 0;
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 176) streamDescription];
  v32 = *v3;
  v33 = v3[1];
  v34 = *(v3 + 4);
  if (dword_CAE0 <= 50 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
  {
    sub_3B7C(v2);
  }

  *(*(a1 + 32) + 160) = _Block_copy(*(a1 + 48));
  *(*(a1 + 32) + 144) = [[NSMutableDictionary alloc] initWithCapacity:{1, v32}];
  v4 = *(a1 + 32);
  if (!*(v4 + 144))
  {
    sub_3C74();
    v31 = 4294960568;
    goto LABEL_28;
  }

  v5 = *(v4 + 24);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v31 = 4294954514;
LABEL_27:
    APSLogErrorAt();
    goto LABEL_28;
  }

  v8 = v7(CMBaseObject, kAPEndpointStreamCarPlayAudioProperty_CarPlayAudioFormats, 0, &v37);
  if (v8)
  {
    v31 = v8;
    goto LABEL_27;
  }

  v9 = APCarPlayAudioFormatsCopyFormatInfoForStreamDescription();
  if (v9)
  {
    v31 = v9;
    sub_3BC0();
    goto LABEL_28;
  }

  v10 = *(*v2 + 3);
  v11 = FigEndpointStreamGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v12)
  {
    v31 = 4294954514;
    goto LABEL_27;
  }

  v13 = v12(v11, kAPEndpointStreamCarPlayAudioProperty_AudioFormatInfo, cf);
  if (v13)
  {
    v31 = v13;
    goto LABEL_27;
  }

  [*(*v2 + 22) streamDescription];
  v14 = *(*v2 + 1);
  v15 = APAudioSinkSharedMemRemoteCreate();
  if (v15)
  {
    v31 = v15;
    sub_3BE8();
    goto LABEL_28;
  }

  v16 = *(*v2 + 3);
  v17 = *(*v2 + 4);
  v18 = FigEndpointStreamGetCMBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v19)
  {
    v31 = 4294954514;
    goto LABEL_27;
  }

  v20 = v19(v18, kFigEndpointStreamProperty_AudioSink, v17);
  if (v20)
  {
    v31 = v20;
    goto LABEL_27;
  }

  v21 = *(*v2 + 4);
  v22 = *(CMBaseObjectGetVTable() + 16);
  if (*v22 < 2uLL)
  {
    v31 = 4294954515;
    goto LABEL_27;
  }

  v23 = v22[3];
  if (!v23)
  {
    v31 = 4294954514;
    goto LABEL_27;
  }

  v24 = v22[3];
  v25 = v23(v21);
  if (v25)
  {
    v31 = v25;
    goto LABEL_27;
  }

  [*(a1 + 32) insertStreamStartTimestamp:*(a1 + 40) returnOptions:&v35];
  v26 = *(*(a1 + 32) + 24);
  v27 = FigEndpointStreamResumeSync();
  if (v27)
  {
    v31 = v27;
    sub_3C10();
  }

  else
  {
    v28 = *v2;
    *(v28 + 120) = 0u;
    *(v28 + 104) = 0u;
    *(v28 + 88) = 0u;
    *(v28 + 72) = 0u;
    *(*v2 + 10) = *(*v2 + 8);
    *(*v2 + 32) = 3;
    *(*v2 + 48) = 1;
    v29 = *(*v2 + 21);
    APSPowerAssertionRaise();
    dispatch_source_set_timer(*(*v2 + 7), 0, 0x4C4B40uLL, 0xFAuLL);
    dispatch_resume(*(*v2 + 7));
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *v2, sub_1C68, kAPCarPlayAVVCNotification_StateIncompatibleWithAuxIn, 0, 0);
    if (dword_CAE0 <= 30 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
    {
      sub_3C38();
    }

    v31 = 0;
  }

LABEL_28:
  [*v2 actionCompleted:@"Start recording" WithResult:v31];
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v35)
  {
    CFRelease(v35);
  }
}

void sub_2668(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (!v2[48])
  {
    goto LABEL_12;
  }

  if (dword_CAE0 <= 50)
  {
    if (dword_CAE0 != -1 || (v4 = _LogCategory_Initialize(), v2 = *v3, v4))
    {
      v16 = *(v2 + 39);
      LogPrintF();
      v2 = *v3;
    }
  }

  v2[48] = 0;
  dispatch_suspend(*(*v3 + 7));
  v5 = *(*v3 + 3);
  v6 = FigEndpointStreamSuspendSync();
  if (v6)
  {
    v12 = v6;
    sub_3C88();
  }

  else
  {
    v7 = *(*v3 + 4);
    v8 = *(CMBaseObjectGetVTable() + 16);
    if (*v8 < 2uLL)
    {
      v12 = -12781;
    }

    else
    {
      v9 = v8[4];
      if (v9)
      {
        v10 = v8[4];
        v11 = v9(v7);
        if (!v11)
        {
          sub_3CDC(v3);
LABEL_12:
          sub_3DD8(&v17);
          v12 = v17;
          goto LABEL_19;
        }

        v12 = v11;
      }

      else
      {
        v12 = -12782;
      }
    }

    APSLogErrorAt();
  }

  if (dword_CAE0 <= 90 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
  {
    sub_3C98();
  }

LABEL_19:
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  [*(a1 + 32) actionCompleted:@"Stop recording" WithResult:{v14, v16}];
  v15 = *(*(a1 + 32) + 160);
  if (v15)
  {
    _Block_release(v15);
    *(*v3 + 20) = 0;
  }
}

void *sub_28F8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  if (v2)
  {
    _Block_release(v2);
    *(*(a1 + 32) + 160) = 0;
  }

  result = _Block_copy(*(a1 + 40));
  *(*(a1 + 32) + 160) = result;
  return result;
}

uint64_t avvcDevice_clientDeadConnection(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigEndpointStreamGetTypeID())
  {

    return _APEndpointStreamCarPlayAudioRemote_ServerDied(a1);
  }

  else
  {
    v3 = CFGetTypeID(a1);
    if (v3 == FigEndpointAudioSinkGetTypeID())
    {

      return _APAudioSinkSharedMemRemote_ServerDied(a1);
    }

    else
    {
      v4 = CFGetTypeID(a1);
      result = FigEndpointGetTypeID();
      if (v4 == result)
      {

        return _APEndpointCarPlayRemote_ServerDied(a1);
      }
    }
  }

  return result;
}

uint64_t sub_310C()
{

  return LogPrintF();
}

void sub_3330(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    if (CFEqual(*(a1 + 40), kFigEndpointNotification_EndpointActivated))
    {
      [*(a1 + 32) createNewDevice];
      goto LABEL_12;
    }

    if (CFEqual(*(a1 + 40), kFigEndpointNotification_EndpointDeactivated))
    {
      if (*(a1 + 48) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v2 = *(a1 + 48);
      }

      else
      {
        if (![*(*(a1 + 32) + 24) count])
        {
          goto LABEL_12;
        }

        v2 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:0];
      }

      if (v2)
      {
        [v2 stopRecordingWithOptionalForcedError:1919115630];
        [*(a1 + 32) destroyDevice:v2];
      }
    }
  }

LABEL_12:
  v3 = *(a1 + 32);
}

uint64_t sub_3CDC(const void **a1)
{
  v2 = *(*a1 + 3);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 56);
  if (v5)
  {
    v6 = *(VTable + 8) + 56;
    v5(CMBaseObject, kFigEndpointStreamProperty_AudioSink, 0);
  }

  v7 = *a1;
  v8 = *(*a1 + 4);
  if (v8)
  {
    CFRelease(v8);
    *(*a1 + 4) = 0;
    v7 = *a1;
  }

  *(*a1 + 18) = 0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *a1, kAPCarPlayAVVCNotification_StateIncompatibleWithAuxIn, *(*a1 + 2));
  v10 = *(*a1 + 21);

  return _APSPowerAssertionRelease(v10);
}

uint64_t sub_3DD8(uint64_t result)
{
  v1 = result;
  if (dword_CAE0 <= 30)
  {
    if (dword_CAE0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_310C();
    }
  }

  *v1 = 0;
  return result;
}