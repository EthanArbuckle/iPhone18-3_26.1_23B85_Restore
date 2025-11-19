uint64_t hoseSBAR_getAudioBytesPerSec(__int128 *a1, const __CFDictionary *a2, double a3, double a4, double a5)
{
  v6 = a1;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v19 = 0;
  valuePtr = 0;
  if (!a1)
  {
    HIDWORD(v22) = 2;
    v6 = &v21;
  }

  v7 = *(v6 + 2);
  if (v7 == 1819304813)
  {
    LODWORD(a4) = *(v6 + 7);
    LODWORD(a5) = *(v6 + 8);
    v10 = *v6 * *&a4 * *&a5;
    return (v10 * 0.125);
  }

  if (v7 == 1634492771)
  {
    v8 = *(v6 + 3);
    if ((v8 - 1) >= 3)
    {
      v9 = 0.0;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_36;
          }

          v17 = *(v6 + 3);
        }

        LogPrintF();
      }
    }

    else
    {
      v9 = dbl_22234D558[v8 - 1];
    }

LABEL_36:
    LODWORD(a4) = *(v6 + 7);
    v10 = v9 * (*v6 * *&a4);
    return (v10 * 0.125);
  }

  if (!a2)
  {
    v12 = 0;
    goto LABEL_17;
  }

  ASBDToAPAudioFormat(v6, &v20);
  if (v20 < 2)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (v20 > 0x3FFFFFFF)
  {
    if (v20 <= 0x7FFFFFFFFFFFLL)
    {
      if (v20 > 0xFFFFFFFFFFLL)
      {
        if (v20 <= 0x7FFFFFFFFFFLL)
        {
          switch(v20)
          {
            case 0x10000000000:
              v11 = 40;
              goto LABEL_11;
            case 0x20000000000:
              v11 = 41;
              goto LABEL_11;
            case 0x40000000000:
              v11 = 42;
              goto LABEL_11;
          }
        }

        else if (v20 > 0x1FFFFFFFFFFFLL)
        {
          if (v20 == 0x200000000000)
          {
            v11 = 45;
            goto LABEL_11;
          }

          if (v20 == 0x400000000000)
          {
            v11 = 46;
            goto LABEL_11;
          }
        }

        else
        {
          if (v20 == 0x80000000000)
          {
            v11 = 43;
            goto LABEL_11;
          }

          if (v20 == 0x100000000000)
          {
            v11 = 44;
            goto LABEL_11;
          }
        }
      }

      else if (v20 <= 0x1FFFFFFFFLL)
      {
        switch(v20)
        {
          case 0x40000000:
            v11 = 30;
            goto LABEL_11;
          case 0x80000000:
            v11 = 31;
            goto LABEL_11;
          case 0x100000000:
            v11 = 32;
            goto LABEL_11;
        }
      }

      else if (v20 > 0x3FFFFFFFFFLL)
      {
        if (v20 == 0x4000000000)
        {
          v11 = 38;
          goto LABEL_11;
        }

        if (v20 == 0x8000000000)
        {
          v11 = 39;
          goto LABEL_11;
        }
      }

      else
      {
        if (v20 == 0x200000000)
        {
          v11 = 33;
          goto LABEL_11;
        }

        if (v20 == 0x400000000)
        {
          v11 = 34;
          goto LABEL_11;
        }
      }
    }

    else if (v20 <= 0x3FFFFFFFFFFFFFLL)
    {
      if (v20 <= 0x3FFFFFFFFFFFFLL)
      {
        switch(v20)
        {
          case 0x800000000000:
            v11 = 47;
            goto LABEL_11;
          case 0x1000000000000:
            v11 = 48;
            goto LABEL_11;
          case 0x2000000000000:
            v11 = 49;
            goto LABEL_11;
        }
      }

      else if (v20 > 0xFFFFFFFFFFFFFLL)
      {
        if (v20 == 0x10000000000000)
        {
          v11 = 52;
          goto LABEL_11;
        }

        if (v20 == 0x20000000000000)
        {
          v11 = 53;
          goto LABEL_11;
        }
      }

      else
      {
        if (v20 == 0x4000000000000)
        {
          v11 = 50;
          goto LABEL_11;
        }

        if (v20 == 0x8000000000000)
        {
          v11 = 51;
          goto LABEL_11;
        }
      }
    }

    else if (v20 > 0x3FFFFFFFFFFFFFFLL)
    {
      if (v20 > 0x1FFFFFFFFFFFFFFFLL)
      {
        if (v20 == 0x2000000000000000)
        {
          v11 = 61;
          goto LABEL_11;
        }

        if (v20 == 0x4000000000000000)
        {
          v11 = 62;
          goto LABEL_11;
        }
      }

      else
      {
        if (v20 == 0x400000000000000)
        {
          v11 = 58;
          goto LABEL_11;
        }

        if (v20 == 0x1000000000000000)
        {
          v11 = 60;
          goto LABEL_11;
        }
      }
    }

    else if (v20 > 0xFFFFFFFFFFFFFFLL)
    {
      if (v20 == 0x100000000000000)
      {
        v11 = 56;
        goto LABEL_11;
      }

      if (v20 == 0x200000000000000)
      {
        v11 = 57;
        goto LABEL_11;
      }
    }

    else
    {
      if (v20 == 0x40000000000000)
      {
        v11 = 54;
        goto LABEL_11;
      }

      if (v20 == 0x80000000000000)
      {
        v11 = 55;
        goto LABEL_11;
      }
    }
  }

  else if (v20 < 0x8000)
  {
    if (v20 > 255)
    {
      if (v20 <= 2047)
      {
        switch(v20)
        {
          case 256:
            v11 = 8;
            goto LABEL_11;
          case 512:
            v11 = 9;
            goto LABEL_11;
          case 1024:
            v11 = 10;
            goto LABEL_11;
        }
      }

      else if (v20 >= 0x2000)
      {
        if (v20 == 0x2000)
        {
          v11 = 13;
          goto LABEL_11;
        }

        if (v20 == 0x4000)
        {
          v11 = 14;
          goto LABEL_11;
        }
      }

      else
      {
        if (v20 == 2048)
        {
          v11 = 11;
          goto LABEL_11;
        }

        if (v20 == 4096)
        {
          v11 = 12;
          goto LABEL_11;
        }
      }
    }

    else if (v20 <= 7)
    {
      switch(v20)
      {
        case 0x8000000000000000:
          v11 = 63;
          goto LABEL_11;
        case 2:
          v11 = 1;
          goto LABEL_11;
        case 4:
          v11 = 2;
          goto LABEL_11;
      }
    }

    else if (v20 > 31)
    {
      if (v20 == 32)
      {
        v11 = 5;
        goto LABEL_11;
      }

      if (v20 == 128)
      {
        v11 = 7;
        goto LABEL_11;
      }
    }

    else
    {
      if (v20 == 8)
      {
        v11 = 3;
        goto LABEL_11;
      }

      if (v20 == 16)
      {
        v11 = 4;
        goto LABEL_11;
      }
    }
  }

  else if (v20 < 0x400000)
  {
    if (v20 < 0x40000)
    {
      switch(v20)
      {
        case 0x8000:
          v11 = 15;
          goto LABEL_11;
        case 0x10000:
          v11 = 16;
          goto LABEL_11;
        case 0x20000:
          v11 = 17;
          goto LABEL_11;
      }
    }

    else if (v20 >= 0x100000)
    {
      if (v20 == 0x100000)
      {
        v11 = 20;
        goto LABEL_11;
      }

      if (v20 == 0x200000)
      {
        v11 = 21;
        goto LABEL_11;
      }
    }

    else
    {
      if (v20 == 0x40000)
      {
        v11 = 18;
        goto LABEL_11;
      }

      if (v20 == 0x80000)
      {
        v11 = 19;
        goto LABEL_11;
      }
    }
  }

  else if (v20 > 0x3FFFFFF)
  {
    if (v20 > 0xFFFFFFF)
    {
      if (v20 == 0x10000000)
      {
        v11 = 28;
        goto LABEL_11;
      }

      if (v20 == 0x20000000)
      {
        v11 = 29;
        goto LABEL_11;
      }
    }

    else
    {
      if (v20 == 0x4000000)
      {
        v11 = 26;
        goto LABEL_11;
      }

      if (v20 == 0x8000000)
      {
        v11 = 27;
        goto LABEL_11;
      }
    }
  }

  else if (v20 > 0xFFFFFF)
  {
    if (v20 == 0x1000000)
    {
      v11 = 24;
      goto LABEL_11;
    }

    if (v20 == 0x2000000)
    {
      v11 = 25;
      goto LABEL_11;
    }
  }

  else
  {
    if (v20 == 0x400000)
    {
      v11 = 22;
      goto LABEL_11;
    }

    if (v20 == 0x800000)
    {
      v11 = 23;
      goto LABEL_11;
    }
  }

  v11 = 35;
  if (v20 != 0x800000000)
  {
    v11 = 0;
  }

LABEL_11:
  valuePtr = v11;
  v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  Value = CFDictionaryGetValue(a2, v12);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &v19);
    v14 = v19 / 8;
    goto LABEL_18;
  }

LABEL_17:
  v19 = 409600;
  v14 = 51200;
LABEL_18:
  v15 = ((*(v6 + 7) + 1) >> 1) * v14;
  if (v12)
  {
    CFRelease(v12);
  }

  return v15;
}

void __hoseSBAR_createSynchronizerAndRenderer_embedded_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v39 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  valuePtr = 0;
  if (!v4 && !*(DerivedStorage + 280))
  {
    v11 = 0;
    v25 = 0;
    v12 = *(DerivedStorage + 272);
    goto LABEL_33;
  }

  v7 = *MEMORY[0x277CBECE8];
  UsingAuxiliaryAVAudioSession = FigAudioSessionCreateUsingAuxiliaryAVAudioSession();
  v39 = UsingAuxiliaryAVAudioSession;
  if (!UsingAuxiliaryAVAudioSession)
  {
    v9 = *(v6 + 32);
    v10 = *MEMORY[0x277CC1968];
    FigCFEqual();
    v11 = CFStringCreateF();
    v12 = *(v6 + 264);
    if (v12 && (v13 = *(v6 + 264), (v14 = *(CMBaseObjectGetVTable() + 16)) != 0))
    {
      v15 = *(v14 + 56);
      if (v15)
      {
        v16 = *(v14 + 56);
        v17 = v15(v12, *MEMORY[0x277D271E0], v11);
        v39 = v17;
        if (v17)
        {
          goto LABEL_27;
        }

        v18 = *(CMBaseObjectGetVTable() + 16);
        if (v18)
        {
          v19 = *(v18 + 56);
          if (v19)
          {
            v20 = *(v18 + 56);
            v17 = v19(v12, *MEMORY[0x277D27298], *MEMORY[0x277CBED10]);
            v39 = v17;
            if (v17)
            {
              goto LABEL_27;
            }

            v21 = *(CMBaseObjectGetVTable() + 16);
            if (v21)
            {
              v22 = *(v21 + 56);
              if (v22)
              {
                v23 = *(v21 + 56);
                v17 = v22(v12, *MEMORY[0x277D271A8], *MEMORY[0x277D27060]);
                v39 = v17;
                if (!v17)
                {
                  valuePtr = 16;
                  v24 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
                  v25 = v24;
                  if (!v24)
                  {
                    goto LABEL_48;
                  }

                  v24 = FigAudioSessionSetMXSessionProperty(v12, *MEMORY[0x277D27280], v24);
                  v39 = v24;
                  if (v24)
                  {
                    goto LABEL_48;
                  }

                  v26 = *(v6 + 48);
                  if (!v26)
                  {
                    goto LABEL_20;
                  }

                  v27 = *(CMBaseObjectGetVTable() + 16);
                  if (v27)
                  {
                    v28 = *(v27 + 56);
                    if (v28)
                    {
                      v29 = *(v27 + 56);
                      v24 = v28(v12, *MEMORY[0x277D271E8], v26);
                      v39 = v24;
                      if (v24)
                      {
                        goto LABEL_48;
                      }

LABEL_20:
                      v30 = *(v6 + 296);
                      if (!v30)
                      {
                        goto LABEL_33;
                      }

                      v31 = *(CMBaseObjectGetVTable() + 16);
                      if (v31)
                      {
                        v32 = *(v31 + 56);
                        if (v32)
                        {
                          v33 = *(v31 + 56);
                          v24 = v32(v12, *MEMORY[0x277D27340], v30);
                          v39 = v24;
                          if (!v24)
                          {
LABEL_33:
                            v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                            if (v34)
                            {
                              v24 = v34(v3, *MEMORY[0x277CD6428], v12);
                              v39 = v24;
                              if (!v24)
                              {
                                if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
                                {
                                  goto LABEL_42;
                                }

                                if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
                                {
                                  v35 = *(v6 + 48);
                                  v36 = *(v6 + 296);
                                  *(v6 + 280);
                                  LogPrintF();
                                }

                                goto LABEL_28;
                              }
                            }

                            else
                            {
                              v24 = 4294954514;
                              v39 = -12782;
                            }
                          }

LABEL_48:
                          APSLogErrorAt(v24);
LABEL_28:
                          if (!v39)
                          {
                            goto LABEL_42;
                          }

                          goto LABEL_29;
                        }

                        v24 = 4294948071;
                      }

                      else
                      {
                        v24 = 4294948075;
                      }

                      v39 = v24;
                      goto LABEL_48;
                    }

                    v24 = 4294948071;
                  }

                  else
                  {
                    v24 = 4294948075;
                  }

                  v39 = v24;
                  goto LABEL_48;
                }

LABEL_27:
                APSLogErrorAt(v17);
                v25 = 0;
                goto LABEL_28;
              }

              v17 = 4294948071;
            }

            else
            {
              v17 = 4294948075;
            }

            v39 = v17;
            goto LABEL_27;
          }

          v17 = 4294948071;
        }

        else
        {
          v17 = 4294948075;
        }

        v39 = v17;
        goto LABEL_27;
      }

      v17 = 4294948071;
    }

    else
    {
      v17 = 4294948075;
    }

    v39 = v17;
    goto LABEL_27;
  }

  APSLogErrorAt(UsingAuxiliaryAVAudioSession);
  v11 = 0;
  v25 = 0;
LABEL_29:
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v37 = *(v6 + 264);
  if (v37)
  {
    CFRelease(v37);
    *(v6 + 264) = 0;
  }

LABEL_42:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t hoseSBAR_setVolumeFadeInCurve(uint64_t a1, CMTime *a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v19, 0, sizeof(v19));
  lhs = *a2;
  rhs = *a3;
  CMTimeAdd(&v19, &lhs, &rhs);
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v15 = 4294894966;
    APSLogErrorAt(0);
    return v15;
  }

  v8 = Mutable;
  v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
  if (!v9)
  {
    v15 = 4294894966;
    APSLogErrorAt(0);
    goto LABEL_18;
  }

  v10 = v9;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    lhs = *a3;
    CMTimeGetSeconds(&lhs);
    lhs = *a2;
    CMTimeGetSeconds(&lhs);
    LogPrintF();
  }

  lhs = *a2;
  appended = FigCFArrayAppendCMTime();
  if (appended)
  {
    v15 = appended;
    goto LABEL_16;
  }

  appended = FigCFArrayAppendDouble();
  if (appended)
  {
    v15 = appended;
    goto LABEL_16;
  }

  v12 = *MEMORY[0x277CD6398];
  CFArrayAppendValue(v10, *MEMORY[0x277CD6398]);
  lhs = v19;
  appended = FigCFArrayAppendCMTime();
  if (appended)
  {
    v15 = appended;
    goto LABEL_16;
  }

  appended = FigCFArrayAppendDouble();
  if (appended)
  {
    v15 = appended;
    goto LABEL_16;
  }

  CFArrayAppendValue(v10, v12);
  CFDictionarySetValue(v8, *MEMORY[0x277CD63A0], v10);
  v13 = *(DerivedStorage + 104);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v14)
  {
    v15 = 4294954514;
LABEL_15:
    appended = v15;
LABEL_16:
    APSLogErrorAt(appended);
    goto LABEL_17;
  }

  v15 = v14(v13, *MEMORY[0x277CD6448], v8);
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_17:
  CFRelease(v10);
LABEL_18:
  CFRelease(v8);
  return v15;
}

void hoseSBAR_handleTimedManagerTriggeredNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5 && (v8 = DerivedStorage, v9 = CFGetTypeID(a5), v9 == CFDictionaryGetTypeID()))
  {
    ValueIfPresent = FigCFDictionaryGetValueIfPresent();
    if (ValueIfPresent)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      ValueIfPresent = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (ValueIfPresent)
      {
        v11 = ValueIfPresent;
        CFDictionarySetValue(ValueIfPresent, @"AudioFormat", 0);
        v12 = *(v8 + 8);
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        CFBooleanGetTypeID();
        v13 = CFDictionaryGetTypedValue() == *MEMORY[0x277CBED28];
        APSLogErrorAt(0);
        APSLogErrorAt(0);
        APSLogErrorAt(0);
        hoseSBAR_setPreferencesOnAudioSessionSetValues(a2, v13, 0, 0.0);
        CFRelease(v11);
        return;
      }
    }
  }

  else
  {
    ValueIfPresent = 0;
  }

  APSLogErrorAt(ValueIfPresent);
}

uint64_t hoseSBAR_setPreferencesOnAudioSessionSetValues(uint64_t a1, int a2, int a3, double a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  v9 = APSIsAPMSpeaker_sIsAPMSpeaker;
  v11 = *(DerivedStorage + 264);
  v10 = *(DerivedStorage + 272);
  result = FigCFEqual();
  if (result)
  {
    v13 = 0;
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v13 = *(DerivedStorage + 264);
    if (v9)
    {
      return result;
    }
  }

  v14 = *(DerivedStorage + 272);
  v35 = a4;
  v15 = *MEMORY[0x277CBECE8];
  v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloat64Type, &v35);
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0x277D27308];
    if (v14 && (v19 = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v14, 0, *MEMORY[0x277D27308], v16, a2), v19))
    {
      v31 = v19;
    }

    else
    {
      if (!v13 || (v19 = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v13, 1, *v18, v17, a2), !v19))
      {
        CFRelease(v17);
        goto LABEL_13;
      }

      v31 = v19;
    }

    APSLogErrorAt(v19);
    CFRelease(v17);
    v32 = v31;
    return APSLogErrorAt(v32);
  }

  APSLogErrorAt(0);
LABEL_13:
  v20 = *(DerivedStorage + 272);
  valuePtr = a3;
  v21 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
  if (v21)
  {
    v22 = v21;
    v23 = MEMORY[0x277D27300];
    if (v20 && (v24 = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v20, 0, *MEMORY[0x277D27300], v21, a2), v24))
    {
      v33 = v24;
    }

    else
    {
      if (!v13 || (v24 = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v13, 1, *v23, v22, a2), !v24))
      {
        CFRelease(v22);
        goto LABEL_19;
      }

      v33 = v24;
    }

    APSLogErrorAt(v24);
    CFRelease(v22);
    v32 = v33;
    return APSLogErrorAt(v32);
  }

  APSLogErrorAt(0);
LABEL_19:
  v25 = *(DerivedStorage + 272);
  v26 = CMBaseObjectGetDerivedStorage();
  v27 = *(v26 + 704);
  if (v27)
  {
    result = *(v27 + 56);
  }

  else
  {
    APSLogErrorAt(0);
    result = 4294901760;
  }

  if (*(v26 + 281) && (result = APSAudioFormatDoesAudioChannelLayoutTagHaveHeights(result), result))
  {
    v28 = MEMORY[0x277D270A8];
  }

  else
  {
    v28 = MEMORY[0x277D270A0];
  }

  v29 = *v28;
  v30 = MEMORY[0x277D272F0];
  if (v25)
  {
    result = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v25, 0, *MEMORY[0x277D272F0], *v28, a2);
    if (result)
    {
      v34 = result;
LABEL_41:
      APSLogErrorAt(result);
      v32 = v34;
      return APSLogErrorAt(v32);
    }
  }

  if (v13)
  {
    result = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v13, 1, *v30, v29, a2);
    if (result)
    {
      v34 = result;
      goto LABEL_41;
    }
  }

  return result;
}

uint64_t hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  cf = 0;
  v10 = *MEMORY[0x277CBECE8];
  v11 = "Shadow Session";
  if (!a3)
  {
    v11 = "Parent Session";
  }

  v12 = CFStringCreateWithFormat(v10, 0, @"%s", v11);
  if (!v12)
  {
    APSLogErrorAt(0);
    v17 = 4294894966;
    goto LABEL_27;
  }

  if (a6)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v18 = *(CMBaseObjectGetVTable() + 16);
    if (v18)
    {
      v19 = *(v18 + 56);
      if (v19)
      {
        v20 = *(v18 + 56);
        v17 = v19(a2, a4, a5);
        if (!v17)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v17 = 4294948071;
      }
    }

    else
    {
      v17 = 4294948075;
    }

    v21 = v17;
    goto LABEL_26;
  }

  v13 = *(CMBaseObjectGetVTable() + 16);
  if (!v13)
  {
    v17 = 4294948075;
LABEL_25:
    v21 = v17;
    goto LABEL_26;
  }

  v14 = *(v13 + 48);
  if (!v14)
  {
    v17 = 4294948071;
    goto LABEL_25;
  }

  v15 = *(v13 + 48);
  v16 = v14(a2, a4, v10, &cf);
  if (v16)
  {
    v17 = v16;
    goto LABEL_25;
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v23 = *(CMBaseObjectGetVTable() + 16);
    if (v23)
    {
      v24 = *(v23 + 56);
      if (v24)
      {
        v25 = *(v23 + 56);
        v17 = v24(a2, a4, a5);
        if (!v17)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v17 = 4294948071;
      }
    }

    else
    {
      v17 = 4294948075;
    }

    v21 = v17;
LABEL_26:
    APSLogErrorAt(v21);
    goto LABEL_27;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v17 = 0;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v17;
}

uint64_t hoseSBAR_handleDriftThresholdExceededNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  v8 = result;
  memset(&v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
    {
      CMTimeMakeFromDictionary(&time, a5);
      CMTimeGetSeconds(&time);
      result = LogPrintF();
    }
  }

  if (*(v8 + 281) && *(v8 + 480))
  {
    CMTimebaseGetTime(&v17, *(v8 + 120));
    time = v17;
    hoseSBAR_getMediaTimeForSynchronizerTime(&v16, a2, &time);
    v9 = *(v8 + 112);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v10)
    {
      time = **&MEMORY[0x277CC0898];
      v11 = v10(v9, &time, 0.0);
      if (!v11)
      {
        v11 = APSClockDriftMonitorSuspend(*(v8 + 1000));
        if (!v11)
        {
          hoseSBAR_waitForTimebaseRate(0.0);
          hoseSBAR_updateSynchronizerState(a2, 0);
          CMTimeMakeFromDictionary(&v15, a5);
          time = v17;
          rhs = v15;
          CMTimeAdd(&v18, &time, &rhs);
          v12 = *(v8 + 112);
          v14 = v18;
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v13)
          {
            time = v16;
            rhs = v14;
            v11 = v13(v12, &time, &rhs, 1.0);
            if (!v11)
            {
              v11 = APSClockDriftMonitorResume(*(v8 + 1000));
              if (!v11)
              {
                hoseSBAR_waitForTimebaseRate(1.0);
                CMTimebaseSetTimerDispatchSourceToFireImmediately(*(v8 + 120), *(v8 + 648));
                return hoseSBAR_updateSynchronizerState(a2, 1);
              }
            }
          }

          else
          {
            v11 = 4294954514;
          }
        }
      }
    }

    else
    {
      v11 = 4294954514;
    }

    return APSLogErrorAt(v11);
  }

  return result;
}

__n128 hoseSBAR_getMediaTimeForSynchronizerTime(CMTime *a1, uint64_t a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = MEMORY[0x277CC0898];
  a1->epoch = *(MEMORY[0x277CC0898] + 16);
  result = *v6;
  *&a1->value = *v6;
  if (*(DerivedStorage + 128))
  {
    result = *&a3->value;
    *&a1->value = *&a3->value;
    a1->epoch = a3->epoch;
  }

  else if (*(DerivedStorage + 612))
  {
    lhs = *a3;
    v8 = *(DerivedStorage + 600);
    CMTimeSubtract(a1, &lhs, &v8);
  }

  return result;
}

uint64_t hoseSBAR_waitForTimebaseRate(double a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    CMTimebaseGetRate(*(DerivedStorage + 120));
    LogPrintF();
  }

  if (CMTimebaseGetRate(*(DerivedStorage + 120)) != a1)
  {
    v3 = *(DerivedStorage + 120);
    if (v3)
    {
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        if (gAPSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerInitOnce != -1)
        {
          dispatch_once_f(&gAPSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerInitOnce, 0, _APSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerGetTypeID);
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          v5 = Instance;
          Instance[2] = 0.0;
          Instance[3] = 0.0;
          Instance[4] = 0.0;
          *(Instance + 3) = CFRetain(v3);
          v5[2] = a1;
          v6 = dispatch_semaphore_create(0);
          *(v5 + 4) = v6;
          if (v6)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            v7 = *MEMORY[0x277CC0908];
            v8 = FigNotificationCenterAddWeakListener();
            if (!v8)
            {
              v9 = CFRetain(v5);
              CFRelease(v5);
              if (CMTimebaseGetRate(*(DerivedStorage + 120)) != a1)
              {
                if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                v10 = v9[4];
                v11 = dispatch_time(0, 2500000000);
                if (dispatch_semaphore_wait(v10, v11))
                {
                  if (CMTimebaseGetRate(*(DerivedStorage + 120)) != a1)
                  {
                    APSLogErrorAt(0);
                    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
                    {
                      CMTimebaseGetRate(*(DerivedStorage + 120));
                      LogPrintF();
                    }

                    v12 = 4294960574;
                    goto LABEL_31;
                  }

                  if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
                  {
                    v12 = 0;
LABEL_31:
                    CFRelease(v9);
                    return v12;
                  }

                  if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
                  {
                    LogPrintF();
                  }
                }
              }

              goto LABEL_26;
            }

            v12 = v8;
            APSLogErrorAt(v8);
          }

          else
          {
            APSLogErrorAt(0);
            v12 = 4294894966;
          }

          CFRelease(v5);
        }

        else
        {
          APSLogErrorAt(0);
          v12 = 4294960568;
        }

LABEL_40:
        APSLogErrorAt(v12);
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return v12;
      }

      v12 = 4294894965;
    }

    else
    {
      v12 = 4294894965;
    }

    APSLogErrorAt(0);
    goto LABEL_40;
  }

  v9 = 0;
