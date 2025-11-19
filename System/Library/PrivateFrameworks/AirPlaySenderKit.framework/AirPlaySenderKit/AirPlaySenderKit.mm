uint64_t AudioSBufSourceGetTypeID()
{
  if (gAudioSBufSourceInitOnce != -1)
  {
    AudioSBufSourceGetTypeID_cold_1();
  }

  return gAudioSBufSourceTypeID;
}

uint64_t _AudioSBufSourceGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAudioSBufSourceTypeID = result;
  return result;
}

uint64_t AudioSBufSourceCreate(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (gAudioSBufSourceInitOnce != -1)
  {
    AudioSBufSourceGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    AudioSBufSourceCreate_cold_5();
    v22 = 4294960568;
    goto LABEL_20;
  }

  v8 = Instance;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v9 = (Instance + 32);
  *(Instance + 24) = CFStringCreateF();
  SNPrintF();
  *(v8 + 16) = dispatch_queue_create(label, 0);
  SNPrintF();
  v10 = dispatch_queue_create(label, 0);
  v11 = MEMORY[0x277CC08F0];
  *(v8 + 112) = *MEMORY[0x277CC08F0];
  *(v8 + 128) = *(v11 + 16);
  *(v8 + 136) = v10;
  v12 = *(a2 + 32);
  v13 = *(a2 + 16);
  *&v9->mSampleRate = *a2;
  *(v8 + 48) = v13;
  *(v8 + 64) = v12;
  *(v8 + 80) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (a3 <= 0)
  {
    v14 = 5;
  }

  else
  {
    v14 = a3;
  }

  *(v8 + 148) = v14;
  v15 = *MEMORY[0x277CBECE8];
  v16 = CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], v9, 0, 0, 0, 0, 0, (v8 + 72));
  if (v16)
  {
    v22 = v16;
    AudioSBufSourceCreate_cold_2();
    goto LABEL_17;
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    v22 = 4294954514;
LABEL_16:
    APSLogErrorAt();
LABEL_17:
    CFRelease(v8);
    goto LABEL_20;
  }

  v19 = v18(CMBaseObject, *MEMORY[0x277CC1840], v15, v8 + 88);
  if (v19)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v20 = FigEndpointAudioSourceBufferQueueCreate();
  if (v20)
  {
    v22 = v20;
    AudioSBufSourceCreate_cold_3();
    goto LABEL_17;
  }

  v21 = FigEndpointAudioSourceCopyProperty(*(v8 + 96), *MEMORY[0x277CD61C0], v15, v8 + 104);
  if (v21)
  {
    v22 = v21;
    AudioSBufSourceCreate_cold_4();
    goto LABEL_17;
  }

  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    v26 = *(v8 + 96);
    v25 = *(v8 + 24);
    LogPrintF();
  }

  v22 = 0;
  *a4 = v8;
LABEL_20:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t FigEndpointAudioSourceCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointAudioSourceGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = *(VTable + 8) + 48;

  return v9(CMBaseObject, a2, a3, a4);
}

uint64_t AudioSBufSourceEnqueueAudioData(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __AudioSBufSourceEnqueueAudioData_block_invoke;
  block[3] = &unk_278C65700;
  block[5] = a2;
  block[6] = a1;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __AudioSBufSourceEnqueueAudioData_block_invoke(uint64_t a1)
{
  Length = CFDataGetLength(*(a1 + 40));
  v3 = *(a1 + 48);
  CMTimeMake(&rhs, Length / *(v3 + 48), *(v3 + 32));
  v8 = *(v3 + 112);
  CMTimeAdd(&v10, &v8, &rhs);
  *(v3 + 112) = v10;
  memset(&v10, 0, sizeof(v10));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v10, HostTimeClock);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  rhs = v10;
  v8 = *(v5 + 112);
  result = ausrc_enqueueAudioDataInternal(v5, v6, &rhs.value, &v8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ausrc_enqueueAudioDataInternal(uint64_t a1, CFDataRef theData, __int128 *a3, CMTime *a4)
{
  if (*(a1 + 40) != 1819304813)
  {
    ausrc_enqueueAudioDataInternal_cold_1();
    return 4294960591;
  }

  if (theData)
  {
    v5 = atomic_load((a1 + 144));
    if (v5)
    {
      ausrc_enqueueAudioDataInternal_cold_2();
      return v5;
    }

    v23 = *a4;
    v25 = 0;
    sampleBufferOut = 0;
    Length = CFDataGetLength(theData);
    v8 = *(a1 + 48);
    v9 = Length / v8;
    if (!(Length % v8))
    {
      v10 = *MEMORY[0x277CBECE8];
      BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
      if (BlockBufferWithCFDataNoCopy)
      {
        v5 = BlockBufferWithCFDataNoCopy;
        ausrc_enqueueAudioDataInternal_cold_4();
      }

      else
      {
        v12 = *(a1 + 72);
        presentationTimeStamp = v23;
        v5 = CMAudioSampleBufferCreateReadyWithPacketDescriptions(v10, v25, v12, v9, &presentationTimeStamp, 0, &sampleBufferOut);
        if (!v5)
        {
          v13 = sampleBufferOut;
          sampleBufferOut = 0;
LABEL_8:
          if (v25)
          {
            CFRelease(v25);
          }

          if (v5)
          {
            ausrc_enqueueAudioDataInternal_cold_5();
          }

          else
          {
            v14 = CMBufferQueueEnqueue(*(a1 + 104), v13);
            if (v14)
            {
              v5 = v14;
              ausrc_enqueueAudioDataInternal_cold_6();
            }

            else
            {
              if (!*(a1 + 152))
              {
                *(a1 + 152) = 1;
                CFRetain(a1);
                v15 = *(a1 + 136);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 0x40000000;
                block[2] = __ausrc_enqueueAudioDataInternal_block_invoke;
                block[3] = &__block_descriptor_tmp_7;
                block[4] = a1;
                v21 = *a3;
                v22 = *(a3 + 2);
                dispatch_async(v15, block);
              }

              v5 = 0;
            }
          }

          if (v13)
          {
            CFRelease(v13);
          }

          return v5;
        }

        APSLogErrorAt();
        if (sampleBufferOut)
        {
          CFRelease(sampleBufferOut);
        }
      }

      v13 = 0;
      goto LABEL_8;
    }

    ausrc_enqueueAudioDataInternal_cold_3();
    v13 = 0;
    v5 = 4294960591;
    goto LABEL_8;
  }

  if (!*(a1 + 152))
  {
    return 0;
  }

  *(a1 + 152) = 0;
  v16 = MEMORY[0x277CC08F0];
  *(a1 + 112) = *MEMORY[0x277CC08F0];
  *(a1 + 128) = *(v16 + 16);
  v17 = *(a1 + 136);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 0x40000000;
  v19[2] = __ausrc_enqueueAudioDataInternal_block_invoke_2;
  v19[3] = &__block_descriptor_tmp_8;
  v19[4] = a1;
  dispatch_sync(v17, v19);
  CMBufferQueueReset(*(a1 + 104));
  v5 = atomic_load((a1 + 144));
  if (v5)
  {
    ausrc_enqueueAudioDataInternal_cold_7();
  }

  return v5;
}

uint64_t AudioSBufSourceEnqueueAudioDataWithTimestamps(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v5 = *(a1 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __AudioSBufSourceEnqueueAudioDataWithTimestamps_block_invoke;
  v8[3] = &unk_278C65728;
  v8[4] = &v12;
  v8[5] = a1;
  v8[6] = a4;
  v8[7] = a2;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = a5;
  dispatch_sync(v5, v8);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t __AudioSBufSourceEnqueueAudioDataWithTimestamps_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  CMTimeMake(&v7, *(a1 + 48), *(v2 + 32));
  *(v2 + 112) = v7;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v7 = *(a1 + 64);
  v6 = *(v3 + 112);
  result = ausrc_enqueueAudioDataInternal(v3, v4, &v7.value, &v6);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _AudioSBufSourceFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[9];
  if (v3)
  {
    CFRelease(v3);
    a1[9] = 0;
  }

  v4 = a1[10];
  if (v4)
  {
    CFRelease(v4);
    a1[10] = 0;
  }

  v5 = a1[11];
  if (v5)
  {
    CFRelease(v5);
    a1[11] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    CFRelease(v6);
    a1[12] = 0;
  }

  v7 = a1[13];
  if (v7)
  {
    CFRelease(v7);
    a1[13] = 0;
  }

  v8 = a1[17];
  if (v8)
  {
    dispatch_release(v8);
    a1[17] = 0;
  }

  v9 = a1[2];
  if (v9)
  {
    dispatch_release(v9);
    a1[2] = 0;
  }
}

void __ausrc_enqueueAudioDataInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *&v21.value = *(a1 + 40);
  v21.epoch = *(a1 + 56);
  v3 = *(v2 + 80);
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (gLogCategory_AirPlaySenderKit > 50 || gLogCategory_AirPlaySenderKit == -1 && !_LogCategory_Initialize())
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_22:
    __ausrc_enqueueAudioDataInternal_block_invoke_cold_6();
    v20 = -6709;
    goto LABEL_20;
  }

  __ausrc_enqueueAudioDataInternal_block_invoke_cold_1(v2);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_5:
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6280], *(v2 + 96));
  v7 = *MEMORY[0x277CE9EF0];
  time = v21;
  v8 = FigCFDictionarySetCMTime();
  if (v8)
  {
    v20 = v8;
    __ausrc_enqueueAudioDataInternal_block_invoke_cold_2();
LABEL_27:
    v15 = 0;
    goto LABEL_16;
  }

  v9 = *(v2 + 88);
  v10 = *(v2 + 148);
  v11 = FigEndpointStreamAudioEngineResumeSync();
  if (v11)
  {
    v20 = v11;
    __ausrc_enqueueAudioDataInternal_block_invoke_cold_3();
    goto LABEL_27;
  }

  v12 = *(v2 + 88);
  v13 = *(v2 + 148);
  v14 = FigEndpointStreamAudioEngineSetEndpointStreamSync();
  if (v14)
  {
    v20 = v14;
    __ausrc_enqueueAudioDataInternal_block_invoke_cold_4();
    goto LABEL_27;
  }

  time = **&MEMORY[0x277CC08F0];
  v15 = CMTimeCopyAsDictionary(&time, v5);
  v16 = *(v2 + 88);
  CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v18)
  {
    v19 = v18(CMBaseObject, *MEMORY[0x277CE9EE8], v15);
    if (!v19)
    {
      if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        __ausrc_enqueueAudioDataInternal_block_invoke_cold_5(v2);
      }

      v20 = 0;
      goto LABEL_16;
    }

    v20 = v19;
  }

  else
  {
    v20 = -12782;
  }

  APSLogErrorAt();
