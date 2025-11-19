CMSampleBufferRef _VCStreamInputUtil_DecodeDataSampleBuffer(void *a1, CMItemCount a2)
{
  blockBufferOut[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  blockBufferOut[0] = 0;
  if (!xpc_dictionary_get_value(a1, "VCStreamInputBufferData"))
  {
    _VCStreamInputUtil_DecodeDataSampleBuffer_cold_8();
LABEL_18:
    _VCStreamInputUtil_DecodeDataSampleBuffer_cold_9();
    return v20;
  }

  v4 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v4)
  {
    _VCStreamInputUtil_DecodeDataSampleBuffer_cold_7();
    goto LABEL_18;
  }

  v5 = v4;
  Length = CFDataGetLength(v4);
  v7 = MEMORY[0x1E695E480];
  if (Length <= 0)
  {
    _VCStreamInputUtil_DecodeDataSampleBuffer_cold_3();
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E1288880](*MEMORY[0x1E695E480], Length, 1414282716, 0);
    if (v9)
    {
      v10 = v9;
      v22.length = CFDataGetLength(v5);
      v22.location = 0;
      CFDataGetBytes(v5, v22, v10);
      v11 = CMBlockBufferCreateWithMemoryBlock(v8, v10, Length, v8, 0, 0, Length, 0, blockBufferOut);
      if (v11)
      {
        _VCStreamInputUtil_DecodeDataSampleBuffer_cold_1(v11, v8, v10);
      }
    }

    else
    {
      _VCStreamInputUtil_DecodeDataSampleBuffer_cold_2();
    }
  }

  CFRelease(v5);
  v12 = blockBufferOut[0];
  if (!blockBufferOut[0])
  {
    goto LABEL_18;
  }

  v13 = VCStreamInputUtil_DecodeFormatDescription(a1);
  if (!v13)
  {
    _VCStreamInputUtil_DecodeDataSampleBuffer_cold_6(v12);
    return v20;
  }

  v14 = v13;
  memset(&v19, 170, sizeof(v19));
  if (_VCStreamInputUtil_DecodeTime(a1, "VCStreamInputPresentationTime", &v19))
  {
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&sampleTimingArray.decodeTimeStamp.value = v15;
    *&sampleTimingArray.duration.value = v15;
    sampleTimingArray.duration.epoch = 0xAAAAAAAAAAAAAAAALL;
    sampleTimingArray.presentationTimeStamp = v19;
    sampleTimingArray.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
    if (!CMSampleBufferCreate(*v7, v12, 1u, 0, 0, v14, a2, 1, &sampleTimingArray, 0, 0, &v20))
    {
      v16 = _VCStreamInputUtil_DecodeSampleBufferAttachments(a1);
      if (v16)
      {
        CMSetAttachments(v20, v16, 1u);
      }

      goto LABEL_13;
    }

    _VCStreamInputUtil_DecodeDataSampleBuffer_cold_5();
  }

  else
  {
    _VCStreamInputUtil_DecodeDataSampleBuffer_cold_4();
  }

  v16 = blockBufferOut[0];
LABEL_13:
  CFRelease(v12);
  CFRelease(v14);
  if (v16)
  {
    CFRelease(v16);
  }

  return v20;
}

uint64_t _VCStreamInputUtil_AddUint32Value(void *a1, const char *a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v11);
  if (v5)
  {
    v6 = v5;
    v7 = _CFXPCCreateXPCObjectFromCFObject();
    v8 = v7 != 0;
    if (v7)
    {
      v9 = v7;
      xpc_dictionary_set_value(a1, a2, v7);
      xpc_release(v9);
    }

    else
    {
      _VCStreamInputUtil_AddUint32Value_cold_1();
    }

    CFRelease(v6);
  }

  else
  {
    _VCStreamInputUtil_AddUint32Value_cold_2();
    return v12;
  }

  return v8;
}

uint64_t _VCStreamInputUtil_AddExtensions(void *a1, CMFormatDescriptionRef desc)
{
  if (CMFormatDescriptionGetExtensions(desc))
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v3)
    {
      _VCStreamInputUtil_AddExtensions_cold_1();
      return v6;
    }

    v4 = v3;
    xpc_dictionary_set_value(a1, "VCStreamInputFormatExtensions", v3);
    xpc_release(v4);
  }

  return 1;
}

uint64_t _VCStreamInputUtil_EncodePixelBuffer(void *a1, const char *a2, CVPixelBufferRef pixelBuffer)
{
  if (a1)
  {
    if (pixelBuffer)
    {
      IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
      if (IOSurface)
      {
        XPCObject = IOSurfaceCreateXPCObject(IOSurface);
        if (XPCObject)
        {
          v7 = XPCObject;
          xpc_dictionary_set_value(a1, a2, XPCObject);
          xpc_release(v7);
          return 1;
        }

        else
        {
          _VCStreamInputUtil_EncodePixelBuffer_cold_1();
          return v9;
        }
      }

      else
      {
        _VCStreamInputUtil_EncodePixelBuffer_cold_2();
        return v10;
      }
    }

    else
    {
      _VCStreamInputUtil_EncodePixelBuffer_cold_3();
      return v11;
    }
  }

  else
  {
    _VCStreamInputUtil_EncodePixelBuffer_cold_4();
    return v12;
  }
}

uint64_t _VCStreamInputUtil_AddTime(void *a1, const char *a2, CMTime *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v12 = *a3;
  v6 = CMTimeCopyAsDictionary(&v12, v5);
  if (v6)
  {
    v7 = v6;
    v8 = _CFXPCCreateXPCObjectFromCFObject();
    v9 = v8 != 0;
    if (v8)
    {
      v10 = v8;
      xpc_dictionary_set_value(a1, a2, v8);
      xpc_release(v10);
    }

    else
    {
      _VCStreamInputUtil_AddTime_cold_1();
    }

    CFRelease(v7);
  }

  else
  {
    _VCStreamInputUtil_AddTime_cold_2();
    return LOBYTE(v12.value);
  }

  return v9;
}

__IOSurface *_VCStreamInputUtil_DecodePixelBuffer(void *a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  value = xpc_dictionary_get_value(a1, a2);
  result = IOSurfaceLookupFromXPCObject(value);
  if (result)
  {
    v4 = result;
    v5 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], result, 0, &pixelBufferOut);
    if (v5)
    {
      v6 = v5;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v11 = v7;
          v12 = 2080;
          v13 = "_VCStreamInputUtil_DecodePixelBuffer";
          v14 = 1024;
          v15 = 419;
          v16 = 1024;
          v17 = v6;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Could not recreate pixel buffer from surface: %d", buf, 0x22u);
        }
      }
    }

    CFRelease(v4);
    return pixelBufferOut;
  }

  return result;
}

BOOL _VCStreamInputUtil_DecodeTime(void *a1, const char *a2, CMTime *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_value(a1, a2);
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4)
  {
    CMTimeMakeFromDictionary(&v9, v4);
    *a3 = v9;
    CFRelease(v5);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9.value) = 136315650;
      *(&v9.value + 4) = v6;
      LOWORD(v9.flags) = 2080;
      *(&v9.flags + 2) = "_VCStreamInputUtil_DecodeTime";
      HIWORD(v9.epoch) = 1024;
      v10 = 431;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Could not retrieve the time information", &v9, 0x1Cu);
    }
  }

  return v5 != 0;
}

void _VCRateControlBandwidthEstimator_UpdateQualificationParameters(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 408) - 5) <= 1)
  {
    if (*(a1 + 412) == 3)
    {
      v2 = 800000;
    }

    else
    {
      v2 = 400000;
    }

    *(a1 + 376) = v2;
    *(a1 + 368) = 0x3F60624DD2F1A9FCLL;
    *(a1 + 384) = 0;
    goto LABEL_26;
  }

  *(a1 + 368) = 0x3F80624DD2F1A9FCLL;
  if (*(a1 + 420))
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  *(a1 + 384) = v3;
  v4 = *(a1 + 412);
  if (v4 > 7)
  {
    if ((v4 - 8) < 2)
    {
      v5 = 0x418C9C3800000000;
    }

    else
    {
      if (v4 != 10)
      {
        if (v4 == 12)
        {
          *(a1 + 368) = xmmword_1DBD4F8F0;
          *(a1 + 384) = 1;
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      v5 = 0x41AE3EDBE0000000;
    }

LABEL_25:
    *(a1 + 376) = v5;
    goto LABEL_26;
  }

  switch(v4)
  {
    case 3:
      v5 = 0x415312D000000000;
      goto LABEL_25;
    case 4:
      v5 = 0x4158CBA800000000;
      goto LABEL_25;
    case 5:
      v5 = 0x416312D000000000;
      goto LABEL_25;
  }

LABEL_20:
  v6 = 6500000.0;
  if (*(a1 + 421))
  {
    v6 = 23000000.0;
  }

  *(a1 + 376) = v6;
LABEL_26:
  *(a1 + 360) = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 408);
      v10 = *(a1 + 412);
      v12 = *(a1 + 368);
      v11 = *(a1 + 376);
      v13 = *(a1 + 384);
      v14 = *(a1 + 360);
      v15 = 136317186;
      v16 = v7;
      v17 = 2080;
      v18 = "_VCRateControlBandwidthEstimator_UpdateQualificationParameters";
      v19 = 1024;
      v20 = 389;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v10;
      v25 = 2048;
      v26 = v11;
      v27 = 2048;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      v31 = 1024;
      v32 = v14;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Bandwidth Estimation: Update bandwidth estimator qualification parameters with RAT=%d, mode=%d. [maxBW:%f, minWin:%f, maxOverRange:%d, minPacketCount:%d]", &v15, 0x48u);
    }
  }
}

void VCRateControlBandwidthEstimator_SetRadioAccessTechnology(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 408) = a2;

    _VCRateControlBandwidthEstimator_UpdateQualificationParameters(a1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimator_SetRadioAccessTechnology_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimator_SetEstimatedBandwidth(uint64_t a1, double a2)
{
  if (a1)
  {
    *(a1 + 392) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimator_SetEstimatedBandwidth_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimator_SetFastSuddenBandwidthDetectionEnabled(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 420) = a2;

    _VCRateControlBandwidthEstimator_UpdateQualificationParameters(a1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimator_SetFastSuddenBandwidthDetectionEnabled_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimator_SetL4SHighDataRateEnabled(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 421) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136316162;
        v7 = v4;
        v8 = 2080;
        v9 = "VCRateControlBandwidthEstimator_SetL4SHighDataRateEnabled";
        v10 = 1024;
        v11 = 208;
        v12 = 1024;
        v13 = a2;
        v14 = 2048;
        v15 = a1;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Set l4sHighDataRateEnabled=%d, estimator=%p", &v6, 0x2Cu);
      }
    }

    _VCRateControlBandwidthEstimator_UpdateQualificationParameters(a1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimator_SetL4SHighDataRateEnabled_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimator_CalculateBandwidthEstimationWithSendTime(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  if (a1)
  {
    v10 = a4;
    if ((*(a1 + 68) & 1) == 0)
    {
      *(a1 + 68) = 1;
      *(a1 + 76) = a4 - a3;
      *(a1 + 80) = a9;
      *(a1 + 88) = 0;
    }

    if (a3 && *(a1 + 76) == a4)
    {
      *(a1 + 16) = a9;
      *(a1 + 24) = a10;
      *(a1 + 8) = vadd_s32(*(a1 + 8), (a2 | 0x100000000));
LABEL_36:
      VRLogfilePrintWithTimestamp(*(a1 + 440), "Bandwidth Estimation: ArrivalTime:%.4f, probingID:%u, isProbing:%d, seq:%u, BWD:%.2f, state:%d, divergeCount:%d, prob_seq:[duration:%.4f, sendDuration:%.4f, send:%.4f, size:%d, count:%d], EstimatedBandwidth:%.2f\n", a3, a4, a5, a6, a7, a8, SLOBYTE(a9));
      *(a1 + 72) = v10;
      return;
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 432);
    v16 = 0.0;
    if (v14 <= v15)
    {
      v17 = 0;
      v14 = 0;
      v21 = 0.0;
      v18 = 0.0;
      v22 = 0.0;
    }

    else
    {
      v17 = *(a1 + 12);
      v18 = *(a1 + 16) - *(a1 + 32);
      v19 = *(a1 + 24) - *(a1 + 40);
      v20 = 8 * v14;
      if (v18 <= 0.0)
      {
        v21 = *(a1 + 376);
      }

      else
      {
        v21 = v20 / v18;
      }

      if (v19 <= 0.0)
      {
        v22 = *(a1 + 376);
      }

      else
      {
        v22 = v20 / v19;
      }
    }

    *(a1 + 8) = 0;
    if (a3)
    {
      v23 = a4;
    }

    else
    {
      v23 = 0;
    }

    *(a1 + 76) = v23;
    if (a3)
    {
      v24 = a9;
    }

    else
    {
      v24 = 0.0;
    }

    if (a3)
    {
      v16 = a10;
    }

    *(a1 + 32) = v24;
    *(a1 + 40) = v16;
    *(a1 + 64) = a2;
    *(a1 + 16) = v24;
    *(a1 + 24) = v16;
    if (v21 <= 0.0)
    {
      goto LABEL_36;
    }

    *(a1 + 400) = v21;
    if (*(a1 + 392) != 0.0)
    {
      v25 = 0.0;
      if (*(a1 + 360) > v17 || v15 > v14)
      {
LABEL_29:
        v26 = 0.0;
        if (v22 >= 10000000.0 || v22 <= 0.0)
        {
          v26 = v25;
        }

        _VCRateControlBandwidthEstimator_UpdateBandwidthEstimation(a1, v26, a9);
        goto LABEL_36;
      }

      if (*(a1 + 368) <= v18)
      {
        *(a1 + 336) = 0;
      }

      else
      {
        v28 = *(a1 + 336) + 1;
        *(a1 + 336) = v28;
        if (v28 < *(a1 + 384))
        {
          goto LABEL_29;
        }
      }
    }

    v25 = v21;
    goto LABEL_29;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimator_CalculateBandwidthEstimationWithSendTime_cold_1();
    }
  }
}

double _VCRateControlBandwidthEstimator_UpdateBandwidthEstimation(uint64_t a1, double a2, double a3)
{
  v3 = a2;
  v59 = *MEMORY[0x1E69E9840];
  if (a2 <= 0.0)
  {
    v11 = 6;
    goto LABEL_9;
  }

  v6 = *(a1 + 376);
  if (v6 <= v3)
  {
    v3 = *(a1 + 376);
  }

  v7 = *(a1 + 408) - 7;
  if (v7 >= 0xFFFFFFFE && (*(a1 + 69) & 1) == 0)
  {
    v31 = v6 * 0.5;
    if (v31 > v3)
    {
      v31 = v3;
    }

    v32 = *(a1 + 88);
    *(a1 + 88) = v32 + 1;
    v33 = v31 + *(a1 + 344);
    *(a1 + 344) = v33;
    if (v32 > 8 || a3 - *(a1 + 80) >= 7.0)
    {
      *(a1 + 69) = 1;
      *(a1 + 392) = v33 / (v32 + 1);
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
    }

    *(a1 + 416) = 0;
    return v3;
  }

  [*(a1 + 352) setMargin:200000];
  [*(a1 + 352) setMinSamplesCount:3];
  [*(a1 + 352) setMinMarginRequired:0];
  [*(a1 + 352) setDurationThresholdUpward:0.0];
  [*(a1 + 352) setDurationThresholdDownward:0.0];
  v8 = *(a1 + 408);
  if ((v8 - 5) >= 2)
  {
    if (v8 != 1)
    {
      goto LABEL_14;
    }

    [*(a1 + 352) setMinSamplesCount:4];
    v10 = 4.0;
    v9 = 4.0;
  }

  else
  {
    [*(a1 + 352) setMinSamplesCount:6];
    [*(a1 + 352) setMinMarginRequired:100000];
    v9 = 7.0;
    v10 = 10.0;
  }

  [*(a1 + 352) setDurationThresholdUpward:v10];
  [*(a1 + 352) setDurationThresholdDownward:v9];
LABEL_14:
  [*(a1 + 352) percentage];
  v14 = 1.0 - v13;
  v15 = *(a1 + 392);
  v16 = v14 * v15 >= v3 || v15 - v3 > [*(a1 + 352) margin];
  [*(a1 + 352) percentage];
  v18 = v17 + 1.0;
  v19 = *(a1 + 392);
  if (v18 * v19 > v3)
  {
    v20 = v3 - v19 > [*(a1 + 352) margin];
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v20 = 1;
  if (v16)
  {
LABEL_21:
    v21 = *(a1 + 392) - v3;
    v16 = v21 > [*(a1 + 352) minMarginRequired];
  }

LABEL_22:
  v22 = *(a1 + 392);
  if (v20)
  {
    v23 = [*(a1 + 352) minMarginRequired];
    if (*(a1 + 392) != 0.0)
    {
      v24 = v3 - v22 <= v23;
      v22 = *(a1 + 392);
      if (!v24)
      {
        v25 = 1;
LABEL_41:
        if (v7 >= 0xFFFFFFFE)
        {
          v34 = *(a1 + 92);
          if (v34 <= 29)
          {
            *(a1 + 8 * v34 + 96) = v3;
            *(a1 + 92) = v34 + 1;
          }
        }

        v35 = 0;
        v36 = *(a1 + 408);
        if (v36 <= 6 && ((1 << v36) & 0x62) != 0)
        {
          v37 = a3 - *(a1 + 80);
          v38 = *(a1 + 352);
          if ((*(a1 + 88) & 0x80000000) != 0)
          {
            [v38 durationThresholdDownward];
          }

          else
          {
            [v38 durationThresholdUpward];
          }

          v35 = v37 < v39;
        }

        v45 = *(a1 + 88);
        if (v16)
        {
          if (v45 < 0)
          {
            --v45;
            v46 = 3;
          }

          else
          {
            *(a1 + 344) = 0;
            *(a1 + 80) = a3;
            v46 = 3;
            v45 = -1;
          }
        }

        else
        {
          if (!v25)
          {
            goto LABEL_66;
          }

          if (v45 <= 0)
          {
            *(a1 + 344) = 0;
            *(a1 + 80) = a3;
            v46 = 2;
            v45 = 1;
          }

          else
          {
            ++v45;
            v46 = 2;
          }
        }

        *(a1 + 88) = v45;
        *(a1 + 416) = v46;
LABEL_66:
        *(a1 + 344) = v3 + *(a1 + 344);
        if (v45 >= 0)
        {
          v47 = v45;
        }

        else
        {
          v47 = -v45;
        }

        if (v47 >= [*(a1 + 352) minSamplesCount] && !v35 || *(a1 + 420) == 1 && v47 >= objc_msgSend(*(a1 + 352), "minSamplesCountFastBandwidthEstimation"))
        {
          v48 = *(a1 + 344) / v47;
          v49 = *(a1 + 88);
          if (v7 >= 0xFFFFFFFE && (v49 & 0x80000000) == 0)
          {
            v48 = v48 * 0.9 + *(a1 + 392) * 0.1;
          }

          *(a1 + 392) = v48;
          if (v49 >= 0)
          {
            v50 = 4;
          }

          else
          {
            v50 = 5;
          }

          *(a1 + 416) = v50;
          *(a1 + 88) = 0;
          *(a1 + 344) = 0;
        }

        return v3;
      }

      goto LABEL_39;
    }
  }

  else if (v22 != 0.0)
  {
LABEL_39:
    if (v16)
    {
      v25 = 0;
      goto LABEL_41;
    }

    if (v7 >= 0xFFFFFFFE)
    {
      v42 = *(a1 + 92);
      if (v42 >= 1)
      {
        v43 = (a1 + 96);
        do
        {
          v44 = *v43++;
          v22 = v44 * 0.05 + v22 * 0.95;
          *(a1 + 392) = v22;
          --v42;
        }

        while (v42);
      }

      *(a1 + 92) = 0;
      v40 = v3 * 0.075;
      v41 = 0.925;
    }

    else
    {
      v40 = v3 * 0.1;
      v41 = 0.9;
    }

    *(a1 + 392) = v40 + v22 * v41;
    *(a1 + 88) = 0;
    *(a1 + 344) = 0;
    v11 = 1;
LABEL_9:
    *(a1 + 416) = v11;
    return v3;
  }

  v26 = 100000.0;
  if (v3 >= 100000.0)
  {
    v26 = v3;
  }

  *(a1 + 392) = v26;
  *(a1 + 416) = 0;
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forcedInitialBandwidthEstimation", 0);
  if (IntValueForKey)
  {
    v28 = IntValueForKey;
    *(a1 + 392) = IntValueForKey;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v51 = 136315906;
        v52 = v29;
        v53 = 2080;
        v54 = "_VCRateControlBandwidthEstimator_UpdateBandwidthEstimation";
        v55 = 1024;
        v56 = 438;
        v57 = 1024;
        v58 = v28;
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Forced initial bandwidth estimation:%d by default", &v51, 0x22u);
      }
    }
  }

  return v3;
}

void VCRateControlBandwidthEstimator_CalculateBandwidthEstimation(uint64_t a1, int a2, unsigned int a3, int a4, int a5, double a6)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 68) & 1) == 0)
    {
      *(a1 + 68) = 1;
      v11 = a5 - 1;
      if (!a4)
      {
        v11 = a2;
      }

      *(a1 + 76) = v11;
      *(a1 + 80) = a6;
      *(a1 + 88) = 0;
    }

    if (a4 && *(a1 + 76) == a5)
    {
      if (*(a1 + 16) <= a6)
      {
        v12 = a6;
      }

      else
      {
        v12 = *(a1 + 16);
      }

      v13 = vadd_s32(*(a1 + 8), (a3 | 0x100000000));
      *(a1 + 8) = v13;
      *(a1 + 16) = v12;
      if (a5)
      {
        if (v13.i32[0])
        {
          goto LABEL_42;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0.0;
        v17 = 0.0;
LABEL_28:
        v21 = vadd_s32(*(a1 + 56), (a3 | 0x100000000));
        *(a1 + 48) = a6;
        *(a1 + 56) = v21;
        goto LABEL_36;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0.0;
      v17 = 0.0;
    }

    else
    {
      v14 = *(a1 + 8);
      if (v14 <= *(a1 + 432))
      {
        v15 = 0;
        v14 = 0;
        v17 = 0.0;
        v16 = 0.0;
      }

      else
      {
        v15 = *(a1 + 12);
        v17 = *(a1 + 16) - *(a1 + 32);
        v16 = (8 * v14) / v17;
      }

      v18 = a5;
      if ((a4 & 1) != 0 || ((v19 = *(a1 + 48), v19 > 0.0) ? (v20 = v19 <= a6) : (v20 = 1), v18 = a2, v20))
      {
        *(a1 + 8) = 0u;
        *(a1 + 76) = v18;
        *(a1 + 32) = a6;
        *(a1 + 64) = a3;
        if (a5)
        {
          if ((a4 & 1) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_28;
        }
      }

      else
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 56);
            v25 = *(a1 + 60);
            *buf = 136316162;
            v36 = v23;
            v37 = 2080;
            v38 = "VCRateControlBandwidthEstimator_CalculateBandwidthEstimation";
            v39 = 1024;
            v40 = 294;
            v41 = 1024;
            v42 = v25;
            v43 = 1024;
            v44 = v26;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Probing sequence head is late, early probing sequence packet number: %d, bytes:%d", buf, 0x28u);
          }
        }

        *(a1 + 8) = *(a1 + 56);
        *(a1 + 76) = a2;
        *(a1 + 32) = a6;
        *(a1 + 64) = a3;
        *(a1 + 16) = 0;
        if (a5)
        {
LABEL_36:
          if (v16 > 0.0)
          {
            *(a1 + 400) = v16;
            if (*(a1 + 392) != 0.0)
            {
              v27 = 0.0;
              if (*(a1 + 360) > v15 || *(a1 + 432) > v14)
              {
                goto LABEL_41;
              }

              if (*(a1 + 368) <= v17)
              {
                *(a1 + 336) = 0;
              }

              else
              {
                v34 = *(a1 + 336) + 1;
                *(a1 + 336) = v34;
                if (v34 < *(a1 + 384))
                {
                  goto LABEL_41;
                }
              }
            }

            v27 = v16;
LABEL_41:
            _VCRateControlBandwidthEstimator_UpdateBandwidthEstimation(a1, v27, a6);
            VRLogfilePrintWithTimestamp(*(a1 + 440), "Bandwidth Estimation: ArrivalTime:%.4f, timestamp:%u, BWD:%.2f, state:%d, divergeCount:%d, prob_seq:[duration:%.4f, size:%d, count:%d], EstimatedBandwidth:%.2f\n", v28, v29, v30, v31, v32, v33, SLOBYTE(a6));
          }

LABEL_42:
          *(a1 + 72) = a2;
          return;
        }
      }
    }

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    goto LABEL_36;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimator_CalculateBandwidthEstimation_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimator_CalculateBandwidthEstimationForBandwidthSample(uint64_t a1, double a2, double a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 > 0.0)
    {
      *(a1 + 400) = a2;
      updated = _VCRateControlBandwidthEstimator_UpdateBandwidthEstimation(a1, a2, a3);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        v8 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(a1 + 416);
            v10 = *(a1 + 88);
            v11 = *(a1 + 392);
            v15 = 136316930;
            v16 = v6;
            v17 = 2080;
            v18 = "VCRateControlBandwidthEstimator_CalculateBandwidthEstimationForBandwidthSample";
            v19 = 1024;
            v20 = 343;
            v21 = 2048;
            v22 = updated;
            v23 = 2048;
            v24 = a3;
            v25 = 1024;
            v26 = v9;
            v27 = 1024;
            v28 = v10;
            v29 = 2048;
            v30 = v11;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Bandwidth Estimation(BWD:%.2f): ArrivalTime:%.4f, state:%d, divergeCount:%d, EstimatedBandwidth:%.2f", &v15, 0x46u);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(a1 + 416);
          v13 = *(a1 + 88);
          v14 = *(a1 + 392);
          v15 = 136316930;
          v16 = v6;
          v17 = 2080;
          v18 = "VCRateControlBandwidthEstimator_CalculateBandwidthEstimationForBandwidthSample";
          v19 = 1024;
          v20 = 343;
          v21 = 2048;
          v22 = updated;
          v23 = 2048;
          v24 = a3;
          v25 = 1024;
          v26 = v12;
          v27 = 1024;
          v28 = v13;
          v29 = 2048;
          v30 = v14;
          _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d Bandwidth Estimation(BWD:%.2f): ArrivalTime:%.4f, state:%d, divergeCount:%d, EstimatedBandwidth:%.2f", &v15, 0x46u);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimator_CalculateBandwidthEstimationForBandwidthSample_cold_1();
    }
  }
}

