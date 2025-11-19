@interface VCMediaQueue
@end

@implementation VCMediaQueue

void ___VCMediaQueue_ReportingRegisterPeriodicTask_block_invoke(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    return;
  }

  valuePtr = *(a2 + 412);
  v5 = *MEMORY[0x1E695E480];
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQSchBytes", v6);
  CFRelease(v6);
  valuePtr = *(a2 + 416);
  v7 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQSchHeaderBytes", v7);
  CFRelease(v7);
  valuePtr = *(a2 + 420);
  v8 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQSchPkts", v8);
  CFRelease(v8);
  valuePtr = *(a2 + 424);
  v9 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQSentBytes", v9);
  CFRelease(v9);
  valuePtr = *(a2 + 428);
  v10 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQSentHeaderBytes", v10);
  CFRelease(v10);
  valuePtr = *(a2 + 436);
  v11 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQSentPkts", v11);
  CFRelease(v11);
  valuePtr = *(a2 + 440);
  v12 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQUnsentPkts", v12);
  CFRelease(v12);
  valuePtr = *(a2 + 432);
  v13 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQSavedBytes", v13);
  CFRelease(v13);
  valuePtr = *(a2 + 420) - *(a2 + 436);
  v14 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQSavedPkts", v14);
  CFRelease(v14);
  v15 = atomic_load((a2 + 512));
  valuePtr = v15;
  v16 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQIngressAudioPkts", v16);
  CFRelease(v16);
  v17 = atomic_load((a2 + 504));
  valuePtr = v17;
  v18 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQIngressVideoPkts", v18);
  CFRelease(v18);
  v19 = atomic_load((a2 + 520));
  valuePtr = v19;
  v20 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQIngressPkts", v20);
  CFRelease(v20);
  v21 = atomic_load((a2 + 528));
  valuePtr = v21;
  v22 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQIngressQueuedPkts", v22);
  CFRelease(v22);
  valuePtr = *(a2 + 536);
  v23 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQFlushedPkts", v23);
  CFRelease(v23);
  valuePtr = *(a2 + 552);
  v24 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQEgressAudioPkts", v24);
  CFRelease(v24);
  valuePtr = *(a2 + 544);
  v25 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQEgressVideoPkts", v25);
  CFRelease(v25);
  valuePtr = *(a2 + 560);
  v26 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQEgressPkts", v26);
  CFRelease(v26);
  valuePtr = *(a2 + 568);
  v27 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQEgressNonDupAudioPkts", v27);
  CFRelease(v27);
  valuePtr = *(a2 + 576);
  v28 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQEgressNonDupVideoPkts", v28);
  CFRelease(v28);
  valuePtr = *(a2 + 584);
  v29 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, @"VCMQEgressNonDupPkts", v29);
  CFRelease(v29);
  v30 = MEMORY[0x1E695E9D8];
  v31 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v33 = CFDictionaryCreateMutable(v5, 0, v30, v31);
  v34 = CFDictionaryCreateMutable(v5, 0, v30, v31);
  if (Mutable && v33)
  {
    v60 = a3;
    theDict = Mutable;
    v35 = atomic_load((a2 + 760));
    valuePtr = 0;
    if (v35 >= 1)
    {
      v36 = 0;
      v62 = 176 * v35;
      do
      {
        v37 = *(a2 + 624);
        v38 = v37 + v36;
        if (!(v37 + v36))
        {
          break;
        }

        v39 = v37 + 176 * *(a2 + 348);
        if (v38 < v39 && v38 >= v37)
        {
          v41 = v37 + v36;
          v42 = atomic_load((v37 + v36 + 97));
          if (v42)
          {
            v43 = 2;
          }

          else
          {
            v44 = atomic_load((v41 + 96));
            v43 = (v44 & 1) != 0 ? 3 : 1;
          }

          if (v41 + 176 <= v39)
          {
            continue;
          }
        }

        __break(0x5519u);
        v45 = v37 + v36;
        if (*(v37 + v36 + 156))
        {
          v46 = CFStringCreateWithFormat(v5, 0, @"%d", v43);
          v47 = *(v45 + 156);
          if (FigCFDictionaryGetInt32IfPresent())
          {
            v48 = valuePtr;
            if (v47 > valuePtr)
            {
              v48 = v47;
            }

            v63 = v48;
            v49 = CFNumberCreate(v5, kCFNumberIntType, &v63);
            v50 = theDict;
          }

          else
          {
            v63 = v47;
            v49 = CFNumberCreate(v5, kCFNumberIntType, &v63);
            v50 = v34;
          }

          CFDictionaryAddValue(v50, v46, v49);
          CFRelease(v49);
          if (v46)
          {
            CFRelease(v46);
          }
        }

        *(v45 + 156) = 0;
        if (*(v45 + 72))
        {
          v51 = CFStringCreateWithFormat(v5, 0, @"%d", v43);
          v52 = *(v45 + 72);
          if (v52)
          {
            v53 = (*(v37 + v36 + 56) / v52 * 1000.0);
          }

          else
          {
            v53 = 0;
          }

          if (FigCFDictionaryGetInt32IfPresent())
          {
            v54 = valuePtr;
            if (v53 > valuePtr)
            {
              v54 = v53;
            }

            v63 = v54;
          }

          else
          {
            v63 = v53;
          }

          v55 = CFNumberCreate(v5, kCFNumberIntType, &v63);
          CFDictionaryAddValue(v33, v51, v55);
          CFRelease(v55);
          v56 = (*(v37 + v36 + 64) * 1000.0);
          if (FigCFDictionaryGetInt32IfPresent())
          {
            v57 = valuePtr;
            if (valuePtr <= v56)
            {
              v57 = v56;
            }

            v63 = v57;
          }

          else
          {
            v63 = v56;
          }

          v58 = CFNumberCreate(v5, kCFNumberIntType, &v63);
          CFDictionaryAddValue(v34, v51, v58);
          CFRelease(v58);
          if (v51)
          {
            CFRelease(v51);
          }
        }

        v59 = v37 + v36;
        *(v59 + 56) = 0;
        *(v59 + 64) = 0;
        *(v59 + 72) = 0;
        v36 += 176;
      }

      while (v62 != v36);
    }

    Mutable = theDict;
    if (CFDictionaryGetCount(theDict) >= 1)
    {
      CFDictionaryAddValue(v60, @"VCMQFlushPerStream", theDict);
    }

    if (CFDictionaryGetCount(v33) >= 1)
    {
      CFDictionaryAddValue(v60, @"VCMQQSizePerStream", v33);
    }

    if (CFDictionaryGetCount(v34) >= 1)
    {
      CFDictionaryAddValue(v60, @"VCMQMaxQSizePerStream", v34);
    }
  }

  else
  {
    ___VCMediaQueue_ReportingRegisterPeriodicTask_block_invoke_cold_1();
    if (!Mutable)
    {
      goto LABEL_51;
    }
  }

  CFRelease(Mutable);
LABEL_51:
  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }
}

void ___VCMediaQueue_ReportingRegisterPeriodicTask_block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

@end