LABEL_26:
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    CMTimebaseGetRate(*(DerivedStorage + 120));
    LogPrintF();
  }

  v12 = 0;
  if (v9)
  {
    goto LABEL_31;
  }

  return v12;
}

uint64_t hoseSBAR_updateSynchronizerState(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
    {
      hoseSBAR_synchronizerStateToName(*(v4 + 480));
      hoseSBAR_synchronizerStateToName(a2);
      CMTimebaseGetRate(*(v4 + 120));
      result = LogPrintF();
    }
  }

  *(v4 + 480) = a2;
  return result;
}

const char *hoseSBAR_synchronizerStateToName(int a1)
{
  if (!a1)
  {
    return "Stopped";
  }

  if (a1 == 1)
  {
    return "Started";
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return "Unknown?";
}

uint64_t hoseSBARTimebaseRateChangeListener_timebaseRateChangedNotification(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    CMTimebaseGetRate(*(a2 + 24));
    v6 = *(a2 + 16);
    LogPrintF();
  }

  if (CMTimebaseGetRate(*(a2 + 24)) == *(a2 + 16))
  {
    dispatch_semaphore_signal(*(a2 + 32));
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = *MEMORY[0x277CC0908];
    v4 = *(a2 + 24);

    return FigNotificationCenterRemoveWeakListener();
  }

  else
  {

    return APSLogErrorAt(0);
  }
}

uint64_t _APSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerTypeID = result;
  return result;
}

void _APSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerFinalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v2 = *MEMORY[0x277CC0908];
    v3 = *(a1 + 24);
    FigNotificationCenterRemoveWeakListener();
    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    dispatch_release(v5);
  }
}

void hoseSBAR_renewAudioIOAssertionDispatch(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 144);
  if (v3 && (v4 = *(DerivedStorage + 152), v5 = dispatch_time(0, 1000000000 * v3), v6 = APSAudioIOAssertionTimingControllerAssertUntilTime(v4, v5), v6))
  {
    APSLogErrorAt(v6);
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

void hoseSBAR_sbarLowWaterTimerFired()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = hoseSBAR_fillSBARToHighWater(v1);
    if (v2)
    {
      APSLogErrorAt(v2);
    }

    CFRelease(v1);
  }
}

uint64_t hoseSBAR_fillSBARToHighWater(uint64_t a1)
{
  v111 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  cf = 0;
  if (*(DerivedStorage + 282))
  {
    if (!*(DerivedStorage + 129) || !*(DerivedStorage + 128))
    {
      goto LABEL_8;
    }
  }

  else if ((*(DerivedStorage + 612) & 1) == 0 || (*(DerivedStorage + 564) & 1) == 0)
  {
    goto LABEL_196;
  }

  if ((*(DerivedStorage + 588) & 1) == 0)
  {
LABEL_196:
    v44 = 0;
    goto LABEL_184;
  }

LABEL_8:
  if (CMBufferQueueIsEmpty(*(DerivedStorage + 664)))
  {
    goto LABEL_196;
  }

  v3 = 0;
  allocator = *MEMORY[0x277CBECE8];
  key = *MEMORY[0x277CC0760];
  v88 = *MEMORY[0x277CC1AA8];
  v89 = v2;
  v86 = *MEMORY[0x277CD6420];
  while (2)
  {
    v4 = *(v2 + 104);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v5 || v5(v4))
    {
      v44 = 0;
      goto LABEL_184;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v6 = CMBaseObjectGetDerivedStorage();
    memset(&v105, 0, sizeof(v105));
    CMTimeMake(&v105, 500, 1000);
    v92 = *MEMORY[0x277CC0898];
    *&start.value = *MEMORY[0x277CC0898];
    v91 = *(MEMORY[0x277CC0898] + 16);
    start.epoch = v91;
    lhs = **&MEMORY[0x277CC08F0];
    v7 = *(v6 + 688);
    if (v7 && CFArrayGetCount(*(v7 + 40)))
    {
      APSLogErrorAt(0);
      APSCMSampleBufferMergerFlush(*(v6 + 688));
      v44 = 4294960587;
      goto LABEL_193;
    }

    v90 = v3;
    v8 = 0;
    while (1)
    {
      v9 = CMBufferQueueCopyHead(*(v6 + 664));
      v10 = v9;
      if (!v9)
      {
        break;
      }

      CMSampleBufferGetPresentationTimeStamp(&time1.duration, v9);
      value = time1.duration.value;
      timescale = time1.duration.timescale;
      flags = time1.duration.flags;
      epoch = time1.duration.epoch;
      if (!*(v6 + 129))
      {
        goto LABEL_36;
      }

      if ((*(v6 + 444) & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((time1.duration.flags & 1) == 0)
      {
        goto LABEL_36;
      }

      *&time1.duration.value = *(v6 + 432);
      time1.duration.epoch = *(v6 + 448);
      time2.start.value = value;
      time2.start.timescale = timescale;
      time2.start.flags = flags;
      time2.start.epoch = epoch;
      if ((CMTimeCompare(&time1.duration, &time2.start) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v15 = CMBaseObjectGetDerivedStorage();
      *&time1.duration.value = v92;
      time1.duration.epoch = v91;
      if (*(v15 + 420))
      {
        v16 = v15;
        CMTimebaseGetTime(&time2.start, *(v15 + 120));
        v110.value = time2.start.value;
        v17 = time2.start.flags;
        v110.timescale = time2.start.timescale;
        if (time2.start.flags)
        {
          v18 = time2.start.epoch;
          goto LABEL_27;
        }

        v17 = *(v16 + 396);
        if (v17)
        {
          v110.value = *(v16 + 384);
          v110.timescale = *(v16 + 392);
          v18 = *(v16 + 400);
LABEL_27:
          *&time2.start.value = *(v16 + 408);
          time2.start.epoch = *(v16 + 424);
          rhs.start.value = v110.value;
          rhs.start.timescale = v110.timescale;
          rhs.start.flags = v17;
          rhs.start.epoch = v18;
          CMTimeSubtract(&time1.duration, &time2.start, &rhs.start);
          *&time2.start.value = *&time1.duration.value;
          time2.start.epoch = time1.duration.epoch;
          *&rhs.start.value = *(v16 + 232);
          rhs.start.epoch = *(v16 + 248);
          v19 = CMTimeCompare(&time2.start, &rhs.start) >> 31;
          goto LABEL_28;
        }
      }

      v19 = 1;
LABEL_28:
      if (v19)
      {
        v20 = 50;
      }

      else
      {
        v20 = 30;
      }

      if (v20 >= gLogCategory_APSEndpointStreamAudioHoseSBAR && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        *&time1.duration.value = *(v6 + 432);
        time1.duration.epoch = *(v6 + 448);
        CMTimeGetSeconds(&time1.duration);
        v94 = *(v6 + 432);
        v21 = *(v6 + 440);
        time1.duration.value = value;
        time1.duration.timescale = timescale;
        time1.duration.flags = flags;
        time1.duration.epoch = epoch;
        CMTimeGetSeconds(&time1.duration);
        LogPrintF();
      }

      if (!v19)
      {
        break;
      }

LABEL_36:
      v22 = CMBaseObjectGetDerivedStorage();
      if (CMGetAttachment(v10, @"HoseSBARCryptorID", 0))
      {
        FigCFNumberGetUInt64();
        v23 = *(v22 + 928);
        if (!FigCFDictionaryGetValue())
        {
          if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          break;
        }

        FigSampleBufferSetDecryptor();
        CMRemoveAttachment(v10, @"HoseSBARCryptorID");
      }

      v95 = value;
      v24 = CMBaseObjectGetDerivedStorage();
      sbuf.value = 0;
      sampleSizeArray.value = 0;
      LODWORD(v108) = 0;
      formatDescriptionOut.value = 0;
      v25 = CMGetAttachment(v10, @"HoseSBARMagicCookieID", 0);
      if (!v25)
      {
        v41 = 1;
        goto LABEL_64;
      }

      memset(&time1, 0, sizeof(time1));
      memset(&time2, 0, 40);
      memset(&rhs, 0, 32);
      FigCFNumberGetUInt64();
      v26 = *(v24 + 952);
      v27 = FigCFDictionaryGetValue();
      if (!v27)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_83;
        }

LABEL_79:
        LogPrintF();
        goto LABEL_83;
      }

      v28 = v27;
      if (!CMGetAttachment(v10, @"HoseSBARAudioFormatIndex", 0))
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_83;
        }

        goto LABEL_79;
      }

      v29 = *(v24 + 960);
      v30 = FigCFDictionaryGetValue();
      if (!v30)
      {
        formatDescriptionOut.value = 0;
LABEL_46:
        UInt64 = FigCFNumberGetUInt64();
        v32 = APAudioFormatIndexToASBD(UInt64, &time2);
        if (v32 || (v32 = APAudioFormatIndexToAudioChannelLayout(UInt64, &rhs.start.value, &v108), v32) || (BytePtr = CFDataGetBytePtr(v28), Length = CFDataGetLength(v28), v32 = CMAudioFormatDescriptionCreate(allocator, &time2, v108, &rhs, Length, BytePtr, 0, &formatDescriptionOut), v32))
        {
          APSLogErrorAt(v32);
          goto LABEL_83;
        }

        goto LABEL_49;
      }

      formatDescriptionOut.value = CFRetain(v30);
      if (!formatDescriptionOut.value)
      {
        goto LABEL_46;
      }

LABEL_49:
      DataBuffer = CMSampleBufferGetDataBuffer(v10);
      sampleSizeArray.value = CMBlockBufferGetDataLength(DataBuffer);
      CMSampleBufferGetPresentationTimeStamp(&time1.presentationTimeStamp, v10);
      CMSampleBufferGetDuration(&v110, v10);
      time1.duration = v110;
      CMSampleBufferGetDecodeTimeStamp(&v110, v10);
      time1.decodeTimeStamp = v110;
      v36 = CMSampleBufferCreateReady(allocator, DataBuffer, formatDescriptionOut.value, 1, 1, &time1, 1, &sampleSizeArray, &sbuf);
      if (!v36)
      {
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v10, 0);
        v38 = CMSampleBufferGetSampleAttachmentsArray(sbuf.value, 1u);
        if (SampleAttachmentsArray)
        {
          v39 = v38;
          if (CFArrayGetCount(SampleAttachmentsArray) >= 1)
          {
            CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
            CFArrayGetValueAtIndex(v39, 0);
            FigCFDictionaryAddEntriesToDictionaryWithRecursion();
          }
        }

        CMPropagateAttachments(v10, sbuf.value);
        CMRemoveAttachment(sbuf.value, @"HoseSBARMagicCookieID");
        CMRemoveAttachment(sbuf.value, @"HoseSBARAudioFormatIndex");
        FigSampleBufferGetDecryptor();
        FigSampleBufferSetDecryptor();
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v25 = sbuf.value;
        sbuf.value = 0;
        v40 = 1;
        goto LABEL_58;
      }

      APSLogErrorAt(v36);
      if (sbuf.value)
      {
        CFRelease(sbuf.value);
      }

LABEL_83:
      v25 = 0;
      v40 = 0;
LABEL_58:
      if (formatDescriptionOut.value)
      {
        CFRelease(formatDescriptionOut.value);
      }

      if (!v40)
      {
        goto LABEL_94;
      }

      if (v25)
      {
        CFRetain(v25);
        CFRelease(v10);
        v41 = 0;
        v10 = v25;
      }

      else
      {
        v41 = 1;
      }

LABEL_64:
      CMSampleBufferGetOutputDuration(&start, v10);
      if (v8)
      {
        time2.start = lhs;
        rhs.start = start;
        CMTimeAdd(&time1.duration, &time2.start, &rhs.start);
        time2.start = v105;
        if (CMTimeCompare(&time1.duration, &time2.start) > 0)
        {
          goto LABEL_95;
        }
      }

      if (!APSCMSampleBufferMergerTryMerge(*(v6 + 688), v10))
      {
        goto LABEL_94;
      }

      v42 = CMBufferQueueDequeueAndRetain(*(v6 + 664));
      if (v42)
      {
        CFRelease(v42);
      }

      CMSampleBufferGetDuration(&time2.start, v10);
      rhs.start.value = v95;
      rhs.start.timescale = timescale;
      rhs.start.flags = flags;
      rhs.start.epoch = epoch;
      CMTimeAdd(&time1.duration, &rhs.start, &time2.start);
      *(v6 + 432) = *&time1.duration.value;
      *(v6 + 448) = time1.duration.epoch;
      time1.duration = lhs;
      time2.start = start;
      CMTimeAdd(&lhs, &time1.duration, &time2.start);
      CFRelease(v10);
      if ((v41 & 1) == 0)
      {
        CFRelease(v25);
      }

      if (++v8 == 32)
      {
        v10 = 0;
        v25 = 0;
        goto LABEL_95;
      }
    }

    v25 = 0;
LABEL_94:
    if (!v8)
    {
      v44 = 0;
      cf = 0;
      v45 = v90;
      goto LABEL_98;
    }

LABEL_95:
    v43 = APSCMSampleBufferMergerCopyMergedSBuf(*(v6 + 688), &cf);
    v44 = v43;
    v45 = v90;
    if (v43)
    {
      APSLogErrorAt(v43);
    }

LABEL_98:
    if (v10)
    {
      CFRelease(v10);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    APSCMSampleBufferMergerFlush(*(v6 + 688));
    if (v44)
    {
LABEL_193:
      v84 = v44;
      goto LABEL_195;
    }

    v46 = cf;
    if (!cf)
    {
      v44 = 0;
      goto LABEL_187;
    }

    v47 = CMBaseObjectGetDerivedStorage();
    *&v110.value = v92;
    v110.epoch = v91;
    v48 = *(MEMORY[0x277CC0898] + 12);
    v107 = 0;
    v108 = v48;
    epoch_high = *(MEMORY[0x277CC0898] + 20);
    v49 = *(MEMORY[0x277CC08C8] + 16);
    *&time1.duration.value = *MEMORY[0x277CC08C8];
    *&time1.duration.epoch = v49;
    *&time1.presentationTimeStamp.timescale = *(MEMORY[0x277CC08C8] + 32);
    *&time2.start.value = *&time1.duration.value;
    *&time2.start.epoch = v49;
    *&time2.duration.timescale = *&time1.presentationTimeStamp.timescale;
    *&v105.value = v92;
    v105.epoch = v91;
    CMSampleBufferGetOutputPresentationTimeStamp(&v110, v46);
    v50 = (v47 + 624);
    if (*(v47 + 636))
    {
      rhs.start = v110;
      *&start.value = *v50;
      start.epoch = *(v47 + 640);
      if (CMTimeCompare(&rhs.start, &start) < 0)
      {
        v54 = 0;
        v44 = 0;
LABEL_116:
        v2 = v89;
        goto LABEL_171;
      }
    }

    start = v110;
    hoseSBAR_getSynchronizerTimeForMediaTime(&rhs.start, a1, &start);
    v51 = rhs.start.value;
    v52 = rhs.start.timescale;
    v108 = *&rhs.start.flags;
    epoch_high = HIDWORD(rhs.start.epoch);
    v53 = CMSampleBufferCreateCopy(allocator, v46, &v107);
    if (v53)
    {
      v44 = v53;
LABEL_179:
      APSLogErrorAt(v53);
      v54 = 0;
      goto LABEL_116;
    }

    rhs.start.value = v51;
    rhs.start.timescale = v52;
    *&rhs.start.flags = v108;
    HIDWORD(rhs.start.epoch) = epoch_high;
    v53 = CMSampleBufferSetOutputPresentationTimeStamp(v107, &rhs.start);
    if (v53)
    {
      v44 = v53;
      goto LABEL_179;
    }

    CMSampleBufferGetOutputDuration(&rhs.start, v46);
    start = v110;
    CMTimeRangeMake(&time1, &start, &rhs.start);
    if (*(v47 + 636))
    {
      *&rhs.start.value = *&time1.duration.value;
      *&rhs.start.epoch = *&time1.duration.epoch;
      v56 = *v50;
      *&rhs.duration.timescale = *&time1.presentationTimeStamp.timescale;
      *&start.value = v56;
      start.epoch = *(v47 + 640);
      v55 = v88;
      if (CMTimeRangeContainsTime(&rhs, &start))
      {
        memset(&rhs, 0, 24);
        *&start.value = *v50;
        start.epoch = *(v47 + 640);
        lhs = v110;
        CMTimeSubtract(&rhs.start, &start, &lhs);
        v57 = CMGetAttachment(v107, key, 0);
        if (v57)
        {
          CMTimeMakeFromDictionary(&v105, v57);
          lhs = v105;
          sbuf = rhs.start;
          CMTimeAdd(&start, &lhs, &sbuf);
          CMSampleBufferGetOutputDuration(&lhs, v107);
          if ((CMTimeCompare(&start, &lhs) & 0x80000000) == 0)
          {
            CMSampleBufferGetOutputDuration(&lhs, v107);
            sbuf = rhs.start;
            CMTimeAdd(&start, &lhs, &sbuf);
            rhs.start = start;
          }
        }

        start = rhs.start;
        v54 = CMTimeCopyAsDictionary(&start, allocator);
        CMSetAttachment(v107, key, v54, 1u);
      }

      else
      {
        v54 = 0;
      }
    }

    else
    {
      v54 = 0;
      v55 = v88;
    }

    v58 = v55;
    v59 = CMGetAttachment(v107, v55, 0);
    v60 = *(v47 + 976);
    if (FigCFEqual())
    {
      CMRemoveAttachment(v107, v58);
    }

    else
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v61 = *(v47 + 976);
      *(v47 + 976) = v59;
      if (v59)
      {
        CFRetain(v59);
      }

      if (v61)
      {
        CFRelease(v61);
      }
    }

    v62 = CMGetAttachment(v107, @"HoseSBARSourceAudioFormatIndex", 0);
    if (v62)
    {
      v63 = v62;
      v64 = *(v47 + 984);
      if (!FigCFEqual())
      {
        v65 = CMBaseObjectGetDerivedStorage();
        rhs.start.value = 0;
        start.value = 0;
        v66 = FigCFNumberGetUInt64();
        if (v66)
        {
          v67 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(allocator, v66, 0, &rhs.start.value);
          if (v67)
          {
            goto LABEL_143;
          }

          v67 = rhs.start.value;
          if (!rhs.start.value)
          {
            goto LABEL_143;
          }

          if (*(rhs.start.value + 44) >= 3u)
          {
            v67 = APSBadgingConvertAPSourceFormatToMATSourceFormat(rhs.start.value, &start.value);
            if (v67)
            {
              goto LABEL_143;
            }

            if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v68 = *(v65 + 104);
            v69 = start.value;
            v70 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v70)
            {
              v67 = 4294954514;
              goto LABEL_143;
            }

            v67 = v70(v68, v86, v69);
            if (v67)
            {
LABEL_143:
              APSLogErrorAt(v67);
            }
          }

          if (rhs.start.value)
          {
            CFRelease(rhs.start.value);
          }

          if (start.value)
          {
            CFRelease(start.value);
          }
        }

        v71 = *(v47 + 984);
        *(v47 + 984) = v63;
        CFRetain(v63);
        if (v71)
        {
          CFRelease(v71);
        }
      }
    }

    CMRemoveAttachment(v107, @"HoseSBARSourceAudioFormatIndex");
    CMSampleBufferGetOutputDuration(&rhs.start, v107);
    start.value = v51;
    start.timescale = v52;
    *&start.flags = v108;
    HIDWORD(start.epoch) = epoch_high;
    CMTimeRangeMake(&time2, &start, &rhs.start);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      CMTimebaseGetTime(&rhs.start, *(v47 + 120));
      CMTimeGetSeconds(&rhs.start);
      rhs.start.value = v51;
      rhs.start.timescale = v52;
      *&rhs.start.flags = v108;
      HIDWORD(rhs.start.epoch) = epoch_high;
      CMTimeGetSeconds(&rhs.start);
      rhs = time2;
      CMTimeRangeGetEnd(&start, &rhs);
      CMTimeGetSeconds(&start);
      rhs = time2;
      CMTimeRangeGetEnd(&start, &rhs);
      rhs = time2;
      CMTimeRangeGetEnd(&lhs, &rhs);
      LogPrintF();
    }

    v72 = *(v47 + 104);
    v73 = v107;
    v74 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v74)
    {
      v44 = 4294954514;
LABEL_166:
      APSLogErrorAt(v44);
      goto LABEL_170;
    }

    v75 = v74(v72, v73);
    if (v75)
    {
      v44 = v75;
      goto LABEL_166;
    }

    if ((*(v47 + 396) & 1) == 0)
    {
      *(v47 + 384) = v51;
      *(v47 + 392) = v52;
      *(v47 + 396) = v108;
      *(v47 + 404) = epoch_high;
    }

    rhs = time2;
    CMTimeRangeGetEnd(&sbuf, &rhs);
    *(v47 + 408) = sbuf;
    if (*(v47 + 420))
    {
      v76 = *(v47 + 120);
      v77 = *(v47 + 680);
      sbuf = *(v47 + 408);
      sampleSizeArray = *(v47 + 232);
      CMTimeSubtract(&rhs.start, &sbuf, &sampleSizeArray);
      CMTimebaseSetTimerDispatchSourceNextFireTime(v76, v77, &rhs.start, 0);
    }

    v78 = hoseSBAR_configureUnderrunTrackingIfNeeded();
    if (v78)
    {
      v44 = v78;
      APSLogErrorAt(v78);
      goto LABEL_116;
    }

    v79 = mach_absolute_time();
    if (v79 > *(v47 + 744))
    {
      v80 = v79;
      memset(&sbuf, 0, sizeof(sbuf));
      CMTimebaseGetTime(&sbuf, *(v47 + 120));
      memset(&sampleSizeArray, 0, sizeof(sampleSizeArray));
      rhs.start.value = v51;
      rhs.start.timescale = v52;
      *&rhs.start.flags = v108;
      HIDWORD(rhs.start.epoch) = epoch_high;
      formatDescriptionOut = sbuf;
      CMTimeSubtract(&sampleSizeArray, &rhs.start, &formatDescriptionOut);
      rhs.start = sampleSizeArray;
      CMTimeGetSeconds(&rhs.start);
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        rhs.start = sbuf;
        CMTimeGetSeconds(&rhs.start);
        rhs.start.value = v51;
        rhs.start.timescale = v52;
        *&rhs.start.flags = v108;
        HIDWORD(rhs.start.epoch) = epoch_high;
        CMTimeGetSeconds(&rhs.start);
        rhs = time2;
        CMTimeRangeGetEnd(&formatDescriptionOut, &rhs);
        CMTimeGetSeconds(&formatDescriptionOut);
        v85 = *(v47 + 740);
        LogPrintF();
      }

      v81 = *(v47 + 752);
      *(v47 + 744) = v80 + UpTicksPerSecond() / 0x3E8uLL * v81;
    }

    v44 = 0;
    ++*(v47 + 740);
LABEL_170:
    v2 = v89;
LABEL_171:
    if (v107)
    {
      CFRelease(v107);
    }

    if (v54)
    {
      CFRelease(v54);
    }

    if (!v44)
    {
      v3 = v45 + 1;
      continue;
    }

    break;
  }

  v84 = v44;
LABEL_195:
  APSLogErrorAt(v84);
LABEL_184:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_187:
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v82 = *MEMORY[0x277D85DE8];
  return v44;
}

__n128 hoseSBAR_getSynchronizerTimeForMediaTime(CMTime *a1, uint64_t a2, __n128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = MEMORY[0x277CC0898];
  a1->epoch = *(MEMORY[0x277CC0898] + 16);
  result = *v6;
  *&a1->value = *v6;
  if (*(DerivedStorage + 128))
  {
    result = *a3;
    *&a1->value = *a3;
    a1->epoch = a3[1].n128_i64[0];
  }

  else if (*(DerivedStorage + 612))
  {
    lhs = *(DerivedStorage + 600);
    v8 = *a3->n128_u8;
    CMTimeAdd(a1, &lhs, &v8);
  }

  return result;
}

uint64_t hoseSBAR_configureUnderrunTrackingIfNeeded()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(MEMORY[0x277CC08C8] + 16);
  *&v15.start.value = *MEMORY[0x277CC08C8];
  *&v15.start.epoch = v2;
  *&v15.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
  if ((*(DerivedStorage + 768) & 1) != 0 && (*(DerivedStorage + 792) & 1) != 0 && !*(DerivedStorage + 796) && (*(DerivedStorage + 780) & 0x8000000000000000) == 0 || (*(DerivedStorage + 396) & 1) == 0)
  {
    return 0;
  }

  *&v13.start.value = *(DerivedStorage + 384);
  v13.start.epoch = *(DerivedStorage + 400);
  duration = **&MEMORY[0x277CC08B0];
  CMTimeRangeMake(&v15, &v13.start, &duration);
  v3 = *MEMORY[0x277CBECE8];
  v13 = v15;
  v4 = CMTimeRangeCopyAsDictionary(&v13, v3);
  if (!v4)
  {
    APSLogErrorAt(0);
    return 4294894966;
  }

  v5 = v4;
  v6 = *(v1 + 104);
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 8) + 56);
  if (!v8)
  {
    v10 = 4294954514;
LABEL_12:
    APSLogErrorAt(v10);
    goto LABEL_13;
  }

  v9 = *(VTable + 8) + 56;
  v10 = v8(v6, *MEMORY[0x277CD6438], v5);
  if (v10)
  {
    goto LABEL_12;
  }

  v11 = *&v15.start.epoch;
  *(v1 + 756) = *&v15.start.value;
  *(v1 + 772) = v11;
  *(v1 + 788) = *&v15.duration.timescale;