uint64_t VCRateControlBandwidthEstimatorMap_BandwidthEstimator(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRateControlBandwidthEstimatorMap_BandwidthEstimator_cold_1();
      }
    }

    return 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (*(a1 + 12) - 6) >= 0xFFFFFFFE;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return v5;
  }

  v7 = a2;
  v8 = *(a1 + 8);
  if (v8 == 2)
  {
    v5 = 0;
    if ((a3 ^ 1 | a4) != 1 || *(a1 + 48) != a2)
    {
      return v5;
    }

    goto LABEL_23;
  }

  if (v8 != 1)
  {
    if (!v8 && a3)
    {
      *(a1 + 8) = 1;
      *(a1 + 48) = a2;
    }

    goto LABEL_24;
  }

  if (*(a1 + 48) != a2)
  {
    v5 = 0;
    *(a1 + 8) = 2;
    return v5;
  }

  if (!a3 || a4)
  {
LABEL_23:
    *(a1 + 8) = 0;
  }

LABEL_24:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  if (![*(a1 + 40) objectForKeyedSubscript:v10])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315906;
        v15 = v12;
        v16 = 2080;
        v17 = "VCRateControlBandwidthEstimatorMap_BandwidthEstimator";
        v18 = 1024;
        v19 = 668;
        v20 = 1024;
        v21 = v7;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Create bandwidth estimator for estimator id: %d", &v14, 0x22u);
      }
    }

    v5 = objc_alloc_init(VCRateControlBandwidthEstimator);
    [(VCRateControlBandwidthEstimator *)v5 setMode:*(a1 + 12)];
    VCRateControlBandwidthEstimator_SetRadioAccessTechnology(v5, *(a1 + 16));
    VCRateControlBandwidthEstimator_SetFastSuddenBandwidthDetectionEnabled(v5, *(a1 + 68));
    VCRateControlBandwidthEstimator_SetL4SHighDataRateEnabled(v5, *(a1 + 69));
    [(VCRateControlBandwidthEstimator *)v5 setServerBag:*(a1 + 72)];
    if (*(a1 + 80))
    {
      [(VCRateControlBandwidthEstimator *)v5 enableBWELogDump:?];
    }

    [*(a1 + 40) setObject:v5 forKeyedSubscript:v10];
    if (!*(a1 + 56))
    {
      *(a1 + 56) = v5;
    }

    return v5;
  }

  v11 = *(a1 + 40);

  return [v11 objectForKeyedSubscript:v10];
}

void VCRateControlBandwidthEstimatorMap_DeregisterBandwidthEstimator(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "VCRateControlBandwidthEstimatorMap_DeregisterBandwidthEstimator";
        v11 = 1024;
        v12 = 691;
        v13 = 1024;
        v14 = a2;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Remove bandwidth estimator for estimator id: %d", &v7, 0x22u);
      }
    }

    if (*(a1 + 48) == a2)
    {
      *(a1 + 8) = 0;
    }

    [*(a1 + 40) removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", a2)}];
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimatorMap_DeregisterBandwidthEstimator_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimatorMap_EstimatedBandwidthWithArrivalTime(uint64_t a1, double a2)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = (*(a1 + 12) - 6) > 0xFFFFFFFD;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      *(a1 + 24) = 0;
      v5 = *(a1 + 40);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __VCRateControlBandwidthEstimatorMap_EstimatedBandwidthWithArrivalTime_block_invoke;
      v6[3] = &unk_1E85F9340;
      *&v6[5] = a2;
      v6[4] = a1;
      [v5 enumerateKeysAndObjectsUsingBlock:v6];
    }

    else
    {

      [v3 estimatedBandwidth];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimatorMap_EstimatedBandwidthWithArrivalTime_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimatorMap_EstimatedBandwidthUncappedWithArrivalTime(uint64_t a1, double a2)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = (*(a1 + 12) - 6) > 0xFFFFFFFD;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      *(a1 + 32) = 0;
      v5 = *(a1 + 40);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __VCRateControlBandwidthEstimatorMap_EstimatedBandwidthUncappedWithArrivalTime_block_invoke;
      v6[3] = &unk_1E85F9340;
      *&v6[5] = a2;
      v6[4] = a1;
      [v5 enumerateKeysAndObjectsUsingBlock:v6];
    }

    else
    {

      [v3 estimatedBandwidthUncapped];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimatorMap_EstimatedBandwidthUncappedWithArrivalTime_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimatorMap_SetEstimatedBandwidth(uint64_t a1, double a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 24) = a2;
    if (*(a1 + 56))
    {
      v2 = (*(a1 + 12) - 6) > 0xFFFFFFFD;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      v3 = *(a1 + 40);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __VCRateControlBandwidthEstimatorMap_SetEstimatedBandwidth_block_invoke;
      v5[3] = &__block_descriptor_40_e58_v32__0__NSNumber_8__VCRateControlBandwidthEstimator_16_B24l;
      *&v5[4] = a2;
      [v3 enumerateKeysAndObjectsUsingBlock:v5];
    }

    else
    {
      v4 = *(a1 + 56);

      [v4 setEstimatedBandwidth:?];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimatorMap_SetEstimatedBandwidth_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimatorMap_SetRadioAccessTechnology(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 16) = a2;
    if (*(a1 + 56))
    {
      v2 = (*(a1 + 12) - 6) > 0xFFFFFFFD;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      v3 = *(a1 + 40);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __VCRateControlBandwidthEstimatorMap_SetRadioAccessTechnology_block_invoke;
      v5[3] = &__block_descriptor_36_e58_v32__0__NSNumber_8__VCRateControlBandwidthEstimator_16_B24l;
      v6 = a2;
      [v3 enumerateKeysAndObjectsUsingBlock:v5];
    }

    else
    {
      v4 = *(a1 + 56);

      [v4 setRadioAccessTechnology:a2];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimatorMap_SetRadioAccessTechnology_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimatorMap_SetFastSuddenBandwidthDetectionEnabled(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 68) = a2;
    if (*(a1 + 56))
    {
      v2 = (*(a1 + 12) - 6) > 0xFFFFFFFD;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      v3 = *(a1 + 40);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __VCRateControlBandwidthEstimatorMap_SetFastSuddenBandwidthDetectionEnabled_block_invoke;
      v5[3] = &__block_descriptor_33_e58_v32__0__NSNumber_8__VCRateControlBandwidthEstimator_16_B24l;
      v6 = a2;
      [v3 enumerateKeysAndObjectsUsingBlock:v5];
    }

    else
    {
      v4 = *(a1 + 56);

      VCRateControlBandwidthEstimator_SetFastSuddenBandwidthDetectionEnabled(v4, a2);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimatorMap_SetFastSuddenBandwidthDetectionEnabled_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimatorMap_SetL4SHighDataRateEnabled(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 69) = a2;
    v3 = *(a1 + 56);
    v4 = *(a1 + 12) - 6;
    if (v3)
    {
      v5 = v4 > 0xFFFFFFFD;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {

      VCRateControlBandwidthEstimator_SetL4SHighDataRateEnabled(v3, a2);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimatorMap_SetL4SHighDataRateEnabled_cold_1();
    }
  }
}

void VCRateControlBandwidthEstimatorMap_EnableBWELogDump(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 80) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlBandwidthEstimatorMap_EnableBWELogDump_cold_1();
    }
  }
}

uint64_t VCMediaNegotiationBlobV2StreamGroupPayloadReadFrom(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v63 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v63 & 0x7F) << v5;
        if ((v63 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 5)
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v63 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v63 & 0x7F) << v34;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v10 = v35++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_125;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v36;
            }

LABEL_125:
            v61 = 12;
          }

          else
          {
            if (v12 != 2)
            {
              goto LABEL_112;
            }

            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 56) |= 0x80u;
            while (1)
            {
              v63 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v63 & 0x7F) << v24;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_117;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v26;
            }

LABEL_117:
            v61 = 48;
          }
        }

        else
        {
          switch(v12)
          {
            case 3:
              v44 = 0;
              v45 = 0;
              v46 = 0;
              *(a1 + 56) |= 0x10u;
              while (1)
              {
                v63 = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v46 |= (v63 & 0x7F) << v44;
                if ((v63 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v10 = v45++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_133;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v46;
              }

LABEL_133:
              v61 = 24;
              break;
            case 4:
              v54 = 0;
              v55 = 0;
              v56 = 0;
              *(a1 + 56) |= 0x40u;
              while (1)
              {
                v63 = 0;
                v57 = [a2 position] + 1;
                if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v56 |= (v63 & 0x7F) << v54;
                if ((v63 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v10 = v55++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_149;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v56;
              }

LABEL_149:
              v61 = 44;
              break;
            case 5:
              v13 = 0;
              v14 = 0;
              v15 = 0;
              *(a1 + 56) |= 8u;
              while (1)
              {
                v63 = 0;
                v16 = [a2 position] + 1;
                if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v63 & 0x7F) << v13;
                if ((v63 & 0x80) == 0)
                {
                  break;
                }

                v13 += 7;
                v10 = v14++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_141;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v15;
              }

LABEL_141:
              v61 = 20;
              break;
            default:
              goto LABEL_112;
          }
        }

        goto LABEL_150;
      }

      if (v12 <= 7)
      {
        if (v12 == 6)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 56) |= 0x20u;
          while (1)
          {
            v63 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v63 & 0x7F) << v39;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_129;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v41;
          }

LABEL_129:
          v61 = 40;
        }

        else
        {
          if (v12 != 7)
          {
LABEL_112:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_151;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 56) |= 0x100u;
          while (1)
          {
            v63 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v63 & 0x7F) << v29;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_121;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v31;
          }

LABEL_121:
          v61 = 52;
        }

        goto LABEL_150;
      }

      if (v12 == 8)
      {
        break;
      }

      if (v12 != 9)
      {
        if (v12 != 10)
        {
          goto LABEL_112;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 56) |= 4u;
        while (1)
        {
          v63 = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v63 & 0x7F) << v19;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_145;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }

LABEL_145:
        v61 = 16;
        goto LABEL_150;
      }

      Data = PBReaderReadData();

      *(a1 + 32) = Data;
LABEL_151:
      v62 = [a2 position];
      if (v62 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v49 = 0;
    v50 = 0;
    v51 = 0;
    *(a1 + 56) |= 1u;
    while (1)
    {
      v63 = 0;
      v52 = [a2 position] + 1;
      if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v51 |= (v63 & 0x7F) << v49;
      if ((v63 & 0x80) == 0)
      {
        break;
      }

      v49 += 7;
      v10 = v50++ >= 9;
      if (v10)
      {
        v18 = 0;
        goto LABEL_137;
      }
    }

    if ([a2 hasError])
    {
      v18 = 0;
    }

    else
    {
      v18 = v51;
    }

LABEL_137:
    v61 = 8;
LABEL_150:
    *(a1 + v61) = v18;
    goto LABEL_151;
  }

  return [a2 hasError] ^ 1;
}

BOOL VCFECHeader_GetIsParityPacket(_BYTE *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCFECHeader_GetIsParityPacket_cold_2();
    }

    return 0;
  }

  v2 = *a1 & 3;
  if (v2 < 2)
  {
    return (a1[4] >> 4) & 1;
  }

  if (v2 == 2)
  {
    return (a1[2] >> 3) & 1;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule < 8)
  {
    return 0;
  }

  v5 = VRTraceErrorLogLevelToCSTR();
  v6 = *MEMORY[0x1E6986650];
  v7 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v8 = *a1 & 3;
    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = "VCFECHeader_GetIsParityPacket";
    v13 = 1024;
    v14 = 45;
    v15 = 2048;
    v16 = a1;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Invalid FEC header version=%d", &v9, 0x2Cu);
    return 0;
  }

  result = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    VCFECHeader_GetIsParityPacket_cold_1();
    return 0;
  }

  return result;
}

void VCFECHeader_SetIsParityPacket(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *a1 & 3;
    if (v3 < 2)
    {
      if (a2)
      {
        v4 = 0x100000;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(a1 + 2) & 0xFFEFFFFF;
LABEL_15:
      *(a1 + 2) = v5 | v4;
      return;
    }

    if (v3 == 2)
    {
      if (a2)
      {
        v4 = 8;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(a1 + 2) & 0xFFFFFFF7;
      goto LABEL_15;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *a1 & 3;
          v10 = 136316162;
          v11 = v6;
          v12 = 2080;
          v13 = "VCFECHeader_SetIsParityPacket";
          v14 = 1024;
          v15 = 87;
          v16 = 2048;
          v17 = a1;
          v18 = 1024;
          v19 = v9;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Invalid FEC header version=%d", &v10, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        VCFECHeader_SetIsParityPacket_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCFECHeader_SetIsParityPacket_cold_2();
    }
  }
}

void VCFECHeader_SetStartPosition(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *a1 & 3;
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCFECHeader_SetStartPosition_cold_1();
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        v6 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *a1 & 3;
            v8 = 136316162;
            v9 = v4;
            v10 = 2080;
            v11 = "VCFECHeader_SetStartPosition";
            v12 = 1024;
            v13 = 106;
            v14 = 2048;
            v15 = a1;
            v16 = 1024;
            v17 = v7;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Invalid FEC header version=%d", &v8, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          VCFECHeader_SetStartPosition_cold_2();
        }
      }
    }

    else
    {
      *(a1 + 2) = *(a1 + 2) & 0xFFFFFF87 | (8 * (a2 & 0xF));
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCFECHeader_SetStartPosition_cold_3();
    }
  }
}

void VCFECHeader_SetPosition(uint64_t a1, __int16 a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *a1 & 3;
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        *(a1 + 2) = *(a1 + 2) & 0xFFFFC00F | (16 * (a2 & 0x3FF));
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        v6 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *a1 & 3;
            v8 = 136316162;
            v9 = v4;
            v10 = 2080;
            v11 = "VCFECHeader_SetPosition";
            v12 = 1024;
            v13 = 125;
            v14 = 2048;
            v15 = a1;
            v16 = 1024;
            v17 = v7;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Invalid FEC header version=%d", &v8, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          VCFECHeader_SetPosition_cold_2();
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCFECHeader_SetPosition_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCFECHeader_SetPosition_cold_3();
    }
  }
}

void VCFECHeader_SetNumberOfParityPackets(uint64_t a1, __int16 a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *a1 & 3;
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        *(a1 + 6) = *(a1 + 6) & 0xFC00 | a2 & 0x3FF;
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        v6 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *a1 & 3;
            v8 = 136316162;
            v9 = v4;
            v10 = 2080;
            v11 = "VCFECHeader_SetNumberOfParityPackets";
            v12 = 1024;
            v13 = 163;
            v14 = 2048;
            v15 = a1;
            v16 = 1024;
            v17 = v7;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Invalid FEC header version=%d", &v8, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          VCFECHeader_SetNumberOfParityPackets_cold_2();
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCFECHeader_SetNumberOfParityPackets_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCFECHeader_SetNumberOfParityPackets_cold_3();
    }
  }
}

void VCFECHeader_SetRedundantBitsForPayloadSize(uint64_t a1, __int16 a2)
{
  if (a1)
  {
    if ((*a1 & 3u) <= 1)
    {
      if ((*a1 & 3) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCFECHeader_SetRedundantBitsForPayloadSize_cold_1();
          }
        }

        return;
      }

LABEL_11:
      *(a1 + 8) = a2;
      return;
    }

    if ((*a1 & 3) == 2)
    {
      goto LABEL_11;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCFECHeader_SetRedundantBitsForPayloadSize_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCFECHeader_SetRedundantBitsForPayloadSize_cold_3();
    }
  }
}

