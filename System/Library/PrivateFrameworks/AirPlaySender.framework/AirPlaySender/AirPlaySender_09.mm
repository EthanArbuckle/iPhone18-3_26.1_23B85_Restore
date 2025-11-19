void vdsink_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  vdsink_networkStop();
  v1 = DerivedStorage[19];
  if (v1)
  {
    dispatch_release(v1);
  }

  v2 = DerivedStorage[18];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = DerivedStorage[20];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[20] = 0;
  }

  v4 = DerivedStorage[21];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[21] = 0;
  }

  v5 = DerivedStorage[30];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[30] = 0;
  }

  v6 = DerivedStorage[31];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[31] = 0;
  }

  v7 = DerivedStorage[32];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[32] = 0;
  }

  v8 = DerivedStorage[1];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[1] = 0;
  }

  v9 = DerivedStorage[2];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[2] = 0;
  }

  v10 = DerivedStorage[12];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[12] = 0;
  }

  v11 = DerivedStorage[13];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[13] = 0;
  }

  v12 = DerivedStorage[14];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[14] = 0;
  }

  v13 = DerivedStorage[11];
  if (v13)
  {
    _Block_release(v13);
    DerivedStorage[11] = 0;
  }

  v14 = DerivedStorage[3];
  if (v14)
  {
    dispatch_release(v14);
    DerivedStorage[3] = 0;
  }

  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Finalize_cold_1();
  }
}

uint64_t vdsink_networkStop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 272))
  {
    v2 = *(DerivedStorage + 280);
    if ((v2 & 0x80000000) == 0)
    {
      if (close(v2) && *__error())
      {
        __error();
      }

      *(v1 + 280) = -1;
    }

    SendSelfConnectedLoopbackMessage();
    v3 = pthread_join(*(v1 + 264), 0);
    *(v1 + 272) = 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + 320);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 320) = 0;
  }

  v5 = *(v1 + 280);
  if ((v5 & 0x80000000) == 0)
  {
    if (close(v5) && *__error())
    {
      __error();
    }

    *(v1 + 280) = -1;
  }

  result = *(v1 + 284);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    *(v1 + 284) = -1;
  }

  if (v3)
  {
    if (gLogCategory_APVirtualDisplayTestSink <= 60)
    {
      if (gLogCategory_APVirtualDisplayTestSink != -1)
      {
        return vdsink_networkStop_cold_1();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return vdsink_networkStop_cold_1();
      }
    }
  }

  return result;
}

void __vdsink_getVirtualDisplaySizeOverrideFromPrefs_block_invoke()
{
  v0 = CFPreferencesCopyValue(@"mirroring_resolution", @"com.apple.coremedia", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    IntValue = 0.0;
    if (v2 == CFArrayGetTypeID())
    {
      if (gLogCategory_APVirtualDisplayTestSink <= 50 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
      {
        __vdsink_getVirtualDisplaySizeOverrideFromPrefs_block_invoke_cold_1();
      }

      v4 = 0.0;
      if (CFArrayGetCount(v1) >= 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          v7 = CFGetTypeID(ValueAtIndex);
          if (v7 == CFStringGetTypeID())
          {
            IntValue = CFStringGetIntValue(v6);
          }
        }

        v8 = CFArrayGetValueAtIndex(v1, 1);
        if (v8)
        {
          v9 = v8;
          v10 = CFGetTypeID(v8);
          if (v10 == CFStringGetTypeID())
          {
            v4 = CFStringGetIntValue(v9);
          }
        }
      }
    }

    else
    {
      v4 = 0.0;
    }

    CFRelease(v1);
    if (IntValue > 0.0 && v4 > 0.0)
    {
      if (IntValue <= v4)
      {
        *&v11 = v4;
      }

      else
      {
        *&v11 = IntValue;
      }

      vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0 = v11;
      if (IntValue >= v4)
      {
        *&v12 = v4;
      }

      else
      {
        *&v12 = IntValue;
      }

      vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1 = v12;
    }
  }
}

uint64_t vdsink_Start(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Start_cold_1();
  }

  if (*(DerivedStorage + 4))
  {
    vdsink_Start_cold_2();
    v5 = 4294954516;
    if (!a3)
    {
      return v5;
    }

    goto LABEL_6;
  }

  v5 = 0;
  *(DerivedStorage + 4) = 2;
  if (a3)
  {
LABEL_6:
    v6 = *(DerivedStorage + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __vdsink_Start_block_invoke;
    v8[3] = &unk_27849C228;
    v8[4] = a3;
    v9 = v5;
    dispatch_async(v6, v8);
  }

  return v5;
}

uint64_t vdsink_Stop(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Stop_cold_1();
  }

  if (*(DerivedStorage + 4) != 2)
  {
    vdsink_Stop_cold_2();
    v4 = 4294954516;
    if (!a2)
    {
      return v4;
    }

    goto LABEL_11;
  }

  *(DerivedStorage + 4) = 0;
  if (*DerivedStorage == 3)
  {
    vdsink_networkStop();
  }

  else
  {
    v4 = 0;
    if (*DerivedStorage != 2)
    {
      goto LABEL_10;
    }

    dispatch_semaphore_wait(*(DerivedStorage + 152), 0xFFFFFFFFFFFFFFFFLL);
  }

  v4 = 0;
LABEL_10:
  if (a2)
  {
LABEL_11:
    v5 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __vdsink_Stop_block_invoke;
    block[3] = &unk_27849C250;
    block[4] = a2;
    dispatch_async(v5, block);
  }

  return v4;
}

uint64_t vdsink_Suspend()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Suspend_cold_1();
  }

  if (DerivedStorage[1] == 2)
  {
    DerivedStorage[1] = 1;
    if (*DerivedStorage == 3)
    {
      vdsink_networkStop();
    }

    return 0;
  }

  else
  {
    vdsink_Suspend_cold_2();
    return 4294954516;
  }
}

uint64_t vdsink_Resume(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Resume_cold_1();
  }

  if (!DerivedStorage[1])
  {
    vdsink_Resume_cold_8();
    return 4294954516;
  }

  if (*DerivedStorage != 3)
  {
    if (*DerivedStorage == 2)
    {
      global_queue = dispatch_get_global_queue(2, 0);
      dispatch_async_f(global_queue, DerivedStorage, vdsink_fileSubmitFrames);
    }

    goto LABEL_35;
  }

  v4 = CMBaseObjectGetDerivedStorage();
  if (*(v4 + 272))
  {
    vdsink_Resume_cold_2();
    v8 = 4294960577;
    goto LABEL_47;
  }

  v5 = v4;
  v6 = *(v4 + 280);
  if ((v6 & 0x80000000) == 0)
  {
    if (close(v6) && *__error())
    {
      __error();
    }

    *(v5 + 280) = -1;
  }

  *&v15.sa_len = 0;
  *&v15.sa_data[6] = 0;
  v17 = 0;
  v16 = 0;
  v7 = socket(2, 1, 6);
  if (v7 < 0)
  {
    if (*__error())
    {
      v8 = *__error();
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 4294960596;
    }

    APSLogErrorAt();
    goto LABEL_46;
  }

LABEL_17:
  v14 = 1;
  setsockopt(v7, 0xFFFF, 4130, &v14, 4u);
  v18 = 1;
  if (setsockopt(v7, 0xFFFF, 4, &v18, 4u))
  {
    if (!*__error())
    {
      v8 = 4294960596;
      goto LABEL_40;
    }

    v8 = *__error();
    if (v8)
    {
      goto LABEL_40;
    }
  }

  *&v15.sa_len = 0x100007F28230210;
  *&v15.sa_data[6] = 0;
  v9 = bind(v7, &v15, 0x10u);
  if (v9)
  {
    v8 = v9;
    vdsink_Resume_cold_3();
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_46;
  }

  if (listen(v7, 5))
  {
    if (*__error())
    {
      v8 = *__error();
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v8 = 4294960596;
    }

LABEL_40:
    APSLogErrorAt();
    if ((v7 & 0x80000000) == 0)
    {
LABEL_41:
      if (close(v7) && *__error())
      {
        __error();
      }
    }

LABEL_46:
    APSLogErrorAt();
    goto LABEL_47;
  }

LABEL_24:
  *(v5 + 280) = v7;
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Resume_cold_4();
  }

  v10 = *(v5 + 284);
  if ((v10 & 0x80000000) == 0)
  {
    if (close(v10) && *__error())
    {
      __error();
    }

    *(v5 + 284) = -1;
  }

  v11 = OpenSelfConnectedLoopbackSocket();
  if (v11)
  {
    v8 = v11;
    vdsink_Resume_cold_5();
  }

  else
  {
    v12 = pthread_create((v5 + 264), 0, vdsink_networkThread, a1);
    if (!v12)
    {
      *(v5 + 272) = v5 + 264;
LABEL_35:
      v8 = 0;
      DerivedStorage[1] = 2;
      return v8;
    }

    v8 = v12;
    vdsink_Resume_cold_6();
  }

LABEL_47:
  if (gLogCategory_APVirtualDisplayTestSink <= 60 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Resume_cold_7();
  }

  APSLogErrorAt();
  return v8;
}

uint64_t vdsink_GetPropertyAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = v8(CMBaseObject, a2, *MEMORY[0x277CBECE8], &v14);
    v8 = v14;
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(DerivedStorage + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __vdsink_GetPropertyAsync_block_invoke;
  v12[3] = &unk_27849C2C0;
  v13 = v9;
  v12[4] = a4;
  v12[5] = v8;
  dispatch_async(v10, v12);
  return v9;
}

uint64_t vdsink_Perform(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    vdsink_Perform_cold_4();
LABEL_15:
    v7 = 4294954516;
    goto LABEL_16;
  }

  if (!CFEqual(a2, *MEMORY[0x277CD6628]))
  {
    if (gLogCategory_APVirtualDisplayTestSink <= 50 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
    {
      vdsink_Perform_cold_3();
    }

    goto LABEL_15;
  }

  v13 = 0;
  *&sampleTimingArray.duration.value = *MEMORY[0x277CC08F0];
  sampleTimingArray.duration.epoch = *(MEMORY[0x277CC08F0] + 16);
  sampleTimingArray.presentationTimeStamp = **&MEMORY[0x277CC0898];
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.presentationTimeStamp;
  v7 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v13);
  if (v7)
  {
    vdsink_Perform_cold_1();
    if (!a4)
    {
      return v7;
    }

    goto LABEL_17;
  }

  CMSetAttachment(v13, @"APClearScreen", *MEMORY[0x277CBED28], 0);
  if (*DerivedStorage == 1)
  {
    CMBufferQueueEnqueue(*(DerivedStorage + 16), v13);
  }

  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Perform_cold_2();
  }

  if (v13)
  {
    CFRelease(v13);
    if (!a4)
    {
      return v7;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (a4)
  {
LABEL_17:
    v8 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __vdsink_Perform_block_invoke;
    block[3] = &unk_27849C2E8;
    block[4] = a4;
    v11 = v7;
    dispatch_async(v8, block);
  }

  return v7;
}

uint64_t vdsink_SetDispatchQueue(uint64_t a1, NSObject *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = MEMORY[0x277D85CD0];
  }

  *(DerivedStorage + 24) = v5;
  dispatch_retain(v5);
  return 0;
}

uint64_t vdsink_SetEventHandler(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    a2 = _Block_copy(a2);
  }

  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    _Block_release(v4);
  }

  *(DerivedStorage + 88) = a2;
  return 0;
}

void vdsink_fileSubmitFrames(uint64_t a1)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  sbuf = 0;
  memset(&v20, 0, sizeof(v20));
  memset(&v19, 0, sizeof(v19));
  v2 = *(a1 + 168);
  v30 = *(a1 + 180);
  v18 = *(a1 + 204);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v3)
  {
    *(v27 + 6) = -12782;
    goto LABEL_24;
  }

  rhs = v30;
  lhs = v18;
  v4 = v3(v2, &rhs, &lhs);
  *(v27 + 6) = v4;
  if (v4)
  {
LABEL_24:
    vdsink_fileSubmitFrames_cold_5();
    goto LABEL_25;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v20, HostTimeClock);
  CMTimeMake(&v19, 1, 2);
  if (*(v23 + 24))
  {
LABEL_4:
    if (gLogCategory_APVirtualDisplayTestSink <= 50 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
    {
      vdsink_fileSubmitFrames_cold_3();
    }
  }

  else
  {
    while (1)
    {
      memset(&v18, 0, sizeof(v18));
      if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
      {
        vdsink_fileSubmitFrames_cold_1();
      }

      v6 = *(a1 + 168);
      v7 = *(a1 + 176);
      v8 = v23;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v9)
      {
        *(v27 + 6) = -12782;
LABEL_29:
        vdsink_fileSubmitFrames_cold_4();
        goto LABEL_25;
      }

      v10 = v9(v6, v7, 1, v8 + 3, &sbuf);
      *(v27 + 6) = v10;
      if (v10)
      {
        goto LABEL_29;
      }

      if (*(v23 + 24))
      {
        goto LABEL_4;
      }

      CMSampleBufferGetPresentationTimeStamp(&rhs, sbuf);
      lhs = v20;
      CMTimeAdd(&v18, &lhs, &rhs);
      v17 = v18;
      while (1)
      {
        v11 = CMClockGetHostTimeClock();
        CMClockGetTime(&lhs, v11);
        v30 = v17;
        CMTimeSubtract(&rhs, &v30, &lhs);
        v12 = (CMTimeGetSeconds(&rhs) * 1000000.0);
        if (v12 < 1)
        {
          break;
        }

        usleep(v12);
      }

      v13 = *(a1 + 144);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = __vdsink_fileSubmitFrames_block_invoke;
      v14[3] = &unk_27849C298;
      v14[6] = a1;
      v14[7] = sbuf;
      v15 = v18;
      v16 = v19;
      v14[4] = &v26;
      v14[5] = &v22;
      dispatch_sync(v13, v14);
      if (*(v27 + 6))
      {
        break;
      }

      if (sbuf)
      {
        CFRelease(sbuf);
        sbuf = 0;
      }

      if (*(v23 + 24))
      {
        goto LABEL_4;
      }
    }

    vdsink_fileSubmitFrames_cold_2();
  }

LABEL_25:
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  dispatch_semaphore_signal(*(a1 + 152));
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
}

