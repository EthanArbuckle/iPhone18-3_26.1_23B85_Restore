void _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1 + 14724;
  if (*(a1 + 14724))
  {
    return;
  }

  v2 = a1;
  *(a1 + 176) = *(a1 + 17996);
  if (*(a1 + 17984))
  {
    v3 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5 = Mutable;
    if (Mutable)
    {
      _VCAudioIssueDetectorUtil_AddAudioCommonStatToDictionary(Mutable, v2);
      valuePtr = *(v2 + 188);
      v6 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v5, @"AudioTotalFrameCount", v6);
      CFRelease(v6);
      valuePtr = *(v2 + 192);
      v7 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v5, @"AudioSpeechFrameCount", v7);
      CFRelease(v7);
      valuePtr = *(v2 + 196);
      v8 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v5, @"AudioSilenceFrameCount", v8);
      CFRelease(v8);
      valuePtr = *(v2 + 200);
      v9 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v5, @"AudioSpeechBadFrameCount", v9);
      CFRelease(v9);
      valuePtr = *(v2 + 204);
      v10 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v5, @"AudioSpeechLostFrameCount", v10);
      CFRelease(v10);
      valuePtr = *(v2 + 208);
      v11 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v5, @"AudioNoDataFrameCount", v11);
      CFRelease(v11);
      qsort((v2 + 332), 0x20uLL, 0xCuLL, _VCAudioIssueDetectorUtil_CompareBitRateCount);
      v12 = _VCAudioIssueDetectorUtil_PayloadBitRateString(*(v2 + 332), *(v2 + 336));
      if (v12)
      {
        v13 = CFStringCreateWithCString(v3, v12, 0x8000100u);
        if (!v13)
        {
          goto LABEL_12;
        }

        v14 = v13;
        CFDictionaryAddValue(v5, @"AudioTop1UsedBitrate", v13);
        CFRelease(v14);
        v15 = _VCAudioIssueDetectorUtil_PayloadBitRateString(*(v2 + 344), *(v2 + 348));
        if (v15)
        {
          v16 = CFStringCreateWithCString(v3, v15, 0x8000100u);
          if (!v16)
          {
            goto LABEL_12;
          }

          v17 = v16;
          CFDictionaryAddValue(v5, @"AudioTop2UsedBitrate", v16);
          CFRelease(v17);
          v18 = _VCAudioIssueDetectorUtil_PayloadBitRateString(*(v2 + 356), *(v2 + 360));
          if (v18)
          {
            v19 = CFStringCreateWithCString(v3, v18, 0x8000100u);
            if (!v19)
            {
              goto LABEL_12;
            }

            v20 = v19;
            CFDictionaryAddValue(v5, @"AudioTop3UsedBitrate", v19);
            CFRelease(v20);
            reportingAudioStreamEvent();
          }

          else
          {
            _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded_cold_1();
          }
        }

        else
        {
          _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded_cold_2();
        }
      }

      else
      {
        _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded_cold_3();
      }
    }

    else
    {
      _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded_cold_4();
    }

    CFRelease(v5);
LABEL_12:
    v21 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22 = v21;
    if (v21)
    {
      _VCAudioIssueDetectorUtil_AddAudioCommonStatToDictionary(v21, v2);
      v23 = 0;
      v36 = v2;
      v24 = (v2 + 216);
      do
      {
        v25 = off_1E85F6028[v23];
        CStringPtr = CFStringGetCStringPtr(v25, 0x8000100u);
        v27 = CFStringCreateWithFormat(v3, 0, @"%sCount", CStringPtr);
        valuePtr = *(v24 - 1);
        v28 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v22, v27, v28);
        CFRelease(v28);
        CFRelease(v27);
        v29 = CFStringGetCStringPtr(v25, 0x8000100u);
        v30 = CFStringCreateWithFormat(v3, 0, @"%sDuration", v29);
        v31 = *v24;
        v24 += 2;
        valuePtr = v31;
        v32 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v22, v30, v32);
        CFRelease(v32);
        CFRelease(v30);
        ++v23;
      }

      while (v23 != 11);
      v2 = v36;
      valuePtr = *(v36 + 188);
      v33 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v22, @"AudioTotalFrameCount", v33);
      CFRelease(v33);
      reportingAudioStreamEvent();
    }

    else
    {
      _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded_cold_5();
    }

    CFRelease(v22);
    if (*(v1 + 3272) != 3)
    {
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionContinuousSpeechLoss", 0);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionAverageSpeechLoss", 1u);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionRxLinkBroken", 2u);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionRxSilence", 3u);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionTxSilence", 4u);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionZerosTx", 5u);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionZerosRx", 6u);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionLowEnergyTx", 7u);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionLowEnergyRx", 8u);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionHighNoiseTx", 9u);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionHighNoiseRx", 0xAu);
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(v2, @"AudioDistortionDownlinkRtpTimeout", 0xEu);
    }
  }

  if (!_VCAudioIssueDetectorUtil_IsReportingQueueFull(*(v2 + 17968)))
  {
    v34 = *(v2 + 720);
    *(v2 + 720) = v34 + 1;
    v35 = v2 + 560 * (v34 - 25 * ((((v34 - ((18351 * v34) >> 16)) >> 1) + ((18351 * v34) >> 16)) >> 4));
    *(v35 + 724) = 11;
    *(v35 + 728) = *(v2 + 4) * *(v2 + 8);
    memcpy((v35 + 736), (v2 + 172), 0x224uLL);
    _VCAudioIssueDetectorUtil_EnqueueDistortion(v2, (v35 + 724));
  }

  _VCAudioIssueDetectorUtil_ReportRmsStatEvents(v2, 0xCu, (v2 + 64));
  _VCAudioIssueDetectorUtil_ReportRmsStatEvents(v2, 0xDu, (v2 + 16));
  *v1 = 1;
}

void _VCAudioIssueDetectorUtil_StopZerosMonitoring(uint64_t a1)
{
  if (*(a1 + 116) == 1)
  {
    v2 = *(a1 + 124);
    if (v2 >= 0x1389 && !_VCAudioIssueDetectorUtil_IsReportingQueueFull(*(a1 + 17968)))
    {
      v3 = *(a1 + 720);
      *(a1 + 720) = v3 + 1;
      v4 = v3 - 25 * ((((v3 - ((18351 * v3) >> 16)) >> 1) + ((18351 * v3) >> 16)) >> 4);
      if (*(a1 + 17976))
      {
        v5 = 6;
      }

      else
      {
        v5 = 5;
      }

      v6 = (a1 + 560 * v4);
      v6[181] = v5;
      v6[182] = *(a1 + 120);
      v6[183] = v2;
      _VCAudioIssueDetectorUtil_EnqueueDistortion(a1, v6 + 181);
    }

    *(a1 + 120) = 0;
    *(a1 + 116) = 0;
  }
}

void _VCAudioIssueDetectorUtil_EnqueueDistortion(uint64_t a1, unsigned int *a2)
{
  if (CMSimpleQueueEnqueue(*(a1 + 17968), a2))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCAudioIssueDetectorUtil_EnqueueDistortion_cold_1();
      }
    }
  }

  v4 = *a2;
  if (v4 <= 0xA)
  {
    v5.i32[0] = 1;
    v5.i32[1] = a2[2];
    *(a1 + 8 * v4 + 212) = vadd_s32(*(a1 + 8 * v4 + 212), v5);
    if (*(a1 + 17996) != 3 && *(a1 + 14736) == 1)
    {
      v6 = a1 + 292 * v4;
      v7 = *(a1 + 14738);
      if (v7 <= -45)
      {
        v8 = 0;
        while (rsrpBinBoundaries[v8] < v7)
        {
          if (++v8 == 19)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v8 = 19;
      }

      ++*(v6 + 14756 + 2 * v8);
LABEL_14:
      v9 = (v6 + 14754);
      v10 = *(a1 + 14740);
      if (v10 <= 0)
      {
        v11 = 0;
        while (rssiBinBoundaries[v11] < v10)
        {
          if (++v11 == 11)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v11 = 11;
      }

      ++*&v9[2 * v11 + 42];
LABEL_17:
      v12 = *(a1 + 14742);
      if (v12 <= 30)
      {
        v13 = 0;
        while (snrBinBoundaries[v13] < v12)
        {
          if (++v13 == 21)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v13 = 21;
      }

      ++*&v9[2 * v13 + 66];
LABEL_23:
      v14 = *(a1 + 14743);
      if (v14 <= 0x64)
      {
        v15 = 0;
        while (blerBinBoundaries[v15] < v14)
        {
          if (++v15 == 27)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v15 = 27;
      }

      ++*&v9[2 * v15 + 110];
LABEL_29:
      v16 = *(a1 + 14744);
      if (v16 <= 0x64)
      {
        v17 = 0;
        while (blerBinBoundaries[v17] < v16)
        {
          if (++v17 == 27)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v17 = 27;
      }

      ++*&v9[2 * v17 + 166];
LABEL_35:
      v18 = &v9[2 * *(a1 + 14745)];
      ++*(v18 + 111);
      v19 = &v9[2 * *(a1 + 14746)];
      ++*(v19 + 114);
      v20 = *(a1 + 14748);
      if (v20 <= 0x500)
      {
        v21 = 0;
        while (cdrxCycleBinBoundaries[v21] < v20)
        {
          if (++v21 == 9)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        v21 = 9;
      }

      ++*&v9[2 * v21 + 234];
LABEL_41:
      v22 = &v9[2 * *(a1 + 14750)];
      ++*(v22 + 127);
      v23 = *(a1 + 14752);
      if (v23 <= 0x2710)
      {
        v24 = 0;
        while (outageBinBoundaries[v24] < v23)
        {
          if (++v24 == 15)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        v24 = 15;
      }

      ++*&v9[2 * v24 + 260];
LABEL_47:
      *v9 = 1;
    }
  }
}

void _VCAudioIssueDetectorUtil_AddAudioCommonStatToDictionary(__CFDictionary *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  valuePtr = *(a2 + 17976);
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a1, @"AudioStatDirection", v5);
  CFRelease(v5);
  v6 = *(a2 + 176) - 2;
  if (v6 > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_1DBD485A4[v6];
  }

  valuePtr = v7;
  v8 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a1, @"RATType", v8);
  CFRelease(v8);
  valuePtr = *(a2 + 184);
  v9 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a1, @"CodecSampleRate", v9);
  CFRelease(v9);
  if (*(a2 + 17976))
  {
    valuePtr = *(a2 + 186);
    v10 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    v11 = @"DownlinkCodecBitRate";
  }

  else
  {
    valuePtr = *(a2 + 186);
    v10 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    v11 = @"UplinkCodecBitRate";
  }

  CFDictionaryAddValue(a1, v11, v10);
  CFRelease(v10);
  valuePtr = *(a2 + 180);
  v12 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a1, @"Payload", v12);
  CFRelease(v12);
}

const char *_VCAudioIssueDetectorUtil_PayloadBitRateString(int a1, int a2)
{
  if (a1 <= 106)
  {
    if (a1 == 97)
    {
      return VCPayloadUtils_AmrNbBitRateStringForBitRate(a2);
    }

    if (a1 == 98)
    {
      return VCPayloadUtils_AmrWbBitRateStringForBitRate(a2);
    }
  }

  else if ((a1 - 107) < 2 || a1 == 111)
  {
    return VCPayloadUtils_EvsBitRateStringForBitRate(a2);
  }

  return "";
}

void _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram(uint64_t a1, const void *a2, unsigned int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 292 * a3 + 14754);
  if (*v3 == 1)
  {
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionaryAddValue(Mutable, @"AudioDistortionType", a2);
      v9 = *(a1 + 176) - 2;
      if (v9 > 4)
      {
        v10 = 0;
      }

      else
      {
        v10 = dword_1DBD485A4[v9];
      }

      valuePtr = v10;
      v11 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v8, @"RATType", v11);
      CFRelease(v11);
      _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(v8, @"RsrpHistogram", (v3 + 2), 0x13u);
      _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(v8, @"RssiHistogram", (v3 + 42), 0xBu);
      _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(v8, @"SnrHistogram", (v3 + 66), 0x15u);
      _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(v8, @"UlBlerHistogram", (v3 + 110), 0x1Bu);
      _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(v8, @"DlBlerHistogram", (v3 + 166), 0x1Bu);
      _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(v8, @"TtiHistogram", (v3 + 222), 2u);
      _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(v8, @"CdrxStateHistogram", (v3 + 228), 2u);
      _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(v8, @"CdrxCycleHistogram", (v3 + 234), 9u);
      _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(v8, @"OutageStateHistogram", (v3 + 254), 2u);
      _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(v8, @"OutagePeriodHistogram", (v3 + 260), 0xFu);
      reportingAudioStreamEvent();
    }

    else
    {
      _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram_cold_1();
    }

    CFRelease(v8);
  }
}

void _VCAudioIssueDetectorUtil_AddHistogramEntryToDict(__CFDictionary *a1, const void *a2, uint64_t a3, unsigned int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v10 = Mutable;
    v11 = 0;
    do
    {
      valuePtr = *(a3 + 2 * v11);
      v12 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
      if (v12)
      {
        v13 = v12;
        CFArrayAppendValue(v10, v12);
        CFRelease(v13);
      }

      ++v11;
    }

    while (a4 >= v11);
    CFDictionaryAddValue(a1, a2, v10);
    CFRelease(v10);
  }

  else
  {
    _VCAudioIssueDetectorUtil_AddHistogramEntryToDict_cold_1();
  }
}

void _VCAudioIssueDetectorUtil_ReportRmsStatEvents(uint64_t a1, unsigned int a2, float *a3)
{
  if (!_VCAudioIssueDetectorUtil_IsReportingQueueFull(*(a1 + 17968)))
  {
    v6 = *(a1 + 720);
    *(a1 + 720) = v6 + 1;
    v7 = (a1 + 560 * (v6 - 25 * ((((v6 - ((18351 * v6) >> 16)) >> 1) + ((18351 * v6) >> 16)) >> 4)));
    v7[181] = a2;
    v7[182] = *(a1 + 4) * *(a1 + 8);
    v7[185] = llroundf(a3[1]);
    v7[184] = llroundf(*a3);
    v7[186] = llroundf(a3[2]);
    v8 = llroundf(a3[4]);
    v7[183] = 0;
    v7[188] = v8;
    v7[189] = llroundf(a3[5]);
    v7[187] = llroundf(a3[3]);

    _VCAudioIssueDetectorUtil_EnqueueDistortion(a1, v7 + 181);
  }
}

void _VCAudioIssueDetectorUtil_MonitorAndUpdateRmsSegmentStats(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 144);
  if (v4 != 0.0)
  {
    v8 = log10(v4);
    v5 = (a1 + 128);
    v9 = (v8 - log10(*(a1 + 128))) * 10.0;
    v10 = v9;
    if (*a1 == 3)
    {
      if (a2 != 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (*a1 == 2)
      {
        if (a2 != 1)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if (a3 == 3)
      {
LABEL_12:
        v12 = v9;
        _VCAudioIssueDetectorUtil_UpdateRmsSegmentStats(a1 + 64, v12);
        _VCAudioIssueDetectorUtil_RmsMonitorThresholdSpeech(a1, v10);
        goto LABEL_13;
      }

      if (a3 != 2)
      {
LABEL_13:
        *(a1 + 144) = 0;
        goto LABEL_14;
      }
    }

    v11 = v9;
    _VCAudioIssueDetectorUtil_UpdateRmsSegmentStats(a1 + 16, v11);
    _VCAudioIssueDetectorUtil_RmsMonitorSilenceThreshold(a1, v10);
    goto LABEL_13;
  }

  v5 = (a1 + 128);
LABEL_14:
  *v5 = 0;
}

void _VCAudioIssueDetectorUtilFlushSilenceDistortionStats(uint64_t a1)
{
  v2 = *(a1 + 17976);
  if (v2 == 1)
  {
    v6 = *(a1 + 152) * *(a1 + 8);
    if (v6 >> 3 >= 0x271 && !_VCAudioIssueDetectorUtil_IsReportingQueueFull(*(a1 + 17968)))
    {
      v7 = *(a1 + 720);
      *(a1 + 720) = v7 + 1;
      v8 = (a1 + 560 * (v7 - 25 * ((((v7 - ((18351 * v7) >> 16)) >> 1) + ((18351 * v7) >> 16)) >> 4)));
      if (*(a1 + 156))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v8[181] = v9;
      v8[182] = *(a1 + 4) * *(a1 + 8) - v6;
      v8[183] = v6;
      _VCAudioIssueDetectorUtil_EnqueueDistortion(a1, v8 + 181);
    }

    *(a1 + 152) = 0;
  }

  else if (!v2)
  {
    v3 = *(a1 + 8) * *(a1 + 152);
    if (v3 >> 3 >= 0x271 && !_VCAudioIssueDetectorUtil_IsReportingQueueFull(*(a1 + 17968)))
    {
      v4 = *(a1 + 720);
      *(a1 + 720) = v4 + 1;
      v5 = (a1 + 560 * (v4 - 25 * ((((v4 - ((18351 * v4) >> 16)) >> 1) + ((18351 * v4) >> 16)) >> 4)));
      v5[181] = 4;
      v5[182] = *(a1 + 4) * *(a1 + 8) - v3;
      v5[183] = v3;
      _VCAudioIssueDetectorUtil_EnqueueDistortion(a1, v5 + 181);
    }

    *(a1 + 152) = 0;
  }
}

void _VCAudioIssueDetectorUtil_FlushRmsStats(uint64_t a1)
{
  if (*(a1 + 108) >= 0x1389u)
  {
    if (*(a1 + 17976))
    {
      v2 = 8;
    }

    else
    {
      v2 = 7;
    }

    _VCAudioIssueDetectorUtil_ReportEnergybreach(a1, v2, a1 + 64, *(a1 + 76));
  }

  if (*(a1 + 60) >= 0x1389u)
  {
    if (*(a1 + 17976))
    {
      v3 = 10;
    }

    else
    {
      v3 = 9;
    }

    _VCAudioIssueDetectorUtil_ReportEnergybreach(a1, v3, a1 + 16, *(a1 + 28));
  }

  *(a1 + 108) = 0;
  *(a1 + 60) = 0;
}

uint64_t _VCAudioIssueDetectorUtil_UpdateRmsSegmentStats(uint64_t result, float a2)
{
  v2 = *(result + 12);
  v3 = *(result + 24);
  v4 = (v3 + 1);
  *(result + 24) = v4;
  if (v3)
  {
    v5 = *(result + 32);
  }

  else
  {
    if (*(result + 28) < 5u)
    {
      *(result + 32) = 2;
      return result;
    }

    v5 = 1;
    *(result + 32) = 1;
  }

  *(result + 12) = (a2 + (v2 * (v4 - v5))) / (v4 - v5 + 1);
  if (*(result + 16) < a2)
  {
    *(result + 16) = a2;
  }

  if (*(result + 20) > a2)
  {
    *(result + 20) = a2;
  }

  return result;
}

void _VCAudioIssueDetectorUtil_RmsMonitorThresholdSpeech(uint64_t a1, float a2)
{
  v2 = *(a1 + 128) / *(a1 + 136);
  v3 = *(a1 + 100);
  v4 = *(a1 + 8);
  v5 = v4 * v2;
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2 < -55.0;
  }

  v7 = v6;
  v9 = v3 == 1 && a2 >= -55.0;
  if ((v7 & 1) != 0 || v9)
  {
    _VCAudioIssueDetectorUtil_HandleBreachTransition(a1, (a1 + 64), (*(a1 + 4) - v2) * v4, v5, v3, 1, a2);
  }

  else if (a2 < -55.0 && v3 == 1)
  {
    *(a1 + 108) += v5;
  }
}

void _VCAudioIssueDetectorUtil_HandleBreachTransition(uint64_t a1, _DWORD *a2, int a3, int a4, int a5, int a6, float a7)
{
  if (a5 == 1)
  {
    if (a2[11] >= 0x1389u)
    {
      if (!a2[10])
      {
        a2[10] = a3;
      }

      if (*(a1 + 17976))
      {
        v8 = 8;
      }

      else
      {
        v8 = 7;
      }

      if (*(a1 + 17976))
      {
        v9 = 10;
      }

      else
      {
        v9 = 9;
      }

      v10 = 16;
      if (a6)
      {
        v10 = 64;
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      _VCAudioIssueDetectorUtil_ReportEnergybreach(a1, v11, a1 + v10, a7);
    }

    *(a2 + 5) = 0;
    a2[9] = 0;
  }

  else if (!a5)
  {
    a2[9] = 1;
    a2[10] = a3;
    a2[11] += a4;
  }
}

void _VCAudioIssueDetectorUtil_ReportEnergybreach(uint64_t a1, int a2, uint64_t a3, float a4)
{
  if (!_VCAudioIssueDetectorUtil_IsReportingQueueFull(*(a1 + 17968)))
  {
    v8 = *(a1 + 720);
    *(a1 + 720) = v8 + 1;
    v9 = a1 + 560 * (v8 - 25 * ((((v8 - ((18351 * v8) >> 16)) >> 1) + ((18351 * v8) >> 16)) >> 4));
    *(v9 + 724) = a2;
    *(v9 + 728) = *(a3 + 40);
    *(v9 + 736) = llroundf(a4);

    _VCAudioIssueDetectorUtil_EnqueueDistortion(a1, (v9 + 724));
  }
}

void _VCAudioIssueDetectorUtil_RmsMonitorSilenceThreshold(uint64_t a1, float a2)
{
  v2 = *(a1 + 128) / *(a1 + 136);
  v3 = *(a1 + 52);
  v4 = *(a1 + 8);
  v5 = v4 * v2;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2 < -65.0;
  }

  v7 = !v6;
  v9 = v3 == 1 && a2 < -65.0;
  if ((v7 & 1) != 0 || v9)
  {
    _VCAudioIssueDetectorUtil_HandleBreachTransition(a1, (a1 + 16), (*(a1 + 4) - v2) * v4, v5, v3, 0, a2);
  }

  else if (a2 > -65.0 && v3 == 1)
  {
    *(a1 + 60) += v5;
  }
}

void _VCAudioIssueDetectorUtil_MonitorContinuousSpeechDistortion(int32x2_t *a1, int a2)
{
  if (a1[2247].i32[0] == 1)
  {
    if (a1->i32[0] == 3 && ((a1[19] = 0, ++a1[21].i32[0], a2 == 4) || a2 == 1))
    {
      a1[20] = vadd_s32(a1[20], 0x100000001);
    }

    else
    {
      v2 = a1 + 20;
      if (a1[20].i32[0] >= 3u)
      {
        _VCAudioIssueDetectorUtil_LogDistortion(a1, &a1[20], &a1[20], 0);
      }

      v2->i32[0] = 0;
    }
  }
}

void _VCAudioIssueDetectorUtil_MonitorAverageSpeechDistortion(_DWORD *a1)
{
  if (a1[4494] == 1)
  {
    v1 = a1[42];
    if (v1)
    {
      v2 = a1 + 41;
      if (100 * a1[41] / v1 >= 0xA)
      {
        _VCAudioIssueDetectorUtil_LogDistortion(a1, a1 + 42, a1 + 41, 1u);
      }

      *v2 = 0;
    }
  }
}

void _VCAudioIssueDetectorUtil_LogDistortion(uint64_t a1, _DWORD *a2, _DWORD *a3, unsigned int a4)
{
  if (!_VCAudioIssueDetectorUtil_IsReportingQueueFull(*(a1 + 17968)))
  {
    v8 = *(a1 + 720);
    *(a1 + 720) = v8 + 1;
    v9 = (a1 + 560 * (v8 - 25 * ((((v8 - ((18351 * v8) >> 16)) >> 1) + ((18351 * v8) >> 16)) >> 4)));
    v9[181] = a4;
    v10 = *(a1 + 8);
    v9[182] = (*(a1 + 4) - *a2) * v10;
    v9[183] = *a3 * v10;
    _VCAudioIssueDetectorUtil_EnqueueDistortion(a1, v9 + 181);
    *a3 = 0;
    *a2 = 0;
  }
}

void _VideoTransmitter_ReportInvalidVideoTxCaptureFrameCount(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 18232) >= 501)
  {
    v2 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v4 = Mutable;
      valuePtr = *(a1 + 18232);
      v5 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v4, @"SymptomReporterOptionalKeyCaptureFrameCount", v5);
      CFRelease(v5);
      reportingSymptom();
      CFRelease(v4);
    }
  }
}

uint64_t VideoTransmitter_CloseSummerHandles(uint64_t result)
{
  if (*(result + 1928))
  {
    v1 = result;
    v2 = 0;
    v3 = (result + 600);
    do
    {
      if (*(v3 - 4) != 0xFFFFFFFFLL)
      {
        SummerCloseHandle();
      }

      if (*(v3 - 3) != 0xFFFFFFFFLL)
      {
        SummerCloseHandle();
      }

      if (*(v3 - 2) != 0xFFFFFFFFLL)
      {
        SummerCloseHandle();
      }

      if (*(v3 - 1) != 0xFFFFFFFFLL)
      {
        SummerCloseHandle();
      }

      result = *v3;
      if (*v3 != 0xFFFFFFFFLL)
      {
        result = SummerCloseHandle();
      }

      ++v2;
      v3 += 19;
    }

    while (v2 < *(v1 + 1928));
  }

  return result;
}

void VideoTransmitter_CleanupSframeCryptors(uint64_t a1)
{
  if (*(a1 + 1928))
  {
    v2 = 0;
    v3 = (a1 + 672);
    do
    {
      VCSFrameCryptorH264_Destroy(v3);
      ++v2;
      v3 += 19;
    }

    while (v2 < *(a1 + 1928));
  }

  v4 = *(a1 + 23760);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 23760) = 0;
  }

  v5 = *(a1 + 23752);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 23752) = 0;
  }
}

uint64_t VideoTransmitter_SetupSFrameCryptors(uint64_t a1, _DWORD *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = 0;
    v5 = a2 + 182;
    v6 = *MEMORY[0x1E695E480];
    v7 = (a1 + 672);
    v8 = 8;
    do
    {
      v9 = *&a2[v8];
      if (v9)
      {
        if (*v5 != 123)
        {
          VideoTransmitter_SetupSFrameCryptors_cold_1();
          return LODWORD(v11[0]);
        }

        if (VCSFrameCryptorH264_Create(v9, v7))
        {
          VideoTransmitter_SetupSFrameCryptors_cold_2();
          return LODWORD(v11[0]);
        }

        if (!*(a1 + 23760) && VCAllocatorFirstCome_Create(v6, "VideoTransmitterEncryptedBufferHeaderAllocator", (a1 + 23760)))
        {
          VideoTransmitter_SetupSFrameCryptors_cold_3();
          return LODWORD(v11[0]);
        }

        if (!*(a1 + 23752))
        {
          v11[0] = 0x2000;
          if (VCAllocatorMultiQueue_Create(v6, "VideoTransmitterEncryptedBufferDataAllocator", 1u, v11, (a1 + 23752)))
          {
            VideoTransmitter_SetupSFrameCryptors_cold_4();
            return 2149449731;
          }
        }
      }

      ++v4;
      v8 += 16;
      v7 += 19;
    }

    while (v4 < *a2);
  }

  return 0;
}

void _VideoTransmitter_UpdateParametersForABTesting(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1 + 20480;
  *(a1 + 23749) = 1;
  *(a1 + 23748) = *(a2 + 896);
  v4 = *(a1 + 544);
  if (v4)
  {
    v13 = 0;
    if ((VCExperimentManager_GetExperimentGroup(v4, @"enableLowBandwidthOptimization", &v13) & 0x80000000) == 0)
    {
      v6 = v13 != 0;
      *(a2 + 896) = v13 != 0;
      *(v3 + 3268) = v6;
      *(v3 + 3269) = v6;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v15 = v7;
          v16 = 2080;
          v17 = "_VideoTransmitter_UpdateParametersForABTesting";
          v18 = 1024;
          v19 = 1735;
          v20 = 2048;
          v21 = a1;
          v22 = 1024;
          v23 = v13;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: [%p] Found experiment group. lowBandwidthOptimizationGroup=%d", buf, 0x2Cu);
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v3 + 3269);
      v12 = *(v3 + 3268);
      *buf = 136316418;
      v15 = v9;
      v16 = 2080;
      v17 = "_VideoTransmitter_UpdateParametersForABTesting";
      v18 = 1024;
      v19 = 1738;
      v20 = 2048;
      v21 = a1;
      v22 = 1024;
      v23 = v11;
      v24 = 1024;
      v25 = v12;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: [%p] Feature settings updated. isLowBandwidthVCPRateControlEnabled=%d, isLowBandwidthSinglePacketDuplicationEnabled=%d", buf, 0x32u);
    }
  }
}

