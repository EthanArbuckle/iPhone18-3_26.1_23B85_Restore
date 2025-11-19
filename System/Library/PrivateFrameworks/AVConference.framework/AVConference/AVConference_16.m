uint64_t VCImageQueue_EnqueueSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6960CC0];
  v5 = *MEMORY[0x1E6960CC0];
  v69 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  v70 = v6;
  if (!a1 || !a2)
  {
    VCImageQueue_EnqueueSampleBuffer_cold_16(a1, a2, time);
    return time[0];
  }

  v66 = v5;
  pthread_mutex_lock((a1 + 32));
  if (*(a1 + 144))
  {
    FormatDescription = CMSampleBufferGetFormatDescription(a2);
    if (CMFormatDescriptionGetMediaType(FormatDescription) == 1986618469)
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(a2);
      if (ImageBuffer)
      {
        _VCImageQueue_DrawOverlayMessage(a1, ImageBuffer);
      }
    }
  }

  CMSampleBufferGetPresentationTimeStamp(time, a2);
  v9 = *time;
  v10 = *&time[8];
  v11 = *&time[12];
  v12 = *&time[16];
  v13 = *(a1 + 152);
  if (!v13)
  {
    v21 = CMSampleBufferGetFormatDescription(a2);
    MediaType = CMFormatDescriptionGetMediaType(v21);
    v23 = *(a1 + 416);
    if (v23)
    {
      Count = CFArrayGetCount(v23);
      if ((Count - 3) > 0xFFFFFFFFFFFFFFFDLL)
      {
        if (MediaType == 1835365473)
        {
          CVPixelBufferForTag = 0;
          goto LABEL_69;
        }

        if (MediaType != 1952606066)
        {
          if (MediaType == 1986618469)
          {
            v24 = CMSampleBufferGetImageBuffer(a2);
            if (v24)
            {
              CVPixelBufferForTag = v24;
              _VCImageQueue_DrawOverlayMessage(a1, v24);
              v26 = *(a1 + 472) ? _VCImageQueue_GetImageQueueAtIndex(a1, 0) : *(a1 + 16);
              *time = v9;
              *&time[8] = v10;
              *&time[12] = v11;
              *&time[16] = v12;
              if (_VCImageQueue_EnqueuePixelBuffer(a1, v26, CVPixelBufferForTag, time, &v69))
              {
LABEL_69:
                *time = v9;
                *&time[8] = v10;
                *&time[12] = v11;
                *&time[16] = v12;
                Seconds = CMTimeGetSeconds(time);
                *time = v69;
                *&time[16] = v70;
                v19 = a1;
                v20 = CVPixelBufferForTag;
                goto LABEL_70;
              }
            }
          }

LABEL_77:
          v49 = 0;
          goto LABEL_71;
        }

        group = CMSampleBufferGetTaggedBufferGroup(a2);
        if (!group)
        {
          goto LABEL_77;
        }

        memset(&v71, 170, sizeof(v71));
        CMSampleBufferGetPresentationTimeStamp(&v71, a2);
        v27 = CMGetAttachment(a2, @"TransportLayer", 0);
        v28 = v27;
        *&time[24] = v71;
        v73 = 0;
        *time = v66;
        *&time[48] = 0uLL;
        *&time[16] = v6;
        *v79 = 0;
        v65 = v12;
        v64 = v11;
        if (!*(a1 + 424))
        {
          VCImageQueue_EnqueueSampleBuffer_cold_13(a1);
          goto LABEL_74;
        }

        if (!v27)
        {
          VCImageQueue_EnqueueSampleBuffer_cold_12();
          goto LABEL_74;
        }

        *&sampleTimingArray.presentationTimeStamp.timescale = *&time[32];
        *&sampleTimingArray.decodeTimeStamp.value = *&time[48];
        sampleTimingArray.decodeTimeStamp.epoch = *v79;
        *&sampleTimingArray.duration.value = *time;
        *&sampleTimingArray.duration.epoch = *&time[16];
        cf = 0;
        formatDescriptionOut = 0;
        theBuffer = 0;
        if (CFDictionaryGetValue(v27, @"BoxedMetadataContent"))
        {
          v29 = *MEMORY[0x1E695E480];
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v31 = Mutable;
            CFArrayAppendValue(Mutable, v28);
            v32 = CMMetadataFormatDescriptionCreateWithMetadataSpecifications(v29, 0x6D656278u, v31, &formatDescriptionOut);
            if (v32)
            {
              v52 = v32;
              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                goto LABEL_34;
              }

              v53 = VRTraceErrorLogLevelToCSTR();
              v54 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_34;
              }

              *buf = 136316418;
              v83 = v53;
              v84 = 2080;
              v85 = "_VCImageQueue_CreateBoxedMetadataSampleBuffer";
              v86 = 1024;
              v87 = 1150;
              v88 = 2048;
              v89 = a1;
              v90 = 1024;
              v91 = v52;
              v92 = 2048;
              v93 = formatDescriptionOut;
              v55 = " [%s] %s:%d [%p] Failed to create format description for boxed metadata content, error=%d, formatDescription=%p";
            }

            else
            {
              if (!formatDescriptionOut)
              {
                VCImageQueue_EnqueueSampleBuffer_cold_7();
                goto LABEL_34;
              }

              CFDictionaryGetValue(v28, *MEMORY[0x1E6960348]);
              CFDictionaryGetValue(v28, *MEMORY[0x1E6960338]);
              CFDictionaryGetValue(v28, *MEMORY[0x1E6960340]);
              FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
              if (FigBoxedMetadataCreateForConstruction())
              {
                VCImageQueue_EnqueueSampleBuffer_cold_1();
                goto LABEL_34;
              }

              if (!cf)
              {
                VCImageQueue_EnqueueSampleBuffer_cold_6();
                goto LABEL_34;
              }

              if (FigBoxedMetadataAppendCFTypedValue())
              {
                VCImageQueue_EnqueueSampleBuffer_cold_2();
                goto LABEL_34;
              }

              if (FigBoxedMetadataEndConstruction())
              {
                VCImageQueue_EnqueueSampleBuffer_cold_3();
                goto LABEL_34;
              }

              BlockBufferForIndex = FigBoxedMetadataCreateBlockBufferForIndex();
              if (!BlockBufferForIndex)
              {
                if (!theBuffer)
                {
                  VCImageQueue_EnqueueSampleBuffer_cold_5();
                  goto LABEL_34;
                }

                sampleSizeArray = CMBlockBufferGetDataLength(theBuffer);
                v34 = CMSampleBufferCreate(v29, theBuffer, 1u, 0, 0, formatDescriptionOut, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v73);
                if (!v34)
                {
                  if (!v73)
                  {
                    VCImageQueue_EnqueueSampleBuffer_cold_4();
                  }

                  goto LABEL_34;
                }

                v59 = v34;
                if (VRTraceGetErrorLogLevelForModule() < 3 || (v60 = VRTraceErrorLogLevelToCSTR(), v61 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
                {
LABEL_34:
                  CFRelease(v31);
                  goto LABEL_35;
                }

                *buf = 136316418;
                v83 = v60;
                v84 = 2080;
                v85 = "_VCImageQueue_CreateBoxedMetadataSampleBuffer";
                v86 = 1024;
                v87 = 1175;
                v88 = 2048;
                v89 = a1;
                v90 = 1024;
                v91 = v59;
                v92 = 2048;
                v93 = v73;
                v55 = " [%s] %s:%d [%p] Failed to create sample buffer from boxed metadata sample buffer, error=%d boxedMetadataSampleBuffer=%p";
                v58 = v61;
LABEL_103:
                _os_log_error_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_ERROR, v55, buf, 0x36u);
                goto LABEL_34;
              }

              v56 = BlockBufferForIndex;
              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                goto LABEL_34;
              }

              v57 = VRTraceErrorLogLevelToCSTR();
              v54 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_34;
              }

              *buf = 136316418;
              v83 = v57;
              v84 = 2080;
              v85 = "_VCImageQueue_CreateBoxedMetadataSampleBuffer";
              v86 = 1024;
              v87 = 1170;
              v88 = 2048;
              v89 = a1;
              v90 = 1024;
              v91 = v56;
              v92 = 2048;
              v93 = theBuffer;
              v55 = " [%s] %s:%d [%p] Failed to create boxed metadata block buffer from boxed metadada, error=%d boxedMetadataSampleBuffer=%p";
            }

            v58 = v54;
            goto LABEL_103;
          }

          VCImageQueue_EnqueueSampleBuffer_cold_8();
        }

        else
        {
          VCImageQueue_EnqueueSampleBuffer_cold_9();
        }

LABEL_35:
        if (cf)
        {
          CFRelease(cf);
        }

        if (formatDescriptionOut)
        {
          CFRelease(formatDescriptionOut);
        }

        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        v35 = v73;
        if (v73)
        {
          v36 = *(a1 + 424);
          v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v37 && !v37(v36, v35))
          {
            value_low = 1;
LABEL_45:
            if (v73)
            {
              CFRelease(v73);
            }

            v62 = v9;
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v39 = VRTraceErrorLogLevelToCSTR();
              v40 = *MEMORY[0x1E6986650];
              v41 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = *(a1 + 424);
                  *time = 136316674;
                  *&time[4] = v39;
                  *&time[12] = 2080;
                  *&time[14] = "_VCImageQueue_EnqueueSampleBufferToFigVideoReceiver";
                  *&time[22] = 1024;
                  *&time[24] = 1431;
                  *&time[28] = 2048;
                  *&time[30] = v28;
                  *&time[38] = 2048;
                  *&time[40] = v42;
                  *&time[48] = 2048;
                  *&time[50] = v71.value;
                  *&time[58] = 1024;
                  *&time[60] = value_low;
                  _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Enqueuing TaggedBufferGroup's metadataDictionary=%p to FigQueue=%p with presentationTime=%lld, succeeded=%d", time, 0x40u);
                }
              }

              else if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                v51 = *(a1 + 424);
                *time = 136316674;
                *&time[4] = v39;
                *&time[12] = 2080;
                *&time[14] = "_VCImageQueue_EnqueueSampleBufferToFigVideoReceiver";
                *&time[22] = 1024;
                *&time[24] = 1431;
                *&time[28] = 2048;
                *&time[30] = v28;
                *&time[38] = 2048;
                *&time[40] = v51;
                *&time[48] = 2048;
                *&time[50] = v71.value;
                *&time[58] = 1024;
                *&time[60] = value_low;
                _os_log_debug_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Enqueuing TaggedBufferGroup's metadataDictionary=%p to FigQueue=%p with presentationTime=%lld, succeeded=%d", time, 0x40u);
              }
            }

            v63 = v10;
            v43 = 0;
            while (1)
            {
              sampleTimingArray.duration.value = 0;
              *&v95.category = 0x2766C6179;
              v95.value = v43;
              CVPixelBufferForTag = CMTaggedBufferGroupGetCVPixelBufferForTag(group, v95, &sampleTimingArray.duration.value);
              ImageQueueAtIndex = _VCImageQueue_GetImageQueueAtIndex(a1, sampleTimingArray.duration.value);
              *time = v71;
              v45 = _VCImageQueue_EnqueuePixelBuffer(a1, ImageQueueAtIndex, CVPixelBufferForTag, time, &v69);
              if (VRTraceGetErrorLogLevelForModule() < 8)
              {
                goto LABEL_64;
              }

              v46 = VRTraceErrorLogLevelToCSTR();
              v47 = *MEMORY[0x1E6986650];
              v48 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] != 1)
              {
                break;
              }

              if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_64;
              }

              *time = 136317186;
              *&time[4] = v46;
              *&time[12] = 2080;
              *&time[14] = "_VCImageQueue_EnqueueSampleBufferToFigVideoReceiver";
              *&time[22] = 1024;
              *&time[24] = 1440;
              *&time[28] = 2048;
              *&time[30] = CVPixelBufferForTag;
              *&time[38] = 1024;
              *&time[40] = v43;
              *&time[44] = 2048;
              *&time[46] = ImageQueueAtIndex;
              *&time[54] = 2048;
              *&time[56] = sampleTimingArray.duration.value;
              *v79 = 2048;
              *&v79[2] = v71.value;
              v80 = 1024;
              v81 = v45;
              _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Enqueuing TaggedBufferGroup's pixelBuffer=%p for layerID=%d to FigQueue=%p on indexOut=%ld, with presentationTime=%lld, succeeded=%d", time, 0x50u);
              if ((v45 & 1) == 0)
              {
                goto LABEL_77;
              }

LABEL_65:
              if (Count == ++v43)
              {
                v12 = v65;
                v10 = v63;
                v11 = v64;
                v9 = v62;
                goto LABEL_69;
              }
            }

            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *time = 136317186;
              *&time[4] = v46;
              *&time[12] = 2080;
              *&time[14] = "_VCImageQueue_EnqueueSampleBufferToFigVideoReceiver";
              *&time[22] = 1024;
              *&time[24] = 1440;
              *&time[28] = 2048;
              *&time[30] = CVPixelBufferForTag;
              *&time[38] = 1024;
              *&time[40] = v43;
              *&time[44] = 2048;
              *&time[46] = ImageQueueAtIndex;
              *&time[54] = 2048;
              *&time[56] = sampleTimingArray.duration.value;
              *v79 = 2048;
              *&v79[2] = v71.value;
              v80 = 1024;
              v81 = v45;
              _os_log_debug_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Enqueuing TaggedBufferGroup's pixelBuffer=%p for layerID=%d to FigQueue=%p on indexOut=%ld, with presentationTime=%lld, succeeded=%d", time, 0x50u);
              if ((v45 & 1) == 0)
              {
                goto LABEL_77;
              }

              goto LABEL_65;
            }

LABEL_64:
            if ((v45 & 1) == 0)
            {
              goto LABEL_77;
            }

            goto LABEL_65;
          }

          VCImageQueue_EnqueueSampleBuffer_cold_10();
        }

        else
        {
          VCImageQueue_EnqueueSampleBuffer_cold_11();
        }

LABEL_74:
        value_low = LOBYTE(sampleTimingArray.duration.value);
        goto LABEL_45;
      }

      VCImageQueue_EnqueueSampleBuffer_cold_14();
    }

    else
    {
      VCImageQueue_EnqueueSampleBuffer_cold_15();
    }

    v49 = time[0];
    goto LABEL_71;
  }

  if ((VCStreamOutput_EnqueueSampleBuffer(v13, a2) & 1) == 0)
  {
    _VCImageQueue_AverageFrameRate(a1);
    goto LABEL_77;
  }

  v14 = *v4;
  v15 = v4[1];
  v16 = CMSampleBufferGetImageBuffer(a2);
  *time = v9;
  *&time[8] = v10;
  *&time[12] = v11;
  *&time[16] = v12;
  v17 = CMTimeGetSeconds(time);
  *time = v14;
  Seconds = v17;
  *&time[8] = v15;
  *&time[16] = v6;
  v19 = a1;
  v20 = v16;
LABEL_70:
  _VCImageQueue_EmitFrameEnqueuedSignposts(v19, *&Seconds, time, v20);
  v49 = 1;
LABEL_71:
  pthread_mutex_unlock((a1 + 32));
  return v49;
}

void VCImageQueue_CleanupStreamOutput(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCImageQueue_CleanupStreamOutput_cold_1();
    }
  }

  *(a1 + 152) = 0;
}

CFIndex _VCImageQueue_AverageFrameRate(uint64_t a1)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  v2 = micro();
  _VCImageQueue_RemoveExpiredFrameCounts(a1, v2);
  result = CFArrayGetCount(*(a1 + 136));
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 136), 0);
    v5 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    valuePtr[0] = 0.0;
    result = CFNumberGetValue(v5, kCFNumberDoubleType, valuePtr);
    if (v2 - valuePtr[0] >= 0.1)
    {
      v6 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
      v7 = 0;
      return CFNumberGetValue(v6, kCFNumberSInt32Type, &v7);
    }
  }

  return result;
}

uint64_t _VCImageQueue_RemoveExpiredFrameCounts(uint64_t a1, double a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  result = CFArrayGetCount(*(a1 + 136));
  if (result >= 1)
  {
    v5 = a2 + -10.0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 136), 0);
      v7 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      v8[0] = 0.0;
      result = CFNumberGetValue(v7, kCFNumberDoubleType, v8);
      if (v8[0] >= v5)
      {
        break;
      }

      CFArrayRemoveValueAtIndex(*(a1 + 136), 0);
      result = CFArrayGetCount(*(a1 + 136));
    }

    while (result > 0);
  }

  return result;
}

void _VCImageQueue_CustomBlockSourceFreeBlock(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigImageQueueCanEnqueueImage(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

void *OUTLINED_FUNCTION_45_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, (v9 + 224), 0x80uLL);
}

BOOL OUTLINED_FUNCTION_53()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void *OUTLINED_FUNCTION_54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __dst)
{

  return memcpy(&__dst, (v25 + 224), 0x80uLL);
}

void sub_1DB7B13FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void VCAudioStreamSendGroup_PushAudioSamples(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  if (VRTraceIsInternalOSInstalled())
  {
    v4 = micro();
  }

  v46 = a2;
  v5 = CMSimpleQueueDequeue(*(a1 + 784));
  if (v5)
  {
    v13 = v5;
    v14 = 0;
    do
    {
      if (*v13)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __VCAudioStreamSendGroup_UpdateActiveAudioStreams_block_invoke;
        *v49 = &unk_1E85F6DD0;
        *&v49[8] = a1;
        *&v49[16] = v13;
        _VCAudioStreamSendGroup_ProcessActiveStreams(a1, v13, buf);
        v15 = *(*(a1 + 768) + 176);
        if (v15)
        {
          v16 = 0;
          do
          {
            if (*(v15 + 8) == 1)
            {
              v16 += *(v15 + 12);
            }

            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          v16 = 0;
        }

        *(a1 + 496) = v16;
        v17 = MEMORY[0x1E1289F20](a1 + 296);
        if (v17)
        {
          v18 = *(a1 + 304);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __VCAudioStreamSendGroup_UpdateActiveAudioStreams_block_invoke_2;
          block[3] = &unk_1E85F37F0;
          block[4] = v17;
          block[5] = a1;
          dispatch_async(v18, block);
        }
      }

      ++v14;
      VCMemoryPool_Free(*(a1 + 800), v13);
      v13 = CMSimpleQueueDequeue(*(a1 + 784));
    }

    while (v13);
  }

  LogProfileTimeOverLimit(v4, 0, v6, v7, v8, v9, v10, v11, v12, "VCAudioStreamSendGroup_ProcessAudioStreamUpdateEvent");
  v19 = CMSimpleQueueDequeue(*(a1 + 792));
  if (v19)
  {
    v20 = v19;
    do
    {
      for (i = *(*(a1 + 768) + 176); i; i = *i)
      {
        [i[5] redundancyController:*(a1 + 488) redundancyPercentageDidChange:*v20];
      }

      VCMemoryPool_Free(*(a1 + 808), v20);
      v20 = CMSimpleQueueDequeue(*(a1 + 792));
    }

    while (v20);
  }

  Timestamp = VCAudioBufferList_GetTimestamp(a2);
  HostTime = VCAudioBufferList_GetHostTime(a2);
  kdebug_trace();
  if ((*(a1 + 500) & 1) != 0 || *(a1 + 873) == 1)
  {
    _VCAudioStreamSendGroup_ModulateSampleBufferTimestampWithSourceTimestamp(a1, a2);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      v26 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = "VCAudioStreamSendGroup_PushAudioSamples";
          *&buf[22] = 1024;
          *v49 = 951;
          *&v49[4] = 1024;
          *&v49[6] = Timestamp;
          *&v49[10] = 2048;
          *&v49[12] = HostTime;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio modulated timestamp: originalTimestamp=%d, hostTime=%f", buf, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        *&buf[4] = v24;
        *&buf[12] = 2080;
        *&buf[14] = "VCAudioStreamSendGroup_PushAudioSamples";
        *&buf[22] = 1024;
        *v49 = 951;
        *&v49[4] = 1024;
        *&v49[6] = Timestamp;
        *&v49[10] = 2048;
        *&v49[12] = HostTime;
        _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Audio modulated timestamp: originalTimestamp=%d, hostTime=%f", buf, 0x2Cu);
      }
    }
  }

  v27 = VCAudioBufferList_GetTimestamp(a2);
  v28 = VCAudioBufferList_GetHostTime(a2);
  v29 = [objc_msgSend(*(a1 + 768) "audioIO")];
  v30 = *(*(a1 + 768) + 192);
  if (v30)
  {
    v31 = *v29;
    do
    {
      VCMediaStreamSendGroup_UpdateSendSampleRTPTimestamp(*v30, v27, v31, v28);
      v30 = v30[2];
    }

    while (v30);
  }

  if (*(a1 + 312))
  {
    Priority = VCAudioBufferList_GetPriority(v46);
    VoiceActivity = VCAudioBufferList_GetVoiceActivity(v46);
    v34 = VCAudioBufferList_GetPriority(v46);
    if (*(a1 + 825) == 1)
    {
      v35 = micro();
      if (v35 - *(a1 + 832) > 1.0)
      {
        *(a1 + 826) = [+[VCDefaults sharedInstance](VCDefaults forceAudioPriorityValue];
        *(a1 + 832) = v35;
      }

      v36 = *(a1 + 826);
      if (*(a1 + 826))
      {
        VCAudioBufferList_SetPriority(v46, *(a1 + 826));
        v34 = v36;
      }
    }

    if (*(a1 + 872))
    {
      if (v34)
      {
        goto LABEL_49;
      }
    }

    else if (v34 && (*(*(a1 + 768) + 168) != 1 || (*(a1 + 825) & 1) != 0))
    {
      goto LABEL_49;
    }

    v34 = VCVoiceDetector_ProcessSampleBuffer(*(a1 + 840), v46, [*(a1 + 768) isMuted]);
LABEL_49:
    if (v34 != *(a1 + 824))
    {
      *(a1 + 824) = v34;
      v40 = MEMORY[0x1E1289F20](a1 + 296);
      if (v40)
      {
        v41 = *(a1 + 304);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __VCAudioStreamSendGroup_UpdateAudioPriorityUplink_block_invoke;
        *v49 = &unk_1E85F37C8;
        *&v49[8] = v40;
        *&v49[16] = a1;
        v50 = v34;
        dispatch_async(v41, buf);
      }
    }

    *(a1 + 868) = VCAudioBufferList_GetAveragePower(v46);
    v42 = *(a1 + 848);
    if (v42)
    {
      v43 = VCSystemAudioCaptureSession_pullAudioSamples(v42);
      if (v43)
      {
        v44 = v43;
        VCAudioBufferList_ApplyGain(v43, 0.3162);
        VCAudioDucker_Process(*(a1 + 856), v46, v44);
        VCAudioBufferList_Mix(v46, v44);
        VCAudioBufferList_SetVoiceActivity(v46, 1);
      }
    }

    for (j = *(*(a1 + 768) + 176); j; j = *j)
    {
      if (*(j + 8) == 1)
      {
        VCAudioStream_PushAudioSamples(j[5], v46);
      }
    }

    if (*(a1 + 864))
    {
      VCMediaQueue_SchedulePackets(*(a1 + 816));
    }

    VCAudioBufferList_SetTimestamp(v46, Timestamp);
    VCAudioBufferList_SetPriority(v46, Priority);
    VCAudioBufferList_SetVoiceActivity(v46, VoiceActivity);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    v39 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v37;
        *&buf[12] = 2080;
        *&buf[14] = "VCAudioStreamSendGroup_PushAudioSamples";
        *&buf[22] = 1024;
        *v49 = 958;
        _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d audio no-op no MKM", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      VCAudioStreamSendGroup_PushAudioSamples_cold_1();
    }
  }

  VCAudioBufferList_SetTimestamp(v46, Timestamp);
}

uint64_t _VCAudioStreamSendGroup_ProcessActiveStreams(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = *(result + 768);
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(v3 + 176);
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = a2 + 2;
    while (1)
    {
      v11 = *(v4 + 17);
      if (*(v4 + 17))
      {
        v12 = v7 + 1;
        if (v12 < *a2 && *(v4 + 16) == *&v10[2 * v7] && v11 == *&v10[2 * v12])
        {
          goto LABEL_10;
        }
      }

      else if (*a2 > v7 && *(v4 + 16) == *&v10[2 * v7])
      {
LABEL_10:
        if (v9)
        {
          result = (*(a3 + 16))(a3, v9, 1, v14, v8);
          v11 = *(v4 + 17);
        }

        v8 = 0;
        if (v11)
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }

        v7 += v13;
        v9 = v4;
        goto LABEL_17;
      }

      result = (*(a3 + 16))(a3, v4, 0, 0, 0);
LABEL_17:
      if ((a2[18] & 1) == 0)
      {
        *(v14 + v8++) = *(v4 + 16);
      }

      if (*(v4 + 17))
      {
        *(v14 + v8++) = *(v4 + 17);
      }

      v4 = *v4;
      if (!v4)
      {
        if (v9)
        {
          return (*(a3 + 16))(a3, v9, 1, v14, v8);
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t _VCAudioStreamSendGroup_ModulateSampleBufferTimestampWithSourceTimestamp(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  SampleFormat = VCAudioBufferList_GetSampleFormat(a2);
  HostTime = VCAudioBufferList_GetHostTime(a2);
  Timestamp = VCAudioBufferList_GetTimestamp(a2);
  SampleCount = VCAudioBufferList_GetSampleCount(a2);
  v8 = *SampleFormat;
  pthread_rwlock_rdlock((a1 + 504));
  v9 = *(a1 + 704);
  v10 = *(a1 + 712);
  v11 = *(a1 + 728);
  pthread_rwlock_unlock((a1 + 504));
  v12 = *(a1 + 876) + Timestamp;
  v13 = (v8 * v9 / v11) + (v8 * (HostTime - v10));
  v14 = v13 - v12;
  if (v13 - v12 >= 0x7FFFFFFF || v13 == v12)
  {
    v14 = v12 - v13;
  }

  if (v14 > SampleCount >> 1)
  {
    *(a1 + 876) = v13 - Timestamp;
    v12 = *(a1 + 876) + Timestamp;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 876);
        v20 = 136316418;
        v21 = v16;
        v22 = 2080;
        v23 = "_VCAudioStreamSendGroup_ModulateSampleBufferTimestampWithSourceTimestamp";
        v24 = 1024;
        v25 = 922;
        v26 = 1024;
        v27 = Timestamp;
        v28 = 1024;
        v29 = v18;
        v30 = 1024;
        v31 = v12;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Re-adjusting the sampleTimestamp=%d by adding timestampModulationOffset=%d modulatedTimestamp=%d", &v20, 0x2Eu);
      }
    }
  }

  return VCAudioBufferList_SetTimestamp(a2, v12);
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  return [v35 countByEnumeratingWithState:v36 - 160 objects:&a35 count:16];
}

