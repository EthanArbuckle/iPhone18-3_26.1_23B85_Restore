const char *APAdvertiserRapportManager_stringForMode(int a1)
{
  if (!a1)
  {
    return "Disabled";
  }

  if (a1 == 1)
  {
    return "Enabled";
  }

  if (gLogCategory_APAdvertiserRapportManager <= 60 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return "Unknown ";
}

uint64_t __APAdvertiserRapportManagerGetMode_block_invoke(uint64_t result)
{
  **(result + 48) = *(*(result + 40) + 56);
  *(*(*(result + 32) + 8) + 24) = 0;
  return result;
}

uint64_t __APAdvertiserRapportManagerDebugShow_block_invoke(uint64_t a1)
{
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  result = DataBuffer_AppendF();
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

void sub_23EA4D8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APAdvertiserBTLEManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gAPAdvertiserBTLEManagerTypeID = result;
  return result;
}

uint64_t APAdvertiserBTLEManagerSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = [a1 internalQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __APAdvertiserBTLEManagerSetProperty_block_invoke;
  v9[3] = &unk_278C608F0;
  v9[4] = a1;
  v9[5] = &v10;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_23EA507E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APAdvertiserBTLEManagerSetProperty_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setProperty:*(a1 + 48) withValue:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APAdvertiserBTLEManagerSetBTLEMode(void *a1, __int16 a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [a1 internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAdvertiserBTLEManagerSetBTLEMode_block_invoke;
  block[3] = &unk_278C60918;
  block[4] = a1;
  block[5] = &v9;
  v8 = a2;
  dispatch_sync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_23EA508F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APAdvertiserBTLEManagerSetBTLEMode_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setBTLEMode:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __APAdvertiserBTLEManagerGetBTLEMode_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getBTLEMode:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __APAdvertiserBTLEManagerDebugShow_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) showDebugWithDataBuffer:*(a1 + 48) verbose:*(a1 + 56) != 0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __APAdvertiserBTLEManagerUpdatePreferences_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) updatePreferences];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APReceiverScreenSinkGetClassID()
{
  if (APReceiverScreenSinkGetClassID_once != -1)
  {
    dispatch_once(&APReceiverScreenSinkGetClassID_once, &__block_literal_global_5885);
  }

  return APReceiverScreenSinkGetClassID_classID;
}

uint64_t __APReceiverScreenSinkGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APReceiverScreenSinkGetClassID_classDesc, ClassID, 1, &APReceiverScreenSinkGetClassID_classID);
}

uint64_t APReceiverScreenSinkGetTypeID()
{
  if (APReceiverScreenSinkGetClassID_once != -1)
  {
    dispatch_once(&APReceiverScreenSinkGetClassID_once, &__block_literal_global_5885);
  }

  return CMBaseClassGetCFTypeID();
}

void audioSession_handleMediaDataControlRequest_6044(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v39 = 0;
  v11 = *(a6 + 40);
  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = Mutable;
    if (a3 == 1634562925)
    {
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      v39 = APReceiverAudioSessionPlatformSetProperty(*v11, v21, @"RASP::AudioMode", v22, TypedValue);
      if (v39)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }

    if (a3 != 1936875892)
    {
      if (a3 != 1718839394)
      {
        v23 = -6714;
LABEL_21:
        v39 = v23;
        goto LABEL_34;
      }

      if (a5)
      {
        v14 = CFGetTypeID(a5);
        if (v14 == CFDictionaryGetTypeID())
        {
          if (CFDictionaryContainsKey(a5, @"flushFromTS") && CFDictionaryContainsKey(a5, @"flushFromSeq"))
          {
            CFDictionaryGetInt64Ranged();
            Int64Ranged = CFDictionaryGetInt64Ranged();
            v16 = 1;
          }

          else
          {
            Int64Ranged = 0;
            v16 = 0;
          }

          CFDictionaryGetInt64Ranged();
          v24 = CFDictionaryGetInt64Ranged();
          APSAudioTransportTimeMakeWithRTPTime();
          APSAudioTransportTimeMakeWithRTPTime();
          v39 = APReceiverAudioSessionBufferedFlushAudio(v11, v16, v38, Int64Ranged, v37, v24, 0);
          if (!v39)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        }
      }

LABEL_40:
      APSLogErrorAt();
      v23 = -6756;
      goto LABEL_21;
    }

    v30 = *MEMORY[0x277CEA038];
    *v38 = *MEMORY[0x277CEA038];
    v29 = *(MEMORY[0x277CEA038] + 12);
    *&v38[12] = v29;
    memset(v36, 0, sizeof(v36));
    if (!a5)
    {
      goto LABEL_40;
    }

    v17 = CFGetTypeID(a5);
    if (v17 != CFDictionaryGetTypeID())
    {
      goto LABEL_40;
    }

    v18 = CFDictionaryGetInt64Ranged();
    v31 = a4;
    if (v18 == 1)
    {
      CFDictionaryGetInt64Ranged();
      v19 = CFDictionaryContainsKey(a5, @"firstAudibleRTPTime");
      CFDictionaryGetInt64Ranged();
      v26 = CFDictionaryGetInt64Ranged();
      Int64 = CFDictionaryGetInt64();
      v28 = CFDictionaryGetInt64();
      v25 = CFDictionaryGetInt64Ranged();
      APSAudioTransportTimeMakeWithRTPTime();
      if (v19)
      {
        APSAudioTransportTimeMakeWithRTPTime();
        goto LABEL_29;
      }
    }

    else
    {
      APSAudioTransportTimeMakeWithRTPTime();
      v25 = 0;
      v26 = 0;
      Int64 = 0;
      v28 = 0;
    }

    v35[0] = v30;
    *(v35 + 12) = v29;
LABEL_29:
    *&v32 = v28;
    *(&v32 + 1) = Int64;
    v33 = v26;
    v34 = v25;
    v39 = APReceiverAudioSessionBufferedSetRateAndAnchorTime(v11, v18, v37, v35, &v32, v38, v36);
    if (v39)
    {
      CFDictionarySetInt64();
      a4 = v31;
    }

    else
    {
      a4 = v31;
      if (v18)
      {
        goto LABEL_34;
      }

      *v37 = *v38;
      *&v37[12] = *&v38[12];
      if (APSAudioTransportTimeIsValid())
      {
        CFDictionarySetInt64();
      }
    }

    if (v39)
    {
LABEL_41:
      APSLogErrorAt();
    }

LABEL_34:
    APMediaDataControlServerSendResponse(a1, a2, a4, v13, v39);
    CFRelease(v13);
    return;
  }

  APSLogErrorAt();

  APMediaDataControlServerSendResponse(a1, a2, a4, 0, -6728);
}

uint64_t APReceiverAudioSessionBufferedFlushAudio(uint64_t a1, int a2, _DWORD *a3, int a4, _DWORD *a5, int a6, _OWORD *a7)
{
  v11 = 4294895145;
  v12 = a3[1];
  v13 = a5[1];
  v25 = 0;
  *v24 = *MEMORY[0x277CEA038];
  *&v24[12] = *(MEMORY[0x277CEA038] + 12);
  if (!a1)
  {
    v11 = 4294895144;
LABEL_36:
    APSLogErrorAt();
LABEL_28:
    if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return v11;
  }

  if (*a5 != 1 || a2 && *a3 != 1)
  {
    goto LABEL_36;
  }

  v15 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004002C94847uLL);
  if (!v15)
  {
    v11 = 4294895146;
    goto LABEL_36;
  }

  v16 = v15;
  v15[12] = a2;
  *(v15 + 13) = 0;
  v15[15] = 0;
  *(v15 + 4) = a4;
  *(v15 + 5) = v12;
  *(v15 + 6) = a6;
  *(v15 + 7) = v13;
  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  audioSession_sessionLock_6081(*(a1 + 1128));
  v17 = *(a1 + 680);
  if (a2 && v17)
  {
    v18 = 0;
    do
    {
      v19 = v17;
      v17 = *v17;
      ++v18;
    }

    while (v17);
    v20 = 0;
    *v19 = v16;
  }

  else
  {
    *(a1 + 680) = v16;
    v21 = audioSession_processFlushQueue(a1, &v25);
    if (v21)
    {
      v11 = v21;
      APSLogErrorAt();
      v20 = 0;
      goto LABEL_19;
    }

    APSAudioTransportTimeMakeWithRTPTime();
    v20 = 1;
  }

  v11 = 0;
  if (a7)
  {
    *a7 = *v24;
    *(a7 + 12) = *&v24[12];
  }

LABEL_19:
  audioSession_sessionUnlock_6083(*(a1 + 1128));
  if (v17)
  {
    do
    {
      v22 = *v17;
      free(v17);
      v17 = v22;
    }

    while (v22);
  }

  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v20)
  {
    audioSession_logFlush(a1, v11, v16);
  }

  if (v11)
  {
    goto LABEL_28;
  }

  return v11;
}

uint64_t APReceiverAudioSessionBufferedSetRateAndAnchorTime(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, __int128 *a5, _OWORD *a6, uint64_t a7)
{
  v47 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v25 = 4294895144;
    goto LABEL_64;
  }

  if (!*(a1 + 8))
  {
    v25 = 4294895143;
LABEL_59:
    APSLogErrorAt();
    goto LABEL_64;
  }

  if (*a3 != 1 || *a4 != 1 && (*v46 = *a4, *&v46[12] = *(a4 + 12), APSAudioTransportTimeIsValid()))
  {
    APSLogErrorAt();
    v25 = 4294895145;
LABEL_64:
    v36 = 1;
    if (a6)
    {
      goto LABEL_48;
    }

    goto LABEL_52;
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v14)
  {
    v25 = 4294895143;
    goto LABEL_59;
  }

  v16 = v14;
  v17 = &unk_27E37E000;
  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    *v46 = *a4;
    *&v46[12] = *(a4 + 12);
    APSAudioTransportTimeIsValid();
    APSGetFBOPropertyInt64();
    v17 = &unk_27E37E000;
    LogPrintF();
  }

  if (a2 >= 2)
  {
    APSLogErrorAt();
    v41 = v17[390];
    if (v41 <= 90 && (v41 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v25 = 4294960591;
    goto LABEL_46;
  }

  if (a2 != 1)
  {
LABEL_23:
    audioSession_sessionLock_6081(*(a1 + 1128));
    *(a1 + 712) = 0;
    *(a1 + 724) = 0;
    *(a1 + 880) = a2;
    v23 = *a1;
    if (a2)
    {
      v24 = APReceiverAudioSessionPlatformControl(v23, @"RASP::StartAudioIO");
      if (v24)
      {
        v25 = v24;
LABEL_68:
        APSLogErrorAt();
        v33 = 0;
LABEL_42:
        audioSession_sessionUnlock_6083(*(a1 + 1128));
        v36 = !v33;
        goto LABEL_47;
      }
    }

    else
    {
      v26 = APReceiverAudioSessionPlatformControl(v23, @"RASP::FlushAudio");
      if (v26)
      {
        v25 = v26;
        goto LABEL_68;
      }

      v27 = APReceiverAudioSessionPlatformControl(*a1, @"RASP::StopAudioIO");
      if (v27)
      {
        v25 = v27;
        goto LABEL_68;
      }
    }

    v28 = *(a1 + 728);
    if (v28)
    {
      v25 = AudioConverterReset(v28);
    }

    else
    {
      v25 = 0;
    }

    v29 = v47;
    *(a1 + 888) = v47;
    v30 = *(a5 + 2);
    *(a1 + 896) = *a5;
    *(a1 + 912) = v30;
    *(a1 + 920) = a3[1];
    *(a1 + 928) = 0;
    *(a1 + 936) = v29;
    *(a1 + 944) = 0;
    v31 = *a5;
    *(a1 + 968) = *(a5 + 2);
    *(a1 + 952) = v31;
    *(a1 + 976) = a3[1];
    *(a1 + 984) = 0;
    *(a1 + 1000) = *(a4 + 4);
    *v46 = *a4;
    *&v46[12] = *(a4 + 12);
    *(a1 + 1004) = APSAudioTransportTimeIsValid();
    *(a1 + 872) = 1;
    *(a1 + 1016) = 0;
    *(a1 + 992) = 0;
    *(a1 + 1024) = 0;
    *(a1 + 1032) = 0;
    v32 = *(a1 + 584);
    if (*v32)
    {
      v33 = *v32 != v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = v17[390];
    if (v34 <= 50 && (v34 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_42;
  }

  if (*(v16 + 752))
  {
    v18 = v17[390];
    if (v18 <= 50 && (v18 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v25 = 4294960587;
    goto LABEL_46;
  }

  if (*(a1 + 40))
  {
    v19 = *(v16 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APReceiverAudioSessionBufferedSetRateAndAnchorTime_block_invoke;
    block[3] = &__block_descriptor_tmp_6077;
    block[4] = v16;
    block[5] = a1;
    dispatch_sync(v19, block);
  }

  else
  {
    AirPlayReceiverSessionControl(v16, v15, @"handleMediaAudioResumedForSession", *(a1 + 32), 0, 0);
  }

  v20 = *(a1 + 1144);
  v43 = *a5;
  v44 = *(a5 + 2);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v21)
  {
    v25 = 4294954514;
LABEL_38:
    APSLogErrorAt();
    v35 = v17[390];
    if (v35 > 90 || v35 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  *v46 = v43;
  *&v46[16] = v44;
  v22 = v21(v20, v46, &v47);
  if (v22)
  {
    v25 = v22;
    goto LABEL_38;
  }

  if (APSGetFBOPropertyInt64())
  {
    goto LABEL_23;
  }

  v25 = 4294895143;
  APSLogErrorAt();
  v42 = v17[390];
  if (v42 <= 90 && (v42 != -1 || _LogCategory_Initialize()))
  {
LABEL_40:
    LogPrintF();
  }

LABEL_46:
  v36 = 1;
LABEL_47:
  CFRelease(v16);
  if (a6)
  {
LABEL_48:
    if (v36)
    {
      v37 = MEMORY[0x277CEA038];
      *a6 = *MEMORY[0x277CEA038];
      v38 = *(v37 + 12);
    }

    else
    {
      APSAudioTransportTimeMakeWithRTPTime();
      *a6 = *v46;
      v38 = *&v46[12];
    }

    *(a6 + 12) = v38;
  }

LABEL_52:
  if (a7)
  {
    v39 = MEMORY[0x277CEA280];
    *a7 = *MEMORY[0x277CEA280];
    *(a7 + 16) = *(v39 + 16);
  }

  return v25;
}

uint64_t audioSession_sessionLock_6081(uint64_t a1)
{
  if (!a1 || (result = FigSimpleMutexLock(), v1 = vars8, result))
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t audioSession_sessionUnlock_6083(uint64_t a1)
{
  if (!a1 || (result = FigSimpleMutexUnlock(), v1 = vars8, result))
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t audioSession_processFlushQueue(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 680);
  if (v2 && !*(v2 + 8) && !*(v2 + 9))
  {
    if (*(v2 + 12))
    {
      v7 = *(v2 + 16);
      v8 = *(v2 + 20);
      v9 = *(v2 + 24);
      if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (*(**(a1 + 584) + 16) && gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(a1 + 696) = mach_absolute_time();
      v12 = *(a1 + 584);
      v13 = *v12;
      if (*v12 != v12)
      {
        v14 = 0;
        do
        {
          v15 = *v13;
          v16 = *(v13 + 15);
          if (((v7 - v16) & 0x800000) != 0 || ((v16 ^ v7) & 0xFFFFFF) == 0)
          {
            v17 = gLogCategory_APReceiverAudioSessionBuffered;
            if (!v14)
            {
              if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v18 = APSContiguousAllocatorRelinquishBlockFromAddress();
              if (v18)
              {
                goto LABEL_92;
              }

              v17 = gLogCategory_APReceiverAudioSessionBuffered;
            }

            if (((v9 - v16) & 0x800000) != 0 || ((v16 ^ v9) & 0xFFFFFF) == 0)
            {
              if (v17 <= 40 && (v17 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              break;
            }

            if (v17 <= 10 && (v17 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v13[5] = 0;
            v13[6] = 0;
            v13[4] = 0;
            v20 = *v13;
            v19 = v13[1];
            *(v20 + 8) = v19;
            *v19 = v20;
            *v13 = *(a1 + 592);
            *(a1 + 592) = v13;
            --*(a1 + 600);
            if (*(a1 + 480) <= APSContiguousAllocatorGetNextAvailableBlockSize())
            {
              audioSession_resumeNetworkReads(a1);
            }

            v14 = 1;
          }

          else if (*(v13[2] + 4) - v8 >= 0 && gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v13 = v15;
        }

        while (v15 != v12);
      }

      if (a2)
      {
        *a2 = *(a1 + 716);
      }

      goto LABEL_91;
    }

    v11 = *(v2 + 24);
    v10 = *(v2 + 28);
    if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(**(a1 + 584) + 16) && gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    APReceiverAudioSessionPlatformControl(*a1, @"RASP::FlushAudio");
    *(a1 + 712) = 0;
    *(a1 + 808) = 0;
    v21 = *(a1 + 728);
    if (v21)
    {
      v3 = AudioConverterReset(v21);
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 880) = 0;
    *(a1 + 1000) = 0;
    *(a1 + 1004) = 0;
    *(a1 + 696) = mach_absolute_time();
    v22 = *(a1 + 584);
    v23 = *v22;
    if (*v22 != v22)
    {
      v24 = *(v23 + 15);
      if (((v11 - v24) & 0x800000) == 0 && ((v24 ^ v11) & 0xFFFFFF) != 0)
      {
        while (1)
        {
          v25 = *v23;
          if (gLogCategory_APReceiverAudioSessionBuffered <= 10 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (*(v23[2] + 4) - v10 >= 0 && gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v18 = APSContiguousAllocatorRelinquishBlock();
          if (v18)
          {
            break;
          }

          v23[5] = 0;
          v23[6] = 0;
          v23[4] = 0;
          v27 = *v23;
          v26 = v23[1];
          *(v27 + 8) = v26;
          *v26 = v27;
          *v23 = *(a1 + 592);
          *(a1 + 592) = v23;
          --*(a1 + 600);
          if (*(a1 + 480) <= APSContiguousAllocatorGetNextAvailableBlockSize())
          {
            audioSession_resumeNetworkReads(a1);
          }

          if (v25 == v22)
          {
            v3 = 0;
            goto LABEL_84;
          }

          v3 = 0;
          v28 = *(v25 + 60);
          if (((v11 - v28) & 0x800000) == 0)
          {
            v23 = v25;
            if (((v28 ^ v11) & 0xFFFFFF) != 0)
            {
              continue;
            }
          }

          goto LABEL_79;
        }

LABEL_92:
        v3 = v18;
        APSLogErrorAt();
        goto LABEL_93;
      }

LABEL_79:
      if (gLogCategory_APReceiverAudioSessionBuffered <= 40 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

LABEL_84:
    if (a2)
    {
      *a2 = *(a1 + 716);
    }

    if (!v3)
    {
LABEL_91:
      v3 = 0;
      *(*(a1 + 680) + 8) = 1;
      return v3;
    }

LABEL_93:
    APSLogErrorAt();
    return v3;
  }

  return 0;
}

uint64_t audioSession_logFlush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 12))
  {
    if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered != -1)
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

  else if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
  {
    if (gLogCategory_APReceiverAudioSessionBuffered != -1)
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

uint64_t audioSession_resumeNetworkReads(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 1224))
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 20 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v1 + 1224) = 1;
      result = SendSelfConnectedLoopbackMessage();
      if (result)
      {

        return APSLogErrorAt();
      }
    }
  }

  return result;
}

void APReceiverAudioSessionBufferedFinalize(uint64_t a1)
{
  if (*(a1 + 1227))
  {
    if (gLogCategory_APReceiverAudioSessionBuffered <= 90 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRelease(0);
  }

  if (*(a1 + 80))
  {
    SendSelfConnectedLoopbackMessage();
    pthread_join(*(a1 + 72), 0);
    *(a1 + 80) = 0;
  }

  v2 = *(a1 + 48);
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) && *__error())
    {
      __error();
    }

    *(a1 + 48) = -1;
  }

  if (*(a1 + 56))
  {
    NetSocket_Delete();
    *(a1 + 56) = 0;
  }

  if (*(a1 + 1128))
  {
    FigSimpleMutexDestroy();
    *(a1 + 1128) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 1280);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 1280) = 0;
  }

  v6 = *(a1 + 1144);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 1144) = 0;
  }

  v7 = *(a1 + 1184);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 1184) = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 8) = 0;
  }

  *(a1 + 456) = 0;
  v9 = *(a1 + 512);
  if (v9)
  {
    free(v9);
    *(a1 + 512) = 0;
  }

  v10 = *(a1 + 608);
  if (v10)
  {
    free(v10);
    *(a1 + 608) = 0;
  }

  v11 = *(a1 + 640);
  if (v11)
  {
    free(v11);
    *(a1 + 640) = 0;
  }

  v12 = *(a1 + 488);
  if (v12)
  {
    free(v12);
    *(a1 + 488) = 0;
  }

  v13 = *(a1 + 624);
  if (v13)
  {
    free(v13);
    *(a1 + 624) = 0;
  }

  v14 = *(a1 + 728);
  if (v14)
  {
    AudioConverterDispose(v14);
    *(a1 + 728) = 0;
  }

  *(a1 + 808) = 0;
  v15 = *(a1 + 648);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 1136);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 1136) = 0;
  }

  v17 = *(a1 + 680);
  if (v17)
  {
    do
    {
      v18 = *v17;
      free(v17);
      *(a1 + 680) = v18;
      v17 = v18;
    }

    while (v18);
  }

  if (*(a1 + 16))
  {
    *(a1 + 16) = 0;
    if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  AES_CBCFrame_Final();
  v19 = *(a1 + 1192);
  if (v19)
  {
    dispatch_release(v19);
    *(a1 + 1192) = 0;
  }

  v20 = *(a1 + 1240);
  if (v20)
  {
    dispatch_release(v20);
    *(a1 + 1240) = 0;
  }

  v21 = *(a1 + 656);
  if (v21)
  {
    free(v21);
  }

  v22 = *(a1 + 1264);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 1264) = 0;
  }

  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v23 = *(a1 + 24);
  if (v23)
  {
    CFRelease(v23);
  }

  free(a1);
}

uint64_t APReceiverAudioSessionBufferedReadAudio(uint64_t a1, int a2, uint64_t a3, char *a4, unint64_t a5)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  audioSession_sessionLock_6081(*(a1 + 1128));
  if (*(a1 + 8))
  {
    if (*(a1 + 880))
    {
      if (mach_absolute_time() > *(a1 + 992))
      {
        v7 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v7)
        {
          v152 = v7;
          v8 = (a1 + 896);
          ++*(a1 + 1008);
          __y = 0;
          v159 = 0;
          v160 = 0;
          v9 = 3;
          while (1)
          {
            v156 = 0uLL;
            v157 = 0;
            v10 = *(a1 + 1144);
            v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v11 || v11(v10, a3, &__y))
            {
LABEL_19:
              APSLogErrorAt();
              goto LABEL_20;
            }

            v12 = __y;
            if (__y == *v8)
            {
              break;
            }

            v13 = *(a1 + 1144);
            v14 = *(a1 + 936);
            v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v15 || v15(v13, v14, &v156))
            {
              goto LABEL_19;
            }

            *v8 = v156;
            *(a1 + 912) = v157;
            *(a1 + 888) = *(a1 + 936);
            *(a1 + 920) = *(a1 + 976);
            *(a1 + 928) = *(a1 + 984);
            if (gLogCategory_APReceiverAudioSessionBuffered <= 40 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            if (!--v9)
            {
              if (gLogCategory_APReceiverAudioSessionBuffered <= 40)
              {
                v16 = v152;
                if (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize())
                {
                  LogPrintF();
                }

                goto LABEL_21;
              }

LABEL_20:
              v16 = v152;
LABEL_21:
              APSLogErrorAt();
              goto LABEL_22;
            }
          }

          v20 = *(a1 + 876);
          v21 = *(a1 + 872);
          v22 = *(a1 + 1016);
          v23 = *(a1 + 920);
          v24 = *(a1 + 904);
          v149 = v160;
          v147 = v159;
          v25 = v159 >= v24;
          v26 = v159 - v24;
          v27 = !v25;
          v28 = *(a1 + 928);
          *&v29 = v26;
          LODWORD(v29) = *(a1 + 92);
          v30 = ((v160 - *(a1 + 912) - v27) + v26 * 5.42101086e-20) * v29;
          v31 = v23 + v30;
          v32 = v28 + modf(v30, &__y);
          v33 = v31 - 1;
          v34 = v32 + 1.0;
          if (v32 >= 0.0)
          {
            v34 = v32;
            v33 = v23 + v30;
          }

          if (v32 > 1.0)
          {
            v35 = v32 + -1.0;
          }

          else
          {
            v35 = v34;
          }

          if (v32 > 1.0)
          {
            v36 = v31 + 1;
          }

          else
          {
            v36 = v33;
          }

          v146 = v22;
          v37 = a2 - v22;
          if (v36 - v37 >= 0)
          {
            v38 = v36 - v37;
          }

          else
          {
            v38 = v37 - v36;
          }

          if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation <= 30 && (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (v38 >= v20)
          {
            v126 = a2 - v36;
            if (!v21)
            {
              v16 = v152;
              if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation > 30)
              {
                v129 = 0;
                v130 = 1;
                v128 = 0.0;
                v127 = v147;
                goto LABEL_261;
              }

              if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation != -1 || _LogCategory_Initialize())
              {
                LogPrintF();
              }

              v127 = v147;
              goto LABEL_248;
            }
          }

          else
          {
            if (!v21)
            {
              v128 = v30 + v28 + v23 - v37;
              v127 = v147;
              if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation > 30)
              {
                v130 = 0;
                v129 = 1;
                v16 = v152;
                v126 = v146;
              }

              else
              {
                v16 = v152;
                v126 = v146;
                if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation != -1 || _LogCategory_Initialize())
                {
                  LogPrintF();
                }

                v130 = 0;
                v129 = 1;
              }

LABEL_261:
              if (*(a1 + 1036))
              {
                *(a1 + 1104) = v128;
                CFObjectSetPropertyDouble();
              }

              else
              {
                PIDUpdate();
                v132 = v131 * 1000.0;
                *(a1 + 1104) = v132;
                if (v132 >= 1.0)
                {
                  v133 = *(a1 + 92);
                  v134 = v132;
                  if (v132 < 0)
                  {
                    v134 = -v134;
                  }

                  v135 = 1000 * v133 / v134;
                  v136 = v133 / 0x3E8;
                  if (v135 > v136)
                  {
                    v136 = v135;
                  }

                  *(a1 + 1116) = v136;
                  *(a1 + 1037) = 1;
                }

                else
                {
                  *(a1 + 1037) = 0;
                }
              }

              *(a1 + 872) = 0;
              *(a1 + 936) = a3;
              *(a1 + 944) = a2;
              *(a1 + 952) = v12;
              *(a1 + 960) = v127;
              *(a1 + 968) = v149;
              *(a1 + 976) = v36;
              *(a1 + 984) = v35;
              *(a1 + 1016) = v126;
              if ((v129 & 1) == 0)
              {
                *(a1 + 772) = v130;
                ++*(a1 + 1032);
                *(a1 + 1048) = 0;
                *(a1 + 1080) = 0;
              }

              v137 = fabs(v128);
              if (v137 > *(a1 + 1024))
              {
                *(a1 + 1024) = v137;
              }

              v138 = mach_absolute_time();
              *(a1 + 992) = v138 + UpTicksPerSecond();
LABEL_22:
              CFRelease(v16);
              goto LABEL_23;
            }

            v126 = a2 - v36;
          }

          v16 = v152;
          v127 = v147;
LABEL_248:
          v128 = 0.0;
          if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation <= 30 && (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v129 = 0;
          v130 = 1;
          goto LABEL_261;
        }
      }
    }
  }

LABEL_23:
  v17 = *(a1 + 100);
  v18 = (a2 - *(a1 + 416));
  v19 = v18 + (a5 / v17);
  if (!*(a1 + 712) && gLogCategory_APReceiverAudioSessionBufferedNodes <= 40 && (gLogCategory_APReceiverAudioSessionBufferedNodes != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(a1 + 880))
  {
    goto LABEL_204;
  }

  if (*(a1 + 872))
  {
    if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_204:
    v120 = 0;
    v41 = 1;
    goto LABEL_205;
  }

  v39 = *(a1 + 584);
  v40 = *v39;
  v41 = 1;
  v150 = v39;
  if (*v39 == v39)
  {
    v120 = 0;
    goto LABEL_205;
  }

  v141 = 0;
  v42 = 0;
  v148 = 0;
  v140 = &a4[a5];
  v143 = v17;
  while (1)
  {
    v153 = *v40;
    v43 = *(v40 + 14);
    v44 = *(a1 + 1016);
    v45 = *(a1 + 672);
    v46 = v45 + v44 + v43;
    v47 = v45 + v44 + *(a1 + 1000);
    if (gLogCategory_APReceiverAudioSessionBuffered <= 10)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (v49 = v45 + v44 + v43, v50 = _LogCategory_Initialize(), v46 = v49, v50))
      {
        v48 = v46;
        LogPrintF();
        v46 = v48;
      }
    }

    if (v46 - v19 >= 0)
    {
      goto LABEL_280;
    }

    if (*(a1 + 1004) && ((v47 - v19) & 0x80000000) == 0)
    {
      break;
    }

    v51 = *(v40 + 15);
    if (*(a1 + 712))
    {
      v52 = (v51 - *(a1 + 720)) & 0xFFFFFF;
      if (v52 >= 2)
      {
        HIDWORD(qword_27E37EED8) += v52 - 1;
        v53 = *(a1 + 1184);
        if (v53)
        {
          atomic_fetch_add_explicit((v53 + 64), v52 - 1, memory_order_relaxed);
        }

        if (gLogCategory_APReceiverAudioSessionBufferedStats <= 30)
        {
          v54 = v46;
          if (gLogCategory_APReceiverAudioSessionBufferedStats != -1 || (v56 = v17, v57 = v51, v58 = _LogCategory_Initialize(), v51 = v57, v17 = v56, v46 = v54, v58))
          {
            v55 = v51;
            LogPrintF();
            v51 = v55;
            v46 = v54;
          }
        }
      }
    }

    *(a1 + 716) = v43;
    *(a1 + 720) = v51;
    *(a1 + 712) = 1;
    v60 = v40 + 4;
    v59 = v40[4];
    v61 = v40[2];
    if (v40[3] != v61 + 12)
    {
      goto LABEL_94;
    }

    *(a1 + 1256) += v59;
    v62 = *(a1 + 656);
    if (!v62)
    {
      APSLogErrorAt();
LABEL_293:
      APSLogErrorAt();
      v41 = 0;
      goto LABEL_281;
    }

    v142 = v18;
    v63 = v19;
    *v62 = vrev32_s8(*(v61 + 4));
    v64 = *(a1 + 640);
    v65 = *(a1 + 656);
    v66 = *(a1 + 664);
    v67 = v40[3];
    v68 = v40[4];
    v69 = *(a1 + 616);
    __y = 0;
    v144 = v46;
    if (*(a1 + 448))
    {
      if (*(a1 + 88) != 1)
      {
        goto LABEL_79;
      }

LABEL_84:
      if (v69 >= v68)
      {
        v74 = audioSession_decryptPacket(a1, v65, v66, v67, v68, *(a1 + 608), &__y);
        if (!v74)
        {
          v73 = __y;
          Swap16Mem();
          goto LABEL_87;
        }

        v76 = v74;
        goto LABEL_192;
      }

      goto LABEL_190;
    }

    v70 = *(a1 + 88);
    if (*(a1 + 112) && v70 != 1)
    {
LABEL_79:
      if (v69 >= v68)
      {
        v71 = audioSession_decryptPacket(a1, v65, v66, v67, v68, *(a1 + 608), &__y);
        if (v71)
        {
          v76 = v71;
        }

        else
        {
          v68 = __y;
          __y = 0;
          v72 = audioSession_audioDecoderDecodeFrame_6154(a1, *(a1 + 608), v68, v64, v69, &__y);
          if (!v72)
          {
            v73 = __y;
LABEL_87:
            v17 = v143;
            v148 = v73;
            if (v73)
            {
              v75 = 10000 * v68 / v73;
            }

            else
            {
              LODWORD(v75) = 0;
            }

            v19 = v63;
            v76 = 0;
            *(a1 + 768) = (v75 - *(a1 + 768) + (*(a1 + 768) << 6)) >> 6;
            goto LABEL_91;
          }

          v76 = v72;
        }

        goto LABEL_192;
      }

      goto LABEL_190;
    }

    if (*(a1 + 112))
    {
      goto LABEL_84;
    }

    if (v70 == 1)
    {
      if (v68 <= v69)
      {
        Swap16Mem();
        v73 = v68;
        goto LABEL_87;
      }
    }

    else
    {
      v83 = audioSession_audioDecoderDecodeFrame_6154(a1, v67, v68, *(a1 + 608), v69, &__y);
      if (v83)
      {
        v76 = v83;
LABEL_192:
        APSLogErrorAt();
        goto LABEL_193;
      }

      v84 = __y;
      if (__y <= v69)
      {
        memcpy(v64, *(a1 + 608), __y);
        v73 = v84;
        goto LABEL_87;
      }
    }