LABEL_16:
  CFRelease(v4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_20:
  atomic_store(v20, (v2 + 144));
  CFRelease(*(a1 + 32));
}

uint64_t __ausrc_enqueueAudioDataInternal_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    __ausrc_enqueueAudioDataInternal_block_invoke_2_cold_1(v1);
  }

  v2 = *(v1 + 88);
  v3 = *(v1 + 148);
  result = FigEndpointStreamAudioEngineSuspendSync();
  v5 = result;
  if (result)
  {
    result = __ausrc_enqueueAudioDataInternal_block_invoke_2_cold_2();
  }

  else if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __ausrc_enqueueAudioDataInternal_block_invoke_2_cold_3(v1);
    }
  }

  atomic_store(v5, (v1 + 144));
  return result;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return LogPrintF();
}

CFTypeRef APMediaSenderFVDSourceCreate()
{
  v6 = 0;
  v0 = *MEMORY[0x277CBECE8];
  FigVirtualDisplaySourceGetClassID();
  if (CMDerivedObjectCreate())
  {
    APMediaSenderFVDSourceCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 112) = 0;
    *(DerivedStorage + 16) = CFStringCreateF();
    v2 = dispatch_queue_create("APMediaSenderFVDSourceQueue", 0);
    *(DerivedStorage + 8) = v2;
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, v2);
    *(DerivedStorage + 80) = v3;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __APMediaSenderFVDSourceCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_0;
    handler[4] = DerivedStorage;
    dispatch_source_set_event_handler(v3, handler);
    dispatch_source_set_timer(*(DerivedStorage + 80), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 80));
    *(DerivedStorage + 116) = 1;
    if (!VTPixelTransferSessionCreate(v0, (DerivedStorage + 24)))
    {
      if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        APMediaSenderFVDSourceCreate_cold_3((DerivedStorage + 16));
      }

      return v6;
    }

    APMediaSenderFVDSourceCreate_cold_2();
  }

  if (v6)
  {
    CFRelease(v6);
    return 0;
  }

  return v6;
}

uint64_t __APMediaSenderFVDSourceCreate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 88))
  {
    return __APMediaSenderFVDSourceCreate_block_invoke_cold_2();
  }

  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    __APMediaSenderFVDSourceCreate_block_invoke_cold_1(v1);
  }

  v2 = *(v1 + 96);
  v3 = *(v1 + 104);

  return fvdsrc_submitPixelBufferInternal(v1, v2, v3);
}

uint64_t APMediaSenderFDVSourceSetDisplayInfoBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a3)
  {
    v6 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APMediaSenderFDVSourceSetDisplayInfoBlock_block_invoke;
    block[3] = &unk_278C657B0;
    block[4] = a3;
    block[5] = DerivedStorage;
    block[6] = a2;
    dispatch_sync(v6, block);
    return 0;
  }

  else
  {
    APMediaSenderFDVSourceSetDisplayInfoBlock_cold_1();
    return 4294955226;
  }
}

void __APMediaSenderFDVSourceSetDisplayInfoBlock_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = _Block_copy(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[5];
  v5 = *(v4 + 32);
  if (v5)
  {
    _Block_release(v5);
    v4 = a1[5];
  }

  *(v4 + 32) = v3;
  if (a1[6])
  {
    v6 = a1[6];
  }

  else
  {
    v6 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v6);
  v7 = a1[5];
  v8 = *(v7 + 40);
  if (v8)
  {
    dispatch_release(v8);
    v7 = a1[5];
  }

  *(v7 + 40) = v6;
}

uint64_t APMediaSenderFDVSourceSetWritebackMode(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderFDVSourceSetWritebackMode_block_invoke;
  block[3] = &unk_278C657D8;
  v8 = a2;
  block[4] = &v9;
  block[5] = DerivedStorage;
  dispatch_sync(v4, block);
  v5 = 0;
  if (*(v10 + 6))
  {
    APSLogErrorAt();
    v5 = *(v10 + 6);
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __APMediaSenderFDVSourceSetWritebackMode_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 112))
  {
    *(*(*(result + 32) + 8) + 24) = -12070;
    return result;
  }

  *(v2 + 116) = *(result + 48);
  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