uint64_t OUTLINED_FUNCTION_21_6()
{
  v3 = *v0;

  return [v3 performSelector:v1];
}

void WriteYuvFrame(__CVBuffer *a1, uint64_t a2, char a3)
{
  v9 = *MEMORY[0x1E69E9840];
  CVPixelBufferRetain(a1);
  global_queue = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __WriteYuvFrame_block_invoke;
  v7[3] = &__block_descriptor_49_e5_v8__0l;
  v7[4] = a1;
  v7[5] = a2;
  v8 = a3;
  dispatch_async(global_queue, v7);
}

void __WriteYuvFrame_block_invoke(uint64_t a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(*(a1 + 32));
  CVPixelBufferLockBaseAddress(*(a1 + 32), 1uLL);
  if ((PixelFormatType & 0xFFFFFFEF) == 0x34323066)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*(a1 + 32), 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(a1 + 32), 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(*(a1 + 32), 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(*(a1 + 32), 0);
    if (HeightOfPlane >= 1)
    {
      do
      {
        fwrite(BaseAddressOfPlane, 1uLL, WidthOfPlane, *(a1 + 40));
        BaseAddressOfPlane += BytesPerRowOfPlane;
        --HeightOfPlane;
      }

      while (HeightOfPlane);
    }

    v7 = CVPixelBufferGetBaseAddressOfPlane(*(a1 + 32), 1uLL);
    v8 = CVPixelBufferGetBytesPerRowOfPlane(*(a1 + 32), 1uLL);
    v9 = CVPixelBufferGetWidthOfPlane(*(a1 + 32), 1uLL);
    v10 = CVPixelBufferGetHeightOfPlane(*(a1 + 32), 1uLL);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = v10 & 0x7FFFFFFF;
      v13 = v7;
      do
      {
        v14 = v9 & 0x7FFFFFFF;
        v15 = v13;
        if (v9 >= 1)
        {
          do
          {
            fwrite(v15, 1uLL, 1uLL, *(a1 + 40));
            v15 += 2;
            --v14;
          }

          while (v14);
        }

        ++v11;
        v13 += v8;
      }

      while (v11 != v12);
      v16 = 0;
      v17 = v7 + 1;
      do
      {
        v18 = v9 & 0x7FFFFFFF;
        v19 = v17;
        if (v9 >= 1)
        {
          do
          {
            fwrite(v19, 1uLL, 1uLL, *(a1 + 40));
            v19 += 2;
            --v18;
          }

          while (v18);
        }

        ++v16;
        v17 += v8;
      }

      while (v16 != v12);
    }
  }

  else if (PixelFormatType == 846624121)
  {
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 32));
    BytesPerRow = CVPixelBufferGetBytesPerRow(*(a1 + 32));
    Width = CVPixelBufferGetWidth(*(a1 + 32));
    Height = CVPixelBufferGetHeight(*(a1 + 32));
    if (Height >= 1)
    {
      v24 = 2 * Width;
      do
      {
        fwrite(BaseAddress, 1uLL, v24, *(a1 + 40));
        BaseAddress += BytesPerRow;
        --Height;
      }

      while (Height);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __WriteYuvFrame_block_invoke_cold_1(v25, PixelFormatType);
    }
  }

  CVPixelBufferUnlockBaseAddress(*(a1 + 32), 1uLL);
  CVPixelBufferRelease(*(a1 + 32));
  if (*(a1 + 48) == 1)
  {
    fclose(*(a1 + 40));
  }
}

void DumpFrameYuvWithTimestamp(uint64_t a1, __CVBuffer *a2, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = "DumpFrameYuvWithTimestamp";
      *&buf[22] = 1024;
      *&buf[24] = 217;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d frame is null", buf, 0x1Cu);
    }
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v7;
  v42 = v7;
  v39 = v7;
  v40 = v7;
  v37 = v7;
  v38 = v7;
  v35 = v7;
  v36 = v7;
  v33 = v7;
  v34 = v7;
  v31 = v7;
  v32 = v7;
  v29 = v7;
  v30 = v7;
  *buf = v7;
  *&buf[16] = v7;
  __strlcpy_chk();
  __strlcat_chk();
  mkdir(buf, 0x1FFu);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v10;
  v27 = v10;
  v24 = v10;
  v25 = v10;
  v22 = v10;
  v23 = v10;
  v20 = v10;
  v21 = v10;
  v18 = v10;
  v19 = v10;
  v16 = v10;
  v17 = v10;
  v14 = v10;
  v15 = v10;
  *__str = v10;
  v13 = v10;
  snprintf(__str, 0x100uLL, "%s%dx%d.%08X.yuv", buf, Width, Height, a3);
  v11 = fopen(__str, "wb");
  if (v11)
  {
    WriteYuvFrame(a2, v11, 1);
  }
}

void DumpFrameYuv(size_t *a1, size_t *a2, FILE **a3, int a4, CVPixelBufferRef pixelBuffer)
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  if (v9 != CVPixelBufferGetHeight(pixelBuffer) || (v10 = *a2, v10 != CVPixelBufferGetWidth(pixelBuffer)))
  {
    if (*a3)
    {
      fclose(*a3);
    }

    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28 = v11;
    v29 = v11;
    v26 = v11;
    v27 = v11;
    v24 = v11;
    v25 = v11;
    v22 = v11;
    v23 = v11;
    v20 = v11;
    v21 = v11;
    v18 = v11;
    v19 = v11;
    v16 = v11;
    v17 = v11;
    *__str = v11;
    v15 = v11;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    snprintf(__str, 0x100uLL, "%s-txSourceYuv.%zux%zu.%s.yuv", "/tmp/vcp/", Width, Height, "2vuy");
    *a3 = fopen(__str, "wb");
    *a2 = CVPixelBufferGetWidth(pixelBuffer);
    *a1 = CVPixelBufferGetHeight(pixelBuffer);
  }

  WriteYuvFrame(pixelBuffer, *a3, 0);
}

const opaqueCMFormatDescription *extractAvcCFromFormatDescriptionForLog(const opaqueCMFormatDescription *Extension)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v2;
      v9 = 2080;
      v10 = "extractAvcCFromFormatDescriptionForLog";
      v11 = 1024;
      v12 = 267;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SPSPPS-extractAvcCFromFormatDescriptionForLog() was called", &v7, 0x1Cu);
    }
  }

  if (Extension)
  {
    Extension = CMFormatDescriptionGetExtension(Extension, *MEMORY[0x1E69600A0]);
    if (Extension)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(Extension))
      {
        Extension = CFDictionaryGetValue(Extension, @"avcC");
        if (Extension)
        {
          v5 = CFArrayGetTypeID();
          if (v5 == CFGetTypeID(Extension))
          {
            return CFArrayGetValueAtIndex(Extension, 0);
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return Extension;
}

uint64_t readAVCCAndEncodeH264SPSPPS(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315650;
      v26 = v7;
      v27 = 2080;
      v28 = "readAVCCAndEncodeH264SPSPPS";
      v29 = 1024;
      v30 = 291;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SPSPPS-readAVCCAndEncodeH264SPSPPS() was called", &v25, 0x1Cu);
    }
  }

  v9 = *(a1 + 5) & 0x1F;
  if ((*(a1 + 5) & 0x1F) != 0)
  {
    v10 = 0;
    v11 = 6;
    do
    {
      v12 = v11;
      v13 = *(a1 + v11);
      v14 = bswap32(v13);
      v15 = v12 + 2;
      *(a3 + v10) = kVideoUtilStartCode;
      v16 = v10 + 4;
      memcpy((a3 + v10 + 4), (a1 + v12 + 2), __rev16(v13));
      v11 = v15 + HIWORD(v14);
      v10 = v16 + HIWORD(v14);
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 6;
  }

  v17 = *(a1 + v11);
  if (*(a1 + v11))
  {
    v18 = v11 + 1;
    do
    {
      v19 = v18;
      v20 = *(a1 + v18);
      v21 = bswap32(v20);
      v22 = v19 + 2;
      *(a3 + v10) = kVideoUtilStartCode;
      v23 = v10 + 4;
      memcpy((a3 + v10 + 4), (a1 + v19 + 2), __rev16(v20));
      v18 = v22 + HIWORD(v21);
      v10 = v23 + HIWORD(v21);
      --v17;
    }

    while (v17);
  }

  *a4 = v10;
  return 0;
}

uint64_t gksVCPParseParameterSetsAndCreateConfigurationRecord()
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "gksVCPParseParameterSetsAndCreateConfigurationRecord";
      v7 = 1024;
      v8 = 352;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SPSPPS-gksVCPParseParameterSetsAndCreateConfigurationRecord() was called", &v3, 0x1Cu);
    }
  }

  return VCPParseParameterSetsAndCreateConfigurationRecord();
}

void VideoUtil_AddFakeLargeFrameData(uint64_t a1, uint64_t a2, int *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  if (*a3 < 1)
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = bswap32(*(a2 + v7));
      v9 = v8 + 4;
      v7 += v8 + 4;
    }

    while (v7 < v6);
  }

  if (v7 == v6)
  {
    v10 = *(a1 + 180) - v6;
    if (v10 >= 1)
    {
      if (v10 <= 8)
      {
        v11 = 8;
      }

      else
      {
        v11 = *(a1 + 180) - v6;
      }

      v12 = v6 - v9;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *a3;
          v16 = *(a1 + 180);
          v18 = 136316930;
          v19 = v13;
          v20 = 2080;
          v21 = "VideoUtil_AddFakeLargeFrameData";
          v22 = 1024;
          v23 = 394;
          v24 = 1024;
          v25 = v15;
          v26 = 1024;
          v27 = v16;
          v28 = 1024;
          v29 = v12;
          v30 = 1024;
          v31 = v8;
          v32 = 1024;
          v33 = v8 + v11;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Fake frame: iLen: %d  LargeFrame: %d  iLastJumpIndex: %d  dwLastGobSize: %d  dwLastGobNewSize: %d \n", &v18, 0x3Au);
        }
      }

      *(a2 + v12) = bswap32(v8 + v11);
      v17 = *a3 + v11;
      *a3 = v17;
      *(a2 + v17 - 8) = bswap32(v8);
      *(a2 + *a3 - 4) = 1357975584;
    }
  }
}

void VideoUtil_PrintFormatDesc(const opaqueCMFormatDescription *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315906;
        v15 = v3;
        v16 = 2080;
        v17 = "VideoUtil_PrintFormatDesc";
        v18 = 1024;
        v19 = 416;
        v20 = 2080;
        v21 = FourccToCStr(MediaSubType);
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Codec Type is %s", &v14, 0x26u);
      }
    }

    Extensions = CMFormatDescriptionGetExtensions(a1);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (Extensions)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315906;
          v15 = v7;
          v16 = 2080;
          v17 = "VideoUtil_PrintFormatDesc";
          v18 = 1024;
          v19 = 419;
          v20 = 2112;
          v21 = Extensions;
          v9 = " [%s] %s:%d extensions are %@";
          v10 = v8;
          v11 = 38;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
        }
      }
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v12;
        v16 = 2080;
        v17 = "VideoUtil_PrintFormatDesc";
        v18 = 1024;
        v19 = 421;
        v9 = " [%s] %s:%d extensions are NULL";
        v10 = v13;
        v11 = 28;
        goto LABEL_15;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoUtil_PrintFormatDesc_cold_1();
    }
  }
}

size_t VideoUtil_ExtractSPSPPSFromSampleBuffer(opaqueCMSampleBuffer *a1, uint64_t a2, size_t a3)
{
  parameterSetPointerOut[1] = *MEMORY[0x1E69E9840];
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  if (FormatDescription)
  {
    v6 = FormatDescription;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      parameterSetSizeOut = 0;
      parameterSetPointerOut[0] = 0;
      parameterSetCountOut = 0;
      NALUnitHeaderLengthOut = 0;
      if (CMVideoFormatDescriptionGetH264ParameterSetAtIndex(v6, v8, parameterSetPointerOut, &parameterSetSizeOut, &parameterSetCountOut, &NALUnitHeaderLengthOut))
      {
        break;
      }

      v10 = parameterSetSizeOut;
      v11 = parameterSetSizeOut + v9 + 4;
      if (v11 > a3)
      {
        break;
      }

      *(a2 + v9) = bswap32(parameterSetSizeOut);
      memcpy((a2 + v9 + 4), parameterSetPointerOut[0], v10);
      v12 = (v8 >= parameterSetCountOut - 1) | v7;
      v7 = 1;
      v8 = 1;
      v9 = v11;
      if (v12)
      {
        return v11;
      }
    }
  }

  return 0;
}

uint64_t VideoUtil_SerializeHEVCParameterSetsFromFormatDescription(const opaqueCMFormatDescription *a1, uint64_t a2, size_t a3, void *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if (!a1)
  {
    VideoUtil_SerializeHEVCParameterSetsFromFormatDescription_cold_5();
    return v8;
  }

  if (!a2)
  {
    VideoUtil_SerializeHEVCParameterSetsFromFormatDescription_cold_4();
    return v8;
  }

  if (!a3)
  {
    VideoUtil_SerializeHEVCParameterSetsFromFormatDescription_cold_3();
    return v8;
  }

  if (!a4)
  {
    VideoUtil_SerializeHEVCParameterSetsFromFormatDescription_cold_2();
    return v8;
  }

  if ((_VideoUtil_SerializeBaseLayerParameterSets(a1, a2, a3, &v7) & 1) == 0)
  {
    VideoUtil_SerializeHEVCParameterSetsFromFormatDescription_cold_1();
    return v8;
  }

  result = _VideoUtil_SerializeEnhancementLayerParameterSets(a1);
  *a4 = v7;
  return result;
}

uint64_t _VideoUtil_SerializeBaseLayerParameterSets(const opaqueCMFormatDescription *a1, uint64_t a2, size_t a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  parameterSetCountOut = 0;
  if (CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(a1, 0, 0, 0, &parameterSetCountOut, 0))
  {
    _VideoUtil_SerializeBaseLayerParameterSets_cold_1();
    return parameterSetPointerOut;
  }

  else
  {
    if (parameterSetCountOut)
    {
      parameterSetSizeOut = 0;
      parameterSetPointerOut = 0;
      if (CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(a1, 0, &parameterSetPointerOut, &parameterSetSizeOut, 0, 0))
      {
LABEL_8:
        _VideoUtil_SerializeBaseLayerParameterSets_cold_2();
        return v14;
      }

      v8 = 1;
      while (_VideoUtil_SerializeParameterSetsIntoBuffer(a2, parameterSetSizeOut, parameterSetPointerOut, bswap32(parameterSetSizeOut), a4, a3))
      {
        if (v8 >= parameterSetCountOut)
        {
          return 1;
        }

        parameterSetSizeOut = 0;
        parameterSetPointerOut = 0;
        if (CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(a1, v8++, &parameterSetPointerOut, &parameterSetSizeOut, 0, 0))
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }
}

uint64_t _VideoUtil_SerializeEnhancementLayerParameterSets(const opaqueCMFormatDescription *a1)
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[1] = 0;
  if (VideoUtil_ExtractSampleBufferDescriptionAtom(a1, @"lhvC"))
  {
    if (!FigHEVCBridge_GetHEVCParameterSetFromLHVCAtIndex())
    {
      return 1;
    }

    _VideoUtil_SerializeEnhancementLayerParameterSets_cold_1(v2);
  }

  else
  {
    _VideoUtil_SerializeEnhancementLayerParameterSets_cold_2(v2);
  }

  return LOBYTE(v2[0]);
}

void VideoUtil_PrintBuffer(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  bzero(v26, 0x259uLL);
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        if (a3 >= 0xC8)
        {
          v6 = 200;
        }

        else
        {
          v6 = a3;
        }

        v7 = 3 * v6;
        do
        {
          v8 = *a1++;
          __snprintf_chk(v26, v7, 0, 0x259uLL, "%s%02x ", v26, v8);
          --v6;
        }

        while (v6);
        if (VRTraceGetErrorLogLevelForModule() > 6)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v11 = "...|";
            *buf = 136316674;
            v13 = v9;
            v15 = "VideoUtil_PrintBuffer";
            v14 = 2080;
            if (a3 > 0xC8)
            {
              v11 = "|";
            }

            v16 = 1024;
            v17 = 818;
            v18 = 2080;
            v19 = a2;
            v20 = 2048;
            v21 = a3;
            v22 = 2080;
            v23 = v26;
            v24 = 2080;
            v25 = v11;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bufferName='%s': Size=%zu, Buffer=|%s%s", buf, 0x44u);
          }
        }
      }

      else
      {
        VideoUtil_PrintBuffer_cold_1();
      }
    }

    else
    {
      VideoUtil_PrintBuffer_cold_2();
    }
  }

  else
  {
    VideoUtil_PrintBuffer_cold_3();
  }
}

uint64_t VideoUtil_BlockBufferToString(OpaqueCMBlockBuffer *a1, char *a2, uint64_t a3)
{
  v6 = (a3 - 1) >> 1;
  DataLength = CMBlockBufferGetDataLength(a1);
  if (v6 >= DataLength)
  {
    v6 = DataLength;
  }

  v8 = &a2[a3];
  result = CMBlockBufferCopyDataBytes(a1, 0, v6, &v8[-v6]);
  if (v6)
  {
    v10 = -v6;
    do
    {
      result = sprintf(a2, "%02x", v8[v10]);
      a2 += 2;
    }

    while (!__CFADD__(v10++, 1));
  }

  return result;
}

void VideoUtil_AddImgDescToBitstream(opaqueCMSampleBuffer *a1, uint64_t a2, int a3, int a4, uint64_t a5, int *a6, size_t a7)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v18 = 0;
    goto LABEL_13;
  }

  *v28 = 0;
  dataPointerOut = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (FormatDescription)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = "VideoUtil_AddImgDescToBitstream";
        *&buf[22] = 1024;
        *&buf[24] = 862;
        *&buf[28] = 1024;
        *&buf[30] = a3;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FigSampleBufferGetFormatDescription: show format desc, %d", buf, 0x22u);
      }
    }

    VideoUtil_PrintFormatDesc(FormatDescription);
    if (a3)
    {
      if (a4 == 1902671459 || a4 == 1752589105)
      {
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v50 = v17;
        v51 = v17;
        v48 = v17;
        v49 = v17;
        v46 = v17;
        v47 = v17;
        v44 = v17;
        v45 = v17;
        v42 = v17;
        v43 = v17;
        v40 = v17;
        v41 = v17;
        v38 = v17;
        v39 = v17;
        v36 = v17;
        v37 = v17;
        v34 = v17;
        v35 = v17;
        v32 = v17;
        v33 = v17;
        *&buf[48] = v17;
        v31 = v17;
        *&buf[16] = v17;
        *&buf[32] = v17;
        *buf = v17;
        if (!VideoUtil_SerializeHEVCParameterSetsFromFormatDescription(FormatDescription, buf, 0x190uLL, v28) || !_VideoUtil_PrependParameterSetsToBuffer(buf, *v28, a5, *a6, a7))
        {
          return;
        }

        v18 = v28[0];
      }

      else
      {
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v50 = v20;
        v51 = v20;
        v48 = v20;
        v49 = v20;
        v46 = v20;
        v47 = v20;
        v44 = v20;
        v45 = v20;
        v42 = v20;
        v43 = v20;
        v40 = v20;
        v41 = v20;
        v38 = v20;
        v39 = v20;
        v36 = v20;
        v37 = v20;
        v34 = v20;
        v35 = v20;
        v32 = v20;
        v33 = v20;
        *&buf[48] = v20;
        v31 = v20;
        *&buf[16] = v20;
        *&buf[32] = v20;
        *buf = v20;
        SPSPPSFromSampleBuffer = VideoUtil_ExtractSPSPPSFromSampleBuffer(a1, buf, 0x190uLL);
        v18 = SPSPPSFromSampleBuffer;
        *v28 = SPSPPSFromSampleBuffer;
        if (!_VideoUtil_PrependParameterSetsToBuffer(buf, SPSPPSFromSampleBuffer, a5, *a6, a7))
        {
          return;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        VideoUtil_PrintBuffer(a5, "Tx Aggregation Packet", *v28);
      }

      goto LABEL_13;
    }

    blockBufferOut = 0;
    SystemEncoding = CFStringGetSystemEncoding();
    if (CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(0, FormatDescription, SystemEncoding, 0, &blockBufferOut))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoUtil_AddImgDescToBitstream_cold_1();
        }
      }

LABEL_34:
      if (blockBufferOut)
      {
        FigBlockBufferRelease();
      }

      return;
    }

    if (CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoUtil_AddImgDescToBitstream_cold_2();
        }
      }

      goto LABEL_34;
    }

    DataLength = CMBlockBufferGetDataLength(blockBufferOut);
    v18 = DataLength + 8;
    v23 = *a6;
    if (DataLength + 8 + v23 > a7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v26 = *a6;
          *buf = 136316418;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = "VideoUtil_AddImgDescToBitstream";
          *&buf[22] = 1024;
          *&buf[24] = 889;
          *&buf[28] = 2048;
          *&buf[30] = a7;
          *&buf[38] = 1024;
          *&buf[40] = v26;
          *&buf[44] = 1024;
          *&buf[46] = DataLength + 8;
          _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer too small. allocatedBufferSize=%zu, bufferSize=%d, header_bytes=%d", buf, 0x32u);
        }
      }

      goto LABEL_34;
    }

    memmove((a5 + v18), a5, v23);
    memcpy((a5 + 8), dataPointerOut, DataLength);
    FigBlockBufferRelease();
LABEL_13:
    if (!a3)
    {
      *a5 = bswap32(v18 - 4);
      *(a5 + 4) = -1547639150;
    }

    *a6 += v18;
    return;
  }

  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoUtil_AddImgDescToBitstream_cold_3();
    }
  }
}

BOOL _VideoUtil_PrependParameterSetsToBuffer(const void *a1, size_t a2, char *__src, size_t __len, size_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = __len + a2;
  if (__len + a2 > a5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136316418;
          v16 = v12;
          v17 = 2080;
          v18 = "_VideoUtil_PrependParameterSetsToBuffer";
          v19 = 1024;
          v20 = 793;
          v21 = 2048;
          v22 = a5;
          v23 = 2048;
          v24 = __len;
          v25 = 2048;
          v26 = a2;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Buffer too small. allocatedBufferSize=%zu, bufferSize=%zu, parameterSetSize=%zu", &v15, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "_VideoUtil_PrependParameterSetsToBuffer";
        v19 = 1024;
        v20 = 793;
        v21 = 2048;
        v22 = a5;
        v23 = 2048;
        v24 = __len;
        v25 = 2048;
        v26 = a2;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Buffer too small. allocatedBufferSize=%zu, bufferSize=%zu, parameterSetSize=%zu", &v15, 0x3Au);
      }
    }
  }

  else
  {
    memmove(&__src[a2], __src, __len);
    memcpy(__src, a1, a2);
  }

  return v8 <= a5;
}

unint64_t VideoUtil_CreateBufferPoolForFrameAttributes(int a1, int a2, int a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = a2;
  valuePtr = a1;
  v15 = a4;
  v16 = a3;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v6 = CFNumberCreate(v4, kCFNumberIntType, &v17);
  v7 = CFNumberCreate(v4, kCFNumberIntType, &v16);
  v8 = CFNumberCreate(v4, kCFNumberIntType, &v15);
  v9 = MEMORY[0x1E695E9D8];
  v10 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = CFDictionaryCreateMutable(v4, 0, v9, v10);
  CFDictionarySetValue(v12, *MEMORY[0x1E6966208], v5);
  CFDictionarySetValue(v12, *MEMORY[0x1E69660B8], v6);
  CFDictionarySetValue(v12, *MEMORY[0x1E6966130], v7);
  CFDictionarySetValue(v12, *MEMORY[0x1E696CE50], v8);
  CFDictionarySetValue(v12, *MEMORY[0x1E69660D8], Mutable);
  CVPixelBufferPoolCreate(v4, 0, v12, &v14);
  CFRelease(v5);
  CFRelease(v6);
  CFRelease(v7);
  CFRelease(v8);
  CFRelease(Mutable);
  CFRelease(v12);
  return v14;
}

const void *VideoUtil_ExtractSampleBufferDescriptionAtom(const opaqueCMFormatDescription *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (!Extension)
  {
    return 0;
  }

  v4 = Extension;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v4))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v4, a2);
  if (!Value)
  {
    return Value;
  }

  v7 = CFArrayGetTypeID();
  if (v7 != CFGetTypeID(Value))
  {
    return Value;
  }

  return CFArrayGetValueAtIndex(Value, 0);
}

CMSampleBufferRef VideoUtil_CreateSampleBufferWithPixelBuffer(CVImageBufferRef imageBuffer, uint64_t a2, CFAllocatorRef allocator, const __CFAllocator *a4)
{
  sampleBufferOut[1] = *MEMORY[0x1E69E9840];
  sampleBufferOut[0] = 0;
  if (imageBuffer)
  {
    v6 = *(MEMORY[0x1E6960CF0] + 48);
    *&sampleTiming.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
    *&sampleTiming.decodeTimeStamp.value = v6;
    v7 = *(MEMORY[0x1E6960CF0] + 64);
    v8 = *(MEMORY[0x1E6960CF0] + 16);
    *&sampleTiming.duration.value = *MEMORY[0x1E6960CF0];
    *&sampleTiming.duration.epoch = v8;
    *&sampleTiming.presentationTimeStamp.value = *a2;
    v9 = *(a2 + 16);
    sampleTiming.decodeTimeStamp.epoch = v7;
    sampleTiming.presentationTimeStamp.epoch = v9;
    formatDescriptionOut = 0;
    if (CMVideoFormatDescriptionCreateForImageBuffer(allocator, imageBuffer, &formatDescriptionOut))
    {
      VideoUtil_CreateSampleBufferWithPixelBuffer_cold_1();
    }

    else if (CMSampleBufferCreateReadyWithImageBuffer(a4, imageBuffer, formatDescriptionOut, &sampleTiming, sampleBufferOut))
    {
      VideoUtil_CreateSampleBufferWithPixelBuffer_cold_2();
    }

    else
    {
      v10 = CMGetAttachment(imageBuffer, @"PropagatableAttachments", 0);
      if (v10)
      {
        CMSetAttachment(sampleBufferOut[0], @"TransportLayer", v10, 1u);
      }

      v11 = CMGetAttachment(imageBuffer, @"PropagatableAttachmentData", 0);
      if (v11)
      {
        Value = CFDictionaryGetValue(v11, @"BLOB2");
        CMSetAttachment(sampleBufferOut[0], @"PropagatableAttachmentData", Value, 1u);
      }

      v13 = CMGetAttachment(imageBuffer, @"vcBufferAttachs", 0);
      if (v13)
      {
        CMSetAttachment(sampleBufferOut[0], @"vcBufferAttachs", v13, 1u);
      }
    }

    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    return sampleBufferOut[0];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoUtil_CreateSampleBufferWithPixelBuffer_cold_3();
      }
    }

    return 0;
  }
}