LABEL_190:
    APSLogErrorAt();
    v76 = -6743;
LABEL_193:
    v19 = v63;
    v17 = v143;
LABEL_91:
    v18 = v142;
    bzero(*(a1 + 656), *(a1 + 664));
    v59 = v148;
    v40[3] = *(a1 + 640);
    v40[4] = v148;
    if (v76 || !v148)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 40 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      bzero(*(a1 + 640), *(a1 + 616));
      if (APSContiguousAllocatorRelinquishBlock())
      {
        goto LABEL_293;
      }

      v40[5] = 0;
      v40[6] = 0;
      *v60 = 0;
      v80 = *v40;
      v79 = v40[1];
      *(v80 + 8) = v79;
      *v79 = v80;
      *v40 = *(a1 + 592);
      *(a1 + 592) = v40;
      --*(a1 + 600);
      if (*(a1 + 480) <= APSContiguousAllocatorGetNextAvailableBlockSize())
      {
LABEL_124:
        audioSession_resumeNetworkReads(a1);
        goto LABEL_182;
      }

      goto LABEL_182;
    }

    v46 = v144;
LABEL_94:
    v77 = v46 + v59 / v17;
    if (*(a1 + 1004) && v77 - v47 < 0)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 10 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (APSContiguousAllocatorRelinquishBlock())
      {
        goto LABEL_293;
      }
    }

    else
    {
      if (v77 - v18 > 0)
      {
        if (*(a1 + 1004))
        {
          v145 = v46;
          if (v18 - v47 < 0)
          {
            v18 = ((v47 - v18) * v17);
            bzero(a4, v18);
            a4 += v18;
            v17 = v143;
            LODWORD(v18) = v47;
          }

          else
          {
            if (gLogCategory_APReceiverAudioSessionBufferedStats <= 10 && (gLogCategory_APReceiverAudioSessionBufferedStats != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            *(a1 + 1004) = 0;
          }

          v46 = v145;
        }

        if (v18 - v46 < 0)
        {
          v85 = v46;
          v86 = v46 - v18;
          if ((*(a1 + 724) || *(a1 + 1228)) && gLogCategory_APReceiverAudioSessionBufferedStats <= 40)
          {
            if (gLogCategory_APReceiverAudioSessionBufferedStats != -1 || (v17 = v143, _LogCategory_Initialize()))
            {
              LogPrintF();
            }
          }

          v18 = (v86 * v17);
          bzero(a4, v18);
          a4 += v18;
          ++v141;
          v46 = v85;
          LODWORD(v18) = v85;
        }

        if (v46 - v18 < 0)
        {
          ++dword_27E37EEE0;
          v88 = *(a1 + 1184);
          if (v88)
          {
            atomic_fetch_add_explicit((v88 + 68), 1u, memory_order_relaxed);
          }

          if (gLogCategory_APReceiverAudioSessionBufferedStats <= 40)
          {
            if (gLogCategory_APReceiverAudioSessionBufferedStats != -1 || (v90 = v46, v91 = _LogCategory_Initialize(), v46 = v90, v91))
            {
              v89 = v46;
              LogPrintF();
              v46 = v89;
            }
          }

          v92 = ((v18 - v46) * v17);
          v93 = v40[4];
          v87 = (v40[3] + v92);
          v40[3] = v87;
          v40[4] = v93 - v92;
          *(v40 + 14) += v18 - v46;
          ++v141;
          v46 = v18;
        }

        else
        {
          v87 = v40[3];
        }

        if (*(a1 + 1037) && v87 == (v40[2] + 12))
        {
          v94 = *(a1 + 1104);
          if (v94 > 0.0)
          {
            v95 = *v60;
            v96 = *(a1 + 100);
            v97 = *v60 / v96;
            v98 = v87;
            if (v97 >= 1)
            {
              v99 = &v87[4 * v97];
              v98 = v87;
              v100 = v87;
              do
              {
                v101 = *(a1 + 1112) + 1;
                *(a1 + 1112) = v101;
                if (v101 >= *(a1 + 1116))
                {
                  *(a1 + 1112) = 0;
                }

                else
                {
                  *v98 = *v100;
                  v98 += 4;
                }

                v100 += 4;
              }

              while (v100 < v99);
              v96 = *(a1 + 100);
            }

            v102 = v98 - v87;
            v103 = (v95 - (v98 - v87)) / v96;
            v40[4] = v98 - v87;
            *(v40 + 14) += v103;
            v104 = *(a1 + 1016) - v103;
            goto LABEL_168;
          }

          v102 = *v60;
          if (v94 < 0.0)
          {
            v105 = v46;
            v106 = *(a1 + 624);
            memcpy(v106, v87, v102);
            v107 = *(a1 + 100);
            v87 = v40[3];
            v108 = v40[4];
            v109 = v87;
            if ((v108 / v107) >= 1)
            {
              v110 = &v106[v108 / v107];
              v109 = v40[3];
              do
              {
                v111 = *v106;
                v112 = *(a1 + 1112) + 1;
                *(a1 + 1112) = v112;
                if (v112 >= *(a1 + 1116))
                {
                  *(a1 + 1112) = 0;
                  *v109 = v111;
                  v109 += 4;
                }

                *v109 = v111;
                v109 += 4;
                ++v106;
              }

              while (v106 < v110);
              v107 = *(a1 + 100);
            }

            v102 = v109 - v87;
            v113 = (v109 - v87 - v108) / v107;
            v40[4] = v109 - v87;
            *(v40 + 14) -= v113;
            v104 = *(a1 + 1016) + v113;
            v46 = v105;
LABEL_168:
            *(a1 + 1016) = v104;
          }

          v77 = v46 + v102 / v17;
        }

        v114 = v77 - v19;
        if (v77 - v19 > 0)
        {
          v77 = v19;
        }

        v115 = v77 - v46;
        v116 = ((v77 - v46) * v17);
        if (&v87[v116] > *(a1 + 640) + *(a1 + 616) && gLogCategory_APReceiverAudioSessionBuffered <= 40)
        {
          if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (v117 = _LogCategory_Initialize(), v87 = v40[3], v117))
          {
            LogPrintF();
            v87 = v40[3];
          }
        }

        memcpy(a4, v87, v116);
        a4 += v116;
        v18 = (v115 + v18);
        if (v114 >= 1)
        {
          v41 = 0;
          v139 = v40[4] - v116;
          v40[3] += v116;
          v40[4] = v139;
          *(v40 + 14) += v115;
          goto LABEL_278;
        }

        bzero(*(a1 + 640), *(a1 + 616));
        if (APSContiguousAllocatorRelinquishBlock())
        {
          APSLogErrorAt();
          v41 = 0;
LABEL_278:
          LODWORD(v17) = v143;
LABEL_281:
          v120 = v141;
          goto LABEL_205;
        }

        v40[5] = 0;
        v40[6] = 0;
        *v60 = 0;
        v119 = *v40;
        v118 = v40[1];
        *(v119 + 8) = v118;
        *v118 = v119;
        *v40 = *(a1 + 592);
        *(a1 + 592) = v40;
        --*(a1 + 600);
        v17 = v143;
        if (*(a1 + 480) <= APSContiguousAllocatorGetNextAvailableBlockSize())
        {
          audioSession_resumeNetworkReads(a1);
        }

        if (a4 >= v140)
        {
          v42 = 1;
LABEL_280:
          v41 = v42 == 0;
          goto LABEL_281;
        }

        goto LABEL_182;
      }

      ++dword_27E37EEE0;
      v78 = *(a1 + 1184);
      if (v78)
      {
        atomic_fetch_add_explicit((v78 + 68), 1u, memory_order_relaxed);
      }

      if (gLogCategory_APReceiverAudioSessionBufferedStats <= 40 && (gLogCategory_APReceiverAudioSessionBufferedStats != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (APSContiguousAllocatorRelinquishBlock())
      {
        goto LABEL_293;
      }
    }

    v40[5] = 0;
    v40[6] = 0;
    *v60 = 0;
    v82 = *v40;
    v81 = v40[1];
    *(v82 + 8) = v81;
    *v81 = v82;
    *v40 = *(a1 + 592);
    *(a1 + 592) = v40;
    --*(a1 + 600);
    if (*(a1 + 480) <= APSContiguousAllocatorGetNextAvailableBlockSize())
    {
      goto LABEL_124;
    }

LABEL_182:
    v42 = 1;
    v40 = v153;
    if (v153 == v150)
    {
      goto LABEL_280;
    }
  }

  v120 = v141;
  if (gLogCategory_APReceiverAudioSessionBuffered <= 10 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v41 = 0;
LABEL_205:
  if (*(a1 + 712))
  {
    *(a1 + 724) = 1;
  }

  if (v18 - v19 < 0)
  {
    bzero(a4, ((v19 - v18) * v17));
    ++v120;
    if ((*(a1 + 724) || *(a1 + 1228)) && gLogCategory_APReceiverAudioSessionBuffered <= 40 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (v41 || *(a1 + 680))
  {
    v120 = 0;
    goto LABEL_217;
  }

  if (v120 < 1)
  {
LABEL_217:
    *(a1 + 776) += v120;
  }

  else
  {
    if (*(a1 + 772))
    {
      v120 = 0;
      *(a1 + 772) = 0;
      goto LABEL_217;
    }

    *(a1 + 776) += v120;
    if (gLogCategory_APReceiverAudioSessionBuffered <= 40 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (*(a1 + 712) && gLogCategory_APReceiverAudioSessionBufferedStats <= 50 && (gLogCategory_APReceiverAudioSessionBufferedStats != -1 || _LogCategory_Initialize()))
  {
    v121 = *(a1 + 708) - *(a1 + 716);
    if (byte_27E37EED0)
    {
      v122 = *(&gAirPlayAudioStats + 1) + *&gAirPlayAudioStats * (v121 - *(&gAirPlayAudioStats + 1));
    }

    else
    {
      v122 = v121;
      byte_27E37EED0 = 1;
    }

    *(&gAirPlayAudioStats + 1) = v122;
    v123 = ((*(a1 + 92) >> 1) + v122 * 1000.0) / *(a1 + 92);
    if (gLogCategory_APReceiverAudioSessionBuffered <= 10 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v124 = *(a1 + 1184);
    if (v124)
    {
      *(v124 + 56) = v123;
    }
  }

  audioSession_sessionUnlock_6083(*(a1 + 1128));
  return 0;
}

uint64_t audioSession_decryptPacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (*(a1 + 112))
  {
    chacha20_poly1305_init_64x64();
    chacha20_poly1305_add_aad();
    a5 -= 24;
    v10 = chacha20_poly1305_decrypt();
    if (chacha20_poly1305_verify() + v10 != a5)
    {
      APSLogErrorAt();
      return 4294960534;
    }

    v11 = 0;
    v12 = a1 + 408;
    do
    {
      if (++*(v12 + v11))
      {
        v14 = 1;
      }

      else
      {
        v14 = v11 == 7;
      }

      ++v11;
    }

    while (!v14);
  }

  else
  {
    v15 = AES_CBCFrame_Update();
    if (v15)
    {
      v16 = v15;
      APSLogErrorAt();
      return v16;
    }
  }

  v16 = 0;
  *a7 = a5;
  return v16;
}

uint64_t audioSession_audioDecoderDecodeFrame_6154(void *inInputDataProcUserData, uint64_t a2, uint64_t a3, void *a4, UInt32 a5, void *a6)
{
  *&v11.mNumberBuffers = 1;
  *(inInputDataProcUserData + 92) = a2;
  *(inInputDataProcUserData + 93) = a2 + a3;
  ioOutputDataPacketSize = *(inInputDataProcUserData + 26);
  v11.mBuffers[0].mNumberChannels = *(inInputDataProcUserData + 24);
  v11.mBuffers[0].mDataByteSize = a5;
  v11.mBuffers[0].mData = a4;
  v8 = AudioConverterFillComplexBuffer(*(inInputDataProcUserData + 91), audioSession_audioDecoderDecodeCallback_6167, inInputDataProcUserData, &ioOutputDataPacketSize, &v11, 0);
  if (v8 == -6750)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    APSLogErrorAt();
  }

  else
  {
    *a6 = *(inInputDataProcUserData + 25) * ioOutputDataPacketSize;
  }

  return v9;
}

uint64_t audioSession_audioDecoderDecodeCallback_6167(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = *(a5 + 736);
  v6 = *(a5 + 744);
  if (v5 == v6)
  {
    *a2 = 0;
    return 4294960546;
  }

  else
  {
    result = 0;
    *a2 = 1;
    *a3 = 1;
    *(a3 + 8) = *(a5 + 96);
    *(a3 + 12) = v6 - v5;
    *(a3 + 16) = v5;
    *(a5 + 736) = v6;
    *(a5 + 752) = 0;
    *(a5 + 760) = 0;
    *(a5 + 764) = v6 - v5;
    *a4 = a5 + 752;
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedConvertProgressRTPTimeToSecond(uint64_t a1, int a2, int a3, int a4, double *a5, double *a6, double a7, double a8)
{
  if (a1)
  {
    v10 = *(a1 + 716);
    if (!*(a1 + 712))
    {
      v10 = a3;
    }

    LODWORD(a8) = *(a1 + 92);
    v11 = *&a8;
    v12 = (v10 - a2) / v11;
    v13 = (a4 - a2) / v11;
    if (gLogCategory_APReceiverAudioSessionBuffered <= 40 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (a5)
    {
      *a5 = v12;
    }

    result = 0;
    if (a6)
    {
      *a6 = v13;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895144;
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedSetSecurityInfo(uint64_t a1)
{
  if (!a1)
  {
    return 4294895144;
  }

  v2 = a1 + 424;
  AES_CBCFrame_Final();
  *(a1 + 448) = 0;
  v3 = AES_CBCFrame_Init();
  if (v3)
  {
    APSLogErrorAt();
  }

  else
  {
    *(a1 + 448) = v2;
  }

  return v3;
}

uint64_t APReceiverAudioSessionBufferedStartPacketProcesser(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  if (*(a1 + 1227))
  {
    v8 = 4294895143;
    goto LABEL_16;
  }

  if (*(a1 + 80))
  {
    return 0;
  }

  *(a1 + 1200) = mach_absolute_time();
  v2 = pthread_create((a1 + 72), 0, audioSession_networkThread_6188, a1);
  if (v2)
  {
    v8 = v2;
    goto LABEL_16;
  }

  *(a1 + 80) = a1 + 72;
  *(a1 + 848) = *(a1 + 1200);
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 1192));
  *(a1 + 1216) = v3;
  if (!v3 || (dispatch_set_context(v3, a1), dispatch_source_set_event_handler_f(*(a1 + 1216), audioSession_performPeriodicTasks_6183), v4 = *(a1 + 1216), v5 = dispatch_time(0, 250000000), dispatch_source_set_timer(v4, v5, 0xEE6B280uLL, 0xEE6B280uLL), dispatch_resume(*(a1 + 1216)), v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 1240)), (*(a1 + 1232) = v6) == 0))
  {
    APSLogErrorAt();
    return 4294960596;
  }

  dispatch_set_context(v6, a1);
  dispatch_source_set_event_handler_f(*(a1 + 1232), audioSession_log_6178);
  dispatch_source_set_timer(*(a1 + 1232), 0, 0x1DCD6500uLL, 0);
  dispatch_resume(*(a1 + 1232));
  v7 = *(a1 + 40);
  if (v7)
  {
    v10 = *(a1 + 40);
    v11 = 0;
    dispatch_sync_f(*(v7 + 112), &v10, controlServer_startInternal);
    v8 = v11;
    if (v11)
    {
LABEL_16:
      APSLogErrorAt();
      return v8;
    }
  }

  v8 = 0;
  *(a1 + 1227) = 1;
  return v8;
}

uint64_t audioSession_log_6178(uint64_t result)
{
  if (*(result + 476) > 0 && (v1 = result, *(result + 92)))
  {
    if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        APSSGetGasGaugeStringForPercent();
        result = LogPrintF();
      }
    }

    if (*(v1 + 1008) != *(v1 + 1012))
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
      {
        if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (result = _LogCategory_Initialize(), result))
        {
          result = LogPrintF();
        }
      }

      *(v1 + 1012) = *(v1 + 1008);
    }
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t audioSession_performPeriodicTasks_6183(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = mach_absolute_time();
    if (*(v1 + 808) != *(v1 + 812))
    {
      goto LABEL_10;
    }

    v2 = result;
    v3 = result - *(v1 + 816);
    if (result - *(v1 + 848) > *(v1 + 856))
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 40)
      {
        if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (result = _LogCategory_Initialize(), result))
        {
          UpTicksPerSecond();
          result = LogPrintF();
        }
      }

      *(v1 + 848) = v2;
    }

    if (v3 <= *(v1 + 824))
    {
LABEL_10:
      result = mach_absolute_time();
      if (result >= *(v1 + 792))
      {
        v4 = result;
        ++*(v1 + 788);
        v5 = *(v1 + 776);
        v6 = v5 - *(v1 + 780);
        *(v1 + 780) = v5;
        if (v6 < 1)
        {
          if (gLogCategory_APReceiverAudioSessionBuffered > 20)
          {
            goto LABEL_21;
          }

          if (gLogCategory_APReceiverAudioSessionBuffered == -1)
          {
            result = _LogCategory_Initialize();
            if (!result)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          ++*(v1 + 784);
          if (gLogCategory_APReceiverAudioSessionBuffered > 50)
          {
            goto LABEL_21;
          }

          if (gLogCategory_APReceiverAudioSessionBuffered == -1)
          {
            result = _LogCategory_Initialize();
            if (!result)
            {
              goto LABEL_21;
            }
          }
        }

        result = LogPrintF();
LABEL_21:
        *(v1 + 792) = *(v1 + 800) + v4;
      }
    }
  }

  return result;
}

uint64_t audioSession_networkThread_6188(uint64_t a1)
{
  v2 = *(a1 + 48);
  *&v15.sa_len = 0;
  *&v15.sa_data[6] = 0;
  v17 = 0;
  v16 = 0;
  *&v12.sa_len = 0;
  *&v12.sa_data[6] = 0;
  v14 = 0;
  v13 = 0;
  v11 = 0;
  memset(&v10, 0, sizeof(v10));
  pthread_setname_np("AirPlayAudioReceiver");
  SetCurrentThreadPriority();
  if (SocketAccept())
  {
    goto LABEL_44;
  }

  if (*(a1 + 1225))
  {
    SocketSetP2P();
  }

  if (!*(a1 + 1226))
  {
    SocketSetQoS();
  }

  if ((*(a1 + 64) & 0x80000000) == 0)
  {
    if (close(*(a1 + 64)) && *__error())
    {
      __error();
    }

    *(a1 + 64) = -1;
  }

  v11 = 28;
  getsockname(-1, &v15, &v11);
  v11 = 28;
  getpeername(-1, &v12, &v11);
  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (NetSocket_CreateWithNative())
  {
LABEL_44:
    APSLogErrorAt();
    return 0;
  }

  v3 = 1 << v2;
  v4 = v2 >> 5;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          memset(&v10, 0, sizeof(v10));
          if (*(a1 + 1224) && __darwin_check_fd_set_overflow(-1, &v10, 0))
          {
            LODWORD(STACK[0x200000000000007C]) = STACK[0x200000000000007C];
          }

          if (v2 <= -1)
          {
            v5 = -1;
          }

          else
          {
            v5 = v2;
          }

          if (__darwin_check_fd_set_overflow(v2, &v10, 0))
          {
            v10.fds_bits[v4] |= v3;
          }

          v6 = select(v5 + 1, &v10, 0, 0, 0);
          if (v6 > 0)
          {
            break;
          }

          if (v6 && *__error())
          {
            v7 = *__error();
            if (!v7)
            {
              break;
            }

            if (v7 == 4)
            {
              continue;
            }
          }

          usleep(0x186A0u);
        }

        __darwin_check_fd_set_overflow(-1, &v10, 0);
        if (__darwin_check_fd_set_overflow(v2, &v10, 0))
        {
          if ((v10.fds_bits[v4] & v3) != 0)
          {
            LOBYTE(v18) = 0;
            v19 = 0;
            v8 = SocketRecvFrom();
            if (v8 != 35)
            {
              break;
            }
          }
        }
      }

      if (!v8)
      {
        break;
      }

      APSLogErrorAt();
    }
  }

  while (v18 != 113);
  if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t audioSession_suspendNetworkReads(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 1224))
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 20 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v1 + 1224) = 0;
      result = SendSelfConnectedLoopbackMessage();
      if (result)
      {

        return APSLogErrorAt();
      }
    }
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedStopPacketProcesser(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 1227))
    {
      if (*(result + 80))
      {
        result = *(result + 48);
        if (result)
        {
          v2 = *(v1 + 40);
          if (v2)
          {
            context[0] = *(v1 + 40);
            context[1] = 0;
            dispatch_sync_f(*(v2 + 112), context, controlServer_stopInternal);
          }

          SendSelfConnectedLoopbackMessage();
          v3 = pthread_join(*(v1 + 72), 0);
          *(v1 + 80) = 0;
          v4 = *(v1 + 1192);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __APReceiverAudioSessionBufferedStopPacketProcesser_block_invoke;
          block[3] = &__block_descriptor_tmp_171_6205;
          block[4] = v1;
          dispatch_sync(v4, block);
          v5 = *(v1 + 1240);
          v6[0] = MEMORY[0x277D85DD0];
          v6[1] = 0x40000000;
          v6[2] = __APReceiverAudioSessionBufferedStopPacketProcesser_block_invoke_2;
          v6[3] = &__block_descriptor_tmp_172_6206;
          v6[4] = v1;
          dispatch_sync(v5, v6);
          *(v1 + 1208) = mach_absolute_time();
          *(v1 + 1227) = 0;
          return v3;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      APSLogErrorAt();
      return 4294895143;
    }
  }

  return result;
}

void __APReceiverAudioSessionBufferedStopPacketProcesser_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1216);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 1216));
    dispatch_release(v2);
    *(*(a1 + 32) + 1216) = 0;
  }
}

void __APReceiverAudioSessionBufferedStopPacketProcesser_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1232);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 1232));
    dispatch_release(v2);
    *(*(a1 + 32) + 1232) = 0;
  }
}

uint64_t APReceiverAudioSessionBufferedUpdateLatency(_DWORD *a1)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  a1[168] = gAirTunesRelativeTimeOffset_6209 + a1[116] - a1[115];
  if (gLogCategory_APReceiverAudioSessionBuffered > 30)
  {
    return 0;
  }

  if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedCopyMetrics(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetDouble();
      CFDictionarySetInt64();
      return 0;
    }

    else
    {
      APSLogErrorAt();
      return 4294895145;
    }
  }

  else
  {
    v2 = 4294895144;
    APSLogErrorAt();
  }

  return v2;
}

uint64_t APReceiverAudioSessionBufferedLogEnded(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      DataBuffer_AppendF();
      DataBuffer_AppendF();
      DataBuffer_AppendF();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      FigCFDictionarySetInt32();
      UpTicksToSeconds();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      CFDictionarySetValue(Mutable, @"sessionType", @"AudioBuffered");
      APSRTCReportingAgentSendMediaEvent();
      APSRTCReportingAgentSendEvent();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 0;
    }

    else
    {
      APSLogErrorAt();
      return 4294895145;
    }
  }

  return result;
}

__CFDictionary *APReceiverAudioSessionBufferedCopyAudioBufferInfo(uint64_t a1, int *a2)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (!v6)
      {
        v20 = -72150;
        APSLogErrorAt();
        v17 = 0;
LABEL_13:
        CFRelease(v5);
        goto LABEL_14;
      }

      v7 = v6;
      theDict = v5;
      v22 = a2;
      audioSession_sessionLock_6081(*(a1 + 1128));
      v23 = a1;
      v8 = *(a1 + 584);
      if (*v8 == v8)
      {
LABEL_11:
        v17 = theDict;
        CFDictionarySetValue(theDict, @"NodesInfo", v7);
        CFDictionarySetInt64();
        v18 = v23;
        CFDictionarySetInt64();
        v19 = 0;
        v20 = 0;
      }

      else
      {
        v9 = *MEMORY[0x277CBED28];
        v10 = MEMORY[0x277CBF138];
        v11 = MEMORY[0x277CBF150];
        v12 = *MEMORY[0x277CBED10];
        v13 = *v8;
        while (1)
        {
          v14 = CFDictionaryCreateMutable(0, 0, v10, v11);
          if (!v14)
          {
            break;
          }

          v15 = v14;
          CFDictionarySetInt64();
          if (v13[3] == v13[2] + 12)
          {
            v16 = v9;
          }

          else
          {
            v16 = v12;
          }

          CFDictionarySetValue(v15, @"IsEncoded", v16);
          CFArrayAppendValue(v7, v15);
          CFRelease(v15);
          v13 = *v13;
          if (v13 == v8)
          {
            goto LABEL_11;
          }
        }

        v20 = -72150;
        APSLogErrorAt();
        v18 = v23;
        v19 = theDict;
        v17 = 0;
      }

      audioSession_sessionUnlock_6083(*(v18 + 1128));
      CFRelease(v7);
      v5 = v19;
      a2 = v22;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v20 = -72150;
      APSLogErrorAt();
      v17 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v17 = 0;
    v20 = -72152;
  }

LABEL_14:
  if (a2)
  {
    *a2 = v20;
  }

  return v17;
}

uint64_t APReceiverAudioSessionBufferedCopyProperty(uint64_t a1, CFTypeRef cf1, int *a3)
{
  if (a1)
  {
    if (cf1)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (CFEqual(cf1, @"AudioFormat"))
      {
        v6 = *(a1 + 1136);
LABEL_9:
        result = CFRetain(v6);
LABEL_18:
        v11 = 0;
        goto LABEL_19;
      }

      if (CFEqual(cf1, @"CompressionType"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 88);
LABEL_12:
        v10 = kCFNumberSInt32Type;
LABEL_13:
        result = CFNumberCreate(v8, v10, v9);
        goto LABEL_18;
      }

      if (CFEqual(cf1, @"MediaDataControlPort"))
      {
        result = CFNumberCreateInt64();
        goto LABEL_18;
      }

      if (CFEqual(cf1, @"MaximumLatency"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 468);
        goto LABEL_12;
      }

      if (CFEqual(cf1, @"MinimumLatency"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 464);
        goto LABEL_12;
      }

      if (CFEqual(cf1, @"NumberOfChannels"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 96);
        goto LABEL_12;
      }

      if (CFEqual(cf1, @"PlatformAudioLatency"))
      {
        audioSession_sessionLock_6081(*(a1 + 1128));
        v14 = *(a1 + 460);
        audioSession_sessionUnlock_6083(*(a1 + 1128));
        v8 = *MEMORY[0x277CBECE8];
        v9 = &v14;
        goto LABEL_12;
      }

      if (CFEqual(cf1, @"AudioPort"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 456);
        v10 = kCFNumberIntType;
        goto LABEL_13;
      }

      if (CFEqual(cf1, @"SampleRate"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 92);
        goto LABEL_12;
      }

      if (CFEqual(cf1, @"audioBufferSize"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 496);
        v10 = kCFNumberSInt64Type;
        goto LABEL_13;
      }

      if (CFEqual(cf1, @"IsPlayingBufferedAudio"))
      {
        audioSession_sessionLock_6081(*(a1 + 1128));
        v12 = *(a1 + 880);
        audioSession_sessionUnlock_6083(*(a1 + 1128));
        v13 = MEMORY[0x277CBED28];
        if (!v12)
        {
          v13 = MEMORY[0x277CBED10];
        }

        goto LABEL_42;
      }

      if (CFEqual(cf1, @"IsUsingScreen"))
      {
        v13 = MEMORY[0x277CBED10];
LABEL_42:
        v6 = *v13;
        goto LABEL_9;
      }

      if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      result = 0;
      v11 = -72154;
    }

    else
    {
      APSLogErrorAt();
      result = 0;
      v11 = -72151;
    }
  }

  else
  {
    APSLogErrorAt();
    result = 0;
    v11 = -72152;
  }

LABEL_19:
  if (a3)
  {
    *a3 = v11;
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedSetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v12 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  if (!a2)
  {
    v8 = 4294895145;
LABEL_33:
    APSLogErrorAt();
    return v8;
  }

  if (!a3)
  {
    v8 = 4294895145;
    goto LABEL_33;
  }

  if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  audioSession_sessionLock_6081(*(a1 + 1128));
  if (CFEqual(a2, @"VolumeLinear"))
  {
    if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v12 = APReceiverAudioSessionPlatformSetProperty(*a1, v6, @"RASP::VolumeLinear", v7, a3);
    if (v12)
    {
      APSLogErrorAt();
    }

    goto LABEL_19;
  }

  if (CFEqual(a2, @"PlatformAudioLatency"))
  {
    *(a1 + 460) = CFGetInt64Ranged();
  }

  else
  {
    if (!CFEqual(a2, @"RTCMetadata"))
    {
      if (CFEqual(a2, @"timelineOffset"))
      {
        v10 = CFGetInt64();
        if ((v10 - 251) > 0xFFFFFE0A)
        {
          gAirTunesRelativeTimeOffset_6209 = v10;
          goto LABEL_19;
        }

        APSLogErrorAt();
        v11 = -6710;
      }

      else
      {
        if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v11 = -72154;
      }

      v12 = v11;
      goto LABEL_19;
    }

    APSRTCReportingAgentSendMediaEvent();
  }

LABEL_19:
  audioSession_sessionUnlock_6083(*(a1 + 1128));
  return v12;
}

uint64_t _GetTypeID_6322()
{
  result = _CFRuntimeRegisterClass();
  gAirPlayReceiverSessionTypeID = result;
  return result;
}

void _Finalize_6325(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(a1 + 441))
  {
    if (gLogCategory_AirPlayReceiverCore > 100 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_51;
    }

LABEL_50:
    LogPrintF();
LABEL_51:
    __break(1u);
    return;
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    v2(a1, *(a1 + 56));
  }

  if (!*(a1 + 683))
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 30 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(a1 + 48))
    {
      if (gLogCategory_AirPlayReceiverPlatform > 100 || gLogCategory_AirPlayReceiverPlatform == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }
  }

  v3 = *(a1 + 760);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 760) = 0;
  }

  v4 = *(a1 + 568);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 568) = 0;
  }

  v5 = *(a1 + 696);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 696) = 0;
  }

  v6 = *(a1 + 736);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 736) = 0;
  }

  v7 = *(a1 + 744);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 744) = 0;
  }

  v8 = *(a1 + 648);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 648) = 0;
  }

  v9 = *(a1 + 664);
  if (v9)
  {
    dispatch_source_cancel(*(a1 + 664));
    dispatch_release(v9);
    *(a1 + 664) = 0;
  }

  v10 = *(a1 + 672);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 672) = 0;
  }

  v11 = *(a1 + 592);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 592) = 0;
  }

  v12 = *(a1 + 600);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 600) = 0;
  }

  v13 = *(a1 + 432);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 432) = 0;
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 24) = 0;
  }

  v15 = *(a1 + 768);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 768) = 0;
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    dispatch_release(v16);
    *(a1 + 16) = 0;
  }
}