uint64_t VideoTransmitter_CreateHandle(uint64_t *a1, unsigned int *a2)
{
  v187 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0x5DE0uLL, 0x10F00409039EBC3uLL);
  if (!v4)
  {
    VideoTransmitter_CreateHandle_cold_27(__str);
    return *__str;
  }

  v5 = v4;
  if (*a2 >= 0xA)
  {
    VideoTransmitter_CreateHandle_cold_26();
LABEL_279:
    v123 = *__str;
    v137 = LODWORD(v175[0]);
    goto LABEL_263;
  }

  v6 = (v4 + 23624);
  v7 = *(a2 + 118);
  *(v5 + 512) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(a2 + 119);
  *(v5 + 520) = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  *(v5 + 528) = a2[240];
  *(v5 + 536) = *(a2 + 121);
  *(v5 + 23900) = *(a2 + 932);
  v9 = *(a2 + 933);
  *(v5 + 23901) = v9;
  if (a2[234] - 5 <= 0xFFFFFFFB)
  {
    VideoTransmitter_CreateHandle_cold_25();
    goto LABEL_279;
  }

  v10 = (v5 + 16898);
  if (v9)
  {
    v11 = a2[234];
  }

  else
  {
    v11 = 1;
  }

  *(v5 + 23904) = v11;
  *(v5 + 23768) = 0;
  v12 = MEMORY[0x1E695E480];
  if (*(a2 + 913) == 1)
  {
    v186 = 0;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v179 = 0u;
    v178 = 0u;
    memset(__str, 0, sizeof(__str));
    v13 = *(v5 + 512);
    if (v13)
    {
      CFStringGetCStringPtr(v13, 0x8000100u);
      CFStringGetCStringPtr(*(v5 + 520), 0x8000100u);
      FourccToCStr(*(v5 + 528));
      snprintf(__str, 0xC8uLL, "session_%s-participant_%s-groupid_%s");
    }

    else if (*(v5 + 17160))
    {
      snprintf(__str, 0xC8uLL, "%010u");
    }

    else
    {
      snprintf(__str, 0xC8uLL, "streamtoken_%ld");
    }

    v14 = VCNACKConsumer_Create(*v12, (v5 + 23832), __str);
    *(v5 + 23746) = 1;
    if ((v14 & 0x80000000) != 0)
    {
      v137 = v14;
      VideoTransmitter_CreateHandle_cold_24();
      goto LABEL_268;
    }
  }

  v15 = *a2;
  if (v15)
  {
    v16 = (v5 + 600);
    do
    {
      *(v16 - 4) = 0xFFFFFFFFLL;
      *(v16 - 3) = 0xFFFFFFFFLL;
      *(v16 - 2) = 0xFFFFFFFFLL;
      *(v16 - 1) = 0xFFFFFFFFLL;
      *v16 = 0xFFFFFFFFLL;
      v16 += 19;
      --v15;
    }

    while (v15);
    v17 = 0;
    v18 = a2 + 4;
    v19 = v5;
    while (1)
    {
      v20 = *(v18 - 1);
      *(v19 + 560) = v20;
      *(v19 + 640) = *v18;
      if ((RTPGetLocalSSRC(v20, (v19 + 616)) & 0x80000000) != 0)
      {
        VideoTransmitter_CreateHandle_cold_7();
        goto LABEL_279;
      }

      v21 = *(v5 + 23832);
      if (v21)
      {
        if ((RTPTransport_SetNACKConsumer(*(v18 - 1), v21) & 0x80000000) != 0)
        {
          break;
        }
      }

      if ((SummerCreateHandle((v19 + 568), 400) & 0x80000000) != 0)
      {
        VideoTransmitter_CreateHandle_cold_6();
        goto LABEL_279;
      }

      if ((SummerCreateHandle((v19 + 576), 400) & 0x80000000) != 0)
      {
        VideoTransmitter_CreateHandle_cold_5();
        goto LABEL_279;
      }

      if ((SummerCreateHandle((v19 + 584), 400) & 0x80000000) != 0)
      {
        VideoTransmitter_CreateHandle_cold_4();
        goto LABEL_279;
      }

      if ((SummerCreateHandle((v19 + 592), 400) & 0x80000000) != 0)
      {
        VideoTransmitter_CreateHandle_cold_3();
        goto LABEL_279;
      }

      if ((SummerCreateHandle((v19 + 600), 400) & 0x80000000) != 0)
      {
        VideoTransmitter_CreateHandle_cold_2();
        goto LABEL_279;
      }

      *(v19 + 668) = v18[2];
      ++v17;
      v18 += 16;
      v19 += 152;
      if (v17 >= *a2)
      {
        goto LABEL_31;
      }
    }

    VideoTransmitter_CreateHandle_cold_1();
    goto LABEL_279;
  }

LABEL_31:
  if (VideoTransmitter_SetupSFrameCryptors(v5, a2))
  {
    VideoTransmitter_CreateHandle_cold_8();
    goto LABEL_279;
  }

  v22 = *a2;
  *(v5 + 1928) = *a2;
  *(v5 + 1936) = *(a2 + 73);
  *(v5 + 2040) = *(a2 + 104);
  v23 = a2[206];
  if (v23 - 10 <= 0xFFFFFFF6)
  {
    VideoTransmitter_CreateHandle_cold_23();
    goto LABEL_279;
  }

  *(v5 + 23632) = v23;
  v24 = *(a2 + 856);
  *(v5 + 23648) = v24;
  if (v24 == 1 && v22 >= 2)
  {
    v25 = 0;
    v26 = v5 + 560;
    v27 = v22 - 1;
    do
    {
      if (v22 == v25 + 1)
      {
        LOBYTE(v28) = 0;
        v29 = v25 + 1;
      }

      else
      {
        v28 = 0;
        v30 = v26 + 152 * v25;
        v29 = v25 + 1;
        v31 = v30 + 82;
        v32 = *(v30 + 80);
        v33 = v27;
        v34 = v25 + 1;
        do
        {
          v35 = LOWORD(a2[16 * v34 + 4]);
          if (v32 != v35)
          {
            *(v31 + 2 * v28++) = v35;
          }

          ++v34;
          --v33;
        }

        while (v33);
      }

      *(v26 + 152 * v25 + 106) = v28;
      --v27;
      v25 = v29;
    }

    while (v29 != v22 - 1);
  }

  *(v5 + 23652) = a2[215];
  *(v5 + 23656) = *(a2 + 110);
  if (!a2[200])
  {
    VideoTransmitter_CreateHandle_cold_22();
    goto LABEL_279;
  }

  v36 = *v12;
  if (VTU_CreatePacketAllocator(*(a2 + 392), *v12, (v5 + 23672)))
  {
    VideoTransmitter_CreateHandle_cold_9();
    goto LABEL_279;
  }

  *(v5 + 508) = VCDefaults_GetBoolValueForKey(@"rateControllAllowFECLowBitrate", 0);
  *(v5 + 23705) = VCDefaults_GetBoolValueForKey(@"forceDisableFEC", 0);
  *(v5 + 496) = a2[200];
  *(v5 + 500) = a2[218];
  *(v5 + 504) = a2[201];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(v5 + 496);
      v40 = *(v5 + 504);
      *__str = 136316418;
      *&__str[4] = v37;
      *&__str[12] = 2080;
      *&__str[14] = "VideoTransmitter_CreateHandle";
      *&__str[22] = 1024;
      *&__str[24] = 1855;
      *&__str[28] = 2048;
      *&__str[30] = v5;
      *&__str[38] = 1024;
      *&__str[40] = v39;
      *&__str[44] = 1024;
      *&__str[46] = v40;
      _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter[%p], mode=%d, captureSource=%d", __str, 0x32u);
    }
  }

  v41 = a2[203];
  if (v41 >= 7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v43 = VRTraceErrorLogLevelToCSTR();
      v44 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *__str = 136315906;
        *&__str[4] = v43;
        *&__str[12] = 2080;
        *&__str[14] = "_VideoTransmitter_EncoderUsageWithVCEncoderUsage";
        *&__str[22] = 1024;
        *&__str[24] = 1405;
        *&__str[28] = 1024;
        *&__str[30] = v41;
        _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid encoderUsage=%u", __str, 0x22u);
      }
    }

    v42 = 0;
  }

  else
  {
    v42 = dword_1DBD48698[v41];
  }

  *(v5 + 17772) = v42;
  v45 = a2[200];
  if (v45 == 5 || v45 == 3)
  {
    if (*(v5 + 23632) <= 1)
    {
      v46 = *(v5 + 23901);
    }

    else
    {
      v46 = 1;
    }

    v47 = v46 & 1;
  }

  else
  {
    v47 = *(v5 + 23901);
  }

  *(v5 + 23636) = v47;
  v48 = *(a2 + 74);
  if (v48)
  {
    v49 = CFRetain(v48);
    v50 = (v5 + 2048);
    *(v5 + 2048) = v49;
    v51 = a2[216];
    *(v5 + 23784) = v51;
    if (v51 && !v49)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v50 = (v5 + 2048);
    *(v5 + 2048) = 0;
    v64 = a2[216];
    *(v5 + 23784) = v64;
    if (v64)
    {
LABEL_64:
      *v50 = VCMediaControlInfoGeneratorCreateWithType(2);
    }
  }

  v52 = *(a2 + 77);
  if (v52)
  {
    v52 = CFRetain(v52);
  }

  *(v5 + 2056) = v52;
  v53 = *(a2 + 78);
  if (v53)
  {
    v53 = CFRetain(v53);
  }

  *(v5 + 2064) = v53;
  v54 = *(a2 + 122);
  if (v54)
  {
    v54 = CFRetain(v54);
  }

  v173 = a1;
  *(v5 + 544) = v54;
  _VideoTransmitter_UpdateParametersForABTesting(v5, a2);
  v55 = *v5;
  v56 = *(a2 + 75);
  *v5 = v56;
  if (v56)
  {
    CFRetain(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  *(v5 + 8) = VCReporting_GetDynamicReportingModuleID();
  reportingInheritModuleSpecificInfoFromParent();
  *&v57 = *(a2 + 83);
  *(v5 + 44) = a2[168];
  *(v5 + 88) = a2[169];
  *(v5 + 64) = *(a2 + 170);
  *(v5 + 80) = *(a2 + 87);
  *(v5 + 92) = 0;
  DWORD2(v57) = a2[176];
  HIDWORD(v57) = DWORD2(v57);
  *(v5 + 24) = v57;
  *(v5 + 40) = DWORD2(v57);
  *(v5 + 4780) = DWORD2(v57);
  *(v5 + 48) = *(a2 + 177);
  *(v5 + 4752) = *(a2 + 90);
  v58 = micro();
  *(v5 + 4736) = v58;
  *(v5 + 4744) = v58;
  *(v5 + 4760) = 0u;
  *(v5 + 56) = *(a2 + 94);
  *(v5 + 23644) = a2[210];
  v59 = a2[182];
  *(v5 + 16) = v59;
  v61 = v59 != 124 && v59 != 110;
  *(v5 + 23808) = v61;
  v62 = (v5 + 18144);
  *(v5 + 18144) = a2[190];
  *(v5 + 96) = a2[160];
  *(v5 + 100) = a2[162];
  *(v5 + 4820) = *(a2 + 634);
  *(v5 + 4824) = *(a2 + 635);
  v63 = *(a2 + 831);
  if (v63 <= 1)
  {
    if (VCMediaControlInfoGeneratorGetVersion(*v50) < 2)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(a2 + 828);
    }
  }

  *(v5 + 4828) = v63;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v65 = VRTraceErrorLogLevelToCSTR();
    v66 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v67 = *(v5 + 4828);
      *__str = 136316162;
      *&__str[4] = v65;
      *&__str[12] = 2080;
      *&__str[14] = "VideoTransmitter_CreateHandle";
      *&__str[22] = 1024;
      *&__str[24] = 1913;
      *&__str[28] = 2048;
      *&__str[30] = v5;
      *&__str[38] = 1024;
      *&__str[40] = v67;
      _os_log_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] FEC Negotiated header version=%d", __str, 0x2Cu);
    }
  }

  *(v5 + 4840) = a2[159];
  *(v5 + 4832) = 0;
  *(v5 + 16888) = 0;
  if (!*(v5 + 16900))
  {
    do
    {
      v68 = hwrandom16();
      *(v5 + 16900) = v68;
    }

    while (!v68);
  }

  if (!*v10)
  {
    do
    {
      v69 = hwrandom16();
      *v10 = v69;
    }

    while (!v69);
  }

  *(v5 + 16908) = 1;
  *(v5 + 17872) = *(a2 + 798);
  *(v5 + 17225) = 256;
  *(v5 + 17227) = 0;
  if (!*(a2 + 97))
  {
    v75 = *(v5 + 16);
    if (v75 == 110 || v75 == 124)
    {
      goto LABEL_105;
    }

    v137 = 2149449729;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoTransmitter_CreateHandle_cold_21();
      }
    }

LABEL_268:
    v123 = 0xFFFFFFFFLL;
LABEL_263:
    _VideoTransmitter_CleanUp(v5, v123);
    return v137;
  }

  __strlcpy_chk();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v70 = VRTraceErrorLogLevelToCSTR();
    v71 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *__str = 136316162;
      *&__str[4] = v70;
      *&__str[12] = 2080;
      *&__str[14] = "VideoTransmitter_CreateHandle";
      *&__str[22] = 1024;
      *&__str[24] = 1932;
      *&__str[28] = 2048;
      *&__str[30] = v5;
      *&__str[38] = 2080;
      *&__str[40] = v5 + 104;
      _os_log_impl(&dword_1DB56E000, v71, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] featureListString=%s", __str, 0x30u);
    }
  }

  if (strstr((v5 + 104), "RVRA1:1") || strstr((v5 + 104), "RVRA1;"))
  {
    *(v5 + 17227) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v72 = VRTraceErrorLogLevelToCSTR();
      v73 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v74 = *(v5 + 17227);
        *__str = 136316162;
        *&__str[4] = v72;
        *&__str[12] = 2080;
        *&__str[14] = "VideoTransmitter_CreateHandle";
        *&__str[22] = 1024;
        *&__str[24] = 1935;
        *&__str[28] = 2048;
        *&__str[30] = v5;
        *&__str[38] = 1024;
        *&__str[40] = v74;
        _os_log_impl(&dword_1DB56E000, v73, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] isVRAEnabled=%d", __str, 0x2Cu);
      }
    }
  }

LABEL_105:
  *(v5 + 4800) = *(a2 + 183);
  *(v5 + 17008) = 0;
  *(v5 + 17072) = a2[164];
  *(v5 + 17144) = xmmword_1DBD485E0;
  *(v5 + 17376) = a2[161];
  *(v5 + 17380) = 0;
  *(v5 + 17388) = a2[165];
  *(v5 + 17392) = *(a2 + 632);
  *(v5 + 2176) = 1;
  *(v5 + 16920) = 0;
  *(v5 + 18208) = 0;
  *(v5 + 16912) = 260;
  pthread_mutex_init((v5 + 17400), 0);
  *(v5 + 17464) = 0;
  *(v5 + 17472) = 0;
  *(v5 + 17648) = 0;
  *(v5 + 17476) = 0u;
  *&v76 = *(a2 + 83);
  *(&v76 + 1) = v76;
  *(v5 + 17656) = v76;
  v77 = *(a2 + 829);
  *(v5 + 23769) = v77;
  *(v5 + 23770) = v77;
  *(v5 + 368) = xmmword_1DBD485F0;
  *(v5 + 16956) = -1;
  *(v5 + 416) = 0x7FEFFFFFFFFFFFFFLL;
  pthread_mutex_init((v5 + 17688), 0);
  *(v5 + 17676) = *(a2 + 392);
  *(v5 + 17678) = *(a2 + 633);
  *(v5 + 17680) = a2[198];
  *(v5 + 17684) = *(a2 + 398);
  *(v5 + 23628) = 0;
  *(v5 + 23638) = hwrandom16();
  v78 = *(a2 + 106);
  if (v78)
  {
    v78 = CFRetain(v78);
  }

  *(v5 + 23776) = v78;
  *(v5 + 23664) = a2[222];
  if (VRTraceGetErrorLogLevelForModule() > 7)
  {
    v79 = VRTraceErrorLogLevelToCSTR();
    v80 = *MEMORY[0x1E6986650];
    v81 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = *v62;
        v83 = *(v5 + 16);
        *__str = 136316162;
        *&__str[4] = v79;
        *&__str[12] = 2080;
        *&__str[14] = "VideoTransmitter_CreateHandle";
        *&__str[22] = 1024;
        *&__str[24] = 1993;
        *&__str[28] = 1024;
        *&__str[30] = v82;
        *&__str[34] = 1024;
        *&__str[36] = v83;
        _os_log_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d parameterSetSupport=%u iPayload=%d", __str, 0x28u);
      }
    }

    else if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      v167 = *v62;
      v168 = *(v5 + 16);
      *__str = 136316162;
      *&__str[4] = v79;
      *&__str[12] = 2080;
      *&__str[14] = "VideoTransmitter_CreateHandle";
      *&__str[22] = 1024;
      *&__str[24] = 1993;
      *&__str[28] = 1024;
      *&__str[30] = v167;
      *&__str[34] = 1024;
      *&__str[36] = v168;
      _os_log_debug_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEBUG, " [%s] %s:%d parameterSetSupport=%u iPayload=%d", __str, 0x28u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v84 = VRTraceErrorLogLevelToCSTR();
    v85 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v86 = *(a2 + 392);
      v87 = *(a2 + 633);
      v88 = "N";
      if (*(a2 + 829))
      {
        v88 = "Y";
      }

      *__str = 136316418;
      *&__str[4] = v84;
      *&__str[12] = 2080;
      *&__str[14] = "VideoTransmitter_CreateHandle";
      *&__str[22] = 1024;
      *&__str[24] = 1994;
      *&__str[28] = 1024;
      *&__str[30] = v86;
      *&__str[34] = 1024;
      *&__str[36] = v87;
      *&__str[40] = 2080;
      *&__str[42] = v88;
      _os_log_impl(&dword_1DB56E000, v85, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter_CreateHandle wMTU[%d] bIsIPv6[%d] reinitEnabled[%s]", __str, 0x32u);
    }
  }

  if (!*(v5 + 17676))
  {
    v89 = *(v5 + 17678) ? 1280 : 1450;
    *(v5 + 17676) = v89;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoTransmitter_CreateHandle_cold_10();
      }
    }
  }

  *(v5 + 17752) = VCDefaults_GetBoolValueForKey(@"disableDynamicMediaPacketHeaderCalculations", 0);
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  IntValueForKey = 0;
  if (IsInternalOSInstalled)
  {
    IntValueForKey = VCDefaults_GetIntValueForKey(@"forceVideoTransmitterMTU", 0);
  }

  *(v5 + 17754) = IntValueForKey;
  *(v5 + 17384) = 0;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"treatLTEAs4G", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && AppBooleanValue && NetworkUtils_IsLTEOrNewer(a2[161]))
  {
    *(v5 + 17384) = 1;
  }

  if (*(v5 + 4820))
  {
    RTPSetAFRCTxCap(*(v5 + 560), a2[176]);
  }

  v93 = *(a2 + 93);
  if (v93)
  {
    *(v5 + 17208) = *v93;
  }

  v94 = *(a2 + 96);
  if (v94)
  {
    v94 = CFRetain(v94);
  }

  *(v5 + 17000) = v94;
  *(v5 + 17052) = -1;
  *(v5 + 17056) = a2[202];
  *(v5 + 17064) = *(a2 + 102);
  v95 = (*(v5 + 17384) & 1) == 0 && a2[160] != 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v96 = VRTraceErrorLogLevelToCSTR();
    v97 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v98 = "NO";
      v99 = a2[162];
      *__str = 136316162;
      if (v95)
      {
        v100 = "YES";
      }

      else
      {
        v100 = "NO";
      }

      *&__str[4] = v96;
      *&__str[12] = 2080;
      *&__str[14] = "VideoTransmitter_CreateHandle";
      if (v99)
      {
        v98 = "YES";
      }

      *&__str[22] = 1024;
      *&__str[24] = 2037;
      *&__str[28] = 2080;
      *&__str[30] = v100;
      *&__str[38] = 2080;
      *&__str[40] = v98;
      _os_log_impl(&dword_1DB56E000, v97, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter_CreateHandle: local uses cellular[%s], remote uses cellular[%s].", __str, 0x30u);
    }
  }

  v101 = (v5 + 17764);
  *(v5 + 17764) = 0;
  v102 = a2[182];
  if (v102 == 100)
  {
    v103 = 1752589105;
  }

  else
  {
    v103 = 1635148593;
  }

  *(v5 + 17876) = v103;
  v104 = *(a2 + 115);
  if (v104)
  {
    *(v5 + 17876) = 1902671459;
    *(v5 + 23888) = v104;
  }

  v105 = CFPreferencesCopyAppValue(@"FaceTimeEncoder", @"com.apple.VideoConference");
  if (v105)
  {
    v106 = v105;
    v107 = CFStringCompare(v105, @"hw", 0);
    if (v102 == 100 || v107)
    {
      v113 = CFStringCompare(v106, @"sw", 0);
      if (v102 == 100 || v113)
      {
        goto LABEL_177;
      }

      *v101 = 0x100000000;
      *(v5 + 16) = v102;
      v114 = v102 == 124 || v102 == 110;
      v115 = !v114;
      *(v5 + 23808) = v115;
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_177;
      }

      v116 = VRTraceErrorLogLevelToCSTR();
      v111 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_177;
      }

      *__str = 136315650;
      *&__str[4] = v116;
      *&__str[12] = 2080;
      *&__str[14] = "_VideoTransmitter_ForceEncoderType";
      *&__str[22] = 1024;
      *&__str[24] = 1232;
      v112 = " [%s] %s:%d 'com.apple.VideoConference FaceTimeEncoder sw' forcing software h.264 encode";
    }

    else
    {
      *v101 = 0x100000001;
      *(v5 + 16) = v102;
      v109 = v102 != 124 && v102 != 110;
      *(v5 + 23808) = v109;
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_177;
      }

      v110 = VRTraceErrorLogLevelToCSTR();
      v111 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_177;
      }

      *__str = 136315650;
      *&__str[4] = v110;
      *&__str[12] = 2080;
      *&__str[14] = "_VideoTransmitter_ForceEncoderType";
      *&__str[22] = 1024;
      *&__str[24] = 1227;
      v112 = " [%s] %s:%d 'com.apple.VideoConference FaceTimeEncoder hw' forcing hardware h.264 encode";
    }

    _os_log_impl(&dword_1DB56E000, v111, OS_LOG_TYPE_DEFAULT, v112, __str, 0x1Cu);
LABEL_177:
    CFRelease(v106);
  }

  v117 = *(v5 + 16);
  v119 = v117 != 124 && v117 != 110;
  *(v5 + 23808) = v119;
  v120 = CMMemoryPoolCreate(0);
  *(v5 + 23688) = v120;
  Allocator = CMMemoryPoolGetAllocator(v120);
  *(v5 + 23680) = Allocator;
  CFRetain(Allocator);
  v176 = xmmword_1DBD480A0;
  if (VCAllocatorMultiQueue_Create(v36, "VideoTransmitterSampleBufferAllocator", 2u, &v176, (v5 + 23696)))
  {
    VideoTransmitter_CreateHandle_cold_11();
    goto LABEL_279;
  }

  *(v5 + 17048) = VCDefaults_GetIntValueForKey(@"forcePacketExpirationTime", 0xFFFFFFFFLL);
  Handle = CreateHandle();
  if (Handle == 0xFFFFFFFFLL)
  {
    VideoTransmitter_CreateHandle_cold_20();
    goto LABEL_279;
  }

  v123 = Handle;
  *(v5 + 552) = Handle;
  *(v5 + 23747) = *(a2 + 914);
  *(v5 + 23896) = a2[232];
  *(v5 + 24004) = a2[246];
  if (*(v5 + 23904) >= 1)
  {
    v124 = 0;
    if (*(v5 + 17768))
    {
      v125 = (v5 + 17764);
    }

    else
    {
      v125 = (v5 + 17020);
    }

    v126 = *v125;
    v127 = v5 + 1944;
    while ((_VideoTransmitter_CreateEncoder(v5, a2[166], a2[167], v5 + 104, v126 != 0, a2[162] | v95, v127) & 0x80000000) == 0)
    {
      ++v124;
      v127 += 24;
      if (v124 >= *(v5 + 23904))
      {
        goto LABEL_193;
      }
    }

    v137 = 2149449730;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v169 = VRTraceErrorLogLevelToCSTR();
      v170 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v171 = a2[166];
        v172 = a2[167];
        *__str = 136316418;
        *&__str[4] = v169;
        *&__str[12] = 2080;
        *&__str[14] = "VideoTransmitter_CreateHandle";
        *&__str[22] = 1024;
        *&__str[24] = 2076;
        *&__str[28] = 1024;
        *&__str[30] = v171;
        *&__str[34] = 1024;
        *&__str[36] = v172;
        *&__str[40] = 1024;
        *&__str[42] = -2145517566;
        _os_log_error_impl(&dword_1DB56E000, v170, OS_LOG_TYPE_ERROR, " [%s] %s:%d VideoTransmitter_CreateHandle: EncCreateHandle FAILED %dx%d result: %d", __str, 0x2Eu);
      }
    }

    goto LABEL_263;
  }

LABEL_193:
  _VideoTransmitter_UpdateRemoteSSRCs(v5, (a2 + 2), *a2);
  if (a2[182] != 124 || a2[203] != 6)
  {
    *(v5 + 23864) = 0;
    goto LABEL_200;
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"forceBDATCompressed", 0);
  *(v5 + 23864) = !BoolValueForKey;
  if (!BoolValueForKey)
  {
    *&__str[24] = 0;
    v130 = *(v5 + 23680);
    *__str = *(v5 + 23696);
    *&__str[8] = v130;
    v131 = *(v5 + 17772);
    LODWORD(v130) = *(v5 + 88);
    *&__str[16] = 1936287538;
    *&__str[20] = v130;
    *&__str[24] = v131;
    v132 = VCSignalEncoder_Create(v36, __str, (v5 + 23872));
    if (v132 < 0)
    {
      VideoTransmitter_CreateHandle_cold_12(v132, v123, __str, v175);
      goto LABEL_279;
    }
  }

LABEL_200:
  if ((RTPCopyPreferredSendQueue(*(v5 + 560), (v5 + 18104)) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoTransmitter_CreateHandle_cold_13();
    }
  }

  if (!*(v5 + 18104))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v133 = VRTraceErrorLogLevelToCSTR();
      v134 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *__str = 136315650;
        *&__str[4] = v133;
        *&__str[12] = 2080;
        *&__str[14] = "_VideoTransmitter_SetupTransmitQueue";
        *&__str[22] = 1024;
        *&__str[24] = 1379;
        _os_log_impl(&dword_1DB56E000, v134, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Preferred transmit queue not set, creating default queue", __str, 0x1Cu);
      }
    }

    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(56);
    *(v5 + 18104) = dispatch_queue_create_with_target_V2("com.apple.VideoConference.videoTransmit", 0, CustomRootQueue);
  }

  if (*(v5 + 88) == 2016686640)
  {
    v136 = 3;
  }

  else
  {
    v136 = 1;
  }

  if ((VCSimpleQueueCreate(v136, (v5 + 17888)) & 0x80000000) != 0)
  {
    VideoTransmitter_CreateHandle_cold_14();
  }

  pthread_rwlock_init((v5 + 17904), 0);
  _VideoTransmitter_SetupRealtimeThread(v5, v5 + 18152, 18, VideoTransmitter_EncoderProc, "com.apple.avconference.videotransmitter.encoderproc");
  if (*(v5 + 23901) == 1)
  {
    _VideoTransmitter_SetupRealtimeThread(v5, v5 + 18176, 19, VideoTransmitter_TransmitterProc, "com.apple.avconference.videotransmitter.transmitterproc");
  }

  *(v5 + 18112) = VCMemoryPool_CreateTyped(0x1E0uLL, 0x1070040FE648622);
  *(v5 + 18120) = VCMemoryPool_CreateTyped(4uLL, 0x100004052888210);
  *(v5 + 18128) = VCMemoryPool_CreateTyped(0x38uLL, 0x102004065108885);
  CMSimpleQueueCreate(v36, 10, (v5 + 18136));
  if ((VCSimpleQueueSetElementEvictedCallback(*(v5 + 17888), _VideoTransmitter_BufferEvictedCallback, *(v5 + 18128)) & 0x80000000) != 0)
  {
    VideoTransmitter_CreateHandle_cold_15();
  }

  v137 = VCSimpleQueueSetWillDestroyElementCallback(*(v5 + 17888), _VideoTransmitter_BufferEvictedCallback, *(v5 + 18128));
  if ((v137 & 0x80000000) != 0)
  {
    VideoTransmitter_CreateHandle_cold_16();
  }

  pthread_mutex_init((v5 + 2080), 0);
  pthread_mutex_init((v5 + 3392), 0);
  pthread_mutex_init((v5 + 4672), 0);
  pthread_mutex_init((v5 + 23912), 0);
  pthread_mutex_init((v5 + 17232), 0);
  pthread_mutex_init((v5 + 17312), 0);
  *(v5 + 17756) = 257;
  *(v5 + 17760) = 0;
  *(v5 + 23824) = 1;
  *__str = MEMORY[0x1E69E9820];
  *&__str[8] = 0x40000000;
  *&__str[16] = ___VideoTransmitter_ReportingRegisterPeriodicTask_block_invoke;
  *&__str[24] = &__block_descriptor_tmp_234;
  *&__str[32] = v123;
  reportingRegisterPeriodicTask();
  v138 = (v5 + 17160);
  *(v5 + 17160) = a2[197];
  *(v5 + 17164) = 0;
  *(v5 + 17176) = 0;
  *(v5 + 17168) = 0;
  *(v5 + 17184) = 0;
  if (VRTraceIsInternalOSInstalled())
  {
    *(v5 + 17164) = CFPreferencesGetAppBooleanValue(@"enableTransmitterPacketDump", @"com.apple.VideoConference", 0) != 0;
    *(v5 + 17176) = CFPreferencesGetAppBooleanValue(@"enableTransmitterFrameDump", @"com.apple.VideoConference", 0) != 0;
    *(v5 + 23849) = CFPreferencesGetAppBooleanValue(@"enableTransmitterTestVerification", @"com.apple.VideoConference", 0) != 0;
  }

  if (*(v5 + 17164) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v139 = VRTraceErrorLogLevelToCSTR();
      v140 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *__str = 136315650;
        *&__str[4] = v139;
        *&__str[12] = 2080;
        *&__str[14] = "_VideoTransmitter_SetupLogFiles";
        *&__str[22] = 1024;
        *&__str[24] = 1073;
        _os_log_impl(&dword_1DB56E000, v140, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceTransmitter: Found enableTransmitterPacketDump YES. Log outgoing video packets into AFRC folder", __str, 0x1Cu);
      }
    }

    memset(__str, 170, 12);
    __sprintf_chk(__str, 0, 0xCuLL, "%010u", *v138);
    v141 = openLogDump(0, __str, 1, "out_pkt", ".txt", 0);
    *(v5 + 17168) = v141;
    if (!v141 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoTransmitter_CreateHandle_cold_17();
      }
    }
  }

  if (*(v5 + 17176) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v142 = VRTraceErrorLogLevelToCSTR();
      v143 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *__str = 136315650;
        *&__str[4] = v142;
        *&__str[12] = 2080;
        *&__str[14] = "_VideoTransmitter_SetupLogFiles";
        *&__str[22] = 1024;
        *&__str[24] = 1083;
        _os_log_impl(&dword_1DB56E000, v143, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceTransmitter: Found enableTransmitterFrameDump YES. Log outgoing video frames into AFRC folder", __str, 0x1Cu);
      }
    }

    memset(__str, 170, 12);
    __sprintf_chk(__str, 0, 0xCuLL, "%010u", *v138);
    v144 = openLogDump(0, __str, 1, "out_frame", ".txt", 0);
    *(v5 + 17184) = v144;
    if (!v144 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoTransmitter_CreateHandle_cold_18();
      }
    }
  }

  if (VCDefaults_GetBoolValueForKey(@"enableVideoCaptureStatistics", 0))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v145 = VRTraceErrorLogLevelToCSTR();
      v146 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *__str = 136315906;
        *&__str[4] = v145;
        *&__str[12] = 2080;
        *&__str[14] = "_VideoTransmitter_SetupLogFiles";
        *&__str[22] = 1024;
        *&__str[24] = 1093;
        *&__str[28] = 2048;
        *&__str[30] = v5;
        _os_log_impl(&dword_1DB56E000, v146, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter[%p]: Found enableVideoCaptureStatistics YES. Log outgoing video frames statistics", __str, 0x26u);
      }
    }

    *&v147 = 0xAAAAAAAAAAAAAAAALL;
    *(&v147 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v180 = v147;
    v181 = v147;
    v179 = v147;
    *&__str[48] = v147;
    v178 = v147;
    *&__str[16] = v147;
    *&__str[32] = v147;
    *__str = v147;
    snprintf(__str, 0x80uLL, "videotransmitter-%p_%dx%d", v5, *(v5 + 24), *(v5 + 28));
    v148 = openLogDump(0, __str, 0, "statistics", ".log", 0);
    *(v5 + 17200) = v148;
    if (v148)
    {
      fputs("System Timestamp\tHost Time\tAudio TimeStamp\tAudio HostTime\tTimestamp\n", v148);
      *(v5 + 17192) = 1;
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoTransmitter_CreateHandle_cold_19();
      }
    }
  }

  if (*(v5 + 496) == 1)
  {
    v149 = *(v5 + 2064);
    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 0x40000000;
    v175[2] = ___VideoTransmitter_RegisterStatistics_block_invoke;
    v175[3] = &__block_descriptor_tmp_275;
    v175[4] = v5;
    *v6 = VCRateControlRegisterStatisticsChangeHandler(v149, 3, v175);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v150 = VRTraceErrorLogLevelToCSTR();
      v151 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v152 = *(v5 + 2064);
        v153 = *v6;
        *__str = 136316418;
        *&__str[4] = v150;
        *&__str[12] = 2080;
        *&__str[14] = "_VideoTransmitter_RegisterStatistics";
        *&__str[22] = 1024;
        *&__str[24] = 1450;
        *&__str[28] = 2048;
        *&__str[30] = v5;
        *&__str[38] = 2048;
        *&__str[40] = v152;
        *&__str[48] = 1024;
        *&__str[50] = v153;
        _os_log_impl(&dword_1DB56E000, v151, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoTransmitter[%p] Registered statisticsCollector[%p] with index=%d", __str, 0x36u);
      }
    }
  }

  *(v5 + 12) = reportingDefaultRealtimePeriod();
  *(v5 + 23744) = *(a2 + 868);
  *(v5 + 23704) = *(a2 + 830);
  *(v5 + 23745) = *(a2 + 456);
  FECFeedbackVersion = VCMediaControlInfoGeneratorGetFECFeedbackVersion(*(v5 + 2048));
  *(v5 + 23812) = a2[223];
  v155 = *(v5 + 496) == 1 && VCHardwareSettings_supportsAFB();
  *(v5 + 24001) = v155;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v156 = VRTraceErrorLogLevelToCSTR();
    v157 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v158 = *(v5 + 24001);
      v159 = *(v5 + 496);
      *__str = 136316674;
      *&__str[4] = v156;
      *&__str[12] = 2080;
      *&__str[14] = "VideoTransmitter_CreateHandle";
      *&__str[22] = 1024;
      *&__str[24] = 2141;
      *&__str[28] = 1024;
      *&__str[30] = 2141;
      *&__str[34] = 2048;
      *&__str[36] = v5;
      *&__str[44] = 1024;
      *&__str[46] = v158;
      *&__str[50] = 1024;
      *&__str[52] = v159;
      _os_log_impl(&dword_1DB56E000, v157, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoTransmitter.c:%d: [%p] TX AFB supportAFB=%d, pVT->mode=%d", __str, 0x38u);
    }
  }

  VCAllocatorFirstCome_Create(v36, "VideoTransmitterBufferDataAllocator", (v5 + 23720));
  VCAllocatorFirstCome_Create(v36, "VideoTransmitterBufferHeaderAllocator", (v5 + 23728));
  VCAllocatorFirstCome_Create(v36, "VideoTransmitterNumberPropertyAllocator", (v5 + 23880));
  VCAllocatorFirstCome_Create(v36, "VideoTransmitterDictionaryAllocator", (v5 + 23736));
  _VideoTransmitter_SetupFECGenerator(v5, FECFeedbackVersion);
  Mutable = CFDictionaryCreateMutable(v36, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *__str = *(v5 + 4828);
  v161 = CFNumberCreate(v36, kCFNumberIntType, __str);
  CFDictionaryAddValue(Mutable, @"FecHeaderVer", v161);
  CFRelease(v161);
  *__str = 1;
  v162 = CFNumberCreate(v36, kCFNumberIntType, __str);
  CFDictionaryAddValue(Mutable, @"VCMSDirection", v162);
  CFRelease(v162);
  reportingFeatureConfigEvent();
  CFRelease(Mutable);
  v163 = *(a2 + 113);
  if (v163)
  {
    v163 = CFRetain(v163);
  }

  *(v5 + 23856) = v163;
  *(v5 + 23800) = micro();
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VideoTransmitter-CreateHandle");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v164 = VRTraceErrorLogLevelToCSTR();
    v165 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *__str = 136316418;
      *&__str[4] = v164;
      *&__str[12] = 2080;
      *&__str[14] = "VideoTransmitter_CreateHandle";
      *&__str[22] = 1024;
      *&__str[24] = 2154;
      *&__str[28] = 2048;
      *&__str[30] = v5;
      *&__str[38] = 2080;
      *&__str[40] = a2 + 247;
      *&__str[48] = 1024;
      *&__str[50] = v123;
      _os_log_impl(&dword_1DB56E000, v165, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VideoTransmitter-CreateHandle (%p) %s handle=0x%x", __str, 0x36u);
    }
  }

  *v173 = v123;
  if (v137)
  {
    goto LABEL_263;
  }

  return v137;
}