CMSampleBufferRef createSampleBufferWithPixelBuffer(__CVBuffer *a1, __int128 *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v4 = *a2;
  v5 = *(a2 + 2);
  return VideoUtil_CreateSampleBufferWithPixelBuffer(a1, &v4, v2, v2);
}

uint64_t VideoUtil_ParseFeatureListString(uint64_t a1, unsigned int *a2, BOOL *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  __lasts = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  __strlcpy_chk();
  v5 = strtok_r(__b, ";", &__lasts);
  if (v5)
  {
    v6 = v5;
    v23 = a2;
    v24 = a3;
    v25 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = strchr(v6, 58);
      if (v11)
      {
        v12 = v11;
        v13 = atoi(v11 + 1);
        *v12 = 0;
        if (v13 <= 0x63)
        {
          v14 = v13;
          if (!strcmp(v6, "MVRA") || !strcmp(v6, "VRA"))
          {
            v10 = v14 + 1;
          }

          else if (!strcmp(v6, "RVRA1") || !strcmp(v6, "RVRA2"))
          {
            v8 = v14 + 1;
          }

          else if (!strcmp(v6, "UEP"))
          {
            v9 = v14 + 1;
          }

          else
          {
            v15 = *v6;
            if (v15 == 67)
            {
              if (v6[1] == 82)
              {
                v17 = HIDWORD(v25);
                if (!v6[2])
                {
                  v17 = v14 + 1;
                }

                HIDWORD(v25) = v17;
              }
            }

            else
            {
              if (v15 != 65)
              {
                goto LABEL_19;
              }

              if (v6[1] == 83)
              {
                v16 = v25;
                if (!v6[2])
                {
                  v16 = v14 + 1;
                }

                LODWORD(v25) = v16;
              }
            }
          }
        }
      }

      v15 = *v6;
LABEL_19:
      if (v15 == 76 && v6[1] == 70 && !v6[2])
      {
        v7 = 1;
      }

      v6 = strtok_r(0, ";", &__lasts);
      if (!v6)
      {
        v18 = v10 != 0;
        v19 = v25 != 0;
        v20 = v8 != 0;
        v21 = HIDWORD(v25) != 0;
        a2 = v23;
        a3 = v24;
        goto LABEL_31;
      }
    }
  }

  v18 = 0;
  v9 = 0;
  v19 = 0;
  v20 = 0;
  v7 = 0;
  v21 = 0;
LABEL_31:
  *a2 = v9;
  if (a3)
  {
    *a3 = v7 == 1;
  }

  if (v9)
  {
    v18 = 1;
  }

  return (v18 || v19 || v20 || v21) | (v7 != 0);
}

uint64_t VideoUtil_FeatureListStringOptionExists(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 componentsSeparatedByString:@";"];
  result = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![objc_msgSend(objc_msgSend(*(*(&v11 + 1) + 8 * v9) componentsSeparatedByString:{@":", "firstObject"), "caseInsensitiveCompare:", v4}])
        {
          return 1;
        }

        ++v9;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void VideoUtil_SetVisibleRectFrame(double *a1, float a2, float a3, float a4, float a5)
{
  if (a1)
  {
    v10 = +[VCHardwareSettings isDisplayPortrait];
    v11 = a1[2];
    v12 = a3;
    v13 = v10 && v11 == v12;
    if (v13 && (v14 = a1[3], v15 = a2, v14 == a2))
    {
      *a1 = (v11 - v12) * 0.5 + a4;
      v16 = v14 - v15;
    }

    else
    {
      v15 = a2;
      *a1 = (v11 - a2) * 0.5 + a4;
      v16 = a1[3] - v12;
    }

    a1[1] = v16 * 0.5 - a5;
    a1[2] = v15;
    a1[3] = v12;
  }

  else
  {
    VideoUtil_SetVisibleRectFrame_cold_1();
  }
}

void VideoUtil_GetVisibleRect(__CVBuffer *a1, _OWORD *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0uLL;
  *&v13 = CVPixelBufferGetWidth(a1);
  *(&v13 + 1) = CVPixelBufferGetHeight(a1);
  Attachment = CVBufferGetAttachment(a1, *MEMORY[0x1E6983CE8], 0);
  if (Attachment)
  {
    v5 = Attachment;
    v6 = CFGetTypeID(Attachment);
    if (v6 == CFDictionaryGetTypeID())
    {
      v10 = NAN;
      v11 = NAN;
      v8 = NAN;
      v9 = NAN;
      if (cfDictionaryGetFloat(v5, *MEMORY[0x1E6965D80], &v9))
      {
        if (cfDictionaryGetFloat(v5, *MEMORY[0x1E6965D60], &v8) && cfDictionaryGetFloat(v5, *MEMORY[0x1E6965D68], &v11) && cfDictionaryGetFloat(v5, *MEMORY[0x1E6965D78], &v10))
        {
          VideoUtil_SetVisibleRectFrame(&v12, v9, v8, v11, v10);
        }
      }
    }
  }

  v7 = v13;
  *a2 = v12;
  a2[1] = v7;
}

uint64_t cfDictionaryGetFloat(const __CFDictionary *a1, const void *a2, void *a3)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, cf);
  if (result)
  {
    v5 = CFGetTypeID(cf[0]);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(cf[0], kCFNumberFloatType, a3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void VideoUtil_GetVisibleRectForScreen(__CVBuffer *a1, double *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  Attachment = CVBufferGetAttachment(a1, *MEMORY[0x1E6983CE8], 0);
  v7 = 0.0;
  if (Attachment && (v8 = Attachment, v9 = CFGetTypeID(Attachment), v9 == CFDictionaryGetTypeID()) && (v16 = NAN, v17 = NAN, v14 = NAN, v15 = NAN, cfDictionaryGetFloat(v8, *MEMORY[0x1E6965D80], &v15)) && cfDictionaryGetFloat(v8, *MEMORY[0x1E6965D60], &v14) && cfDictionaryGetFloat(v8, *MEMORY[0x1E6965D68], &v17))
  {
    v10 = 0.0;
    if (cfDictionaryGetFloat(v8, *MEMORY[0x1E6965D78], &v16))
    {
      v7 = v17;
      v10 = v16;
      Width = v15;
      Height = v14;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        v13 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v19 = v11;
            v20 = 2080;
            v21 = "VideoUtil_GetVisibleRectForScreen";
            v22 = 1024;
            v23 = 1317;
            v24 = 2048;
            v25 = Width;
            v26 = 2048;
            v27 = Height;
            v28 = 2048;
            v29 = v7;
            v30 = 2048;
            v31 = v10;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d visibleRect=%.2fx%.2f@(%.2f, %.2f)", buf, 0x44u);
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          v19 = v11;
          v20 = 2080;
          v21 = "VideoUtil_GetVisibleRectForScreen";
          v22 = 1024;
          v23 = 1317;
          v24 = 2048;
          v25 = Width;
          v26 = 2048;
          v27 = Height;
          v28 = 2048;
          v29 = v7;
          v30 = 2048;
          v31 = v10;
          _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d visibleRect=%.2fx%.2f@(%.2f, %.2f)", buf, 0x44u);
        }
      }
    }
  }

  else
  {
    v10 = 0.0;
  }

  *a2 = v7;
  a2[1] = v10;
  a2[2] = Width;
  a2[3] = Height;
}

__CFDictionary *VideoUtil_CreateVisibleRectDictionary(double a1, double a2, double a3, double a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = a2;
  valuePtr = a1;
  v10 = a4;
  v11 = a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D68], v5);
  CFRelease(v5);
  v6 = CFNumberCreate(0, kCFNumberIntType, &v12);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D78], v6);
  CFRelease(v6);
  v7 = CFNumberCreate(0, kCFNumberIntType, &v11);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D80], v7);
  CFRelease(v7);
  v8 = CFNumberCreate(0, kCFNumberIntType, &v10);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D60], v8);
  CFRelease(v8);
  return Mutable;
}

void VideoUtil_SetVisibleRectAttachment(__CVBuffer *a1, int a2, int a3, int a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = a3 / a4;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136316674;
          v18 = v9;
          v19 = 2080;
          v20 = "VideoUtil_SetVisibleRectAttachment";
          v21 = 1024;
          v22 = 1391;
          v23 = 2048;
          v24 = v8;
          v25 = 1024;
          v26 = a2;
          v27 = 1024;
          v28 = a3;
          v29 = 1024;
          v30 = a4;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d aspectRatio=%f, type=%d, %dx%d", &v17, 0x38u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136316674;
        v18 = v9;
        v19 = 2080;
        v20 = "VideoUtil_SetVisibleRectAttachment";
        v21 = 1024;
        v22 = 1391;
        v23 = 2048;
        v24 = v8;
        v25 = 1024;
        v26 = a2;
        v27 = 1024;
        v28 = a3;
        v29 = 1024;
        v30 = a4;
        _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d aspectRatio=%f, type=%d, %dx%d", &v17, 0x38u);
      }
    }

    v12 = VideoUtil_CalculateVisibleRect();
    VisibleRectDictionary = VideoUtil_CreateVisibleRectDictionary(v12, v13, v14, v15);
    CVBufferSetAttachment(a1, *MEMORY[0x1E6983CE8], VisibleRectDictionary, kCVAttachmentMode_ShouldPropagate);
    CFRelease(VisibleRectDictionary);
  }

  else
  {
    VideoUtil_SetVisibleRectAttachment_cold_1();
  }
}

CMSampleBufferRef VideoUtil_CreateSampleFromBuffer(OpaqueCMBlockBuffer *a1, const CMSampleTimingInfo *a2, const opaqueCMFormatDescription *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  sampleSizeArray = CMBlockBufferGetDataLength(a1);
  CMSampleBufferCreate(*MEMORY[0x1E695E480], a1, 1u, 0, 0, a3, 1, 1, a2, 1, &sampleSizeArray, v8);
  if (!v8[0])
  {
    VideoUtil_CreateSampleFromBuffer_cold_1();
  }

  return v8[0];
}

uint64_t VideoUtil_GetEscapeCountForBuffer(unsigned __int8 *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = a1;
      result = 0;
      v4 = 0;
      do
      {
        v6 = *v2++;
        v5 = v6;
        result += (v6 < 4) & (v4 > 1);
        if (v6 < 4 && v4 > 1)
        {
          v4 = 1;
        }

        else
        {
          ++v4;
        }

        if (v5)
        {
          v4 = 0;
        }

        --a2;
      }

      while (a2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    VideoUtil_GetEscapeCountForBuffer_cold_1();
    return v7;
  }

  return result;
}

uint64_t VideoUtil_PerformEscapingForBuffer(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 && a3)
  {
    v4 = 0;
    if (a4 && a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = *(a1 + v6);
        if (v8 <= 3 && v5 >= 2)
        {
          *(a3 + v7) = 3;
          if (v7 + 1 >= a4)
          {
            VideoUtil_PerformEscapingForBuffer_cold_1();
            return v11;
          }

          v5 = 0;
          LOBYTE(v8) = *(a1 + v6);
          ++v7;
        }

        v4 = 0;
        *(a3 + v7) = v8;
        if (*(a1 + v6))
        {
          v5 = 0;
        }

        else
        {
          ++v5;
        }

        if (++v7 < a4 && ++v6 < a2)
        {
          continue;
        }

        return v4;
      }
    }
  }

  else
  {
    VideoUtil_PerformEscapingForBuffer_cold_2();
    return v11;
  }

  return v4;
}

uint64_t VideoUtil_GetEmulationByteCountForBuffer(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - 3;
    if (a2 == 3)
    {
      return 0;
    }

    else
    {
      result = 0;
      v5 = (a1 + 2);
      do
      {
        if (!*(v5 - 2) && !*(v5 - 1) && *v5 == 3)
        {
          ++result;
        }

        ++v5;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    VideoUtil_GetEmulationByteCountForBuffer_cold_1();
    return v6;
  }

  return result;
}

uint64_t VideoUtil_RemoveEmulationBytesFromBuffer(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 || !a3)
  {
    VideoUtil_RemoveEmulationBytesFromBuffer_cold_2();
    return *buf;
  }

  if (a2 < a4)
  {
    VideoUtil_RemoveEmulationBytesFromBuffer_cold_1();
    return *buf;
  }

  v6 = 0;
  v7 = 0;
  if (a2 != 3 && a4 != 2)
  {
    v7 = 0;
    v6 = 0;
    do
    {
      v8 = a1 + v7;
      if (*(a1 + v7) || *(v8 + 1) || *(v8 + 2) != 3)
      {
        *(a3 + v6) = *(a1 + v7);
      }

      else
      {
        *(a3 + v6) = 0;
        *(a3 + v6 + 1) = *(v8 + 1);
        v7 += 2;
        ++v6;
      }

      ++v7;
      ++v6;
    }

    while (v7 < a2 - 3 && v6 < a4 - 2);
  }

  while (v7 < a2 && v6 < a4)
  {
    *(a3 + v6++) = *(a1 + v7++);
  }

  if (v7 == a2 && v6 == a4)
  {
    return 0;
  }

  v9 = 2151743489;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v13 = v7;
    v14 = v6;
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v16 = v11;
      v17 = 2080;
      v18 = "VideoUtil_RemoveEmulationBytesFromBuffer";
      v19 = 1024;
      v20 = 1682;
      v21 = 2048;
      v22 = v13;
      v23 = 2048;
      v24 = a2;
      v25 = 2048;
      v26 = v14;
      v27 = 2048;
      v28 = a4;
      _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d VideoUtil_RemoveEmulationBytesFromBuffer failed due to invalid buffer index(source buffer index:%zu, required:%zu) (unescaped buffer index:%zu required:%zu)", buf, 0x44u);
    }
  }

  return v9;
}

uint64_t VideoUtil_ReplaceStartCodeWithNALLength(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v2 + 4;
      if (v2 + 4 < a2 && (v6 = (a1 + v2), *(a1 + v2) == kVideoUtilStartCode))
      {
        if (v4)
        {
          v7 = bswap32(v3);
          v3 = 0;
          *v4 = v7;
        }

        else
        {
          v3 = 0;
        }

        v4 = v6;
      }

      else
      {
        ++v3;
        v5 = v2 + 1;
      }

      v2 = v5;
    }

    while (v5 < a2);
    if (v4)
    {
      *v4 = bswap32(v3);
    }
  }

  return 0;
}

uint64_t VideoUtil_ReplaceNALLengthWithStartCode(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    for (i = 0; i < a2; i += v3 + 4)
    {
      v3 = bswap32(*(a1 + i));
      *(a1 + i) = kVideoUtilStartCode;
    }
  }

  return 0;
}

void ReleaseCVPixelBuffer(__CVBuffer *a1)
{
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);

  CVPixelBufferRelease(a1);
}

void VCVideoUtil_AdjustFaceMetadata(__CVBuffer *a1, unint64_t a2, unint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCVideoUtil_AdjustFaceMetadata_cold_7();
LABEL_27:
    v16 = v36;
    x = rect.origin.x;
    goto LABEL_19;
  }

  if (!a2)
  {
    VCVideoUtil_AdjustFaceMetadata_cold_6();
    goto LABEL_27;
  }

  if (!a3)
  {
    VCVideoUtil_AdjustFaceMetadata_cold_5();
    goto LABEL_27;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (!Width)
  {
    VCVideoUtil_AdjustFaceMetadata_cold_4();
    goto LABEL_27;
  }

  v8 = Height;
  if (!Height)
  {
    VCVideoUtil_AdjustFaceMetadata_cold_3();
    goto LABEL_27;
  }

  attachmentMode = kCVAttachmentMode_ShouldPropagate;
  v9 = *MEMORY[0x1E6990D40];
  Attachment = CVBufferGetAttachment(a1, *MEMORY[0x1E6990D40], &attachmentMode);
  if (!Attachment)
  {
    VCVideoUtil_AdjustFaceMetadata_cold_2();
    goto LABEL_27;
  }

  v11 = Attachment;
  v12 = *MEMORY[0x1E6991440];
  v13 = [Attachment objectForKeyedSubscript:*MEMORY[0x1E6991440]];
  v33 = v9;
  v31 = a2;
  if (!v13)
  {
    v13 = [objc_msgSend(v11 objectForKeyedSubscript:{@"MetadataCVA", "objectForKeyedSubscript:", @"DetectedFacesArray"}];
    if (!v13)
    {
      VCVideoUtil_AdjustFaceMetadata_cold_1();
      goto LABEL_27;
    }
  }

  v14 = v13;
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  [v15 setObject:v16 forKeyedSubscript:v12];
  v32 = v15;
  [v15 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"MetadataCVA", @"MetadataCVA"}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = [v14 countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = a3;
    v20 = *v39;
    v21 = *MEMORY[0x1E6991450];
    v22 = v19;
    v23 = Width;
    v24 = v8;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v26 = *(*(&v38 + 1) + 8 * i);
        memset(&rect, 0, sizeof(rect));
        if (CGRectMakeWithDictionaryRepresentation([v26 objectForKeyedSubscript:v21], &rect))
        {
          v43.origin.x = VCVideoUtil_AdjustFaceBounds(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v31, v22, v23, v24);
          rect = v43;
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v43);
          v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v26];
          [v28 setObject:DictionaryRepresentation forKeyedSubscript:v21];
          [v16 addObject:v28];

          CFRelease(DictionaryRepresentation);
        }
      }

      v18 = [v14 countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v18);
  }

  v29 = a1;
  x = *&v32;
  CVBufferSetAttachment(v29, v33, v32, kCVAttachmentMode_ShouldPropagate);
LABEL_19:
}

double VCVideoUtil_AdjustFaceBounds(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v69 = *MEMORY[0x1E69E9840];
  v12 = a5 / a6;
  v13 = a7 / a8;
  v36 = a2;
  if (a7 / a8 >= a5 / a6)
  {
    v21 = v12 / v13;
    v18 = (a2 + (1.0 - v12 / v13) * -0.5) / (v12 / v13);
    v22 = a1;
    v23 = a2;
    v15 = a1;
    v20 = a3;
    v19 = CGRectGetHeight(*(&a3 - 2)) / v21;
  }

  else
  {
    v14 = v13 / v12;
    v15 = (a1 + (1.0 - v13 / v12) * -0.5) / (v13 / v12);
    v16 = a1;
    v17 = a2;
    v18 = a2;
    v19 = a4;
    v20 = CGRectGetWidth(*(&a3 - 2)) / v14;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    v26 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v70.origin.x = a1;
        v70.origin.y = v36;
        v70.size.width = a3;
        v70.size.height = a4;
        Width = CGRectGetWidth(v70);
        v71.origin.x = a1;
        v71.origin.y = v36;
        v71.size.width = a3;
        v71.size.height = a4;
        Height = CGRectGetHeight(v71);
        v72.origin.x = v15;
        v72.origin.y = v18;
        v72.size.width = v20;
        v72.size.height = v19;
        v28 = CGRectGetWidth(v72);
        v73.origin.x = v15;
        v73.origin.y = v18;
        v73.size.width = v20;
        v73.size.height = v19;
        *buf = 136318722;
        v40 = v24;
        v41 = 2080;
        v42 = "VCVideoUtil_AdjustFaceBounds";
        v43 = 1024;
        v44 = 2308;
        v45 = 2048;
        v46 = a5;
        v47 = 2048;
        v48 = a6;
        v49 = 2048;
        v50 = a1;
        v51 = 2048;
        v52 = v36;
        v53 = 2048;
        v54 = Width;
        v55 = 2048;
        v56 = Height;
        v57 = 2048;
        v58 = a7;
        v59 = 2048;
        v60 = a8;
        v61 = 2048;
        v62 = v15;
        v63 = 2048;
        v64 = v18;
        v65 = 2048;
        v66 = v28;
        v67 = 2048;
        v68 = CGRectGetHeight(v73);
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Original %fx%f [x=%3f,y=%3f,w=%3f,h=%3f], Cropped %fx%f [x=%3f,y=%3f,w=%3f,h=%3f]", buf, 0x94u);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v74.origin.x = a1;
      v74.origin.y = v36;
      v74.size.width = a3;
      v74.size.height = a4;
      v33 = CGRectGetWidth(v74);
      v75.origin.x = a1;
      v75.origin.y = v36;
      v75.size.width = a3;
      v75.size.height = a4;
      v30 = CGRectGetHeight(v75);
      v76.origin.x = v15;
      v76.origin.y = v18;
      v76.size.width = v20;
      v76.size.height = v19;
      v31 = CGRectGetWidth(v76);
      v77.origin.x = v15;
      v77.origin.y = v18;
      v77.size.width = v20;
      v77.size.height = v19;
      *buf = 136318722;
      v40 = v24;
      v41 = 2080;
      v42 = "VCVideoUtil_AdjustFaceBounds";
      v43 = 1024;
      v44 = 2308;
      v45 = 2048;
      v46 = a5;
      v47 = 2048;
      v48 = a6;
      v49 = 2048;
      v50 = a1;
      v51 = 2048;
      v52 = v36;
      v53 = 2048;
      v54 = v33;
      v55 = 2048;
      v56 = v30;
      v57 = 2048;
      v58 = a7;
      v59 = 2048;
      v60 = a8;
      v61 = 2048;
      v62 = v15;
      v63 = 2048;
      v64 = v18;
      v65 = 2048;
      v66 = v31;
      v67 = 2048;
      v68 = CGRectGetHeight(v77);
      _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Original %fx%f [x=%3f,y=%3f,w=%3f,h=%3f], Cropped %fx%f [x=%3f,y=%3f,w=%3f,h=%3f]", buf, 0x94u);
    }
  }

  return v15;
}

uint64_t VCVideoUtil_ShouldUseCompressedPixelFormat()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v2 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v3;
      v11 = 2080;
      v12 = "VCVideoUtil_ShouldUseCompressedPixelFormat";
      v13 = 1024;
      v14 = 2316;
      v15 = 1024;
      v16 = v0;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d compressed video buffers enabled=%d", &v9, 0x22u);
    }
  }

  v5 = +[VCHardwareSettings supportsCompressedPixelFormat];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = "VCVideoUtil_ShouldUseCompressedPixelFormat";
      v13 = 1024;
      v14 = 2319;
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d compressed pixel format available=%d", &v9, 0x22u);
    }
  }

  return v0 & v5;
}

uint64_t VCVideoUtil_DefaultCameraCapturePixelFormat()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = 875704438;
  if (VCVideoUtil_ShouldUseCompressedPixelFormat())
  {
    v1 = 758674992;
    if (VRTraceIsInternalOSInstalled())
    {
      v2 = [VCDefaults copyStringValueForKey:@"compressedPixelFormat"];
      v3 = v2;
      if (v2)
      {
        v1 = CStrToFourcc([v2 UTF8String]);
      }
    }

    if (CVIsCompressedPixelFormatAvailable(v1))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315906;
          v8 = v4;
          v9 = 2080;
          v10 = "VCVideoUtil_DefaultCameraCapturePixelFormat";
          v11 = 1024;
          v12 = 2343;
          v13 = 2080;
          v14 = FourccToCStr(v1);
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d use compressed pixel format=%s", &v7, 0x26u);
        }
      }

      return v1;
    }
  }

  return v0;
}

double VideoUtil_ComputeVisibleAspectRatio(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v50 = *MEMORY[0x1E69E9840];
  if ([VideoUtil compareVideoAspectRatioSizeA:a5 toSizeB:a6, a1, a2]== -1 && [VideoUtil compareVideoAspectRatioSizeA:a5 toSizeB:a6, a3, a4]== -1)
  {
    v18 = [VideoUtil compareVideoAspectRatioSizeA:a1 toSizeB:a2, a3, a4];
    if (v18 == 1)
    {
      v13 = a3;
    }

    else
    {
      v13 = a1;
    }

    if (v18 == 1)
    {
      v14 = a4;
    }

    else
    {
      v14 = a2;
    }
  }

  else if ([VideoUtil compareVideoAspectRatioSizeA:a5 toSizeB:a6, a1, a2]== 1 && [VideoUtil compareVideoAspectRatioSizeA:a5 toSizeB:a6, a3, a4]== 1)
  {
    v12 = [VideoUtil compareVideoAspectRatioSizeA:a1 toSizeB:a2, a3, a4];
    if (v12 == 1)
    {
      v13 = a1;
    }

    else
    {
      v13 = a3;
    }

    if (v12 == 1)
    {
      v14 = a2;
    }

    else
    {
      v14 = a4;
    }
  }

  else
  {
    v19 = a6;
    *buf = a5;
    SimplifyRatio(buf, &v19);
    v13 = *buf;
    v14 = v19;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318722;
      v21 = v15;
      v22 = 2080;
      v23 = "VideoUtil_ComputeVisibleAspectRatio";
      v24 = 1024;
      v25 = 2451;
      v26 = 2048;
      v27 = a1;
      v28 = 2048;
      v29 = a2;
      v30 = 2048;
      v31 = a1 / a2;
      v32 = 2048;
      v33 = a3;
      v34 = 2048;
      v35 = a4;
      v36 = 2048;
      v37 = a3 / a4;
      v38 = 2048;
      v39 = a5;
      v40 = 2048;
      v41 = a6;
      v42 = 2048;
      v43 = a5 / a6;
      v44 = 2048;
      v45 = v13;
      v46 = 2048;
      v47 = v14;
      v48 = 2048;
      v49 = v13 / v14;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX] remoteScreenAspectRatio %.0f:%.0f (%.3f), remoteExpectedAspectRatio %.0f:%.0f (%.3f), encode %.0f:%.0f (%.3f) --> visibleAspectRatio %.0f:%.0f (%.3f)", buf, 0x94u);
    }
  }

  return v13;
}