LABEL_13:
  CFRelease(v5);
  return v10;
}

void hoseSBAR_purgeTimerFired()
{
  v77 = *MEMORY[0x277D85DE8];
  memset(v64, 0, sizeof(v64));
  memset(&v63, 0, sizeof(v63));
  *&v62.value = *MEMORY[0x277CC0898];
  v0 = *(MEMORY[0x277CC0898] + 16);
  v62.epoch = v0;
  *&v61.value = *&v62.value;
  v61.epoch = v0;
  v75 = *MEMORY[0x277CC0898];
  v76 = *(MEMORY[0x277CC0898] + 8);
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v1)
  {
    goto LABEL_63;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  *&time2.value = *&v62.value;
  time2.epoch = v0;
  *&v72.value = *&v62.value;
  v72.epoch = v0;
  *&v71.value = *&v62.value;
  v71.epoch = v0;
  *&v70.value = *&v62.value;
  v70.epoch = v0;
  *&v69.value = *&v62.value;
  v69.epoch = v0;
  v67 = 0;
  hostTime = 0;
  v66 = 0uLL;
  v4 = *(v3 + 64);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    v6 = 4294954514;
    goto LABEL_12;
  }

  v6 = v5(v4, &v66);
  if (v6)
  {
    goto LABEL_12;
  }

  *(&v66 + 1) = 0;
  v7 = *(v3 + 64);
  *&lhs.value = v66;
  lhs.epoch = v67;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    v6 = 4294954514;
    goto LABEL_12;
  }

  time = lhs;
  v6 = v8(v7, &time, &hostTime);
  if (v6)
  {
LABEL_12:
    APSLogErrorAt(v6);
    goto LABEL_13;
  }

  CMClockMakeHostTimeFromSystemUnits(&v72, hostTime);
  HostTimeClock = CMClockGetHostTimeClock();
  v10 = *(v3 + 120);
  time = v72;
  CMSyncConvertTime(&v71, &time, HostTimeClock, v10);
  v11 = CMClockGetHostTimeClock();
  TimeOfDayClock = FigGetTimeOfDayClock();
  time = v72;
  CMSyncConvertTime(&v69, &time, v11, TimeOfDayClock);
  time = v71;
  hoseSBAR_getMediaTimeForSynchronizerTime(&v70, v1, &time);
  CMTimeMakeWithSeconds(&time, v67 + *(&v66 + 1) * 5.42101086e-20, 1000);
  lhs = v69;
  CMTimeSubtract(&time2, &lhs, &time);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    time = v71;
    CMTimeGetSeconds(&time);
    time = v70;
    CMTimeGetSeconds(&time);
    time = v69;
    CMTimeGetSeconds(&time);
    time = time2;
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

LABEL_13:
  v13 = *(DerivedStorage + 120);
  CMTimebaseGetTimeWithLogging();
  CMBufferQueueGetDuration(&time, *(DerivedStorage + 656));
  CMTimeGetSeconds(&time);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    CMTimebaseGetRate(*(DerivedStorage + 120));
    time = v64[1];
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  hoseSBAR_maybeTriggerPullAudioBBuffs(v1);
  if (CMTimebaseGetRate(*(DerivedStorage + 120)) == 0.0)
  {
    APSLogErrorAt(0);
LABEL_63:
    v27 = 0;
LABEL_64:
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    goto LABEL_40;
  }

  v64[0] = v64[1];
  time2 = v64[1];
  hoseSBAR_getMediaTimeForSynchronizerTime(&time, v1, &time2);
  value = time.value;
  timescale = time.timescale;
  flags = time.flags;
  epoch = time.epoch;
  CMTimeMake(&time, 1, 1);
  time2 = v64[1];
  CMTimeAdd(&v63, &time2, &time);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v18 = *(DerivedStorage + 656);
    v19 = epoch;
    v20 = *(DerivedStorage + 664);
    time = v64[1];
    CMTimeGetSeconds(&time);
    CMTimebaseGetRate(*(DerivedStorage + 120));
    time = v64[0];
    CMTimeGetSeconds(&time);
    time = v63;
    CMTimeGetSeconds(&time);
    epoch = v19;
    LogPrintF();
  }

  if ((flags & 1) == 0)
  {
    goto LABEL_38;
  }

  v21 = *(DerivedStorage + 656);
  time.value = value;
  time.timescale = timescale;
  time.flags = flags;
  time.epoch = epoch;
  hoseSBAR_pruneBufferQueueToTimestamp(v1, &time, v21);
  v22 = *(DerivedStorage + 664);
  time.value = value;
  time.timescale = timescale;
  time.flags = flags;
  time.epoch = epoch;
  hoseSBAR_pruneBufferQueueToTimestamp(v1, &time, v22);
  CMBufferQueueGetEndPresentationTimeStamp(&time, *(DerivedStorage + 664));
  v75 = time.value;
  v23 = time.flags;
  v76 = time.timescale;
  if ((time.flags & 1) == 0)
  {
    goto LABEL_38;
  }

  v24 = time.epoch;
  time.value = value;
  time.timescale = timescale;
  time.flags = flags;
  time.epoch = epoch;
  time2.value = v75;
  time2.timescale = v76;
  time2.flags = v23;
  time2.epoch = v24;
  if (CMTimeCompare(&time, &time2) & 0x80000000) == 0 || (*(DerivedStorage + 840))
  {
LABEL_38:
    v27 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
LABEL_39:
    hoseSBAR_updateBufferingPriority(v1);
    v36 = *(DerivedStorage + 120);
    v37 = *(DerivedStorage + 648);
    time = v63;
    CMTimebaseSetTimerDispatchSourceNextFireTime(v36, v37, &time, 0);
    goto LABEL_40;
  }

  Count = CFDictionaryGetCount(*(DerivedStorage + 944));
  if (Count < 1)
  {
    v31 = &unk_27D00A000;
    v60 = 0;
    v27 = 0;
    goto LABEL_48;
  }

  v26 = Count;
  v27 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (!v27 || (v28 = malloc_type_calloc(v26, 8uLL, 0x6004044C4A2DFuLL)) == 0)
  {
    APSLogErrorAt(0);
    goto LABEL_64;
  }

  v29 = v27;
  v60 = v28;
  CFDictionaryGetKeysAndValues(*(DerivedStorage + 944), v27, v28);
  for (i = 0; i != v26; ++i)
  {
    CMTimeMakeFromDictionary(&v62, v60[i]);
    time.value = value;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    time2 = v62;
    if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        v53 = v29[i];
        LogPrintF();
      }

      CFDictionaryRemoveValue(*(DerivedStorage + 952), v29[i]);
      CFDictionaryRemoveValue(*(DerivedStorage + 944), v29[i]);
    }
  }

  v31 = &unk_27D00A000;
  v27 = v29;
LABEL_48:
  v39 = CFDictionaryGetCount(*(DerivedStorage + 936));
  if (v39 < 1)
  {
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v33 = v60;
    goto LABEL_39;
  }

  v40 = v39;
  keys = malloc_type_calloc(v39, 8uLL, 0x6004044C4A2DFuLL);
  if (keys)
  {
    v55 = v27;
    v58 = v40;
    v41 = malloc_type_calloc(v40, 8uLL, 0x6004044C4A2DFuLL);
    if (v41)
    {
      v42 = v31;
      v32 = keys;
      v59 = v41;
      CFDictionaryGetKeysAndValues(*(DerivedStorage + 936), keys, v41);
      v35 = 0;
      v43 = 0;
      allocator = *MEMORY[0x277CBECE8];
      while (1)
      {
        CMTimeMakeFromDictionary(&v61, v59[v43]);
        time.value = value;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
        time2 = v61;
        if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
        {
          v44 = v42[164];
          if (v44 <= 50 && (v44 != -1 || _LogCategory_Initialize()))
          {
            v54 = v32[v43];
            LogPrintF();
          }

          Mutable = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v35 = Mutable;
          if (!Mutable)
          {
            APSLogErrorAt(0);
            v27 = v55;
            v34 = v59;
            v33 = v60;
            goto LABEL_40;
          }

          CFDictionarySetValue(Mutable, @"CryptorID", v32[v43]);
          v46 = epoch;
          v47 = flags;
          v48 = v1;
          v49 = timescale;
          v50 = value;
          v51 = v42;
          v52 = *(DerivedStorage + 8);
          CMNotificationCenterGetDefaultLocalCenter();
          v42 = v51;
          value = v50;
          timescale = v49;
          v1 = v48;
          flags = v47;
          epoch = v46;
          v32 = keys;
          FigDispatchAsyncPostNotification();
          CFDictionaryRemoveValue(*(DerivedStorage + 928), keys[v43]);
          CFDictionaryRemoveValue(*(DerivedStorage + 936), keys[v43]);
        }

        if (v58 == ++v43)
        {
          v27 = v55;
          v34 = v59;
          v33 = v60;
          goto LABEL_39;
        }
      }
    }

    APSLogErrorAt(0);
    v34 = 0;
    v35 = 0;
    v33 = v60;
    v32 = keys;
  }

  else
  {
    APSLogErrorAt(0);
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v33 = v60;
  }

LABEL_40:
  free(v27);
  free(v32);
  free(v33);
  free(v34);
  if (v1)
  {
    CFRelease(v1);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void hoseSBAR_maybeTriggerPullAudioBBuffs(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return;
  }

  v3 = DerivedStorage;
  if (!*(DerivedStorage + 457))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 30 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
      return;
    }

LABEL_12:
    LogPrintF();
    return;
  }

  if (*(DerivedStorage + 460))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 30 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    goto LABEL_12;
  }

  CFRetain(a1);
  v4 = *(v3 + 352);

  dispatch_async_f(v4, a1, hoseSBAR_pullAudioBBuffsDispatchFunction);
}

void hoseSBAR_pruneBufferQueueToTimestamp(uint64_t a1, uint64_t a2, opaqueCMBufferQueue *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 12) & 1) == 0)
  {
    v11 = *MEMORY[0x277D85DE8];
LABEL_29:

    APSLogErrorAt(0);
    return;
  }

  if (!a3)
  {
    v12 = *MEMORY[0x277D85DE8];
    goto LABEL_29;
  }

  v5 = CMBufferQueueCopyHead(a3);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  while (1)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&time, v6);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    if (time.flags)
    {
      epoch = time.epoch;
      goto LABEL_13;
    }

    CMBufferQueueGetMinPresentationTimeStamp(&time, a3);
    v15 = time.value;
    flags = time.flags;
    v16 = time.timescale;
    if ((time.flags & 1) == 0)
    {
      break;
    }

    epoch = time.epoch;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      time.value = v15;
      time.timescale = v16;
      time.flags = flags;
      time.epoch = epoch;
      CMTimeGetSeconds(&time);
      LogPrintF();
    }

    value = v15;
    timescale = v16;
LABEL_13:
    time = *a2;
    time2.value = value;
    time2.timescale = timescale;
    time2.flags = flags;
    time2.epoch = epoch;
    if (CMTimeCompare(&time, &time2) < 0)
    {
      goto LABEL_26;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      time.value = value;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      CMTimeGetSeconds(&time);
      time = *a2;
      CMTimeGetSeconds(&time);
      LogPrintF();
    }

    v9 = CMBufferQueueDequeueAndRetain(a3);
    if (v9)
    {
      CFRelease(v9);
    }

    CFRelease(v6);
    v6 = CMBufferQueueCopyHead(a3);
    if (!v6)
    {
      goto LABEL_21;
    }
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_26:
  CFRelease(v6);
LABEL_21:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t hoseSBAR_updateBufferingPriority(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v11, 0, sizeof(v11));
  CMTimebaseGetTime(&v11, *(DerivedStorage + 120));
  v10 = **&MEMORY[0x277CC08A0];
  if (*(DerivedStorage + 420))
  {
    lhs = *(DerivedStorage + 408);
    v8 = v11;
    CMTimeSubtract(&v10, &lhs, &v8);
  }

  if (hoseSBAR_getBufferingPriorityThreshold_sHoseSBARBufferingPriorityThresholdOnce != -1)
  {
    dispatch_once(&hoseSBAR_getBufferingPriorityThreshold_sHoseSBARBufferingPriorityThresholdOnce, &__block_literal_global_368);
  }

  lhs = *hoseSBAR_getBufferingPriorityThreshold_sHoseSBARBufferingPriorityThreshold;
  v8 = v10;
  if (CMTimeCompare(&v8, &lhs) < 0)
  {
    v3 = 36;
  }

  else
  {
    v3 = 37;
  }

  v4 = *(DerivedStorage + 288);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 308) != v3)
  {
    *(DerivedStorage + 308) = v3;
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    APSCMNotificationCenterPostNotificationAsync(DefaultLocalCenter, @"BufferingPriorityChanged", a1, 0, 0, *(DerivedStorage + 8), QOS_CLASS_USER_INITIATED);
  }

  v6 = *(DerivedStorage + 288);
  return FigSimpleMutexUnlock();
}

double __hoseSBAR_getBufferingPriorityThreshold_block_invoke()
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"hoseSBARBufferingPriorityThresholdMs", 0, 10000);
  CMTimeMake(&v2, IntWithOverrideAndDefault, 1000);
  result = *&v2.value;
  *hoseSBAR_getBufferingPriorityThreshold_sHoseSBARBufferingPriorityThreshold = v2;
  return result;
}

void hoseSBAR_pullAudioBBuffsDispatchFunction(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_84;
  }

  v3 = DerivedStorage;
  if (!*(DerivedStorage + 457))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 30 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_84;
    }

LABEL_93:
    LogPrintF();
    goto LABEL_84;
  }

  if (*(DerivedStorage + 460))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 30 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_84;
    }

    goto LABEL_93;
  }

  if (hoseSBAR_hoseIsAboveHighWater())
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 30 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_84;
    }

    goto LABEL_93;
  }

  v36 = v3;
  if (!*(CMBaseObjectGetDerivedStorage() + 488))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_81;
  }

  v4 = 0;
  allocator = *MEMORY[0x277CBECE8];
  v5 = *MEMORY[0x277CC1968];
  v6 = MEMORY[0x277CC0898];
LABEL_7:
  while (!hoseSBAR_hoseIsAboveHighWater())
  {
    if (v4)
    {
      CFRelease(v4);
    }

    v7 = CMBaseObjectGetDerivedStorage();
    *theArray = 0;
    if (!*(v7 + 488))
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
LABEL_22:
        LogPrintF();
      }

LABEL_24:
      v4 = 0;
      goto LABEL_25;
    }

    v8 = v7;
    v9 = *(v7 + 464);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      MutableCopy = *(v8 + 464);
      if (Count)
      {
        goto LABEL_18;
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
        *(v8 + 464) = 0;
      }
    }

    (*(*(v8 + 488) + 8))(*(v8 + 496), a1, theArray, 0);
    if (!*theArray || !CFArrayGetCount(*theArray))
    {
      *(v8 + 457) = 0;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 10 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    MutableCopy = CFArrayCreateMutableCopy(allocator, 0, *theArray);
    *(v8 + 464) = MutableCopy;
    if (!MutableCopy)
    {
      APSLogErrorAt(0);
      goto LABEL_24;
    }

LABEL_18:
    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, 0);
    v4 = CFRetain(ValueAtIndex);
    if (v4)
    {
      v13 = *(v8 + 288);
      FigSimpleMutexLock();
      *(v8 + 320) = 1;
      v14 = *(v8 + 288);
      FigSimpleMutexUnlock();
      CFArrayRemoveValueAtIndex(*(v8 + 464), 0);
    }

LABEL_25:
    if (*theArray)
    {
      CFRelease(*theArray);
    }

    if (!v4)
    {
      goto LABEL_81;
    }

    v15 = CMBaseObjectGetDerivedStorage();
    v41[0] = 0;
    memset(theArray, 0, sizeof(theArray));
    v39 = *v6;
    v16 = *(CMBaseObjectGetDerivedStorage() + 32);
    if (FigCFEqual())
    {
      v17 = *(CMBaseObjectGetDerivedStorage() + 712);
      (*(*(v15 + 96) + 8))(a1, v4, theArray, v41);
      *v38 = *theArray;
      *&v38[12] = *&theArray[12];
      hoseSBAR_getMediaTimeForTransportTime(&v39, a1, v38);
      if (v17)
      {
        v18 = 1;
        while (1)
        {
          if (v17[16] == 1)
          {
            v19 = *(v17 + 5);
            if (((v19 - v41[0]) & 0x800000) == 0 && ((v19 ^ v41[0]) & 0xFFFFFF) != 0)
            {
              break;
            }

            v20 = *(v17 + 13);
            if (((v20 - v41[0]) & 0x800000) == 0 && ((v20 ^ v41[0]) & 0xFFFFFF) != 0)
            {
              if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30)
              {
                if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
                {
                  goto LABEL_64;
                }

                if (_LogCategory_Initialize())
                {
                  v32 = *(v17 + 5);
                  v33 = *(v17 + 13);
                  goto LABEL_64;
                }
              }

              goto LABEL_7;
            }

            if (((v20 + 20 - v41[0]) & 0x800000) != 0 || (((v20 + 20) ^ v41[0]) & 0xFFFFFF) == 0)
            {
              if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
              {
                if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_55;
                  }

                  v28 = *(v17 + 5);
                  v29 = *(v17 + 13);
                }

                *v38 = v39;
LABEL_51:
                LogPrintF();
                goto LABEL_55;
              }

              goto LABEL_55;
            }

LABEL_45:
            if ((v18 & 1) == 0)
            {
              goto LABEL_55;
            }

            v17 = *v17;
            v18 = 1;
            if (!v17)
            {
              break;
            }
          }

          else
          {
            v21 = *(v17 + 13);
            if (((v21 - v41[0]) & 0x800000) == 0 && ((v21 ^ v41[0]) & 0xFFFFFF) != 0)
            {
              if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 30)
              {
                goto LABEL_7;
              }

              if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
              {
                goto LABEL_64;
              }

              if (_LogCategory_Initialize())
              {
                v31 = *(v17 + 13);
LABEL_64:
                LogPrintF();
                goto LABEL_7;
              }

              goto LABEL_7;
            }

            if (((v21 + 20 - v41[0]) & 0x800000) == 0 && (((v21 + 20) ^ v41[0]) & 0xFFFFFF) != 0)
            {
              goto LABEL_45;
            }

            if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
            {
              if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_55;
                }

                v22 = *(v17 + 13);
              }

              *v38 = v39;
              goto LABEL_51;
            }

LABEL_55:
            v23 = CMBaseObjectGetDerivedStorage();
            v24 = *v17;
            v25 = *(v17 + 1);
            v26 = (v23 + 720);
            if (*v17)
            {
              v26 = (*v17 + 8);
            }

            *v26 = v25;
            *v25 = v24;
            free(v17);
            v27 = CMBaseObjectGetDerivedStorage();
            v18 = 0;
            v17 = *(v27 + 712);
            if (!v17)
            {
              break;
            }
          }
        }
      }
    }

    v30 = hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(a1, v4);
    if (v30)
    {
      v35 = v30;
      APSLogErrorAt(v30);
      goto LABEL_79;
    }
  }

  v35 = 0;
  if (!v4)
  {
    goto LABEL_80;
  }

LABEL_79:
  CFRelease(v4);
LABEL_80:
  if (v35)
  {
    started = v35;
LABEL_98:
    APSLogErrorAt(started);
    goto LABEL_84;
  }

LABEL_81:
  if (!*(v36 + 282))
  {
    started = hoseSBAR_startTheSynchronizerIfNecessary(a1, 1);
    if (started)
    {
      goto LABEL_98;
    }
  }

  started = hoseSBAR_fillSBARToHighWater(a1);
  if (started)
  {
    goto LABEL_98;
  }

LABEL_84:
  CFRelease(a1);
}

BOOL hoseSBAR_hoseIsAboveHighWater()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = **&MEMORY[0x277CC0898];
  CMBufferQueueGetDuration(&time1, *(DerivedStorage + 656));
  v9 = *(DerivedStorage + 208);
  if ((CMTimeCompare(&time1, &v9) & 0x80000000) == 0)
  {
    return 1;
  }

  if ((*(DerivedStorage + 396) & 1) == 0)
  {
    return 0;
  }

  v2 = (DerivedStorage + 408);
  if (CMTimebaseGetRate(*(DerivedStorage + 120)) == 0.0)
  {
    *&time1.value = *v2;
    time1.epoch = *(DerivedStorage + 424);
    v9 = *(DerivedStorage + 384);
    p_time1 = &time1;
    v4 = &v9;
  }

  else
  {
    CMTimebaseGetTime(&time1, *(DerivedStorage + 120));
    *&v9.value = *v2;
    v9.epoch = *(DerivedStorage + 424);
    p_time1 = &v9;
    v4 = &time1;
  }

  CMTimeSubtract(&v11, p_time1, v4);
  time1 = v11;
  v9 = *(DerivedStorage + 208);
  if (CMTimeCompare(&time1, &v9) < 0)
  {
    return 0;
  }

  v5 = *(DerivedStorage + 104);
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 16) + 8);
  if (!v7)
  {
    return 1;
  }

  v8 = *(VTable + 16) + 8;
  return v7(v5) != 0;
}

CMTime *hoseSBAR_getMediaTimeForTransportTime(CMTime *result, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277CC0898];
  *&result->value = *MEMORY[0x277CC0898];
  result->epoch = *(v3 + 16);
  v4 = (a3 + 4);
  if (*a3 == 1)
  {
    return hoseSBAR_getMediaTimeForRTPTime(result, a2, *v4);
  }

  if (*a3 == 2 && (*(a3 + 16) & 0x1D) == 1 && *(a3 + 20) == 0)
  {
    *&result->value = *v4;
    result->epoch = *(a3 + 20);
  }

  return result;
}

uint64_t hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v59 = 0;
  memset(v58, 0, 28);
  v57 = 0;
  v60 = *(MEMORY[0x277CC0898] + 12);
  epoch_high = *(MEMORY[0x277CC0898] + 20);
  v56 = 0;
  v55 = 0;
  *value = 0u;
  *uuid = 0u;
  memset(v53, 0, sizeof(v53));
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  *v49 = 0u;
  memset(v47, 0, sizeof(v47));
  v45 = *MEMORY[0x277CC0898];
  v46 = *(MEMORY[0x277CC0898] + 16);
  v5 = (*(*(DerivedStorage + 96) + 8))(a1, a2, v58, &v57);
  if (v5)
  {
    v34 = v5;
LABEL_124:
    APSLogErrorAt(v5);
LABEL_139:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v9 = 0;
    v15 = 0;
    goto LABEL_90;
  }

  v5 = (*(*(DerivedStorage + 96) + 16))(a1, a2, &v59, v47);
  if (v5)
  {
    v34 = v5;
    goto LABEL_124;
  }

  *time = v58[0];
  *&time[12] = *(v58 + 12);
  hoseSBAR_updateRTPRolloverStateAssumingIncreasingTransportTimes(a1, time);
  *time = v58[0];
  *&time[12] = *(v58 + 12);
  hoseSBAR_getMediaTimeForTransportTime(&lhs, a1, time);
  epoch_high = HIDWORD(lhs.epoch);
  v60 = *&lhs.flags;
  rhs = *(DerivedStorage + 184);
  CMTimeSubtract(time, &lhs, &rhs);
  v6 = *time;
  v7 = *&time[8];
  v60 = *&time[12];
  epoch_high = *&time[20];
  if (LOBYTE(v53[0]))
  {
    if (!CMBlockBufferGetDataLength(v59))
    {
      v8 = *MEMORY[0x277CBECE8];
      v5 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &v56);
      if (!v5)
      {
        v9 = CFNumberCreate(v8, kCFNumberSInt64Type, &uuid[1]);
        CMSetAttachment(v56, *MEMORY[0x277CC0750], v9, 1u);
        v40 = 0;
        cf = 0;
        v39 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
LABEL_73:
        if (!*(DerivedStorage + 129))
        {
          UInt32 = 0;
          goto LABEL_77;
        }

        UInt32 = FigCFNumberCreateUInt32();
        if (UInt32)
        {
          CMSetAttachment(v56, @"HoseSBARTransportSeqNum", UInt32, 0);
LABEL_77:
          CMBufferQueueEnqueue(*(DerivedStorage + 656), v56);
          CMBufferQueueEnqueue(*(DerivedStorage + 664), v56);
          v34 = 0;
          goto LABEL_78;
        }

        v34 = 4294894966;
        APSLogErrorAt(0);
LABEL_78:
        v35 = cf;
        v36 = v39;
        if (!cf)
        {
LABEL_80:
          if (v36)
          {
            CFRelease(v36);
          }

          if (v10)
          {
            CFRelease(v10);
          }

LABEL_84:
          v18 = v40;
          if (!v14)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }

LABEL_79:
        CFRelease(v35);
        goto LABEL_80;
      }

      v34 = v5;
      goto LABEL_124;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
LABEL_138:
      v34 = 0;
      goto LABEL_139;
    }