uint64_t _VideoTransmitter_CreateEncoder(uint64_t a1, int a2, int a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7)
{
  v79 = *MEMORY[0x1E69E9840];
  v13 = (a1 + 23628);
  v14 = a1 + 16924;
  if (*(a1 + 23636) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v13 + 6);
        v18 = *(v13 + 5);
        *buf = 136316418;
        v66 = v15;
        *v67 = 2080;
        *&v67[2] = "_VideoTransmitter_CreateEncoder";
        *&v67[10] = 1024;
        *&v67[12] = 1297;
        *&v67[16] = 1024;
        *&v67[18] = v17;
        *&v67[22] = 1024;
        *&v67[24] = v18;
        *&v67[28] = 1024;
        *&v67[30] = v18 + v17;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Encoder is being created. Resetting expectedDecodingOrder(%d) to 0. Setting decodingOrderBase(%d) to %d", buf, 0x2Eu);
      }
    }

    *(v13 + 5) += *(v13 + 6);
    *(v13 + 6) = 0;
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  memset(v75, 0, sizeof(v75));
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  memset(&v67[4], 0, 32);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v21 = FourccToCStr(*(v14 + 952));
      v22 = *(a1 + 552);
      *v53 = 136316930;
      *&v53[4] = v19;
      *&v53[12] = 2080;
      *&v53[14] = "_VideoTransmitter_CreateEncoder";
      *&v53[22] = 1024;
      v54 = 1302;
      v55 = 2048;
      v56 = a1;
      v57 = 1024;
      v58 = a3;
      v59 = 1024;
      v60 = a2;
      v61 = 2080;
      v62 = v21;
      v63 = 1024;
      v64 = v22;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Create encoder=%p height=%d, width=%d, codec=%s, videoTransmitterHandle=0x%x", v53, 0x42u);
    }
  }

  *buf = a2;
  LODWORD(v66) = a3;
  DWORD2(v73) = *(a1 + 88);
  v23 = *(v14 + 952);
  v24 = *(a1 + 56);
  *&v25 = v24;
  *(&v25 + 1) = HIDWORD(v24);
  *&v67[12] = v25;
  v26 = *(a1 + 44);
  v27 = *(a1 + 32);
  if (*(v13 + 273) == 1)
  {
    v28 = v13[69];
    v26 /= v28;
    v27 /= v28;
  }

  *&v67[28] = v27;
  *&v67[32] = v26;
  LODWORD(v68) = *(a1 + 48);
  *(&v68 + 1) = *(a1 + 17000);
  *&v69 = a4;
  DWORD2(v69) = a5;
  BYTE12(v69) = *(v14 + 292) != 0;
  *&v70 = __PAIR64__(*v14, a6);
  DWORD2(v70) = *(v14 + 756);
  BYTE12(v70) = *(v14 + 760);
  v30 = *v13;
  v29 = v13[1];
  LODWORD(v71) = *(v14 + 848);
  DWORD1(v71) = v30;
  v31 = *(a1 + 552);
  *(&v71 + 1) = _VideoTransmitter_DispatchEncoderCallback;
  *(&v72 + 1) = v31;
  LODWORD(v73) = *(v14 + 132);
  DWORD1(v73) = v29;
  v32 = *(a1 + 52);
  WORD6(v73) = *(v13 + 5);
  *&v74 = *(a1 + 23776);
  DWORD1(v76) = v13[9];
  BYTE8(v74) = *(v13 + 20);
  v33 = v13[6];
  v34 = *(a1 + 1928);
  LODWORD(v76) = v13[6];
  HIDWORD(v74) = v34;
  HIDWORD(v66) = v32;
  *v67 = v23;
  BYTE8(v76) = *(v13 + 119);
  *&v77 = *(a1 + 23888);
  v35 = v13[67];
  v67[4] = *(v13 + 272);
  BYTE8(v77) = *(v13 + 121);
  v36 = v13[94];
  HIDWORD(v77) = v35;
  LODWORD(v78) = v36;
  if (v34)
  {
    v37 = v75;
    v38 = (a1 + 668);
    v39 = v34;
    do
    {
      v40 = *v38;
      v38 += 38;
      *v37++ = v40;
      --v39;
    }

    while (v39);
  }

  if (v34 < v33)
  {
    v41 = 0;
    v42 = v33 - v34;
    v43 = vdupq_n_s64(v33 - v34 - 1);
    v44 = &buf[4 * v34];
    v45 = *(a1 + 152 * (v34 - 1) + 668);
    v46 = (v42 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v47 = v44 + 172;
    do
    {
      v48 = vdupq_n_s64(v41);
      v49 = vmovn_s64(vcgeq_u64(v43, vorrq_s8(v48, xmmword_1DBD45330)));
      if (vuzp1_s16(v49, *v43.i8).u8[0])
      {
        *(v47 - 3) = v45;
      }

      if (vuzp1_s16(v49, *&v43).i8[2])
      {
        *(v47 - 2) = v45;
      }

      if (vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v43, vorrq_s8(v48, xmmword_1DBD45970)))).i32[1])
      {
        *(v47 - 1) = v45;
        *v47 = v45;
      }

      v41 += 4;
      v47 += 4;
    }

    while (v46 != v41);
    HIDWORD(v74) = v33;
  }

  memset(v53, 170, sizeof(v53));
  VCVideoEncoderVCPInitialize(v53);
  *a7 = *v53;
  v50 = *&v53[16];
  *(a7 + 16) = *&v53[16];
  if (v50 == 0xFFFFFFFFLL)
  {
    return (**a7)(a7 + 16, buf);
  }

  else
  {
    return 2148007957;
  }
}

void _VideoTransmitter_UpdateRemoteSSRCs(uint64_t a1, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 > 9)
  {
    _VideoTransmitter_UpdateRemoteSSRCs_cold_1();
  }

  else
  {
    if (a3 < 1)
    {
      v5 = 0;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = a2 + 32;
      v17 = a3;
      v7 = a1 + 684;
      do
      {
        v8 = 0;
        v18 = v3;
        v9 = v6 + v3;
        do
        {
          if (v4)
          {
            v10 = 0;
          }

          else
          {
            v10 = *(v6 + 4 * v8) != 0;
          }

          if (*(v7 + 4 * v8) != *(v9 + 4 * v8) && VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(v7 + 4 * v8);
              *buf = 136316674;
              *&buf[4] = v11;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoTransmitter_UpdateRemoteSSRCs";
              v21 = 1024;
              v22 = 1703;
              v23 = 2048;
              v24 = a1;
              v25 = 1024;
              v26 = v13;
              v27 = 1024;
              v28 = v4;
              v29 = 1024;
              v30 = v8;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Updating remoteSSRC=%u for transport stream i=%d and endpoint j=%d ", buf, 0x38u);
            }
          }

          v5 += v10;
          *(v7 + 4 * v8) = *(v9 + 4 * v8);
          ++v8;
        }

        while (v8 != 7);
        ++v4;
        v7 += 152;
        v3 = v18 + 64;
      }

      while (v4 != v17);
    }

    if (v5 > *(a1 + 23992))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 23992);
          *buf = 136316418;
          *&buf[4] = v14;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoTransmitter_UpdateRemoteSSRCs";
          v21 = 1024;
          v22 = 1711;
          v23 = 2048;
          v24 = a1;
          v25 = 1024;
          v26 = v5;
          v27 = 1024;
          v28 = v16;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] New remote endpoint added, issuing IDR. numberRemoteEndpoints=%d, prevNumberOfActiveRemoteEndpoints=%d", buf, 0x32u);
        }
      }

      memset(buf, 0, 20);
      _VideoTransmitter_GenerateKeyFrameNow(a1, 0, buf, 0, 0, 0);
    }

    *(a1 + 23992) = v5;
  }
}

void _VideoTransmitter_BufferEvictedCallback(int a1, OSQueueHead *__list, CFTypeRef *__new)
{
  if (*__new)
  {
    CFRelease(*__new);
    *__new = 0;
  }

  VCMemoryPool_Free(__list, __new);
}

void _VideoTransmitter_SetupFECGenerator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4828);
  if (v2 >= 2)
  {
    if (v2 == 2 && (VCFECGeneratorFrameBased_Create(*MEMORY[0x1E695E480], (a1 + 23712), 2, a2, *(a1 + 23728), *(a1 + 23720), *a1) & 0x80000000) != 0)
    {
      _VideoTransmitter_SetupFECGenerator_cold_2();
    }
  }

  else if ((VCFECGeneratorGroupBased_Create(*MEMORY[0x1E695E480], (a1 + 23712), v2, a2, *(a1 + 23728), *(a1 + 23720), *a1) & 0x80000000) != 0)
  {
    _VideoTransmitter_SetupFECGenerator_cold_1();
  }
}

void _VideoTransmitter_CleanUp(uint64_t a1, uint64_t a2)
{
  if (a2 != 0xFFFFFFFFLL)
  {
    CheckOutHandleDebug();
  }

  pthread_mutex_lock((a1 + 23912));
  v3 = *(a1 + 23976);
  if (v3)
  {
    do
    {
      v4 = v3[2];
      _VideoTransmitter_ProcessEncoderArgs(a1, *v3);
      v5 = *(a1 + 23976);
      if (v5 == v3)
      {
        v7 = (a1 + 23976);
      }

      else
      {
        do
        {
          v6 = v5;
          v5 = v5[2];
        }

        while (v5 != v3);
        v7 = v6 + 2;
      }

      *v7 = v5[2];
      v8 = v3[1];
      if (v8)
      {
        CFRelease(v8);
      }

      free(v3);
      v3 = v4;
    }

    while (v4);
  }

  pthread_mutex_unlock((a1 + 23912));
  v9 = *(a1 + 18160);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(a1 + 17888);
  if (v10)
  {
    VCSimpleQueueDestroy(v10);
    *(a1 + 17888) = 0;
  }

  v11 = *(a1 + 1928);
  if (v11)
  {
    v12 = 0;
    v13 = (a1 + 560);
    do
    {
      if (*v13 != 0xFFFFFFFFLL)
      {
        RTPTransport_SetNACKConsumer(*v13, 0);
        v11 = *(a1 + 1928);
      }

      ++v12;
      v13 += 19;
    }

    while (v12 < v11);
  }

  v14 = *(a1 + 23832);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 23832) = 0;
  }

  VideoTransmitter_CleanupSframeCryptors(a1);
  VideoTransmitter_CloseSummerHandles(a1);
  v15 = *(a1 + 23904);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = (a1 + 1960);
    do
    {
      v18 = *(v17 - 2);
      if (v18 && *v17 != 0xFFFFFFFFLL)
      {
        (*(v18 + 8))();
        *v17 = 0xFFFFFFFFLL;
        v15 = *(a1 + 23904);
      }

      ++v16;
      v17 += 3;
    }

    while (v16 < v15);
  }

  v19 = *(a1 + 23872);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 23872) = 0;
  }

  if (*(a1 + 23901) == 1)
  {
    v20 = *(a1 + 18184);
    if (v20)
    {
      dispatch_release(v20);
    }
  }

  v21 = *(a1 + 18104);
  if (v21)
  {
    dispatch_release(v21);
    *(a1 + 18104) = 0;
  }

  _VideoTransmitter_DequeueEncoderError(a1);
  v22 = *(a1 + 23680);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 23680) = 0;
  }

  v23 = *(a1 + 23688);
  if (v23)
  {
    CMMemoryPoolInvalidate(v23);
    v24 = *(a1 + 23688);
    if (v24)
    {
      CFRelease(v24);
      *(a1 + 23688) = 0;
    }
  }

  v25 = *(a1 + 23696);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 23696) = 0;
  }

  v26 = *(a1 + 23856);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 23856) = 0;
  }

  v27 = *(a1 + 23712);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 23712) = 0;
  }

  v28 = *(a1 + 23720);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 23720) = 0;
  }

  v29 = *(a1 + 23728);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 23728) = 0;
  }

  v30 = *(a1 + 23736);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 23736) = 0;
  }

  v31 = *(a1 + 23880);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 23880) = 0;
  }

  v32 = *(a1 + 18136);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 18136) = 0;
  }

  v33 = *(a1 + 18112);
  if (v33)
  {
    VCMemoryPool_Destroy(v33);
    *(a1 + 18112) = 0;
  }

  v34 = *(a1 + 18120);
  if (v34)
  {
    VCMemoryPool_Destroy(v34);
    *(a1 + 18120) = 0;
  }

  v35 = *(a1 + 18128);
  if (v35)
  {
    VCMemoryPool_Destroy(v35);
    *(a1 + 18128) = 0;
  }

  v36 = *(a1 + 432);
  if (v36)
  {
    CVPixelBufferRelease(v36);
    *(a1 + 432) = 0;
  }

  v37 = *(a1 + 280);
  if (v37)
  {
    free(v37);
    *(a1 + 280) = 0;
  }

  v38 = *(a1 + 288);
  if (v38)
  {
    free(v38);
    *(a1 + 288) = 0;
  }

  v39 = *(a1 + 312);
  if (v39)
  {
    free(v39);
    *(a1 + 312) = 0;
  }

  v40 = *(a1 + 304);
  if (v40)
  {
    free(v40);
    *(a1 + 304) = 0;
  }

  v41 = *(a1 + 23776);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(a1 + 17000);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(a1 + 2048);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(a1 + 2056);
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *(a1 + 2064);
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(a1 + 544);
  if (v46)
  {
    CFRelease(v46);
  }

  reportingCacheModuleSpecificInfo();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v47 = *(a1 + 512);
  if (v47)
  {
    CFRelease(v47);
    *(a1 + 512) = 0;
  }

  v48 = *(a1 + 520);
  if (v48)
  {
    CFRelease(v48);
    *(a1 + 520) = 0;
  }

  v49 = *(a1 + 17848);
  if (v49)
  {
    VTPixelTransferSessionInvalidate(v49);
    v50 = *(a1 + 17848);
    if (v50)
    {
      CFRelease(v50);
      *(a1 + 17848) = 0;
    }
  }

  if (*(a1 + 17856))
  {
    MEMORY[0x1E128B190]();
    v51 = *(a1 + 17856);
    if (v51)
    {
      CFRelease(v51);
      *(a1 + 17856) = 0;
    }
  }

  v52 = *(a1 + 17864);
  if (v52)
  {
    CVPixelBufferPoolRelease(v52);
    *(a1 + 17864) = 0;
  }

  pthread_mutex_destroy((a1 + 2080));
  pthread_mutex_destroy((a1 + 3392));
  pthread_mutex_destroy((a1 + 4672));
  pthread_mutex_destroy((a1 + 23912));
  pthread_mutex_destroy((a1 + 17232));
  v53 = *(a1 + 17184);
  if (v53)
  {
    fclose(v53);
  }

  v54 = *(a1 + 17168);
  if (v54)
  {
    fclose(v54);
  }

  v55 = *(a1 + 17200);
  if (v55)
  {
    fclose(v55);
  }

  pthread_mutex_destroy((a1 + 17232));
  pthread_mutex_destroy((a1 + 17312));
  pthread_mutex_destroy((a1 + 17400));
  pthread_mutex_destroy((a1 + 17688));
  v56 = *(a1 + 23672);
  if (v56)
  {
    CFRelease(v56);
    *(a1 + 23672) = 0;
  }

  v57 = *(a1 + 4792);
  if (v57)
  {
    CFRelease(v57);
  }

  free(a1);
}

uint64_t VideoTransmitter_UpdateRemoteEndpointsConfiguration(uint64_t a1, uint64_t a2, int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149449730;
  }

  _VideoTransmitter_UpdateRemoteSSRCs(v5, a2, a3);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_CloseHandle(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2149449730;
  }

  v3 = v2;
  v4 = v2 + 20480;
  _VideoTransmitter_StopRealtimeThread(v2 + 18152, 1);
  if (*(v4 + 3421) == 1)
  {
    _VideoTransmitter_StopRealtimeThread(v3 + 18176, 1);
  }

  pthread_rwlock_destroy((v3 + 17904));
  reportingUnregisterPeriodicTask();
  v5 = *(v4 + 3144);
  if (v5 >= 1)
  {
    VCRateControlUnregisterStatisticsChangeHandler(*(v3 + 2064), 3, v5);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v3 + 2064);
        v9 = *(v4 + 3144);
        v11 = 136316418;
        v12 = v6;
        v13 = 2080;
        v14 = "_VideoTransmitter_UnregisterStatistics";
        v15 = 1024;
        v16 = 1457;
        v17 = 2048;
        v18 = v3;
        v19 = 2048;
        v20 = v8;
        v21 = 1024;
        v22 = v9;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoTransmitter[%p] Unregistered statisticsCollector[%p] with index=%d", &v11, 0x36u);
      }
    }
  }

  _VideoTransmitter_CleanUp(v3, a1);
  return 0;
}

void _VideoTransmitter_StopRealtimeThread(uint64_t a1, int a2)
{
  *(a1 + 17) = 1;
  *(a1 + 16) = 0;
  VCRealTimeThread_Stop(*a1);
  dispatch_semaphore_signal(*(a1 + 8));
  if (a2)
  {
    v4 = *a1;

    VCRealTimeThread_Finalize(v4);
  }
}

uint64_t _VideoTransmitter_CalculateVideoTimestamp(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v8 = a1 + 0x4000;
  if (a2)
  {
    v9 = a2 + (a4 - a3) * *(a1 + 4804);
  }

  else
  {
    if (a3 == 0.0)
    {
      v5 = a4;
    }

    v9 = (a4 - v5) * (*(a1 + 4804) - 500);
  }

  v10 = v9;
  if (*(a1 + 17756) != 1)
  {
    goto LABEL_13;
  }

  if (((v10 ^ a2) & 0x80000000) == 0 || a2 >> 30 && v10 >> 30)
  {
    *(a1 + 17756) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_CalculateVideoTimestamp";
        *&buf[22] = 1024;
        *&buf[24] = 3052;
        *&buf[28] = 2048;
        *&buf[30] = v5;
        *&buf[38] = 2048;
        *&buf[40] = a4;
        LOWORD(v27[0]) = 1024;
        *(v27 + 2) = a2;
        WORD3(v27[0]) = 1024;
        DWORD2(v27[0]) = v10;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CalculateVideoTimestamp (pol match): dAudio/dVideo: %f/%f  dwAudioTS/dwVideoTS: %u/%u", buf, 0x3Cu);
      }
    }

LABEL_13:
    v13 = v10;
    goto LABEL_14;
  }

  v13 = a2;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    v13 = a2;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoTransmitter_CalculateVideoTimestamp";
      *&buf[22] = 1024;
      *&buf[24] = 3048;
      *&buf[28] = 2048;
      *&buf[30] = v5;
      *&buf[38] = 2048;
      *&buf[40] = a4;
      LOWORD(v27[0]) = 1024;
      *(v27 + 2) = a2;
      WORD3(v27[0]) = 1024;
      DWORD2(v27[0]) = v10;
      WORD6(v27[0]) = 1024;
      *(v27 + 14) = a2;
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CalculateVideoTimestamp override (pol mismatch): dAudio/dVideo: %f/%f  dwAudioTS/dwVideoTS: %u/%u -> %u", buf, 0x42u);
      v13 = a2;
    }
  }

LABEL_14:
  if (*(v8 + 1373) == 1)
  {
    *(v8 + 1373) = 0;
  }

  else
  {
    v14 = *(v8 + 1376);
    if (v13 == v14 || (v13 - v14) >= 0x7FFFFFFF)
    {
      v16 = (v14 + 1);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(v8 + 1376);
          *buf = 136317186;
          *&buf[4] = v17;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoTransmitter_CalculateVideoTimestamp";
          *&buf[22] = 1024;
          *&buf[24] = 3066;
          *&buf[28] = 2048;
          *&buf[30] = v5;
          *&buf[38] = 2048;
          *&buf[40] = a4;
          LOWORD(v27[0]) = 1024;
          *(v27 + 2) = a2;
          WORD3(v27[0]) = 1024;
          DWORD2(v27[0]) = v13;
          WORD6(v27[0]) = 1024;
          *(v27 + 14) = v16;
          WORD1(v27[1]) = 1024;
          DWORD1(v27[1]) = v19;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CalculateVideoTimestamp FORCE forward: dAudio/dVideo: %f/%f  dwAudioTS/dwVideoTS: %u/%u -> %u (last: %u)", buf, 0x48u);
        }
      }

      v13 = v16;
    }
  }

  *(v8 + 1376) = v13;
  if (*(v8 + 808) == 1)
  {
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27[3] = v20;
    v27[4] = v20;
    v27[1] = v20;
    v27[2] = v20;
    *&buf[32] = v20;
    v27[0] = v20;
    *buf = v20;
    *&buf[16] = v20;
    v21 = *(a1 + 17200);
    Timestamp = VRLogfileGetTimestamp(buf, 0x80u);
    fprintf(v21, "%s\t%f\t%d\t%f\t%d\n", Timestamp, a4, a2, v5, v13);
  }

  return v13;
}

uint64_t _VideoTransmitter_UpdateEncoderBitrate(uint64_t a1, unsigned int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4800);
  v4 = v3 + 15000;
  v5 = a2 - v3;
  if (v5 <= 15000)
  {
    v5 = 15000;
  }

  if (v4 >= a2)
  {
    v5 = 15000;
  }

  *(a1 + 36) = v5;
  if (*(a1 + 17772) == 20 && *(a1 + 4820))
  {
    v6 = atomic_load((a1 + 16892));
    v7 = v6;
    if (v6 > 0x4AF)
    {
      v11 = *(a1 + 36);
      v12 = v7 / 6000.0 + -0.2;
      *(a1 + 36) = fmax((1.0 - v12) * v11, 15000.0);
      if (*(a1 + 384) != v12)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 36);
            v29 = 136316930;
            v30 = v13;
            v31 = 2080;
            v32 = "_VideoTransmitter_AdjustEncoderBitrateBasedOnMediaQueueSize";
            v33 = 1024;
            v34 = 3271;
            v35 = 1024;
            v36 = v11;
            v37 = 1024;
            *v38 = v15;
            *&v38[4] = 2048;
            *&v38[6] = v7 / 6000.0 + -0.2;
            *&v38[14] = 2048;
            *&v38[16] = v7;
            v39 = 2048;
            v40 = 0x40B7700000000000;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Adjust video bitrate from currentBitrate=%u to newBitrate=%u with new adjustmentFactor=%f, queueSize=%f, queueSizeLimit=%f", &v29, 0x46u);
          }
        }

        *(a1 + 384) = v12;
      }
    }

    else
    {
      if (*(a1 + 384) > 0.0 && VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 36);
          v29 = 136316418;
          v30 = v8;
          v31 = 2080;
          v32 = "_VideoTransmitter_AdjustEncoderBitrateBasedOnMediaQueueSize";
          v33 = 1024;
          v34 = 3262;
          v35 = 1024;
          v36 = v10;
          v37 = 2048;
          *v38 = v7;
          *&v38[8] = 2048;
          *&v38[10] = 0x40B7700000000000;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stop adjusting video bitrate=%u with low queueSize=%f, queueSizeLimit=%f", &v29, 0x36u);
        }
      }

      *(a1 + 384) = 0;
    }
  }

  result = *(a1 + 36);
  if (result != *(a1 + 32))
  {
    v17 = *(a1 + 40);
    if (result < v17)
    {
      v17 = *(a1 + 36);
    }

    *(a1 + 36) = v17;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 36);
        v29 = 136315906;
        v30 = v18;
        v31 = 2080;
        v32 = "_VideoTransmitter_UpdateEncoderBitrate";
        v33 = 1024;
        v34 = 3296;
        v35 = 1024;
        v36 = v20;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SETTING THE NEW VIDEO RATE to %u bps", &v29, 0x22u);
      }
    }

    v29 = *(a1 + 36) / *(a1 + 23904);
    v21 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v23 = Mutable;
      v24 = CFNumberCreate(v21, kCFNumberIntType, &v29);
      if (v24)
      {
        v25 = v24;
        CFArrayAppendValue(v23, v24);
        CFRelease(v25);
        v26 = *(a1 + 23904);
        if (v26 >= 1)
        {
          v27 = 0;
          v28 = (a1 + 1960);
          do
          {
            if (*v28 != 0xFFFFFFFFLL)
            {
              (*(*(v28 - 2) + 24))(*v28, v23);
              v26 = *(a1 + 23904);
            }

            ++v27;
            v28 += 3;
          }

          while (v27 < v26);
        }

        CFRelease(v23);
        *(a1 + 32) = *(a1 + 36);
      }

      else
      {
        _VideoTransmitter_UpdateEncoderBitrate_cold_1();
      }
    }

    else
    {
      _VideoTransmitter_UpdateEncoderBitrate_cold_2();
    }

    return *(a1 + 32);
  }

  return result;
}