void VCFECHeader_SetParitySequenceNum(uint64_t a1, __int16 a2)
{
  if (a1)
  {
    if ((*a1 & 3u) <= 1)
    {
      if ((*a1 & 3) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCFECHeader_SetParitySequenceNum_cold_1();
          }
        }

        return;
      }

LABEL_11:
      *(a1 + 10) = a2;
      return;
    }

    if ((*a1 & 3) == 2)
    {
      goto LABEL_11;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCFECHeader_SetParitySequenceNum_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCFECHeader_SetParitySequenceNum_cold_3();
    }
  }
}

void VCFECHeader_SetFecLevel(uint64_t a1, __int16 a2, __int16 a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*a1 & 3u) > 1)
    {
      if ((*a1 & 3) == 2)
      {
        *(a1 + 6) = *(a1 + 6) & 0xFC00 | a3 & 0x3FF;
        return;
      }
    }

    else if ((*a1 & 3) != 0)
    {
      *(a1 + 6) = *(a1 + 6) & 0xFFFFFC00 | a2 & 0x3FF;
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *a1 & 3;
          v8 = 136316162;
          v9 = v4;
          v10 = 2080;
          v11 = "VCFECHeader_SetFecLevel";
          v12 = 1024;
          v13 = 225;
          v14 = 2048;
          v15 = a1;
          v16 = 1024;
          v17 = v7;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] FEC header version=%d does not support FEC Level field", &v8, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        VCFECHeader_SetFecLevel_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCFECHeader_SetFecLevel_cold_2();
    }
  }
}

uint64_t VCFECHeader_GetIsLastGroup(_BYTE *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCFECHeader_GetIsLastGroup_cold_2();
    }

    return 0;
  }

  v2 = *a1 & 3;
  if (v2 < 2)
  {
    return a1[3] >> 7;
  }

  if (v2 == 2)
  {
    return 1;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule < 8)
  {
    return 0;
  }

  v5 = VRTraceErrorLogLevelToCSTR();
  v6 = *MEMORY[0x1E6986650];
  v7 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v8 = *a1 & 3;
    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = "VCFECHeader_GetIsLastGroup";
    v13 = 1024;
    v14 = 286;
    v15 = 2048;
    v16 = a1;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Invalid FEC header version=%d", &v9, 0x2Cu);
    return 0;
  }

  result = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    VCFECHeader_GetIsLastGroup_cold_1();
    return 0;
  }

  return result;
}

uint64_t VCFECHeader_GetFecLevelWithTotalPackets(uint64_t a1, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCFECHeader_GetFecLevelWithTotalPackets_cold_3();
      }
    }

    goto LABEL_20;
  }

  if ((*a1 & 3u) > 1)
  {
    if ((*a1 & 3) != 2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        v6 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *a1 & 3;
            v9 = 136316162;
            v10 = v4;
            v11 = 2080;
            v12 = "VCFECHeader_GetFecLevelWithTotalPackets";
            v13 = 1024;
            v14 = 350;
            v15 = 2048;
            v16 = a1;
            v17 = 1024;
            v18 = v7;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Invalid FEC header version=%d", &v9, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          VCFECHeader_GetFecLevelWithTotalPackets_cold_2();
        }
      }

      goto LABEL_20;
    }

    if (!a2)
    {
LABEL_20:
      LOWORD(v3) = 0;
      return v3;
    }

    return (100 * (*(a1 + 6) & 0x3FFu) / a2);
  }

  else
  {
    if ((*a1 & 3) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCFECHeader_GetFecLevelWithTotalPackets_cold_1();
        }
      }

      goto LABEL_20;
    }

    LOWORD(v3) = *(a1 + 6) & 0x3FF;
  }

  return v3;
}

uint64_t _VCFECHeader_WriteToBuffer_V0(_BYTE *a1, _BYTE *a2, unint64_t a3, uint64_t *a4)
{
  if ((*a1 & 3) != 0)
  {
    _VCFECHeader_WriteToBuffer_V0_cold_1();
    goto LABEL_15;
  }

  if (a3 <= 3)
  {
    _VCFECHeader_WriteToBuffer_V0_cold_4();
    goto LABEL_15;
  }

  v5 = (8 * (a1[2] & 7)) | *a2;
  *a2 = v5;
  *a2 = (a1[2] >> 3) & 7 | v5;
  v6 = ~(*(a1 + 2) >> 13) & 0x80 | a2[1];
  a2[1] = v6;
  a2[1] = a1[3] & 0x7F | v6;
  v7 = a1[3] & 0x80 | a2[2];
  a2[2] = v7;
  v8 = (*(a1 + 2) >> 13) & 0x38 | v7;
  a2[2] = v8;
  a2[2] = a1[7] & 7 | v8;
  a2[3] = a1[6];
  if ((a1[4] & 0x10) != 0)
  {
    if (a3 == 4)
    {
      _VCFECHeader_WriteToBuffer_V0_cold_3();
    }

    else
    {
      a2[4] = a1[9];
      a2[5] = a1[8];
      if (!*(a1 + 4))
      {
        v9 = 6;
        goto LABEL_12;
      }

      v10 = 0;
      v11 = 0;
      v12 = a1 + 10;
      while (v10 + 8 <= a3)
      {
        v13 = &a2[v10];
        v13[6] = v12[v10 + 1];
        v13[7] = v12[v10];
        ++v11;
        v10 += 2;
        if (v11 >= *(a1 + 4))
        {
          v9 = v10 + 6;
          goto LABEL_12;
        }
      }

      _VCFECHeader_WriteToBuffer_V0_cold_2();
    }

LABEL_15:
    v15 = v16;
    result = v17;
    goto LABEL_13;
  }

  v9 = 4;
LABEL_12:
  result = 0;
  v15 = (v9 & 2) + v9;
LABEL_13:
  *a4 = v15;
  return result;
}

uint64_t _VCFECHeader_WriteToBuffer_V1(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t *a4)
{
  if ((*a1 & 3) != 1)
  {
    _VCFECHeader_WriteToBuffer_V1_cold_1();
LABEL_12:
    v13 = v15;
    v12 = v16;
    goto LABEL_8;
  }

  if (a3 <= 3)
  {
    _VCFECHeader_WriteToBuffer_V1_cold_3();
    goto LABEL_12;
  }

  v5 = *a2 | 0x40;
  *a2 = v5;
  v6 = (8 * (*(a1 + 2) & 7)) | v5;
  *a2 = v6;
  *a2 = (*(a1 + 2) >> 4) & 7 | v6;
  v7 = a2[1] | (*(a1 + 2) >> 3 << 7);
  a2[1] = v7;
  v8 = ~(*(a1 + 2) >> 14) & 0x40 | v7;
  a2[1] = v8;
  a2[1] = v8 | (*(a1 + 2) >> 9) & 0x3F;
  v9 = a2[2] | (BYTE1(*(a1 + 2)) << 7);
  a2[2] = v9;
  v10 = (*(a1 + 2) >> 9) & 0x40 | v9;
  a2[2] = v10;
  v11 = (*(a1 + 2) >> 14) & 0x3C | v10;
  a2[2] = v11;
  a2[2] = *(a1 + 7) & 3 | v11;
  a2[3] |= *(a1 + 6);
  if ((*(a1 + 4) & 0x10) == 0)
  {
    v12 = 0;
    v13 = 4;
    goto LABEL_8;
  }

  if (a3 <= 7)
  {
    _VCFECHeader_WriteToBuffer_V1_cold_2();
    goto LABEL_12;
  }

  v12 = 0;
  a2[4] = *(a1 + 9);
  a2[5] = *(a1 + 8);
  a2[6] = *(a1 + 11);
  a2[7] = *(a1 + 10);
  v13 = 8;
  if ((*(a1 + 4) & 0x10) == 0)
  {
    v13 = 4;
  }

LABEL_8:
  *a4 = v13;
  return v12;
}

uint64_t _VCFECHeader_WriteToBuffer_V2(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t *a4)
{
  if ((*a1 & 3) != 2)
  {
    _VCFECHeader_WriteToBuffer_V2_cold_1();
LABEL_12:
    v11 = v13;
    v10 = v14;
    goto LABEL_8;
  }

  if (a3 <= 3)
  {
    _VCFECHeader_WriteToBuffer_V2_cold_3();
    goto LABEL_12;
  }

  v5 = *a2 | 0x80;
  *a2 = v5;
  v6 = (8 * (*(a1 + 2) & 7)) | v5;
  *a2 = v6;
  v7 = (*(a1 + 2) >> 1) & 4 | v6;
  *a2 = v7;
  *a2 = (*(a1 + 2) >> 12) & 3 | v7;
  v8 = a2[1] | (4 * (*(a1 + 2) >> 6));
  a2[1] = v8;
  a2[1] = (*(a1 + 2) >> 4) & 3 | v8;
  v9 = a2[2] | (4 * *(a1 + 4));
  a2[2] = v9;
  a2[2] = *(a1 + 7) & 3 | v9;
  a2[3] |= *(a1 + 6);
  if ((*(a1 + 2) & 8) == 0)
  {
    v10 = 0;
    v11 = 4;
    goto LABEL_8;
  }

  if (a3 <= 7)
  {
    _VCFECHeader_WriteToBuffer_V2_cold_2();
    goto LABEL_12;
  }

  v10 = 0;
  a2[4] = *(a1 + 9);
  a2[5] = *(a1 + 8);
  a2[6] = *(a1 + 11);
  a2[7] = *(a1 + 10);
  v11 = 8;
  if ((*(a1 + 2) & 8) == 0)
  {
    v11 = 4;
  }

LABEL_8:
  *a4 = v11;
  return v10;
}

uint64_t VCFECHeader_WriteToBuffer(uint64_t a1, _BYTE *a2, size_t a3, uint64_t *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCFECHeader_WriteToBuffer_cold_4();
LABEL_17:
    *a4 = 0;
    return 2150825985;
  }

  if (!a4)
  {
    VCFECHeader_WriteToBuffer_cold_3();
    goto LABEL_17;
  }

  bzero(a2, a3);
  v8 = *a1 & 3;
  if (v8 <= 1)
  {
    *v11 = *a1;
    *(&v11[2] + 2) = *(a1 + 10);
    if (v8)
    {
      v9 = _VCFECHeader_WriteToBuffer_V1(v11, a2, a3, a4);
    }

    else
    {
      v9 = _VCFECHeader_WriteToBuffer_V0(v11, a2, a3, a4);
    }

LABEL_9:
    if (v9 < 0)
    {
      VCFECHeader_WriteToBuffer_cold_2();
      return v11[0];
    }

    return 0;
  }

  if (v8 == 2)
  {
    *v11 = *a1;
    *(&v11[2] + 2) = *(a1 + 10);
    v9 = _VCFECHeader_WriteToBuffer_V2(v11, a2, a3, a4);
    goto LABEL_9;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 0;
  }

  VRTraceErrorLogLevelToCSTR();
  result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (result)
  {
    VCFECHeader_WriteToBuffer_cold_1();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_10_23(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x2Cu);
}

uint64_t VCMediaNegotiationBlobV2MicrophoneSettingsU1ReadFrom(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v31 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v34 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v34 & 0x7F) << v25;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v18 = v26++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2MicrophoneSettingsU1__cipherSuites;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2MicrophoneSettingsU1__cipherSuites;
        goto LABEL_52;
      }

      if (v12 == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v33 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v33 & 0x7F) << v13;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v18 = v14++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2MicrophoneSettingsU1__rtpSSRC;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2MicrophoneSettingsU1__rtpSSRC;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = 0;
    v22 = 0;
    v15 = 0;
    *(a1 + 20) |= 2u;
    while (1)
    {
      v32 = 0;
      v23 = [a2 position] + 1;
      if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v32 & 0x7F) << v21;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v18 = v22++ > 8;
      if (v18)
      {
        v19 = 0;
        v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2MicrophoneSettingsU1__payloads;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2MicrophoneSettingsU1__payloads;
LABEL_52:
    if ([a2 hasError])
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

LABEL_55:
    *(a1 + *v20) = v19;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t VCTimescalePSOLA_PreEmptiveExpand(unsigned __int8 *a1, __int16 *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1[92])
  {
    v4 = VCTimescalePSOLA_CalcFsMult(*(a1 + 1));
    v5 = (120 * v4);
    *(a1 + 29) = 0;
    v6 = VCTimescalePSOLA_CheckforSignalCorrelation(a1, a2, v5, 1);
    if (v6 < 0)
    {
      VCTimescalePSOLA_PreEmptiveExpand_cold_1(v6, &v22);
      return v22;
    }

    if (a2[32] > v5 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = a2[32];
        v22 = 136316162;
        v23 = v7;
        v24 = 2080;
        v25 = "VCTimescalePSOLA_PreEmptiveExpand";
        v26 = 1024;
        v27 = 150;
        v28 = 1024;
        v29 = v9;
        v30 = 1024;
        v31 = (120 * v4);
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Expand: WARN TOO MANY PLAYED OUT DATA %d > 15 ms %d", &v22, 0x28u);
      }
    }

    VCTimescalePSOLA_SynchronizeChannelCorrelation(a1, a2, 1, v4);
    if (*(a1 + 19) <= *(a1 + 27) || (v10 = a2[32], v10 > v5))
    {
      if (*(a1 + 11))
      {
        a2[34] = a2[33];
        if (*a1)
        {
          v11 = 0;
          do
          {
            memmove(*&a2[4 * v11 + 16], *&a2[4 * v11], 4 * a2[33]);
            ++v11;
          }

          while (v11 < *a1);
        }

        return 61;
      }

      LOWORD(v10) = a2[32];
    }

    if (v10 <= v5)
    {
      v15 = 120 * v4;
    }

    else
    {
      v15 = v10;
    }

    v16 = *(a1 + 3);
    if (*a1)
    {
      v17 = 0;
      v18 = 1.0 / (v16 + 1);
      do
      {
        v19 = &a2[4 * v17];
        v20 = (*v19 + 4 * (v15 - *(a1 + 3)));
        v21 = (*v19 + 4 * v15);
        memmove(*(v19 + 4), *v19, 4 * v15);
        VCTimescalePSOLA_MixVoiceUnvoiceFloatPoint((*(v19 + 4) + 4 * v15), v21, v20, *(a1 + 3), 1.0 - v18, v18);
        memmove((*(v19 + 4) + 4 * (*(a1 + 3) + v15)), (*v19 + 4 * v15), 4 * (a2[33] - v15));
        ++v17;
      }

      while (v17 < *a1);
      LOWORD(v16) = *(a1 + 3);
    }

    result = 0;
    a2[34] = a2[33] + v16;
    *(a1 + 18) += *(a1 + 3);
  }

  else
  {
    a2[34] = a2[33];
    if (*a1)
    {
      v13 = 0;
      v14 = (a2 + 16);
      do
      {
        memmove(*v14, *(v14 - 4), 4 * a2[33]);
        ++v13;
        ++v14;
      }

      while (v13 < *a1);
    }

    return 0;
  }

  return result;
}

CFAllocatorRef VCAudioBufferAllocatorCreate(const __CFAllocator *a1, uint64_t a2, unsigned int a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCAudioBufferAllocatorCreate_cold_6(v13);
    return v13[0];
  }

  if (!a3)
  {
    VCAudioBufferAllocatorCreate_cold_5(v13);
    return v13[0];
  }

  v12 = *byte_1F570DB80;
  v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v4)
  {
    v5 = (v4 + 16) * a3 + 40;
    if (v5 <= v4)
    {
      VCAudioBufferAllocatorCreate_cold_1((a2 + 7) & 0xFFFFFFFFFFFFFFF8, (v4 + 16) * a3 + 40);
    }

    else
    {
      v7 = MEMORY[0x1E1288880](a1, (v4 + 16) * a3 + 40, 0x10600400F72299BLL, 0);
      if (v7)
      {
        v8 = v7;
        bzero(v7, (v4 + 16) * a3 + 40);
        v8[4] = a3;
        *(v8 + 1) = v4;
        if (a1)
        {
          Default = a1;
        }

        else
        {
          Default = CFAllocatorGetDefault();
        }

        *v8 = CFRetain(Default);
        *(v8 + 3) = v5;
        v12.info = v8;
        return CFAllocatorCreate(a1, &v12);
      }

      VCAudioBufferAllocatorCreate_cold_2();
    }
  }

  else
  {
    VCAudioBufferAllocatorCreate_cold_3();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferAllocatorCreate_cold_4(v11);
    }
  }

  return 0;
}

void VCAudioBufferAllocatorFreeContext(CFAllocatorRef *ptr)
{
  if (ptr)
  {
    v1 = *ptr;
    CFAllocatorDeallocate(*ptr, ptr);

    CFRelease(v1);
  }
}

uint64_t VCAudioBufferAllocatorAlloc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 == *(a3 + 8) && (*(a3 + 32) & 1) == 0 && *(a3 + 16))
  {
    v6 = 0;
    v7 = (a3 + 40);
    while (1)
    {
      v8 = 0;
      atomic_compare_exchange_strong_explicit(v7, &v8, 1u, memory_order_relaxed, memory_order_relaxed);
      result = (v7 + 2);
      v10 = (v7 + *(a3 + 8) + 8);
      if (!v8)
      {
        break;
      }

      v7 = v10 + 2;
      if (++v6 >= *(a3 + 16))
      {
        goto LABEL_7;
      }
    }

    *v10 = -524416118;
  }

  else
  {
LABEL_7:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = v11;
        v15 = 2080;
        v16 = "VCAudioBufferAllocatorAlloc";
        v17 = 1024;
        v18 = 115;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Insufficient number of audio buffers!", &v13, 0x1Cu);
      }
    }

    return MEMORY[0x1E1288880](*a3, v5, 3255710745, a2);
  }

  return result;
}

char *VCAudioBufferAllocatorRealloc(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = a1;
  if (a1 <= a4 || &a4[*(a4 + 3)] <= a1)
  {

    JUMPOUT(0x1E12888C0);
  }

  if (*(a4 + 1) < a2)
  {
    v6 = MEMORY[0x1E1288880](*a4, a2, 26948063, a3);
    memcpy(v6, v5, *(a4 + 1));
    VCAudioBufferAllocatorCleanupBuffer(a4, v5);
    return v6;
  }

  return v5;
}

void VCAudioBufferAllocatorDealloc(void *ptr, unint64_t a2)
{
  if (ptr <= a2 || a2 + *(a2 + 24) <= ptr)
  {
    CFAllocatorDeallocate(*a2, ptr);
  }

  else
  {
    VCAudioBufferAllocatorCleanupBuffer(a2, ptr);
  }
}

void VCAudioBufferAllocatorCleanupBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + v3) != -524416118)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioBufferAllocatorCleanupBuffer_cold_1(v5);
      }
    }

    *(a1 + 32) = 1;
  }

  *(a2 + v3) = -524416118;
  atomic_fetch_and_explicit((a2 - 8), 0, memory_order_relaxed);
}

uint64_t _VCFECFeedbackAnalyzerClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t _VCFECFeedbackAnalyzer_Configure(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *(a1 + 16) = *a2;
  v4 = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 24);
  if (*&v3 <= 0.0 || *&v3 > 1.0)
  {
    _VCFECFeedbackAnalyzer_Configure_cold_2(a2, &v10);
    return v10;
  }

  if ((v4 - 15001) <= 0xFFFFC567)
  {
    _VCFECFeedbackAnalyzer_Configure_cold_1(a2 + 16, &v10);
    return v10;
  }

  result = 0;
  v7 = a1 + 265864;
  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 32;
  }

  *v7 = v9;
  *(v7 + 520) = v8;
  *(v7 + 524) = *(a2 + 44);
  return result;
}

uint64_t VCFECFeedbackAnalyzer_Create(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCFECFeedbackAnalyzer_Create_cold_6();
    return *v21;
  }

  if (!a3)
  {
    VCFECFeedbackAnalyzer_Create_cold_5();
    return *v21;
  }

  if (_MergedGlobals_19 != -1)
  {
    VCFECFeedbackAnalyzer_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCFECFeedbackAnalyzer_Create_cold_4();
    return *v21;
  }

  v6 = Instance;
  bzero((Instance + 648), 0x40C00uLL);
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"isFECFeedbackAnalyzerDumpEnabled", 1);
  *(v6 + 56) = BoolValueForKey;
  if (BoolValueForKey)
  {
    v8 = arc4random();
    *(v6 + 60) = v8;
    memset(v21, 170, 12);
    __sprintf_chk(v21, 0, 0xCuLL, "%010u", v8);
    v9 = LogDump_OpenLog(v21, "com.apple.VideoConference.VCFECFeedbackAnalyzer", ".fecdump", "", 9, "");
    *(v6 + 64) = v9;
    VRLogfilePrintSync(v9, "Time\tTimeMicro\tFrameSizeInPackets\tlostPackets\n", v10, v11, v12, v13, v14, v15, v20);
  }

  if (_VCFECFeedbackAnalyzer_Configure(v6, a3))
  {
    VCFECFeedbackAnalyzer_Create_cold_2();
  }

  else
  {
    v16 = malloc_type_calloc(*(v6 + 32), 0x10uLL, 0x1000040D9A13B51uLL);
    *(v6 + 88) = v16;
    if (v16)
    {
      v17 = 0;
      *(v6 + 266380) = 0;
      *a2 = v6;
      return v17;
    }

    VCFECFeedbackAnalyzer_Create_cold_3();
  }

  v17 = *v21;
  v19 = *(v6 + 88);
  if (v19)
  {
    free(v19);
  }

  CFRelease(v6);
  return v17;
}