LABEL_5:
      v3 = *(v2 + 16);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      v4 = *(v2 + 116);
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t APMediaSenderFDVSourceSubmitPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __APMediaSenderFDVSourceSubmitPixelBuffer_block_invoke;
  v9[3] = &unk_278C65800;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __APMediaSenderFDVSourceSubmitPixelBuffer_block_invoke(uint64_t a1)
{
  result = fvdsrc_submitPixelBufferInternal(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t fvdsrc_submitPixelBufferInternal(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  destinationBuffer = 0;
  v6 = *(a1 + 112);
  if (v6 != 2)
  {
    if (!v6)
    {
      APSLogErrorAt();
      goto LABEL_20;
    }

    v25 = -12072;
    goto LABEL_22;
  }

  if (!pixelBuffer)
  {
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      fvdsrc_submitPixelBufferInternal_cold_2(a1);
    }

    v20 = 0;
    v21 = v19;
    Width = v18;
    v23 = v17;
    v24 = v16;
LABEL_18:
    v31 = *a1;
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v32)
    {
      v33 = v32(v31, v20, a3, 0, 0, v24, v23, Width, v21, v16, v17, v18, v19);
      if (!v33)
      {
LABEL_20:
        fvdsrc_stopRetrying(a1);
        v34 = 0;
        goto LABEL_34;
      }

      v25 = v33;
    }

    else
    {
      v25 = -12782;
    }

    goto LABEL_22;
  }

  if (!*(a1 + 116))
  {
    destinationBuffer = CFRetain(pixelBuffer);
LABEL_15:
    Width = CVPixelBufferGetWidth(destinationBuffer);
    Height = CVPixelBufferGetHeight(destinationBuffer);
    v21 = Height;
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    v29 = v27 / Width;
    if (v27 / Width >= v28 / Height)
    {
      v29 = v28 / Height;
    }

    v30 = (1.0 - *(a1 + 64)) * v29;
    v18 = v30 * Width;
    v19 = v30 * v21;
    v16 = (v27 - v30 * Width) * 0.5;
    v17 = (v28 - v30 * v21) * 0.5;
    v23 = 0.0;
    v20 = destinationBuffer;
    v24 = 0.0;
    goto LABEL_18;
  }

  v7 = *a1;
  v8 = CVPixelBufferGetWidth(pixelBuffer);
  v9 = CVPixelBufferGetHeight(pixelBuffer);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v10)
  {
    v11 = v10(v7, 0, 1, &destinationBuffer, v8, v9);
    if (!v11)
    {
      v12 = VTPixelTransferSessionTransferImage(*(a1 + 24), pixelBuffer, destinationBuffer);
      if (v12)
      {
        v25 = v12;
        fvdsrc_submitPixelBufferInternal_cold_1();
        goto LABEL_23;
      }

      v13 = destinationBuffer;
      v14 = CVBufferCopyAttachment(pixelBuffer, @"FVDFrameUserData", 0);
      if (v14)
      {
        v15 = v14;
        CVBufferSetAttachment(v13, @"FVDFrameUserData", v14, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v15);
      }

      goto LABEL_15;
    }

    v25 = v11;
  }

  else
  {
    v25 = -12782;
  }

LABEL_22:
  APSLogErrorAt();
LABEL_23:
  v35 = *(a1 + 80);
  v36 = dispatch_time(0, 50000000);
  dispatch_source_set_timer(v35, v36, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  v37 = *(a1 + 96);
  *(a1 + 96) = pixelBuffer;
  if (pixelBuffer)
  {
    CFRetain(pixelBuffer);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  *(a1 + 104) = a3;
  *(a1 + 88) = 1;
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    v39 = *(a1 + 16);
    LogPrintF();
  }

  if (v25 == -12073)
  {
    v34 = 0;
  }

  else
  {
    v34 = v25;
  }

LABEL_34:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v34;
}

void fvdsrc_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 112))
  {
    if (gLogCategory_AirPlaySenderKit > 100 || gLogCategory_AirPlaySenderKit == -1 && !_LogCategory_Initialize())
    {
LABEL_29:
      __break(1u);
LABEL_30:
      fvdsrc_finalize_cold_2(v1);
      __break(1u);
      return;
    }

    fvdsrc_finalize_cold_1(v1);
    __break(1u);
LABEL_26:
    if (v2 <= 100 && (v2 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v2 = gLogCategory_AirPlaySenderKit;
  if (*DerivedStorage)
  {
    goto LABEL_26;
  }

  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    fvdsrc_finalize_cold_3(v1);
  }

  v3 = *(v1 + 80);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(v1 + 80));
    *(v1 + 80) = 0;
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    _Block_release(v4);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 96);
  if (v5)
  {
    CFRelease(v5);
    *(v1 + 96) = 0;
  }

  v6 = *(v1 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(v1 + 24) = 0;
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    CFRelease(v7);
    *(v1 + 16) = 0;
  }

  v8 = *(v1 + 40);
  if (v8)
  {
    dispatch_release(v8);
    *(v1 + 40) = 0;
  }

  v9 = *(v1 + 8);
  if (v9)
  {
    dispatch_release(v9);
    *(v1 + 8) = 0;
  }
}

uint64_t fvdsrc_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!CFEqual(*MEMORY[0x277CD6758], a2))
  {
    return 4294954512;
  }

  v5 = CFRetain(@"APMediaSenderFVDSource");
  result = 0;
  *a4 = v5;
  return result;
}

uint64_t fvdsrc_plugProcessor(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __fvdsrc_plugProcessor_block_invoke;
    block[3] = &unk_278C65828;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v8;
    dispatch_sync(v4, block);
    if (*(v9[0] + 24))
    {
      APSLogErrorAt();
      v5 = *(v9[0] + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    fvdsrc_plugProcessor_cold_1(v9);
    v5 = 4294955226;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fvdsrc_unplugProcessor(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __fvdsrc_unplugProcessor_block_invoke;
    block[3] = &unk_278C65850;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v8;
    dispatch_sync(v4, block);
    if (*(v9[0] + 24))
    {
      APSLogErrorAt();
      v5 = *(v9[0] + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    fvdsrc_unplugProcessor_cold_1(v9);
    v5 = 4294955226;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fvdsrc_start(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __fvdsrc_start_block_invoke;
  block[3] = &unk_278C65878;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = 0;
  if (*(v9 + 6))
  {
    APSLogErrorAt();
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fvdsrc_stop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __fvdsrc_stop_block_invoke;
  block[3] = &__block_descriptor_tmp_21;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t fvdsrc_suspend()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __fvdsrc_suspend_block_invoke;
  v4[3] = &unk_278C658E8;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t fvdsrc_resume()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __fvdsrc_resume_block_invoke;
  v4[3] = &unk_278C65910;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFTypeRef *__fvdsrc_plugProcessor_block_invoke(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (v2[28] || *v2)
  {
    *(*(result[4] + 1) + 24) = -12073;
  }

  else
  {
    result = CFRetain(result[6]);
    *v1[5] = v1[6];
  }

  return result;
}

void __fvdsrc_unplugProcessor_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 112) && (v3 = *v2, *v2 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *a1[5] = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void __fvdsrc_start_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 28) || (v3 = *v2) == 0)
  {
    *(*(a1[4] + 8) + 24) = -12070;
    return;
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = xmmword_23EB42B00;
  v25 = 60;
  v24 = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    v14 = -12782;
LABEL_18:
    APSLogErrorAt();
    goto LABEL_19;
  }

  v5 = v4(v3, &v29, &v28);
  if (v5)
  {
    v14 = v5;
    goto LABEL_18;
  }

  v6 = FigDisplayModes_LookupTimingModeIDByIndex();
  if (v6)
  {
    v14 = v6;
    __fvdsrc_start_block_invoke_cold_1();
    goto LABEL_19;
  }

  v7 = *v2;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    v14 = -12782;
    goto LABEL_18;
  }

  v9 = v8(v7, v27, v27);
  if (v9)
  {
    v14 = v9;
    goto LABEL_18;
  }

  DimensionsFromTimingMode = FigDisplayModes_ExtractDimensionsFromTimingMode();
  if (DimensionsFromTimingMode)
  {
    v14 = DimensionsFromTimingMode;
    __fvdsrc_start_block_invoke_cold_2();
  }

  else
  {
    FigDisplayModes_ExtractOverscanInfoFromTimingMode();
    FigDisplayModes_ExtractVSyncRateFromTimingMode();
    *(v2 + 3) = v26;
    v11 = v25;
    *(v2 + 18) = v25;
    v2[8] = 0;
    v12 = v2[4];
    if (v12)
    {
      v13 = v2[5];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __fvdsrc_init_block_invoke;
      block[3] = &unk_278C658A0;
      block[4] = v12;
      v22 = v26;
      v23 = v11;
      dispatch_async(v13, block);
    }

    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      v19 = v2[2];
      LogPrintF();
    }

    v14 = 0;
  }

LABEL_19:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  *(*(a1[4] + 8) + 24) = v14;
  if (!*(*(a1[4] + 8) + 24))
  {
    LOBYTE(block[0]) = 0;
    v15 = a1[6];
    v16 = *MEMORY[0x277CD6608];
    FigCFDictionaryGetBooleanIfPresent();
    v17 = LOBYTE(block[0]) ? 1 : 2;
    v18 = a1[5];
    *(v18 + 112) = v17;
    if (gLogCategory_AirPlaySenderKit <= 50)
    {
      if (gLogCategory_AirPlaySenderKit != -1)
      {
LABEL_29:
        v20 = *(v18 + 16);
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        v18 = a1[5];
        goto LABEL_29;
      }
    }
  }
}

void __fvdsrc_stop_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 112))
  {
    fvdsrc_stopRetrying(v2);
    v3 = *(a1 + 32);
    *(v3 + 112) = 0;
    if (gLogCategory_AirPlaySenderKit <= 50)
    {
      if (gLogCategory_AirPlaySenderKit != -1)
      {
LABEL_4:
        v4 = *(v3 + 16);
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        v3 = *(a1 + 32);
        goto LABEL_4;
      }
    }
  }
}