void VCVideoUtil_AttachMetadata(const __CFArray *a1, __CVBuffer *a2)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a1)
    {
      v4 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v6 = Mutable;
        buffer = a2;
        Count = CFArrayGetCount(a1);
        if (Count >= 1)
        {
          v8 = Count;
          v9 = 0;
          v10 = 0;
          v11 = *MEMORY[0x1E6986FE8];
          v31 = *MEMORY[0x1E6987018];
          key = *MEMORY[0x1E6991440];
          v30 = *MEMORY[0x1E6991448];
          v27 = *MEMORY[0x1E6991458];
          v26 = *MEMORY[0x1E6991460];
          v29 = *MEMORY[0x1E6991450];
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
            if ([objc_msgSend(ValueAtIndex "type")])
            {
              if (!v9)
              {
                v13 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
                if (!v13)
                {
                  VCVideoUtil_AttachMetadata_cold_2(v6);
                  return;
                }

                v9 = v13;
                CFDictionarySetValue(v6, key, v13);
              }

              v14 = CFDictionaryCreateMutable(v4, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              valuePtr[0] = [ValueAtIndex faceID];
              v15 = CFNumberCreate(v4, kCFNumberNSIntegerType, valuePtr);
              if (v15)
              {
                v16 = v15;
                CFDictionarySetValue(v14, v30, v15);
                CFRelease(v16);
              }

              if ([ValueAtIndex hasRollAngle])
              {
                [ValueAtIndex rollAngle];
                valuePtr[0] = v17;
                v18 = CFNumberCreate(v4, kCFNumberCGFloatType, valuePtr);
                if (v18)
                {
                  v19 = v18;
                  CFDictionarySetValue(v14, v27, v18);
                  CFRelease(v19);
                }
              }

              if ([ValueAtIndex hasYawAngle])
              {
                [ValueAtIndex yawAngle];
                valuePtr[0] = v20;
                v21 = CFNumberCreate(v4, kCFNumberCGFloatType, valuePtr);
                if (v21)
                {
                  v22 = v21;
                  CFDictionarySetValue(v14, v26, v21);
                  CFRelease(v22);
                }
              }

              [ValueAtIndex bounds];
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v33);
              if (DictionaryRepresentation)
              {
                v24 = DictionaryRepresentation;
                CFDictionaryAddValue(v14, v29, DictionaryRepresentation);
                CFRelease(v24);
              }

              if (v14)
              {
                CFArrayAppendValue(v9, v14);
                CFRelease(v14);
              }
            }

            else if ([objc_msgSend(ValueAtIndex "type")])
            {
              if (![ValueAtIndex payload])
              {
                VCVideoUtil_AttachMetadata_cold_1(v9, valuePtr);
                v9 = valuePtr[0];
                goto LABEL_29;
              }

              CFDictionarySetValue(v6, @"MetadataCVA", [ValueAtIndex payload]);
            }

            if (v8 == ++v10)
            {
              goto LABEL_28;
            }
          }
        }

        v9 = 0;
LABEL_28:
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6990D40], v6, kCVAttachmentMode_ShouldPropagate);
LABEL_29:
        CFRelease(v6);
        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        VCVideoUtil_AttachMetadata_cold_3();
      }
    }

    else
    {
      VCVideoUtil_AttachMetadata_cold_4();
    }
  }

  else
  {
    VCVideoUtil_AttachMetadata_cold_5();
  }
}

double VideoUtil_CalculateCameraRxContentsRect(int a1, int a2, int a3, char a4, double a5, double a6, double a7, double a8, uint64_t a9, int a10, uint64_t a11, double *a12, double *a13)
{
  if (a1)
  {
    v13 = a2;
  }

  else
  {
    v13 = a3;
  }

  v14 = a2 ^ a3;
  if (a7 >= a8)
  {
    v15 = a8 / a7;
  }

  else
  {
    v15 = a7 / a8;
  }

  v16 = v15;
  if (v13)
  {
    v17 = a12[4];
    v18 = a12[5];
    if (a4)
    {
      if (v14 && !a1)
      {
        goto LABEL_20;
      }
    }

    else if (v17 / v18 < v16 && ((v14 ^ 1) & 1) == 0 && (a1 & 1) == 0)
    {
      goto LABEL_20;
    }

    v17 = *a12;
    v18 = a12[1];
LABEL_20:
    v19 = v18 / v17;
    goto LABEL_26;
  }

  v17 = a12[6];
  v18 = a12[7];
  if (a4)
  {
    if (v14 && !a1)
    {
      goto LABEL_25;
    }
  }

  else if (v18 / v17 < v16 && ((v14 ^ 1) & 1) == 0 && (a1 & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = a12[2];
  v18 = a12[3];
LABEL_25:
  v19 = v17 / v18;
LABEL_26:
  if (a7 / a8 > v19)
  {
    a5 = a5 + (a7 - a8 * v19) * 0.5;
  }

  result = a5 / a10;
  *a13 = v17;
  a13[1] = v18;
  return result;
}

void VideoUtil_CreateRxVideoAttributes(int a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unsigned __int8 a17, unsigned __int8 a18, uint64_t *a19, uint64_t a20, VideoAttributes **a21)
{
  v106 = *MEMORY[0x1E69E9840];
  if (a21)
  {
    v25 = 0;
    *a21 = 0;
    v27 = a11 < a12 || a6 < 2;
    if ((a3 & 0x80) != 0)
    {
      v31 = a2;
      v77 = *MEMORY[0x1E695F060];
      if ((a3 & 0x10) != 0)
      {
        v41 = a1;
        v42 = a2;
        *&v77 = a1;
        *(&v77 + 1) = a2;
        v75 = 1.0;
        v35 = 0.0;
        v37 = 0.0;
        v40 = 1.0;
      }

      else
      {
        v33 = *(a19 + 1);
        *__str = *a19;
        v99 = v33;
        v34 = *(a19 + 3);
        v100 = *(a19 + 2);
        v101 = v34;
        v35 = VideoUtil_CalculateCameraRxContentsRect(a8, a4 < 2, v27, a17, a9, a10, a11, a12, 0, a1, a2, __str, &v77);
        v37 = v36;
        v75 = v38;
        v40 = v39;
        v42 = *(&v77 + 1);
        v41 = *&v77;
      }

      if (a8)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = 1.0;
      }

      v44 = [VideoAttributes alloc];
      *&v45 = v43;
      v25 = [(VideoAttributes *)v44 initWithCameraStatusBits:a3 aspectRatio:a8 contentsRect:v41 scaleFactor:v42 frameOrientationReference:v35, v37, v75, v40, v45];
      if (VCVideoAttributes_IsEqual(v25, a20))
      {

        v25 = 0;
      }

      else
      {
        *&v46 = 0xAAAAAAAAAAAAAAAALL;
        *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v104 = v46;
        v105 = v46;
        v102 = v46;
        v103 = v46;
        v100 = v46;
        v101 = v46;
        *__str = v46;
        v99 = v46;
        snprintf(__str, 0x80uLL, "[%.2fx%.2f@(%.2f,%.2f)]", a11, a12, a9, a10);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v76 = VRTraceErrorLogLevelToCSTR();
          v47 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v79 = v76;
            v80 = 2080;
            v81 = "VideoUtil_CreateRxVideoAttributes";
            v82 = 1024;
            v83 = 2725;
            v84 = 1024;
            *v85 = a1;
            *&v85[4] = 1024;
            *&v85[6] = v31;
            LOWORD(v86) = 1024;
            *(&v86 + 2) = a3;
            HIWORD(v86) = 2080;
            *v87 = __str;
            _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_RX] frameWidth=%d, frameHeight=%d, cameraStatusBits=0x%02x, visibleRect=%s", buf, 0x38u);
          }
        }

        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        v49 = MEMORY[0x1E6986650];
        if (ErrorLogLevelForModule >= 7)
        {
          v50 = VRTraceErrorLogLevelToCSTR();
          v51 = *v49;
          if (os_log_type_enabled(*v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v79 = v50;
            v80 = 2080;
            v81 = "VideoUtil_CreateRxVideoAttributes";
            v82 = 1024;
            v83 = 2730;
            v84 = 1024;
            *v85 = a4;
            *&v85[4] = 1024;
            *&v85[6] = a5;
            LOWORD(v86) = 1024;
            *(&v86 + 2) = a6;
            HIWORD(v86) = 1024;
            *v87 = a7;
            _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_RX] localDeviceOrientation=%d, lastLocalDeviceOrientation=%d, remoteDeviceOrientation=%d, lastRemoteDeviceOrientation=%d", buf, 0x34u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v52 = VRTraceErrorLogLevelToCSTR();
          v53 = *v49;
          if (os_log_type_enabled(*v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v79 = v52;
            v80 = 2080;
            v81 = "VideoUtil_CreateRxVideoAttributes";
            v82 = 1024;
            v83 = 2734;
            v84 = 1024;
            *v85 = a8;
            *&v85[4] = 1024;
            *&v85[6] = a17;
            LOWORD(v86) = 1024;
            *(&v86 + 2) = a18;
            _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_RX] rxVideoFullScreen=%d, remoteSupportsExpectedAspectRatio=%d, canRemoteResizePIP=%d", buf, 0x2Eu);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v54 = VRTraceErrorLogLevelToCSTR();
          v55 = *v49;
          if (os_log_type_enabled(*v49, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *a19;
            v57 = *(a19 + 1);
            v58 = a19[2];
            v59 = *(a19 + 3);
            v60 = a19[4];
            v61 = a19[5];
            v62 = a19[6];
            v63 = a19[7];
            *buf = 136317698;
            v79 = v54;
            v80 = 2080;
            v81 = "VideoUtil_CreateRxVideoAttributes";
            v82 = 1024;
            v83 = 2743;
            v84 = 2048;
            *v85 = v56;
            *&v85[8] = 2048;
            v86 = v57;
            *v87 = 2048;
            *&v87[2] = v58;
            v88 = 2048;
            v89 = v59;
            v90 = 2048;
            v91 = v60;
            v92 = 2048;
            v93 = v61;
            v94 = 2048;
            v95 = v62;
            v96 = 2048;
            v97 = v63;
            _os_log_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_RX] localCameraVideoAspectRatios AR portrait=(%f, %f), landscape=(%f, %f), XR portrait=(%f, %f), landscape=(%f, %f)", buf, 0x6Cu);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v64 = VRTraceErrorLogLevelToCSTR();
          v65 = *v49;
          if (os_log_type_enabled(*v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v79 = v64;
            v80 = 2080;
            v81 = "VideoUtil_CreateRxVideoAttributes";
            v82 = 1024;
            v83 = 2748;
            v84 = 2048;
            *v85 = a13;
            *&v85[8] = 2048;
            v86 = a14;
            *v87 = 2048;
            *&v87[2] = a15;
            v88 = 2048;
            v89 = a16;
            _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_RX] remoteScreenAspectRatios portrait=(%f, %f), landscape=(%f, %f)", buf, 0x44u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v66 = VRTraceErrorLogLevelToCSTR();
          v67 = *v49;
          if (os_log_type_enabled(*v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v79 = v66;
            v80 = 2080;
            v81 = "VideoUtil_CreateRxVideoAttributes";
            v82 = 1024;
            v83 = 2749;
            v84 = 2112;
            *v85 = v25;
            _os_log_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_RX] remoteVideoAttributes=%@", buf, 0x26u);
          }
        }
      }
    }

    *a21 = v25;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoUtil_CreateRxVideoAttributes_cold_1();
    }
  }
}

void VideoUtil_CreateTxRemoteScreenAttributes(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6, VideoAttributes **a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19)
{
  v76 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    *a7 = 0;
    if (a6)
    {
      v27 = a3 < 2;
    }

    else
    {
      v27 = a1 < 2;
    }

    if (a1 < 2 == a2 > 1 || a3 < 2 == a4 > 1 || (v28 = 0, a5))
    {
      v29 = a3 < 2;
      v30 = a1 < 2;
      v36 = objc_alloc_init(VideoAttributes);
      if (v27)
      {
        v37 = a8;
      }

      else
      {
        v37 = a10;
      }

      if (v27)
      {
        v38 = a9;
      }

      else
      {
        v38 = a11;
      }

      if (a6)
      {
        v39 = a18;
      }

      else
      {
        v39 = a14;
      }

      if (a6)
      {
        v40 = a19;
      }

      else
      {
        v40 = a15;
      }

      if (a6)
      {
        v41 = a16;
      }

      else
      {
        v41 = a12;
      }

      if (a6)
      {
        v42 = a17;
      }

      else
      {
        v42 = a13;
      }

      if (v27)
      {
        v39 = v41;
        v40 = v42;
      }

      v45 = v30 == v29;
      v28 = v36;
      if (!v45)
      {
        v37 = v39;
        v38 = v40;
      }

      [(VideoAttributes *)v36 setRatio:v37, v38];
      [(VideoAttributes *)v28 ratio];
      v45 = v44 == *MEMORY[0x1E695F060] && v43 == *(MEMORY[0x1E695F060] + 8);
      if (v45)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v59 = VRTraceErrorLogLevelToCSTR();
          v60 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v65 = v59;
            v66 = 2080;
            v67 = "VideoUtil_CreateTxRemoteScreenAttributes";
            v68 = 1024;
            v69 = 2798;
            _os_log_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX] .ratio is zero due to invalid input parameter(s); releasing remoteScreenAttributes", buf, 0x1Cu);
          }
        }

        v28 = 0;
      }

      else
      {
        if (a6)
        {
          v46 = a3;
        }

        else
        {
          v46 = a1;
        }

        [(VideoAttributes *)v28 setOrientation:v46];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v47 = VRTraceErrorLogLevelToCSTR();
          v48 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v65 = v47;
            v66 = 2080;
            v67 = "VideoUtil_CreateTxRemoteScreenAttributes";
            v68 = 1024;
            v69 = 2809;
            v70 = 1024;
            *v71 = a1;
            *&v71[4] = 1024;
            *&v71[6] = a2;
            LOWORD(v72) = 1024;
            *(&v72 + 2) = a3;
            HIWORD(v72) = 1024;
            *v73 = a4;
            _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX] localDeviceOrientation=%d, lastLocalDeviceOrientation=%d, remoteDeviceOrientation=%d, lastRemoteDeviceOrientation=%d", buf, 0x34u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v65 = v49;
            v66 = 2080;
            v67 = "VideoUtil_CreateTxRemoteScreenAttributes";
            v68 = 1024;
            v69 = 2812;
            v70 = 1024;
            *v71 = a5;
            *&v71[4] = 1024;
            *&v71[6] = a6;
            _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX] forceUpdateScreenAttributes=%d, txCameraVideoFullScreen=%d", buf, 0x28u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v51 = VRTraceErrorLogLevelToCSTR();
          v52 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v65 = v51;
            v66 = 2080;
            v67 = "VideoUtil_CreateTxRemoteScreenAttributes";
            v68 = 1024;
            v69 = 2817;
            v70 = 2048;
            *v71 = a8;
            *&v71[8] = 2048;
            v72 = a9;
            *v73 = 2048;
            *&v73[2] = a10;
            v74 = 2048;
            v75 = a11;
            _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX] remoteScreenAspectRatios portrait=(%f, %f), landscape=(%f, %f)", buf, 0x44u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v53 = VRTraceErrorLogLevelToCSTR();
          v54 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v65 = v53;
            v66 = 2080;
            v67 = "VideoUtil_CreateTxRemoteScreenAttributes";
            v68 = 1024;
            v69 = 2822;
            v70 = 2048;
            *v71 = a12;
            *&v71[8] = 2048;
            v72 = a13;
            *v73 = 2048;
            *&v73[2] = a14;
            v74 = 2048;
            v75 = a15;
            _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX] remoteExpectedAspectRatios portrait=(%f, %f), landscape=(%f, %f)", buf, 0x44u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v55 = VRTraceErrorLogLevelToCSTR();
          v56 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v65 = v55;
            v66 = 2080;
            v67 = "VideoUtil_CreateTxRemoteScreenAttributes";
            v68 = 1024;
            v69 = 2827;
            v70 = 2048;
            *v71 = a16;
            *&v71[8] = 2048;
            v72 = a17;
            *v73 = 2048;
            *&v73[2] = a18;
            v74 = 2048;
            v75 = a19;
            _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX] remoteExpectedFullScreenAspectRatios portrait=(%f, %f), landscape=(%f, %f)", buf, 0x44u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v57 = VRTraceErrorLogLevelToCSTR();
          v58 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v65 = v57;
            v66 = 2080;
            v67 = "VideoUtil_CreateTxRemoteScreenAttributes";
            v68 = 1024;
            v69 = 2828;
            v70 = 2112;
            *v71 = v28;
            _os_log_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX] remoteScreenAttributes=%@", buf, 0x26u);
          }
        }
      }
    }

    *a7 = v28;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoUtil_CreateTxRemoteScreenAttributes_cold_1();
    }
  }
}

BOOL _VideoUtil_SerializeParameterSetsIntoBuffer(uint64_t a1, size_t __n, void *__src, int a4, uint64_t *a5, size_t a6)
{
  v7 = __n + *a5 + 4;
  if (v7 > a6)
  {
    _VideoUtil_SerializeParameterSetsIntoBuffer_cold_1();
  }

  else
  {
    *(a1 + *a5) = a4;
    v10 = *a5 + 4;
    *a5 = v10;
    memcpy((a1 + v10), __src, __n);
    *a5 += __n;
  }

  return v7 <= a6;
}

void __ImageMetadataDictionary_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v1 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:@"en_US_POSIX"];
  ImageMetadataDictionary_sMarketingNameString = MGCopyAnswer();
  ImageMetadataDictionary_sProductVersion = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  ImageMetadataDictionary_sDateTimeFormatter = objc_alloc_init(MEMORY[0x1E696AB78]);
  [ImageMetadataDictionary_sDateTimeFormatter setTimeStyle:0];
  [ImageMetadataDictionary_sDateTimeFormatter setDateStyle:0];
  [ImageMetadataDictionary_sDateTimeFormatter setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
  [ImageMetadataDictionary_sDateTimeFormatter setLocale:v0];
  [ImageMetadataDictionary_sDateTimeFormatter setCalendar:v1];
  ImageMetadataDictionary_sSubsecTimeFormatter = objc_alloc_init(MEMORY[0x1E696AB78]);
  [ImageMetadataDictionary_sSubsecTimeFormatter setTimeStyle:0];
  [ImageMetadataDictionary_sSubsecTimeFormatter setDateStyle:0];
  [ImageMetadataDictionary_sSubsecTimeFormatter setDateFormat:@"SSS"];
  [ImageMetadataDictionary_sSubsecTimeFormatter setLocale:v0];
  [ImageMetadataDictionary_sSubsecTimeFormatter setCalendar:v1];
}

void OUTLINED_FUNCTION_7_15(__int16 a1@<W8>)
{
  *(v3 - 132) = a1;
  *(v2 + 14) = v1;
  *(v3 - 122) = 1024;
}

void OUTLINED_FUNCTION_25_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x22u);
}

void OUTLINED_FUNCTION_30_3(float a1)
{
  *(v2 - 144) = a1;
  *(v2 - 140) = v1;
  *(v2 - 132) = 2080;
}

uint64_t GetCellularMTU(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1 + 0x8000;
  v4 = *(a1 + 34512);
  if (v4 && *(a1 + 34472))
  {
    pthread_mutex_lock((a1 + 34392));
    if (*(v3 + 1688))
    {
      v6 = _CTServerConnectionCopyCurrentMTU();
      v7 = v6;
      v8 = HIDWORD(v6);
      if (HIDWORD(v6))
      {
        v9 = 0;
      }

      else
      {
        v9 = v6 == 0;
      }

      if (!v9 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v20 = v10;
          v21 = 2080;
          v22 = "GetCellularMTU";
          v23 = 1024;
          v24 = 356;
          v25 = 1024;
          *v26 = v7;
          *&v26[4] = 1024;
          *&v26[6] = v8;
          _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d _CTServerConnectionCopyCurrentMTU failed (%d.%d)", buf, 0x28u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v20 = v12;
          v21 = 2080;
          v22 = "GetCellularMTU";
          v23 = 1024;
          v24 = 359;
          v25 = 1024;
          *v26 = 0;
          *&v26[4] = 1024;
          *&v26[6] = v7;
          *v27 = 1024;
          *&v27[2] = v8;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d \t\t TP:GetCellularMTU MTU: %d (err: %d/%d) ", buf, 0x2Eu);
        }
      }
    }

    pthread_mutex_unlock((a1 + 34392));
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v16 = "TPCellularConditionChangeCallback";
      }

      else
      {
        v16 = "TPConnectedCallback";
      }

      v17 = CelltechToStr();
      *buf = 136316674;
      v20 = v14;
      v21 = 2080;
      v22 = "GetCellularMTU";
      v23 = 1024;
      v24 = 376;
      v25 = 2080;
      *v26 = v16;
      *&v26[8] = 1024;
      *v27 = 0;
      *&v27[4] = 1024;
      v28 = v4 != 0;
      v29 = 2080;
      v30 = v17;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d %s CellularMTU: %d  bCellularIsActive: %d  Celltech: %s ", buf, 0x3Cu);
    }
  }

  return 0;
}

uint64_t TPGetSignalStrength(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v7 = CheckInHandleDebug();
  if (v7)
  {
    if (a2 && a3 && a4)
    {
      v8 = v7;
      v9 = (v7 + 0x8000);
      if (*(v7 + 34512))
      {
        pthread_mutex_lock((v7 + 34392));
        v10 = v9 + 427;
        v11 = v9 + 428;
        v12 = v9 + 429;
        if (VCCTServiceMonitor_GetSignalStrength())
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              TPGetSignalStrength_cold_2();
            }
          }

          pthread_mutex_unlock((v8 + 34392));
          CheckOutHandleDebug();
          return 2148466692;
        }

        *a2 = *v10;
        *a3 = *v11;
        *a4 = *v12;
        pthread_mutex_unlock((v8 + 34392));
      }

      CheckOutHandleDebug();
      return 0;
    }

    v13 = 2148466689;
    CheckOutHandleDebug();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TPGetSignalStrength_cold_1();
      }
    }
  }

  else
  {
    v13 = 2148466690;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TPGetSignalStrength_cold_3();
        return 2148466690;
      }
    }
  }

  return v13;
}

uint64_t TPGetCellTech()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  v0 = ICEGetCellTech();
  CheckOutHandleDebug();
  return v0;
}