uint64_t VCFECFeedbackAnalyzer_ProcessFeedback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCFECFeedbackAnalyzer_ProcessFeedback_cold_1();
    return *buf;
  }

  v11 = *(a1 + 265864);
  v12 = WORD1(a3);
  v13 = v11 - 1;
  if (WORD1(a3) >= v11 - 1)
  {
    LOWORD(v14) = v11 - 1;
  }

  else
  {
    LOWORD(v14) = WORD1(a3);
  }

  v15 = a3;
  if (a3 < v11)
  {
    goto LABEL_8;
  }

  if (a3)
  {
    v14 = ((v11 / a3) * WORD1(a3));
LABEL_8:
    if (a3 >= v13)
    {
      v16 = v11 - 1;
    }

    else
    {
      v16 = a3;
    }

    if (v13 <= v14)
    {
      v17 = v11 - 1;
    }

    else
    {
      v17 = v14;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      v20 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *&a2;
          v22 = *(a1 + 84);
          v23 = *&a2 - *(a1 + 96);
          *buf = 136316930;
          *&buf[4] = v18;
          *&buf[12] = 2080;
          *&buf[14] = "_VCFECFeedbackAnalyzer_RegisterFeedback";
          *&buf[22] = 1024;
          *&buf[24] = 209;
          *&buf[28] = 1024;
          *&buf[30] = v15;
          *&buf[34] = 1024;
          *&buf[36] = v12;
          *&buf[40] = 2048;
          *&buf[42] = v21;
          *&buf[50] = 2048;
          *&buf[52] = v23;
          *&buf[60] = 1024;
          *&buf[62] = v22;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d New feedback arrived fecFeedback.sizeInPackets=%d fecFeedback.lostPackets=%d time=%f timeDelta=%f bufferIndex=%d", buf, 0x42u);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v42 = *&a2;
        v43 = *(a1 + 84);
        v44 = *&a2 - *(a1 + 96);
        *buf = 136316930;
        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = "_VCFECFeedbackAnalyzer_RegisterFeedback";
        *&buf[22] = 1024;
        *&buf[24] = 209;
        *&buf[28] = 1024;
        *&buf[30] = v15;
        *&buf[34] = 1024;
        *&buf[36] = v12;
        *&buf[40] = 2048;
        *&buf[42] = v42;
        *&buf[50] = 2048;
        *&buf[52] = v44;
        *&buf[60] = 1024;
        *&buf[62] = v43;
        _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d New feedback arrived fecFeedback.sizeInPackets=%d fecFeedback.lostPackets=%d time=%f timeDelta=%f bufferIndex=%d", buf, 0x42u);
      }
    }

    v24 = *(a1 + 88) + 16 * *(a1 + 84);
    *v24 = *&a2;
    *(v24 + 8) = v16;
    *(v24 + 10) = v17;
    v25 = *(a1 + 32);
    *(a1 + 84) = (*(a1 + 84) + 1) % v25;
    v26 = *(a1 + 82);
    if (v26 + 1 < v25)
    {
      v27 = v26 + 1;
    }

    else
    {
      v27 = v25;
    }

    *(a1 + 82) = v27;
    *(a1 + 96) = *&a2;
    *(a1 + 104) = a3;
  }

  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 80) == 1)
    {
      v28 = micro();
      if (v28 - *(a1 + 72) >= 1.0)
      {
        *(a1 + 72) = v28;
        memcpy(buf, "histogram", sizeof(buf));
        if (*(a1 + 265864))
        {
          v29 = 0;
          v30 = a1 + 648;
          do
          {
            __sprintf_chk(buf, 0, 0xAF0uLL, "{histogram:\t{size: %2d,\tbins:{", v29);
            if (*(a1 + 265864))
            {
              v37 = 0;
              do
              {
                if (v37)
                {
                  v38 = ",";
                }

                else
                {
                  v38 = "";
                }

                __sprintf_chk(buf, 0, 0xAF0uLL, "%s%s\t%d:%2.3f", buf, v38, v37, *(v30 + 4 * v37));
                ++v37;
              }

              while (v37 < *(a1 + 265864));
            }

            VRLogfilePrintWithTimestamp(*(a1 + 64), "%s}}}\n", v31, v32, v33, v34, v35, v36, buf);
            ++v29;
            v30 += 1036;
          }

          while (v29 < *(a1 + 265864));
        }
      }
    }

    else
    {
      v39 = *(a1 + 96);
      v40 = v39;
      VRLogfilePrintWithTimestamp(*(a1 + 64), "%5.6f\t%d\t%d\n", a3, a4, a5, a6, a7, a8, SLOBYTE(v40));
    }
  }

  return 0;
}

uint64_t VCFECFeedbackAnalyzer_GetFECLevelVector(uint64_t a1, void *a2)
{
  v131 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCFECFeedbackAnalyzer_GetFECLevelVector_cold_3();
    return *buf;
  }

  if (!a2)
  {
    VCFECFeedbackAnalyzer_GetFECLevelVector_cold_2();
    return *buf;
  }

  v4 = (a1 + 265864);
  LODWORD(v5) = *(a1 + 265864);
  if (*(a1 + 265864))
  {
    v6 = 0;
    v7 = (a1 + 648);
    do
    {
      bzero(v7, 4 * v5);
      ++v6;
      v7 += 1036;
      v5 = *v4;
    }

    while (v6 < v5);
  }

  v8 = *(a1 + 82);
  if (v8 < 1)
  {
    v9 = 0;
    v18 = 0.0;
    v24 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 32);
    v13 = *(a1 + 88);
    v14 = *(a1 + 24);
    v15 = v12 + *(a1 + 84);
    LOWORD(v16) = 1;
    do
    {
      v17 = v13 + ((((v15 - v16) % v12) << 48) >> 44);
      v18 = NAN - *v17;
      if (v18 > v14)
      {
        break;
      }

      v19 = *(v17 + 8);
      v20 = a1 + 648 + 1036 * *(v17 + 8);
      v21 = *(v17 + 10);
      *(v20 + 4 * v21) = *(v20 + 4 * v21) + 1.0;
      v22 = *(a1 + 40);
      if (v18 > v22)
      {
        v21 = 0;
      }

      v11 += v21;
      v23 = v18 <= v22 ? v19 : 0;
      v10 += v23;
      v16 = (v16 + 1);
      ++v9;
    }

    while (v16 <= v8);
    v24 = 0.0;
    if (v18 > 2.0 && v10 != 0)
    {
      v24 = ((v11 * 100.0) / v10);
    }
  }

  *(a1 + 112) = v24;
  _VCRedundancyControlAlgorithmVideo_ApplyEnvelope((a1 + 120), 0, v24);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    v28 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v18;
        v30 = *(a1 + 112);
        *buf = 136316418;
        *&buf[4] = v26;
        v121 = 2080;
        v122 = "_VCFECFeedbackAnalyzer_PopulateHistogram";
        v123 = 1024;
        v124 = 261;
        v125 = 1024;
        v126 = v9;
        v127 = 2048;
        v128 = v29;
        v129 = 2048;
        v130 = v30;
        _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Histogram has been populated countItems=%d currentTimeDelta=%f _lastComputedVPLR=%2.2f", buf, 0x36u);
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v115 = v18;
      v116 = *(a1 + 112);
      *buf = 136316418;
      *&buf[4] = v26;
      v121 = 2080;
      v122 = "_VCFECFeedbackAnalyzer_PopulateHistogram";
      v123 = 1024;
      v124 = 261;
      v125 = 1024;
      v126 = v9;
      v127 = 2048;
      v128 = v115;
      v129 = 2048;
      v130 = v116;
      _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Histogram has been populated countItems=%d currentTimeDelta=%f _lastComputedVPLR=%2.2f", buf, 0x36u);
    }
  }

  *(a1 + 644) = 0;
  v31 = *v4;
  if (v31 >= 2)
  {
    v32 = v31 - 1;
    v33 = (a1 + 1688);
    v34 = 0.0;
    for (i = 1; i != v31; ++i)
    {
      v36 = a1 + 648 + 1036 * i;
      *(v36 + 1024) = 0;
      v37 = v33;
      v38 = v31 - 1;
      v39 = 0.0;
      do
      {
        v39 = v39 + *v37;
        *(v36 + 1024) = v39;
        v40 = *v37++;
        v34 = v34 + v40;
        --v38;
      }

      while (v38);
      *(a1 + 644) = v34;
      if (v39 == 0.0)
      {
        *(v36 + 1032) = 0;
        *(v36 + 1028) = 0;
      }

      else
      {
        v41 = 0;
        v42 = *(a1 + 16) * v39;
        v43 = 0.0;
        do
        {
          if (v32 == v41)
          {
            break;
          }

          v44 = v33[v41];
          v45 = v41++ + 2;
          v43 = v43 + v44;
          *(v36 + 1032) = v41;
          *(v36 + 1028) = v45;
        }

        while (v43 < v42);
      }

      v33 += 259;
    }

    if (v31 >= 5)
    {
      v46 = 0;
      v47 = (a1 + 5820);
      v48 = 1;
      for (j = 4; j != v31; ++j)
      {
        v50 = *v47;
        if (v50 <= v46)
        {
          if (v50 == 1 || v50 < v46 || *(a1 + 48) > (*(v47 - 1) / v34))
          {
            v51 = vcvtps_s32_f32((v46 / v48) * j);
            if (v50 <= v51)
            {
              LOWORD(v50) = v51;
            }

            *v47 = v50;
          }
        }

        else
        {
          v48 = j;
          v46 = *v47;
        }

        v47 += 259;
      }
    }

    v52 = 0;
    v53 = (a1 + 2712);
    v54 = v32;
    do
    {
      v55 = v52;
      if (v52 >= *v53)
      {
        v55 = *v53;
      }

      if (!v52)
      {
        v55 = *v53;
      }

      if (*v53)
      {
        v52 = v55;
      }

      v53 += 518;
      --v54;
    }

    while (v54);
    v56 = (a1 + 2712);
    do
    {
      if (*v56 >= v52)
      {
        break;
      }

      *v56 = v52;
      v56 += 518;
      --v32;
    }

    while (v32);
  }

  if (*(v4 + 520) == 1)
  {
    v57 = atomic_load(v4 + 129);
    IntValueForKey = VCDefaults_GetIntValueForKey(@"forcedTxRate", v57);
    v59 = v4[131];
    if (v59)
    {
      if (IntValueForKey <= v59)
      {
        if (*(a1 + 5820) >= 4u)
        {
          *(a1 + 5820) = 3;
        }

        if (*(a1 + 3748) >= 2u)
        {
          *(a1 + 3748) = 1;
        }
      }
    }
  }

  v60 = *v4;
  if (v60 >= 2)
  {
    v61 = 0;
    v62 = v60 - 1;
    v63 = (a1 + 2714);
    v64 = 1;
    do
    {
      if (*(v63 - 1))
      {
        ++v61;
      }

      v64 &= *v63 == *(v63 - 1);
      v63 += 518;
      --v62;
    }

    while (v62);
    if ((v64 & 1) == 0)
    {
      v65 = 0;
      v66 = (a1 + 2714);
      for (k = 1; k != v60; ++k)
      {
        v68 = *(v66 - 1);
        if (!v61 || *(v66 - 1))
        {
          v69 = (a1 + 265868 + 2 * v65);
          *v69 = k;
          v69[1] = v68;
          ++v65;
        }

        *v66 = v68;
        v66 += 518;
      }

      *(v4 + 1) = v65;
      *(a1 + 81) = 1;
    }
  }

  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 80) == 1)
    {
      bzero(buf, 0xAF0uLL);
      __sprintf_chk(buf, 0, 0xAF0uLL, "{measuredLoss\t:{");
      if (*v4 >= 2u)
      {
        v76 = (a1 + 2716);
        v77 = 1;
        do
        {
          if (v77 <= 1)
          {
            v78 = "";
          }

          else
          {
            v78 = ",";
          }

          __sprintf_chk(buf, 0, 0xAF0uLL, "%s%s%d:%2d\t", buf, v78, v77++, *v76);
          v76 += 518;
        }

        while (v77 < *v4);
      }

      VRLogfilePrintWithTimestamp(*(a1 + 64), "%s}}\n", v70, v71, v72, v73, v74, v75, buf);
      RedundancyLevelFromPLR = _VCRedundancyControlAlgorithmVideo_GetRedundancyLevelFromPLR(*(a1 + 120));
      v80 = FECUtil_FECPercentageToLevelofProtection(RedundancyLevelFromPLR);
      v81 = FECUtil_ParityGroupTransmissionCountForFECLevel(v80);
      v82 = *v4;
      *(a1 + 128) = v82;
      if (v82 >= 2)
      {
        v83 = (a1 + 133);
        v84 = 1;
        do
        {
          RealNumParity = FECUtil_GetRealNumParity(v84, v80);
          *(v83 - 1) = v84;
          *v83 = RealNumParity * v81;
          v83 += 2;
          ++v84;
        }

        while (v84 < *v4);
      }

      __sprintf_chk(buf, 0, 0xAF0uLL, "{vector\t:{");
      if (*v4 >= 2u)
      {
        v92 = (a1 + 2712);
        v93 = 1;
        do
        {
          if (v93 <= 1)
          {
            v94 = "";
          }

          else
          {
            v94 = ",";
          }

          __sprintf_chk(buf, 0, 0xAF0uLL, "%s%s%d:%2d\t", buf, v94, v93++, v81 * *v92);
          v92 += 518;
        }

        while (v93 < *v4);
      }

      VRLogfilePrintWithTimestamp(*(a1 + 64), "%s}}\n", v86, v87, v88, v89, v90, v91, buf);
      __sprintf_chk(buf, 0, 0xAF0uLL, "{vectorPLR\t:{");
      if (*v4 >= 2u)
      {
        v101 = (a1 + 133);
        v102 = 1;
        do
        {
          if (v102 <= 1)
          {
            v103 = "";
          }

          else
          {
            v103 = ",";
          }

          v104 = *v101;
          v101 += 2;
          __sprintf_chk(buf, 0, 0xAF0uLL, "%s%s%d:%2d\t", buf, v103, v102++, v104);
        }

        while (v102 < *v4);
      }

      VRLogfilePrintWithTimestamp(*(a1 + 64), "%s}}\n", v95, v96, v97, v98, v99, v100, buf);
    }

    else if (*(a1 + 81) == 1)
    {
      bzero(&buf[6], 0xAEAuLL);
      qmemcpy(buf, "-\t-\t-\t", 6);
      if (v60 >= 2)
      {
        v105 = (a1 + 2714);
        v106 = 1;
        do
        {
          __sprintf_chk(buf, 0, 0xAF0uLL, "%s%d\t", buf, *v105);
          ++v106;
          v105 += 518;
        }

        while (v106 < *v4);
      }

      __sprintf_chk(buf, 0, 0xAF0uLL, "%s\t", buf);
      VRLogfilePrintWithTimestamp(*(a1 + 64), "%s\n", v107, v108, v109, v110, v111, v112, buf);
    }
  }

  if (*(a1 + 81))
  {
    memcpy(a2, (a1 + 265866), 0x202uLL);
    v113 = 0;
    *(a1 + 81) = 0;
  }

  else
  {
    v113 = 2150826001;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v117 = VRTraceErrorLogLevelToCSTR();
      v118 = *MEMORY[0x1E6986650];
      v119 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v117;
          v121 = 2080;
          v122 = "VCFECFeedbackAnalyzer_GetFECLevelVector";
          v123 = 1024;
          v124 = 519;
          _os_log_impl(&dword_1DB56E000, v118, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d output not ready", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
      {
        VCFECFeedbackAnalyzer_GetFECLevelVector_cold_1(v117);
      }
    }
  }

  return v113;
}

uint64_t VCFECFeedbackAnalyzer_CleanHistory(uint64_t a1)
{
  if (a1)
  {
    bzero(*(a1 + 88), 16 * *(a1 + 32));
    *(a1 + 82) = 0;
    v2 = *(a1 + 265864);
    if (v2 >= 2)
    {
      v3 = 0;
      v4 = vdupq_n_s64(v2 - 2);
      v5 = (v2 + 6) & 0x1FFF8;
      v6 = (a1 + 5820);
      do
      {
        v7 = vdupq_n_s64(v3);
        v8 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v7, xmmword_1DBD45330)));
        if (vuzp1_s8(vuzp1_s16(v8, *v4.i8), *v4.i8).u8[0])
        {
          *(v6 - 1554) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v8, *&v4), *&v4).i8[1])
        {
          *(v6 - 1036) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v7, xmmword_1DBD45970)))), *&v4).i8[2])
        {
          *(v6 - 518) = 0;
          *v6 = 0;
        }

        v9 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v7, xmmword_1DBD48740)));
        if (vuzp1_s8(*&v4, vuzp1_s16(v9, *&v4)).i32[1])
        {
          v6[518] = 0;
        }

        if (vuzp1_s8(*&v4, vuzp1_s16(v9, *&v4)).i8[5])
        {
          v6[1036] = 0;
        }

        if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v7, xmmword_1DBD48730))))).i8[6])
        {
          v6[1554] = 0;
          v6[2072] = 0;
        }

        v3 += 8;
        v6 += 4144;
      }

      while (v5 != v3);
    }

    return 0;
  }

  else
  {
    VCFECFeedbackAnalyzer_CleanHistory_cold_1();
    return v11;
  }
}

void VCFECFeedbackAnalyzer_UpdateTargetBitrate(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    atomic_store(a2, (a1 + 266380));
  }

  else
  {
    VCFECFeedbackAnalyzer_UpdateTargetBitrate_cold_1();
  }
}

void _VCFECFeedbackAnalyzer_Finalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    LogDump_CloseLog(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {

    free(v3);
  }
}

uint64_t CannedVideoCapture_OnVideoFrame(uint64_t a1, __CVBuffer *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 152);
  pthread_mutex_lock(v6);
  if (v6[1].__opaque[0] == 1)
  {
    v9 = *a3;
    v10 = *(a3 + 16);
    v7 = createSampleBufferWithPixelBuffer(a2, &v9);
    v9 = *a3;
    v10 = *(a3 + 16);
    VCVideoCapture_DistributeVideoFrame(a1, v7, &v9, &v6[1].__opaque[4]);
    FigSampleBufferRelease();
  }

  return pthread_mutex_unlock(v6);
}

uint64_t VCVideoTransmitter_SetAudioSampleTime(uint64_t result, int a2, double a3)
{
  if (result)
  {
    *(result + 104) = a3;
    *(result + 100) = a2;
  }

  return result;
}

uint64_t VCVideoTransmitter_SetMediaQueueSize(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 144);
    if (v1)
    {
      return v1();
    }
  }

  return result;
}

uint64_t VCVideoTransmitter_SetFECRatio(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 128);
    if (v1)
    {
      return v1();
    }
  }

  return result;
}

uint64_t VCVideoTransmitter_EnqueueVideoFrame(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 136);
    if (v4)
    {
      v5 = *a3;
      v6 = *(a3 + 2);
      return v4(result, a2, &v5, a4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VCClientRelayVTPReceiveProc(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
    ;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v2;
      v7 = 2080;
      v8 = "VCClientRelayVTPReceiveProc";
      v9 = 1024;
      v10 = 315;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCCR - VCClientRelayVTPReceiveProc stop!", &v5, 0x1Cu);
    }
  }

  return 0;
}

uint64_t RTPProcessHEVCFragmentationHeader(unsigned __int8 *a1, int a2, unsigned int *a3, int *a4, _WORD *a5, _BYTE *a6, int a7, int *a8)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2 > 0)
  {
    v9 = (*a1 >> 1) & 0x3F;
    if (a8)
    {
      *a8 = v9;
    }

    if (v9 == 49)
    {
      if (a7)
      {
        v10 = 5;
      }

      else
      {
        v10 = 3;
      }

      if (v10 > a2)
      {
        v11 = 2147549199;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            RTPProcessHEVCFragmentationHeader_cold_2();
          }
        }

        return v11;
      }

      v13 = a1[2];
      if (a3)
      {
        *a3 = v13 >> 7;
      }

      if (a4)
      {
        *a4 = (v13 >> 6) & 1;
      }

      if ((a7 & 1) == 0)
      {
        goto LABEL_29;
      }

      v12 = 3;
    }

    else
    {
      if (a3)
      {
        *a3 = 1;
      }

      if (a4)
      {
        *a4 = 1;
      }

      if (!a7 || v9 == 38)
      {
        goto LABEL_29;
      }

      v12 = 2;
    }

    *a5 = bswap32(*&a1[v12]) >> 16;
    *a6 = 1;
LABEL_29:
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v16 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *a5;
          v19 = 136315906;
          v20 = v14;
          v21 = 2080;
          v22 = "RTPProcessHEVCFragmentationHeader";
          v23 = 1024;
          v24 = 103;
          v25 = 1024;
          v26 = v17;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received decoding order is %hu", &v19, 0x22u);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        RTPProcessHEVCFragmentationHeader_cold_1();
      }
    }

    return 0;
  }

  v11 = 2147549199;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPProcessHEVCFragmentationHeader_cold_3();
    }
  }

  return v11;
}