LABEL_122:
    LogPrintF();
    goto LABEL_138;
  }

  v16 = *&v47[0];
  if (!CMBlockBufferGetDataLength(v59))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_138;
    }

    goto LABEL_122;
  }

  v17 = *MEMORY[0x277CBECE8];
  *time = v6;
  *&time[8] = v7;
  *&time[12] = v60;
  *&time[20] = epoch_high;
  v5 = CMTimeCopyAsDictionary(time, v17);
  if (!v5)
  {
    v34 = 4294894966;
    goto LABEL_124;
  }

  v18 = v5;
  v40 = v5;
  if (value[0])
  {
    Int64 = CFNumberCreateInt64();
    if (!Int64)
    {
      goto LABEL_141;
    }

    v14 = Int64;
    v20 = *(DerivedStorage + 944);
    if (!FigCFDictionaryGetCMTimeIfPresent() || (BYTE12(v45) & 1) != 0 && (*time = v45, *&time[16] = v46, lhs.value = v6, lhs.timescale = v7, *&lhs.flags = v60, HIDWORD(lhs.epoch) = epoch_high, CMTimeCompare(time, &lhs) < 0))
    {
      CFDictionarySetValue(*(DerivedStorage + 944), v14, v18);
    }

    if (value[1])
    {
      CFDictionarySetValue(*(DerivedStorage + 952), v14, value[1]);
    }

    v21 = CFDictionaryContainsKey(*(DerivedStorage + 952), v14);
    if (v21 && !CFDictionaryContainsKey(*(DerivedStorage + 960), v14))
    {
      v22 = 1;
    }

    else
    {
      CFRelease(v14);
      v14 = 0;
      v22 = v21 != 0;
    }
  }

  else
  {
    v22 = 0;
    v14 = 0;
  }

  *time = v6;
  *&time[8] = v7;
  *&time[12] = v60;
  *&time[20] = epoch_high;
  lhs = *(v53 + 4);
  v23 = hoseSBAR_createSbufWithAudioDataAndOPTS(a1, v59, time, v16, v50, v14, &lhs, &v56);
  if (v23)
  {
    v34 = v23;
    APSLogErrorAt(v23);
    v15 = 0;
    UInt32 = 0;
    v9 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_84;
  }

  if (value[0])
  {
    v24 = v22;
  }

  else
  {
    v24 = 1;
  }

  if ((v24 & 1) != 0 || *(DerivedStorage + 968))
  {
    cf = 0;
    goto LABEL_29;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v26 = CFNumberCreateInt64();
  if (v26)
  {
    v14 = v26;
    v27 = CFNumberCreateInt64();
    if (!v27)
    {
      v34 = 4294894966;
      APSLogErrorAt(0);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v9 = 0;
      UInt32 = 0;
      v15 = 0;
      v18 = v40;
LABEL_85:
      CFRelease(v14);
LABEL_86:
      if (!v18)
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    v28 = v27;
    CMSetAttachment(v56, @"HoseSBARMagicCookieID", v14, 0);
    cf = v28;
    CMSetAttachment(v56, @"HoseSBARAudioFormatIndex", v28, 0);
LABEL_29:
    if (*(&v47[0] + 1))
    {
      v39 = CFNumberCreateInt64();
      if (!v39)
      {
        v34 = 4294894966;
        APSLogErrorAt(0);
        v36 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v9 = 0;
        UInt32 = 0;
        v15 = 0;
        v35 = cf;
        if (!cf)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }

      CMSetAttachment(v56, @"HoseSBARSourceAudioFormatIndex", cf, 0);
    }

    else
    {
      v39 = 0;
    }

    if (*&v47[1])
    {
      v10 = CFNumberCreateInt64();
      if (!v10)
      {
        v34 = 4294894966;
        APSLogErrorAt(0);
        v11 = 0;
        goto LABEL_132;
      }

      v25 = *(DerivedStorage + 936);
      if (!FigCFDictionaryGetCMTimeIfPresent() || (BYTE12(v45) & 1) != 0 && (*time = v45, *&time[16] = v46, lhs.value = v6, lhs.timescale = v7, *&lhs.flags = v60, HIDWORD(lhs.epoch) = epoch_high, CMTimeCompare(time, &lhs) < 0))
      {
        CFDictionarySetValue(*(DerivedStorage + 936), v10, v40);
      }

      CMSetAttachment(v56, @"HoseSBARCryptorID", v10, 0);
    }

    else
    {
      v10 = 0;
    }

    if ((BYTE4(v47[2]) & 1) == 0)
    {
      v11 = 0;
LABEL_54:
      if ((BYTE12(v48) & 1) == 0)
      {
        v12 = 0;
LABEL_62:
        if (v55)
        {
          v29 = *(DerivedStorage + 32);
          v30 = *MEMORY[0x277CC1968];
          FigCFEqual();
          v15 = CFStringCreateF();
          CMSetAttachment(v56, *MEMORY[0x277CD62C0], v55, 1u);
          FigEndpointStreamAudioEngineSbufTracerDebugPrint();
        }

        else
        {
          v15 = 0;
        }

        if (v49[1])
        {
          CMSetAttachment(v56, *MEMORY[0x277CC1AA8], v49[1], 1u);
        }

        if (uuid[0])
        {
          SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v56, 1u);
          v13 = CFUUIDCreateString(v17, uuid[0]);
          if (!v13)
          {
            APSLogErrorAt(0);
            v34 = 4294894965;
            APSSignalErrorAt(4294894965);
            v9 = 0;
            UInt32 = 0;
            goto LABEL_78;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
          if (ValueAtIndex)
          {
            CFDictionarySetValue(ValueAtIndex, *MEMORY[0x277CC1A90], v13);
          }
        }

        else
        {
          v13 = 0;
        }

        v9 = 0;
        goto LABEL_73;
      }

      *time = v48;
      *&time[16] = v49[0];
      v12 = CMTimeCopyAsDictionary(time, v17);
      if (v12)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          *time = v48;
          *&time[16] = v49[0];
          CMTimeGetSeconds(time);
          *time = v6;
          *&time[8] = v7;
          *&time[12] = v60;
          *&time[20] = epoch_high;
          CMTimeGetSeconds(time);
          LogPrintF();
        }

        CMSetAttachment(v56, *MEMORY[0x277CC0758], v12, 1u);
        goto LABEL_62;
      }

      v34 = 4294894966;
      APSLogErrorAt(0);
LABEL_134:
      v13 = 0;
      v9 = 0;
      UInt32 = 0;
      v15 = 0;
      goto LABEL_78;
    }

    *time = *(&v47[1] + 8);
    *&time[16] = *(&v47[2] + 1);
    v11 = CMTimeCopyAsDictionary(time, v17);
    if (v11)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        *time = *(&v47[1] + 8);
        *&time[16] = *(&v47[2] + 1);
        CMTimeGetSeconds(time);
        *time = v6;
        *&time[8] = v7;
        *&time[12] = v60;
        *&time[20] = epoch_high;
        CMTimeGetSeconds(time);
        LogPrintF();
      }

      CMSetAttachment(v56, *MEMORY[0x277CC0760], v11, 1u);
      goto LABEL_54;
    }

    v34 = 4294894966;
    APSLogErrorAt(0);
LABEL_132:
    v12 = 0;
    goto LABEL_134;
  }

  v18 = v40;
LABEL_141:
  v34 = 4294894966;
  APSLogErrorAt(0);
  v15 = 0;
  UInt32 = 0;
  v9 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
LABEL_87:
  CFRelease(v18);
LABEL_88:
  if (UInt32)
  {
    CFRelease(UInt32);
  }

LABEL_90:
  if (v59)
  {
    CFRelease(v59);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v49[1])
  {
    CFRelease(v49[1]);
  }

  if (uuid[0])
  {
    CFRelease(uuid[0]);
  }

  if (value[1])
  {
    CFRelease(value[1]);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t hoseSBAR_startTheSynchronizerIfNecessary(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = *MEMORY[0x277CC08F0];
  v21 = *(MEMORY[0x277CC08F0] + 16);
  memset(&v19, 0, sizeof(v19));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v19, HostTimeClock);
  if (!*(DerivedStorage + 282))
  {
    v6 = hoseSBAR_enqueueIntoSBARPrimingSBufIfNecessary(a1);
    if (v6)
    {
      v13 = v6;
      goto LABEL_27;
    }
  }

  if (*(DerivedStorage + 152))
  {
    v7 = *(DerivedStorage + 368);
    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    dispatch_async_f(v7, v8, hoseSBAR_renewAudioIOAssertionDispatch);
  }

  if (*(DerivedStorage + 128))
  {
    if ((*(DerivedStorage + 588) & 1) == 0)
    {
      return 0;
    }

    v20 = *(DerivedStorage + 576);
    v21 = *(DerivedStorage + 592);
    v19 = *(DerivedStorage + 552);
  }

  v9 = *(DerivedStorage + 480);
  if (v9 == 1 || a2 && (*(DerivedStorage + 396) & 1) != 0)
  {
    return 0;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
  {
    goto LABEL_18;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
  {
    goto LABEL_16;
  }

  if (_LogCategory_Initialize())
  {
    v9 = *(DerivedStorage + 480);
LABEL_16:
    hoseSBAR_synchronizerStateToName(v9);
    LogPrintF();
  }

LABEL_18:
  v10 = *(DerivedStorage + 112);
  v18 = v19;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v11)
  {
    v13 = 4294954514;
LABEL_26:
    v6 = v13;
LABEL_27:
    APSLogErrorAt(v6);
    return v13;
  }

  v23 = v20;
  v24 = v21;
  v22 = v18;
  v12 = v11(v10, &v23, &v22, 1.0);
  if (v12)
  {
    v13 = v12;
    goto LABEL_26;
  }

  v6 = APSClockDriftMonitorResume(*(DerivedStorage + 1000));
  if (v6)
  {
    v13 = v6;
    goto LABEL_27;
  }

  if (!hoseSBAR_waitForTimebaseRate(1.0))
  {
    CMTimebaseSetTimerDispatchSourceToFireImmediately(*(DerivedStorage + 120), *(DerivedStorage + 648));
    v14 = MEMORY[0x277CC0898];
    *(DerivedStorage + 600) = *MEMORY[0x277CC0898];
    *(DerivedStorage + 616) = *(v14 + 16);
    hoseSBAR_updateSynchronizerState(a1, 1);
    v13 = 0;
    *(DerivedStorage + 376) = mach_absolute_time();
    return v13;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15 = *(DerivedStorage + 112);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v16)
  {
    v23 = *MEMORY[0x277CC0898];
    v24 = *(MEMORY[0x277CC0898] + 16);
    v16(v15, &v23, 0.0);
  }

  v6 = APSClockDriftMonitorSuspend(*(DerivedStorage + 1000));
  v13 = v6;
  if (v6)
  {
    goto LABEL_27;
  }

  return v13;
}

uint64_t hoseSBAR_enqueueIntoSBARPrimingSBufIfNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v16, 0, sizeof(v16));
  CMTimeMake(&v16, -1, 1);
  cf = 0;
  blockBufferOut = 0;
  if (*(DerivedStorage + 672))
  {
    goto LABEL_27;
  }

  if (*(DerivedStorage + 128))
  {
    v3 = CMBufferQueueCopyHead(*(DerivedStorage + 664));
    if (v3)
    {
      v4 = v3;
      CMSampleBufferGetOutputPresentationTimeStamp(&time, v3);
      *&v16.timescale = *&time.timescale;
      v16.epoch = time.epoch;
      v16.value = time.value - time.timescale;
      goto LABEL_6;
    }

LABEL_27:
    v11 = 0;
    goto LABEL_22;
  }

  v4 = 0;
LABEL_6:
  v5 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, 0x40uLL, *MEMORY[0x277CBECE8], 0, 0, 0x40uLL, 1u, &blockBufferOut);
  if (v5)
  {
    v11 = v5;
    goto LABEL_20;
  }

  v6 = *(DerivedStorage + 704);
  if (v6)
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = 0;
  }

  time = v16;
  v5 = hoseSBAR_createSbufWithAudioDataAndOPTS(a1, blockBufferOut, &time, v7, 0, 0, MEMORY[0x277CC0898], &cf);
  if (v5)
  {
    v11 = v5;
LABEL_20:
    APSLogErrorAt(v5);
    if (!v4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    time = v16;
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  v8 = *(DerivedStorage + 104);
  v9 = cf;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v10)
  {
    v11 = 4294954514;
    goto LABEL_19;
  }

  v11 = v10(v8, v9);
  if (v11)
  {
LABEL_19:
    v5 = v11;
    goto LABEL_20;
  }

  *(DerivedStorage + 672) = 1;
  if (v4)
  {
LABEL_21:
    CFRelease(v4);
  }

LABEL_22:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t hoseSBAR_createSbufWithAudioDataAndOPTS(uint64_t a1, OpaqueCMBlockBuffer *a2, CMTime *a3, unint64_t a4, UInt32 a5, uint64_t a6, uint64_t a7, void *a8)
{
  keys[2] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v83 = 0;
  sampleBufferOut = 0;
  packetDescriptions.mStartOffset = 0;
  *&packetDescriptions.mVariableFramesInPacket = 0;
  v14 = *(MEMORY[0x277CC0918] + 48);
  *&sampleTimingArray.presentationTimeStamp.timescale = *(MEMORY[0x277CC0918] + 32);
  *&sampleTimingArray.decodeTimeStamp.value = v14;
  sampleTimingArray.decodeTimeStamp.epoch = *(MEMORY[0x277CC0918] + 64);
  v15 = *(MEMORY[0x277CC0918] + 16);
  *&sampleTimingArray.duration.value = *MEMORY[0x277CC0918];
  *&sampleTimingArray.duration.epoch = v15;
  v16 = CMBaseObjectGetDerivedStorage();
  memset(&asbd, 0, sizeof(asbd));
  memset(&layout, 0, sizeof(layout));
  v90 = 0;
  memset(&magicCookieSize_4, 0, sizeof(magicCookieSize_4));
  keys[0] = 0;
  magicCookieSize = 0;
  values[0] = 0;
  desc = 0;
  formatDescriptionOut = 0;
  v17 = APAudioFormatIndexToASBD(a4, &asbd);
  v18 = MEMORY[0x277CBECE8];
  v19 = &unk_27D00A000;
  if (v17)
  {
    v27 = v17;
    APSLogErrorAt(v17);
    v25 = 0;
    v26 = 0;
    goto LABEL_162;
  }

  mFramesPerPacket = asbd.mFramesPerPacket;
  if (a5)
  {
    mFramesPerPacket = a5;
  }

  asbd.mFramesPerPacket = mFramesPerPacket;
  v79 = a2;
  v80 = a3;
  if (!*(v16 + 696))
  {
    goto LABEL_15;
  }

  v21 = *(v16 + 704);
  if (!v21)
  {
    if (!a4)
    {
      APSLogErrorAt(0);
      v22 = 0;
      mFramesPerPacket = asbd.mFramesPerPacket;
      goto LABEL_8;
    }

LABEL_15:
    v23 = 0;
    v24 = a6 == 0;
    goto LABEL_16;
  }

  if (*(v21 + 64) != a4)
  {
    goto LABEL_15;
  }

  v22 = *(v21 + 36);
LABEL_8:
  v23 = v22 == mFramesPerPacket;
  v24 = a6 == 0;
  if (!a6 && v22 == mFramesPerPacket)
  {
    v25 = CFRetain(*(v16 + 696));
    v26 = 0;
    v27 = 0;
LABEL_11:
    a2 = v79;
    a3 = v80;
    goto LABEL_162;
  }

LABEL_16:
  mFormatID = asbd.mFormatID;
  mChannelsPerFrame = asbd.mChannelsPerFrame;
  v75 = v24;
  if (a4 > 0x3F || ((1 << a4) & 0xC03E000E00000000) == 0)
  {
    v30 = *(v16 + 281) != 0;
    goto LABEL_28;
  }

  if (*(v16 + 281))
  {
    v30 = 1;
LABEL_28:
    *(v16 + 968) = 0;
    v31 = a4;
    if (a4 <= 0x3F)
    {
      v31 = a4;
      if (((1 << a4) & 0xC03E000E00000000) != 0)
      {
        v31 = a4;
        if (v30)
        {
          goto LABEL_116;
        }
      }
    }

    goto LABEL_115;
  }

  if (hoseSBAR_allowAtmosPlayback_initOnce != -1)
  {
    dispatch_once(&hoseSBAR_allowAtmosPlayback_initOnce, &__block_literal_global_912);
  }

  if (hoseSBAR_allowAtmosPlayback_isAtmosAllowed)
  {
    v30 = 0;
    goto LABEL_28;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v32 = 1902207795;
  if (asbd.mFormatID <= 1902207794)
  {
    if (asbd.mFormatID <= 1685220712)
    {
      if (asbd.mFormatID <= 1667524656)
      {
        if (asbd.mFormatID <= 1667326823)
        {
          if (asbd.mFormatID == 1633771875 || asbd.mFormatID == 1667312947)
          {
            goto LABEL_114;
          }

          v34 = 24931;
        }

        else if (asbd.mFormatID > 1667330146)
        {
          if (asbd.mFormatID == 1667330147)
          {
            goto LABEL_114;
          }

          v34 = 30307;
        }

        else
        {
          if (asbd.mFormatID == 1667326824)
          {
            goto LABEL_114;
          }

          v34 = 25456;
        }

        v35 = v34 | 0x63610000;
        goto LABEL_113;
      }

      if (asbd.mFormatID <= 1667656802)
      {
        if (asbd.mFormatID == 1667524657 || asbd.mFormatID == 1667574579)
        {
          goto LABEL_114;
        }

        v35 = 1667575091;
        goto LABEL_113;
      }

      if (asbd.mFormatID > 1668047202)
      {
        if (asbd.mFormatID != 1668047203)
        {
          v35 = 1668641633;
          goto LABEL_113;
        }
      }

      else if (asbd.mFormatID != 1667656803)
      {
        v35 = 1667790435;
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    if (asbd.mFormatID <= 1885430578)
    {
      if (asbd.mFormatID <= 1701733237)
      {
        if (asbd.mFormatID == 1685220713 || asbd.mFormatID == 1700886115)
        {
          goto LABEL_114;
        }

        v35 = 1701733217;
        goto LABEL_113;
      }

      if (asbd.mFormatID > 1882599479)
      {
        if (asbd.mFormatID != 1882599480)
        {
          v35 = 1885430115;
          goto LABEL_113;
        }
      }

      else if (asbd.mFormatID != 1701733238)
      {
        v35 = 1869117027;
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    if (asbd.mFormatID <= 1885547314)
    {
      if (asbd.mFormatID - 1885430579 <= 0x3D && ((1 << (LOBYTE(asbd.mFormatID) - 51)) & 0x2020000000000001) != 0)
      {
        goto LABEL_114;
      }

      goto LABEL_178;
    }

    if (asbd.mFormatID <= 1886745440)
    {
      if (asbd.mFormatID != 1885547315)
      {
        v35 = 1885692723;
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    if (asbd.mFormatID == 1886745441)
    {
      goto LABEL_114;
    }

    v36 = 24931;
LABEL_105:
    v35 = v36 | 0x71610000;
    goto LABEL_113;
  }

  if (asbd.mFormatID <= 1902667125)
  {
    if (asbd.mFormatID > 1902324530)
    {
      if (asbd.mFormatID <= 1902405732)
      {
        if (asbd.mFormatID == 1902324531 || asbd.mFormatID == 1902403958)
        {
          goto LABEL_114;
        }

        v37 = 26673;
      }

      else
      {
        if (asbd.mFormatID > 1902469938)
        {
          if (asbd.mFormatID == 1902469939)
          {
            goto LABEL_114;
          }

          v35 = 1902537827;
          goto LABEL_113;
        }

        if (asbd.mFormatID == 1902405733)
        {
          goto LABEL_114;
        }

        v37 = 28024;
      }

      v35 = v37 | 0x71640000;
      goto LABEL_113;
    }

    if (asbd.mFormatID - 1902207795 <= 0x3D && ((1 << (LOBYTE(asbd.mFormatID) - 51)) & 0x2020000000000001) != 0 || asbd.mFormatID - 1902212657 <= 0x34 && ((1 << (LOBYTE(asbd.mFormatID) - 49)) & 0x14000000000001) != 0)
    {
      goto LABEL_114;
    }

    v36 = 28771;
    goto LABEL_105;
  }

  if (asbd.mFormatID > 2053202738)
  {
    if (asbd.mFormatID <= 2053319474)
    {
      if (asbd.mFormatID - 2053202739 <= 0x3D && ((1 << (LOBYTE(asbd.mFormatID) - 51)) & 0x2020000000000001) != 0)
      {
        goto LABEL_114;
      }

      v33 = 30307;
      goto LABEL_108;
    }

    if (asbd.mFormatID <= 2053923170)
    {
      if (asbd.mFormatID != 2053319475)
      {
        v35 = 2053464883;
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    if (asbd.mFormatID == 2053923171)
    {
      goto LABEL_114;
    }

    v35 = 2054517601;
LABEL_113:
    if (asbd.mFormatID == v35)
    {
      goto LABEL_114;
    }

LABEL_178:
    v32 = 1700998451;
    goto LABEL_114;
  }

  if (asbd.mFormatID <= 1902998903)
  {
    if (asbd.mFormatID == 1902667126 || asbd.mFormatID == 1902671459)
    {
      goto LABEL_114;
    }

    v35 = 1902928227;
    goto LABEL_113;
  }

  if (asbd.mFormatID > 1903587384)
  {
    if (asbd.mFormatID != 1903587385)
    {
      v33 = 24931;
LABEL_108:
      v35 = v33 | 0x7A610000;
      goto LABEL_113;
    }
  }

  else if (asbd.mFormatID != 1902998904)
  {
    v35 = 1903522657;
    goto LABEL_113;
  }

LABEL_114:
  asbd.mFormatID = v32;
  asbd.mChannelsPerFrame = 6;
  *(v16 + 968) = 1;
  v31 = 50;
LABEL_115:
  v38 = APAudioFormatIndexToAudioChannelLayout(v31, &layout, &v90);
  if (v38)
  {
    v27 = v38;
    APSLogErrorAt(v38);
    v25 = 0;
    v26 = 0;
    goto LABEL_11;
  }

LABEL_116:
  v39 = *(v16 + 952);
  v74 = v23;
  if (FigCFDictionaryGetValueIfPresent() && !*(v16 + 968))
  {
    v40 = a1;
    values[0] = CFDataGetBytePtr(keys[0]);
    magicCookieSize = CFDataGetLength(keys[0]);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      FigCFNumberGetUInt64();
      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v40 = a1;
    if ((asbd.mFormatID & 0xEFFFFFFF) == 0x616C6163)
    {
      LODWORD(magicCookieSize_4.value) = bswap32(asbd.mFramesPerPacket);
      BYTE4(magicCookieSize_4.value) = 0;
      BYTE5(magicCookieSize_4.value) = APAudioFormatIndexGetBitsPerChannel(a4);
      HIWORD(magicCookieSize_4.value) = 2600;
      LOBYTE(magicCookieSize_4.timescale) = 14;
      BYTE1(magicCookieSize_4.timescale) = asbd.mChannelsPerFrame;
      HIWORD(magicCookieSize_4.timescale) = -256;
      magicCookieSize_4.flags = 0;
      LODWORD(magicCookieSize_4.epoch) = 0;
      HIDWORD(magicCookieSize_4.epoch) = bswap32(asbd.mSampleRate);
      values[0] = &magicCookieSize_4;
      magicCookieSize = 24;
      goto LABEL_136;
    }

    if (asbd.mFormatID > 1667330146)
    {
      if (asbd.mFormatID == 1667330147)
      {
LABEL_133:
        APAudioFormatGetMagicCookieForAPAC(a4, values, &magicCookieSize, asbd.mSampleRate);
        goto LABEL_136;
      }

      v41 = 1902211171;
LABEL_132:
      if (asbd.mFormatID != v41)
      {
        goto LABEL_136;
      }

      goto LABEL_133;
    }

    if (asbd.mFormatID != 1633772320)
    {
      v41 = 1634754915;
      goto LABEL_132;
    }

    APAudioFormatGetMagicCookieForAACLC(asbd.mChannelsPerFrame, values, &magicCookieSize, asbd.mSampleRate);
  }

LABEL_136:
  v76 = v40;
  v42 = *v18;
  v43 = magicCookieSize;
  v44 = values[0];
  v45 = CMAudioFormatDescriptionCreate(*v18, &asbd, v90, &layout, magicCookieSize, values[0], 0, &formatDescriptionOut);
  if (v45)
  {
    v27 = v45;
    APSLogErrorAt(v45);
    v25 = 0;
    v26 = 0;
    a2 = v79;
LABEL_205:
    a3 = v80;
LABEL_207:
    a1 = v76;
    v19 = &unk_27D00A000;
    goto LABEL_162;
  }

  v46 = *(v16 + 696);
  v47 = formatDescriptionOut;
  *(v16 + 696) = formatDescriptionOut;
  if (v47)
  {
    CFRetain(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (!v75)
  {
    v48 = *(v16 + 960);
    v49 = *(v16 + 696);
    FigCFDictionarySetValue();
  }

  v50 = *(v16 + 704);
  if (v50)
  {
    CFRelease(v50);
  }

  asbd.mFormatID = mFormatID;
  asbd.mChannelsPerFrame = mChannelsPerFrame;
  v51 = APAudioFormatIndexToAudioChannelLayout(a4, &layout, &v90);
  a2 = v79;
  if (v51)
  {
    v27 = v51;
    APSLogErrorAt(v51);
    v25 = 0;
    v26 = 0;
    goto LABEL_205;
  }

  v52 = CMAudioFormatDescriptionCreate(v42, &asbd, v90, &layout, v43, v44, 0, &desc);
  a3 = v80;
  if (v52)
  {
    v27 = v52;
    APSLogErrorAt(v52);
    v25 = 0;
    v26 = 0;
    goto LABEL_207;
  }

  v53 = (v16 + 704);
  v54 = APSAudioFormatDescriptionCreateWithCMFormatDescription(v42, desc, (v16 + 704));
  v19 = &unk_27D00A000;
  if (v54)
  {
    v27 = v54;
    APSLogErrorAt(v54);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = formatDescriptionOut;
    formatDescriptionOut = 0;
    if (v74)
    {
      v27 = 0;
      v26 = 0;
      a1 = v76;
      goto LABEL_164;
    }

    cf = 0;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionCopyDebugString(*v53, &cf);
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v27 = 0;
    v26 = 1;
  }

  a1 = v76;
LABEL_162:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

LABEL_164:
  if (desc)
  {
    CFRelease(desc);
  }

  if (v27)
  {
    v70 = v27;
    goto LABEL_210;
  }

  if (!v26)
  {
    v60 = *v18;
    goto LABEL_187;
  }

  if (CMTimebaseGetRate(*(DerivedStorage + 120)) == 0.0)
  {
    v61 = CMBaseObjectGetDerivedStorage();
    v60 = *v18;
    Mutable = CFDictionaryCreateMutable(*v18, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v63 = Mutable;
      CFDictionarySetValue(Mutable, @"AudioFormat", *(v61 + 704));
      v64 = *(v61 + 8);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      hoseSBAR_setPreferencesOnAudioSession(a1, 0);
LABEL_186:
      CFRelease(v63);
      goto LABEL_187;
    }
  }

  else
  {
    magicCookieSize_4 = *a3;
    v55 = v19;
    v56 = CMBaseObjectGetDerivedStorage();
    v57 = *(v56 + 704);
    CMTimeMake(&asbd, 1, 1);
    *&layout.mChannelLayoutTag = *&magicCookieSize_4.value;
    *&layout.mChannelDescriptions[0].mChannelFlags = magicCookieSize_4.epoch;
    CMTimeSubtract(&magicCookieSize_4, &layout, &asbd);
    v58 = v55[164];
    if (v58 <= 50 && (v58 != -1 || _LogCategory_Initialize()))
    {
      CMTimebaseGetTime(&asbd, *(v56 + 120));
      CMTimeGetSeconds(&asbd);
      *&asbd.mSampleRate = *&magicCookieSize_4.value;
      *&asbd.mBytesPerPacket = magicCookieSize_4.epoch;
      CMTimeGetSeconds(&asbd);
      if (v57)
      {
        v59 = v57[8];
        switch(v59)
        {
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
          case 28:
          case 29:
          case 30:
          case 31:
          case 32:
          case 38:
          case 39:
          case 40:
          case 41:
          case 42:
          case 43:
          case 44:
          case 45:
          case 46:
          case 47:
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
          case 69:
          case 78:
          case 79:
          case 80:
          case 81:
          case 82:
          case 83:
          case 84:
          case 85:
          case 86:
          case 90:
          case 93:
          case 94:
            break;
          default:
            v65 = v59 - 33;
            if (v59 - 33) < 0x3C && ((0xDC01BEFFA000007uLL >> v65))
            {
              v66 = off_2784A4890[v65];
            }

            break;
        }
      }

      LogPrintF();
    }

    v60 = *v18;
    keys[0] = @"ForceSetPreferences";
    keys[1] = @"NewAudioFormat";
    values[0] = *MEMORY[0x277CBED10];
    values[1] = v57;
    v67 = CFDictionaryCreate(v60, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v67)
    {
      v63 = v67;
      v68 = *(v56 + 992);
      *&asbd.mSampleRate = *&magicCookieSize_4.value;
      *&asbd.mBytesPerPacket = magicCookieSize_4.epoch;
      v69 = APSTimedInfoManagerAddTimedInfo(v68, &asbd, v63);
      if (v69)
      {
        APSLogErrorAt(v69);
      }

      goto LABEL_186;
    }
  }

  APSLogErrorAt(0);
LABEL_187:
  packetDescriptions.mStartOffset = 0;
  packetDescriptions.mVariableFramesInPacket = 352;
  packetDescriptions.mDataByteSize = CMBlockBufferGetDataLength(a2);
  *&asbd.mSampleRate = *&a3->value;
  *&asbd.mBytesPerPacket = a3->epoch;
  v70 = CMAudioSampleBufferCreateReadyWithPacketDescriptions(v60, a2, v25, 1, &asbd, &packetDescriptions, &sampleBufferOut);
  if (v70)
  {
    v27 = v70;
  }

  else
  {
    v70 = APSAPACApplyIndependentDecodableDependancy(sampleBufferOut);
    if (v70)
    {
      v27 = v70;
    }

    else
    {
      if ((*(a7 + 12) & 1) == 0)
      {
        v27 = 0;
        *a8 = sampleBufferOut;
        sampleBufferOut = 0;
        if (!v25)
        {
          goto LABEL_192;
        }

        goto LABEL_191;
      }

      CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.presentationTimeStamp, sampleBufferOut);
      *&sampleTimingArray.duration.value = *a7;
      sampleTimingArray.duration.epoch = *(a7 + 16);
      v70 = CMSampleBufferCreateCopyWithNewTiming(v60, sampleBufferOut, 1, &sampleTimingArray, &v83);
      v27 = v70;
      if (!v70)
      {
        *a8 = v83;
        v83 = 0;
        if (!v25)
        {
          goto LABEL_192;
        }

LABEL_191:
        CFRelease(v25);
        goto LABEL_192;
      }
    }
  }

LABEL_210:
  APSLogErrorAt(v70);
  if (v25)
  {
    goto LABEL_191;
  }

LABEL_192:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v83)
  {
    CFRelease(v83);
  }

  v71 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t hoseSBAR_setPreferencesOnAudioSession(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 704);
  if (v5 || (v9 = DerivedStorage, APSLogErrorAt(0), (v5 = *(v9 + 704)) != 0))
  {
    v6 = *(v5 + 16);
LABEL_3:
    v7 = *(v5 + 44);
    goto LABEL_4;
  }

  APSLogErrorAt(0);
  v5 = *(v9 + 704);
  if (v5)
  {
    v6 = 0.0;
    goto LABEL_3;
  }

  APSLogErrorAt(0);
  v7 = 0;
  v6 = 0.0;
LABEL_4:

  return hoseSBAR_setPreferencesOnAudioSessionSetValues(a1, a2, v7, v6);
}

uint64_t __hoseSBAR_allowAtmosPlayback_block_invoke()
{
  result = MGGetProductType();
  if (result == 1540760353 || result == 4240173202 || result == 2702125347)
  {
    hoseSBAR_allowAtmosPlayback_isAtmosAllowed = 1;
  }

  return result;
}

uint64_t hoseSBAR_updateRTPRolloverStateAssumingIncreasingTransportTimes(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v6 = *(DerivedStorage + 96);
  result = DerivedStorage + 96;
  if (*v6 == 1)
  {
    *v8 = *a2;
    *&v8[12] = *(a2 + 12);
    RTPTimeForTransportTime = hoseSBAR_getRTPTimeForTransportTime(a1, v8, &v9);
    if (v9)
    {
      return hoseSBAR_updateRTPRolloverStateAssumingIncreasingRTPTimes(a1, RTPTimeForTransportTime);
    }

    else
    {
      return APSLogErrorAt(0);
    }
  }

  return result;
}

uint64_t hoseSBAR_getRTPTimeForTransportTime(uint64_t a1, uint64_t a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = (a2 + 4);
  if (*a2 == 1)
  {
    result = *v6;
    v9 = 1;
    if (!a3)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (*a2 != 2)
  {
    goto LABEL_7;
  }

  if ((*(a2 + 16) & 0x1D) != 1 || *(a2 + 20) != 0)
  {
    goto LABEL_7;
  }

  v10 = *(DerivedStorage + 88);
  if (!v10)
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
LABEL_8:
          v9 = 0;
          if (!a3)
          {
            return result;
          }

          goto LABEL_11;
        }
      }

      LogPrintF();
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  *&time.value = *v6;
  time.epoch = *(a2 + 20);
  v9 = 1;
  CMTimeConvertScale(&v12, &time, v10, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  result = LODWORD(v12.value);
  if (a3)
  {
LABEL_11:
    *a3 = v9;
  }

  return result;
}

uint64_t hoseSBAR_updateRTPRolloverStateAssumingIncreasingRTPTimes(uint64_t a1, unsigned int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (!*(result + 736))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
    {
      goto LABEL_18;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_12;
  }

  v5 = *(result + 732);
  if ((v5 - a2) < 1)
  {
    if (v5 <= a2)
    {
      goto LABEL_18;
    }

    ++*(result + 728);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
    {
      goto LABEL_18;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_18;
      }

      v7 = *(v4 + 728);
      v8 = *(v4 + 732);
    }

LABEL_12:
    result = LogPrintF();
LABEL_18:
    *(v4 + 732) = a2;
    *(v4 + 736) = 1;
    return result;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v6 = *(v4 + 732);
      return LogPrintF();
    }
  }

  return result;
}

CMTime *hoseSBAR_getMediaTimeForRTPTime(CMTime *a1, uint64_t a2, unsigned int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 88);
  v7 = MEMORY[0x277CC0898];
  a1->epoch = *(MEMORY[0x277CC0898] + 16);
  *&a1->value = *v7;
  if (**(DerivedStorage + 96) != 1)
  {
    result = APSLogErrorAt(0);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90)
    {
      return result;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }
    }

    return LogPrintF();
  }

  if (!*(DerivedStorage + 736))
  {
    result = APSLogErrorAt(0);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90)
    {
      return result;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }
    }

    return LogPrintF();
  }

  v8 = *(DerivedStorage + 732);
  v9 = a3 >= v8;
  v10 = a3 - v8;
  v11 = !v9;
  v12 = v10 != 0 && v9;
  v13 = v10 < 1;
  if (v10 < 1)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  if (v13)
  {
    v11 = v12;
  }

  if (!v11)
  {
    v14 = 0;
  }

  v15 = a3 | ((*(DerivedStorage + 728) + v14) << 32);

  return CMTimeMake(a1, v15, v6);
}

void hoseSBAR_handleSynchronizerTimebaseRateChangedNotification()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    if (CMTimebaseGetRate(*(DerivedStorage + 120)) != 0.0)
    {
      CMTimebaseSetTimerDispatchSourceToFireImmediately(*(v1 + 120), *(v1 + 648));
      if (*(v1 + 420))
      {
        v2 = *(v1 + 120);
        v3 = *(v1 + 680);
        lhs = *(v1 + 408);
        v4 = *(v1 + 232);
        CMTimeSubtract(&fireTime, &lhs, &v4);
        CMTimebaseSetTimerDispatchSourceNextFireTime(v2, v3, &fireTime, 1u);
      }
    }
  }
}

void hoseSBAR_handleSBARUnderrunNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 104) != a4)
  {
    goto LABEL_15;
  }

  if (!a5)
  {
    goto LABEL_15;
  }

  v9 = DerivedStorage;
  v10 = CFGetTypeID(a5);
  if (v10 != CFDictionaryGetTypeID())
  {
    goto LABEL_15;
  }

  v11 = *MEMORY[0x277CD63E8];
  if (FigCFEqual())
  {
    if ((*(v9 + 816) & 1) == 0)
    {
      v12 = *MEMORY[0x277CD63C8];
      FigCFDictionaryGetCMTimeIfPresent();

      hoseSBAR_beginUnderrunIfNeeded(a2);
      return;
    }

    goto LABEL_15;
  }

  v13 = *MEMORY[0x277CD63F0];
  if (!FigCFEqual())
  {
    return;
  }

  if ((*(v9 + 816) & 1) == 0)
  {
LABEL_15:

    APSLogErrorAt(0);
    return;
  }

  v14 = MEMORY[0x277CC0898];
  *(v9 + 804) = *MEMORY[0x277CC0898];
  *(v9 + 820) = *(v14 + 16);
  v15 = *MEMORY[0x277CD63D0];
  FigCFDictionaryGetCMTimeRangeIfPresent();

  hoseSBAR_endUnderrun();
}