uint64_t TPUpdateBaseband(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = 2148466689;
  if (a4)
  {
    v5 = a4;
    v8 = CheckInHandleDebug();
    if (v8)
    {
      v9 = v8;
      v10 = v8 + 0x8000;
      if (!*(v8 + 34512))
      {
LABEL_89:
        CheckOutHandleDebug();
        return 0;
      }

      if (!a2 || (*(a2 + 28) & 4) == 0)
      {
        TPCleanupBasebandNotifications(v8);
        goto LABEL_89;
      }

      v87 = v5;
      v86 = -21846;
      v85 = -21846;
      *&v106[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v105[3] = v13;
      *v106 = v13;
      v105[2] = v13;
      *(v105 + 14) = 0xAAAAAAAAAAAAAAAALL;
      v104 = v13;
      v105[0] = v13;
      v103 = v13;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = IPPORTToStringWithSize();
          v17 = IPPORTToStringWithSize();
          v18 = *(a2 + 280);
          v19 = *(a2 + 284);
          *buf = 136316930;
          v89 = v14;
          v90 = 2080;
          v91 = "TPSetupBasebandNotifications";
          v92 = 1024;
          v93 = 652;
          v94 = 2080;
          *v95 = a2 + 32;
          *&v95[8] = 2080;
          v96 = v16;
          v97 = 2080;
          v98 = v17;
          v99 = 1024;
          v100 = v18;
          v101 = 1024;
          v102 = v19;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d LET US DEAL WITH BASEBAND (if_name:[%s], local:[%s], dst:[%s], local_cell:[%d] remote_cell:[%d])", buf, 0x46u);
        }
      }

      pthread_mutex_lock((v9 + 34392));
      if (*(v10 + 1744))
      {
        v20 = MEMORY[0x1E695E480];
        if (*(v10 + 1696))
        {
          if (*(v10 + 1720))
          {
            v21 = _CTServerConnectionSetPacketNotificationFilter();
            v22 = v21;
            v23 = HIDWORD(v21);
            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            if (v23 || v22)
            {
              if (ErrorLogLevelForModule >= 3)
              {
                v34 = VRTraceErrorLogLevelToCSTR();
                v35 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316418;
                  v89 = v34;
                  v90 = 2080;
                  v91 = "TPSetupBasebandNotifications";
                  v92 = 1024;
                  v93 = 671;
                  v94 = 1024;
                  *v95 = 671;
                  *&v95[4] = 1024;
                  *&v95[6] = v22;
                  LOWORD(v96) = 1024;
                  *(&v96 + 2) = v23;
                  _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: _CTServerConnectionSetPacketNotificationFilter failed (%d.%d)", buf, 0x2Eu);
                }
              }
            }

            else if (ErrorLogLevelForModule >= 7)
            {
              v25 = VRTraceErrorLogLevelToCSTR();
              v26 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v89 = v25;
                v90 = 2080;
                v91 = "TPSetupBasebandNotifications";
                v92 = 1024;
                v93 = 669;
                _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d De-register existing baseband notification filter.", buf, 0x1Cu);
              }
            }
          }

          CFDictionaryRemoveAllValues(*(v10 + 1696));
          Mutable = *(v10 + 1696);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(v10 + 1696) = Mutable;
        }

        if (!Mutable)
        {
          pthread_mutex_unlock((v9 + 34392));
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              TPUpdateBaseband_cold_3();
            }
          }

          goto LABEL_89;
        }

        v36 = *v20;
        v37 = CFDictionaryCreateMutable(*v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v37)
        {
          v49 = *(v10 + 1696);
          if (v49)
          {
            CFRelease(v49);
            *(v10 + 1696) = 0;
          }

          pthread_mutex_unlock((v9 + 34392));
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              TPUpdateBaseband_cold_2();
            }
          }

          goto LABEL_89;
        }

        v38 = v37;
        v86 = bswap32(*(a2 + 64)) >> 16;
        v85 = bswap32(*(a2 + 184)) >> 16;
        valuePtr = bswap32(a3);
        v39 = CFNumberCreate(v36, kCFNumberSInt32Type, &valuePtr);
        CFDictionaryAddValue(v38, *MEMORY[0x1E6965368], v39);
        CFRelease(v39);
        v40 = CFNumberCreate(v36, kCFNumberSInt8Type, &v87);
        CFDictionaryAddValue(v38, *MEMORY[0x1E69652F0], v40);
        CFRelease(v40);
        v41 = CFNumberCreate(v36, kCFNumberSInt16Type, &v86);
        CFDictionaryAddValue(v38, *MEMORY[0x1E6965300], v41);
        CFRelease(v41);
        v42 = CFNumberCreate(v36, kCFNumberSInt16Type, &v85);
        CFDictionaryAddValue(v38, *MEMORY[0x1E6965350], v42);
        CFRelease(v42);
        if (*(a2 + 28))
        {
          v50 = CFDataCreate(v36, (a2 + 48), 16);
          if (v50)
          {
            v51 = v50;
            CFDictionaryAddValue(v38, *MEMORY[0x1E69652F8], v50);
            CFRelease(v51);
          }

          v52 = CFDataCreate(v36, (a2 + 168), 16);
          if (v52)
          {
            v53 = v52;
            CFDictionaryAddValue(v38, *MEMORY[0x1E6965348], v52);
            CFRelease(v53);
          }

          v47 = *(v10 + 1696);
          v48 = MEMORY[0x1E6965320];
        }

        else
        {
          *buf = bswap32(*(a2 + 48));
          v83 = bswap32(*(a2 + 168));
          v43 = CFDataCreate(v36, buf, 4);
          if (v43)
          {
            v44 = v43;
            CFDictionaryAddValue(v38, *MEMORY[0x1E69652F8], v43);
            CFRelease(v44);
          }

          v45 = CFDataCreate(v36, &v83, 4);
          if (v45)
          {
            v46 = v45;
            CFDictionaryAddValue(v38, *MEMORY[0x1E6965348], v45);
            CFRelease(v46);
          }

          v47 = *(v10 + 1696);
          v48 = MEMORY[0x1E6965318];
        }

        CFDictionaryAddValue(v47, *v48, v38);
        CFRelease(v38);
        if (!*(v10 + 1688))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              TPUpdateBaseband_cold_1();
            }
          }

          goto LABEL_88;
        }

        v54 = _CTServerConnectionSetPacketNotificationFilter();
        v55 = v54;
        v56 = HIDWORD(v54);
        if (HIDWORD(v54) || v54)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_88;
          }

          v75 = VRTraceErrorLogLevelToCSTR();
          v76 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_88;
          }

          *buf = 136316418;
          v89 = v75;
          v90 = 2080;
          v91 = "TPSetupBasebandNotifications";
          v92 = 1024;
          v93 = 759;
          v94 = 1024;
          *v95 = 759;
          *&v95[4] = 1024;
          *&v95[6] = v55;
          LOWORD(v96) = 1024;
          *(&v96 + 2) = v56;
          v77 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: _CTServerConnectionSetPacketNotificationFilter failed (%d.%d)";
          v78 = v76;
        }

        else
        {
          *(v10 + 1720) = 1;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v57 = VRTraceErrorLogLevelToCSTR();
            v58 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v89 = v57;
              v90 = 2080;
              v91 = "TPSetupBasebandNotifications";
              v92 = 1024;
              v93 = 765;
              _os_log_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Enabled baseband notification filter.", buf, 0x1Cu);
            }
          }

          v59 = *(a2 + 272);
          v60 = *(a2 + 276);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v61 = VRTraceErrorLogLevelToCSTR();
            v62 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v89 = v61;
              v90 = 2080;
              v91 = "TPSetupBasebandNotifications";
              v92 = 1024;
              v93 = 770;
              v94 = 1024;
              *v95 = v59;
              *&v95[4] = 1024;
              *&v95[6] = v60;
              _os_log_impl(&dword_1DB56E000, v62, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Cellular QoS (Local: %d Remote: %d).", buf, 0x28u);
            }
          }

          if (!*(v10 + 1748) || !v59 || !v60)
          {
            goto LABEL_88;
          }

          v63 = _CTServerConnectionRegisterForNotification();
          v64 = v63;
          v65 = HIDWORD(v63);
          v66 = VRTraceGetErrorLogLevelForModule();
          if (v65 || v64)
          {
            if (v66 < 3)
            {
              goto LABEL_88;
            }

            v79 = VRTraceErrorLogLevelToCSTR();
            v80 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_88;
            }

            *buf = 136316418;
            v89 = v79;
            v90 = 2080;
            v91 = "TPSetupBasebandNotifications";
            v92 = 1024;
            v93 = 775;
            v94 = 1024;
            *v95 = 775;
            *&v95[4] = 1024;
            *&v95[6] = v64;
            LOWORD(v96) = 1024;
            *(&v96 + 2) = v65;
            v77 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: _CTServerConnectionRegisterForNotification failed (%d.%d)";
          }

          else
          {
            if (v66 >= 7)
            {
              v67 = VRTraceErrorLogLevelToCSTR();
              v68 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v89 = v67;
                v90 = 2080;
                v91 = "TPSetupBasebandNotifications";
                v92 = 1024;
                v93 = 779;
                _os_log_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Registered QoS notification from CommCenter.", buf, 0x1Cu);
              }
            }

            CFDictionaryAddValue(*(v10 + 1696), *MEMORY[0x1E69652E8], *MEMORY[0x1E6965328]);
            v69 = _CTServerConnectionRequestQOS();
            v70 = v69;
            v71 = HIDWORD(v69);
            v72 = VRTraceGetErrorLogLevelForModule();
            if (!v71 && !v70)
            {
              if (v72 < 7)
              {
                goto LABEL_88;
              }

              v73 = VRTraceErrorLogLevelToCSTR();
              v74 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_88;
              }

              *buf = 136315650;
              v89 = v73;
              v90 = 2080;
              v91 = "TPSetupBasebandNotifications";
              v92 = 1024;
              v93 = 790;
              v30 = "SIP [%s] %s:%d Requested QoS from CommCenter.";
              v31 = v74;
              v32 = 28;
              goto LABEL_25;
            }

            if (v72 < 3)
            {
              goto LABEL_88;
            }

            v81 = VRTraceErrorLogLevelToCSTR();
            v80 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_88;
            }

            *buf = 136316418;
            v89 = v81;
            v90 = 2080;
            v91 = "TPSetupBasebandNotifications";
            v92 = 1024;
            v93 = 786;
            v94 = 1024;
            *v95 = 786;
            *&v95[4] = 1024;
            *&v95[6] = v70;
            LOWORD(v96) = 1024;
            *(&v96 + 2) = v71;
            v77 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: _CTServerConnectionRegisterForNotification failed (%d.%d)";
          }

          v78 = v80;
        }

        _os_log_error_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_ERROR, v77, buf, 0x2Eu);
        goto LABEL_88;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_88;
      }

      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_88;
      }

      v29 = *(v10 + 1744);
      *buf = 136316162;
      v89 = v27;
      v90 = 2080;
      v91 = "TPSetupBasebandNotifications";
      v92 = 1024;
      v93 = 657;
      v94 = 1024;
      *v95 = 657;
      *&v95[4] = 1024;
      *&v95[6] = v29;
      v30 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: TPSetupBaseband called, but fEnableCellular %d";
      v31 = v28;
      v32 = 40;
LABEL_25:
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
LABEL_88:
      pthread_mutex_unlock((v9 + 34392));
      goto LABEL_89;
    }

    return 2148466690;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v89 = v11;
      v90 = 2080;
      v91 = "TPUpdateBaseband";
      v92 = 1024;
      v93 = 835;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Invalid call type passed to TPUpdateBaseband", buf, 0x1Cu);
    }
  }

  return v4;
}

uint64_t TPCleanupBasebandNotifications(uint64_t result)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = result + 0x8000;
  if (*(result + 34512))
  {
    v2 = result;
    pthread_mutex_lock((result + 34392));
    if (*(v1 + 1688))
    {
      if (*(v1 + 1720) && *(v1 + 1696))
      {
        v3 = _CTServerConnectionSetPacketNotificationFilter();
        v4 = v3;
        v5 = HIDWORD(v3);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v5 || v4)
        {
          if (ErrorLogLevelForModule >= 3)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v20 = 136316418;
              v21 = v9;
              v22 = 2080;
              v23 = "TPCleanupBasebandNotifications";
              v24 = 1024;
              v25 = 810;
              v26 = 1024;
              v27 = 810;
              v28 = 1024;
              v29 = v4;
              v30 = 1024;
              v31 = v5;
              _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: _CTServerConnectionSetPacketNotificationFilter failed (%d.%d)", &v20, 0x2Eu);
            }
          }
        }

        else if (ErrorLogLevelForModule >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v20 = 136315650;
            v21 = v7;
            v22 = 2080;
            v23 = "TPCleanupBasebandNotifications";
            v24 = 1024;
            v25 = 808;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Disabled baseband notification filter.", &v20, 0x1Cu);
          }
        }
      }

      if (*(v1 + 1748) && *(v1 + 1752))
      {
        v11 = _CTServerConnectionReleaseQOS();
        v12 = v11;
        v13 = HIDWORD(v11);
        v14 = VRTraceGetErrorLogLevelForModule();
        if (v13 || v12)
        {
          if (v14 >= 3)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v20 = 136316418;
              v21 = v17;
              v22 = 2080;
              v23 = "TPCleanupBasebandNotifications";
              v24 = 1024;
              v25 = 819;
              v26 = 1024;
              v27 = 819;
              v28 = 1024;
              v29 = v12;
              v30 = 1024;
              v31 = v13;
              _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: _CTServerConnectionReleaseQOS failed (%d.%d)", &v20, 0x2Eu);
            }
          }
        }

        else if (v14 >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v20 = 136315650;
            v21 = v15;
            v22 = 2080;
            v23 = "TPCleanupBasebandNotifications";
            v24 = 1024;
            v25 = 817;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Stopped QoS from CommCenter.", &v20, 0x1Cu);
          }
        }
      }
    }

    v19 = *(v1 + 1696);
    if (v19)
    {
      CFRelease(v19);
      *(v1 + 1696) = 0;
    }

    return pthread_mutex_unlock((v2 + 34392));
  }

  return result;
}

uint64_t TPUpdateQualityIndictor(uint64_t a1, int a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2148466690;
  }

  v6 = v5;
  pthread_mutex_lock((v5 + 34392));
  if (*(v6 + 34456))
  {
    updated = _CTServerConnectionUpdateProtocolQualityOfService();
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (updated)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          TPUpdateQualityIndictor_cold_1();
        }
      }
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316162;
        v13 = v10;
        v14 = 2080;
        v15 = "TPUpdateQualityIndictor";
        v16 = 1024;
        v17 = 902;
        v18 = 1024;
        v19 = a2;
        v20 = 1024;
        v21 = a3;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPUpdateQualityIndictor: (%d), ISIPv6 (%d).", &v12, 0x28u);
      }
    }
  }

  pthread_mutex_unlock((v6 + 34392));
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPFlushBasebandQueue(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = 2148466689;
  if (a2)
  {
    v3 = CheckInHandleDebug();
    if (v3)
    {
      v4 = v3;
      pthread_mutex_lock((v3 + 34392));
      if (!*(v4 + 34456) || ((v5 = _CTServerConnectionDropIPPackets(), v6 = v5, (v7 = HIDWORD(v5)) == 0) ? (v8 = v5 == 0) : (v8 = 0), v8))
      {
        v2 = 0;
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v12 = 136316418;
          v13 = v9;
          v14 = 2080;
          v15 = "TPFlushBasebandQueue";
          v16 = 1024;
          v17 = 930;
          v18 = 1024;
          v19 = 930;
          v20 = 1024;
          v21 = v6;
          v22 = 1024;
          v23 = v7;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: _CTServerConnectionSetPacketNotificationFilter failed (%d.%d)", &v12, 0x2Eu);
        }
      }

      pthread_mutex_unlock((v4 + 34392));
      CheckOutHandleDebug();
    }

    else
    {
      return 2148466690;
    }
  }

  return v2;
}

uint64_t TPSendUDPPacketARPL(uint64_t a1, void *a2, int a3, uint64_t a4, int *a5, int a6, char a7, int a8)
{
  v61 = *MEMORY[0x1E69E9840];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  memset(v42, 0, sizeof(v42));
  v15 = CheckInHandleDebug();
  if (!v15)
  {
    return 2148466690;
  }

  v16 = v15;
  v41 = a3;
  if ((a7 & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v56 = v17;
      v57 = 2080;
      v58 = "TPSendUDPPacketARPL";
      v59 = 1024;
      v60 = 1039;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d >>>>>  ARPL packet is UNENCRYPTED in TPSendUDPPacketARPL (in Transport) <<<<<", buf, 0x1Cu);
    }
  }

  if (!a2 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v56 = v19;
      v57 = 2080;
      v58 = "TPSendUDPPacketARPL";
      v59 = 1024;
      v60 = 1042;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d >>>>>  ARPL packet pbMsg is NULL in TPSendUDPPacketARPL(in Transport) <<<<<", buf, 0x1Cu);
    }
  }

  if (!v41 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v56 = v21;
      v57 = 2080;
      v58 = "TPSendUDPPacketARPL";
      v59 = 1024;
      v60 = 1045;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d >>>>>  ARPL packet iLen==0 in TPSendUDPPacketARPL(in Transport) <<<<<", buf, 0x1Cu);
    }
  }

  LODWORD(v42[0]) = a6;
  BYTE12(v42[0]) = a7;
  DWORD2(v43) = a8;
  BYTE9(v44) = 1;
  if (a6 == 4)
  {
    v25 = 1;
    v23 = a5;
  }

  else
  {
    v23 = a5;
    if (a6 == 5)
    {
      if ((a7 & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
        TPSendUDPPacketARPL_cold_1();
        if (!a2)
        {
          goto LABEL_20;
        }
      }

      else if (!a2)
      {
LABEL_20:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            TPSendUDPPacketARPL_cold_2();
          }
        }
      }

      v24 = v41;
      if (v41)
      {
        v25 = 0;
        goto LABEL_55;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v25 = 0;
      }

      else
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          TPSendUDPPacketARPL_cold_3();
        }

        v25 = 0;
        v24 = 0;
      }

      goto LABEL_29;
    }

    v25 = 0;
  }

  v24 = v41;
LABEL_29:
  if (a2 || v24)
  {
LABEL_55:
    v27 = (v16 + 1064);
    pthread_rwlock_rdlock((v16 + 1064));
    v35 = SendUDPPacketForCList(*(v16 + 1056), a2, v24, a4, v23, v42);
    v26 = v35;
    if (v25 && v35 == -2146500586)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v56 = v36;
          v57 = 2080;
          v58 = "SendUDPPacket";
          v59 = 1024;
          v60 = 1003;
          _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Retry SIP packet using default result key.", buf, 0x1Cu);
        }
      }

      LODWORD(v44) = 1;
      v38 = SendUDPPacketForCList(*(v16 + 1056), a2, v24, a4, v23, v42);
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      v26 = v38;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          TPSendUDPPacketARPL_cold_4();
        }

        v24 = v41;
      }
    }

    pthread_rwlock_unlock((v16 + 1064));
    if (v26 == -2146500586)
    {
      v27 = (v16 + 1272);
      pthread_rwlock_rdlock((v16 + 1272));
      LODWORD(v42[0]) = 0;
      BYTE12(v42[0]) = 0;
      DWORD2(v43) = 0;
      v26 = SendUDPPacketForCList(*(v16 + 1264), a2, v24, a4, v23, v42);
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  v27 = (v16 + 1272);
  pthread_rwlock_wrlock((v16 + 1272));
  v28 = *(v16 + 1264);
  if (!v28)
  {
LABEL_61:
    v26 = 0;
    goto LABEL_74;
  }

  v29 = (v16 + 1264);
  v30 = *a4 & 1;
  while ((*(v28 + 2072) & 1) != v30)
  {
LABEL_44:
    if (*(v28 + 2072))
    {
      goto LABEL_47;
    }

    if (!*(v28 + 2092))
    {
      goto LABEL_52;
    }

LABEL_53:
    v29 = (v28 + 2144);
    v28 = *(v28 + 2144);
    if (!v28)
    {
      goto LABEL_73;
    }
  }

  v31 = (v28 + 2092);
  if (!v30)
  {
    v32 = *v31;
    if (v32 != *(a4 + 20))
    {
      if (!v32)
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    goto LABEL_43;
  }

  if (*v31 == *(a4 + 20) && *(v28 + 2100) == *(a4 + 28))
  {
LABEL_43:
    if (*(v28 + 2108) == *(a4 + 36))
    {
      goto LABEL_72;
    }

    goto LABEL_44;
  }

LABEL_47:
  if (*(v28 + 2092) != *MEMORY[0x1E69E99B8] || *(v28 + 2100) != *(MEMORY[0x1E69E99B8] + 8))
  {
    goto LABEL_53;
  }

LABEL_52:
  if (*(v28 + 2108) != *(a4 + 36))
  {
    goto LABEL_53;
  }

LABEL_72:
  *v29 = *(v28 + 2144);
  ICERemoveOneInterface();
  free(v28);
  v39 = *(v16 + 12);
  *(v16 + 12) = -1;
  VTP_Close(v39);
LABEL_73:
  v26 = 0;
LABEL_74:
  pthread_rwlock_unlock(v27);
LABEL_75:
  CheckOutHandleDebug();
  return v26;
}

uint64_t TPSendUDPDataPacket(uint64_t a1, _OWORD *a2, int a3, int a4, int a5, char a6, int a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v37 = 0;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  BYTE4(v17) = a6;
  LODWORD(v26) = 0;
  v16[0] = a7;
  v16[1] = a5;
  LODWORD(v17) = a4;
  BYTE1(v27) = 1;
  v13 = VTP_Send(-1, a2, a3, 0, v16);
  v14 = 0;
  if (v13 == -1)
  {
    v14 = *__error() | 0xC00F0000;
  }

  CheckOutHandleDebug();
  return v14;
}

uint64_t TPCreateHandle(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11)
{
  v69 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&g_xTPHandle);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = "TPCreateHandle";
      *&buf[22] = 1024;
      *v64 = 1913;
      *&v64[4] = 1024;
      *&v64[6] = g_iHandleRefCount;
      *&v64[10] = 2048;
      *&v64[12] = g_hActualTPHandle;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d ((((( In TPCreateHandle with g_iHandleRefCount = %d and g_hActualTPHandle = %p)))))", buf, 0x2Cu);
    }
  }

  if (g_iHandleRefCount)
  {
    v17 = CheckInHandleDebug();
    if (!v17)
    {
      pthread_mutex_unlock(&g_xTPHandle);
      return 2148466690;
    }

    v18 = v17 + 4096;
    if (a3)
    {
      v17[4289] = a3;
    }

    if (a4)
    {
      v17[4290] = a4;
    }

    if (a5)
    {
      v17[4292] = a5;
    }

    if (a6)
    {
      v17[4293] = a6;
    }

    if (a7)
    {
      v17[4294] = a7;
    }

    if (a8)
    {
      v17[4295] = a8;
    }

    if (a9)
    {
      v19 = v17[4297];
      v17[4297] = a9;
      CFRetain(a9);
      if (v19)
      {
        CFRelease(v19);
      }
    }

    if (a10)
    {
      v18[223] = a10;
    }

    if (a11)
    {
      v20 = v18[224];
      v21 = v18[226];
      v22 = *(a11 + 16);
      *(v18 + 112) = *a11;
      v18[226] = v22;
      v23 = v18[225];
      if (v23 && v18[224])
      {
        v23();
      }

      if (v21 && v20)
      {
        v21(v20);
      }
    }

    *a1 = g_hActualTPHandle;
    ++g_iHandleRefCount;
    CheckOutHandleDebug();
    goto LABEL_62;
  }

  v24 = malloc_type_calloc(1uLL, 0x8760uLL, 0x10E0040F635D44DuLL);
  if (v24)
  {
    v25 = v24;
    v26 = v24 + 0x8000;
    *v24 = a2;
    *(v24 + 1) = 0xFFFFFFFF00000000;
    pthread_rwlock_init((v24 + 1064), 0);
    pthread_rwlock_init((v25 + 1272), 0);
    pthread_mutex_init((v25 + 992), 0);
    pthread_mutex_init((v25 + 1480), 0);
    pthread_mutex_init((v25 + 34584), 0);
    pthread_mutex_init((v25 + 34392), 0);
    v68.__sig = 0xAAAAAAAAAAAAAAAALL;
    *v68.__opaque = 0xAAAAAAAAAAAAAAAALL;
    if (!pthread_mutexattr_init(&v68))
    {
      v27 = (v25 + 1624);
      v28 = 256;
      do
      {
        pthread_mutexattr_settype(&v68, 2);
        pthread_mutex_init(&v27[-2].__opaque[24], &v68);
        pthread_cond_init(v27, 0);
        v27 = (v27 + 128);
        --v28;
      }

      while (v28);
      pthread_mutexattr_destroy(&v68);
    }

    *(v26 + 193) = a3;
    *(v26 + 194) = a4;
    *(v26 + 195) = 0xFFFFFFFFLL;
    *(v26 + 196) = a5;
    *(v26 + 197) = a6;
    *(v26 + 198) = a7;
    *(v26 + 199) = a8;
    *(v26 + 201) = a9;
    if (a9)
    {
      CFRetain(a9);
    }

    *(v26 + 404) = VCTestMonitorManager_GetEnableLoopbackInterface();
    if (a10)
    {
      *(v26 + 223) = a10;
    }

    if (a11)
    {
      v29 = *(a11 + 16);
      *(v26 + 112) = *a11;
      *(v26 + 226) = v29;
      v30 = *(v26 + 225);
      if (v30)
      {
        if (*(v26 + 224))
        {
          v30();
        }
      }
    }

    *(v26 + 220) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v33 = *a1;
        *buf = 136316162;
        *&buf[4] = v31;
        *&buf[12] = 2080;
        *&buf[14] = "TPCreateHandle";
        *&buf[22] = 1024;
        *v64 = 1968;
        *&v64[4] = 2048;
        *&v64[6] = a1;
        *&v64[14] = 2048;
        *&v64[16] = v33;
        _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d ((((( In TPCreateHandle [A] phTP = %p and *phTP = %ld)))))", buf, 0x30u);
      }
    }

    *a1 = CreateHandle();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v36 = *a1;
        *buf = 136316162;
        *&buf[4] = v34;
        *&buf[12] = 2080;
        *&buf[14] = "TPCreateHandle";
        *&buf[22] = 1024;
        *v64 = 1972;
        *&v64[4] = 2048;
        *&v64[6] = a1;
        *&v64[14] = 2048;
        *&v64[16] = v36;
        _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d ((((( In TPCreateHandle [B] phTP = %p and *phTP = %ld)))))", buf, 0x30u);
      }
    }

    if (*a1 != 0xFFFFFFFFLL)
    {
      CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
      *(v26 + 200) = dispatch_queue_create_with_target_V2("com.apple.AVConference.Transport.ICEConnectivityCallbackQueue", 0, CustomRootQueue);
      *buf = TPSendUDPPacket;
      *&buf[8] = TPRecvUDPPacketWithTimeout;
      *&buf[16] = TPConnectedCallback;
      *v64 = TPCancelRecvUDP;
      *&v64[8] = TPProcessICENomination;
      *&v64[16] = 0;
      v65 = TPNewCandidatesCallback;
      v66 = TPShouldNominateICECandidatePair;
      v67 = TPRemoveIPPort;
      v38 = ICECreateHandleWithCallback();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v41 = *a1;
          *v55 = 136316162;
          v56 = v39;
          v57 = 2080;
          v58 = "TPCreateHandle";
          v59 = 1024;
          v60 = 2006;
          v61 = 2048;
          *v62 = a1;
          *&v62[8] = 2048;
          *&v62[10] = v41;
          _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d ((((( In TPCreateHandle [C] phTP = %p and *phTP = %ld)))))", v55, 0x30u);
        }
      }

      g_hActualTPHandle = *a1;
      g_iHandleRefCount = 1;
      if (v38 < 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            TPCreateHandle_cold_1();
          }
        }

        TPCloseHandle();
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v42 = VRTraceErrorLogLevelToCSTR();
        v43 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v55 = 136316162;
          v56 = v42;
          v57 = 2080;
          v58 = "TPCreateHandle";
          v59 = 1024;
          v60 = 2016;
          v61 = 1024;
          *v62 = g_iHandleRefCount;
          *&v62[4] = 2048;
          *&v62[6] = g_hActualTPHandle;
          _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d ((((( In TPCreateHandle AREA 1 with g_iHandleRefCount = %d and g_hActualTPHandle = %p)))))", v55, 0x2Cu);
        }
      }

LABEL_62:
      pthread_mutex_unlock(&g_xTPHandle);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v44 = VRTraceErrorLogLevelToCSTR();
        v45 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v44;
          *&buf[12] = 2080;
          *&buf[14] = "TPCreateHandle";
          *&buf[22] = 1024;
          *v64 = 2066;
          *&v64[4] = 1024;
          *&v64[6] = g_iHandleRefCount;
          *&v64[10] = 2048;
          *&v64[12] = g_hActualTPHandle;
          _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d ((((( Leaving TPCreateHandle successfully with g_iHandleRefCount = %d and g_hActualTPHandle = %p)))))", buf, 0x2Cu);
        }
      }

      return 0;
    }

    pthread_rwlock_destroy((v25 + 1064));
    pthread_rwlock_destroy((v25 + 1272));
    pthread_mutex_destroy((v25 + 992));
    pthread_mutex_destroy((v25 + 1480));
    pthread_mutex_destroy((v25 + 34584));
    for (i = 0; i != 0x8000; i += 128)
    {
      pthread_mutex_destroy(&v25[i + 1560]);
      pthread_cond_destroy(&v25[i + 1624]);
    }

    v48 = *(v26 + 201);
    if (v48)
    {
      CFRelease(v48);
    }

    v49 = *(v26 + 226);
    if (v49 && *(v26 + 224))
    {
      v49();
    }

    free(v25);
    pthread_mutex_unlock(&g_xTPHandle);
    return 2148466693;
  }

  else
  {
    v46 = 2148466691;
    pthread_mutex_unlock(&g_xTPHandle);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TPCreateHandle_cold_2();
      }
    }
  }

  return v46;
}

