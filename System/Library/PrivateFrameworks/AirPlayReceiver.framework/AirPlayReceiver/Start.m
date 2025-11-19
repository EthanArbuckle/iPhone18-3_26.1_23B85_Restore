@interface Start
@end

@implementation Start

void __aprscreen_Start_block_invoke(uint64_t a1)
{
  v1 = a1;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 228) & 0x80000000) != 0)
  {
    *&block.sa_len = 28;
    FigCFDictionaryGetInt32IfPresent();
    APSLogErrorAt();
    if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_17;
  }

  *&block.sa_len = 0;
  *&block.sa_data[6] = 0;
  LODWORD(v117) = 0;
  v116 = 0;
  v106[0] = 0;
  v5 = SocketAccept();
  if (v5)
  {
    v9 = v5;
    goto LABEL_235;
  }

  v106[0] = 28;
  getsockname(-1, &block, v106);
  if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(DerivedStorage + 228);
  if ((v6 & 0x80000000) == 0)
  {
    if (close(v6) && *__error())
    {
      __error();
    }

    *(DerivedStorage + 228) = -1;
  }

  if (*(DerivedStorage + 187))
  {
    SocketSetQoS();
  }

  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(v7 + 248))
  {
    FigSimpleMutexUnlock();
LABEL_17:
    Mutable = 0;
    v9 = 0;
    goto LABEL_236;
  }

  v9 = NetSocket_CreateWithNative();
  FigSimpleMutexUnlock();
  if (v9)
  {
    if (v9 != -6723)
    {
      goto LABEL_235;
    }

    goto LABEL_17;
  }

  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Value = CFDictionaryGetValue(v2, @"PresentationLayer");
    if (Value)
    {
      CFDictionarySetValue(Mutable, @"PresentationLayer", Value);
    }

    v11 = CFDictionaryGetValue(v2, @"PresentationContext");
    if (v11)
    {
      CFDictionarySetValue(Mutable, @"PresentationContext", v11);
    }

    v12 = CFDictionaryGetValue(v2, @"ReportedDisplaySize");
    if (v12)
    {
      CFDictionarySetValue(Mutable, @"ReportedDisplaySize", v12);
    }
  }

  else
  {
    Mutable = 0;
  }

  v13 = *(DerivedStorage + 144);
  v98 = *MEMORY[0x277CBED10];
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v14)
  {
    v14(v13, @"ScreenFadeOutOnStop", v98);
  }

  v15 = *(DerivedStorage + 144);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    v9 = -12782;