uint64_t RTPProcessHEVCPacket(int a1, _BYTE *a2, BOOL *a3, _WORD *a4, _BYTE *a5, int a6, const __CFAllocator *a7, const __CFAllocator *a8, uint64_t a9, CMBlockBufferRef theBuffer)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = 2147549199;
  targetBBuf = 0;
  v11 = *(a9 + 8);
  if (v11 < 1)
  {
    return v10;
  }

  v15 = *(a9 + 16);
  v16 = (*v15 >> 1) & 0x3F;
  if (v16 != 49)
  {
    v48 = (*v15 >> 1) & 0x3F;
    v49 = a4;
    if (v16 == 48)
    {
      if (v11 != 1)
      {
        *a2 = 1;
        *a3 = 1;
        if (v11 >= 3)
        {
          v17 = (*(a9 + 16) + 2);
          v18 = v11 - 2;
          v19 = 2;
          v20 = 1;
          while (1)
          {
            if (v20)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                VideoUtil_PrintBuffer(v17, "Rx Aggregation Packet", v18);
              }

              if (a6)
              {
                if (v18 == 1)
                {
                  RTPProcessHEVCPacket_cold_11();
                  goto LABEL_89;
                }

                *v49 = bswap32(*(*(a9 + 16) + 2)) >> 16;
                *a5 = 1;
                v17 += 2;
                v19 += 2;
                v18 -= 2;
              }
            }

            if (v18 <= 1)
            {
              RTPProcessHEVCPacket_cold_10();
              goto LABEL_89;
            }

            v22 = *v17;
            v21 = v17 + 2;
            v23 = bswap32(v22);
            v24 = HIWORD(v23);
            v25 = v18 - 2;
            if ((v18 - 2) < HIWORD(v23))
            {
              RTPProcessHEVCPacket_cold_9();
              goto LABEL_89;
            }

            targetBBuf = 0;
            DataPointer = VCBlockBufferUtilities_CreateAndGetDataPointer(a7, 0, 4uLL, a8, 0, 0, 4uLL, 1u, &targetBBuf);
            if (!DataPointer)
            {
              RTPProcessHEVCPacket_cold_8();
              goto LABEL_89;
            }

            *DataPointer = bswap32(v24);
            if (CMBlockBufferAppendBufferReference(theBuffer, targetBBuf, 0, 4uLL, 0))
            {
              RTPProcessHEVCPacket_cold_6();
              goto LABEL_89;
            }

            if (CMBlockBufferAppendBufferReference(theBuffer, *a9, v19 + 2, v24, 0))
            {
              RTPProcessHEVCPacket_cold_7();
              goto LABEL_89;
            }

            if (targetBBuf)
            {
              CFRelease(targetBBuf);
              targetBBuf = 0;
            }

            v20 = 0;
            v19 += 2 + v24;
            v17 = &v21[v24];
            v18 = v25 - v24;
            if (v25 <= v24)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

      RTPProcessHEVCPacket_cold_12();
LABEL_89:
      v10 = *buf;
LABEL_70:
      if (targetBBuf)
      {
        CFRelease(targetBBuf);
      }

      return v10;
    }

    if (v11 == 1)
    {
      RTPProcessHEVCPacket_cold_18();
      goto LABEL_89;
    }

    *a2 = 1;
    *a3 = 1;
    if (a6)
    {
      if (v11 <= 3)
      {
        RTPProcessHEVCPacket_cold_17();
        goto LABEL_89;
      }

      *a4 = bswap32(*(*(a9 + 16) + 2)) >> 16;
      *a5 = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        v30 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *a4;
            *buf = 136315906;
            v54 = v28;
            v55 = 2080;
            v56 = "RTPProcessHEVCPacket";
            v57 = 1024;
            v58 = 304;
            v59 = 1024;
            v60 = v31;
            _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received decoding order is %hu", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          RTPProcessHEVCPacket_cold_13();
        }
      }

      v38 = 4;
    }

    else
    {
      v38 = 2;
    }

    v40 = VCBlockBufferUtilities_CreateAndGetDataPointer(a7, 0, 6uLL, a8, 0, 0, 6uLL, 1u, &targetBBuf);
    if (!v40)
    {
      RTPProcessHEVCPacket_cold_16();
      goto LABEL_89;
    }

    if (a6)
    {
      v41 = -2;
    }

    else
    {
      v41 = 0;
    }

    *v40 = bswap32(*(a9 + 8) + v41);
    v40[4] = **(a9 + 16);
    v40[5] = *(*(a9 + 16) + 1);
    if (CMBlockBufferAppendBufferReference(theBuffer, targetBBuf, 0, 6uLL, 0))
    {
      RTPProcessHEVCPacket_cold_14();
      goto LABEL_89;
    }

    if (CMBlockBufferAppendBufferReference(theBuffer, *a9, v38, *(a9 + 8) - v38, 0))
    {
      RTPProcessHEVCPacket_cold_15();
      goto LABEL_89;
    }

LABEL_59:
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      v44 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          if (v49)
          {
            v45 = *v49;
          }

          else
          {
            v45 = 0;
          }

          *buf = 136316418;
          v54 = v42;
          v55 = 2080;
          v56 = "RTPProcessHEVCPacket";
          v57 = 1024;
          v58 = 326;
          v59 = 1024;
          v60 = v48;
          v61 = 1024;
          v62 = v45;
          v63 = 1024;
          v64 = a6;
          _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received packet with NAL unit type %d, decoding order %u, shouldProcessDecodingOrder %d", buf, 0x2Eu);
        }
      }

      else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        if (v49)
        {
          v46 = *v49;
        }

        else
        {
          v46 = 0;
        }

        *buf = 136316418;
        v54 = v42;
        v55 = 2080;
        v56 = "RTPProcessHEVCPacket";
        v57 = 1024;
        v58 = 326;
        v59 = 1024;
        v60 = v48;
        v61 = 1024;
        v62 = v46;
        v63 = 1024;
        v64 = a6;
        _os_log_debug_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Received packet with NAL unit type %d, decoding order %u, shouldProcessDecodingOrder %d", buf, 0x2Eu);
      }
    }

    v10 = 0;
    goto LABEL_70;
  }

  v27 = 3;
  if (a6)
  {
    v27 = 5;
  }

  if (v11 >= v27)
  {
    v49 = a4;
    v32 = v15[2];
    *a2 = v32 >> 7;
    *a3 = (v32 & 0x40) != 0;
    if (*a2)
    {
      v33 = VCBlockBufferUtilities_CreateAndGetDataPointer(a7, 0, 6uLL, a8, 0, 0, 6uLL, 1u, &targetBBuf);
      if (!v33)
      {
        RTPProcessHEVCPacket_cold_2();
        goto LABEL_89;
      }

      *v33 = bswap32(*(a9 + 8) - 1);
      v33[4] = **(a9 + 16) & 0x81 | (2 * (v32 & 0x3F));
      v33[5] = *(*(a9 + 16) + 1);
      if (CMBlockBufferAppendBufferReference(theBuffer, targetBBuf, 0, 6uLL, 0))
      {
        RTPProcessHEVCPacket_cold_1();
        goto LABEL_89;
      }
    }

    v48 = 49;
    if (a6)
    {
      *v49 = bswap32(*(*(a9 + 16) + 3)) >> 16;
      *a5 = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x1E6986650];
        v36 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = *v49;
            *buf = 136315906;
            v54 = v34;
            v55 = 2080;
            v56 = "RTPProcessHEVCPacket";
            v57 = 1024;
            v58 = 273;
            v59 = 1024;
            v60 = v37;
            _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received decoding order is %hu", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          RTPProcessHEVCPacket_cold_3();
        }
      }

      v39 = 5;
    }

    else
    {
      v39 = 3;
    }

    if (CMBlockBufferAppendBufferReference(theBuffer, *a9, v39, *(a9 + 8) - v39, 0))
    {
      RTPProcessHEVCPacket_cold_4();
      goto LABEL_89;
    }

    goto LABEL_59;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPProcessHEVCPacket_cold_5();
    }
  }

  return v10;
}

BOOL VCAudioBufferList_Allocate(const AudioStreamBasicDescription *a1, int a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_Allocate_cold_3();
    }

    return 0;
  }

  *a3 = 0;
  mChannelsPerFrame = a1->mChannelsPerFrame;
  mFormatFlags = a1->mFormatFlags;
  mBytesPerPacket = a1->mBytesPerPacket;
  if ((mFormatFlags & 0x20) != 0)
  {
    v9 = mChannelsPerFrame;
  }

  else
  {
    v9 = 1;
  }

  if ((mFormatFlags & 0x20) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = a1->mChannelsPerFrame;
  }

  v11 = 16 * (v9 - 1) + 192;
  v12 = v11 + mChannelsPerFrame * a2 * mBytesPerPacket;
  v13 = malloc_type_calloc(1uLL, v11 + mChannelsPerFrame * a2 * mBytesPerPacket, 0x10E0040B136E6C4uLL);
  v23[0] = v13;
  if (v13)
  {
    v14 = v13;
    *v13 = v12;
    v15 = *&a1->mSampleRate;
    v16 = *&a1->mBytesPerPacket;
    *(v13 + 5) = *&a1->mBitsPerChannel;
    *(v13 + 24) = v16;
    *(v13 + 8) = v15;
    if (CMAudioFormatDescriptionCreate(*MEMORY[0x1E695E480], a1, 0, 0, 0, 0, 0, v13 + 6))
    {
      VCAudioBufferList_Allocate_cold_1(v23);
    }

    else
    {
      v17 = a1->mBytesPerPacket * a2;
      *(v14 + 24) = a2;
      *(v14 + 25) = v17;
      if ((a1->mFormatFlags & 0x20) != 0)
      {
        v18 = a1->mChannelsPerFrame;
      }

      else
      {
        v18 = 1;
      }

      *(v14 + 23) = v18;
      v14[104] = 0;
      *(v14 + 136) = vdupq_n_s64(0x7FF8000000000000uLL);
      v14[81] = 0;
      if (v9)
      {
        v20 = &v14[v11];
        v21 = *(v14 + 42);
        v22 = (v14 + 184);
        do
        {
          *v22 = v20;
          ++v21;
          v20 += v17;
          *(v22 - 2) = v10;
          *(v22 - 1) = v17;
          v22 += 2;
          --v9;
        }

        while (v9);
        *(v14 + 42) = v21;
      }

      *a3 = v14;
    }
  }

  else
  {
    VCAudioBufferList_Allocate_cold_2();
  }

  return *a3 != 0;
}

void VCAudioBufferList_Destroy(uint64_t *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 && (v1 = *a1) != 0)
  {
    *a1 = 0;
    v2 = *(v1 + 48);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(v1 + 152) == 1)
    {
      v3 = *(v1 + 160);
      CFAllocatorDeallocate(v3, v1);
      if (v3)
      {

        CFRelease(v3);
      }
    }

    else
    {

      free(v1);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "VCAudioBufferList_Destroy";
      v10 = 1024;
      v11 = 184;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Nothing to do. The audio buffer list is already NULL", &v6, 0x1Cu);
    }
  }
}

BOOL VCAudioBufferList_AllocateFrame(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  *&v6.mSampleRate = *a1;
  *&v6.mBytesPerPacket = v4;
  *&v6.mBitsPerChannel = *(a1 + 32);
  return VCAudioBufferList_Allocate(&v6, v3, a2);
}

void VCAudioBufferList_ZeroMemory(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 168))
    {
      v2 = 0;
      v3 = (a1 + 184);
      do
      {
        bzero(*v3, *(v3 - 1));
        ++v2;
        v3 += 2;
      }

      while (v2 < *(a1 + 168));
    }

    *(a1 + 80) = 0;
    *(a1 + 84) = 0;
    *(a1 + 72) = 1;
    *(a1 + 76) = -1024458752;
    *(a1 + 136) = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_ZeroMemory_cold_1();
    }
  }
}

void VCAudioBufferList_InvalidateStats(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 80) = 0;
    *(a1 + 84) = 0;
    *(a1 + 72) = 1;
    *(a1 + 76) = -1024458752;
    *(a1 + 136) = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_InvalidateStats_cold_1();
    }
  }
}

BOOL VCAudioBufferList_ApplyGain(uint64_t a1, float a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_ApplyGain_cold_2();
    }

    return 0;
  }

  if ((*(a1 + 20) & 0x20) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_ApplyGain_cold_1();
    }

    return 0;
  }

  if (*(a1 + 168))
  {
    v4 = 0;
    v5 = (a1 + 184);
    do
    {
      v6 = *v5;
      if (*(a1 + 20))
      {
        MEMORY[0x1E128D710](v6, 1, &v9, *v5, 1, *(a1 + 88));
      }

      else
      {
        v7 = v9 * 32768.0;
        if (v9 <= 0.0)
        {
          v8 = ((v9 * 32768.0) + -0.5);
          if (v7 < -32768.0)
          {
            LOWORD(v8) = 0x8000;
          }
        }

        else
        {
          v8 = ((v9 * 32768.0) + 0.5);
          if (v7 > 32767.0)
          {
            LOWORD(v8) = 0x7FFF;
          }
        }

        VSMUL_Q15_Portable(v6, v8, *v5, *(a1 + 88));
      }

      ++v4;
      v5 += 2;
    }

    while (v4 < *(a1 + 168));
  }

  return 1;
}

BOOL VCAudioBufferList_Mix(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_Mix_cold_1();
    }

    return 0;
  }

  if (memcmp((a1 + 8), (a2 + 8), 0x28uLL))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_Mix_cold_2();
    }

    return 0;
  }

  v5 = *(a1 + 20);
  if ((v5 & 0x20) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_Mix_cold_3();
    }

    return 0;
  }

  v6 = *(a1 + 88);
  if (v6 == *(a2 + 88))
  {
    if (v6)
    {
      v7 = *(a1 + 168);
      if (v5)
      {
        if (v7)
        {
          v19 = 0;
          v20 = (a1 + 184);
          v21 = (a2 + 184);
          do
          {
            v22 = *(v20 - 1) >> 2;
            v24 = *v20;
            v20 += 2;
            v23 = v24;
            v25 = *v21;
            v21 += 2;
            MEMORY[0x1E128D6A0](v23, 1, v25, 1, v23, 1, v22);
            ++v19;
          }

          while (v19 < *(a1 + 168));
        }
      }

      else if (v7)
      {
        v8 = 0;
        v9 = (a1 + 184);
        v10 = (a2 + 184);
        do
        {
          v11 = *(v9 - 1) >> 1;
          v13 = *v9;
          v9 += 2;
          v12 = v13;
          v14 = *v10;
          v10 += 2;
          VADD_Q15_Portable(v12, v14, v12, v11);
          ++v8;
        }

        while (v8 < *(a1 + 168));
      }

      v26 = *(a1 + 104);
      if (v26 != 255)
      {
        v27 = *(a2 + 104);
        v28 = v26 <= v27 ? *(a2 + 104) : *(a1 + 104);
        v29 = !*(a2 + 104) || v26 == 0;
        LOBYTE(v26) = v29 ? 0 : v28;
        if (v27 == 255)
        {
          LOBYTE(v26) = -1;
        }
      }

      *(a1 + 104) = v26;
      v30 = *(a1 + 136);
      if (v30 <= *(a2 + 136))
      {
        v30 = *(a2 + 136);
      }

      *(a1 + 136) = v30;
      if (*(a2 + 81) == 1)
      {
        v31 = *(a1 + 81);
      }

      else
      {
        v31 = 0;
      }

      *(a1 + 81) = v31 & 1;
      *(a1 + 72) = 0;
      v32 = *(a2 + 84);
      if (v32)
      {
        v33 = *(a1 + 84);
        v34 = *(a1 + 80);
        if (v33)
        {
          if (v32 >= v33)
          {
            v35 = *(a1 + 84);
          }

          else
          {
            v35 = *(a2 + 84);
          }

          if (!*(a2 + 80))
          {
            v35 = 0;
          }

          if (v32 <= v33)
          {
            v32 = *(a1 + 84);
          }

          if (*(a2 + 80))
          {
            v32 = 0;
          }

          v36 = (v34 & 1) == 0;
          if (*(a1 + 80))
          {
            v37 = 1;
          }

          else
          {
            v37 = *(a2 + 80);
          }

          if (!v36)
          {
            v32 = v35;
          }

          *(a1 + 80) = v37;
          *(a1 + 84) = v32;
          return 1;
        }

        if (*(a1 + 80))
        {
          v32 = 0;
        }

        *(a1 + 84) = v32;
        if (v34)
        {
          v40 = 1;
        }

        else
        {
          v40 = *(a2 + 80);
        }

        v41 = v40 & 1;
      }

      else
      {
        v38 = *(a2 + 80);
        if (v38)
        {
          v39 = 0;
        }

        else
        {
          v39 = *(a1 + 84);
        }

        *(a1 + 84) = v39;
        v41 = *(a1 + 80) | v38;
      }

      *(a1 + 80) = v41;
    }

    return 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v17 = *(a2 + 88);
    v18 = *(a1 + 88);
    v42 = 136316162;
    v43 = v15;
    v44 = 2080;
    v45 = "VCAudioBufferList_Mix";
    v46 = 1024;
    v47 = 280;
    v48 = 1024;
    v49 = v17;
    v50 = 1024;
    v51 = v18;
    _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d Sample count mismatch: source=%u dest=%u don't match", &v42, 0x28u);
  }

  return 0;
}

BOOL VCAudioBufferList_MixToMono(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_MixToMono_cold_1();
    }

    return 0;
  }

  if ((*(a2 + 20) & 0x20) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_MixToMono_cold_4();
    }

    return 0;
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_MixToMono_cold_3();
    }

    return 0;
  }

  v5 = *(a1 + 88);
  if (v5 != *(a2 + 88))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v14 = *(a2 + 88);
      v15 = *(a1 + 88);
      v18 = 4.8154e-34;
      v19 = v12;
      v20 = 2080;
      v21 = "VCAudioBufferList_MixToMono";
      v22 = 1024;
      v23 = 325;
      v24 = 1024;
      v25 = v14;
      v26 = 1024;
      v27 = v15;
      _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Sample count sourceMultiChannelBufferList=%u and destMonoBufferList=%u don't match", &v18, 0x28u);
    }

    return 0;
  }

  v7 = (a2 + 168);
  v6 = *(a2 + 168);
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_MixToMono_cold_2(v16, v7, v17);
    }

    return 0;
  }

  v8 = 0;
  v18 = 1.0 / v6;
  v9 = (a2 + 184);
  do
  {
    v10 = *v9;
    v9 += 2;
    MEMORY[0x1E128D6A0](*(a1 + 184), 1, v10, 1, *(a1 + 184), 1, v5);
    ++v8;
  }

  while (v8 < *v7);
  MEMORY[0x1E128D710](*(a1 + 184), 1, &v18, *(a1 + 184), 1, v5);
  if (*(a1 + 81))
  {
    v11 = *(a2 + 81);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 81) = v11 & 1;
  return 1;
}

BOOL VCAudioBufferList_MonoToMultiChannel(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_MonoToMultiChannel_cold_1();
    }

    return 0;
  }

  if ((*(a2 + 20) & 0x20) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_MonoToMultiChannel_cold_3();
    }

    return 0;
  }

  v5 = *(a2 + 24);
  v13 = *(a2 + 8);
  v14 = v5;
  v15 = *(a2 + 40);
  HIDWORD(v14) = *(a2 + 36);
  if (memcmp((a2 + 8), &v13, 0x28uLL))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_MonoToMultiChannel_cold_2();
    }

    return 0;
  }

  if (*(a2 + 168) != 1 || *(a1 + 168) < 2u)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v8 = *(a2 + 168);
      v9 = *(a1 + 168);
      *buf = 136316162;
      v17 = v6;
      v18 = 2080;
      v19 = "VCAudioBufferList_MonoToMultiChannel";
      v20 = 1024;
      v21 = 369;
      v22 = 1024;
      v23 = v8;
      v24 = 1024;
      v25 = v9;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid number of source buffers, expected mono source, and multi-channel destination, but source->mNumberBuffers=%u dest->mNumberBuffers=%u", buf, 0x28u);
    }

    return 0;
  }

  v10 = 0;
  v11 = (a1 + 184);
  do
  {
    memcpy(*v11, *(a2 + 184), *(v11 - 1));
    ++v10;
    v11 += 2;
  }

  while (v10 < *(a1 + 168));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a2 + 108);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 108) = v12;
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 144) = *(a2 + 144);
  return 1;
}

uint64_t VCAudioBufferList_GetSampleFormat(uint64_t a1)
{
  if (a1)
  {
    return a1 + 8;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_GetSampleFormat_cold_1();
    }
  }

  return 0;
}