void fvdsrc_stopRetrying(uint64_t a1)
{
  if (*(a1 + 88))
  {
    dispatch_source_set_timer(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v2 = *(a1 + 96);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 96) = 0;
    }

    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
  }
}

uint64_t __fvdsrc_suspend_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (!*(v2 + 112))
  {
    if (gLogCategory_AirPlaySenderKit <= 90)
    {
      if (gLogCategory_AirPlaySenderKit == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_11;
        }

        v2 = *(v1 + 40);
        v3 = *(v2 + 112);
      }

      v5 = *(v2 + 16);
      result = LogPrintF();
    }

LABEL_11:
    *(*(*(v1 + 32) + 8) + 24) = -12070;
    return result;
  }

  *(v2 + 112) = 1;
  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
LABEL_4:
      v4 = *(v2 + 16);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t __fvdsrc_resume_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 112) != 1)
  {
    if (gLogCategory_AirPlaySenderKit <= 90)
    {
      if (gLogCategory_AirPlaySenderKit == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_11;
        }

        v2 = *(v1 + 40);
        v3 = *(v2 + 112);
      }

      v5 = *(v2 + 16);
      result = LogPrintF();
    }

LABEL_11:
    *(*(*(v1 + 32) + 8) + 24) = -12070;
    return result;
  }

  *(v2 + 112) = 2;
  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
LABEL_4:
      v4 = *(v2 + 16);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      goto LABEL_4;
    }
  }

  return result;
}

void sub_23EB37998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EB3A32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 120));
  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

void remoteSessionHandleDeadConnection(void *a1)
{
  v1 = a1;
  if (gLogCategory_AirPlaySenderKit <= 100 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    remoteSessionHandleDeadConnection_cold_1();
  }

  v2 = v1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __remoteSessionHandleDeadConnection_block_invoke;
  block[3] = &unk_278C65968;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

uint64_t remoteSessionHandleServerMessage(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v7 = OpCode;
    remoteSessionHandleServerMessage_cold_1();
  }

  else
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = 4294960591;
  }

  return v7;
}

void remoteSessionHandleServerDeath()
{
  if (gLogCategory_AirPlaySenderKit <= 100 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    remoteSessionHandleServerDeath_cold_1();
  }

  os_unfair_lock_lock(&sRemoteClientLock);
  if (sRemoteClient)
  {
    CFRelease(sRemoteClient);
    sRemoteClient = 0;
  }

  os_unfair_lock_unlock(&sRemoteClientLock);
}

void __remoteSessionHandleDeadConnection_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 0;
  *(*(a1 + 32) + 64) = 0;
  v1 = *(a1 + 32);
  if (*(v1 + 56))
  {
    WeakRetained = objc_loadWeakRetained((v1 + 8));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = v5[2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __remoteSessionHandleDeadConnection_block_invoke_2;
      block[3] = &unk_278C65968;
      v8 = v5;
      dispatch_async(v6, block);
    }
  }
}

void __remoteSessionHandleDeadConnection_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained sessionDidFail:*(a1 + 32) withError:4294896154];
}

uint64_t APSKServiceSerializeFrame(__CVBuffer *a1, uint64_t a2, void *a3)
{
  v14 = 0u;
  v15 = 0u;
  empty = xpc_dictionary_create_empty();
  v7 = empty;
  bytes = a2;
  if (!a1)
  {
    xpc_dictionary_set_data(empty, "data", &bytes, 0x28uLL);
    goto LABEL_9;
  }

  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    XPCObject = IOSurfaceCreateXPCObject(IOSurface);
    if (XPCObject)
    {
      xpc_dictionary_set_value(v7, "surface", XPCObject);
      CVPixelBufferGetExtendedPixels(a1, &v14, &v14 + 1, &v15, &v15 + 1);
      v10 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
      xpc_dictionary_set_data(v7, "data", &bytes, 0x28uLL);
      if (v10)
      {
        v11 = FigXPCMessageSetCFDictionary();
        if (v11)
        {
          APSKServiceSerializeFrame_cold_1();
        }

        else
        {
          *a3 = v7;
        }

        CFRelease(v10);
        goto LABEL_10;
      }

LABEL_9:
      v11 = 0;
      *a3 = v7;
      goto LABEL_10;
    }

    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      APSKServiceSerializeFrame_cold_2();
    }

    v11 = 4294960534;
  }

  else
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      APSKServiceSerializeFrame_cold_3();
    }

    v11 = 4294960591;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  return v11;
}

uint64_t APSKServiceDeserializeFrame(void *a1, CVPixelBufferRef *a2, void *a3)
{
  length = 0;
  pixelBufferOut = 0;
  data = xpc_dictionary_get_data(a1, "data", &length);
  if (!data)
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      APSKServiceDeserializeFrame_cold_5();
    }

    goto LABEL_38;
  }

  if (length != 40)
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      APSKServiceDeserializeFrame_cold_1();
    }

    goto LABEL_38;
  }

  v7 = data;
  value = xpc_dictionary_get_value(a1, "surface");
  if (!value)
  {
    v19 = 0;
    Mutable = 0;
    *a3 = *v7;
    *a2 = 0;
    pixelBufferOut = 0;
    goto LABEL_23;
  }

  v9 = IOSurfaceLookupFromXPCObject(value);
  if (!v9)
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      APSKServiceDeserializeFrame_cold_4();
    }

LABEL_38:
    Mutable = 0;
    v19 = 4294960591;
    goto LABEL_23;
  }

  v10 = v9;
  v11 = FigXPCMessageCopyCFDictionary();
  if (v11)
  {
    v19 = v11;
    APSKServiceDeserializeFrame_cold_2();
    Mutable = 0;
  }

  else
  {
    if (v7[1] || v7[2] || v7[3] || v7[4])
    {
      v12 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v7[1])
      {
        v14 = *MEMORY[0x277CC4DB0];
        FigCFDictionarySetInt64();
      }

      if (v7[2])
      {
        v15 = *MEMORY[0x277CC4DB8];
        FigCFDictionarySetInt64();
      }

      if (v7[3])
      {
        v16 = *MEMORY[0x277CC4DC0];
        FigCFDictionarySetInt64();
      }

      if (v7[4])
      {
        v17 = *MEMORY[0x277CC4DA0];
        FigCFDictionarySetInt64();
      }
    }

    else
    {
      Mutable = 0;
      v12 = *MEMORY[0x277CBECE8];
    }

    v18 = CVPixelBufferCreateWithIOSurface(v12, v10, Mutable, &pixelBufferOut);
    if (v18)
    {
      v19 = v18;
      APSKServiceDeserializeFrame_cold_3();
    }

    else
    {
      v19 = 0;
      *a3 = *v7;
      *a2 = pixelBufferOut;
      pixelBufferOut = 0;
    }
  }

  CFRelease(v10);
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

LABEL_23:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v19;
}

uint64_t APMediaSenderGetTypeID()
{
  if (APMediaSenderGetTypeID_once != -1)
  {
    APMediaSenderGetTypeID_cold_1();
  }

  return APMediaSenderGetTypeID_typeID;
}

uint64_t __APMediaSenderGetTypeID_block_invoke()
{
  APMediaSenderGetTypeID_frameSenderClass = 0;
  *algn_27E380618 = "APMediaSender";
  qword_27E380620 = 0;
  unk_27E380628 = 0;
  qword_27E380630 = sender_finalize;
  unk_27E380638 = 0;
  qword_27E380640 = 0;
  unk_27E380648 = 0;
  qword_27E380650 = sender_copyDebugDescription;
  result = _CFRuntimeRegisterClass();
  APMediaSenderGetTypeID_typeID = result;
  return result;
}