void __vdsink_fileSubmitFrames_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 4) == 2)
  {
    v3 = *(a1 + 56);
    lhs = *(a1 + 64);
    v7 = *(a1 + 88);
    CMTimeAdd(&v9, &lhs, &v7);
    if (!*(v2 + 232))
    {
      LODWORD(lhs.value) = 1;
      FormatDescription = CMSampleBufferGetFormatDescription(v3);
      width = CMVideoFormatDescriptionGetDimensions(FormatDescription).width;
      height = CMVideoFormatDescriptionGetDimensions(FormatDescription).height;
      v10.origin.x = 0.0;
      v10.origin.y = 0.0;
      v10.size.width = width;
      v10.size.height = height;
      *(v2 + 240) = CGRectCreateDictionaryRepresentation(v10);
      v11.origin.x = 0.0;
      v11.origin.y = 0.0;
      v11.size.width = width;
      v11.size.height = height;
      *(v2 + 248) = CGRectCreateDictionaryRepresentation(v11);
      *(v2 + 256) = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &lhs);
      *(v2 + 232) = 1;
    }

    CMSetAttachment(v3, *MEMORY[0x277CC1AB8], *(v2 + 240), 0);
    CMSetAttachment(v3, *MEMORY[0x277CC1A98], *(v2 + 248), 0);
    CMSetAttachment(v3, *MEMORY[0x277CC1AC0], *(v2 + 256), 0);
    if (*(v2 + 4) == 2)
    {
      CMBufferQueueEnqueue(*(v2 + 16), v3);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      ++*(*(a1 + 48) + 228);
    }
  }

  else
  {
    if (gLogCategory_APVirtualDisplayTestSink <= 50 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
    {
      __vdsink_fileSubmitFrames_block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t vdsink_networkThread(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 284);
  v48 = -1;
  v47 = 0;
  v4 = &unk_27CFF0000;
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_networkThread_cold_1();
  }

  memset(&v46, 0, sizeof(v46));
  pthread_setname_np("APVirtualDisplayTestSink");
  if (SocketAccept())
  {
    vdsink_networkThread_cold_2();
    goto LABEL_79;
  }

  v5 = *(DerivedStorage + 280);
  if ((v5 & 0x80000000) == 0)
  {
    if (close(v5) && *__error())
    {
      __error();
    }

    *(DerivedStorage + 280) = -1;
  }

  if (NetSocket_CreateWithNative())
  {
    vdsink_networkThread_cold_3();
    goto LABEL_79;
  }

  v6 = v48;
  if (v48 <= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v48;
  }

  if (v7 < 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  memset(&v46, 0, sizeof(v46));
  v9 = 1 << v3;
  v10 = v3 >> 5;
  v45 = (DerivedStorage + 288);
  allocator = *MEMORY[0x277CBECE8];
  blockAllocator = *MEMORY[0x277CBECF0];
  key = *MEMORY[0x277CC1AB8];
  v41 = *MEMORY[0x277CC1A98];
  v40 = *MEMORY[0x277CC1AC0];
  while (1)
  {
    if (__darwin_check_fd_set_overflow(v6, &v46, 0))
    {
      *(v46.fds_bits + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
    }

    if (__darwin_check_fd_set_overflow(v3, &v46, 0))
    {
      v46.fds_bits[v10] |= v9;
    }

    v11 = select(v8 + 1, &v46, 0, 0, 0);
    if (v11 <= 0 && (!v11 || !*__error() || *__error()))
    {
      vdsink_networkThread_cold_4();
      goto LABEL_79;
    }

    v12 = v48;
    if (!__darwin_check_fd_set_overflow(v48, &v46, 0) || ((*(v46.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v12) & 1) == 0)
    {
      goto LABEL_62;
    }

    if ((*(v47 + 24))(v47, 32, 32, v45, 0, 0, 0xFFFFFFFFLL))
    {
      goto LABEL_79;
    }

    v13 = *v45;
    if (!v13)
    {
      v39 = v8;
      v15 = 0;
      goto LABEL_34;
    }

    v14 = malloc_type_malloc(*v45, 0x100004077774924uLL);
    if (!v14)
    {
      goto LABEL_64;
    }

    v15 = v14;
    v39 = v8;
    v16 = (*(v47 + 24))(v47, v13, v13, v14, 0, 0, 0xFFFFFFFFLL);
    if (v16)
    {
      break;
    }

LABEL_34:
    v17 = v4[360];
    if (v17 <= 30 && (v17 != -1 || _LogCategory_Initialize()))
    {
      vdsink_networkThread_cold_5();
    }

    v18 = CMBaseObjectGetDerivedStorage();
    sampleBufferOut = 0;
    blockBufferOut = 0;
    memset(&v50, 0, sizeof(v50));
    v19 = *v45;
    sampleSizeArray = v19;
    v38 = a1;
    if (!v19)
    {
      vdsink_networkThread_cold_8();
LABEL_74:
      v24 = v15;
LABEL_66:
      v8 = v39;
      if (v24)
      {
        goto LABEL_67;
      }

      goto LABEL_58;
    }

    v20 = v18;
    v21 = *(DerivedStorage + 292);
    if (!*(DerivedStorage + 292))
    {
      v24 = v15;
      goto LABEL_53;
    }

    if (v21 != 1)
    {
      vdsink_networkThread_cold_9(v21, DerivedStorage + 292, v15, &v54);
      v24 = v54;
      goto LABEL_66;
    }

    v22 = *(DerivedStorage + 294) + 8 * *(DerivedStorage + 293);
    v54 = 0;
    v23 = v4[360];
    if (v23 <= 40 && (v23 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom())
    {
      APSLogErrorAt();
      goto LABEL_74;
    }

    v30 = *(v20 + 320);
    v31 = v54;
    *(v20 + 320) = v54;
    if (v31)
    {
      CFRetain(v31);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    v19 -= v22;
    sampleSizeArray = v19;
    LOWORD(v25) = *(DerivedStorage + 308);
    v55.origin.x = v25;
    LOWORD(v26) = *(DerivedStorage + 310);
    v55.origin.y = v26;
    LOWORD(v27) = *(DerivedStorage + 312);
    v55.size.width = v27;
    LOWORD(v28) = *(DerivedStorage + 314);
    v55.size.height = v28;
    LOWORD(v29) = *(DerivedStorage + 304);
    v32 = v29;
    LOWORD(v29) = *(DerivedStorage + 306);
    v33 = v29;
    valuePtr = 1;
    *(v20 + 240) = CGRectCreateDictionaryRepresentation(v55);
    v56.origin.x = 0.0;
    v56.origin.y = 0.0;
    v56.size.width = v32;
    v56.size.height = v33;
    *(v20 + 248) = CGRectCreateDictionaryRepresentation(v56);
    v34 = *(v20 + 256);
    if (v34)
    {
      CFRelease(v34);
    }

    v24 = &v15[v22];
    *(v20 + 256) = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    *(v20 + 232) = 1;
    v4 = &unk_27CFF0000;
LABEL_53:
    if (!v19)
    {
      goto LABEL_66;
    }

    if (!CMBlockBufferCreateWithMemoryBlock(allocator, v15, *v45, blockAllocator, 0, v24 - v15, v19, 0, &blockBufferOut))
    {
      *&v50.duration.value = *MEMORY[0x277CC0898];
      v50.duration.epoch = *(MEMORY[0x277CC0898] + 16);
      v50.decodeTimeStamp = v50.duration;
      CMClockMakeHostTimeFromSystemUnits(&v50.presentationTimeStamp, *(DerivedStorage + 296));
      v8 = v39;
      if (CMSampleBufferCreate(allocator, blockBufferOut, 1u, 0, 0, *(v20 + 320), 1, 1, &v50, 1, &sampleSizeArray, &sampleBufferOut))
      {
        vdsink_networkThread_cold_7();
      }

      else
      {
        CMSetAttachment(sampleBufferOut, key, *(v20 + 240), 0);
        CMSetAttachment(sampleBufferOut, v41, *(v20 + 248), 0);
        CMSetAttachment(sampleBufferOut, v40, *(v20 + 256), 0);
        if (*(v20 + 4) == 2)
        {
          CMBufferQueueEnqueue(*(v20 + 16), sampleBufferOut);
        }
      }

      goto LABEL_58;
    }

    vdsink_networkThread_cold_6();
    v8 = v39;
    if (v24)
    {
LABEL_67:
      free(v15);
    }

LABEL_58:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    a1 = v38;
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

LABEL_62:
    if (__darwin_check_fd_set_overflow(v3, &v46, 0) && (v46.fds_bits[v10] & v9) != 0)
    {
      goto LABEL_79;
    }

LABEL_64:
    v6 = v48;
  }

  v35 = v16;
  free(v15);
  if (v35 != -6753)
  {
    APSLogErrorAt();
  }

LABEL_79:
  if (v47)
  {
    NetSocket_Delete();
    v47 = 0;
  }

  else if ((v48 & 0x80000000) == 0)
  {
    if (close(v48) && *__error())
    {
      __error();
    }

    v48 = -1;
  }

  v36 = v4[360];
  if (v36 <= 30 && (v36 != -1 || _LogCategory_Initialize()))
  {
    vdsink_networkThread_cold_10();
  }

  return 0;
}

uint64_t APEndpointStreamBufferedAudioCreate(const __CFAllocator *a1, CFTypeRef cf, const void *a3, const __CFDictionary *a4, const void *a5, const void *a6, const void *a7, CFTypeRef *a8)
{
  v50 = *MEMORY[0x277D85DE8];
  SupportedAudioFormatList = 0;
  BOOLean = 0;
  cfa = 0;
  v45 = 0;
  if (cf && (v16 = CFGetTypeID(cf), v16 == CFStringGetTypeID()))
  {
    if (a4 && (v17 = CFGetTypeID(a4), v17 != CFDictionaryGetTypeID()))
    {
      APEndpointStreamBufferedAudioCreate_cold_1();
    }

    else if (a5 && (v18 = CFGetTypeID(a5), v18 == APSenderSessionGetTypeID()))
    {
      if (a7 && (v19 = CFGetTypeID(a7), v19 == APEndpointDescriptionGetTypeID()))
      {
        if (a8)
        {
          if (a6)
          {
            FigEndpointStreamAirPlayGetClassID();
            SupportedAudioFormatList = CMDerivedObjectCreate();
            if (SupportedAudioFormatList)
            {
              APEndpointStreamBufferedAudioCreate_cold_2();
            }

            else
            {
              DerivedStorage = CMBaseObjectGetDerivedStorage();
              *(DerivedStorage + 32) = CFRetain(cf);
              SNPrintF();
              *(DerivedStorage + 24) = os_transaction_create();
              *(DerivedStorage + 88) = CFRetain(a5);
              *(DerivedStorage + 80) = CFRetain(a7);
              *(DerivedStorage + 72) = CFRetain(a6);
              v21 = FigSimpleMutexCreate();
              *(DerivedStorage + 168) = v21;
              if (v21)
              {
                SNPrintF();
                v22 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
                v23 = dispatch_queue_create(label, v22);
                *(DerivedStorage + 384) = v23;
                if (v23)
                {
                  SNPrintF();
                  v24 = FigDispatchQueueCreateWithPriority();
                  *(DerivedStorage + 392) = v24;
                  if (v24)
                  {
                    SNPrintF();
                    v25 = dispatch_queue_create(label, 0);
                    *(DerivedStorage + 8) = v25;
                    if (v25)
                    {
                      SNPrintF();
                      v26 = FigDispatchQueueCreateWithPriority();
                      *(DerivedStorage + 16) = v26;
                      if (v26)
                      {
                        if (a4)
                        {
                          Value = CFDictionaryGetValue(a4, @"ClusterInfo");
                          if (Value)
                          {
                            Value = CFRetain(Value);
                          }

                          *(DerivedStorage + 56) = Value;
                          SupportedAudioFormatList = audioStream_createSupportedAudioFormatList(cfa, (DerivedStorage + 184));
                          if (SupportedAudioFormatList)
                          {
                            APEndpointStreamBufferedAudioCreate_cold_3();
                          }

                          else
                          {
                            v28 = *MEMORY[0x277CBECE8];
                            CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 80));
                            v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                            if (v30)
                            {
                              v30(CMBaseObject, @"SupportsBufferedAPAP", v28, &BOOLean);
                            }

                            v31 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 80));
                            v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                            if (v32)
                            {
                              v32(v31, @"SupportsBufferedAPAT", v28, &v45);
                            }

                            v33 = BOOLean;
                            if (BOOLean)
                            {
                              v33 = CFBooleanGetValue(BOOLean);
                            }

                            *(DerivedStorage + 96) = v33;
                            v34 = v45;
                            if (v45)
                            {
                              v34 = CFBooleanGetValue(v45);
                            }

                            *(DerivedStorage + 97) = v34;
                            UpTimeNanoseconds = FigGetUpTimeNanoseconds();
                            *(DerivedStorage + 40) = CFStringCreateWithFormat(a1, 0, @"%@-%llu-airplay", a3, UpTimeNanoseconds);
                            v36 = CMBaseObjectGetDerivedStorage();
                            CFDictionaryGetValue(a4, @"EventRecorder");
                            v37 = *(v36 + 160);
                            if (v37)
                            {
                              CFRelease(v37);
                              *(v36 + 160) = 0;
                            }

                            v38 = APSEventRecorderCreate();
                            if (v38)
                            {
                              APEndpointStreamBufferedAudioCreate_cold_4(v38, &SupportedAudioFormatList);
                            }

                            else
                            {
                              SupportedAudioFormatList = 0;
                              if (a3)
                              {
                                v39 = CFRetain(a3);
                              }

                              else
                              {
                                v39 = 0;
                              }

                              *(DerivedStorage + 48) = v39;
                              *(DerivedStorage + 104) = CFRetain(*MEMORY[0x277CC17B8]);
                              *(DerivedStorage + 112) = APSGetFBOPropertyInt64() != 0;
                              if (SupportedAudioFormatList)
                              {
                                APEndpointStreamBufferedAudioCreate_cold_5();
                              }

                              else
                              {
                                *(DerivedStorage + 113) = APSGetFBOPropertyInt64() != 0;
                                if (SupportedAudioFormatList)
                                {
                                  APEndpointStreamBufferedAudioCreate_cold_6();
                                }

                                else
                                {
                                  CFDictionaryGetInt64();
                                  *(DerivedStorage + 115) = APSSettingsGetIntWithDefault();
                                  *(DerivedStorage + 116) = APSSettingsIsFeatureEnabled();
                                  *(DerivedStorage + 120) = 0u;
                                  *(DerivedStorage + 136) = 0u;
                                  *(DerivedStorage + 152) = 0;
                                  *(DerivedStorage + 336) = 0;
                                  *(DerivedStorage + 344) = 0;
                                  v40 = MEMORY[0x277CC0898];
                                  *(DerivedStorage + 360) = *MEMORY[0x277CC0898];
                                  *(DerivedStorage + 376) = *(v40 + 16);
                                  if (APSIsEndpointClusteringEnabled() && APSGetFBOPropertyInt64())
                                  {
                                    APSIsFBOPropertyNonNull();
                                  }

                                  IntWithDefault = APSSettingsGetIntWithDefault();
                                  v42 = gLogCategory_APEndpointStreamBufferedAudio;
                                  if (IntWithDefault)
                                  {
                                    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
                                    {
                                      APEndpointStreamBufferedAudioCreate_cold_7();
                                    }

                                    *(DerivedStorage + 114) = 1;
                                    v42 = gLogCategory_APEndpointStreamBufferedAudio;
                                  }

                                  v44 = 0;
                                  if (v42 <= 50 && (v42 != -1 || _LogCategory_Initialize()))
                                  {
                                    APEndpointStreamBufferedAudioCreate_cold_8(DerivedStorage + 184, &v44);
                                  }

                                  if (APSSettingsIsFeatureEnabled())
                                  {
                                    CMNotificationCenterGetDefaultLocalCenter();
                                    FigNotificationCenterAddWeakListener();
                                  }

                                  SupportedAudioFormatList = APCarPlayAnalyticsCreate(a1, (DerivedStorage + 408));
                                  if (SupportedAudioFormatList)
                                  {
                                    APEndpointStreamBufferedAudioCreate_cold_9();
                                  }

                                  else
                                  {
                                    *a8 = cfa;
                                    cfa = 0;
                                  }
                                }
                              }
                            }
                          }
                        }

                        else
                        {
                          APEndpointStreamBufferedAudioCreate_cold_10();
                        }
                      }

                      else
                      {
                        APEndpointStreamBufferedAudioCreate_cold_11();
                      }
                    }

                    else
                    {
                      APEndpointStreamBufferedAudioCreate_cold_12();
                    }
                  }

                  else
                  {
                    APEndpointStreamBufferedAudioCreate_cold_13();
                  }
                }

                else
                {
                  APEndpointStreamBufferedAudioCreate_cold_14();
                }
              }

              else
              {
                APEndpointStreamBufferedAudioCreate_cold_15();
              }
            }
          }

          else
          {
            APEndpointStreamBufferedAudioCreate_cold_16();
          }
        }

        else
        {
          APEndpointStreamBufferedAudioCreate_cold_17();
        }
      }

      else
      {
        APEndpointStreamBufferedAudioCreate_cold_18();
      }
    }

    else
    {
      APEndpointStreamBufferedAudioCreate_cold_19();
    }
  }

  else
  {
    APEndpointStreamBufferedAudioCreate_cold_20();
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return SupportedAudioFormatList;
}

uint64_t audioStream_createSupportedAudioFormatList(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 80));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v11 = 4294954514;
    goto LABEL_14;
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = v5(CMBaseObject, @"SupportedAudioFormatsExtended", *MEMORY[0x277CBECE8], &cf);
  if (v7 != -12784 && v7 != 0)
  {
    v11 = v7;
LABEL_14:
    APSLogErrorAt();
    goto LABEL_15;
  }

  if (cf)
  {
    if (FigCFDictionaryGetValue())
    {
      v9 = APSAudioFormatDescriptionListCreateWithAdvertisementArray();
      if (v9)
      {
        v11 = v9;
        audioStream_createSupportedAudioFormatList_cold_1();
        goto LABEL_15;
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_createSupportedAudioFormatList_cold_2();
  }

  v12 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 80));
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    v11 = 4294954514;
    goto LABEL_14;
  }

  v14 = v13(v12, @"SupportedAudioFormats", v6, &cf);
  if (v14)
  {
    v11 = v14;
    goto LABEL_14;
  }

  FigCFDictionaryGetValue();
  FigCFNumberGetUInt64();
  v15 = APSAudioFormatDescriptionListCreateWithLegacyAudioFormatMask();
  if (v15)
  {
    v11 = v15;
    audioStream_createSupportedAudioFormatList_cold_3();
  }

  else
  {
    v11 = 0;
    *a2 = 0;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t audioStream_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_Finalize_cold_1();
  }

  if (APSSettingsIsFeatureEnabled())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v1 = DerivedStorage[1];
  if (v1)
  {
    dispatch_release(v1);
    DerivedStorage[1] = 0;
  }

  if (DerivedStorage[15])
  {
    FigPKDStopAirPlaySenderSession();
  }

  v2 = DerivedStorage[16];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[16] = 0;
  }

  v3 = DerivedStorage[17];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[17] = 0;
  }

  v4 = DerivedStorage[18];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[18] = 0;
  }

  v5 = DerivedStorage[19];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[19] = 0;
  }

  audioStream_dissociateInternal();
  v6 = DerivedStorage[20];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[20] = 0;
  }

  v7 = DerivedStorage[50];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[50] = 0;
  }

  v8 = DerivedStorage[51];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[51] = 0;
  }

  v9 = DerivedStorage[11];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[11] = 0;
  }

  v10 = DerivedStorage[10];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[10] = 0;
  }

  v11 = DerivedStorage[23];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[23] = 0;
  }

  v12 = DerivedStorage[13];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[13] = 0;
  }

  v13 = DerivedStorage[9];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[9] = 0;
  }

  v14 = DerivedStorage[4];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[4] = 0;
  }

  v15 = DerivedStorage[5];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[5] = 0;
  }

  v16 = DerivedStorage[6];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[6] = 0;
  }

  v17 = DerivedStorage[7];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[7] = 0;
  }

  v18 = DerivedStorage[3];
  if (v18)
  {
    os_release(v18);
    DerivedStorage[3] = 0;
  }

  v19 = DerivedStorage[2];
  if (v19)
  {
    dispatch_release(v19);
    DerivedStorage[2] = 0;
  }

  v20 = DerivedStorage[48];
  if (v20)
  {
    dispatch_release(v20);
    DerivedStorage[48] = 0;
  }

  v21 = DerivedStorage[49];
  if (v21)
  {
    dispatch_release(v21);
    DerivedStorage[49] = 0;
  }

  v22 = DerivedStorage[42];
  if (v22)
  {
    CFRelease(v22);
    DerivedStorage[42] = 0;
  }

  v23 = DerivedStorage[27];
  if (v23)
  {
    CFRelease(v23);
    DerivedStorage[27] = 0;
  }

  v24 = DerivedStorage[34];
  if (v24)
  {
    CFRelease(v24);
    DerivedStorage[34] = 0;
  }

  v25 = DerivedStorage[36];
  if (v25)
  {
    CFRelease(v25);
    DerivedStorage[36] = 0;
  }

  v26 = DerivedStorage[44];
  if (v26)
  {
    CFRelease(v26);
    DerivedStorage[44] = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *audioStream_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamBufferedAudio %p '%@'>", a1, *(DerivedStorage + 32));
  return Mutable;
}

uint64_t audioStream_SetProperty(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 30 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    audioStream_SetProperty_cold_1();
    return 4294950534;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFBooleanGetTypeID())
      {
        FigSimpleMutexLock();
        if (*(DerivedStorage + 208))
        {
          Value = CFBooleanGetValue(a3);
          if (*(DerivedStorage + 224) != Value)
          {
            *(DerivedStorage + 224) = Value;
            if (Value)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
            }
          }

          v8 = 0;
        }

        else
        {
          v8 = APSSignalErrorAt();
        }

        goto LABEL_17;
      }
    }

    audioStream_SetProperty_cold_2();
    return 4294950536;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v10 = CFGetTypeID(a3), v10 != CFStringGetTypeID()))
    {
      audioStream_SetProperty_cold_3();
      return 4294950536;
    }

    CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a3);
    APSDispatchAsyncFHelper();
    return 0;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v11 = *(DerivedStorage + 320);
    *(DerivedStorage + 320) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v11)
    {
      CFRelease(v11);
    }

LABEL_30:
    FigSimpleMutexUnlock();
    return 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    return 0;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v12 = CFGetTypeID(a3), v12 != CFStringGetTypeID()))
    {
      audioStream_SetProperty_cold_4();
      return 4294950536;
    }

    FigSimpleMutexLock();
    audioStream_updateBadgingFormatInfoAndPostNotification(a1, a3);
    goto LABEL_30;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v18 = CFGetTypeID(a3), v18 != CFBooleanGetTypeID()))
    {
      audioStream_SetProperty_cold_5();
      return 4294950536;
    }

    v19 = CFBooleanGetValue(a3);
    audioStream_setIsCritical(a1, v19);
    return 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (!a3 || (v13 = CFGetTypeID(a3), v13 != CFBooleanGetTypeID()))
    {
      audioStream_SetProperty_cold_6();
      return 4294950536;
    }

    CFBooleanGetValue(a3);
    audioStream_setEchoCancellationIsEnabled(a1);
    return 0;
  }

  if (FigCFEqual())
  {
    if (a3)
    {
      v14 = CFGetTypeID(a3);
      if (v14 != APSDataPacerGetTypeID())
      {
        audioStream_SetProperty_cold_7();
        return 4294950536;
      }
    }

    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 352);
    *(DerivedStorage + 352) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(DerivedStorage + 192);
    if (v16)
    {
      v17 = FigTransportStreamSetProperty(v16, *MEMORY[0x277CE5000], *(DerivedStorage + 352));
      if (v17)
      {
        v8 = v17;
        if (v17 != -16617)
        {
          APSLogErrorAt();
LABEL_17:
          FigSimpleMutexUnlock();
          return v8;
        }
      }
    }

    goto LABEL_30;
  }

  if (gLogCategory_APEndpointStreamBufferedAudio <= 30 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294954512;
}

void audioStream_invalidateTransportMDCStream()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 200);
  if (v1)
  {
    v2 = CFRetain(v1);
    FigSimpleMutexUnlock();
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v3)
      {
        v3(v2, 0, 0, 0);
      }

      CMBaseObject = FigTransportStreamGetCMBaseObject();
      if (CMBaseObject)
      {
        v5 = CMBaseObject;
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v6)
        {
          v6(v5);
        }
      }

      CFRelease(v2);
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

uint64_t audioStream_suspendAndDissociateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  audioStream_suspendInternal(a1, 0);
  *DerivedStorage = 1;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_suspendAndDissociateInternal_cold_1();
  }

  return 0;
}

void audioStream_invalidateTransportAudioDataStream()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 192);
  if (v1)
  {
    v2 = CFRetain(v1);
    FigSimpleMutexUnlock();
    if (!v2)
    {
      return;
    }

    v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v3)
    {
      v3(v2, 0, 0, 0);
    }

    IsFeatureEnabled = APSSettingsIsFeatureEnabled();
    v5 = *(CMBaseObjectGetVTable() + 16);
    if (IsFeatureEnabled)
    {
      v6 = *(v5 + 104);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = *(v5 + 64);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v6(v2, 0, 0);
LABEL_14:
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v8 = CMBaseObject;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v9)
      {
        v9(v8);
      }
    }

    CFRelease(v2);
    return;
  }

  FigSimpleMutexUnlock();
}

uint64_t audioStream_handleFeedbackReceivedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = APCarPlayAnalyticsCollectFromFeedbackResponse(*(DerivedStorage + 408), a5, 0);
  if (result)
  {
    if (gLogCategory_APEndpointStreamBufferedAudio <= 60)
    {
      if (gLogCategory_APEndpointStreamBufferedAudio != -1)
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

  return result;
}

void audioStream_updateIsPlayingAndPostNotification(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 209) != a2)
  {
    v4 = DerivedStorage;
    APSWiFiTransactionUpdateTransaction();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = Mutable;
    v7 = MEMORY[0x277CBED10];
    if (a2)
    {
      v7 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsPlaying", *v7);
    *(v4 + 209) = a2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v6);
  }
}

uint64_t FigTransportStreamSetReadyToSendBatchCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTransportStreamSetReadyToSendCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t audioStream_createSupportedPCMFormatArray(uint64_t a1, uint64_t a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ASRDArrayPCM = APSAudioFormatDescriptionListCreateASRDArrayPCM();
  FigSimpleMutexUnlock();
  if (ASRDArrayPCM)
  {
    audioStream_createSupportedPCMFormatArray_cold_1();
  }

  else if (a3)
  {
    *a3 = 0;
  }

  return ASRDArrayPCM;
}

__CFDictionary *audioStream_copyShowInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v2 = Mutable;
  v3 = MEMORY[0x277CBED28];
  if (!*(DerivedStorage + 208))
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"Resumed", *v3);
  CFDictionarySetValue(v2, @"Type", *MEMORY[0x277CC1968]);
  CFDictionarySetValue(v2, @"Name", *(DerivedStorage + 32));
  return v2;
}

uint64_t audioStream_copySupportedAudioCapabilities(uint64_t a1, CFDictionaryRef *a2)
{
  keys[1] = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FilteredListWithTranscodeFormats = APSAudioFormatDescriptionListCreateFilteredListWithTranscodeFormats();
  FigSimpleMutexUnlock();
  if (FilteredListWithTranscodeFormats)
  {
    audioStream_copySupportedAudioCapabilities_cold_1();
  }

  else
  {
    v4 = APSAudioFormatDescriptionListCopyChannelLayoutTagsDataArray();
    if (v4)
    {
      FilteredListWithTranscodeFormats = v4;
      audioStream_copySupportedAudioCapabilities_cold_2();
    }

    else
    {
      v5 = *MEMORY[0x277CBECE8];
      v6 = *MEMORY[0x277CC1958];
      values = 0;
      keys[0] = v6;
      v7 = CFDictionaryCreate(v5, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v7)
      {
        v8 = v7;
        if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        FilteredListWithTranscodeFormats = 0;
        *a2 = v8;
      }

      else
      {
        audioStream_copySupportedAudioCapabilities_cold_3();
        return 4294951816;
      }
    }
  }

  return FilteredListWithTranscodeFormats;
}

void audioStream_updateBadgingFormatInfoAndPostNotification(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (!FigCFEqual())
    {
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        CFDictionarySetValue(Mutable, @"ActiveBadgingFormatInfo", a2);
        v7 = *(v4 + 336);
        *(v4 + 336) = a2;
        CFRetain(a2);
        if (v7)
        {
          CFRelease(v7);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();

        CFRelease(v6);
      }

      else
      {
        audioStream_updateBadgingFormatInfoAndPostNotification_cold_1();
      }
    }
  }

  else
  {
    audioStream_updateBadgingFormatInfoAndPostNotification_cold_2();
  }
}

uint64_t audioStream_setEchoCancellationIsEnabled(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return FigSimpleMutexUnlock();
}

uint64_t FigTransportStreamSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, a2, a3);
}

CFMutableDictionaryRef audioStream_createRequestDictionary(CFMutableDictionaryRef Mutable)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    v3 = DerivedStorage;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      if (*(v3 + 115))
      {
        CFDictionarySetInt64();
      }
    }

    else
    {
      audioStream_createRequestDictionary_cold_1();
    }
  }

  else
  {
    audioStream_createRequestDictionary_cold_2();
  }

  return Mutable;
}

void audioStream_releaseAsync(uint64_t a1)
{
  if (a1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __audioStream_releaseAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_12;
    block[4] = a1;
    dispatch_async(global_queue, block);
  }
}