void _Cleanup(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 600) && !*(a1 + 683))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
  }

  if (!*(a1 + 441))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(a1 + 683))
    {
LABEL_19:
      mach_absolute_time();
      UpTicksToSeconds();
      if (a2)
      {
        if (gLogCategory_AirPlayReceiverCore > 50 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        if (!*(a1 + 681))
        {
LABEL_28:
          LogPrintF();
LABEL_32:
          v9 = *(a1 + 184);
          if (v9)
          {
            dispatch_source_cancel(*(a1 + 184));
            dispatch_release(v9);
            *(a1 + 184) = 0;
          }

          Count = CFDictionaryGetCount(*(a1 + 568));
          block[0] = 0;
          if (Count >= 1)
          {
            v11 = Count;
            if (_cfDictionaryCopyKeysAndValues(*(a1 + 568), block, 0))
            {
              APSLogErrorAt();
            }

            else
            {
              for (i = 0; i != v11; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(block[0], i);
                _AudioTearDownStream(a1, 0, ValueAtIndex, a2);
              }

              if (!*(a1 + 754))
              {
                CFObjectSetProperty();
              }
            }

            if (block[0])
            {
              CFRelease(block[0]);
            }
          }

          _ScreenTearDown(a1);
          if (!CFEqual(*(a1 + 672), @"None"))
          {
            v35 = *(a1 + 448);
            if (v35)
            {
              if (!*(a1 + 683))
              {
                v36 = *(*(CMBaseObjectGetVTable() + 16) + 88);
                if (v36)
                {
                  v36(v35, a1);
                }
              }
            }
          }

          _ControlTearDown(a1);
          if (*(a1 + 736))
          {
            v14 = CFDictionaryCopyKeys();
            if (v14)
            {
              v15 = v14;
              v16 = CFArrayGetCount(v14);
              if (v16 >= 1)
              {
                v17 = v16;
                for (j = 0; j != v17; ++j)
                {
                  v19 = CFArrayGetValueAtIndex(v15, j);
                  _PlaybackV2TearDown(a1, v19);
                }
              }

              CFRelease(v15);
            }
          }

          _UpdateActiveSessionRegistration(a1);
          if (*(a1 + 696))
          {
            v20 = CFDictionaryCopyKeys();
            if (v20)
            {
              v21 = v20;
              v22 = CFArrayGetCount(v20);
              if (v22 >= 1)
              {
                v23 = v22;
                for (k = 0; k != v23; ++k)
                {
                  v25 = CFArrayGetValueAtIndex(v21, k);
                  _RemoteControlSessionTearDown(a1, v25);
                }
              }

              CFRelease(v21);
            }
          }

          if (!*(a1 + 683))
          {
            AirPlayReceiverSessionPlatformControl(a1, @"stopSession");
          }

          v26 = *(a1 + 176);
          if (v26)
          {
            CFRelease(v26);
            *(a1 + 176) = 0;
          }

          if (*(a1 + 600))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterRemoveListener();
          }

          v27 = *(a1 + 448);
          if (v27)
          {
            CFRelease(v27);
            *(a1 + 448) = 0;
          }

          v28 = *(a1 + 704);
          if (v28)
          {
            CFRelease(v28);
            *(a1 + 704) = 0;
          }

          v29 = *(a1 + 312);
          if (v29)
          {
            CFRelease(v29);
            *(a1 + 312) = 0;
          }

          v30 = *(a1 + 320);
          if (v30)
          {
            CFRelease(v30);
            *(a1 + 320) = 0;
          }

          v31 = *(a1 + 296);
          if (v31)
          {
            CFRelease(v31);
            *(a1 + 296) = 0;
          }

          v32 = *(a1 + 304);
          if (v32)
          {
            CFRelease(v32);
            *(a1 + 304) = 0;
          }

          v33 = *(a1 + 288);
          if (v33)
          {
            CFRelease(v33);
            *(a1 + 288) = 0;
          }

          AES_CBCFrame_Final();
          v34 = *(a1 + 616);
          if (v34)
          {
            CFRelease(v34);
            *(a1 + 616) = 0;
          }

          *(a1 + 32) = 0;
          *(a1 + 441) = 1;
          return;
        }
      }

      else
      {
        if (gLogCategory_AirPlayReceiverCore > 50 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        if (!*(a1 + 681))
        {
          goto LABEL_28;
        }
      }

      APSIsMemberOfHTGroup();
      goto LABEL_28;
    }

    v4 = *(a1 + 592);
    if (!v4)
    {
LABEL_18:
      _AirPlayReceiverSessionRemoveTrafficRegistration(a1);
      goto LABEL_19;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v41 = 0;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v6 = v5(v4);
      if (!v6)
      {
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v7)
        {
          v8 = v7(v4);
        }

        else
        {
          v8 = -12782;
        }

        *(v39 + 6) = v8;
        goto LABEL_17;
      }
    }

    else
    {
      v6 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APReceiverSBufConsumerStop_block_invoke;
    block[3] = &unk_278C60CF0;
    block[4] = &v38;
    block[5] = v4;
    dispatch_sync(v6, block);
LABEL_17:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    _Block_object_dispose(&v38, 8);
    goto LABEL_18;
  }
}

uint64_t __APReceiverSBufConsumerStop_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v3)
  {
    result = v3(v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _AirPlayReceiverSessionRemoveTrafficRegistration(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    if (gLogCategory_AirPlayReceiverCore > 50)
    {
      goto LABEL_7;
    }

    if (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    v2 = *(a1 + 432);
    if (v2)
    {
LABEL_7:
      CFRelease(v2);
      *(a1 + 432) = 0;
    }
  }
}

uint64_t _cfDictionaryCopyKeysAndValues(const __CFDictionary *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  Count = CFDictionaryGetCount(a1);
  v7 = Count;
  if (!a2)
  {
    v8 = 0;
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  if (!v8)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = malloc_type_calloc(v7, 8uLL, 0xC0040B8AA526DuLL);
  if (!v9)
  {
    APSLogErrorAt();
    v10 = 0;
LABEL_31:
    v13 = 0;
    goto LABEL_33;
  }

LABEL_8:
  CFDictionaryGetKeysAndValues(a1, v8, v9);
  if (a2)
  {
    v11 = CFGetAllocator(a1);
    v10 = CFArrayCreate(v11, v8, v7, MEMORY[0x277CBF128]);
    if (!v10)
    {
      APSLogErrorAt();
      goto LABEL_31;
    }

    if (a3)
    {
LABEL_11:
      v12 = CFGetAllocator(a1);
      v13 = CFArrayCreate(v12, v9, v7, MEMORY[0x277CBF128]);
      if (!v13)
      {
        APSLogErrorAt();
LABEL_33:
        v14 = 4294960568;
        if (!v8)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (a2)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  v13 = 0;
  if (a2)
  {
LABEL_13:
    *a2 = CFRetain(v10);
  }

LABEL_14:
  if (a3)
  {
    v14 = 0;
    *a3 = CFRetain(v13);
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = 0;
  if (v8)
  {
LABEL_21:
    free(v8);
  }

LABEL_22:
  if (v9)
  {
    free(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v14;
}

void _AudioTearDownStream(uint64_t a1, uint64_t a2, void *key, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    CFGetInt64();
    LogPrintF();
  }

  if (key)
  {
    Value = CFDictionaryGetValue(*(a1 + 568), key);
    if (Value)
    {
      v9 = Value;
      v10 = *(a1 + 576);
      if (!a2)
      {
        v12 = 0;
        goto LABEL_11;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v12 = Mutable;
        CFNumberGetTypeID();
        CFDictionaryGetTypedValue();
        FigCFDictionarySetValue();
        CFNumberGetTypeID();
        CFDictionaryGetTypedValue();
        FigCFDictionarySetValue();
        CFNumberGetTypeID();
        CFDictionaryGetTypedValue();
        FigCFDictionarySetValue();
        CFNumberGetTypeID();
        CFDictionaryGetTypedValue();
        FigCFDictionarySetValue();
        CFNumberGetTypeID();
        CFDictionaryGetTypedValue();
        FigCFDictionarySetValue();
        CFDictionaryGetTypeID();
        CFDictionaryGetTypedValue();
        FigCFDictionarySetValue();
LABEL_11:
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v13 = v9[10];
        if (v13)
        {
          v13(v9[5], v12);
        }

        DataBuffer_Init();
        DataBuffer_AppendF();
        v14 = v9[21];
        if (v14)
        {
          v14(v9[5], v20, a4);
        }

        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        DataBuffer_Free();
        APReceiverAudioSessionInvalidate(v9);
        CFDictionaryRemoveValue(*(a1 + 568), key);
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          CFGetInt64();
          LogPrintF();
        }

        if (v9 == v10)
        {
          v15 = *(a1 + 576);
          if (v15)
          {
            CFRelease(v15);
            *(a1 + 576) = 0;
          }
        }

        if (*(a1 + 600))
        {
          v16 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v16, @"sessionID", key);
          v17 = *(a1 + 600);
          v18 = *(*(CMBaseObjectGetVTable() + 16) + 136);
          if (v18)
          {
            v18(v17, v16);
          }

          if (v16)
          {
            CFRelease(v16);
          }
        }

        v19 = *(a1 + 556);
        if (*(a1 + 552) != v19)
        {
          *(a1 + 552) = v19;
          *(a1 + 520) = UpTicksPerSecond() * v19;
          SocketSetKeepAlive();
        }

        if (v9 == v10)
        {
          AirPlayReceiverSessionPlatformControl(a1, @"handleMediaAudioStoppingForSession");
        }

        _UpdateActiveSessionRegistration(a1);
        if (v12)
        {
          CFRelease(v12);
        }

        return;
      }
    }
  }

  APSLogErrorAt();
}

void _ScreenTearDown(uint64_t a1)
{
  v1 = *(a1 + 616);
  if (v1)
  {
    v3 = *(a1 + 664);
    if (v3)
    {
      dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      v1 = *(a1 + 616);
    }

    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v1);
    }

    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = *(a1 + 616);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 616) = 0;
    }

    if (*(a1 + 600) && *(a1 + 633))
    {
      *(a1 + 633) = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetNumber();
      CFDictionarySetNumber();
      v7 = *(a1 + 600);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v8)
      {
        v8(v7, Mutable);
      }

      *(a1 + 636) = 0;
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    _UpdateActiveSessionRegistration(a1);
  }
}

int *_ControlTearDown(uint64_t a1)
{
  if (*(a1 + 456))
  {
    *(a1 + 456) = 0;
    if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (*(a1 + 464))
  {
    HTTPClientInvalidate();
    CFRelease(*(a1 + 464));
    *(a1 + 464) = 0;
  }

  v2 = *(a1 + 488);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 488) = 0;
  }

  result = *(a1 + 476);
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

    *(a1 + 476) = -1;
  }

  return result;
}