BOOL _VideoTransmitter_RequireEncoderResolutionChange(uint64_t a1, int *a2, int *a3, const char **a4, double a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v10 = (a1 + 23769);
  v11 = a1 + 17472;
  v12 = *a2;
  v13 = *a3;
  if (*(a1 + 17664) == *a2 && *(a1 + 17668) == v13)
  {
    v14 = 0;
  }

  else
  {
    *(a1 + 17664) = v12;
    *(a1 + 17668) = v13;
    v14 = 1;
  }

  if (*v10 == 1)
  {
    v15 = *(a1 + 23656);
    if (!v15)
    {
      goto LABEL_14;
    }

    if (v14)
    {
      v16 = v12 / v13;
      v17 = v13 * v12;
      if (v15 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = *(a1 + 23656);
      }

      *a2 = VideoUtil_ComputeScreenSizeForAspectRatio(v18, v16);
      *a3 = v19;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *a2;
          v23 = *a3;
          v46 = 136316418;
          v47 = v20;
          v48 = 2080;
          v49 = "_VideoTransmitter_RequireEncoderResolutionChange";
          v50 = 1024;
          v51 = 3637;
          v52 = 2048;
          *v53 = a1;
          *&v53[8] = 1024;
          *v54 = v22;
          *&v54[4] = 1024;
          *v55 = v23;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter=%p pendingWidth=%d pendingHeight=%d", &v46, 0x32u);
        }
      }

LABEL_14:
      if (*(v11 + 184) == *a2)
      {
        return *(v11 + 188) != *a3;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 17656) == *a3 && *(a1 + 17660) == *a2)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 17400));
  if (*(v11 + 1) != 1)
  {
LABEL_29:
    pthread_mutex_unlock((a1 + 17400));
    return 0;
  }

  v25 = *(v11 + 12);
  if (*a2 == v25)
  {
    v26 = *a3 == *(v11 + 16);
    if (v25)
    {
LABEL_21:
      v27 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v26 = 0;
    if (v25)
    {
      goto LABEL_21;
    }
  }

  v27 = *(v11 + 16) == 0;
LABEL_24:
  v28 = *(a1 + 17648);
  v29 = v28 < a5 || v26;
  if ((v29 & 1) == 0 && !v27)
  {
    goto LABEL_29;
  }

  *a2 = *(v11 + 4);
  *a3 = *(v11 + 8);
  v30 = *(a1 + 20);
  *(a1 + 16) = v30;
  v32 = v30 != 124 && v30 != 110;
  v10[39] = v32;
  *(v11 + 404) = *(v11 + 408);
  v33 = v28 >= a5 || v26;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v33)
  {
    if (ErrorLogLevelForModule < 7)
    {
      goto LABEL_45;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    v46 = 136315650;
    v47 = v35;
    v48 = 2080;
    v49 = "_VideoTransmitter_RequireEncoderResolutionChange";
    v50 = 1024;
    v51 = 3667;
    v37 = " [%s] %s:%d VideoTransmitter:RequireEncoderResolutionChange: updated to new size";
  }

  else
  {
    if (ErrorLogLevelForModule < 5)
    {
      goto LABEL_45;
    }

    v38 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    v46 = 136315650;
    v47 = v38;
    v48 = 2080;
    v49 = "_VideoTransmitter_RequireEncoderResolutionChange";
    v50 = 1024;
    v51 = 3665;
    v37 = " [%s] %s:%d VideoTransmitter:RequireEncoderResolutionChange: timed out";
  }

  _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, v37, &v46, 0x1Cu);
LABEL_45:
  if (*(v11 + 20) && strncmp((v11 + 20), *a4, 0x96uLL))
  {
    *a4 = (v11 + 20);
  }

  *v11 = 0;
  *(a1 + 17648) = 0;
  *(v11 + 4) = 0;
  *(v11 + 12) = 0;
  pthread_mutex_unlock((a1 + 17400));
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v39 = VRTraceErrorLogLevelToCSTR();
    v40 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 24);
      v42 = *(a1 + 28);
      v43 = *a2;
      v44 = *a3;
      v45 = *a4;
      v46 = 136316930;
      v47 = v39;
      v48 = 2080;
      v49 = "_VideoTransmitter_RequireEncoderResolutionChange";
      v50 = 1024;
      v51 = 3696;
      v52 = 1024;
      *v53 = v41;
      *&v53[4] = 1024;
      *&v53[6] = v42;
      *v54 = 1024;
      *&v54[2] = v43;
      *v55 = 1024;
      *&v55[2] = v44;
      v56 = 2080;
      v57 = v45;
      _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter:RequireEncoderResolutionChange: Switching encoder from %dx%d to %dx%d, featureListString %s", &v46, 0x3Eu);
    }
  }

  return 1;
}

uint64_t _VCVideoTransmitter_RetrieveRecommendedBitrateForMultiImageEncoder(uint64_t a1)
{
  if (*(a1 + 23904) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = (a1 + 1960);
  do
  {
    if (*v4 != 0xFFFFFFFFLL)
    {
      v5 = *(*(v4 - 2) + 80);
      if (v5)
      {
        if ((v5() & 0x80000000) == 0)
        {
          v6 = 0;
          v7 = fmin(0, v3);
          if (v3)
          {
            v6 = v7;
          }

          v3 = v6;
        }
      }
    }

    ++v2;
    v4 += 3;
  }

  while (v2 < *(a1 + 23904));
  return v3;
}

uint64_t _VideoTransmitter_EncodeMultiImageVideo(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char a6, __int128 *a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v14 = VCMemoryPool_Alloc(*(a1 + 18112));
  if (!v14)
  {
    _VideoTransmitter_EncodeMultiImageVideo_cold_3();
    return LODWORD(time.value);
  }

  v15 = v14;
  VideoUtil_PropagateSampleBufferAttachmentsClientToEncoder(a2);
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  memset(&v38[6], 170, 48);
  v38[2] = xmmword_1DBD48628;
  v38[3] = unk_1DBD48638;
  memset(&v38[4], 170, 32);
  v38[0] = xmmword_1DBD48608;
  v38[1] = unk_1DBD48618;
  LODWORD(v38[0]) = *(a1 + 256);
  v18 = *(a3 + 16);
  *(v38 + 8) = *a3;
  *(&v38[2] + 8) = *(a3 + 32);
  *(&v38[1] + 8) = v18;
  *(&v38[3] + 1) = *(a3 + 48);
  *&v38[4] = 0;
  *(&v38[4] + 1) = a2;
  LOBYTE(v38[5]) = a6;
  *(&v38[5] + 4) = __PAIR64__(*(a1 + 4776), a4);
  HIDWORD(v38[5]) = a5;
  v19 = *a7;
  v20 = a7[1];
  *&v38[8] = *(a7 + 4);
  v38[6] = v19;
  v38[7] = v20;
  WORD4(v38[8]) = 0;
  HIDWORD(v38[8]) = MediaType;
  v21 = _VideoTransmitter_PrepareAndSetupEncodingArgs(a1, v38, v15);
  if ((v21 & 0x80000000) != 0)
  {
    v35 = v21;
    VCMemoryPool_Free(*(a1 + 18112), v15);
    return v35;
  }

  _VideoTransmitter_UpdateEncoderArgsWithRTPStatus(a1, v15, *a3);
  if (*(a1 + 17772) == 20)
  {
    v22 = atomic_load((a1 + 16892));
    *(v15 + 292) = v22;
    *(v15 + 296) = 6000;
  }

  if (*(a1 + 23901) == 1)
  {
    v23 = *(v15 + 464);
  }

  else
  {
    v23 = 0;
  }

  _VideoTransmitter_HandleThermalEvent(a1, (a1 + 24 * v23 + 1944));
  time = *(v15 + 412);
  CMTimeGetSeconds(&time);
  kdebug_trace();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    v26 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(v15 + 188);
        LODWORD(time.value) = 136315906;
        *(&time.value + 4) = v24;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "_VideoTransmitter_EncodeMultiImageVideo";
        HIWORD(time.epoch) = 1024;
        v40 = 3907;
        v41 = 1024;
        LODWORD(v42) = v27;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Encode frame with RTP timestamp=%d", &time, 0x22u);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      _VideoTransmitter_EncodeMultiImageVideo_cold_1();
    }
  }

  if (*(a1 + 17685) == 1 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      time = *(v15 + 40);
      Seconds = CMTimeGetSeconds(&time);
      v31 = *(v15 + 188);
      LODWORD(time.value) = 136316162;
      *(&time.value + 4) = v28;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "_VideoTransmitter_EncodeMultiImageVideo";
      HIWORD(time.epoch) = 1024;
      v40 = 3909;
      v41 = 2048;
      v42 = Seconds;
      v43 = 1024;
      v44 = v31;
      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Timestamp Alignment: Encode Host Time=%f, RTP timestamp=%08X", &time, 0x2Cu);
    }
  }

  ++*(a1 + 18240);
  if (v23)
  {
    RecommendedBitrateForMultiImageEncoder = *(a1 + 23996);
    if (RecommendedBitrateForMultiImageEncoder)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  RecommendedBitrateForMultiImageEncoder = _VCVideoTransmitter_RetrieveRecommendedBitrateForMultiImageEncoder(a1);
  *(a1 + 23996) = RecommendedBitrateForMultiImageEncoder;
  if (!RecommendedBitrateForMultiImageEncoder)
  {
LABEL_20:
    RecommendedBitrateForMultiImageEncoder = *(a1 + 4780);
  }

LABEL_21:
  *(v15 + 468) = RecommendedBitrateForMultiImageEncoder;
  v33 = *(a1 + 24 * v23 + 1960);
  if (v33 == 0xFFFFFFFFLL)
  {
    v35 = 2148007957;
LABEL_29:
    v36 = *(v15 + 120);
    if (v36)
    {
      free(v36);
    }

    VCMemoryPool_Free(*(a1 + 18112), v15);
    goto LABEL_32;
  }

  v34 = (*(*(a1 + 24 * v23 + 1944) + 40))(v33, v15);
  v35 = v34;
  if ((v34 & 0x80000000) == 0)
  {
    return v35;
  }

  if (v34 == -2146959339 || v34 == -2146959358)
  {
    goto LABEL_29;
  }

LABEL_32:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoTransmitter_EncodeMultiImageVideo_cold_2();
    }
  }

  return v35;
}

uint64_t _VideoTransmitter_PrepareAndSetupEncodingArgs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 2080));
  v6 = *(a1 + 2144);
  v35 = *(a1 + 2148);
  v36 = *(a1 + 2164);
  pthread_mutex_unlock((a1 + 2080));
  if (*a2 && (v7 = *(a1 + 432)) != 0 && v6 >= 3)
  {
    v8 = &v35 + 4;
    *(a2 + 64) = v7;
    v9 = v6 - 2;
  }

  else
  {
    if (*(a2 + 140) != 1986618469)
    {
      goto LABEL_11;
    }

    v10 = *(a2 + 64);
    if (!v10)
    {
      return 2149449745;
    }

    if (*(a1 + 496) == 1)
    {
      if (*(a1 + 432))
      {
        CVPixelBufferRelease(*(a1 + 432));
        *(a1 + 432) = 0;
        v10 = *(a2 + 64);
      }

      v8 = 0;
      v9 = 0;
      *(a1 + 432) = CVPixelBufferRetain(v10);
    }

    else
    {
LABEL_11:
      v8 = 0;
      v9 = 0;
    }
  }

  if (*(a1 + 496) == 2)
  {
    if (*(a2 + 8) - *(a1 + 18200) > 5.0)
    {
      v11 = *(a1 + 32) / 400;
      v12 = (a1 + 18208);
      if (v11 <= 0x101)
      {
        v11 = 257;
      }

      *v12 = v11;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        v15 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *v12;
            v27 = 136315906;
            v28 = v13;
            v29 = 2080;
            v30 = "_VideoTransmitter_PrepareAndSetupEncodingArgs";
            v31 = 1024;
            v32 = 3357;
            v33 = 1024;
            v34 = v16;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d generate fake frame now, size %d", &v27, 0x22u);
          }
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          _VideoTransmitter_PrepareAndSetupEncodingArgs_cold_1();
        }
      }
    }
  }

  else if (*(a1 + 17226) == 1)
  {
    VCRateControlGetLargeFrameSize(*(a1 + 2056), (a1 + 18208));
  }

  else
  {
    *(a1 + 18208) = 0;
  }

  v17 = *(a1 + 23984);
  *(a3 + 464) = v17 % *(a1 + 23904);
  *(a3 + 188) = *(a2 + 40);
  *(a3 + 462) = v17;
  v18 = *(a2 + 16);
  *(a3 + 56) = *(a2 + 32);
  *(a3 + 40) = v18;
  v19 = *(a2 + 88);
  *(a3 + 200) = *(a2 + 84);
  *(a3 + 180) = *(a1 + 18208);
  *(a3 + 248) = *(a2 + 92);
  *(a3 + 232) = v19;
  *(a3 + 252) = *(a2 + 80);
  *a3 = *(a1 + 24);
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v8;
  *(a3 + 88) = *(a2 + 64);
  *(a3 + 108) = 0xFFFFFFFF00000000;
  *(a3 + 128) = 0;
  *(a3 + 120) = 0;
  *(a3 + 132) = atomic_fetch_and_explicit((a1 + 4836), 0, memory_order_relaxed);
  *(a3 + 136) = atomic_fetch_and_explicit((a1 + 4816), 0, memory_order_relaxed);
  *(a3 + 288) = atomic_fetch_and_explicit((a1 + 2076), 0, memory_order_relaxed);
  *(a3 + 144) = *(a1 + 16928);
  *(a3 + 160) = *(a1 + 16944);
  memcpy((a3 + 338), (a1 + 440), 2 * *(a1 + 464));
  *(a3 + 362) = *(a1 + 464);
  memcpy((a3 + 364), (a1 + 466), 2 * *(a1 + 490));
  result = 0;
  *(a3 + 388) = *(a1 + 490);
  v21 = *(a1 + 17376);
  v23 = v21 == 2 || v21 == 4;
  *(a3 + 192) = (*(a1 + 18144) >> 2) & (*(a1 + 18144) << 30 >> 31);
  *(a3 + 196) = v23;
  v24 = *(a1 + 17392);
  *(a3 + 240) = (*(a3 + 252) >> 3) & 1;
  *(a3 + 244) = v24;
  *(a3 + 204) = *(a1 + 17776);
  *(a3 + 212) = vuzp1q_s32(vcvtq_s64_f64(*(a1 + 17800)), vcvtq_s64_f64(*(a1 + 17832)));
  *(a3 + 448) = *(a1 + 23636);
  *(a3 + 456) = *(a1 + 23648);
  v25 = *(a2 + 96);
  v26 = *(a2 + 112);
  *(a3 + 440) = *(a2 + 128);
  *(a3 + 408) = v25;
  *(a3 + 424) = v26;
  *(a3 + 460) = *(a2 + 136);
  *(a3 + 472) = *(a1 + 24001);
  *(a1 + 320) += *(a3 + 132);
  *(a1 + 324) += *(a1 + 4816);
  ++*(a1 + 23984);
  return result;
}

uint64_t _VideoTransmitter_UpdateEncoderArgsWithRTPStatus(uint64_t a1, uint64_t a2, double a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a1 + 20480;
  if (a3 - *(a1 + 17008) > 1.0)
  {
    if (*(a1 + 1928))
    {
      v7 = 0;
      v8 = a1 + 560;
      do
      {
        v13[0] = 0.0;
        _VideoTransmitter_GetFramerateForStream(a1, v8, v13, 1.0);
        v8 += 152;
        RTPRecordFrameRate(v13[0]);
        ++v7;
      }

      while (v7 < *(a1 + 1928));
    }

    *(a1 + 17008) = a3;
  }

  *(a2 + 176) = *(v6 + 3120);
  *(a2 + 168) = vrev64_s32(*(v6 + 3124));
  v9 = *(a1 + 17096);
  *(a2 + 256) = *(a1 + 17080);
  *(a2 + 272) = v9;
  pthread_mutex_lock((a1 + 3392));
  v10 = *(a1 + 2988);
  *(a2 + 128) = v10;
  if (v10 >= 1)
  {
    v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
    *(a2 + 120) = v11;
    if (v11)
    {
      memcpy(v11, (a1 + 2992), 4 * *(a2 + 128));
    }

    *(a1 + 2988) = 0;
  }

  return pthread_mutex_unlock((a1 + 3392));
}

uint64_t _VideoTransmitter_HandleThermalEvent(uint64_t result, void *a2)
{
  v2 = result + 0x4000;
  v3 = *(result + 16924);
  if (v3 != *(result + 16920))
  {
    if (a2)
    {
      v4 = a2[2];
      if (v4 != 0xFFFFFFFFLL)
      {
        (*(*a2 + 16))(v4, v3);
      }
    }

    result = reportingThermal();
    *(v2 + 536) = *(v2 + 540);
  }

  return result;
}

uint64_t _VideoTransmitter_EncodeVideo(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, CMTime *a4, unsigned int a5, char a6, uint64_t a7, double a8)
{
  v65 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v16 = micro();
  time = *a4;
  Seconds = CMTimeGetSeconds(&time);
  if (!a1)
  {
    _VideoTransmitter_EncodeVideo_cold_4();
    return LODWORD(time.value);
  }

  if (!a2)
  {
    _VideoTransmitter_EncodeVideo_cold_3();
    return LODWORD(time.value);
  }

  v18 = Seconds;
  if (!a3 && *(a1 + 260))
  {
    _VideoTransmitter_EncodeVideo_cold_2();
    return LODWORD(time.value);
  }

  v19 = _VideoTransmitter_CalculateVideoTimestamp(a1, a3, a8, Seconds);
  _VideoTransmitter_UpdateAVHostTimeStats(a1, a8, v18);
  v20 = *(a1 + 4760);
  if (v20 == 0.0)
  {
    *(a1 + 4760) = v16;
    *(a1 + 4768) = v18;
    v20 = v16;
    v21 = v18;
  }

  else
  {
    v21 = *(a1 + 4768);
  }

  v22 = v18 - v21;
  v23 = v16 - v20;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    v26 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 4760);
        v28 = *(a1 + 4768);
        LODWORD(time.value) = 136317186;
        *(&time.value + 4) = v24;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "_VideoTransmitter_LogCaptureDriftWarning";
        HIWORD(time.epoch) = 1024;
        LODWORD(v52) = 3777;
        WORD2(v52) = 2048;
        *(&v52 + 6) = v27;
        HIWORD(v52) = 2048;
        v53 = v28;
        *v54 = 2048;
        *&v54[2] = v16;
        v55 = 2048;
        v56 = v18;
        v57 = 2048;
        v58 = v23;
        v59 = 2048;
        v60 = v22;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d firstSystemTime=%f firstVideoHostTime=%f currentTime=%f videoHostTimeInSeconds=%f systemTimeDifference=%f videoHostTimeDifference=%f", &time, 0x58u);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(a1 + 4760);
      v43 = *(a1 + 4768);
      LODWORD(time.value) = 136317186;
      *(&time.value + 4) = v24;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "_VideoTransmitter_LogCaptureDriftWarning";
      HIWORD(time.epoch) = 1024;
      LODWORD(v52) = 3777;
      WORD2(v52) = 2048;
      *(&v52 + 6) = v42;
      HIWORD(v52) = 2048;
      v53 = v43;
      *v54 = 2048;
      *&v54[2] = v16;
      v55 = 2048;
      v56 = v18;
      v57 = 2048;
      v58 = v23;
      v59 = 2048;
      v60 = v22;
      _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, " [%s] %s:%d firstSystemTime=%f firstVideoHostTime=%f currentTime=%f videoHostTimeInSeconds=%f systemTimeDifference=%f videoHostTimeDifference=%f", &time, 0x58u);
    }
  }

  v29 = v22;
  v30 = v23;
  if (!VCMU_CompareWithAccuracy(v29, v30, 0.5) && v16 - *(a1 + 23792) > 0.5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 4768);
        v45 = *(a1 + 4760);
        LODWORD(time.value) = 136317698;
        *(&time.value + 4) = v31;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "_VideoTransmitter_LogCaptureDriftWarning";
        HIWORD(time.epoch) = 1024;
        LODWORD(v52) = 3780;
        WORD2(v52) = 2048;
        *(&v52 + 6) = v22;
        HIWORD(v52) = 2048;
        v53 = v18;
        *v54 = 2048;
        *&v54[2] = v44;
        v55 = 2048;
        v56 = v23;
        v57 = 2048;
        v58 = v16;
        v59 = 2048;
        v60 = v45;
        v61 = 2048;
        v62 = vabdd_f64(v22, v23);
        v63 = 2048;
        v64 = 0x3FE0000000000000;
        _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, " [%s] %s:%d videoHostTimeDifference=%f[%f-%f] and systemTimeDifference=%f[%f-%f] drifted by %f with threshold=%f", &time, 0x6Cu);
      }
    }

    *(a1 + 23792) = v16;
  }

  time.value = 0x3FF0000000000000;
  if ((_VideoTransmitter_UpdateRateControlStatus(a1, (a1 + 4776), &v47, &time) & 0x80000000) != 0)
  {
    _VideoTransmitter_EncodeVideo_cold_1();
    return v48;
  }

  else
  {
    v46 = a6;
    _VideoTransmitter_UpdateEncoderBitrate(a1, *(a1 + 4776));
    value = a4->value;
    timescale = a4->timescale;
    flags = a4->flags;
    epoch = a4->epoch;
    FormatDescription = CMSampleBufferGetFormatDescription(a2);
    MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
    if (*(a1 + 23900) == 1 && MediaType == 1952606066)
    {
      *&time.value = v16;
      *&time.timescale = value;
      time.epoch = __PAIR64__(flags, timescale);
      *&v52 = epoch;
      *(&v52 + 1) = v19 | 0xAAAAAAAA00000000;
      v53 = a8;
      *v54 = a3;
      *&v54[4] = -1431655766;
      v39 = *(a7 + 16);
      v48 = *a7;
      v49 = v39;
      v50 = *(a7 + 32);
      return _VideoTransmitter_EncodeMultiImageVideo(a1, a2, &time, a5, v47, v46, &v48);
    }

    else
    {
      *&time.value = v16;
      *&time.timescale = value;
      time.epoch = __PAIR64__(flags, timescale);
      *&v52 = epoch;
      *(&v52 + 1) = v19 | 0xAAAAAAAA00000000;
      v53 = a8;
      *v54 = a3;
      *&v54[4] = -1431655766;
      v41 = *(a7 + 16);
      v48 = *a7;
      v49 = v41;
      v50 = *(a7 + 32);
      return _VideoTransmitter_EncodeSingleImageVideo(a1, a2, &time, a5, v47, v46, &v48, (a1 + 1944));
    }
  }
}

float64x2_t _VideoTransmitter_UpdateAVHostTimeStats(uint64_t a1, double a2, double a3)
{
  v3 = (a2 - a3) * 1000.0;
  v4.f64[0] = fabs(v3);
  if (v4.f64[0] > fabs(*(a1 + 408)))
  {
    *(a1 + 408) = v3;
  }

  if (v4.f64[0] < fabs(*(a1 + 416)))
  {
    *(a1 + 416) = v3;
  }

  v4.f64[1] = v3;
  result = vaddq_f64(v4, *(a1 + 392));
  *(a1 + 392) = result;
  ++*(a1 + 424);
  return result;
}

void _VideoTransmitter_CheckStatusAndHandleError(uint64_t a1, int a2)
{
  if ((a2 + 12915) <= 0xF && ((1 << (a2 + 115)) & 0xBD89) != 0 || a2 == -12211 || a2 == -12218)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VideoTransmitter_CheckStatusAndHandleError_cold_1();
      }
    }

    _VideoTransmitter_EnqueueEncoderError(a1, -2145517538);
  }
}

void _VideoTransmitter_EnqueueEncoderError(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = VCMemoryPool_Alloc(*(a1 + 18120));
  *v4 = a2;
  v5 = CMSimpleQueueEnqueue(*(a1 + 18136), v4);
  if (v5)
  {
    v6 = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v9 = 136316162;
        v10 = v7;
        v11 = 2080;
        v12 = "_VideoTransmitter_EnqueueEncoderError";
        v13 = 1024;
        v14 = 4269;
        v15 = 2048;
        v16 = a1;
        v17 = 1024;
        v18 = v6;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %p CMSimpleQueueEnqueue Full error=%d", &v9, 0x2Cu);
      }
    }

    VCMemoryPool_Free(*(a1 + 18120), v4);
  }
}

void _VideoTransmitter_TransmitFrame(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  if ((_VideoTransmitter_TransmitEncodedVideoFrame(a1, a2, a3) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoTransmitter_TransmitFrame_cold_1();
    }
  }
}

uint64_t _VideoTransmitter_TransmitEncodedVideoFrame(uint64_t a1, uint64_t a2, CMSampleBufferRef sbuf)
{
  *(&v206[21] + 4) = *MEMORY[0x1E69E9840];
  v6 = a1 + 23632;
  cf = 0;
  v184 = 0;
  v182 = 0u;
  *destination = 0u;
  v7 = *(a1 + 23640);
  *(a1 + 23640) = v7 + 1;
  WORD1(v182) = v7;
  if (!sbuf)
  {
    _VideoTransmitter_TransmitEncodedVideoFrame_cold_4();
    v11 = value;
    v21 = *buf;
    goto LABEL_18;
  }

  v8 = *(a1 + 16);
  if (v8 == 124 || v8 == 110)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
    if (!DataBuffer)
    {
      _VideoTransmitter_TransmitEncodedVideoFrame_cold_1(buf);
      v11 = *buf;
      goto LABEL_8;
    }

    DataLength = CMBlockBufferGetDataLength(DataBuffer);
  }

  else
  {
    DataLength = CMSampleBufferGetSampleSize(sbuf, 0);
  }

  v11 = DataLength;
LABEL_8:
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    _VideoTransmitter_ProcessMediaPriorityAttachment(a1, ValueAtIndex, a2);
    value = 0;
    ValueIfPresent = CFDictionaryGetValueIfPresent(ValueAtIndex, *MEMORY[0x1E6960458], &value);
    v15 = *MEMORY[0x1E695E4D0];
    v16 = value;
    v17 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960400]);
    _ZF = v15 != v16 || ValueIfPresent == 0;
    if (_ZF && *MEMORY[0x1E695E4C0] == v17)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a2 + 464);
          *buf = 136316162;
          *&buf[4] = v26;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoTransmitter_ProcessSampleAttachmentsArray";
          *&buf[22] = 1024;
          *&buf[24] = 4339;
          LOWORD(v206[0]) = 1024;
          *(v206 + 2) = v28;
          HIWORD(v206[0]) = 1024;
          LODWORD(v206[1]) = v11;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GOT A KEY FRAME FROM ENCODER AT INDEX=%d SIZE=%d!", buf, 0x28u);
        }
      }

      v20 = 0;
    }

    else
    {
      v20 = 0x80;
    }

    *(a2 + 104) = v20;
    if (v15 == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6984048]))
    {
      *(a2 + 108) |= 2u;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(a2 + 464);
          *buf = 136315906;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoTransmitter_ProcessSampleAttachmentsArray";
          *&buf[22] = 1024;
          *&buf[24] = 4348;
          LOWORD(v206[0]) = 1024;
          *(v206 + 2) = v31;
          _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GET A REFRESH FRAME FROM ENCODER AT INDEX=%d!", buf, 0x22u);
        }
      }
    }

    *valuePtr = -1431655766;
    v32 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6984050]);
    if (v32)
    {
      CFNumberGetValue(v32, kCFNumberSInt32Type, valuePtr);
      v33 = *valuePtr;
      *(a2 + 108) |= 1u;
    }

    else
    {
      v33 = -1;
    }

    *(a2 + 112) = v33;
    v34 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E69840C8]);
    if (v34)
    {
      CFNumberGetValue(v34, kCFNumberDoubleType, (a2 + 144));
    }

    else
    {
      *(a2 + 144) = 0xBFF0000000000000;
    }

    v35 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6984088]);
    if (v35)
    {
      CFNumberGetValue(v35, kCFNumberDoubleType, (a2 + 152));
    }

    else
    {
      *(a2 + 152) = 0xBFF0000000000000;
    }

    v36 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6984068]);
    if (v36)
    {
      CFNumberGetValue(v36, kCFNumberDoubleType, (a2 + 160));
    }

    else
    {
      *(a2 + 160) = 0xBFF0000000000000;
    }

    LODWORD(v178) = 0;
    v37 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6984038]);
    if (v37)
    {
      CFNumberGetValue(v37, kCFNumberSInt32Type, &v178);
    }

    *(a2 + 184) = v178;
    LODWORD(v184) = VideoUtil_GetEncodedFrameSEINaluOverheadBytes(ValueAtIndex);
    v38 = CFDictionaryGetValue(ValueAtIndex, @"EncoderMode");
    if (v38)
    {
      CFNumberGetValue(v38, kCFNumberSInt32Type, (a2 + 236));
    }

    else
    {
      *(a2 + 236) = 0;
    }

    if (*(a2 + 448))
    {
      if ((*(v6 + 269) & 1) == 0)
      {
        v39 = CFDictionaryGetValue(ValueAtIndex, @"TileOrder");
        if (v39)
        {
          CFNumberGetValue(v39, kCFNumberSInt16Type, &v182);
          if (v182 != WORD1(v182) && VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v40 = VRTraceErrorLogLevelToCSTR();
            v41 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              *&buf[4] = v40;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoTransmitter_ProcessSampleAttachmentsArray";
              *&buf[22] = 1024;
              *&buf[24] = 4408;
              LOWORD(v206[0]) = 1024;
              *(v206 + 2) = v182;
              HIWORD(v206[0]) = 1024;
              LODWORD(v206[1]) = WORD1(v182);
              _os_log_error_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_ERROR, " [%s] %s:%d Received decoding order %u, but expecting decoding order %u", buf, 0x28u);
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
              _VideoTransmitter_TransmitEncodedVideoFrame_cold_2();
            }
          }

          LOWORD(v182) = 0;
        }

        v45 = CFDictionaryGetValue(ValueAtIndex, @"TileID");
        if (v45)
        {
          CFNumberGetValue(v45, kCFNumberSInt32Type, &v182 + 4);
          v44 = DWORD1(v182);
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _VideoTransmitter_TransmitEncodedVideoFrame_cold_3();
            }
          }

          v44 = 0;
          DWORD1(v182) = 0;
        }

LABEL_69:
        DWORD2(v182) = v44;
LABEL_70:
        if (*(a2 + 456) == 1)
        {
          v46 = CFDictionaryGetValue(ValueAtIndex, @"TemporalID");
          if (v46)
          {
            CFNumberGetValue(v46, kCFNumberSInt32Type, &v182 + 8);
          }
        }

        v21 = v11;
        goto LABEL_74;
      }
    }

    else if ((*(v6 + 269) & 1) == 0)
    {
      goto LABEL_70;
    }

    LOWORD(v182) = *(a2 + 462);
    if (v182 != WORD1(v182) && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v42;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_ProcessSampleAttachmentsArray";
        *&buf[22] = 1024;
        *&buf[24] = 4427;
        LOWORD(v206[0]) = 1024;
        *(v206 + 2) = v182;
        HIWORD(v206[0]) = 1024;
        LODWORD(v206[1]) = WORD1(v182);
        _os_log_error_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_ERROR, " [%s] %s:%d Received decoding order %u, but expecting decoding order %u", buf, 0x28u);
      }
    }

    v44 = *(a2 + 464);
    goto LABEL_69;
  }

  v21 = v11;