void sender_finalize(uint64_t a1)
{
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    sender_finalize_cold_1();
  }

  if (*(a1 + 182))
  {
    if (gLogCategory_AirPlaySenderKit <= 100 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      sender_finalize_cold_2();
    }

    __break(1u);
  }

  else
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      _Block_release(v2);
      *(a1 + 120) = 0;
    }

    v3 = *(a1 + 128);
    if (v3)
    {
      _Block_release(v3);
      *(a1 + 128) = 0;
    }

    if (*(a1 + 136))
    {
      FigSimpleMutexDestroy();
      *(a1 + 136) = 0;
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 40) = 0;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 32) = 0;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 48) = 0;
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 56) = 0;
    }

    v8 = *(a1 + 104);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 104) = 0;
    }

    v9 = *(a1 + 112);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 112) = 0;
    }

    v10 = *(a1 + 152);
    if (v10)
    {
      dispatch_release(v10);
      *(a1 + 152) = 0;
    }

    v11 = *(a1 + 144);
    if (v11)
    {
      dispatch_release(v11);
      *(a1 + 144) = 0;
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      dispatch_release(v12);
      *(a1 + 24) = 0;
    }

    v13 = *(a1 + 16);
    if (v13)
    {
      dispatch_release(v13);
      *(a1 + 16) = 0;
    }
  }
}

CFStringRef sender_copyDebugDescription(uint64_t a1)
{
  ASPrintF();
  v2 = CFGetAllocator(a1);
  v3 = "yes";
  if (!*(a1 + 182))
  {
    v3 = "no";
  }

  v4 = CFStringCreateWithFormat(v2, 0, @"<APMediaSender %p %s>{ active: %s, usage modes: 0x%x }", a1, 0, v3, *(a1 + 168));
  free(0);
  return v4;
}

void *APMediaSenderCreate()
{
  v0 = *MEMORY[0x277CBECE8];
  if (APMediaSenderGetTypeID_once != -1)
  {
    APMediaSenderGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (!Instance)
  {
    APMediaSenderCreate_cold_4();
LABEL_14:
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      APMediaSenderCreate_cold_5();
      if (!v2)
      {
        return v2;
      }
    }

    else if (!v2)
    {
      return v2;
    }

    CFRelease(v2);
    return 0;
  }

  *(Instance + 32) = 0u;
  *(Instance + 176) = 0;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 16) = dispatch_queue_create("APMediaSenderQueue", 0);
  v2[3] = dispatch_queue_create("APMediaSenderCallbackQueue", 0);
  v2[19] = dispatch_semaphore_create(0);
  v2[17] = FigSimpleMutexCreate();
  if (APEndpointManagerCreate())
  {
    APMediaSenderCreate_cold_2();
    goto LABEL_14;
  }

  v3 = APMediaSenderFVDSourceCreate();
  v2[6] = v3;
  if (!v3)
  {
    APMediaSenderCreate_cold_3();
    goto LABEL_14;
  }

  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v2;
      }

      v5 = v2[6];
    }

    LogPrintF();
  }

  return v2;
}

uint64_t APMediaSenderSetAuthBlock(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderSetAuthBlock_block_invoke;
  block[3] = &unk_278C65BA8;
  block[5] = &v6;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APMediaSenderSetAuthBlock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 182))
  {
    __APMediaSenderSetAuthBlock_block_invoke_cold_1(a1);
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = _Block_copy(v3);
      v2 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 120);
    if (v5)
    {
      _Block_release(v5);
      v2 = *(a1 + 48);
    }

    *(v2 + 120) = v4;
  }
}

uint64_t APMediaSenderSetFailureBlock(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderSetFailureBlock_block_invoke;
  block[3] = &unk_278C65BD0;
  block[5] = &v6;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APMediaSenderSetFailureBlock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 182))
  {
    __APMediaSenderSetFailureBlock_block_invoke_cold_1(a1);
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = _Block_copy(v3);
      v2 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 128);
    if (v5)
    {
      _Block_release(v5);
      v2 = *(a1 + 48);
    }

    *(v2 + 128) = v4;
  }
}

uint64_t APMediaSenderSetDisplayInfoUpdateBlock(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderSetDisplayInfoUpdateBlock_block_invoke;
  block[3] = &unk_278C65BF8;
  block[5] = &v6;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APMediaSenderSetDisplayInfoUpdateBlock_block_invoke(uint64_t *a1)
{
  v2 = a1[6];
  if (*(v2 + 182))
  {
    return __APMediaSenderSetDisplayInfoUpdateBlock_block_invoke_cold_1(a1);
  }

  *(*(a1[5] + 8) + 24) = APMediaSenderFDVSourceSetDisplayInfoBlock(*(v2 + 48), *(v2 + 24), a1[4]);
  result = *(*(a1[5] + 8) + 24);
  if (result)
  {
    return __APMediaSenderSetDisplayInfoUpdateBlock_block_invoke_cold_2();
  }

  return result;
}

uint64_t APMediaSenderSetVideoPassthroughMode(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __APMediaSenderSetVideoPassthroughMode_block_invoke;
  v4[3] = &unk_278C65C20;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __APMediaSenderSetVideoPassthroughMode_block_invoke(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (*(v2 + 182))
  {
    return __APMediaSenderSetVideoPassthroughMode_block_invoke_cold_1(a1);
  }

  *(*(*(a1 + 32) + 8) + 24) = APMediaSenderFDVSourceSetWritebackMode(*(v2 + 48), 0);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __APMediaSenderSetVideoPassthroughMode_block_invoke_cold_2();
  }

  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
      return __APMediaSenderSetVideoPassthroughMode_block_invoke_cold_3(v3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __APMediaSenderSetVideoPassthroughMode_block_invoke_cold_3(v3);
    }
  }

  return result;
}

uint64_t APMediaSenderSetVideoOverrides(uint64_t a1, CFTypeRef cf)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (IsAppleInternalBuild())
      {
        v5 = *(a1 + 16);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __APMediaSenderSetVideoOverrides_block_invoke;
        block[3] = &unk_278C65C48;
        block[4] = &v9;
        block[5] = a1;
        block[6] = cf;
        dispatch_sync(v5, block);
      }
    }
  }

  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __APMediaSenderSetVideoOverrides_block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (*(v1 + 182))
  {
    __APMediaSenderSetVideoOverrides_block_invoke_cold_1(a1);
  }

  else
  {
    v3 = *(v1 + 104);
    v5 = (a1 + 48);
    v4 = *(a1 + 48);
    *(v1 + 104) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      __APMediaSenderSetVideoOverrides_block_invoke_cold_2(v2, v5);
    }
  }
}

uint64_t APMediaSenderSetAudioDescription(uint64_t a1, uint64_t a2, char a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __APMediaSenderSetAudioDescription_block_invoke;
    v6[3] = &unk_278C65C70;
    v6[4] = &v8;
    v6[5] = a1;
    v6[6] = a2;
    v7 = a3;
    dispatch_sync(v3, v6);
    v4 = *(v9 + 6);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __APMediaSenderSetAudioDescription_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 182))
  {
    return __APMediaSenderSetAudioDescription_block_invoke_cold_1(result);
  }

  v3 = *(result + 48);
  v4 = *v3;
  v5 = v3[1];
  *(v2 + 96) = *(v3 + 4);
  *(v2 + 64) = v4;
  *(v2 + 80) = v5;
  *(*(result + 40) + 180) = *(result + 56);
  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
LABEL_4:
      v7 = *(v1 + 48);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v6 = *(v1 + 40);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t APMediaSenderSetAuthString(uint64_t a1, const void *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v4 = *(a1 + 136);
  FigSimpleMutexLock();
  v5 = *(a1 + 144);
  if (v5)
  {
    dispatch_retain(*(a1 + 144));
    v6 = *(a1 + 112);
    *(a1 + 112) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 136);
    FigSimpleMutexUnlock();
    dispatch_semaphore_signal(v5);
    dispatch_release(v5);
  }

  else
  {
    v8 = *(a1 + 136);
    FigSimpleMutexUnlock();
    v9 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APMediaSenderSetAuthString_block_invoke;
    block[3] = &unk_278C65C98;
    block[4] = &v13;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v9, block);
  }

  if (*(v14 + 6))
  {
    APSLogErrorAt();
    v10 = *(v14 + 6);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v10;
}