LABEL_39:
    APSLogErrorAt();
    goto LABEL_236;
  }

  v17 = v16(v15, Mutable);
  if (v17)
  {
    v9 = v17;
    goto LABEL_39;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (FigGetCFPreferenceNumberWithDefault())
  {
    aprscreen_captureStart(v3, 0, 0);
  }

  v96 = v1;
  if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v95 = DerivedStorage;
  APTTrafficMetricsConnectionFormed();
  v18 = CMBaseObjectGetDerivedStorage();
  v97 = *MEMORY[0x277CBED28];
  v101 = *MEMORY[0x277CBECF0];
  v102 = *MEMORY[0x277CBECE8];
  while (1)
  {
    APTTrafficMetricsMessageReadStarted();
    v9 = (*(*(v18 + 29) + 24))();
    APTTrafficMetricsMessageReadFinished();
    if (v9)
    {
      break;
    }

    v19 = aprscreen_ntpTimestamp();
    *(v18 + 38) = v19;
    *(v18 + 39) = v19;
    if (*v18)
    {
      v20 = malloc_type_malloc(*v18, 0xD992E056uLL);
      if (!v20)
      {
        APSLogErrorAt();
        v9 = -6728;
LABEL_226:
        v1 = v96;
LABEL_228:
        DerivedStorage = v95;
        goto LABEL_229;
      }

      APTTrafficMetricsMessageReadStarted();
      v9 = (*(*(v18 + 29) + 24))();
      APTTrafficMetricsMessageReadFinished();
      if (v9)
      {
        v1 = v96;
        if (v9 == -6723)
        {
          free(v20);
          DerivedStorage = v95;
LABEL_221:
          if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v93 = *(DerivedStorage + 144);
          v94 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v94)
          {
            v94(v93, @"ScreenFadeOutOnStop", v97);
          }

          goto LABEL_17;
        }

        APSLogErrorAt();
        goto LABEL_228;
      }
    }

    else
    {
      v20 = 0;
    }

    *(v18 + 40) = aprscreen_ntpTimestamp();
    v21 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v22 = *(v21 + 4);
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        if (v22 == 4)
        {
          goto LABEL_124;
        }

        if (v22 != 5)
        {
LABEL_75:
          if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

LABEL_124:
          if (v20)
          {
            free(v20);
          }

          FigSimpleMutexUnlock();
          goto LABEL_198;
        }
      }

      *&block.sa_len = 0;
      v23 = CMBaseObjectGetDerivedStorage();
      aprstats_logEnable(*(v23 + 136), (*(v23 + 5) & 2) != 0);
      *(v23 + 705) = *(v23 + 5) & 1;
      if (v20 && *(v23 + 4) == 5)
      {
        v24 = *(v23 + 124);
        if (v24)
        {
          CFDictionaryGetTypeID();
          v24 = CFCreateWithPlistBytes();
          if (*&block.sa_len)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
        v24 = 0;
      }

      v32 = *(v23 + 144);
      v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v33 && (v34 = v33(v32, v24), v34 != -12782))
      {
        *&block.sa_len = v34;
        if (v34)
        {
LABEL_79:
          APSLogErrorAt();
          if (*&block.sa_len && gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }
      }

      else
      {
        *&block.sa_len = 0;
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (v20)
      {
        free(v20);
      }

      v9 = *&block.sa_len;
      goto LABEL_197;
    }

    if (*(v21 + 4))
    {
      if (v22 != 1)
      {
        goto LABEL_75;
      }

      v25 = CMBaseObjectGetDerivedStorage();
      *&block.sa_len = 0;
      v26 = *(v25 + 5);
      v27 = *(v25 + 6);
      *(v25 + 706) = (v27 & 0x10) != 0;
      if (!*(v25 + 36))
      {
        *(v25 + 36) = mach_absolute_time();
      }

      v99 = *(v25 + 4);
      v100 = *(v25 + 5);
      v28 = *(v25 + 8);
      v29 = *(v25 + 9);
      v30 = *(v25 + 10);
      v31 = *(v25 + 11);
      if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v43 = *(v25 + 18);
      if (v27)
      {
        v44 = v97;
      }

      else
      {
        v44 = v98;
      }

      v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v45)
      {
        v45(v43, @"StatsDisplayEnabled", v44);
      }

      v46 = *v25;
      if (!v46)
      {
        goto LABEL_111;
      }

      if (((v27 >> 3) & 1) == 0)
      {
        v47 = CFDataCreateWithBytesNoCopy(v102, v20, v46, v101);
        if (v47)
        {
          v48 = *(v25 + 18);
          v49 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v49)
          {
            v50 = v49(v48, v47, v26, v99, v100, v28, v29, v30, v31);
            if (!v50)
            {
              v20 = *(v25 + 21);
              if (v20)
              {
                v51 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v51)
                {
                  v51(v20, v47, v26, v99, v100, v28, v29, v30, v31);
                }

                goto LABEL_108;
              }

              goto LABEL_109;
            }

            v9 = v50;
          }

          else
          {
            v9 = -12782;
          }

          APSLogErrorAt();
LABEL_119:
          v20 = 0;
        }

        else
        {
          APSLogErrorAt();
          v9 = -72120;
        }

LABEL_120:
        if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