uint64_t TPSendUDPPacket(uint64_t a1, int a2, _OWORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = 2148466690;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  if (CheckInHandleDebug())
  {
    LODWORD(v16[0]) = 0;
    DWORD2(v16[0]) = a2;
    BYTE12(v16[0]) = a8;
    *(&v17 + 1) = 0x100000000;
    BYTE9(v18) = 1;
    if (VTP_SendWithSourceDestinationIP(a5, a6, a3, a4, 0, v16) == -1)
    {
      v14 = 2148466721;
    }

    else
    {
      v14 = 0;
    }

    CheckOutHandleDebug();
  }

  return v14;
}

uint64_t TPRecvUDPPacketWithTimeout(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, uint64_t a5, uint64_t a6, void *a7, int a8, unsigned int a9)
{
  v9 = a9;
  v54 = *MEMORY[0x1E69E9840];
  v10 = 2148466710;
  if (a9 > 0xFF)
  {
    return v10;
  }

  v17 = CheckInHandleDebug();
  if (!v17)
  {
    return 2148466690;
  }

  v18 = v17;
  v48 = a4;
  v49 = a3;
  v50 = a6;
  v51 = a7;
  v19 = micro();
  v20 = (v18 + 1544);
  pthread_mutex_lock((v18 + 1544 + (a9 << 7) + 16));
  v21 = 0;
  v52 = *(a5 + 36);
  v22 = a8 / 1000.0;
  v23 = MEMORY[0x1E69E99B8];
  while (1)
  {
    v24 = &v20[32 * v9];
    if (v52)
    {
      break;
    }

    if (*(v24 + 1))
    {
      v10 = v21;
LABEL_55:
      v24 = &v20[32 * v9];
      v21 = v10;
LABEL_56:
      *v24 = 0;
LABEL_57:
      v41 = *(v24 + 1);
      if (v41)
      {
        v42 = *(v41 + 2052);
        *v48 = v42;
        memcpy(v49, v41, v42);
        v43 = *(v41 + 2088);
        v44 = *(v41 + 2072);
        *a5 = *(v41 + 2056);
        *(a5 + 16) = v44;
        *(a5 + 32) = v43;
        v45 = *(v41 + 2112);
        v46 = *(v41 + 2096);
        *(v50 + 32) = *(v41 + 2128);
        *v50 = v46;
        *(v50 + 16) = v45;
        if (v51)
        {
          *v51 = *(v41 + 2136);
        }

        *(v24 + 1) = *(v41 + 2144);
        free(v41);
        v21 = 0;
      }

      goto LABEL_61;
    }

    if (*v24)
    {
      goto LABEL_56;
    }

    pthread_mutex_unlock((v24 + 4));
    pthread_mutex_lock((v18 + 1560));
    if (*(v18 + 1552))
    {
      v9 = 0;
      goto LABEL_55;
    }

    v9 = 0;
    if (*v20)
    {
      v10 = 2148466718;
      goto LABEL_55;
    }

    LODWORD(v21) = -2146500586;
LABEL_35:
    v32 = v22 - (micro() - v19);
    if (v32 < 0.0)
    {
      v24 = &v20[32 * v9];
      *v24 = 0;
      v21 = 2148466711;
      goto LABEL_50;
    }

    v53.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v53.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    convertTimeoutToRelativeTimespec(v32);
    v53.tv_sec = v33;
    v53.tv_nsec = v34;
    v24 = &v20[32 * v9];
    v35 = pthread_cond_timedwait_relative_np((v24 + 20), (v24 + 4), &v53);
    if (v35)
    {
      if (v35 == 60)
      {
        v21 = 2148466711;
      }

      else
      {
        v21 = v35 | 0xC00F0000;
      }

      *v24 = 0;
LABEL_50:
      if (v52)
      {
        goto LABEL_61;
      }

      goto LABEL_57;
    }

    if (*v24)
    {
      v21 = 2148466718;
    }

    else
    {
      v21 = v21;
    }
  }

  if (*v24)
  {
    goto LABEL_44;
  }

  v25 = v24 + 2;
  v26 = *(v24 + 1);
  if (!v26)
  {
    goto LABEL_35;
  }

  v27 = *a5 & 1;
  while ((*(v26 + 2056) & 1) != v27)
  {
LABEL_19:
    if (*(v26 + 2056))
    {
      goto LABEL_22;
    }

    if (!*(v26 + 2076))
    {
      goto LABEL_27;
    }

LABEL_28:
    v25 = (v26 + 2144);
    v26 = *(v26 + 2144);
    if (!v26)
    {
      goto LABEL_35;
    }
  }

  v28 = (v26 + 2076);
  if (!v27)
  {
    v29 = *v28;
    if (v29 != *(a5 + 20))
    {
      if (!v29)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    goto LABEL_18;
  }

  if (*v28 == *(a5 + 20) && *(v26 + 2084) == *(a5 + 28))
  {
LABEL_18:
    if (*(v26 + 2092) == *(a5 + 36))
    {
      goto LABEL_41;
    }

    goto LABEL_19;
  }

LABEL_22:
  if (*(v26 + 2076) != *v23 || *(v26 + 2084) != v23[1])
  {
    goto LABEL_28;
  }

LABEL_27:
  if (*(v26 + 2092) != *(a5 + 36))
  {
    goto LABEL_28;
  }

LABEL_41:
  v36 = *(v26 + 2052);
  *v48 = v36;
  memcpy(v49, v26, v36);
  v37 = *(v26 + 2088);
  v38 = *(v26 + 2072);
  *a5 = *(v26 + 2056);
  *(a5 + 16) = v38;
  *(a5 + 32) = v37;
  v39 = *(v26 + 2112);
  v40 = *(v26 + 2096);
  *(v50 + 32) = *(v26 + 2128);
  *v50 = v40;
  *(v50 + 16) = v39;
  if (v51)
  {
    *v51 = *(v26 + 2136);
  }

  *v25 = *(v26 + 2144);
  free(v26);
LABEL_44:
  *v24 = 0;
LABEL_61:
  pthread_mutex_unlock((v24 + 4));
  CheckOutHandleDebug();
  return v21;
}

uint64_t TPConnectedCallback(uint64_t a1, int a2, const void *a3, int *a4, int a5, uint64_t a6, int a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v14 = CheckInHandleDebug();
  if (!v14)
  {
    return 2148466690;
  }

  if (a4)
  {
    v24 = *a4;
  }

  else
  {
    v24 = 0;
  }

  v16 = v14 + 0x8000;
  v25 = a6;
  if (a3)
  {
    v17 = malloc_type_calloc(1uLL, 0x140uLL, 0x1020040A6FBA1A4uLL);
    v18 = v17;
    v19 = a7;
    if (v17)
    {
      memcpy(v17, a3, 0x140uLL);
      v18[38] = 0;
    }
  }

  else
  {
    v19 = a7;
    v18 = 0;
  }

  v20 = *(v16 + 1608);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v32 = v21;
      v33 = 2080;
      v34 = "TPConnectedCallback";
      v35 = 1024;
      v36 = 4500;
      v37 = 1024;
      v38 = a3;
      v39 = 1024;
      v40 = a5;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback: pCCResult == %08X, fUseRelay = %d ...", buf, 0x28u);
    }
  }

  v23 = *(v16 + 1600);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __TPConnectedCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_38;
  block[4] = a1;
  block[5] = v18;
  v27 = v24;
  v28 = a5;
  block[6] = v20;
  block[7] = v25;
  v29 = a2;
  v30 = v19;
  dispatch_async(v23, block);
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPCancelRecvUDP(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148466690;
  }

  v4 = v3 + (a2 << 7);
  pthread_mutex_lock((v4 + 1560));
  *(v4 + 1544) = 1;
  pthread_cond_signal((v4 + 1624));
  pthread_mutex_unlock((v4 + 1560));
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPProcessICENomination(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  *&v26[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[3] = v7;
  *v26 = v7;
  v25[2] = v7;
  v23 = v7;
  v24 = v7;
  v25[0] = v7;
  *(v25 + 14) = 0xAAAAAAAAAAAAAAAALL;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316418;
      v12 = v8;
      v13 = 2080;
      v14 = "TPProcessICENomination";
      v15 = 1024;
      v16 = 4593;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = IPPORTToStringWithSize();
      v21 = 2080;
      v22 = IPPORTToStringWithSize();
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPProcessICENomination Callback: callID[%08X] local[%s] dst[%s].", &v11, 0x36u);
    }
  }

  VTP_SetRTPSrc(a2, a3, a4);
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPNewCandidatesCallback(uint64_t a1, int a2, const void *a3, int a4, __int16 a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    return 2148466690;
  }

  v11 = v10 + 0x8000;
  v12 = *(v10 + 34376);
  if (a3)
  {
    v13 = malloc_type_malloc(a4, 0x35A4787AuLL);
    v14 = v13;
    if (v13)
    {
      memcpy(v13, a3, a4);
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = *(v11 + 1600);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __TPNewCandidatesCallback_block_invoke;
  v17[3] = &__block_descriptor_tmp_39;
  v17[4] = a1;
  v17[5] = v12;
  v18 = a4;
  v19 = a2;
  v17[6] = v14;
  v20 = a5;
  dispatch_async(v16, v17);
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPShouldNominateICECandidatePair(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = CheckInHandleDebug();
  if (!v15)
  {
    return 2148466690;
  }

  v16 = *(v15 + 34368);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __TPShouldNominateICECandidatePair_block_invoke;
  v18[3] = &__block_descriptor_tmp_40;
  v18[4] = v15;
  v18[5] = a3;
  v19 = a2;
  v20 = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a7;
  v18[9] = a8;
  dispatch_sync(v16, v18);
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPRemoveIPPort(uint64_t a1, int a2, __int128 *a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v15[2] = 0x4000000000;
  v7 = a3[1];
  v16 = *a3;
  v17 = v7;
  v15[0] = 0;
  v15[1] = v15;
  v18 = *(a3 + 4);
  v8 = CheckInHandleDebug();
  if (v8)
  {
    v9 = *(v8 + 34368);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __TPRemoveIPPort_block_invoke;
    v12[3] = &unk_1E85F6F10;
    v12[4] = v15;
    v12[5] = a1;
    v13 = a2;
    v14 = a4;
    dispatch_async(v9, v12);
    CheckOutHandleDebug();
    v10 = 0;
  }

  else
  {
    v10 = 2148466690;
  }

  _Block_object_dispose(v15, 8);
  return v10;
}

uint64_t TPCloseHandle()
{
  v39 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 136316162;
      *&v30[4] = v0;
      v31 = 2080;
      v32 = "TPCloseHandle";
      v33 = 1024;
      v34 = 2077;
      v35 = 1024;
      v36 = g_iHandleRefCount;
      v37 = 2048;
      v38 = g_hActualTPHandle;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d ((((( In TPCloseHandle with g_iHandleRefCount = %d and g_hActualTPHandle = %p)))))", v30, 0x2Cu);
    }
  }

  pthread_mutex_lock(&g_xTPHandle);
  v2 = g_iHandleRefCount;
  if (g_iHandleRefCount <= 0)
  {
    v26 = 2148466692;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 136315650;
        *&v30[4] = v27;
        v31 = 2080;
        v32 = "TPCloseHandle";
        v33 = 1024;
        v34 = 2082;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Unmatched call to TPCreateHandle, TPCloseHandle called with non-positive ref count", v30, 0x1Cu);
      }
    }
  }

  else
  {
    --g_iHandleRefCount;
    if (v2 == 1)
    {
      g_iHandleRefCount = 0;
      v3 = CheckInHandleDebug();
      if (!v3)
      {
        v26 = 2148466690;
        goto LABEL_52;
      }

      v4 = v3;
      pthread_rwlock_wrlock((v3 + 1064));
      *(v4 + 8) = 1;
      v5 = *(v4 + 12);
      if (v5 != -1)
      {
        VTP_Close(v5);
      }

      *(v4 + 12) = -1;
      for (i = *(v4 + 1056); i; i = *(i + 2144))
      {
        ICERemoveOneInterface();
        if (!*(i + 2068))
        {
          VTP_Close(*i);
        }

        v7 = *(i + 2128);
        if (v7 != 0xFFFFFFFFLL)
        {
          if (*(i + 2136) != 0xFFFFFFFFLL)
          {
            ARPLSessionRelease();
            *(i + 2136) = 0xFFFFFFFFLL;
            v7 = *(i + 2128);
          }

          DTLS_Cleanup(v7);
          *(i + 2128) = 0xFFFFFFFFLL;
        }
      }

      pthread_rwlock_unlock((v4 + 1064));
      pthread_rwlock_wrlock((v4 + 1272));
      for (j = *(v4 + 1264); j; j = *(j + 2144))
      {
        ICERemoveOneInterface();
      }

      pthread_rwlock_unlock((v4 + 1272));
      v9 = *(v4 + 24);
      if (v9)
      {
        *v30 = 0xAAAAAAAAAAAAAAAALL;
        pthread_join(v9, v30);
      }

      for (k = 0; k != 0x8000; k += 128)
      {
        pthread_mutex_lock((v4 + k + 1560));
        *(v4 + k + 1544) = 1;
        pthread_cond_broadcast((v4 + k + 1624));
        pthread_mutex_unlock((v4 + k + 1560));
      }

      CheckOutHandleDebug();
      TPCleanupBaseband(v4);
      v11 = *(v4 + 34528);
      if (v11)
      {
        CFRelease(v11);
      }

      ICECloseHandle();
      *(v4 + 34336) = 0u;
      *(v4 + 34352) = 0u;
      v12 = *(v4 + 34376);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = *(v4 + 34576);
      if (v13 && *(v4 + 34560))
      {
        v13();
      }

      v14 = *(v4 + 34368);
      if (v14)
      {
        dispatch_release(v14);
      }

      pthread_rwlock_wrlock((v4 + 1064));
      v15 = *(v4 + 1056);
      if (v15)
      {
        do
        {
          v16 = v15[268];
          v17 = v15[266];
          if (v17 != 0xFFFFFFFFLL)
          {
            if (v15[267] != 0xFFFFFFFFLL)
            {
              ARPLSessionRelease();
              v15[267] = 0xFFFFFFFFLL;
              v17 = v15[266];
            }

            DTLS_Cleanup(v17);
          }

          free(v15);
          v15 = v16;
        }

        while (v16);
      }

      pthread_rwlock_unlock((v4 + 1064));
      pthread_rwlock_wrlock((v4 + 1272));
      v18 = *(v4 + 1264);
      if (v18)
      {
        do
        {
          v19 = v18[268];
          free(v18);
          v18 = v19;
        }

        while (v19);
      }

      pthread_rwlock_unlock((v4 + 1272));
      pthread_mutex_lock((v4 + 1480));
      v20 = *(v4 + 1472);
      if (v20)
      {
        do
        {
          v21 = v20[17];
          free(v20);
          v20 = v21;
        }

        while (v21);
      }

      pthread_mutex_unlock((v4 + 1480));
      for (m = 0; m != 256; ++m)
      {
        v23 = v4 + 1544 + (m << 7);
        pthread_mutex_lock((v23 + 16));
        v24 = *(v23 + 8);
        if (v24)
        {
          do
          {
            v25 = v24[268];
            free(v24);
            v24 = v25;
          }

          while (v25);
        }

        pthread_mutex_unlock((v23 + 16));
        pthread_mutex_destroy((v23 + 16));
        pthread_cond_destroy((v23 + 80));
      }

      pthread_rwlock_destroy((v4 + 1064));
      pthread_rwlock_destroy((v4 + 1272));
      pthread_mutex_destroy((v4 + 992));
      pthread_mutex_destroy((v4 + 1480));
      pthread_mutex_destroy((v4 + 34584));
      pthread_mutex_destroy((v4 + 34392));
      free(v4);
    }

    v26 = 0;
  }

LABEL_52:
  pthread_mutex_unlock(&g_xTPHandle);
  return v26;
}

uint64_t TPCleanupBaseband(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1 + 0x8000;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v3;
      v10 = 2080;
      v11 = "TPCleanupBaseband";
      v12 = 1024;
      v13 = 857;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d LET US CLEANUP BASEBAND.", &v8, 0x1Cu);
    }
  }

  result = TPCleanupBasebandNotifications(a1);
  if (*(v2 + 1744))
  {
    pthread_mutex_lock((a1 + 34392));
    if (*(v2 + 1688))
    {
      if (*(v2 + 1756))
      {
        if (_CTServerConnectionUnregisterForNotification())
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              TPCleanupBaseband_cold_1();
            }
          }
        }

        else
        {
          *(v2 + 1756) = 0;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v6 = VRTraceErrorLogLevelToCSTR();
            v7 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v8 = 136315650;
              v9 = v6;
              v10 = 2080;
              v11 = "TPCleanupBaseband";
              v12 = 1024;
              v13 = 874;
              _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Deregistered kCTRegistrationDataStatusChangedNotification.", &v8, 0x1Cu);
            }
          }
        }
      }

      CFRelease(*(v2 + 1688));
      *(v2 + 1688) = 0;
    }

    return pthread_mutex_unlock((a1 + 34392));
  }

  return result;
}

uint64_t TPSetPacketMultiplexMode(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148466690;
  }

  *(v3 + 4) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPSetupOpenFaceTimeSecurity(uint64_t a1, int a2, uint64_t a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2148466690;
  }

  v6 = dtls(a2, a3, v5);
  CheckOutHandleDebug();
  return v6;
}

uint64_t dtls(int a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v36 = v6;
      v37 = 2080;
      v38 = "dtls";
      v39 = 1024;
      v40 = 512;
      v41 = 1024;
      v42 = a1;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d DTLS: entering (dwCallID == %08X)...", buf, 0x22u);
    }
  }

  v8 = 2149777460;
  if (!a2)
  {
    goto LABEL_29;
  }

  pthread_rwlock_rdlock((a3 + 1064));
  v9 = *(a3 + 1056);
  if (!v9)
  {
LABEL_28:
    pthread_rwlock_unlock((a3 + 1064));
LABEL_29:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v36 = v17;
        v37 = 2080;
        v38 = "dtls";
        v39 = 1024;
        v40 = 620;
        v41 = 1024;
        v42 = -2145189836;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d DTLS: exiting (hResult == %08X)...", buf, 0x22u);
      }
    }

    return v8;
  }

  v10 = a3 + 0x8000;
  v11 = MEMORY[0x1E69E99B8];
  while (1)
  {
    IPPORTToStringWithSize();
    v12 = *(v9 + 2072) & 1;
    if (v12 == (*(a2 + 28) & 1))
    {
      break;
    }

LABEL_18:
    if (v12)
    {
      goto LABEL_21;
    }

    if (!*(v9 + 2092))
    {
      goto LABEL_26;
    }

LABEL_27:
    v9 = *(v9 + 2144);
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  v13 = (v9 + 2092);
  if (!v12)
  {
    v14 = *v13;
    if (v14 != *(a2 + 48))
    {
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    goto LABEL_17;
  }

  if (*v13 == *(a2 + 48) && *(v9 + 2100) == *(a2 + 56))
  {
LABEL_17:
    if (*(v9 + 2108) == *(a2 + 64))
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

LABEL_21:
  if (*(v9 + 2092) != *v11 || *(v9 + 2100) != v11[1])
  {
    goto LABEL_27;
  }

LABEL_26:
  if (*(v9 + 2108) != *(a2 + 64))
  {
    goto LABEL_27;
  }

LABEL_33:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v9 + 2064);
      *buf = 136316162;
      v36 = v20;
      v37 = 2080;
      v38 = "dtls";
      v39 = 1024;
      v40 = 528;
      v41 = 1024;
      v42 = v22;
      v43 = 2080;
      v44 = &dtls_ip;
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d DTLS:: (dwCallID == %08X) found clist local IP == %s", buf, 0x2Cu);
    }
  }

  IPPORTToStringWithSize();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v9 + 2120);
      *buf = 136316162;
      v36 = v23;
      v37 = 2080;
      v38 = "dtls";
      v39 = 1024;
      v40 = 530;
      v41 = 1024;
      v42 = v25;
      v43 = 2080;
      v44 = &dtls_ip;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d DTLS:: (dwRemoteCallID == %08X) dtls to remote == %s", buf, 0x2Cu);
    }
  }

  pthread_rwlock_unlock((a3 + 1064));
  v26 = *(a3 + 34528);
  v27 = (v9 + 2128);
  v28 = *(v9 + 2128);
  if (!v26)
  {
    if (v28 != 0xFFFFFFFFLL)
    {
      VTP_SetDTLS(*v9, 0xFFFFFFFFLL);
      if (*(v9 + 2136) != 0xFFFFFFFFLL)
      {
        ARPLSessionRelease();
        *(v9 + 2136) = 0xFFFFFFFFLL;
      }

      DTLS_Cleanup(*v27);
      *v27 = 0xFFFFFFFFLL;
    }

    goto LABEL_29;
  }

  if (v28 != 0xFFFFFFFFLL)
  {
    VTP_SetDTLS(*v9, 0xFFFFFFFFLL);
    if (*(v9 + 2136) != 0xFFFFFFFFLL)
    {
      ARPLSessionRelease();
      *(v9 + 2136) = 0xFFFFFFFFLL;
    }

    DTLS_Cleanup(*v27);
    *v27 = 0xFFFFFFFFLL;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v36 = v29;
      v37 = 2080;
      v38 = "dtls";
      v39 = 1024;
      v40 = 553;
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d DTLS: initialize and perform handshake...", buf, 0x1Cu);
    }
  }

  v8 = DTLS_Create((v9 + 2128), *v9, *(v10 + 1768) == 1, a1, *(v9 + 2120), *(v10 + 1760), a2);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if ((v8 & 0x80000000) == 0)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      v34 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v36 = v32;
          v37 = 2080;
          v38 = "dtls";
          v39 = 1024;
          v40 = 564;
          v41 = 1024;
          v42 = a1;
          _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d dtls: ARPLSessionCreate(p2pID == %08X) ...", buf, 0x22u);
        }
      }

      else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        dtls_cold_1();
      }
    }

    ARPLSessionCreate();
  }

  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      dtls_cold_4();
    }
  }

  DTLS_Cleanup(*v27);
  *v27 = 0xFFFFFFFFLL;
  return v8;
}

uint64_t TPGetLoopbackIP(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = 2148466689;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    v26 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v6;
    v25 = v6;
    MakeIPPORT();
    if (a2)
    {
      LocalIFIndexForDstIPPort = GetLocalIFIndexForDstIPPort();
      if_indextoname(LocalIFIndexForDstIPPort, (a2 + 4));
      pthread_rwlock_rdlock((v5 + 1064));
      v8 = *(v5 + 1056);
      if (v8)
      {
        while (((*(v8 + 2072) ^ v24) & 1) != 0 || strcmp((v8 + 2076), (a2 + 4)))
        {
          v8 = *(v8 + 2144);
          if (!v8)
          {
            goto LABEL_7;
          }
        }

        v11 = *(v8 + 2072);
        v12 = *(v8 + 2088);
        *(a2 + 32) = *(v8 + 2104);
        *a2 = v11;
        *(a2 + 16) = v12;
        pthread_rwlock_unlock((v5 + 1064));
        IPPORTToStringWithSize();
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315906;
            v17 = v13;
            v18 = 2080;
            v19 = "TPGetLoopbackIP";
            v20 = 1024;
            v21 = 2487;
            v22 = 2080;
            v23 = &TPGetLoopbackIP_ip;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPGetLoopbackIP:: found loopbackIP = %s", &v16, 0x26u);
          }
        }

        v3 = 0;
        goto LABEL_16;
      }

LABEL_7:
      pthread_rwlock_unlock((v5 + 1064));
      v3 = 2148466710;
    }

    IPPORTToStringWithSize();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = v9;
        v18 = 2080;
        v19 = "TPGetLoopbackIP";
        v20 = 1024;
        v21 = 2491;
        v22 = 2080;
        v23 = &TPGetLoopbackIP_ip_5;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPGetLoopbackIP:: error loopbackIP = %s", &v16, 0x26u);
      }
    }

LABEL_16:
    CheckOutHandleDebug();
    return v3;
  }

  return 2148466690;
}

uint64_t TPListenVirtualInterface(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = 2148466691;
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = v3;
    if (*v3)
    {
      v2 = 2148466704;
LABEL_24:
      CheckOutHandleDebug();
      return v2;
    }

    pthread_rwlock_wrlock((v3 + 1064));
    v5 = TransportMapPacketMultiplexModeToVTPMode(*(v4 + 4));
    v6 = malloc_type_calloc(1uLL, 0x868uLL, 0x10200406FE3F67FuLL);
    if (v6)
    {
      v7 = v6;
      *(v6 + 4) = 1;
      *(v6 + 258) = 0;
      *(v6 + 266) = 0xFFFFFFFFLL;
      *(v6 + 267) = 0xFFFFFFFFLL;
      v8 = VTP_SocketForIDS();
      *v7 = v8;
      if (v8 != -1)
      {
        VTP_SetSocketMode(v8, v5);
        VTP_SetPktType(*v7, 48142);
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v11 = *v7;
            v16 = 136315906;
            v17 = v9;
            v18 = 2080;
            v19 = "CreateSocketForIDS";
            v20 = 1024;
            v21 = 2289;
            v22 = 1024;
            v23 = v11;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Start listening on IDS interface vfd %d", &v16, 0x22u);
          }
        }

        v7[2] = 2048;
        v12 = (v4 + 1056);
        do
        {
          v13 = v12;
          v14 = *v12;
          v12 = (*v12 + 536);
        }

        while (v14);
        *v13 = v7;
        pthread_rwlock_unlock((v4 + 1064));
        v2 = TPEnsureRecvProcStarted(a1, v4);
        goto LABEL_24;
      }

      v2 = *__error() | 0xC00F0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          TPListenVirtualInterface_cold_1();
        }
      }

      free(v7);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TPListenVirtualInterface_cold_2();
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TPListenVirtualInterface_cold_3();
      }
    }

    pthread_rwlock_unlock((v4 + 1064));
    goto LABEL_24;
  }

  return 2148466690;
}