LABEL_18:
  if (*(a2 + 456) == 1)
  {
    _VideoTransmitter_GetStreamIndexFromAttachment(sbuf, &v182 + 8);
  }

  *(a2 + 104) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 144) = _Q0;
  *(a2 + 160) = 0xBFF0000000000000;
LABEL_74:
  if (DWORD2(v182) >= *(a1 + 1928))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v138 = *(a1 + 1928);
        *buf = 136316418;
        *&buf[4] = v47;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_ReadSampleBufferAttachments";
        *&buf[22] = 1024;
        *&buf[24] = 4471;
        LOWORD(v206[0]) = 2048;
        *(v206 + 2) = a1;
        WORD1(v206[1]) = 1024;
        HIDWORD(v206[1]) = DWORD2(v182);
        LOWORD(v206[2]) = 1024;
        *(&v206[2] + 2) = v138;
        _os_log_error_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_ERROR, " [%s] %s:%d VideoTransmitter=%p Invaid streamIndex=%d (streamCount=%u)", buf, 0x32u);
      }
    }

    DWORD2(v182) = 0;
  }

  if (*(a1 + 496) == 2)
  {
    _VideoTransmitter_UpdateVideoPriorityScore(a1, a2, sbuf);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v50 = VRTraceErrorLogLevelToCSTR();
    v51 = *MEMORY[0x1E6986650];
    v52 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(a2 + 188);
        *buf = 136316418;
        *&buf[4] = v50;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_TransmitEncodedVideoFrame";
        *&buf[22] = 1024;
        *&buf[24] = 5899;
        LOWORD(v206[0]) = 1024;
        *(v206 + 2) = v53;
        HIWORD(v206[0]) = 1024;
        LODWORD(v206[1]) = v182;
        WORD2(v206[1]) = 1024;
        *(&v206[1] + 6) = DWORD1(v182);
        _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Encoder returned frame with RTP timestamp %d, decodingOrder %d, tileID %d", buf, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v139 = *(a2 + 188);
      *buf = 136316418;
      *&buf[4] = v50;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoTransmitter_TransmitEncodedVideoFrame";
      *&buf[22] = 1024;
      *&buf[24] = 5899;
      LOWORD(v206[0]) = 1024;
      *(v206 + 2) = v139;
      HIWORD(v206[0]) = 1024;
      LODWORD(v206[1]) = v182;
      WORD2(v206[1]) = 1024;
      *(&v206[1] + 6) = DWORD1(v182);
      _os_log_debug_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Encoder returned frame with RTP timestamp %d, decodingOrder %d, tileID %d", buf, 0x2Eu);
    }
  }

  if ((*(v6 + 232) & 1) == 0)
  {
    if (*(a1 + 496) == 5)
    {
      v54 = 1024;
    }

    else
    {
      v54 = 400;
    }

    if (*(a1 + 17216) && (v55 = *(a2 + 180)) != 0)
    {
      if (v55 <= v11)
      {
        v55 = v11;
      }

      v56 = v55 + v54 + 8;
    }

    else
    {
      v56 = v54 + v11;
    }

    destination[0] = MEMORY[0x1E1288880](*(a1 + 23680), v56, 2267626275, 0);
    destination[1] = __PAIR64__(v56, v11);
    if (!destination[0])
    {
      _VideoTransmitter_TransmitEncodedVideoFrame_cold_5(buf);
      goto LABEL_262;
    }

    if (v11 >= 1)
    {
      v57 = CMSampleBufferGetDataBuffer(sbuf);
      CMBlockBufferCopyDataBytes(v57, 0, v21 & 0x7FFFFFFF, destination[0]);
    }
  }

  v181 = -1431655766;
  dataPointerOut = 0;
  v58 = *(a1 + 16);
  if (v58 != 110 && v58 != 124)
  {
    v63 = *(a1 + 17876);
    if (v63 == 1635148593 || v63 == 1902671459 || v63 == 1752589105)
    {
      if (destination[0] && LODWORD(destination[1]) == 4)
      {
        *destination[0] = 0x4000000;
      }

      if (!*(a2 + 104))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v64 = VRTraceErrorLogLevelToCSTR();
          v65 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v66 = *(a1 + 24);
            v67 = *(a1 + 28);
            v69 = *(a2 + 188);
            v68 = *(a2 + 192);
            *buf = 136316674;
            *&buf[4] = v64;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoTransmitter_PrepareBitstream";
            *&buf[22] = 1024;
            *&buf[24] = 4533;
            LOWORD(v206[0]) = 1024;
            *(v206 + 2) = v66;
            HIWORD(v206[0]) = 1024;
            LODWORD(v206[1]) = v67;
            WORD2(v206[1]) = 1024;
            *(&v206[1] + 6) = v68;
            WORD1(v206[2]) = 1024;
            HIDWORD(v206[2]) = v69;
            _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoUtil_AddImgDescToBitstream to stream with width %d, height %d fUseSPSPPS %d TS:%08X", buf, 0x34u);
          }
        }

        VideoUtil_AddImgDescToBitstream(sbuf, a2, *(a2 + 192), *(a1 + 17876), destination[0], &destination[1], SHIDWORD(destination[1]));
      }

      if (*(a1 + 17216) && LODWORD(destination[1]) != 4 && SLODWORD(destination[1]) < *(a2 + 180))
      {
        VideoUtil_AddFakeLargeFrameData(a2, destination[0], &destination[1]);
      }
    }

    v70 = *(a2 + 180);
    if (v70)
    {
      if (LODWORD(destination[1]) < v70)
      {
        if (*(a1 + 17220))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v71 = VRTraceErrorLogLevelToCSTR();
            v72 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v73 = *(a2 + 180);
              *buf = 136316162;
              *&buf[4] = v71;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoTransmitter_PrepareBitstream";
              *&buf[22] = 1024;
              *&buf[24] = 4560;
              LOWORD(v206[0]) = 1024;
              *(v206 + 2) = v73;
              HIWORD(v206[0]) = 1024;
              LODWORD(v206[1]) = destination[1];
              _os_log_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ^^^^ CODEC LATE/SKIPPING: reqd %d  got %d ", buf, 0x28u);
            }
          }
        }
      }
    }

    Stream = _VideoTransmitter_UpdateEncoderArgsAndGetStream(a1, a2, v49, &v182);
    if (_VideoTransmitter_EncryptFrame(a1, Stream, &dataPointerOut, &v181, &v182, *(a2 + 104) == 0, &cf))
    {
      _VideoTransmitter_TransmitEncodedVideoFrame_cold_7();
    }

    else
    {
      if (Stream)
      {
        goto LABEL_129;
      }

      _VideoTransmitter_TransmitEncodedVideoFrame_cold_12();
    }

LABEL_262:
    v86 = *buf;
    goto LABEL_242;
  }

  ++*(a1 + 18244);
  _VideoTransmitter_UpdateCompoundStreamIDs(a1, a2, &v182);
  v59 = DWORD2(v182);
  v60 = a1 + 152 * SDWORD2(v182);
  Stream = v60 + 560;
  *(v60 + 612) = DWORD1(v182);
  *(v60 + 680) = v59;
  *(a1 + 4832) = _VideoTransmitter_GetFECLevelOfProtection(a1, a2);
  if (*(v6 + 232) != 1)
  {
    dataPointerOut = destination[0];
    v181 = destination[1];
    goto LABEL_129;
  }

  v62 = CMSampleBufferGetDataBuffer(sbuf);
  if (CMBlockBufferGetDataPointer(v62, 0, 0, 0, &dataPointerOut))
  {
    _VideoTransmitter_TransmitEncodedVideoFrame_cold_6();
    goto LABEL_262;
  }

  v181 = v11;
LABEL_129:
  v74 = *(a2 + 104);
  v75 = *(a2 + 252);
  v76 = *(a1 + 2048);
  if (v76 && VCMediaControlInfoGeneratorGetVersion(v76) == 1)
  {
    v75 &= ~4u;
  }

  v168 = v75;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v77 = VRTraceErrorLogLevelToCSTR();
    v78 = *MEMORY[0x1E6986650];
    v79 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = *(a2 + 392);
        *buf = 136315906;
        *&buf[4] = v77;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_TransmitEncodedVideoFrame";
        *&buf[22] = 1024;
        *&buf[24] = 5949;
        LOWORD(v206[0]) = 1024;
        *(v206 + 2) = v80;
        _os_log_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [Media Priority] Sending video priority=%d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      _VideoTransmitter_TransmitEncodedVideoFrame_cold_8();
    }
  }

  v171 = v74 == 0;
  v173 = dataPointerOut;
  v177 = v181;
  v175 = *(a2 + 188);
  *buf = *(a2 + 40);
  *&buf[16] = *(a2 + 56);
  Seconds = CMTimeGetSeconds(buf);
  v82 = *(a2 + 108);
  v176 = *(a2 + 362);
  v166 = *(a2 + 392);
  v167 = *(a2 + 248);
  v164 = *(a2 + 456);
  v165 = *(a2 + 388);
  v83 = *(a2 + 458);
  v84 = v184;
  v170 = *(a2 + 408);
  v178 = *(a2 + 412);
  v179 = *(a2 + 428);
  v162 = *(a2 + 436);
  v163 = v83;
  v169 = *(a2 + 440);
  v196 = 0;
  ptr = 0;
  v85 = micro();
  v160 = *(a1 + 4832);
  if (v74)
  {
    if ((v82 & 2) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_140;
  }

  if (!*(a1 + 260))
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VideoTransmitter-PacketizeAndTransmitEncodedVideoFrame");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v89 = VRTraceErrorLogLevelToCSTR();
      v90 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v89;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_PacketizeAndTransmitEncodedVideoFrame";
        *&buf[22] = 1024;
        *&buf[24] = 5650;
        LOWORD(v206[0]) = 2048;
        *(v206 + 2) = a1;
        _os_log_impl(&dword_1DB56E000, v90, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VideoTransmitter-PacketizeAndTransmitEncodedVideoFrame (%p) Transmitting first key frame", buf, 0x26u);
      }
    }
  }

  *(a1 + 260) = 1;
  ++*(a1 + 264);
  ++*(a1 + 272);
  if ((v82 & 2) != 0)
  {
LABEL_140:
    ++*(a1 + 272);
  }

LABEL_141:
  v86 = 2149449731;
  if (!*(a1 + 260))
  {
    v86 = 2149449745;
    goto LABEL_242;
  }

  SummerAdd(v177, v85);
  v174 = Stream;
  SummerAdd(v84, v85);
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v87 = *(a1 + 496);
  value = (a1 + 2148);
  LOWORD(v187) = 10;
  *(&v187 + 1) = a1 + 2144;
  *&v188 = a1 + 2080;
  v156 = (a1 + 2080);
  v155 = (a1 + 280);
  *(&v188 + 1) = a1 + 280;
  *&v189 = a1 + 288;
  v191 = 0;
  *(&v189 + 1) = a1 + 276;
  v88 = v87 == 2 && *(a1 + 4832) == 0;
  BYTE3(v191) = v88;
  allocator = *(a1 + 23672);
  v193 = a1 + 304;
  v194 = a1 + 312;
  BYTE4(v191) = *(v6 + 116);
  if (!VCRateControlGetProbingSequencePacketizationInfo(*(a1 + 2056), &v190, &v190 + 2, &v190 + 1) || (*(a1 + 17226) & 1) == 0)
  {
    DWORD2(v190) = 0;
    *&v190 = 0;
  }

  if (*(a1 + 496) == 2)
  {
    if (*(a1 + 18208))
    {
      LODWORD(v190) = 3;
    }

    *(a1 + 18208) = 0;
  }

  v172 = v6;
  v157 = v190;
  BYTE12(v190) = *(a1 + 17212) != 0;
  v159 = v190 > 0;
  ProbePkt = Throttling_VideoTransmitter_ForceMinFirstProbePkt(*(a1 + 17224), v159);
  v92 = 0;
  BYTE13(v190) = ProbePkt;
  v93 = *(a1 + 17376);
  v95 = v93 == 2 || v93 == 4;
  if (v74)
  {
    v96 = v82;
  }

  else
  {
    v96 = v82;
    if (v95)
    {
      v92 = *(a1 + 4776) >> 6 < 0x271u;
    }
  }

  BYTE14(v190) = v92;
  HIWORD(v191) = *(v174 + 48);
  BYTE5(v191) = *(v172 + 4);
  pthread_mutex_lock((a1 + 17688));
  v97 = *(a1 + 17754);
  if (!v97)
  {
    v97 = *(a1 + 17676);
  }

  LOWORD(v191) = v97;
  BYTE2(v191) = *(a1 + 17678);
  pthread_mutex_unlock((a1 + 17688));
  if (!v176 || (*(a1 + 17752) & 1) != 0)
  {
    LOWORD(v191) = v191 - VTU_GetOverhead(v176, (v87 < 6) & (0x3Au >> v87), (v87 < 6) & (0x3Au >> v87), BYTE2(v191));
    v98 = v174;
    goto LABEL_177;
  }

  LOWORD(v191) = v191 - VCNetworkUtils_AdditionalOverheadForIDSOptions();
  *valuePtr = 0;
  *v204 = 0;
  *v204 = VCMediaControlInfoGeneratorGetType(*(a1 + 2048));
  v204[4] = VCMediaControlInfoGeneratorGetVersion(*(a1 + 2048));
  v98 = v174;
  v99 = VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle(*v174, v204, valuePtr);
  if ((v99 & 0x80000000) == 0)
  {
    LOWORD(v191) = v191 - *valuePtr;
LABEL_177:
    v100 = v96;
    goto LABEL_178;
  }

  v116 = v99;
  v100 = v96;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v154 = VRTraceErrorLogLevelToCSTR();
    v117 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v118 = *v174;
      *buf = 136316674;
      *&buf[4] = v154;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoTransmitter_SetupSplitterData";
      *&buf[22] = 1024;
      *&buf[24] = 2454;
      LOWORD(v206[0]) = 1024;
      *(v206 + 2) = v116;
      HIWORD(v206[0]) = 2048;
      v206[1] = v118;
      LOWORD(v206[2]) = 1024;
      *(&v206[2] + 2) = *v204;
      HIWORD(v206[2]) = 1024;
      LODWORD(v206[3]) = v204[4];
      _os_log_error_impl(&dword_1DB56E000, v117, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to get framing overhead response=%d rtpHandle=%p, mediaControlConfig generatorType=%u version=%d", buf, 0x38u);
    }
  }

LABEL_178:
  v6 = v172;
  v101 = *(a1 + 16);
  if (v101 == 124 || v101 == 110)
  {
    v102 = VTU_SplitGenericDataIntoPackets(&value, v101, v173, v177, &ptr);
  }

  else
  {
    v102 = VTU_SplitVideoIntoPackets(&value, v101, v173, v177, &ptr, 0, 0, 1, 0, *(a1 + 4824), *(a1 + 4776), v160);
  }

  v103 = v102;
  if (v102 < 2)
  {
    if (!v102)
    {
LABEL_186:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VideoTransmitter_TransmitEncodedVideoFrame_cold_10();
        }
      }

      v104 = *(v172 + 272);
      if (v104 >= 1)
      {
        v105 = 0;
        v106 = (a1 + 1960);
        do
        {
          if (*v106 != 0xFFFFFFFFLL)
          {
            (*(*(v106 - 2) + 48))(*v106, a1 + 2148, 2);
            v104 = *(v172 + 272);
          }

          ++v105;
          v106 += 3;
        }

        while (v105 < v104);
      }

      if (VRTraceGetErrorLogLevelForModule() > 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VideoTransmitter_TransmitEncodedVideoFrame_cold_11();
        }
      }

      v107 = ptr;
      if (!ptr || ptr == v173)
      {
        goto LABEL_242;
      }

LABEL_241:
      CFAllocatorDeallocate(allocator, v107);
      goto LABEL_242;
    }
  }

  else
  {
    *(a1 + 18200) = v85;
  }

  if (v102 > *(a1 + 276))
  {
    goto LABEL_186;
  }

  *(a1 + 16896) = v102;
  if (*(a1 + 16908) == 1)
  {
    *(a1 + 16904) = v175;
    *(a1 + 16908) = 0;
  }

  else
  {
    v108 = v175 - *(a1 + 16904);
    if (v108 && v108 <= 0x7FFFFFFE)
    {
      ++*(a1 + 16900);
      *(a1 + 16904) = v175;
    }
  }

  if (v100 & 2 | v171)
  {
    RTPRecordKeyFrame(*v98, *(a1 + 16), v102, v175, v171);
    v109 = *(a1 + 2064);
    if (v109)
    {
      *&buf[12] = 0;
      *&buf[4] = 0;
      *&buf[20] = 0x400000000;
      memset(&v206[2] + 1, 0, 19);
      memset(&v206[6], 0, 124);
      v110 = *(a1 + 16);
      *buf = 10;
      v206[1] = 0;
      v206[0] = 0;
      LOBYTE(v206[2]) = v74 == 0;
      HIDWORD(v206[4]) = v175;
      v206[5] = __PAIR64__(v103, v110);
      VCRateControlSetStatistics(v109, buf);
    }
  }

  v161 = v100;
  if ((*(a1 + 17212) || *(a1 + 17216)) && v157 >= 1)
  {
    v111 = v190;
    if (v190 != v103)
    {
      if (*(a1 + 17220))
      {
        v112 = DWORD2(v190);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v113 = VRTraceErrorLogLevelToCSTR();
          v114 = *MEMORY[0x1E6986650];
          v115 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              *&buf[4] = v113;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoTransmitter_LogBWEInfo";
              *&buf[22] = 1024;
              *&buf[24] = 2279;
              LOWORD(v206[0]) = 1024;
              *(v206 + 2) = v111;
              HIWORD(v206[0]) = 1024;
              LODWORD(v206[1]) = v103;
              _os_log_impl(&dword_1DB56E000, v114, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ^^^^MISMATCH of req'd Probe Packets and splitter's: %d %d", buf, 0x28u);
            }
          }

          else if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316162;
            *&buf[4] = v113;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoTransmitter_LogBWEInfo";
            *&buf[22] = 1024;
            *&buf[24] = 2279;
            LOWORD(v206[0]) = 1024;
            *(v206 + 2) = v111;
            HIWORD(v206[0]) = 1024;
            LODWORD(v206[1]) = v103;
            _os_log_debug_impl(&dword_1DB56E000, v114, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ^^^^MISMATCH of req'd Probe Packets and splitter's: %d %d", buf, 0x28u);
          }
        }

        if (g_iBWEstLogLevel >= 6)
        {
          memset(v204, 170, 20);
          strncpy(buf, "^^^^Probe pkts ", 0xC8uLL);
          if (v103 < 1)
          {
            v158 = 0;
          }

          else
          {
            v140 = 0;
            v158 = 0;
            v141 = *v155;
            do
            {
              __sprintf_chk(v204, 0, 0x14uLL, "%d ", *(v141 + v140));
              __strlcat_chk();
              v141 = *v155;
              v142 = v158;
              if (v112 * 0.95 <= *(*v155 + v140))
              {
                v142 = v158 + 1;
              }

              v158 = v142;
              if (strlen(buf) > 0xB9)
              {
                break;
              }

              _ZF = 4 * v103 - 4 == v140;
              v140 += 4;
            }

            while (!_ZF);
          }

          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if (v158 >= v111)
          {
            if (ErrorLogLevelForModule >= 8)
            {
              v150 = VRTraceErrorLogLevelToCSTR();
              v151 = *MEMORY[0x1E6986650];
              v152 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] != 1)
              {
                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
                {
                  _VideoTransmitter_TransmitEncodedVideoFrame_cold_9();
                }

                goto LABEL_286;
              }

              if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136315906;
                *&valuePtr[4] = v150;
                v198 = 2080;
                v199 = "_VideoTransmitter_LogBWEInfo";
                v200 = 1024;
                v201 = 2301;
                v202 = 2080;
                *v203 = buf;
                v147 = " [%s] %s:%d szMsg = %s";
                v148 = v151;
                v149 = 38;
                goto LABEL_281;
              }
            }
          }

          else if (ErrorLogLevelForModule >= 8)
          {
            v144 = VRTraceErrorLogLevelToCSTR();
            v145 = *MEMORY[0x1E6986650];
            v146 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] != 1)
            {
              if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
              {
                *valuePtr = 136316162;
                *&valuePtr[4] = v144;
                v198 = 2080;
                v199 = "_VideoTransmitter_LogBWEInfo";
                v200 = 1024;
                v201 = 2303;
                v202 = 1024;
                *v203 = v112;
                *&v203[4] = 2080;
                *&v203[6] = buf;
                _os_log_debug_impl(&dword_1DB56E000, v145, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Expected: %d but \t %s", valuePtr, 0x2Cu);
              }

              goto LABEL_286;
            }

            if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 136316162;
              *&valuePtr[4] = v144;
              v198 = 2080;
              v199 = "_VideoTransmitter_LogBWEInfo";
              v200 = 1024;
              v201 = 2303;
              v202 = 1024;
              *v203 = v112;
              *&v203[4] = 2080;
              *&v203[6] = buf;
              v147 = " [%s] %s:%d Expected: %d but \t %s";
              v148 = v145;
              v149 = 44;
LABEL_281:
              _os_log_impl(&dword_1DB56E000, v148, OS_LOG_TYPE_DEFAULT, v147, valuePtr, v149);
            }
          }

LABEL_286:
          v6 = v172;
        }
      }
    }
  }

  *buf = v178;
  *&buf[16] = v179;
  CMTimeGetSeconds(buf);
  kdebug_trace();
  if (*v6 > 1)
  {
    VideoUtil_ConstructSubFrameIdentifer(*(v174 + 48), *(v174 + 52));
    kdebug_trace();
  }

  v119 = *(a1 + 496);
  if (v119 == 5 || v119 == 3)
  {
    *&buf[16] = 0x1000000;
    memset(&v206[1], 0, 164);
    v120 = *(a1 + 16984) + *(a1 + 16968);
    v121 = *(a1 + 16976) + *(a1 + 16960);
    v122 = *(a1 + 2064);
    *buf = 6;
    *&buf[8] = v85;
    *&buf[24] = (v175 >> 8);
    v206[0] = __PAIR64__(v120, v121);
    VCRateControlSetStatistics(v122, buf);
  }

  *&buf[4] = v178;
  *&buf[20] = v179;
  *buf = v170;
  LODWORD(v206[0]) = v162;
  *(v206 + 4) = v169;
  *(&v153 + 1) = &v196;
  *&v153 = ptr;
  v123 = _VideoTransmitter_TransmitVideoPackets(a1, v174, v103, v175, v171, 0, 0, v161, Seconds, v85, v168, v167, v159, v177, v153, (a2 + 338), v176, v166, (a2 + 364), v165, buf, v164, v163);
  if ((v123 & 0x80000000) != 0)
  {
    v86 = v123;
    v107 = ptr;
    if (!ptr || ptr == v173)
    {
      goto LABEL_242;
    }

    goto LABEL_241;
  }

  ++*(a1 + 18252);
  if (!v74 && *(v6 + 176) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v124 = VRTraceErrorLogLevelToCSTR();
      v125 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v126 = *(a1 + 264);
        v127 = *(a2 + 338);
        v128 = *(v174 + 48);
        v129 = *(v174 + 56);
        *buf = 136317186;
        *&buf[4] = v124;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_PacketizeAndTransmitEncodedVideoFrame";
        *&buf[22] = 1024;
        *&buf[24] = 5744;
        LOWORD(v206[0]) = 2048;
        *(v206 + 2) = a1;
        WORD1(v206[1]) = 1024;
        HIDWORD(v206[1]) = v126;
        LOWORD(v206[2]) = 1024;
        *(&v206[2] + 2) = v196;
        HIWORD(v206[2]) = 1024;
        LODWORD(v206[3]) = v127;
        WORD2(v206[3]) = 1024;
        *(&v206[3] + 6) = v128;
        WORD1(v206[4]) = 1024;
        HIDWORD(v206[4]) = v129;
        _os_log_impl(&dword_1DB56E000, v125, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter[%p] keyFrameCounter=%d Sent key frame bytes=%d with streamID=%d decodingOrder=%d ssrc=%u", buf, 0x44u);
      }
    }

    *(a1 + 4736) = v85;
    *buf = v196;
    v130 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v132 = CFNumberCreate(v130, kCFNumberSInt16Type, buf);
    CFDictionaryAddValue(Mutable, @"VCVSKeyFrameSize", v132);
    CFRelease(v132);
    reportingVideoStreamEvent();
    CFRelease(Mutable);
  }

  if (ptr && ptr != v173)
  {
    CFAllocatorDeallocate(allocator, ptr);
  }

  pthread_mutex_lock(v156);
  v133 = *(a1 + 2072);
  *(a1 + 2072) = 0;
  pthread_mutex_unlock(v156);
  SummerAdd((v196 + v133), v85);
  v86 = 0;
LABEL_242:
  v134 = *(a2 + 144);
  if (v134 <= 0.0)
  {
    v134 = *(a1 + 16928);
  }

  *(a1 + 16928) = v134;
  v135 = *(a2 + 152);
  if (v135 <= 0.0)
  {
    v135 = *(a1 + 16936);
  }

  *(a1 + 16936) = v135;
  v136 = *(a2 + 160);
  if (v136 <= 0.0)
  {
    v136 = *(a1 + 16944);
  }

  *(a1 + 16944) = v136;
  if (destination[0])
  {
    CFAllocatorDeallocate(*(a1 + 23680), destination[0]);
    destination[0] = 0;
  }

  if (sbuf && (*(v6 + 232) & 1) != 0)
  {
    CFRelease(sbuf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v86;
}

void _VideoTransmitter_DispatchEncoderCallback(uint64_t a1, uint64_t a2, int a3, opaqueCMSampleBuffer *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = CheckInHandleDebug();
  if (v7)
  {
    v8 = v7;
    v9 = (v7 + 23768);
    _VideoTransmitter_CheckStatusAndHandleError(v7, a3);
    memset(&v25, 170, sizeof(v25));
    CMSampleBufferGetPresentationTimeStamp(&v25, a4);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v12 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a2 + 188);
          v14 = *(a2 + 462);
          *buf = 136316418;
          v27 = v10;
          v28 = 2080;
          v29 = "_VideoTransmitter_DispatchEncoderCallback";
          v30 = 1024;
          v31 = 4220;
          v32 = 1024;
          v33 = v13;
          v34 = 2048;
          value = v25.value;
          v36 = 1024;
          v37 = v14;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Encoded frame with timestamp=%u, presentationTime=%lld, inputFrameIndex=%d", buf, 0x32u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a2 + 188);
        v24 = *(a2 + 462);
        *buf = 136316418;
        v27 = v10;
        v28 = 2080;
        v29 = "_VideoTransmitter_DispatchEncoderCallback";
        v30 = 1024;
        v31 = 4220;
        v32 = 1024;
        v33 = v23;
        v34 = 2048;
        value = v25.value;
        v36 = 1024;
        v37 = v24;
        _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Encoded frame with timestamp=%u, presentationTime=%lld, inputFrameIndex=%d", buf, 0x32u);
      }
    }

    if (v9[133] == 1)
    {
      if (*(v8 + 18192) == 1)
      {
        pthread_mutex_lock((v8 + 23912));
        v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
        if (v15)
        {
          v16 = v15;
          if (CMSampleBufferGetSampleSize(a4, 0))
          {
            if (a4)
            {
              CFRetain(a4);
            }

            v16[1] = a4;
          }

          *v16 = a2;
          v17 = *(v8 + 23976);
          if (v17)
          {
            v18 = 0;
            v19 = *(a2 + 462);
            v20 = *(v8 + 23976);
            while (1)
            {
              v21 = v20;
              v20 = v20[2];
              v22 = v20 && v19 < *(*v20 + 462);
              if (!(v18 & 1 | (v19 > *(*v21 + 462))))
              {
                break;
              }

              if (v19 <= *(*v21 + 462))
              {
                v18 = 1;
                if (!v20)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                if (!v20)
                {
                  v22 = 1;
                }

                v18 = 1;
                if (v22)
                {
LABEL_30:
                  v16[2] = v20;
                  v21[2] = v16;
                  goto LABEL_38;
                }
              }
            }

            v16[2] = v17;
          }

          else
          {
            v16[2] = 0;
          }

          *(v8 + 23976) = v16;
        }

        else
        {
          _VideoTransmitter_DispatchEncoderCallback_cold_1();
        }

LABEL_38:
        pthread_mutex_unlock((v8 + 23912));
        dispatch_semaphore_signal(*(v8 + 18184));
      }

      else
      {
        if (a4)
        {
          CFRelease(a4);
        }

        _VideoTransmitter_ProcessEncoderArgs(v8, a2);
      }
    }

    else
    {
      _VideoTransmitter_TransmitEncodedFrame(v8, a2, a4, *v9);
    }

    CheckOutHandleDebug();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoTransmitter_DispatchEncoderCallback_cold_2();
    }
  }
}

void _VideoTransmitter_TransmitEncodedFrame(uint64_t a1, _DWORD *__new, CMSampleBufferRef sbuf, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (sbuf)
  {
    if (CMSampleBufferGetSampleSize(sbuf, 0))
    {
      valuePtr = 0;
      LODWORD(buf.value) = 0;
      if (*(a1 + 23632) < 2)
      {
        if (*(a1 + 23901) == 1)
        {
          valuePtr = *(__new + 231) + *(a1 + 23638);
          value_low = *(__new + 232);
          LODWORD(buf.value) = *(__new + 232);
          goto LABEL_20;
        }
      }

      else
      {
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
        ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
        Value = CFDictionaryGetValue(ValueAtIndex, @"TileOrder");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
          valuePtr += *(a1 + 23638);
        }

        v11 = CFDictionaryGetValue(ValueAtIndex, @"TileID");
        if (v11)
        {
          CFNumberGetValue(v11, kCFNumberSInt32Type, &buf);
          value_low = LODWORD(buf.value);
          goto LABEL_20;
        }
      }

      value_low = 0;
LABEL_20:
      VideoUtil_ConstructSubFrameIdentifer(valuePtr, value_low);
      buf = *(__new + 103);
      CMTimeGetSeconds(&buf);
      kdebug_trace();
      if (a4)
      {
        _VideoTransmitter_TransmitFrame(a1, __new, sbuf);
        _VideoTransmitter_ProcessEncoderArgs(a1, __new);
      }

      else
      {
        CFRetain(sbuf);
        v19 = *(a1 + 18104);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 0x40000000;
        v20[2] = ___VideoTransmitter_TransmitEncodedFrame_block_invoke;
        v20[3] = &__block_descriptor_tmp_287;
        v20[4] = a1;
        v20[5] = __new;
        v20[6] = sbuf;
        dispatch_async(v19, v20);
      }

      return;
    }

    _VideoTransmitter_ProcessEncoderArgs(a1, __new);
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    v18 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(buf.value) = 136315650;
      *(&buf.value + 4) = v17;
      LOWORD(buf.flags) = 2080;
      *(&buf.flags + 2) = "_VideoTransmitter_TransmitEncodedFrame";
      HIWORD(buf.epoch) = 1024;
      v23 = 4103;
      v16 = " [%s] %s:%d Encoder callback returned an empty sample buffer";
      goto LABEL_16;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      _VideoTransmitter_TransmitEncodedFrame_cold_1();
    }
  }

  else
  {
    _VideoTransmitter_ProcessEncoderArgs(a1, __new);
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    v15 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(buf.value) = 136315650;
      *(&buf.value + 4) = v13;
      LOWORD(buf.flags) = 2080;
      *(&buf.flags + 2) = "_VideoTransmitter_TransmitEncodedFrame";
      HIWORD(buf.epoch) = 1024;
      v23 = 4096;
      v16 = " [%s] %s:%d Encoder callback returned a nil sample buffer";
LABEL_16:
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v16, &buf, 0x1Cu);
      return;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      _VideoTransmitter_TransmitEncodedFrame_cold_2();
    }
  }
}