LABEL_139:
        if (*&block.sa_len)
        {
          CFRelease(*&block.sa_len);
        }

        if (v47)
        {
          CFRelease(v47);
        }

        if (v20)
        {
          free(v20);
        }

        goto LABEL_197;
      }

      v52 = CMBlockBufferCreateWithMemoryBlock(v102, v20, v46, v101, 0, 0, v46, 0, &block);
      if (v52)
      {
        v9 = v52;
        APSLogErrorAt();
        v47 = 0;
        goto LABEL_120;
      }

      v53 = *(v25 + 18);
      v54 = *&block.sa_len;
      v55 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v55)
      {
        v56 = v55(v53, v54, v26, v99, v100, v28, v29, v30, v31);
        if (!v56)
        {
          v20 = *(v25 + 21);
          if (v20)
          {
            v57 = *&block.sa_len;
            v58 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v58)
            {
              v58(v20, v57, v26, v99, v100, v28, v29, v30, v31);
            }

            v47 = 0;
LABEL_108:
            v20 = 0;
            *(v25 + 176) = 1;
LABEL_109:
            if ((v27 & 0x40) == 0)
            {
              goto LABEL_138;
            }

            goto LABEL_112;
          }

LABEL_111:
          v47 = 0;
          if ((v27 & 0x40) == 0)
          {
LABEL_138:
            v9 = 0;
            ++*(v25 + 43);
            goto LABEL_139;
          }

LABEL_112:
          if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v62 = *(v25 + 18);
          v63 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v63)
          {
            v64 = v63(v62);
            if (v64 != -12782)
            {
              v9 = v64;
              if (v64)
              {
                APSLogErrorAt();
                goto LABEL_120;
              }
            }
          }

          goto LABEL_138;
        }

        v9 = v56;
      }

      else
      {
        v9 = -12782;
      }

      APSLogErrorAt();
      v47 = 0;
      goto LABEL_119;
    }

    v105 = 0;
    v35 = CMBaseObjectGetDerivedStorage();
    *&dataLength[1] = 0;
    v36 = *(v35 + 1);
    v37 = *(v35 + 5);
    v38 = CMBaseObjectGetDerivedStorage();
    *v106 = 0;
    if (*(v38 + 188))
    {
      v39 = mach_absolute_time();
    }

    else
    {
      v40 = v38;
      v41 = *(v38 + 128);
      if (v41)
      {
        v42 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v42 || (*&block.sa_len = v37, *&block.sa_data[6] = v36 << 32, v116 = HIDWORD(v36), v42(v41, &block, v106)))
        {
          if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v39 = v40[35];
        }

        else
        {
          v39 = *v106;
          v40[35] = *v106;
        }
      }

      else
      {
        v59 = NTPtoUpTicks();
        v60 = v59;
        if (v40[42])
        {
          v61 = v40[37];
        }

        else
        {
          v40[37] = v40[36] - v59;
          v61 = v40[37] + MillisecondsToUpTicks();
          v40[37] = v61;
        }

        v39 = v61 + v60;
      }
    }

    v65 = *v35;
    v66 = v35[7];
    v103 = v66;
    dataLength[0] = v65;
    if ((*(v35 + 5) & 0x10) != 0)
    {
      v67 = 1;
      if (!v66)
      {
LABEL_156:
        v86 = 0;
        goto LABEL_157;
      }
    }

    else
    {
      v67 = *(v35 + 42) == 0;
      if (!v66)
      {
        goto LABEL_156;
      }
    }

    v68 = v65 >= v66;
    v69 = v65 - v66;
    if (v69 == 0 || !v68)
    {
      APSLogErrorAt();
      v85 = 0;
      v86 = 0;
      v105 = -6743;
LABEL_184:
      if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_188;
    }

    dataLength[0] = v69;
    v86 = &v20[v69];