void _PlaybackV2TearDown(uint64_t a1, const void *a2)
{
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    CFGetInt64();
    LogPrintF();
  }

  if (*(a1 + 600))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"sessionID", a2);
    v5 = *(a1 + 600);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v6)
    {
      v6(v5, Mutable);
    }

    CFDictionaryRemoveValue(*(a1 + 736), a2);
    CFSetRemoveValue(*(a1 + 744), a2);
    if (CFSetGetCount(*(a1 + 744)))
    {
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      _UpdateActiveSessionRegistration(a1);
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _UpdateActiveSessionRegistration(uint64_t *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"session", a1);
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (AirPlayReceiverServerPlatformControl(a1[3], @"updateActiveSessionRegistration", 0, v3))
    {
      APSLogErrorAt();
    }

    CFRelease(v3);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _RemoteControlSessionTearDown(uint64_t a1, void *key)
{
  if (key)
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Value = CFDictionaryGetValue(*(a1 + 696), key);
    if (Value)
    {
      v5 = Value;
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v6)
      {
        v6(v5);
      }

      v7 = *(a1 + 696);

      CFDictionaryRemoveValue(v7, key);
    }

    else if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

void _AirPlayReceiverSession_HandleUINotifications(int a1, void *a2, CFTypeRef cf1, uint64_t a4, const void *a5)
{
  if (CFEqual(cf1, @"userStop"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _AirPlayReceiverSession_Terminate(a2);
    return;
  }

  if (CFEqual(cf1, @"FPSSecureStopGenerated"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRetain(a2);
    if (a5)
    {
      CFRetain(a5);
    }

    v8 = a2[2];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 0x40000000;
    v18[2] = ___AirPlayReceiverSession_HandleUINotifications_block_invoke;
    v18[3] = &__block_descriptor_tmp_346;
    v18[4] = a2;
    v18[5] = a5;
    v9 = v18;
LABEL_48:
    dispatch_async(v8, v9);
    return;
  }

  if (CFEqual(cf1, @"serverDied"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRetain(a2);
    v8 = a2[2];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 0x40000000;
    v17[2] = ___AirPlayReceiverSession_HandleUINotifications_block_invoke_2;
    v17[3] = &__block_descriptor_tmp_348;
    v17[4] = a2;
    v9 = v17;
    goto LABEL_48;
  }

  if (CFEqual(cf1, @"stopPresentation"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Int64 = CFDictionaryGetInt64();
    CFRetain(a2);
    v8 = a2[2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = ___AirPlayReceiverSession_HandleUINotifications_block_invoke_3;
    v15[3] = &__block_descriptor_tmp_350;
    v16 = Int64;
    v15[4] = a2;
    v9 = v15;
    goto LABEL_48;
  }

  if (CFEqual(cf1, @"KeyFrameNeeded"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRetain(a2);
    v8 = a2[2];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = ___AirPlayReceiverSession_HandleUINotifications_block_invoke_4;
    v14[3] = &__block_descriptor_tmp_352;
    v14[4] = a2;
    v9 = v14;
    goto LABEL_48;
  }

  if (CFEqual(cf1, @"UpdateDisplayInfo"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRetain(a2);
    v8 = a2[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___AirPlayReceiverSession_HandleUINotifications_block_invoke_5;
    block[3] = &__block_descriptor_tmp_354;
    block[4] = a2;
    v9 = block;
    goto LABEL_48;
  }

  if (CFEqual(cf1, @"ScreenRecordingStarted"))
  {
    v11 = a2;
    v12 = 1;
  }

  else
  {
    if (!CFEqual(cf1, @"ScreenRecordingStopped"))
    {
      return;
    }

    v11 = a2;
    v12 = 0;
  }

  _ScreenPostRecordingState(v11, v12);
}

uint64_t _AirPlayReceiverSession_Terminate(uint64_t a1)
{
  if (!a1)
  {
    if (gLogCategory_AirPlayReceiverCore > 50 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
    {
      return CFObjectControlAsync();
    }

LABEL_5:
    LogPrintF();
    return CFObjectControlAsync();
  }

  _ReportSessionStallIfNeeded(a1, 2);
  if (*(a1 + 32))
  {
    if (gLogCategory_AirPlayReceiverCore > 50 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
    {
      return CFObjectControlAsync();
    }

    goto LABEL_5;
  }

  return APSLogErrorAt();
}

void _ScreenPostRecordingState(NSObject **cf, char a2)
{
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(cf);
  v4 = cf[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ScreenPostRecordingState_block_invoke;
  block[3] = &__block_descriptor_tmp_376;
  v6 = a2;
  block[4] = cf;
  dispatch_async(v4, block);
}

uint64_t AirPlayReceiverSessionSendCommandForObject(uint64_t a1, const __CFNumber *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (!*(a1 + 458))
  {
    return 0;
  }

  if (!*(a1 + 464))
  {
    v22 = 0;
LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  v10 = HTTPMessageCreate();
  if (v10)
  {
    v22 = v10;
LABEL_25:
    APSLogErrorAt();
    goto LABEL_26;
  }

  *(cf + 2411) = *(a1 + 556);
  inited = HTTPHeader_InitRequest();
  if (inited)
  {
    v22 = inited;
    goto LABEL_25;
  }

  v12 = *(a1 + 472) + 1;
  v13 = HTTPHeader_SetField();
  if (v13)
  {
    v22 = v13;
    goto LABEL_25;
  }

  if (a2)
  {
    valuePtr = 0;
    CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
    HTTPHeader_SetField();
  }

  Data = CFPropertyListCreateData(0, a3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v15 = Data;
  if (!Data)
  {
    APSLogErrorAt();
    Mutable = 0;
    v22 = 4294960596;
    goto LABEL_13;
  }

  CFDataGetBytePtr(Data);
  CFDataGetLength(v15);
  v16 = HTTPMessageSetBody();
  if (!v16)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      mach_absolute_time();
      CFDictionarySetInt64();
      HTTPClientGetClientID();
      CFDictionarySetInt64();
      *(a1 + 472) = v12;
      v18 = CFRetain(a1);
      v19 = cf;
      *(cf + 1209) = v18;
      v19[1210] = a4;
      v19[1211] = a5;
      v20 = CFRetain(Mutable);
      v21 = cf;
      *(cf + 1212) = v20;
      v21[1214] = _AirPlayReceiverSessionSendCommandCompletion;
      v22 = HTTPClientSendMessage();
      if (v22)
      {
        CFRelease(a1);
        CFRelease(Mutable);
        APSLogErrorAt();
      }
    }

    else
    {
      APSLogErrorAt();
      v22 = 0;
    }

    goto LABEL_13;
  }

  v22 = v16;
  APSLogErrorAt();
LABEL_27:
  Mutable = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v22;
}

void _AirPlayReceiverSessionSendCommandCompletion(void *a1)
{
  v2 = a1[1209];
  v3 = a1[1210];
  v4 = a1[1212];
  CFDictionaryGetInt64();
  mach_absolute_time();
  UpTicksToSecondsF();
  if (v5 > 5.0)
  {
    CFDictionaryGetInt64Ranged();
    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (v3)
  {
    CFDictionaryGetTypeID();
    v6 = CFCreateWithPlistBytes();
    Int64 = CFDictionaryGetInt64();
    if (Int64)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v3(Int64, v7, a1[1211]);
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v2);
  CFRelease(v4);
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t AirPlayReceiverSessionForceKeyFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetValue(Mutable, @"type", @"forceKeyFrame");
    v8 = AirPlayReceiverSessionSendCommandForObject(a1, 0, v7, a2, a3);
    if (v8)
    {
      APSLogErrorAt();
    }

    CFRelease(v7);
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return v8;
}

void _ReportSessionStallIfNeeded(uint64_t a1, int a2)
{
  if ((a2 == 1) != (*(a1 + 536) == 1))
  {
    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetInt64();
      AirPlayReceiverServerPlatformControl(*(a1 + 24), @"reportSessionStall", 0, v5);
      *(a1 + 536) = a2;

      CFRelease(v5);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

__n128 AirPlayReceiverSessionSetDelegate(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 104) = *(a2 + 48);
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  *(a1 + 56) = result;
  return result;
}

uint64_t AirPlayReceiverSessionControl(uint64_t a1, int a2, CFTypeRef cf1, __CFString *a4, const __CFDictionary *a5, __CFDictionary **a6)
{
  if (CFEqual(cf1, @"updateFeedback"))
  {
    if (!a1 || !a6)
    {
      return 0;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v12 = Mutable;
      v13 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (v13)
      {
        v14 = v13;
        CFDictionarySetValue(v12, @"streams", v13);
        *a6 = v12;
        CFRelease(v14);
        return 0;
      }

      APSLogErrorAt();
      CFRelease(v12);
    }

    else
    {
      APSLogErrorAt();
    }

    v35 = -6728;
    goto LABEL_31;
  }

  if (CFEqual(cf1, @"didReceiveData"))
  {
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (CFDictionaryContainsKey(*(a1 + 736), TypedValue))
    {
      Value = CFDictionaryGetValue(a5, @"params");
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, Value);
      if (*(a1 + 600))
      {
        v19 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"X-Apple-StreamID", TypedValue);
        v20 = *(a1 + 600);
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v21)
        {
          v22 = v21(v20, v19, a6);
        }

        else
        {
          v22 = -12782;
        }

        v35 = v22;
        if (v19)
        {
          CFRelease(v19);
          v22 = v35;
        }

        if (!v22)
        {
          return 0;
        }

        goto LABEL_31;
      }

      APSLogErrorAt();
      return -6735;
    }

    v24 = CFDictionaryGetValue(*(a1 + 696), TypedValue);
    if (v24)
    {
      v25 = v24;
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v26)
      {
        v35 = v26(v25, a5);
        if (!v35)
        {
          return 0;
        }
      }

      else
      {
        v35 = -12782;
      }

      goto LABEL_31;
    }

LABEL_87:
    APSLogErrorAt();
    return -6709;
  }

  if (CFEqual(cf1, @"reportIssue"))
  {
    if (a5)
    {
      CFStringGetTypeID();
      v23 = CFDictionaryGetTypedValue();
      if (CFEqual(v23, *MEMORY[0x277CEA1F8]))
      {
        CFNumberGetTypeID();
        CFDictionaryGetTypedValue();
        CFNumberGetTypeID();
        CFDictionaryGetTypedValue();
        if (*(a1 + 192) == 128)
        {
          if (APSSettingsGetIntWithDefault())
          {
            APTNANDataSessionIssueReportCreate();
          }
        }
      }

      return 0;
    }

    APSLogErrorAt();
    v35 = -6705;
    goto LABEL_31;
  }

  if (CFEqual(cf1, @"nanWifiStats"))
  {
    if (*(a1 + 192) != 128)
    {
      if (a6)
      {
        Empty = CFDictionaryGetEmpty();
        *a6 = CFRetain(Empty);
      }

      return 0;
    }

    v35 = APAdvertiserCopyNANWifiStats(*(*(a1 + 24) + 40), a6);
    if (!v35)
    {
      return 0;
    }

LABEL_31:
    APSLogErrorAt();
    return v35;
  }

  if (CFEqual(cf1, @"sessionDied"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _AirPlayReceiverSession_Terminate(a1);
    return 0;
  }

  if (CFEqual(cf1, @"volumeChanged"))
  {
    v28 = CFDictionaryGetValue(a5, @"volumeLinear");
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v28)
    {
      v35 = _ProcessSWVolumeChanged(a1, v28);
      if (!v35)
      {
        return 0;
      }

      goto LABEL_31;
    }

    goto LABEL_87;
  }

  if (CFEqual(cf1, @"audioInterruptionBegan"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (FigCFEqual())
    {
      v29 = a1;
      v30 = 1;
LABEL_78:
      _ForwardAudioInterruptionCommandsToReceiverAudioSessions(v29, v30, 0);
      return 0;
    }

    if (!FigCFEqual())
    {
      v35 = -6735;
      goto LABEL_31;
    }

    v31 = a1;
    v32 = 1;
    goto LABEL_81;
  }

  if (CFEqual(cf1, @"audioInterruptionEnded"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (FigCFEqual())
    {
      v29 = a1;
      v30 = 0;
      goto LABEL_78;
    }

    if (!FigCFEqual())
    {
      v35 = -6735;
      goto LABEL_31;
    }

    v31 = a1;
    v32 = 0;
LABEL_81:
    _HandleMediaAudioInterruption(v31, v32);
    return 0;
  }

  if (CFEqual(cf1, @"otherProcessStartedPlaying"))
  {
    _HandleOtherProcessStartedPlaying(a1);
    return 0;
  }

  if (CFEqual(cf1, @"partnerProcessDeath"))
  {
    if (a4)
    {
      v33 = CFGetTypeID(a4);
      if (v33 == CFStringGetTypeID())
      {
        _HandlePartnerProcessDeath(a1, a4);
        return 0;
      }
    }

    APSLogErrorAt();
    return -6705;
  }

  if (CFEqual(cf1, @"handleMediaAudioResumedForSession"))
  {
    _HandleMediaAudioResumedForSession(a1, a4);
    return 0;
  }

  if (CFEqual(cf1, @"fadeAudio"))
  {
    _HandleFadeAudioCommand(a1);
    return 0;
  }

  if (CFEqual(cf1, @"performPWDKeyExchange"))
  {
    v35 = _HandlePerformPWDKeyExchangeCommand(a1, a5, a6);
    if (!v35)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (*(a1 + 683))
  {
    APSLogErrorAt();
    v35 = 0;
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    return AirPlayReceiverSessionPlatformControl(a1, cf1);
  }

  return v35;
}

uint64_t _ProcessSWVolumeChanged(uint64_t a1, uint64_t a2)
{
  theArray = 0;
  Count = FigCFDictionaryGetCount();
  v5 = *(a1 + 568);
  if (!v5)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v6 = _cfDictionaryCopyKeysAndValues(v5, 0, &theArray);
  if (!v6)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        APReceiverAudioSessionSetProperty(ValueAtIndex, @"VolumeLinear", a2);
      }
    }

    goto LABEL_10;
  }

  v9 = v6;
  APSLogErrorAt();
LABEL_11:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v9;
}

void _ForwardAudioInterruptionCommandsToReceiverAudioSessions(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = @"RASP::HandleAudioInterruptionBegan";
  }

  else
  {
    v3 = @"RASP::HandleAudioInterruptionEnded";
  }

  if (!*(a1 + 683))
  {
    v5 = FigCFDictionaryCopyArrayOfValues();
    if (v5)
    {
      v6 = v5;
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
          if ((CFObjectGetPropertyInt64Sync() != 0) == a3)
          {
            if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            APReceiverAudioSessionPlatformControl(ValueAtIndex, v3);
          }
        }
      }

      CFRelease(v6);
    }
  }
}

void _HandleMediaAudioInterruption(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!*(a1 + 683))
    {
      if (*(*(a1 + 24) + 251))
      {
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        _ForwardAudioInterruptionCommandsToReceiverAudioSessions(a1, 1, 1);
        *(a1 + 753) = 1;
      }

      else if (*(a1 + 684))
      {
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (*(a1 + 576))
        {
          AirPlayReceiverSessionSendMediaRemoteCommand(a1, -1, 1885435251, 0);
          if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          *(a1 + 753) = 1;
        }
      }

      else
      {
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        _AirPlayReceiverSession_Terminate(a1);
        *(a1 + 752) = 1;
      }
    }

    return;
  }

  if (*(a1 + 683))
  {
    return;
  }

  if (*(*(a1 + 24) + 251))
  {
    *(a1 + 753) = 0;
    _ForwardAudioInterruptionCommandsToReceiverAudioSessions(a1, 0, 1);
    if (gLogCategory_AirPlayReceiverCore > 50 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    goto LABEL_11;
  }

  if (!*(a1 + 684))
  {
    if (gLogCategory_AirPlayReceiverCore > 50 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
    {
      return;
    }

LABEL_11:
    LogPrintF();
    return;
  }

  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(a1 + 753))
  {
    *(a1 + 753) = 0;
    if (CFDictionaryGetInt64())
    {
      AirPlayReceiverSessionSendMediaRemoteCommand(a1, -1, 1886151033, 0);
      if (gLogCategory_AirPlayReceiverCore > 50 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
      {
        return;
      }
    }

    else if (gLogCategory_AirPlayReceiverCore > 50 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    goto LABEL_11;
  }
}

uint64_t _HandleOtherProcessStartedPlaying(uint64_t result)
{
  if (!*(result + 683))
  {
    v1 = result;
    if (!*(result + 684))
    {
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return _AirPlayReceiverSession_Terminate(v1);
    }
  }

  return result;
}

uint64_t _HandlePartnerProcessDeath(uint64_t result, __CFString *cf1)
{
  v2 = result;
  if (cf1 == @"MediaServices")
  {
    goto LABEL_24;
  }

  if (!cf1)
  {
    return result;
  }

  result = CFEqual(cf1, @"MediaServices");
  if (result)
  {
LABEL_24:
    if (*(v2 + 683))
    {
      return result;
    }

    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(v2 + 753) = 0;
    goto LABEL_17;
  }

  if (cf1 == @"MediaRemoteServices" || (result = CFEqual(cf1, @"MediaRemoteServices"), result))
  {
    if (*(v2 + 683))
    {
      if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

LABEL_17:

      return _AirPlayReceiverSession_Terminate(v2);
    }
  }

  return result;
}

uint64_t _HandleMediaAudioResumedForSession(uint64_t a1, __CFString *a2)
{
  result = APSIsAPMSpeaker();
  if (result && *(a1 + 681))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverCore != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    if (a2 != @"com.apple.TVAirPlay")
    {
      if (!a2 || (result = CFEqual(a2, @"com.apple.TVAirPlay"), !result))
      {
        if (*(a1 + 32))
        {
          if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v5 = *(a1 + 32);

          return APReceiverRequestProcessorHijackAndBecomeMainSession(v5);
        }
      }
    }
  }

  return result;
}

uint64_t _HandleFadeAudioCommand(uint64_t result)
{
  v1 = result;
  if (*(result + 576))
  {
    if (CFDictionaryGetInt64() == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    CFDictionaryGetDouble();
    v4 = v3;
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = *(v1 + 576);
    CMTimeMakeWithSeconds(&v6, v4, 1000);
    return APReceiverAudioSessionApplyVolumeFade(v5, v2, &v6);
  }

  else if (gLogCategory_AirPlayReceiverCore <= 50)
  {
    if (gLogCategory_AirPlayReceiverCore != -1)
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

uint64_t _HandlePerformPWDKeyExchangeCommand(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v17 = 0;
  cf = 0;
  if (APSSettingsIsFeatureEnabled())
  {
    if (!*(a1 + 656))
    {
      CFDataGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      v6 = gLogCategory_AirPlayReceiverCore;
      if (gLogCategory_AirPlayReceiverCore <= 50)
      {
        if (gLogCategory_AirPlayReceiverCore != -1)
        {
LABEL_5:
          if (v6 == -1)
          {
            _LogCategory_Initialize();
          }

          LogPrintF();
          goto LABEL_11;
        }

        if (_LogCategory_Initialize())
        {
          v6 = gLogCategory_AirPlayReceiverCore;
          goto LABEL_5;
        }
      }

LABEL_11:
      if (!*(a1 + 648))
      {
        *(a1 + 640) = APSDisplayUtilsGetAggregatedDisplayProtectionBits();
        v17 = FigPWDKeyExchangeReceiverCreate();
        if (v17)
        {
          goto LABEL_28;
        }

        v7 = gLogCategory_AirPlayReceiverCore;
        if (gLogCategory_AirPlayReceiverCore <= 50)
        {
          if (gLogCategory_AirPlayReceiverCore == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_21;
            }

            v7 = gLogCategory_AirPlayReceiverCore;
          }

          if (v7 == -1)
          {
            _LogCategory_Initialize();
          }

          LogPrintF();
        }
      }

LABEL_21:
      v8 = *(a1 + 648);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v9)
      {
        v17 = v9(v8, TypedValue, &cf, a1 + 656);
        if (!v17)
        {
          v10 = gLogCategory_AirPlayReceiverCore;
          if (gLogCategory_AirPlayReceiverCore <= 50)
          {
            if (gLogCategory_AirPlayReceiverCore != -1)
            {
LABEL_25:
              if (v10 == -1)
              {
                _LogCategory_Initialize();
              }

              LogPrintF();
              goto LABEL_33;
            }

            if (_LogCategory_Initialize())
            {
              v10 = gLogCategory_AirPlayReceiverCore;
              goto LABEL_25;
            }
          }

LABEL_33:
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          FigCFDictionarySetValue();
          v12 = MEMORY[0x277CBED28];
          if (!*(a1 + 656))
          {
            v12 = MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(Mutable, @"complete", *v12);
          if (!a3)
          {
LABEL_38:
            if (!v17)
            {
              goto LABEL_41;
            }

            goto LABEL_39;
          }

          *a3 = Mutable;
LABEL_37:
          Mutable = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v17 = -12782;
      }

LABEL_28:
      APSLogErrorAt();
      goto LABEL_37;
    }

    APSLogErrorAt();
    Mutable = 0;
    v15 = -6709;
  }

  else
  {
    APSLogErrorAt();
    Mutable = 0;
    v15 = -6735;
  }

  v17 = v15;
LABEL_39:
  v13 = *(a1 + 648);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 648) = 0;
  }

LABEL_41:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v17;
}

uint64_t AirPlayReceiverSessionSendMediaRemoteCommand(void *a1, uint64_t a2, int a3, const void *a4)
{
  v15 = 0;
  v16 = 0;
  if (a2 < 0 && !a3)
  {
    APSLogErrorAt();
    v12 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v9 = Mutable;
      CFDictionarySetValue(Mutable, @"type", @"sendMediaRemoteCommand");
      if (a2 < 0 && !a3)
      {
        if (a4)
        {
          CFDictionarySetValue(v9, @"params", a4);
        }

        CFRetain(a1);
        CFRetain(v9);
        v10 = a1[2];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __AirPlayReceiverSessionSendMediaRemoteCommand_block_invoke;
        block[3] = &__block_descriptor_tmp_274;
        v14 = a3;
        block[4] = a1;
        block[5] = a2;
        block[6] = v9;
        dispatch_async(v10, block);
        v12 = 0;
      }

      else
      {
        ASPrintF();
        APSLogErrorAt();
        v12 = 4294960568;
      }

      CFRelease(v9);
      if (v16)
      {
        free(v16);
        v16 = 0;
      }
    }

    else
    {
      APSLogErrorAt();
      v12 = 4294960568;
    }
  }

  if (v15)
  {
    free(v15);
  }

  return v12;
}

void __AirPlayReceiverSessionSendMediaRemoteCommand_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 1885435251 || v2 == 1937010544 || v2 == 1886154867)
  {
    v7 = 0;
    if (CFObjectGetPropertyInt64Sync())
    {
      v5 = 0uLL;
      v6 = 0;
      AirPlayReceiverSessionSetRateAndAnchorTime(*(a1 + 32), 0, MEMORY[0x277CEA038], MEMORY[0x277CEA038], &v5);
    }
  }

  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  AirPlayReceiverSessionSendCommandForObject(*(a1 + 32), 0, *(a1 + 48), 0, 0);
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 48));
}

uint64_t AirPlayReceiverSessionSetRateAndAnchorTime(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, __int128 *a5)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  v5 = *(a1 + 576);
  if (!v5)
  {
    APSLogErrorAt();
    return 4294960578;
  }

  v6 = *(v5 + 112);
  if (!v6)
  {
    v8 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    return v8;
  }

  v7 = *(v5 + 40);
  v13[0] = *a3;
  *(v13 + 12) = *(a3 + 12);
  v12[0] = *a4;
  *(v12 + 12) = *(a4 + 12);
  v10 = *a5;
  v11 = *(a5 + 2);
  v8 = v6(v7, a2, v13, v12, &v10);
  if (v8)
  {
    goto LABEL_7;
  }

  return v8;
}

void *AirPlayReceiverSessionCopyProperty(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, _DWORD *a5)
{
  v52 = 0;
  theArray = 0;
  v51 = 0;
  if (*(a1 + 441))
  {
    v19 = 0;
    v10 = 0;
    v14 = 0;
    v13 = 0;
    v47 = -6709;
LABEL_112:
    v52 = v47;
    goto LABEL_65;
  }

  if (!CFEqual(cf1, @"audioBufferInfo"))
  {
    if (CFEqual(cf1, @"metrics"))
    {
      Count = CFDictionaryGetCount(*(a1 + 568));
      v53 = 0;
      v54 = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt();
        v19 = 0;
        v27 = 0;
        goto LABEL_119;
      }

      CFDictionarySetInt64();
      CFDictionarySetInt64();
      mach_absolute_time();
      UpTicksToSeconds();
      CFDictionarySetInt64();
      v22 = *(a1 + 576);
      if (v22)
      {
        v23 = *(v22 + 160);
        if (!v23)
        {
          v36 = -12782;
          goto LABEL_49;
        }

        v24 = v23(*(v22 + 40), Mutable);
        if (v24)
        {
          v36 = v24;
          goto LABEL_49;
        }
      }

      v25 = _cfDictionaryCopyKeysAndValues(*(a1 + 568), &v54, &v53);
      if (!v25)
      {
        v26 = *MEMORY[0x277CBECE8];
        v27 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v27)
        {
          if (Count >= 1)
          {
            v28 = 0;
            v29 = MEMORY[0x277CBF138];
            v30 = MEMORY[0x277CBF150];
            while (1)
            {
              v31 = CFDictionaryCreateMutable(v26, 0, v29, v30);
              if (!v31)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(v53, v28);
              if (!ValueAtIndex)
              {
                v36 = -72152;
                APSLogErrorAt();
                goto LABEL_47;
              }

              v33 = ValueAtIndex[20];
              if (!v33)
              {
                v36 = -12782;
LABEL_47:
                APSLogErrorAt();
                v19 = 0;
                goto LABEL_50;
              }

              v34 = v33(ValueAtIndex[5], v31);
              if (v34)
              {
                v36 = v34;
                goto LABEL_47;
              }

              v35 = CFArrayGetValueAtIndex(v54, v28);
              CFDictionarySetValue(v27, v35, v31);
              CFRelease(v31);
              if (Count == ++v28)
              {
                goto LABEL_36;
              }
            }

            APSLogErrorAt();
            v19 = 0;
            goto LABEL_102;
          }

LABEL_36:
          CFDictionarySetValue(Mutable, @"smet", v27);
          v36 = 0;
          v31 = 0;
          v19 = Mutable;
          Mutable = 0;
LABEL_50:
          if (v54)
          {
            CFRelease(v54);
          }

          if (v53)
          {
            CFRelease(v53);
          }

          if (v31)
          {
            CFRelease(v31);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v10 = 0;
          v14 = 0;
          v13 = 0;
          v52 = v36;
          goto LABEL_65;
        }

        APSLogErrorAt();
        v19 = 0;
LABEL_119:
        v31 = 0;
LABEL_102:
        v36 = -6728;
        goto LABEL_50;
      }

      v36 = v25;
LABEL_49:
      APSLogErrorAt();
      v19 = 0;
      v27 = 0;
      v31 = 0;
      goto LABEL_50;
    }

    if (CFEqual(cf1, @"hasActiveMediaAudioSession"))
    {
      if (*(a1 + 458) && *(a1 + 576))
      {
        v38 = MEMORY[0x277CBED28];
      }

      else
      {
        v38 = MEMORY[0x277CBED10];
      }

LABEL_62:
      v39 = *v38;
LABEL_63:
      v19 = CFRetain(v39);
LABEL_64:
      v10 = 0;
      v14 = 0;
      v13 = 0;
      v52 = 0;
      goto LABEL_65;
    }

    if (CFEqual(cf1, @"mediaAudioSession"))
    {
      if (*(a1 + 458))
      {
        v39 = *(a1 + 576);
        if (v39)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_81;
    }

    if (CFEqual(cf1, @"isRemoteControlOnly"))
    {
      v38 = MEMORY[0x277CBED28];
      if (!*(a1 + 683))
      {
        v38 = MEMORY[0x277CBED10];
      }

      goto LABEL_62;
    }

    if (CFEqual(cf1, @"isPlayingBufferedAudio"))
    {
      if (*(a1 + 576) && CFObjectGetPropertyInt64Sync() == 103)
      {
        v43 = APReceiverAudioSessionCopyProperty(*(a1 + 576), v41, @"IsPlayingBufferedAudio", v42, &v52);
      }

      else
      {
        v43 = CFRetain(*MEMORY[0x277CBED10]);
      }

      goto LABEL_90;
    }

    if (CFEqual(cf1, @"platformAudioLatency"))
    {
      v46 = *(a1 + 576);
      if (!v46)
      {
        APSLogErrorAt();
        v19 = 0;
        v10 = 0;
        v14 = 0;
        v13 = 0;
        v47 = -6718;
        goto LABEL_112;
      }

      v19 = APReceiverAudioSessionCopyProperty(v46, v44, @"PlatformAudioLatency", v45, &v52);
      if (v52)
      {
        APSLogErrorAt();
      }

      goto LABEL_95;
    }

    if (CFEqual(cf1, @"MRInfo"))
    {
      v39 = *(a1 + 760);
      if (v39)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (!CFEqual(cf1, @"networkClock"))
      {
        if (*(a1 + 683))
        {
          APSLogErrorAt();
          v52 = 0;
          if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v19 = 0;
          goto LABEL_95;
        }

        v43 = AirPlayReceiverSessionPlatformCopyProperty(a1, v48, cf1, v49, &v52);
LABEL_90:
        v19 = v43;
LABEL_95:
        v10 = 0;
LABEL_96:
        v14 = 0;
        goto LABEL_21;
      }

      v39 = *(a1 + 448);
      if (v39)
      {
        goto LABEL_63;
      }
    }

LABEL_81:
    v19 = 0;
    goto LABEL_64;
  }

  v8 = CFDictionaryGetCount(*(a1 + 568));
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v10)
  {
    APSLogErrorAt();
    v19 = 0;
    v14 = 0;
LABEL_111:
    v13 = 0;
    v47 = -6728;
    goto LABEL_112;
  }

  v11 = *(a1 + 576);
  if (v11)
  {
    LODWORD(v54) = 0;
    v12 = *(v11 + 176);
    if (v12)
    {
      v13 = v12(*(v11 + 40), &v54);
      v52 = v54;
      if (!v54)
      {
        v52 = CFDictionaryMergeDictionary();
        if (!v52)
        {
          if (v13)
          {
            CFRelease(v13);
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
      v13 = 0;
      v52 = -12782;
    }

    APSLogErrorAt();
    v19 = 0;
    v14 = 0;
    goto LABEL_65;
  }

LABEL_10:
  v52 = _cfDictionaryCopyKeysAndValues(*(a1 + 568), &v51, &theArray);
  if (v52)
  {
    APSLogErrorAt();
    v19 = 0;
    goto LABEL_96;
  }

  v14 = CFDictionaryCreateMutable(v9, v8, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v14)
  {
    APSLogErrorAt();
    v19 = 0;
    goto LABEL_111;
  }

  if (v8 < 1)
  {
LABEL_20:
    CFDictionarySetValue(v10, @"streams", v14);
    v19 = CFRetain(v10);
LABEL_21:
    v13 = 0;
    goto LABEL_65;
  }

  v15 = 0;
  while (1)
  {
    v16 = CFArrayGetValueAtIndex(theArray, v15);
    LODWORD(v54) = 0;
    if (!v16)
    {
      break;
    }

    v17 = v16[22];
    if (!v17)
    {
      v37 = -12782;
      goto LABEL_38;
    }

    v13 = v17(v16[5], &v54);
    v52 = v54;
    if (v54)
    {
      goto LABEL_39;
    }

    v18 = CFArrayGetValueAtIndex(v51, v15);
    CFDictionarySetValue(v14, v18, v13);
    if (v13)
    {
      CFRelease(v13);
    }

    if (v8 == ++v15)
    {
      goto LABEL_20;
    }
  }

  v37 = -72152;
  APSLogErrorAt();
LABEL_38:
  v13 = 0;
  v52 = v37;
LABEL_39:
  APSLogErrorAt();
  v19 = 0;
LABEL_65:
  if (v51)
  {
    CFRelease(v51);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (a5)
  {
    *a5 = v52;
  }

  return v19;
}

uint64_t AirPlayReceiverSessionSetProperty(uint64_t a1, int a2, CFTypeRef cf1, __CFString *a4, const void *a5)
{
  v5 = a1;
  v32 = 0;
  if (!a1)
  {
    goto LABEL_65;
  }

  if (*(a1 + 683))
  {
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 0;
  }

  if (CFEqual(cf1, @"metaData"))
  {
    if (a5)
    {
      v9 = CFGetTypeID(a5);
      if (v9 == CFDictionaryGetTypeID())
      {
        v5 = AirPlayReceiverSessionPlatformSetProperty(v5, v10, @"metaData", 0, a5);
        if (v5)
        {
          goto LABEL_65;
        }

        return v5;
      }
    }

    goto LABEL_8;
  }

  if (CFEqual(cf1, @"mrNowPlayingInfo"))
  {
    if (a5)
    {
      v12 = CFGetTypeID(a5);
      if (v12 == CFDictionaryGetTypeID())
      {
        v14 = *(v5 + 576);
        if (v14)
        {
          APReceiverAudioSessionSetProperty(v14, @"RTCMetadata", a5);
        }

        v5 = AirPlayReceiverSessionPlatformSetProperty(v5, v13, @"mrNowPlayingInfo", a4, a5);
        if (!v5)
        {
          return v5;
        }

        goto LABEL_65;
      }
    }

    goto LABEL_8;
  }

  if (CFEqual(cf1, @"MRInfo"))
  {
    v11 = *(v5 + 760);
    if (a5)
    {
      CFRetain(a5);
    }

    *(v5 + 760) = a5;
    if (v11)
    {
      CFRelease(v11);
    }

    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    notify_post("com.apple.airplay.mrInfoDidChange");
    return 0;
  }

  if (CFEqual(cf1, @"progress"))
  {
    v30 = 0;
    v31 = 0;
    if (a5 && (v17 = CFGetTypeID(a5), v17 == CFDictionaryGetTypeID()))
    {
      if (*(v5 + 576))
      {
        Int64Ranged = CFDictionaryGetInt64Ranged();
        v19 = CFDictionaryGetInt64Ranged();
        v20 = CFDictionaryGetInt64Ranged();
        v21 = *(v5 + 576);
        if (v21 && !*(v5 + 440))
        {
          v22 = *(v21 + 120);
          if (!v22)
          {
            v32 = -12782;
LABEL_59:
            APSLogErrorAt();
            return v32;
          }

          v32 = v22(*(v21 + 40), Int64Ranged, v19, v20, &v31, &v30);
          if (v32)
          {
            goto LABEL_59;
          }

          v32 = CFObjectSetPropertyF();
          if (v32)
          {
            goto LABEL_59;
          }
        }

        return 0;
      }

      APSLogErrorAt();
      return -6718;
    }

    else
    {
      APSLogErrorAt();
      return -6756;
    }
  }

  if (CFEqual(cf1, @"timelineOffset"))
  {
    if (a5)
    {
      v23 = CFGetTypeID(a5);
      if (v23 == CFNumberGetTypeID())
      {
        v24 = *(v5 + 576);
        if (!v24)
        {
          APSLogErrorAt();
          return 4294960578;
        }

        v5 = APReceiverAudioSessionSetProperty(v24, @"timelineOffset", a5);
        if (v5)
        {
          goto LABEL_65;
        }

        return v5;
      }
    }

    goto LABEL_8;
  }

  if (CFEqual(cf1, @"mrSupportedCommandsFromSender"))
  {
    if (a5)
    {
      v26 = CFGetTypeID(a5);
      if (v26 == CFArrayGetTypeID())
      {
        v5 = AirPlayReceiverSessionPlatformSetProperty(v5, v27, @"mrSupportedCommandsFromSender", 0, a5);
        if (v5)
        {
          goto LABEL_65;
        }

        return v5;
      }
    }

    goto LABEL_8;
  }

  if (CFEqual(cf1, @"mrPlaybackState"))
  {
    if (a5)
    {
      v28 = CFGetTypeID(a5);
      if (v28 == CFNumberGetTypeID())
      {
        v5 = AirPlayReceiverSessionPlatformSetProperty(v5, v29, @"mrPlaybackState", 0, a5);
        if (v5)
        {
LABEL_65:
          APSLogErrorAt();
        }

        return v5;
      }
    }

LABEL_8:
    APSLogErrorAt();
    return 4294960540;
  }

  return AirPlayReceiverSessionPlatformSetProperty(v5, v25, cf1, a4, a5);
}

uint64_t AirPlayReceiverSessionSetSecurityInfo(uint64_t a1, __CFDictionary *a2, CFTypeRef cf, void *a4, uint64_t a5, _OWORD *a6, _OWORD *a7)
{
  v10 = cf;
  v25 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 488);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 488) = v10;
  if (v13)
  {
    CFRelease(v13);
    v10 = *(a1 + 488);
  }

  if (v10)
  {
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v14)
    {
      if (v14(v10))
      {
        return 0;
      }
    }
  }

  if (!a6 || !a7)
  {
    Int64 = CFDictionaryGetInt64();
    if (Int64 != 1)
    {
      CFDictionaryGetData();
      if (Int64 == 32 || Int64 == 8)
      {
        if (a4 && *a4)
        {
          OowSGu();
          v22 = v17;
          if (!v17 || *a4 && (IPaI1oem5iL(), *a4 = 0, !v22))
          {
            v22 = -6743;
            jEHf8Xzsv8K(0);
          }

          APSLogErrorAt();
        }

        else
        {
          APSLogErrorAt();
          v22 = -6754;
        }

        if (!v22)
        {
          v18 = _SetSecurityInfoAES(a1, &v24, &v23);
          for (i = 0; i != 16; ++i)
          {
            *(&v24 + i) = 0;
          }

          for (j = 0; j != 16; ++j)
          {
            *(&v23 + j) = 0;
          }

          if (v18)
          {
            goto LABEL_37;
          }

          goto LABEL_32;
        }
      }

      else if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      APSLogErrorAt();
      return 4294960542;
    }

LABEL_32:
    v21 = 0;
    goto LABEL_33;
  }

  v21 = _SetSecurityInfoAES(a1, a6, a7);
  if (!v21)
  {
LABEL_33:
    CFDictionaryRemoveValue(a2, @"ekey");
    CFDictionaryRemoveValue(a2, @"eiv");
    return v21;
  }

LABEL_37:
  APSLogErrorAt();
  return 4294960534;
}

uint64_t _SetSecurityInfoAES(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v6 = a1 + 360;
  AES_CBCFrame_Final();
  *(a1 + 384) = 0;
  v7 = AES_CBCFrame_Init();
  if (v7)
  {
    APSLogErrorAt();
  }

  else
  {
    *(a1 + 384) = v6;
    *(a1 + 392) = *a2;
    *(a1 + 408) = *a3;
  }

  return v7;
}

uint64_t AirPlayReceiverSessionSendCommand_b(uint64_t a1, const void *a2, void *aBlock)
{
  if (!aBlock)
  {
    v7 = AirPlayReceiverSessionSendCommandForObject(a1, 0, a2, 0, 0);
    if (!v7)
    {
      return v7;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(aBlock);
  if (!v5)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v6 = v5;
  v7 = AirPlayReceiverSessionSendCommandForObject(a1, 0, a2, _AirPlayReceiverSessionSendCommandCompletion_b, v5);
  if (v7)
  {
    _Block_release(v6);
LABEL_5:
    APSLogErrorAt();
  }

  return v7;
}

void _AirPlayReceiverSessionSendCommandCompletion_b(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  a3[2](a3, a1, a2);

  _Block_release(a3);
}

uint64_t AirPlayReceiverSessionSetup(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  v270 = *MEMORY[0x277D85DE8];
  v217 = 0;
  v5 = *(a1 + 456);
  theArray = 0;
  v6 = &unk_27E37E000;
  v7 = gLogCategory_AirPlayReceiverCore;
  if (gLogCategory_AirPlayReceiverCore <= 50)
  {
    if (gLogCategory_AirPlayReceiverCore == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v7 = gLogCategory_AirPlayReceiverCore;
    }

    if (v7 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_9:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt();
    v217 = -6728;
    goto LABEL_685;
  }

  v210 = a2;
  v215 = Mutable;
  if (!v5)
  {
    if (*(a1 + 456))
    {
      APSLogErrorAt();
      v25 = -6719;
LABEL_772:
      if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v217 = v25;
LABEL_708:
      APSLogErrorAt();
      goto LABEL_685;
    }

    if (CFEqual(*(a1 + 672), @"None"))
    {
      goto LABEL_45;
    }

    *v234 = 0;
    cf[0] = 0;
    memset(bytes, 0, 28);
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v11 = *(a1 + 424);
    v12 = *MEMORY[0x277CBECE8];
    v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 152), 0x8000100u);
    if (!v13)
    {
      APSLogErrorAt();
      v25 = -6728;
      goto LABEL_771;
    }

    v14 = v13;
    if (CFEqual(@"PTP", TypedValue))
    {
      v259 = 0u;
      v260 = 0u;
      v257 = 0u;
      v258 = 0u;
      v255 = 0u;
      v256 = 0u;
      memset(cStr, 0, sizeof(cStr));
      if (*(a1 + 448))
      {
        APSLogErrorAt();
        v21 = 0;
        *v234 = -6709;
        goto LABEL_42;
      }

      *v234 = APSNetworkClockPTPCreate();
      if (!*v234)
      {
        mach_absolute_time();
        v15 = *(a1 + 448);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v16)
        {
          *v234 = v16(v15, a1);
          if (!*v234)
          {
            if (*(a1 + 681))
            {
              APSIsMemberOfHTGroup();
            }

            *v234 = APSNetworkClockDetermineAndSetOrUpdateLocalPeerInfo();
            if (*v234)
            {
              APSLogErrorAt();
              v21 = 0;
            }

            else
            {
              CFArrayGetTypeID();
              v19 = CFDictionaryGetTypedValue();
              CFDictionaryGetTypeID();
              v20 = CFDictionaryGetTypedValue();
              *v234 = SockAddrToString();
              if (!*v234)
              {
                v21 = CFStringCreateWithCString(v12, cStr, 0x8000100u);
                v9 = v215;
                if (v20)
                {
                  *v234 = APSNetworkClockAddOrUpdatePeerFromSerializablePeerDictionary();
                  if (*v234)
                  {
                    goto LABEL_793;
                  }
                }

                else
                {
                  *v234 = APSNetworkClockAddOrUpdatePeerWithAddressAndInterfaceNameStrings();
                  if (*v234)
                  {
                    goto LABEL_793;
                  }
                }

                if (!v19 || (*v234 = APSNetworkClockSetPeersFromSetPeersMessagePayload()) == 0)
                {
                  FigCFDictionarySetValue();
                  v50 = *(a1 + 32);
                  mach_absolute_time();
                  UpTicksToMilliseconds();
                  Int64 = CFNumberCreateInt64();
                  v52 = *(*(CMBaseObjectGetVTable() + 16) + 72);
                  if (v52)
                  {
                    a2 = v210;
                    v52(v50, @"networkClockStartDurationMs", Int64);
                    goto LABEL_42;
                  }

                  goto LABEL_794;
                }

LABEL_793:
                APSLogErrorAt();
LABEL_794:
                a2 = v210;
LABEL_42:
                CFRelease(v14);
                if (v21)
                {
                  CFRelease(v21);
                }

                v25 = *v234;
                if (!*v234)
                {
LABEL_45:
                  if (!*(a1 + 457))
                  {
LABEL_53:
                    *(a1 + 456) = 1;
                    v27 = APReceiverStatsCollectorCreate();
                    *(a1 + 176) = v27;
                    if (v27)
                    {
                      if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF();
                      }

                      v28 = *(a1 + 600);
                      if (v28)
                      {
                        v29 = *(a1 + 176);
                        v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                        if (v30)
                        {
                          v30(v28, @"StatsCollector", v29);
                        }
                      }
                    }

                    v217 = 0;
                    if (*(a1 + 600) && !*(a1 + 683))
                    {
                      CMNotificationCenterGetDefaultLocalCenter();
                      CMNotificationCenterAddListener();
                    }

                    if (CFDictionaryGetInt64())
                    {
                      *(a1 + 724) = 1;
                      CFDictionaryGetDouble();
                      *(a1 + 728) = v31;
                    }

                    goto LABEL_66;
                  }

                  v26 = ServerSocketOpen();
                  if (!v26)
                  {
                    if (*(a1 + 424))
                    {
                      SocketSetP2P();
                    }

                    CFDictionarySetInt64();
                    if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }

                    goto LABEL_53;
                  }

                  v25 = v26;
                }

LABEL_771:
                APSLogErrorAt();
                _ControlTearDown(a1);
                goto LABEL_772;
              }

              APSLogErrorAt();
              v21 = 0;
              a2 = v210;
            }

            v9 = v215;
            goto LABEL_42;
          }
        }

        else
        {
          *v234 = -12782;
        }
      }
    }

    else
    {
      v17 = CFDictionaryGetInt64();
      if (v17 >= 1)
      {
        v18 = v17;
      }

      else
      {
        v18 = 6002;
      }

      SockAddrCopy();
      SockAddrSetPort();
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v22 = *(a1 + 560);
      *cStr = *bytes;
      *&cStr[3] = *&bytes[3];
      *v234 = APNetworkClockNTPClientLegacyCreate(v12, v22, v11, cStr, v18, (a1 + 448));
      if (!*v234)
      {
        v23 = *(a1 + 448);
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v24)
        {
          *v234 = v24(v23, a1);
          if (!*v234)
          {
LABEL_41:
            v21 = 0;
            goto LABEL_42;
          }
        }

        else
        {
          *v234 = -12782;
        }
      }
    }

    APSLogErrorAt();
    goto LABEL_41;
  }