void VideoTransmitter_TransmitterProc(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_11:
    *a3 = 1;
    return;
  }

  v5 = a1 + 23901;
  if (*(a1 + 23901) != 1)
  {
    return;
  }

  v6 = (a1 + 18192);
  if ((*(a1 + 18192) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v27 = v7;
      v28 = 2080;
      v29 = "VideoTransmitter_TransmitterProc";
      v30 = 1024;
      v31 = 4242;
      v32 = 2080;
      *v33 = "com.apple.avconference.videotransmitter.transmitterproc";
      *&v33[8] = 2048;
      v34 = micro();
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Transmitter thread=%s started running at time=%f", buf, 0x30u);
    }
  }

  *v6 = 1;
  dispatch_semaphore_wait(*(a1 + 18184), 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 18193) == 1)
  {
    *(a1 + 18193) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v27 = v9;
        v28 = 2080;
        v29 = "VideoTransmitter_TransmitterProc";
        v30 = 1024;
        v31 = 4248;
        v32 = 2080;
        *v33 = "com.apple.avconference.videotransmitter.transmitterproc";
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Transmitter thread=%s terminated", buf, 0x26u);
      }
    }

    goto LABEL_11;
  }

  pthread_mutex_lock((a1 + 23912));
  v11 = *(a1 + 23976);
  if (v11)
  {
    v12 = (a1 + 23976);
    v13 = 1;
    do
    {
      if (!*v11 || *(v5 + 87) != *(*v11 + 231))
      {
        break;
      }

      v14 = v11[2];
      if (v13 >= 2 && VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        v17 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(*v11 + 231);
            v19 = *(*v11 + 232);
            *buf = 136316418;
            v27 = v15;
            v28 = 2080;
            v29 = "_VideoTransmitter_SendStoredFramesInSequence";
            v30 = 1024;
            v31 = 4182;
            v32 = 1024;
            *v33 = v18;
            *&v33[4] = 1024;
            *&v33[6] = v19;
            LOWORD(v34) = 1024;
            *(&v34 + 2) = v13;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending stored frameIndex=%d for encoderIndex=%d count=%d", buf, 0x2Eu);
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(*v11 + 231);
          v25 = *(*v11 + 232);
          *buf = 136316418;
          v27 = v15;
          v28 = 2080;
          v29 = "_VideoTransmitter_SendStoredFramesInSequence";
          v30 = 1024;
          v31 = 4182;
          v32 = 1024;
          *v33 = v24;
          *&v33[4] = 1024;
          *&v33[6] = v25;
          LOWORD(v34) = 1024;
          *(&v34 + 2) = v13;
          _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Sending stored frameIndex=%d for encoderIndex=%d count=%d", buf, 0x2Eu);
        }
      }

      _VideoTransmitter_TransmitEncodedFrame(a1, *v11, v11[1], 1);
      v20 = v11[1];
      if (v20)
      {
        CFRelease(v20);
      }

      v21 = *v12;
      if (*v12 == v11)
      {
        v23 = (a1 + 23976);
      }

      else
      {
        do
        {
          v22 = v21;
          v21 = v21[2];
        }

        while (v21 != v11);
        v23 = v22 + 2;
      }

      *v23 = v21[2];
      free(v11);
      ++v13;
      v11 = v14;
    }

    while (v14);
  }

  pthread_mutex_unlock((a1 + 23912));
  ++*(a1 + 18264);
}

uint64_t _VideoTransmitter_DequeueEncoderError(uint64_t a1)
{
  if (CMSimpleQueueGetCount(*(a1 + 18136)) < 1)
  {
    return 0;
  }

  while (1)
  {
    v2 = CMSimpleQueueDequeue(*(a1 + 18136));
    if (v2)
    {
      v3 = *v2;
      VCMemoryPool_Free(*(a1 + 18120), v2);
      if (v3 == -2145517538 || v3 == -2145517566)
      {
        break;
      }
    }

    if (CMSimpleQueueGetCount(*(a1 + 18136)) <= 0)
    {
      return 0;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoTransmitter_DequeueEncoderError_cold_1();
    }
  }

  return v3;
}

void _VideoTransmitter_ProcessMediaPriorityAttachment(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"PriorityScore");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
    v7 = valuePtr;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 460);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 >= 0xFF)
  {
    v9 = 255;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 1)
  {
    v9 = 1;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v18 = v10;
  if (v7 != v10)
  {
    v11 = CFNumberCreate(*(a1 + 23880), kCFNumberSInt16Type, &v18);
    CFDictionarySetValue(theDict, @"PriorityScore", v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    v14 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a3 + 460);
        *buf = 136316674;
        v20 = v12;
        v21 = 2080;
        v22 = "_VideoTransmitter_ProcessMediaPriorityAttachment";
        v23 = 1024;
        v24 = 4320;
        v25 = 2112;
        v26 = @"PriorityScore";
        v27 = 1024;
        v28 = v18;
        v29 = 1024;
        v30 = valuePtr;
        v31 = 1024;
        v32 = v15;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [Media Priority] key=%@, score=%u. (encoder=%3u, capture=%d)", buf, 0x38u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a3 + 460);
      *buf = 136316674;
      v20 = v12;
      v21 = 2080;
      v22 = "_VideoTransmitter_ProcessMediaPriorityAttachment";
      v23 = 1024;
      v24 = 4320;
      v25 = 2112;
      v26 = @"PriorityScore";
      v27 = 1024;
      v28 = v18;
      v29 = 1024;
      v30 = valuePtr;
      v31 = 1024;
      v32 = v16;
      _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [Media Priority] key=%@, score=%u. (encoder=%3u, capture=%d)", buf, 0x38u);
    }
  }

  *(a3 + 392) = v18;
}

uint64_t _VideoTransmitter_SetNewEncoderMode(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  *(a1 + 17052) = *(a2 + 236);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 17052);
      buf[0] = 136315906;
      *&buf[1] = v3;
      if (v5)
      {
        v6 = "Software";
      }

      else
      {
        v6 = "Hardware";
      }

      v9 = 2080;
      v10 = "_VideoTransmitter_SetNewEncoderMode";
      v11 = 1024;
      v12 = 4606;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SETTING NEW ENCODER MODE: %s.", buf, 0x26u);
    }
  }

  memset(buf, 0, sizeof(buf));
  snprintf(buf, 0xCuLL, "%d", *(a1 + 16));
  return reportingLog();
}

uint64_t _VideoTransmitter_FlushBasebandForRefreshFrame(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(result + 96))
  {
    v3 = result;
    v4 = result + 0x4000;
    v9 = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a2 + 188);
        *buf = 136315906;
        v11 = v5;
        v12 = 2080;
        v13 = "_VideoTransmitter_FlushBasebandForRefreshFrame";
        v14 = 1024;
        v15 = 4620;
        v16 = 1024;
        v17 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got a refresh frame (%08X)", buf, 0x22u);
      }
    }

    v8 = *(a2 + 188);
    *(v4 + 1288) = v8;
    RTPFlushBaseband(*(v3 + 560), *(v4 + 840), v8, 2u, 0, 0, &v9);
    return RTPMarkSpecialVideoFlush(*(v3 + 560), 1, v9);
  }

  return result;
}

uint64_t _videoTransmitter_HandleLTRFrame(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23636) != 1)
  {
    a3 = *(a2 + 188);
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
        v9 = *(a2 + 112);
        v16 = 136316162;
        v17 = v6;
        v18 = 2080;
        v19 = "_videoTransmitter_HandleLTRFrame";
        v20 = 1024;
        v21 = 4674;
        v22 = 1024;
        v23 = a3;
        v24 = 1024;
        v25 = v9;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Adding new LTR from encoder timestamp=%d token=%d", &v16, 0x28u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a2 + 112);
      v16 = 136316162;
      v17 = v6;
      v18 = 2080;
      v19 = "_videoTransmitter_HandleLTRFrame";
      v20 = 1024;
      v21 = 4674;
      v22 = 1024;
      v23 = a3;
      v24 = 1024;
      v25 = v15;
      _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Adding new LTR from encoder timestamp=%d token=%d", &v16, 0x28u);
    }
  }

  pthread_mutex_lock((a1 + 3392));
  v10 = *(a1 + 2180);
  if (v10 > 99)
  {
    *(a1 + 4 * *(a1 + 2184) + 2188) = *(a2 + 112);
    *(a1 + 4 * *(a1 + 2184) + 2588) = a3;
    v13 = *(a1 + 2184);
    if (v13 < 99)
    {
      *(a1 + 2184) = v13 + 1;
    }

    else
    {
      *(a1 + 2184) = 0;
    }
  }

  else
  {
    v11 = *(a1 + 2184) + v10;
    if (v11 > 99)
    {
      v11 -= 100;
    }

    v12 = a1 + 4 * v11;
    *(v12 + 2188) = *(a2 + 112);
    *(v12 + 2588) = a3;
    ++*(a1 + 2180);
  }

  return pthread_mutex_unlock((a1 + 3392));
}

uint64_t _VideoTransmitter_GetFramerateForStream(uint64_t a1, uint64_t a2, double *a3, float a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *a3 = 0.0;
  if (!a1)
  {
    return 2149449730;
  }

  v10 = -1431655766;
  v9 = NAN;
  v6 = *(a2 + 8);
  v7 = micro();
  result = SummerLengthPred(v7 - a4, v6, SummerGreaterThan, &v9, &v10);
  if ((result & 0x80000000) == 0 && v9 >= 0.5)
  {
    *a3 = v10 / v9;
  }

  return result;
}

uint64_t _VideoTransmitter_GenerateKeyFrameNow(uint64_t a1, int a2, unsigned __int16 *a3, uint64_t a4, int a5, int a6)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = 2149449730;
  if (a1)
  {
    pthread_mutex_lock((a1 + 2080));
    v13 = *(a1 + 496);
    v14 = v13 > 5;
    v15 = (1 << v13) & 0x2E;
    if (!v14 && v15 != 0)
    {
      *(a1 + 2176) = 1;
    }

    if (*(a1 + 4820) && a6 && !*(a1 + 2176))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 2168);
          v47 = 136315906;
          v48 = v17;
          v49 = 2080;
          v50 = "_VideoTransmitter_GenerateKeyFrameNow";
          v51 = 1024;
          v52 = 4753;
          v53 = 1024;
          v54 = v19;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Current FIR[%u] is not stabilized, ignore.", &v47, 0x22u);
        }
      }

      goto LABEL_33;
    }

    v20 = a1 + 20480;
    if (a4)
    {
      if (a5)
      {
        *a3 = *(a1 + 2148);
        a3[1] = *(a1 + 2150);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v23 = *a3;
            v24 = a3[1];
            v47 = 136316162;
            v48 = v21;
            v49 = 2080;
            v50 = "_VideoTransmitter_GenerateKeyFrameNow";
            v51 = 1024;
            v52 = 4765;
            v53 = 1024;
            v54 = v23;
            v55 = 1024;
            v56 = v24;
            _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d new RTCP feedback message: use %d X %d", &v47, 0x28u);
          }
        }
      }

      else if (a4 < 2 || *(a1 + 2144) < 2)
      {
        if (*(a1 + 23864) != 1)
        {
LABEL_33:
          pthread_mutex_unlock((a1 + 2080));
          return 2149449745;
        }
      }

      else if (a3 && (*(a1 + 2148) != *a3 || *(a1 + 2150) != a3[1]))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a1 + 2148);
            v28 = *(a1 + 2150);
            v29 = *a3;
            v30 = a3[1];
            v47 = 136316674;
            v48 = v25;
            v49 = 2080;
            v50 = "_VideoTransmitter_GenerateKeyFrameNow";
            v51 = 1024;
            v52 = 4774;
            v53 = 1024;
            v54 = v27;
            v55 = 1024;
            v56 = v28;
            v57 = 1024;
            v58 = v29;
            v59 = 1024;
            v60 = v30;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter_GenerateKeyFrameNow: sizes don't match (%ux%u != %ux%u), request an IDR.", &v47, 0x34u);
          }
        }

        a4 = 0;
      }
    }

    ++*(a1 + 2168);
    *(a1 + 2176) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 2168);
        v47 = 136316162;
        v48 = v31;
        v49 = 2080;
        v50 = "_VideoTransmitter_GenerateKeyFrameNow";
        v51 = 1024;
        v52 = 4784;
        v53 = 1024;
        v54 = v33;
        v55 = 1024;
        v56 = a2;
        _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter_GenerateKeyFrameNow counter[%u] remoteSSRC=%u.", &v47, 0x28u);
      }
    }

    pthread_mutex_unlock((a1 + 2080));
    if (*(a1 + 23864) == 1)
    {
      return VCSignalEncoder_GenerateKeyFrame(*(a1 + 23872));
    }

    if (*(a1 + 23901) != 1)
    {
      if (*(a1 + 1960) == 0xFFFFFFFFLL)
      {
        return 2148007957;
      }

      v44 = *(a1 + 1944);
      return (*(v44 + 48))();
    }

    if (a2)
    {
      v35 = *(a1 + 23904);
      if (v35 >= 1)
      {
        v36 = 0;
        v37 = a1 + 684;
LABEL_38:
        v38 = 0;
        while (*(v37 + v38) != a2)
        {
          v38 += 4;
          if (v38 == 28)
          {
            ++v36;
            v37 += 152;
            if (v36 != v35)
            {
              goto LABEL_38;
            }

            goto LABEL_42;
          }
        }

        v45 = a1 + 24 * v36;
        if (*(v45 + 1960) == 0xFFFFFFFFLL)
        {
          return 2148007957;
        }

        v44 = *(v45 + 1944);
        return (*(v44 + 48))();
      }
    }

LABEL_42:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v47 = 136315906;
        v48 = v39;
        v49 = 2080;
        v50 = "_VideoTransmitter_GenerateKeyFrameNow";
        v51 = 1024;
        v52 = 4799;
        v53 = 1024;
        v54 = a2;
        _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Generating key frame on all streams as we could not find match for remoteSSRC=%u", &v47, 0x22u);
      }
    }

    v41 = *(a1 + 23904);
    if (v41 < 1)
    {
      return 0;
    }

    else
    {
      v42 = 0;
      v43 = (a1 + 1960);
      do
      {
        v6 = 2148007957;
        if (*v43 != 0xFFFFFFFFLL)
        {
          v6 = (*(*(v43 - 2) + 48))(*v43, a3, a4);
          v41 = *(v20 + 3424);
        }

        ++v42;
        v43 += 3;
      }

      while (v42 < v41);
    }
  }

  return v6;
}

uint64_t VideoTransmitter_EnqueueBuffer(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, __int128 *a4, unsigned int a5, char a6, double a7)
{
  v53 = *MEMORY[0x1E69E9840];
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  if (FormatDescription && MediaType == 1835365473)
  {

    return _VideoTransmitter_HandleDataBuffer(a1, sbuf, 1835365473, a3, a5, a6, a7);
  }

  else
  {
    v17 = CheckInHandleDebug();
    if (!v17)
    {
      return 2149449730;
    }

    v18 = v17;
    v19 = _VideoTransmitter_DequeueEncoderError(v17);
    if ((v19 & 0x80000000) == 0)
    {
      v42 = a5;
      v44 = a4;
      v20 = v18 + 16916;
      ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
      Height = CVPixelBufferGetHeight(ImageBuffer);
      pixelBuffer = ImageBuffer;
      Width = CVPixelBufferGetWidth(ImageBuffer);
      ++*(v18 + 18232);
      if (*(v18 + 18224) == 0.0)
      {
        *(v18 + 18224) = micro();
      }

      v24 = CMGetAttachment(sbuf, *MEMORY[0x1E6983C38], 0);
      if (v24 && (v25 = v24, v26 = v19, v27 = CFGetTypeID(v24), v28 = v27 == CFBooleanGetTypeID(), v19 = v26, v20 = v18 + 16916, v28))
      {
        Value = CFBooleanGetValue(v25);
        *v20 = Value != 0;
        if (Value)
        {
          ++*(v18 + 18260);
        }
      }

      else
      {
        *v20 = 0;
      }

      v30 = *(v18 + 68) == Height && *(v18 + 64) == Width || *(v18 + 80) == Height && *(v18 + 76) == Width;
      v31 = *(v18 + 496);
      v32 = (v31 == 4 || v31 == 1) && *(v18 + 260) == 0 && !v30 && *(v18 + 92) < 10;
      if (*(v18 + 23901) == 1)
      {
        v33 = *(v20 + 1276) ^ 1;
      }

      else
      {
        v33 = 0;
      }

      if (*(v20 + 1252) != 1 || (v33 & 1) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v34 = v20;
          v35 = VRTraceErrorLogLevelToCSTR();
          v36 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v37 = *(v34 + 1252) ^ 1;
            LODWORD(buf.value) = 136316162;
            *(&buf.value + 4) = v35;
            LOWORD(buf.flags) = 2080;
            *(&buf.flags + 2) = "VideoTransmitter_EnqueueBuffer";
            HIWORD(buf.epoch) = 1024;
            v48 = 4873;
            v49 = 1024;
            v50 = v37;
            v51 = 1024;
            v52 = v33 & 1;
            _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CMBufferQueueEnqueue failed. encoderThreadNotRunning=%d, interleavedEncodersEnabledAndTransmitterThreadNotRunning=%d", &buf, 0x28u);
          }
        }
      }

      else if (v32)
      {
        ++*(v18 + 92);
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VideoTransmitter_EnqueueBuffer_cold_2();
          }
        }
      }

      else
      {
        v38 = VCMemoryPool_Alloc(*(v18 + 18128));
        if (sbuf)
        {
          CFRetain(sbuf);
        }

        *v38 = sbuf;
        *(v38 + 2) = a3;
        *(v38 + 2) = a7;
        v39 = *v44;
        *(v38 + 5) = *(v44 + 2);
        *(v38 + 24) = v39;
        *(v38 + 12) = v42;
        v38[52] = a6;
        v40 = CMGetAttachment(sbuf, @"ioSurfaceID", 0);
        v41 = CMGetAttachment(sbuf, @"ioSurfaceTimestamp", 0);
        v46 = -1431655766;
        valuePtr = 0;
        _VideoTransmitter_ExtractIOSurfaceID(&v46, v40, pixelBuffer);
        if (v41)
        {
          CFNumberGetValue(v41, kCFNumberSInt64Type, &valuePtr);
        }

        buf = *v44;
        CMTimeGetSeconds(&buf);
        kdebug_trace();
        v19 = VCSimpleQueueEnqueue(*(v18 + 17888), v38);
        if ((v19 & 0x80000000) != 0)
        {
          if (*v38)
          {
            CFRelease(*v38);
            *v38 = 0;
          }

          VCMemoryPool_Free(*(v18 + 18128), v38);
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VideoTransmitter_EnqueueBuffer_cold_1();
            }
          }
        }

        else
        {
          ++*(v20 + 1320);
          dispatch_semaphore_signal(*(v18 + 18160));
        }
      }
    }

    CheckOutHandleDebug();
    return v19;
  }
}

uint64_t _VideoTransmitter_HandleDataBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, int a3, uint64_t a4, unsigned int a5, char a6, double a7)
{
  v55 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v14 = CheckInHandleDebug();
  if (!v14)
  {
    _VideoTransmitter_HandleDataBuffer_cold_6();
    return LODWORD(time.value);
  }

  v15 = v14;
  v38 = a6;
  memset(&v46, 170, sizeof(v46));
  CMSampleBufferGetPresentationTimeStamp(&v46, a2);
  time = v46;
  Seconds = CMTimeGetSeconds(&time);
  v17 = Seconds;
  v18 = _VideoTransmitter_CalculateVideoTimestamp(v15, a4, a7, Seconds);
  _VideoTransmitter_UpdateAVHostTimeStats(v15, a7, v17);
  valuePtr = 0;
  v43 = 0;
  v19 = CMGetAttachment(a2, @"ioSurfaceID", 0);
  v20 = CMGetAttachment(a2, @"ioSurfaceTimestamp", 0);
  v21 = 0;
  v22 = 0;
  if (v19)
  {
    v23 = v20;
    if (v20)
    {
      CFNumberGetValue(v19, kCFNumberSInt32Type, &valuePtr);
      CFNumberGetValue(v23, kCFNumberSInt64Type, &v43);
      v21 = valuePtr;
      v22 = v43;
    }
  }

  v42 = v46;
  v41 = 0x3FF0000000000000;
  v24 = micro();
  updated = _VideoTransmitter_UpdateRateControlStatus(v15, &v47 + 1, &v47, &v41);
  if ((updated & 0x80000000) != 0)
  {
    v29 = updated;
    _VideoTransmitter_HandleDataBuffer_cold_5();
    return v29;
  }

  v26 = HIDWORD(v47);
  *(v15 + 4776) = HIDWORD(v47);
  ++*(v15 + 18232);
  if ((*(v15 + 23864) & 1) == 0 && *(v15 + 23648) == 1)
  {
    v33 = *(v15 + 1928);
    if (v33)
    {
      v35 = v33 - 1;
      v36 = (v15 + 668);
      v34 = -1;
      while (1)
      {
        v37 = *v36;
        v36 += 38;
        if (v37 > v26)
        {
          break;
        }

        ++v34;
        if (!--v33)
        {
          v34 = v35;
          break;
        }
      }
    }

    else
    {
      v34 = -1;
    }

    LODWORD(time.value) = 0;
    _VideoTransmitter_GetStreamIndexFromAttachment(a2, &time);
    if (SLODWORD(time.value) > v34)
    {
      _VideoTransmitter_HandleDataBuffer_cold_1();
      return 0;
    }
  }

  v27 = VCMemoryPool_Alloc(*(v15 + 18112));
  memset(v54, 170, sizeof(v54));
  v52 = unk_1DBD48638;
  v53 = xmmword_1DBD48648;
  v48 = xmmword_1DBD48608;
  *&v49.value = unk_1DBD48618;
  LODWORD(v48) = *(v15 + 256);
  *(&v48 + 1) = v24;
  v49 = v46;
  v51 = -1431655766;
  v50 = v18;
  *&v52 = 0;
  DWORD2(v52) = 0;
  v53 = 0uLL;
  LOBYTE(v54[0]) = v38;
  *(v54 + 4) = __PAIR64__(*(v15 + 4776), a5);
  HIDWORD(v54[0]) = v47;
  LODWORD(v54[1]) = v21;
  *(&v54[1] + 4) = v42;
  HIDWORD(v54[2]) = -1431655766;
  *&v54[3] = v22;
  WORD4(v54[3]) = 0;
  HIDWORD(v54[3]) = a3;
  v28 = _VideoTransmitter_PrepareAndSetupEncodingArgs(v15, &v48, v27);
  if ((v28 & 0x80000000) != 0)
  {
    v29 = v28;
    _VideoTransmitter_HandleDataBuffer_cold_4((v15 + 18112), v27);
    return v29;
  }

  cf = a2;
  if (*(v15 + 23864) == 1)
  {
    v29 = VCSignalEncoder_EncodeFrame(*(v15 + 23872));
    if ((v29 & 0x80000000) != 0 || !cf)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VideoTransmitter_HandleDataBuffer_cold_2();
        }
      }

      _VideoTransmitter_ProcessEncoderArgs(v15, v27);
      if ((v29 & 0x80000000) != 0)
      {
        _VideoTransmitter_HandleDataBuffer_cold_3();
        return v29;
      }
    }
  }

  else
  {
    v29 = 0;
  }

  if (*(v15 + 23768) == 1)
  {
    _VideoTransmitter_TransmitFrame(v15, v27, cf);
    _VideoTransmitter_ProcessEncoderArgs(v15, v27);
    CheckOutHandleDebug();
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
      v30 = cf;
    }

    else
    {
      v30 = 0;
    }

    v31 = *(v15 + 18104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___VideoTransmitter_HandleDataBuffer_block_invoke;
    block[3] = &__block_descriptor_tmp_7;
    block[4] = v15;
    block[5] = v27;
    block[6] = v30;
    block[7] = a1;
    dispatch_async(v31, block);
  }

  return v29;
}

__IOSurface *_VideoTransmitter_ExtractIOSurfaceID(_DWORD *valuePtr, CFNumberRef number, CVPixelBufferRef pixelBuffer)
{
  if (number)
  {

    return CFNumberGetValue(number, kCFNumberSInt32Type, valuePtr);
  }

  else
  {
    result = CVPixelBufferGetIOSurface(pixelBuffer);
    if (result)
    {
      result = IOSurfaceGetID(result);
    }

    *valuePtr = result;
  }

  return result;
}

void VideoTransmitter_EncoderProc(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_6:
    *a3 = 1;
    return;
  }

  v5 = a1 + 0x4000;
  *(a1 + 18168) = 1;
  ++*(a1 + 18248);
  dispatch_semaphore_wait(*(a1 + 18160), 0xFFFFFFFFFFFFFFFFLL);
  if (*(v5 + 1785) == 1)
  {
    *(v5 + 1785) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "VideoTransmitter_EncoderProc";
        *&buf[22] = 1024;
        *&buf[24] = 4947;
        *v28 = 2080;
        *&v28[2] = "com.apple.avconference.videotransmitter.encoderproc";
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Encoder thread=%s terminated", buf, 0x26u);
      }
    }

    goto LABEL_6;
  }

  v8 = VCSimpleQueueDequeue(*(a1 + 17888));
  if (v8)
  {
    v9 = v8;
    v10 = *v8;
    if (*v8)
    {
      memset(&v24, 170, sizeof(v24));
      CMSampleBufferGetPresentationTimeStamp(&v24, v10);
      if (*MEMORY[0x1E6986658] == 1)
      {
        VCVideoStreamEncoderProc_cold_1(&v24);
      }

      v22 = *(v9 + 1);
      v26 = 0;
      valuePtr = 0;
      v11 = CMGetAttachment(v10, @"ioSurfaceID", 0);
      v12 = CMGetAttachment(v10, @"ioSurfaceTimestamp", 0);
      ImageBuffer = CMSampleBufferGetImageBuffer(v10);
      _VideoTransmitter_ExtractIOSurfaceID(&v26, v11, ImageBuffer);
      if (v12)
      {
        CFNumberGetValue(v12, kCFNumberSInt64Type, &valuePtr);
      }

      *buf = v22;
      CMTimeGetSeconds(buf);
      kdebug_trace();
      v23 = v22;
      v14 = *(v9 + 2);
      v15 = *(v9 + 2);
      v16 = *(v9 + 12);
      v17 = *(v9 + 52);
      v22 = *(v9 + 1);
      *buf = v26;
      *&buf[4] = v23;
      *v28 = -1431655766;
      *&v28[4] = valuePtr;
      v18 = _VideoTransmitter_EncodeVideo(a1, v10, v14, &v22, v16, v17, buf, v15);
      if (*v9)
      {
        CFRelease(*v9);
        *v9 = 0;
      }

      _VideoTransmitter_EnqueueEncoderError(a1, v18);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoTransmitter_EncoderProc_cold_2();
      }
    }

    VCMemoryPool_Free(*(a1 + 18128), v9);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    v21 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = "VideoTransmitter_EncoderProc";
        *&buf[22] = 1024;
        *&buf[24] = 4972;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Dequeued buffer was nil!", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      VideoTransmitter_EncoderProc_cold_3();
    }
  }
}

VCMediaControlInfoFaceTimeAudio *_VideoTransmitter_SetStandardControlInfo(uint64_t a1, char *a2, int a3)
{
  ControlInfo = 0;
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (v4 < 0 && a3)
  {
    v8[0] = 0xAAAAAAAAAAAAAAAALL;
    VCCVOExtensionUtils_FillCVOExtension(v4, *(a1 + 23784), v8);
    v6 = *(a1 + 2048);
    if (v6)
    {
      ControlInfo = VCMediaControlInfoGeneratorCreateControlInfo(v6);
    }

    else
    {
      ControlInfo = 0;
    }

    VCMediaControlInfoSetInfo(ControlInfo, 9, v8, 8);
  }

  return ControlInfo;
}