uint64_t TPListenOnPhysicalInterface(uint64_t a1, _WORD *a2, int a3, uint64_t a4, const unsigned __int8 *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = 2148466710;
  v10 = CheckInHandleDebug();
  if (v10)
  {
    v11 = v10;
    if (*v10)
    {
      v9 = 2148466704;
LABEL_50:
      CheckOutHandleDebug();
      return v9;
    }

    v45 = 0xAAAAAAAAAAAAAAAALL;
    v46 = 0;
    v57 = 0;
    v58 = 0;
    *(v10 + 20) = *a2;
    *(v10 + 16) = 10;
    TPSetupCTContext(a1, v10, a3);
    if (*(v11 + 34384))
    {
      LocalInterfaceListWithOptionsAndCellInterfaceName = 1;
      v46 = malloc_type_calloc(1uLL, 0x28uLL, 0x100004053E81896uLL);
      MakeIPPORT();
      LocalIFIndexForDstIPPort = GetLocalIFIndexForDstIPPort();
      if_indextoname(LocalIFIndexForDstIPPort, v46 + 4);
    }

    else
    {
      LocalInterfaceListWithOptionsAndCellInterfaceName = GetLocalInterfaceListWithOptionsAndCellInterfaceName();
      if (!LocalInterfaceListWithOptionsAndCellInterfaceName)
      {
        FreeLocalInterfaceList();
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            TPListenOnPhysicalInterface_cold_2();
          }
        }

        goto LABEL_50;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v48 = v14;
        v49 = 2080;
        v50 = "ListenUDP";
        v51 = 1024;
        v52 = 2664;
        v53 = 1024;
        v54 = LocalInterfaceListWithOptionsAndCellInterfaceName;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d %d interfaces found.", buf, 0x22u);
      }
    }

    v42 = a1;
    pthread_rwlock_wrlock((v11 + 1064));
    if (LocalInterfaceListWithOptionsAndCellInterfaceName < 1)
    {
      v43 = 0;
LABEL_44:
      pthread_rwlock_unlock((v11 + 1064));
      FreeLocalInterfaceList();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v39 = *(v11 + 1056) == 0;
          *buf = 136316162;
          v48 = v37;
          v49 = 2080;
          v50 = "ListenUDP";
          v51 = 1024;
          v52 = 2727;
          v53 = 1024;
          v54 = v43;
          v55 = 1024;
          v56 = v39;
          _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d %d valid interfaces found. (pTP->pCList == NULL) = %d", buf, 0x28u);
        }
      }

      v9 = 2148466710;
      if (*(v11 + 1056))
      {
        v40 = TPEnsureRecvProcStarted(v42, v11);
        if ((v40 & 0x80000000) != 0)
        {
          v9 = v40;
          TPListenOnPhysicalInterface_cold_1(&v46, (v11 + 1064), (v11 + 1056));
        }

        else
        {
          v9 = 0;
        }
      }

      goto LABEL_50;
    }

    v16 = 0;
    v43 = 0;
    v17 = (v11 + 1056);
    v18 = LocalInterfaceListWithOptionsAndCellInterfaceName;
    while (1)
    {
      v19 = *a2;
      v20 = &v46[40 * v16];
      *(v20 + 18) = v19;
      v21 = *v17;
      if (*v17)
      {
        break;
      }

LABEL_26:
      v24 = TransportMapPacketMultiplexModeToVTPMode(*(v11 + 4));
      if ((CreateSocketAndBind(v20, &v45, 0, a5, v24) & 0x80000000) == 0)
      {
        v25 = v45;
        *a2 = *(v45 + 1054);
        if (a4)
        {
          v26 = *(v25 + 518);
          v27 = *(v25 + 522);
          *(a4 + 32) = *(v25 + 263);
          *a4 = v26;
          *(a4 + 16) = v27;
        }

        VCTestMonitorManager_GetEnableLoopbackInterface();
        v28 = ICESetEnableLoopbackInterface();
        if (v28 < 0)
        {
          v29 = v28;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v30 = VRTraceErrorLogLevelToCSTR();
            v31 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v48 = v30;
              v49 = 2080;
              v50 = "ListenUDP";
              v51 = 1024;
              v52 = 2690;
              v53 = 1024;
              v54 = 2690;
              v55 = 1024;
              v56 = v29;
              _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: ICESetEnableLoopbackInterface failed(%08X)", buf, 0x28u);
            }
          }
        }

        v32 = ICEAddOneInterface();
        v33 = (v11 + 1056);
        if (v32 < 0)
        {
          VTP_Close(*v25);
          v36 = *(v25 + 266);
          if (v36 != 0xFFFFFFFFLL)
          {
            if (*(v25 + 267) != 0xFFFFFFFFLL)
            {
              ARPLSessionRelease();
              *(v25 + 267) = 0xFFFFFFFFLL;
              v36 = *(v25 + 266);
            }

            DTLS_Cleanup(v36);
          }

          free(v25);
        }

        else
        {
          do
          {
            v34 = v33;
            v35 = *v33;
            v33 = (*v33 + 536);
          }

          while (v35);
          *v34 = v25;
          ++v43;
        }
      }

LABEL_41:
      if (++v16 == v18)
      {
        goto LABEL_44;
      }
    }

    v22 = *v20 & 1;
    while (1)
    {
      if (v22 == (*(v21 + 2072) & 1))
      {
        if (v22)
        {
          if (*(v20 + 20) == *(v21 + 2092) && *(v20 + 28) == *(v21 + 2100))
          {
LABEL_24:
            if (v19 == *(v21 + 2108))
            {
              goto LABEL_41;
            }
          }
        }

        else if (*(v20 + 5) == *(v21 + 2092))
        {
          goto LABEL_24;
        }
      }

      v21 = *(v21 + 2144);
      if (!v21)
      {
        goto LABEL_26;
      }
    }
  }

  return 2148466690;
}

uint64_t TPStopListen(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148466690;
  }

  v4 = v3;
  *&v35[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v5;
  *v35 = v5;
  v33 = v5;
  pthread_rwlock_wrlock((v3 + 1064));
  v6 = *(v4 + 1056);
  if (!v6)
  {
    goto LABEL_29;
  }

  v7 = 0;
  v8 = *(v4 + 1056);
  do
  {
    v9 = v7;
    v7 = v8;
    while (a2)
    {
      if ((*(v7 + 4) & 1) == 0)
      {
        goto LABEL_28;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v7;
          *buf = 136315906;
          v22 = v10;
          v23 = 2080;
          v24 = "TPStopListen";
          v25 = 1024;
          v26 = 2829;
          v27 = 1024;
          LODWORD(v28) = v12;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Stop listening on IDS interface vfd %d", buf, 0x22u);
        }
      }

      if (!*(v7 + 2068))
      {
        VTP_Close(*v7);
      }

LABEL_22:
      v18 = *(v7 + 2144);
      if (v9)
      {
        *(v9 + 2144) = v18;
      }

      if (v7 == v6)
      {
        v6 = v18;
      }

      free(v7);
      v7 = v18;
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    if ((*(v7 + 4) & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = IPPORTToStringWithSize();
          v16 = *v7;
          *buf = 136316418;
          v22 = v13;
          v23 = 2080;
          v24 = "TPStopListen";
          v25 = 1024;
          v26 = 2859;
          v27 = 2080;
          v28 = v15;
          v29 = 2080;
          v30 = v7 + 2076;
          v31 = 1024;
          v32 = v16;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Stop listening on %s(%s) vfd %d", buf, 0x36u);
        }
      }

      ICERemoveOneInterface();
      if (!*(v7 + 2068))
      {
        VTP_Close(*v7);
      }

      v17 = *(v7 + 2128);
      if (v17 != 0xFFFFFFFFLL)
      {
        if (*(v7 + 2136) != 0xFFFFFFFFLL)
        {
          ARPLSessionRelease();
          *(v7 + 2136) = 0xFFFFFFFFLL;
          v17 = *(v7 + 2128);
        }

        DTLS_Cleanup(v17);
      }

      goto LABEL_22;
    }

LABEL_28:
    v8 = *(v7 + 2144);
  }

  while (v8);
LABEL_29:
  *(v4 + 1056) = v6;
  v19 = *(v4 + 12);
  if (v19 != -1)
  {
    VTP_Close(v19);
  }

  *(v4 + 12) = -1;
  pthread_rwlock_unlock((v4 + 1064));
  if ((a2 & 1) == 0)
  {
    TPCleanupBaseband(v4);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t TPSend(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v77 = *MEMORY[0x1E69E9840];
  v2 = 2148466728;
  if (!v1)
  {
    return 2148466689;
  }

  v3 = v1;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    if (*v4)
    {
      v2 = 2148466704;
LABEL_101:
      CheckOutHandleDebug();
      return v2;
    }

    *&v76[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v75[129] = v6;
    *v76 = v6;
    v7 = (v3 + 716);
    v75[128] = v6;
    memset(v75, 170, 0x800uLL);
    memset(__b, 170, sizeof(__b));
    v52 = 2048;
    v8 = (v3 + 696);
    if ((*(v3 + 696) & 1) == (*(v3 + 816) & 1))
    {
      if (*(v3 + 696))
      {
        v9 = *v7 == *(v3 + 836) && *(v3 + 724) == *(v3 + 844);
        if (!v9)
        {
          goto LABEL_18;
        }
      }

      else if (*(v3 + 716) != *(v3 + 836))
      {
        goto LABEL_18;
      }

      if (*(v3 + 732) == *(v3 + 852) && (*(v5 + 34648) & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v26;
            *&buf[12] = 2080;
            *&buf[14] = "SendUDP";
            *&buf[22] = 1024;
            *&buf[24] = 3071;
            *&buf[28] = 2080;
            *&buf[30] = IPPORTToStringWithSize();
            _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Same Local and Destination IP:Port(%s)", buf, 0x26u);
          }
        }

        goto LABEL_101;
      }
    }

LABEL_18:
    if (!*(v3 + 552))
    {
      v14 = ConstructSipMsg(v75, 0x800uLL, v3);
      if ((v14 & 0x80000000) != 0)
      {
        v2 = v14;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            TPSend_cold_4();
          }
        }

        goto LABEL_101;
      }

      ReplaceKeyword(v75, 2048, "%CLENGTH%", "0", 2);
      v52 = strlen(v75);
      goto LABEL_95;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v3 + 564);
        *buf = 136315906;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "SendUDP";
        *&buf[22] = 1024;
        *&buf[24] = 3076;
        *&buf[28] = 1024;
        *&buf[30] = v12;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d()()()()() SIP BODY IS BINARY? (%d)", buf, 0x22u);
      }
    }

    if (*(v3 + 564))
    {
      v13 = CompressMsg(__b);
      if ((v13 & 0x80000000) != 0)
      {
        v2 = v13;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            TPSend_cold_1();
          }
        }

        goto LABEL_101;
      }

LABEL_95:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v44 = VRTraceErrorLogLevelToCSTR();
        v45 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v46 = IPPORTToStringWithSize();
          v9 = *(v3 + 552) == 0;
          v47 = __b;
          *buf = 136316162;
          if (v9)
          {
            v47 = v75;
          }

          *&buf[4] = v44;
          *&buf[12] = 2080;
          *&buf[14] = "SendUDP";
          *&buf[22] = 1024;
          *&buf[24] = 3197;
          *&buf[28] = 2080;
          *&buf[30] = v46;
          *&buf[38] = 2080;
          *&buf[40] = v47;
          _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Send to %s [%s]", buf, 0x30u);
        }
      }

      memset(buf, 0, 336);
      v48 = *(v3 + 656);
      *&buf[88] = *(v3 + 640);
      *&buf[104] = v48;
      *&buf[120] = *(v3 + 672);
      v49 = *(v3 + 592);
      *&buf[24] = *(v3 + 576);
      *&buf[40] = v49;
      v50 = *(v3 + 624);
      *&buf[56] = *(v3 + 608);
      *&buf[8] = *(v3 + 572);
      *&buf[136] = *(v3 + 688);
      *&buf[72] = v50;
      buf[169] = 1;
      v2 = VTP_Send(-1, v75, v52, 0, buf);
      goto LABEL_101;
    }

    v15 = *(v3 + 4);
    if (v15 == 2)
    {
      if (*(v3 + 8) != 6 || *(v3 + 560) < 1)
      {
LABEL_50:
        v25 = CompressMsg(__b);
        if ((v25 & 0x80000000) != 0)
        {
          v2 = v25;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              TPSend_cold_3();
            }
          }

          goto LABEL_101;
        }

        goto LABEL_95;
      }
    }

    else if (v15 != 1 || *(v3 + 8) != 1)
    {
      goto LABEL_50;
    }

    v73 = 0xAAAAAAAAAAAAAAAALL;
    memset(buf, 170, 0xA8CuLL);
    memset(v71, 0, sizeof(v71));
    __strlcpy_chk();
    v68 = 0u;
    v69 = 0u;
    memset(v70, 0, sizeof(v70));
    v66 = 0u;
    memset(v67, 0, sizeof(v67));
    v65 = 0u;
    v63 = 0u;
    memset(v64, 0, sizeof(v64));
    v62 = 0u;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v53 = 136316162;
        v54 = v16;
        v55 = 2080;
        v56 = "SendUDP";
        v57 = 1024;
        v58 = 3102;
        v59 = 2080;
        *v60 = IPPORTToStringWithSize();
        *&v60[8] = 2080;
        v61 = IPPORTToStringWithSize();
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d RTP using %s and %s as hints", v53, 0x30u);
      }
    }

    v18 = (v3 + 776);
    RTPCreateSockets(*(v3 + 976), v3 + 696, (v3 + 776), &v73, v71);
    if (v19 < 0)
    {
      v20 = *(v3 + 712);
      v71[0] = *v8;
      v71[1] = v20;
      *&v71[2] = *(v3 + 728);
    }

    RTPCreateSockets(*(v3 + 984), v3 + 696, (v3 + 776), &v73 + 1, &v71[2] + 2);
    if (v21 < 0)
    {
      v22 = *(v3 + 712);
      *(&v71[2] + 8) = *v8;
      *(&v71[3] + 8) = v22;
      *(&v71[4] + 1) = *(v3 + 728);
    }

    v23 = *v8 & 1;
    if (v23 == (v71[0] & 1))
    {
      if (v23)
      {
        if (*v7 != *(&v71[1] + 4) || *(v3 + 724) != *(&v71[1] + 12))
        {
          if (v23 != (*v18 & 1))
          {
            goto LABEL_78;
          }

          goto LABEL_70;
        }
      }

      else
      {
        v24 = *v7;
        if (*v7 != DWORD1(v71[1]))
        {
          if (*v18)
          {
LABEL_78:
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v32 = VRTraceErrorLogLevelToCSTR();
              v33 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v34 = *(v3 + 732);
                *v53 = 136316162;
                v54 = v32;
                v55 = 2080;
                v56 = "SendUDP";
                v57 = 1024;
                v58 = 3130;
                v59 = 1024;
                *v60 = v34;
                *&v60[4] = 1024;
                *&v60[6] = WORD2(v71[2]);
                _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Overriding Video RTCP port from %u to %u", v53, 0x28u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v35 = VRTraceErrorLogLevelToCSTR();
              v36 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v37 = *(v3 + 732);
                *v53 = 136316162;
                v54 = v35;
                v55 = 2080;
                v56 = "SendUDP";
                v57 = 1024;
                v58 = 3132;
                v59 = 1024;
                *v60 = v37;
                *&v60[4] = 1024;
                *&v60[6] = WORD6(v71[4]);
                _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Overriding Video RTCP port from %u to %u", v53, 0x28u);
              }
            }

            AddToCListRTP(v5, *(v3 + 572), v73, v71, 2);
            AddToCListRTP(v5, *(v3 + 572), SHIDWORD(v73), (&v71[2] + 8), 4);
            VTP_AddPktType(v73, 4);
            VTP_AddPktType(SHIDWORD(v73), 4);
            ICEGetExtIPPorts();
            VTP_RemovePktType(v73, 4);
            VTP_RemovePktType(SHIDWORD(v73), 4);
            v38 = *(v3 + 572);
            pthread_rwlock_wrlock((v5 + 1272));
            v39 = *(v5 + 1264);
            if (v39)
            {
              v40 = (v5 + 1264);
              do
              {
                if (*(v39 + 2064) == v38)
                {
                  *v40 = *(v39 + 2144);
                  ICERemoveOneInterface();
                  free(v39);
                }

                else
                {
                  v40 = (v39 + 2144);
                }

                v39 = *v40;
              }

              while (*v40);
            }

            pthread_rwlock_unlock((v5 + 1272));
            pthread_rwlock_wrlock((v5 + 1064));
            v41 = *(v5 + 12);
            *(v5 + 12) = -1;
            VTP_Close(v41);
            pthread_rwlock_unlock((v5 + 1064));
LABEL_91:
            IPToString();
            if (*(v3 + 776))
            {
              v42 = 3559497;
            }

            else
            {
              v42 = 3428425;
            }

            *(v3 + 944) = v42;
            __sprintf_chk((v3 + 948), 0, 6uLL, "%d", *(v3 + 812));
            __sprintf_chk((v3 + 960), 0, 6uLL, "%d", *(v3 + 812));
            __sprintf_chk((v3 + 954), 0, 6uLL, "%d", WORD2(v70[0]));
            __sprintf_chk((v3 + 966), 0, 6uLL, "%d", WORD2(v70[5]));
            ReplaceKeyword(buf, 2700, "%RTP-IP-AF%", (v3 + 944), 4);
            ReplaceKeyword(buf, 2700, "%RTP-IP%", (v3 + 896), 48);
            ReplaceKeyword(buf, 2700, "%VRTP-PORT%", (v3 + 948), 6);
            ReplaceKeyword(buf, 2700, "%VRTCP-PORT%", (v3 + 954), 6);
            ReplaceKeyword(buf, 2700, "%ARTP-PORT%", (v3 + 960), 6);
            ReplaceKeyword(buf, 2700, "%ARTCP-PORT%", (v3 + 966), 6);
            strlen(buf);
            v43 = CompressMsg(__b);
            if ((v43 & 0x80000000) != 0)
            {
              v2 = v43;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  TPSend_cold_2();
                }
              }

              goto LABEL_101;
            }

            goto LABEL_95;
          }

          goto LABEL_68;
        }
      }

      if (*(v3 + 732) == WORD2(v71[2]))
      {
        v29 = *(v3 + 792);
        v68 = *v18;
        v69 = v29;
        v30 = *(v3 + 808);
        v70[0] = v30;
        *&v70[1] = v68;
        *&v70[3] = v29;
        goto LABEL_77;
      }
    }

    if (v23 != (*v18 & 1))
    {
      goto LABEL_78;
    }

    if (!v23)
    {
      v24 = *(v3 + 716);
LABEL_68:
      if (v24 != *(v3 + 796))
      {
        goto LABEL_78;
      }

      goto LABEL_75;
    }

LABEL_70:
    if (*v7 != *(v3 + 796) || *(v3 + 724) != *(v3 + 804))
    {
      goto LABEL_78;
    }

LABEL_75:
    if (*(v3 + 732) != *(v3 + 812))
    {
      goto LABEL_78;
    }

    v68 = v71[0];
    v69 = v71[1];
    v70[0] = *&v71[2];
    *&v70[1] = *(&v71[2] + 8);
    *&v70[3] = *(&v71[3] + 8);
    v30 = *(&v71[4] + 1);
LABEL_77:
    v70[5] = v30;
    goto LABEL_91;
  }

  return 2148466690;
}

uint64_t partial apply(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 2148466709;
  if (!a3 || *(a3 + 4) != 1)
  {
    return 2148466689;
  }

  v7 = *(a3 + 504);
  if (v7)
  {
    v11 = CheckInHandleDebug();
    if (v11)
    {
      v12 = v11;
      v13 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A00402FEC5419uLL);
      if (v13)
      {
        v14 = v13;
        *v13 = a2;
        __strlcpy_chk();
        v14[17] = *(a3 + 8);
        if (a2 == 1)
        {
          __strlcpy_chk();
          *(v14 + 56) = *(v7 + 52);
        }

        *(v14 + 15) = a4;
        *(v14 + 16) = a5;
        pthread_mutex_lock((v12 + 1480));
        *(v14 + 17) = *(v12 + 1472);
        *(v12 + 1472) = v14;
        pthread_mutex_unlock((v12 + 1480));
        CheckOutHandleDebug();
        return 0;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            TPAddTransaction_cold_1();
          }
        }

        CheckOutHandleDebug();
        return 2148466691;
      }
    }

    else
    {
      return 2148466690;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      TPAddTransaction_cold_2();
    }
  }

  return v5;
}

uint64_t TPRemoveTransaction(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148466690;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 1480));
  v5 = *(v4 + 1472);
  if (v5)
  {
    if (v5[16] == a2)
    {
      v7 = (v4 + 1472);
LABEL_9:
      *v7 = v5[17];
      free(v5);
    }

    else
    {
      while (1)
      {
        v6 = v5;
        v5 = v5[17];
        if (!v5)
        {
          break;
        }

        if (v5[16] == a2)
        {
          v7 = v6 + 17;
          goto LABEL_9;
        }
      }
    }
  }

  pthread_mutex_unlock((v4 + 1480));
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPGetType(uint64_t a1, _DWORD *a2)
{
  v2 = 2148466689;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *v4;
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2148466690;
    }
  }

  return v2;
}

uint64_t TPStopHeartbeat(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148466690;
  }

  v4 = v3;
  *&v23[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v5;
  *v23 = v5;
  v21 = v5;
  pthread_mutex_lock((v3 + 992));
  v6 = *a2 & 1;
  v7 = v4 + 80;
  v8 = 10;
  while (1)
  {
    if ((*v7 & 1) != v6)
    {
      goto LABEL_14;
    }

    if (v6)
    {
      break;
    }

    if (*(v7 + 20) == *(a2 + 20))
    {
      goto LABEL_12;
    }

LABEL_14:
    v7 += 96;
    if (!--v8)
    {
      goto LABEL_15;
    }
  }

  if (*(v7 + 20) != *(a2 + 20) || *(v7 + 28) != *(a2 + 28))
  {
    goto LABEL_14;
  }

LABEL_12:
  if (*(v7 + 36) != *(a2 + 36) || !*(v7 - 48))
  {
    goto LABEL_14;
  }

  *(v7 - 48) = 0;
LABEL_15:
  pthread_mutex_unlock((v4 + 992));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315906;
      v14 = v10;
      v15 = 2080;
      v16 = "TPStopHeartbeat";
      v17 = 1024;
      v18 = 3354;
      v19 = 2080;
      v20 = IPPORTToStringWithSize();
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Stop heartbeat to %s", &v13, 0x26u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t TPGetInterfaceStillExists(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = 2148466689;
  if (!a2 || !a3 || !IsIPPORTValid())
  {
    return v3;
  }

  v6 = CheckInHandleDebug();
  if (!v6)
  {
    return 2148466690;
  }

  v7 = v6;
  pthread_rwlock_rdlock((v6 + 1064));
  v8 = *(v7 + 1056);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = *a2 & 1;
  while (1)
  {
    if (v9 != (*(v8 + 2072) & 1))
    {
      goto LABEL_15;
    }

    if (v9)
    {
      break;
    }

    if (*(a2 + 20) == *(v8 + 2092))
    {
      goto LABEL_18;
    }

LABEL_15:
    v8 = *(v8 + 2144);
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  if (*(a2 + 20) != *(v8 + 2092) || *(a2 + 28) != *(v8 + 2100))
  {
    goto LABEL_15;
  }

LABEL_18:
  LODWORD(v8) = 1;
LABEL_19:
  *a3 = v8;
  pthread_rwlock_unlock((v7 + 1064));
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPShouldCheckForExternalCandidate(uint64_t a1)
{
  pthread_rwlock_rdlock((a1 + 1064));
  v2 = *(a1 + 1056);
  if (v2)
  {
    while ((*(v2 + 2072) & 1) == 0 && (*(v2 + 2094) == 43518 || *(v2 + 2076) == 108 && *(v2 + 2077) == 111))
    {
      v2 = *(v2 + 2144);
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    v3 = 1;
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

  pthread_rwlock_unlock((a1 + 1064));
  return v3;
}

uint64_t TPGetConnectionData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const unsigned __int8 *a13)
{
  v49 = *MEMORY[0x1E69E9840];
  v15 = CheckInHandleDebug();
  if (!v15)
  {
    return 2148466690;
  }

  v16 = v15;
  v31 = a7;
  if (!a10 || (*a10 & 1) != 0)
  {
    goto LABEL_28;
  }

  v17 = v15;
  pthread_rwlock_wrlock((v15 + 1064));
  v18 = v17;
  v19 = *(v17 + 1056);
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = *a10 & 1;
  do
  {
    v21 = v19;
    if (v20 != (*(v19 + 2072) & 1))
    {
      goto LABEL_16;
    }

    if (v20)
    {
      v22 = *(v19 + 2100);
      if (*(a10 + 20) != *(v21 + 2092) || *(a10 + 28) != v22)
      {
        goto LABEL_16;
      }
    }

    else if (*(a10 + 20) != *(v19 + 2092))
    {
      goto LABEL_16;
    }

    if (*(a10 + 36) == *(v21 + 2108))
    {
      goto LABEL_27;
    }

LABEL_16:
    v19 = *(v21 + 2144);
  }

  while (v19);
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v24 = TransportMapPacketMultiplexModeToVTPMode(*(v17 + 4));
  if ((CreateSocketAndBind(a10, &v32, 1, a13, v24) & 0x80000000) != 0)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v18 = v17;
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v29 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      v18 = v17;
      if (v29)
      {
        TPGetConnectionData_cold_2();
        goto LABEL_23;
      }
    }
  }

  else
  {
    v25 = v32;
    v32[516] = a3;
    *(v21 + 2144) = v25;
    v26 = v25;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    IPPORTToStringWithSize();
    IPPORTToStringWithSize();
    *(a10 + 76) = *(v26 + 1054);
    if ((ICEAddOneInterfaceWithPriorityHints() & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TPGetConnectionData_cold_1();
      }
    }

    v26[528] = *(a10 + 80);
LABEL_23:
    v18 = v17;
  }

LABEL_27:
  pthread_rwlock_unlock((v18 + 1064));
  v16 = v17;
LABEL_28:
  if (v31)
  {
    TPShouldCheckForExternalCandidate(v16);
  }

  v27 = ICEGetCandidates();
  CheckOutHandleDebug();
  return v27;
}

uint64_t TPStartConnectionCheck(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = CheckInHandleDebug();
  if (!v11)
  {
    return 2148466690;
  }

  v12 = v11 + 0x8000;
  if (!_CTServerConnectionCarrierSettingsCopyValue() && !*MEMORY[0x1E695E4D0])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = v20;
        v23 = 2080;
        v24 = "TPStartConnectionCheck";
        v25 = 1024;
        v26 = 3564;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d _CTServerConnectionCarrierSettingsCopyValue return TRUE!", buf, 0x1Cu);
      }
    }

    ICEUpdateServingNetworkInfo();
  }

  ICEUpdateCellTech();
  v14 = *(v12 + 1760);
  if (a9)
  {
    v15 = CFRetain(a9);
  }

  else
  {
    v15 = 0;
  }

  *(v12 + 1760) = v15;
  if (v14)
  {
    CFRelease(v14);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = v16;
      v23 = 2080;
      v24 = "TPStartConnectionCheck";
      v25 = 1024;
      v26 = 3582;
      v27 = 2048;
      v28 = a1;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Setting ice timeout to iceTimeout = %f", buf, 0x26u);
    }
  }

  ICESetTimeout();
  v13 = ICEStartConnectivityCheck();
  CheckOutHandleDebug();
  return v13;
}