LABEL_66:
  if (!*(a1 + 768) && CFDictionaryGetValue(a2, @"mc2ucDetectionSSMGroupInfo"))
  {
    value = 0;
    p_value = &value;
    v232 = 0x2000000000;
    v233 = -1;
    v226 = 0;
    v227 = &v226;
    v228 = 0x2000000000;
    v229 = -1;
    v225 = 1;
    v269 = 0;
    v267 = 0u;
    v268 = 0u;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v261 = 0u;
    v262 = 0u;
    v259 = 0u;
    v260 = 0u;
    v257 = 0u;
    v258 = 0u;
    v255 = 0u;
    v256 = 0u;
    memset(cStr, 0, sizeof(cStr));
    v253 = 0;
    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    v239 = 0u;
    v240 = 0u;
    memset(bytes, 0, sizeof(bytes));
    v224 = 0;
    v223 = 4;
    if (!APSSettingsIsFeatureEnabled())
    {
LABEL_276:
      _Block_object_dispose(&v226, 8);
      _Block_object_dispose(&value, 8);
      if (*(a1 + 768) && gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_281;
    }

    v32 = v5;
    v33 = if_nametoindex((a1 + 152));
    if (gLogCategory_APMulticastProbeReceiver <= 10 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v213 = v33;
    SockAddr = APSCFDictionaryGetSockAddr();
    if (SockAddr)
    {
      if (gLogCategory_APMulticastProbeReceiver <= 50 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

LABEL_85:
      v35 = APSCFDictionaryGetSockAddr();
      if (v35)
      {
        if (gLogCategory_APMulticastProbeReceiver <= 50 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (!SockAddr)
        {
          v36 = gLogCategory_APMulticastProbeReceiver;
LABEL_99:
          if (v36 <= 50 && (v36 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (APMulticastProbeReceiverGetTypeID_initOnce != -1)
          {
            dispatch_once_f(&APMulticastProbeReceiverGetTypeID_initOnce, &APMulticastProbeReceiverGetTypeID_typeID, _APMulticastProbeReceiverClassRegister);
          }

          v6 = &unk_27E37E000;
          Instance = _CFRuntimeCreateInstance();
          v38 = Instance;
          if (Instance)
          {
            Instance[3] = 0u;
            Instance[4] = 0u;
            Instance[1] = 0u;
            Instance[2] = 0u;
            v39 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
            *(v38 + 2) = dispatch_queue_create("AirPlayMulticastProbeReceiverQueue", v39);
            *(v38 + 6) = a1;
            *(v38 + 7) = _AirPlayReceiverSessionUpdateMC2UCStatus;
            v40 = FigCFWeakReferenceHolderCreateWithReferencedObject();
            *(v38 + 8) = v40;
            if (v40)
            {
              CFDataGetTypeID();
              if (!CFDictionaryGetTypedValue())
              {
LABEL_113:
                if (SockAddr)
                {
                  goto LABEL_114;
                }

                v41 = socket(BYTE1(cStr[1]), 2, 17);
                *(p_value + 6) = v41;
                if ((v41 & 0x80000000) == 0)
                {
LABEL_119:
                  v224 = 0;
                  v42 = getsockopt(v41, 0, 9697, &v224, &v223);
                  v43 = gLogCategory_APMulticastProbeReceiver;
                  if (v42)
                  {
                    v5 = v32;
                    if (gLogCategory_APMulticastProbeReceiver <= 90)
                    {
LABEL_121:
                      v44 = v42;
                      a2 = v210;
                      v9 = v215;
                      if (v43 == -1 && !_LogCategory_Initialize())
                      {
                        goto LABEL_249;
                      }

LABEL_223:
                      strerror(v44);
                      goto LABEL_248;
                    }

LABEL_177:
                    a2 = v210;
                    v9 = v215;
                    goto LABEL_264;
                  }

                  if (gLogCategory_APMulticastProbeReceiver <= 40 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  v225 = 1;
                  v5 = v32;
                  if (setsockopt(*(p_value + 6), 0xFFFF, 4, &v225, 4u) < 0)
                  {
                    v44 = *__error();
                    if (v44)
                    {
                      if (gLogCategory_APMulticastProbeReceiver <= 90)
                      {
                        a2 = v210;
                        v9 = v215;
                        if (gLogCategory_APMulticastProbeReceiver == -1 && !_LogCategory_Initialize())
                        {
                          goto LABEL_249;
                        }

                        goto LABEL_223;
                      }

                      goto LABEL_177;
                    }
                  }

                  v225 = 1;
                  if (setsockopt(*(p_value + 6), 0xFFFF, 512, &v225, 4u) < 0)
                  {
                    v44 = *__error();
                    if (v44)
                    {
                      if (gLogCategory_APMulticastProbeReceiver <= 90)
                      {
                        a2 = v210;
                        v9 = v215;
                        if (gLogCategory_APMulticastProbeReceiver == -1 && !_LogCategory_Initialize())
                        {
                          goto LABEL_249;
                        }

                        goto LABEL_223;
                      }

                      goto LABEL_177;
                    }
                  }

                  v225 = 1;
                  if (setsockopt(*(p_value + 6), 0, 9697, &v225, 4u) < 0)
                  {
                    v44 = *__error();
                    if (v44)
                    {
                      if (gLogCategory_APMulticastProbeReceiver <= 90)
                      {
                        a2 = v210;
                        v9 = v215;
                        if (gLogCategory_APMulticastProbeReceiver == -1 && !_LogCategory_Initialize())
                        {
                          goto LABEL_249;
                        }

                        goto LABEL_223;
                      }

                      goto LABEL_177;
                    }
                  }

                  v42 = getsockopt(*(p_value + 6), 0, 9697, &v224, &v223);
                  v43 = gLogCategory_APMulticastProbeReceiver;
                  if (v42)
                  {
                    if (gLogCategory_APMulticastProbeReceiver <= 90)
                    {
                      goto LABEL_121;
                    }

                    goto LABEL_177;
                  }

                  if (gLogCategory_APMulticastProbeReceiver <= 40 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  v9 = v215;
                  if (bind(*(p_value + 6), &cStr[1], 0x10u))
                  {
                    if (*__error())
                    {
                      v44 = *__error();
                      if (!v44)
                      {
                        goto LABEL_217;
                      }
                    }

                    else
                    {
                      v44 = -6700;
                    }

                    if (gLogCategory_APMulticastProbeReceiver > 90)
                    {
                      goto LABEL_263;
                    }

                    a2 = v210;
                    if (gLogCategory_APMulticastProbeReceiver == -1 && !_LogCategory_Initialize())
                    {
                      goto LABEL_249;
                    }

                    goto LABEL_223;
                  }

LABEL_217:
                  cStr[0] = v213;
                  if (setsockopt(*(p_value + 6), 0, 82, cStr, 0x104u) < 0 && *__error())
                  {
                    if (gLogCategory_APMulticastProbeReceiver <= 90)
                    {
                      a2 = v210;
                      if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                      {
                        goto LABEL_248;
                      }

                      goto LABEL_249;
                    }

                    goto LABEL_263;
                  }

                  v53 = dispatch_source_create(MEMORY[0x277D85D28], *(p_value + 6), 0, *(v38 + 2));
                  *(v38 + 3) = v53;
                  if (!v53)
                  {
                    if (gLogCategory_APMulticastProbeReceiver <= 90)
                    {
                      a2 = v210;
                      if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                      {
                        LogPrintF();
                      }

                      goto LABEL_249;
                    }

                    goto LABEL_263;
                  }

                  cf[0] = MEMORY[0x277D85DD0];
                  cf[1] = 0x40000000;
                  cf[2] = __APMulticastProbeReceiverCreate_block_invoke;
                  cf[3] = &unk_278C5F490;
                  cf[4] = &value;
                  cf[5] = v38;
                  dispatch_source_set_event_handler(v53, cf);
                  v54 = *(v38 + 3);
                  *&handler = MEMORY[0x277D85DD0];
                  *(&handler + 1) = 0x40000000;
                  v220 = __APMulticastProbeReceiverCreate_block_invoke_2;
                  v221 = &unk_278C5F4B8;
                  v222 = &value;
                  dispatch_source_set_cancel_handler(v54, &handler);
                  dispatch_resume(*(v38 + 3));
LABEL_114:
                  v9 = v215;
                  v5 = v32;
                  if (v35)
                  {
                    goto LABEL_115;
                  }

                  v45 = socket(BYTE1(bytes[1]), 2, 17);
                  *(v227 + 6) = v45;
                  if ((v45 & 0x80000000) == 0)
                  {
LABEL_124:
                    v224 = 0;
                    v46 = getsockopt(v45, 41, 9697, &v224, &v223);
                    v47 = gLogCategory_APMulticastProbeReceiver;
                    if (v46)
                    {
                      goto LABEL_125;
                    }

                    if (gLogCategory_APMulticastProbeReceiver <= 40 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }

                    v225 = 1;
                    if (setsockopt(*(v227 + 6), 0xFFFF, 4, &v225, 4u) < 0)
                    {
                      v48 = *__error();
                      if (v48)
                      {
                        if (gLogCategory_APMulticastProbeReceiver <= 90)
                        {
                          a2 = v210;
                          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                          {
                            goto LABEL_247;
                          }

                          goto LABEL_249;
                        }

                        goto LABEL_263;
                      }
                    }

                    v225 = 1;
                    if (setsockopt(*(v227 + 6), 0xFFFF, 512, &v225, 4u) < 0)
                    {
                      v48 = *__error();
                      if (v48)
                      {
                        if (gLogCategory_APMulticastProbeReceiver <= 90)
                        {
                          a2 = v210;
                          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                          {
                            goto LABEL_247;
                          }

                          goto LABEL_249;
                        }

                        goto LABEL_263;
                      }
                    }

                    v225 = 1;
                    if (setsockopt(*(v227 + 6), 41, 9697, &v225, 4u) < 0)
                    {
                      v48 = *__error();
                      if (v48)
                      {
                        if (gLogCategory_APMulticastProbeReceiver <= 90)
                        {
                          a2 = v210;
                          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                          {
                            goto LABEL_247;
                          }

                          goto LABEL_249;
                        }

                        goto LABEL_263;
                      }
                    }

                    v224 = 0;
                    v46 = getsockopt(*(v227 + 6), 41, 9697, &v224, &v223);
                    v47 = gLogCategory_APMulticastProbeReceiver;
                    if (v46)
                    {
LABEL_125:
                      if (v47 <= 90)
                      {
                        v48 = v46;
                        a2 = v210;
                        if (v47 != -1 || _LogCategory_Initialize())
                        {
LABEL_247:
                          strerror(v48);
                          goto LABEL_248;
                        }

LABEL_249:
                        if (gLogCategory_APMulticastProbeReceiver <= 50 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF();
                        }

                        goto LABEL_264;
                      }

                      goto LABEL_263;
                    }

                    if (gLogCategory_APMulticastProbeReceiver <= 40 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }

                    a2 = v210;
                    if (!bind(*(v227 + 6), &bytes[1], 0x1Cu))
                    {
                      goto LABEL_241;
                    }

                    if (*__error())
                    {
                      v48 = *__error();
                      if (!v48)
                      {
LABEL_241:
                        bytes[0] = v213;
                        if (setsockopt(*(v227 + 6), 41, 82, bytes, 0x104u) < 0 && *__error())
                        {
                          if (gLogCategory_APMulticastProbeReceiver <= 90)
                          {
                            if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                            {
                              goto LABEL_248;
                            }

                            goto LABEL_249;
                          }

                          goto LABEL_264;
                        }

                        v55 = dispatch_source_create(MEMORY[0x277D85D28], *(v227 + 6), 0, *(v38 + 2));
                        *(v38 + 4) = v55;
                        if (v55)
                        {
                          *v234 = MEMORY[0x277D85DD0];
                          *&v234[8] = 0x40000000;
                          *&v234[16] = __APMulticastProbeReceiverCreate_block_invoke_3;
                          *&v234[24] = &unk_278C5F4E0;
                          v235 = &v226;
                          v236 = v38;
                          dispatch_source_set_event_handler(v55, v234);
                          v56 = *(v38 + 4);
                          v218[0] = MEMORY[0x277D85DD0];
                          v218[1] = 0x40000000;
                          v218[2] = __APMulticastProbeReceiverCreate_block_invoke_4;
                          v218[3] = &unk_278C5F508;
                          v218[4] = &v226;
                          dispatch_source_set_cancel_handler(v56, v218);
                          dispatch_resume(*(v38 + 4));
LABEL_115:
                          if (gLogCategory_APMulticastProbeReceiver <= 50 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                          {
                            LogPrintF();
                          }

                          *(a1 + 768) = v38;
                          a2 = v210;
                          goto LABEL_276;
                        }

                        if (gLogCategory_APMulticastProbeReceiver <= 90)
                        {
                          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                          {
                            LogPrintF();
                          }

                          a2 = v210;
                          goto LABEL_249;
                        }

LABEL_263:
                        a2 = v210;
                        goto LABEL_264;
                      }
                    }

                    else
                    {
                      v48 = -6700;
                    }

                    if (gLogCategory_APMulticastProbeReceiver <= 90)
                    {
                      if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                      {
                        goto LABEL_247;
                      }

                      goto LABEL_249;
                    }

LABEL_264:
                    v57 = *(p_value + 6);
                    if ((v57 & 0x80000000) == 0)
                    {
                      if (close(v57) && *__error())
                      {
                        __error();
                      }

                      *(p_value + 6) = -1;
                    }

                    v58 = *(v227 + 6);
                    if ((v58 & 0x80000000) == 0)
                    {
                      if (close(v58) && *__error())
                      {
                        __error();
                      }

                      *(v227 + 6) = -1;
                    }

                    if (v38)
                    {
                      CFRelease(v38);
                    }

                    goto LABEL_276;
                  }

                  if (*__error())
                  {
                    v48 = *__error();
                    if (!v48)
                    {
                      v45 = *(v227 + 6);
                      goto LABEL_124;
                    }
                  }

                  else
                  {
                    v48 = -6700;
                  }

                  if (gLogCategory_APMulticastProbeReceiver <= 90)
                  {
                    a2 = v210;
                    if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                    {
                      goto LABEL_247;
                    }

                    goto LABEL_249;
                  }

                  goto LABEL_263;
                }

                if (*__error())
                {
                  v49 = *__error();
                  if (!v49)
                  {
                    v41 = *(p_value + 6);
                    goto LABEL_119;
                  }
                }

                else
                {
                  v49 = -6700;
                }

                if (gLogCategory_APMulticastProbeReceiver <= 90)
                {
                  a2 = v210;
                  v9 = v215;
                  v5 = v32;
                  if (gLogCategory_APMulticastProbeReceiver == -1 && !_LogCategory_Initialize())
                  {
                    goto LABEL_249;
                  }

                  strerror(v49);
LABEL_248:
                  LogPrintF();
                  goto LABEL_249;
                }

                a2 = v210;
LABEL_147:
                v9 = v215;
                v5 = v32;
                goto LABEL_264;
              }

              if (!APSCryptorChaCha20Poly1305Create())
              {
                if (gLogCategory_APMulticastProbeReceiver <= 40 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                goto LABEL_113;
              }
            }
          }

          APSLogErrorAt();
          a2 = v210;
LABEL_764:
          v9 = v215;
          v5 = v32;
          goto LABEL_249;
        }

        APSLogErrorAt();
        if (gLogCategory_APMulticastProbeReceiver <= 90)
        {
          a2 = v210;
          v6 = &unk_27E37E000;
          v9 = v215;
          v5 = v32;
          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
          {
            LogPrintF();
          }

          v38 = 0;
          goto LABEL_249;
        }

LABEL_760:
        v38 = 0;
        a2 = v210;
        v6 = &unk_27E37E000;
        goto LABEL_147;
      }

      if (BYTE5(v245) == 30)
      {
        if (APSCFDictionaryGetSockAddr())
        {
          if (gLogCategory_APMulticastProbeReceiver > 90)
          {
            goto LABEL_760;
          }

          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
          {
            LogPrintF();
          }

          goto LABEL_762;
        }

        if (BYTE1(bytes[1]) == 30)
        {
          v36 = gLogCategory_APMulticastProbeReceiver;
          if (HIWORD(bytes[1]))
          {
            goto LABEL_99;
          }

          if (gLogCategory_APMulticastProbeReceiver > 90)
          {
            goto LABEL_760;
          }

          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
          {
            LogPrintF();
          }

          v38 = 0;
LABEL_763:
          a2 = v210;
          v6 = &unk_27E37E000;
          goto LABEL_764;
        }
      }

      APSLogErrorAt();
LABEL_762:
      v38 = 0;
      goto LABEL_763;
    }

    if (BYTE5(v261) == 2)
    {
      if (APSCFDictionaryGetSockAddr())
      {
        if (gLogCategory_APMulticastProbeReceiver > 90)
        {
          goto LABEL_754;
        }

        if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }

LABEL_756:
        v38 = 0;
        goto LABEL_764;
      }

      if (BYTE1(cStr[1]) == 2)
      {
        if (HIWORD(cStr[1]))
        {
          goto LABEL_85;
        }

        if (gLogCategory_APMulticastProbeReceiver <= 90)
        {
          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
          {
            LogPrintF();
          }

          v38 = 0;
          goto LABEL_764;
        }

LABEL_754:
        v38 = 0;
        goto LABEL_147;
      }
    }

    APSLogErrorAt();
    goto LABEL_756;
  }

LABEL_281:
  CFDictionaryGetCString();
  if (!v217)
  {
    __strlcpy_chk();
    v217 = -6727;
  }

  if (CFDictionaryContainsKey(a2, @"osBuildVersion"))
  {
    v59 = *(a1 + 320);
    v60 = CFDictionaryGetValue(a2, @"osBuildVersion");
    v61 = v60;
    if (v60)
    {
      CFRetain(v60);
    }

    *(a1 + 320) = v61;
    if (v59)
    {
      CFRelease(v59);
    }
  }

  if (CFDictionaryContainsKey(a2, @"model"))
  {
    v62 = *(a1 + 312);
    v63 = CFDictionaryGetValue(a2, @"model");
    v64 = v63;
    if (v63)
    {
      CFRetain(v63);
    }

    *(a1 + 312) = v64;
    if (v62)
    {
      CFRelease(v62);
    }
  }

  if (CFDictionaryContainsKey(a2, @"modelCode"))
  {
    v65 = *(a1 + 304);
    v66 = CFDictionaryGetValue(a2, @"modelCode");
    v67 = v66;
    if (v66)
    {
      CFRetain(v66);
    }

    *(a1 + 304) = v67;
    if (v65)
    {
      CFRelease(v65);
    }
  }

  if (CFDictionaryContainsKey(a2, @"name"))
  {
    v68 = *(a1 + 288);
    v69 = CFDictionaryGetValue(a2, @"name");
    v70 = v69;
    if (v69)
    {
      CFRetain(v69);
    }

    *(a1 + 288) = v70;
    if (v68)
    {
      CFRelease(v68);
    }
  }

  if (CFDictionaryContainsKey(a2, @"udid"))
  {
    v71 = *(a1 + 296);
    v72 = CFDictionaryGetValue(a2, @"udid");
    v73 = v72;
    if (v72)
    {
      CFRetain(v72);
    }

    *(a1 + 296) = v73;
    if (v71)
    {
      CFRelease(v71);
    }
  }

  if (!v5 && !*(a1 + 683))
  {
    *(a1 + 680) = CFDictionaryGetInt64() != 0;
    *(a1 + 496) = CFDictionaryGetInt64();
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(a1 + 680) && APSIsMemberOfHTGroup() && *(a1 + 496) != 2 && gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (CFDictionaryContainsKey(a2, @"senderDisplayLatencyMs"))
  {
    *(a1 + 720) = CFDictionaryGetInt64Ranged();
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  CFArrayGetTypeID();
  v74 = CFDictionaryGetTypedValue();
  if (!v74)
  {
    goto LABEL_684;
  }

  Count = CFArrayGetCount(v74);
  if (Count < 1)
  {
    goto LABEL_684;
  }

  v76 = Count;
  v209 = 0;
  v77 = 0;
  v212 = (a1 + 616);
  allocator = *MEMORY[0x277CBECE8];
  v207 = *MEMORY[0x277CBED10];
  v208 = *MEMORY[0x277CBED28];
  v214 = Count;
  do
  {
    CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    if (v217)
    {
      goto LABEL_730;
    }

    v79 = CFDictionaryGetInt64();
    v80 = v6[474];
    if (v80 <= 50 && (v80 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(a1 + 683) && v79 != 130)
    {
LABEL_712:
      APSLogErrorAt();
      v200 = -6735;
LABEL_720:
      v217 = v200;
      goto LABEL_731;
    }

    if (v79 > 109)
    {
      if (v79 != 110)
      {
        if (v79 != 120)
        {
          if (v79 != 130)
          {
            goto LABEL_363;
          }

          v81 = CFDictionaryGetValue(TypedValueAtIndex, @"clientTypeUUID");
          if (!v81)
          {
            APSLogErrorAt();
            v200 = -6705;
            goto LABEL_720;
          }

          if (!CFEqual(v81, @"A6B27562-B43A-4F2D-B75F-82391E250194"))
          {
            LODWORD(v226) = 0;
            value = 0;
            if (TypedValueAtIndex)
            {
              ++*(a1 + 688);
              v97 = CFNumberCreateInt64();
              if (v97)
              {
                v98 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v98)
                {
                  CFDictionarySetInt64();
                  CFDictionarySetValue(v98, @"streamID", v97);
                  v99 = CFDictionaryGetValue(TypedValueAtIndex, @"clientTypeUUID");
                  v100 = v6;
                  v101 = v99;
                  v102 = v100[474];
                  if (v102 <= 50 && (v102 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  if (v101)
                  {
                    if (CFEqual(v101, @"1910A70F-DBC0-4242-AF95-115DB30604E1") || CFEqual(v101, @"82C33ABC-DABD-41C7-9A83-A8F67D5491C3"))
                    {
                      v205 = v97;
                      v139 = CFDictionaryGetValue(TypedValueAtIndex, @"clientUUID");
                      CFDictionaryGetValue(TypedValueAtIndex, @"channelID");
                      if ((CFDictionaryGetInt64() & 0xFFFFFFFD) != 0)
                      {
                        LODWORD(v226) = -6735;
                        v6 = &unk_27E37E000;
                        if (gLogCategory_AirPlayReceiverCore > 90)
                        {
                          TypedValueAtIndex = 0;
                          v140 = 0;
                          v141 = 0;
                          goto LABEL_597;
                        }

                        if (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize())
                        {
                          LogPrintF();
                        }

                        TypedValueAtIndex = 0;
                        v141 = 0;
LABEL_485:
                        v140 = 0;
LABEL_596:
                        if (v226)
                        {
LABEL_597:
                          _RemoteControlSessionTearDown(a1, v97);
                        }

LABEL_598:
                        if (TypedValueAtIndex)
                        {
                          CFRelease(TypedValueAtIndex);
                        }

                        if (v97)
                        {
                          CFRelease(v97);
                        }

                        if (v98)
                        {
                          CFRelease(v98);
                        }

                        v76 = v214;
                        if (v141)
                        {
                          CFRelease(v141);
                        }

                        if (v140)
                        {
                          CFRelease(v140);
                        }

                        v217 = v226;
                        if (v226)
                        {
                          goto LABEL_730;
                        }

                        goto LABEL_609;
                      }

                      v203 = CFDictionaryGetInt64();
                      if (!v203)
                      {
                        v150 = _SendRemoteControlSessionOutgoingMessage;
                        v151 = 0;
                        v204 = 0;
                        goto LABEL_508;
                      }

                      memset(cStr, 0, sizeof(cStr));
                      memset(bytes, 0, sizeof(bytes));
                      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF();
                      }

                      v160 = CFDictionaryGetInt64();
                      if (v226 || (LODWORD(v226) = _GetDataStreamSecurityKeys(a1, v160, 32, bytes, cStr), v226))
                      {
                        APSLogErrorAt();
                        v141 = 0;
                      }

                      else
                      {
                        v161 = CFDataCreate(allocator, cStr, 32);
                        if (v161)
                        {
                          v151 = v161;
                          v204 = CFDataCreate(allocator, bytes, 32);
                          if (v204)
                          {
                            v150 = 0;
LABEL_508:
                            v202 = v151;
                            if (CFEqual(v101, @"1910A70F-DBC0-4242-AF95-115DB30604E1"))
                            {
                              *v234 = *(a1 + 224);
                              *&v234[12] = *(a1 + 236);
                              v218[0] = 0;
                              v255 = 0u;
                              v256 = 0u;
                              memset(cStr, 0, sizeof(cStr));
                              if (!v139)
                              {
                                APSLogErrorAt();
                                v182 = -6705;
                                goto LABEL_646;
                              }

                              if (APReceiverRemoteControlSessionGetClassID_sRegisterOnce != -1)
                              {
                                dispatch_once_f(&APReceiverRemoteControlSessionGetClassID_sRegisterOnce, &APReceiverRemoteControlSessionGetClassID_sClassID, rcs_getClassID);
                              }

                              v162 = CMDerivedObjectCreate();
                              if (v162)
                              {
                                v182 = v162;
                                APSLogErrorAt();
                                v139 = 0;
                                goto LABEL_646;
                              }

                              v201 = v98;
                              DerivedStorage = CMBaseObjectGetDerivedStorage();
                              DerivedStorage[2] = CFRetain(v205);
                              DerivedStorage[3] = CFRetain(v139);
                              v164 = v218[0];
                              ++APReceiverMediaRemoteXPCService_RegisterCommChannel_channelIDGenerator;
                              v165 = CFNumberCreateInt64();
                              FigSimpleMutexCheckIsNotLockedOnThisThread();
                              if (gAPReceiverMediaRemoteXPCServiceCommChannelEntryInitOnce != -1)
                              {
                                dispatch_once_f(&gAPReceiverMediaRemoteXPCServiceCommChannelEntryInitOnce, 0, _APReceiverMediaRemoteXPCServiceCommChannelEntryGetTypeID);
                              }

                              v166 = _CFRuntimeCreateInstance();
                              if (v166)
                              {
                                v167 = v166;
                                v166[2] = 0;
                                v166[3] = 0;
                                v166[4] = 0;
                                v166[2] = CFRetain(v139);
                                v167[3] = rcsMediaRemote_sendDataCallback;
                                if (v164)
                                {
                                  v167[4] = FigCFWeakReferenceHolderCreateWithReferencedObject();
                                }

                                FigSimpleMutexLock();
                                CFDictionarySetValue(gAPReceiverMediaRemoteService_1, v165, v167);
                                FigSimpleMutexUnlock();
                                if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
                                {
                                  LogPrintF();
                                }

                                DerivedStorage[4] = v165;
                                v98 = v201;
LABEL_537:
                                CFRelease(v167);
                              }

                              else
                              {
                                APSLogErrorAt();
                                APSLogErrorAt();
                                v167 = v165;
                                v98 = v201;
                                if (v165)
                                {
                                  goto LABEL_537;
                                }
                              }

                              v177 = FigSimpleMutexCreate();
                              DerivedStorage[15] = v177;
                              if (v177 && (SNPrintF(), v178 = dispatch_queue_create(cStr, 0), DerivedStorage[9] = v178, v141 = v202, v178) && (SNPrintF(), v179 = dispatch_queue_create(cStr, 0), (DerivedStorage[10] = v179) != 0) && (DerivedStorage[5] = a1, DerivedStorage[6] = v150, DerivedStorage[7] = _HandleRemoteControlSessionFailed, v180 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (DerivedStorage[8] = v180) != 0))
                              {
                                if (!v203)
                                {
                                  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote > 50)
                                  {
                                    v139 = 0;
                                  }

                                  else
                                  {
                                    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize())
                                    {
                                      LogPrintF();
                                    }

                                    v139 = 0;
LABEL_566:
                                    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
                                    {
                                      LogPrintF();
                                    }
                                  }

LABEL_570:
                                  v182 = 0;
                                  TypedValueAtIndex = v218[0];
                                  v218[0] = 0;
                                  if (!v139)
                                  {
                                    goto LABEL_572;
                                  }

                                  goto LABEL_571;
                                }

                                v139 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                if (v139)
                                {
                                  FigCFDictionarySetValue();
                                  FigCFDictionarySetValue();
                                  CFDictionarySetValue(v139, @"MDC::Label", @"RCS-MediaRemote");
                                  FigCFDictionarySetInt32();
                                  CFDictionarySetInt64();
                                  *&handler = v218[0];
                                  *(&handler + 1) = rcsMediaRemote_handleMediaDataControlRequest;
                                  v220 = rcsMediaRemote_handleMediaDataControlFailure;
                                  *bytes = *v234;
                                  *&bytes[3] = *&v234[12];
                                  v181 = APMediaDataControlServerCreate(bytes, v139, &handler, DerivedStorage + 11);
                                  if (!v181)
                                  {
                                    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50)
                                    {
                                      if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize())
                                      {
                                        LogPrintF();
                                      }

                                      if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50)
                                      {
                                        if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize())
                                        {
                                          LogPrintF();
                                        }

                                        goto LABEL_566;
                                      }
                                    }

                                    goto LABEL_570;
                                  }

                                  v182 = v181;
                                  APSLogErrorAt();
LABEL_646:
                                  v186 = v218[0];
                                  if (v218[0])
                                  {
                                    v187 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                                    if (v187)
                                    {
                                      v187(v186);
                                    }

                                    if (v218[0])
                                    {
                                      CFRelease(v218[0]);
                                    }
                                  }

                                  TypedValueAtIndex = 0;
                                  v141 = v202;
                                  if (!v139)
                                  {
LABEL_572:
                                    LODWORD(v226) = v182;
                                    if (v182)
                                    {
                                      APSLogErrorAt();
                                      v6 = &unk_27E37E000;
                                      v140 = v204;
                                      v97 = v205;
                                      goto LABEL_596;
                                    }

                                    v6 = &unk_27E37E000;
                                    v140 = v204;
                                    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                                    {
                                      LogPrintF();
                                    }

                                    v97 = v205;
                                    CFDictionarySetValue(*(a1 + 696), v205, TypedValueAtIndex);
                                    if (!v203)
                                    {
                                      goto LABEL_588;
                                    }

LABEL_585:
                                    v183 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                    if (v183)
                                    {
                                      LODWORD(v226) = v183(TypedValueAtIndex, @"RRCS::Property::ListenPort", allocator, &value);
                                      if (!v226)
                                      {
                                        CFDictionarySetValue(v98, @"dataPort", value);
LABEL_588:
                                        LODWORD(v226) = _AddResponseStream(v215, v98);
                                        if (!v226)
                                        {
                                          v184 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                          if (v184)
                                          {
                                            LODWORD(v226) = v184(TypedValueAtIndex);
                                            if (!v226)
                                            {
                                              goto LABEL_598;
                                            }
                                          }

                                          else
                                          {
                                            LODWORD(v226) = -12782;
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v226) = -12782;
                                    }

                                    APSLogErrorAt();
                                    goto LABEL_596;
                                  }

LABEL_571:
                                  CFRelease(v139);
                                  goto LABEL_572;
                                }

                                APSLogErrorAt();
                              }

                              else
                              {
                                APSLogErrorAt();
                                v139 = 0;
                              }

                              v182 = -6728;
                              goto LABEL_646;
                            }

                            v168 = *(a1 + 600);
                            *v234 = *(a1 + 224);
                            *&v234[12] = *(a1 + 236);
                            v218[0] = 0;
                            v255 = 0u;
                            v256 = 0u;
                            memset(cStr, 0, sizeof(cStr));
                            if (!v168 || !v203)
                            {
                              APSLogErrorAt();
                              v175 = 0;
                              v188 = -6705;
                              goto LABEL_661;
                            }

                            if (APReceiverRemoteControlSessionGetClassID_sRegisterOnce != -1)
                            {
                              dispatch_once_f(&APReceiverRemoteControlSessionGetClassID_sRegisterOnce, &APReceiverRemoteControlSessionGetClassID_sClassID, rcs_getClassID);
                            }

                            v169 = CMDerivedObjectCreate();
                            if (v169)
                            {
                              v188 = v169;
                              APSLogErrorAt();
                              v175 = 0;
                              goto LABEL_661;
                            }

                            v170 = CMBaseObjectGetDerivedStorage();
                            v170[2] = CFRetain(v205);
                            v170[10] = v168;
                            CFRetain(v168);
                            v171 = FigSimpleMutexCreate();
                            v170[14] = v171;
                            if (v171 && (SNPrintF(), v172 = dispatch_queue_create(cStr, 0), v170[7] = v172, v141 = v202, v172) && (SNPrintF(), v173 = dispatch_queue_create(cStr, 0), (v170[8] = v173) != 0) && (v174 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (v170[6] = v174) != 0))
                            {
                              v175 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                              if (v175)
                              {
                                FigCFDictionarySetValue();
                                FigCFDictionarySetValue();
                                CFDictionarySetValue(v175, @"MDC::Label", @"RCS-SenderUIEventsChannel");
                                FigCFDictionarySetInt32();
                                *&handler = v218[0];
                                *(&handler + 1) = rcsSenderUIEventsChannel_handleMediaDataControlRequest;
                                v220 = rcsSenderUIEventsChannel_handleMediaDataControlFailure;
                                *bytes = *v234;
                                *&bytes[3] = *&v234[12];
                                v176 = APMediaDataControlServerCreate(bytes, v175, &handler, v170 + 9);
                                if (!v176)
                                {
                                  v6 = &unk_27E37E000;
                                  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 50)
                                  {
                                    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize())
                                    {
                                      LogPrintF();
                                    }

                                    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 50 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
                                    {
                                      LogPrintF();
                                    }
                                  }

                                  TypedValueAtIndex = v218[0];
                                  v218[0] = 0;
                                  CFRelease(v175);
                                  LODWORD(v226) = 0;
                                  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                                  {
                                    LogPrintF();
                                  }

                                  v97 = v205;
                                  CFDictionarySetValue(*(a1 + 696), v205, TypedValueAtIndex);
                                  v140 = v204;
                                  goto LABEL_585;
                                }

                                v188 = v176;
                                APSLogErrorAt();
LABEL_661:
                                v97 = v205;
                                v189 = v218[0];
                                if (v218[0])
                                {
                                  v190 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                                  if (v190)
                                  {
                                    v190(v189);
                                  }

                                  if (v218[0])
                                  {
                                    CFRelease(v218[0]);
                                  }
                                }

                                if (v175)
                                {
                                  CFRelease(v175);
                                }

                                v141 = v202;
                                v140 = v204;
                                LODWORD(v226) = v188;
                                APSLogErrorAt();
                                TypedValueAtIndex = 0;
LABEL_554:
                                v6 = &unk_27E37E000;
                                goto LABEL_596;
                              }

                              APSLogErrorAt();
                            }

                            else
                            {
                              APSLogErrorAt();
                              v175 = 0;
                            }

                            v188 = -6728;
                            goto LABEL_661;
                          }

                          APSLogErrorAt();
                          LODWORD(v226) = -6728;
                          v6 = &unk_27E37E000;
                          v141 = v151;
LABEL_640:
                          TypedValueAtIndex = 0;
                          goto LABEL_485;
                        }

                        APSLogErrorAt();
                        v141 = 0;
                        LODWORD(v226) = -6728;
                      }

                      v6 = &unk_27E37E000;
                      goto LABEL_640;
                    }

                    LODWORD(v226) = -6735;
                    if (gLogCategory_AirPlayReceiverCore <= 90)
                    {
                      if (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize())
                      {
                        LogPrintF();
                      }

                      TypedValueAtIndex = 0;
                      v141 = 0;
                      v140 = 0;
                      goto LABEL_554;
                    }

                    TypedValueAtIndex = 0;
                    v140 = 0;
                    v141 = 0;
                  }

                  else
                  {
                    APSLogErrorAt();
                    TypedValueAtIndex = 0;
                    v140 = 0;
                    v141 = 0;
                    LODWORD(v226) = -6705;
                  }

                  v6 = &unk_27E37E000;
                  goto LABEL_597;
                }

                APSLogErrorAt();
                TypedValueAtIndex = 0;
                v140 = 0;
                v141 = 0;
              }

              else
              {
                APSLogErrorAt();
                TypedValueAtIndex = 0;
                v140 = 0;
                v141 = 0;
                v98 = 0;
              }

              v185 = -6728;
            }

            else
            {
              APSLogErrorAt();
              v97 = 0;
              v140 = 0;
              v141 = 0;
              v98 = 0;
              v185 = -6705;
            }

            LODWORD(v226) = v185;
            goto LABEL_597;
          }

          if (*(a1 + 683))
          {
            goto LABEL_712;
          }

          if (!TypedValueAtIndex)
          {
            APSLogErrorAt();
            v146 = -6705;
            goto LABEL_729;
          }

          ++*(a1 + 688);
          v82 = CFNumberCreateInt64();
          if (!v82)
          {
            APSLogErrorAt();
            v146 = -6728;
            goto LABEL_729;
          }

          v83 = v82;
          v84 = CFDictionaryGetValue(TypedValueAtIndex, @"clientUUID");
          if (!v84)
          {
            APSLogErrorAt();
            v146 = -6705;
            goto LABEL_728;
          }

          v85 = v84;
          v86 = v6[474];
          if (v86 <= 50)
          {
            if (v86 != -1 || _LogCategory_Initialize())
            {
              LogPrintF();
            }

            v138 = v6[474];
            if (v138 <= 50 && (v138 != -1 || _LogCategory_Initialize()))
            {
              CFGetInt64();
              LogPrintF();
            }
          }

          if (!*(a1 + 600))
          {
            APSLogErrorAt();
            v146 = -6735;
LABEL_726:
            APSLogErrorAt();
LABEL_728:
            CFRelease(v83);
LABEL_729:
            v217 = v146;
LABEL_730:
            APSLogErrorAt();
LABEL_731:
            a2 = v210;
            v9 = v215;
            goto LABEL_685;
          }

          v142 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetNumber();
          CFDictionarySetValue(v142, @"sessionID", v83);
          v143 = *(a1 + 448);
          if (v143)
          {
            CFDictionarySetValue(v142, @"networkClock", v143);
          }

          v144 = *(a1 + 600);
          v145 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v145)
          {
            v146 = v145(v144, _PlaybackV2EventCallback, _PlaybackV2TLSInfoRequestCallback, a1, v142);
            if (!v146)
            {
              if (!v142)
              {
LABEL_469:
                if (v146)
                {
                  goto LABEL_726;
                }

                v147 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (!v147)
                {
                  APSLogErrorAt();
                  v146 = -6728;
                  goto LABEL_728;
                }

                v148 = v147;
                CFDictionarySetInt64();
                CFDictionarySetValue(v148, @"streamID", v83);
                v149 = _AddResponseStream(v215, v148);
                if (v149)
                {
                  APSLogErrorAt();
                }

                else
                {
                  CFDictionarySetValue(*(a1 + 736), v83, v85);
                  CFSetSetValue(*(a1 + 744), v83);
                  if (CFSetGetCount(*(a1 + 744)) == 1)
                  {
                    _UpdateActiveSessionRegistration(a1);
                  }
                }

                CFRelease(v83);
                CFRelease(v148);
                v217 = v149;
                v76 = v214;
                if (v149)
                {
                  goto LABEL_730;
                }

                goto LABEL_609;
              }

LABEL_468:
              CFRelease(v142);
              goto LABEL_469;
            }
          }

          else
          {
            v146 = -12782;
          }

          APSLogErrorAt();
          if (!v142)
          {
            goto LABEL_469;
          }

          goto LABEL_468;
        }

        ++*(a1 + 688);
        v91 = CFNumberCreateInt64();
        if (v91)
        {
          v92 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v92)
          {
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            v93 = _AddResponseStream(v215, v92);
            if (v93)
            {
              v94 = v93;
              APSLogErrorAt();
            }

            else
            {
              CFSetSetValue(*(a1 + 744), v91);
              if (CFSetGetCount(*(a1 + 744)) == 1)
              {
                _UpdateActiveSessionRegistration(a1);
              }

              v94 = 0;
            }

LABEL_358:
            v95 = v6[474];
            if (v95 <= 50 && (v95 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            if (v92)
            {
              CFRelease(v92);
            }

            v76 = v214;
            if (v91)
            {
              CFRelease(v91);
            }

            v217 = v94;
            if (v94)
            {
              goto LABEL_730;
            }

            goto LABEL_609;
          }

          APSLogErrorAt();
        }

        else
        {
          APSLogErrorAt();
          v92 = 0;
        }

        v94 = -6728;
        goto LABEL_358;
      }

      v218[0] = 0;
      value = 0;
      if (*v212)
      {
        APSLogErrorAt();
        v104 = -6719;
LABEL_440:
        for (i = 0; i != 32; ++i)
        {
          *(cStr + i) = 0;
        }

        if (v104)
        {
          v199 = v6[474];
          a2 = v210;
          v9 = v215;
          if (v199 <= 60 && (v199 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v217 = v104;
          goto LABEL_708;
        }

        v217 = 0;
        goto LABEL_609;
      }

      v87 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v87)
      {
        APSLogErrorAt();
        v104 = -6728;
        goto LABEL_434;
      }

      v88 = v87;
      v89 = *(a1 + 592);
      if (v89)
      {
        *&handler = 0;
        v90 = CFGetTypeID(v89);
        if (v90 == FigValeriaGetTypeID())
        {
          if (gLogCategory_APReceiverScreenSinkSBufConsumer <= 30 && (gLogCategory_APReceiverScreenSinkSBufConsumer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (APReceiverScreenSinkGetClassID_once != -1)
          {
            dispatch_once(&APReceiverScreenSinkGetClassID_once, &__block_literal_global_5885);
          }

          v105 = CMDerivedObjectCreate();
          if (!v105)
          {
            v106 = CMBaseObjectGetDerivedStorage();
            *(v106 + 8) = CFRetain(v89);
            if (gLogCategory_APReceiverScreenSinkSBufConsumer <= 30 && (gLogCategory_APReceiverScreenSinkSBufConsumer != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v107 = handler;
            v218[0] = handler;
            v108 = *(a1 + 648);
            if (v108)
            {
              if (*(a1 + 656))
              {
                v109 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v109)
                {
                  v109(v107, @"KeyExchangeReceiver", v108);
                }
              }
            }

            goto LABEL_395;
          }

          v104 = v105;
          APSLogErrorAt();
          if (handler)
          {
            CFRelease(handler);
          }
        }

        else
        {
          APSLogErrorAt();
          v104 = -72131;
        }
      }

      else
      {
        AirPlay = APReceiverScreenSinkCreateAirPlay(allocator, v218);
        if (!AirPlay)
        {
LABEL_395:
          v110 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v110)
          {
            v111 = v110;
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            CFDictionarySetValue(v111, @"NetworkClock", *(a1 + 448));
            if (*(a1 + 560))
            {
              v112 = v207;
            }

            else
            {
              v112 = v208;
            }

            CFDictionarySetValue(v111, @"SetQoS", v112);
            if (*(a1 + 424))
            {
              v113 = v208;
            }

            else
            {
              v113 = v207;
            }

            CFDictionarySetValue(v111, @"AllowP2P", v113);
            CFDictionarySetValue(v111, @"ReceiverSession", a1);
            v114 = *(a1 + 176);
            if (v114)
            {
              APReceiverStatsCollectorSetScreenOptions(v114, TypedValueAtIndex);
              APReceiverStatsCollectorSetIfName(*(a1 + 176), a1 + 152);
              CFDictionarySetValue(v111, @"StatsCollector", *(a1 + 176));
            }

            v115 = APReceiverScreenSessionCreate(allocator, v218[0], v111, v212);
            if (v115)
            {
              v104 = v115;
              goto LABEL_431;
            }

            *(a1 + 440) = 1;
            *(a1 + 632) = 0;
            v116 = *(a1 + 616);
            v117 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (!v117)
            {
              v104 = -12782;
              goto LABEL_431;
            }

            v118 = v117(v116, _ScreenHandleEvent, a1);
            if (v118)
            {
              v104 = v118;
              goto LABEL_431;
            }

            v119 = CFDictionaryGetInt64();
            if (!v119)
            {
              APSLogErrorAt();
              v104 = -6715;
              goto LABEL_432;
            }

            v120 = v119;
            v121 = *(a1 + 488);
            if (v121 && (v122 = *(*(CMBaseObjectGetVTable() + 16) + 32)) != 0 && v122(v121))
            {
              DataStreamSecurityKeys = _GetDataStreamSecurityKeys(a1, v120, 0, 0, cStr);
              if (DataStreamSecurityKeys)
              {
                v104 = DataStreamSecurityKeys;
                goto LABEL_431;
              }

              v124 = *v212;
              v125 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (!v125)
              {
                v104 = -12782;
                goto LABEL_431;
              }

              v126 = v125(v124, cStr, 32);
              if (v126)
              {
                v104 = v126;
                goto LABEL_431;
              }
            }

            else
            {
              APSEncryptionUtilsDeriveAESKeySHA512ForScreen();
              v127 = *v212;
              v128 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v128)
              {
                v104 = v128(v127, bytes, v234);
              }

              else
              {
                v104 = -12782;
              }

              for (j = 0; j != 16; ++j)
              {
                *(bytes + j) = 0;
              }

              for (k = 0; k != 16; ++k)
              {
                v234[k] = 0;
              }

              if (v104)
              {
                goto LABEL_431;
              }
            }

            v131 = *v212;
            v132 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v132)
            {
              v133 = v132(v131, @"ListenPort", 0, &value);
              if (v133)
              {
                v104 = v133;
              }

              else
              {
                CFDictionarySetInt64();
                CFDictionarySetValue(v88, @"dataPort", value);
                v134 = _AddResponseStream(v215, v88);
                if (v134)
                {
                  v104 = v134;
                }

                else
                {
                  v135 = v6[474];
                  if (v135 <= 50 && (v135 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  _UpdateActiveSessionRegistration(a1);
                  if (TypedValueAtIndex && *(a1 + 600))
                  {
                    v152 = CFDictionaryGetValue(TypedValueAtIndex, @"ensembleInfo");
                    if (v152)
                    {
                      v153 = v152;
                      v154 = *(a1 + 600);
                      v155 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v155)
                      {
                        v155(v154, @"EnsembleInfo", v153);
                      }
                    }

                    v156 = CFDictionaryGetValue(TypedValueAtIndex, @"DemoDeviceInfo");
                    if (v156)
                    {
                      v157 = v156;
                      v158 = *(a1 + 600);
                      v159 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v159)
                      {
                        v159(v158, @"DemoDeviceInfo", v157);
                      }
                    }
                  }

                  if (!*(a1 + 458))
                  {
                    v104 = 0;
                    goto LABEL_432;
                  }

                  v104 = _ScreenStart(a1);
                  if (!v104)
                  {
LABEL_432:
                    CFRelease(v88);
                    v136 = v111;
LABEL_433:
                    CFRelease(v136);
LABEL_434:
                    v76 = v214;
                    if (v218[0])
                    {
                      CFRelease(v218[0]);
                    }

                    if (value)
                    {
                      CFRelease(value);
                    }

                    if (v104)
                    {
                      _ScreenTearDown(a1);
                    }

                    goto LABEL_440;
                  }
                }
              }
            }

            else
            {
              v104 = -12782;
            }

LABEL_431:
            APSLogErrorAt();
            goto LABEL_432;
          }

          APSLogErrorAt();
          v104 = -6728;
LABEL_623:
          v136 = v88;
          goto LABEL_433;
        }

        v104 = AirPlay;
      }

      APSLogErrorAt();
      goto LABEL_623;
    }

    if (v79 == 96)
    {
      v217 = _GeneralAudioSetup(a1, 96, TypedValueAtIndex, v215);
      if (v217)
      {
        goto LABEL_730;
      }

      HIDWORD(v209) = 1;
    }

    else
    {
      if (v79 != 103)
      {
LABEL_363:
        v96 = v6[474];
        if (v96 <= 50 && (v96 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_609;
      }

      v217 = _GeneralAudioSetup(a1, 103, TypedValueAtIndex, v215);
      if (v217)
      {
        goto LABEL_730;
      }

      LODWORD(v209) = 1;
    }

LABEL_609:
    ++v77;
  }

  while (v77 != v76);
  a2 = v210;
  v9 = v215;
  if (!*(a1 + 683) && v209)
  {
    v191 = CFDictionaryGetCount(*(a1 + 568));
    v217 = _cfDictionaryCopyKeysAndValues(*(a1 + 568), 0, &theArray);
    if (v217)
    {
      goto LABEL_708;
    }

    if (v191 >= 1)
    {
      for (m = 0; m != v191; ++m)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, m);
        if (ValueAtIndex)
        {
          v194 = ValueAtIndex[17];
          if (v194)
          {
            v194(ValueAtIndex[5]);
          }
        }

        else
        {
          APSLogErrorAt();
        }
      }
    }
  }

LABEL_684:
  *a3 = v9;
  v217 = 0;
  v9 = 0;
LABEL_685:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v195 = v217;
  if (!v217)
  {
    return 0;
  }

  v196 = v6[474];
  if (v196 <= 50)
  {
    if (v196 != -1 || (v198 = _LogCategory_Initialize(), v195 = v217, v198))
    {
      LogPrintF();
      v195 = v217;
    }
  }

  AirPlayReceiverSessionTearDown(a1, a2, v195, 0);
  return v217;
}

uint64_t _GeneralAudioSetup(uint64_t a1, int a2, CFDictionaryRef theDict, __CFDictionary *a4)
{
  v128 = *MEMORY[0x277D85DE8];
  DataStreamSecurityKeys = 0;
  cf = 0;
  v8 = &unk_27E37E000;
  if (CFDictionaryContainsKey(theDict, @"isMedia") && !CFDictionaryGetInt64())
  {
    v119 = 1;
  }

  else
  {
    if (*(a1 + 576))
    {
      APSLogErrorAt();
      v12 = 0;
      goto LABEL_310;
    }

    v119 = 0;
  }

  if (CFDictionaryGetInt64())
  {
    v9 = 0;
    *v127 = 0;
    while (1)
    {
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = RandomBytes();
      if (v10)
      {
        v75 = v10;
        APSLogErrorAt();
        goto LABEL_173;
      }

      Int64 = CFNumberCreateInt64();
      if (!Int64)
      {
        break;
      }

      v9 = Int64;
    }

    APSLogErrorAt();
    v75 = -6728;
LABEL_173:
    DataStreamSecurityKeys = v75;
    APSLogErrorAt();
    v12 = 0;
    goto LABEL_174;
  }

  v12 = CFNumberCreateInt64();
  if (!v12)
  {
    APSLogErrorAt();
    v22 = 0;
    v76 = 0;
    v77 = -6728;
LABEL_311:
    DataStreamSecurityKeys = v77;
    goto LABEL_436;
  }

  if (CFDictionaryContainsKey(*(a1 + 568), v12))
  {
    APSLogErrorAt();
LABEL_310:
    v22 = 0;
    v76 = 0;
    v77 = -6719;
    goto LABEL_311;
  }

  *v127 = 0;
  v120 = a2;
  if (APSIsWHAParallelSetupProcessingEnabled())
  {
    if (a2 == 96 && !CFDictionaryGetInt64())
    {
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v15 = 0;
    }

    else
    {
      APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(*(a1 + 24) + 216), 5, 0, v127);
      v13 = *v127;
      if (*v127)
      {
        if (gLogCategory_AirPlayReceiverCore <= 50)
        {
          if (gLogCategory_AirPlayReceiverCore != -1 || (v14 = _LogCategory_Initialize(), v13 = *v127, v14))
          {
            LogPrintF();
            v13 = *v127;
          }
        }

        v15 = AirPlayReceiverSessionPlatformControl(v13, @"EnsurePlatformIsReadyToAcceptAudio");
        if (v15)
        {
          APSLogErrorAt();
        }
      }

      else
      {
        APSLogErrorAt();
        v15 = -6709;
      }
    }

    if (*v127)
    {
      CFRelease(*v127);
    }

    DataStreamSecurityKeys = v15;
    if (v15)
    {
      APSLogErrorAt();
LABEL_174:
      v22 = 0;
      v76 = 0;
      goto LABEL_436;
    }
  }

  else
  {
    DataStreamSecurityKeys = 0;
  }

  v16 = MEMORY[0x277CBED28];
  v17 = MEMORY[0x277CBED10];
  if (*(a1 + 600))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"sessionID", v12);
    if (CFDictionaryGetInt64())
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    CFDictionarySetValue(Mutable, @"IsScreenAudio", *v19);
    v20 = *(a1 + 600);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v21)
    {
      v21(v20, Mutable);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v22 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v22)
  {
    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    v24 = *v16;
    v25 = *v17;
    if (PropertyInt64Sync)
    {
      v26 = *v16;
    }

    else
    {
      v26 = *v17;
    }

    CFDictionarySetValue(v22, @"RTPSkewPlatformAdjust", v26);
    if (*(a1 + 560))
    {
      v27 = v24;
    }

    else
    {
      v27 = v25;
    }

    CFDictionarySetValue(v22, @"QosDisabled", v27);
    CFDictionarySetInt64();
    if (*(a1 + 424))
    {
      v28 = v24;
    }

    else
    {
      v28 = v25;
    }

    CFDictionarySetValue(v22, @"AllowP2P", v28);
    v29 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v29)
    {
      v30 = v29;
      CFDictionaryGetInt64();
      DataStreamSecurityKeys = CFDictionarySetInt64();
      if (DataStreamSecurityKeys)
      {
        goto LABEL_476;
      }

      if (CFDictionaryContainsKey(theDict, @"audioFormatIndex"))
      {
        v31 = v120;
        if (!CFDictionaryGetInt64())
        {
          goto LABEL_54;
        }
      }

      else
      {
        v31 = v120;
        if (!CFDictionaryContainsKey(theDict, @"audioFormat"))
        {
          goto LABEL_54;
        }

        v32 = CFDictionaryGetInt64();
        if (v32 < 2)
        {
          goto LABEL_54;
        }

        if (v32 <= 0x3FFFFFFF)
        {
          if (v32 < 0x8000)
          {
            if (v32 > 255)
            {
              if (v32 <= 2047)
              {
                if (v32 != 256 && v32 != 512 && v32 != 1024)
                {
                  goto LABEL_54;
                }
              }

              else if (v32 >= 0x2000)
              {
                if (v32 != 0x2000 && v32 != 0x4000)
                {
                  goto LABEL_54;
                }
              }

              else if (v32 != 2048 && v32 != 4096)
              {
                goto LABEL_54;
              }
            }

            else if (v32 <= 7)
            {
              if (v32 != 0x8000000000000000 && v32 != 2 && v32 != 4)
              {
                goto LABEL_54;
              }
            }

            else if (v32 > 31)
            {
              if (v32 != 32 && v32 != 128)
              {
                goto LABEL_54;
              }
            }

            else if (v32 != 8 && v32 != 16)
            {
              goto LABEL_54;
            }
          }

          else if (v32 < 0x400000)
          {
            if (v32 < 0x40000)
            {
              if (v32 != 0x8000 && v32 != 0x10000 && v32 != 0x20000)
              {
                goto LABEL_54;
              }
            }

            else if (v32 >= 0x100000)
            {
              if (v32 != 0x100000 && v32 != 0x200000)
              {
                goto LABEL_54;
              }
            }

            else if (v32 != 0x40000 && v32 != 0x80000)
            {
              goto LABEL_54;
            }
          }

          else if (v32 > 0x3FFFFFF)
          {
            if (v32 > 0xFFFFFFF)
            {
              if (v32 != 0x10000000 && v32 != 0x20000000)
              {
                goto LABEL_54;
              }
            }

            else if (v32 != 0x4000000 && v32 != 0x8000000)
            {
              goto LABEL_54;
            }
          }

          else if (v32 > 0xFFFFFF)
          {
            if (v32 != 0x1000000 && v32 != 0x2000000)
            {
              goto LABEL_54;
            }
          }

          else if (v32 != 0x400000 && v32 != 0x800000)
          {
            goto LABEL_54;
          }
        }

        else if (v32 > 0x7FFFFFFFFFFFLL)
        {
          if (v32 <= 0x3FFFFFFFFFFFFFLL)
          {
            if (v32 <= 0x3FFFFFFFFFFFFLL)
            {
              if (v32 != 0x800000000000 && v32 != 0x1000000000000 && v32 != 0x2000000000000)
              {
                goto LABEL_54;
              }
            }

            else if (v32 > 0xFFFFFFFFFFFFFLL)
            {
              if (v32 != 0x10000000000000 && v32 != 0x20000000000000)
              {
                goto LABEL_54;
              }
            }

            else if (v32 != 0x4000000000000 && v32 != 0x8000000000000)
            {
              goto LABEL_54;
            }
          }

          else if (v32 > 0x3FFFFFFFFFFFFFFLL)
          {
            if (v32 > 0x1FFFFFFFFFFFFFFFLL)
            {
              if (v32 != 0x2000000000000000 && v32 != 0x4000000000000000)
              {
                goto LABEL_54;
              }
            }

            else if (v32 != 0x400000000000000 && v32 != 0x1000000000000000)
            {
              goto LABEL_54;
            }
          }

          else if (v32 > 0xFFFFFFFFFFFFFFLL)
          {
            if (v32 != 0x100000000000000 && v32 != 0x200000000000000)
            {
              goto LABEL_54;
            }
          }

          else if (v32 != 0x40000000000000 && v32 != 0x80000000000000)
          {
            goto LABEL_54;
          }
        }

        else if (v32 <= 0x7FFFFFFFFFLL)
        {
          if (v32 <= 0x1FFFFFFFFLL)
          {
            if (v32 != 0x40000000 && v32 != 0x80000000 && v32 != 0x100000000)
            {
              goto LABEL_54;
            }
          }

          else if (v32 > 0x7FFFFFFFFLL)
          {
            if (v32 != 0x800000000 && v32 != 0x4000000000)
            {
              goto LABEL_54;
            }
          }

          else if (v32 != 0x200000000 && v32 != 0x400000000)
          {
            goto LABEL_54;
          }
        }

        else if (v32 > 0x7FFFFFFFFFFLL)
        {
          if (v32 > 0x1FFFFFFFFFFFLL)
          {
            if (v32 != 0x200000000000 && v32 != 0x400000000000)
            {
              goto LABEL_54;
            }
          }

          else if (v32 != 0x80000000000 && v32 != 0x100000000000)
          {
            goto LABEL_54;
          }
        }

        else if (v32 > 0x1FFFFFFFFFFLL)
        {
          if (v32 != 0x20000000000 && v32 != 0x40000000000)
          {
            goto LABEL_54;
          }
        }

        else if (v32 != 0x8000000000 && v32 != 0x10000000000)
        {
          goto LABEL_54;
        }
      }

      DataStreamSecurityKeys = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
      if (DataStreamSecurityKeys)
      {
        goto LABEL_476;
      }

      CFDictionarySetValue(v22, @"AudioFormat", 0);
LABEL_54:
      if (v119)
      {
        v33 = v25;
      }

      else
      {
        v33 = v24;
      }

      CFDictionarySetValue(v22, @"IsMedia", v33);
      v34 = *(a1 + 448);
      if (v34)
      {
        CFDictionarySetValue(v22, @"NetworkClock", v34);
        CFDictionaryGetInt64();
        DataStreamSecurityKeys = CFDictionarySetInt64();
        if (DataStreamSecurityKeys)
        {
          goto LABEL_476;
        }

        if (CFDictionaryGetInt64())
        {
          v35 = v24;
        }

        else
        {
          v35 = v25;
        }

        CFDictionarySetValue(v22, @"DisableRetransmits", v35);
        v36 = CFDictionaryGetInt64();
        *(a1 + 440) = v36 != 0;
        if (v36)
        {
          v37 = v24;
        }

        else
        {
          v37 = v25;
        }

        CFDictionarySetValue(v22, @"UsingScreen", v37);
        if (CFDictionaryGetInt64())
        {
          v38 = v24;
        }

        else
        {
          v38 = v25;
        }

        CFDictionarySetValue(v22, @"HTFTIsActive", v38);
        v39 = *(a1 + 176);
        if (v39)
        {
          CFDictionarySetValue(v22, @"StatsCollector", v39);
        }

        CFDictionarySetValue(v22, @"ReceiverSession", a1);
        CFDictionarySetValue(v22, @"StreamDescription", theDict);
        CFDictionaryGetInt64();
        DataStreamSecurityKeys = CFDictionarySetInt64();
        if (DataStreamSecurityKeys)
        {
          goto LABEL_476;
        }

        CFDictionaryGetInt64();
        DataStreamSecurityKeys = CFDictionarySetInt64();
        if (DataStreamSecurityKeys)
        {
          goto LABEL_476;
        }

        CFDictionaryGetInt64();
        DataStreamSecurityKeys = CFDictionarySetInt64();
        if (DataStreamSecurityKeys)
        {
          goto LABEL_476;
        }

        CFDictionaryGetInt64();
        DataStreamSecurityKeys = CFDictionarySetInt64();
        if (DataStreamSecurityKeys)
        {
          goto LABEL_476;
        }

        v40 = *(a1 + 312);
        if (v40)
        {
          v41 = CFGetTypeID(v40);
          if (v41 == CFStringGetTypeID())
          {
            CFDictionarySetValue(v22, @"ClientDeviceModel", *(a1 + 312));
          }
        }

        v42 = *(a1 + 320);
        if (v42)
        {
          v43 = CFGetTypeID(v42);
          if (v43 == CFStringGetTypeID())
          {
            CFDictionarySetValue(v22, @"ClientOSBuildVersion", *(a1 + 320));
          }
        }

        DataStreamSecurityKeys = CFDictionarySetInt64();
        if (DataStreamSecurityKeys)
        {
          goto LABEL_476;
        }

        DataStreamSecurityKeys = CFDictionarySetInt64();
        if (DataStreamSecurityKeys)
        {
          goto LABEL_476;
        }

        FigCFDictionarySetValueFromKeyInDict();
        v116 = a4;
        if (CFDictionaryContainsKey(theDict, @"shk"))
        {
          *v127 = 0;
          CFDictionaryGetData();
          if (*v127 != 32)
          {
            APSLogErrorAt();
            DataStreamSecurityKeys = -6743;
LABEL_477:
            v76 = 0;
            goto LABEL_478;
          }

          v44 = v125;
          goto LABEL_92;
        }

        v45 = *(a1 + 488);
        if (!v45 || (v46 = *(*(CMBaseObjectGetVTable() + 16) + 32)) == 0 || !v46(v45))
        {
          v44 = 0;
          goto LABEL_92;
        }

        v47 = CFDictionaryGetInt64();
        if (v47)
        {
          v44 = v125;
          DataStreamSecurityKeys = _GetDataStreamSecurityKeys(a1, v47, 0, 0, v125);
          if (DataStreamSecurityKeys)
          {
LABEL_476:
            APSLogErrorAt();
            goto LABEL_477;
          }

LABEL_92:
          v48 = CFDictionaryContainsKey(theDict, @"streamConnections");
          key = v12;
          if (v48)
          {
            v114 = v30;
            appended = 0;
            CFDictionaryGetTypeID();
            TypedValue = CFDictionaryGetTypedValue();
            v50 = CFDictionaryContainsKey(TypedValue, @"streamConnectionTypeAPAP");
            v51 = CFDictionaryContainsKey(TypedValue, @"streamConnectionTypeRTP");
            v52 = CFDictionaryContainsKey(TypedValue, @"streamConnectionTypeAPAT");
            if (!(v50 | v51) && !v52)
            {
              v53 = 0;
LABEL_139:
              Value = CFDictionaryGetValue(TypedValue, @"streamConnectionTypeRTCP");
              if (!Value)
              {
                v117 = 0;
                v31 = v120;
                goto LABEL_145;
              }

              v64 = Value;
              v65 = CFGetTypeID(Value);
              if (v65 == CFDictionaryGetTypeID())
              {
                v31 = v120;
                if (CFDictionaryContainsKey(v64, @"streamConnectionKeyPort"))
                {
                  CFDictionaryGetInt64();
                  appended = CFDictionarySetInt64();
                  if (appended)
                  {
                    APSLogErrorAt();
                    v53 = 0;
                    v117 = 0;
                    goto LABEL_323;
                  }
                }

                v117 = 1;
LABEL_145:
                v66 = CFDictionaryGetValue(TypedValue, @"streamConnectionTypeMediaDataControl");
                if (v66)
                {
                  v67 = v66;
                  v68 = CFGetTypeID(v66);
                  if (v68 == CFDictionaryGetTypeID())
                  {
                    v69 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF128]);
                    if (v69)
                    {
                      v70 = v69;
                      v71 = CFDictionaryGetInt64();
                      v72 = CFDictionaryContainsKey(v67, @"streamConnectionKeyEncryptionSeed");
                      if (v71)
                      {
                        if (v72)
                        {
                          APSLogErrorAt();
                          v53 = 0;
                          v117 = 0;
                          v74 = 0;
                          appended = -6711;
                          v31 = v120;
                          goto LABEL_158;
                        }

                        v31 = v120;
                        if (v44)
                        {
                          appended = CFArrayAppendBytes();
                          if (appended)
                          {
LABEL_488:
                            APSLogErrorAt();
                            v53 = 0;
                            v117 = 0;
                            v74 = 0;
                            goto LABEL_158;
                          }
                        }
                      }

                      else
                      {
                        v31 = v120;
                        if (v72)
                        {
                          v73 = CFDictionaryGetInt64();
                          appended = _GetDataStreamSecurityKeys(a1, v73, 32, v126, v127);
                          if (appended)
                          {
                            goto LABEL_488;
                          }

                          appended = CFArrayAppendBytes();
                          if (appended)
                          {
                            goto LABEL_488;
                          }

                          appended = CFArrayAppendBytes();
                          if (appended)
                          {
                            goto LABEL_488;
                          }
                        }
                      }

                      CFDictionarySetValue(v22, @"MediaDataControl", v70);
                      v74 = 1;
LABEL_158:
                      CFRelease(v70);
LABEL_324:
                      DataStreamSecurityKeys = appended;
                      if (!appended)
                      {
                        v30 = v114;
                        v121 = v74;
                        if (v53)
                        {
                          if (v53 == 1095778644 || v53 == 1095778640)
                          {
                            if (v31 != 103)
                            {
                              APSLogErrorAt();
                              DataStreamSecurityKeys = -6735;
                              v8 = &unk_27E37E000;
                              if (gLogCategory_AirPlayReceiverCore <= 90 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                              {
                                LogPrintF();
                              }

                              v76 = 0;
                              goto LABEL_425;
                            }

                            CFDictionarySetInt64();
                            v82 = 0;
                            goto LABEL_334;
                          }
                        }

                        else
                        {
                          if (v117)
                          {
                            APSLogErrorAt();
                            DataStreamSecurityKeys = -6711;
                            if (gLogCategory_AirPlayReceiverCore <= 90 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                            {
                              LogPrintF();
                            }

                            v76 = 0;
                            v8 = &unk_27E37E000;
                            v12 = key;
                            v30 = v114;
                            goto LABEL_434;
                          }

                          v53 = 0;
                          v117 = 0;
                        }

LABEL_332:
                        CFDictionarySetInt64();
                        v82 = v31 == 96;
                        if (v31 == 96)
                        {
                          v113 = 0;
LABEL_336:
                          if (*(a1 + 440))
                          {
                            if (!APSIsMemberOfHTGroup())
                            {
                              goto LABEL_342;
                            }

                            v83 = kAPReceiverAudioSessionOption_ShouldAdjustPresentationByOutputLatency;
                          }

                          else
                          {
                            if (!APSIsATVInHTGroup())
                            {
                              goto LABEL_342;
                            }

                            v83 = kAPReceiverAudioSessionOption_ReadAudioWithoutRendering;
                          }

                          CFDictionarySetValue(v22, *v83, v24);
LABEL_342:
                          *v127 = *(a1 + 196);
                          v84 = *(a1 + 224);
                          *&v127[12] = *(a1 + 208);
                          *v126 = v84;
                          *&v126[12] = *(a1 + 236);
                          DataStreamSecurityKeys = APReceiverAudioSessionCreate(v31, v127, v126, v22, &cf);
                          if (DataStreamSecurityKeys)
                          {
                            APSLogErrorAt();
                            v76 = 0;
                            v8 = &unk_27E37E000;
LABEL_425:
                            v12 = key;
                            goto LABEL_434;
                          }

                          v8 = &unk_27E37E000;
                          if (CFDictionaryContainsKey(theDict, @"pkdDeviceContext"))
                          {
                            v76 = APReceiverAudioSessionCopyProperty(cf, v85, @"PKDReceiverContext", v86, &DataStreamSecurityKeys);
                            if (DataStreamSecurityKeys)
                            {
LABEL_481:
                              APSLogErrorAt();
                              goto LABEL_425;
                            }

                            if (v76)
                            {
                              CFDictionarySetValue(v30, @"pkdDeviceContext", v76);
                            }
                          }

                          else
                          {
                            v76 = 0;
                          }

                          if (!*(a1 + 458) || *(a1 + 753) || (DataStreamSecurityKeys = APReceiverAudioSessionPlatformControl(cf, @"RASP::StartSession")) == 0)
                          {
                            CFDictionarySetValue(*(a1 + 568), key, cf);
                            if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                            {
                              LogPrintF();
                            }

                            if (v119)
                            {
                              _UpdateActiveSessionRegistration(a1);
                            }

                            else
                            {
                              v87 = *(a1 + 576);
                              if (!v87)
                              {
                                AirPlayReceiverSessionPlatformControl(a1, @"handleMediaAudioStartingForSession");
                                _UpdateActiveSessionRegistration(a1);
                                v87 = *(a1 + 576);
                              }

                              v88 = cf;
                              if (cf)
                              {
                                CFRetain(cf);
                              }

                              *(a1 + 576) = v88;
                              if (v87)
                              {
                                CFRelease(v87);
                              }

                              if (*(a1 + 724))
                              {
                                if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                                {
                                  LogPrintF();
                                }

                                v89 = cf;
                                CMTimeMakeWithSeconds(v127, *(a1 + 728), 1000);
                                APReceiverAudioSessionApplyVolumeFade(v89, 1, v127);
                                *(a1 + 724) = 0;
                              }
                            }

                            v115 = v76;
                            if (*(a1 + 384) && cf && (v90 = *(cf + 8)) != 0)
                            {
                              v91 = v82;
                              v90(*(cf + 5), a1 + 392, a1 + 408);
                            }

                            else
                            {
                              v91 = v82;
                            }

                            *(a1 + 584) = CFObjectGetPropertyInt64Sync();
                            v92 = cf;
                            if (v48)
                            {
                              *v127 = 0;
                              v93 = *MEMORY[0x277CBECE8];
                              v94 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                              if (!v94)
                              {
                                APSLogErrorAt();
                                DataStreamSecurityKeys = -6728;
                                goto LABEL_454;
                              }

                              v95 = v94;
                              if (!v92)
                              {
                                APSLogErrorAt();
                                *v127 = -6718;
                                v8 = &unk_27E37E000;
                                v12 = key;
                                goto LABEL_410;
                              }

                              v96 = v30;
                              if (v53)
                              {
                                v97 = CFDictionaryCreateMutable(v93, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                if (!v97)
                                {
                                  APSLogErrorAt();
                                  *v127 = -6728;
                                  v8 = &unk_27E37E000;
                                  v12 = key;
LABEL_471:
                                  v30 = v96;
                                  goto LABEL_410;
                                }

                                v98 = v97;
                                CFObjectGetPropertyInt64Sync();
                                if (*v127 || (*v127 = CFDictionarySetInt64()) != 0)
                                {
                                  APSLogErrorAt();
                                  v8 = &unk_27E37E000;
                                  v12 = key;
LABEL_422:
                                  v104 = v116;
                                  CFRelease(v95);
                                  v95 = v98;
                                  v30 = v96;
LABEL_411:
                                  CFRelease(v95);
                                  DataStreamSecurityKeys = *v127;
                                  if (!*v127)
                                  {
LABEL_412:
                                    CFDictionarySetInt64();
                                    if (!v91 || (CFObjectGetPropertyInt64Sync(), (DataStreamSecurityKeys = CFDictionarySetInt64()) == 0))
                                    {
                                      if (v113)
                                      {
                                        CFObjectGetPropertyInt64Sync();
                                        CFDictionarySetInt64();
                                      }

                                      DataStreamSecurityKeys = _AddResponseStream(v104, v30);
                                      v76 = v115;
                                      if (DataStreamSecurityKeys)
                                      {
                                        goto LABEL_433;
                                      }

                                      v107 = v8[474];
                                      if (v107 <= 50 && (v107 != -1 || _LogCategory_Initialize()))
                                      {
                                        LogPrintF();
                                      }

                                      if (*(a1 + 458))
                                      {
                                        if (cf)
                                        {
                                          v108 = *(cf + 9);
                                          if (v108)
                                          {
                                            DataStreamSecurityKeys = v108(*(cf + 5));
                                            if (!DataStreamSecurityKeys)
                                            {
                                              goto LABEL_434;
                                            }

                                            goto LABEL_433;
                                          }

                                          v109 = -12782;
                                        }

                                        else
                                        {
                                          APSLogErrorAt();
                                          v109 = -72152;
                                        }

                                        DataStreamSecurityKeys = v109;
LABEL_433:
                                        APSLogErrorAt();
                                      }

LABEL_434:
                                      CFRelease(v30);
                                      v78 = DataStreamSecurityKeys;
                                      if (!DataStreamSecurityKeys)
                                      {
                                        goto LABEL_436;
                                      }

                                      goto LABEL_435;
                                    }

                                    APSLogErrorAt();
LABEL_458:
                                    v76 = v115;
                                    goto LABEL_434;
                                  }

LABEL_454:
                                  APSLogErrorAt();
                                  v8 = &unk_27E37E000;
                                  v12 = key;
                                  goto LABEL_458;
                                }

                                v101 = APReceiverAudioSessionCopyProperty(v92, v99, @"AudioNetworkInfo", v100, 0);
                                if (v101)
                                {
                                  v102 = v101;
                                  CFDictionarySetValue(v98, @"streamConnectionKeyNetworkInfo", v101);
                                  CFRelease(v102);
                                }

                                if (v53 == 1381257248)
                                {
                                  v103 = @"streamConnectionTypeRTP";
                                }

                                else if (v53 == 1095778644)
                                {
                                  v103 = @"streamConnectionTypeAPAT";
                                }

                                else
                                {
                                  v103 = @"streamConnectionTypeAPAP";
                                }

                                CFDictionarySetValue(v95, v103, v98);
                                CFRelease(v98);
                              }

                              v12 = key;
                              if (v117)
                              {
                                v105 = CFDictionaryCreateMutable(v93, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                if (!v105)
                                {
LABEL_470:
                                  APSLogErrorAt();
                                  *v127 = -6728;
                                  v8 = &unk_27E37E000;
                                  goto LABEL_471;
                                }

                                v98 = v105;
                                CFObjectGetPropertyInt64Sync();
                                if (*v127 || (*v127 = CFDictionarySetInt64()) != 0)
                                {
LABEL_472:
                                  APSLogErrorAt();
                                  v8 = &unk_27E37E000;
                                  goto LABEL_422;
                                }

                                CFDictionarySetValue(v95, @"streamConnectionTypeRTCP", v98);
                                CFRelease(v98);
                              }

                              if (!v121)
                              {
LABEL_409:
                                v30 = v96;
                                CFDictionarySetValue(v96, @"streamConnections", v95);
                                v8 = &unk_27E37E000;
LABEL_410:
                                v104 = v116;
                                goto LABEL_411;
                              }

                              v106 = CFDictionaryCreateMutable(v93, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                              if (v106)
                              {
                                v98 = v106;
                                CFObjectGetPropertyInt64Sync();
                                if (!*v127)
                                {
                                  *v127 = CFDictionarySetInt64();
                                  if (!*v127)
                                  {
                                    CFDictionarySetValue(v95, @"streamConnectionTypeMediaDataControl", v98);
                                    CFRelease(v98);
                                    goto LABEL_409;
                                  }
                                }

                                goto LABEL_472;
                              }

                              goto LABEL_470;
                            }

                            *v127 = 0;
                            if (v53 == 1381257248)
                            {
                              v12 = key;
                              if (v117 && !v121)
                              {
                                CFObjectGetPropertyInt64Sync();
                                if (*v127)
                                {
                                  APSLogErrorAt();
                                }

                                else
                                {
                                  CFObjectGetPropertyInt64Sync();
                                  CFDictionarySetInt64();
                                  CFDictionarySetInt64();
                                }

                                v104 = v116;
                                DataStreamSecurityKeys = *v127;
                                if (!*v127)
                                {
                                  goto LABEL_412;
                                }

LABEL_466:
                                v76 = v115;
                                goto LABEL_433;
                              }
                            }

                            else
                            {
                              v12 = key;
                            }

                            APSLogErrorAt();
                            DataStreamSecurityKeys = -6705;
                            goto LABEL_466;
                          }

                          goto LABEL_481;
                        }

                        if (v31 != 103)
                        {
                          v8 = &unk_27E37E000;
                          if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                          {
                            LogPrintF();
                          }

                          v76 = 0;
                          DataStreamSecurityKeys = -6735;
                          goto LABEL_425;
                        }

LABEL_334:
                        *(a1 + 552) = 120;
                        *(a1 + 520) = 120 * UpTicksPerSecond();
                        SocketSetKeepAlive();
                        FigCFDictionarySetValueFromKeyInDict();
                        v113 = 1;
                        goto LABEL_336;
                      }

                      v8 = &unk_27E37E000;
                      v12 = key;
                      v30 = v114;
LABEL_492:
                      APSLogErrorAt();
                      v76 = 0;
                      goto LABEL_434;
                    }

                    v80 = -6728;
                  }

                  else
                  {
                    v80 = -6756;
                  }

                  goto LABEL_490;
                }

LABEL_323:
                v74 = 0;
                goto LABEL_324;
              }

              v80 = -6756;
LABEL_490:
              v8 = &unk_27E37E000;
              v12 = key;
              goto LABEL_491;
            }

            if (v52)
            {
              if (v50 | v51)
              {
                v80 = -6711;
                v8 = &unk_27E37E000;
LABEL_491:
                v30 = v114;
                APSLogErrorAt();
                DataStreamSecurityKeys = v80;
                goto LABEL_492;
              }

              v56 = CFDictionaryGetValue(TypedValue, @"streamConnectionTypeAPAT");
              CFDictionarySetValue(v22, @"UseUDP", v24);
              v53 = 1095778644;
              if (!v56)
              {
                goto LABEL_313;
              }
            }

            else
            {
              if (v50)
              {
                if (v51)
                {
                  v80 = -6711;
                  goto LABEL_490;
                }

                v53 = 1095778640;
                v57 = @"streamConnectionTypeAPAP";
              }

              else
              {
                v53 = 1381257248;
                v57 = @"streamConnectionTypeRTP";
              }

              v56 = CFDictionaryGetValue(TypedValue, v57);
              if (!v56)
              {
                goto LABEL_313;
              }
            }

            v58 = CFGetTypeID(v56);
            if (v58 != CFDictionaryGetTypeID())
            {
LABEL_313:
              v80 = -6756;
              goto LABEL_490;
            }

            v59 = CFDictionaryGetInt64();
            v60 = CFDictionaryContainsKey(v56, @"streamConnectionKeyEncryptionSeed");
            if (v59)
            {
              if (v60)
              {
                v80 = -6711;
                goto LABEL_490;
              }

              if (v44)
              {
                appended = CFDictionarySetData();
                if (appended || (appended = CFDictionarySetData()) != 0)
                {
LABEL_493:
                  APSLogErrorAt();
                  v53 = 0;
                  v117 = 0;
                  v74 = 0;
                  v31 = v120;
                  goto LABEL_324;
                }
              }
            }

            else if (v60)
            {
              v61 = CFDictionaryGetInt64();
              appended = _GetDataStreamSecurityKeys(a1, v61, 32, v126, v127);
              if (appended)
              {
                goto LABEL_493;
              }

              appended = CFDictionarySetData();
              if (appended)
              {
                goto LABEL_493;
              }

              appended = CFDictionarySetData();
              if (appended)
              {
                goto LABEL_493;
              }
            }

            if (CFDictionaryContainsKey(v56, @"streamConnectionKeyNetworkInfo"))
            {
              v62 = CFDictionaryGetValue(v56, @"streamConnectionKeyNetworkInfo");
              CFDictionarySetValue(v22, @"NetworkInfoRemoteRTP", v62);
            }

            FigCFDictionaryGetValue();
            if (FigCFEqual())
            {
              CFDictionarySetValue(v22, @"UseQUIC", v24);
            }

            goto LABEL_139;
          }

          CFDictionaryGetInt64();
          v54 = CFDictionarySetInt64();
          if (v54)
          {
            v81 = v54;
          }

          else
          {
            if (!v44 || (v55 = CFDictionarySetData()) == 0)
            {
              v121 = 0;
              v53 = 1381257248;
              DataStreamSecurityKeys = 0;
              v117 = 1;
              goto LABEL_332;
            }

            v81 = v55;
          }

          APSLogErrorAt();
          DataStreamSecurityKeys = v81;
          goto LABEL_476;
        }

        APSLogErrorAt();
        v76 = 0;
        v79 = -6715;
      }

      else
      {
        APSLogErrorAt();
        v76 = 0;
        v79 = -6718;
      }

      DataStreamSecurityKeys = v79;
LABEL_478:
      v8 = &unk_27E37E000;
      goto LABEL_434;
    }

    APSLogErrorAt();
    v76 = 0;
    v78 = 4294960568;
    DataStreamSecurityKeys = -6728;
    v8 = &unk_27E37E000;
  }

  else
  {
    APSLogErrorAt();
    v76 = 0;
    v78 = 4294960568;
    DataStreamSecurityKeys = -6728;
  }

LABEL_435:
  _AudioTearDownStream(a1, 0, v12, v78);
LABEL_436:
  if (v76)
  {
    CFRelease(v76);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  result = DataStreamSecurityKeys;
  if (DataStreamSecurityKeys)
  {
    v111 = v8[474];
    if (v111 <= 60)
    {
      if (v111 != -1 || (v112 = _LogCategory_Initialize(), result = DataStreamSecurityKeys, v112))
      {
        LogPrintF();
        return DataStreamSecurityKeys;
      }
    }
  }

  return result;
}

uint64_t _GetDataStreamSecurityKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 488))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  v9 = ASPrintF();
  if (a5)
  {
    v10 = *(a1 + 488);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v11)
    {
      v12 = v11(v10, 0, v9, "DataStream-Output-Encryption-Key", 32, 32, a5);
      if (!v12)
      {
        goto LABEL_5;
      }

      v15 = v12;
    }

    else
    {
      v15 = 4294954514;
    }

LABEL_11:
    APSLogErrorAt();
    goto LABEL_13;
  }

LABEL_5:
  if (a4)
  {
    v13 = *(a1 + 488);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v14)
    {
      v15 = v14(v13, 0, v9, "DataStream-Input-Encryption-Key", 31, a3, a4);
      if (!v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 4294954514;
    }

    goto LABEL_11;
  }

  v15 = 0;
LABEL_13:
  v16 = 0;
  if (v9)
  {
    do
    {
      *v16++ = 0;
      --v9;
    }

    while (v9);
  }

  return v15;
}

uint64_t _AddResponseStream(__CFDictionary *a1, const void *a2)
{
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    CFArrayAppendValue(TypedValue, a2);
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v6 = Mutable;
    CFArrayAppendValue(Mutable, a2);
    CFDictionarySetValue(a1, @"streams", v6);
    CFRelease(v6);
    return 0;
  }

  APSLogErrorAt();
  return 4294960568;
}

uint64_t _ScreenStart(uint64_t a1)
{
  theDict = 0;
  if (*(a1 + 632))
  {
    return 0;
  }

  v2 = *(*(a1 + 24) + 160);
  v3 = *(a1 + 608);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3010000000;
  v23[4] = 0;
  v23[5] = 0;
  v23[3] = &unk_23EAD36B9;
  v4 = *(v2 + 576);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APReceiverSystemInfoGetDisplaySizeForUserVersion_block_invoke;
  block[3] = &unk_278C5FCC0;
  block[4] = v23;
  block[5] = v2;
  v22 = v3;
  dispatch_sync(v4, block);
  _Block_object_dispose(v23, 8);
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(a1 + 600))
  {
    theDict = 0;
    goto LABEL_26;
  }

  if (*(a1 + 633))
  {
    goto LABEL_26;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetNumber();
  if (*(a1 + 648) && *(a1 + 656))
  {
    CFDictionarySetValue(Mutable, @"protectedMirroring", *MEMORY[0x277CBED28]);
  }

  v6 = *(a1 + 600);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7)
  {
    v8 = 4294954514;
LABEL_16:
    APSLogErrorAt();
    if (!Mutable)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v8 = v7(v6, Mutable, &theDict);
  if (v8)
  {
    goto LABEL_16;
  }

  *(a1 + 633) = 1;
  *(a1 + 636) = CFDictionaryGetInt64();
  if (Mutable)
  {
LABEL_17:
    CFRelease(Mutable);
  }

LABEL_18:
  if (v8)
  {
    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    APSLogErrorAt();
    v9 = 0;
    goto LABEL_42;
  }

LABEL_26:
  v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v9)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"presentationLayer");
      if (Value)
      {
        CFDictionarySetValue(v9, @"PresentationLayer", Value);
      }

      v11 = CFDictionaryGetValue(theDict, @"presentationContext");
      if (v11)
      {
        CFDictionarySetValue(v9, @"PresentationContext", v11);
      }
    }

    FigCFDictionarySetCGSize();
    v12 = *(a1 + 616);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v13)
    {
      v14 = v13(v12, v9);
      if (!v14)
      {
        *(a1 + 632) = 1;
        if (*(a1 + 648) && *(a1 + 656))
        {
          v15 = *(a1 + 664);
          if (!v15)
          {
            v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 16));
            *(a1 + 664) = v16;
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 0x40000000;
            handler[2] = ___ScreenStart_block_invoke;
            handler[3] = &__block_descriptor_tmp_668;
            handler[4] = a1;
            dispatch_source_set_event_handler(v16, handler);
            dispatch_source_set_timer(*(a1 + 664), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
            dispatch_resume(*(a1 + 664));
            v15 = *(a1 + 664);
          }

          v17 = dispatch_time(0, 10000000000);
          dispatch_source_set_timer(v15, v17, 0x2540BE400uLL, 0x3B9ACA00uLL);
        }

        v8 = 0;
        goto LABEL_42;
      }

      v8 = v14;
    }

    else
    {
      v8 = 4294954514;
    }

    APSLogErrorAt();
  }

  else
  {
    APSLogErrorAt();
    v8 = 4294960568;
  }

