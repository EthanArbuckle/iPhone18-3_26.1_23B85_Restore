void sub_23A86507C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23A865454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_23A865B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v30 - 128));
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

char *RPStringUtility_FourccToCStr(int a1)
{
  v1 = RPStringUtility_FourccToCStr_ix++;
  v2 = &RPStringUtility_FourccToCStr_str + 5 * (v1 % 0xA);
  *v2 = HIBYTE(a1);
  v2[1] = BYTE2(a1);
  v2[2] = BYTE1(a1);
  v2[3] = a1;
  v2[4] = 0;
  return v2;
}

uint64_t RPLogSetLogLevel(uint64_t result)
{
  if (result <= 3)
  {
    __RPLogLevel = result;
  }

  return result;
}

void sub_23A871860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void handleInputBuffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = a1;
  memset(&v25, 0, sizeof(v25));
  CMClockMakeHostTimeFromSystemUnits(&v25, *(a4 + 8));
  if (v10[160] == 1)
  {
    LOBYTE(keyExistsAndHasValidFormat.value) = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"RPHideStatusBar", @"com.apple.replayd", &keyExistsAndHasValidFormat);
    if (!LOBYTE(keyExistsAndHasValidFormat.value) || AppBooleanValue)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&time1, HostTimeClock);
      v25 = time1;
    }
  }

  value = v25.value;
  timescale = v25.timescale;
  time1 = *(v10 + 136);
  keyExistsAndHasValidFormat = **&MEMORY[0x277CC0898];
  if (CMTimeCompare(&time1, &keyExistsAndHasValidFormat) && value && *(v10 + 17) >= value && __RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    handleInputBuffer_cold_1(value, timescale);
  }

  v15 = *(v10 + 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __handleInputBuffer_block_invoke;
  block[3] = &unk_278B620A0;
  v21 = v25;
  v18 = v10;
  v19 = a3;
  v22 = a5;
  v20 = a6;
  v16 = v10;
  dispatch_async(v15, block);
}

void isRunningListenerCallback(void *a1, OpaqueAudioQueue *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  ioDataSize = 4;
  outData = 0;
  if (a3 == 1634824814)
  {
    if (AudioQueueGetProperty(a2, 0x6171726Eu, &outData, &ioDataSize))
    {
      if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        isRunningListenerCallback_cold_2();
      }
    }

    else
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v15 = "isRunningListenerCallback";
        v16 = 1024;
        v17 = 263;
        v18 = 1024;
        v19 = outData;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAppAudioCaptureManager: isRunningListenerCallback with isRunning %d", buf, 0x18u);
      }

      v6 = v5[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __isRunningListenerCallback_block_invoke;
      block[3] = &unk_278B620C8;
      v7 = v5;
      v10 = v7;
      v11 = outData;
      dispatch_async(v6, block);
      AudioQueueRemovePropertyListener(*v7[4], 0x6171726Eu, isRunningListenerCallback, v7);
    }
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    isRunningListenerCallback_cold_1();
  }

  v8 = *MEMORY[0x277D85DE8];
}