uint64_t VCAudioBufferList_AppendSamples(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioBufferList_AppendSamples_cold_1();
      }
    }

    return 0;
  }

  LODWORD(v5) = a4;
  if (memcmp((a1 + 8), (a2 + 8), 0x28uLL))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *(a2 + 8);
        v11 = *(a1 + 8);
        v24 = 136316162;
        v25 = v8;
        v26 = 2080;
        v27 = "VCAudioBufferList_AppendSamples";
        v28 = 1024;
        v29 = 396;
        v30 = 2048;
        v31 = v10;
        v32 = 2048;
        v33 = v11;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Formats don't match: source=%f dest=%f", &v24, 0x30u);
      }
    }

    return 0;
  }

  v13 = *(a2 + 88) - a3;
  v14 = *(a1 + 88);
  if (v13 >= *(a1 + 96) - v14)
  {
    v13 = *(a1 + 96) - v14;
  }

  if (v13 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = v13;
  }

  if (v5)
  {
    *(a1 + 64) = a3 / *(a2 + 8) + *(a2 + 64) - v14 / *(a1 + 8);
    *(a1 + 56) = a3 - v14 + *(a2 + 56);
    if (*(a1 + 168))
    {
      v15 = 0;
      v16 = (a1 + 184);
      v17 = (a2 + 184);
      do
      {
        v19 = *v16;
        v16 += 2;
        v18 = v19;
        v20 = *v17;
        v17 += 2;
        memcpy((v18 + (*(a1 + 24) * *(a1 + 88))), (v20 + *(a2 + 24) * a3), (*(a1 + 24) * v5));
        ++v15;
      }

      while (v15 < *(a1 + 168));
    }

    _VCAudioBufferList_ComputeVoiceActivityAppend(a1, a2, a3);
    VCAudioBufferList_SetSampleCount(a1, *(a1 + 88) + v5);
    *(a1 + 72) = 0;
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 81) = *(a2 + 81);
    if (v5 < *(a2 + 88) && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      v23 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 136315650;
          v25 = v21;
          v26 = 2080;
          v27 = "VCAudioBufferList_AppendSamples";
          v28 = 1024;
          v29 = 428;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unable to append all the source samples!", &v24, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        VCAudioBufferList_AppendSamples_cold_2();
      }
    }
  }

  return v5;
}

uint64_t _VCAudioBufferList_ComputeVoiceActivityAppend(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 84);
  v4 = *(result + 88);
  if (*(a2 + 88) - a3 >= *(result + 96) - v4)
  {
    v5 = *(result + 96) - v4;
  }

  else
  {
    v5 = *(a2 + 88) - a3;
  }

  if (v3 >= a3)
  {
    v6 = v3 - a3;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 80);
  if (v3 <= a3 || v6 >= v5)
  {
    v7 = v7 != v3 > a3;
    v9 = *(result + 80);
    if (v9 == v7)
    {
      return result;
    }

    if (!((*(result + 84) == 0) | v9 & 1))
    {
      v4 = 0;
    }
  }

  else if (*(a2 + 80))
  {
    if (*(result + 84))
    {
      if (*(result + 80))
      {
        v4 = *(result + 84);
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 += v6;
      if (*(result + 80))
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 += v6;
  }

  *(result + 84) = v4;
  *(result + 80) = v7;
  return result;
}

uint64_t VCAudioBufferList_SetSampleCount(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = *(result + 96);
    if (v2 >= a2)
    {
      v2 = a2;
    }

    v3 = *(result + 72) == 1 && *(result + 88) == v2;
    *(result + 72) = v3;
    *(result + 88) = v2;
    v4 = *(result + 168);
    if (v4)
    {
      v5 = *(result + 24) * v2;
      v6 = (v4 + 3) & 0x1FFFFFFFCLL;
      v7 = vdupq_n_s64(v4 - 1);
      v8 = xmmword_1DBD45970;
      v9 = xmmword_1DBD45330;
      v10 = (result + 228);
      v11 = vdupq_n_s64(4uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v7, v9));
        if (vuzp1_s16(v12, *v7.i8).u8[0])
        {
          *(v10 - 12) = v5;
        }

        if (vuzp1_s16(v12, *&v7).i8[2])
        {
          *(v10 - 8) = v5;
        }

        if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
        {
          *(v10 - 4) = v5;
          *v10 = v5;
        }

        v8 = vaddq_s64(v8, v11);
        v9 = vaddq_s64(v9, v11);
        v10 += 16;
        v6 -= 4;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t VCAudioBufferList_AppendSilence(uint64_t a1, int a2, unsigned int a3, double a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 96) - v6;
    if (v7 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!v6)
      {
        *(a1 + 64) = a4;
        *(a1 + 56) = a2;
        *(a1 + 80) = 0;
        *(a1 + 84) = 0;
        *(a1 + 104) = 1;
        *(a1 + 136) = 0;
      }

      if (*(a1 + 168))
      {
        v9 = 0;
        v10 = (a1 + 184);
        do
        {
          v11 = *v10;
          v10 += 2;
          bzero((v11 + (*(a1 + 24) * *(a1 + 88))), (*(a1 + 24) * v8));
          ++v9;
        }

        while (v9 < *(a1 + 168));
        v6 = *(a1 + 88);
      }

      VCAudioBufferList_SetSampleCount(a1, v6 + v8);
      *(a1 + 72) = 0;
      if (v7 < a3 && VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        v14 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315650;
            v17 = v12;
            v18 = 2080;
            v19 = "VCAudioBufferList_AppendSilence";
            v20 = 1024;
            v21 = 468;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unable to append all the source samples!", &v16, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          VCAudioBufferList_AppendSilence_cold_1();
        }
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioBufferList_AppendSilence_cold_2();
      }
    }

    return 0;
  }

  return v8;
}

BOOL VCAudioBufferList_ReplaceSamples(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_ReplaceSamples_cold_1();
    }

    return 0;
  }

  if (memcmp((a1 + 8), (a2 + 8), 0x28uLL))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v9 = *(a2 + 8);
      v10 = *(a1 + 8);
      v20 = 136316162;
      v21 = v6;
      v22 = 2080;
      v23 = "VCAudioBufferList_ReplaceSamples";
      v24 = 1024;
      v25 = 480;
      v26 = 2048;
      v27 = v9;
      v28 = 2048;
      v29 = v10;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Formats don't match: source=%f dest=%f", &v20, 0x30u);
    }

    return 0;
  }

  v11 = *(a2 + 88);
  v12 = v11 >= a3;
  v13 = v11 - a3;
  if (!v12 || *(a1 + 88) > v13)
  {
    return 0;
  }

  if (*(a1 + 168))
  {
    v14 = 0;
    v15 = (a1 + 184);
    v16 = (a2 + 184);
    do
    {
      v18 = *v15;
      v15 += 2;
      v17 = v18;
      v19 = *v16;
      v16 += 2;
      memcpy(v17, (v19 + *(a2 + 24) * a3), (*(a1 + 24) * *(a1 + 88)));
      ++v14;
    }

    while (v14 < *(a1 + 168));
  }

  _VCAudioBufferList_ComputeVoiceActivityAppend(a1, a2, a3);
  *(a1 + 72) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 81) = *(a2 + 81);
  return 1;
}

uint64_t VCAudioBufferList_Shift(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v3 = *(a1 + 88);
    if (v3 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = v3;
    }

    v5 = v3 - v4;
    if (v3 > a2 && *(a1 + 168))
    {
      v6 = 0;
      v7 = (a1 + 184);
      do
      {
        v8 = *v7;
        v7 += 2;
        memmove(v8, &v8[(*(a1 + 24) * v4)], *(a1 + 24) * v5);
        ++v6;
      }

      while (v6 < *(a1 + 168));
      v5 = *(a1 + 88) - v4;
    }

    *(a1 + 56) += v4;
    *(a1 + 64) = *(a1 + 64) + v4 / *(a1 + 8);
    VCAudioBufferList_SetSampleCount(a1, v5);
    *(a1 + 72) = 0;
    v9 = *(a1 + 84);
    v10 = *(a1 + 88);
    v11 = v9 >= v4;
    v12 = v9 - v4;
    if (!v11)
    {
      v12 = 0;
    }

    *(a1 + 84) = v12;
    if (!v10)
    {
      *(a1 + 80) = 0;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioBufferList_Shift_cold_1();
      }
    }

    return 0;
  }

  return v4;
}

BOOL VCAudioBufferList_Convert(uint64_t a1, uint64_t a2, AudioConverterRef inAudioConverter)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = a1;
  if (a1 && a2)
  {
    v5 = *(a1 + 104);
    *(a2 + 88) = *(a2 + 96);
    *(a2 + 104) = v5;
    *(a2 + 136) = *(a1 + 136);
    v6 = AudioConverterFillComplexBuffer(inAudioConverter, VCAudioBufferListConverterCallback, v19, (a2 + 88), (a2 + 168), 0);
    v8 = v6 == 0;
    if (v6)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCAudioBufferList_Convert_cold_2();
        }
      }

      LODWORD(v9) = *(a2 + 96);
      v11 = v9;
      LODWORD(v10) = *(a1 + 88);
      v12 = *(a2 + 8) * v10 / *(a1 + 8);
      if (v12 <= v11)
      {
        v11 = v12;
      }

      *(a2 + 88) = v11;
      if (*(a2 + 168))
      {
        v13 = 0;
        v14 = (a2 + 184);
        do
        {
          v15 = (*(a2 + 24) * *(a2 + 88));
          *(v14 - 1) = v15;
          v16 = *v14;
          v14 += 2;
          bzero(v16, v15);
          ++v13;
        }

        while (v13 < *(a2 + 168));
      }

      *(a2 + 84) = 0;
      *(a2 + 80) = 0;
      v17 = 1;
    }

    else
    {
      *(a2 + 76) = *(a1 + 76);
      LODWORD(v7) = *(a1 + 84);
      *(a2 + 84) = (*(a2 + 8) * v7 / *(a1 + 8));
      *(a2 + 80) = *(a1 + 80);
      v17 = *(a1 + 104);
    }

    *(a2 + 104) = v17;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioBufferList_Convert_cold_1();
      }
    }

    return 0;
  }

  return v8;
}

uint64_t VCAudioBufferListConverterCallback(uint64_t a1, int *a2, unsigned int *a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3 && a5)
  {
    v8 = *a5;
    if (*a5)
    {
      if (v8[42] == *a3)
      {
        v9 = (v8[45] / v8[6]);
        if (v9 < *a2 && VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v21 = *a2;
            v22 = 136316162;
            v23 = v10;
            v24 = 2080;
            v25 = "VCAudioBufferListConverterCallback";
            v26 = 1024;
            v27 = 567;
            v28 = 1024;
            v29 = v21;
            v30 = 2048;
            v31 = v9;
            _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Insufficent input samples: needed = %d, available = %lu", &v22, 0x2Cu);
          }
        }

        *a2 = v9;
        v12 = *a3;
        if (v12)
        {
          v13 = v8 + 46;
          v14 = a3 + 4;
          do
          {
            *v14 = *v13;
            *(v14 - 1) = *(v13 - 1);
            v13 += 2;
            v14 += 2;
            --v12;
          }

          while (v12);
        }

        v15 = 0;
        *a5 = 0;
      }

      else
      {
        v15 = 2003329396;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v19 = v8[42];
            v20 = *a3;
            v22 = 136316162;
            v23 = v16;
            v24 = 2080;
            v25 = "VCAudioBufferListConverterCallback";
            v26 = 1024;
            v27 = 560;
            v28 = 1024;
            v29 = v19;
            v30 = 1024;
            LODWORD(v31) = v20;
            _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d Number of buffers in sample buffer and io data do not match. inAudioBuffer=%d, ioData=%d.", &v22, 0x28u);
          }
        }
      }
    }

    else
    {
      *a2 = 0;
      return 4294967201;
    }
  }

  else
  {
    v15 = 2003329396;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioBufferListConverterCallback_cold_1();
      }
    }
  }

  return v15;
}

uint64_t VCAudioBufferList_GetAudioBufferList(uint64_t a1)
{
  if (a1)
  {
    return a1 + 168;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_GetAudioBufferList_cold_1();
    }
  }

  return 0;
}

uint64_t VCAudioBufferList_GetBufferAtIndex(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v4[3] = *MEMORY[0x1E69E9840];
  memset(v4, 0, 24);
  if (VCAudioBufferList_GetSizedBufferAtIndex(a1, a2, a3, v4))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

BOOL VCAudioBufferList_GetSizedBufferAtIndex(uint64_t a1, unsigned int a2, _DWORD *a3, void *a4)
{
  if (a1 && *(a1 + 168) > a2)
  {
    if (a3)
    {
      *a3 = *(a1 + 88);
    }

    v4 = a1 + 16 * a2;
    v5 = *(v4 + 184);
    v6 = *(v4 + 180);
    *a4 = v5;
    a4[1] = v6;
    a4[2] = v6;
    return 1;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioBufferList_GetSizedBufferAtIndex_cold_1();
    }

    return 0;
  }
}

void VCAudioBufferList_Reset(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 20) & 0x20) != 0)
    {
      v2 = 1;
    }

    else
    {
      v2 = *(a1 + 36);
    }

    v3 = *(a1 + 168);
    *(a1 + 72) = 0;
    VCAudioBufferList_SetSampleCount(a1, 0);
    *(a1 + 80) = 0;
    *(a1 + 84) = 0;
    *(a1 + 104) = 0;
    v4 = MEMORY[0x1E6960C70];
    *(a1 + 108) = *MEMORY[0x1E6960C70];
    *(a1 + 124) = *(v4 + 16);
    *(a1 + 132) = 0;
    *(a1 + 136) = vdupq_n_s64(0x7FF8000000000000uLL);
    v5 = *(a1 + 168);
    if (v5)
    {
      v6 = a1 + 16 * (v3 - 1) + 192;
      v7 = *(a1 + 100);
      v8 = (a1 + 184);
      do
      {
        *v8 = v6;
        v6 += v7;
        *(v8 - 2) = v2;
        *(v8 - 1) = v7;
        v8 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_Reset_cold_1();
    }
  }
}

void VCAudioBufferList_ResetDataPointers(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 20) & 0x20) != 0)
    {
      v2 = *(a1 + 36);
    }

    else
    {
      v2 = 1;
    }

    LODWORD(v3) = *(a1 + 168);
    if (v3 != v2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 168);
          v7 = *(a1 + 36);
          v11 = 136316162;
          v12 = v4;
          v13 = 2080;
          v14 = "VCAudioBufferList_ResetDataPointers";
          v15 = 1024;
          v16 = 702;
          v17 = 1024;
          v18 = v6;
          v19 = 1024;
          v20 = v7;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Number of buffers is incorrect. mNumberBuffers=%u mChannelsPerFrame=%u.", &v11, 0x28u);
        }
      }

      LODWORD(v3) = *(a1 + 168);
    }

    if (v3)
    {
      v8 = a1 + 16 * (v3 - 1) + 192;
      v9 = *(a1 + 100);
      v3 = v3;
      v10 = (a1 + 184);
      do
      {
        *v10 = v8;
        v10 += 2;
        v8 += v9;
        --v3;
      }

      while (v3);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_ResetDataPointers_cold_1();
    }
  }
}

uint64_t VCAudioBufferList_ResampleAppend(uint64_t a1, uint64_t a2, int a3, OpaqueAudioConverter *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v48;
    v8 = 1;
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](a1);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFF0));
  if (v8)
  {
LABEL_5:
    v11 = 8 * v8;
    memset(v10, 170, 8 * v8);
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:
  bzero(v10, v11);
  if (!a1 || !a4 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_50;
    }

    v40 = VRTraceErrorLogLevelToCSTR();
    v41 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *buf = 136316418;
    v52 = v40;
    v53 = 2080;
    v54 = "VCAudioBufferList_ResampleAppend";
    v55 = 1024;
    v56 = 746;
    v57 = 2048;
    *v58 = a2;
    *&v58[8] = 2048;
    v59 = a1;
    v60 = 2048;
    v61 = a4;
    v42 = " [%s] %s:%d Invalid input parameter. inSampleBuffer=%p outSampleBuffer=%p converter=%p";
    v43 = v41;
    v44 = 58;
    goto LABEL_53;
  }

  v13 = *(a2 + 88);
  LODWORD(v12) = *(a1 + 88);
  v14 = (*(a2 + 8) * v12 / *(a1 + 8));
  v15 = v13 + v14;
  v16 = *(a2 + 96);
  if (v13 + v14 > v16)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_50;
    }

    v45 = VRTraceErrorLogLevelToCSTR();
    v46 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    v47 = *(a2 + 96);
    *buf = 136316162;
    v52 = v45;
    v53 = 2080;
    v54 = "VCAudioBufferList_ResampleAppend";
    v55 = 1024;
    v56 = 751;
    v57 = 1024;
    *v58 = v15;
    *&v58[4] = 1024;
    *&v58[6] = v47;
    v42 = " [%s] %s:%d Unable to resample. Needed capacity=%d capacity=%d";
    v43 = v46;
    v44 = 40;
LABEL_53:
    _os_log_error_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_ERROR, v42, buf, v44);
LABEL_50:
    v35 = 0;
    v15 = 0;
LABEL_43:
    VCAudioBufferList_SetSampleCount(a2, v15);
    return v35;
  }

  if (*(a1 + 92) == *(a2 + 92))
  {
    *(a2 + 96) = v16 - v13;
    v17 = *(a2 + 168);
    if (v17)
    {
      v18 = *(a2 + 24);
      v19 = (v18 * v13);
      v20 = v18 * v14;
      v21 = (a2 + 184);
      v22 = v10;
      do
      {
        v23 = *v21;
        *v22++ = *v21;
        *v21 = v23 + v19;
        *(v21 - 1) = v20;
        v21 += 2;
        --v17;
      }

      while (v17);
    }

    if (VCAudioBufferList_Convert(a1, a2, a4))
    {
      *(a2 + 96) = v16;
      v24 = *(a2 + 168);
      if (v24)
      {
        v25 = (a2 + 184);
        do
        {
          v26 = *v10++;
          *v25 = v26;
          v25 += 2;
          --v24;
        }

        while (v24);
      }

      if (v13)
      {
        *(a2 + 72) = 0;
        v27 = *(a2 + 104);
        if (v27 != 255)
        {
          v28 = *(a1 + 104);
          v29 = v27 <= v28 ? *(a1 + 104) : *(a2 + 104);
          v30 = !*(a1 + 104) || v27 == 0;
          LOBYTE(v27) = v30 ? 0 : v29;
          if (v28 == 255)
          {
            LOBYTE(v27) = -1;
          }
        }

        *(a2 + 104) = v27;
        v31 = *(a2 + 136);
        if (v31 <= *(a1 + 136))
        {
          v31 = *(a1 + 136);
        }

        *(a2 + 136) = v31;
        if (*(a1 + 81) == 1)
        {
          v32 = *(a2 + 81);
        }

        else
        {
          v32 = 0;
        }

        v36 = v32 & 1;
      }

      else
      {
        *(a2 + 72) = *(a1 + 72);
        *(a2 + 76) = *(a1 + 76);
        *(a2 + 64) = *(a1 + 64);
        *(a2 + 56) = a3;
        *(a2 + 104) = *(a1 + 104);
        *(a2 + 136) = *(a1 + 136);
        v36 = *(a1 + 81);
      }

      *(a2 + 81) = v36;
      v35 = 1;
    }

    else
    {
      VCAudioBufferList_ResampleAppend_cold_1(&v50, buf);
      v35 = v50;
      v15 = *buf;
    }

    goto LABEL_43;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v38 = *(a1 + 92);
      v39 = *(a2 + 92);
      *buf = 136316162;
      v52 = v33;
      v53 = 2080;
      v54 = "VCAudioBufferList_ResampleAppend";
      v55 = 1024;
      v56 = 754;
      v57 = 1024;
      *v58 = v38;
      *&v58[4] = 1024;
      *&v58[6] = v39;
      _os_log_error_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid channel count. inSampleBuffer=%d outSampleBuffer=%d", buf, 0x28u);
    }
  }

  return 0;
}

void VCAudioBufferList_InvalidateAveragePower(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 72) = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_InvalidateAveragePower_cold_1();
    }
  }
}

uint64_t VCAudioBufferList_SetTime(uint64_t result, int a2, double a3)
{
  if (result)
  {
    *(result + 64) = a3;
    *(result + 56) = a2;
  }

  return result;
}

uint64_t VCAudioBufferList_GetTimestamp(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_GetTimestamp_cold_1();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t VCAudioBufferList_SetTimestamp(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

void VCAudioBufferList_GetAudioTimestamp(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1)
  {
    v2 = *(a1 + 64);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(a1 + 56);
    *a2 = *&v2;
    *(a2 + 56) = 3;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_GetAudioTimestamp_cold_1();
    }
  }
}

uint64_t VCAudioBufferList_SetHostTimeJumpSize(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

double VCAudioBufferList_GetHostTimeJumpSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 144);
  }

  v1 = 0.0;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_GetHostTimeJumpSize_cold_1();
    }
  }

  return v1;
}

double VCAudioBufferList_GetHostTime(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 64);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_GetHostTime_cold_1();
    }
  }

  return NAN;
}