LABEL_42:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _ScreenTearDown(a1);
  }

  return v8;
}

void AirPlayReceiverSessionTearDown(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v4 = a4;
  if (!*(a1 + 441))
  {
    v8 = &unk_27E37E000;
    v9 = gLogCategory_AirPlayReceiverCore;
    if (gLogCategory_AirPlayReceiverCore <= 30)
    {
      if (gLogCategory_AirPlayReceiverCore != -1)
      {
        goto LABEL_4;
      }

      if (_LogCategory_Initialize())
      {
        v9 = gLogCategory_AirPlayReceiverCore;
LABEL_4:
        if (v9 == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
        if (!a2)
        {
          goto LABEL_61;
        }

LABEL_11:
        CFArrayGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (TypedValue)
        {
          Count = CFArrayGetCount(TypedValue);
          if (Count >= 1)
          {
            v27 = v4;
            v12 = 0;
            while (1)
            {
              CFDictionaryGetTypeID();
              TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
              Value = CFDictionaryGetValue(TypedValueAtIndex, @"streamID");
              Int64 = CFDictionaryGetInt64();
              v16 = v8[474];
              if (v16 <= 50 && (v16 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              if (Int64 <= 109)
              {
                if (Int64 == 96 || Int64 == 103)
                {
                  if (!Value)
                  {
                    Value = CFNumberGetObject();
                  }

                  _AudioTearDownStream(a1, TypedValueAtIndex, Value, a3);
                  goto LABEL_54;
                }

                goto LABEL_36;
              }

              if (Int64 != 110)
              {
                break;
              }

              _ScreenTearDown(a1);
LABEL_54:
              if (Count == ++v12)
              {
                v26 = 0;
                v4 = v27;
                if (!v27)
                {
                  return;
                }

LABEL_63:
                *v4 = v26;
                return;
              }
            }

            if (Int64 != 120)
            {
              if (Int64 == 130)
              {
                if (CFDictionaryContainsKey(*(a1 + 736), Value))
                {
                  _PlaybackV2TearDown(a1, Value);
                }

                else
                {
                  _RemoteControlSessionTearDown(a1, Value);
                }

                goto LABEL_54;
              }

LABEL_36:
              v22 = v8[474];
              if (v22 > 50 || v22 == -1 && !_LogCategory_Initialize())
              {
                goto LABEL_54;
              }

LABEL_52:
              LogPrintF();
              goto LABEL_54;
            }

            if (!*(a1 + 441))
            {
              if (Value)
              {
                v17 = CFGetInt64();
                if (v17)
                {
                  v18 = a3;
                  v19 = *(a1 + 24);
                  v20 = *(a1 + 32);
                  DerivedStorage = CMBaseObjectGetDerivedStorage();
                  v28 = 0;
                  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  if (v19 && (v23 = CFNumberCreateInt64()) != 0)
                  {
                    v24 = v23;
                    airplayReqProcessor_GetMCRPForMCSession(v20, v17, &v28);
                    if (v28 && !airplayReqProcessor_tearDownMediaControlRequestProcessor(v20, v28))
                    {
                      CFDictionaryRemoveValue(*(DerivedStorage + 104), v24);
                      CFRelease(v24);
                      CFSetRemoveValue(*(a1 + 744), Value);
                      if (!CFSetGetCount(*(a1 + 744)))
                      {
                        _UpdateActiveSessionRegistration(a1);
                      }

                      a3 = v18;
                      v8 = &unk_27E37E000;
LABEL_50:
                      v25 = v8[474];
                      if (v25 > 50 || v25 == -1 && !_LogCategory_Initialize())
                      {
                        goto LABEL_54;
                      }

                      goto LABEL_52;
                    }

                    APSLogErrorAt();
                    CFRelease(v24);
                  }

                  else
                  {
                    APSLogErrorAt();
                  }

                  a3 = v18;
                  APSLogErrorAt();
                  v8 = &unk_27E37E000;
                  goto LABEL_50;
                }
              }
            }

            APSLogErrorAt();
            goto LABEL_50;
          }

LABEL_62:
          _Cleanup(a1, a3);
          v26 = Count == 0;
          if (!v4)
          {
            return;
          }

          goto LABEL_63;
        }

LABEL_61:
        Count = 0;
        goto LABEL_62;
      }
    }

    if (!a2)
    {
      goto LABEL_61;
    }

    goto LABEL_11;
  }

  v26 = 1;
  if (a4)
  {
    goto LABEL_63;
  }
}

void _SendRemoteControlSessionOutgoingMessage(void *a1, uint64_t a2, const void *a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    *(v12 + 6) = -12782;
    goto LABEL_7;
  }

  v7 = v6(a2, @"RRCS::Property::SessionID", *MEMORY[0x277CBECE8], &v10);
  *(v12 + 6) = v7;
  if (v7)
  {
LABEL_7:
    APSLogErrorAt();
    goto LABEL_10;
  }

  if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  CFRetain(v10);
  CFRetain(a3);
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___SendRemoteControlSessionOutgoingMessage_block_invoke;
  block[3] = &unk_278C60F98;
  block[4] = &v11;
  block[5] = a1;
  block[6] = v10;
  block[7] = a3;
  dispatch_async(v8, block);
LABEL_10:
  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v11, 8);
}

void _HandleRemoteControlSessionFailed(void *a1, const void *a2, int a3)
{
  CFRetain(a1);
  CFRetain(a2);
  v6 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___HandleRemoteControlSessionFailed_block_invoke;
  block[3] = &__block_descriptor_tmp_789;
  block[4] = a1;
  block[5] = a2;
  v8 = a3;
  dispatch_async(v6, block);
}

uint64_t _PlaybackV2TLSInfoRequestCallback(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 488);
  if (v3)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v3 = v5(v3, "Pair-TLS-PSK", 12, 0, 0, 16, v9);
      if (!v3)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetData();
        __s[0] = 0;
        SockAddrToString();
        strlen(__s);
        CFDictionarySetData();
        *a3 = Mutable;
        return v3;
      }
    }

    else
    {
      v3 = 4294954514;
    }

    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverCore <= 90 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return v3;
}