void __APMediaSenderSetAuthString_block_invoke(void *a1)
{
  v1 = a1[5];
  if (*(v1 + 182))
  {
    *(*(a1[4] + 8) + 24) = -6709;
  }

  else
  {
    v2 = *(v1 + 112);
    v3 = a1[6];
    *(v1 + 112) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void APMediaSenderStart(uint64_t a1, CFTypeRef cf, int a3, int a4, int a5, uint64_t a6)
{
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    APMediaSenderStart_cold_1();
    if (!cf)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (cf)
  {
LABEL_5:
    CFRetain(cf);
  }

LABEL_6:
  v12 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderStart_block_invoke;
  block[3] = &unk_278C65CE8;
  v14 = a4;
  v15 = a5;
  block[5] = a1;
  block[6] = cf;
  v16 = a3;
  block[4] = a6;
  dispatch_async(v12, block);
}

void __APMediaSenderStart_block_invoke(uint64_t a1)
{
  v1 = a1;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(v2 + 168) = v4;
  if (*(a1 + 60))
  {
    v5 = *(a1 + 60);
  }

  else
  {
    v5 = 30;
  }

  *(v2 + 172) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v69 = 0;
  cf = 0;
  memset(v68, 0, sizeof(v68));
  if (!v6)
  {
    __APMediaSenderStart_block_invoke_cold_28();
LABEL_148:
    v11 = -6705;
    goto LABEL_117;
  }

  if (*(v2 + 182))
  {
    __APMediaSenderStart_block_invoke_cold_1();
    v6 = 0;
    v11 = -6709;
    goto LABEL_117;
  }

  if ((v4 & 3) == 0)
  {
    __APMediaSenderStart_block_invoke_cold_27();
    v6 = 0;
    goto LABEL_148;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = CFGetTypeID(v6);
        if (v8 == CFStringGetTypeID())
        {
          v65 = v1;
          if (gLogCategory_AirPlaySenderKit <= 50)
          {
            if (gLogCategory_AirPlaySenderKit == -1)
            {
              v9 = 0;
              if (!_LogCategory_Initialize())
              {
                goto LABEL_60;
              }
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_29;
          }

LABEL_30:
          v9 = 0;
          goto LABEL_60;
        }

        __APMediaSenderStart_block_invoke_cold_4();
LABEL_159:
        v11 = -6705;
        goto LABEL_116;
      }

LABEL_20:
      v11 = -6705;
      goto LABEL_115;
    }

    v12 = CFGetTypeID(v6);
    if (v12 != CFStringGetTypeID())
    {
      __APMediaSenderStart_block_invoke_cold_13();
      goto LABEL_159;
    }

    v65 = v1;
    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v80 = 0;
    v81 = &v80;
    v82 = 0x2000000000;
    v83 = 0;
    v78 = 0;
    v79 = 0;
    v77 = 0;
    TestInfoDictionary = APAdvertiserInfoCreateTestInfoDictionary();
    CFDictionarySetValue(TestInfoDictionary, *MEMORY[0x277CE4B90], v6);
    v15 = *MEMORY[0x277CE4B78];
    v16 = CFDictionaryCopyCString();
    if (*(v81 + 6))
    {
      __APMediaSenderStart_block_invoke_cold_14();
    }

    else
    {
      TextToHardwareAddressScalar();
      v17 = *MEMORY[0x277CBECE8];
      v18 = APAdvertiserInfoCreate();
      *(v81 + 6) = v18;
      if (!v18)
      {
        theArray = MEMORY[0x277D85DD0];
        v72 = 0x40000000;
        v73 = __createEndpointForNetworkAddress_block_invoke;
        v74 = &unk_278C65DA8;
        v75 = &v80;
        v76 = v79;
        CFDictionaryApplyBlock();
        Mutable = CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v20 = *MEMORY[0x277CE4CF0];
        CFDictionarySetInt64();
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4CF8], v79);
        v21 = *MEMORY[0x277CBED28];
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D08], *MEMORY[0x277CBED28]);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D10], v21);
        v22 = APSNetworkAddressCreateWithString();
        *(v81 + 6) = v22;
        if (v22)
        {
          __APMediaSenderStart_block_invoke_cold_16();
        }

        else
        {
          v23 = APTransportDeviceCreateWithNetworkAddress();
          *(v81 + 6) = v23;
          if (!v23)
          {
            v24 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v25 = APEndpointCreateWithTransportDevice();
            *(v81 + 6) = v25;
            if (v25)
            {
              __APMediaSenderStart_block_invoke_cold_18();
            }

            else if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
            {
              __APMediaSenderStart_block_invoke_cold_19();
            }

LABEL_45:
            free(v16);
            if (TestInfoDictionary)
            {
              CFRelease(TestInfoDictionary);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            if (v79)
            {
              CFRelease(v79);
            }

            if (v78)
            {
              CFRelease(v78);
            }

            if (v77)
            {
              CFRelease(v77);
            }

            v11 = *(v81 + 6);
            _Block_object_dispose(&v80, 8);
            if (v11)
            {
              __APMediaSenderStart_block_invoke_cold_20();
              goto LABEL_162;
            }

            v64 = v3;
            v6 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v40 = *MEMORY[0x277CBED28];
            CFDictionarySetValue(v6, *MEMORY[0x277CE9F10], *MEMORY[0x277CBED28]);
            if (*(v2 + 168))
            {
              CFDictionarySetValue(v6, *MEMORY[0x277CE9EF8], v40);
              CFDictionarySetValue(v6, *MEMORY[0x277CC09E8], *MEMORY[0x277CC11E0]);
              CFDictionarySetValue(v6, *MEMORY[0x277CE9F08], *(v2 + 48));
              v41 = *(v2 + 104);
              if (v41)
              {
                CFDictionarySetValue(v6, *MEMORY[0x277CE9F00], v41);
              }
            }

            v3 = v64;
            if ((*(v2 + 168) & 2) != 0)
            {
              if (!*(v2 + 72))
              {
                __APMediaSenderStart_block_invoke_cold_21();
                v11 = -6705;
                goto LABEL_111;
              }

              if (*(v2 + 180))
              {
                CFDictionarySetValue(v6, *MEMORY[0x277CC09E8], *MEMORY[0x277CC11E0]);
              }
            }

            v42 = *(v2 + 112);
            if (!v42)
            {
              goto LABEL_98;
            }

            v43 = *(v2 + 40);
            CMBaseObject = FigEndpointGetCMBaseObject();
            v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v45)
            {
              v46 = v45(CMBaseObject, *MEMORY[0x277CC1488], v42);
              if (!v46)
              {
LABEL_98:
                memset(&v68[1] + 8, 0, 40);
                *&v68[0] = v2;
                *(&v68[0] + 1) = sender_handleAuthRequiredCallback;
                *&v68[1] = sender_handleEndpointFailure;
                v47 = *(v2 + 40);
                v48 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                if (v48)
                {
                  v48(v47, v68);
                }

                v49 = *(v2 + 40);
                v50 = FigEndpointActivateSync();
                if (v50)
                {
                  v11 = v50;
                  __APMediaSenderStart_block_invoke_cold_22();
                }

                else
                {
                  v51 = *(v2 + 168);
                  if (v51)
                  {
                    v52 = *(v2 + 40);
                    v53 = *MEMORY[0x277CC1980];
                    StreamOfType = FigEndpointCopyFirstStreamOfType();
                    if (StreamOfType)
                    {
                      v11 = StreamOfType;
                      __APMediaSenderStart_block_invoke_cold_23();
                      goto LABEL_111;
                    }

                    CMNotificationCenterGetDefaultLocalCenter();
                    v55 = *MEMORY[0x277CC1808];
                    CMNotificationCenterAddListener();
                    v56 = FigEndpointStreamResume();
                    if (v56)
                    {
                      v11 = v56;
                      __APMediaSenderStart_block_invoke_cold_24();
                      goto LABEL_111;
                    }

                    v51 = *(v2 + 168);
                  }

                  if ((v51 & 2) != 0)
                  {
                    v57 = *(v2 + 40);
                    v58 = *MEMORY[0x277CC1960];
                    v59 = FigEndpointCopyFirstStreamOfType();
                    if (v59)
                    {
                      v11 = v59;
                      __APMediaSenderStart_block_invoke_cold_25();
                      goto LABEL_111;
                    }

                    v60 = AudioSBufSourceCreate(v69, v2 + 64, 0, (v2 + 56));
                    if (v60)
                    {
                      v11 = v60;
                      __APMediaSenderStart_block_invoke_cold_26();
                      goto LABEL_111;
                    }
                  }

                  v11 = 0;
                  *(v2 + 182) = 1;
                }

LABEL_111:
                v1 = v65;
                goto LABEL_117;
              }

              v11 = v46;
            }

            else
            {
              v11 = -12782;
            }

            APSLogErrorAt();
            goto LABEL_111;
          }

          __APMediaSenderStart_block_invoke_cold_17();
        }