_BYTE *hoseSBAR_beginUnderrunIfNeeded(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if ((result[840] & 1) == 0)
  {
    v3 = result;
    if (result[816] & 1) != 0 && (result[612])
    {
      v4 = result + 828;
      v5 = result + 804;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *&v7.value = *v5;
      v7.epoch = *(v3 + 820);
      hoseSBAR_getMediaTimeForSynchronizerTime(&v8, a1, &v7);
      *v4 = *&v8.value;
      *(v3 + 844) = v8.epoch;
      v6 = v3[1];
      CMNotificationCenterGetDefaultLocalCenter();

      return FigDispatchAsyncPostNotification();
    }
  }

  return result;
}

void hoseSBAR_endUnderrun()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 840))
  {
    v1 = DerivedStorage;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = v1 + 828;
    v3 = *(v1 + 8);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, HostTimeClock);
    rhs = *(v1 + 504);
    CMTimeSubtract(&time, &lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    v6 = (v1 + 852);
    if (*(v1 + 864) & 1) != 0 && (*(v1 + 888))
    {
      v7 = v1 + 876;
      if (!*(v7 + 16) && (*v7 & 0x8000000000000000) == 0)
      {
        v11 = Seconds;
        v12 = *v7;
        time.epoch = *(v7 + 16);
        *&time.value = v12;
        if (CMTimeGetSeconds(&time) < 5.0 && v11 >= 20.0)
        {
          if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
          {
            v13 = *v7;
            time.epoch = *(v7 + 16);
            *&time.value = v13;
            CMTimeGetSeconds(&time);
            LogPrintF();
          }

          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.airplay.bufferedaudiounderrun", 0, 0, 1u);
        }
      }
    }

    v8 = MEMORY[0x277CC0898];
    *v2 = *MEMORY[0x277CC0898];
    *(v2 + 16) = *(v8 + 16);
    v9 = MEMORY[0x277CC08C8];
    v10 = *(MEMORY[0x277CC08C8] + 16);
    *v6 = *MEMORY[0x277CC08C8];
    v6[1] = v10;
    v6[2] = *(v9 + 32);
  }
}

_BYTE *hoseSBAR_handleSBARWasFlushedAutomaticallyAndRebuildCouldBenefitFidelityNotification(uint64_t a1, void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*result)
  {
    return result;
  }

  v4 = result;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = *(v4 + 122);
  if (v5)
  {
    CFRelease(v5);
    *(v4 + 122) = 0;
  }

  v6 = *(v4 + 123);
  if (v6)
  {
    CFRelease(v6);
    *(v4 + 123) = 0;
  }

  v7 = *(v4 + 13);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v8)
  {
    v9 = v8(v7);
    if (!v9)
    {
      v4[672] = 0;
      v10 = MEMORY[0x277CC08C8];
      v11 = *(MEMORY[0x277CC08C8] + 16);
      *(v4 + 756) = *MEMORY[0x277CC08C8];
      *(v4 + 772) = v11;
      *(v4 + 788) = *(v10 + 32);
      v9 = hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(a2);
      if (!v9)
      {
        v12 = *(v4 + 15);
        v13 = *(v4 + 81);

        return CMTimebaseSetTimerDispatchSourceToFireImmediately(v12, v13);
      }
    }
  }

  else
  {
    v9 = 4294954514;
  }

  return APSLogErrorAt(v9);
}

uint64_t hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBufferQueueReset(*(DerivedStorage + 664));
  if (v3)
  {
    v4 = v3;
    goto LABEL_7;
  }

  v3 = CMBufferQueueCallForEachBuffer(*(DerivedStorage + 656), hoseSBAR_transferStashedSBufsIntoBuffersForSBARCallback, a1);
  if (v3)
  {
    v4 = v3;
    goto LABEL_7;
  }

  v3 = hoseSBAR_fillSBARToHighWater(a1);
  v4 = v3;
  if (v3)
  {
LABEL_7:
    APSLogErrorAt(v3);
  }

  return v4;
}

uint64_t hoseSBAR_transferStashedSBufsIntoBuffersForSBARCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBufferQueueEnqueue(*(DerivedStorage + 664), a1);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  return v4;
}

_BYTE *hoseSBAR_handleSBARLowWaterNotification(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {

    return hoseSBAR_fillSBARToHighWater(a2);
  }

  return result;
}

uint64_t FigAudioSessionSetMXSessionProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    return 4294948075;
  }

  v7 = *(v6 + 56);
  if (!v7)
  {
    return 4294948071;
  }

  v8 = *(v6 + 56);

  return v7(a1, a2, a3);
}

__n128 __hoseSBAR_getCallbacksForSampleBuffersSortedByTransportSeqNum_block_invoke()
{
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  getSize_high = HIDWORD(CallbacksForUnsortedSampleBuffers->getSize);
  result = *(&CallbacksForUnsortedSampleBuffers->getDecodeTimeStamp + 4);
  v3 = *(&CallbacksForUnsortedSampleBuffers->compare + 4);
  xmmword_27D00B8A0 = *(&CallbacksForUnsortedSampleBuffers->getDuration + 4);
  unk_27D00B8B0 = v3;
  hoseSBAR_getCallbacksForSampleBuffersSortedByTransportSeqNum_sCallbacks = *&CallbacksForUnsortedSampleBuffers->version;
  *algn_27D00B890 = result;
  dword_27D00B8C0 = getSize_high;
  *(&xmmword_27D00B8A0 + 12) = hoseSBAR_sbufCompareTransportSeqNum;
  return result;
}

uint64_t hoseSBAR_sbufCompareTransportSeqNum(const void *a1, const void *a2)
{
  CMGetAttachment(a1, @"HoseSBARTransportSeqNum", 0);
  UInt32 = FigCFNumberGetUInt32();
  CMGetAttachment(a2, @"HoseSBARTransportSeqNum", 0);
  v4 = FigCFNumberGetUInt32();
  v5 = ((v4 ^ UInt32) & 0xFFFFFF) != 0;
  if (((((v4 - UInt32) & 0x800000) == 0) & v5) != 0)
  {
    return -1;
  }

  else
  {
    return *&v5 & ((v4 - UInt32) >> 23);
  }
}

uint64_t hoseSBAR_decodeRTPData(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  totalLengthOut = 0;
  theBuffer = 0;
  v30 = 0;
  dataPointerOut = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  dataLength = 0;
  blockBufferOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
  }

  ContiguousCopy = APSCMBlockBufferCreateContiguousCopy(v8, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, a2, &theBuffer);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  ContiguousCopy = CMBlockBufferGetDataPointer(theBuffer, 0, 0, &totalLengthOut, &dataPointerOut);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  ContiguousCopy = APSTransportMessageGetAudioDataPointer(theBuffer, &v28, &dataLength);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 72))
  {
    ContiguousCopy = APSTransportMessageGetAudioAADPointer(theBuffer, &v30, &v29);
    if (ContiguousCopy)
    {
      v18 = ContiguousCopy;
      goto LABEL_15;
    }

    v10 = *(DerivedStorage + 72);
    v12 = v29;
    v11 = v30;
    v14 = dataLength;
    v13 = v28;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v15)
    {
      v16 = v15(v10, v11, v12, v13, v14, v13, v14, &v26);
      if (!v16)
      {
        v17 = v26;
        if (!v26)
        {
          goto LABEL_11;
        }

LABEL_17:
        ContiguousCopy = CMBlockBufferCreateWithBufferReference(v8, theBuffer, v28 - dataPointerOut, v17, 1u, &blockBufferOut);
        if (ContiguousCopy)
        {
          v18 = ContiguousCopy;
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      v18 = v16;
    }

    else
    {
      v18 = 4294954514;
    }

    ContiguousCopy = v18;
    goto LABEL_15;
  }

  v17 = dataLength;
  v26 = dataLength;
  if (dataLength)
  {
    goto LABEL_17;
  }

LABEL_11:
  ContiguousCopy = CMBlockBufferCreateEmpty(v8, 0, 1u, &blockBufferOut);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
LABEL_15:
    APSLogErrorAt(ContiguousCopy);
    goto LABEL_27;
  }

LABEL_18:
  if (a3)
  {
    v19 = blockBufferOut;
    if (blockBufferOut)
    {
      v19 = CFRetain(blockBufferOut);
    }

    *a3 = v19;
  }

  if (a4)
  {
    v20 = *(DerivedStorage + 80);
    if (v20)
    {
      v20 = *(v20 + 64);
    }

    v18 = 0;
    *a4 = v20;
    *(a4 + 16) = 0;
    *(a4 + 160) = 0;
    v21 = MEMORY[0x277CC0898];
    v22 = *MEMORY[0x277CC0898];
    *(a4 + 24) = *MEMORY[0x277CC0898];
    v23 = *(v21 + 16);
    *(a4 + 40) = v23;
    *(a4 + 48) = v22;
    *(a4 + 64) = v23;
  }

  else
  {
    v18 = 0;
  }

LABEL_27:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v18;
}