void audioStream_setIsCriticalInternal(uint64_t a1)
{
  if (*a1)
  {
    APSSetFBOPropertyInt64();
  }

  APSSetFBOPropertyInt64();
  v2 = *(a1 + 8);
  if (v2)
  {

    CFRelease(v2);
  }
}

void audioStream_setEchoCancellationIsEnabledInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_2();
    goto LABEL_25;
  }

  if (*(DerivedStorage + 113))
  {
    v3 = *(DerivedStorage + 200);
    if (!v3)
    {
      cf = 0;
LABEL_24:
      audioStream_setEchoCancellationIsEnabledInternal_cold_3();
      goto LABEL_25;
    }

    cf = CFRetain(v3);
    if (!cf)
    {
      goto LABEL_24;
    }
  }

  else
  {
    CMBaseObject = APSenderSessionGetCMBaseObject(*(DerivedStorage + 88));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5 || v5(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf))
    {
      audioStream_setEchoCancellationIsEnabledInternal_cold_5();
LABEL_25:
      audioStream_releaseAsync(*a1);
      goto LABEL_19;
    }
  }

  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (!RequestDictionary)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_4();
    goto LABEL_25;
  }

  v7 = RequestDictionary;
  v8 = MEMORY[0x277CBED28];
  if (!*(a1 + 8))
  {
    v8 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(RequestDictionary, @"MuteForStream", *v8);
  mach_absolute_time();
  APTransportStreamSendPlistMessageCreatingPlistReply();
  mach_absolute_time();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    UpTicksToMilliseconds();
    LogPrintF();
  }

  audioStream_releaseAsync(*a1);
  CFRelease(v7);
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }
}

__CFString *audioStream_audioHoseBufferedProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamBufferedAudio <APEndpointStreamBufferedHoseStreamingProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioStream_audioHoseFlush(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseFlushWithinSampleRange(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseNotifyAudioAvailable(const void *a1)
{
  v1 = audioStream_audioHoseNotifyAudioAvailableInternal(a1);
  if (v1)
  {
    audioStream_audioHoseNotifyAudioAvailable_cold_1();
  }

  return v1;
}

uint64_t audioStream_audioHoseSetRateAndAnchorTime(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CUObfuscatedPtr();
  kdebug_trace();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseApplyVolumeFade(const void *a1, int a2, CMTime *a3)
{
  CMBaseObjectGetDerivedStorage();
  *&v13[4] = 0;
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    v6 = 4294894965;
    audioStream_audioHoseApplyVolumeFade_cold_2();
  }

  else
  {
    time1 = *a3;
    v8 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &v8) <= 0)
    {
      v6 = 4294894965;
      audioStream_audioHoseApplyVolumeFade_cold_1();
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = *&a3->value;
      *v13 = a3->epoch;
      if (a1)
      {
        CFRetain(a1);
      }

      APSDispatchAsyncFHelper();
      return 0;
    }
  }

  return v6;
}

uint64_t audioStream_audioHoseSetRate(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  FigSimpleMutexLock();
  if (a2 == 1)
  {
    ++*(DerivedStorage + 344);
  }

  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioStream_audioHoseGetAnchor(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseSetCryptor(const void *a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseSetMagicCookie(const void *a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseEnableLoudnessNormalization(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseEnableMATAtmosPlayback(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

void audioStream_audioHoseFlushInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16[0] = *(a1 + 12);
  *(v16 + 12) = *(a1 + 24);
  v3 = APSAudioTransportTimeCopyDebugDesc();
  cf = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseFlushInternal_cold_1();
    RequestDictionary = 0;
    v7 = 4294950534;
    goto LABEL_24;
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 232);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 232) = 0;
  }

  audioStream_updateIsPlayingAndPostNotification(*a1, 0);
  *(DerivedStorage + 312) = 0;
  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 113))
  {
    v5 = *(DerivedStorage + 200);
    if (v5)
    {
      cf = CFRetain(v5);
      if (cf)
      {
        goto LABEL_11;
      }
    }

    else
    {
      cf = 0;
    }

    audioStream_audioHoseFlushInternal_cold_2();
    RequestDictionary = 0;
    v7 = 4294960578;
    goto LABEL_24;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(DerivedStorage + 88));
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v7 = 4294954514;
    goto LABEL_19;
  }

  v10 = v9(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
  if (v10)
  {
    v7 = v10;
LABEL_19:
    APSLogErrorAt();
    RequestDictionary = 0;
    goto LABEL_24;
  }

LABEL_11:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    CFDictionarySetInt64();
    v16[0] = *(a1 + 12);
    *(v16 + 12) = *(a1 + 24);
    APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    mach_absolute_time();
    v7 = APTransportStreamSendPlistMessageCreatingPlistReply();
    mach_absolute_time();
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      UpTicksToMilliseconds();
      LogPrintF();
    }
  }

  else
  {
    audioStream_audioHoseFlushInternal_cold_3();
    v7 = 4294950535;
  }

LABEL_24:
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = *(a1 + 48);
    v16[0] = *(a1 + 12);
    *(v16 + 12) = *(a1 + 24);
    v11(v12, v13, v16, v7, v14);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseFlushWithinSampleRangeInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v17[0] = *(a1 + 12);
  *(v17 + 12) = *(a1 + 24);
  v3 = APSAudioTransportTimeCopyDebugDesc();
  v17[0] = *(a1 + 44);
  *(v17 + 12) = *(a1 + 56);
  v4 = APSAudioTransportTimeCopyDebugDesc();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseFlushWithinSampleRangeInternal_cold_1();
    RequestDictionary = 0;
    v7 = 4294950534;
    goto LABEL_22;
  }

  if (*(a1 + 12) != *(a1 + 44))
  {
    audioStream_audioHoseFlushWithinSampleRangeInternal_cold_2();
    RequestDictionary = 0;
    v7 = 4294960591;
    goto LABEL_22;
  }

  if (*(DerivedStorage + 113))
  {
    v5 = *(DerivedStorage + 200);
    if (v5)
    {
      v18 = CFRetain(v5);
      if (v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = 0;
    }

    audioStream_audioHoseFlushWithinSampleRangeInternal_cold_3();
    RequestDictionary = 0;
    v7 = 4294960578;
    goto LABEL_22;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(DerivedStorage + 88));
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v7 = 4294954514;
    goto LABEL_18;
  }

  v10 = v9(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &v18);
  if (v10)
  {
    v7 = v10;
LABEL_18:
    APSLogErrorAt();
    RequestDictionary = 0;
    goto LABEL_22;
  }

LABEL_10:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    CFDictionarySetInt64();
    v17[0] = *(a1 + 12);
    *(v17 + 12) = *(a1 + 24);
    APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    CFDictionarySetInt64();
    v17[0] = *(a1 + 44);
    *(v17 + 12) = *(a1 + 56);
    APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    mach_absolute_time();
    v7 = APTransportStreamSendPlistMessageCreatingPlistReply();
    mach_absolute_time();
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      UpTicksToMilliseconds();
      LogPrintF();
    }

    if (v7)
    {
      audioStream_audioHoseFlushWithinSampleRangeInternal_cold_4();
    }
  }

  else
  {
    audioStream_audioHoseFlushWithinSampleRangeInternal_cold_5();
    v7 = 4294950535;
  }

LABEL_22:
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = *(a1 + 40);
    v15 = *(a1 + 80);
    v17[0] = *(a1 + 12);
    *(v17 + 12) = *(a1 + 24);
    v16[0] = *(a1 + 44);
    *(v16 + 12) = *(a1 + 56);
    v11(v12, v13, v17, v14, v16, v7, v15);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  audioStream_releaseAsync(*a1);
}

uint64_t audioStream_audioHoseNotifyAudioAvailableInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 114))
  {
    v4 = *(DerivedStorage + 392);
    v5 = CFRetain(a1);
    dispatch_async_f(v4, v5, audioStream_audioDataDrain);
    return 0;
  }

  FigSimpleMutexLock();
  v8 = *(v3 + 192);
  if (!v8)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v9 = CFRetain(v8);
  FigSimpleMutexUnlock();
  if (v9)
  {
    CUObfuscatedPtr();
    kdebug_trace();
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v10)
    {
      v6 = v10(v9);
      if (!v6)
      {
LABEL_13:
        CFRelease(v9);
        return v6;
      }
    }

    else
    {
      v6 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_13;
  }

  return 0;
}

void audioStream_audioDataDrain(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = audioStream_audioDataBatchCallback(a1, 0, &cf);
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) < 1)
    {
      CFRelease(a1);
    }

    else
    {
      dispatch_async_f(*(DerivedStorage + 392), a1, audioStream_audioDataDrain);
    }

    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  CFRelease(v5);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef audioStream_audioDataBatchCallback(uint64_t a1, int a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  v29 = 0;
  v28 = 0;
  if (_MergedGlobals_7 == -1)
  {
    if (!a2)
    {
      goto LABEL_3;
    }

LABEL_49:
    v27 = APSSignalErrorAt();
    v8 = 0;
    goto LABEL_64;
  }

  audioStream_audioDataBatchCallback_cold_1();
  if (a2)
  {
    goto LABEL_49;
  }

LABEL_3:
  if (!a3)
  {
    v16 = 0;
    v12 = 0;
    goto LABEL_58;
  }

  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 248);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(DerivedStorage + 329);
  if (!*(DerivedStorage + 330))
  {
    v13 = *(DerivedStorage + 256);
    FigSimpleMutexUnlock();
    if (!v8)
    {
      v16 = 0;
      v12 = 0;
      goto LABEL_58;
    }

    if (!v13)
    {
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioDataBatchCallback_cold_6();
      }

      v25 = 0;
      v12 = 0;
      v16 = 0;
      goto LABEL_36;
    }

    v14 = (*(v13 + 8))(v8, a1, &cf, &v28);
    if (!v14)
    {
      v12 = 0;
      v15 = cf;
      if (!cf)
      {
        v21 = 0;
        v16 = 0;
        goto LABEL_28;
      }

      v16 = 0;
      goto LABEL_25;
    }

    v27 = v14;
    audioStream_audioDataBatchCallback_cold_5();
LABEL_64:
    v12 = 0;
    v16 = 0;
    goto LABEL_65;
  }

  v11 = *(DerivedStorage + 264);
  v10 = *(DerivedStorage + 272);
  if (v10)
  {
    v12 = CFRetain(v10);
  }

  else
  {
    v12 = 0;
  }

  v18 = *(DerivedStorage + 280);
  v17 = *(DerivedStorage + 288);
  if (v17)
  {
    v16 = CFRetain(v17);
  }

  else
  {
    v16 = 0;
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    if (!v11 || !v18)
    {
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioDataBatchCallback_cold_4();
      }

      v25 = 0;
      goto LABEL_36;
    }

    v19 = (*v11)(v12, a1, &theArray, &v28);
    if (v19)
    {
      v27 = v19;
      audioStream_audioDataBatchCallback_cold_2();
    }

    else
    {
      v20 = (*v18)(v16, a1, &v29);
      if (!v20)
      {
        cf = FigCFArrayCreateConcatenationOfTwoArrays();
        v15 = theArray;
        if (!theArray)
        {
          v21 = 0;
          goto LABEL_28;
        }

LABEL_25:
        v21 = CFArrayGetCount(v15) > 0;
LABEL_28:
        FigSimpleMutexLock();
        *(DerivedStorage + 240) = v28;
        if (v21)
        {
          *(DerivedStorage + 312) = 1;
        }

        FigSimpleMutexUnlock();
        v22 = &unk_280FB1A90;
        v23 = &unk_280FB1A98;
        if (v9)
        {
          v23 = &unk_280FB1AA8;
          v22 = &unk_280FB1AA0;
        }

        if (v28)
        {
          v24 = v23;
        }

        else
        {
          v24 = v22;
        }

        *a3 = CFRetain(*v24);
        v25 = cf;
        cf = 0;
        goto LABEL_36;
      }

      v27 = v20;
      audioStream_audioDataBatchCallback_cold_3();
    }

LABEL_65:
    if (v27 == -72095 || !v27)
    {
      goto LABEL_73;
    }

    goto LABEL_67;
  }

LABEL_58:
  APSLogErrorAt();
  v8 = 0;
LABEL_67:
  if (gLogCategory_APEndpointStreamBufferedAudio <= 90 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    audioStream_handleFatalError();
  }

LABEL_73:
  v25 = 0;
  if (v8)
  {
LABEL_36:
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v25;
}

void audioStream_batchMessageTypesInit(CFMutableArrayRef *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
  if (!Mutable || (v4 = Mutable, FigCFArrayAppendInt32()) || (*a1 = v4, (v5 = CFArrayCreateMutable(v2, 3, MEMORY[0x277CBF128])) == 0) || (v6 = v5, FigCFArrayAppendInt32()) || FigCFArrayAppendInt32() || FigCFArrayAppendInt32() || (a1[1] = v6, (v7 = CFArrayCreateMutable(v2, 1, MEMORY[0x277CBF128])) == 0) || (v8 = v7, FigCFArrayAppendInt32()) || (a1[2] = v8, (v9 = CFArrayCreateMutable(v2, 3, MEMORY[0x277CBF128])) == 0) || (v10 = v9, FigCFArrayAppendInt32()) || FigCFArrayAppendInt32() || FigCFArrayAppendInt32())
  {
    APSLogErrorAt();
    CUFatalErrorF();
    audioStream_handleFatalError();
  }

  else
  {
    a1[3] = v10;
  }
}

void audioStream_handleFatalError()
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v1 = Mutable;
    FigCFDictionarySetInt32();
    CFDictionarySetValue(v1, *MEMORY[0x277CC17E0], @"audio data buffer processing failed");
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v1);
  }

  else
  {
    audioStream_handleFatalError_cold_1();
  }
}

void audioStream_audioHoseSetRateAndAnchorTimeInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31[0] = 0;
  v29[0] = *MEMORY[0x277CEA038];
  *(v29 + 12) = *(MEMORY[0x277CEA038] + 12);
  v28[0] = *(a1 + 12);
  *(v28 + 12) = *(a1 + 24);
  v3 = APSAudioTransportTimeCopyDebugDesc();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseSetRateAndAnchorTimeInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseSetRateAndAnchorTimeInternal_cold_2();
    RequestDictionary = 0;
    v10 = 0;
    v9 = 4294950534;
    goto LABEL_22;
  }

  FigSimpleMutexLock();
  audioStream_updateIsPlayingAndPostNotification(*a1, *(a1 + 8) != 0);
  FigSimpleMutexUnlock();
  v4 = *(DerivedStorage + 200);
  if (v4)
  {
    v31[0] = CFRetain(v4);
    if (v31[0])
    {
      goto LABEL_11;
    }
  }

  else
  {
    v31[0] = 0;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(DerivedStorage + 88));
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v9 = 4294954514;
LABEL_16:
    APSLogErrorAt();
    RequestDictionary = 0;
    v10 = 0;
    goto LABEL_22;
  }

  v7 = v6(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], v31);
  if (v7)
  {
    v9 = v7;
    goto LABEL_16;
  }

LABEL_11:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    CFDictionarySetInt64();
    if (*(a1 + 8) == 1)
    {
      v28[0] = *(a1 + 12);
      *(v28 + 12) = *(a1 + 24);
      APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
      v28[0] = *(a1 + 64);
      *(v28 + 12) = *(a1 + 76);
      APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
    }

    mach_absolute_time();
    v9 = APTransportStreamSendPlistMessageCreatingPlistReply();
    mach_absolute_time();
    v28[0] = v29[0];
    *(v28 + 12) = *(v29 + 12);
    v10 = APSAudioTransportTimeCopyDebugDesc();
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      v11 = *a1;
      v12 = UpTicksToMilliseconds();
      v20 = *(a1 + 8);
      v21 = v10;
      v18 = v9;
      v19 = v12;
      v17 = v11;
      LogPrintF();
    }
  }

  else
  {
    audioStream_audioHoseSetRateAndAnchorTimeInternal_cold_3();
    v10 = 0;
    v9 = 4294950535;
  }

LABEL_22:
  v13 = *(a1 + 96);
  if (v13)
  {
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *(a1 + 104);
    v28[0] = *(a1 + 12);
    *(v28 + 12) = *(a1 + 24);
    v26 = *(a1 + 40);
    v27 = *(a1 + 56);
    v25[0] = v29[0];
    *(v25 + 12) = *(v29 + 12);
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    v24 = 0;
    v13(v14, v15, v28, &v26, v25, v22, v9, v16, v17, v18, v19, v20, v21);
  }

  if (v9)
  {
    FigSimpleMutexLock();
    audioStream_updateIsPlayingAndPostNotification(*a1, 0);
    FigSimpleMutexUnlock();
  }

  CUObfuscatedPtr();
  kdebug_trace();
  if (v3)
  {
    CFRelease(v3);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v31[0])
  {
    CFRelease(v31[0]);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseApplyVolumeFadeInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    audioStream_audioHoseApplyVolumeFadeInternal_cold_1();
  }

  else
  {
    v3 = DerivedStorage;
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      audioStream_audioHoseApplyVolumeFadeInternal_cold_2(a1);
    }

    v4 = *(v3 + 25);
    if (v4 && (v5 = CFRetain(v4)) != 0)
    {
      v6 = v5;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v8 = Mutable;
        CFDictionarySetInt64();
        v9 = *(a1 + 12);
        CMTimeGetSeconds(&v9);
        CFDictionarySetDouble();
        if (APTransportStreamSendPlistMessage())
        {
          audioStream_audioHoseApplyVolumeFadeInternal_cold_3();
        }

        CFRelease(v6);
        CFRelease(v8);
      }

      else
      {
        audioStream_audioHoseApplyVolumeFadeInternal_cold_4(v6);
      }
    }

    else
    {
      audioStream_audioHoseApplyVolumeFadeInternal_cold_5();
    }
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseSetRateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  v27[0] = 0;
  v25[0] = *MEMORY[0x277CEA038];
  *(v25 + 12) = *(MEMORY[0x277CEA038] + 12);
  v24[0] = *(a1 + 12);
  *(v24 + 12) = *(a1 + 24);
  cf = APSAudioTransportTimeCopyDebugDesc();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseSetRateInternal_cold_1();
    v13 = 0;
    v12 = 0;
    Int64 = 0;
    v14 = 0;
    RequestDictionary = 0;
    v16 = 0;
    v10 = 4294950534;
    goto LABEL_34;
  }

  FigSimpleMutexLock();
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    v4 = *(DerivedStorage + 344) - 1;
    *(DerivedStorage + 344) = v4;
    if (v4)
    {
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      FigSimpleMutexUnlock();
      v10 = 4294949716;
      goto LABEL_33;
    }
  }

  audioStream_updateIsPlayingAndPostNotification(*a1, v3 != 0);
  FigSimpleMutexUnlock();
  v5 = *(DerivedStorage + 200);
  if (v5)
  {
    v27[0] = CFRetain(v5);
    if (v27[0])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v27[0] = 0;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(DerivedStorage + 88));
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v10 = 4294954514;
LABEL_33:
    APSLogErrorAt();
    v13 = 0;
    v12 = 0;
    Int64 = 0;
    v14 = 0;
    RequestDictionary = 0;
    v16 = 0;
    goto LABEL_34;
  }

  v8 = v7(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], v27);
  if (v8)
  {
    v10 = v8;
    goto LABEL_33;
  }

LABEL_17:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    CFDictionarySetInt64();
    if (*(a1 + 8) == 1)
    {
      v24[0] = *(a1 + 12);
      *(v24 + 12) = *(a1 + 24);
      APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    }

    mach_absolute_time();
    v10 = APTransportStreamSendPlistMessageCreatingPlistReply();
    mach_absolute_time();
    if (v26)
    {
      APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
      Int64 = CFDictionaryGetInt64();
      v12 = CFDictionaryGetInt64();
      v13 = CFDictionaryGetInt64();
      v14 = CFDictionaryGetInt64();
      v15 = CFDictionaryGetInt64();
      if (v15)
      {
        v10 = v15;
      }

      else
      {
        v10 = v10;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
      Int64 = 0;
      v14 = 0;
    }

    v24[0] = v25[0];
    *(v24 + 12) = *(v25 + 12);
    v16 = APSAudioTransportTimeCopyDebugDesc();
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      UpTicksToMilliseconds();
      LogPrintF();
    }
  }

  else
  {
    audioStream_audioHoseSetRateInternal_cold_2();
    v13 = 0;
    v12 = 0;
    Int64 = 0;
    v14 = 0;
    v16 = 0;
    v10 = 4294950535;
  }

LABEL_34:
  v17 = *(a1 + 40);
  if (v17)
  {
    v18 = *a1;
    v19 = *(a1 + 48);
    v24[0] = v25[0];
    *(v24 + 12) = *(v25 + 12);
    v21[0] = v13;
    v21[1] = v12;
    v22 = Int64;
    v23 = v14;
    v17(v18, v24, v21, v10, v19);
  }

  if (v10 != -17580 && v10)
  {
    FigSimpleMutexLock();
    audioStream_updateIsPlayingAndPostNotification(*a1, 0);
    FigSimpleMutexUnlock();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v27[0])
  {
    CFRelease(v27[0]);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseGetAnchorInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v19[0] = 0;
  v17[0] = *MEMORY[0x277CEA038];
  *(v17 + 12) = *(MEMORY[0x277CEA038] + 12);
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseGetAnchorInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseGetAnchorInternal_cold_2();
    RequestDictionary = 0;
    v8 = 0;
    v9 = 4294950534;
    goto LABEL_19;
  }

  v3 = *(DerivedStorage + 200);
  if (v3)
  {
    v19[0] = CFRetain(v3);
    if (v19[0])
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19[0] = 0;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(DerivedStorage + 88));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v9 = 4294954514;
LABEL_14:
    APSLogErrorAt();
    RequestDictionary = 0;
    v8 = 0;
    goto LABEL_19;
  }

  v6 = v5(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], v19);
  if (v6)
  {
    v9 = v6;
    goto LABEL_14;
  }