id __copy_helper_block_e8_56n11_8_8_t0w8_s8(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

void __handleInputBuffer_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!*(v1 + 32))
  {
    goto LABEL_51;
  }

  v4 = (a1 + 56);
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  *time1 = *(v1 + 136);
  *&time1[16] = *(v1 + 152);
  time2 = **&MEMORY[0x277CC0898];
  if (CMTimeCompare(time1, &time2))
  {
    v6 = *(a1 + 32);
    if (*(v6 + 136) >= v3)
    {
      if (__RPLogLevel <= 2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __handleInputBuffer_block_invoke_cold_1(v3, v5);
        }

        v6 = *(a1 + 32);
      }

      if (AudioQueueEnqueueBuffer(**(v6 + 32), *(a1 + 40), 0, 0))
      {
        v7 = __RPLogLevel > 2;
      }

      else
      {
        v7 = 1;
      }

      if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __handleInputBuffer_block_invoke_cold_2();
      }

      goto LABEL_51;
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *time1 = 136446722;
    *&time1[4] = "handleInputBuffer_block_invoke";
    *&time1[12] = 1024;
    *&time1[14] = 172;
    *&time1[18] = 2048;
    *&time1[20] = (v3 / v5);
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAppAudioCaptureManager: first sample received at time %.3f", time1, 0x1Cu);
  }

  v8 = *(a1 + 32);
  v9 = *v4;
  *(v8 + 152) = *(v4 + 2);
  *(v8 + 136) = v9;
  v10 = *(a1 + 32);
  if (*(v10 + 40) == 1)
  {
    *(v10 + 40) = 0;
    v10 = *(a1 + 32);
    if (*(v10 + 48))
    {
      v11 = [MEMORY[0x277CBEAA8] date];
      [v11 timeIntervalSinceDate:*(*(a1 + 32) + 48)];
      if (v12 > 0.0)
      {
        v13 = v12;
        if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *time1 = 136446466;
          *&time1[4] = "handleInputBuffer_block_invoke";
          *&time1[12] = 1024;
          *&time1[14] = 184;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAppAudioCaptureManager: gap since last audio tap, filling with empty sample buffer", time1, 0x12u);
        }

        v14 = *(*(a1 + 32) + 32);
        time2 = **&MEMORY[0x277CC08F0];
        v15 = *(v14 + 8);
        v16 = *(v14 + 24);
        v35 = *(v14 + 40);
        *time1 = v15;
        *&time1[16] = v16;
        v17 = RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval(&time2, time1, v13);
        (*(*(*(a1 + 32) + 16) + 16))();
        if (v17)
        {
          CFRelease(v17);
        }
      }

      v10 = *(a1 + 32);
    }
  }

  v18 = *(v10 + 32);
  if (*(v18 + 152) == 2)
  {
    v19 = *(a1 + 80);
    if (!v19)
    {
      v20 = *(v18 + 24);
      if (v20)
      {
        v19 = *(*(a1 + 40) + 16) / v20;
      }

      else
      {
        v19 = 0;
      }
    }

    formatDescriptionOut = 0;
    time2.value = 0;
    destinationBuffer = 0;
    v21 = *MEMORY[0x277CBECE8];
    if (!CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], (v18 + 8), 0, 0, 0, 0, 0, &formatDescriptionOut))
    {
      v22 = *(*(a1 + 40) + 16);
      if (!CMBlockBufferCreateWithMemoryBlock(v21, 0, v22, v21, 0, 0, v22, 1u, &destinationBuffer) && !CMBlockBufferReplaceDataBytes(*(*(a1 + 40) + 8), destinationBuffer, 0, *(*(a1 + 40) + 16)))
      {
        v23 = *(a1 + 80);
        v24 = *(a1 + 48);
        *time1 = *v4;
        *&time1[16] = *(v4 + 2);
        if (!CMAudioSampleBufferCreateReadyWithPacketDescriptions(v21, destinationBuffer, formatDescriptionOut, v23, time1, v24, &time2))
        {
          v25 = [MEMORY[0x277CBEAA8] date];
          CMSampleBufferGetDuration(time1, time2.value);
          v26 = [v25 dateByAddingTimeInterval:CMTimeGetSeconds(time1)];
          v27 = *(a1 + 32);
          v28 = *(v27 + 48);
          *(v27 + 48) = v26;

          v29 = *(*(a1 + 32) + 16);
          if (v29)
          {
            (*(v29 + 16))(v29, time2.value);
          }
        }
      }
    }

    if (time2.value)
    {
      CFRelease(time2.value);
    }

    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }

    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    *(*(*(a1 + 32) + 32) + 144) += v19;
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *time1 = 136446466;
    *&time1[4] = "handleInputBuffer_block_invoke";
    *&time1[12] = 1024;
    *&time1[14] = 193;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAppAudioCaptureManager: recorder is not running, ignoring audio data", time1, 0x12u);
  }

  if (AudioQueueEnqueueBuffer(**(*(a1 + 32) + 32), *(a1 + 40), 0, 0) && __RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __handleInputBuffer_block_invoke_cold_3();
  }