LABEL_157:
    v105 = aprscreen_decryptBuffer(v3, v20, dataLength);
    if (v105 || (v105 = CMBlockBufferCreateWithMemoryBlock(v102, v20, *v35, v101, 0, 0, dataLength[0], 0, &dataLength[1])) != 0)
    {
      APSLogErrorAt();
      v86 = 0;
      v85 = 0;
      goto LABEL_183;
    }

    if (v86)
    {
      v105 = aprscreen_decryptBuffer(v3, v86, &v103);
      if (v105)
      {
        APSLogErrorAt();
        v86 = 0;
LABEL_204:
        v85 = 0;
        goto LABEL_205;
      }

      CFDictionaryGetTypeID();
      v86 = CFCreateWithPlistBytes();
      if (v105)
      {
        APSLogErrorAt();
        goto LABEL_204;
      }
    }

    *(v35 + 41) = aprscreen_ntpTimestamp();
    v70 = CMBaseObjectGetDerivedStorage();
    v114 = 0;
    v71 = *(v70 + 136);
    if (v71)
    {
      v72 = *(v70 + 88);
      *v106 = v39;
      v107 = v72;
      v108 = *(v70 + 32);
      v109 = v70 + 96;
      v110 = v70 + 304;
      v111 = 0x400000010;
      v112 = *v70;
      v113 = *(v70 + 24);
      v73 = &v114;
      if (!*(v70 + 705))
      {
        v73 = 0;
      }

      v74 = *(v71 + 16);
      *&block.sa_len = MEMORY[0x277D85DD0];
      *&block.sa_data[6] = 3221225472;
      v116 = __APReceiverStatsCollectorUpdateAndCopyFrameStats_block_invoke;
      v117 = &__block_descriptor_56_e5_v8__0l;
      v118 = v71;
      v119 = v106;
      v120 = v73;
      dispatch_sync(v74, &block);
      v85 = v114;
    }

    else
    {
      v85 = 0;
    }

    v75 = *(v35 + 18);
    v76 = *&dataLength[1];
    v77 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v77)
    {
      v78 = v77(v75, v76, v86, v39, v85, v67);
      v105 = v78;
      if (v78 != -12782)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v105 = -12782;
    }

    v79 = *(v35 + 18);
    v80 = *&dataLength[1];
    v81 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v81)
    {
      v78 = v81(v79, v80, v39, v85, v67);
    }

    else
    {
      v78 = -12782;
    }

    v105 = v78;
LABEL_174:
    if (v78)
    {
      APSLogErrorAt();
LABEL_205:
      v20 = 0;
      goto LABEL_183;
    }

    v82 = *(v35 + 21);
    if (v82)
    {
      if (v67 && *(v35 + 176))
      {
        *(v35 + 177) = 1;
      }

      if (*(v35 + 177))
      {
        v83 = *&dataLength[1];
        v84 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v84)
        {
          v84(v82, v83, v39, v85, v67);
        }
      }
    }

    v20 = 0;
    ++*(v35 + 42);
LABEL_183:
    if (v105)
    {
      goto LABEL_184;
    }

LABEL_188:
    if (v86)
    {
      CFRelease(v86);
    }

    if (*&dataLength[1])
    {
      CFRelease(*&dataLength[1]);
    }

    if (v85)
    {
      CFRelease(v85);
    }

    if (v20)
    {
      free(v20);
    }

    v9 = v105;
LABEL_197:
    FigSimpleMutexUnlock();
    if (v9)
    {
      APSLogErrorAt();
      v20 = 0;
      goto LABEL_226;
    }

LABEL_198:
    APTTrafficMetricsMessageProcessed();
  }

  v87 = v9 == -6753 || v9 == -6723;
  DerivedStorage = v95;
  v1 = v96;
  if (v87)
  {
    goto LABEL_221;
  }

  APSLogErrorAt();
  v20 = 0;
LABEL_229:
  if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v20)
  {
    free(v20);
  }

LABEL_235:
  APSLogErrorAt();
  Mutable = 0;
LABEL_236:
  aprscreen_captureStop();
  v88 = *(DerivedStorage + 144);
  v89 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v89)
  {
    v89(v88);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v90 = CMBaseObjectGetDerivedStorage();
  if (*(v90 + 240))
  {
    FigSimpleMutexLock();
    if (*(v90 + 232))
    {
      NetSocket_Delete();
      *(v90 + 232) = 0;
    }

    FigSimpleMutexUnlock();
  }

  if (v9 && gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 152))
  {
    v91 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    FigCFDictionarySetInt32();
    (*(DerivedStorage + 152))(v3, @"SessionTerminated", v91, *(DerivedStorage + 160));
    CFRelease(v91);
  }

  v92 = *(v1 + 40);
  if (v92)
  {
    CFRelease(v92);
  }
}

@end