LABEL_11:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    CFDictionarySetInt64();
    mach_absolute_time();
    APTransportStreamSendPlistMessageCreatingPlistReply();
    mach_absolute_time();
    v9 = 4294894965;
    v16[0] = v17[0];
    *(v16 + 12) = *(v17 + 12);
    v8 = APSAudioTransportTimeCopyDebugDesc();
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      UpTicksToMilliseconds();
      LogPrintF();
    }
  }

  else
  {
    audioStream_audioHoseGetAnchorInternal_cold_3();
    v8 = 0;
    v9 = 4294950535;
  }

LABEL_19:
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *a1;
    v12 = *(a1 + 24);
    v16[0] = v17[0];
    *(v16 + 12) = *(v17 + 12);
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    v15 = 0;
    v10(v11, v16, v13, v9, v12);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v19[0])
  {
    CFRelease(v19[0]);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseSetCryptorInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  v36 = 0;
  cf = 0;
  v34 = 0;
  v32 = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseSetCryptorInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseSetCryptorInternal_cold_2();
    v17 = 0;
    RequestDictionary = 0;
    Int64 = 4294950534;
    goto LABEL_27;
  }

  if (!*(DerivedStorage + 208))
  {
    audioStream_audioHoseSetCryptorInternal_cold_12();
    v17 = 0;
    RequestDictionary = 0;
    Int64 = 4294950533;
    goto LABEL_27;
  }

  if (!*(DerivedStorage + 120))
  {
    audioStream_audioHoseSetCryptorInternal_cold_11();
    v17 = 0;
LABEL_91:
    RequestDictionary = 0;
    Int64 = 4294950536;
    goto LABEL_27;
  }

  v3 = *(DerivedStorage + 200);
  v4 = MEMORY[0x277CBECE8];
  if (v3)
  {
    v36 = CFRetain(v3);
    if (v36)
    {
      v5 = *v4;
      goto LABEL_13;
    }
  }

  else
  {
    v36 = 0;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(DerivedStorage + 88));
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    Int64 = 4294954514;
    goto LABEL_25;
  }

  v5 = *v4;
  v8 = v7(CMBaseObject, @"TransportControlStream", v5, &v36);
  if (v8)
  {
    Int64 = v8;
    goto LABEL_25;
  }

LABEL_13:
  v9 = a1[2];
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    Int64 = 4294954514;
LABEL_25:
    APSLogErrorAt();
    v17 = 0;
LABEL_26:
    RequestDictionary = 0;
    goto LABEL_27;
  }

  v11 = v10(v9, *MEMORY[0x277CC0970], v5, &cf);
  if (v11)
  {
    Int64 = v11;
    goto LABEL_25;
  }

  v12 = a1[2];
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    Int64 = 4294954514;
    goto LABEL_25;
  }

  v14 = v13(v12, *MEMORY[0x277CC0978], v5, &v32);
  if (v14)
  {
    Int64 = v14;
    goto LABEL_25;
  }

  if (!*(DerivedStorage + 136))
  {
    if (FigCFEqual())
    {
      if (FigCFEqual())
      {
        v17 = 0;
        goto LABEL_69;
      }

      APSLogErrorAt();
      if (gLogCategory_APEndpointStreamBufferedAudio <= 90 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioHoseSetCryptorInternal_cold_9();
      }
    }

    else
    {
      APSLogErrorAt();
      if (gLogCategory_APEndpointStreamBufferedAudio <= 90 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioHoseSetCryptorInternal_cold_10();
      }
    }

    v17 = 0;
    RequestDictionary = 0;
LABEL_104:
    Int64 = 4294950535;
    goto LABEL_27;
  }

  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (!RequestDictionary)
  {
    audioStream_audioHoseSetCryptorInternal_cold_4();
    v17 = 0;
    goto LABEL_104;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  mach_absolute_time();
  APTransportStreamSendPlistMessageCreatingPlistReply();
  mach_absolute_time();
  if (v35)
  {
    Int64 = CFDictionaryGetInt64();
    if (Int64)
    {
      v17 = 0;
    }

    else
    {
      v20 = *(DerivedStorage + 136);
      if (v20)
      {
        v17 = CFRetain(v20);
      }

      else
      {
        v17 = 0;
      }

      v21 = *(DerivedStorage + 144);
      v22 = cf;
      *(DerivedStorage + 144) = cf;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      Int64 = *(DerivedStorage + 152);
      v23 = v32;
      *(DerivedStorage + 152) = v32;
      if (v23)
      {
        CFRetain(v23);
      }

      if (Int64)
      {
        CFRelease(Int64);
        Int64 = 0;
      }
    }
  }

  else
  {
    v17 = 0;
    Int64 = 4294894965;
  }

  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    UpTicksToMilliseconds();
    LogPrintF();
  }

  if (Int64)
  {
    audioStream_audioHoseSetCryptorInternal_cold_3();
    goto LABEL_27;
  }

  CFRelease(RequestDictionary);
  if (v35)
  {
    CFRelease(v35);
    v35 = 0;
  }

LABEL_69:
  v24 = a1[2];
  v25 = *(DerivedStorage + 120);
  v26 = *(CMBaseObjectGetVTable() + 16);
  if (*v26 < 8uLL || (v27 = v26[27]) == 0)
  {
    Int64 = 4294954514;
LABEL_81:
    APSLogErrorAt();
    goto LABEL_26;
  }

  v28 = v27(v24, v25, v17, &v34);
  if (v28)
  {
    Int64 = v28;
    goto LABEL_81;
  }

  if (!v34)
  {
    audioStream_audioHoseSetCryptorInternal_cold_8();
    goto LABEL_91;
  }

  v29 = *(DerivedStorage + 136);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 136) = 0;
  }

  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (!RequestDictionary)
  {
    audioStream_audioHoseSetCryptorInternal_cold_7();
    goto LABEL_104;
  }

  v30 = CFDictionarySetInt64();
  if (v30)
  {
    Int64 = v30;
    audioStream_audioHoseSetCryptorInternal_cold_5();
  }

  else
  {
    CFDataGetBytePtr(v34);
    CFDataGetLength(v34);
    v31 = CFDictionarySetData();
    if (v31)
    {
      Int64 = v31;
      audioStream_audioHoseSetCryptorInternal_cold_6();
    }

    else
    {
      mach_absolute_time();
      APTransportStreamSendPlistMessageCreatingPlistReply();
      mach_absolute_time();
      if (v35)
      {
        Int64 = CFDictionaryGetInt64();
      }

      else
      {
        Int64 = 4294894965;
      }

      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        UpTicksToMilliseconds();
        LogPrintF();
      }
    }
  }

LABEL_27:
  v18 = a1[3];
  if (v18)
  {
    v18(*a1, a1[1], Int64, a1[4]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  v19 = a1[2];
  if (v19)
  {
    CFRelease(v19);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseSetMagicCookieInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseSetMagicCookieInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseSetMagicCookieInternal_cold_2();
    RequestDictionary = 0;
    v10 = 4294950534;
    goto LABEL_21;
  }

  if (!*(DerivedStorage + 208))
  {
    audioStream_audioHoseSetMagicCookieInternal_cold_6();
    RequestDictionary = 0;
    v10 = 4294950533;
    goto LABEL_21;
  }

  v3 = *(DerivedStorage + 200);
  if (v3)
  {
    cf = CFRetain(v3);
    if (cf)
    {
      goto LABEL_12;
    }
  }

  else
  {
    cf = 0;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(DerivedStorage + 88));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v10 = 4294954514;
LABEL_19:
    APSLogErrorAt();
    RequestDictionary = 0;
    goto LABEL_21;
  }

  v6 = v5(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
  if (v6)
  {
    v10 = v6;
    goto LABEL_19;
  }

LABEL_12:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    v8 = CFDictionarySetInt64();
    if (v8)
    {
      v10 = v8;
      audioStream_audioHoseSetMagicCookieInternal_cold_3();
    }

    else
    {
      CFDataGetBytePtr(a1[2]);
      CFDataGetLength(a1[2]);
      v9 = CFDictionarySetData();
      if (v9)
      {
        v10 = v9;
        audioStream_audioHoseSetMagicCookieInternal_cold_4();
      }

      else
      {
        mach_absolute_time();
        v10 = APTransportStreamSendPlistMessageCreatingPlistReply();
        mach_absolute_time();
        if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
        {
          UpTicksToMilliseconds();
          LogPrintF();
        }
      }
    }
  }

  else
  {
    audioStream_audioHoseSetMagicCookieInternal_cold_5();
    v10 = 4294950535;
  }

LABEL_21:
  v11 = a1[3];
  if (v11)
  {
    v11(*a1, a1[1], v10, a1[4]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  v12 = a1[2];
  if (v12)
  {
    CFRelease(v12);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseEnableLoudnessNormalizationInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage)
  {
    audioStream_audioHoseEnableLoudnessNormalizationInternal_cold_1();
  }

  else
  {
    v3 = DerivedStorage;
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      audioStream_audioHoseEnableLoudnessNormalizationInternal_cold_2();
    }

    CMBaseObject = APSenderSessionGetCMBaseObject(*(v3 + 11));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5 || v5(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf))
    {
      audioStream_audioHoseEnableLoudnessNormalizationInternal_cold_5();
      v7 = 0;
    }

    else
    {
      RequestDictionary = audioStream_createRequestDictionary(*a1);
      v7 = RequestDictionary;
      if (RequestDictionary)
      {
        v8 = MEMORY[0x277CBED28];
        if (!*(a1 + 8))
        {
          v8 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(RequestDictionary, @"loudnessNormalizationEnabled", *v8);
        if (APTransportStreamSendPlistMessage())
        {
          audioStream_audioHoseEnableLoudnessNormalizationInternal_cold_3();
        }
      }

      else
      {
        audioStream_audioHoseEnableLoudnessNormalizationInternal_cold_4();
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseEnableMATAtmosPlaybackInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_1();
  }

  else
  {
    v3 = DerivedStorage;
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_2();
    }

    v4 = *(v3 + 25);
    if (v4 && (v5 = CFRetain(v4)) != 0)
    {
      v6 = v5;
      RequestDictionary = audioStream_createRequestDictionary(*a1);
      if (RequestDictionary)
      {
        v8 = RequestDictionary;
        v9 = MEMORY[0x277CBED28];
        if (!*(a1 + 8))
        {
          v9 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(RequestDictionary, @"matAtmosPlaybackEnabled", *v9);
        if (APTransportStreamSendPlistMessage())
        {
          audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_3();
        }

        CFRelease(v6);
        CFRelease(v8);
      }

      else
      {
        audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_4(v6);
      }
    }

    else
    {
      audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_5();
    }
  }

  v10 = *a1;

  audioStream_releaseAsync(v10);
}

__CFString *audioStream_protocolDriverHoseControlProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamBuffered <APSAudioProtocolDriverHoseControlProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *audioStream_protocolDriverHoseDataBaseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamBufferedAudio <APSAudioProtocolDriverHoseDataBaseProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioStream_dataHoseSetLastSentMediaTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(a2 + 16);
  *(DerivedStorage + 360) = *a2;
  *(DerivedStorage + 376) = v4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioStream_dataHoseGetLastSentMediaTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 360);
    *(a2 + 16) = *(v4 + 376);
    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    audioStream_dataHoseGetLastSentMediaTime_cold_1();
    return 4294894965;
  }
}

__CFString *audioStream_protocolDriverHoseDataAPATProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamBufferedAudio <APSAudioProtocolDriverHoseDataAPATProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioStream_dataHoseAPATSetRTPCallbacks(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 272);
  *(DerivedStorage + 264) = a2;
  *(DerivedStorage + 272) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioStream_dataHoseAPATSignalRTPDataAvailable(const void *a1)
{
  v1 = audioStream_audioHoseNotifyAudioAvailableInternal(a1);
  if (v1)
  {
    audioStream_dataHoseAPATSignalRTPDataAvailable_cold_1();
  }

  return v1;
}

uint64_t audioStream_dataHoseAPATSetRTCPCallbacks(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 288);
  *(DerivedStorage + 280) = a2;
  *(DerivedStorage + 288) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioStream_dataHoseAPATSignalRTCPDataAvailable(const void *a1)
{
  v1 = audioStream_audioHoseNotifyAudioAvailableInternal(a1);
  if (v1)
  {
    audioStream_dataHoseAPATSignalRTCPDataAvailable_cold_1();
  }

  return v1;
}

uint64_t audioStream_Suspend(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_Resume(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_Control()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (FigCFEqual())
  {
    if (*(DerivedStorage + 115))
    {
      goto LABEL_10;
    }

    audioStream_Control_cold_1();
  }

  else if (FigCFEqual())
  {
    if (*(DerivedStorage + 115))
    {
LABEL_10:
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      return 0;
    }

    audioStream_Control_cold_2();
  }

  return 4294950536;
}

void audioStream_suspendOrResumeCompletionCallback(uint64_t a1)
{
  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24));
  v2 = *a1;

  CFRelease(v2);
}

void audioStream_receivedAudioDataMessage(uint64_t a1, int a2, void *a3, const void *a4)
{
  values = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 30 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2 != 1684501101)
  {
    if (a2 == 1684628836)
    {
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_receivedAudioDataMessage_cold_4();
      }

      Empty = CFDictionaryGetEmpty();

      audioStream_Suspend(a4, Empty);
    }

    return;
  }

  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 330);
  if (*(*(DerivedStorage + 280) + 8))
  {
    v9 = *(*(DerivedStorage + 280) + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(DerivedStorage + 288);
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  FigSimpleMutexUnlock();
  if (!v8)
  {
    audioStream_receivedAudioDataMessage_cold_3(a4, &v15);
LABEL_32:
    v13 = v15;
    goto LABEL_23;
  }

  if (!v9)
  {
    audioStream_receivedAudioDataMessage_cold_2();
    v13 = 0;
    goto LABEL_23;
  }

  v12 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
  if (!v12)
  {
    audioStream_receivedAudioDataMessage_cold_1(a4, &v15);
    goto LABEL_32;
  }

  v13 = v12;
  v9(v11, a4, v12);
LABEL_23:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

CFTypeRef audioStream_audioDataCallback(uint64_t a1, int a2, int *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  theArray = 0;
  ConcatenationOfTwoArrays = 0;
  v31 = 0;
  if (a2)
  {
    v27 = APSSignalErrorAt();
    cf = 0;
    MutableCopy = 0;
    v14 = 0;
    v17 = 0;
    goto LABEL_71;
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  v8 = *(v7 + 248);
  if (v8)
  {
    cf = CFRetain(v8);
  }

  else
  {
    cf = 0;
  }

  v34 = *(v7 + 240);
  v29 = *(v7 + 329);
  v9 = *(v7 + 330);
  MutableCopy = *(v7 + 232);
  *(v7 + 232) = 0;
  v11 = *(v7 + 256);
  v28 = a3;
  if (v9)
  {
    v13 = *(v7 + 264);
    v12 = *(v7 + 272);
    if (v12)
    {
      v14 = CFRetain(v12);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v7 + 280);
    v16 = *(v7 + 288);
    if (v16)
    {
      v17 = CFRetain(v16);
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v17 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  if (cf)
  {
    if (MutableCopy && CFArrayGetCount(MutableCopy))
    {
      v18 = 1;
LABEL_26:
      if (CFArrayGetCount(MutableCopy))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, 0);
        v23 = CFRetain(ValueAtIndex);
        CFArrayRemoveValueAtIndex(MutableCopy, 0);
        if (v34 && !CFArrayGetCount(MutableCopy))
        {
          v24 = 1634754917;
          if (!v29)
          {
            v24 = 1650814818;
          }
        }

        else if (v29)
        {
          v24 = 1634754914;
        }

        else
        {
          v24 = 1651861089;
        }

        *v28 = v24;
        goto LABEL_41;
      }

LABEL_32:
      v23 = 0;
LABEL_41:
      FigSimpleMutexLock();
      *(v7 + 240) = v34;
      if (!v18)
      {
        *(v7 + 312) = 1;
      }

      *(v7 + 232) = MutableCopy;
      FigSimpleMutexUnlock();
      MutableCopy = 0;
      goto LABEL_44;
    }

    if (v9)
    {
      if (v13 && v15)
      {
        v19 = (*v13)(v14, a1, &theArray, &v34);
        if (v19)
        {
          v27 = v19;
          audioStream_audioDataCallback_cold_1();
        }

        else
        {
          v20 = (*v15)(v17, a1, &v31);
          if (!v20)
          {
            ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
            v21 = theArray;
            if (theArray)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v27 = v20;
          audioStream_audioDataCallback_cold_2();
        }

        goto LABEL_71;
      }

      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioDataCallback_cold_3();
      }
    }

    else
    {
      if (v11)
      {
        v25 = (*(v11 + 8))(cf, a1, &ConcatenationOfTwoArrays, &v34);
        if (!v25)
        {
          v21 = ConcatenationOfTwoArrays;
          if (ConcatenationOfTwoArrays)
          {
LABEL_23:
            v18 = CFArrayGetCount(v21) < 1;
            if (!MutableCopy)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

LABEL_36:
          v18 = 1;
          if (!MutableCopy)
          {
LABEL_25:
            MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, ConcatenationOfTwoArrays);
            if (!MutableCopy)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          }

LABEL_24:
          CFRelease(MutableCopy);
          goto LABEL_25;
        }

        v27 = v25;
        audioStream_audioDataCallback_cold_4();
LABEL_71:
        if (v27 == -72095 || !v27)
        {
          goto LABEL_79;
        }

        goto LABEL_73;
      }

      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioDataCallback_cold_5();
      }
    }

    v23 = 0;
LABEL_44:
    CFRelease(cf);
    goto LABEL_45;
  }

  audioStream_audioDataCallback_cold_6();
  cf = 0;
LABEL_73:
  if (gLogCategory_APEndpointStreamBufferedAudio <= 90 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    audioStream_handleFatalError();
  }

LABEL_79:
  v23 = 0;
  if (cf)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (ConcatenationOfTwoArrays)
  {
    CFRelease(ConcatenationOfTwoArrays);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v23;
}

void audioStream_receivedMediaDataEventMessage(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2 == 1684628836)
  {
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      audioStream_receivedMediaDataEventMessage_cold_1();
    }

    Empty = CFDictionaryGetEmpty();

    audioStream_Suspend(a4, Empty);
  }
}

uint64_t audioStream_copyTransportFormatDescriptionForSourceContentFormatDescription()
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  APSAudioFormatDescriptionListGetForBufferedSender();
  IntersectionList = APSAudioFormatDescriptionListCreateIntersectionList();
  FigSimpleMutexUnlock();
  if (IntersectionList)
  {
    audioStream_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_1();
  }

  else
  {
    IntersectionList = APSAudioFormatDescriptionListCopyTransportFormatDescriptionForSourceFormatDescription();
    if (IntersectionList)
    {
      audioStream_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_2();
    }
  }

  return IntersectionList;
}