void _PlaybackV2EventCallback(void *a1, const void *a2, const void *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  if (a3)
  {
    CFDictionarySetValue(Mutable, @"params", a3);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  CFRetain(a1);
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___PlaybackV2EventCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_753;
  block[4] = a1;
  block[5] = a2;
  block[6] = v7;
  dispatch_async(v8, block);
}

void _ScreenHandleEvent(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (CFEqual(cf1, @"SessionTerminated"))
  {
    FigCFDictionaryGetInt32IfPresent();
    if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else if (CFEqual(cf1, @"ForceKeyFrameNeeded"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 40 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRetain(a4);
    v6 = a4[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ScreenHandleEvent_block_invoke;
    block[3] = &__block_descriptor_tmp_665;
    block[4] = a4;
    dispatch_async(v6, block);
  }
}

uint64_t _AirPlayReceiverSessionUpdateMC2UCStatus(NSObject **cf, int a2, unsigned int a3, int a4, int a5)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (a5 == 30)
  {
    v9 = 6;
  }

  else
  {
    v9 = 0;
  }

  if (a5 == 2)
  {
    v10 = 4;
  }

  else
  {
    v10 = v9;
  }

  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a3 >= 3)
  {
    APSLogErrorAt();
    v12 = 4294960559;
    *(v20 + 6) = -6737;
  }

  else
  {
    CFRetain(cf);
    v11 = cf[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___AirPlayReceiverSessionUpdateMC2UCStatus_block_invoke;
    block[3] = &unk_278C60CA0;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = v10;
    block[4] = &v19;
    block[5] = cf;
    dispatch_async(v11, block);
    v12 = *(v20 + 6);
  }

  _Block_object_dispose(&v19, 8);
  return v12;
}

uint64_t __APReceiverSBufConsumerStart_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v3)
  {
    result = v3(v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _PerformPeriodTasks(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = v2;
  v4 = *(a1 + 500);
  if (v4 == *(a1 + 504))
  {
    v5 = v2 - *(a1 + 512);
    if (v5 >= 60 * UpTicksPerSecond())
    {
      v6 = 2;
    }

    else
    {
      if (v5 < 10 * UpTicksPerSecond())
      {
LABEL_10:
        if (v3 - *(a1 + 528) > *(a1 + 544))
        {
          UpTicksPerSecond();
          if (gLogCategory_AirPlayReceiverCore <= 40 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          *(a1 + 528) = v3;
          if (IsAppleInternalBuild())
          {
            v7 = CFStringCreateF();
            AirPlayReceiverServerPlatformControl(*(a1 + 24), @"triggerStackShot", v7, 0);
            if (v7)
            {
              CFRelease(v7);
            }
          }
        }

        if (v5 > *(a1 + 520))
        {
          if (gLogCategory_AirPlayReceiverCore <= 90 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          _AirPlayReceiverSession_Terminate(a1);
        }

        return;
      }

      v6 = 1;
    }

    _ReportSessionStallIfNeeded(a1, v6);
    goto LABEL_10;
  }

  *(a1 + 504) = v4;
  *(a1 + 512) = v2;
  *(a1 + 528) = v2;

  _ReportSessionStallIfNeeded(a1, 0);
}

void _HandleEventConnectionInvalidated(int a1, NSObject **cf)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = cf[2];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___HandleEventConnectionInvalidated_block_invoke;
    v5[3] = &__block_descriptor_tmp_416;
    v5[4] = cf;
    v6 = a1;
    dispatch_async(v4, v5);
    CFRelease(cf);
  }

  else if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

uint64_t AirPlayReceiverSessionFlushAudio(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, _OWORD *a5)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  v5 = *(a1 + 576);
  if (!v5)
  {
    APSLogErrorAt();
    return 4294960578;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    v8 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    return v8;
  }

  v7 = *(v5 + 40);
  v11[0] = *a3;
  *(v11 + 12) = *(a3 + 12);
  v10[0] = *a5;
  *(v10 + 12) = *(a5 + 12);
  v8 = v6(v7, a2, v11, a4, v10);
  if (v8)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t _AddVolumeOrMuteRequest(uint64_t a1, void *value)
{
  if (!value)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  Mutable = *(a1 + 704);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *(a1 + 704) = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      return 4294960568;
    }
  }

  CFArrayAppendValue(Mutable, value);
  if (gLogCategory_AirPlayReceiverCore > 50)
  {
    return 0;
  }

  if (gLogCategory_AirPlayReceiverCore != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t AirPlayReceiverSessionAddMuteRequest(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = MEMORY[0x277CBED28];
  if (!a2)
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = _AddVolumeOrMuteRequest(a1, *v4);
  if (v5)
  {
    APSLogErrorAt();
  }

  else
  {
    *(a1 + 716) = v2;
  }

  return v5;
}

uint64_t __AirPlayReceiverSessionRemoveVolumeRequest_block_invoke(int a1, CFTypeRef cf)
{
  valuePtr = 0;
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFNumberGetTypeID())
  {
    return 0;
  }

  CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
  if (APSVolumeSliderValuesAreNoticeablyDifferent())
  {
    return 0;
  }

  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 1;
}

uint64_t _RemoveVolumeOrMuteRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 704);
  if (!v3)
  {
    return 4294960569;
  }

  Count = CFArrayGetCount(v3);
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (Count < 1)
  {
    return 4294960569;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 704), v6);
    if ((*(a2 + 16))(a2, ValueAtIndex))
    {
      break;
    }

    if (Count == ++v6)
    {
      return 4294960569;
    }
  }

  CFArrayRemoveValueAtIndex(*(a1 + 704), v6);
  return 0;
}

uint64_t __AirPlayReceiverSessionRemoveMuteRequest_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFBooleanGetTypeID() || *(a1 + 40) != (*MEMORY[0x277CBED28] == cf))
  {
    return 0;
  }

  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 1;
}

void AirPlayReceiverSessionHandleVolumeUpdate(uint64_t a1)
{
  CFDictionaryGetDouble();
  v3 = v2;
  Int64 = CFDictionaryGetInt64();
  v5 = Int64 != 0;
  v6 = CFDictionaryGetInt64();
  if (!*(a1 + 441))
  {
    v7 = v3;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    if (v6)
    {
      v13 = __AirPlayReceiverSessionRemoveVolumeRequest_block_invoke;
      v14 = &__block_descriptor_tmp_7046;
      v16 = v7;
    }

    else
    {
      v13 = __AirPlayReceiverSessionRemoveMuteRequest_block_invoke;
      v14 = &__block_descriptor_tmp_236;
      LOBYTE(v16) = Int64 != 0;
    }

    v15 = a1;
    if (_RemoveVolumeOrMuteRequest(a1, v12))
    {
      if (!APSVolumeSliderValuesAreNoticeablyDifferent() && *(a1 + 716) == v5)
      {
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return;
      }

      Int64Ranged = CFObjectGetInt64Ranged();
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt();
        return;
      }

      v10 = Mutable;
      CFDictionarySetDouble();
      if (*(a1 + 754))
      {
        v11 = MEMORY[0x277CBED28];
        if (!Int64)
        {
          v11 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v10, @"isMuted", *v11);
      }

      if (Int64Ranged > 0x36193D)
      {
        if (!AirPlayReceiverSessionSendMediaRemoteCommand(a1, -1, 1685482595, v10))
        {
          if (gLogCategory_AirPlayReceiverCore > 50 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_32;
          }

LABEL_28:
          LogPrintF();
LABEL_32:
          *(a1 + 712) = v7;
          *(a1 + 716) = v5;
LABEL_33:
          CFRelease(v10);
          return;
        }
      }

      else if (!AirPlayReceiverServerSendDACPCommands())
      {
        if (gLogCategory_AirPlayReceiverCore > 50 || gLogCategory_AirPlayReceiverCore == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      }

      APSLogErrorAt();
      goto LABEL_33;
    }
  }
}

uint64_t APReceiverRequestProcessorCopyProperty_7067(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 0;
  }

  return v6(a1, a2, a3);
}