uint64_t hoseSBAR_decodeRTPHeader(int a1, OpaqueCMBlockBuffer *a2, uint64_t a3, _DWORD *a4)
{
  v12 = 0;
  destination = 0;
  AudioDataTimestamp = APSTransportMessageGetAudioDataTimestamp(a2, &v12);
  if (AudioDataTimestamp)
  {
    v9 = AudioDataTimestamp;
LABEL_10:
    APSLogErrorAt(AudioDataTimestamp);
    return v9;
  }

  AudioDataTimestamp = APSTransportMessageGetAudioDataSequenceNumber(a2, &destination);
  if (AudioDataTimestamp)
  {
    v9 = AudioDataTimestamp;
    goto LABEL_10;
  }

  if (a3)
  {
    v8 = v12;
    *a3 = 1;
    *(a3 + 4) = v8;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  v9 = 0;
  if (a4)
  {
    *a4 = destination;
  }

  return v9;
}

uint64_t hoseSBAR_decodeAPAPData(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DataLength = CMBlockBufferGetDataLength(a2);
  v32 = 0;
  blockBufferOut = 0;
  v21 = a1;
  v22 = 0uLL;
  v23 = 0;
  v24 = *MEMORY[0x277CC0898];
  v25 = *(MEMORY[0x277CC0898] + 16);
  v26 = v24;
  v27 = v25;
  memset(cf, 0, sizeof(cf));
  *(&cf[9] + 4) = v25;
  *(&cf[7] + 4) = v24;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v10 = *MEMORY[0x277CBECE8];
  if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
  }

  v11 = CMBlockBufferCreateWithMemoryBlock(v10, 0, DataLength, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, 0, 0, DataLength, 1u, &blockBufferOut);
  if (v11)
  {
    v19 = v11;
LABEL_35:
    APSLogErrorAt(v11);
    goto LABEL_20;
  }

  v11 = APSAPAPBBufDecode(v10, a2, blockBufferOut, *(DerivedStorage + 72), 0, 0, hoseSBAR_decodeAPAPExtensionItem, &v21, &v32);
  if (v11)
  {
    v19 = v11;
    goto LABEL_35;
  }

  if (a3)
  {
    v12 = v32;
    if (v32)
    {
      v12 = CFRetain(v32);
    }

    *a3 = v12;
  }

  if (a4)
  {
    *a4 = v22;
    v13 = cf[0];
    *(a4 + 16) = v23;
    *(a4 + 24) = v24;
    *(a4 + 40) = v25;
    *(a4 + 48) = v26;
    *(a4 + 64) = v27;
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    *(a4 + 72) = v13;
    v14 = *&cf[3];
    *(a4 + 80) = *&cf[1];
    *(a4 + 96) = v14;
    v15 = cf[5];
    if (cf[5])
    {
      v15 = CFRetain(cf[5]);
    }

    v16 = cf[6];
    *(a4 + 112) = v15;
    *(a4 + 120) = v16;
    *(a4 + 128) = cf[7];
    *(a4 + 132) = *(&cf[7] + 4);
    *(a4 + 148) = *(&cf[9] + 4);
    v17 = v30;
    *(a4 + 160) = v29;
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(a4 + 168) = v17;
    v18 = v31;
    if (v31)
    {
      v18 = CFRetain(v31);
    }

    v19 = 0;
    *(a4 + 176) = v18;
  }

  else
  {
    v19 = 0;
  }

LABEL_20:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (cf[5])
  {
    CFRelease(cf[5]);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v19;
}

uint64_t hoseSBAR_decodeAPAPExtensionItem(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  switch(a1)
  {
    case 2:
      v9 = DerivedStorage;
      v26.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      value = v26.value;
      if (!v26.value)
      {
        value = *(v9 + 704);
        if (value)
        {
          value = *(value + 64);
        }
      }

      a3[1] = value;
      break;
    case 3:
      v26.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      a3[3] = v26.value;
      break;
    case 4:
      v28 = 0;
      destination = 0;
      BigUIntAsUInt64 = CMBlockBufferCopyDataBytes(a2, 0, 0xCuLL, &destination);
      if (BigUIntAsUInt64)
      {
        v8 = BigUIntAsUInt64;
        goto LABEL_65;
      }

      CMTimeMake(&v26, bswap64(destination), bswap32(v28));
      v29 = v26.value;
      flags = v26.flags;
      timescale = v26.timescale;
      if ((v26.flags & 1) == 0)
      {
        goto LABEL_66;
      }

      v8 = 0;
      epoch = v26.epoch;
      a3[4] = v29;
      *(a3 + 10) = timescale;
      *(a3 + 11) = flags;
      a3[6] = epoch;
      break;
    case 5:
      v28 = 0;
      destination = 0;
      BigUIntAsUInt64 = CMBlockBufferCopyDataBytes(a2, 0, 0xCuLL, &destination);
      if (BigUIntAsUInt64)
      {
        v8 = BigUIntAsUInt64;
        goto LABEL_65;
      }

      CMTimeMake(&v26, bswap64(destination), bswap32(v28));
      v29 = v26.value;
      v14 = v26.flags;
      timescale = v26.timescale;
      if ((v26.flags & 1) == 0)
      {
        goto LABEL_66;
      }

      v8 = 0;
      v15 = v26.epoch;
      a3[7] = v29;
      *(a3 + 16) = timescale;
      *(a3 + 17) = v14;
      a3[9] = v15;
      break;
    case 7:
      v26.value = 0;
      BigUIntAsUInt64 = APSAPAPExtensionConvertSoundCheckInfoBBufAndMergeIntoLoudnessInfoDict(a2, a3[10], &v26);
      v8 = BigUIntAsUInt64;
      if (!BigUIntAsUInt64)
      {
        goto LABEL_42;
      }

      goto LABEL_65;
    case 8:
      v26.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      a3[11] = v26.value;
      break;
    case 9:
      v26.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferCopyAsUUID(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      v18 = a3[15];
      if (v18)
      {
        CFRelease(v18);
      }

      a3[15] = v26.value;
      break;
    case 10:
      v26.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      a3[16] = v26.value;
      *(a3 + 136) = 1;
      break;
    case 11:
      v26.value = 0;
      BigUIntAsUInt64 = APSAPAPExtensionConvertLoudnessParametersBBufAndMergeIntoLoudnessInfoDict(a2, a3[10], &v26);
      v8 = BigUIntAsUInt64;
      if (!BigUIntAsUInt64)
      {
        goto LABEL_42;
      }

      goto LABEL_65;
    case 12:
      v26.value = 0;
      BigUIntAsUInt64 = APSAPAPExtensionConvertMediaKindBBufAndMergeIntoLoudnessInfoDict(a2, a3[10], &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

LABEL_42:
      v22 = a3[10];
      if (v22)
      {
        CFRelease(v22);
      }

      a3[10] = v26.value;
      break;
    case 13:
      v28 = 0;
      destination = 0;
      BigUIntAsUInt64 = CMBlockBufferCopyDataBytes(a2, 0, 0xCuLL, &destination);
      if (BigUIntAsUInt64)
      {
        v8 = BigUIntAsUInt64;
        goto LABEL_65;
      }

      CMTimeMake(&v26, bswap64(destination), bswap32(v28));
      v29 = v26.value;
      v12 = v26.flags;
      timescale = v26.timescale;
      if (v26.flags)
      {
        v8 = 0;
        v13 = v26.epoch;
        *(a3 + 140) = v29;
        *(a3 + 37) = timescale;
        *(a3 + 38) = v12;
        *(a3 + 156) = v13;
      }

      else
      {
LABEL_66:
        APSLogErrorAt(0);
        v8 = 4294960559;
      }

      break;
    case 14:
      v26.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      a3[12] = v26.value;
      break;
    case 15:
      v26.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      a3[13] = v26.value;
      break;
    case 16:
      v26.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      a3[14] = v26.value;
      break;
    case 17:
      v26.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      a3[21] = v26.value;
      break;
    case 18:
      DataLength = CMBlockBufferGetDataLength(a2);
      v20 = malloc_type_calloc(1uLL, DataLength, 0x100004077774924uLL);
      BigUIntAsUInt64 = CMBlockBufferCopyDataBytes(a2, 0, DataLength, v20);
      if (BigUIntAsUInt64)
      {
        v8 = BigUIntAsUInt64;
LABEL_65:
        APSLogErrorAt(BigUIntAsUInt64);
      }

      else
      {
        v21 = CFDataCreate(*MEMORY[0x277CBECE8], v20, DataLength);
        if (v21)
        {
          a3[22] = v21;
          free(v20);
          v8 = 0;
        }

        else
        {
          APSLogErrorAt(0);
          v8 = 4294960587;
        }
      }

      break;
    case 19:
      v26.value = 0;
      BigUIntAsUInt64 = APSAPAPExtensionConvertSbufTracerBBufToSbufTracerDict(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      v23 = a3[23];
      if (v23)
      {
        CFRelease(v23);
      }

      a3[23] = v26.value;
      break;
    case 20:
      v26.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v26);
      v8 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      a3[2] = v26.value;
      break;
    default:
      break;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t hoseSBAR_decodeAPAPHeader(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277CC0898];
  v15 = *(MEMORY[0x277CC0898] + 16);
  v13 = 0;
  v6 = APSAPAPBBufDecodeHeader(a2, &v14, &v13);
  v7 = v6;
  if (v6)
  {
    APSLogErrorAt(v6);
  }

  else
  {
    if (a3)
    {
      v8 = HIDWORD(v14);
      if ((BYTE12(v14) & 0x1D) == 1 && v15 == 0)
      {
        v16 = v14;
        v17 = DWORD2(v14);
        v10 = 2;
      }

      else
      {
        v8 = 0;
        v10 = 0;
        v17 = 0;
        v16 = 0;
      }

      *a3 = v10;
      *(a3 + 4) = v16;
      *(a3 + 12) = v17;
      *(a3 + 16) = v8;
      *(a3 + 20) = 0;
    }

    if (a4)
    {
      *a4 = v13;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t hoseSBAR_decodeBufferedRTPData(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  totalLengthOut = 0;
  theBuffer = 0;
  v28 = 0;
  dataPointerOut = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  dataLength = 0;
  blockBufferOut = 0;
  destination = 0;
  v8 = *MEMORY[0x277CBECE8];
  if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
  }

  ContiguousCopy = APSCMBlockBufferCreateContiguousCopy(v8, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, a2, &theBuffer);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  ContiguousCopy = CMBlockBufferGetDataPointer(theBuffer, 0, 0, &totalLengthOut, &dataPointerOut);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  ContiguousCopy = APSTransportMessageGetBufferedAudioDataPointer(theBuffer, &v26, &dataLength);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 72))
  {
    ContiguousCopy = APSTransportMessageGetBufferedAudioAADPointer(theBuffer, &v28, &v27);
    if (ContiguousCopy)
    {
      v18 = ContiguousCopy;
      goto LABEL_15;
    }

    v10 = *(DerivedStorage + 72);
    v12 = v27;
    v11 = v28;
    v14 = dataLength;
    v13 = v26;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v15)
    {
      v16 = v15(v10, v11, v12, v13, v14, v13, v14, &v24);
      if (!v16)
      {
        v17 = v24;
        if (!v24)
        {
          goto LABEL_11;
        }

LABEL_17:
        ContiguousCopy = CMBlockBufferCreateWithBufferReference(v8, theBuffer, v26 - dataPointerOut, v17, 1u, &blockBufferOut);
        if (ContiguousCopy)
        {
          v18 = ContiguousCopy;
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      v18 = v16;
    }

    else
    {
      v18 = 4294954514;
    }

    ContiguousCopy = v18;
    goto LABEL_15;
  }

  v17 = dataLength;
  v24 = dataLength;
  if (dataLength)
  {
    goto LABEL_17;
  }

LABEL_11:
  ContiguousCopy = CMBlockBufferCreateEmpty(v8, 0, 1u, &blockBufferOut);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
LABEL_15:
    APSLogErrorAt(ContiguousCopy);
    goto LABEL_29;
  }

LABEL_18:
  ContiguousCopy = APSTransportMessageGetBufferedAudioDataFormatIndex(a2, &destination);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  if (a3)
  {
    v19 = blockBufferOut;
    if (blockBufferOut)
    {
      v19 = CFRetain(blockBufferOut);
    }

    *a3 = v19;
  }

  if (a4)
  {
    v20 = destination;
    if (!destination)
    {
      v20 = *(DerivedStorage + 80);
      if (v20)
      {
        v20 = *(v20 + 64);
      }
    }

    v18 = 0;
    *a4 = v20;
    a4[2] = 0;
    a4[20] = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_29:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v18;
}

uint64_t hoseSBAR_decodeBufferedRTPHeader(int a1, OpaqueCMBlockBuffer *a2, uint64_t a3, _DWORD *a4)
{
  destination = 0;
  BufferedAudioDataTimestamp = APSTransportMessageGetBufferedAudioDataTimestamp(a2, &destination + 1);
  if (BufferedAudioDataTimestamp)
  {
    v9 = BufferedAudioDataTimestamp;
LABEL_10:
    APSLogErrorAt(BufferedAudioDataTimestamp);
    return v9;
  }

  BufferedAudioDataTimestamp = APSTransportMessageGetBufferedAudioDataExtendedSequenceNumber(a2, &destination);
  if (BufferedAudioDataTimestamp)
  {
    v9 = BufferedAudioDataTimestamp;
    goto LABEL_10;
  }

  if (a3)
  {
    v8 = HIDWORD(destination);
    *a3 = 1;
    *(a3 + 4) = v8;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  v9 = 0;
  if (a4)
  {
    *a4 = destination;
  }

  return v9;
}

uint64_t hoseSBAR_GetLastSentMediaTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 288);
    FigSimpleMutexLock();
    v6 = *(v4 + 324);
    *(a2 + 16) = *(v4 + 340);
    *a2 = v6;
    v7 = *(v4 + 288);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294894965;
  }
}

uint64_t hoseSBAR_SetLastSentMediaTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 288);
  FigSimpleMutexLock();
  v5 = *(a2 + 16);
  *(DerivedStorage + 324) = *a2;
  *(DerivedStorage + 340) = v5;
  v6 = *(DerivedStorage + 288);
  FigSimpleMutexUnlock();
  return 0;
}

__CFString *hoseSBAR_protocolDriverHoseDataBaseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APSEndpointStreamAudioHoseSBAR <APSAudioProtocolDriverHoseDataBaseProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t hoseSBAR_audioHoseSetMagicCookie(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v11;
  v14[1] = a2;
  if (a3)
  {
    v12 = CFRetain(a3);
  }

  else
  {
    v12 = 0;
  }

  v14[2] = v12;
  v14[3] = a4;
  v14[4] = a5;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseSetMagicCookieCallbackDispatchInternal, v14, 0x28uLL);
  return 0;
}

void hoseSBAR_audioHoseSetMagicCookieCallbackDispatchInternal(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    v6 = DerivedStorage;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Int64 = CFNumberCreateInt64();
    if (Int64)
    {
      v8 = Int64;
      CFDictionarySetValue(*(v6 + 952), Int64, v4);
      CFRelease(v8);
      v9 = 0;
    }

    else
    {
      APSLogErrorAt(0);
      v9 = 4294894966;
    }
  }

  else
  {
    v9 = 4294894965;
    APSLogErrorAt(0);
  }

  v10 = a1[3];
  if (v10)
  {
    v10(*a1, a1[1], v9, a1[4]);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v11 = a1[2];
  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t hoseSBAR_audioHoseSetCryptor(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v11;
  v14[1] = a2;
  if (a3)
  {
    v12 = CFRetain(a3);
  }

  else
  {
    v12 = 0;
  }

  v14[2] = v12;
  v14[3] = a4;
  v14[4] = a5;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseSetCryptorCallbackDispatchInternal, v14, 0x28uLL);
  return 0;
}

void hoseSBAR_audioHoseSetCryptorCallbackDispatchInternal(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    v6 = DerivedStorage;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Int64 = CFNumberCreateInt64();
    if (Int64)
    {
      v8 = Int64;
      CFDictionarySetValue(*(v6 + 928), Int64, v4);
      CFRelease(v8);
      v9 = 0;
    }

    else
    {
      APSLogErrorAt(0);
      v9 = 4294894966;
    }
  }

  else
  {
    v9 = 4294894965;
    APSLogErrorAt(0);
  }

  v10 = a1[3];
  if (v10)
  {
    v10(*a1, a1[1], v9, a1[4]);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v11 = a1[2];
  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t hoseSBAR_audioHoseGetAnchor(const void *a1, int a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  LODWORD(v12) = a2;
  v13 = a3;
  v14 = a4;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseGetAnchorCallbackDispatchInternal, &v11, 0x38uLL);
  return 0;
}

void hoseSBAR_audioHoseGetAnchorCallbackDispatchInternal(uint64_t a1)
{
  memset(v27, 0, 28);
  *&v26.value = kAPSNetworkTimeInvalid;
  v26.epoch = 0x100000000;
  v2 = *a1;
  v3 = *(a1 + 8);
  memset(v33, 0, sizeof(v33));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  v31 = **&MEMORY[0x277CC0898];
  v30 = v31;
  *&v29.value = kAPSNetworkTimeInvalid;
  v29.epoch = 0x100000000;
  if (v3 != 1)
  {
    v8 = 4294894965;
    goto LABEL_8;
  }

  v5 = DerivedStorage;
  epoch = DerivedStorage[2].epoch;
  time = DerivedStorage[22];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_4;
  }

  v12 = v5 + 22;
  hostTime = time;
  v13 = v7(epoch, &hostTime, &v32);
  if (v13 != -71976)
  {
    v8 = v13;
    if (v13)
    {
      goto LABEL_4;
    }

    v14 = *v5[4].value;
    hostTime = v5[24];
    hoseSBAR_getTransportTimeForMediaTime(v33, v2, &hostTime, v14);
    if (*v33 == 1 || *v33 == 2 && (v33[16] & 0x1D) == 1 && !*&v33[20])
    {
      hostTime = *v12;
LABEL_16:
      v8 = 0;
      v27[0] = *v33;
      *(v27 + 12) = *&v33[12];
      v26 = hostTime;
      goto LABEL_4;
    }

    v8 = 4294894965;
LABEL_8:
    APSLogErrorAt(0);
    goto LABEL_4;
  }

  CMTimebaseGetTime(&hostTime, v5[5].value);
  hoseSBAR_getMediaTimeForSynchronizerTime(&v31, v2, &hostTime);
  v15 = v5[4].epoch;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v16)
  {
    v8 = 4294954514;
LABEL_25:
    APSLogErrorAt(v8);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_4;
  }

  hostTime = v31;
  v17 = v16(v15, 1831681640, &hostTime, &v30);
  if (v17)
  {
    v8 = v17;
    goto LABEL_25;
  }

  v18 = v5[2].epoch;
  hostTime = v30;
  v19 = CMClockConvertHostTimeToSystemUnits(&hostTime);
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v20)
  {
    v21 = v20(v18, v19, &v29);
    if (!v21)
    {
      v22 = *v5[4].value;
      hostTime = v31;
      hoseSBAR_getTransportTimeForMediaTime(v33, v2, &hostTime, v22);
      v23 = *&v29.value;
      hostTime = v29;
      v24 = v29.epoch;
      v5[24] = v31;
      v5[23] = v30;
      v5[22].epoch = v24;
      *&v12->value = v23;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        v25 = SLODWORD(v5[22].epoch) + *&v5[22].timescale * 5.42101086e-20;
        time = v5[23];
        CMTimeGetSeconds(&time);
        time = v5[24];
        CMTimeGetSeconds(&time);
        LogPrintF();
      }

      goto LABEL_16;
    }

    v8 = v21;
  }

  else
  {
    v8 = 4294954514;
  }

  APSLogErrorAt(v8);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_4:
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *a1;
    v11 = *(a1 + 24);
    *v33 = v27[0];
    *&v33[12] = *(v27 + 12);
    hostTime = v26;
    v9(v10, v33, &hostTime, v8, v11);
  }

  CFRelease(*a1);
}

CMTime *hoseSBAR_getTransportTimeForMediaTime(CMTime *result, uint64_t a2, uint64_t a3, int a4)
{
  result->value = 0;
  *&result->timescale = 0;
  LODWORD(result[1].value) = 0;
  result->epoch = 0;
  v4 = *(a3 + 12);
  if (v4)
  {
    v5 = result;
    if (a4 == 2)
    {
      if ((*(a3 + 12) & 0x1D) == 1 && !*(a3 + 16))
      {
        LODWORD(result->value) = 2;
        *(&result->value + 4) = *a3;
        result->flags = *(a3 + 8);
        LODWORD(result->epoch) = v4;
        *(&result->epoch + 4) = 0;
      }

      else
      {
        result->value = 0;
        *&result->timescale = 0;
        LODWORD(result[1].value) = 0;
        result->epoch = 0;
      }
    }

    else if (a4 == 1)
    {
      *&v9.value = *a3;
      v9.epoch = *(a3 + 16);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (**(DerivedStorage + 96) == 1)
      {
        v7 = *(DerivedStorage + 88);
        time = v9;
        result = CMTimeConvertScale(&v11, &time, v7, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        if (v11.flags)
        {
          value = v11.value;
          *&v5->timescale = 0;
          v5->epoch = 0;
          LODWORD(v5[1].value) = 0;
          LODWORD(v5->value) = 1;
          HIDWORD(v5->value) = value;
          return result;
        }
      }

      else
      {
        APSLogErrorAt(0);
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      return APSLogErrorAt(0);
    }
  }

  return result;
}

uint64_t hoseSBAR_protocolDriverHoseSetRate(const void *a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v6[0] = *a3;
  *(v6 + 12) = *(a3 + 12);
  hoseSBAR_audioHoseSetRate(a1, a2, v6, a4, a5);
  return 0;
}

uint64_t hoseSBAR_audioHoseSetRate(const void *a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11;
  v14 = a2;
  *v15 = *a3;
  *&v15[12] = *(a3 + 12);
  v16 = a4;
  v17 = a5;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseSetRateCallbackDispatchInternal, &v13, 0x38uLL);
  return 0;
}

void hoseSBAR_audioHoseSetRateCallbackDispatchInternal(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v14[0] = *(a1 + 12);
  *(v14 + 12) = *(a1 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (v3 == 1)
  {
    if (*(DerivedStorage + 588))
    {
      v7 = 4294894965;
      v6 = 0;
    }

    else
    {
      *v15 = v14[0];
      *&v15[12] = *(v14 + 12);
      v6 = hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(v2, v15, &kAPSNetworkTimeInvalid, MEMORY[0x277CC0898], &kAPSAudioTransportTime_Invalid);
      v7 = v6;
      if (!v6)
      {
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(v15, HostTimeClock);
        *(v5 + 504) = *v15;
        *(v5 + 520) = *&v15[16];
        goto LABEL_5;
      }
    }
  }

  else
  {
    v7 = 4294894965;
    v6 = 0;
  }

  APSLogErrorAt(v6);
LABEL_5:
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *a1;
    v11 = *(a1 + 48);
    *v15 = v14[0];
    *&v15[12] = *(v14 + 12);
    v12 = *(v5 + 528);
    v13 = *(v5 + 544);
    v9(v10, v15, &v12, v7, v11);
  }

  CFRelease(*a1);
}

uint64_t hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(void *a1, _OWORD *a2, __int128 *a3, CMTime *a4, _OWORD *a5)
{
  v63 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v56.value = *MEMORY[0x277CC0898];
  v11 = *(MEMORY[0x277CC0898] + 16);
  v56.epoch = v11;
  v54 = *&v56.value;
  v55 = v11;
  v49 = *&v56.value;
  v52 = kAPSNetworkTimeInvalid;
  v53 = 0x100000000;
  *&v51.value = *&v56.value;
  v51.epoch = v11;
  *hostTime = *a2;
  *&hostTime[12] = *(a2 + 12);
  hoseSBAR_updateRTPRolloverStateAssumingIncreasingTransportTimes(a1, hostTime);
  *hostTime = *a2;
  *&hostTime[12] = *(a2 + 12);
  hoseSBAR_getMediaTimeForTransportTime(&lhs, a1, hostTime);
  value = lhs.value;
  flags = lhs.flags;
  timescale = lhs.timescale;
  epoch = lhs.epoch;
  *hostTime = *a5;
  *&hostTime[12] = *(a5 + 12);
  hoseSBAR_getMediaTimeForTransportTime(&lhs, a1, hostTime);
  v59 = lhs.value;
  v60 = lhs.timescale;
  if ((flags & 1) == 0)
  {
    v40 = 4294894965;
    APSLogErrorAt(0);
    *hostTime = *a2;
    *&hostTime[12] = *(a2 + 12);
    v41 = APSAudioTransportTimeCopyDebugDesc(hostTime);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_57:
    v42 = CMBaseObjectGetDerivedStorage();
    v43 = hoseSBAR_stopTheSynchronizer(a1);
    if (!v43)
    {
      v44 = *(v42 + 104);
      v45 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v45)
      {
        v43 = v45(v44);
        if (!v43)
        {
          *(v42 + 600) = v49;
          *(v42 + 616) = v11;
          *(v42 + 544) = 0x100000000;
          *(v42 + 528) = kAPSNetworkTimeInvalid;
          *(v42 + 552) = v49;
          *(v42 + 568) = v11;
          *(v42 + 592) = v11;
          *(v42 + 576) = v49;
          *(v42 + 640) = v11;
          *(v42 + 624) = v49;
          v43 = hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(a1);
          if (!v43)
          {
            if (!v41)
            {
              goto LABEL_63;
            }

LABEL_62:
            CFRelease(v41);
            goto LABEL_63;
          }
        }
      }

      else
      {
        v43 = 4294954514;
      }
    }

    APSLogErrorAt(v43);
    if (!v41)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v14 = lhs.flags;
  v15 = lhs.epoch;
  *(DerivedStorage + 624) = v59;
  *(DerivedStorage + 632) = v60;
  *(DerivedStorage + 636) = v14;
  *(DerivedStorage + 640) = v15;
  *hostTime = *a5;
  *&hostTime[12] = *(a5 + 12);
  hoseSBAR_updateRTPRolloverStateOnFlushFromTransportTime(a1, hostTime);
  v16 = CMBaseObjectGetDerivedStorage();
  memset(hostTime, 0, 24);
  CMTimeMake(hostTime, 30, 1000);
  if (*(v16 + 900))
  {
    *&hostTime[16] = *(v16 + 920);
    *hostTime = *(v16 + 904);
  }

  lhs.value = value;
  lhs.timescale = timescale;
  lhs.flags = flags;
  lhs.epoch = epoch;
  rhs = *hostTime;
  if (hoseSBAR_setVolumeFadeInCurve(a1, &lhs, &rhs))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

LABEL_7:
    LogPrintF();
    goto LABEL_14;
  }

  if (*(v16 + 900))
  {
    v17 = *(v16 + 256);
    lhs = *(v16 + 904);
    if (hoseSBAR_postNotifyStyleAudioFadeAppliedForAirPlayPlayback(a1, "com.apple.mediaexperience.fadeinappliedforplaybackhandoff", v17, &lhs))
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_7;
      }
    }
  }

LABEL_14:
  v18 = *a3;
  *(DerivedStorage + 544) = *(a3 + 2);
  *(DerivedStorage + 528) = v18;
  v19 = (DerivedStorage + 552);
  v20 = *&a4->value;
  *(DerivedStorage + 568) = a4->epoch;
  *(DerivedStorage + 552) = v20;
  *(DerivedStorage + 576) = value;
  *(DerivedStorage + 584) = timescale;
  *(DerivedStorage + 588) = flags;
  *(DerivedStorage + 592) = epoch;
  if (*(DerivedStorage + 129) && *(DerivedStorage + 128))
  {
    started = hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(a1);
    if (started)
    {
      v40 = started;
      goto LABEL_78;
    }

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  started = hoseSBAR_startTheSynchronizerIfNecessary(a1, 0);
  if (started)
  {
    v40 = started;
LABEL_78:
    APSLogErrorAt(started);
    goto LABEL_56;
  }

  v23 = (DerivedStorage + 576);
  v24 = *(DerivedStorage + 112);
  if ((*(DerivedStorage + 564) & 1) == 0)
  {
    v25 = *(DerivedStorage + 112);
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v26)
    {
      v48 = v22;
      *hostTime = value;
      *&hostTime[8] = timescale;
      *&hostTime[12] = flags;
      *&hostTime[16] = epoch;
      v27 = v26(v24, 1831681640, hostTime, &v54);
      if (!v27)
      {
        v28 = v54;
        *v19 = v54;
        v29 = v55;
        *(DerivedStorage + 568) = v55;
        v30 = *(DerivedStorage + 64);
        *hostTime = v28;
        *&hostTime[16] = v29;
        v31 = CMClockConvertHostTimeToSystemUnits(hostTime);
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v32)
        {
          v33 = v32(v30, v31, &v52);
          if (!v33)
          {
            *(DerivedStorage + 528) = v52;
            *(DerivedStorage + 544) = v53;
            v34 = MEMORY[0x277CC08F0];
            *(DerivedStorage + 600) = *MEMORY[0x277CC08F0];
            *(DerivedStorage + 616) = *(v34 + 16);
            v22 = v48;
            goto LABEL_29;
          }

          v40 = v33;
        }

        else
        {
          v40 = 4294954514;
        }

        APSLogErrorAt(v40);
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_56;
        }

LABEL_44:
        LogPrintF();
LABEL_56:
        v41 = 0;
        goto LABEL_57;
      }

      v40 = v27;
    }

    else
    {
      v40 = 4294954514;
    }

    APSLogErrorAt(v40);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_56;
    }

    goto LABEL_44;
  }

  lhs = *a4;
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v35)
  {
    v40 = 4294954514;
LABEL_38:
    APSLogErrorAt(v40);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_56;
    }

    goto LABEL_44;
  }

  *hostTime = lhs;
  v36 = v35(v24, 1747795565, hostTime, &v56);
  if (v36)
  {
    v40 = v36;
    goto LABEL_38;
  }

  lhs = v56;
  *&rhs.value = *v23;
  rhs.epoch = *(DerivedStorage + 592);
  CMTimeSubtract(hostTime, &lhs, &rhs);
  *(DerivedStorage + 600) = *hostTime;
  *(DerivedStorage + 616) = *&hostTime[16];
LABEL_29:
  started = hoseSBAR_configureUnderrunTrackingIfNeeded();
  if (started)
  {
    v40 = started;
    goto LABEL_78;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  TimeOfDayClock = FigGetTimeOfDayClock();
  *hostTime = *&a4->value;
  *&hostTime[16] = a4->epoch;
  CMSyncConvertTime(&v51, hostTime, HostTimeClock, TimeOfDayClock);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v39 = *(DerivedStorage + 544) + *(DerivedStorage + 536) * 5.42101086e-20;
    *hostTime = *v19;
    *&hostTime[16] = *(DerivedStorage + 568);
    CMTimeGetSeconds(hostTime);
    *hostTime = *v23;
    *&hostTime[16] = *(DerivedStorage + 592);
    CMTimeGetSeconds(hostTime);
    *hostTime = v51;
    CMTimeGetSeconds(hostTime);
    *hostTime = *(DerivedStorage + 600);
    *&hostTime[16] = *(DerivedStorage + 616);
    CMTimeGetSeconds(hostTime);
    CMBufferQueueGetDuration(hostTime, *(DerivedStorage + 656));
    CMTimeGetSeconds(hostTime);
    LogPrintF();
  }

  if (v22)
  {
    started = hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(a1);
    if (started)
    {
      v40 = started;
      goto LABEL_78;
    }
  }

  hoseSBAR_beginUnderrunIfNeeded(a1);
  v40 = 0;