uint64_t audioStream_isPassthroughSupportedForFormatDescription(uint64_t a1, uint64_t a2, BOOL *a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 10 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_isPassthroughSupportedForFormatDescription_cold_1();
  }

  FigSimpleMutexLock();
  if (a3)
  {
    if (APSSettingsIsFeatureEnabled())
    {
      v5 = APSAudioFormatDescriptionCreateWithFigEndpointStreamAudioFormatDescription();
      if (v5)
      {
        v7 = v5;
        audioStream_isPassthroughSupportedForFormatDescription_cold_2();
      }

      else
      {
        if (APSAudioFormatDescriptionListContainsFormat())
        {
          v6 = APSAudioFormatDescriptionIsPassthroughFormatForCurrentDeviceAsSender() != 0;
        }

        else
        {
          v6 = 0;
        }

        v9 = 0;
        if (gLogCategory_APEndpointStreamBufferedAudio <= 10 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
        {
          audioStream_isPassthroughSupportedForFormatDescription_cold_3(DerivedStorage + 184, &v9);
        }

        v7 = 0;
        *a3 = v6;
      }
    }

    else
    {
      v7 = 0;
      *a3 = 0;
    }
  }

  else
  {
    audioStream_isPassthroughSupportedForFormatDescription_cold_4();
    v7 = 4294950536;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t APMessageRingBufferedGetTypeID()
{
  if (_MergedGlobals_8 != -1)
  {
    APMessageRingBufferedGetTypeID_cold_1();
  }

  return qword_280FB1AB8;
}

uint64_t ring_getTypeID_0(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMessageRingBufferedCreate(uint64_t a1, size_t a2, malloc_zone_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (0x10000 % a2)
  {
    APMessageRingBufferedCreate_cold_1();
    return 4294960591;
  }

  if (!a4)
  {
    APMessageRingBufferedCreate_cold_6();
    return 4294960591;
  }

  if (!a6)
  {
    APMessageRingBufferedCreate_cold_5();
    return 4294960591;
  }

  if (_MergedGlobals_8 != -1)
  {
    APMessageRingBufferedGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APMessageRingBufferedCreate_cold_4();
    return 4294960568;
  }

  v16 = Instance;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  *(Instance + 4) = 0;
  RandomBytes();
  *(v16 + 5) &= 0xFFFFFFu;
  if (!a3)
  {
    a3 = malloc_default_zone();
  }

  *(v16 + 5) = a3;
  v17 = malloc_type_zone_calloc(a3, a2, 0x50uLL, 0x102004088E31008uLL);
  *(v16 + 4) = v17;
  if (!v17)
  {
    APMessageRingBufferedCreate_cold_3(v16);
    return 4294960568;
  }

  *(v16 + 3) = a2;
  *(v16 + 6) = a4;
  *(v16 + 7) = a5;
  *(v16 + 8) = a6;
  *(v16 + 9) = a7;
  if (gLogCategory_APMessageRingBuffered <= 50 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = 0;
  *a8 = v16;
  return result;
}

uint64_t APMessageRingBufferedGetByteCountAtIndex(uint64_t a1, unsigned int a2, int *a3)
{
  if (a3)
  {
    v3 = *(a1 + 16);
    if (v3 == a2)
    {
      result = 0;
      *a3 = 0;
    }

    else
    {
      v5 = *(*(a1 + 32) + 80 * (a2 % *(a1 + 24)) + 72) - *(*(a1 + 32) + 80 * (v3 % *(a1 + 24)) + 72);
      *a3 = v5;
      if (v5 <= 0)
      {
        APMessageRingBufferedGetByteCountAtIndex_cold_1();
        return 4294960584;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    APMessageRingBufferedGetByteCountAtIndex_cold_2();
    return 4294960591;
  }

  return result;
}

uint64_t APMessageRingBufferedGetTotalByteCount(uint64_t a1, int *a2)
{
  if (!a2)
  {
    v3 = 4294960591;
LABEL_7:
    APSLogErrorAt();
    return v3;
  }

  v2 = *(*(a1 + 32) + 80 * (*(a1 + 18) % *(a1 + 24)) + 72) - *(*(a1 + 32) + 80 * (*(a1 + 16) % *(a1 + 24)) + 72);
  *a2 = v2;
  if (v2 < 0)
  {
    v3 = 4294960584;
    goto LABEL_7;
  }

  return 0;
}

unint64_t APMessageRingBufferedGetFirstValidReadIndex(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 16);
  if (a2)
  {
    *a2 = *(*(a1 + 32) + 80 * (result % *(a1 + 24)) + 64);
  }

  return result;
}

uint64_t APMessageRingBufferedGetLastValidReadIndexAndTimestamp(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(a1 + 18) - 1;
  if (a2)
  {
    *a2 = *(*(a1 + 32) + 80 * ((*(a1 + 18) - 1) % *(a1 + 24)) + 64);
  }

  if (a3)
  {
    v4 = *(a1 + 32) + 80 * (v3 % *(a1 + 24));
    v5 = *(v4 + 16);
    *(a3 + 16) = *(v4 + 32);
    *a3 = v5;
  }

  return v3;
}

uint64_t APMessageRingBufferedPruneMessagesUntilTimestamp(uint64_t a1, uint64_t a2, _WORD *a3)
{
  if (*(a2 + 12))
  {
    if (gLogCategory_APMessageRingBuffered <= 20 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
    {
      APMessageRingBufferedPruneMessagesUntilTimestamp_cold_1();
    }

    v6 = *(a1 + 16);
    if (v6 != *(a1 + 18))
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
      do
      {
        v9 = v8 + 80 * (v6 % v7);
        v10 = *(v9 + 16);
        time1.epoch = *(v9 + 32);
        *&time1.value = v10;
        time2 = *a2;
        if (CMTimeCompare(&time1, &time2) != -1)
        {
          break;
        }

        if (gLogCategory_APMessageRingBuffered <= 10 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        v11 = v6 % v7;
        v12 = v8 + 80 * v11;
        *(v12 + 64) = -1;
        if (*v12)
        {
          CFRelease(*v12);
          v7 = *(a1 + 24);
          v8 = *(a1 + 32);
          v11 = v6 % v7;
          *(v8 + 80 * v11) = 0;
        }

        v13 = *(v8 + 80 * v11 + 8);
        if (v13)
        {
          CFRelease(v13);
          v7 = *(a1 + 24);
          v8 = *(a1 + 32);
          *(v8 + 80 * (v6 % v7) + 8) = 0;
        }

        ++*(a1 + 16);
        LOWORD(v6) = v6 + 1;
      }

      while (*(a1 + 18) != v6);
    }

    result = 0;
    if (a3)
    {
      *a3 = *(a1 + 16);
    }
  }

  else
  {
    APMessageRingBufferedPruneMessagesUntilTimestamp_cold_2();
    return 4294960591;
  }

  return result;
}

uint64_t APMessageRingBufferedPruneMessagesFromTimestamp(uint64_t a1, uint64_t a2, _WORD *a3, _DWORD *a4, _DWORD *a5)
{
  if ((*(a2 + 12) & 1) == 0)
  {
    APMessageRingBufferedPruneMessagesFromTimestamp_cold_4();
    return 4294960591;
  }

  v10 = *(a1 + 20);
  v11 = *(a1 + 18);
  if (gLogCategory_APMessageRingBuffered <= 50 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = *(a1 + 16);
  if (v12 != v11)
  {
    v13 = 0;
    do
    {
      v14 = *(a1 + 32) + 80 * (v12 % *(a1 + 24));
      v15 = *(v14 + 16);
      time1.epoch = *(v14 + 32);
      *&time1.value = v15;
      time2 = *a2;
      if (CMTimeCompare(&time1, &time2) == 1)
      {
        v17 = *(a1 + 24);
        v16 = *(a1 + 32);
        v18 = v16 + 80 * (v12 % v17);
        if (v13)
        {
          *(v18 + 64) = -1;
        }

        else
        {
          v10 = *(v18 + 64);
          *(v18 + 64) = -1;
          *(a1 + 18) = v12;
          if ((*(a1 + 16) - v12) >= 1)
          {
            APMessageRingBufferedPruneMessagesFromTimestamp_cold_1();
            return 4294960591;
          }

          if (gLogCategory_APMessageRingBuffered <= 50)
          {
            if (gLogCategory_APMessageRingBuffered != -1 || (v19 = _LogCategory_Initialize(), v17 = *(a1 + 24), v16 = *(a1 + 32), v19))
            {
              LogPrintF();
              v17 = *(a1 + 24);
              v16 = *(a1 + 32);
            }
          }
        }

        v20 = v12 % v17;
        v21 = *(v16 + 80 * v20);
        if (v21)
        {
          CFRelease(v21);
          v16 = *(a1 + 32);
          v20 = v12 % *(a1 + 24);
          *(v16 + 80 * v20) = 0;
        }

        v22 = *(v16 + 80 * v20 + 8);
        if (v22)
        {
          CFRelease(v22);
          *(*(a1 + 32) + 80 * (v12 % *(a1 + 24)) + 8) = 0;
        }

        v13 = 1;
      }

      LOWORD(v12) = v12 + 1;
    }

    while (v11 != v12);
    if (v13)
    {
      goto LABEL_28;
    }
  }

  if (gLogCategory_APMessageRingBuffered <= 90 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
  {
    APMessageRingBufferedPruneMessagesFromTimestamp_cold_2();
    if (!a3)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (a3)
  {
LABEL_29:
    *a3 = *(a1 + 18);
  }

LABEL_30:
  if (a4 && (*a4 = v10, gLogCategory_APMessageRingBuffered <= 50) && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
  {
    APMessageRingBufferedPruneMessagesFromTimestamp_cold_3();
    if (!a5)
    {
      return 0;
    }
  }

  else if (!a5)
  {
    return 0;
  }

  *a5 = *(a1 + 20);
  if (gLogCategory_APMessageRingBuffered > 50)
  {
    return 0;
  }

  if (gLogCategory_APMessageRingBuffered != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APMessageRingBufferedGetNextFreeBacking(uint64_t a1, size_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 18);
  if (v2 == (v3 - *(a1 + 16)) + 1)
  {
    return 0;
  }

  v7 = v3 % v2;
  v8 = *(a1 + 32);
  v9 = v8 + 80 * v7;
  v11 = *(v9 + 8);
  v10 = v9 + 8;
  if (!v11)
  {
    if ((*(a1 + 48))(*(a1 + 56), a2, v10))
    {
      APMessageRingBufferedGetNextFreeBacking_cold_1();
      return 0;
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 18) % *(a1 + 24);
  }

  DataLength = CMBlockBufferGetDataLength(*(v8 + 80 * v7 + 8));
  if (a2 && DataLength < a2)
  {
    if (gLogCategory_APMessageRingBuffered <= 50 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 18) % *(a1 + 24);
    v15 = *(v13 + 80 * v14 + 8);
    if (v15)
    {
      CFRelease(v15);
      v13 = *(a1 + 32);
      v14 = *(a1 + 18) % *(a1 + 24);
      *(v13 + 80 * v14 + 8) = 0;
    }

    if ((*(a1 + 48))(*(a1 + 56), a2, v13 + 80 * v14 + 8))
    {
      APMessageRingBufferedGetNextFreeBacking_cold_2();
      return 0;
    }
  }

  return *(*(a1 + 32) + 80 * (*(a1 + 18) % *(a1 + 24)) + 8);
}

uint64_t APMessageRingBufferedEnqueueMessageForSending(uint64_t a1, CMBlockBufferRef theBuffer, __int128 *a3, __int128 *a4)
{
  v25 = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  if (*(a1 + 24) == (*(a1 + 18) - *(a1 + 16)) + 1)
  {
    APMessageRingBufferedEnqueueMessageForSending_cold_3();
    return 4294960587;
  }

  else
  {
    CMBlockBufferGetDataPointer(theBuffer, 0, 0, &totalLengthOut, &dataPointerOut);
    NextFreeBacking = APMessageRingBufferedGetNextFreeBacking(a1, 0);
    CMBlockBufferGetDataPointer(NextFreeBacking, 0, 0, 0, &v25);
    if (dataPointerOut == v25)
    {
      v9 = (*(a1 + 64))(theBuffer, *(a1 + 20), *(a1 + 72));
      if (v9)
      {
        v12 = v9;
        APMessageRingBufferedEnqueueMessageForSending_cold_2();
      }

      else
      {
        if (gLogCategory_APMessageRingBuffered <= 10 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (gLogCategory_APMessageRingBufferedFullness <= 50 && (gLogCategory_APMessageRingBufferedFullness != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v10 = (*(a1 + 32) + 80 * (*(a1 + 18) % *(a1 + 24)));
        v11 = *v10;
        if (theBuffer)
        {
          CFRetain(theBuffer);
        }

        *v10 = theBuffer;
        if (v11)
        {
          CFRelease(v11);
        }

        v12 = 0;
        v13 = *(a1 + 32) + 80 * (*(a1 + 18) % *(a1 + 24));
        v14 = *a3;
        *(v13 + 32) = *(a3 + 2);
        *(v13 + 16) = v14;
        v15 = *(a1 + 32) + 80 * (*(a1 + 18) % *(a1 + 24));
        v16 = *a4;
        *(v15 + 56) = *(a4 + 2);
        *(v15 + 40) = v16;
        v17 = *(a1 + 18);
        v18 = *(a1 + 24);
        v19 = *(a1 + 32);
        v20 = v17 % v18;
        LOWORD(v17) = v17 + 1;
        v21 = *(a1 + 20);
        v22 = v19 + 80 * v20;
        *(v22 + 64) = v21;
        *(v19 + 80 * (v17 % v18) + 72) = totalLengthOut + *(v22 + 72);
        *(a1 + 20) = (v21 + 1) & 0xFFFFFF;
        *(a1 + 18) = v17;
      }
    }

    else
    {
      APMessageRingBufferedEnqueueMessageForSending_cold_1();
      return 4294960591;
    }
  }

  return v12;
}

void ring_Finalize_0(uint64_t a1)
{
  if (gLogCategory_APMessageRingBuffered <= 30 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
  {
    ring_Finalize_cold_1_0();
  }

  v2 = *(a1 + 32);
  if (*(a1 + 24))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *&v2[v3];
      if (v5)
      {
        CFRelease(v5);
        v2 = *(a1 + 32);
        *&v2[v3] = 0;
      }

      v6 = *&v2[v3 + 8];
      if (v6)
      {
        CFRelease(v6);
        v2 = *(a1 + 32);
        *&v2[v3 + 8] = 0;
      }

      ++v4;
      v3 += 80;
    }

    while (v4 < *(a1 + 24));
  }

  else if (!v2)
  {
    return;
  }

  malloc_zone_free(*(a1 + 40), v2);
  *(a1 + 32) = 0;
}

uint64_t __APSenderStatsCollectorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APSenderStatsCollectorGetTypeID_typeID = result;
  return result;
}

uint64_t __APSenderStatsCollectorGetShared_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  if (APSenderStatsCollectorGetTypeID_once != -1)
  {
    __APSenderStatsCollectorGetShared_block_invoke_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    *(Instance + 112) = 0;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 16) = dispatch_queue_create("APSenderStatsCollectorQueue", 0);
    *(v2 + 24) = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v2 + 32) = NanosecondsToUpTicks();
    *(v2 + 48) = NanosecondsToUpTicks();
    *(v2 + 64) = UpTicksPerSecond();
    *(v2 + 72) = xmmword_222298460;
    *(v2 + 88) = 0;
    *(v2 + 112) = 1;
    result = IsAppleInternalBuild();
    *(v2 + 112) = result;
  }

  else
  {
    result = __APSenderStatsCollectorGetShared_block_invoke_cold_2();
  }

  APSenderStatsCollectorGetShared_collector = v2;
  return result;
}

uint64_t APSenderStatsCollectorCopySystemStats(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7[0] = &v6;
  v7[1] = 0x2000000000;
  v8 = 0;
  if (!a1)
  {
    APSenderStatsCollectorCopySystemStats_cold_2(v7);
LABEL_7:
    v3 = 4294960591;
    goto LABEL_4;
  }

  if (!a2)
  {
    APSenderStatsCollectorCopySystemStats_cold_1(v7);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APSenderStatsCollectorCopySystemStats_block_invoke;
  block[3] = &unk_27849C380;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7[0] + 24);
LABEL_4:
  _Block_object_dispose(&v6, 8);
  return v3;
}

void collector_finalize()
{
  if (gLogCategory_APSenderStatsCollector <= 100 && (gLogCategory_APSenderStatsCollector != -1 || _LogCategory_Initialize()))
  {
    collector_finalize_cold_1();
  }

  MEMORY[0x1C8] = 7;
}

uint64_t APAudioEngineAVCCreate(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    APAudioEngineAVCCreate_cold_3();
    return 4294951815;
  }

  if (!a3)
  {
    APAudioEngineAVCCreate_cold_2();
    return 4294951815;
  }

  FigEndpointStreamAudioEngineGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v7 = v5;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    DerivedStorage[6] = FigSimpleMutexCreate();
    if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
    {
      APAudioEngineAVCCreate_cold_1();
    }

    v7 = 0;
    *a3 = 0;
  }

  return v7;
}

void audioEngineAVC_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    audioEngineAVC_Finalize_cold_1();
  }

  FigSimpleMutexLock();
  audioEngineAVC_suspendInternal();
  FigSimpleMutexUnlock();
  FigSimpleMutexDestroy();
  v1 = *DerivedStorage;
  if (*DerivedStorage)
  {

    CFRelease(v1);
  }
}

__CFString *audioEngineAVC_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioEngineAVC>");
  return Mutable;
}

uint64_t audioEngineAVC_CopyProperty(int a1, CFTypeRef cf2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  if (gLogCategory_APAudioEngineAVC > 30 || gLogCategory_APAudioEngineAVC == -1 && !_LogCategory_Initialize())
  {
    if (cf2)
    {
      goto LABEL_5;
    }

LABEL_12:
    audioEngineAVC_CopyProperty_cold_4();
    return 4294951815;
  }

  audioEngineAVC_CopyProperty_cold_1();
  if (!cf2)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (!a4)
  {
    audioEngineAVC_CopyProperty_cold_3();
    return 4294951815;
  }

  if (!CFEqual(@"outputLatency", cf2))
  {
    return 4294954512;
  }

  v9 = **&MEMORY[0x277CC08F0];
  v7 = CMTimeCopyAsDictionary(&v9, a3);
  *a4 = v7;
  if (v7)
  {
    return 0;
  }

  audioEngineAVC_CopyProperty_cold_2();
  return 4294951816;
}

uint64_t audioEngineAVC_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a2)
  {
    audioEngineAVC_SetProperty_cold_2();
    return 4294951815;
  }

  if (!a3)
  {
    audioEngineAVC_SetProperty_cold_1();
    return 4294951815;
  }

  if (CFEqual(@"audioSourceFirstFrameAnchorTime", a2))
  {
    return 0;
  }

  else
  {
    return 4294954512;
  }
}

uint64_t audioEngineAVC_suspendInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UpTicksPerSecond();
  FigSimpleMutexCheckIsLockedOnThisThread();
  mach_absolute_time();
  if (*(DerivedStorage + 9))
  {
    FigHALAudioConduitDeviceHALStopStream();
    *(DerivedStorage + 9) = 0;
  }

  mach_absolute_time();
  if (*(DerivedStorage + 8))
  {
    FigHALAudioConduitDeviceHALStopIO();
    *(DerivedStorage + 8) = 0;
  }

  mach_absolute_time();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if ((!v2 || v2(v1)) && gLogCategory_APAudioEngineAVC <= 90 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = *(DerivedStorage + 16);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v4)
    {
      v1 = v4(v3, 0, 0);
      if (!v1)
      {
LABEL_20:
        v5 = *(DerivedStorage + 16);
        if (v5)
        {
          CFRelease(v5);
          *(DerivedStorage + 16) = 0;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v1 = 4294954514;
    }

    if (gLogCategory_APAudioEngineAVC <= 90 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_20;
  }

LABEL_22:
  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v6);
    *(DerivedStorage + 40) = 0;
  }

  mach_absolute_time();
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v1;
}

uint64_t audioEngineAVC_Resume(uint64_t a1, const __CFDictionary *a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0uLL;
  v32 = 0;
  UpTicksPerSecond();
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    audioEngineAVC_Resume_cold_1();
  }

  mach_absolute_time();
  if (!a2 || (Value = CFDictionaryGetValue(a2, *MEMORY[0x277CD6280])) == 0)
  {
    audioEngineAVC_Resume_cold_6();
    v26 = 4294951813;
    goto LABEL_30;
  }

  v10 = Value;
  FigSimpleMutexLock();
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = v10;
  CFRetain(v10);
  if (v11)
  {
    CFRelease(v11);
  }

  CFAllocatorGetDefault();
  v12 = FigHALAudioConduitDeviceCopyProperty();
  if (v12)
  {
    v26 = v12;
    audioEngineAVC_Resume_cold_2();
  }

  else
  {
    BytePtr = CFDataGetBytePtr(0);
    v31 = *BytePtr;
    v14 = *(BytePtr + 5);
    v32 = *(BytePtr + 4);
    v15 = *(BytePtr + 6);
    v28 = *(BytePtr + 28);
    v29 = *(BytePtr + 9);
    CFAllocatorGetDefault();
    v16 = FigHALAudioConduitDeviceCopyProperty();
    if (!v16)
    {
      v17 = v15 * v14 * FigCFNumberGetUInt32();
      *(DerivedStorage + 24) = v17;
      if (v17)
      {
        if (gLogCategory_APAudioEngineAVC <= 50)
        {
          if (gLogCategory_APAudioEngineAVC != -1 || (v18 = _LogCategory_Initialize(), v17 = *(DerivedStorage + 24), v18))
          {
            LogPrintF();
            v17 = *(DerivedStorage + 24);
          }
        }

        v19 = MEMORY[0x223DAFDB0](*MEMORY[0x277CBECE8], v17, 3876151616, 0);
        *(DerivedStorage + 40) = v19;
        if (v19)
        {
          *(DerivedStorage + 120) = *(DerivedStorage + 24);
          v20 = *DerivedStorage;
          *(DerivedStorage + 104) = v10;
          *(DerivedStorage + 112) = v20;
          v21 = *(DerivedStorage + 48);
          *(DerivedStorage + 128) = v19;
          *(DerivedStorage + 136) = v21;
          *(DerivedStorage + 152) = 0;
          *(DerivedStorage + 64) = v31;
          *(DerivedStorage + 80) = v32;
          *(DerivedStorage + 84) = v14;
          *(DerivedStorage + 88) = v15;
          *(DerivedStorage + 92) = v28;
          *(DerivedStorage + 100) = v29;
          v22 = *(*(CMBaseObjectGetVTable() + 16) + 120);
          if (v22)
          {
            v23 = v22(v10, audioEngineAVC_audioSourceWriteDataCallback, DerivedStorage + 56);
            if (v23)
            {
              v26 = v23;
            }

            else
            {
              v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (v24)
              {
                v25 = v24(v10);
                if (!v25)
                {
                  mach_absolute_time();
                  FigHALAudioConduitDeviceHALStartIO();
                  mach_absolute_time();
                  *(DerivedStorage + 8) = 1;
                  FigHALAudioConduitDeviceHALStartStream();
                  mach_absolute_time();
                  *(DerivedStorage + 9) = 1;
                  FigSimpleMutexUnlock();
                  v26 = 0;
                  if (!a3)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_35;
                }

                v26 = v25;
              }

              else
              {
                v26 = 4294954514;
              }
            }
          }

          else
          {
            v26 = 4294954514;
          }

          APSLogErrorAt();
          goto LABEL_29;
        }

        audioEngineAVC_Resume_cold_4(&v30);
      }

      else
      {
        audioEngineAVC_Resume_cold_5(&v30);
      }

      v26 = v30;
      FigSimpleMutexUnlock();
      if (!v26)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    v26 = v16;
    audioEngineAVC_Resume_cold_3();
  }

LABEL_29:
  FigSimpleMutexUnlock();
LABEL_30:
  if (gLogCategory_APAudioEngineAVC <= 90 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_34:
  if (a3)
  {
LABEL_35:
    a3(a1, v26, a4);
  }

LABEL_36:
  result = mach_absolute_time();
  if (gLogCategory_APAudioEngineAVC <= 50)
  {
    if (gLogCategory_APAudioEngineAVC != -1)
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

uint64_t audioEngineAVC_Suspend(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    audioEngineAVC_Suspend_cold_1();
  }

  mach_absolute_time();
  FigSimpleMutexLock();
  v7 = audioEngineAVC_suspendInternal();
  result = FigSimpleMutexUnlock();
  if (a3)
  {
    result = a3(a1, v7, a4);
  }

  if (gLogCategory_APAudioEngineAVC <= 50)
  {
    if (gLogCategory_APAudioEngineAVC != -1)
    {
      return audioEngineAVC_Suspend_cold_2();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return audioEngineAVC_Suspend_cold_2();
    }
  }

  return result;
}

uint64_t audioEngineAVC_SetEndpointStream(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  v5 = a3;
  if (gLogCategory_APAudioEngineAVC <= 50)
  {
    if (gLogCategory_APAudioEngineAVC != -1 || (v7 = _LogCategory_Initialize(), v5 = a3, v7))
    {
      LogPrintF();
      v5 = a3;
    }
  }

  return v5(a1, 0, a4);
}

uint64_t audioEngineAVC_Flush()
{
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    audioEngineAVC_Flush_cold_1();
  }

  return 0;
}

uint64_t APEndpointUGLWrapperCreate(unint64_t a1, unint64_t a2, uint64_t a3, const __CFUUID **a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0;
  if (!(a1 | a2))
  {
    APEndpointUGLWrapperCreate_cold_7(&v19);
    goto LABEL_28;
  }

  v7 = *MEMORY[0x277CBECE8];
  FigEndpointExtendedGetClassID();
  v19 = CMDerivedObjectCreate();
  if (v19)
  {
    APEndpointUGLWrapperCreate_cold_1();
    goto LABEL_28;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF();
  v9 = dispatch_queue_create(label, 0);
  *DerivedStorage = v9;
  if (!v9)
  {
    APEndpointUGLWrapperCreate_cold_6();
    goto LABEL_28;
  }

  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 32) = v10;
  if (!v10)
  {
    APEndpointUGLWrapperCreate_cold_5();
    goto LABEL_28;
  }

  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 144) = Mutable;
  if (!Mutable)
  {
    APEndpointUGLWrapperCreate_cold_4();
    goto LABEL_28;
  }

  v12 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 152) = v12;
  if (!v12)
  {
    APEndpointUGLWrapperCreate_cold_3();
    goto LABEL_28;
  }

  if (a1)
  {
    endpointUGLWrapper_setWrappedEndpoint(v18, a1);
    *(DerivedStorage + 48) = 1;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
LABEL_9:
    *(DerivedStorage + 16) = CFRetain(a2);
    goto LABEL_14;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(CMBaseObject, *MEMORY[0x277CC1340], v7, DerivedStorage + 16);
  }

  if (!*(DerivedStorage + 16))
  {
    APEndpointUGLWrapperCreate_cold_2(&v19);
LABEL_28:
    v15 = v18;
    if (!v18)
    {
      return v19;
    }

    goto LABEL_19;
  }

LABEL_14:
  APSGetDeviceID();
  *(DerivedStorage + 24) = CFDataCreate(v7, bytes, 6);
  v15 = CFUUIDCreate(v7);
  *(DerivedStorage + 8) = CFUUIDCreateString(v7, v15);
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *a4 = v18;
  v18 = 0;
  if (v15)
  {
LABEL_19:
    CFRelease(v15);
  }

  return v19;
}