LABEL_167:
        v24 = 0;
        goto LABEL_45;
      }

      __APMediaSenderStart_block_invoke_cold_15();
    }

    Mutable = 0;
    goto LABEL_167;
  }

  if (v7 == 2)
  {
    v13 = CFGetTypeID(v6);
    if (v13 != CFStringGetTypeID())
    {
      __APMediaSenderStart_block_invoke_cold_3();
      goto LABEL_159;
    }

    v65 = v1;
    if (gLogCategory_AirPlaySenderKit > 50)
    {
      goto LABEL_30;
    }

    if (gLogCategory_AirPlaySenderKit == -1)
    {
      v9 = 0;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_60;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (v7 != 3)
    {
      goto LABEL_20;
    }

    v10 = CFGetTypeID(v6);
    if (v10 != CFDictionaryGetTypeID())
    {
      __APMediaSenderStart_block_invoke_cold_2();
      goto LABEL_159;
    }

    v65 = v1;
    if (gLogCategory_AirPlaySenderKit > 50 || gLogCategory_AirPlaySenderKit == -1 && !_LogCategory_Initialize())
    {
      v9 = v6;
      goto LABEL_60;
    }

    v9 = v6;
  }

LABEL_29:
  LogPrintF();
LABEL_60:
  if (sender_startDiscovery_once != -1)
  {
    __APMediaSenderStart_block_invoke_cold_5();
  }

  v26 = *(v2 + 172);
  if ((v26 & 0x80000000) != 0)
  {
    v27 = -1;
  }

  else
  {
    v27 = dispatch_time(0, 1000000000 * v26);
  }

  while (1)
  {
    v28 = sender_startDiscovery_activationSema;
    v29 = dispatch_time(0, 1000000000);
    if (!dispatch_semaphore_wait(v28, v29))
    {
      break;
    }

    if (v27 <= dispatch_time(0, 0))
    {
      __APMediaSenderStart_block_invoke_cold_6();
      v11 = -6722;
LABEL_114:
      v1 = v65;
LABEL_115:
      APSLogErrorAt();
      goto LABEL_116;
    }

    if (*(v2 + 181))
    {
      __APMediaSenderStart_block_invoke_cold_7();
      v11 = -6723;
      goto LABEL_114;
    }
  }

  *(v2 + 160) = sender_startDiscovery_activationSema;
  CMNotificationCenterGetDefaultLocalCenter();
  v30 = *MEMORY[0x277CC0C20];
  v31 = *(v2 + 32);
  CMNotificationCenterAddListener();
  if (v9)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (gLogCategory_AirPlaySenderKit > 50 || gLogCategory_AirPlaySenderKit == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_73;
    }

LABEL_138:
    __APMediaSenderStart_block_invoke_cold_8();
    goto LABEL_73;
  }

  v34 = *(v2 + 32);
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v35)
  {
    v11 = -12782;
LABEL_113:
    APSLogErrorAt();
    goto LABEL_114;
  }

  v36 = v35(v34, *MEMORY[0x277CC0C00], 0);
  if (v36)
  {
    v11 = v36;
    goto LABEL_113;
  }

  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_138;
  }

LABEL_73:
  theArray = 0;
  v32 = *(v2 + 172);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = -1;
  }

  else
  {
    v33 = dispatch_time(0, 1000000000 * v32);
  }

  v37 = *MEMORY[0x277CBECE8];
  v38 = *MEMORY[0x277CC1A18];
  while (1)
  {
    if (v33 <= dispatch_time(0, 0))
    {
      __APMediaSenderStart_block_invoke_cold_9();
LABEL_142:
      v11 = -6722;
      goto LABEL_87;
    }

    if (dispatch_semaphore_wait(*(v2 + 152), v33))
    {
      __APMediaSenderStart_block_invoke_cold_10();
      goto LABEL_142;
    }

    if (*(v2 + 181))
    {
      break;
    }

    v39 = *(v2 + 32);
    FigEndpointManagerCopyEndpointsForType();
  }

  __APMediaSenderStart_block_invoke_cold_11();
  v11 = -6723;
LABEL_87:
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  __APMediaSenderStart_block_invoke_cold_12();
LABEL_162:
  v1 = v65;
LABEL_116:
  APSLogErrorAt();
  v6 = 0;
LABEL_117:
  sender_stopDiscovery(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v11)
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    sender_stopInternal(v2, 0);
    APSLogErrorAt();
  }

  else if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    __APMediaSenderStart_block_invoke_cold_29(v3);
  }

  *(v1[5] + 176) = v11;
  v61 = v1[6];
  if (v61)
  {
    CFRelease(v61);
  }

  v62 = v1[4];
  if (v62)
  {
    v63 = *(*v3 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APMediaSenderStart_block_invoke_2;
    block[3] = &unk_278C65CC0;
    block[4] = v62;
    v67 = v11;
    dispatch_async(v63, block);
  }
}

void APMediaSenderStop(uint64_t a1)
{
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    APMediaSenderStop_cold_1();
  }

  *(a1 + 181) = 1;
  dispatch_semaphore_signal(*(a1 + 152));
  v2 = *(a1 + 136);
  FigSimpleMutexLock();
  v3 = *(a1 + 144);
  if (v3)
  {
    if (*(a1 + 112))
    {
      CFRelease(*(a1 + 112));
      *(a1 + 112) = 0;
      v3 = *(a1 + 144);
    }

    dispatch_semaphore_signal(v3);
  }

  v4 = *(a1 + 136);
  FigSimpleMutexUnlock();
  v5 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderStop_block_invoke;
  block[3] = &__block_descriptor_tmp_25;
  block[4] = a1;
  dispatch_sync(v5, block);
}

void sender_stopInternal(intptr_t a1, int a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  sender_stopDiscovery(a1);
  if (*(a1 + 40))
  {
    FigEndpointDeactivate();
    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 40) = 0;
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }

  if (a2)
  {
    *(a1 + 181) = 0;
    *(a1 + 176) = 0;
  }
}

uint64_t APMediaSenderSubmitPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __APMediaSenderSubmitPixelBuffer_block_invoke;
  v6[3] = &unk_278C65D30;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __APMediaSenderSubmitPixelBuffer_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 182))
  {
    return __APMediaSenderSubmitPixelBuffer_block_invoke_cold_4(a1);
  }

  if ((*(v2 + 168) & 1) == 0)
  {
    return __APMediaSenderSubmitPixelBuffer_block_invoke_cold_3(a1);
  }

  v3 = *(v2 + 176);
  if (v3)
  {
    return __APMediaSenderSubmitPixelBuffer_block_invoke_cold_1(a1, v3);
  }

  *(*(a1[4] + 8) + 24) = APMediaSenderFDVSourceSubmitPixelBuffer(*(v2 + 48), a1[6], a1[7]);
  result = *(*(a1[4] + 8) + 24);
  if (result)
  {
    return __APMediaSenderSubmitPixelBuffer_block_invoke_cold_2();
  }

  return result;
}

uint64_t APMediaSenderEnqueueAudioData(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderEnqueueAudioData_block_invoke;
  block[3] = &unk_278C65D58;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APMediaSenderEnqueueAudioData_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 182))
  {
    return __APMediaSenderEnqueueAudioData_block_invoke_cold_4(a1);
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return __APMediaSenderEnqueueAudioData_block_invoke_cold_3(a1);
  }

  v4 = *(v2 + 176);
  if (v4)
  {
    return __APMediaSenderEnqueueAudioData_block_invoke_cold_1(a1, v4);
  }

  *(*(a1[4] + 8) + 24) = AudioSBufSourceEnqueueAudioData(v3, a1[6]);
  result = *(*(a1[4] + 8) + 24);
  if (result)
  {
    return __APMediaSenderEnqueueAudioData_block_invoke_cold_2();
  }

  return result;
}