LABEL_63:
  v46 = *MEMORY[0x277D85DE8];
  return v40;
}

uint64_t hoseSBAR_updateRTPRolloverStateOnFlushFromTransportTime(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v6 = *(DerivedStorage + 96);
  result = DerivedStorage + 96;
  if (*v6 == 1)
  {
    *v13 = *a2;
    *&v13[12] = *(a2 + 12);
    RTPTimeForTransportTime = hoseSBAR_getRTPTimeForTransportTime(a1, v13, &v14);
    if (!v14)
    {
      return APSLogErrorAt(0);
    }

    v8 = RTPTimeForTransportTime;
    result = CMBaseObjectGetDerivedStorage();
    if (!*(result + 736))
    {
      return APSLogErrorAt(0);
    }

    v9 = result;
    v10 = *(result + 732);
    if ((v8 - v10) < 0)
    {
      if (v8 <= v10)
      {
        goto LABEL_10;
      }

      --*(result + 728);
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
      {
        goto LABEL_10;
      }

      if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_10;
        }

        v11 = *(v9 + 728);
        v12 = *(v9 + 732);
      }

      result = LogPrintF();
LABEL_10:
      *(v9 + 732) = v8;
    }
  }

  return result;
}

uint64_t hoseSBAR_postNotifyStyleAudioFadeAppliedForAirPlayPlayback(uint64_t a1, const char *a2, int a3, CMTime *a4)
{
  if (a3 == -1)
  {
    APSLogErrorAt(0);
    return 4294960578;
  }

  time = *a4;
  Seconds = CMTimeGetSeconds(&time);
  if (notify_set_state(a3, (Seconds * 1000.0)))
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294960582;
  }

  if (notify_post(a2))
  {
    APSLogErrorAt(0);
    return 4294960582;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
  {
    return 0;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t hoseSBAR_stopTheSynchronizer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 112);
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 24);
  if (!v5)
  {
    v9 = 4294954514;
LABEL_7:
    v8 = v9;
LABEL_8:
    APSLogErrorAt(v8);
    return v9;
  }

  v6 = *(VTable + 16) + 24;
  v11 = *MEMORY[0x277CC0898];
  v12 = *(MEMORY[0x277CC0898] + 16);
  v7 = v5(v3, &v11, 0.0);
  if (v7)
  {
    v9 = v7;
    goto LABEL_7;
  }

  v8 = APSClockDriftMonitorSuspend(*(DerivedStorage + 1000));
  v9 = v8;
  if (v8)
  {
    goto LABEL_8;
  }

  hoseSBAR_waitForTimebaseRate(0.0);
  hoseSBAR_updateSynchronizerState(a1, 0);
  return v9;
}

uint64_t hoseSBAR_audioHoseApplyVolumeFade(uint64_t a1, unsigned int a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v15[4] = 0;
  if (a2 >= 3)
  {
    v9 = 4294894965;
LABEL_13:
    APSLogErrorAt(0);
    return v9;
  }

  v7 = DerivedStorage;
  time1 = *a3;
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    v9 = 4294894965;
    goto LABEL_13;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    time1 = *a3;
    CMTimeGetSeconds(&time1);
    LogPrintF();
  }

  v12 = a1;
  v13 = a2;
  v14 = *&a3->value;
  *v15 = a3->epoch;
  v8 = *(v7 + 352);
  LODWORD(time2.value) = 0;
  time1.value = &time2;
  *&time1.timescale = &v12;
  time1.epoch = hoseSBAR_audioHoseApplyVolumeFadeCallbackDispatchInternal;
  if (!v8)
  {
    return 4294960591;
  }

  dispatch_sync_f(v8, &time1, APSDispatchSyncTaskCallback);
  return LODWORD(time2.value);
}

uint64_t hoseSBAR_audioHoseApplyVolumeFadeCallbackDispatchInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v4 = DerivedStorage;
  v5 = *(a1 + 8);
  if (v5 == 2)
  {
    if (!*(DerivedStorage + 304))
    {
      APSLogErrorAt(0);
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
      {
        return 4294960591;
      }

      v23 = *(v4 + 304);
      goto LABEL_14;
    }

    *&v24.value = *(a1 + 12);
    v24.epoch = *(a1 + 28);
    v8 = CMBaseObjectGetDerivedStorage();
    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v6 = 4294894966;
      APSLogErrorAt(0);
      goto LABEL_44;
    }

    v11 = Mutable;
    v12 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
    if (!v12)
    {
      v6 = 4294894966;
      APSLogErrorAt(0);
      CFRelease(v11);
      goto LABEL_44;
    }

    v13 = v12;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      time = v24;
      CMTimeGetSeconds(&time);
      LogPrintF();
    }

    time = **&MEMORY[0x277CC08F0];
    appended = FigCFArrayAppendCMTime();
    if (appended)
    {
      v6 = appended;
    }

    else
    {
      appended = FigCFArrayAppendDouble();
      if (appended)
      {
        v6 = appended;
      }

      else
      {
        v15 = *MEMORY[0x277CD6398];
        CFArrayAppendValue(v13, *MEMORY[0x277CD6398]);
        time = v24;
        appended = FigCFArrayAppendCMTime();
        if (appended)
        {
          v6 = appended;
        }

        else
        {
          appended = FigCFArrayAppendDouble();
          if (appended)
          {
            v6 = appended;
          }

          else
          {
            CFArrayAppendValue(v13, v15);
            CFDictionarySetValue(v11, *MEMORY[0x277CD63A0], v13);
            v16 = *(v8 + 104);
            v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v17)
            {
              v6 = v17(v16, *MEMORY[0x277CD6448], v11);
              if (!v6)
              {
                goto LABEL_28;
              }
            }

            else
            {
              v6 = 4294954514;
            }

            appended = v6;
          }
        }
      }
    }

    APSLogErrorAt(appended);
LABEL_28:
    CFRelease(v13);
    CFRelease(v11);
    if (!v6)
    {
      *(v4 + 900) = 1;
      v18 = *(a1 + 12);
      *(v4 + 920) = *(a1 + 28);
      *(v4 + 904) = v18;
      v19 = *(v4 + 260);
      time = *(a1 + 12);
      if (hoseSBAR_postNotifyStyleAudioFadeAppliedForAirPlayPlayback(v2, "com.apple.mediaexperience.fadeoutappliedforplaybackhandoff", v19, &time) && gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return 0;
    }

LABEL_44:
    APSLogErrorAt(v6);
    return v6;
  }

  if (v5 != 1)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90)
    {
      return 4294960591;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return 4294960591;
      }

      v21 = *(a1 + 8);
    }

LABEL_14:
    LogPrintF();
    return 4294960591;
  }

  if (*(DerivedStorage + 304))
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90 || gLogCategory_APSEndpointStreamAudioHoseSBAR == -1 && !_LogCategory_Initialize())
    {
      return 4294960591;
    }

    v22 = *(v4 + 304);
    goto LABEL_14;
  }

  v6 = 0;
  *(DerivedStorage + 900) = 1;
  v7 = *(a1 + 12);
  *(DerivedStorage + 920) = *(a1 + 28);
  *(DerivedStorage + 904) = v7;
  return v6;
}

uint64_t hoseSBAR_protocolDriverHoseSetRateAndAnchorTime(const void *a1, int a2, _OWORD *a3, __int128 *a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v11[0] = *a3;
  *(v11 + 12) = *(a3 + 12);
  v9 = *a4;
  v10 = *(a4 + 2);
  v8[0] = *a5;
  *(v8 + 12) = *(a5 + 12);
  hoseSBAR_audioHoseSetRateAndAnchorTime(a1, a2, v11, &v9, v8, a6, a7);
  return 0;
}

uint64_t hoseSBAR_audioHoseSetRateAndAnchorTime(const void *a1, int a2, _OWORD *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v21[24] = 0;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1)
  {
    v15 = CFRetain(a1);
  }

  else
  {
    v15 = 0;
  }

  v17 = v15;
  v18 = a2;
  *v19 = *a3;
  *&v19[3] = *(a3 + 12);
  *&v19[7] = *a4;
  v20 = *(a4 + 16);
  *v21 = *a5;
  *&v21[12] = *(a5 + 12);
  v22 = a6;
  v23 = a7;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseSetRateAndAnchorTimeCallbackDispatchInternal, &v17, 0x70uLL);
  return 0;
}

void hoseSBAR_audioHoseSetRateAndAnchorTimeCallbackDispatchInternal(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  timescale = 0;
  value = 0;
  *&v61.value = kAPSNetworkTimeInvalid;
  v61.epoch = 0x100000000;
  v2 = *a1;
  *&v3 = *(a1 + 8);
  *v60 = *(a1 + 12);
  *&v60[12] = *(a1 + 24);
  v59.epoch = *(a1 + 56);
  *&v59.value = *(a1 + 40);
  *&v58[12] = *(a1 + 76);
  *v58 = *(a1 + 64);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v57 = v3;
  if (*DerivedStorage)
  {
    APSLogErrorAt(0);
    v23 = 0;
    flags = 0;
    v21 = 0;
    v20 = 4294894964;
    goto LABEL_54;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  v6 = v5;
  if (!LODWORD(v3))
  {
    memset(time, 0, sizeof(time));
    *v62 = *MEMORY[0x277CC0898];
    *&v62[16] = *(MEMORY[0x277CC0898] + 16);
    v10 = *&v62[16];
    v55 = *v62;
    v67 = *v62;
    v70.value = *(v5 + 576);
    v70.timescale = *(v5 + 584);
    v11 = *(v5 + 588);
    v12 = *(v5 + 592);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      v50 = v2;
      LogPrintF();
    }

    v13 = hoseSBAR_stopTheSynchronizer(v2);
    if (v13)
    {
      v20 = v13;
      goto LABEL_23;
    }

    CMBufferQueueGetFirstPresentationTimeStamp(&rhs, *(v6 + 656));
    hoseSBAR_getTransportTimeForMediaTime(time, v2, &rhs, **(v6 + 96));
    *(v6 + 600) = *v62;
    *(v6 + 616) = v10;
    *(v6 + 544) = 0x100000000;
    *(v6 + 528) = kAPSNetworkTimeInvalid;
    *(v6 + 552) = v55;
    *(v6 + 568) = v10;
    *(v6 + 576) = v55;
    *(v6 + 592) = v10;
    v14 = *(v6 + 976);
    if (v14)
    {
      CFRelease(v14);
      *(v6 + 976) = 0;
    }

    v15 = *(v6 + 984);
    if (v15)
    {
      CFRelease(v15);
      *(v6 + 984) = 0;
    }

    v16 = *(v6 + 104);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v18 = v17(v16);
      if (!v18)
      {
        *(v6 + 672) = 0;
        v19 = CMBaseObjectGetDerivedStorage();
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          v50 = v2;
          LogPrintF();
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          v49 = 4294894966;
          APSLogErrorAt(0);
          goto LABEL_75;
        }

        v44 = Mutable;
        v45 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        if (!v45)
        {
          v49 = 4294894966;
          APSLogErrorAt(0);
          CFRelease(v44);
          goto LABEL_75;
        }

        v46 = v45;
        CFDictionarySetValue(v44, *MEMORY[0x277CD63A0], v45);
        v47 = *(v19 + 104);
        v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v48)
        {
          *&v49 = COERCE_DOUBLE(v48(v47, *MEMORY[0x277CD6448], v44));
          if (!v49)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v49 = 4294954514;
        }

        APSLogErrorAt(v49);
LABEL_74:
        CFRelease(v46);
        CFRelease(v44);
        if (!v49)
        {
          if (v11)
          {
            CMTimebaseGetTime(v62, *(v6 + 120));
            CMTimeMake(&rhs, 1000, 1000);
            lhs.value = v70.value;
            lhs.timescale = v70.timescale;
            lhs.flags = v11;
            lhs.epoch = v12;
            CMTimeAdd(&v67, &lhs, &rhs);
            if (*(v6 + 900))
            {
              rhs = *v62;
              lhs = v67;
              if ((CMTimeCompare(&rhs, &lhs) & 0x80000000) == 0)
              {
                *(v6 + 900) = 0;
                *(v6 + 904) = v55;
                *(v6 + 920) = v10;
              }
            }
          }

LABEL_83:
          v13 = hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(v2);
          if (v13)
          {
            v20 = v13;
          }

          else
          {
            v13 = hoseSBAR_enqueueIntoSBARPrimingSBufIfNecessary(v2);
            if (!v13)
            {
              hoseSBAR_endUnderrun();
              value = *&time[4];
              v21 = *time;
              flags = *&time[16];
              timescale = *&time[12];
              v23 = *&time[20];
              *(DerivedStorage + 504) = v55;
              *(DerivedStorage + 520) = v10;
              goto LABEL_53;
            }

            v20 = v13;
          }

LABEL_23:
          APSLogErrorAt(v13);
          value = *&time[4];
          v21 = *time;
          flags = *&time[16];
          timescale = *&time[12];
          v23 = *&time[20];
          APSLogErrorAt(v20);
          goto LABEL_54;
        }

LABEL_75:
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          v50 = v2;
          v51 = *&v49;
          LogPrintF();
        }

        goto LABEL_83;
      }

      v20 = v18;
    }

    else
    {
      v20 = 4294954514;
    }

    v13 = v20;
    goto LABEL_23;
  }

  v67 = **&MEMORY[0x277CC0898];
  v56 = *&v67.value;
  epoch = v67.epoch;
  v66 = 0;
  *time = *v60;
  *&time[12] = *&v60[12];
  v8 = COERCE_DOUBLE(APSAudioTransportTimeCopyDebugDesc(time));
  *time = *v58;
  *&time[12] = *&v58[12];
  v9 = APSAudioTransportTimeCopyDebugDesc(time);
  *&rhs.value = v56;
  rhs.epoch = epoch;
  if ((*(v6 + 588) & 1) != 0 && gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v50 = v2;
    v51 = v8;
    LogPrintF();
  }

  v24 = *(v6 + 64);
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v25)
  {
    v20 = 4294954514;
LABEL_31:
    APSLogErrorAt(v20);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      v50 = v2;
      v51 = *&v20;
      LogPrintF();
    }

    goto LABEL_39;
  }

  *time = *&v59.value;
  *&time[16] = v59.epoch;
  v26 = v25(v24, time, &v66);
  if (v26)
  {
    v20 = v26;
    goto LABEL_31;
  }

  CMClockMakeHostTimeFromSystemUnits(&v67, v66);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    *time = v67;
    Seconds = CMTimeGetSeconds(time);
    HostTimeClock = CMClockGetHostTimeClock();
    CMSyncGetTime(time, HostTimeClock);
    v53 = *&v8;
    v54 = v9;
    v51 = Seconds;
    v52 = CMTimeGetSeconds(time);
    v50 = v2;
    LogPrintF();
  }

  *time = *v60;
  *&time[12] = *&v60[12];
  lhs = v59;
  v70 = v67;
  *v62 = *v58;
  *&v62[12] = *&v58[12];
  v29 = hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(v2, time, &lhs.value, &v70, v62);
  v20 = v29;
  if (v29)
  {
    APSLogErrorAt(v29);
  }

LABEL_39:
  if (*(v6 + 396))
  {
    *time = *(v6 + 384);
    *&time[16] = *(v6 + 400);
    hoseSBAR_getMediaTimeForSynchronizerTime(&rhs, v2, time);
    flags = rhs.flags;
    if ((rhs.flags & 0x1D) != 1 || rhs.epoch)
    {
      flags = 0;
      v21 = 0;
      timescale = 0;
      value = 0;
    }

    else
    {
      value = rhs.value;
      timescale = rhs.timescale;
      v21 = 2;
    }
  }

  else
  {
    flags = 0;
    v21 = 0;
  }

  v30 = *(v6 + 64);
  v31 = *(v6 + 376);
  v32 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v32)
  {
    v32(v30, v31, &v61);
  }

  if (v8 != 0.0)
  {
    CFRelease(*&v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (!v20)
  {
    v33 = CMClockGetHostTimeClock();
    CMClockGetTime(time, v33);
    v23 = 0;
    *(DerivedStorage + 504) = *time;
    *(DerivedStorage + 520) = *&time[16];
LABEL_53:
    hoseSBAR_updateBufferingPriority(v2);
    *&v20 = 0.0;
    goto LABEL_54;
  }

  APSLogErrorAt(v20);
  v23 = 0;
LABEL_54:
  if (!*DerivedStorage)
  {
    v34 = *(DerivedStorage + 288);
    FigSimpleMutexLock();
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      v53 = v20;
      *&v51 = *(DerivedStorage + 304);
      v52 = v57;
      v50 = v2;
      LogPrintF();
    }

    if (!v20 && *(DerivedStorage + 304) != LODWORD(v57))
    {
      v35 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(DerivedStorage + 304) = LODWORD(v57);
      CFDictionarySetInt64();
      v36 = *(DerivedStorage + 8);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      CFRelease(v35);
    }

    v37 = *(DerivedStorage + 288);
    FigSimpleMutexUnlock();
  }

  v38 = *(a1 + 96);
  if (v38)
  {
    v39 = *a1;
    v40 = *(a1 + 8);
    v41 = *(a1 + 104);
    *time = *(a1 + 12);
    *&time[12] = *(a1 + 24);
    v67 = *(a1 + 40);
    *&v62[4] = value;
    *v62 = v21;
    *&v62[12] = timescale;
    *&v62[16] = flags;
    *&v62[20] = v23;
    rhs = v61;
    v38(v39, v40, time, &v67, v62, &rhs, v20, v41, v50, *&v51, *&v52, v53, v54);
  }

  CFRelease(*a1);
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t hoseSBAR_protocolDriverHoseLegacyFlushWithinSampleRange(const void *a1, int a2, _OWORD *a3, int a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v9[0] = *a3;
  *(v9 + 12) = *(a3 + 12);
  v8[0] = *a5;
  *(v8 + 12) = *(a5 + 12);
  hoseSBAR_audioHoseFlushWithinSampleRange(a1, a2, v9, a4, v8, a6, a7);
  return 0;
}

uint64_t hoseSBAR_audioHoseFlushWithinSampleRange(const void *a1, int a2, _OWORD *a3, int a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = CFRetain(a1);
  v17 = a2;
  *v18 = *a3;
  *&v18[12] = *(a3 + 12);
  v19 = a4;
  *v20 = *a5;
  *&v20[12] = *(a5 + 12);
  v21 = a6;
  v22 = a7;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseFlushWithinSampleRangeDispatchInternal, &v16, 0x58uLL);
  return 0;
}

void hoseSBAR_audioHoseFlushWithinSampleRangeDispatchInternal(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v49 = *(a1 + 8);
  v50 = *(a1 + 40);
  v3 = *(a1 + 72);
  v48 = *(a1 + 80);
  v52[0] = *(a1 + 12);
  *(v52 + 12) = *(a1 + 24);
  v51[0] = *(a1 + 44);
  *(v51 + 12) = *(a1 + 56);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC0898];
  v59 = *MEMORY[0x277CC0898];
  v60 = *(MEMORY[0x277CC0898] + 8);
  v6 = APSAudioTransportTimeCopyDebugDesc(v52);
  v7 = APSAudioTransportTimeCopyDebugDesc(v51);
  v8 = *(MEMORY[0x277CC08C8] + 16);
  *&v57.start.value = *MEMORY[0x277CC08C8];
  *&v57.start.epoch = v8;
  *&v57.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
  v56 = *v5;
  v55 = v56;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    *&time[16] = *(DerivedStorage + 424);
    *time = *(DerivedStorage + 408);
    CMTimeGetSeconds(time);
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    LODWORD(v23) = -72332;
    v46 = 0;
LABEL_58:
    APSLogErrorAt(v46);
    goto LABEL_71;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v10 = *(v9 + 464);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 464), i);
        hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(v2, ValueAtIndex);
      }
    }

    v15 = *(v9 + 464);
    if (v15)
    {
      CFRelease(v15);
      *(v9 + 464) = 0;
    }
  }

  *time = v52[0];
  *&time[12] = *(v52 + 12);
  hoseSBAR_getMediaTimeForTransportTime(&v56, v2, time);
  *time = v51[0];
  *&time[12] = *(v51 + 12);
  hoseSBAR_getMediaTimeForTransportTime(&v55, v2, time);
  v16 = CMBaseObjectGetDerivedStorage();
  *queueOut = 0;
  *&time[8] = v56;
  *time = 0;
  v17 = *MEMORY[0x277CBECE8];
  v18 = CMBufferQueueCreate(*MEMORY[0x277CBECE8], 0, *(v16 + 136), queueOut);
  if (v18)
  {
    v23 = v18;
LABEL_66:
    APSLogErrorAt(v18);
    goto LABEL_27;
  }

  *time = *queueOut;
  v18 = CMBufferQueueCallForEachBuffer(*(v16 + 656), hoseSBAR_bufferQueuePopBackAfterTimeCallback, time);
  if (v18)
  {
    v23 = v18;
    goto LABEL_66;
  }

  v19 = *(v16 + 656);
  v20 = *queueOut;
  *(v16 + 656) = *queueOut;
  if (v20)
  {
    CFRetain(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (*queueOut)
  {
    CFRelease(*queueOut);
    *queueOut = 0;
  }

  v18 = CMBufferQueueCreate(v17, 0, *(v16 + 136), queueOut);
  if (v18)
  {
    v23 = v18;
    goto LABEL_66;
  }

  *time = *queueOut;
  v18 = CMBufferQueueCallForEachBuffer(*(v16 + 664), hoseSBAR_bufferQueuePopBackAfterTimeCallback, time);
  if (v18)
  {
    v23 = v18;
    goto LABEL_66;
  }

  v21 = *(v16 + 664);
  v22 = *queueOut;
  *(v16 + 664) = *queueOut;
  if (v22)
  {
    CFRetain(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v23 = 0;
LABEL_27:
  if (*queueOut)
  {
    CFRelease(*queueOut);
  }

  if (v23)
  {
    v46 = v23;
    goto LABEL_58;
  }

  *time = v52[0];
  *&time[12] = *(v52 + 12);
  hoseSBAR_getMediaTimeForTransportTime(queueOut, v2, time);
  hoseSBAR_getSynchronizerTimeForMediaTime(time, v2, queueOut);
  v59 = *time;
  v24 = *&time[12];
  v60 = *&time[8];
  if (time[12])
  {
    v25 = v6;
    v26 = v7;
    v27 = *&time[16];
    v28 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A004079E0F624uLL);
    if (v28)
    {
      v29 = v28;
      *(v28 + 8) = 0;
      v30 = CFRetain(v2);
      *(v29 + 12) = v49;
      *(v29 + 4) = *(v52 + 12);
      *(v29 + 52) = v52[0];
      *(v29 + 20) = v50;
      *(v29 + 84) = v51[0];
      *(v29 + 6) = *(v51 + 12);
      v31 = v59;
      *v29 = v30;
      *(v29 + 1) = v31;
      *(v29 + 4) = v60;
      *(v29 + 5) = v24;
      *(v29 + 3) = v27;
      *(v29 + 5) = v3;
      *(v29 + 14) = v48;
      ++*(DerivedStorage + 460);
      v32 = *(DerivedStorage + 976);
      if (v32)
      {
        CFRelease(v32);
        *(DerivedStorage + 976) = 0;
      }

      v33 = *(DerivedStorage + 984);
      if (v33)
      {
        CFRelease(v33);
        *(DerivedStorage + 984) = 0;
      }

      v34 = *(DerivedStorage + 104);
      v35 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v35)
      {
        *time = v59;
        *&time[8] = v60;
        *&time[12] = v24;
        *&time[16] = v27;
        v36 = v35(v34, time, hoseSBAR_audioEngineFlushFromTimeSBARCallback, v29);
        if (!v36)
        {
          v37 = *(CMBaseObjectGetDerivedStorage() + 32);
          v38 = *MEMORY[0x277CC1968];
          v7 = v26;
          if (FigCFEqual())
          {
            *time = 1;
            *&time[4] = v49;
            *&time[8] = v52[0];
            *&time[20] = *(v52 + 12);
            *&time[36] = v50;
            *&time[40] = v51[0];
            *&time[52] = *(v51 + 12);
            hoseSBAR_addPendingFlushOperation(v2, time);
          }

          *queueOut = v55;
          rhs = v56;
          CMTimeSubtract(time, queueOut, &rhs);
          *queueOut = v56;
          CMTimeRangeMake(&v57, queueOut, time);
          v39 = *(DerivedStorage + 992);
          *time = v57;
          APSTimedInfoManagerFlushWithinTimeRange(v39, time);
          v40 = APSTimedInfoManagerSuspend(*(DerivedStorage + 992), 0);
          v6 = v25;
          if (v40)
          {
            LODWORD(v23) = v40;
          }

          else
          {
            v40 = APSTimedInfoManagerResume(*(DerivedStorage + 992), *(DerivedStorage + 120));
            LODWORD(v23) = v40;
            if (!v40)
            {
              goto LABEL_42;
            }
          }

          APSLogErrorAt(v40);
LABEL_42:
          v41 = 0;
          if (!v25)
          {
            goto LABEL_48;
          }

LABEL_47:
          CFRelease(v6);
          goto LABEL_48;
        }

        v23 = v36;
      }

      else
      {
        v42 = *v29;
        v43 = CMBaseObjectGetDerivedStorage();
        v23 = 4294954514;
        *(v29 + 8) = -12782;
        dispatch_async_f(*(v43 + 352), v29, hoseSBAR_audioEngineFlushFromTimeSBARCallbackInternal);
      }

      APSLogErrorAt(v23);
      v41 = 0;
    }

    else
    {
      APSLogErrorAt(0);
      LODWORD(v23) = -72330;
      v41 = 1;
    }

    v7 = v26;
    v6 = v25;
    if (!v25)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  APSLogErrorAt(0);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v47 = *(DerivedStorage + 88);
    LogPrintF();
  }

  LODWORD(v23) = 0;
LABEL_71:
  v41 = 1;
  if (v6)
  {
    goto LABEL_47;
  }

LABEL_48:
  if (v7)
  {
    CFRelease(v7);
  }

  v44 = v41 ^ 1;
  if (!v3)
  {
    v44 = 1;
  }

  if ((v44 & 1) == 0)
  {
    *time = v52[0];
    *&time[12] = *(v52 + 12);
    *queueOut = v51[0];
    *&queueOut[12] = *(v51 + 12);
    hoseSBAR_callAudioHoseFlushWithinSampleRangeCompletionHandlerInternal(v2, v3, v49, time, v50, queueOut, v23, v48);
  }

  CFRelease(*a1);
  v45 = *MEMORY[0x277D85DE8];
}

uint64_t hoseSBAR_addPendingFlushOperation(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = malloc_type_calloc(1uLL, 0x58uLL, 0x10A00403B7FD5E2uLL);
  if (result)
  {
    v5 = result;
    *(result + 16) = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(result + 80) = *(a2 + 64);
    *(result + 48) = v7;
    *(result + 64) = v8;
    *(result + 32) = v6;
    v9 = *(DerivedStorage + 720);
    *result = 0;
    *(result + 8) = v9;
    *v9 = result;
    *(DerivedStorage + 720) = result;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
      {
        *(v5 + 16);
        return LogPrintF();
      }
    }
  }

  else if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF();
    }
  }

  return result;
}