LABEL_51:
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __isRunningListenerCallback_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    if (*(v2 + 152) == 1)
    {
      v3 = result;
      if (*(result + 40))
      {
        result = *(v1 + 24);
        if (result)
        {
          result = (*(result + 16))(result, 0);
          v2 = *(*(v3 + 32) + 32);
        }

        *(v2 + 152) = 2;
      }
    }
  }

  return result;
}

CMSampleBufferRef RPSampleBufferUtilities_CreateSampleBufferFromIOSurface(IOSurfaceRef surface, const CMSampleTimingInfo *a2)
{
  pixelBufferOut = 0;
  sampleBufferOut = 0;
  formatDescriptionOut = 0;
  v3 = *MEMORY[0x277CBECE8];
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], surface, 0, &pixelBufferOut);
  CMVideoFormatDescriptionCreateForImageBuffer(0, pixelBufferOut, &formatDescriptionOut);
  CMSampleBufferCreateForImageBuffer(v3, pixelBufferOut, 1u, 0, 0, formatDescriptionOut, a2, &sampleBufferOut);
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  return sampleBufferOut;
}

CMSampleBufferRef RPSampleBufferUtilities_CreateSampleBufferWithPixelBuffer(CVImageBufferRef imageBuffer, uint64_t a2)
{
  sampleBufferOut = 0;
  formatDescriptionOut = 0;
  v3 = *(MEMORY[0x277CC0918] + 48);
  *&v10.presentationTimeStamp.timescale = *(MEMORY[0x277CC0918] + 32);
  *&v10.decodeTimeStamp.value = v3;
  v4 = *(MEMORY[0x277CC0918] + 64);
  v5 = *(MEMORY[0x277CC0918] + 16);
  *&v10.duration.value = *MEMORY[0x277CC0918];
  *&v10.duration.epoch = v5;
  *&v10.presentationTimeStamp.value = *a2;
  v6 = *(a2 + 16);
  v10.decodeTimeStamp.epoch = v4;
  v10.presentationTimeStamp.epoch = v6;
  v7 = *MEMORY[0x277CBECE8];
  if (!CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], imageBuffer, &formatDescriptionOut))
  {
    v8 = CMSampleBufferCreateReadyWithImageBuffer(v7, imageBuffer, formatDescriptionOut, &v10, &sampleBufferOut);
    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    if (!v8)
    {
      return sampleBufferOut;
    }
  }

  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RPSampleBufferUtilities_CreateSampleBufferWithPixelBuffer_cold_1();
  }

  result = sampleBufferOut;
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
    return 0;
  }

  return result;
}

CMSampleBufferRef RPSampleBufferUtilities_CopySampleBufferFromSourceBuffer(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  timingArrayEntriesNeededOut = 0;
  sampleBufferOut[0] = 0;
  CMSampleBufferGetSampleTimingInfoArray(a1, 0, 0, &timingArrayEntriesNeededOut);
  if (timingArrayEntriesNeededOut >= 0x38E38E38E38E38FLL)
  {
    RPSampleBufferUtilities_CopySampleBufferFromSourceBuffer_cold_1();
    return sampleBufferOut[1];
  }

  else
  {
    v4 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
    CMSampleBufferGetSampleTimingInfoArray(a1, timingArrayEntriesNeededOut, v4, &timingArrayEntriesNeededOut);
    v5 = timingArrayEntriesNeededOut;
    if (timingArrayEntriesNeededOut >= 1)
    {
      p_presentationTimeStamp = &v4->presentationTimeStamp;
      v7 = *MEMORY[0x277CC0898];
      v8 = *(MEMORY[0x277CC0898] + 16);
      v9 = timingArrayEntriesNeededOut;
      do
      {
        *&p_presentationTimeStamp[1].value = v7;
        p_presentationTimeStamp[1].epoch = v8;
        v10 = *(a2 + 16);
        *&p_presentationTimeStamp->value = *a2;
        p_presentationTimeStamp->epoch = v10;
        p_presentationTimeStamp += 3;
        --v9;
      }

      while (v9);
    }

    CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x277CBECE8], a1, v5, v4, sampleBufferOut);
    free(v4);
    return sampleBufferOut[0];
  }
}