uint64_t TPDiscardConnectionResult()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  v0 = ICEDiscardResult();
  CheckOutHandleDebug();
  return v0;
}

uint64_t TPDiscardRelayBinding()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  v0 = ICEDiscardRelayBinding();
  CheckOutHandleDebug();
  return v0;
}

uint64_t TPDiscardRelayBindingWithChannelNumber()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  v0 = ICEDiscardOneRelayBindingWithChannelNumber();
  CheckOutHandleDebug();
  return v0;
}

uint64_t TPRemovePreservedPortBindForCallID(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148466690;
  }

  v4 = v3;
  pthread_rwlock_wrlock((v3 + 1064));
  v5 = *(v4 + 1056);
  if (v5)
  {
    v6 = (v4 + 1056);
    do
    {
      v7 = *(v5 + 2112) & 9;
      if (a2 == -1)
      {
        if (v7)
        {
          goto LABEL_12;
        }
      }

      else if (*(v5 + 2064) == a2 && v7 != 0)
      {
LABEL_12:
        *v6 = *(v5 + 2144);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(v5 + 2064);
            *buf = 136316162;
            v15 = v9;
            v16 = 2080;
            v17 = "RemoveCListForCallID";
            v18 = 1024;
            v19 = 3480;
            v20 = 1024;
            v21 = a2;
            v22 = 1024;
            v23 = v11;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d RemoveCListForCallID for a callid [%d == %d]", buf, 0x28u);
          }
        }

        ICERemoveOneInterface();
        v12 = *(v5 + 2128);
        if (v12 != 0xFFFFFFFFLL)
        {
          if (*(v5 + 2136) != 0xFFFFFFFFLL)
          {
            ARPLSessionRelease();
            *(v5 + 2136) = 0xFFFFFFFFLL;
            v12 = *(v5 + 2128);
          }

          DTLS_Cleanup(v12);
        }

        free(v5);
        goto LABEL_20;
      }

      v6 = (v5 + 2144);
LABEL_20:
      v5 = *v6;
    }

    while (*v6);
  }

  pthread_rwlock_unlock((v4 + 1064));
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPSetCellConditionChangeHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2148466690;
  }

  *(v5 + 34496) = a2;
  *(v5 + 34504) = a3;
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPUpdateInterfaceList(uint64_t a1, uint64_t a2, int *a3, int a4, const unsigned __int8 *a5)
{
  v107 = *MEMORY[0x1E69E9840];
  v92 = 0;
  v93 = 0;
  v8 = 2148466710;
  *&v103[9] = 0;
  *&v103[13] = 0;
  v9 = CheckInHandleDebug();
  if (!v9)
  {
    return 2148466690;
  }

  v10 = v9;
  v11 = v9 + 0x8000;
  *&v106[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v105 = v12;
  *v106 = v12;
  v104 = v12;
  v94 = 0xAAAAAAAAAAAAAAAALL;
  TPSetupCTContext(a1, v9, a4);
  if (*(v11 + 1616))
  {
    LocalInterfaceListWithOptionsAndCellInterfaceName = 1;
    v94 = malloc_type_calloc(1uLL, 0x28uLL, 0x100004053E81896uLL);
    MakeIPPORT();
    LocalIFIndexForDstIPPort = GetLocalIFIndexForDstIPPort();
    if_indextoname(LocalIFIndexForDstIPPort, v94 + 4);
LABEL_6:
    v90 = v10;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v97 = v15;
        v98 = 2080;
        v99 = "TPUpdateInterfaceList";
        v100 = 1024;
        v101 = 3730;
        v102 = 1024;
        *v103 = LocalInterfaceListWithOptionsAndCellInterfaceName;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d %d interfaces found.", buf, 0x22u);
      }
    }

    pthread_rwlock_wrlock((v90 + 1064));
    if (LocalInterfaceListWithOptionsAndCellInterfaceName < 1)
    {
      v19 = 0;
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = (v90 + 1056);
      v91 = LocalInterfaceListWithOptionsAndCellInterfaceName;
      do
      {
        v21 = *v20;
        if (*v20)
        {
          v22 = &v94[40 * v17];
          v23 = *v22 & 1;
          v24 = (v90 + 1056);
          do
          {
            if (v23 == (*(v21 + 2072) & 1))
            {
              if (v23)
              {
                if (*(v22 + 20) == *(v21 + 2092) && *(v22 + 28) == *(v21 + 2100))
                {
LABEL_37:
                  v95 = v21;
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v40 = VRTraceErrorLogLevelToCSTR();
                    v41 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v42 = IPPORTToStringWithSize();
                      *buf = 136315906;
                      v97 = v40;
                      v98 = 2080;
                      v99 = "TPUpdateInterfaceList";
                      v100 = 1024;
                      v101 = 3740;
                      v102 = 2080;
                      *v103 = v42;
                      _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Keep listening on %s", buf, 0x26u);
                    }
                  }

                  v43 = &v94[40 * v17];
                  if (*v43)
                  {
                    VCNAT64ResolverIsBehindNat64((v43 + 4));
                    ICEUpdateNAT64FlagForInterface();
                  }

                  *v24 = *(v21 + 2144);
                  *(v21 + 2144) = 0;
                  v44 = &v92;
                  do
                  {
                    v45 = v44;
                    v46 = *v44;
                    v44 = (*v44 + 2144);
                  }

                  while (v46);
                  *v45 = v21;
                  goto LABEL_45;
                }
              }

              else if (*(v22 + 5) == *(v21 + 2092))
              {
                goto LABEL_37;
              }
            }

            v24 = (v21 + 2144);
            v21 = *(v21 + 2144);
          }

          while (v21);
        }

        v95 = 0;
        HIDWORD(v93) = 1;
        *&v94[40 * v17 + 36] = *(v90 + 20);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v28 = IPPORTToStringWithSize();
            *buf = 136315906;
            v97 = v26;
            v98 = 2080;
            v99 = "TPUpdateInterfaceList";
            v100 = 1024;
            v101 = 3767;
            v102 = 2080;
            *v103 = v28;
            _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Adding [%s] to list", buf, 0x26u);
          }
        }

        v29 = &v94[40 * v17];
        v30 = TransportMapPacketMultiplexModeToVTPMode(*(v90 + 4));
        v31 = CreateSocketAndBind(v29, &v95, 0, a5, v30);
        if ((v31 & 0x80000000) != 0)
        {
          v18 = v31;
        }

        else
        {
          VCTestMonitorManager_GetEnableLoopbackInterface();
          v32 = ICESetEnableLoopbackInterface();
          if (v32 < 0)
          {
            v33 = v32;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v34 = VRTraceErrorLogLevelToCSTR();
              v35 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                v97 = v34;
                v98 = 2080;
                v99 = "TPUpdateInterfaceList";
                v100 = 1024;
                v101 = 3777;
                v102 = 1024;
                *v103 = 3777;
                v103[2] = 1024;
                *&v103[3] = v33;
                _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: ICESetEnableLoopbackInterface failed(%08X)", buf, 0x28u);
              }
            }
          }

          v36 = v95;
          v18 = ICEAddOneInterface();
          if ((v18 & 0x80000000) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v47 = VRTraceErrorLogLevelToCSTR();
              v48 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v97 = v47;
                v98 = 2080;
                v99 = "TPUpdateInterfaceList";
                v100 = 1024;
                v101 = 3784;
                v102 = 1024;
                *v103 = v18;
                _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d ICEAddOneInterface failed %08x", buf, 0x22u);
              }
            }

            VTP_Close(*v36);
            v49 = *(v36 + 266);
            if (v49 != 0xFFFFFFFFLL)
            {
              if (*(v36 + 267) != 0xFFFFFFFFLL)
              {
                ARPLSessionRelease();
                *(v36 + 267) = 0xFFFFFFFFLL;
                v49 = *(v36 + 266);
              }

              DTLS_Cleanup(v49);
            }

            free(v36);
          }

          else
          {
            if (v94[40 * v17])
            {
              VCNAT64ResolverIsBehindNat64((v36 + 519));
              ICEUpdateNAT64FlagForInterface();
            }

            v37 = &v92;
            do
            {
              v38 = v37;
              v39 = *v37;
              v37 = (*v37 + 536);
            }

            while (v39);
            *v38 = v36;
LABEL_45:
            ++v19;
          }
        }

        ++v17;
      }

      while (v17 != v91);
    }

    FreeLocalInterfaceList();
    v50 = *(v90 + 1056);
    v95 = v50;
    if (!v50)
    {
      goto LABEL_107;
    }

    while (1)
    {
      v51 = v50[518];
      if (!nwi_state_copy())
      {
        goto LABEL_64;
      }

      if (!nwi_state_get_ifstate())
      {
        break;
      }

      flags = nwi_ifstate_get_flags();
      v53 = flags;
      if (v51 & 1) == 0 && (flags)
      {
        nwi_state_release();
        goto LABEL_89;
      }

      nwi_state_release();
      if ((v51 & 1) == 0 || (v53 & 2) == 0)
      {
        goto LABEL_64;
      }

LABEL_89:
      v69 = v95;
      v70 = *(v95 + 4);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v70 == 1)
      {
        if (ErrorLogLevelForModule < 7)
        {
          goto LABEL_97;
        }

        v72 = VRTraceErrorLogLevelToCSTR();
        v73 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_97;
        }

        v74 = *v69;
        *buf = 136315906;
        v97 = v72;
        v98 = 2080;
        v99 = "TPUpdateInterfaceList";
        v100 = 1024;
        v101 = 3828;
        v102 = 1024;
        *v103 = v74;
        v75 = v73;
        v76 = "SIP [%s] %s:%d Keep listening on virtual interface (vfd %d)";
        v77 = 34;
      }

      else
      {
        if (ErrorLogLevelForModule < 7)
        {
          goto LABEL_97;
        }

        v78 = VRTraceErrorLogLevelToCSTR();
        v79 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_97;
        }

        *buf = 136315906;
        v97 = v78;
        v98 = 2080;
        v99 = "TPUpdateInterfaceList";
        v100 = 1024;
        v101 = 3830;
        v102 = 2080;
        *v103 = v69 + 519;
        v75 = v79;
        v76 = "SIP [%s] %s:%d Interface '%s' is not in the routing table but still valid. Keeping it";
        v77 = 38;
      }

      _os_log_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_DEFAULT, v76, buf, v77);
LABEL_97:
      v50 = *(v69 + 268);
      *(v69 + 268) = 0;
      v80 = &v92;
      do
      {
        v81 = v80;
        v82 = *v80;
        v80 = (*v80 + 536);
      }

      while (v82);
      *v81 = v69;
      ++v19;
LABEL_106:
      v95 = v50;
      if (!v50)
      {
LABEL_107:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v84 = VRTraceErrorLogLevelToCSTR();
          v85 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v97 = v84;
            v98 = 2080;
            v99 = "TPUpdateInterfaceList";
            v100 = 1024;
            v101 = 3890;
            v102 = 1024;
            *v103 = v19;
            _os_log_impl(&dword_1DB56E000, v85, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPUpdateInterfaceList:%d valid interfaces found.", buf, 0x22u);
          }
        }

        if (v92)
        {
          v8 = v18;
        }

        else
        {
          v8 = 2148466710;
        }

        *(v90 + 1056) = v92;
        VTP_Close(*(v90 + 12));
        *(v90 + 12) = -1;
        pthread_rwlock_unlock((v90 + 1064));
        if (!HIDWORD(v93))
        {
          ICEInterfaceNeedsUpdateExternalMapping();
        }

        CheckOutHandleDebug();
        if ((v8 & 0x80000000) == 0)
        {
          *buf = 0;
          v8 = TPGetRemoteICEVersion();
          if ((v8 & 0x80000000) != 0)
          {
            v87 = 0;
          }

          else
          {
            if (HIDWORD(v93))
            {
              v86 = (*buf - 1010) >= 0xFFFFFC0F;
            }

            else
            {
              v86 = 1;
            }

            v87 = !v86;
          }

          *a3 = v87;
        }

        return v8;
      }
    }

    nwi_state_release();
LABEL_64:
    v54 = v95;
    if (*(v95 + 4) != 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v55 = VRTraceErrorLogLevelToCSTR();
        v56 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v57 = IPPORTToStringWithSize();
          *buf = 136315906;
          v97 = v55;
          v98 = 2080;
          v99 = "TPUpdateInterfaceList";
          v100 = 1024;
          v101 = 3848;
          v102 = 2080;
          *v103 = v57;
          _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Stop listening on %s", buf, 0x26u);
        }
      }

      v58 = 0;
      HIDWORD(v93) = 1;
      v50 = *(v54 + 268);
      while (1)
      {
        v59 = v90 + 1544 + (v58 << 7);
        pthread_mutex_lock((v59 + 16));
        v61 = (v59 + 8);
        v60 = *(v59 + 8);
        if (v60)
        {
          break;
        }

LABEL_83:
        pthread_mutex_unlock((v59 + 16));
        if (++v58 == 256)
        {
          if (VRTraceGetErrorLogLevelForModule() <= 6)
          {
            v67 = v95;
          }

          else
          {
            v64 = VRTraceErrorLogLevelToCSTR();
            v65 = *MEMORY[0x1E6986650];
            v66 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
            v67 = v95;
            if (v66)
            {
              v68 = v95[516];
              *buf = 136315906;
              v97 = v64;
              v98 = 2080;
              v99 = "TPUpdateInterfaceList";
              v100 = 1024;
              v101 = 3871;
              v102 = 1024;
              *v103 = v68;
              _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPUpdateInterfaceList: %u", buf, 0x22u);
            }
          }

          ICERemoveOneInterface();
          VTP_Close(*v67);
          v83 = *(v67 + 266);
          if (v83 != 0xFFFFFFFFLL)
          {
            if (*(v67 + 267) != 0xFFFFFFFFLL)
            {
              ARPLSessionRelease();
              *(v67 + 267) = 0xFFFFFFFFLL;
              v83 = *(v67 + 266);
            }

            DTLS_Cleanup(v83);
          }

          free(v67);
          goto LABEL_106;
        }
      }

      while (2)
      {
        if ((*(v60 + 2056) & 1) == (v95[518] & 1))
        {
          v62 = (v60 + 2076);
          if ((*(v60 + 2056) & 1) == 0)
          {
            if (*v62 != v95[523])
            {
              break;
            }

LABEL_79:
            if (*(v60 + 2092) != *(v95 + 1054))
            {
              break;
            }

            *v61 = *(v60 + 2144);
            free(v60);
LABEL_82:
            v60 = *v61;
            if (!*v61)
            {
              goto LABEL_83;
            }

            continue;
          }

          if (*v62 == *(v95 + 523) && *(v60 + 2084) == *(v95 + 525))
          {
            goto LABEL_79;
          }
        }

        break;
      }

      v61 = (v60 + 2144);
      goto LABEL_82;
    }

    goto LABEL_89;
  }

  LocalInterfaceListWithOptionsAndCellInterfaceName = GetLocalInterfaceListWithOptionsAndCellInterfaceName();
  if (LocalInterfaceListWithOptionsAndCellInterfaceName)
  {
    goto LABEL_6;
  }

  FreeLocalInterfaceList();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      TPUpdateInterfaceList_cold_1();
    }
  }

  CheckOutHandleDebug();
  return v8;
}

void TPSetupCTContext(uint64_t a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2 + 0x8000;
  v5 = *(a2 + 34512);
  if (!(v5 | a3))
  {
    *(a2 + 34512) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = v6;
        v21 = 2080;
        v22 = "TPSetupCTContext";
        v23 = 1024;
        v24 = 2520;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Device hw model supports FaceTime over cellular network.", buf, 0x1Cu);
      }
    }

    v5 = *(v4 + 1744);
  }

  if (v5)
  {
    pthread_mutex_lock((a2 + 34392));
    if (!*(v4 + 1688))
    {
      dispatch_get_global_queue(0, 0);
      v13 = _CTServerConnectionCreateOnTargetQueue();
      *(v4 + 1688) = v13;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v13)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v20 = v15;
            v21 = 2080;
            v22 = "TPSetupCTContext";
            v23 = 1024;
            v24 = 2532;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d _CTServerConnectionCreateOnTargetQueue succeeded!", buf, 0x1Cu);
          }
        }

        if (!_CTServerConnectionRegisterForNotification())
        {
          *(v4 + 1756) = 1;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v20 = v17;
              v21 = 2080;
              v22 = "TPSetupCTContext";
              v23 = 1024;
              v24 = 2536;
              _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d kCTRegistrationDataStatusChangedNotification registered.", buf, 0x1Cu);
            }
          }
        }
      }

      else if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          TPSetupCTContext_cold_1();
        }
      }
    }

    if (!VCCTServiceMonitor_GetSignalStrength() && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v4 + 1708);
        v11 = *(v4 + 1712);
        v12 = *(v4 + 1716);
        *buf = 136316418;
        v20 = v8;
        v21 = 2080;
        v22 = "TPSetupCTContext";
        v23 = 1024;
        v24 = 2544;
        v25 = 1024;
        *v26 = v10;
        *&v26[4] = 1024;
        *&v26[6] = v11;
        v27 = 1024;
        v28 = v12;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Received cellular signal strength. [Strength: %d displayBars: %d maxDisplayBars: %d]", buf, 0x2Eu);
      }
    }

    *(v4 + 1704) = TPGetLocalCellTech(*(v4 + 1688));
    VCCTServiceMonitor_CopyConnectionStatusInterfaceName();
    pthread_mutex_unlock((a2 + 34392));
  }
}

uint64_t CreateSocketAndBind(__int128 *a1, int **a2, int a3, const unsigned __int8 *a4, int a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v54 = -1431655766;
  memset(__str, 170, 6);
  *&v64[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v10.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v10.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v63[9] = v10;
  *v64 = v10;
  v63[8] = v10;
  v63[6] = v10;
  v63[7] = v10;
  v63[4] = v10;
  v63[5] = v10;
  v63[2] = v10;
  v63[3] = v10;
  v63[0] = v10;
  v63[1] = v10;
  v11 = malloc_type_calloc(1uLL, 0x868uLL, 0x10200406FE3F67FuLL);
  *a2 = v11;
  if (v11)
  {
    *(v11 + 258) = 0;
    *(v11 + 266) = 0xFFFFFFFFLL;
    *(*a2 + 267) = 0xFFFFFFFFLL;
    v12 = *a2 + 518;
    v13 = *a1;
    v14 = a1[1];
    *(*a2 + 263) = *(a1 + 4);
    *v12 = v13;
    v12[1] = v14;
    v15 = *a1;
    if (*a1)
    {
      v16 = 30;
    }

    else
    {
      v16 = 2;
    }

    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[16] = v17;
    *&buf[32] = v17;
    *buf = v17;
    *&v61[0] = 0xAAAAAAAAAAAAAAAALL;
    memset(&v56.ai_socktype, 0, 40);
    v56.ai_flags = 5;
    v56.ai_family = v16;
    v56.ai_socktype = 2;
    if (v15)
    {
      if (*(a1 + 20) != *MEMORY[0x1E69E99B8] || *(a1 + 28) != *(MEMORY[0x1E69E99B8] + 8))
      {
        goto LABEL_7;
      }
    }

    else if (*(a1 + 5))
    {
LABEL_7:
      v18 = IPToString();
      goto LABEL_17;
    }

    v18 = 0;
LABEL_17:
    v21 = a1 + 18;
    snprintf(__str, 6uLL, "%d", *(a1 + 18));
    v22 = getaddrinfo(v18, __str, &v56, v61);
    if (v22)
    {
      v19 = v22 | 0xB00F0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          CreateSocketAndBind_cold_1();
        }
      }

      goto LABEL_52;
    }

    v23 = *&v61[0];
    if (!*&v61[0])
    {
      v19 = 2148466692;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          CreateSocketAndBind_cold_5();
          v19 = 2148466692;
        }
      }

      goto LABEL_52;
    }

    v24 = *&v61[0];
    while (*(v24 + 4) != v16)
    {
      v24 = *(v24 + 40);
      if (!v24)
      {
        v16 = *(*&v61[0] + 4);
        goto LABEL_30;
      }
    }

    v23 = v24;
LABEL_30:
    v25 = VTP_Socket(v16, *(v23 + 8), *(v23 + 12));
    **a2 = v25;
    if (v25 == -1)
    {
      v19 = *__error() | 0xC00F0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          CreateSocketAndBind_cold_4();
        }
      }

      freeaddrinfo(*&v61[0]);
      goto LABEL_52;
    }

    VTP_SetSocketMode(v25, a5);
    v26 = **a2;
    v27 = *(v23 + 32);
    v28 = *(v23 + 16);
    if (a3)
    {
      v29 = VTP_BindNew(v26, v27, v28);
    }

    else
    {
      v29 = VTP_Bind(v26, v27, v28);
    }

    v30 = v29;
    VTP_DetectNAT64Prefix(**a2, *a2 + 2076);
    freeaddrinfo(*&v61[0]);
    if (v30 == -1)
    {
      v19 = *__error() | 0xC00F0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          CreateSocketAndBind_cold_3(v37, v21, v38);
        }
      }
    }

    else
    {
      VTP_SetPktType(**a2, 48142);
      v54 = 128;
      if (VTP_Getsockname(**a2, v63, &v54) != -1)
      {
        v62 = 0xAAAAAAAAAAAAAAAALL;
        *&v31 = 0xAAAAAAAAAAAAAAAALL;
        *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v61[0] = v31;
        v61[1] = v31;
        SAToIPPORT();
        *(*a2 + 1054) = WORD2(v62);
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v32 = VRTraceErrorLogLevelToCSTR();
          v33 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v34 = IPPORTToStringWithSize();
            v35 = (*a2 + 519);
            v36 = **a2;
            *buf = 136316418;
            *&buf[4] = v32;
            *&buf[12] = 2080;
            *&buf[14] = "CreateSocketAndBind";
            *&buf[22] = 1024;
            *&buf[24] = 2432;
            *&buf[28] = 2080;
            *&buf[30] = v34;
            *&buf[38] = 2080;
            *&buf[40] = v35;
            *&buf[48] = 1024;
            *&buf[50] = v36;
            _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Start listening on %s(%s) sock %d", buf, 0x36u);
          }
        }

        if (uuid_is_null(a4))
        {
          goto LABEL_44;
        }

        *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
        *&v40 = 0xAAAAAAAAAAAAAAAALL;
        *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&buf[16] = v40;
        *&buf[32] = v40;
        *buf = v40;
        IPPORTToStringWithSize();
        *&out[29] = 0xAAAAAAAAAAAAAAAALL;
        *&v41 = 0xAAAAAAAAAAAAAAAALL;
        *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *out = v41;
        *&out[16] = v41;
        uuid_unparse(a4, out);
        v42 = VTP_Setsockopt(**a2, 0xFFFF, 4360, a4, 0x10u);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v42 == -1)
        {
          if (ErrorLogLevelForModule < 8)
          {
            goto LABEL_44;
          }

          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x1E6986650];
          v51 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] != 1)
          {
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              v53 = *__error();
              v56.ai_flags = 136316418;
              *&v56.ai_family = v49;
              LOWORD(v56.ai_protocol) = 2080;
              *(&v56.ai_protocol + 2) = "CreateSocketAndBind";
              *(&v56.ai_addrlen + 3) = 1024;
              LODWORD(v56.ai_canonname) = 2442;
              WORD2(v56.ai_canonname) = 2080;
              *(&v56.ai_canonname + 6) = out;
              HIWORD(v56.ai_addr) = 2080;
              v56.ai_next = buf;
              v57 = 1024;
              v58 = v53;
              _os_log_debug_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEBUG, "SIP [%s] %s:%d CreateSocketAndBind: Unable to set delegatedUUID(%s) for socket %s with error %d)", &v56, 0x36u);
            }

            goto LABEL_44;
          }

          if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
LABEL_44:
            v19 = 0;
            (*a2)[2] = 2048;
            return v19;
          }

          v52 = *__error();
          v56.ai_flags = 136316418;
          *&v56.ai_family = v49;
          LOWORD(v56.ai_protocol) = 2080;
          *(&v56.ai_protocol + 2) = "CreateSocketAndBind";
          *(&v56.ai_addrlen + 3) = 1024;
          LODWORD(v56.ai_canonname) = 2442;
          WORD2(v56.ai_canonname) = 2080;
          *(&v56.ai_canonname + 6) = out;
          HIWORD(v56.ai_addr) = 2080;
          v56.ai_next = buf;
          v57 = 1024;
          v58 = v52;
          v46 = "SIP [%s] %s:%d CreateSocketAndBind: Unable to set delegatedUUID(%s) for socket %s with error %d)";
          v47 = v50;
          v48 = 54;
        }

        else
        {
          if (ErrorLogLevelForModule < 7)
          {
            goto LABEL_44;
          }

          v44 = VRTraceErrorLogLevelToCSTR();
          v45 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          v56.ai_flags = 136316162;
          *&v56.ai_family = v44;
          LOWORD(v56.ai_protocol) = 2080;
          *(&v56.ai_protocol + 2) = "CreateSocketAndBind";
          *(&v56.ai_addrlen + 3) = 1024;
          LODWORD(v56.ai_canonname) = 2444;
          WORD2(v56.ai_canonname) = 2080;
          *(&v56.ai_canonname + 6) = out;
          HIWORD(v56.ai_addr) = 2080;
          v56.ai_next = buf;
          v46 = "SIP [%s] %s:%d CreateSocketAndBind: Set delegatedUUID(%s) for socket %s)";
          v47 = v45;
          v48 = 48;
        }

        _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, v46, &v56, v48);
        goto LABEL_44;
      }

      v19 = *__error() | 0xC00F0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          CreateSocketAndBind_cold_2();
        }
      }
    }

    VTP_Close(**a2);
LABEL_52:
    free(*a2);
    return v19;
  }

  v19 = 2148466691;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      CreateSocketAndBind_cold_6();
    }
  }

  return v19;
}