void hoseSBAR_callAudioHoseFlushWithinSampleRangeCompletionHandlerInternal(const void *a1, uint64_t a2, int a3, _OWORD *a4, int a5, _OWORD *a6, int a7, uint64_t a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  if (a2)
  {
    v17 = DerivedStorage;
    v18[0] = CFRetain(a1);
    v18[1] = a2;
    v19 = a3;
    *v20 = *a4;
    *&v20[12] = *(a4 + 12);
    v21 = a5;
    *v22 = *a6;
    *&v22[12] = *(a6 + 12);
    LODWORD(v23) = a7;
    v24 = a8;
    APSDispatchAsyncFHelper(*(v17 + 8), hoseSBAR_callAudioEngineFlushWithinSampleRangeCompletionHandlerCaller, v18, 0x60uLL);
  }
}

void hoseSBAR_callAudioEngineFlushWithinSampleRangeCompletionHandlerCaller(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10[0] = *(a1 + 20);
  *(v10 + 12) = *(a1 + 32);
  v9[0] = *(a1 + 52);
  *(v9 + 12) = *(a1 + 64);
  v3(v2, v5, v10, v6, v9, v7, v8);
  CFRelease(*a1);
}

void hoseSBAR_audioEngineFlushFromTimeSBARCallbackInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *time = *(a1 + 52);
  *&time[12] = *(a1 + 64);
  v4 = APSAudioTransportTimeCopyDebugDesc(time);
  *time = *(a1 + 84);
  *&time[12] = *(a1 + 96);
  v5 = APSAudioTransportTimeCopyDebugDesc(time);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v6 = *a1;
    *time = *(a1 + 8);
    *&time[16] = *(a1 + 24);
    CMTimeGetSeconds(time);
    v7 = *(a1 + 32);
    v8 = *(DerivedStorage + 460);
    *time = *(DerivedStorage + 408);
    *&time[16] = *(DerivedStorage + 424);
    CMTimeGetSeconds(time);
    LogPrintF();
  }

  --*(DerivedStorage + 460);
  v9 = *(a1 + 32);
  if (!v9)
  {
    *time1 = *(a1 + 8);
    *&time1[16] = *(a1 + 24);
    time2 = *(DerivedStorage + 408);
    CMTimeMinimum(time, time1, &time2);
    *(DerivedStorage + 408) = *time;
    *(DerivedStorage + 424) = *&time[16];
    *time1 = *(a1 + 8);
    *&time1[16] = *(a1 + 24);
    time2 = *(DerivedStorage + 432);
    CMTimeMinimum(time, time1, &time2);
    *(DerivedStorage + 432) = *time;
    *(DerivedStorage + 448) = *&time[16];
    if (*(DerivedStorage + 420))
    {
      v10 = *(DerivedStorage + 120);
      v11 = *(DerivedStorage + 680);
      *time1 = *(DerivedStorage + 408);
      *&time1[16] = *(DerivedStorage + 424);
      time2 = *(DerivedStorage + 232);
      CMTimeSubtract(time, time1, &time2);
      CMTimebaseSetTimerDispatchSourceNextFireTime(v10, v11, time, 1u);
    }

    v12 = *a1;
    *time = *(a1 + 52);
    *&time[12] = *(a1 + 64);
    hoseSBAR_updateRTPRolloverStateOnFlushFromTransportTime(v12, time);
    v9 = *(a1 + 32);
  }

  v13 = *a1;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 80);
  v17 = *(a1 + 112);
  *time = *(a1 + 52);
  *&time[12] = *(a1 + 64);
  *time1 = *(a1 + 84);
  *&time1[12] = *(a1 + 96);
  hoseSBAR_callAudioHoseFlushWithinSampleRangeCompletionHandlerInternal(v13, v14, v15, time, v16, time1, v9, v17);
  hoseSBAR_maybeTriggerPullAudioBBuffs(*a1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*a1);
  free(a1);
}

void hoseSBAR_audioEngineFlushFromTimeSBARCallback(int a1, _DWORD *a2)
{
  v4 = *a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a2[8] = a1;
  v6 = *(DerivedStorage + 352);

  dispatch_async_f(v6, a2, hoseSBAR_audioEngineFlushFromTimeSBARCallbackInternal);
}

uint64_t hoseSBAR_bufferQueuePopBackAfterTimeCallback(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  sampleBufferOut = 0;
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  memset(&v14, 0, sizeof(v14));
  v13 = **&MEMORY[0x277CC0898];
  CMSampleBufferGetOutputPresentationTimeStamp(&v17, a1);
  time1 = v17;
  time2 = *(a2 + 8);
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    goto LABEL_4;
  }

  CMSampleBufferGetOutputDuration(&v16, a1);
  time1 = v17;
  time2 = v16;
  CMTimeAdd(&v15, &time1, &time2);
  time1 = *(a2 + 8);
  time2 = v15;
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    CMBufferQueueEnqueue(*a2, a1);
LABEL_4:
    v4 = 0;
    goto LABEL_11;
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = CMSampleBufferCreateCopy(*MEMORY[0x277CBECE8], a1, &sampleBufferOut);
  if (v6)
  {
    APSLogErrorAt(v6);
    goto LABEL_4;
  }

  time1 = v15;
  time2 = *(a2 + 8);
  CMTimeSubtract(&v14, &time1, &time2);
  v7 = *MEMORY[0x277CC0758];
  v8 = CMGetAttachment(sampleBufferOut, *MEMORY[0x277CC0758], 0);
  if (v8)
  {
    CMTimeMakeFromDictionary(&v13, v8);
    time2 = v14;
    v10 = v13;
    CMTimeAdd(&time1, &time2, &v10);
    time2 = v16;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time2 = v14;
      v10 = v16;
      CMTimeAdd(&time1, &time2, &v10);
      v14 = time1;
    }
  }

  time1 = v14;
  v4 = CMTimeCopyAsDictionary(&time1, v5);
  if (v4)
  {
    CMSetAttachment(sampleBufferOut, v7, v4, 1u);
    CMBufferQueueEnqueue(*a2, sampleBufferOut);
  }

  else
  {
    APSLogErrorAt(0);
  }

LABEL_11:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t hoseSBAR_protocolDriverHoseLegacyFlush(const void *a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v6[0] = *a3;
  *(v6 + 12) = *(a3 + 12);
  hoseSBAR_audioHoseFlush(a1, a2, v6, a4, a5);
  return 0;
}

uint64_t hoseSBAR_audioHoseFlush(const void *a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11;
  v14 = a2;
  *v15 = *a3;
  *&v15[12] = *(a3 + 12);
  v16 = a4;
  v17 = a5;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseFlushCallbackDispatchInternal, &v13, 0x38uLL);
  return 0;
}

void hoseSBAR_audioHoseFlushCallbackDispatchInternal(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v30[0] = *(a1 + 12);
  *(v30 + 12) = *(a1 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 480);
  v8 = APSAudioTransportTimeCopyDebugDesc(v30);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    APSLogErrorAt(0);
    LODWORD(v28) = -72332;
    if (!v8)
    {
      goto LABEL_33;
    }

LABEL_32:
    CFRelease(v8);
    goto LABEL_33;
  }

  if (v7 != 1)
  {
    goto LABEL_11;
  }

  v9 = *(DerivedStorage + 112);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    v28 = 4294954514;
LABEL_30:
    v12 = v28;
    goto LABEL_31;
  }

  *v31 = *MEMORY[0x277CC0898];
  *&v31[16] = *(MEMORY[0x277CC0898] + 16);
  v11 = v10(v9, v31, 0.0);
  if (v11)
  {
    v28 = v11;
    goto LABEL_30;
  }

  v12 = APSClockDriftMonitorSuspend(*(DerivedStorage + 1000));
  if (v12)
  {
    LODWORD(v28) = v12;
LABEL_31:
    APSLogErrorAt(v12);
    if (!v8)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  hoseSBAR_waitForTimebaseRate(0.0);
  hoseSBAR_updateSynchronizerState(v2, 0);
LABEL_11:
  v13 = *(DerivedStorage + 288);
  FigSimpleMutexLock();
  *(DerivedStorage + 320) = 0;
  v14 = *(DerivedStorage + 288);
  FigSimpleMutexUnlock();
  v15 = *(DerivedStorage + 104);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v16)
  {
    v16(v15);
  }

  *(DerivedStorage + 672) = 0;
  v17 = MEMORY[0x277CC08C8];
  v18 = *(MEMORY[0x277CC08C8] + 16);
  *(DerivedStorage + 756) = *MEMORY[0x277CC08C8];
  *(DerivedStorage + 772) = v18;
  *(DerivedStorage + 788) = *(v17 + 32);
  v12 = CMBufferQueueReset(*(DerivedStorage + 664));
  if (v12)
  {
    LODWORD(v28) = v12;
    goto LABEL_31;
  }

  if (v7 == 1)
  {
    hoseSBAR_enqueueIntoSBARPrimingSBufIfNecessary(v2);
  }

  v19 = *(CMBaseObjectGetDerivedStorage() + 32);
  v20 = *MEMORY[0x277CC1968];
  if (FigCFEqual())
  {
    memset(v31, 0, 36);
    hoseSBAR_clearPendingFlushes();
    v31[0] = 0;
    *&v31[36] = v3;
    *&v31[40] = v30[0];
    *&v31[52] = *(v30 + 12);
    hoseSBAR_addPendingFlushOperation(v2, v31);
  }

  v12 = APSTimedInfoManagerFlush(*(DerivedStorage + 992));
  if (v12)
  {
    LODWORD(v28) = v12;
    goto LABEL_31;
  }

  v12 = APSTimedInfoManagerSuspend(*(DerivedStorage + 992), 0);
  if (v12)
  {
    LODWORD(v28) = v12;
    goto LABEL_31;
  }

  v12 = APSTimedInfoManagerResume(*(DerivedStorage + 992), *(DerivedStorage + 120));
  if (v12)
  {
    LODWORD(v28) = v12;
    goto LABEL_31;
  }

  v21 = *(DerivedStorage + 464);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 464) = 0;
  }

  CMBufferQueueReset(*(DerivedStorage + 656));
  *(DerivedStorage + 544) = 0x100000000;
  *(DerivedStorage + 528) = kAPSNetworkTimeInvalid;
  v22 = MEMORY[0x277CC0898];
  v23 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 552) = *MEMORY[0x277CC0898];
  v24 = *(v22 + 16);
  *(DerivedStorage + 568) = v24;
  *(DerivedStorage + 576) = v23;
  *(DerivedStorage + 592) = v24;
  *(DerivedStorage + 600) = v23;
  *(DerivedStorage + 616) = v24;
  *(DerivedStorage + 640) = v24;
  *(DerivedStorage + 624) = v23;
  *(DerivedStorage + 400) = v24;
  *(DerivedStorage + 384) = v23;
  *(DerivedStorage + 424) = v24;
  *(DerivedStorage + 408) = v23;
  *(DerivedStorage + 448) = v24;
  *(DerivedStorage + 432) = v23;
  *(DerivedStorage + 740) = 0;
  *(DerivedStorage + 744) = 0;
  dispatch_source_set_timer(*(DerivedStorage + 680), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  v25 = *(DerivedStorage + 976);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 976) = 0;
  }

  v26 = *(DerivedStorage + 984);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 984) = 0;
  }

  CFDictionaryRemoveAllValues(*(DerivedStorage + 928));
  CFDictionaryRemoveAllValues(*(DerivedStorage + 936));
  CFDictionaryRemoveAllValues(*(DerivedStorage + 952));
  CFDictionaryRemoveAllValues(*(DerivedStorage + 944));
  CFDictionaryRemoveAllValues(*(DerivedStorage + 960));
  v27 = CMBaseObjectGetDerivedStorage();
  LODWORD(v28) = 0;
  *(v27 + 728) = 0;
  *(v27 + 736) = 0;
  *(DerivedStorage + 456) = 0;
  if (v8)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (v5)
  {
    v29 = CMBaseObjectGetDerivedStorage();
    *&v31[48] = 0;
    *v31 = CFRetain(v2);
    *&v31[8] = v5;
    *&v31[16] = v3;
    *&v31[20] = v30[0];
    *&v31[32] = *(v30 + 12);
    *&v31[48] = v28;
    *&v31[56] = v4;
    APSDispatchAsyncFHelper(*(v29 + 8), hoseSBAR_callAudioHoseFlushCompletionHandlerCaller, v31, 0x40uLL);
  }

  CFRelease(*a1);
}

uint64_t hoseSBAR_clearPendingFlushes()
{
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  while (1)
  {
    result = CMBaseObjectGetDerivedStorage();
    if (!*(result + 712))
    {
      break;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v1 = *(DerivedStorage + 712);
    if (v1)
    {
      v2 = *v1;
      v3 = v1[1];
      v4 = (DerivedStorage + 720);
      if (*v1)
      {
        v4 = (*v1 + 8);
      }

      *v4 = v3;
      *v3 = v2;
      free(v1);
    }
  }

  return result;
}

void hoseSBAR_callAudioHoseFlushCompletionHandlerCaller(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = *(a1 + 20);
  *(v8 + 12) = *(a1 + 32);
  v3(v2, v5, v8, v6, v7);
  CFRelease(*a1);
}

__CFString *hoseSBAR_protocolDriverHoseControlProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APSEndpointStreamAudioHoseSBAR <APSAudioProtocolDriverHoseControlProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t hoseSBAR_audioHoseSetCallbacks(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 352);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __hoseSBAR_audioHoseSetCallbacks_block_invoke;
  v9[3] = &__block_descriptor_tmp_372;
  v9[4] = DerivedStorage;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a1;
  dispatch_async(v7, v9);
  return 0;
}

void __hoseSBAR_audioHoseSetCallbacks_block_invoke(void *a1)
{
  *(a1[4] + 488) = a1[5];
  v2 = a1[4];
  v3 = *(v2 + 496);
  v4 = a1[6];
  *(v2 + 496) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t hoseSBAR_audioHoseNotifyAudioAvailable(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_notifyAudioDataAvailableEngineCallbackDispatchInternal, &v5, 8uLL);
  return 0;
}

void hoseSBAR_notifyAudioDataAvailableEngineCallbackDispatchInternal(void **a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*DerivedStorage)
  {
    DerivedStorage[457] = 1;
    hoseSBAR_maybeTriggerPullAudioBBuffs(v2);
  }

  v4 = *a1;

  CFRelease(v4);
}

uint64_t hoseSBAR_audioHoseTimeAnnounce(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  if (a1)
  {
    v7 = CFRetain(a1);
  }

  else
  {
    v7 = 0;
  }

  v10 = v7;
  LODWORD(v11) = a2;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  v12 = v8;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseTimeAnnounceDispatchInternal, &v10, 0x18uLL);
  return 0;
}

void hoseSBAR_audioHoseTimeAnnounceDispatchInternal(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v36 = **&MEMORY[0x277CC0898];
  v35 = v36;
  if (*DerivedStorage)
  {
    goto LABEL_48;
  }

  v6 = DerivedStorage;
  if (DerivedStorage[456])
  {
    goto LABEL_48;
  }

  if (v3 > 1952542317)
  {
    if (v3 != 1952542318)
    {
      v7 = 1953526896;
LABEL_8:
      if (v3 != v7)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_36;
        }

        goto LABEL_48;
      }

      dataPointerOut.value = 0;
      v34.value = 0;
      DataPointer = CMBlockBufferGetDataPointer(v4, 0, 0, 0, &dataPointerOut);
      if (!DataPointer)
      {
        v9 = *(dataPointerOut.value + 4);
        v10 = *(dataPointerOut.value + 16);
        v11 = *(v6 + 8);
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v12 || (v13 = bswap64(v9) / 1000000000.0, time.value = bswap64(v10), *&time.timescale = vcvtd_n_u64_f64(v13 - floor(v13), 0x40uLL), time.epoch = vcvtmd_s64_f64(v13), v12(v11, &time, &v34)))
        {
          if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        v20 = UpTicksToNanoseconds();
        CMTimeMake(&v35, v20, 1000000000);
        v21 = bswap32(*dataPointerOut.value);
        goto LABEL_33;
      }

LABEL_47:
      APSLogErrorAt(DataPointer);
      goto LABEL_48;
    }
  }

  else if (v3 != 1950436942)
  {
    v7 = 1951421520;
    goto LABEL_8;
  }

  dataPointerOut.value = 0;
  v34.value = 0;
  DataPointer = CMBlockBufferGetDataPointer(v4, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_47;
  }

  v14 = *dataPointerOut.value;
  v15 = *(dataPointerOut.value + 4);
  v16 = *(dataPointerOut.value + 8);
  v17 = *(v6 + 8);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v18 || (v19 = bswap32(v15) + bswap32(v16) * 2.32830644e-10 + -2208988800.0, time.value = 0, *&time.timescale = vcvtd_n_u64_f64(v19 - floor(v19), 0x40uLL), time.epoch = vcvtmd_s64_f64(v19), v18(v17, &time, &v34)))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v21 = bswap32(v14);
  v22 = UpTicksToNanoseconds();
  CMTimeMake(&v35, v22, 1000000000);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    time = v35;
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

LABEL_33:
  hoseSBAR_updateRTPRolloverStateAssumingIncreasingRTPTimes(v2, v21);
  hoseSBAR_getMediaTimeForRTPTime(&v36, v2, v21);
  *(v6 + 23) = v35;
  v23 = *&v36.value;
  *(v6 + 36) = *&v36.value;
  epoch = v36.epoch;
  *(v6 + 74) = v36.epoch;
  v25 = MEMORY[0x277CC08F0];
  *(v6 + 600) = *MEMORY[0x277CC08F0];
  *(v6 + 77) = *(v25 + 16);
  *&dataPointerOut.value = v23;
  dataPointerOut.epoch = epoch;
  hoseSBAR_getSynchronizerTimeForMediaTime(&time, v2, &dataPointerOut);
  flags = time.flags;
  if (time.flags)
  {
    value = time.value;
    timescale = time.timescale;
    v29 = time.epoch;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      time.value = value;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = v29;
      CMTimeGetSeconds(&time);
      time = v35;
      CMTimeGetSeconds(&time);
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&time, HostTimeClock);
      CMTimeGetSeconds(&time);
      LogPrintF();
    }

    v31 = *(v6 + 14);
    v34 = v35;
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v32)
    {
      time.value = value;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = v29;
      dataPointerOut = v34;
      DataPointer = v32(v31, &time, &dataPointerOut, 1.0);
      if (!DataPointer)
      {
        hoseSBAR_waitForTimebaseRate(1.0);
        CMTimebaseSetTimerDispatchSourceToFireImmediately(*(v6 + 15), *(v6 + 81));
        hoseSBAR_updateSynchronizerState(v2, 1);
        v6[456] = 1;
        goto LABEL_48;
      }
    }

    else
    {
      DataPointer = 4294954514;
    }

    goto LABEL_47;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
LABEL_36:
    LogPrintF();
  }

LABEL_48:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v33 = *(a1 + 16);
  if (v33)
  {
    CFRelease(v33);
  }
}

uint64_t hoseSBAR_audioHoseSendAudio(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1734700576)
  {
    v7 = DerivedStorage;
    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    v11[0] = v8;
    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    v11[1] = v9;
    APSDispatchAsyncFHelper(*(v7 + 352), hoseSBAR_hoseSendAudioDataDispatchInternal, v11, 0x10uLL);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960561;
  }
}

void hoseSBAR_hoseSendAudioDataDispatchInternal(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6[0] = v3;
  v6[1] = v2;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*DerivedStorage)
  {
    CFRetain(v3);
    CFRetain(v2);
    APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_sbarEnqueueSingleAudioBBuffDispatchFunction, v6, 0x10uLL);
  }

  CFRelease(*a1);
  v5 = *(a1 + 8);
  if (v5)
  {
    CFRelease(v5);
  }
}

void hoseSBAR_sbarEnqueueSingleAudioBBuffDispatchFunction(uint64_t a1)
{
  v2 = *a1;
  if (!*(CMBaseObjectGetDerivedStorage() + 282) && (started = hoseSBAR_startTheSynchronizerIfNecessary(*a1, 1), started) || (started = hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(*a1, *(a1 + 8)), started) || (started = hoseSBAR_fillSBARToHighWater(*a1), started))
  {
    APSLogErrorAt(started);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    CFRelease(v4);
  }
}

__CFString *hoseSBAR_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APSEndpointStreamAudioHoseSBAR <APSEndpointStreamAudioHoseProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t hoseSBAR_SetProperty(const void *a1, const void *a2, const void *a3)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    APSLogErrorAt(0);
    v22 = v27;
    v23 = -72332;
    goto LABEL_48;
  }

  if (CFEqual(a2, @"APSEndpointStreamAudioHoseProtocolProperty_IsTimelineEstablished") || CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_IsTimelineEstablished"))
  {
    goto LABEL_8;
  }

  if (CFEqual(a2, @"VolumeLinear"))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFNumberGetTypeID())
      {
        v10 = *(DerivedStorage + 104);
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v12 = v11(v10, *MEMORY[0x277CD6440], a3);
          *(v27 + 6) = v12;
          if (!v12)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v12 = 4294954514;
          *(v27 + 6) = -12782;
        }

LABEL_16:
        APSLogErrorAt(v12);
        goto LABEL_8;
      }
    }

    goto LABEL_50;
  }

  if (CFEqual(a2, @"BufferedClientAudioSessionID"))
  {
    if (!a3 || (v13 = CFGetTypeID(a3), v13 == CFNumberGetTypeID()))
    {
      v14 = *(DerivedStorage + 296);
      if (!FigCFEqual())
      {
        if (a1)
        {
          CFRetain(a1);
        }

        if (a3)
        {
          CFRetain(a3);
        }

        v15 = *(DerivedStorage + 352);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __hoseSBAR_SetProperty_block_invoke;
        block[3] = &unk_2784A2C88;
        block[4] = &v26;
        block[5] = DerivedStorage;
        block[6] = a3;
        block[7] = a1;
        dispatch_async(v15, block);
      }

      goto LABEL_8;
    }

LABEL_50:
    APSLogErrorAt(0);
    v22 = v27;
    v23 = -72331;
    goto LABEL_48;
  }

  if (!CFEqual(a2, @"AudioProcessingTapID"))
  {
    if (CFEqual(a2, @"MuteStream"))
    {
      v12 = FigSampleBufferAudioRendererSetProperty(*(DerivedStorage + 104), *MEMORY[0x277CD6430], a3);
      *(v27 + 6) = v12;
      if (!v12)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v22 = v27;
    v23 = -12784;
LABEL_48:
    *(v22 + 6) = v23;
    goto LABEL_8;
  }

  if (a3)
  {
    v16 = CFGetTypeID(a3);
    if (v16 != CFNumberGetTypeID())
    {
      goto LABEL_50;
    }
  }

  if (a1)
  {
    v17 = CFRetain(a1);
  }

  else
  {
    v17 = 0;
  }

  v24[0] = v17;
  if (a3)
  {
    v18 = CFRetain(a3);
  }

  else
  {
    v18 = 0;
  }

  v24[1] = v18;
  v19 = *(DerivedStorage + 288);
  FigSimpleMutexLock();
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_setAudioProcessingTapIDInternal, v24, 0x10uLL);
  v20 = *(DerivedStorage + 312);
  *(DerivedStorage + 312) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(DerivedStorage + 288);
  FigSimpleMutexUnlock();
LABEL_8:
  v7 = *(v27 + 6);
  _Block_object_dispose(&v26, 8);
  return v7;
}

uint64_t FigSampleBufferAudioRendererSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 8) + 56;

  return v7(a1, a2, a3);
}

void hoseSBAR_setAudioProcessingTapIDInternal(uint64_t a1)
{
  v2 = *a1;
  v3 = *(CMBaseObjectGetDerivedStorage() + 104);
  v4 = *(a1 + 8);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v6 = v5(v3, *MEMORY[0x277CD6400], v4);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 4294954514;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v8 = *a1;
    LogPrintF();
  }

  APSLogErrorAt(v6);
LABEL_10:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v7 = *(a1 + 8);
  if (v7)
  {

    CFRelease(v7);
  }
}