uint64_t APMediaSenderEnqueueAudioDataWithTimestamps(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v5 = *(a1 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke;
  v8[3] = &unk_278C65D80;
  v8[4] = &v12;
  v8[5] = a1;
  v9 = *a3;
  v10 = *(a3 + 2);
  v8[6] = a2;
  v8[7] = a4;
  v11 = a5;
  dispatch_sync(v5, v8);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!*(v2 + 182))
  {
    return __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke_cold_4(a1);
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke_cold_3(a1);
  }

  v4 = *(v2 + 176);
  if (v4)
  {
    return __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke_cold_1(a1, v4);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  *(*(*(a1 + 32) + 8) + 24) = AudioSBufSourceEnqueueAudioDataWithTimestamps(v3, v5, &v9, v6, v7);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke_cold_2();
  }

  return result;
}

void sender_handleAuthRequiredCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, CFTypeRef, uint64_t, uint64_t), uint64_t a7)
{
  v11 = *MEMORY[0x277CC0A80];
  FigCFEqual();
  if (!*(a4 + 120))
  {
    v18 = 0;
    if (!a6)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v12 = *(a4 + 136);
  FigSimpleMutexLock();
  *(a4 + 144) = dispatch_semaphore_create(0);
  v13 = *(a4 + 112);
  if (v13)
  {
    CFRelease(v13);
    *(a4 + 112) = 0;
  }

  v14 = *(a4 + 136);
  FigSimpleMutexUnlock();
  (*(*(a4 + 120) + 16))();
  v15 = *(a4 + 144);
  v16 = *(a4 + 172);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = -1;
  }

  else
  {
    v17 = dispatch_time(0, 1000000000 * v16);
  }

  dispatch_semaphore_wait(v15, v17);
  v19 = *(a4 + 136);
  FigSimpleMutexLock();
  v20 = *(a4 + 144);
  if (v20)
  {
    dispatch_release(v20);
    *(a4 + 144) = 0;
  }

  v21 = *(a4 + 112);
  if (v21)
  {
    v18 = CFRetain(v21);
  }

  else
  {
    v18 = 0;
  }

  v22 = *(a4 + 136);
  FigSimpleMutexUnlock();
  if (a6)
  {
LABEL_15:
    if (v18)
    {
      v23 = 0;
    }

    else
    {
      v23 = 4294950568;
    }

    a6(a1, v18, v23, a7);
  }

LABEL_19:
  if (v18)
  {

    CFRelease(v18);
  }
}

void sender_handleEndpointFailure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x277CC0BE0];
  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_AirPlaySenderKit <= 100 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = *(a4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __sender_handleEndpointFailure_block_invoke;
  block[3] = &__block_descriptor_tmp_56;
  if (Int64)
  {
    v8 = Int64;
  }

  else
  {
    v8 = -6762;
  }

  block[4] = a4;
  v10 = v8;
  dispatch_sync(v7, block);
}

void sender_handleEndpointStreamFailure(int a1, const void *a2, int a3, int a4, const __CFDictionary *cf)
{
  Mutable = cf;
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = *MEMORY[0x277CC17E8];
      CFDictionaryGetInt64();
      CFDictionaryGetValue(Mutable, *MEMORY[0x277CC17E0]);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      FigCFDictionarySetInt32();
    }

    else
    {
      Mutable = 0;
    }
  }

  if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"APMediaSender_VideoStreamFailed", a2, Mutable, 1u);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

intptr_t sender_stopDiscovery(intptr_t result)
{
  v1 = *(result + 160);
  if (v1)
  {
    v2 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = *MEMORY[0x277CC0C20];
    CMNotificationCenterRemoveListener();
    v4 = *(v2 + 32);
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 16) + 8);
    if (v6)
    {
      v7 = *(VTable + 16) + 8;
      v6(v4, *MEMORY[0x277CC0C08], 0);
    }

    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      sender_stopDiscovery_cold_1();
    }

    *(v2 + 160) = 0;

    return dispatch_semaphore_signal(v1);
  }

  return result;
}

BOOL endpointMatchAssisted(const void *a1)
{
  cf = 0;
  v1 = CFGetAllocator(a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 8) + 48);
  if (v4)
  {
    v5 = *(VTable + 8) + 48;
    if (!v4(CMBaseObject, *MEMORY[0x277CC1278], v1, &cf))
    {
      v6 = cf;
      v7 = cf == *MEMORY[0x277CBED28];
      if (!cf)
      {
        return v7;
      }

      goto LABEL_6;
    }
  }

  APSLogErrorAt();
  v7 = 0;
  v6 = cf;
  if (cf)
  {
LABEL_6:
    CFRelease(v6);
  }

  return v7;
}

uint64_t __createEndpointForNetworkAddress_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = APAdvertiserInfoSetProperty();
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24) && gLogCategory_AirPlaySenderKit <= 90)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *(*(*(a1 + 32) + 8) + 24);
      return LogPrintF();
    }
  }

  return result;
}

dispatch_semaphore_t __sender_startDiscovery_block_invoke()
{
  result = dispatch_semaphore_create(1);
  sender_startDiscovery_activationSema = result;
  return result;
}

void __sender_handleEndpointFailure_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (*(v2 + 176))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v5 = *(v2 + 24);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __sender_handleEndpointFailure_block_invoke_2;
    v6[3] = &unk_278C65DF0;
    v6[4] = v3;
    v7 = *(a1 + 40);
    dispatch_async(v5, v6);
    v2 = *(a1 + 32);
  }

  *(v2 + 176) = *(a1 + 40);
}

void sub_23EB3ED50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t fvdsrc_plugProcessor_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12070;
  return result;
}

uint64_t fvdsrc_unplugProcessor_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12070;
  return result;
}

uint64_t endpointMatchByName(const void *a1, const void *a2)
{
  cf1 = 0;
  v3 = CFGetAllocator(a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, *MEMORY[0x277CC1450], v3, &cf1))
  {
    APSLogErrorAt();
    v6 = 0;
  }

  else
  {
    if (!cf1)
    {
      return 0;
    }

    v6 = CFEqual(cf1, a2);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v6;
}

BOOL endpointMatchByID(const void *a1, const __CFString *a2)
{
  theString1 = 0;
  v3 = CFGetAllocator(a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, *MEMORY[0x277CC1368], v3, &theString1))
  {
    APSLogErrorAt();
    v6 = 0;
  }

  else
  {
    if (!theString1)
    {
      return 0;
    }

    v6 = CFStringCompare(theString1, a2, 1uLL) == kCFCompareEqualTo;
  }

  if (theString1)
  {
    CFRelease(theString1);
  }

  return v6;
}

uint64_t __APMediaSenderSetVideoOverrides_block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return OUTLINED_FUNCTION_4();
}

void apsksa_rtDispatchSignalHandler()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  v1 = v0;
  hostTime = 0;
  v15 = 0;
  v16 = 0;
  memset(&v13, 0, sizeof(v13));
  if (v0)
  {
    if (atomic_load((v0 + 120)))
    {
      v3 = 0;
      while (1)
      {
        v4 = *(v1 + 96);
        if (APSRingBufferGetBytesUsed() <= 0x17 || (v5 = *(v1 + 96), APSRingBufferDequeueBytes()))
        {
          APSLogErrorAt();

          goto LABEL_11;
        }

        v6 = objc_alloc(MEMORY[0x277CBEB28]);
        v7 = [v6 initWithLength:v16];

        if (!v7)
        {
          break;
        }

        v8 = v16;
        v9 = *(v1 + 96);
        if (APSRingBufferGetBytesUsed() < v8 || (v10 = *(v1 + 96), [v7 mutableBytes], APSRingBufferDequeueBytes()))
        {
          APSLogErrorAt();
LABEL_10:

          goto LABEL_11;
        }

        atomic_fetch_add((v1 + 120), 0xFFFFFFFF);
        CMClockMakeHostTimeFromSystemUnits(&v13, hostTime);
        v12 = v13;
        [v1 enqueueAudioDataWithTimestamps:v7 forHostTime:&v12 forSampleTime:v15 forDiscontinuity:BYTE4(v16)];
        v11 = atomic_load((v1 + 120));
        v3 = v7;
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      APSLogErrorAt();
    }
  }

LABEL_11:
}