uint64_t APEndpointUGLWrapperIsEmpty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 40))
  {
    v1 = APSGetFBOPropertyInt64() != 0;
  }

  else
  {
    v1 = 0;
  }

  Count = CFDictionaryGetCount(*(DerivedStorage + 144));
  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return (Count == 0) & ~v1;
}

uint64_t APEndpointUGLWrapperAddShadowEndpoint(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APTransportDeviceGetDiscoveryID();
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (a3 && !CFDictionaryContainsKey(*(DerivedStorage + 144), a2))
  {
    CFDictionarySetValue(*(DerivedStorage + 144), a2, a3);
  }

  if (a4)
  {
    if (!CFDictionaryContainsKey(*(DerivedStorage + 152), a2))
    {
      v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      CFDictionarySetValue(*(DerivedStorage + 152), a2, v8);
      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void APEndpointUGLWrapperRemoveShadowEndpoint(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 144), a2);
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APTransportDeviceGetDiscoveryID();
    LogPrintF();
  }

  if (Value)
  {
    if (APSGetFBOPropertyInt64())
    {
      if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v7)
      {
        v7(Value, 0, uglWrapper_deactivateShadowCompletionCallback, a1);
      }
    }

    else
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v6)
      {
        v6(Value);
      }
    }

    CFDictionaryRemoveValue(*(DerivedStorage + 144), a2);
  }

  v8 = CFDictionaryGetValue(*(DerivedStorage + 152), a2);
  if (v8)
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v9 = 0;
  }

  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APTransportDeviceGetDiscoveryID();
    LogPrintF();
  }

  if (v8)
  {
    CFDictionaryRemoveValue(*(DerivedStorage + 152), a2);
  }

  FigSimpleMutexUnlock();
  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t uglWrapper_deactivateShadowCompletionCallback(uint64_t a1)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 32);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

CFTypeRef endpointUGLWrapper_copyShadowEndpoint()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v1 = CFRetain(Value);
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t APEndpointUGLWrapperUpdateWithRCEndpoint(uint64_t a1, CFTypeRef a2)
{
  cf = 0;
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a1 || CMBaseObjectGetVTable() != &kAPEndpointUGLWrapperVTable)
  {
    APEndpointUGLWrapperUpdateWithRCEndpoint_cold_5();
    v9 = 0;
    a2 = 0;
LABEL_26:
    v10 = 4294950576;
    goto LABEL_32;
  }

  if (!a2)
  {
    APEndpointUGLWrapperUpdateWithRCEndpoint_cold_4();
    v9 = 0;
    goto LABEL_26;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v10 = 4294954514;
LABEL_17:
    APSLogErrorAt();
    v9 = 0;
LABEL_18:
    a2 = 0;
    goto LABEL_32;
  }

  v6 = v5(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
  if (v6)
  {
    v10 = v6;
    goto LABEL_17;
  }

  v7 = cf;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!CFDictionaryGetValue(*(DerivedStorage + 152), v7))
  {
    FigSimpleMutexUnlock();
LABEL_20:
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      APEndpointUGLWrapperUpdateWithRCEndpoint_cold_3();
    }

    v9 = 0;
    a2 = 0;
    goto LABEL_24;
  }

  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  FigSimpleMutexUnlock();
  if (!v9)
  {
    goto LABEL_20;
  }

  if (v9 != a2)
  {
    if (gLogCategory_APEndpointUGLWrapper <= 60 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      APTransportDeviceGetDiscoveryID();
      LogPrintF();
    }

    v10 = 0;
    goto LABEL_18;
  }

  a2 = endpointUGLWrapper_copyShadowEndpoint();
  if (!a2)
  {
    APEndpointUGLWrapperUpdateWithRCEndpoint_cold_2();
LABEL_24:
    v10 = 4294950571;
    goto LABEL_32;
  }

  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapperUpdateWithRCEndpoint_cold_1();
  }

  v10 = 0;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v10;
}

uint64_t APEndpointUGLWrapper_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_Finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 96);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 96) = 0;
  }

  v5 = *(DerivedStorage + 136);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 136) = 0;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 144);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 144) = 0;
  }

  v8 = *(DerivedStorage + 152);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 152) = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t APEndpointUGLWrapper_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, const void **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 30 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, *MEMORY[0x277CC1568]))
  {
    v9 = MEMORY[0x277CC1A18];
LABEL_13:
    SInt64 = *v9;
LABEL_14:
    SInt64 = CFRetain(SInt64);
LABEL_15:
    MXDescriptor = 0;
    *a4 = SInt64;
    return MXDescriptor;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13F0]) || CFEqual(a2, *MEMORY[0x277CC14C8]) || CFEqual(a2, *MEMORY[0x277CC13B0]) || CFEqual(a2, *MEMORY[0x277CC1338]) || CFEqual(a2, *MEMORY[0x277CC1438]))
  {
    v9 = MEMORY[0x277CBED28];
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1400]))
  {
LABEL_18:
    v9 = MEMORY[0x277CBED10];
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    SInt64 = *(DerivedStorage + 8);
    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1340]))
  {
    SInt64 = *(DerivedStorage + 16);
    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1428]))
  {
    SInt64 = *(DerivedStorage + 24);
    if (!SInt64)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11F0]))
  {
    valuePtr = 0;
    FigSimpleMutexLock();
    if (*(DerivedStorage + 160))
    {
      valuePtr = *(DerivedStorage + 168);
    }

    FigSimpleMutexUnlock();
    v13 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v13;
    if (!v13)
    {
      APEndpointUGLWrapper_CopyProperty_cold_1();
      return 4294950575;
    }

    return 0;
  }

  if (CFEqual(a2, @"ActivationStage"))
  {
    FigSimpleMutexLock();
    *a4 = FigCFNumberCreateSInt64();
    FigSimpleMutexUnlock();
    if (!*a4)
    {
      APEndpointUGLWrapper_CopyProperty_cold_2();
      return 4294950575;
    }

    return 0;
  }

  if (CFEqual(a2, @"IsInUse"))
  {
    FigSimpleMutexLock();
    v14 = MEMORY[0x277CBED28];
    v15 = *(DerivedStorage + 160);
LABEL_37:
    if (!v15)
    {
      v14 = MEMORY[0x277CBED10];
    }

    *a4 = CFRetain(*v14);
    FigSimpleMutexUnlock();
    return 0;
  }

  v16 = epp_copyInner();
  if (!v16)
  {
    if (!CFEqual(a2, *MEMORY[0x277CC12D8]))
    {
      if (!CFEqual(a2, *MEMORY[0x277CC1200]))
      {
        if (CFEqual(a2, *MEMORY[0x277CC1370]) || CFEqual(a2, *MEMORY[0x277CC13C0]) || CFEqual(a2, @"IsClusterEndpoint") || CFEqual(a2, *MEMORY[0x277CC1278]))
        {
          goto LABEL_18;
        }

        if (CFEqual(a2, *MEMORY[0x277CC14F8]))
        {
          SInt64 = FigCFNumberCreateSInt64();
          goto LABEL_15;
        }

        if (CFEqual(a2, *MEMORY[0x277CC1450]))
        {
          SInt64 = @"UGL iPhone";
          goto LABEL_14;
        }

        if (CFEqual(a2, *MEMORY[0x277CC1440]))
        {
          SInt64 = @"iPhone14,3";
          goto LABEL_14;
        }

        if (CFEqual(a2, *MEMORY[0x277CC14F0]))
        {
          v9 = MEMORY[0x277CC19F8];
          goto LABEL_13;
        }

        if (!CFEqual(a2, *MEMORY[0x277CC13A0]))
        {
          if (gLogCategory_APEndpointUGLWrapper <= 30 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          return 4294954509;
        }

        FigSimpleMutexLock();
        v14 = MEMORY[0x277CBED28];
        v15 = *(DerivedStorage + 176);
        goto LABEL_37;
      }

      *a4 = 0;
      goto LABEL_56;
    }

    MXDescriptor = endpointUGLWrapper_createMXDescriptor(a1, a3, a4);
    if (!MXDescriptor || gLogCategory_APEndpointUGLWrapper > 90 || gLogCategory_APEndpointUGLWrapper == -1 && !_LogCategory_Initialize())
    {
      return MXDescriptor;
    }

LABEL_69:
    LogPrintF();
    return MXDescriptor;
  }

  v17 = v16;
  CMBaseObject = FigEndpointGetCMBaseObject();
  MXDescriptor = CMBaseObjectCopyProperty(CMBaseObject, a2, a3, a4);
  CFRelease(v17);
  if (MXDescriptor)
  {
    if (gLogCategory_APEndpointUGLWrapper > 90 || gLogCategory_APEndpointUGLWrapper == -1 && !_LogCategory_Initialize())
    {
      return MXDescriptor;
    }

    goto LABEL_69;
  }

  if (CFEqual(a2, *MEMORY[0x277CC12D8]))
  {

    return endpointUGLWrapper_updateMXDescriptor(a1, a3, a4);
  }

  if (!CFEqual(a2, *MEMORY[0x277CC1200]))
  {
    return 0;
  }

LABEL_56:

  return uglWrapper_updateAirPlayEndpointProperties(a3, a4);
}

uint64_t APEndpointUGLWrapper_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 30 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = epp_copyInner();
  if (!v5)
  {
    return 4294950570;
  }

  v6 = v5;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v9 = v8(CMBaseObject, a2, a3);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v6);
  return v9;
}

uint64_t endpointUGLWrapper_updateMXDescriptor(uint64_t a1, uint64_t a2, const void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v7 = MutableCopy;
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277D26FB0], *(DerivedStorage + 8));
    v8 = *MEMORY[0x277D26EA0];
    v9 = FigCFDictionaryGetValue();
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    value = v9;
    updated = uglWrapper_updateAirPlayEndpointProperties(a2, &value);
    v11 = value;
    if (!updated)
    {
      CFDictionarySetValue(v7, v8, value);
      if (gLogCategory_APEndpointUGLWrapper <= 30)
      {
        endpointUGLWrapper_updateMXDescriptor_cold_1(gLogCategory_APEndpointUGLWrapper);
      }

      v12 = *a3;
      *a3 = v7;
      CFRetain(v7);
      if (v12)
      {
        CFRelease(v12);
      }
    }

    CFRelease(v7);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    endpointUGLWrapper_updateMXDescriptor_cold_2();
    return 4294950575;
  }

  return updated;
}

uint64_t uglWrapper_updateAirPlayEndpointProperties(uint64_t a1, const void **a2)
{
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v4 = MutableCopy;
    CFDictionarySetValue(MutableCopy, @"IsRepresentingUGLSender", *MEMORY[0x277CBED28]);
    v5 = *a2;
    *a2 = v4;
    CFRetain(v4);
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v4);
    return 0;
  }

  else
  {
    uglWrapper_updateAirPlayEndpointProperties_cold_1();
    return 4294950575;
  }
}

uint64_t endpointUGLWrapper_createMXDescriptor(uint64_t a1, const __CFAllocator *a2, const void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277D26FA8], @"UGL iPhone");
    CFDictionarySetValue(v7, *MEMORY[0x277D26FB0], *(DerivedStorage + 8));
    CFDictionarySetValue(v7, *MEMORY[0x277D26F18], *(DerivedStorage + 16));
    CFDictionarySetValue(v7, *MEMORY[0x277D26F48], *MEMORY[0x277CBED10]);
    v8 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v7, *MEMORY[0x277D26F68], *MEMORY[0x277CBED28]);
    CFDictionarySetValue(v7, *MEMORY[0x277D26F40], v8);
    CFDictionarySetValue(v7, *MEMORY[0x277D26F70], v8);
    CFDictionarySetValue(v7, *MEMORY[0x277D26F10], v8);
    CFDictionarySetValue(v7, *MEMORY[0x277D26F90], @"iPhone14,3");
    updated = uglWrapper_updateAirPlayEndpointProperties(a2, &value);
    v10 = value;
    if (!updated)
    {
      endpointUGLWrapper_createMXDescriptor_cold_1(v7, value, a3);
    }

    CFRelease(v7);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    endpointUGLWrapper_createMXDescriptor_cold_2();
    return 4294950575;
  }

  return updated;
}

uint64_t APEndpointUGLWrapper_ActivateForFeaturesWithCompletionCallback(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 160))
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = -16727;
  }

  else
  {
    *(DerivedStorage + 160) = 1;
    ++*(DerivedStorage + 168);
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = 0;
  }

  v12 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E0040B8CAE2EDuLL);
  *v12 = CFRetain(a1);
  v12[1] = 0;
  *(v12 + 4) = v11;
  v13 = *(DerivedStorage + 168);
  v12[3] = a2;
  v12[4] = v13;
  if (a3)
  {
    v14 = CFRetain(a3);
  }

  else
  {
    v14 = 0;
  }

  v12[5] = v14;
  v12[6] = a4;
  v12[7] = a5;
  endpointUGLWrapper_activateInternal(v12);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APEndpointUGLWrapper_DeactivateWithCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_DeactivateWithCompletionCallback_cold_1();
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  v9 = endpointUGLWrapper_deactivateInternal(a1, *(DerivedStorage + 40), a2, a3, a4);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t APEndpointUGLWrapper_EnsureAuthorizedWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_EnsureAuthorizedWithCompletionCallback_cold_1();
  }

  v8 = epp_copyInner();
  if (!v8)
  {
    return 4294949690;
  }

  v9 = v8;
  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  *v10 = a1;
  v10[1] = a3;
  v10[2] = a4;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v11)
  {
    v12 = v11(v9, a2, uglWrapper_endpointCompletionCallback, v10);
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(v9);
  return v12;
}

uint64_t APEndpointUGLWrapper_Dissociate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_Dissociate_cold_1();
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v4 = CFRetain(v3);
  if (!v4)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  endpointUGLWrapper_setWrappedEndpoint(a1, 0);
  v5 = 0;
LABEL_9:
  v6 = FigCFDictionaryCopyArrayOfKeys();
  v7 = *(DerivedStorage + 168);
  *(DerivedStorage + 176) = 1;
  FigSimpleMutexUnlock();
  if ((v5 & 1) == 0)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v8)
    {
      v8(v4);
    }
  }

  CFArrayGetCount(v6);
  CFArrayApplyBlock();
  APEndpointCreateEndpointActivationNotificationPayload(*MEMORY[0x277CBECE8], 16, v7, &cf);
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if ((v5 & 1) == 0)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t APEndpointUGLWrapper_SetDelegate(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    v4 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v4;
    v11 = *(a2 + 32);
    v8[1] = 0;
    v8[0] = *&v10[0];
    v9 = *(a2 + 48);
    APEndpointUGLWrapper_SetDelegateRouting(a1, v10);
    v5 = v8;
    v6 = a1;
  }

  else
  {
    APEndpointUGLWrapper_SetDelegateRouting(a1, 0);
    v6 = a1;
    v5 = 0;
  }

  APEndpointUGLWrapper_SetDelegateRemoteControl(v6, v5);
  return 0;
}

uint64_t APEndpointUGLWrapper_SetDelegateRouting(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 96);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 96) = 0;
  }

  if (a2)
  {
    v5 = *a2;
    v6 = a2[1];
    *(DerivedStorage + 84) = *(a2 + 4);
    *(DerivedStorage + 68) = v6;
    *(DerivedStorage + 52) = v5;
    *(DerivedStorage + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    *(DerivedStorage + 84) = 0;
    *(DerivedStorage + 68) = 0u;
    *(DerivedStorage + 52) = 0u;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APEndpointUGLWrapper_SetDelegateRemoteControl(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 136);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 136) = 0;
  }

  if (a2)
  {
    v5 = *a2;
    *(DerivedStorage + 120) = a2[1];
    *(DerivedStorage + 104) = v5;
    *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    *(DerivedStorage + 120) = 0u;
    *(DerivedStorage + 104) = 0u;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APEndpointUGLWrapper_SetDelegateVolumeAndMute(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = epp_copyInner();
  if (!v3)
  {
    return 4294949690;
  }

  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v5)
  {
    v6 = v5(v4, a2);
  }

  else
  {
    v6 = 4294954514;
  }

  CFRelease(v4);
  return v6;
}

uint64_t APEndpointUGLWrapper_CreatePlaybackSession(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_CreatePlaybackSession_cold_1();
  }

  v3 = epp_copyInner();
  if (!v3)
  {
    return 4294949690;
  }

  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v5)
  {
    v6 = v5(v4, a2);
  }

  else
  {
    v6 = 4294954514;
  }

  CFRelease(v4);
  return v6;
}