uint64_t VCAudioBufferList_GetVoiceActivity(uint64_t a1)
{
  if (a1)
  {
    return (*(a1 + 80) & 1) != 0 || *(a1 + 84) != 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioBufferList_GetVoiceActivity_cold_1();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

void VCAudioBufferList_SetVoiceActivity(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 80) = a2 != 0;
    *(a1 + 84) = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_SetVoiceActivity_cold_1();
    }
  }
}

uint64_t VCAudioBufferList_GetSampleCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 88);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCAudioBufferList_GetSampleCount_cold_1();
  }

  return 0;
}

uint64_t VCAudioBufferList_GetSampleCapacity(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 96);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCAudioBufferList_GetSampleCapacity_cold_1();
  }

  return 0;
}

uint64_t VCAudioBufferList_GetChannelCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 92);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCAudioBufferList_GetChannelCount_cold_1();
  }

  return 0;
}

void VCAudioBufferList_SetSilenceInQueue(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 81) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_SetSilenceInQueue_cold_1();
    }
  }
}

uint64_t VCAudioBufferList_IsSilenceInQueue(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 81);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioBufferList_IsSilenceInQueue_cold_1();
      }
    }

    v1 = 0;
  }

  return v1 & 1;
}

float VCAudioBufferList_GetAveragePower(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 72))
    {
      return *(a1 + 76);
    }

    if (*(a1 + 20))
    {
      __C = NAN;
      vDSP_rmsqv(*(a1 + 184), 1, &__C, (*(a1 + 180) / *(a1 + 24)));
      v2 = log10(__C) * 20.0;
      if (v2 <= -120.0)
      {
        v2 = -120.0;
      }

      v3 = v2;
      *(a1 + 76) = v3;
      *(a1 + 72) = 1;
      return *(a1 + 76);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_GetAveragePower_cold_1();
    }
  }

  return NAN;
}

void VCAudioBufferList_SetAveragePower(uint64_t a1, float a2)
{
  if (a1)
  {
    *(a1 + 72) = 1;
    *(a1 + 76) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_SetAveragePower_cold_1();
    }
  }
}

uint64_t VCAudioBufferList_GetSerializedSize(unsigned int *a1)
{
  if (a1)
  {
    return *a1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_GetSerializedSize_cold_1();
    }
  }

  return 0;
}

CFAllocatorRef VCAudioBufferList_CreateSampleBufferAllocator()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 0;
  v2[2] = xmmword_1DBD50438;
  v2[3] = unk_1DBD50448;
  v2[4] = xmmword_1DBD50458;
  v2[0] = xmmword_1DBD50418;
  v2[1] = unk_1DBD50428;
  VCAllocatorMultiQueue_Create(*MEMORY[0x1E695E480], "VCAudioBufferListSampleBufferAllocator", 0xAu, v2, &v1);
  return v1;
}

CMSampleBufferRef VCAudioBufferList_CreateSampleBufferWithFormatWithAllocator(uint64_t a1, const opaqueCMFormatDescription *a2, const __CFAllocator *a3, const __CFAllocator *a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  memset(&v12, 170, sizeof(v12));
  CMTimeMakeWithSeconds(&v12, *(a1 + 64), *(a1 + 8));
  v8 = *(a1 + 88);
  presentationTimeStamp = v12;
  if (CMAudioSampleBufferCreateWithPacketDescriptions(a3, 0, 0, 0, 0, a2, v8, &presentationTimeStamp, 0, v13))
  {
    VCAudioBufferList_CreateSampleBufferWithFormatWithAllocator_cold_1();
  }

  else
  {
    if (!CMSampleBufferSetDataBufferFromAudioBufferList(v13[0], a3, a4, 0, (a1 + 168)))
    {
      v9 = v13[0];
      presentationTimeStamp = v12;
      CMSampleBufferSetOutputPresentationTimeStamp(v13[0], &presentationTimeStamp);
      return v9;
    }

    VCAudioBufferList_CreateSampleBufferWithFormatWithAllocator_cold_2();
  }

  if (v13[0])
  {
    CFRelease(v13[0]);
  }

  return 0;
}

uint64_t VCAudioBufferList_GetPriority(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 104);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_GetPriority_cold_1();
    }
  }

  return 1;
}

void VCAudioBufferList_SetPriority(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 104) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_SetPriority_cold_1();
    }
  }
}

void VCAudioBufferList_InvalidateNetworkTimestamp(uint64_t a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E6960C70];
    *(a1 + 108) = *MEMORY[0x1E6960C70];
    *(a1 + 124) = *(v1 + 16);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_InvalidateNetworkTimestamp_cold_1();
    }
  }
}

void VCAudioBufferList_SetNetworkTimestamp(uint64_t a1, __int128 *a2)
{
  if (a1 && a2)
  {
    v2 = *a2;
    *(a1 + 124) = *(a2 + 2);
    *(a1 + 108) = v2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_SetNetworkTimestamp_cold_1();
    }
  }
}

void VCAudioBufferList_GetNetworkTimestamp(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *a2 = *(a1 + 108);
    v3 = *(a1 + 124);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioBufferList_GetNetworkTimestamp_cold_1();
      }
    }

    v4 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    v3 = *(v4 + 16);
  }

  *(a2 + 16) = v3;
}

void VCAudioBufferList_SetSamplesAreLate(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 132) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_SetSamplesAreLate_cold_1();
    }
  }
}

uint64_t VCAudioBufferList_GetSamplesAreLate(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 132);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioBufferList_GetSamplesAreLate_cold_1();
      }
    }

    v1 = 0;
  }

  return v1 & 1;
}

double VCAudioBufferList_GetVoiceProbability(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 136);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_GetVoiceProbability_cold_1();
    }
  }

  return NAN;
}

void VCAudioBufferList_SetVoiceProbability(uint64_t a1, double a2)
{
  if (a1)
  {
    *(a1 + 136) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioBufferList_SetVoiceProbability_cold_1();
    }
  }
}

uint64_t VCNetworkAgentCell_AddCellularAssertion()
{
  v18 = *MEMORY[0x1E69E9840];
  if (_VCNetworkAgentCell_SharedInstance_onceToken != -1)
  {
    VCNetworkAgentCell_AddCellularAssertion_cold_1();
  }

  v0 = _VCNetworkAgentCell_SharedInstance_sharedInstance;
  VCObject_Lock(_VCNetworkAgentCell_SharedInstance_sharedInstance);
  if (!*(v0 + 188) && ([*(v0 + 192) addNetworkAgentToInterfaceNamed:*(v0 + 200)] & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCNetworkAgentCell_AddCellularAssertion_cold_2();
    }
  }

  ++*(v0 + 188);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v1 = VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v0 + 188);
      v4 = "Overwrite cellular as network status bar icon";
      if (v3 != 1)
      {
        v4 = "";
      }

      v6 = 136316418;
      v7 = v1;
      v8 = 2080;
      v9 = "VCNetworkAgentCell_AddCellularAssertion";
      v10 = 1024;
      v11 = 130;
      v12 = 2048;
      v13 = v0;
      v14 = 2080;
      v15 = v4;
      v16 = 1024;
      v17 = v3;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d instance=%p %s refcount = %d", &v6, 0x36u);
    }
  }

  return VCObject_Unlock(v0);
}

uint64_t VCNetworkAgentCell_RemoveCellularAssertion()
{
  v24 = *MEMORY[0x1E69E9840];
  if (_VCNetworkAgentCell_SharedInstance_onceToken != -1)
  {
    VCNetworkAgentCell_AddCellularAssertion_cold_1();
  }

  v0 = _VCNetworkAgentCell_SharedInstance_sharedInstance;
  VCObject_Lock(_VCNetworkAgentCell_SharedInstance_sharedInstance);
  v1 = *(v0 + 188);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v3 < 0 == v2)
  {
    *(v0 + 188) = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v0 + 188);
        v12 = 136315906;
        v13 = v4;
        v14 = 2080;
        v15 = "VCNetworkAgentCell_RemoveCellularAssertion";
        v16 = 1024;
        v17 = 142;
        v18 = 1024;
        LODWORD(v19) = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNetworkAgentCell network status refcount is '%d'", &v12, 0x22u);
      }
    }

    if (!*(v0 + 188) && ([*(v0 + 192) removeNetworkAgentFromInterfaceNamed:*(v0 + 200)] & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCNetworkAgentCell_RemoveCellularAssertion_cold_2();
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v0 + 188);
      v10 = "Remove overwrite cellular as network status bar icon";
      if (v9)
      {
        v10 = "";
      }

      v12 = 136316418;
      v13 = v7;
      v14 = 2080;
      v15 = "VCNetworkAgentCell_RemoveCellularAssertion";
      v16 = 1024;
      v17 = 151;
      v18 = 2048;
      v19 = v0;
      v20 = 2080;
      v21 = v10;
      v22 = 1024;
      v23 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d instance=%p %s refcount = %d", &v12, 0x36u);
    }
  }

  return VCObject_Unlock(v0);
}

BOOL VCNetworkAgentCell_CellularAssertionActive()
{
  if (_VCNetworkAgentCell_SharedInstance_onceToken != -1)
  {
    VCNetworkAgentCell_AddCellularAssertion_cold_1();
  }

  return *(_VCNetworkAgentCell_SharedInstance_sharedInstance + 188) > 0;
}

uint64_t VCMediaNegotiationBlobVideoRuleCollectionReadFrom(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 3)
      {
        switch(v12)
        {
          case 4:
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v48 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v48 & 0x7F) << v29;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__preferredFormat;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__preferredFormat;
            goto LABEL_86;
          case 5:
            v37 = 0;
            v38 = 0;
            v15 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v47 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v47 & 0x7F) << v37;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v18 = v38++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__formatsExt1;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__formatsExt1;
LABEL_86:
            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

LABEL_89:
            *(a1 + *v20) = v19;
            goto LABEL_90;
          case 6:
            v21 = 0;
            v22 = 0;
            v15 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v46 = 0;
              v23 = [a2 position] + 1;
              if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v46 & 0x7F) << v21;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v18 = v22++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__preferredFormatExt1;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__preferredFormatExt1;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            while (1)
            {
              v45 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v45 & 0x7F) << v25;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v18 = v26++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__transport;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__transport;
            goto LABEL_86;
          case 2:
            v33 = 0;
            v34 = 0;
            v15 = 0;
            while (1)
            {
              v44 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v44 & 0x7F) << v33;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v18 = v34++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__operation;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__operation;
            goto LABEL_86;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            while (1)
            {
              v49 = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v49 & 0x7F) << v13;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v18 = v14++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__formats;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___VCMediaNegotiationBlobVideoRuleCollection__formats;
            goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v41 = [a2 position];
    }

    while (v41 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *iPhoneWiFiScreenEncodingRules(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1 == 1)
  {
    v5 = 1;
    v6 = &g_AirplayWifiEncodingFormat1136x640VXE;
  }

  else if (a3 == 1136.0 && a4 == 640.0)
  {
    v5 = 1;
    v6 = &g_AirplayWifiEncodingFormat1136x640AVE;
  }

  else if (a3 == 1334.0 && a4 == 750.0)
  {
    v5 = 2;
    v6 = &g_AirplayWifiEncodingFormat1334x750AVE;
  }

  else
  {
    v6 = &g_AirplayWifiEncodingFormat1920x1080AVE;
    if (a3 == 1920.0 && a4 == 1080.0)
    {
      v5 = 3;
    }

    else if (a3 == 2436.0 && a4 == 1125.0)
    {
      v5 = 4;
      v6 = &g_AirplayWifiEncodingFormat2436x1125AVE;
    }

    else if (a3 == 2688.0 && a4 == 1242.0)
    {
      v5 = 4;
      v6 = &g_AirplayWifiEncodingFormat2436x1125AVE;
    }

    else if (a3 == 1792.0 && a4 == 828.0)
    {
      v6 = &g_AirplayWifiEncodingFormat2436x1125AVE;
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  return videoRulesForFormatList_1(v6, v5, a2);
}

void *iPhoneWiFiScreenDecodingRules(uint64_t a1, double a2, double a3)
{
  if (a2 == 1136.0 && a3 == 640.0)
  {
    v5 = 4;
    v6 = &g_AirplayWifiDecodingFormat1136x640;
  }

  else if (a2 == 1334.0 && a3 == 750.0)
  {
    v5 = 6;
    v6 = &g_AirplayWifiDecodingFormat1334x750;
  }

  else
  {
    v6 = &g_AirplayWifiDecodingFormat1920x1080;
    if (a2 == 1920.0 && a3 == 1080.0)
    {
      v5 = 8;
    }

    else if (a2 == 2436.0 && a3 == 1125.0)
    {
      v5 = 10;
      v6 = &g_AirplayWifiDecodingFormat2436x1125;
    }

    else
    {
      v5 = 10;
      if (a2 == 2688.0 && a3 == 1242.0)
      {
        v6 = &g_AirplayWifiDecodingFormat2436x1125;
      }

      else if (a2 == 1792.0 && a3 == 828.0)
      {
        v6 = &g_AirplayWifiDecodingFormat2436x1125;
        v5 = 10;
      }

      else
      {
        v5 = 8;
      }
    }
  }

  return videoRulesForFormatList_1(v6, v5, a1);
}

void *videoRulesForFormatList_1(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v6 = objc_opt_new();
  if (v6)
  {
    v7 = a2;
    v8 = (a1 + 8);
    v9 = MEMORY[0x1E6986650];
    do
    {
      v10 = [VCVideoRule alloc];
      *&v11 = *v8;
      v12 = [(VCVideoRule *)v10 initWithFrameWidth:*(v8 - 2) frameHeight:*(v8 - 1) frameRate:a3 payload:v11];
      if (v12)
      {
        v13 = v12;
        [v6 addObject:v12];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v18 = v14;
          v19 = 2080;
          v20 = "videoRulesForFormatList";
          v21 = 1024;
          v22 = 90;
          _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create video rule for Airplay screen !", buf, 0x1Cu);
        }
      }

      v8 += 3;
      --v7;
    }

    while (v7);
  }

  return v6;
}

void OUTLINED_FUNCTION_6_40(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_8_34()
{
  *v2 = 0;
  *v1 = v3;
  *v0 = 0;
}

BOOL OUTLINED_FUNCTION_14_21()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t VCCoreAudio_AudioUnitMock_SetProperty(OpaqueAudioComponentInstance *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if ([+[VCCoreAudio_AudioUnitMock setProperty:"setProperty:inID:inScope:inElement:inData:inDataSize:outStatus:"]
  {
    return v13;
  }

  else
  {
    return AudioUnitSetProperty(a1, v10, v9, v8, a5, v6);
  }
}

uint64_t VCCoreAudio_AudioUnitMock_GetProperty(OpaqueAudioComponentInstance *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, UInt32 *a6)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if ([+[VCCoreAudio_AudioUnitMock getProperty:"getProperty:inID:inScope:inElement:outData:ioDataSize:outStatus:"]
  {
    return v13;
  }

  else
  {
    return AudioUnitGetProperty(a1, v10, v9, v8, a5, a6);
  }
}

uint64_t VCCoreAudio_AudioUnitMock_Render(OpaqueAudioComponentInstance *a1, AudioUnitRenderActionFlags *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5, AudioBufferList *a6)
{
  v7 = a5;
  v8 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if ([+[VCCoreAudio_AudioUnitMock render:"render:ioActionFlags:inTimeStamp:inOutputBusNumber:inNumberFrames:ioData:outStatus:"]
  {
    return v13;
  }

  else
  {
    return AudioUnitRender(a1, a2, a3, v8, v7, a6);
  }
}

uint64_t VCCoreAudio_AudioUnitMock_ComplexRender(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if ([+[VCCoreAudio_AudioUnitMock complexRender:"complexRender:ioActionFlags:inTimeStamp:inOutputBusNumber:inNumberOfPackets:outNumberOfPackets:outPacketDescriptions:ioData:outMetadata:outMetadataByteSize:outStatus:"]
  {
    return v11;
  }

  else
  {
    return AudioUnitComplexRender();
  }
}

uint64_t VCCoreAudio_AudioUnitMock_Initialize(OpaqueAudioComponentInstance *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  if ([+[VCCoreAudio_AudioUnitMock initialize:"initialize:outStatus:"]
  {
    return v3;
  }

  else
  {
    return AudioUnitInitialize(a1);
  }
}

uint64_t VCCoreAudio_AudioUnitMock_Uninitialize(OpaqueAudioComponentInstance *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  if ([+[VCCoreAudio_AudioUnitMock uninitialize:"uninitialize:outStatus:"]
  {
    return v3;
  }

  else
  {
    return AudioUnitUninitialize(a1);
  }
}

uint64_t VCCoreAudio_AudioUnitMock_OutputUnitStart(OpaqueAudioComponentInstance *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  if ([+[VCCoreAudio_AudioUnitMock outputUnitStart:"outputUnitStart:outStatus:"]
  {
    return v3;
  }

  else
  {
    return AudioOutputUnitStart(a1);
  }
}

uint64_t VCCoreAudio_AudioUnitMock_OutputUnitStop(OpaqueAudioComponentInstance *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  if ([+[VCCoreAudio_AudioUnitMock outputUnitStop:"outputUnitStop:outStatus:"]
  {
    return v3;
  }

  else
  {
    return AudioOutputUnitStop(a1);
  }
}

uint64_t VCCoreAudio_AudioUnitMock_SetParameter(OpaqueAudioComponentInstance *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AudioUnitParameterValue a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v12 = +[VCCoreAudio_AudioUnitMock sharedInstance];
  *&v13 = a6;
  if ([(VCCoreAudio_AudioUnitMock *)v12 audioUnit:a1 setParameter:a2 scope:a3 element:a4 value:a5 bufferOffsetInFrames:&v15 outStatus:v13])
  {
    return v15;
  }

  else
  {
    return AudioUnitSetParameter(a1, a2, a3, a4, a6, a5);
  }
}

void VCAudioUnitMockMicThreadProc(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 192) == 1)
  {
    *(a1 + 192) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioUnitMockMicThreadProc_cold_1();
      }
    }

    *a3 = 1;
  }

  else
  {
    [a1 runAudioCallback];
    v5 = micro();
    usleep(((*(a1 + 208) * 0.02 - (v5 - *(a1 + 200))) * 1000000.0 + 20000.0));
    ++*(a1 + 208);
  }
}

uint64_t AUIOCreateHandle(uint64_t *a1, uint64_t a2)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = 2149253121;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  memset(v55, 170, 20);
  v3 = *(a2 + 138);
  v4 = v3 == 1;
  if (!a1)
  {
    return v2;
  }

  v6 = *(a2 + 56) || v3 == 1;
  if (!v6 || !*(a2 + 128))
  {
    return v2;
  }

  v8 = malloc_type_calloc(1uLL, 0x2A8uLL, 0x10B004020CEEE09uLL);
  if (!v8)
  {
    return 2149253123;
  }

  v9 = v8;
  v58 = -1431655766;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AUIOCreateHandle");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a2 + 138);
      *buf = 136316162;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = "AUIOCreateHandle";
      *&buf[22] = 1024;
      *&buf[24] = 1010;
      *&buf[28] = 2048;
      *&buf[30] = v9;
      *&buf[38] = 1024;
      *&buf[40] = v12;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d @:@ AUIOCreateHandle (%p) audioIOType=%d", buf, 0x2Cu);
    }
  }

  *(v9 + 616) = *(a2 + 144);
  if (+[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass") != 4 || +[VCHardwareSettings builtinMicCount])
  {
    v4 = *(a2 + 120) != 0;
  }

  *(v9 + 235) = v4;
  if (VCDefaults_GetBoolValueForKey(@"forceEnableAudioMockInputPathForAppleTV", 0))
  {
    *(v9 + 235) = *(a2 + 120) != 0;
    [+[VCAudioToolboxAudioComponentMock sharedInstance](VCAudioToolboxAudioComponentMock start];
    [+[VCCoreAudio_AudioUnitMock sharedInstance](VCCoreAudio_AudioUnitMock start];
  }

  *v9 = *(a2 + 48);
  *(v9 + 16) = *(a2 + 112);
  *(v9 + 32) = *(a2 + 128);
  *(v9 + 472) = *(a2 + 136);
  *(v9 + 584) = *(a2 + 137);
  *(v9 + 586) = [+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")];
  v13 = [VCDefaults copyStringValueForKey:@"audioCannedReplay"];
  *(v9 + 592) = v13;
  if (!v13)
  {
    *(v9 + 592) = [VCDefaults copyStringValueForKey:@"cannedReplay"];
  }

  [VCDefaults getDoubleValueForKey:@"audioCannedReplayLoopLength" defaultValue:0.0];
  *(v9 + 600) = v14;
  [VCDefaults getDoubleValueForKey:@"audioCannedReplayStartTime" defaultValue:-1.0];
  *(v9 + 608) = v15;
  *(v9 + 640) = *(a2 + 168);
  *(v9 + 624) = *(a2 + 152);
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v17) = info.denom;
  LODWORD(v16) = info.numer;
  *(v9 + 440) = v16 * 0.000000001 / v17;
  LODWORD(v55[0]) = 1635086197;
  if ((*(a2 + 138) - 1) > 3u)
  {
    v18 = 0;
  }

  else
  {
    v18 = dword_1DBD50600[(*(a2 + 138) - 1)];
  }

  HIDWORD(v55[0]) = v18;
  v55[1] = 1634758764;
  LODWORD(v55[2]) = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = "AUIOCreateHandle";
      *&buf[22] = 1024;
      *&buf[24] = 1062;
      *&buf[28] = 2048;
      *&buf[30] = v9;
      *&buf[38] = 1024;
      *&buf[40] = HIDWORD(v55[0]);
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p finding next audio component with subtype=%u", buf, 0x2Cu);
    }
  }

  Next = VCAudioToolbox_AudioComponentFindNext();
  *(v9 + 40) = Next;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!Next)
  {
    if (ErrorLogLevelForModule >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
      AUIOCreateHandle_cold_5();
      v2 = 2149253142;
    }

    else
    {
      v2 = 2149253142;
    }

LABEL_45:
    if (*(v9 + 48))
    {
      VCAudioToolbox_AudioComponentInstanceDispose();
    }

    free(v9);
    return v2;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v9 + 40);
      *buf = 136315906;
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = "AUIOCreateHandle";
      *&buf[22] = 1024;
      *&buf[24] = 1064;
      *&buf[28] = 2048;
      *&buf[30] = v25;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d Found component=%p", buf, 0x26u);
    }
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  memset(buf, 0, sizeof(buf));
  v26 = VCAudioToolbox_AudioComponentCopyName();
  if (v26)
  {
    v27 = v26;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 136316162;
        v60 = v28;
        v61 = 2080;
        v62 = "AUIOCreateHandle";
        v63 = 1024;
        v64 = 1071;
        v65 = 1024;
        *v66 = 1071;
        *&v66[4] = 1024;
        *&v66[6] = v27;
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AUIO/AUIO.mm:%d: AudioComponentCopyName() returned error %d", v59, 0x28u);
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 136315906;
      v60 = v30;
      v61 = 2080;
      v62 = "AUIOCreateHandle";
      v63 = 1024;
      v64 = 1074;
      v65 = 1024;
      *v66 = 1074;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AUIO/AUIO.mm:%d: AudioComponentCopyName() gave a NULL name!", v59, 0x22u);
    }
  }

  v32 = VCAudioToolbox_AudioComponentInstanceNew();
  if (v32)
  {
    v2 = v32 | 0xA01B0000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AUIOCreateHandle_cold_1();
      }
    }

    goto LABEL_45;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(v9 + 48);
      *v59 = 136316162;
      v60 = v34;
      v61 = 2080;
      v62 = "AUIOCreateHandle";
      v63 = 1024;
      v64 = 1089;
      v65 = 2048;
      *v66 = v9;
      *&v66[8] = 2048;
      v67 = v36;
      _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p AudioComponentInstanceNew succeeded, unit=%p", v59, 0x30u);
    }
  }

  if (*(v9 + 235))
  {
    v58 = 1;
    v37 = VCAudioUnit_AudioUnitSetProperty();
    if (v37)
    {
      v2 = v37 | 0xA01B0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          AUIOCreateHandle_cold_2();
        }
      }

      goto LABEL_45;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v38;
        *&buf[12] = 2080;
        *&buf[14] = "AUIOCreateHandle";
        *&buf[22] = 1024;
        *&buf[24] = 1107;
        *&buf[28] = 2048;
        *&buf[30] = v9;
        _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAudioOutputUnitProperty_EnableIO kAudioUnitScope_Input succeeded", buf, 0x26u);
      }
    }
  }

  if (*(v9 + 585) != 1)
  {
    v58 = 1;
    v45 = VCAudioUnit_AudioUnitSetProperty();
    if (v45)
    {
      v2 = v45 | 0xA01B0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          AUIOCreateHandle_cold_3();
        }
      }

      goto LABEL_45;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v46 = VRTraceErrorLogLevelToCSTR();
      v47 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = "AUIOCreateHandle";
        *&buf[22] = 1024;
        *&buf[24] = 1120;
        *&buf[28] = 2048;
        *&buf[30] = v9;
        _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAudioOutputUnitProperty_EnableIO kAudioUnitScope_Output succeeded", buf, 0x26u);
      }
    }
  }

  _AUIOLoadDynamicDuckerVolumeOverride(v9);
  _AUIOLoadDynamicDuckerHALLevelOverride(v9);
  *(v9 + 664) = 0x7FF8000000000000;
  v40 = VCFeatureFlagManager_EnableCorrectAudioSampleCountEnforcement();
  v41 = 5.0;
  if (v40)
  {
    v41 = 0.0;
  }

  *(v9 + 672) = v41;
  Handle = CreateHandle();
  if (Handle == 0xFFFFFFFFLL)
  {
    v2 = 2149253125;
    goto LABEL_45;
  }

  v43 = Handle;
  if (*(v9 + 235))
  {
    v56 = _AUIOMicProc;
    v57 = v9;
    v44 = VCAudioUnit_AudioUnitSetProperty();
    if (v44)
    {
      v2 = v44 | 0xA01B0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          AUIOCreateHandle_cold_4();
        }
      }

      goto LABEL_91;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = "AUIOCreateHandle";
        *&buf[22] = 1024;
        *&buf[24] = 1146;
        *&buf[28] = 2048;
        *&buf[30] = v9;
        _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAudioOutputUnitProperty_SetInputCallback kAudioUnitScope_Global succeeded", buf, 0x26u);
      }
    }
  }

  if (*(v9 + 585) == 1)
  {
    v50 = AUIOSetupSystemAudioTap(v9, *(a2 + 92), *(a2 + 176), *(a2 + 184), *(a2 + 64));
    if ((v50 & 0x80000000) != 0)
    {
      v2 = v50;
LABEL_91:
      CheckOutHandleDebug();
      goto LABEL_45;
    }
  }

  else
  {
    v51 = AUIOSetupRendererCallback(v9, &v56);
    if ((v51 & 0x80000000) != 0)
    {
      v2 = v51;
      goto LABEL_91;
    }
  }

  pthread_mutex_init((v9 + 264), 0);
  *(v9 + 392) = 0;
  *(v9 + 328) = 0;
  *(v9 + 232) = 0;
  *(v9 + 352) = 2143289344;
  *(v9 + 384) = 2143289344;
  *(v9 + 536) = 0;
  *(v9 + 464) = 0x7FEFFFFFFFFFFFFFLL;
  *a1 = v43;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AUIOCreateHandle");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v52 = VRTraceErrorLogLevelToCSTR();
    v53 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v52;
      *&buf[12] = 2080;
      *&buf[14] = "AUIOCreateHandle";
      *&buf[22] = 1024;
      *&buf[24] = 1188;
      *&buf[28] = 2048;
      *&buf[30] = v9;
      *&buf[38] = 2048;
      *&buf[40] = v43;
      _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d @:@ AUIOCreateHandle (%p) Successfully created the AUIO handle=%p", buf, 0x30u);
    }
  }

  return 0;
}