VCMediaControlInfoFaceTimeAudio *_VideoTransmitter_SetControlInfo(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, _DWORD *a5, _OWORD *a6, char a7, int a8)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 2048))
  {
    return 0;
  }

  if (VCMediaControlInfoGeneratorGetType() != 2)
  {
    ControlInfo = VCMediaControlInfoGeneratorCreateControlInfo(*(a1 + 2048));
    v18 = ControlInfo;
    if (!ControlInfo)
    {
      return v18;
    }

    v19 = *(a1 + 16896);
    v20 = *(a1 + 16900);
    if (VCMediaControlInfoGetVersion(ControlInfo) == 2)
    {
      *v33 = v19;
      *&v33[2] = v20;
      VCMediaControlInfoSetInfo(v18, 6, v33, 4);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        v29 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v28;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoTransmitter_SetFrameExtensionData";
            *&buf[22] = 1024;
            *&buf[24] = 2336;
            *&buf[28] = 1024;
            *&buf[30] = v20;
            *&buf[34] = 1024;
            v32 = v19;
            _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Control Info - frameExtensionData frameSequenceNumber=%d totalPacketsPerFrame=%d", buf, 0x28u);
            if (!a5)
            {
              goto LABEL_19;
            }

LABEL_15:
            v22 = *(a1 + 4828);
            *v33 = 0;
            memset(buf, 0, sizeof(buf));
            if (!*a5)
            {
              goto LABEL_23;
            }

            FECHeader_PackHeaderToBuffer(a5, v22, buf, 0x24uLL, v33);
            v23 = *v33;
            if (!*v33)
            {
              goto LABEL_23;
            }

LABEL_22:
            VCMediaControlInfoSetInfo(v18, 7, buf, v23);
LABEL_23:
            if (a4 && *(a4 + 2) == 1)
            {
              *buf = 0;
              VCMediaControlInfoSetInfo(v18, 8, buf, 4);
            }

            pthread_mutex_lock((a1 + 4672));
            v24 = *(a1 + 3456);
            v25 = v24 - 1;
            if (v24 >= 1)
            {
              v26 = *(a1 + 3460) + v24;
              if (v26 <= 100)
              {
                v27 = -1;
              }

              else
              {
                v27 = -101;
              }

              *buf = bswap32(*(a1 + 4 * (v27 + v26) + 3864));
              *(a1 + 3456) = v25;
              VCMediaControlInfoSetInfo(v18, 5, buf, 4);
            }

            pthread_mutex_unlock((a1 + 4672));
            VCMediaControlInfoSetInfo(v18, 3, a3, 1);
            VCMediaControlInfoSetInfo(v18, 4, a2, 4);
            if (a7 & 1) != 0 || (VCMediaControlInfoHasInfo(v18, 5) & 1) != 0 || (VCMediaControlInfoHasInfo(v18, 6) & 1) != 0 || (VCMediaControlInfoHasInfo(v18, 7) & 1) != 0 || (VCMediaControlInfoHasInfo(v18, 8))
            {
              return v18;
            }

            VCMediaControlInfoDispose(v18);
            return 0;
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          *&buf[4] = v28;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoTransmitter_SetFrameExtensionData";
          *&buf[22] = 1024;
          *&buf[24] = 2336;
          *&buf[28] = 1024;
          *&buf[30] = v20;
          *&buf[34] = 1024;
          v32 = v19;
          _os_log_debug_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Media Control Info - frameExtensionData frameSequenceNumber=%d totalPacketsPerFrame=%d", buf, 0x28u);
          if (a5)
          {
            goto LABEL_15;
          }

          goto LABEL_19;
        }
      }
    }

    if (a5)
    {
      goto LABEL_15;
    }

LABEL_19:
    if (!a6)
    {
      goto LABEL_23;
    }

    v30 = 0;
    memset(buf, 0, sizeof(buf));
    if ((~*a6 & 3) == 0)
    {
      goto LABEL_23;
    }

    *v33 = *a6;
    *&v33[10] = *(a6 + 10);
    VCFECHeader_WriteToBuffer(v33, buf, 0x24uLL, &v30);
    v23 = v30;
    if (!v30)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  return _VideoTransmitter_SetStandardControlInfo(a1, a3, a8);
}

_DWORD *_VideoTransmitter_FillLegacyFECHeader@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = 0u;
  v5 = (a5 + 8);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  v6 = result[1206];
  if (v6)
  {
    v7 = *(a3 + 32) == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v6 != 0;
  v9 = result[1207];
  *(a5 + 48) = 1;
  *a5 = v8;
  *(a5 + 4) = 1;
  if (*a3)
  {
    *v5 = (v9 == 1) << 30;
  }

  else
  {
    if (v9 == 1)
    {
      v10 = 1077936128;
    }

    else
    {
      v10 = 0x800000;
    }

    *v5 = v10;
    if (*(a2 + 8) <= 1)
    {
      *a5 = 0;
    }

    if (((v7 | a4 ^ 1) & 1) == 0)
    {
      *(a5 + 48) = *(a3 + 24) + 1;
    }
  }

  if (a4)
  {
    v11 = *(a3 + 24) + 1;
  }

  else
  {
    v11 = 0;
  }

  result[4248] += v11;
  return result;
}

__n128 _VideoTransmitter_PostProcessFECPacket@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X3>, OpaqueCMBlockBuffer *a5@<X4>, int a6@<W5>, unsigned __int32 a7@<W6>, __n128 *a8@<X8>)
{
  dataPointerOut[1] = *MEMORY[0x1E69E9840];
  IsParityPacket = VCFECHeader_GetIsParityPacket(a4);
  v29 = a1;
  if (IsParityPacket)
  {
    v17 = 0;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v17 = VCFECGeneratorCommon_GetNumberOutputMediaPackets(DerivedStorage) == 0;
  }

  IsLastGroup = VCFECHeader_GetIsLastGroup(a4);
  v20 = 1;
  if ((IsLastGroup & 1) == 0 && (a7 & 1) == 0)
  {
    v20 = (~*a4 & 3) == 0;
  }

  v21 = v17 && v20;
  v22 = !IsParityPacket && v21;
  if (a7)
  {
    a7 = FECUtil_ParityGroupTransmissionCountForFECLevel(a6);
  }

  DataLength = CMBlockBufferGetDataLength(a5);
  if (a3)
  {
    v24 = 1;
  }

  else
  {
    v24 = IsParityPacket;
  }

  if (v24)
  {
    LOBYTE(v25) = 0;
  }

  else if (*(a2 + 24))
  {
    LOBYTE(v25) = 1;
  }

  else
  {
    v25 = (*(a2 + 44) >> 1) & 1;
  }

  dataPointerOut[0] = 0;
  CMBlockBufferGetDataPointer(a5, 0, 0, 0, dataPointerOut);
  if (!IsParityPacket)
  {
    v26 = *(a2 + 160);
    if (*(v26 + 1) == 1)
    {
      if (*(v29 + 17224))
      {
        Throttling_VideoTransmitter_SetPerPktProbeSeqState(v26, a3, *(*(v29 + 280) + 4 * a3));
      }

      else
      {
        *(v26 + 2) = 1;
      }
    }

    *(a2 + 48) &= ~4u;
  }

  v27 = !IsParityPacket;
  if (a3)
  {
    v27 = 0;
  }

  result.n128_u64[0] = 0xAAAAAAAAAAAAAAAALL;
  result.n128_u64[1] = 0xAAAAAAAAAAAAAAAALL;
  *a8 = result;
  a8[1] = result;
  a8[2].n128_u64[0] = 0xAAAAAAAAAAAAAAAALL;
  a8->n128_u8[0] = IsParityPacket;
  a8->n128_u32[1] = 0;
  a8->n128_u32[2] = DataLength;
  a8[1].n128_u64[0] = dataPointerOut[0];
  a8[1].n128_u32[2] = a7;
  a8[1].n128_u8[12] = v27;
  a8[1].n128_u8[13] = v22;
  a8[2].n128_u32[0] = a6;
  a8[2].n128_u8[4] = v25;
  return result;
}

uint64_t _VideoTransmitter_TransmitOneVideoPacketWithFECGenerator(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, int a6, char a7, int a8)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v10 = 104;
    if (*(a1 + 23744))
    {
      v10 = 88;
    }

    v11 = (a2 + v10);
    v12 = 96;
    if (*(a1 + 23744))
    {
      v12 = 80;
    }
  }

  else
  {
    v11 = (a2 + 88);
    v12 = 80;
  }

  v13 = *(a2 + v12);
  v14 = *v11;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v15;
  v53 = v15;
  v50 = v15;
  v51 = v15;
  v49 = v15;
  v40 = a3;
  v16 = *(a1 + 2040);
  v17 = *(a2 + 89);
  v18 = *(a2 + 174);
  v19 = *(a2 + 172);
  v20 = *(a3 + 36);
  v39 = a1 + 16912;
  v21 = *(a1 + 17772) == 20;
  v22 = *(a2 + 160);
  v23 = *(v22 + 1);
  v24 = *(v22 + 24);
  _VideoTransmitter_SetupIDSChannelDataFormat(v16, v17, v13, v14, v18, v19, v20, v21, &v49, v23, v24);
  if (a5[12] < 2 || (*(a1 + 23744) & 1) != 0)
  {
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v26 = v49;
    v25 = v50;
  }

  else
  {
    _VideoTransmitter_SetupIDSChannelDataFormat(v16, v17, *(a2 + 96), *(a2 + 104), v18, v19, v20, v21, buf, v23, v24);
    v46 = *&buf[32];
    v47 = *&buf[48];
    v48 = v44;
    v26 = *buf;
    v25 = *&buf[16];
  }

  v45[0] = v26;
  v45[1] = v25;
  v27 = _VideoTransmitter_TransmitOnePacket(**a2, *(a1 + 16), *(v40 + 29), *(a2 + 12), *(v40 + 16), *(v40 + 8), (v40 + 4), *(a2 + 32), *(a2 + 16), *(a2 + 40), *(v40 + 28), *(a2 + 44), *(a2 + 48), a5, *(a2 + 52), v22, *(a1 + 2168), *(a2 + 24), *(a2 + 168), a4, a7, *v39, &v49, v45);
  if (v27 < 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoTransmitter_TransmitOneVideoPacketWithFECGenerator";
      *&buf[22] = 1024;
      *&buf[24] = 5425;
      *&buf[28] = 1024;
      *&buf[30] = 5425;
      *&buf[34] = 2048;
      *&buf[36] = v27;
      *&buf[44] = 1024;
      *&buf[46] = a8;
      *&buf[50] = 1024;
      *&buf[52] = a6;
      _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoTransmitter.c:%d: VideoTransmitter_TransmitOneFrame failed! result=%08lX i=%d isParity=%d\n", buf, 0x38u);
    }
  }

  if (*(v39 + 252) == 1 && *(a1 + 17168))
  {
    _VideoTransmitter_LogPacket(a1, *(v40 + 16), *(v40 + 8), *(a2 + 12), a5, 0);
  }

  v30 = 2147549204;
  if (v27 != -2147418092)
  {
    return 0;
  }

  v31 = a1 + 24 * *(a2 + 176);
  if (*(v31 + 1960) != 0xFFFFFFFFLL)
  {
    (*(*(v31 + 1944) + 56))();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = v32;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoTransmitter_TransmitOneVideoPacketWithFECGenerator";
      *&buf[22] = 1024;
      *&buf[24] = 5434;
      *&buf[28] = 1024;
      *&buf[30] = 5434;
      *&buf[34] = 2048;
      *&buf[36] = -2147418092;
      *&buf[44] = 1024;
      *&buf[46] = a8;
      *&buf[50] = 1024;
      *&buf[52] = a6;
      _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoTransmitter.c:%d: VideoTransmitter_TransmitOneFrame failed (RTP_E_RESTART) result=%08lX i=%d  isParity=%d\n", buf, 0x38u);
    }
  }

  return v30;
}

uint64_t _VideoTransmitter_SetupIDSChannelDataFormat@<X0>(uint64_t result@<X0>, char a2@<W1>, __int16 *a3@<X2>, char a4@<W3>, __int16 a5@<W4>, char a6@<W5>, char a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, char a10, char a11)
{
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
  if (result)
  {
    *(a9 + 30) = 1;
    *(a9 + 32) = result;
  }

  else
  {
    *(a9 + 24) = a4;
    result = __memcpy_chk();
  }

  *(a9 + 41) = 1;
  *(a9 + 28) = a2;
  *(a9 + 56) = a7;
  *(a9 + 72) = a6;
  if ((a6 & 1) == 0)
  {
    a5 = *a3;
  }

  *(a9 + 74) = a5;
  *(a9 + 77) = a8 == 20;
  if (a10)
  {
    *(a9 + 25) = 1;
    *(a9 + 78) = a11;
  }

  return result;
}

uint64_t _VideoTransmitter_TransmitOnePacket(uint64_t a1, int a2, int a3, int a4, void *a5, signed int a6, int *a7, const void *a8, double a9, unsigned __int8 a10, int a11, int a12, unsigned __int8 a13, _DWORD *a14, int a15, uint64_t a16, int a17, int a18, char a19, void *a20, char a21, int a22, uint64_t a23, _OWORD *a24)
{
  if (a2 > 122)
  {
    if (a2 == 124)
    {
LABEL_10:

      return RTPSendUncompressedVideoPacket(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a20, a23, a24, a18 != 0, a22);
    }

    if (a2 != 123)
    {
      return RTPSendH263Packet(a1, a2, 0, a19, a18 == 0, a3, a4, a21, a9, 0, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a20, 0, 0);
    }
  }

  else if (a2 != 100)
  {
    if (a2 != 110)
    {
      return RTPSendH263Packet(a1, a2, 0, a19, a18 == 0, a3, a4, a21, a9, 0, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a20, 0, 0);
    }

    goto LABEL_10;
  }

  return RTPSendH264Packet(a1, a2, 1u, a3, a4, a5, a6, a7, a9, a8, a10, a11, a12, a13, a14, a15, a16, a17, a20, a23, a24, a18 != 0, a22);
}

uint64_t _VideoTransmitter_LogPacket(uint64_t result, uint64_t a2, int a3, int a4, _DWORD *a5, int a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *(result + 17168);
  if (v6)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v37[11] = v9;
    v36 = v9;
    *v37 = v9;
    v35 = v9;
    v34 = v9;
    v33 = v9;
    v32 = v9;
    v31 = v9;
    v30 = v9;
    v29 = v9;
    v28 = v9;
    v27 = v9;
    v26 = v9;
    v25 = v9;
    v24 = v9;
    v23 = v9;
    v22 = v9;
    v21 = v9;
    v20 = v9;
    v18 = -1431655766;
    v16 = v9;
    v17 = v9;
    v14 = v9;
    v15 = v9;
    *v12 = v9;
    v13 = v9;
    v19 = 0;
    if (a5)
    {
      v10 = a5[2];
      if (!*a5)
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    result = fprintf(v6, "[%08X:%d:%d:%08X]\n", a4, a6, a3, v10);
    if (a3 >= 1)
    {
      v11 = 0;
      do
      {
        __sprintf_chk(v12, 0, 0x64uLL, " %02X", *(a2 + v11));
        result = __strlcat_chk();
        if ((~v11 & 0x1F) == 0)
        {
          result = fprintf(v6, "%s\n", &v19);
          v19 = 0;
        }

        ++v11;
      }

      while (a3 != v11);
      if ((a3 & 0x1F) != 0)
      {
        return fprintf(v6, "%s\n", &v19);
      }
    }
  }

  return result;
}

uint64_t _VideoTransmitter_TransmitVideoPacketsWithFecGenerator(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v127 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 23744);
  v4 = *a2;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  v5 = *(a1 + 4832);
  v6 = *(a2 + 8);
  v112 = v3;
  v8 = v3[4] == 1 && *(v2 + 4776) < 0x37AA0u && v5 != 0;
  v108 = v6 == 1 && (v5 > 2 || v8);
  if (v108 == 1)
  {
    v10 = FECUtil_ParityGroupTransmissionCountForFECLevel(v5);
    v102 = 0;
    v11 = *(a2 + 8);
  }

  else
  {
    v102 = v5;
    v10 = 0;
    v11 = *(a2 + 8);
  }

  v113 = (v2 + 16896);
  v12 = v10;
  v111 = v2;
  if (v11 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(a2 + 64);
    v16 = 4 * v11;
    do
    {
      *destinationBuffer = 0;
      v17 = *(*(v2 + 280) + v13);
      v18 = CMBlockBufferCreateWithMemoryBlock(*(v2 + 23728), 0, 0x76CuLL, *(v2 + 23720), 0, 0, v17, 1u, destinationBuffer);
      if (v18)
      {
        v19 = 1;
      }

      else
      {
        v19 = *destinationBuffer == 0;
      }

      if (v19)
      {
        v20 = v18;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v21;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoTransmitter_PushPacketsAndEncodeWithFECGenerator";
            *&buf[22] = 1024;
            *&buf[24] = 5273;
            *&buf[28] = 1024;
            *&buf[30] = v20;
            *&buf[34] = 2048;
            *&buf[36] = *destinationBuffer;
            _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d _VideoTransmitter_TransmitVideoPackets Buffer Allocation failed! status=%d inputBlockPacket=%p", buf, 0x2Cu);
          }
        }
      }

      else
      {
        CMBlockBufferReplaceDataBytes((v15 + v14), *destinationBuffer, 0, v17);
        v23 = *destinationBuffer;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v25 = VCFECGeneratorCommon_PushPacket(DerivedStorage, v23);
        if (v25 < 0)
        {
          v26 = v25;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = v27;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoTransmitter_PushPacketsAndEncodeWithFECGenerator";
              *&buf[22] = 1024;
              *&buf[24] = 5268;
              *&buf[28] = 1024;
              *&buf[30] = v26;
              _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCFECGenerator_PushPacket failed! resultFECGenerator=%d", buf, 0x22u);
            }
          }
        }

        if (*destinationBuffer)
        {
          CFRelease(*destinationBuffer);
        }

        v14 += v17;
      }

      v2 = v111;
      v13 += 4;
    }

    while (v16 != v13);
  }

  v29 = FECUtil_FECLevelofProtectionToFECPercentage(v102);
  v30 = CMBaseObjectGetDerivedStorage();
  if ((VCFECGeneratorCommon_SetFixedFECLevel(v30, v29) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoTransmitter_TransmitVideoPacketsWithFecGenerator_cold_1();
    }
  }

  v31 = *(v2 + 23712);
  v32 = v113[2];
  if ((!v31 || (v33 = *(*(CMBaseObjectGetVTable() + 16) + 32)) == 0 || (v33(v31, v32) & 0x80000000) != 0) && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    v36 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v113[2];
        *buf = 136315906;
        *&buf[4] = v34;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_PushPacketsAndEncodeWithFECGenerator";
        *&buf[22] = 1024;
        *&buf[24] = 5284;
        *&buf[28] = 1024;
        *&buf[30] = v37;
        _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFECGenerator_SetFrameSequenceNumber failed for frameSequenceNumber=%d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      _VideoTransmitter_TransmitVideoPacketsWithFecGenerator_cold_2();
    }
  }

  v38 = *(v2 + 23712);
  v39 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v39)
  {
    v39(v38);
  }

  v40 = CMBaseObjectGetDerivedStorage();
  NumberOutputMediaPackets = VCFECGeneratorCommon_GetNumberOutputMediaPackets(v40);
  v42 = CMBaseObjectGetDerivedStorage();
  NumberOutputPackets = VCFECGeneratorCommon_GetNumberOutputPackets(v42);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v44 = VRTraceErrorLogLevelToCSTR();
    v45 = *MEMORY[0x1E6986650];
    v46 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(a2 + 8);
        *buf = 136316418;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_TransmitVideoPacketsWithFecGenerator";
        *&buf[22] = 1024;
        *&buf[24] = 5458;
        *&buf[28] = 1024;
        *&buf[30] = v47;
        *&buf[34] = 1024;
        *&buf[36] = NumberOutputPackets;
        *&buf[40] = 1024;
        *&buf[42] = NumberOutputMediaPackets;
        _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFECGenerator Pulling Packets [start] params.numPackets=%d numOutputPackets=%d numOutputMediaPackets=%d", buf, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v99 = *(a2 + 8);
      *buf = 136316418;
      *&buf[4] = v44;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoTransmitter_TransmitVideoPacketsWithFecGenerator";
      *&buf[22] = 1024;
      *&buf[24] = 5458;
      *&buf[28] = 1024;
      *&buf[30] = v99;
      *&buf[34] = 1024;
      *&buf[36] = NumberOutputPackets;
      *&buf[40] = 1024;
      *&buf[42] = NumberOutputMediaPackets;
      _os_log_debug_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCFECGenerator Pulling Packets [start] params.numPackets=%d numOutputPackets=%d numOutputMediaPackets=%d", buf, 0x2Eu);
    }
  }

  if (NumberOutputPackets < 1)
  {
    v109 = 0;
    HIDWORD(v103) = 0;
    v79 = 0;
    v78 = 0;
    v48 = 0.0;
    goto LABEL_100;
  }

  v109 = 0;
  v110 = 0;
  v107 = v2 + 18272;
  v106 = v2 + 18752;
  v48 = 0.0;
  v105 = (v2 + 4816);
  v103 = 0;
  v104 = (v2 + 4836);
  v101 = NumberOutputPackets;
LABEL_53:
  cf = 0;
  v123 = -22016;
  v124 = 0;
  v126 = 0;
  v125 = 0;
  v49 = CMBaseObjectGetDerivedStorage();
  if ((VCFECGeneratorCommon_PopPacket(v49, &cf, &v123) & 0x80000000) == 0)
  {
    IsParityPacket = VCFECHeader_GetIsParityPacket(&v123);
    v51 = IsParityPacket;
    LODWORD(v103) = v103 + IsParityPacket;
    v117 = 0xAAAAAAAAAAAAAAAALL;
    v52.n128_u64[0] = 0xAAAAAAAAAAAAAAAALL;
    v52.n128_u64[1] = 0xAAAAAAAAAAAAAAAALL;
    v115 = v52;
    v116 = v52;
    HIDWORD(v103) += !IsParityPacket;
    _VideoTransmitter_PostProcessFECPacket(v2, a2, HIDWORD(v103) - 1, &v123, cf, v102, v6 == 1, &v115);
    v53 = a2;
    while (1)
    {
      v54 = v53;
      v55 = _VideoTransmitter_SetControlInfo(v2, v53 + 44, (v53 + 48), *(v53 + 160), 0, &v123, v116.n128_i8[12], v116.n128_u8[13]);
      *&buf[48] = 0xAAAAAAAAAAAAAAAALL;
      *&v56 = 0xAAAAAAAAAAAAAAAALL;
      *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf[16] = v56;
      *&buf[32] = v56;
      *buf = v56;
      *destinationBuffer = v115;
      *&destinationBuffer[16] = v116;
      *&destinationBuffer[32] = v117;
      _VideoTransmitter_FillLegacyFECHeader(v2, v54, destinationBuffer, v6 == 1, buf);
      if (v51)
      {
        LOBYTE(v57) = 0;
      }

      else
      {
        v57 = *(*(v2 + 288) + 4 * (HIDWORD(v103) - 1));
      }

      v58 = _VideoTransmitter_TransmitOneVideoPacketWithFECGenerator(v2, a2, &v115, v55, buf, v51 & 1, v57, v110);
      if ((v58 & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v76 = VRTraceErrorLogLevelToCSTR();
          v77 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *destinationBuffer = 136316418;
            *&destinationBuffer[4] = v76;
            *&destinationBuffer[12] = 2080;
            *&destinationBuffer[14] = "_VideoTransmitter_TransmitVideoPacketsWithFecGenerator";
            *&destinationBuffer[22] = 1024;
            *&destinationBuffer[24] = 5487;
            *&destinationBuffer[28] = 1024;
            *&destinationBuffer[30] = 5487;
            *&destinationBuffer[34] = 2048;
            *&destinationBuffer[36] = v111;
            v120 = 2048;
            v121 = v58;
            _os_log_error_impl(&dword_1DB56E000, v77, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoTransmitter.c:%d: VideoTransmitter[%p] Failed to transmit the video packet with FECv2. result=%08lX", destinationBuffer, 0x36u);
          }
        }

        v2 = v111;
LABEL_89:
        v78 = v58;
        if (cf)
        {
          CFRelease(cf);
        }

        if ((v58 & 0x80000000) != 0)
        {
          goto LABEL_99;
        }

        if (++v110 == v101)
        {
          goto LABEL_98;
        }

        goto LABEL_53;
      }

      v59 = v12;
      if (*(v2 + 4828))
      {
        FecLevelWithTotalPackets = VCFECHeader_GetFecLevelWithTotalPackets(&v123, *v113);
        v48 = FecLevelWithTotalPackets;
        v61 = FecLevelWithTotalPackets / 100.0;
        v109 = FECUtil_FECRatioToLevelofProtection(v61);
      }

      v62 = v6;
      if (*(v2 + 4824))
      {
        v63 = v6 == 1;
      }

      else
      {
        v63 = 0;
      }

      v64 = v115.n128_u8[0];
      v66 = v115.n128_i32[1];
      v65 = v115.n128_i32[2];
      if (v63)
      {
        v67 = v116.n128_u32[2];
      }

      else
      {
        v67 = 0;
      }

      if (v115.n128_u8[0])
      {
        v68 = 1;
      }

      else
      {
        v68 = v67 + 1;
      }

      v53 = a2;
      **(a2 + 72) += v68 * v115.n128_u32[1];
      v69 = v68 * ((v66 - v65) & ~((v66 - v65) >> 31));
      if (*v112 == 1)
      {
        atomic_fetch_add_explicit(v105, v69, memory_order_relaxed);
      }

      *(*a2 + 72) += v69;
      v70 = FECUtil_ConvertToWholePercentage(v48);
      if (v64)
      {
        break;
      }

      *(v111 + 296) = *(a2 + 152);
      ++*(v113 + 16);
      v73 = *(v111 + 16968) + v66;
      v2 = v111;
      *(v111 + 16968) = v73;
      v74 = (v107 + 48 * v109);
      *v74 += v65;
      v75 = (v106 + 48 * v70);
      *v75 += v65;
      v6 = v62;
      v12 = v59;
      if (v62 == 1)
      {
        v71 = v67 * v65;
        *(v113 + 20) += v67;
        *(v111 + 16984) += v71;
        if (*v112 == 1)
        {
          atomic_fetch_add_explicit((v111 + 4836), v71, memory_order_relaxed);
        }

        *(*a2 + 64) += v71;
        v74[1] += v71;
        v72 = v75 + 1;
        goto LABEL_80;
      }

LABEL_81:
      if (v108)
      {
        v12 = v12 - (v51 & 1);
        v51 = 1;
        v115.n128_u8[0] = 1;
      }

      if (!v12)
      {
        goto LABEL_89;
      }
    }

    LODWORD(v71) = v68 * v65;
    ++*(v113 + 20);
    v2 = v111;
    *(v111 + 16984) += v68 * v65;
    if (*v112 == 1)
    {
      atomic_fetch_add_explicit(v104, v71, memory_order_relaxed);
    }

    v71 = v71;
    v53 = a2;
    *(*a2 + 64) += v71;
    v72 = (v107 + 48 * v70 + 8);
    v6 = v62;
    v12 = v59;
LABEL_80:
    *v72 += v71;
    goto LABEL_81;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoTransmitter_TransmitVideoPacketsWithFecGenerator_cold_3();
    }
  }

LABEL_98:
  v78 = 0;
LABEL_99:
  v79 = v103;
LABEL_100:
  v80 = CMBaseObjectGetDerivedStorage();
  v81 = VCFECGeneratorCommon_GetNumberOutputPackets(v80);
  if (v81)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v82 = VRTraceErrorLogLevelToCSTR();
      v83 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = v82;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_TransmitVideoPacketsWithFecGenerator";
        *&buf[22] = 1024;
        *&buf[24] = 5512;
        *&buf[28] = 1024;
        *&buf[30] = 5512;
        *&buf[34] = 2048;
        *&buf[36] = v2;
        *&buf[44] = 1024;
        *&buf[46] = v81;
        _os_log_impl(&dword_1DB56E000, v83, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoTransmitter.c:%d: VideoTransmitter[%p] VCFECGenerator output packest is not zero, will force a flush numOutputPackets=%d", buf, 0x32u);
      }
    }

    v84 = *(v2 + 23712);
    v85 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v85)
    {
      v86 = v85(v84);
      if ((v86 & 0x80000000) == 0)
      {
        goto LABEL_111;
      }

      v87 = v86;
    }

    else
    {
      v87 = -12782;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v88 = VRTraceErrorLogLevelToCSTR();
      v89 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = v88;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_TransmitVideoPacketsWithFecGenerator";
        *&buf[22] = 1024;
        *&buf[24] = 5515;
        *&buf[28] = 1024;
        *&buf[30] = 5515;
        *&buf[34] = 2048;
        *&buf[36] = v2;
        *&buf[44] = 2048;
        *&buf[46] = v87;
        _os_log_error_impl(&dword_1DB56E000, v89, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoTransmitter.c:%d: VideoTransmitter[%p] VCFECGenerator flush failed result=%08lX", buf, 0x36u);
      }
    }
  }

LABEL_111:
  SummerAdd(*(*a2 + 72), *(a2 + 152));
  SummerAdd(*(*a2 + 64), *(a2 + 152));
  v90 = FECUtil_ConvertToWholePercentage(v48);
  v91 = v2 + 48 * v109 + 18272;
  v92 = *(v2 + 48 * v109 + 18312) + HIDWORD(v103);
  *(v91 + 36) = *(v2 + 48 * v109 + 18308) + v79;
  *(v91 + 40) = v92;
  *(v2 + 48 * v90 + 18788) += 2 * v79;
  if (v79)
  {
    ++*(v2 + 48 * v109 + 18288);
    v93 = (v2 + 48 * v90 + 18768);
  }

  else
  {
    v93 = v113 + 680;
  }

  ++*v93;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v94 = VRTraceErrorLogLevelToCSTR();
    v95 = *MEMORY[0x1E6986650];
    v96 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v97 = *(a2 + 8);
        *buf = 136316162;
        *&buf[4] = v94;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_TransmitVideoPacketsWithFecGenerator";
        *&buf[22] = 1024;
        *&buf[24] = 5533;
        *&buf[28] = 1024;
        *&buf[30] = v97;
        *&buf[34] = 1024;
        *&buf[36] = v81;
        _os_log_impl(&dword_1DB56E000, v95, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFECGenerator Pulling Packets [stop] params.numPackets=%d numOutputPackets=%d", buf, 0x28u);
      }
    }

    else if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      v100 = *(a2 + 8);
      *buf = 136316162;
      *&buf[4] = v94;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoTransmitter_TransmitVideoPacketsWithFecGenerator";
      *&buf[22] = 1024;
      *&buf[24] = 5533;
      *&buf[28] = 1024;
      *&buf[30] = v100;
      *&buf[34] = 1024;
      *&buf[36] = v81;
      _os_log_debug_impl(&dword_1DB56E000, v95, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCFECGenerator Pulling Packets [stop] params.numPackets=%d numOutputPackets=%d", buf, 0x28u);
    }
  }

  return v78;
}