void endpointUGLWrapper_activateInternal(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  v4 = *(a1 + 16);
  if (v4)
  {
    goto LABEL_36;
  }

  v5 = *(DerivedStorage + 40);
  if (!v5)
  {
    CMBaseObjectGetDerivedStorage();
    v6 = &unk_27CFF0000;
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      endpointUGLWrapper_activateInternal_cold_1();
    }

    FigSimpleMutexCheckIsLockedOnThisThread();
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexCheckIsLockedOnThisThread();
    CMBaseObjectGetDerivedStorage();
    v68 = 0;
    v69 = &v68;
    v70 = 0x2000000000;
    v71 = 0;
    FigSimpleMutexCheckIsLockedOnThisThread();
    *v66 = MEMORY[0x277D85DD0];
    *&v66[8] = 0x40000000;
    *&v66[16] = __endpointUGLWrapper_copyUGLServerInfoFromRCEndpoints_block_invoke;
    *&v66[24] = &unk_27849C3A8;
    *&v66[32] = &v68;
    *&v66[40] = v2;
    FigCFDictionaryApplyBlock();
    v7 = v69[3];
    _Block_object_dispose(&v68, 8);
    if (!v7)
    {
      CMBaseObjectGetDerivedStorage();
      v68 = 0;
      v69 = &v68;
      v70 = 0x2000000000;
      v71 = 0;
      FigSimpleMutexCheckIsLockedOnThisThread();
      *v66 = MEMORY[0x277D85DD0];
      *&v66[8] = 0x40000000;
      *&v66[16] = __endpointUGLWrapper_copyUGLServerInfoFromShadowEndpoints_block_invoke;
      *&v66[24] = &unk_27849C3D0;
      *&v66[32] = &v68;
      *&v66[40] = v2;
      FigCFDictionaryApplyBlock();
      v7 = v69[3];
      _Block_object_dispose(&v68, 8);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    CMBaseObjectGetDerivedStorage();
    value = 0;
    cf = 0;
    v62 = 0;
    v63 = 0;
    v27 = *MEMORY[0x277CBECE8];
    v28 = APAdvertiserInfoCreate();
    if (v28)
    {
      v49 = v28;
      endpointUGLWrapper_activateInternal_cold_2();
      v50 = 0;
      v58 = 0;
      v59 = 0;
      v61 = 0;
      v35 = 0;
      v48 = 0;
      v60 = 0;
      v47 = 0;
      v43 = 0;
LABEL_53:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v61)
      {
        CFRelease(v61);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (v48)
      {
        CFRelease(v48);
      }

      if (v60)
      {
        CFRelease(v60);
      }

      if (v59)
      {
        CFRelease(v59);
      }

      if (v47)
      {
        CFRelease(v47);
      }

      if (v63)
      {
        CFRelease(v63);
      }

      if (v62)
      {
        CFRelease(v62);
      }

      if (v58)
      {
        CFRelease(v58);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      if (v49)
      {
        endpointUGLWrapper_activateInternal_cold_8();
      }

      else
      {
        endpointUGLWrapper_setWrappedEndpoint(v2, v50);
      }

      v6 = &unk_27CFF0000;
      CFRelease(v7);
      if (v50)
      {
        CFRelease(v50);
      }

LABEL_8:
      v5 = *(DerivedStorage + 40);
      if (v5)
      {
        goto LABEL_9;
      }

      if (!*(a1 + 8))
      {
        v16 = CMBaseObjectGetDerivedStorage();
        v68 = 0;
        v69 = &v68;
        v70 = 0x2000000000;
        v71 = 0;
        FigSimpleMutexCheckIsLockedOnThisThread();
        v17 = *MEMORY[0x277CBECE8];
        Count = CFDictionaryGetCount(*(v16 + 144));
        Mutable = CFArrayCreateMutable(v17, Count, MEMORY[0x277CBF128]);
        if (Mutable)
        {
          *v66 = MEMORY[0x277D85DD0];
          *&v66[8] = 0x40000000;
          *&v66[16] = __endpointUGLWrapper_copySortedShadowEndpoints_block_invoke;
          *&v66[24] = &unk_27849C438;
          *&v66[40] = v2;
          v67 = Mutable;
          *&v66[32] = &v68;
          FigCFDictionaryApplyBlock();
          v20 = v6[532];
          if (v20 <= 50 && (v20 != -1 || _LogCategory_Initialize()))
          {
            endpointUGLWrapper_activateInternal_cold_9(Mutable);
          }
        }

        else
        {
          endpointUGLWrapper_activateInternal_cold_10();
        }

        _Block_object_dispose(&v68, 8);
        *(a1 + 8) = Mutable;
      }

      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v22 = CFRetain(ValueAtIndex);
        if (v22)
        {
          v23 = v22;
          CFArrayRemoveValueAtIndex(*(a1 + 8), 0);
          v24 = v6[532];
          if (v24 <= 50 && (v24 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v51 = *(a1 + 24);
          v52 = *(a1 + 40);
          v53 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v53)
          {
            v53(v23, v51, v52, uglWrapper_shadowActivationCompletionCallback, a1);
          }

          v15 = v23;
          goto LABEL_19;
        }
      }

      v25 = v6[532];
      if (v25 > 50)
      {
        v26 = 0;
        v4 = -17606;
LABEL_90:
        v54 = *(a1 + 32);
        *v66 = v2;
        *&v66[8] = v54;
        *&v66[16] = v26;
        *&v66[24] = v4;
        *&v66[32] = *(a1 + 48);
        CFRetain(v2);
        APSDispatchAsyncFHelper();
        if (v4 != -16727)
        {
          endpointUGLWrapper_deactivateInternal(v2, 0, 0, 0, 0);
        }

        uglWrapper_freeEndpointActivationContext(a1);
        return;
      }

      if (v25 != -1 || _LogCategory_Initialize())
      {
        endpointUGLWrapper_activateInternal_cold_11();
      }

      v4 = -17606;
LABEL_36:
      if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v4 == -16727)
      {
        v26 = *(a1 + 24);
        v4 = -16727;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_90;
    }

    UInt32 = FigCFNumberCreateUInt32();
    v30 = FigCFNumberCreateUInt32();
    v31 = APSFeaturesCreateFromStringRepresentation();
    CFGetHardwareAddress();
    v32 = HardwareAddressToCString();
    v61 = CFStringCreateWithCString(v27, v32, 0x600u);
    APAdvertiserInfoSetProperty();
    APAdvertiserInfoSetProperty();
    APAdvertiserInfoSetProperty();
    v33 = *MEMORY[0x277CBED28];
    APAdvertiserInfoSetProperty();
    APAdvertiserInfoSetProperty();
    v56 = UInt32;
    APAdvertiserInfoSetProperty();
    v57 = v31;
    APAdvertiserInfoSetProperty();
    APAdvertiserInfoSetProperty();
    APAdvertiserInfoSetProperty();
    v60 = v30;
    APAdvertiserInfoSetProperty();
    ShortVersionLength = APSVersionUtilsGetShortVersionLength();
    v59 = CFStringCreateWithBytesNoCopy(v27, "920.10.1", ShortVersionLength, 0x600u, 0, *MEMORY[0x277CBED00]);
    APAdvertiserInfoSetProperty();
    v35 = CFDictionaryCreateMutable(v27, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetInt64();
    CFDictionarySetValue(v35, *MEMORY[0x277CE4CF8], value);
    v36 = *MEMORY[0x277CBED10];
    CFDictionarySetValue(v35, *MEMORY[0x277CE4D08], *MEMORY[0x277CBED10]);
    CFDictionarySetValue(v35, *MEMORY[0x277CE4D10], v33);
    CFDictionarySetValue(v35, *MEMORY[0x277CE4D00], v36);
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    Int64 = CFDictionaryGetInt64();
    v55 = CFDictionaryGetValue(v7, @"Password");
    if (TypedValue)
    {
      v39 = CFArrayCreateMutable(v27, 0, MEMORY[0x277CBF128]);
      if (v39)
      {
        *v66 = MEMORY[0x277D85DD0];
        *&v66[8] = 0x40000000;
        *&v66[16] = __uglWrapper_createNetworkAddressesArray_block_invoke;
        *&v66[24] = &__block_descriptor_tmp_65_0;
        *&v66[40] = Int64;
        *&v66[32] = v39;
        v40 = v39;
        FigCFArrayApplyBlock();
        v58 = v40;
        v41 = APTransportDeviceCreateWithNetworkAddresses();
        if (v41)
        {
          v49 = v41;
          endpointUGLWrapper_activateInternal_cold_3();
        }

        else
        {
          v42 = APEndpointDescriptionAirPlayCreateWithTransportDevice(v27, v63, 0, &v62);
          if (!v42)
          {
            v43 = CFDictionaryCreateMutable(v27, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionarySetValue(v43, @"IsRemoteControlOnly", v33);
            CFDictionarySetValue(v43, @"RepresentsLocalDevice", v36);
            v44 = APEndpointCreateWithEndpointDescription(v27, v62, 0, 0, v43, &cf);
            if (!v44)
            {
              CMBaseObject = FigEndpointGetCMBaseObject();
              v46 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              v48 = v56;
              v47 = v57;
              if (v46)
              {
                v46(CMBaseObject, *MEMORY[0x277CC1488], v55);
              }

              if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v49 = 0;
              v50 = cf;
              cf = 0;
              goto LABEL_53;
            }

            v49 = v44;
            endpointUGLWrapper_activateInternal_cold_5();
            v50 = 0;
            goto LABEL_105;
          }

          v49 = v42;
          endpointUGLWrapper_activateInternal_cold_4();
        }

        v50 = 0;
LABEL_104:
        v43 = 0;
LABEL_105:
        v48 = v56;
        v47 = v57;
        goto LABEL_53;
      }

      endpointUGLWrapper_activateInternal_cold_6();
      v49 = -16721;
    }

    else
    {
      endpointUGLWrapper_activateInternal_cold_7();
      v49 = -16720;
    }

    APSLogErrorAt();
    v50 = 0;
    v58 = 0;
    goto LABEL_104;
  }

LABEL_9:
  v8 = 0uLL;
  memset(v66, 0, 40);
  if (gLogCategory_APEndpointUGLWrapper <= 50)
  {
    if (gLogCategory_APEndpointUGLWrapper != -1 || (v9 = _LogCategory_Initialize(), v8 = 0uLL, v5 = *(DerivedStorage + 40), v9))
    {
      LogPrintF();
      v8 = 0uLL;
      v5 = *(DerivedStorage + 40);
    }
  }

  *&v66[8] = v8;
  *&v66[24] = v8;
  *v66 = v2;
  *&v66[16] = uglWrapper_handleFailedInternal;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v10)
  {
    v10(v5, v66);
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  FigCFDictionarySetBoolean();
  v12 = *(DerivedStorage + 40);
  v13 = *(a1 + 24);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v14(v12, v13, MutableCopy, uglWrapper_wrappedActivationCompletionCallback, a1);
  }

  if (MutableCopy)
  {
    v15 = MutableCopy;
LABEL_19:
    CFRelease(v15);
  }
}

uint64_t uglWrapper_wrappedActivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (!a4)
  {
    *(DerivedStorage + 160) = 2;
  }

  CFRetain(*a5);
  APSDispatchAsyncFHelper();
  if (a4 != -16727 && a4)
  {
    endpointUGLWrapper_deactivateInternal(*a5, a1, 0, 0, 0);
  }

  uglWrapper_freeEndpointActivationContext(a5);
  return FigSimpleMutexUnlock();
}

uint64_t uglWrapper_shadowActivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a4 == -17604)
  {
    *(a5 + 16) = -17604;
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  endpointUGLWrapper_activateInternal(a5);

  return FigSimpleMutexUnlock();
}

uint64_t endpointUGLWrapper_deactivateInternal(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  *(DerivedStorage + 160) = 0;
  v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A004000BA895BuLL);
  *v11 = FigSimpleMutexCreate();
  v11[1] = CFRetain(a1);
  v11[7] = *(DerivedStorage + 168);
  v11[8] = a4;
  v11[9] = a5;
  v12 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  v13 = *MEMORY[0x277CBECE8];
  Count = CFDictionaryGetCount(*(v12 + 144));
  Mutable = CFArrayCreateMutable(v13, Count, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    FigCFDictionaryApplyBlock();
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      endpointUGLWrapper_deactivateInternal_cold_1(Mutable);
    }
  }

  else
  {
    endpointUGLWrapper_deactivateInternal_cold_2();
  }

  v11[4] = Mutable;
  FigSimpleMutexLock();
  if (a2)
  {
    v11[2] = CFRetain(a2);
    *(v11 + 6) = 1;
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(DerivedStorage + 40) != a2 && gLogCategory_APEndpointUGLWrapper <= 60 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v16 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v16)
    {
      v16(a2, 0);
    }

    v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v17)
    {
      a2 = v17(a2, a3, uglWrapper_deactivationCompletionCallback, v11);
    }

    else
    {
      a2 = 4294954514;
    }

    *(v20 + 24) = 1;
    if (!*(DerivedStorage + 48))
    {
      endpointUGLWrapper_setWrappedEndpoint(a1, 0);
    }
  }

  else
  {
    *(v11 + 6) = 0;
  }

  FigCFArrayApplyBlock();
  FigSimpleMutexUnlock();
  if (!*(v20 + 24))
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      endpointUGLWrapper_deactivateInternal_cold_3();
    }

    CFRetain(a1);
    APSDispatchAsyncFHelper();
    uglWrapper_freeEndpointDeactivationContext(v11);
  }

  _Block_object_dispose(&v19, 8);
  return a2;
}

void uglWrapper_freeEndpointActivationContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  if (gLogCategory_APEndpointUGLWrapper <= 30 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    uglWrapper_freeEndpointActivationContext_cold_1();
  }

  free(a1);
}

void __endpointUGLWrapper_copyUGLServerInfoFromRCEndpoints_block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      *(*(*(a1 + 32) + 8) + 24) = endpointUGLWrapper_copyUGLServerInfo();

      CFRelease(v3);
    }
  }
}

uint64_t endpointUGLWrapper_copyUGLServerInfo()
{
  v7 = 0;
  v6 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v1 && (v2 = *MEMORY[0x277CBECE8], v1(CMBaseObject, @"EndpointDescription", *MEMORY[0x277CBECE8], &v7), v7))
  {
    v3 = APEndpointDescriptionGetCMBaseObject(v7);
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(v3, @"uglServerInfo", v2, &v6);
      if (v6)
      {
        if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
        {
          FigCFDictionaryGetValue();
          IsAppleInternalBuild();
          LogPrintF();
        }
      }
    }
  }

  else if (endpointUGLWrapper_copyUGLServerInfo_cold_1())
  {
    return v6;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

uint64_t __endpointUGLWrapper_copyUGLServerInfoFromShadowEndpoints_block_invoke(uint64_t result)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v1 = result;
    result = endpointUGLWrapper_copyUGLServerInfo();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  return result;
}

void __uglWrapper_createNetworkAddressesArray_block_invoke(uint64_t a1)
{
  if (APSNetworkAddressCreateWithString())
  {
    __uglWrapper_createNetworkAddressesArray_block_invoke_cold_1();
  }

  else
  {
    if (*(a1 + 40))
    {
      APSNetworkAddressSetPort();
    }

    CFArrayAppendValue(*(a1 + 32), 0);
  }
}

void __uglWrapper_handleFailedInternal_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    __uglWrapper_handleFailedInternal_block_invoke_cold_1();
  }

  (*(a1 + 48))(*(a1 + 32), *(a1 + 56), *(a1 + 40), *(a1 + 64));
  CFRelease(*(a1 + 72));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __endpointUGLWrapper_copySortedShadowEndpoints_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (APSGetFBOPropertyInt64())
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFArrayInsertValueAtIndex(*(a1 + 48), 0, a3);
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6 && (v6(CMBaseObject, @"EndpointDescription", *MEMORY[0x277CBECE8], &cf), cf) && APSGetFBOPropertyInt64())
    {
      if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        __endpointUGLWrapper_copySortedShadowEndpoints_block_invoke_cold_1();
      }

      CFArrayInsertValueAtIndex(*(a1 + 48), *(*(*(a1 + 32) + 8) + 24), a3);
    }

    else
    {
      if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFArrayAppendValue(*(a1 + 48), a3);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void uglWrapper_deactivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = *(a5 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a5 + 16) == a1)
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a5 + 40) = a2;
    *(a5 + 48) = a4;
    *(a5 + 24) = 2;
  }

  else if (FigCFArrayRemoveLastElementOfValue())
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(a5 + 24) != 2)
    {
      *(a5 + 40) = a2;
      *(a5 + 48) = a4;
    }
  }

  else if (gLogCategory_APEndpointUGLWrapper <= 90 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(a5 + 24) == 1 || (v11 = *(a5 + 32)) != 0 && CFArrayGetCount(v11))
  {

    FigSimpleMutexUnlock();
  }

  else
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      uglWrapper_deactivationCompletionCallback_cold_1();
    }

    if (!*(DerivedStorage + 48))
    {
      CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v13 = Mutable;
        v14 = *MEMORY[0x277CBED10];
        CFDictionarySetValue(Mutable, @"IsInUse", *MEMORY[0x277CBED10]);
        CFDictionarySetValue(v13, @"WasAutoconnected", v14);
        if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
        {
          uglWrapper_deactivationCompletionCallback_cold_2();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        CFRelease(v13);
      }

      else
      {
        uglWrapper_deactivationCompletionCallback_cold_3();
      }
    }

    CFRetain(v9);
    APSDispatchAsyncFHelper();
    FigSimpleMutexUnlock();
    uglWrapper_freeEndpointDeactivationContext(a5);
  }
}

uint64_t __endpointUGLWrapper_deactivateInternal_block_invoke(void *a1, uint64_t a2)
{
  v5 = a1[5];
  v4 = a1[6];
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 16);
  if (v9)
  {
    result = v9(a2, v5, uglWrapper_deactivationCompletionCallback, v4);
  }

  *(*(a1[4] + 8) + 24) = 1;
  if (gLogCategory_APEndpointUGLWrapper <= 50)
  {
    if (gLogCategory_APEndpointUGLWrapper != -1)
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

void uglWrapper_freeEndpointDeactivationContext(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexDestroy();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  free(a1);
}

void __endpointUGLWrapper_copyActivatedShadowEndpoints_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (APSGetFBOPropertyInt64())
  {
    v5 = *(a1 + 32);

    CFArrayAppendValue(v5, a3);
  }
}

void uglWrapper_endpointCompletionCallback(uint64_t a1, uint64_t a2, void *a3)
{
  (a3[1])(*a3, a2, a3[2]);

  free(a3);
}

uint64_t APEndpointUGLWrapper_BorrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigEndpointExtendedGetFigEndpoint();
  v5 = epp_copyInner();
  if (!v5)
  {
    return 4294949690;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v7)
  {
    v8 = v7(v6, a2, a3);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t APEndpointUGLWrapper_UnborrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigEndpointExtendedGetFigEndpoint();
  v5 = epp_copyInner();
  if (!v5)
  {
    return 4294949690;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (v7)
  {
    v8 = v7(v6, a2, a3);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t APEndpointUGLWrapper_DuckAudio(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigEndpointExtendedGetFigEndpoint();
  v3 = epp_copyInner();
  if (!v3)
  {
    return 4294949690;
  }

  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 48);
  if (v5)
  {
    v6 = v5(v4, a2);
  }

  else
  {
    v6 = 4294954514;
  }

  CFRelease(v4);
  return v6;
}

uint64_t APEndpointUGLWrapper_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigEndpointExtendedGetFigEndpoint();
  v10 = epp_copyInner();
  if (!v10)
  {
    return 4294949690;
  }

  v11 = v10;
  v12 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  *v12 = a1;
  v12[1] = a4;
  v12[2] = a5;
  v13 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v13)
  {
    v14 = v13(v11, a2, a3, uglWrapper_sendCommandCompletionCallback, v12);
  }

  else
  {
    v14 = 4294954514;
  }

  CFRelease(v11);
  return v14;
}

uint64_t APEndpointUGLWrapper_CreateRemoteControlSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_CreateRemoteControlSession_cold_1();
  }

  FigEndpointExtendedGetFigEndpoint();
  v5 = epp_copyInner();
  if (!v5)
  {
    return 4294949690;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 80);
  if (v7)
  {
    v8 = v7(v6, a2, a3);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t APEndpointUGLWrapper_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_CreateCommChannel_cold_1();
  }

  FigEndpointExtendedGetFigEndpoint();
  v5 = epp_copyInner();
  if (!v5)
  {
    return 4294949690;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 88);
  if (v7)
  {
    v8 = v7(v6, a2, a3);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t APEndpointUGLWrapper_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigEndpointExtendedGetFigEndpoint();
  v10 = epp_copyInner();
  if (!v10)
  {
    return 4294949690;
  }

  v11 = v10;
  v12 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  *v12 = a1;
  v12[1] = a4;
  v12[2] = a5;
  v13 = *(*(CMBaseObjectGetVTable() + 24) + 96);
  if (v13)
  {
    v14 = v13(v11, a2, a3, uglWrapper_sendDataCompletionCallback, v12);
  }

  else
  {
    v14 = 4294954514;
  }

  CFRelease(v11);
  return v14;
}

uint64_t APEndpointUGLWrapper_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigEndpointExtendedGetFigEndpoint();
  v3 = epp_copyInner();
  if (!v3)
  {
    return 4294949690;
  }

  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 104);
  if (v5)
  {
    v6 = v5(v4, a2);
  }

  else
  {
    v6 = 4294954514;
  }

  CFRelease(v4);
  return v6;
}

uint64_t APEndpointUGLWrapper_AcquireAndCopyResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigEndpointExtendedGetFigEndpoint();
  v7 = epp_copyInner();
  if (!v7)
  {
    return 4294949690;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 128);
  if (v9)
  {
    v10 = v9(v8, a2, a3, a4);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t APEndpointUGLWrapper_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigEndpointExtendedGetFigEndpoint();
  v5 = epp_copyInner();
  if (!v5)
  {
    return 4294949690;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 136);
  if (v7)
  {
    v8 = v7(v6, a2, a3);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

void APEndpointUGLWrapper_CloseAllCommChannels()
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_CloseAllCommChannels_cold_1();
  }

  FigEndpointExtendedGetFigEndpoint();
  v0 = epp_copyInner();
  if (v0)
  {
    v1 = v0;
    v2 = *(*(CMBaseObjectGetVTable() + 24) + 144);
    if (v2)
    {
      v2(v1);
    }

    CFRelease(v1);
  }
}

void uglWrapper_sendCommandCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  (a4[1])(*a4, a2, a3, a4[2]);

  free(a4);
}

void uglWrapper_sendDataCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  (a4[1])(*a4, a2, a3, a4[2]);

  free(a4);
}

uint64_t endpointUGLWrapper_handleWrappedNotification()
{
  if (gLogCategory_APEndpointUGLWrapper <= 30 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return CMNotificationCenterPostNotification();
}

uint64_t APEndpointStreamAudioAVCCreate(uint64_t a1, const void *a2, const void *a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    APEndpointStreamAudioAVCCreate_cold_4();
    return 4294950536;
  }

  if (!a3)
  {
    APEndpointStreamAudioAVCCreate_cold_3();
    return 4294950536;
  }

  if (!a5)
  {
    APEndpointStreamAudioAVCCreate_cold_2();
    return 4294950536;
  }

  FigEndpointStreamAirPlayGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v10 = v8;
    APEndpointStreamAudioAVCCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a3);
    DerivedStorage[1] = CFRetain(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v10 = 0;
    *a5 = 0;
    if (gLogCategory_APEndpointStreamAudioAVC <= 50)
    {
      if (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      return 0;
    }
  }

  return v10;
}

uint64_t apesoavc_suspendedNotificationCallbackPostEndpointStreamDissociated()
{
  if (gLogCategory_APEndpointStreamAudioAVC <= 50 && (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize()))
  {
    apesoavc_suspendedNotificationCallbackPostEndpointStreamDissociated_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void endpointStreamAudioAVC_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t endpointStreamAudioAVC_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpointStreamAudioAVC_CopyProperty_cold_11();
    return 4294950536;
  }

  if (!a4)
  {
    endpointStreamAudioAVC_CopyProperty_cold_10();
    return 4294950536;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v9 = *MEMORY[0x277CC1960];
LABEL_7:
    ASRDArrayPCM = 0;
    *a4 = CFRetain(v9);
    return ASRDArrayPCM;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v9 = *v8;
    goto LABEL_7;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18C8]))
  {
    CMBaseObjectGetDerivedStorage();
    v12 = FigHALAudioConduitDeviceCopyProperty();
    if (v12)
    {
      ASRDArrayPCM = v12;
      endpointStreamAudioAVC_CopyProperty_cold_1();
    }

    else
    {
      CFDataGetBytePtr(0);
      if (gLogCategory_APEndpointStreamAudioAVC <= 50 && (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize()))
      {
        endpointStreamAudioAVC_CopyProperty_cold_2();
      }

      if (APSSettingsGetIntWithDefault() && gLogCategory_APEndpointStreamAudioAVC <= 50 && (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize()))
      {
        endpointStreamAudioAVC_CopyProperty_cold_3();
      }

      v13 = APSAudioFormatDescriptionCreateWithASBD();
      if (v13)
      {
        ASRDArrayPCM = v13;
        endpointStreamAudioAVC_CopyProperty_cold_4();
      }

      else
      {
        v14 = APSAudioFormatDescriptionListCreate();
        if (v14)
        {
          ASRDArrayPCM = v14;
          endpointStreamAudioAVC_CopyProperty_cold_5();
        }

        else
        {
          v15 = APSAudioFormatDescriptionListAddFormat();
          if (v15)
          {
            ASRDArrayPCM = v15;
            endpointStreamAudioAVC_CopyProperty_cold_6();
          }

          else
          {
            ASRDArrayPCM = APSAudioFormatDescriptionListCreateASRDArrayPCM();
            if (ASRDArrayPCM)
            {
              endpointStreamAudioAVC_CopyProperty_cold_7();
            }

            else
            {
              *a4 = 0;
            }
          }
        }
      }
    }

    if (ASRDArrayPCM)
    {
      endpointStreamAudioAVC_CopyProperty_cold_8();
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CC1840]))
  {
    ASRDArrayPCM = APAudioEngineAVCCreate(a3, v8[1], a4);
    if (ASRDArrayPCM)
    {
      endpointStreamAudioAVC_CopyProperty_cold_9();
    }
  }

  else
  {
    return 4294954512;
  }

  return ASRDArrayPCM;
}