void _AUIOLoadDynamicDuckerVolumeOverride(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a1 + 656) = 2143289344;
  DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"forcedDynamicDuckerVolume", NAN);
  if (DoubleValueForKey >= 0.0 && DoubleValueForKey <= 1.0)
  {
    *(a1 + 656) = DoubleValueForKey;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136316162;
        v9 = v6;
        v10 = 2080;
        v11 = "_AUIOLoadDynamicDuckerVolumeOverride";
        v12 = 1024;
        v13 = 2448;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = DoubleValueForKey;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p Found dynamic ducker volume override. Volume=%f", &v8, 0x30u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "_AUIOLoadDynamicDuckerVolumeOverride";
      v12 = 1024;
      v13 = 2444;
      v14 = 2048;
      v15 = a1;
      v16 = 2048;
      v17 = DoubleValueForKey;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d AUIO=%p Invalid dynamic ducker volume provided. Volume=%f", &v8, 0x30u);
    }
  }
}

void _AUIOLoadDynamicDuckerHALLevelOverride(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 585) == 4)
  {
    IntValueForKey = VCDefaults_GetIntValueForKey(@"forcedDynamicDuckerHALLevel", 0);
    if (IntValueForKey)
    {
      v2 = VCAudioUnit_AudioUnitSetProperty();
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v2)
      {
        if (ErrorLogLevelForModule >= 5)
        {
          v4 = VRTraceErrorLogLevelToCSTR();
          v5 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v13 = v4;
            v14 = 2080;
            v15 = "_AUIOLoadDynamicDuckerHALLevelOverride";
            v16 = 1024;
            v17 = 2467;
            v18 = 2048;
            v19 = a1;
            v20 = 2080;
            v21 = FourccToCStr(v2);
            v22 = 1024;
            v23 = v2;
            v6 = "AUIO [%s] %s:%d AUIO=%p Failed to set dynamic ducker level. err='%s' (%d)";
            v7 = v5;
            v8 = 54;
LABEL_10:
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
          }
        }
      }

      else if (ErrorLogLevelForModule >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v13 = v9;
          v14 = 2080;
          v15 = "_AUIOLoadDynamicDuckerHALLevelOverride";
          v16 = 1024;
          v17 = 2465;
          v18 = 2048;
          v19 = a1;
          v20 = 1024;
          LODWORD(v21) = IntValueForKey;
          v6 = "AUIO [%s] %s:%d AUIO=%p Successfully set dynamic ducker level=%d";
          v7 = v10;
          v8 = 44;
          goto LABEL_10;
        }
      }
    }
  }
}

uint64_t _AUIOMicProc(unsigned __int8 *a1, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, unsigned int a5, AudioBufferList *a6)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _AUIOMicProc();
      }
    }

    return 0;
  }

  v9 = *(a1 + 55) * a3->mHostTime;
  kdebug_trace();
  ++*(a1 + 63);
  VCAudioBufferList_Reset(*(a1 + 30));
  VCAudioBufferList_GetAudioBufferList(*(a1 + 30));
  HIDWORD(v57) = *(a1 + 112);
  if (VCAudioBufferList_GetSampleCapacity(*(a1 + 30)) < a5 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SampleCapacity = VCAudioBufferList_GetSampleCapacity(*(a1 + 30));
      *buf = 136316162;
      v59 = v10;
      v60 = 2080;
      v61 = "_AUIOMicProc";
      v62 = 1024;
      v63 = 476;
      v64 = 1024;
      *v65 = a5;
      *&v65[4] = 1024;
      *&v65[6] = SampleCapacity;
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d Frame size changed with inNumberFrames=%d being greater than sample buffer size=%d", buf, 0x28u);
    }
  }

  if (VCAudioBufferList_GetSampleCapacity(*(a1 + 30)) <= a5)
  {
    a5 = VCAudioBufferList_GetSampleCapacity(*(a1 + 30));
  }

  LODWORD(v57) = a5;
  VCAudioBufferList_SetSampleCount(*(a1 + 30), a5);
  if (a1[584])
  {
    goto LABEL_9;
  }

  v13 = a1[585];
  if (v13 == 2)
  {
    goto LABEL_98;
  }

  if (v13 == 1)
  {
    goto LABEL_9;
  }

  if (!a1[585])
  {
LABEL_98:
    if (a1[235])
    {
      goto LABEL_17;
    }

LABEL_9:
    v12 = VCAudioUnit_AudioUnitRender();
    HIDWORD(v57) = 0;
    goto LABEL_18;
  }

LABEL_17:
  v12 = VCAudioUnit_AudioUnitComplexRender();
LABEL_18:
  kdebug_trace();
  if (v12)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _AUIOMicProc();
      }
    }

    ++*(a1 + 64);
    (*(a1 + 4))(*(a1 + 2), 2149253127);
    return v12;
  }

  v14 = HIDWORD(v57);
  if (HIDWORD(v57) > *(a1 + 112))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v52 = *(a1 + 112);
        *buf = 136316162;
        v59 = v15;
        v60 = 2080;
        v61 = "_AUIOMicProc";
        v62 = 1024;
        v63 = 505;
        v64 = 1024;
        *v65 = v52;
        *&v65[4] = 1024;
        *&v65[6] = HIDWORD(v57);
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d STACK OVERFLOW: Please file a radar. MetaData buffer is too small (%d). Required:%d", buf, 0x28u);
      }
    }

    v14 = HIDWORD(v57);
  }

  v17 = *(a1 + 30);
  if (v14)
  {
    if (v14 >= 8)
    {
      v18 = 0;
      v21 = *(a1 + 57);
      v22 = v21 + v14;
      v23 = (v21 + 2);
      v19 = 0.0;
      while (1)
      {
        v24 = v21[1];
        v25 = (v23 + v24);
        if (v23 + v24 > v22)
        {
          break;
        }

        v26 = *v21;
        if (v26 == 1886348386)
        {
          if (v24 == 4)
          {
            v19 = *v23;
          }
        }

        else if (v26 == 1935762482 && v24 == 4)
        {
          v18 = *v23 == 0;
        }

        v23 = (v25 + 2);
        v21 = v25;
        if ((v25 + 2) > v22)
        {
          goto LABEL_48;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _AUIOMicProc();
        }
      }
    }

    else
    {
      v18 = 0;
      v19 = 0.0;
    }

LABEL_48:
    *(a1 + 98) = v18;
    *(a1 + 87) = v19;
    *(a1 + 65) += v18;
    VCAudioBufferList_SetAveragePower(v17, v19);
    AveragePower = *(a1 + 87);
  }

  else
  {
    AveragePower = VCAudioBufferList_GetAveragePower(*(a1 + 30));
    *(a1 + 87) = AveragePower;
  }

  VCUtil_ExponentialMovingAverageWithAlpha(a1 + 88, AveragePower, 0.1);
  if (*(a1 + 83))
  {
    *(a1 + 87) = -1024458752;
  }

  if (*(a1 + 65))
  {
    v28 = *(a1 + 98);
  }

  else
  {
    v28 = 1;
    *(a1 + 98) = 1;
  }

  VCAudioBufferList_SetVoiceActivity(v17, v28);
  v29 = 0.0;
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {
    v29 = micro();
  }

  if (!a1[234])
  {
    ++*(a1 + 64);
    if (LogProfileTimeOverLimit(v29, 0.00600000005, "IOProc: shenanigans mic proc"))
    {
      ++*(a1 + 135);
    }

    (*(a1 + 4))(*(a1 + 2), 2149253137);
    return 0;
  }

  if (LogProfileTimeOverLimitCompare(*(a1 + 66), v29, v31, IsInternalOSInstalled, *&v29, *(a1 + 66), v29 - *(a1 + 66), v57))
  {
    if (*(a1 + 98))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v59 = v32;
          v60 = 2080;
          v61 = "_AUIOMicProcDetectDelayedSamples";
          v62 = 1024;
          v63 = 448;
          v64 = 2048;
          *v65 = a1;
          _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p received first non-silence audio frame", buf, 0x26u);
        }
      }
    }

    else
    {
      a1[536] = 0;
    }
  }

  else if ((a1[536] & 1) == 0 && *(a1 + 98))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v59 = v34;
        v60 = 2080;
        v61 = "_AUIOMicProcDetectDelayedSamples";
        v62 = 1024;
        v63 = 451;
        v64 = 2048;
        *v65 = a1;
        _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p received first non-silence audio frame", buf, 0x26u);
      }
    }

    a1[536] = 1;
  }

  *(a1 + 66) = v29;
  mSampleTime = a3->mSampleTime;
  VCAudioBufferList_SetTime(*(a1 + 30), mSampleTime, v9);
  if ((a3->mSampleTime == 0.0 || *(a1 + 104) == mSampleTime || *(a1 + 103) > mSampleTime) && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v39 = mSampleTime - *(a1 + 103);
      v40 = a3->mSampleTime;
      v41 = a3->mSampleTime;
      mHostTime = a3->mHostTime;
      *buf = 136317186;
      v59 = v37;
      v60 = 2080;
      v61 = "_AUIOLogAbnormalTimestamps";
      v62 = 1024;
      v63 = 270;
      v64 = 1024;
      *v65 = v39;
      *&v65[4] = 2048;
      *&v65[6] = v40;
      v66 = 2048;
      *v67 = v41;
      *&v67[8] = 1024;
      *v68 = mSampleTime;
      *&v68[4] = 2048;
      *&v68[6] = mHostTime;
      *&v68[14] = 2048;
      *&v68[16] = v9;
      _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d inSampleTime - pAUIO->numBufferedMicSamples = %d, inTimeStamp = %f, converted %lld, inSampleTime %u, HostTime %lld %f", buf, 0x50u);
    }
  }

  v43 = *(a1 + 104);
  if (v43)
  {
    v44 = *(a1 + 108);
    if (v44)
    {
      if (vabdd_f64(a3->mSampleTime, v43) > 2 * a5)
      {
        *(a1 + 108) = (v44 - (a3->mSampleTime - v43));
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v45 = VRTraceErrorLogLevelToCSTR();
          v46 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v53 = *(a1 + 108);
            v54 = *(a1 + 104);
            v55 = a3->mSampleTime;
            v56 = *(a1 + 53);
            *buf = 136317186;
            v59 = v45;
            v60 = 2080;
            v61 = "_AUIOMicProc";
            v62 = 1024;
            v63 = 537;
            v64 = 2048;
            *v65 = a1;
            *&v65[8] = 1024;
            *&v65[10] = v53;
            v66 = 1024;
            *v67 = v54;
            *&v67[4] = 1024;
            *&v67[6] = v55;
            *v68 = 2048;
            *&v68[2] = v56;
            *&v68[10] = 2048;
            *&v68[12] = v9;
            _os_log_error_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d AUIO=%p Modifying timestamp delta to timeStampDelta=%d because mic also jumped latestMicTimeStamp=%d to latestMicTimeStamp=%d, hostTime jumped latestMicHostTime=%f to inHostTime=%f", buf, 0x4Cu);
          }
        }
      }
    }
  }

  *(a1 + 104) = mSampleTime;
  *(a1 + 53) = v9;
  if (*(a1 + 136) + *(a1 + 135) != *(a1 + 137) && vabdd_f64(a3->mSampleTime, mSampleTime) > (4 * a5))
  {
    ++*(a1 + 138);
  }

  kdebug_trace();
  v47 = *(a1 + 30);
  if (a1[472])
  {
    if (!PacketThread_SendSampleBuffer(*(a1 + 60), v47))
    {
      (*(a1 + 4))(*(a1 + 2), 2149253137);
    }
  }

  else
  {
    _AUIOSendMicSamples(a1, v47);
  }

  ++*(a1 + 64);
  v48 = LogProfileTimeOverLimit(v29, 0.00600000005, "IOProc: shenanigans mic proc");
  v49 = *(a1 + 135);
  if (v48)
  {
    *(a1 + 135) = ++v49;
  }

  v12 = 0;
  *(a1 + 137) = *(a1 + 136) + v49;
  return v12;
}

uint64_t AUIOSetupSystemAudioTap(uint64_t a1, uint64_t a2, void *a3, int a4, double a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:1 sampleRate:a2 channels:0 interleaved:a5];
  if (a3 && [a3 count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136316418;
        v21 = v9;
        v22 = 2080;
        v23 = "AUIOSetupSystemAudioTap";
        v24 = 1024;
        v25 = 938;
        v26 = 2048;
        v27 = a1;
        v28 = 2112;
        v29 = a3;
        v30 = 1024;
        v31 = a4;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p Setting up system audio process tap for processIdentifiers=%@, muteBehavior=%d", &v20, 0x36u);
      }
    }

    v11 = [objc_alloc(MEMORY[0x1E695A888]) initProcessTapWithFormat:v8 PIDs:a3];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E695A888]) initSystemTapWithFormat:v8];
  }

  v12 = v11;
  if (!v11)
  {
    AUIOSetupSystemAudioTap();
LABEL_22:

    v16 = 2149253123;
    goto LABEL_19;
  }

  v13 = [objc_alloc(MEMORY[0x1E695A880]) initWithTapDescription:v11];
  if (!v13)
  {
    AUIOSetupSystemAudioTap();
    goto LABEL_22;
  }

  v14 = v13;
  v15 = VCAudioUnit_AudioUnitSetProperty();
  if (v15)
  {
    v16 = v15 | 0xA01B0000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AUIOSetupSystemAudioTap();
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315906;
        v21 = v17;
        v22 = 2080;
        v23 = "AUIOSetupSystemAudioTap";
        v24 = 1024;
        v25 = 956;
        v26 = 2048;
        v27 = a1;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAudioOutputUnitProperty_AudioTapObject kAudioUnitScope_Global succeeded", &v20, 0x26u);
      }
    }

    v16 = 0;
  }

LABEL_19:
  return v16;
}

uint64_t AUIOSetupRendererCallback(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _AUIOSpkrProc;
  if (!*(a1 + 472))
  {
    v3 = _AUIOSpkrProcGKS;
  }

  *a2 = v3;
  a2[1] = a1;
  v4 = VCAudioUnit_AudioUnitSetProperty();
  if (v4)
  {
    v5 = v4 | 0xA01B0000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AUIOSetupRendererCallback();
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v6;
        v11 = 2080;
        v12 = "AUIOSetupRendererCallback";
        v13 = 1024;
        v14 = 984;
        v15 = 2048;
        v16 = a1;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAudioUnitProperty_SetRenderCallback kAudioUnitScope_Global succeeded", &v9, 0x26u);
      }
    }

    return 0;
  }

  return v5;
}