uint64_t APNetworkClockNTPClientLegacyCreate(uint64_t a1, int a2, int a3, uint64_t a4, int a5, void *a6)
{
  APSNetworkClockGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v26 = v10;
LABEL_57:
    APSLogErrorAt();
    return v26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = 0;
  v12 = FigSimpleMutexCreate();
  *DerivedStorage = v12;
  if (!v12)
  {
    APSLogErrorAt();
    return 4294895326;
  }

  pthread_once(&gAirTunesRegisterClassOnce, _AirTunesClock_RegisterClass);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt();
    v26 = 4294960568;
    goto LABEL_57;
  }

  v14 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 40) = 0;
  *(Instance + 48) = 0;
  *(Instance + 56) = 0;
  v15 = UpTicksPerSecond();
  *(v14 + 64) = v15;
  *(v14 + 72) = 0xFFFFFFFFFFFFFFFFLL / v15;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0;
  *(v14 + 128) = 1;
  v16 = pthread_mutex_init((v14 + 152), 0);
  if (v16)
  {
    v26 = v16;
LABEL_45:
    APSLogErrorAt();
    CFRelease(v14);
    goto LABEL_57;
  }

  *(v14 + 216) = v14 + 152;
  *(v14 + 224) = 1;
  v17 = pthread_create((v14 + 136), 0, _AirTunesClock_Thread, v14);
  if (v17)
  {
    v26 = v17;
    goto LABEL_45;
  }

  *(v14 + 144) = v14 + 136;
  if (gLogCategory_AirTunesClock <= 10 && (gLogCategory_AirTunesClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(DerivedStorage + 16) = v14;
  if (gLogCategory_APReceiverNTPClient <= 30 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (gAPReceiverNTPClientInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverNTPClientInitOnce, 0, _APReceiverNTPClientGetTypeID);
  }

  memset(v32, 0, 28);
  v18 = _CFRuntimeCreateInstance();
  v19 = v18;
  if (!v18)
  {
    APSLogErrorAt();
    v26 = 4294960568;
    goto LABEL_51;
  }

  v18[19] = 0u;
  v18[20] = 0u;
  v18[17] = 0u;
  v18[18] = 0u;
  v18[15] = 0u;
  v18[16] = 0u;
  v18[13] = 0u;
  v18[14] = 0u;
  v18[11] = 0u;
  v18[12] = 0u;
  v18[9] = 0u;
  v18[10] = 0u;
  v18[7] = 0u;
  v18[8] = 0u;
  v18[5] = 0u;
  v18[6] = 0u;
  v18[3] = 0u;
  v18[4] = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  v20 = CFRetain(v14);
  *(v19 + 2) = v20;
  if (v20)
  {
    v21 = CFGetTypeID(v20);
    pthread_once(&gAirTunesRegisterClassOnce, _AirTunesClock_RegisterClass);
    if (v21 != gAirTunesClockTypeID)
    {
      v26 = 4294895155;
      goto LABEL_50;
    }
  }

  SockAddrCopy();
  v22 = ServerSocketOpen();
  if (v22)
  {
    v26 = v22;
LABEL_50:
    APSLogErrorAt();
LABEL_51:
    if (gLogCategory_APReceiverNTPClient <= 60 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v19)
    {
      CFRelease(v19);
    }

    goto LABEL_57;
  }

  if (a3)
  {
    SocketSetP2P();
  }

  SocketSetPacketTimestamps();
  if (!a2)
  {
    SocketSetQoS();
  }

  *(v19 + 8) = a5;
  SockAddrSetPort();
  *(v19 + 36) = v32[0];
  v19[3] = *&v32[0].sa_data[10];
  Size = SockAddrGetSize();
  *(v19 + 16) = Size;
  if (!connect(*(v19 + 6), v32, Size))
  {
    goto LABEL_28;
  }

  v24 = *__error();
  if (!v24)
  {
    goto LABEL_33;
  }

  if (*__error())
  {
    LOBYTE(v24) = 0;
  }

  else
  {
LABEL_28:
    *&v29.sa_len = 0;
    *&v29.sa_data[6] = 0;
    v31 = 0;
    v30 = 0;
    v28 = 28;
    getsockname(*(v19 + 6), &v29, &v28);
    if (gLogCategory_APReceiverNTPClient <= 50 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    LOBYTE(v24) = 1;
  }

LABEL_33:
  *(v19 + 68) = v24;
  v25 = OpenSelfConnectedLoopbackSocket();
  if (v25)
  {
    v26 = v25;
    goto LABEL_50;
  }

  if (gLogCategory_APReceiverNTPClient <= 30 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v26 = 0;
  *(DerivedStorage + 8) = v19;
  *a6 = 0;
  return v26;
}

uint64_t ntpClientLegacy_StopForClient()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    *(DerivedStorage + 24) = 0;
    v1 = APReceiverNTPClientStop(*(DerivedStorage + 8));
    if (v1)
    {
      v2 = v1;
      APSLogErrorAt();
      goto LABEL_8;
    }

    if (gLogCategory_APNetworkClockNTPClientLegacy <= 50 && (gLogCategory_APNetworkClockNTPClientLegacy != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v2 = 0;
LABEL_8:
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t ntpClientLegacy_StartForClient()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
LABEL_78:
    v8 = 0;
    goto LABEL_66;
  }

  v1 = *(DerivedStorage + 8);
  v2 = *(v1 + 24);
  v20.tv_sec = 0;
  *&v20.tv_usec = 0;
  if (!*(v1 + 88))
  {
    v17 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v4 = 0;
    v5 = 0;
    memset(&v21, 0, sizeof(v21));
    while (2)
    {
      v18 = v5;
      v19 = v3;
      v6 = 64;
      while (1)
      {
        v7 = ntpClient_sendRequest(v1);
        if (!v7)
        {
          break;
        }

        v8 = v7;
        if (gLogCategory_APReceiverNTPClient <= 60 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        usleep(0x186A0u);
        if (v8 != v4)
        {
          v4 = v8;
          if (gLogCategory_APReceiverNTPClient <= 50)
          {
            if (gLogCategory_APReceiverNTPClient != -1 || (v4 = v8, _LogCategory_Initialize()))
            {
              LogPrintF();
              v4 = v8;
            }
          }
        }

        if (!--v6)
        {
          if (gLogCategory_APReceiverNTPClient <= 90 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_65;
        }
      }

      while (1)
      {
        if (__darwin_check_fd_set_overflow(v2, &v21, 0))
        {
          v21.fds_bits[v2 >> 5] |= 1 << v2;
        }

        v20.tv_sec = 0;
        v20.tv_usec = 500000;
        v9 = select(v2 + 1, &v21, 0, 0, &v20);
        if (v9 > 0)
        {
          break;
        }

        if (v9)
        {
          if (*__error())
          {
            v10 = *__error();
            if (!v10)
            {
              break;
            }
          }

          else
          {
            v10 = -6700;
          }
        }

        else
        {
          v10 = -6722;
        }

        if (gLogCategory_APReceiverNTPClient <= 60 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v10 != 4)
        {
          ++v17;
          v3 = (v19 + 1);
          if (v10 == v18)
          {
            v10 = v18;
          }

          else if (gLogCategory_APReceiverNTPClient <= 50 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_55;
        }
      }

      v11 = ntpClient_receiveResponse();
      if (v11)
      {
        v8 = v11;
        if (v11 == 61)
        {
          goto LABEL_65;
        }

        if (gLogCategory_APReceiverNTPClient <= 60 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v12 = v18;
        if (v8 != v18)
        {
          if (gLogCategory_APReceiverNTPClient <= 50 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v12 = v8;
        }

        ++v16;
        v3 = (v19 + 1);
        if (v8 == -6730)
        {
          v10 = v12;
          DrainUDPSocket();
        }

        else
        {
          v10 = v12;
        }

        goto LABEL_55;
      }

      v3 = v19;
      if (v15 <= 1)
      {
        ++v15;
        v10 = v18;
LABEL_55:
        v5 = v10;
        if (v3 < 64)
        {
          continue;
        }

        if (gLogCategory_APReceiverNTPClient > 90)
        {
          v8 = 4294960574;
        }

        else
        {
          if (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize())
          {
            LogPrintF();
          }

          v8 = 4294960574;
        }

        goto LABEL_65;
      }

      break;
    }

    v14 = pthread_create((v1 + 80), 0, ntpClient_thread, v1);
    if (v14)
    {
      v8 = v14;
      APSLogErrorAt();
      goto LABEL_65;
    }

    *(v1 + 88) = v1 + 80;
    if (gLogCategory_APReceiverNTPClient <= 30 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(DerivedStorage + 24) = 1;
    if (gLogCategory_APNetworkClockNTPClientLegacy <= 50 && (gLogCategory_APNetworkClockNTPClientLegacy != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_78;
  }

  APSLogErrorAt();
  v8 = 4294895154;
LABEL_65:
  APSLogErrorAt();
LABEL_66:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t ntpClientLegacy_ConvertNetworkTimeToUpTicks(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    *(&v7 + 1) = *(a2 + 16);
    *&v7 = *(a2 + 8);
    v6 = v7 >> 32;
    v8 = *(DerivedStorage + 16);
    v13 = 0;
    v14 = 0;
    AirTunesClock_GetSynchronizedTime(v8, &v13);
    *(&v7 + 1) = v13;
    *&v7 = v14;
    v9 = mach_absolute_time();
    if ((v7 >> 32) <= v6)
    {
      v10 = NTPtoUpTicks() + v9;
    }

    else
    {
      v10 = v9 - NTPtoUpTicks();
    }

    v11 = 0;
    *a3 = v10;
  }

  else
  {
    APSLogErrorAt();
    v11 = 4294895323;
  }

  FigSimpleMutexUnlock();
  return v11;
}

uint64_t ntpClientLegacy_ConvertUpTicksToNetworkTime(uint64_t a1, unint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    v10 = 0;
    v11 = 0;
    AirTunesClock_GetSynchronizedTimeNearUpTicks(*(DerivedStorage + 16), &v10, a2);
    v6 = 0;
    *(&v8 + 1) = v10;
    *&v8 = v11;
    v7 = v8 >> 32;
    *a3 = 0;
    a3[1] = v7 << 32;
    a3[2] = HIDWORD(v7);
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294895323;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t ntpClientLegacy_GetSynchronizedNetworkTime(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    v8 = 0;
    v9 = 0;
    AirTunesClock_GetSynchronizedTime(*(DerivedStorage + 16), &v8);
    v4 = 0;
    *(&v6 + 1) = v8;
    *&v6 = v9;
    v5 = v6 >> 32;
    *a2 = 0;
    a2[1] = v5 << 32;
    a2[2] = HIDWORD(v5);
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294895323;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t ntpClientLegacy_CopyProperty(int a1, CFTypeRef cf1, uint64_t a3, CFTypeRef *a4)
{
  if (CFEqual(cf1, *MEMORY[0x277CEA260]))
  {
    v6 = MEMORY[0x277CEA268];
  }

  else
  {
    if (!CFEqual(cf1, *MEMORY[0x277CEA248]))
    {
      v7 = 4294954509;
      APSLogErrorAt();
      return v7;
    }

    v6 = MEMORY[0x277CBED28];
  }

  v7 = 0;
  *a4 = CFRetain(*v6);
  return v7;
}

__CFString *ntpClientLegacy_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APNTPClientLegacy %p>", a1);
  return Mutable;
}

uint64_t ntpClientLegacy_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[1];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[1] = 0;
  }

  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[2] = 0;
  }

  result = FigSimpleMutexDestroy();
  *DerivedStorage = 0;
  return result;
}

uint64_t APPairingServicesCoreUtilsCreate(uint64_t a1, char a2, void *a3)
{
  if (APPairingServicesGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APPairingServicesGetClassID_sRegisterOnce, &APPairingServicesGetClassID_sClassID, pairingServices_registerBaseClass);
  }

  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    APSLogErrorAt();
  }

  else
  {
    *(CMBaseObjectGetDerivedStorage() + 40) = a2;
    if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *a3 = 0;
  }

  return v5;
}

uint64_t coreUtilsPairing_Reset()
{
  CMBaseObjectGetDerivedStorage();
  coreUtilsPairing_resetInternal();
  return 0;
}

void coreUtilsPairing_resetInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
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

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }
}

uint64_t coreUtilsPairing_DeriveKey()
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v0 = PairingSessionDeriveKey();
    if (v0)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895104;
  }

  return v0;
}

uint64_t coreUtilsPairing_HandleVerify(int a1, CFDataRef theData, void *a3, _BYTE *a4)
{
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v8 = DerivedStorage;
    *a3 = 0;
    if (*(DerivedStorage + 8))
    {
LABEL_27:
      v11 = PairingSessionExchange();
      if (!v11)
      {
        if (*a4 && gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return 0;
      }

      v12 = v11;
      goto LABEL_38;
    }

    v9 = PairingSessionCreate();
    if (v9)
    {
      v12 = v9;
LABEL_38:
      APSLogErrorAt();
      goto LABEL_39;
    }

    if (gLogCategory_APPairingServicesCoreUtils <= 40 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(v8 + 41))
    {
      PairingSessionSetSignBytesHandler_b();
      PairingSessionSetVerifySignatureHandler_b();
    }

    else if (!*(v8 + 42))
    {
      v10 = 0;
      if (!*(v8 + 43))
      {
LABEL_18:
        if (*(v8 + 48))
        {
          if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          PairingSessionSetACL();
        }

        if ((v10 & 1) == 0)
        {
          PairingSessionSetKeychainInfo();
        }

        PairingSessionSetLogging();
        goto LABEL_27;
      }

LABEL_12:
      PairingSessionSetFlags();
      if (gLogCategory_APPairingServicesCoreUtils <= 40 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_18;
    }

    v10 = 1;
    goto LABEL_12;
  }

  APSLogErrorAt();
  v12 = 4294895105;
LABEL_39:
  if (gLogCategory_APPairingServicesCoreUtils <= 90 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v12;
}

uint64_t coreUtilsPairing_HandleSetup(int a1, const __CFString *a2, int a3, CFDataRef theData, void *a5, _BYTE *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *buffer = 0u;
  v24 = 0u;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = DerivedStorage;
  if (!a5)
  {
    v21 = 4294895105;
LABEL_52:
    APSLogErrorAt();
    goto LABEL_53;
  }

  *a5 = 0;
  if (!*DerivedStorage)
  {
    if (*(DerivedStorage + 43))
    {
      v13 = 12;
    }

    else
    {
      v13 = 0;
    }

    if (a3)
    {
      v14 = 16;
    }

    else
    {
      v14 = 134217744;
    }

    if (*(DerivedStorage + 44))
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 | v13;
    if (*(DerivedStorage + 40))
    {
      v17 = v16 | 0x8000000;
    }

    else
    {
      v17 = v16;
    }

    v18 = PairingSessionCreate();
    if (v18)
    {
      v21 = v18;
      goto LABEL_52;
    }

    if (gLogCategory_APPairingServicesCoreUtils <= 40 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v17)
    {
      PairingSessionSetFlags();
      if (gLogCategory_APPairingServicesCoreUtils <= 40 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    if (*(v12 + 48))
    {
      if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      PairingSessionSetACL();
    }

    PairingSessionSetKeychainInfo();
    PairingSessionSetLogging();
  }

  CFStringGetCString(a2, buffer, 128, 0x8000100u);
  if (!buffer[0])
  {
    v21 = 4294895105;
    goto LABEL_52;
  }

  if (!PairingSessionSetSetupCode())
  {
    v19 = PairingSessionExchange();
    if (!v19)
    {
      if (*a6)
      {
        if (*(v12 + 44))
        {
          v20 = *v12;
          *(v12 + 8) = *v12;
          if (v20)
          {
            CFRetain(v20);
          }
        }

        if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (*v12)
        {
          CFRelease(*v12);
          *v12 = 0;
        }
      }

      return 0;
    }

    v21 = v19;
    goto LABEL_52;
  }

  APSLogErrorAt();
  v21 = 4294895102;
LABEL_53:
  if (gLogCategory_APPairingServicesCoreUtils <= 90 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v21;
}

uint64_t coreUtilsPairing_SetProperty(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v14 = 4294895105;
LABEL_21:
    APSLogErrorAt();
    return v14;
  }

  v6 = DerivedStorage;
  if (!CFEqual(a2, @"pairingParams"))
  {
    return 4294954512;
  }

  if (!a3)
  {
    v14 = 4294895105;
    goto LABEL_21;
  }

  v7 = CFDictionaryGetInt64() != 0;
  v8 = CFDictionaryGetInt64() != 0;
  v9 = CFDictionaryGetInt64() != 0;
  v10 = CFDictionaryGetInt64() != 0;
  Value = CFDictionaryGetValue(a3, @"ACL");
  if (*(v6 + 41) != v7 || *(v6 + 42) != v8 || *(v6 + 43) != v9 || *(v6 + 44) != v10 || (v12 = *(v6 + 48), v12 != Value) && (!v12 || !Value || !CFEqual(v12, Value)))
  {
    CMBaseObjectGetDerivedStorage();
    coreUtilsPairing_resetInternal();
    *(v6 + 41) = v7;
    *(v6 + 42) = v8;
    *(v6 + 43) = v9;
    *(v6 + 44) = v10;
    v13 = *(v6 + 48);
    *(v6 + 48) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  return 0;
}

__CFString *coreUtilsPairing_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APPairingServicesCoreUtils '%@'>", *DerivedStorage);
  return Mutable;
}

void coreUtilsPairing_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  coreUtilsPairing_resetInternal();
  v1 = *(DerivedStorage + 48);
  if (v1)
  {
    CFRelease(v1);
  }

  if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t APPairingServicesCoreUtilsHandleAddPeer(int a1, const __CFData *a2, void *a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = coreUtilsPairing_handleAdminRequest(a1, 10, (DerivedStorage + 16), a2, a3, a4);
  if (v9)
  {
    APSLogErrorAt();
  }

  return v9;
}

uint64_t coreUtilsPairing_handleAdminRequest(int a1, int a2, CFTypeRef *a3, CFDataRef theData, void *a5, _BYTE *a6)
{
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    APSLogErrorAt();
    return 4294895105;
  }

  *a5 = 0;
  if (!*a3)
  {
    v10 = PairingSessionCreate();
    if (v10)
    {
      v12 = v10;
      goto LABEL_18;
    }

    PairingSessionSetLogging();
  }

  v11 = PairingSessionExchange();
  if (v11)
  {
    v12 = v11;
LABEL_18:
    APSLogErrorAt();
    return v12;
  }

  if (*a6)
  {
    if (*a3)
    {
      CFRelease(*a3);
      *a3 = 0;
    }

    if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return 0;
}

uint64_t APPairingServicesCoreUtilsHandleRemovePeer(int a1, const __CFData *a2, void *a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = coreUtilsPairing_handleAdminRequest(a1, 12, (DerivedStorage + 24), a2, a3, a4);
  if (v9)
  {
    APSLogErrorAt();
  }

  return v9;
}

uint64_t APPairingServicesCoreUtilsHandleListPeers(int a1, const __CFData *a2, void *a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = coreUtilsPairing_handleAdminRequest(a1, 14, (DerivedStorage + 32), a2, a3, a4);
  if (v9)
  {
    APSLogErrorAt();
  }

  return v9;
}

uint64_t APPairingServicesLegacyCreate(uint64_t a1, void *a2)
{
  if (APPairingServicesGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APPairingServicesGetClassID_sRegisterOnce, &APPairingServicesGetClassID_sClassID, pairingServices_registerBaseClass);
  }

  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    APSLogErrorAt();
  }

  else
  {
    if (gLogCategory_APPairingServicesLegacy <= 50 && (gLogCategory_APPairingServicesLegacy != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *a2 = 0;
  }

  return v3;
}

uint64_t legacyPairing_Reset()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  return 0;
}

uint64_t legacyPairing_DeriveKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v7 = 4294895104;
    goto LABEL_7;
  }

  if (a6 != 16)
  {
    APSLogErrorAt();
    return 4294895105;
  }

  v7 = PCFdAVst();
  if (v7)
  {
LABEL_7:
    APSLogErrorAt();
  }

  return v7;
}

uint64_t legacyPairing_HandleVerify(int a1, CFDataRef theData, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    APSLogErrorAt();
    return 4294895105;
  }

  *a3 = 0;
  if (!*(DerivedStorage + 8) && gQblcfSzZBQsYCCV())
  {
    v7 = 4294895104;
    goto LABEL_10;
  }

  v6 = VBAEFt();
  if (v6)
  {
    v7 = v6;
LABEL_10:
    APSLogErrorAt();
    return v7;
  }

  return 0;
}

uint64_t legacyPairing_HandleSetup(int a1, uint64_t a2, int a3, CFDataRef theData, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    APSLogErrorAt();
    return 4294895105;
  }

  *a5 = 0;
  if (*DerivedStorage)
  {
    if (a2)
    {
      goto LABEL_4;
    }

    return h4BvW7X();
  }

  if (gQblcfSzZBQsYCCV())
  {
    APSLogErrorAt();
    return 4294895104;
  }

  if (!a2)
  {
    return h4BvW7X();
  }

LABEL_4:
  v9 = GvMGlTNs();
  if (v9)
  {
    v12 = v9;
LABEL_19:
    APSLogErrorAt();
    return v12;
  }

  v10 = SrtySZG0();
  if (v10 == -6760 || v10 == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 4294895103;
  }

  if (v12)
  {
    goto LABEL_19;
  }

  return 0;
}

__CFString *legacyPairing_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APPairingServicesLegacy '%@'>", *DerivedStorage);
  return Mutable;
}

uint64_t legacyPairing_Finalize(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = v4;
  if (*(v4 + 24))
  {
    v6 = *(v5 + 40);

    return v6(a1);
  }

  return result;
}

uint64_t APReceiverSessionManagerGetTypeID()
{
  if (APReceiverSessionManagerGetTypeID_once != -1)
  {
    dispatch_once(&APReceiverSessionManagerGetTypeID_once, &__block_literal_global_7471);
  }

  return APReceiverSessionManagerGetTypeID_typeID;
}

uint64_t __APReceiverSessionManagerGetTypeID_block_invoke()
{
  APReceiverSessionManagerGetTypeID_SessionManagerClass = 0;
  unk_28130A260 = "APReceiverSessionManager";
  qword_28130A268 = 0;
  unk_28130A270 = 0;
  qword_28130A278 = sessionManager_Finalize;
  unk_28130A280 = 0u;
  unk_28130A290 = 0u;
  result = _CFRuntimeRegisterClass();
  APReceiverSessionManagerGetTypeID_typeID = result;
  return result;
}

uint64_t sessionManager_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(a1 + 16) = -1;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  result = pthread_mutex_destroy((a1 + 88));
  if (gLogCategory_APReceiverSessionManager <= 10)
  {
    if (gLogCategory_APReceiverSessionManager != -1)
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

void sessionManager_handleSenderSessionStateChangeNotification(int a1, CFTypeRef cf)
{
  CFRetain(cf);
  v3 = *(*(cf + 3) + 88);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __sessionManager_handleSenderSessionStateChangeNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_52_7480;
  block[4] = cf;
  dispatch_async(v3, block);
}

void __sessionManager_handleSenderSessionStateChangeNotification_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = APReceiverSystemInfoCopyProperty(*(*(*(a1 + 32) + 24) + 160), a2, @"LocalRouteInfo", 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = CFDictionaryGetInt64() != 0;
    Int64 = CFDictionaryGetInt64();
  }

  else
  {
    v5 = 0;
    Int64 = 0;
  }

  if (*(v4 + 41) == v5 && *(v4 + 44) == Int64)
  {
    goto LABEL_26;
  }

  *(v4 + 41) = v5;
  *(v4 + 44) = Int64;
  if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = *(v4 + 32);
  if (v7 != 1)
  {
    goto LABEL_18;
  }

  if ((v5 & 1) != 0 || Int64 == 1)
  {
    if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFObjectControlAsync();
    v7 = *(v4 + 32);
LABEL_18:
    if ((v7 | 2) == 2 && !IsAppleTV())
    {
      APSMultiPrimariesEnabled();
    }
  }

  if (gLogCategory_APReceiverSessionManager <= 40 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFObjectSetProperty();
LABEL_26:
  if (v3)
  {
    CFRelease(v3);
  }

  v8 = *(a1 + 32);

  CFRelease(v8);
}

uint64_t cfArrayContainsValue(const __CFArray *a1, const void *a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt();
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5.length = Count;
  v5.location = 0;

  return CFArrayContainsValue(a1, v5, a2);
}

void APReceiverSessionManagerUpdateParentGroupInfo(void *a1)
{
  v2 = a1[7];
  if (v2 && (v3 = *(*(CMBaseObjectGetVTable() + 16) + 64)) != 0 && (v4 = v3(v2, @"parentGroupInfo", 0)) != 0 || (v5 = a1[6]) != 0 && (v6 = *(*(CMBaseObjectGetVTable() + 16) + 64)) != 0 && (v4 = v6(v5, @"parentGroupInfo", 0)) != 0)
  {
    v7 = v4;
    v8 = *(a1[3] + 160);
    Value = CFDictionaryGetValue(v4, @"groupUUID");
    v10 = CFDictionaryGetInt64() != 0;
    v11 = CFDictionaryGetInt64() != 0;
    v12 = CFDictionaryGetInt64() != 0;
    v13 = CFDictionaryGetValue(v7, @"uglServerInfo");
    v14 = *(v8 + 16);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __APReceiverSystemInfoSetParentGroupInfo_block_invoke;
    v20 = &__block_descriptor_59_e5_v8__0l;
    v21 = v8;
    v22 = Value;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v23 = v13;
    dispatch_sync(v14, &v17);

    CFRelease(v7);
  }

  else
  {
    v15 = *(a1[3] + 160);
    v16 = *(v15 + 16);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __APReceiverSystemInfoResetParentGroupInfo_block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0l;
    v21 = v15;
    dispatch_sync(v16, &v17);
  }
}

void APReceiverSessionManagerSetAsMainAirPlaySession(uint64_t a1, const void *a2)
{
  if (a2 && cfArrayContainsValue(*(a1 + 64), a2))
  {
    v4 = *(a1 + 56);
    if (v4 == a2)
    {
      return;
    }

    if (v4)
    {
      if (CFEqual(a2, v4))
      {
        return;
      }

      v5 = *(a1 + 56);
      CFRetain(a2);
      *(a1 + 56) = a2;
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      CFRetain(a2);
      *(a1 + 56) = a2;
    }

    if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    APReceiverSessionManagerUpdateParentGroupInfo(a1);
    if (*(a1 + 56))
    {
      CFObjectSetProperty();
      if (APSIsMemberOfPersistentGroup())
      {
        v11 = 0;
        v6 = *(a1 + 56);
        if (v6)
        {
          v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (v7)
          {
            v8 = v7(v6, @"hijackID", &v11);
            if (v11)
            {
              APSLogErrorAt();
              if (!v8)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v8 = 0;
          }

          if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v10 = Mutable;
            CFDictionarySetValue(Mutable, @"hijackID", v8);
            AirPlayReceiverServerPlatformControl(*(a1 + 24), @"updateHijackID", 0, v10);
            CFRelease(v10);
            if (!v8)
            {
              goto LABEL_28;
            }
          }

          else
          {
            APSLogErrorAt();
            v11 = -6728;
            if (!v8)
            {
LABEL_28:
              if (v11)
              {
                APSLogErrorAt();
              }

              return;
            }
          }

LABEL_27:
          CFRelease(v8);
          goto LABEL_28;
        }
      }
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

uint64_t APReceiverSessionManagerUpdateAndNotifyReceiverSessionState(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 64)) < 1)
  {
    v2 = 0;
  }

  else if (APSMultiPrimariesEnabled())
  {
    v2 = 2;
  }

  else if (IsAppleTV())
  {
    CFArrayGetValueAtIndex(*(a1 + 64), 0);
    if (CFObjectGetInt64())
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 1;
  }

  cf = 0;
  CFArrayGetCount(*(a1 + 64));
  v3 = CFObjectSetPropertyInt64();
  if (v3)
  {
    v7 = v3;
LABEL_28:
    APSLogErrorAt();
    goto LABEL_22;
  }

  if (APSMultiPrimariesEnabled())
  {
    APReceiverSessionManagerCopyAirPlaySessionWithAttribute(a1, 5, &cf, 0);
    v6 = AirPlayReceiverServerPlatformSetProperty(*(a1 + 24), v4, @"mainMediaReceiverSession", v5, cf);
    if (v6)
    {
      v7 = v6;
      goto LABEL_28;
    }
  }

  if (*(a1 + 32) == v2)
  {
    v7 = 0;
  }

  else
  {
    if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 32) = v2;
    v8 = *(a1 + 16);
    if (v8 == -1)
    {
      v7 = 0;
    }

    else
    {
      notify_set_state(v8, v2);
      v7 = notify_post("com.apple.airplay.active");
    }

    CFObjectSetProperty();
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void APReceiverSessionManagerRemoveSession(uint64_t a1, const void *a2)
{
  if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  IndexOfValue = cfArrayGetIndexOfValue(*(a1 + 64), a2);
  if (IndexOfValue != -1)
  {
    v5 = IndexOfValue;
    v6 = *(a1 + 48);
    if (v6 == a2)
    {
      v8 = *(a1 + 72);
      if (v8 >= 2)
      {
        *(a1 + 72) = v8 - 1;
      }

      if (a2)
      {
        CFRelease(v6);
        *(a1 + 48) = 0;
      }

      if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_20;
      }
    }

    else if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
LABEL_20:
      LogPrintF();
    }

    v9 = *(a1 + 56);
    if (v9 == a2)
    {
      if (gLogCategory_APReceiverSessionManager <= 50)
      {
        if (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }

        v9 = *(a1 + 56);
      }

      if (v9)
      {
        CFRelease(v9);
        *(a1 + 56) = 0;
      }

      CFArrayRemoveValueAtIndex(*(a1 + 64), v5);
    }

    else
    {
      CFArrayRemoveValueAtIndex(*(a1 + 64), v5);
      if (v6 != a2)
      {
LABEL_38:

        APReceiverSessionManagerUpdateAndNotifyReceiverSessionState(a1);
        return;
      }
    }

    APReceiverSessionManagerUpdateParentGroupInfo(a1);
    goto LABEL_38;
  }

  v7 = cfArrayGetIndexOfValue(*(a1 + 80), a2);
  if (v7 != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 80), v7);
    if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

CFIndex cfArrayGetIndexOfValue(const __CFArray *a1, const void *a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt();
    return -1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return -1;
  }

  v5.length = Count;
  v5.location = 0;

  return CFArrayGetFirstIndexOfValue(a1, v5, a2);
}

void APReceiverSessionManagerCopyAirPlaySessionWithAttribute(uint64_t a1, int a2, void *a3, const void **a4)
{
  if (a2 == 1)
  {
    v7 = 0;
LABEL_3:
    v8 = (a1 + 48);
LABEL_4:
    v9 = *v8;
    goto LABEL_14;
  }

  NonPersistentSession = sessionManager_copyFirstNonPersistentSession(a1);
  v7 = NonPersistentSession;
  v9 = *(a1 + 56);
  if (a2 == 4)
  {
    if (v9)
    {
      v12 = *(a1 + 48);
      if (v9 == v12)
      {
        goto LABEL_10;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      if (CFEqual(*(a1 + 56), v12))
      {
LABEL_10:
        v9 = v7;
        goto LABEL_14;
      }

      v8 = (a1 + 56);
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  if (!v9)
  {
    v9 = NonPersistentSession;
  }

  if (!v9)
  {
    if (a2 == 5)
    {
      v13 = *(a1 + 48);
      v8 = (a1 + 48);
      if (v13 && CFObjectGetInt64())
      {
        goto LABEL_4;
      }
    }

    else if (!a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (!a3)
    {
      goto LABEL_28;
    }

    v9 = 0;
    goto LABEL_27;
  }

LABEL_14:
  if (a4 && v9)
  {
    *a4 = APReceiverRequestProcessorCopyReceiverSession();
  }

  if (a3)
  {
    if (v9)
    {
      CFRetain(v9);
    }

LABEL_27:
    *a3 = v9;
  }

LABEL_28:
  if (v7)
  {

    CFRelease(v7);
  }
}

CFTypeRef sessionManager_copyFirstNonPersistentSession(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 64));
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), v4);
    v6 = *(a1 + 48);
    if (ValueAtIndex != v6)
    {
      v7 = ValueAtIndex;
      v8 = !ValueAtIndex || v6 == 0;
      if (v8 || !CFEqual(ValueAtIndex, v6))
      {
        break;
      }
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return CFRetain(v7);
}

uint64_t APReceiverRequestProcessorCopyProperty_7555(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 0;
  }

  return v6(a1, a2, a3);
}

__CFArray *APReceiverSessionManagerCopyAllSessions(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v6.length = CFArrayGetCount(*(a1 + 80));
      v6.location = 0;
      CFArrayAppendArray(Mutable, v3, v6);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      v7.length = CFArrayGetCount(v4);
      v7.location = 0;
      CFArrayAppendArray(Mutable, v4, v7);
    }
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APReceiverSessionManager <= 60 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return Mutable;
}

BOOL APReceiverSessionManagerCanHijack(uint64_t a1, const void *a2)
{
  v4 = 1;
  if (CFObjectGetPropertyInt64Sync() && *(a1 + 72) >= 1 && CFArrayGetCount(*(a1 + 64)) == *(a1 + 72))
  {
    return cfArrayContainsValue(*(a1 + 64), a2) != 0;
  }

  return v4;
}

void APReceiverSessionManagerHijack(uint64_t a1, const void *a2)
{
  NonPersistentSession = sessionManager_copyFirstNonPersistentSession(a1);
  if (NonPersistentSession)
  {
    v5 = NonPersistentSession;
    if (!CFEqual(NonPersistentSession, a2))
    {
      AirPlayReceiverServerHijackConnection(*(a1 + 24), v5, a2);
    }

    CFRelease(v5);
  }
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x282114928](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}