uint64_t endpointStreamAudioAVC_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 4294954512;
  }

  endpointStreamAudioAVC_SetProperty_cold_1();
  return 4294950536;
}

uint64_t endpointStreamAudioAVC_Suspend(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  if (gLogCategory_APEndpointStreamAudioAVC <= 50 && (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize()))
  {
    endpointStreamAudioAVC_Suspend_cold_1();
    if (!a3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    a3(a1, 0, a4);
  }

  return 0;
}

uint64_t endpointStreamAudioAVC_Resume(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  if (gLogCategory_APEndpointStreamAudioAVC <= 50 && (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize()))
  {
    endpointStreamAudioAVC_Resume_cold_1();
    if (!a3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    a3(a1, 0, a4);
  }

  return 0;
}

uint64_t APLocalPlaybackServerMake(_OWORD *a1, char a2, const void *a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1060040E913FD94uLL);
  v9 = *(a1 + 12);
  *(v8 + 28) = *a1;
  *(v8 + 40) = v9;
  UUIDGet();
  v8[24] = a2;
  v10 = dispatch_semaphore_create(1);
  *(v8 + 8) = v10;
  if (!v10)
  {
    APLocalPlaybackServerMake_cold_4();
    v15 = 4294960596;
LABEL_18:
    APLocalPlaybackServerDestroy(v8);
    return v15;
  }

  *(v8 + 9) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8[152] = 0;
  if (a3)
  {
    v11 = CFRetain(a3);
  }

  else
  {
    v11 = 0;
  }

  *(v8 + 7) = v11;
  v12 = HTTPServerCreate();
  if (v12)
  {
    v15 = v12;
    APLocalPlaybackServerMake_cold_1();
    goto LABEL_18;
  }

  v13 = *v8;
  *(v13 + 236) = -7001;
  *(v13 + 24) = &gLogCategory_APLocalPlaybackServer;
  if (v8[24])
  {
    *(v13 + 232) = 1;
  }

  v14 = CFObjectSetProperty();
  if (v14)
  {
    v15 = v14;
    APLocalPlaybackServerMake_cold_2();
    goto LABEL_18;
  }

  if (gLogCategory_APLocalPlaybackServer <= 40 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
  {
    APLocalPlaybackServerMake_cold_3();
  }

  v15 = 0;
  *a4 = v8;
  return v15;
}

uint64_t APLocalPlaybackServer_connectionInit(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buffer = 0;
  v9 = 0;
  v3 = (a2 + 56);
  v2 = *(a2 + 56);
  if (v2)
  {
    if (CFDataGetLength(v2) != 16)
    {
      APLocalPlaybackServer_connectionInit_cold_1();
      return 4294960553;
    }

    if (gLogCategory_APLocalPlaybackServer <= 30 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
    {
      APLocalPlaybackServer_connectionInit_cold_2();
    }

    v4 = *v3;
    v11.length = CFDataGetLength(v4);
    v11.location = 0;
    CFDataGetBytes(v4, v11, buffer);
    v5 = NetTransportTLSPSKConfigure();
    if (v5)
    {
      v6 = v5;
      APLocalPlaybackServer_connectionInit_cold_3();
      return v6;
    }

    HTTPConnectionSetTransportDelegate();
    if (gLogCategory_APLocalPlaybackServer <= 30 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
    {
      APLocalPlaybackServer_connectionInit_cold_4();
    }
  }

  return 0;
}

uint64_t APLocalPlaybackServer_handleMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APLocalPlaybackServer <= 10 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!strnicmpx())
  {
    if (!HTTPConnectionGetNextURLSegmentEx() || strnicmpx())
    {
      v18 = -6711;
      if (gLogCategory_APLocalPlaybackServer > 50 || gLogCategory_APLocalPlaybackServer == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (HTTPConnectionGetNextURLSegmentEx())
      {
        dispatch_semaphore_wait(*(a3 + 64), 0xFFFFFFFFFFFFFFFFLL);
        v6 = strnicmpx();
        v7 = MEMORY[0x277CBECE8];
        if (v6)
        {
          v8 = 0;
          v9 = memrchr();
          if (v9)
          {
            v8 = v9;
          }

          v10 = CFStringCreateWithBytes(*v7, 0, v8, 0x8000100u, 0);
          if (!v10)
          {
            v18 = -6742;
            if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v11 = 0;
            goto LABEL_82;
          }

          v11 = v10;
          if (!FigCFDictionaryGetValue())
          {
            v18 = -6742;
            if (gLogCategory_APLocalPlaybackServer > 50 || gLogCategory_APLocalPlaybackServer == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_82;
            }

            goto LABEL_70;
          }

          FigCFDictionaryGetBooleanIfPresent();
          CFStringGetTypeID();
          TypedValue = CFDictionaryGetTypedValue();
          if (!TypedValue)
          {
            v18 = -6742;
            if (gLogCategory_APLocalPlaybackServer > 50 || gLogCategory_APLocalPlaybackServer == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_82;
            }

            goto LABEL_70;
          }

          v13 = TypedValue;
        }

        else
        {
          v11 = 0;
          v13 = *(a3 + 80);
          if (*(a3 + 152))
          {
            MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v13);
            if (*(a2 + 8392) == *(a2 + 8400))
            {
LABEL_24:
              v13 = MutableCopy;
              goto LABEL_28;
            }

            while (HTTPConnectionGetNextURLSegmentEx())
            {
              CFStringAppendFormat(MutableCopy, 0, @"/%.*s", 0, 0);
              if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
              {
                APLocalPlaybackServer_handleMessage_cold_1();
              }

              if (*(a2 + 8392) == *(a2 + 8400))
              {
                goto LABEL_24;
              }
            }

            v18 = -6711;
            goto LABEL_38;
          }
        }

        if (*(a2 + 8392) == *(a2 + 8400))
        {
          MutableCopy = 0;
LABEL_28:
          dispatch_semaphore_signal(*(a3 + 64));
          if (v13)
          {
            APSHTTPOpenLocalFile();
            v18 = -6711;
            if (gLogCategory_APLocalPlaybackServer > 50 || gLogCategory_APLocalPlaybackServer == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_89;
            }
          }

          else
          {
            v18 = -6711;
            if (gLogCategory_APLocalPlaybackServer > 50 || gLogCategory_APLocalPlaybackServer == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_89;
            }
          }

          LogPrintF();
LABEL_89:
          v16 = 0;
          goto LABEL_39;
        }

        v18 = -6711;
        if (gLogCategory_APLocalPlaybackServer > 50 || gLogCategory_APLocalPlaybackServer == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_82;
        }

LABEL_70:
        LogPrintF();
LABEL_82:
        MutableCopy = 0;
LABEL_38:
        v16 = 1;
LABEL_39:
        v17 = 400;
        goto LABEL_40;
      }

      v18 = -6711;
      if (gLogCategory_APLocalPlaybackServer > 50 || gLogCategory_APLocalPlaybackServer == -1 && !_LogCategory_Initialize())
      {
LABEL_75:
        v11 = 0;
        v16 = 0;
        MutableCopy = 0;
        goto LABEL_39;
      }
    }

    LogPrintF();
    goto LABEL_75;
  }

  v18 = -6711;
  if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = 0;
  v16 = 0;
  MutableCopy = 0;
  v17 = 405;
LABEL_40:
  v19 = MEMORY[0x223DB1F50](a1, v17, v18, 0, 0, 0);
  if (v19)
  {
    APLocalPlaybackServer_handleMessage_cold_3();
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v16)
  {
    dispatch_semaphore_signal(*(a3 + 64));
  }

  return v19;
}

void APLocalPlaybackServerDestroy(uint64_t a1)
{
  CFObjectSetProperty();
  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t APLocalPlaybackServerRegisterPathCreatingHostAndURL(uint64_t a1, const __CFString *a2, const __CFString *a3, CFTypeRef *a4, CFStringRef *a5)
{
  theString = 0;
  cf = 0;
  if (a2)
  {
    v10 = a3 != 0;
    *(a1 + 152) = v10;
    v11 = apLocalPlaybackServer_createURLAndHostForPath(a1, a2, v10, 0, &cf, &theString);
    if (v11)
    {
      RelativePath = v11;
      APSLogErrorAt();
      v14 = theString;
    }

    else
    {
      dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
      v12 = *(a1 + 80);
      if (a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = a2;
      }

      *(a1 + 80) = v13;
      CFRetain(v13);
      if (v12)
      {
        CFRelease(v12);
      }

      v14 = theString;
      CFStringGetCString(theString, (a1 + 88), 64, 0x8000100u);
      dispatch_semaphore_signal(*(a1 + 64));
      if (gLogCategory_APLocalPlaybackServer <= 40 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *a4 = cf;
      cf = 0;
      if (*(a1 + 152))
      {
        v18 = 0;
        RelativePath = apLocalPlaybackServer_getRelativePath(a3, a2, &v18);
        if (RelativePath)
        {
          APLocalPlaybackServerRegisterPathCreatingHostAndURL_cold_1();
        }

        else
        {
          v16 = v18;
          *a5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"/1/%@%@", v14, v18);
          if (v16)
          {
            CFRelease(v16);
          }
        }
      }

      else
      {
        RelativePath = 0;
        *a5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"/1/%@", v14);
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    APLocalPlaybackServerRegisterPathCreatingHostAndURL_cold_2();
    RelativePath = 4294960591;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return RelativePath;
}

uint64_t apLocalPlaybackServer_createURLAndHostForPath(uint64_t a1, const __CFString *a2, int a3, const __CFString *a4, CFStringRef *a5, CFStringRef *a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *cStr = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  *v28 = 0u;
  bzero(buffer, 0x401uLL);
  if (!a2)
  {
    apLocalPlaybackServer_createURLAndHostForPath_cold_5();
    return 4294960591;
  }

  v22 = 0;
  v23 = 0;
  *v25 = 0;
  v24 = 0;
  memset(&c, 0, sizeof(c));
  if (!CFStringGetCString(a2, buffer, 1025, 0x8000100u))
  {
    apLocalPlaybackServer_createURLAndHostForPath_cold_4();
    return 4294960591;
  }

  SockAddrCopy();
  SockAddrSetPort();
  v12 = SockAddrToString();
  if (v12)
  {
    v19 = v12;
    apLocalPlaybackServer_createURLAndHostForPath_cold_1();
    return v19;
  }

  if (a4)
  {
    if (!CFStringGetCString(a4, v28, 64, 0x8000100u))
    {
      apLocalPlaybackServer_createURLAndHostForPath_cold_2();
      return 4294960591;
    }
  }

  else
  {
    CC_SHA1_Init(&c);
    CC_SHA1_Update(&c, "\xD9\x1D\xC0\x69_\x1AH\v\x94\x95\xBC\xB5\x84O\xF1\x76pLocalPlaybackServer_getRelativePath", 0x10u);
    CC_SHA1_Update(&c, (a1 + 8), 0x10u);
    v13 = strlen(buffer);
    CC_SHA1_Update(&c, buffer, v13);
    CC_SHA1_Final(&v25[4], &c);
    v26 = *&v25[4];
    BYTE6(v26) = v25[10] & 0xF | 0x50;
    BYTE8(v26) = v25[12] & 0x3F | 0x80;
    if (SNPrintF() - 64 < 0xFFFFFFC1)
    {
      apLocalPlaybackServer_createURLAndHostForPath_cold_3();
      return 4294960553;
    }
  }

  FileExtensionFromString = GetFileExtensionFromString();
  v15 = *FileExtensionFromString;
  v16 = *MEMORY[0x277CBECE8];
  *a5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (a3)
  {
    v17 = CFStringCreateWithCString(v16, v28, 0x8000100u);
  }

  else
  {
    v18 = "m4v";
    if (v15)
    {
      v18 = FileExtensionFromString;
    }

    v17 = CFStringCreateWithFormat(v16, 0, @"%s.%s", v28, v18, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15], v22, v23, v24, *v25);
  }

  v19 = 0;
  *a6 = v17;
  return v19;
}

uint64_t apLocalPlaybackServer_getRelativePath(const __CFString *a1, CFStringRef theString, void *a3)
{
  if (!a1)
  {
    apLocalPlaybackServer_getRelativePath_cold_2();
    return 4294960591;
  }

  if (!theString)
  {
    apLocalPlaybackServer_getRelativePath_cold_1();
    return 4294960591;
  }

  v6 = *MEMORY[0x277CBECE8];
  Length = CFStringGetLength(theString);
  result = CFStringCreateMutableCopy(v6, Length, theString);
  *a3 = result;
  if (!result)
  {
    return result;
  }

  CFStringTrim(result, a1);
  if (gLogCategory_APLocalPlaybackServer > 40)
  {
    return 0;
  }

  if (gLogCategory_APLocalPlaybackServer != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, CFTypeRef *a5, CFStringRef *a6)
{
  cf = 0;
  v20 = 0;
  if (!a2)
  {
    APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL_cold_5();
    Mutable = 0;
    RelativePath = 4294960591;
    goto LABEL_19;
  }

  if (a3)
  {
    URLAndHostForPath = apLocalPlaybackServer_createURLAndHostForPath(a1, a3, a4 != 0, a2, &v20, &cf);
    if (URLAndHostForPath)
    {
      RelativePath = URLAndHostForPath;
      APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL_cold_1();
      Mutable = 0;
    }

    else
    {
      v12 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
        if (a4)
        {
          CFDictionarySetValue(Mutable, @"IsLocalMovPkgHLSURL", *MEMORY[0x277CBED28]);
        }

        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        dispatch_semaphore_signal(*(a1 + 64));
        if (gLogCategory_APLocalPlaybackServer <= 40 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *a5 = v20;
        v20 = 0;
        if (!a4)
        {
          v16 = cf;
          RelativePath = 0;
          *a6 = CFStringCreateWithFormat(v12, 0, @"/1/%@", cf);
          if (!v16)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v18 = 0;
        RelativePath = apLocalPlaybackServer_getRelativePath(a4, a3, &v18);
        if (RelativePath)
        {
          APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL_cold_2();
        }

        else
        {
          v15 = v18;
          *a6 = CFStringCreateWithFormat(v12, 0, @"/1/%@%@", cf, v18);
          if (v15)
          {
            CFRelease(v15);
          }
        }
      }

      else
      {
        APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL_cold_3();
        RelativePath = 0;
      }
    }
  }

  else
  {
    APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL_cold_4();
    Mutable = 0;
    RelativePath = 4294960591;
  }

  v16 = cf;
  if (cf)
  {
LABEL_18:
    CFRelease(v16);
  }

LABEL_19:
  if (v20)
  {
    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return RelativePath;
}

uint64_t APLocalPlaybackServerUnRegisterUUID(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    APLocalPlaybackServerUnRegisterUUID_cold_2();
    return 4294960591;
  }

  dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
  CFDictionaryRemoveValue(*(a1 + 72), a2);
  dispatch_semaphore_signal(*(a1 + 64));
  if (gLogCategory_APLocalPlaybackServer > 40)
  {
    return 0;
  }

  if (gLogCategory_APLocalPlaybackServer != -1 || (result = _LogCategory_Initialize(), result))
  {
    APLocalPlaybackServerUnRegisterUUID_cold_1();
    return 0;
  }

  return result;
}

uint64_t APPairingClientGetClassID()
{
  if (_MergedGlobals_9 != -1)
  {
    APPairingClientGetClassID_cold_1();
  }

  return qword_280FB1AC8;
}

uint64_t pairingSession_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&pairingSession_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APEndpointManagerCarPlayCreate(uint64_t a1, CFTypeRef cf, CFTypeRef *a3)
{
  cfa = 0;
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 != CFDictionaryGetTypeID())
    {
      APEndpointManagerCarPlayCreate_cold_1();
      goto LABEL_49;
    }
  }

  if (!a3)
  {
    APEndpointManagerCarPlayCreate_cold_19();
LABEL_49:
    v31 = 4294950586;
    goto LABEL_54;
  }

  LogSetAppID();
  FigEndpointManagerGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v31 = v7;
    APEndpointManagerCarPlayCreate_cold_2();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (cf)
    {
      *(DerivedStorage + 360) = CFDictionaryGetInt64() != 0;
    }

    v9 = dispatch_queue_create("com.apple.APEndpointManagerCarPlay.state", 0);
    *(DerivedStorage + 8) = v9;
    if (v9)
    {
      v10 = dispatch_queue_create("com.apple.APEndpointManagerCarPlay.notification", 0);
      *(DerivedStorage + 16) = v10;
      dispatch_retain(v10);
      v11 = dispatch_queue_create("com.apple.APEndpointManagerCarPlay.carkitPreferenceInit", 0);
      *(DerivedStorage + 24) = v11;
      if (v11)
      {
        if (!APSIsRemoteHALPluginLoadingEnabled())
        {
LABEL_34:
          LOBYTE(v35) = 0;
          if (!IsAppleInternalBuild() && !APSSettingsGetBooleanIfPresent())
          {
            APSSettingsSetValue();
          }

          APSSettingsSynchronize();
          CFRetain(cfa);
          v30 = *(DerivedStorage + 8);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __APEndpointManagerCarPlayCreate_block_invoke;
          block[3] = &__block_descriptor_56_e5_v8__0l;
          block[4] = DerivedStorage;
          block[5] = a1;
          block[6] = cfa;
          dispatch_async(v30, block);
          if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
          {
            APEndpointManagerCarPlayCreate_cold_16();
          }

          v31 = 0;
          *a3 = cfa;
          return v31;
        }

        v35 = 0;
        if (carManager_getWeakRefTable_once != -1)
        {
          APEndpointManagerCarPlayCreate_cold_3();
        }

        if (FigCFWeakReferenceTableAddValueAndGetKey())
        {
          APEndpointManagerCarPlayCreate_cold_4();
        }

        *(DerivedStorage + 344) = v35;
        v12 = dispatch_queue_create("com.apple.airplay.apendpointManagerCarPlay.pluginregister", 0);
        *(DerivedStorage + 328) = v12;
        if (v12)
        {
          Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
          v35 = 0;
          CFStringAppendFormat(Mutable, 0, @"/System/Library/Audio/Plug-Ins/HAL/%@", @"CarPlayHalogen.driver");
          v14 = CFURLCreateWithFileSystemPath(0, Mutable, kCFURLPOSIXPathStyle, 1u);
          if (v14)
          {
            v15 = v14;
            v16 = CFPlugInCreate(0, v14);
            if (v16)
            {
              v17 = v16;
              v18 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
              FactoriesForPlugInTypeInPlugIn = CFPlugInFindFactoriesForPlugInTypeInPlugIn(v18, v17);
              if (FactoriesForPlugInTypeInPlugIn)
              {
                v20 = FactoriesForPlugInTypeInPlugIn;
                if (CFArrayGetCount(FactoriesForPlugInTypeInPlugIn) <= 0)
                {
                  APEndpointManagerCarPlayCreate_cold_9();
                }

                else
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
                  if (ValueAtIndex)
                  {
                    v22 = ValueAtIndex;
                    v23 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
                    v24 = CFPlugInInstanceCreate(0, v22, v23);
                    if (v24)
                    {
                      v25 = v24;
                      v26 = *(*v24 + 8);
                      v27 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u);
                      v28 = CFUUIDGetUUIDBytes(v27);
                      if (v26(v25, *&v28.byte0, *&v28.byte8, &v35))
                      {
                        APEndpointManagerCarPlayCreate_cold_5();
                      }

                      else if (!v35)
                      {
                        APEndpointManagerCarPlayCreate_cold_6();
                      }

                      (*(*v25 + 24))(v25);
                    }

                    else
                    {
                      APEndpointManagerCarPlayCreate_cold_7();
                    }
                  }

                  else
                  {
                    APEndpointManagerCarPlayCreate_cold_8();
                  }
                }

                CFRelease(v15);
              }

              else
              {
                APEndpointManagerCarPlayCreate_cold_10();
                v20 = v15;
              }

              CFRelease(v20);
              CFRelease(v17);
            }

            else
            {
              APEndpointManagerCarPlayCreate_cold_11(v15);
            }
          }

          else
          {
            APEndpointManagerCarPlayCreate_cold_12();
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v29 = v35;
          *(DerivedStorage + 336) = v35;
          if (v29)
          {
            if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
            {
              APEndpointManagerCarPlayCreate_cold_13();
            }

            carManager_asyncRegisterCarPlayHALDriver(cfa, 0);
            goto LABEL_34;
          }

          APEndpointManagerCarPlayCreate_cold_14();
        }

        else
        {
          APEndpointManagerCarPlayCreate_cold_15();
        }
      }

      else
      {
        APEndpointManagerCarPlayCreate_cold_17();
      }
    }

    else
    {
      APEndpointManagerCarPlayCreate_cold_18();
    }

    v31 = 4294950585;
  }

LABEL_54:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v31;
}