CVPixelBufferRef RPSampleBufferUtilities_CreateBlankPixelBuffer(size_t a1, size_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  v3 = *MEMORY[0x277CBECE8];
  v9 = *MEMORY[0x277CC4DE8];
  v10[0] = MEMORY[0x277CBEC10];
  if (CVPixelBufferCreate(v3, a1, a2, 0x42475241u, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1], &pixelBuffer))
  {
    RPSampleBufferUtilities_CreateBlankPixelBuffer_cold_1();
  }

  else
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (BaseAddress)
    {
      bzero(BaseAddress, BytesPerRow * a2);
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  result = pixelBuffer;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

float RPSampleBufferUtilities_getContentHeadroom(opaqueCMSampleBuffer *a1)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
  v3 = IOSurfaceCopyValue(IOSurface, *MEMORY[0x277CD29C8]);
  [v3 floatValue];
  v5 = v4;
  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

id RPSampleBufferUtilities_EncodeAudioSampleBuffer(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v4 setObject:v5 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeySampleType"];

  blockBufferOut = 0;
  bufferListSizeNeededOut = 0;
  CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a1, &bufferListSizeNeededOut, 0, 0, 0, 0, 0, &blockBufferOut);
  v6 = malloc_type_malloc(bufferListSizeNeededOut, 0x6986356EuLL);
  CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a1, 0, v6, bufferListSizeNeededOut, 0, 0, 0, &blockBufferOut);
  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (v6->mNumberBuffers)
  {
    v8 = 0;
    p_mData = &v6->mBuffers[0].mData;
    do
    {
      v10 = *(p_mData - 1);
      v11 = *p_mData;
      p_mData += 2;
      [v7 appendBytes:v11 length:v10];
      ++v8;
    }

    while (v8 < v6->mNumberBuffers);
  }

  free(v6);
  [v4 setObject:v7 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyAudioBufferList"];
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  v13 = [MEMORY[0x277CBEA90] dataWithBytes:CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription) length:40];
  [v4 setObject:v13 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyAudioFormatDescription"];
  memset(&v17, 0, sizeof(v17));
  CMSampleBufferGetSampleTimingInfo(a1, 0, &v17);
  v14 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:72];
  [v4 setObject:v14 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyTimingInfo"];
  v15 = [MEMORY[0x277CCABB0] numberWithLong:CMSampleBufferGetNumSamples(a1)];
  [v4 setObject:v15 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyNumSamples"];

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v4;
}

CMSampleBufferRef RPSampleBufferUtilities_CreateDecodeAudioSampleBuffer(void *a1)
{
  formatDescriptionOut = 0;
  v18 = 0;
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyNumSamples"];
  v3 = [v2 integerValue];

  v4 = [v1 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyTimingInfo"];
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  [v4 getBytes:&sampleTimingArray length:72];
  v5 = [v1 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyAudioFormatDescription"];
  memset(&asbd, 0, sizeof(asbd));
  [v5 getBytes:&asbd length:40];
  v6 = *MEMORY[0x277CBECE8];
  CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(formatDescriptionOut);
  v8 = [v1 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyAudioBufferList"];

  if ([v8 length])
  {
    v9 = [v8 length];
    v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
    memcpy(v10, [v8 bytes], v9);
    if (v10)
    {
      mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
      if (mChannelsPerFrame == 1 || (StreamBasicDescription->mFormatFlags & 0x20) == 0)
      {
        v12 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
        *v12 = 1;
        *(v12 + 2) = StreamBasicDescription->mChannelsPerFrame;
        *(v12 + 3) = v9;
        *(v12 + 2) = v10;
        goto LABEL_13;
      }

      if (mChannelsPerFrame == 2)
      {
        v12 = malloc_type_malloc(0x28uLL, 0x10800404ACF7207uLL);
        *v12 = 2;
        *(v12 + 2) = 1;
        *(v12 + 3) = v9 >> 1;
        *(v12 + 2) = v10;
        *(v12 + 6) = 1;
        *(v12 + 7) = v9 >> 1;
        *(v12 + 4) = &v10[v9 >> 1];
        goto LABEL_13;
      }

      if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        RPSampleBufferUtilities_CreateDecodeAudioSampleBuffer_cold_1();
      }

      free(v10);
    }
  }

  v12 = 0;
LABEL_13:
  CMSampleBufferCreate(v6, 0, 0, 0, 0, formatDescriptionOut, v3, 1, &sampleTimingArray, 0, 0, &v18);
  CMSampleBufferSetDataBufferFromAudioBufferList(v18, v6, v6, 0, v12);
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v12)
  {
    free(*(v12 + 2));
    free(v12);
  }

  v13 = v18;

  return v13;
}

CMSampleBufferRef RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval(CMTime *a1, uint64_t a2, Float64 a3)
{
  v20 = 0;
  formatDescriptionOut = 0;
  v5 = *(a2 + 16);
  *&asbd.mSampleRate = *a2;
  *&asbd.mBytesPerPacket = v5;
  *&asbd.mBitsPerChannel = *(a2 + 32);
  v6 = *MEMORY[0x277CBECE8];
  v7 = CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
  if (v7)
  {
    RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_1(v7, &formatDescriptionOut);
    v8 = sampleSizeArray;
  }

  else
  {
    v8 = formatDescriptionOut;
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v8);
  sampleSizeArray = 0;
  mFramesPerPacket = StreamBasicDescription->mFramesPerPacket;
  if (!mFramesPerPacket)
  {
    RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_6();
    goto LABEL_20;
  }

  p_mSampleRate = &StreamBasicDescription->mSampleRate;
  mBytesPerPacket = StreamBasicDescription->mBytesPerPacket;
  sampleSizeArray = mBytesPerPacket;
  if (mBytesPerPacket != StreamBasicDescription->mBytesPerFrame * mFramesPerPacket)
  {
    RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_2();
    goto LABEL_20;
  }

  v13 = (StreamBasicDescription->mSampleRate * a3 / mFramesPerPacket);
  asbd.mSampleRate = 0.0;
  if (CMBlockBufferCreateWithMemoryBlock(v6, 0, v13 * mBytesPerPacket, v6, 0, 0, v13 * mBytesPerPacket, 0, &asbd))
  {
    RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_3();
LABEL_27:
    if (*&asbd.mSampleRate)
    {
      CFRelease(*&asbd.mSampleRate);
    }

    v14 = 0;
    goto LABEL_8;
  }

  if (CMBlockBufferAssureBlockMemory(*&asbd.mSampleRate))
  {
    RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_4();
    goto LABEL_27;
  }

  v14 = *&asbd.mSampleRate;
LABEL_8:
  memset(&v18, 0, sizeof(v18));
  CMTimeMakeWithSeconds(&v18.duration, a3, *p_mSampleRate);
  v18.presentationTimeStamp = *a1;
  v18.decodeTimeStamp = **&MEMORY[0x277CC0898];
  v15 = CMSampleBufferCreate(v6, v14, 1u, 0, 0, v8, v13, 1, &v18, 1, &sampleSizeArray, &v20);
  if (!v15)
  {
    if (v8)
    {
      CFRelease(v8);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    return v20;
  }

  RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_5(v15, v14, &asbd);
LABEL_20:
  mSampleRate = asbd.mSampleRate;
  if (v8)
  {
    CFRelease(v8);
  }

  if (mSampleRate != 0.0)
  {
    CFRelease(*&mSampleRate);
  }

  result = v20;
  if (v20)
  {
    CFRelease(v20);
    return 0;
  }

  return result;
}

CMSampleBufferRef RPSampleBufferUtilities_CreateAudioSampleBuffer(uint64_t a1, const AudioStreamBasicDescription *a2, CMTime *a3)
{
  formatDescriptionOut = 0;
  sbuf = 0;
  v5 = *(a1 + 12);
  mBytesPerPacket = a2->mBytesPerPacket;
  v7 = *MEMORY[0x277CBECE8];
  if (CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], a2, 0, 0, 0, 0, 0, &formatDescriptionOut))
  {
    RPSampleBufferUtilities_CreateAudioSampleBuffer_cold_1();
  }

  else
  {
    presentationTimeStamp = *a3;
    v8 = CMAudioSampleBufferCreateWithPacketDescriptions(v7, 0, 0, 0, 0, formatDescriptionOut, v5 / mBytesPerPacket, &presentationTimeStamp, 0, &sbuf);
    CFRelease(formatDescriptionOut);
    if (v8)
    {
      RPSampleBufferUtilities_CreateAudioSampleBuffer_cold_2();
    }

    else
    {
      if (!CMSampleBufferSetDataBufferFromAudioBufferList(sbuf, v7, v7, 0, a1))
      {
        v9 = sbuf;
        presentationTimeStamp = *a3;
        CMSampleBufferSetOutputPresentationTimeStamp(sbuf, &presentationTimeStamp);
        return v9;
      }

      RPSampleBufferUtilities_CreateAudioSampleBuffer_cold_3();
    }
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return 0;
}

void RPSampleBufferUtilities_ReleaseAudioSampleBuffer(const void *a1, void **a2)
{
  if (a1)
  {
    CFRelease(a1);
  }

  if (a2)
  {
    free(a2[2]);

    free(a2);
  }
}

double RPSampleBufferUtilities_SecondsPresentationTimeForSample(opaqueCMSampleBuffer *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  memset(&v2, 0, sizeof(v2));
  CMSampleBufferGetPresentationTimeStamp(&v2, a1);
  *&result = v2.value / v2.timescale;
  return result;
}

uint64_t RPSampleBufferUtilities_CreateCGImageFromIOSurface(__IOSurface *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (IOSurfaceGetPixelFormat(a1) == 1380411457)
  {
    v14 = *MEMORY[0x277CD2CC8];
    v15[0] = &unk_284D7D428;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v3 = CGImageCreateFromIOSurface();
  }

  else
  {
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    BytesPerRow = IOSurfaceGetBytesPerRow(a1);
    Width = IOSurfaceGetWidth(a1);
    Height = IOSurfaceGetHeight(a1);
    AllocSize = IOSurfaceGetAllocSize(a1);
    v9 = IOSurfaceCopyValue(a1, *MEMORY[0x277CD29C0]);
    DeviceRGB = CGColorSpaceCreateWithPropertyList(v9);
    CFRelease(v9);
    CFRetain(a1);
    if (!DeviceRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    v11 = CGDataProviderCreateWithData(a1, BaseAddress, AllocSize, RPSampleBufferUtilities_releaseIOSurface);
    v3 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, BytesPerRow, DeviceRGB, 0x2002u, v11, 0, 1, kCGRenderingIntentDefault);
    CGDataProviderRelease(v11);
    CGColorSpaceRelease(DeviceRGB);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

void RPSampleBufferUtilities_releaseIOSurface(__IOSurface *a1)
{
  IOSurfaceUnlock(a1, 0, 0);

  CFRelease(a1);
}

uint64_t showReactionsTip(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "showReactionsTip";
    v11 = 1024;
    v12 = 14;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v9, 0x12u);
  }

  v5 = +[RPControlCenterAngelProxy sharedInstance];
  v6 = [v5 showReactionsTipForApplication:v3 bundleID:v4];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23A885140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A8858A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A8863DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_23A88F490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void handleInputBuffer_cold_1(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_5(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(v2, v3);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
  v9 = *MEMORY[0x277D85DE8];
}

void isRunningListenerCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void isRunningListenerCallback_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __handleInputBuffer_block_invoke_cold_1(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_5(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(v2, v3);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
  v9 = *MEMORY[0x277D85DE8];
}

void __handleInputBuffer_block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __handleInputBuffer_block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateSampleBufferWithPixelBuffer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CopySampleBufferFromSourceBuffer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  }

  OUTLINED_FUNCTION_4_0();
  v0 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateBlankPixelBuffer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateDecodeAudioSampleBuffer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_1(uint64_t a1, CFTypeRef *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  OUTLINED_FUNCTION_4_0();
  v3 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  }

  OUTLINED_FUNCTION_4_0();
  v0 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_5(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x18u);
  }

  *a3 = a2;
  v5 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateEmptyAudioSampleBufferWithTimeInterval_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  }

  OUTLINED_FUNCTION_4_0();
  v0 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateAudioSampleBuffer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateAudioSampleBuffer_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void RPSampleBufferUtilities_CreateAudioSampleBuffer_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  }

  v0 = *MEMORY[0x277D85DE8];
}