uint64_t _VideoTransmitter_TransmitVideoPackets(uint64_t a1, uint64_t a2, int a3, int a4, int a5, const void *a6, unsigned __int8 a7, int a8, double a9, double a10, unsigned __int8 a11, int a12, unsigned int a13, unsigned int a14, __int128 a15, __int16 *a16, char a17, char a18, __int16 *a19, char a20, unsigned __int8 *a21, char a22, __int16 a23)
{
  v25 = a3;
  v144 = *MEMORY[0x1E69E9840];
  v29 = (a1 + 23704);
  v30 = a1 + 16898;
  v141 = 0;
  memset(v140, 0, sizeof(v140));
  if (*(a1 + 24) == 176)
  {
    v31 = 2;
  }

  else
  {
    v31 = 3;
  }

  v107 = v31;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  Throttling_VideoTransmitter_CalcThrottlingRate(*(a1 + 17224), *(a1 + 4776), *(a1 + 32), a13 != 0, a3, *(a1 + 280), a14, v112);
  v32 = *(a1 + 496);
  if (v32 == 1)
  {
    LOBYTE(v113) = *(v30 + 328);
  }

  else if (v32 == 2)
  {
    BYTE1(v112[0]) = (v25 > 1) & *(v30 + 327);
  }

  if (*v29 == 1)
  {
    v33 = (*a21 << 56) | 0xAAAAAAAAAAAAAALL;
    v34 = *(a21 + 17);
    v138 = *(a21 + 1);
    v139[0] = v34;
    *(v139 + 15) = *(a21 + 4);
    v35 = *(a2 + 120);
    *buf = a2;
    *&buf[8] = v25;
    *&buf[12] = a4;
    *&buf[16] = a9;
    *&buf[24] = a5;
    *&buf[28] = -1431655766;
    *&buf[32] = a6;
    buf[40] = a7;
    *&buf[41] = -21846;
    buf[43] = -86;
    *&buf[44] = a8;
    LOBYTE(v118) = a11;
    *(&v118 + 1) = -21846;
    BYTE3(v118) = -86;
    *(&v118 + 4) = __PAIR64__(a13, a12);
    HIDWORD(v118) = a14;
    v119 = a15;
    v120 = a16;
    v121 = a17;
    v122 = a18;
    v124 = -21846;
    v123 = -1431655766;
    v125 = a19;
    v126 = a20;
    v127 = v33;
    *&v129[15] = *(v139 + 15);
    *v129 = v139[0];
    v128 = v138;
    v130 = a10;
    v131 = v112;
    v132 = v107;
    v133 = a22;
    v134 = -86;
    v135 = a23;
    v136 = v35;
    v137 = -1431655766;
    return _VideoTransmitter_TransmitVideoPacketsWithFecGenerator(a1, buf);
  }

  v37 = VTU_ComputeTotalNumberOfGroupsPerFrame(v25);
  v38 = v37;
  if (v25 < 9)
  {
    if (v37 < 129)
    {
      v96 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v39 = *(a1 + 4840) != 1;
    if (v37 >= 129)
    {
      v39 = 0;
    }

    v96 = v39;
    if (v37 < 129)
    {
      v40 = a20;
      v41 = a19;
      goto LABEL_22;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v42 = VRTraceErrorLogLevelToCSTR();
    v43 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v42;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoTransmitter_TransmitVideoPackets";
      *&buf[22] = 1024;
      *&buf[24] = 5572;
      *&buf[28] = 1024;
      *&buf[30] = v38;
      *&buf[34] = 1024;
      *&buf[36] = 128;
      _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d This frame has more groups (%d) than is supported (%d). It will be sent without FEC!", buf, 0x28u);
    }
  }

  v96 = 0;
LABEL_21:
  v40 = a20;
  v41 = a19;
  if (v25 >= 1)
  {
LABEL_22:
    v106 = a5;
    v44 = 0;
    v105 = (v30 + 874);
    v45 = a1 + 16844;
    v91 = 0;
    v100 = a7;
    v90 = v29;
    do
    {
      if (v25 == 9)
      {
        LODWORD(v46) = 5;
      }

      else
      {
        LODWORD(v46) = 8;
      }

      if (v25 >= 8)
      {
        v46 = v46;
      }

      else
      {
        v46 = v25;
      }

      v102 = v46;
      v47 = v25 - v46;
      v97 = *(a1 + 4832);
      v138 = 0u;
      v139[0] = 0u;
      memset(v142, 0, sizeof(v142));
      v143 = 0;
      v48 = a16;
      if (!v29[40])
      {
        v48 = v41;
      }

      v104 = v48;
      v49 = a17;
      if (!v29[40])
      {
        v49 = v40;
      }

      v103 = v49;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v50 = VRTraceErrorLogLevelToCSTR();
        v51 = *MEMORY[0x1E6986650];
        v52 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            *&buf[4] = v50;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoTransmitter_TransmitVideoPacketsOneGroup";
            *&buf[22] = 1024;
            *&buf[24] = 5222;
            *&buf[28] = 1024;
            *&buf[30] = v91;
            *&buf[34] = 1024;
            *&buf[36] = v102;
            *&buf[40] = 1024;
            *&buf[42] = v97;
            _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FEC Group iGroupID=%d iNumPacketsInGroup=%d fecLevelOfProtection=%d", buf, 0x2Eu);
          }
        }

        else if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          *&buf[4] = v50;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoTransmitter_TransmitVideoPacketsOneGroup";
          *&buf[22] = 1024;
          *&buf[24] = 5222;
          *&buf[28] = 1024;
          *&buf[30] = v91;
          *&buf[34] = 1024;
          *&buf[36] = v102;
          *&buf[40] = 1024;
          *&buf[42] = v97;
          _os_log_debug_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEBUG, " [%s] %s:%d FEC Group iGroupID=%d iNumPacketsInGroup=%d fecLevelOfProtection=%d", buf, 0x2Eu);
        }
      }

      v92 = v47;
      v53 = v44;
      v54 = *(a1 + 4824);
      v55 = v96 ^ 1;
      if (!v54)
      {
        v55 = 1;
      }

      LODWORD(v56) = v97;
      if ((v55 & 1) == 0)
      {
        FECUtil_SetupFECHeader(*(a1 + 4828), a1 + 4828, *(a1 + 280), v140, v102, v97, a15 + SHIDWORD(v91), v53, v47 < 1, 0, v91, &v138, v142);
        v54 = *(a1 + 4824);
      }

      v111 = 0;
      v57 = 0;
      v58 = 0;
      v95 = 0;
      v116 = a8;
      v115 = a11;
      v114 = -1431655766;
      v94 = v53;
      v98 = 4 * v53;
      v101 = (a15 + SHIDWORD(v91));
      while (1)
      {
        v59 = v94 | v58;
        v60 = v92 < 1 && v102 - 1 == v58;
        v61 = v60;
        v60 = v54 == 0;
        v62 = v96;
        if (v60)
        {
          v62 = 0;
        }

        if (v56 >= 1)
        {
          if (v62)
          {
            v140[2] = *(&v139[-1] + v58);
            LODWORD(v141) = 1;
            if (v102 == 1)
            {
              v95 = FECUtil_ParityGroupTransmissionCountForFECLevel(v56);
              LODWORD(v141) = v141 + v95;
            }
          }
        }

        if (v102 == 1)
        {
          v63 = v95 + 1;
        }

        else
        {
          v63 = 0;
        }

        *(v30 + 94) += v63;
        if (BYTE1(v112[0]) == 1)
        {
          if (*(v30 + 326))
          {
            Throttling_VideoTransmitter_SetPerPktProbeSeqState(v112, v94 + v58, *(*(a1 + 280) + v98 + 4 * v58));
          }

          else
          {
            BYTE2(v112[0]) = 1;
          }
        }

        v115 &= ~4u;
        v64 = _VideoTransmitter_SetControlInfo(a1, &v116, &v115, v112, v140, 0, v59 == 0, v61);
        v65 = v116;
        if (v59)
        {
          v66 = 0;
          v67 = v106;
        }

        else
        {
          v67 = v106;
          v66 = (v106 | v116 & 2) != 0;
        }

        *&v68 = 0xAAAAAAAAAAAAAAAALL;
        *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v118 = v68;
        v119 = v68;
        *&buf[16] = v68;
        *&buf[32] = v68;
        *buf = v68;
        _VideoTransmitter_SetupIDSChannelDataFormat(*(a1 + 2040), a18, a16, a17, a23, a22, v66, *v105, buf, SBYTE1(v112[0]), v113);
        v89 = v64;
        v69 = v100;
        v70 = _VideoTransmitter_TransmitOnePacket(*a2, *(a1 + 16), v61, a4, v101, *(*(a1 + 280) + v98 + 4 * v58), &v114, a6, a9, v100, (v94 | v58) == 0, v65, v115, v140, a12, v112, *(a1 + 2168), v67, v107, v89, *(*(a1 + 288) + v98 + 4 * v58), *(v30 + 14), buf, 0);
        ++*(v30 + 62);
        *(a1 + 16968) += v114;
        if (*(v30 + 266) == 1 && *(a1 + 17168))
        {
          _VideoTransmitter_LogPacket(a1, v101, *(*(a1 + 280) + v98 + 4 * v58), a4, v140, v102);
        }

        v56 = v97;
        if (v70 == -2147418092)
        {
          break;
        }

        *(a1 + 296) = micro();
        v71 = *(*(a1 + 280) + v98 + 4 * v58);
        HIDWORD(v111) += v114;
        v72 = v114 - v71;
        v57 += v72 & ~(v72 >> 31);
        v54 = *(a1 + 4824);
        if (v102 == 1 && v97 >= 1 && v54)
        {
          HIDWORD(v111) += v114 * v95;
          v57 += v72 * v95;
          LODWORD(v111) = v71 * v95;
        }

        v101 += v71;
        if (v102 == ++v58)
        {
          goto LABEL_78;
        }
      }

      v73 = (a1 + 1944 + 24 * *(a2 + 120));
      if (v73[2] != 0xFFFFFFFFLL)
      {
        (*(*v73 + 56))();
      }

LABEL_78:
      v99 = FECUtil_ParityGroupTransmissionCountForFECLevel(v97);
      if (v99 >= 1)
      {
        for (i = 0; i != v99; ++i)
        {
          v116 = a8;
          v115 = a11;
          v114 = 0;
          v75 = v56 <= 0 || *(a1 + 4824) == 0;
          v76 = v96;
          if (v75)
          {
            v76 = 0;
          }

          if (v76 == 1)
          {
            RealNumParity = FECUtil_GetRealNumParity(v102, v56);
            if (RealNumParity >= 1)
            {
              v78 = 0;
              v79 = RealNumParity;
              v80 = (a1 + 4844);
              do
              {
                if (*(v45 + 4 * v78) <= 0)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v86 = VRTraceErrorLogLevelToCSTR();
                    v87 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      v88 = *(v45 + 4 * v78);
                      *buf = 136316162;
                      *&buf[4] = v86;
                      *&buf[12] = 2080;
                      *&buf[14] = "_VideoTransmitter_TransmitParityPackets";
                      *&buf[22] = 1024;
                      *&buf[24] = 5167;
                      *&buf[28] = 1024;
                      *&buf[30] = v78;
                      *&buf[34] = 1024;
                      *&buf[36] = v88;
                      _os_log_error_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parity size i=%d ParitySizes[i]=%d", buf, 0x28u);
                    }

                    v69 = v100;
                  }
                }

                else
                {
                  v140[2] = *(v142 + v78);
                  WORD2(v141) = *(v45 + 2 * v78 + 28);
                  v81 = (*v30)++;
                  HIWORD(v141) = v81;
                  v82 = _VideoTransmitter_SetControlInfo(a1, &v116, &v115, v112, v140, 0, 0, 0);
                  *&v83 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v118 = v83;
                  v119 = v83;
                  *&buf[16] = v83;
                  *&buf[32] = v83;
                  *buf = v83;
                  _VideoTransmitter_SetupIDSChannelDataFormat(*(a1 + 2040), a18, v104, v103, a23, a22, 0, *v105, buf, SBYTE1(v112[0]), v113);
                  _VideoTransmitter_TransmitOnePacket(*a2, *(a1 + 16), 0, a4, v80, *(v45 + 4 * v78), &v114, a6, a9, v69, 0, v116, v115, v140, a12, v112, *(a1 + 2168), v106, v107, v82, 0, *(v30 + 14), buf, 0);
                  ++*(v30 + 78);
                  v84 = v114;
                  *(a1 + 16984) += v114;
                  if (*(v30 + 266) == 1 && *(a1 + 17168))
                  {
                    _VideoTransmitter_LogPacket(a1, v80, *(v45 + 4 * v78), a4, v140, v102);
                    v84 = v114;
                  }

                  v85 = *(v45 + 4 * v78);
                  HIDWORD(v111) += v84;
                  v57 += (v84 - v85) & ~((v84 - v85) >> 31);
                  LODWORD(v111) = (v85 & ~(v85 >> 31)) + v111;
                }

                ++v78;
                v80 += 1500;
              }

              while (v79 != v78);
            }
          }

          v56 = v97;
        }
      }

      **(&a15 + 1) += HIDWORD(v111);
      v29 = v90;
      if (v90[40])
      {
        atomic_fetch_add_explicit((a1 + 4836), v111, memory_order_relaxed);
        atomic_fetch_add_explicit((a1 + 4816), v57, memory_order_relaxed);
      }

      SummerAdd(v111, a10);
      SummerAdd(v57, a10);
      HIDWORD(v91) = v101 - a15;
      v44 = v102 + v94;
      LODWORD(v91) = v91 + 1;
      v25 = v92;
      v40 = a20;
      v41 = a19;
    }

    while (v92 > 0);
  }

  return 0;
}

void _VideoTransmitter_UpdateVideoPriorityScore(uint64_t a1, uint64_t a2, CMSampleBufferRef sbuf)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 17064);
  if ((*(a1 + 17056) - 1) > 1)
  {
    if (v6)
    {
      v12 = atomic_load(v6);
      *(a2 + 392) = v12;
      if (!v12)
      {
        return;
      }
    }

    else if (!*(a2 + 392))
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = atomic_load(v6);
  if (v7 != *(a2 + 392) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a2 + 392);
      v16 = 136316162;
      v17 = v8;
      v18 = 2080;
      v19 = "_VideoTransmitter_UpdateVideoPriorityScore";
      v20 = 1024;
      v21 = 5765;
      v22 = 2048;
      v23 = a1;
      v24 = 1024;
      v25 = v10;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter[%p] videoPriority=%u", &v16, 0x2Cu);
    }
  }

  v11 = *(a2 + 392);
  atomic_store(v11, *(a1 + 17064));
  if (v11)
  {
LABEL_12:
    ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
    v14 = CFNumberCreate(*(a1 + 23880), kCFNumberCharType, (a2 + 392));
    if (v14)
    {
      v15 = v14;
      CVBufferSetAttachment(ImageBuffer, @"FramePriority", v14, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v15);
    }
  }
}

void _VideoTransmitter_UpdateCompoundStreamIDs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 456) == 1)
  {
    v4 = *(a2 + 362);
    v5 = (a3 + 8);
    v6 = a1 + 560;
    v7 = a1 + 560 + 152 * *(a3 + 8);
    v8 = *(v7 + 106);
    if ((v8 + v4) >= 0xD)
    {
      _VideoTransmitter_UpdateCompoundStreamIDs_cold_1();
    }

    else
    {
      memcpy((a2 + 338 + 2 * v4), (v7 + 82), 2 * v8);
      v9 = v6 + 152 * *v5;
      *(a2 + 362) += *(v9 + 106);
      *(a2 + 458) = *(a2 + 338);
      *(a2 + 338) = *(v9 + 80);
    }
  }
}

uint64_t _VideoTransmitter_UpdateEncoderArgsAndGetStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*(a4 + 24) < 1)
  {
    return 0;
  }

  v7 = a1 + 17052;
  ++*(a1 + 18244);
  if (*(a1 + 17052) != *(a2 + 236))
  {
    _VideoTransmitter_SetNewEncoderMode(a1, a2);
  }

  if (!*(a2 + 104))
  {
    *(v7 + 620) = *(a2 + 188);
    pthread_mutex_lock((a1 + 3392));
    if (*(a1 + 2180) >= 1)
    {
      *(a1 + 2180) = 0;
    }

    if (*(a1 + 2988) >= 1)
    {
      *(a1 + 2988) = 0;
    }

    pthread_mutex_unlock((a1 + 3392));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a2;
        v11 = *(a2 + 4);
        v12 = *(a2 + 188);
        *buf = 136316418;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoTransmitter_ResetLTRforKeyFrame";
        *&buf[22] = 1024;
        *&buf[24] = 4667;
        *&buf[28] = 1024;
        *&buf[30] = v10;
        *&buf[34] = 1024;
        *&buf[36] = v11;
        *&buf[40] = 1024;
        *&buf[42] = v12;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got a key frame resolution=%dx%d timestamp=%08X, reset LTR.", buf, 0x2Eu);
      }
    }
  }

  if ((*(a2 + 108) & 2) != 0 && *(a2 + 104))
  {
    _VideoTransmitter_FlushBasebandForRefreshFrame(a1, a2);
  }

  *(a1 + 4832) = _VideoTransmitter_GetFECLevelOfProtection(a1, a2);
  if (*(v7 + 174) == 1 && (*(v7 + 160) || *(v7 + 164)) && !VCRateControlScheduleProbingSequence(*(a1 + 2056), *(a4 + 24), *(a2 + 184), *(a2 + 188), 0) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoTransmitter_UpdateEncoderArgsAndGetStream_cold_1();
    }
  }

  _VideoTransmitter_UpdateCompoundStreamIDs(a1, a2, a4);
  if (!*(a2 + 104) && *(a2 + 389) == 1)
  {
    v13 = *(a2 + 390);
    v14 = *(a2 + 362);
    *(a2 + 362) = v14 + 1;
    *(a2 + 2 * v14 + 338) = v13;
  }

  if (*(v7 + 124) == 1)
  {
    if (*(a1 + 17184))
    {
      v15 = *(a4 + 16);
      v16 = *(a4 + 24);
      v17 = *(a2 + 188);
      *md = 0;
      v51 = 0;
      v52 = 0;
      CC_SHA1(v15, v16, md);
      v18 = *(a1 + 17184);
      fprintf(v18, "[%08X:%dB SHA1:", v17, v16);
      for (i = 0; i != 20; ++i)
      {
        fprintf(v18, "%02X", md[i]);
      }

      fwrite("]\n", 2uLL, 1uLL, v18);
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v49[11] = v20;
      v48 = v20;
      *v49 = v20;
      v47 = v20;
      v46 = v20;
      v45 = v20;
      v44 = v20;
      v43 = v20;
      v42 = v20;
      v41 = v20;
      v40 = v20;
      v39 = v20;
      v38 = v20;
      v37 = v20;
      v36 = v20;
      v35 = v20;
      *&buf[33] = v20;
      *&buf[17] = v20;
      *&buf[1] = v20;
      v33 = -1431655766;
      v31 = v20;
      v32 = v20;
      v29 = v20;
      v30 = v20;
      *v27 = v20;
      v28 = v20;
      buf[0] = 0;
      if (v16 >= 1)
      {
        for (j = 0; j != v16; ++j)
        {
          __sprintf_chk(v27, 0, 0x64uLL, " %02X", v15[j]);
          __strlcat_chk();
          if ((~j & 0x1F) == 0)
          {
            fprintf(v18, "%s\n", buf);
            buf[0] = 0;
          }
        }

        if ((v16 & 0x1F) != 0)
        {
          fprintf(v18, "%s\n", buf);
        }
      }
    }
  }

  v22 = *(a4 + 8);
  v23 = a1 + 152 * v22;
  v24 = v23 + 560;
  *(v23 + 612) = *(a4 + 4);
  *(v23 + 680) = v22;
  v25 = *(a1 + 23638) + *a4;
  *(v23 + 608) = v25;
  if ((*(a2 + 108) & 1) != 0 && *(a2 + 112) != -1)
  {
    _videoTransmitter_HandleLTRFrame(a1, a2, v25);
  }

  return v24;
}

uint64_t _VideoTransmitter_GetFECLevelOfProtection(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1 + 0x4000;
  v4 = atomic_load((a1 + 16888));
  if (*(a1 + 496) == 1)
  {
    v5 = *(a1 + 16);
    if (v5 != 110 && v5 != 124)
    {
      if (*(a2 + 104))
      {
        if (v4 <= 1)
        {
          v6 = 1;
        }

        else
        {
          v6 = v4;
        }

        if ((*(a2 + 108) & 2) != 0)
        {
          v4 = v6;
        }

        else
        {
          v4 = v4;
        }
      }

      else if (v4 <= 3)
      {
        v4 = 3;
      }

      else
      {
        v4 = v4;
      }

      if ((*(a1 + 508) & 1) == 0)
      {
        do
        {
          v7 = *(a1 + 32);
          v8 = FECUtil_FECLevelofProtectionToRateRatio(v4);
          v9 = v4 != 0;
          LODWORD(v4) = v4 - 1;
        }

        while (v9 && (v7 / v8) < 77000.0);
        v4 = (v4 + 1);
      }

      if (*(a1 + 4832) != v4)
      {
        v10 = *(a1 + 44);
        if (v10 >= 1 && v4 >= 3)
        {
          v11 = vcvtd_n_f64_s32(*(a1 + 32) / v10, 3uLL);
          if (v11 <= *(v3 + 1292) && VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(v3 + 1292);
              v25 = 136316418;
              v26 = v12;
              v27 = 2080;
              v28 = "_VideoTransmitter_GetFECLevelOfProtection";
              v29 = 1024;
              v30 = 7161;
              v31 = 1024;
              v32 = v11;
              v33 = 1024;
              v34 = v14;
              v35 = 1024;
              v36 = v4;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Duplicating single packet frames. estimatedFrameSize=%d MTU=%d level=%d", &v25, 0x2Eu);
            }
          }
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    v17 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 496);
        v19 = atomic_load((v3 + 504));
        v20 = *(a1 + 32);
        v25 = 136316674;
        v26 = v15;
        v27 = 2080;
        v28 = "_VideoTransmitter_GetFECLevelOfProtection";
        v29 = 1024;
        v30 = 7166;
        v31 = 1024;
        v32 = v18;
        v33 = 1024;
        v34 = v19;
        v35 = 1024;
        v36 = v4;
        v37 = 1024;
        v38 = v20;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Fec mode=%d fecLevel=%d fecLevelOfProtection=%d iBitRate=%d", &v25, 0x34u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 496);
      v23 = atomic_load((v3 + 504));
      v24 = *(a1 + 32);
      v25 = 136316674;
      v26 = v15;
      v27 = 2080;
      v28 = "_VideoTransmitter_GetFECLevelOfProtection";
      v29 = 1024;
      v30 = 7166;
      v31 = 1024;
      v32 = v22;
      v33 = 1024;
      v34 = v23;
      v35 = 1024;
      v36 = v4;
      v37 = 1024;
      v38 = v24;
      _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Fec mode=%d fecLevel=%d fecLevelOfProtection=%d iBitRate=%d", &v25, 0x34u);
    }
  }

  return v4;
}

uint64_t _VideoTransmitter_EncryptFrame(uint64_t a1, uint64_t a2, char **a3, _DWORD *a4, uint64_t a5, int a6, CMBlockBufferRef *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  theBuffer = 0;
  if (a7)
  {
    if (!a2 || !*(a2 + 112))
    {
      v13 = 0;
      *a3 = *(a5 + 16);
      *a4 = *(a5 + 24);
      goto LABEL_10;
    }

    if (CMBlockBufferCreateWithMemoryBlock(*(a1 + 23760), *(a5 + 16), *(a5 + 24), *MEMORY[0x1E695E498], 0, 0, *(a5 + 24), 0, &theBuffer))
    {
      _VideoTransmitter_EncryptFrame_cold_1();
    }

    else if (VCSFrameCryptorH264_Encrypt(*(a2 + 112), a6, theBuffer, a7))
    {
      _VideoTransmitter_EncryptFrame_cold_2();
    }

    else
    {
      DataLength = CMBlockBufferGetDataLength(*a7);
      *a4 = DataLength;
      if (CMBlockBufferIsRangeContiguous(*a7, 0, DataLength))
      {
        if (!CMBlockBufferGetDataPointer(*a7, 0, 0, 0, a3))
        {
          v13 = 0;
          goto LABEL_10;
        }

        _VideoTransmitter_EncryptFrame_cold_3();
      }

      else
      {
        _VideoTransmitter_EncryptFrame_cold_4();
      }
    }
  }

  else if (_VideoTransmitter_EncryptFrame_cold_5(&v16))
  {
    return 2149449729;
  }

  v13 = v16;
LABEL_10:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v13;
}

uint64_t _VideoTransmitter_UpdateRateControlStatus(uint64_t a1, unsigned int *a2, unsigned int *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v38 = 0;
  if (!*(a1 + 4820))
  {
    v8 = 0;
    *a2 = *(a1 + 4780);
    *a4 = 0;
    *a3 = 0;
    return v8;
  }

  v7 = (a1 + 17224);
  v8 = 2149449745;
  v36 = -1431655766;
  v37 = -1431655766;
  v35 = NAN;
  v9 = *(a1 + 496);
  v10 = v9 == 3 || v9 == 5;
  if (v10 || *(a1 + 2064))
  {
    if (a2)
    {
      *a2 = *(a1 + 4780);
    }

    if (a3)
    {
      *a3 = *(a1 + 4784);
    }

    v11 = 0;
    v38 = *(a1 + 4788);
    *(a1 + 4800) = 0;
    goto LABEL_12;
  }

  *buf = -1431655766;
  v11 = RTPGetAFRCTxInfo(*(a1 + 560), a2, 0, 0, 0, a4, a3, (a1 + 4800), (a1 + 18208), &v38, (a1 + 17224), buf);
  if ((v38 & 1) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoTransmitter_UpdateRateControlStatus_cold_1();
    }
  }

  VCRateControlSetAFRCBandwidth(*(a1 + 2056), (1000 * *buf), *a2);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_12:
    if (!*(a1 + 96))
    {
LABEL_28:
      v20 = 1;
      goto LABEL_29;
    }

    if (v38 != *(a1 + 17228) && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 17228);
        *buf = 136316162;
        v40 = v12;
        *v41 = 2080;
        *&v41[2] = "_VideoTransmitter_UpdateRateControlStatus";
        v42 = 1024;
        v43 = 3136;
        v44 = 1024;
        v45 = v14;
        v46 = 1024;
        v47 = v38;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d New baseband action:[%02X->%02X].", buf, 0x28u);
      }
    }

    v15 = v38;
    if ((v38 & 8) != 0)
    {
      RTPFlushBaseband(*(a1 + 1936), *v7, 0, 0, 0, 0, 0);
      pthread_mutex_lock((a1 + 17232));
      ++*(a1 + 17296);
      pthread_mutex_unlock((a1 + 17232));
      v15 = v38;
      if ((v38 & 2) == 0)
      {
LABEL_19:
        if ((v15 & 0x10) == 0)
        {
LABEL_21:
          v16 = *(a1 + 17228);
          if (v15)
          {
            if ((v16 & 1) == 0)
            {
              if (a3)
              {
                RTPUpdateAudioOnlyRateChange(*(a1 + 560), *a3);
              }

              if (a2)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v27 = VRTraceErrorLogLevelToCSTR();
                  v28 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = *a2 / 0x3E8;
                    *buf = 136315906;
                    v40 = v27;
                    *v41 = 2080;
                    *&v41[2] = "_VideoTransmitter_UpdateRateControlStatus";
                    v42 = 1024;
                    v43 = 3178;
                    v44 = 1024;
                    v45 = v29;
                    _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d === Suspend outgoing video (rate:%u).", buf, 0x22u);
                  }
                }
              }
            }

            *(a1 + 4788) &= 0xFFFFFFE5;
            *(a1 + 17228) = v38;
            return v8;
          }

          if (a2)
          {
            if ((v16 & 1) != 0 && VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v17 = VRTraceErrorLogLevelToCSTR();
              v18 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v19 = *a2 / 0x3E8;
                *buf = 136315906;
                v40 = v17;
                *v41 = 2080;
                *&v41[2] = "_VideoTransmitter_UpdateRateControlStatus";
                v42 = 1024;
                v43 = 3190;
                v44 = 1024;
                v45 = v19;
                _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d === Resume outgoing video (rate:%u).", buf, 0x22u);
              }
            }
          }

          *(a1 + 4788) &= 0xFFFFFFE5;
          *(a1 + 17228) = v38;
          goto LABEL_28;
        }

LABEL_20:
        *v41 = 0xAAAAAAAAAAAAAAAALL;
        v40 = 0xAAAAAAAAAAAAAAAALL;
        *buf = *(a1 + 2148);
        _VideoTransmitter_GenerateKeyFrameNow(a1, 0, buf, 2, 0, 0);
        v15 = v38;
        goto LABEL_21;
      }
    }

    else if ((v38 & 2) == 0)
    {
      goto LABEL_19;
    }

    RTPFlushBaseband(*(a1 + 560), *v7, *(a1 + 17672), 1u, 0, 0, 0);
    pthread_mutex_lock((a1 + 17232));
    ++*(a1 + 17300);
    pthread_mutex_unlock((a1 + 17232));
    v15 = v38;
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v20 = 0;
LABEL_29:
  pthread_mutex_lock((a1 + 17312));
  v21 = *(a1 + 17304);
  pthread_mutex_unlock((a1 + 17312));
  if (!v21)
  {
    if (v20)
    {
      v22 = (a1 + 23840);
      if (*(a1 + 23841) == 1 && (*v22 & 1) == 0 && *(a1 + 23848) == 1)
      {
        if (a3)
        {
          RTPUpdateAudioOnlyRateChange(*(a1 + 560), *a3);
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v40 = v23;
            *v41 = 2080;
            *&v41[2] = "_VideoTransmitter_UpdateRateControlStatus";
            v42 = 1024;
            v43 = 3216;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Outgoing video stopped using Smart Brake", buf, 0x1Cu);
          }
        }

        *v22 = 1;
      }

      if (*(a1 + 23842))
      {
        if (*v22)
        {
          if (*(a1 + 23848) != 1)
          {
            return v8;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v25 = VRTraceErrorLogLevelToCSTR();
            v26 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v40 = v25;
              *v41 = 2080;
              *&v41[2] = "_VideoTransmitter_UpdateRateControlStatus";
              v42 = 1024;
              v43 = 3221;
              _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Outgoing video resumed using Smart Brake", buf, 0x1Cu);
            }
          }

          *v22 = 0;
        }
      }

      else if (*v22)
      {
        return v8;
      }
    }

    pthread_mutex_lock((a1 + 2080));
    if (*(a1 + 2172) != *(a1 + 2168))
    {
      RTPGetTimeRefreshFrame(*(a1 + 560), &v35, &v36);
      if (v36 >= *(a1 + 2168))
      {
        v31 = MicroToNTP(v35);
        v32 = NTPToMiddle32(v31);
        RTPGetLastEchoedMyTxTS(*(a1 + 560), &v37);
        if (v37 != -1 && (v37 - (v32 >> 6)) <= 0x7FFEu)
        {
          *(a1 + 2176) = 1;
          *(a1 + 2172) = *(a1 + 2168);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v33 = VRTraceErrorLogLevelToCSTR();
            v34 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316418;
              v40 = v33;
              *v41 = 2080;
              *&v41[2] = "_VideoTransmitter_UpdateRateControlStatus";
              v42 = 1024;
              v43 = 3244;
              v44 = 1024;
              v45 = v36;
              v46 = 1024;
              v47 = v37;
              v48 = 1024;
              v49 = (v32 >> 6);
              _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Refresh frame[%u] stabilized(TxTS %u >= %u).\n", buf, 0x2Eu);
            }
          }
        }
      }
    }

    pthread_mutex_unlock((a1 + 2080));
    return v11;
  }

  return v8;
}