void __timesyncLogMeanIntervalApplier_unregisterClientAndDisposeClockIfNecessary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = --dword_1ED4CCF40;
  if (dword_1EAF1CF48 >= 2)
  {
    v9 = OUTLINED_FUNCTION_12_15(a1, a2, a3, a4, a5, a6, a7, a8, v52, v55, v58, v61, SBYTE2(v61), SBYTE3(v61), SHIDWORD(v61));
    v17 = OUTLINED_FUNCTION_17_10(v9, v10, v11, v12, v13, v14, v15, v16, v53, v56, v59, v62, v64, v66, v68);
    if (OUTLINED_FUNCTION_11_15(v17))
    {
      OUTLINED_FUNCTION_30_5();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_8_19();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_31_6();
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_27_8(v18, v19, v20, v21, v22, v23, v24, v25);
    v8 = dword_1ED4CCF40;
  }

  if (v8 <= 0)
  {
    if (qword_1ED4CCF48)
    {
      OUTLINED_FUNCTION_21_11();
      v27 = (*(v26 + 96))();
      if (dword_1EAF1CF48)
      {
        v35 = OUTLINED_FUNCTION_12_15(v27, v28, v29, v30, v31, v32, v33, v34, v52, v55, v58, v61, SBYTE2(v61), SBYTE3(v61), SHIDWORD(v61));
        v43 = OUTLINED_FUNCTION_17_10(v35, v36, v37, v38, v39, v40, v41, v42, v54, v57, v60, v63, v65, v67, v69);
        if (OUTLINED_FUNCTION_11_15(v43))
        {
          OUTLINED_FUNCTION_30_5();
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_8_19();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_31_6();
        }

        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_27_8(v44, v45, v46, v47, v48, v49, v50, v51);
      }

      (*(qword_1ED4CD068 + 40))(qword_1ED4CCF48);
      qword_1ED4CCF48 = 0;
      v8 = dword_1ED4CCF40;
    }

    if (v8 < 0)
    {
      dword_1ED4CCF40 = 0;
    }
  }
}

uint64_t fig8021ASClock_copyCFTypeRepresentationOfAddress(UInt8 *bytes, int a2, CFDataRef *a3)
{
  result = 4294954550;
  if (bytes && a3)
  {
    if (a2 == 30)
    {
      UInt32 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
      if (UInt32)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (a2 != 2)
      {
        v7 = 0;
        result = 4294954550;
        goto LABEL_10;
      }

      UInt32 = FigCFNumberCreateUInt32(*MEMORY[0x1E695E480], *bytes);
      if (UInt32)
      {
LABEL_6:
        v7 = UInt32;
        result = 0;
LABEL_10:
        *a3 = v7;
        return result;
      }
    }

    return 4294954549;
  }

  return result;
}

size_t fig8021ASClock_copyPortMetricsForPortIfValid(CFStringRef a1, uint64_t a2, CFTypeRef *a3)
{
  v169 = *MEMORY[0x1E69E9840];
  if (!*(qword_1ED4CD068 + 264))
  {
    return 4294951233;
  }

  v4 = v3;
  v8 = *MEMORY[0x1E695E480];
  UInt16 = FigCFNumberCreateUInt16(*MEMORY[0x1E695E480], a2);
  if (UInt16)
  {
    v10 = UInt16;
    bzero(&v136, 0x8AuLL);
    v11 = (*(qword_1ED4CD068 + 264))(a1[1].data, a2, &v136, 138, 0);
    if (v11)
    {
      OUTLINED_FUNCTION_4_30();
      v23 = 4294951233;
      v24 = 1945;
LABEL_5:
      v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v23, "<<<< 8021ASClock >>>>", v24, v20, v21, v22);
LABEL_6:
      v25 = v10;
LABEL_55:
      CFRelease(v25);
      return v4;
    }

    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v142), vceqzq_s64(v143))))) & 1) == 0 && !(v141 | v138 | v139 | v140 | v144) && !v137)
    {
      v4 = 0;
      goto LABEL_6;
    }

    if (dword_1EAF1CF48)
    {
      v26 = OUTLINED_FUNCTION_33_6(v11, v12, v13, v14, v15, v16, v17, v18, v111, v112, v113, v114, v117, v118, v120, v122, v124, v126, v127, cf, value, *v131, *&v131[4], v131[6], 0, 0);
      v27 = v134;
      v28 = os_log_type_enabled(v26, type);
      if (OUTLINED_FUNCTION_6_2(v28))
      {
        v145 = 136317954;
        v146 = "fig8021ASClock_copyPortMetricsForPortIfValid";
        v147 = 2048;
        v148 = v142.i64[1];
        v149 = 2048;
        v150 = v143.i64[0];
        v151 = 2048;
        v152 = v142.i64[0];
        v153 = 2048;
        v154 = v143.i64[1];
        v155 = 2048;
        v156 = v141;
        v157 = 2048;
        v158 = v138;
        v159 = 2048;
        v160 = v139;
        v161 = 2048;
        v162 = v140;
        v163 = 1024;
        v164 = v136;
        v165 = 2048;
        v166 = v144;
        v167 = 2048;
        v168 = v137;
        LODWORD(v112) = 118;
        v111 = &v145;
        OUTLINED_FUNCTION_6_3();
        OUTLINED_FUNCTION_29_6();
        v27 = v134;
      }

      OUTLINED_FUNCTION_1_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v29, v30, v31, v32, v33, v27, 0, v34);
    }

    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      OUTLINED_FUNCTION_4_30();
      v23 = 4294951231;
      v24 = 1954;
      goto LABEL_5;
    }

    v36 = Mutable;
    valuea = FigCFNumberCreateUInt64(v8, v142.i64[1]);
    if (!valuea)
    {
      OUTLINED_FUNCTION_4_30();
      v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7A6, v69, v70, v71);
      CFRelease(v36);
      goto LABEL_6;
    }

    UInt64 = FigCFNumberCreateUInt64(v8, v143.i64[0]);
    if (UInt64)
    {
      v125 = FigCFNumberCreateUInt64(v8, v142.i64[0]);
      if (v125)
      {
        v123 = FigCFNumberCreateUInt64(v8, v143.i64[1]);
        if (v123)
        {
          v121 = FigCFNumberCreateUInt64(v8, v141);
          if (v121)
          {
            v119 = FigCFNumberCreateUInt64(v8, v138);
            if (v119)
            {
              cf = FigCFNumberCreateUInt64(v8, v139);
              if (cf)
              {
                v127 = FigCFNumberCreateUInt64(v8, v140);
                if (v127)
                {
                  v126 = FigCFNumberCreateUInt64(v8, v144);
                  if (v126)
                  {
                    v38 = FigCFNumberCreateUInt64(v8, v137);
                    if (v38)
                    {
                      v39 = v38;
                      a1 = CFUUIDCreateString(v8, a1[3].data);
                      v117 = v39;
                      if (a1)
                      {
                        CFDictionarySetValue(v36, @"DiscardedDelayLimitExceededPercentage", valuea);
                        CFDictionarySetValue(v36, @"DiscardedOutOfBoundsPercentage", UInt64);
                        CFDictionarySetValue(v36, @"DiscardedPpmLimitPercentage", v125);
                        CFDictionarySetValue(v36, @"DiscardedTimestampsOutOfOrderPercentage", v123);
                        CFDictionarySetValue(v36, @"DroppedPercentage", v121);
                        CFDictionarySetValue(v36, @"FilterResetsDroppedLimit", v119);
                        CFDictionarySetValue(v36, @"FilterResetsOutOfBounds", cf);
                        CFDictionarySetValue(v36, @"MeanDelayTime", v127);
                        CFDictionarySetValue(v36, @"SuccessfulPercentage", v126);
                        CFDictionarySetValue(v36, @"SyncTimeouts", v39);
                        CFDictionarySetValue(v36, @"ClockUUID", a1);
                        Copy = CFDictionaryCreateCopy(v8, v36);
                        if (Copy)
                        {
                          v48 = Copy;
                          if (dword_1EAF1CF48 >= 2)
                          {
                            v115 = UInt64;
                            v49 = v10;
                            v50 = OUTLINED_FUNCTION_33_6(Copy, v41, v42, v43, v44, v45, v46, v47, v111, v112, v113, v115, v39, v119, v121, v123, v125, v126, v127, cf, valuea, *v131, *&v131[4], v131[6], 0, 0);
                            v51 = v135;
                            if (os_log_type_enabled(v50, typea))
                            {
                              v52 = v135;
                            }

                            else
                            {
                              v52 = v135 & 0xFFFFFFFE;
                            }

                            if (v52)
                            {
                              v145 = 136315394;
                              v146 = "fig8021ASClock_copyPortMetricsForPortIfValid";
                              v147 = 2112;
                              v148 = v48;
                              OUTLINED_FUNCTION_8_19();
                              _os_log_send_and_compose_impl();
                              v51 = v135;
                            }

                            OUTLINED_FUNCTION_1_1();
                            fig_log_call_emit_and_clean_up_after_send_and_compose(v53, v54, v55, v56, v57, v51, 0, v58);
                            v10 = v49;
                            UInt64 = v116;
                          }

                          *a3 = CFRetain(v48);
                          CFRelease(v36);
                          CFRelease(v48);
                          CFRelease(valuea);
                          v4 = 0;
                          v60 = v123;
                          v59 = v125;
                          v62 = v119;
                          v61 = v121;
LABEL_36:
                          CFRelease(UInt64);
LABEL_37:
                          if (v59)
                          {
                            CFRelease(v59);
                          }

                          if (v60)
                          {
                            CFRelease(v60);
                          }

                          if (v61)
                          {
                            CFRelease(v61);
                          }

                          if (v62)
                          {
                            CFRelease(v62);
                          }

                          if (cf)
                          {
                            CFRelease(cf);
                          }

                          if (v127)
                          {
                            CFRelease(v127);
                          }

                          if (v126)
                          {
                            CFRelease(v126);
                          }

                          if (v117)
                          {
                            CFRelease(v117);
                          }

                          CFRelease(v10);
                          if (!a1)
                          {
                            return v4;
                          }

                          v25 = a1;
                          goto LABEL_55;
                        }

                        OUTLINED_FUNCTION_4_30();
                        v109 = 4294951231;
                        v110 = 2005;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_4_30();
                        v109 = 4294951233;
                        v110 = 1988;
                      }

                      v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v105, v109, "<<<< 8021ASClock >>>>", v110, v106, v107, v108);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_4_30();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v101, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7C1, v102, v103, v104);
                      OUTLINED_FUNCTION_7_21();
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_4_30();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7BE, v98, v99, v100);
                    OUTLINED_FUNCTION_7_21();
                    v126 = 0;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_4_30();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v93, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7BB, v94, v95, v96);
                  OUTLINED_FUNCTION_7_21();
                  v126 = 0;
                  v127 = 0;
                }
              }

              else
              {
                OUTLINED_FUNCTION_4_30();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v89, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7B8, v90, v91, v92);
                OUTLINED_FUNCTION_5_31();
              }

              v60 = v123;
              v59 = v125;
              v62 = v119;
              v61 = v121;
            }

            else
            {
              OUTLINED_FUNCTION_4_30();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7B5, v86, v87, v88);
              OUTLINED_FUNCTION_5_31();
              v62 = 0;
              v60 = v123;
              v59 = v125;
              v61 = v121;
            }
          }

          else
          {
            OUTLINED_FUNCTION_4_30();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7B2, v82, v83, v84);
            OUTLINED_FUNCTION_5_31();
            v62 = 0;
            v61 = 0;
            v60 = v123;
            v59 = v125;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4_30();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x7AF, v78, v79, v80);
          OUTLINED_FUNCTION_5_31();
          v62 = 0;
          v61 = 0;
          v60 = 0;
          v59 = v125;
        }

LABEL_77:
        CFRelease(v36);
        CFRelease(valuea);
        if (!UInt64)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_4_30();
      v76 = 1964;
    }

    else
    {
      OUTLINED_FUNCTION_4_30();
      v76 = 1961;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", v76, v73, v74, v75);
    OUTLINED_FUNCTION_5_31();
    v62 = 0;
    v61 = 0;
    v60 = 0;
    v59 = 0;
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_4_30();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x794, v65, v66, v67);
}

void __timesyncLogMeanIntervalApplier_registerClientAndEnsureClockStarted_block_invoke()
{
  qword_1ED4CCF30 = FigDispatchQueueCreateWithPriority("com.apple.coremedia.8021as.gLogMeanIntervalApplier.applierQueue", 0, 39);
  if (qword_1ED4CCF30)
  {
    byte_1ED4CCF38 = -3;
    *&dword_1ED4CCF3C = 0xFFFFFFFFLL;
    word_1ED4CCF50 = 0;
    if (dword_1EAF1CF48)
    {
      v7 = OUTLINED_FUNCTION_12_3(qword_1EAF1CF40, v0, v1, v2, v3, v4, v5, v6, v24, v26, v28, *v30, v30[2], 0, 0);
      v15 = OUTLINED_FUNCTION_17_10(v7, v8, v9, v10, v11, v12, v13, v14, v25, v27, v29, v31, v32, type, v34);
      if (OUTLINED_FUNCTION_11_15(v15))
      {
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_8_19();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_31_6();
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_27_8(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }
}

void timesyncLogMeanIntervalApplier_registerClientAndEnsureClockStartedInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ++dword_1ED4CCF40;
  if (dword_1EAF1CF48 >= 2)
  {
    v9 = OUTLINED_FUNCTION_12_15(a1, a2, a3, a4, a5, a6, a7, a8, v57, v60, v63, v66, SBYTE2(v66), SBYTE3(v66), SHIDWORD(v66));
    v17 = OUTLINED_FUNCTION_5_2(v9, v10, v11, v12, v13, v14, v15, v16, v58, v61, v64, v67, v69, v71, v73);
    if (OUTLINED_FUNCTION_6_2(v17))
    {
      OUTLINED_FUNCTION_30_5();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_29_6();
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_34_4(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  if (!qword_1ED4CCF48)
  {
    if ((*(qword_1ED4CD068 + 88))() == **qword_1ED4CD068)
    {
      v28 = qword_1EAF1CF40;
      v29 = v8;
      v30 = 1358;
LABEL_13:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFC144uLL, "<<<< 8021ASClock >>>>", v30, v29, v26, v27);
      return;
    }

    v31 = (*(qword_1ED4CD068 + 32))();
    qword_1ED4CCF48 = v31;
    if (!v31)
    {
      v28 = qword_1EAF1CF40;
      v29 = v8;
      v30 = 1364;
      goto LABEL_13;
    }

    v32 = (*(qword_1ED4CD068 + 96))(v31, timesyncLogMeanIntervalApplier_lockStateChangedCallback, v31);
    byte_1ED4CCF38 = -3;
    dword_1ED4CCF3C = -1;
    if (dword_1EAF1CF48)
    {
      v40 = OUTLINED_FUNCTION_12_15(v32, v33, v34, v35, v36, v37, v38, v39, v57, v60, v63, v66, SBYTE2(v66), SBYTE3(v66), SHIDWORD(v66));
      v48 = OUTLINED_FUNCTION_17_10(v40, v41, v42, v43, v44, v45, v46, v47, v59, v62, v65, v68, v70, v72, v74);
      if (OUTLINED_FUNCTION_11_15(v48))
      {
        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_8_19();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_31_6();
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_27_8(v49, v50, v51, v52, v53, v54, v55, v56);
    }
  }
}

void __timesyncLogMeanIntervalApplier_lockStateChangedCallback_block_invoke(uint64_t a1)
{
  if (qword_1ED4CCF48 && *(a1 + 32) == qword_1ED4CCF48)
  {
    if (dword_1EAF1CF48)
    {
      v2 = OUTLINED_FUNCTION_32_6();
      v10 = OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6, v7, v8, v9, v27, v29, v31, *v33, v33[2], 0, 0);
      v18 = OUTLINED_FUNCTION_5_2(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v32, v34, v35, type, v37);
      if (OUTLINED_FUNCTION_6_2(v18))
      {
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_6_3();
        OUTLINED_FUNCTION_29_6();
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_34_4(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    if (dword_1ED4CCF3C != *(a1 + 48))
    {
      dword_1ED4CCF3C = *(a1 + 48);
      timesyncLogMeanIntervalApplier_restartIntervalApplierInternal();
    }
  }
}

void timesyncLogMeanIntervalApplier_applyIntervalInternal(uint64_t MatchingService, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v106 = *MEMORY[0x1E69E9840];
  v8 = &sVCCPreallocationSaveToSymlinkCString[720];
  if (!qword_1ED4CCF48)
  {
    goto LABEL_66;
  }

  v9 = byte_1ED4CCF38;
  if (dword_1ED4CCF3C != 2)
  {
    v9 = -3;
  }

  LODWORD(v89) = v9;
  if (dword_1EAF1CF48)
  {
    v10 = OUTLINED_FUNCTION_26_8(MatchingService, a2, a3, a4, a5, a6, a7, a8, v85, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, type, iterator);
    v11 = os_log_type_enabled(v10, type);
    if (OUTLINED_FUNCTION_6_2(v11))
    {
      v12 = "not locked";
      if (dword_1ED4CCF3C == 2)
      {
        v12 = "locked";
      }

      v93 = 136316418;
      v94 = "timesyncLogMeanIntervalApplier_applyIntervalInternal";
      v95 = 2048;
      v96 = qword_1ED4CCF48;
      v97 = 2080;
      v98 = v12;
      v99 = 1024;
      v100 = dword_1ED4CCF3C;
      v101 = 1024;
      v102 = v89;
      v103 = 1024;
      v104 = word_1ED4CCF50;
      OUTLINED_FUNCTION_5_12();
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_29_6();
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_34_4(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v21 = dword_1ED4CCF54;
  if (!dword_1ED4CCF54)
  {
    (*(qword_1ED4CD068 + 232))(qword_1ED4CCF48, v89);
    MatchingService = MEMORY[0x19A8D85F0](*MEMORY[0x1E69E9A60], &dword_1ED4CCF54);
    if (MatchingService)
    {
      goto LABEL_66;
    }

    v21 = dword_1ED4CCF54;
  }

  v22 = IOServiceMatching("IOTimeSyncgPTPManager");
  MatchingService = IOServiceGetMatchingService(v21, v22);
  if (MatchingService)
  {
    v23 = MatchingService;
    iterator = 0;
    v24 = *MEMORY[0x1E695E480];
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"SystemDomainIdentifier", *MEMORY[0x1E695E480], 0);
    MEMORY[0x19A8D8680](v23, "IOService", &iterator);
    v26 = 0;
    if (iterator && CFProperty)
    {
      v27 = IOIteratorNext(iterator);
      if (v27)
      {
        v29 = v27;
        v26 = 0;
        *&v28 = 136315394;
        v88 = v28;
        *&v28 = 136315650;
        v87 = v28;
        while (!IOObjectConformsTo(v29, "IOTimeSyncDomain"))
        {
LABEL_50:
          IOObjectRelease(v29);
          v29 = IOIteratorNext(iterator);
          if (!v29)
          {
            goto LABEL_55;
          }
        }

        v30 = IORegistryEntryCreateCFProperty(v29, @"ClockIdentifier", v24, 0);
        if (!FigCFEqual(v30, CFProperty))
        {
          goto LABEL_48;
        }

        v31 = IORegistryEntryCreateCFProperty(v29, @"GrandmasterID", v24, 0);
        v32 = FigCFEqual(CFProperty, v31);
        if (v32 && dword_1ED4CCF3C == 2)
        {
          if (*(v8 + 978))
          {
            v40 = OUTLINED_FUNCTION_15_14(v32, v33, v34, v35, v36, v37, v38, v39, v85, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, SWORD2(v89), SBYTE6(v89), SHIBYTE(v89), type);
            v41 = type;
            if (os_log_type_enabled(v40, HIBYTE(v89)))
            {
              v42 = type;
            }

            else
            {
              v42 = type & 0xFFFFFFFE;
            }

            if (v42)
            {
              v93 = v88;
              OUTLINED_FUNCTION_18_12();
              OUTLINED_FUNCTION_5_12();
              OUTLINED_FUNCTION_6_3();
              _os_log_send_and_compose_impl();
              v41 = type;
            }

            v59 = OUTLINED_FUNCTION_32_6();
            v62 = v60 != &v105;
            v26 = 1;
            v63 = 1;
            v64 = 1;
            v65 = v41;
            goto LABEL_45;
          }

          v26 = 1;
          if (!v31)
          {
LABEL_48:
            if (v30)
            {
              CFRelease(v30);
            }

            goto LABEL_50;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_11();
          v44 = (*(v43 + 240))(v29, v89);
          v52 = *(v8 + 978);
          if (v44)
          {
            v26 = v44;
            if (!v52)
            {
              goto LABEL_46;
            }

            v53 = OUTLINED_FUNCTION_15_14(v44, v45, v46, v47, v48, v49, v50, v51, v85, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, SWORD2(v89), SBYTE6(v89), SHIBYTE(v89), type);
            v54 = type;
            if (os_log_type_enabled(v53, HIBYTE(v89)))
            {
              v55 = type;
            }

            else
            {
              v55 = type & 0xFFFFFFFE;
            }

            if (v55)
            {
              v93 = v88;
              OUTLINED_FUNCTION_18_12();
              OUTLINED_FUNCTION_5_12();
              OUTLINED_FUNCTION_6_3();
              _os_log_send_and_compose_impl();
              v54 = type;
            }

            OUTLINED_FUNCTION_32_6();
            OUTLINED_FUNCTION_1_1();
            v65 = v54;
LABEL_45:
            fig_log_call_emit_and_clean_up_after_send_and_compose(v59, v63, v64, v60, v62, v65, 0, v61);
            v8 = sVCCPreallocationSaveToSymlinkCString + 720;
LABEL_46:
            if (!v31)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          if (v52)
          {
            v56 = OUTLINED_FUNCTION_15_14(v44, v45, v46, v47, v48, v49, v50, v51, v85, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, SWORD2(v89), SBYTE6(v89), SHIBYTE(v89), type);
            v57 = type;
            if (os_log_type_enabled(v56, HIBYTE(v89)))
            {
              v58 = type;
            }

            else
            {
              v58 = type & 0xFFFFFFFE;
            }

            if (v58)
            {
              v93 = v87;
              OUTLINED_FUNCTION_18_12();
              v97 = 1024;
              LODWORD(v98) = v89;
              OUTLINED_FUNCTION_5_12();
              OUTLINED_FUNCTION_6_3();
              _os_log_send_and_compose_impl();
              v57 = type;
            }

            OUTLINED_FUNCTION_1_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose(v66, v67, v68, v69, v70, v57, 0, v71);
            v8 = sVCCPreallocationSaveToSymlinkCString + 720;
          }

          (*(qword_1ED4CD068 + 232))(qword_1ED4CCF48, v89);
          v26 = 0;
          if (!v31)
          {
            goto LABEL_48;
          }
        }

LABEL_47:
        CFRelease(v31);
        goto LABEL_48;
      }

      v26 = 0;
    }

    else
    {
LABEL_55:
      if (!CFProperty)
      {
        goto LABEL_60;
      }
    }

    CFRelease(CFProperty);
LABEL_60:
    if (iterator)
    {
      IOObjectRelease(iterator);
    }

    MatchingService = IOObjectRelease(v23);
    goto LABEL_63;
  }

  v26 = 0;
LABEL_63:
  v72 = --word_1ED4CCF50;
  if (v26 || v72 < 1)
  {
    goto LABEL_67;
  }

  v73 = dispatch_time(0, 1000000000);
  dispatch_after_f(v73, qword_1ED4CCF30, 0, timesyncLogMeanIntervalApplier_applyIntervalInternal);
LABEL_66:
  v26 = 0;
LABEL_67:
  if (v26 || (qword_1ED4CCF48 ? (v74 = word_1ED4CCF50 <= 0) : (v74 = 1), v74))
  {
    if (*(v8 + 978) >= 2u)
    {
      v75 = OUTLINED_FUNCTION_26_8(MatchingService, a2, a3, a4, a5, a6, a7, a8, v85, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, type, iterator);
      v76 = os_log_type_enabled(v75, typea);
      if (OUTLINED_FUNCTION_11_15(v76))
      {
        v93 = 136315138;
        v94 = "timesyncLogMeanIntervalApplier_applyIntervalInternal";
        OUTLINED_FUNCTION_5_12();
        OUTLINED_FUNCTION_8_19();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_27_8(v77, v78, v79, v80, v81, v82, v83, v84);
    }

    word_1ED4CCF50 = 0;
    if (dword_1ED4CCF54)
    {
      IOObjectRelease(dword_1ED4CCF54);
      dword_1ED4CCF54 = 0;
    }
  }
}

void __timesyncLogMeanIntervalApplier_setIntervalAndApplyIfDifferent_block_invoke(uint64_t a1)
{
  if (qword_1ED4CCF48)
  {
    if (dword_1EAF1CF48)
    {
      v2 = OUTLINED_FUNCTION_32_6();
      v10 = OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6, v7, v8, v9, v27, v29, v31, *v33, v33[2], 0, 0);
      v18 = OUTLINED_FUNCTION_5_2(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v32, v34, v35, type, v37);
      if (OUTLINED_FUNCTION_6_2(v18))
      {
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_6_3();
        OUTLINED_FUNCTION_29_6();
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_34_4(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    if (byte_1ED4CCF38 != *(a1 + 32))
    {
      byte_1ED4CCF38 = *(a1 + 32);
      timesyncLogMeanIntervalApplier_restartIntervalApplierInternal();
    }
  }
}

void __fig8021ASClock_getMetricsForClockAndAllPorts_block_invoke(uint64_t a1, uint64_t a2, const __CFNumber *a3)
{
  v9 = 0;
  v5 = *(a1 + 32);
  UInt16 = FigCFNumberGetUInt16(a3);
  fig8021ASClock_copyPortMetricsForPortIfValid(v5, UInt16, &v9);
  v7 = *(*(a1 + 32) + 104);
  v8 = v9;
  FigCFDictionarySetValue(v7, a3, v9);
  if (v8)
  {

    CFRelease(v8);
  }
}

size_t CM8021ASClockAddIPv4Port_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x30B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CM8021ASClockAddIPv6Port_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x381, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CM8021ASClockAddAWDLPort_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x3EF, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CM8021ASClockRemoveAWDLPort_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x3FE, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CM8021ASClockOverridePortReceiveMatching_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x412, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CM8021ASClockRestorePortReceiveMatching_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x424, v8, a7, a8);
  *a1 = result;
  return result;
}

BOOL CM8021ASClockEnablePort_cold_2(os_unfair_lock_s **a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x43D, v8, a7, a8);
  FigSimpleMutexUnlock(*a1);
  return a2 == 0;
}

size_t CM8021ASClockEnablePort_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE35uLL, "<<<< 8021ASClock >>>>", 0x442, v8, a7, a8);
  *a1 = result;
  return result;
}

BOOL CM8021ASClockDisablePort_cold_2(os_unfair_lock_s **a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x463, v8, a7, a8);
  FigSimpleMutexUnlock(*a1);
  return a2 == 0;
}

size_t CM8021ASClockDisablePort_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE35uLL, "<<<< 8021ASClock >>>>", 0x46A, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CM8021ASClockSetAllPortRemoteSyncMessageIntervals_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x61A, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CM8021ASClockSetAllPortRemoteSyncMessageIntervals_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x619, v8, a7, a8);
  *a1 = result;
  return result;
}

BOOL CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_2(os_unfair_lock_s **a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x64F, v8, a7, a8);
  FigSimpleMutexUnlock(*a1);
  return a2 == 0;
}

size_t CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE2CuLL, "<<<< 8021ASClock >>>>", 0x655, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE35uLL, "<<<< 8021ASClock >>>>", 0x658, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x651, v8, a7, a8);
  *a1 = result;
  return result;
}

uint64_t ftd_PostEvent(const void *a1, int *a2, int a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *buffer = 0u;
  v22 = 0u;
  usedBufLen = 0;
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294955254;
    }

    v9 = Mutable;
    CFDictionarySetValue(Mutable, @"deviceID", *(a4 + 32));
    CFDictionarySetValue(v9, @"deviceRef", *(a4 + 16));
    usedBufLen = 0;
    Length = CFStringGetLength(*(a4 + 32));
    if (Length >= 8)
    {
      v11.length = 8;
    }

    else
    {
      v11.length = Length;
    }

    v11.location = 0;
    CFStringGetBytes(*(a4 + 32), v11, 0x8000100u, 0, 0, buffer, 128, &usedBufLen);
    buffer[usedBufLen] = 0;
    v12 = CFStringCreateWithCString(0, buffer, 0x8000100u);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(v9, @"deviceName", v12);
      CFRelease(v13);
    }
  }

  else
  {
    v9 = 0;
  }

  CFRetain(a1);
  v14 = *a2;
  v15 = *(a2 + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ftd_PostEvent_block_invoke;
  block[3] = &__block_descriptor_tmp_43;
  block[4] = a1;
  block[5] = a2;
  v18 = v14;
  v19 = a3;
  block[6] = v9;
  dispatch_async(v15, block);
  return 0;
}

void CFDictionarySetInt64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a3 == a3)
  {
    v11 = a3;
    p_valuePtr = &v11;
    v6 = kCFNumberSInt8Type;
  }

  else
  {
    p_valuePtr = &valuePtr;
    v6 = kCFNumberSInt64Type;
  }

  v7 = CFNumberCreate(0, v6, p_valuePtr);
  if (v7)
  {
    v8 = v7;
    CFDictionarySetValue(a1, a2, v7);
    CFRelease(v8);
  }
}

uint64_t ftd_PostEventOnAllHandlers_cold_1(CFArrayRef *a1, const void *a2, int a3, uint64_t a4)
{
  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, v8);
    result = ftd_PostEvent(a2, ValueAtIndex, a3, a4);
    if (result)
    {
      break;
    }

    ++v8;
    result = CFArrayGetCount(*a1);
  }

  while (result > v8);
  return result;
}

uint64_t FigTransportCreateCFNumberFromRemoteObjectRef(uint64_t a1, uint64_t a2, CFNumberRef *a3)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v4)
  {
    return 4294955266;
  }

  v5 = v4;
  result = 0;
  *a3 = v5;
  return result;
}

uint64_t FigTransportGetRemoteObjectRefFromCFNumber(const void *a1, void *a2)
{
  if (!a1)
  {
    return 4294955259;
  }

  v4 = CFGetTypeID(a1);
  v5 = 4294955259;
  if (v4 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(a1, kCFNumberSInt64Type, a2))
    {
      return 0;
    }

    else
    {
      return 4294955259;
    }
  }

  return v5;
}

uint64_t FigTransportCreateCFNumberFromLocalObjectRef(uint64_t a1, uint64_t a2, CFNumberRef *a3)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v4)
  {
    return 4294955266;
  }

  v5 = v4;
  result = 0;
  *a3 = v5;
  return result;
}

uint64_t FigTransportGetLocalObjectRefFromCFNumber(const void *a1, void *a2)
{
  valuePtr = 0;
  if (!a1)
  {
    return 4294955259;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID() || !CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr))
  {
    return 4294955259;
  }

  result = 0;
  *a2 = valuePtr;
  return result;
}

uint64_t FigJSONObjectCreateWithData(uint64_t a1, unsigned int a2, CFTypeRef *a3)
{
  err = 0;
  v3 = 4294949992;
  if (a1 && a3)
  {
    Class = objc_getClass("NSJSONSerialization");
    if (Class && (v8 = Class, (v9 = sel_registerName("JSONObjectWithData:options:error:")) != 0))
    {
      v10 = v9;
      v11 = a2;
      v12 = objc_autoreleasePoolPush();
      v13 = [v8 v10];
      if (v13)
      {
        v3 = 0;
        *a3 = CFRetain(v13);
      }

      else
      {
        v3 = 4294949991;
        if (err)
        {
          Code = CFErrorGetCode(err);
          if (Code == Code)
          {
            v3 = Code;
          }

          else
          {
            v3 = 4294949991;
          }
        }
      }

      if (v12)
      {
        objc_autoreleasePoolPop(v12);
      }
    }

    else
    {
      return 4294949991;
    }
  }

  return v3;
}

id FigIsValidJSONObject(uint64_t a1)
{
  Class = objc_getClass("NSJSONSerialization");
  if (!Class)
  {
    return 0;
  }

  v3 = Class;
  v4 = sel_registerName("isValidJSONObject:");
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = [v3 v5];
  if (v6)
  {
    objc_autoreleasePoolPop(v6);
  }

  return v7;
}

uint64_t FigCFDataCreateWithJSONObject(uint64_t a1, unsigned int a2, CFTypeRef *a3)
{
  err = 0;
  if ((a2 & 0x3000000) != 0)
  {
    return 4294949992;
  }

  v4 = 4294949992;
  if (a1 && a3)
  {
    Class = objc_getClass("NSJSONSerialization");
    if (Class && (v8 = Class, (v9 = sel_registerName("dataWithJSONObject:options:error:")) != 0))
    {
      v10 = v9;
      v11 = objc_autoreleasePoolPush();
      v12 = [v8 v10];
      if (v12)
      {
        v4 = 0;
        *a3 = CFRetain(v12);
      }

      else
      {
        v4 = 4294949991;
        if (err)
        {
          Code = CFErrorGetCode(err);
          if (Code == Code)
          {
            v4 = Code;
          }

          else
          {
            v4 = 4294949991;
          }
        }
      }

      if (v11)
      {
        objc_autoreleasePoolPop(v11);
      }
    }

    else
    {
      return 4294949991;
    }
  }

  return v4;
}

size_t _createByteStreamWithIOSurface(uint64_t a1, IOSurfaceRef buffer, size_t a3, int a4, char a5, uint64_t a6, CFTypeRef *a7)
{
  cf = 0;
  v7 = a4 == 0;
  if (a6)
  {
    OUTLINED_FUNCTION_0_22();
    v31 = 302;
  }

  else if (buffer)
  {
    v11 = a4;
    if (IOSurfaceGetAllocSize(buffer) >= a3)
    {
      if (IOSurfaceLock(buffer, v7, 0))
      {
        return 4294954422;
      }

      ClassID = CMByteStreamGetClassID();
      v19 = CMDerivedObjectCreate(a1, &kFigIOSurfaceByteStreamVTable, ClassID, &cf, v15, v16, v17, v18);
      if (v19)
      {
        v22 = v19;
        IOSurfaceUnlock(buffer, v7, 0);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
        v21 = CFRetain(buffer);
        *DerivedStorage = v21;
        *(DerivedStorage + 8) = a3;
        if (a5)
        {
          *(DerivedStorage + 8) = IOSurfaceGetAllocSize(buffer);
          v21 = *DerivedStorage;
        }

        *(DerivedStorage + 16) = v11;
        IOSurfaceIncrementUseCount(v21);
        v22 = 0;
        *a7 = cf;
      }

      return v22;
    }

    OUTLINED_FUNCTION_0_22();
    v31 = 304;
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    v31 = 303;
  }

  return FigSignalErrorAtGM(v24, v25, v26, v27, v31, v28, v29, v30);
}

size_t FigIOSurfaceByteStreamRead(uint64_t a1, size_t a2, uint64_t a3, void *a4, size_t *a5)
{
  CMBaseObject = CMByteStreamGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(CMBaseObject);
  if (a2)
  {
    if (a3 < 0)
    {
      OUTLINED_FUNCTION_0_22();
      result = FigSignalErrorAtGM(v16, v17, v18, v19, 0x6B, v20, v21, v22);
      a2 = 0;
      if (!a5)
      {
        return result;
      }

      goto LABEL_8;
    }

    v11 = *(DerivedStorage + 8);
    v12 = v11 <= a3;
    v13 = v11 - a3;
    if (v12)
    {
      return 4294954423;
    }

    if (v13 < a2)
    {
      a2 = v13;
    }

    BaseAddress = IOSurfaceGetBaseAddress(*DerivedStorage);
    memcpy(a4, &BaseAddress[a3], a2);
  }

  result = 0;
  if (!a5)
  {
    return result;
  }

LABEL_8:
  if (!result)
  {
    *a5 = a2;
  }

  return result;
}

size_t FigIOSurfaceByteStreamWrite(uint64_t a1, size_t a2, uint64_t a3, const void *a4, size_t *a5)
{
  CMBaseObject = CMByteStreamGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(CMBaseObject);
  if (!*(DerivedStorage + 16))
  {
    v19 = v5;
    v20 = "%s signalled err=%d at <>:%d";
    v21 = "(Fig)";
    v22 = 0;
    v23 = 4294954419;
    v24 = 134;
LABEL_18:
    result = FigSignalErrorAtGM(v20, v22, v23, v21, v24, v19, v12, v13);
    goto LABEL_11;
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_0_22();
    v24 = 135;
    goto LABEL_18;
  }

  if (a3 < 0)
  {
    OUTLINED_FUNCTION_0_22();
    v24 = 136;
    goto LABEL_18;
  }

  if (a2)
  {
    v14 = DerivedStorage;
    AllocSize = IOSurfaceGetAllocSize(*DerivedStorage);
    if ((AllocSize - a3) < 1)
    {
      return 4294954423;
    }

    if (AllocSize - a3 < a2)
    {
      a2 = AllocSize - a3;
    }

    BaseAddress = IOSurfaceGetBaseAddress(*v14);
    memcpy(&BaseAddress[a3], a4, a2);
    result = 0;
    v18 = *(v14 + 8);
    if (v18 <= a2 + a3)
    {
      v18 = a2 + a3;
    }

    *(v14 + 8) = v18;
  }

  else
  {
    result = 0;
  }

LABEL_11:
  if (a5)
  {
    if (!result)
    {
      *a5 = a2;
    }
  }

  return result;
}

size_t FigIOSurfaceByteStreamSetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xDE, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigIOSurfaceByteStreamSetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xE3, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigIOSurfaceByteStreamSetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xE8, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigIOSurfaceByteStreamGetAvailableLengthAtOffset_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xFA, v6, v7, v8);
  *a1 = result;
  return result;
}

BOOL fcpos_Equal(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    OUTLINED_FUNCTION_0_78(&sRegisterFigCaptionPositionTypeOnce);
    result = 0;
    if (a2)
    {
      if (v4 == sFigCaptionPositionID)
      {
        v5 = CFGetTypeID(a2);
        OUTLINED_FUNCTION_0_78(&sRegisterFigCaptionPositionTypeOnce);
        if (v5 == sFigCaptionPositionID && *(v3 + 16) == *(a2 + 16) && *(v3 + 20) == *(a2 + 20))
        {
          result = FigGeometryDimensionEqualToDimension(*(v3 + 24), *(v3 + 32), *(a2 + 24), *(a2 + 32));
          if (result)
          {
            return FigGeometryDimensionEqualToDimension(*(v3 + 40), *(v3 + 48), *(a2 + 40), *(a2 + 48));
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

const void *fcpos_Hash(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    OUTLINED_FUNCTION_0_78(&sRegisterFigCaptionPositionTypeOnce);
    if (v2 == sFigCaptionPositionID)
    {
      v3 = (*(v1 + 5) ^ *(v1 + 4));
      v4 = FigGeometryDimensionHash(*(v1 + 3), *(v1 + 4));
      return (v4 ^ FigGeometryDimensionHash(*(v1 + 5), *(v1 + 6)) ^ v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t FigCaptionPositionCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0x451, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigEndpointPlaybackSessionXPCRemoteCreateWithObjectID(const void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = remoteXPCEndpointPlaybackSessionClient_EnsureClientEstablished();
      if (result)
      {
        return result;
      }

      v25 = 0;
      v5 = *MEMORY[0x1E695E480];
      ClassID = FigEndpointPlaybackSessionGetClassID();
      result = CMDerivedObjectCreate(v5, &kFigEndpointPlaybackSessionRemoteXPC_EndpointPlaybackSessionVTable, ClassID, &v25, v7, v8, v9, v10);
      if (result)
      {
        goto LABEL_8;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage(v25);
      DerivedStorage[1] = a1;
      DerivedStorage[7] = 1;
      v24.version = 0;
      v24.retain = remoteXPCEndpointPlaybackSession_cloneCompletionCallback;
      v24.release = remoteXPCEndpointPlaybackSession_freeCompletionCallback;
      v24.copyDescription = 0;
      v24.equal = 0;
      v12 = CFDictionaryCreateMutable(v5, 0, 0, &v24);
      DerivedStorage[3] = v12;
      if (v12)
      {
        v13 = dispatch_queue_create("com.apple.coremedia.endpointplaybacksession.callbacks", 0);
        DerivedStorage[2] = v13;
        if (v13)
        {
          FigXPCRemoteClientAssociateObject(gFigEndpointPlaybackSessionRemoteClient, v25, a1);
          result = 0;
LABEL_8:
          *a2 = v25;
          return result;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v23 = 1285;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v23 = 1282;
      }

      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFBE9BuLL, "<< FigEndpointPlaybackSessionXPCRemote >>", v23, v20, v21, v22);
      goto LABEL_8;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v18 = 1323;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v18 = 1321;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE14uLL, "<< FigEndpointPlaybackSessionXPCRemote >>", v18, v15, v16, v17);
}

uint64_t remoteXPCEndpointPlaybackSessionClient_HandleClientMessage(uint64_t a1, void *a2)
{
  HIDWORD(v48) = 0;
  result = FigXPCMessageGetOpCode(a2, &v48 + 1);
  if (!result)
  {
    if (HIDWORD(v48) == 1701340002)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
      v26 = *(DerivedStorage + 16);
      block = MEMORY[0x1E69E9820];
      v58 = 0x40000000;
      v59 = __remoteXPCEndpointPlaybackSessionClient_eventHandlerCallback_block_invoke;
      v60 = &__block_descriptor_tmp_9_3;
      v61 = DerivedStorage;
      v62 = a2;
      v63 = a1;
      dispatch_sync(v26, &block);
      return 0;
    }

    if (HIDWORD(v48) != 1667329122)
    {
      return 4294966630;
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x3000000000;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v5 = CMBaseObjectGetDerivedStorage(a1);
    uint64 = xpc_dictionary_get_uint64(a2, "CompletionID");
    OSStatus = FigXPCMessageGetOSStatus(a2, "CompletionStatus");
    v8 = *(v5 + 16);
    block = MEMORY[0x1E69E9820];
    v58 = 0x40000000;
    v59 = __remoteXPCEndpointPlaybackSessionClient_handleCompletionCallback_block_invoke;
    v60 = &unk_1E74A5758;
    v62 = v5;
    v63 = uint64;
    v61 = &v51;
    dispatch_sync(v8, &block);
    v9 = v52[3];
    switch(v9)
    {
      case 1937010544:
        goto LABEL_23;
      case 1735421033:
        cf = 0;
        break;
      case 1735422066:
        v49 = 0;
        cf = 0;
        v35 = OUTLINED_FUNCTION_1_54();
        FigXPCMessageCopyCFString(v35, v36, v37);
        v38 = FigXPCMessageCopyCFObject(a2, "PropertyValue", &v49);
        v46 = OUTLINED_FUNCTION_2_38(v38, v39, v40, v41, v42, v43, v44, v45, v48, v49, cf);
        v47(v46);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

LABEL_35:
        v34 = v49;
        if (!v49)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 1768976745:
      case 1886151033:
        goto LABEL_23;
      case 1886545249:
        cf = 0;
        v30 = FigXPCMessageGetOSStatus(a2, "ResponseStatus");
        v31 = OUTLINED_FUNCTION_1_54();
        FigXPCMessageCopyCFObject(v31, v32, v33);
        (v52[5])(v30, cf, v52[4]);
LABEL_28:
        v34 = cf;
        if (cf)
        {
LABEL_29:
          CFRelease(v34);
          goto LABEL_30;
        }

        goto LABEL_30;
      case 1919971689:
        goto LABEL_23;
      case 1936024673:
      case 1936028777:
        cf = 0;
        break;
      case 1936875892:
LABEL_23:
        (v52[5])(OSStatus, v52[4]);
        goto LABEL_30;
      case 1635018857:
        v49 = 0;
        cf = 0;
        v12 = OUTLINED_FUNCTION_1_54();
        FigXPCMessageCopyCFData(v12, v13, v14);
        v15 = FigXPCMessageCopyCFString(a2, "PlayerGUID", &v49);
        v23 = OUTLINED_FUNCTION_2_38(v15, v16, v17, v18, v19, v20, v21, v22, v48, v49, cf);
        v24(v23);
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_35;
      default:
LABEL_30:
        _Block_object_dispose(&v51, 8);
        return 0;
    }

    v27 = OUTLINED_FUNCTION_1_54();
    FigXPCMessageCopyCFDictionary(v27, v28, v29);
    (v52[5])(cf, OSStatus, v52[4]);
    goto LABEL_28;
  }

  return result;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_Invalidate(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v6);
  if (ObjectID)
  {
    v4 = ObjectID;
    v3 = 0;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x696E766Cu, v6, &v7);
    v3 = v7;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, v7);
      v3 = v7;
    }
  }

  FigXPCRelease(v3);
  return v4;
}

void FigEndpointPlaybackSessionRemoteXPC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  v4 = v3;
  v9 = 0;
  if (!*v3)
  {
    v5 = *(v3 + 8);
    *v3 = 1;
    FigXPCRemoteClientDisassociateObject(gFigEndpointPlaybackSessionRemoteClient, v5);
    if (!*(v4 + 1) && !FigXPCCreateBasicMessage(0x646F6F6Du, v5, &v9))
    {
      FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, v9);
    }
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(v4 + 24) = 0;
  }

  FigXPCRelease(v9);
  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
  }
}

unint64_t FigEndpointPlaybackSessionRemoteXPC_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v14 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v14);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdCopyPropertyMessage(gFigEndpointPlaybackSessionRemoteClient, v14, a2, &cf, v7, v8, v9, v10);
  }

  v11 = ObjectID;
  if (a4)
  {
    *a4 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v12);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdSetPropertyMessage(gFigEndpointPlaybackSessionRemoteClient, v12, a2, a3, v6, v7, v8, v9);
  }

  v10 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout(gFigEndpointPlaybackSessionRemoteClient, ObjectID, "FigEndpointPlaybackSessionRemoteXPC_SetProperty", a2);
  return v10;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_SetProxiedProperty(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v11 = 0;
  *v12 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v11);
  if (ObjectID)
  {
    v8 = ObjectID;
    v9 = 0;
  }

  else
  {
    v8 = FigXPCCreateBasicMessage(0x73707072u, v11, v12);
    v9 = *v12;
    if (!v8)
    {
      FigXPCMessageSetCFString(*v12, "PropertyKey", a2);
      FigXPCMessageSetCFDictionary(*v12, "Params", a3);
      FigXPCMessageSetCFObject(*v12, "PropertyValue", a4);
      v8 = FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, *v12);
      v9 = *v12;
    }
  }

  FigXPCRelease(v9);
  return v8;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_SetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v15 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v15);
  if (!ObjectID)
  {
    if (a2)
    {
      v9 = 1936029288;
    }

    else
    {
      v9 = 1667593832;
    }

    ObjectID = FigXPCCreateBasicMessage(v9, v15, &v16);
    if (!ObjectID)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
      v11 = *(DerivedStorage + 16);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __FigEndpointPlaybackSessionRemoteXPC_SetEventHandler_block_invoke;
      v14[3] = &__block_descriptor_tmp_14_5;
      v14[4] = DerivedStorage;
      v14[5] = a2;
      v14[6] = a3;
      v14[7] = a4;
      dispatch_sync(v11, v14);
      ObjectID = FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, v16);
    }
  }

  v12 = ObjectID;
  FigXPCRelease(v16);
  return v12;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_BroadcastCoordinatedPlaybackState(uint64_t a1, const void *a2, void *a3)
{
  v9 = 0;
  *v10 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v9);
  if (ObjectID)
  {
    v6 = ObjectID;
    v7 = 0;
  }

  else
  {
    v6 = FigXPCCreateBasicMessage(0x62706373u, v9, v10);
    v7 = *v10;
    if (!v6)
    {
      FigXPCMessageSetCFString(*v10, "Type", a2);
      FigXPCMessageSetCFDictionary(*v10, "Params", a3);
      v6 = FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, *v10);
      v7 = *v10;
    }
  }

  FigXPCRelease(v7);
  return v6;
}

void remoteXPCEndpointPlaybackSession_generateSandboxTokenForFilePath(void *a1, const __CFDictionary *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  bzero(v10, 0x400uLL);
  Value = CFDictionaryGetValue(a2, @"movPkgPath");
  if (Value || (Value = CFDictionaryGetValue(a2, @"path")) != 0)
  {
    if (CFStringGetCString(Value, buffer, 1024, 0x8000100u))
    {
      if ((v5 = open(buffer, 0), v5 != -1) && (v6 = v5, v7 = fcntl(v5, 50, v10), close(v6), v7 != -1) || realpath_DARWIN_EXTSN(buffer, v10) || !*__error())
      {
        v8 = sandbox_extension_issue_file();
        if (v8)
        {
          v9 = v8;
          xpc_dictionary_set_string(a1, "SExtToken", v8);
          free(v9);
        }
      }
    }
  }
}

size_t remoteXPCEndpointPlaybackSession_GetObjectID_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FuLL, "<< FigEndpointPlaybackSessionXPCRemote >>", 0x101, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t remoteXPCEndpointPlaybackSession_GetObjectID_cold_2(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBEAEuLL, "<< FigEndpointPlaybackSessionXPCRemote >>", 0x102, v1, v4, v5);
  *a1 = result;
  return result;
}

uint64_t figHALDriver_PerformDeviceConfigurationChange()
{
  OUTLINED_FUNCTION_0_79();
  v3 = driver_CopyDeviceForID(v0, v1, v2);
  if (v3)
  {
LABEL_4:
    v6 = v3;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable(cf) + 24) + 16))
  {
    v4 = OUTLINED_FUNCTION_2_3();
    v3 = v5(v4);
    goto LABEL_4;
  }

  v6 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v6;
}

uint64_t figHALDriver_AbortDeviceConfigurationChange()
{
  OUTLINED_FUNCTION_0_79();
  v3 = driver_CopyDeviceForID(v0, v1, v2);
  if (v3)
  {
LABEL_4:
    v6 = v3;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable(cf) + 24) + 24))
  {
    v4 = OUTLINED_FUNCTION_2_3();
    v3 = v5(v4);
    goto LABEL_4;
  }

  v6 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v6;
}

uint64_t figHALDriver_HasProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_79();
  if (!driver_CopyObjectForID(v5, v6, v7))
  {
    v8 = *(*(CMBaseObjectGetVTable(v11) + 16) + 16);
    if (v8)
    {
      v9 = v8(v11, a4);
      if (!v11)
      {
        return v9;
      }

      goto LABEL_6;
    }
  }

  v9 = 0;
  if (v11)
  {
LABEL_6:
    CFRelease(v11);
  }

  return v9;
}

uint64_t figHALDriver_IsPropertySettable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  OUTLINED_FUNCTION_0_79();
  v9 = driver_CopyObjectForID(v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    if (!v17)
    {
      return v10;
    }

    goto LABEL_9;
  }

  v10 = 2003332927;
  if (*(*(CMBaseObjectGetVTable(v17) + 16) + 16))
  {
    v11 = OUTLINED_FUNCTION_2_3();
    if (v12(v11))
    {
      if (*(*(CMBaseObjectGetVTable(v17) + 16) + 24))
      {
        v13 = OUTLINED_FUNCTION_2_3();
        v15 = v14(v13);
      }

      else
      {
        v15 = 0;
      }

      v10 = 0;
      *a5 = v15;
    }
  }

  if (v17)
  {
LABEL_9:
    CFRelease(v17);
  }

  return v10;
}

uint64_t figHALDriver_GetPropertyDataSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  OUTLINED_FUNCTION_0_79();
  v14 = driver_CopyObjectForID(v11, v12, v13);
  if (v14)
  {
    v15 = v14;
    if (!v20)
    {
      return v15;
    }

    goto LABEL_9;
  }

  v15 = 2003332927;
  v16 = *(*(CMBaseObjectGetVTable(v20) + 16) + 16);
  if (v16 && v16(v20, a4))
  {
    v17 = *(*(CMBaseObjectGetVTable(v20) + 16) + 32);
    if (v17)
    {
      v18 = v17(v20, a4, a5, a6);
    }

    else
    {
      v18 = 0;
    }

    v15 = 0;
    *a7 = v18;
  }

  if (v20)
  {
LABEL_9:
    CFRelease(v20);
  }

  return v15;
}

uint64_t figHALDriver_GetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_79();
  v8 = driver_CopyObjectForID(v5, v6, v7);
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = 2003332927;
  v10 = *(*(CMBaseObjectGetVTable(v14) + 16) + 16);
  if (v10 && v10(v14, a4))
  {
    if (*(*(CMBaseObjectGetVTable(v14) + 16) + 40))
    {
      v11 = OUTLINED_FUNCTION_2_39();
      v8 = v12(v11);
LABEL_6:
      v9 = v8;
      goto LABEL_8;
    }

    v9 = 4294954514;
  }

LABEL_8:
  if (v14)
  {
    CFRelease(v14);
  }

  return v9;
}

uint64_t figHALDriver_SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_79();
  v8 = driver_CopyObjectForID(v5, v6, v7);
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = 2003332927;
  v10 = *(*(CMBaseObjectGetVTable(v14) + 16) + 16);
  if (v10 && v10(v14, a4))
  {
    if (*(*(CMBaseObjectGetVTable(v14) + 16) + 48))
    {
      v11 = OUTLINED_FUNCTION_2_39();
      v8 = v12(v11);
LABEL_6:
      v9 = v8;
      goto LABEL_8;
    }

    v9 = 4294954514;
  }

LABEL_8:
  if (v14)
  {
    CFRelease(v14);
  }

  return v9;
}

uint64_t figHALDriver_StartIO()
{
  OUTLINED_FUNCTION_0_79();
  v3 = driver_CopyDeviceForID(v0, v1, v2);
  if (v3)
  {
LABEL_4:
    v5 = v3;
    if (!cf)
    {
      return v5;
    }

    goto LABEL_7;
  }

  v4 = *(*(CMBaseObjectGetVTable(cf) + 24) + 32);
  if (v4)
  {
    v3 = v4();
    goto LABEL_4;
  }

  v5 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v5;
}

uint64_t figHALDriver_StopIO()
{
  OUTLINED_FUNCTION_0_79();
  v3 = driver_CopyDeviceForID(v0, v1, v2);
  if (v3)
  {
LABEL_4:
    v5 = v3;
    if (!cf)
    {
      return v5;
    }

    goto LABEL_7;
  }

  v4 = *(*(CMBaseObjectGetVTable(cf) + 24) + 40);
  if (v4)
  {
    v3 = v4();
    goto LABEL_4;
  }

  v5 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v5;
}

uint64_t figHALDriver_GetZeroTimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_79();
  v12 = driver_CopyDeviceForID(v9, v10, v11);
  if (v12)
  {
LABEL_4:
    v14 = v12;
    if (!cf)
    {
      return v14;
    }

    goto LABEL_7;
  }

  v13 = *(*(CMBaseObjectGetVTable(cf) + 24) + 48);
  if (v13)
  {
    v12 = v13(cf, a4, a5, a6);
    goto LABEL_4;
  }

  v14 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v14;
}

uint64_t figHALDriver_WillDoIOOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_79();
  v12 = driver_CopyDeviceForID(v9, v10, v11);
  if (v12)
  {
LABEL_4:
    v14 = v12;
    if (!cf)
    {
      return v14;
    }

    goto LABEL_7;
  }

  v13 = *(*(CMBaseObjectGetVTable(cf) + 24) + 56);
  if (v13)
  {
    v12 = v13(cf, a4, a5, a6);
    goto LABEL_4;
  }

  v14 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v14;
}

uint64_t figHALDriver_BeginIOOperation()
{
  OUTLINED_FUNCTION_0_79();
  v3 = driver_CopyDeviceForID(v0, v1, v2);
  if (v3)
  {
LABEL_4:
    v6 = v3;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable(cf) + 24) + 64))
  {
    v4 = OUTLINED_FUNCTION_3_37();
    v3 = v5(v4);
    goto LABEL_4;
  }

  v6 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v6;
}

uint64_t figHALDriver_EndIOOperation()
{
  OUTLINED_FUNCTION_0_79();
  v3 = driver_CopyDeviceForID(v0, v1, v2);
  if (v3)
  {
LABEL_4:
    v6 = v3;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable(cf) + 24) + 72))
  {
    v4 = OUTLINED_FUNCTION_3_37();
    v3 = v5(v4);
    goto LABEL_4;
  }

  v6 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v6;
}

size_t driver_CopyObjectForID(uint64_t a1, unsigned int a2, void *a3)
{
  if (a2)
  {
    v5 = FigHALAudioObjectMapperCopyObjectForID(*(a1 + 12), a2);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *a3 = v6;
    }

    else
    {
      return 560947818;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBE05uLL, "<<< FigHALPluginDriver >>>", 0x4F, v3, v9, v10);
  }

  return result;
}

size_t figHALDriver_QueryInterface_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE06uLL, "<<< FigHALPluginDriver >>>", 0x8D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figHALDriver_QueryInterface_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x6E6F7065uLL, "<<< FigHALPluginDriver >>>", 0x8A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figHALDriver_DoIOOperation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x21737472uLL, "<<< FigHALPluginDriver >>>", 0x64, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t driver_CopyDeviceForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x21646576uLL, "<<< FigHALPluginDriver >>>", 0x78, v3, v4, v5);
  *a1 = result;
  return result;
}

__n128 FigTimeRangeSetGetUnion@<Q0>(uint64_t a1@<X8>)
{
  result.n128_u64[0] = OUTLINED_FUNCTION_11_16(&kCMTimeRangeInvalid).n128_u64[0];
  if (v2)
  {
    v4 = v2;
    Count = CFArrayGetCount(*(v2 + 16));
    if (Count >= 1)
    {
      v6 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 16), 0);
      v8 = ValueAtIndex;
      if (v6 == 1)
      {
        result = *ValueAtIndex;
        v14 = ValueAtIndex[2];
        *(a1 + 16) = ValueAtIndex[1];
        *(a1 + 32) = v14;
        *a1 = result;
      }

      else
      {
        v9 = CFArrayGetValueAtIndex(*(v4 + 16), v6 - 1);
        v10 = OUTLINED_FUNCTION_20_11(v9);
        *&v15.start.epoch = v11;
        *&v15.duration.timescale = v12;
        *&v15.start.value = v10;
        CMTimeRangeGetEnd(&end, &v15);
        v13 = *v8;
        v15.start.epoch = *(v8 + 2);
        *&v15.start.value = v13;
        CMTimeRangeFromTimeToTime(a1, &v15.start, &end);
      }
    }
  }

  return result;
}

uint64_t FigTimeRangeSetApplyFunction(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t), uint64_t a3)
{
  result = 0;
  if (a1 && a2)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v9);
        v11 = OUTLINED_FUNCTION_20_11(ValueAtIndex);
        v14[1] = v12;
        v14[2] = v13;
        v14[0] = v11;
        result = a2(v14, a3);
        if (result)
        {
          break;
        }

        if (v8 == ++v9)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t FigTimeRangeSetRemoveAllTimeRanges(uint64_t a1)
{
  if (a1)
  {
    CFArrayRemoveAllValues(*(a1 + 16));
    OUTLINED_FUNCTION_8_20(&kCMTimeZero);
  }

  return 0;
}

size_t FigTimeRangeSetAddTimeRange(uint64_t a1, uint64_t a2)
{
  memset(&value, 0, sizeof(value));
  if (!a1)
  {
    OUTLINED_FUNCTION_6_29();
    v12 = 382;
    goto LABEL_6;
  }

  v3 = *(a2 + 12);
  if ((v3 & 1) == 0 || (v4 = *(a2 + 36), (v4 & 1) == 0) || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_6_29();
    v12 = 383;
LABEL_6:

    return FigSignalErrorAtGM(v5, v6, v7, v8, v12, v9, v10, v11);
  }

  if (((v4 | v3) & 0x10) != 0)
  {
    OUTLINED_FUNCTION_6_29();
    v12 = 384;
    goto LABEL_6;
  }

  if (*(a2 + 16))
  {
    OUTLINED_FUNCTION_6_29();
    v12 = 385;
    goto LABEL_6;
  }

  *&time1.start.value = *(a2 + 24);
  time1.start.epoch = *(a2 + 40);
  OUTLINED_FUNCTION_26_9(&kCMTimeZero);
  if (CMTimeCompare(&time1.start, &time2))
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count)
    {
      v16 = Count;
      v17 = Count - 1;
      v18 = OUTLINED_FUNCTION_19_11();
      ValueAtIndex = CFArrayGetValueAtIndex(v18, v19);
      v21 = OUTLINED_FUNCTION_20_11(ValueAtIndex);
      *&time1.start.epoch = v22;
      *&time1.duration.timescale = v23;
      *&time1.start.value = v21;
      CMTimeRangeGetEnd(&time2, &time1);
      OUTLINED_FUNCTION_30_6();
      v24 = CMTimeCompare(&time1.start, &time2);
      if (v24 < 1)
      {
        v42 = OUTLINED_FUNCTION_0_80();
        if (!timeRangeSet_tryOrderedMergeIntoIndex(v42, v17, ValueAtIndex, v43, 0))
        {
          v44 = CFArrayGetValueAtIndex(*(a1 + 16), 0);
          v45 = *(a2 + 16);
          *&time1.start.value = *a2;
          *&time1.start.epoch = v45;
          *&time1.duration.timescale = *(a2 + 32);
          CMTimeRangeGetEnd(&time2, &time1);
          v46 = *v44;
          time1.start.epoch = *(v44 + 2);
          *&time1.start.value = v46;
          v47 = CMTimeCompare(&time2, &time1.start);
          if (v47 < 0)
          {
            v55 = OUTLINED_FUNCTION_2_40(v47, v48, v49, v50, v51, v52, v53, v54, v97, v104, v108, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&time2.value, time2.epoch);
            OUTLINED_FUNCTION_10_16(v55, v56, v57, v58, v59, v60, v61, v62, v99, v102, v106, v110, v63, time1.start.value);
            CFArrayInsertValueAtIndex(*(a1 + 16), 0, a2);
          }

          else
          {
            v64 = OUTLINED_FUNCTION_0_80();
            if (!timeRangeSet_tryOrderedMergeIntoIndex(v64, 0, v44, v65, 1))
            {
              OUTLINED_FUNCTION_30_6();
              OUTLINED_FUNCTION_26_9(&kCMTimePositiveInfinity);
              CMTimeRangeMake(&value, &time1.start, &time2);
              OUTLINED_FUNCTION_7_22();
              v116.location = 0;
              v116.length = v16;
              v68 = CFArrayBSearchValues(v66, v116, &value, v67, 0);
              v69 = v68 - 1;
              if (v68 < 1 || (CFArrayGetValueAtIndex(*(a1 + 16), v69), v89 = OUTLINED_FUNCTION_0_80(), !timeRangeSet_tryOrderedMergeIntoIndex(v89, v69, v90, v91, 0)))
              {
                if (v68 >= v16 || (v92 = OUTLINED_FUNCTION_19_11(), CFArrayGetValueAtIndex(v92, v93), v94 = OUTLINED_FUNCTION_0_80(), !timeRangeSet_tryOrderedMergeIntoIndex(v94, v68, v95, v96, 1)))
                {
                  v70 = OUTLINED_FUNCTION_19_11();
                  CFArrayInsertValueAtIndex(v70, v71, a2);
                  v80 = OUTLINED_FUNCTION_2_40(v72, v73, v74, v75, v76, v77, v78, v79, v97, v104, v108, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&time2.value, time2.epoch);
                  OUTLINED_FUNCTION_10_16(v80, v81, v82, v83, v84, v85, v86, v87, v100, v103, v107, v111, v88, time1.start.value);
                }
              }
            }
          }
        }
      }

      else
      {
        v32 = OUTLINED_FUNCTION_2_40(v24, v25, v26, v27, v28, v29, v30, v31, v97, v104, v108, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&time2.value, time2.epoch);
        OUTLINED_FUNCTION_10_16(v32, v33, v34, v35, v36, v37, v38, v39, v98, v101, v105, v109, v40, time1.start.value);
        CFArrayAppendValue(*(a1 + 16), a2);
      }
    }

    else
    {
      CFArrayAppendValue(*(a1 + 16), a2);
      v41 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v41;
    }
  }

  return 0;
}

uint64_t timeRangeSet_tryOrderedMergeIntoIndex(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5)
{
  memset(&v135, 0, sizeof(v135));
  *&lhs.start.value = *(a3 + 24);
  lhs.start.epoch = *(a3 + 5);
  *&rhs.start.value = *(a4 + 24);
  rhs.start.epoch = *(a4 + 40);
  CMTimeAdd(&v135, &lhs.start, &rhs.start);
  v10 = a3[1];
  *&lhs.start.value = *a3;
  *&lhs.start.epoch = v10;
  *&lhs.duration.timescale = a3[2];
  v11 = *(a4 + 16);
  *&otherRange.start.value = *a4;
  *&otherRange.start.epoch = v11;
  *&otherRange.duration.timescale = *(a4 + 32);
  memset(&rhs, 0, sizeof(rhs));
  CMTimeRangeGetUnion(&rhs, &lhs, &otherRange);
  lhs.start = rhs.duration;
  otherRange.start = v135;
  v12 = CMTimeCompare(&lhs.start, &otherRange.start);
  if (v12 > 0)
  {
    return 0;
  }

  if (!a5)
  {
    *&lhs.start.value = *&rhs.start.value;
    lhs.start.epoch = rhs.start.epoch;
    *&otherRange.start.value = *a3;
    otherRange.start.epoch = *(a3 + 2);
    v12 = CMTimeCompare(&lhs.start, &otherRange.start);
    if (v12)
    {
      return 0;
    }
  }

  if (OUTLINED_FUNCTION_13_13(v12, v13, v14, v15, v16, v17, v18, v19, v75, v79, v82, v86, v89, v93, v96, v100, v103, v106, v109, v112, v115, v119, v120, v123, v126, v130, *&otherRange.start.value, otherRange.start.epoch) >= 1)
  {
    v20 = a2 + 1;
    OUTLINED_FUNCTION_17_11();
    otherRange.start.epoch = *(a1 + 40);
    OUTLINED_FUNCTION_1_55();
    CMTimeSubtract(v23, v21, v22);
    OUTLINED_FUNCTION_5_32();
    *(a1 + 40) = v24;
    OUTLINED_FUNCTION_17_11();
    otherRange.start.epoch = v25;
    v116 = *&rhs.duration.value;
    OUTLINED_FUNCTION_1_55();
    CMTimeAdd(v28, v26, v27);
    v29 = OUTLINED_FUNCTION_5_32();
    *(a1 + 40) = v30;
    OUTLINED_FUNCTION_22_10(v31, v32, v33, v34, v35, v36, v37, v38, v76, v80, v83, v87, v90, v94, v97, v101, v104, v107, v110, v113, v116, *(&v116 + 1), v121, v124, v127, v131, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, *&rhs.start.value, *&rhs.start.epoch, v29);
    Count = CFArrayGetCount(*(a1 + 16));
    if (v20 < Count)
    {
      v40 = Count;
      v84 = *&kCMTimeRangeInvalid.start.epoch;
      v91 = *&kCMTimeRangeInvalid.start.value;
      v77 = *&kCMTimeRangeInvalid.duration.timescale;
      v41 = v20;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v41);
        *v117 = *a3;
        *&v117[16] = a3[1];
        v43 = *a3;
        v128 = a3[2];
        *v98 = *ValueAtIndex;
        *&v98[16] = ValueAtIndex[1];
        *&v98[32] = ValueAtIndex[2];
        *&otherRange.start.value = v91;
        *&otherRange.start.epoch = v84;
        *&otherRange.duration.timescale = v77;
        memset(&v140, 0, sizeof(v140));
        *&lhs.start.value = v43;
        *&lhs.start.epoch = *&v117[16];
        *&lhs.duration.timescale = a3[2];
        CMTimeRangeGetEnd(&v140, &lhs);
        memset(&v138, 0, sizeof(v138));
        lhs = *v98;
        CMTimeRangeGetEnd(&v138, &lhs);
        lhs.start = v140;
        time2 = *v98;
        if ((CMTimeCompare(&lhs.start, &time2) & 0x80000000) == 0)
        {
          time2 = v140;
          v136 = v138;
          CMTimeMaximum(&lhs.start, &time2, &v136);
          time2 = *v117;
          CMTimeRangeFromTimeToTime(&otherRange, &time2, &lhs.start);
        }

        rhs = otherRange;
        if ((otherRange.start.flags & 1) == 0 || (rhs.duration.flags & 1) == 0 || rhs.duration.epoch || rhs.duration.value < 0)
        {
          break;
        }

        OUTLINED_FUNCTION_17_11();
        otherRange.start.epoch = *(a1 + 40);
        *v117 = *(ValueAtIndex + 24);
        OUTLINED_FUNCTION_1_55();
        CMTimeSubtract(v46, v44, v45);
        OUTLINED_FUNCTION_5_32();
        *(a1 + 40) = v47;
        v56 = OUTLINED_FUNCTION_13_13(v48, v49, v50, v51, v52, v53, v54, v55, v77, *(&v77 + 1), v84, *(&v84 + 1), v91, *(&v91 + 1), *v98, *&v98[8], *&v98[16], *&v98[24], *&v98[32], *&v98[40], *v117, *&v117[8], *&v117[16], *&v117[24], v128, *(&v128 + 1), *&otherRange.start.value, otherRange.start.epoch);
        if (v56 >= 1)
        {
          OUTLINED_FUNCTION_17_11();
          otherRange.start.epoch = *(a1 + 40);
          OUTLINED_FUNCTION_1_55();
          CMTimeSubtract(v67, v65, v66);
          OUTLINED_FUNCTION_5_32();
          *(a1 + 40) = v68;
          OUTLINED_FUNCTION_17_11();
          otherRange.start.epoch = v69;
          v118 = *&rhs.duration.value;
          OUTLINED_FUNCTION_1_55();
          CMTimeAdd(v72, v70, v71);
          v64 = OUTLINED_FUNCTION_5_32();
          *(a1 + 40) = v73;
        }

        OUTLINED_FUNCTION_22_10(v56, v57, v58, v59, v60, v61, v62, v63, v78, v81, v85, v88, v92, v95, v99, v102, v105, v108, v111, v114, v118, *(&v118 + 1), v122, v125, v129, v132, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, *&rhs.start.value, *&rhs.start.epoch, v64);
        if (v40 == ++v41)
        {
          v41 = v40;
          break;
        }
      }

      if (v41 > v20)
      {
        v141.location = v20;
        v141.length = v41 - v20;
        CFArrayReplaceValues(*(a1 + 16), v141, 0, 0);
      }
    }
  }

  return 1;
}

uint64_t timeRangeSet_TimeRangeComparator(CMTime **a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_18_13(a2[2], *a2, a2[1], v7, v9, *a1);
  if (v4 < 0)
  {
    result = -1;
  }

  else
  {
    result = v4 != 0;
  }

  if (!result)
  {
    v6 = OUTLINED_FUNCTION_18_13(a2[5], a2[3], a2[4], v8, v10, a1[3]);
    if (v6 < 0)
    {
      return -1;
    }

    else
    {
      return v6 != 0;
    }
  }

  return result;
}

size_t FigTimeRangeSetRemoveTimeRangesLessThanTime(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_6_29();
    v71 = 470;
    goto LABEL_20;
  }

  v2 = *(a2 + 12);
  if ((~v2 & 9) == 0)
  {
    return 0;
  }

  if ((~v2 & 5) == 0)
  {
    CFArrayRemoveAllValues(*(a1 + 16));
    OUTLINED_FUNCTION_8_20(&kCMTimeZero);
    return 0;
  }

  if ((*(a2 + 12) & 0x1D) == 1)
  {
    if (!*(a2 + 16))
    {
      Count = CFArrayGetCount(*(a1 + 16));
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v6);
          OUTLINED_FUNCTION_2_8();
          OUTLINED_FUNCTION_28_9(v8);
          if (CMTimeCompare(&v72.start, &time2) < 1)
          {
            break;
          }

          OUTLINED_FUNCTION_15_15();
          v17 = OUTLINED_FUNCTION_16_11(v9, v10, v11, v12, v13, v14, v15, v16, v72.start.value, *&v72.start.timescale, v72.start.epoch, v72.duration.value, *&v72.duration.timescale, v72.duration.epoch, v73.value, *&v73.timescale, ValueAtIndex[5], v74, time2.value);
          v20 = CMTimeSubtract(v19, v17, v18);
          OUTLINED_FUNCTION_27_9(v20, v21, v22, v23, v24, v25, v26, v27, v28, v72.start.value);
          OUTLINED_FUNCTION_29_7();
          CMTimeRangeGetEnd(&time2, &v72);
          OUTLINED_FUNCTION_2_8();
          if (CMTimeCompare(&v72.start, &time2) < 0)
          {
            OUTLINED_FUNCTION_2_8();
            CMTimeConvertScale(&time2, &v72.start, v29, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
            OUTLINED_FUNCTION_29_7();
            End = CMTimeRangeGetEnd(&v73, &v72);
            v38 = OUTLINED_FUNCTION_16_11(End, v31, v32, v33, v34, v35, v36, v37, v72.start.value, *&v72.start.timescale, v72.start.epoch, v72.duration.value, *&v72.duration.timescale, v72.duration.epoch, v73.value, *&v73.timescale, v73.epoch, v74, time2.value);
            CMTimeRangeFromTimeToTime(v40, v38, v39);
            v41 = *&v72.start.value;
            v42 = *&v72.duration.timescale;
            *(ValueAtIndex + 1) = *&v72.start.epoch;
            *(ValueAtIndex + 2) = v42;
            *ValueAtIndex = v41;
            OUTLINED_FUNCTION_15_15();
            v51 = OUTLINED_FUNCTION_16_11(v43, v44, v45, v46, v47, v48, v49, v50, v72.start.value, *&v72.start.timescale, v72.start.epoch, v72.duration.value, *&v72.duration.timescale, v72.duration.epoch, v73.value, *&v73.timescale, ValueAtIndex[5], v74, time2.value);
            v54 = CMTimeAdd(v53, v51, v52);
            OUTLINED_FUNCTION_27_9(v54, v55, v56, v57, v58, v59, v60, v61, v62, v72.start.value);
            break;
          }

          if (v5 == ++v6)
          {
            v6 = v5;
            goto LABEL_14;
          }
        }

        if (!v6)
        {
          return 0;
        }

LABEL_14:
        v77.location = 0;
        v77.length = v6;
        CFArrayReplaceValues(*(a1 + 16), v77, 0, 0);
      }

      return 0;
    }

    OUTLINED_FUNCTION_6_29();
    v71 = 474;
  }

  else
  {
    OUTLINED_FUNCTION_6_29();
    v71 = 473;
  }

LABEL_20:

  return FigSignalErrorAtGM(v64, v65, v66, v67, v71, v68, v69, v70);
}

size_t FigTimeRangeSetRemoveTimeRangesGreaterThanOrEqualToTime(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_6_29();
    v55 = 513;
    goto LABEL_18;
  }

  v2 = *(a2 + 12);
  if ((~v2 & 5) == 0)
  {
    return 0;
  }

  if ((~v2 & 9) == 0)
  {
    CFArrayRemoveAllValues(*(a1 + 16));
    OUTLINED_FUNCTION_8_20(&kCMTimeZero);
    return 0;
  }

  if ((*(a2 + 12) & 0x1D) == 1)
  {
    if (!*(a2 + 16))
    {
      Count = CFArrayGetCount(*(a1 + 16));
      v5 = 0;
      v6 = Count;
      while (1)
      {
        v7 = v6;
        v8 = v5;
        if (v6-- < 1)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v6);
        v11 = OUTLINED_FUNCTION_20_11(ValueAtIndex);
        *&range.start.epoch = v12;
        *&range.duration.timescale = v13;
        *&range.start.value = v11;
        CMTimeRangeGetEnd(&time2, &range);
        OUTLINED_FUNCTION_9_17();
        if ((CMTimeCompare(&range.start, &time2) & 0x80000000) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_14_14();
        v14 = OUTLINED_FUNCTION_24_10();
        v17 = CMTimeSubtract(v16, v14, v15);
        OUTLINED_FUNCTION_23_10(v17, v18, v19, v20, v21, v22, v23, v24, v56, v57.value, *&v57.timescale, v57.epoch, start.value, *&start.timescale, start.epoch, v59, v25, range.start.value);
        OUTLINED_FUNCTION_9_17();
        v26 = *ValueAtIndex;
        time2.epoch = ValueAtIndex[2];
        *&time2.value = v26;
        v27 = CMTimeCompare(&range.start, &time2);
        v5 = v8 + 1;
        if (v27 >= 1)
        {
          v28 = *ValueAtIndex;
          v29 = *(ValueAtIndex + 2);
          *&range.start.epoch = *(ValueAtIndex + 1);
          *&range.duration.timescale = v29;
          *&range.start.value = v28;
          CMTimeRangeGetEnd(&v57, &range);
          OUTLINED_FUNCTION_9_17();
          CMTimeConvertScale(&time2, &range.start, v30, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
          v31 = *ValueAtIndex;
          start.epoch = ValueAtIndex[2];
          *&start.value = v31;
          CMTimeRangeFromTimeToTime(&range, &start, &time2);
          v32 = *&range.start.value;
          v33 = *&range.duration.timescale;
          *(ValueAtIndex + 1) = *&range.start.epoch;
          *(ValueAtIndex + 2) = v33;
          *ValueAtIndex = v32;
          OUTLINED_FUNCTION_14_14();
          v34 = OUTLINED_FUNCTION_24_10();
          v37 = CMTimeAdd(v36, v34, v35);
          OUTLINED_FUNCTION_23_10(v37, v38, v39, v40, v41, v42, v43, v44, v56, v57.value, *&v57.timescale, v57.epoch, start.value, *&start.timescale, start.epoch, v59, v45, range.start.value);
          break;
        }
      }

      if (Count > v7)
      {
        v46 = OUTLINED_FUNCTION_19_11();
        v63.length = v8;
        CFArrayReplaceValues(v46, v63, 0, 0);
      }

      return 0;
    }

    OUTLINED_FUNCTION_6_29();
    v55 = 517;
  }

  else
  {
    OUTLINED_FUNCTION_6_29();
    v55 = 516;
  }

LABEL_18:

  return FigSignalErrorAtGM(v48, v49, v50, v51, v55, v52, v53, v54);
}

double FigTimeRangeSetGetEarliestTimeRange()
{
  *&result = OUTLINED_FUNCTION_11_16(&kCMTimeRangeInvalid).n128_u64[0];
  if (v0)
  {
    v2 = v0;
    if (CFArrayGetCount(*(v0 + 16)) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 16), 0);
      *&result = OUTLINED_FUNCTION_21_12(ValueAtIndex).n128_u64[0];
    }
  }

  return result;
}

double FigTimeRangeSetGetLatestTimeRange()
{
  *&result = OUTLINED_FUNCTION_11_16(&kCMTimeRangeInvalid).n128_u64[0];
  if (v0)
  {
    v2 = v0;
    Count = CFArrayGetCount(*(v0 + 16));
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 16), Count - 1);
      *&result = OUTLINED_FUNCTION_21_12(ValueAtIndex).n128_u64[0];
    }
  }

  return result;
}

uint64_t FigTimeRangeSetContainsTimeRange(uint64_t result, uint64_t a2)
{
  memset(&value, 0, sizeof(value));
  if (result)
  {
    v3 = *(a2 + 12);
    if ((v3 & 1) == 0)
    {
      return 0;
    }

    v4 = *(a2 + 36);
    if ((v4 & 1) == 0 || *(a2 + 40))
    {
      return 0;
    }

    v5 = result;
    result = 0;
    if (((v4 | v3) & 0x10) == 0 && (*(a2 + 24) & 0x8000000000000000) == 0)
    {
      if (*(a2 + 16))
      {
        return 0;
      }

      Count = CFArrayGetCount(*(v5 + 16));
      if (Count < 1)
      {
        return 0;
      }

      v7 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 16), 0);
      OUTLINED_FUNCTION_28_9(ValueAtIndex);
      *time2 = *a2;
      *&time2[16] = *(a2 + 16);
      v9 = CMTimeCompare(&time1.start, time2);
      if (v9 > 0)
      {
        return 0;
      }

      result = OUTLINED_FUNCTION_4_31(v9, v10, v11, v12, v13, v14, v17, ValueAtIndex[1], ValueAtIndex[2], *ValueAtIndex, v15, v16, v52, v55.value, *&v55.timescale, v55.epoch, *time2, *&time2[16], v57, v18, v19, v20);
      if (result)
      {
        return result;
      }

      if (v7 == 1)
      {
        return 0;
      }

      v21 = CFArrayGetValueAtIndex(*(v5 + 16), v7 - 1);
      v22 = *(a2 + 16);
      *&time1.start.value = *a2;
      *&time1.start.epoch = v22;
      *&time1.duration.timescale = *(a2 + 32);
      CMTimeRangeGetEnd(time2, &time1);
      v23 = *v21;
      v24 = v21[2];
      *&time1.start.epoch = v21[1];
      *&time1.duration.timescale = v24;
      *&time1.start.value = v23;
      CMTimeRangeGetEnd(&v55, &time1);
      v25 = CMTimeCompare(time2, &v55);
      if (v25 > 0)
      {
        return 0;
      }

      result = OUTLINED_FUNCTION_4_31(v25, v26, v27, v28, v29, v30, v33, v21[1], v21[2], *v21, v31, v32, v53, v55.value, *&v55.timescale, v55.epoch, *time2, *&time2[16], v57, v34, v35, v36);
      if (!result)
      {
        if (v7 >= 3)
        {
          *&time1.start.value = *a2;
          time1.start.epoch = *(a2 + 16);
          *time2 = *&kCMTimePositiveInfinity.value;
          *&time2[16] = 0;
          CMTimeRangeMake(&value, &time1.start, time2);
          OUTLINED_FUNCTION_7_22();
          v60.location = 0;
          v60.length = v7;
          v39 = CFArrayBSearchValues(v37, v60, &value, v38, 0);
          if (v39 >= 1)
          {
            v40 = CFArrayGetValueAtIndex(*(v5 + 16), v39 - 1);
            return OUTLINED_FUNCTION_4_31(v40, v41, v42, v43, v44, v45, v48, v40[1], v40[2], *v40, v46, v47, v54, v55.value, *&v55.timescale, v55.epoch, *time2, *&time2[16], v57, v49, v50, v51);
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t FigTimeRangeSetContainsTime(uint64_t a1, CMTime *a2)
{
  start = *a2;
  *&v4.value = *&kCMTimeZero.value;
  v4.epoch = 0;
  CMTimeRangeMake(&v6, &start, &v4);
  return FigTimeRangeSetContainsTimeRange(a1, &v6);
}

uint64_t timeRangeSet_IsEqual(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_8(a1);
  if (OUTLINED_FUNCTION_18_13(v4[5], v4[3], v4[4], v6, v7, v8))
  {
    return 0;
  }

  else
  {
    return CFEqual(*(a1 + 16), *(a2 + 16));
  }
}

CFStringRef timeRangeSet_CopyFormattingDesc(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_25_8(a1);
  v3 = CMTimeCopyDescription(v2, &time);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetAllocator(a1);
  v6 = CFStringCreateWithFormat(v2, 0, @"<FigTimeRangeSet %p [%p]>{ timeRanges = %@, duration = %@ }", a1, v5, a1[2], v4);
  CFRelease(v4);
  return v6;
}

__n128 timeRangeSet_TimeRangeRetain(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8D7200](a1, 48, 0x1000040EED21634, 0);
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 32);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = v5;
    *v3 = result;
  }

  return result;
}

void FigTimeRangeSetCreateMutable_cold_2(const void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBB04uLL, "(Fig)", 0x5E, v8, a7, a8);

  CFRelease(a1);
}

size_t FigTimeRangeSetCreateMutable_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBB04uLL, "(Fig)", 0x5A, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimeRangeSetCreateMutable_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_29();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x57, v6, v7, v8);
  *a1 = result;
  return result;
}

uint64_t FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 4294901760;
  }
}

size_t FigEndpointStreamAudioFormatDescriptionCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0x51, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigEndpointStreamAudioFormatDescriptionCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x4E, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigEndpointStreamAudioFormatDescriptionCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x4D, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB3, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB4, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB2, v6, v7, v8);
  *a1 = result;
  return result;
}

uint64_t FigEndpointRemoteControlSessionXPCRemotePing()
{
  v5 = 0;
  v0 = remoteXPCEndpointRemoteControlSessionClient_EnsureClientEstablished();
  if (v0)
  {
    v3 = v0;
    v2 = 0;
  }

  else
  {
    v1 = FigXPCCreateBasicMessage(0x2E706E67u, 0, &v5);
    v2 = v5;
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v5);
      v2 = v5;
    }
  }

  FigXPCRelease(v2);
  return v3;
}

uint64_t FigEndpointRemoteControlSessionXPCRemoteCreateWithObjectID(const void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = remoteXPCEndpointRemoteControlSessionClient_EnsureClientEstablished();
      if (!result)
      {

        return remoteXPCEndpointRemoteControlSession_CreateInternal(a1, a2);
      }

      return result;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v9 = 743;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v9 = 741;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFCE14uLL, "<< FigEndpointRemoteControlSessionXPCRemote >>", v9, v6, v7, v8);
}

size_t remoteXPCEndpointRemoteControlSession_CreateInternal(const void *a1, void *a2)
{
  v21 = 0;
  v5 = *MEMORY[0x1E695E480];
  ClassID = FigEndpointRemoteControlSessionGetClassID();
  result = CMDerivedObjectCreate(v5, &kFigEndpointRemoteControlSessionRemoteXPC_EndpointRemoteControlSessionVTable, ClassID, &v21, v7, v8, v9, v10);
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(v21);
    DerivedStorage[1] = a1;
    DerivedStorage[6] = 1;
    v20.version = 0;
    v20.retain = remoteXPCEndpointRemoteControlSession_cloneCompletionCallback;
    v20.release = remoteXPCEndpointRemoteControlSession_freeCompletionCallback;
    v20.copyDescription = 0;
    v20.equal = 0;
    v13 = CFDictionaryCreateMutable(v5, 0, 0, &v20);
    DerivedStorage[3] = v13;
    if (v13)
    {
      v14 = dispatch_queue_create("com.apple.coremedia.endpointremotecontrolsession.callbacks", 0);
      DerivedStorage[2] = v14;
      if (v14)
      {
        FigXPCRemoteClientAssociateObject(gFigEndpointRemoteControlSessionRemoteClient, v21, a1);
        result = 0;
        goto LABEL_5;
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v18 = v2;
      v19 = 704;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v18 = v2;
      v19 = 701;
    }

    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBE9uLL, "<< FigEndpointRemoteControlSessionXPCRemote >>", v19, v18, v16, v17);
  }

LABEL_5:
  *a2 = v21;
  return result;
}

uint64_t remoteXPCEndpointRemoteControlSessionClient_HandleClientMessage(uint64_t a1, void *a2)
{
  v12 = 0;
  result = FigXPCMessageGetOpCode(a2, &v12);
  if (!result)
  {
    if (v12 == 1701340002)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
      v30 = 0;
      v31 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2000000000;
      v16 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2000000000;
      v29 = 0;
      v10 = *(DerivedStorage + 16);
      block = MEMORY[0x1E69E9820];
      v20 = 0x40000000;
      v21 = __remoteXPCEndpointRemoteControlSessionClient_eventHandlerCallback_block_invoke;
      v22 = &unk_1E74A58F0;
      v24 = &v26;
      v25 = DerivedStorage;
      v23 = &v13;
      dispatch_sync(v10, &block);
      if (v27[3])
      {
        FigXPCMessageCopyCFString(a2, "EventType", &v31);
        FigXPCMessageCopyCFData(a2, "EventPayload", &v30);
        if (v14[3])
        {
          (v27[3])(a1, v31, v30);
        }
      }

      v11 = v14[3];
      if (v11)
      {
        CFRelease(v11);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      _Block_object_dispose(&v26, 8);
      goto LABEL_17;
    }

    if (v12 == 1667329122)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3000000000;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v5 = CMBaseObjectGetDerivedStorage(a1);
      uint64 = xpc_dictionary_get_uint64(a2, "CompletionID");
      v7 = *(v5 + 16);
      block = MEMORY[0x1E69E9820];
      v20 = 0x40000000;
      v21 = __remoteXPCEndpointRemoteControlSessionClient_handleCompletionCallback_block_invoke;
      v22 = &unk_1E74A58C8;
      v24 = v5;
      v25 = uint64;
      v23 = &v13;
      dispatch_sync(v7, &block);
      if (v14[3] == 1936614509)
      {
        v26 = 0;
        int64 = xpc_dictionary_get_int64(a2, "ResponseStatus");
        FigXPCMessageCopyCFObject(a2, "ResponseParams", &v26);
        (v14[5])(int64, v26, v14[4]);
        if (v26)
        {
          CFRelease(v26);
        }
      }

LABEL_17:
      _Block_object_dispose(&v13, 8);
      return 0;
    }

    return 4294951138;
  }

  return result;
}

void FigEndpointRemoteControlSessionRemoteXPC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  v4 = v3;
  v10 = 0;
  if (!*v3)
  {
    v5 = *(v3 + 8);
    *v3 = 1;
    FigXPCRemoteClientDisassociateObject(gFigEndpointRemoteControlSessionRemoteClient, v5);
    if (!*(v4 + 1) && !FigXPCCreateBasicMessage(0x646F6F6Du, v5, &v10))
    {
      FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v10);
    }
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(v4 + 24) = 0;
  }

  FigXPCRelease(v10);
  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    dispatch_release(v7);
  }

  v9 = *(DerivedStorage + 40);
  v8 = (DerivedStorage + 40);
  if (v9)
  {
    FigCFWeakReferenceDestroy(v8);
    *v8 = 0;
  }
}

uint64_t FigEndpointRemoteControlSessionRemoteXPC_SendMessage(uint64_t a1, const void *a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  v17 = 0;
  *v18 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2 && !remoteXPCEndpointRemoteControlSession_GetObjectID(a1, &v17) && !FigXPCCreateBasicMessage(0x736E646Du, v17, v18))
  {
    FigXPCMessageSetCFData(*v18, "Params", a2);
  }

  if (a3)
  {
    v15 = a4;
    v16 = a3;
    v14 = 1936614509;
  }

  v8 = *v18;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v10 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigEndpointRemoteControlSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
  block[3] = &unk_1E74A5918;
  block[4] = &v25;
  block[5] = a1;
  block[6] = DerivedStorage;
  block[7] = &v14;
  dispatch_sync(v10, block);
  if (v8)
  {
    xpc_dictionary_set_uint64(v8, "CompletionID", v26[3]);
    v11 = FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v8);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 4294949866;
  }

  v12 = *(DerivedStorage + 16);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = __FigEndpointRemoteControlSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2;
  v19[3] = &unk_1E74A5940;
  v19[5] = &v21;
  v19[6] = DerivedStorage;
  v19[4] = &v25;
  dispatch_sync(v12, v19);
  if (*(v22 + 24) && v14 == 1936614509)
  {
    v16(v11, 0, v15);
  }

LABEL_13:
  FigXPCRemoteClientKillServerOnTimeout(gFigEndpointRemoteControlSessionRemoteClient, v11, "FigEndpointRemoteControlSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback", 0);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  FigXPCRelease(*v18);
  return v11;
}

uint64_t FigEndpointRemoteControlSessionRemoteXPC_SetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  ObjectID = remoteXPCEndpointRemoteControlSession_GetObjectID(a1, &v13);
  if (!ObjectID)
  {
    if (a2)
    {
      v7 = 1936029288;
    }

    else
    {
      v7 = 1667593832;
    }

    ObjectID = FigXPCCreateBasicMessage(v7, v13, &v14);
    if (!ObjectID)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
      v9 = *(DerivedStorage + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __FigEndpointRemoteControlSessionRemoteXPC_SetEventHandler_block_invoke;
      block[3] = &__block_descriptor_tmp_14_6;
      block[4] = DerivedStorage;
      block[5] = a2;
      block[6] = a3;
      dispatch_sync(v9, block);
      ObjectID = FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v14);
    }
  }

  v10 = ObjectID;
  FigXPCRelease(v14);
  return v10;
}

uint64_t FigEndpointRemoteControlSessionRemoteXPC_TeardownSession(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  ObjectID = remoteXPCEndpointRemoteControlSession_GetObjectID(a1, &v6);
  if (ObjectID)
  {
    v4 = ObjectID;
    v3 = 0;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x7472646Eu, v6, &v7);
    v3 = v7;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v7);
      v3 = v7;
    }
  }

  FigXPCRelease(v3);
  return v4;
}

uint64_t FigEndpointRemoteControlSessionRemoteXPC_Start(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  ObjectID = remoteXPCEndpointRemoteControlSession_GetObjectID(a1, &v6);
  if (ObjectID)
  {
    v4 = ObjectID;
    v3 = 0;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x73747274u, v6, &v7);
    v3 = v7;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v7);
      v3 = v7;
    }
  }

  FigXPCRelease(v3);
  return v4;
}

size_t remoteXPCEndpointRemoteControlSession_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0FuLL, "<< FigEndpointRemoteControlSessionXPCRemote >>", 0xD9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t remoteXPCEndpointRemoteControlSession_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEAEuLL, "<< FigEndpointRemoteControlSessionXPCRemote >>", 0xDA, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t tcp_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    v3 = *(DerivedStorage + 64);
    if (v3)
    {
      dispatch_release(v3);
      *(v2 + 64) = 0;
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      _Block_release(v4);
      *(v2 + 56) = 0;
    }
  }

  return 0;
}

void tcp_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  tcp_Invalidate(a1);
  tcp_CleanupFileDescriptors(a1);
  v3 = DerivedStorage[1];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    dispatch_release(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[4] = 0;
  }

  v7 = DerivedStorage[8];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[8] = 0;
  }

  v8 = DerivedStorage[7];
  if (v8)
  {
    _Block_release(v8);
    DerivedStorage[7] = 0;
  }

  v9 = DerivedStorage[9];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[9] = 0;
  }

  v10 = DerivedStorage[10];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[10] = 0;
  }
}

uint64_t tcp_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionMode"))
  {
    v8 = v7[3];
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (CFEqual(a2, @"IPAddress"))
  {
    v8 = v7[4];
    if (v8)
    {
LABEL_7:
      v8 = CFRetain(v8);
    }
  }

  else
  {
    if (!CFEqual(a2, @"Version"))
    {
      return 4294954512;
    }

    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v7 + 44);
  }

LABEL_8:
  v9 = 0;
  *a4 = v8;
  return v9;
}

uint64_t tcp_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionMode"))
  {
    v7 = v6[3];
    v6[3] = a3;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"IPAddress"))
  {
    v7 = v6[4];
    v6[4] = a3;
    if (!a3)
    {
LABEL_5:
      if (v7)
      {
        CFRelease(v7);
        return 0;
      }

      return v7;
    }

LABEL_4:
    CFRetain(a3);
    goto LABEL_5;
  }

  if (CFEqual(a2, @"Port"))
  {
    CFNumberGetValue(a3, kCFNumberSInt32Type, v6 + 5);
    return 0;
  }

  if (!CFEqual(a2, @"Version"))
  {
    return 4294954512;
  }

  if (!a3)
  {
    return 4294954516;
  }

  v9 = CFGetTypeID(a3);
  v7 = 4294954516;
  if (v9 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(a3, kCFNumberSInt32Type, v6 + 44))
    {
      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return v7;
}

uint64_t tcp_SetEventHandler(uint64_t a1, NSObject *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    dispatch_release(v7);
    *(v6 + 64) = 0;
  }

  if (a2)
  {
    *(v6 + 64) = a2;
    dispatch_retain(a2);
  }

  else
  {
    *(v6 + 64) = FigDispatchQueueCreateWithPriority("FigTransportConnectionEvent", 0, 28);
  }

  v8 = *(v6 + 56);
  if (v8)
  {
    _Block_release(v8);
    *(v6 + 56) = 0;
  }

  if (!a3)
  {
    return 0;
  }

  v9 = _Block_copy(a3);
  result = 0;
  *(v6 + 56) = v9;
  return result;
}

uint64_t tcp_Stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v3 = *(DerivedStorage + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __tcp_Stop_block_invoke;
  v5[3] = &__block_descriptor_tmp_32;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

size_t tcp_EnqueuePackageWithPriority(const void *a1, unsigned int *a2, OpaqueCMBlockBuffer *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v9 = *a2;
  DataLength = CMBlockBufferGetDataLength(a3);
  if (*DerivedStorage)
  {
    v12 = 4294955241;
    goto LABEL_11;
  }

  if (a2[1] == 1885957735)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v20 = 4294955246;
    v21 = 965;
LABEL_20:
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v20, "<<< transporttcp >>>", v21, v17, v18, v19);
    goto LABEL_11;
  }

  if (!*(DerivedStorage + 121))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v20 = 4294955244;
    v21 = 966;
    goto LABEL_20;
  }

  if ((a4 - 3) <= 0xFFFFFFFD)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v20 = 4294955246;
    v21 = 967;
    goto LABEL_20;
  }

  v11 = v9 - DataLength;
  if (v11 <= 7)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v20 = 4294955246;
    v21 = 968;
    goto LABEL_20;
  }

  destinationBuffer = 0;
  if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v11, *MEMORY[0x1E695E488], 0, 0, v11, 1u, &destinationBuffer) || CMBlockBufferReplaceDataBytes(a2, destinationBuffer, 0, v11) || a3 && CMBlockBufferAppendBufferReference(destinationBuffer, a3, 0, 0, 0))
  {
    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }

    v12 = 4294955245;
  }

  else
  {
    v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    v14[1] = destinationBuffer;
    CFRetain(a1);
    v15 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __tcp_EnqueuePackageWithPriority_block_invoke;
    block[3] = &__block_descriptor_tmp_33_2;
    block[4] = v14;
    block[5] = DerivedStorage;
    v23 = a4;
    block[6] = a1;
    dispatch_async(v15, block);
    v12 = 0;
  }

LABEL_11:
  tcp_destroyPackageRecord(0);
  return v12;
}

uint64_t tcp_FlushPendingPackagesWithPriority(uint64_t a1, int a2)
{
  if (*CMBaseObjectGetDerivedStorage(a1))
  {
    return 4294955241;
  }

  tcp_sendDataToSocket(a1, a2);
  return 0;
}

void tcp_sendAndReceiveData(const void *a1)
{
  v27[8] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  CFRetain(a1);
  v3 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __tcp_sendAndReceiveData_block_invoke;
  block[3] = &__block_descriptor_tmp_22_2;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v3, block);
  v4 = (DerivedStorage + 96);
  if (!fcntl(*(DerivedStorage + 96), 4, 4) && !fcntl(*(DerivedStorage + 104), 4, 4))
  {
    *(DerivedStorage + 100) = 5;
    *(DerivedStorage + 108) = 1;
    while (!*(DerivedStorage + 120))
    {
      if (poll(v4, 2u, -1) < 0)
      {
        break;
      }

      if ((*(DerivedStorage + 110) & 0x19) != 0)
      {
          ;
        }

        if (*(DerivedStorage + 120))
        {
          break;
        }
      }

      v6 = *(DerivedStorage + 102);
      if ((v6 & 0x18) != 0)
      {
        break;
      }

      if (v6)
      {
        v7 = CMBaseObjectGetDerivedStorage(a1);
        v23 = 0;
        v24 = &v23;
        v25 = 0x2000000000;
        v26 = 1;
        v8 = MEMORY[0x1E69E9820];
        do
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x2000000000;
          v22 = 0;
          v9 = *(v7 + 16);
          v18[0] = v8;
          v18[1] = 0x40000000;
          v18[2] = __tcp_readDataFromSocket_block_invoke;
          v18[3] = &unk_1E74A5A60;
          v18[5] = &v19;
          v18[6] = a1;
          v18[4] = &v23;
          dispatch_sync(v9, v18);
          v10 = v20[3];
          if (v10)
          {
            v11 = CMBaseObjectGetDerivedStorage(a1);
            if (*(v11 + 56))
            {
              v12 = v11;
              CFRetain(v10);
              CFRetain(a1);
              v13 = *(v12 + 64);
              v27[0] = MEMORY[0x1E69E9820];
              v27[1] = 0x40000000;
              v27[2] = __tcp_didReceivePackage_block_invoke;
              v27[3] = &__block_descriptor_tmp_27_2;
              v27[4] = v12;
              v27[5] = v10;
              v27[6] = a1;
              dispatch_async(v13, v27);
            }

            CFRelease(v20[3]);
          }

          _Block_object_dispose(&v19, 8);
        }

        while (*(v24 + 24));
        _Block_object_dispose(&v23, 8);
        v6 = *(DerivedStorage + 102);
        v4 = (DerivedStorage + 96);
      }

      if ((v6 & 4) != 0)
      {
        tcp_sendDataToSocket(a1, 0);
      }

      v14 = *(DerivedStorage + 16);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = __tcp_sendAndReceiveData_block_invoke_3;
      v16[3] = &__block_descriptor_tmp_23_2;
      v16[4] = DerivedStorage;
      dispatch_sync(v14, v16);
    }
  }

  CFRetain(a1);
  v5 = *(DerivedStorage + 16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = __tcp_sendAndReceiveData_block_invoke_4;
  v15[3] = &__block_descriptor_tmp_25_3;
  v15[4] = DerivedStorage;
  v15[5] = a1;
  dispatch_async(v5, v15);
}

size_t FigTransportConnectionTCPCreate_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD0EEuLL, "<<< transporttcp >>>", 0x412, v1, v4, v5);
  *a1 = result;
  return result;
}

dispatch_queue_t FigDispatchQueueCreateTargetingWorkloopWithPriority(const char *a1, NSObject *a2, unsigned int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x100uLL);
  if (a1)
  {
    snprintf(__str, 0x100uLL, "%s.workloop(%d)");
  }

  else
  {
    snprintf(__str, 0x100uLL, "com.apple.coremedia.unknown.workloop(%d)");
  }

  WorkloopWithPriority = FigDispatchCreateWorkloopWithPriority(__str, a3);
  if (!WorkloopWithPriority)
  {
    return 0;
  }

  v7 = WorkloopWithPriority;
  v8 = dispatch_queue_create_with_target_V2(a1, a2, WorkloopWithPriority);
  if (gGMFigKTraceEnabled == 1)
  {
    FigThreadGetMachThreadPriorityValue(a3);
    kdebug_trace();
  }

  dispatch_release(v7);
  return v8;
}

dispatch_queue_t FigDispatchQueueCreateWithPriorityAndClientPID(const char *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  QualityOfServiceClassForFigThreadPriority = FigGetQualityOfServiceClassForFigThreadPriority(a3);
  v9 = dispatch_queue_attr_make_with_qos_class(a2, QualityOfServiceClassForFigThreadPriority, 0);
  if (a4)
  {
    v10 = dispatch_queue_create(a1, v9);
    if (v10)
    {
      v11 = figDispatch_copyRootQueueWithPriorityAndClientPID(a3, a4);
      if (v11)
      {
        v12 = v11;
        dispatch_set_target_queue(v10, v11);
        dispatch_release(v12);
      }
    }

    return v10;
  }

  else
  {

    return FigDispatchQueueCreateWithPriority(a1, v9, a3);
  }
}

uint64_t figDispatch_createRootQueueWithMachPriority(uint64_t a1, int a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&v9, 0, sizeof(v9));
  v8 = 0;
  if (pthread_attr_init(&v9))
  {
    return 0;
  }

  if (a3)
  {
    global_queue = dispatch_get_global_queue(a3, 0);
  }

  else
  {
    pthread_attr_setschedpolicy(&v9, 4);
    if (pthread_attr_getschedparam(&v9, &v8) || (v8.sched_priority = a2, pthread_attr_setschedparam(&v9, &v8)))
    {
      v6 = 0;
      goto LABEL_8;
    }

    global_queue = dispatch_pthread_root_queue_create();
  }

  v6 = global_queue;
LABEL_8:
  pthread_attr_destroy(&v9);
  return v6;
}

uint64_t __figDispatch_copyRootQueueWithPriorityAndClientPID_block_invoke_2(uint64_t a1)
{
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  figSetMachThreadPriority(v3, *(a1 + 32));
  v4 = pthread_self();
  v6 = 0;
  result = pthread_threadid_np(v4, &v6);
  if (!result)
  {
    return proc_pidbind();
  }

  return result;
}

uint64_t __figDispatch_getSharedPerMachPriorityRootQueueWithPriority_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x40uLL, "com.apple.coremedia.sharedRootQueue.%02d", *(a1 + 32));
  result = figDispatch_createRootQueueWithMachPriority(__str, *(a1 + 32), *(a1 + 36));
  sRootQueuesIndexedByMachPriority[2 * *(a1 + 32) + 1] = result;
  return result;
}

size_t FigDispatchQueueCreateStandardDispatchQueue_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE0EuLL, "(Fig)", 0x416, v1, v2, v3);
}

size_t FigDispatchQueueSetPriorityAndClientPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "(Fig)", 0x46D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigDispatchQueueSetPriorityAndClientPID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "(Fig)", 0x476, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigDispatchQueueSetPriorityAndClientPID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x459, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigDispatchSyncCopyPropertyImplementation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x4C2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigDispatchAsyncSetPropertyImplementation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "(Fig)", 0x4DE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigDispatchAsyncSetPropertyImplementation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x4DB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigDispatchQueueHolderCreateWithDispatchQueue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "(Fig)", 0x59A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigDispatchQueueHolderCreateWithDispatchQueue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x597, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigDispatchQueueHolderCreateWithDispatchQueue_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x596, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figSetMachThreadPriority_cold_1(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "(Fig)", 0x15B, v3, v4, v5);
}

size_t figSetMachThreadPriority_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFFFFFuLL, "(Fig)", 0x156, v1, v2, v3);
}

uint64_t __figDispatch_getRootQueueWithPriority_block_invoke_cold_1(unsigned int a1, unsigned int *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  QualityOfServiceClassForFigThreadPriority = FigGetQualityOfServiceClassForFigThreadPriority(a1);
  MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue(a1);
  snprintf(__str, 0x40uLL, "com.apple.coremedia.rootQueue.fP-%02d.mP-%02d", *a2, MachThreadPriorityValue);
  *a3 = MEMORY[0x1E69E9820];
  *(a3 + 8) = 0x40000000;
  *(a3 + 16) = __figDispatch_getRootQueueWithPriority_block_invoke_2;
  *(a3 + 24) = &__block_descriptor_tmp_16_3;
  *(a3 + 32) = MachThreadPriorityValue;
  result = figDispatch_createRootQueueWithMachPriority(__str, MachThreadPriorityValue, QualityOfServiceClassForFigThreadPriority);
  sRootQueuesIndexedByFigThreadPriority[2 * *a2 + 1] = result;
  return result;
}

size_t FigProcessStateMonitorGetServerPurgeState(uint64_t *a1)
{
  FigReentrantMutexLock(qword_1ED4CDA20);
  v3 = qword_1ED4CDA28;
  FigReentrantMutexUnlock(qword_1ED4CDA20);
  if (a1)
  {
    if (_MergedGlobals_64 != 1)
    {
      return 0;
    }

    v6 = remoteFigProcessStateMonitor_EnsureInternalStateSetup();
    if (v6)
    {
      return v6;
    }

    FigReentrantMutexLock(qword_1ED4CDA20);
    if ([qword_1ED4CDA30 count])
    {
      v24 = v1;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = [qword_1ED4CDA30 pointerAtIndex:{v8, v24}];
        if (v10)
        {
          break;
        }

LABEL_21:
        if (++v8 >= [qword_1ED4CDA30 count])
        {
          goto LABEL_30;
        }
      }

      v11 = v10;
      CFRetain(v10);
      v14 = v11[24];
      if (v14 == 1)
      {
        [qword_1ED4CDA30 replacePointerAtIndex:v8 withPointer:0];
LABEL_20:
        CFRelease(v11);
        goto LABEL_21;
      }

      v26 = 0;
      dataPointerOut = 0;
      v25 = 0;
      if (v14)
      {
        v19 = qword_1ED4CC378;
        v20 = 4294947859;
        v21 = 510;
      }

      else
      {
        DataPointer = CMBlockBufferGetDataPointer(*(v11 + 8), 0, 0, 0, &dataPointerOut);
        if (DataPointer)
        {
LABEL_26:
          v17 = DataPointer;
          v18 = 0;
          goto LABEL_27;
        }

        if ((dataPointerOut & 0xF) == 0)
        {
          v16 = *dataPointerOut;
          if (*dataPointerOut > 0)
          {
            v18 = 0;
            v17 = 0;
LABEL_15:
            FigXPCRelease(v18);
            FigXPCRelease(v25);
            if (v17)
            {
              v7 = v17;
            }

            else
            {
              v7 = v7;
            }

            if (v16 > v9)
            {
              v9 = v16;
            }

            goto LABEL_20;
          }

          v17 = FigXPCCreateBasicMessage(0x646F7063u, *(v11 + 5), &v26);
          v18 = v26;
          if (!v17)
          {
            FigXPCRemoteClientSendSyncMessageCreatingReply(*(v11 + 2), v26, &v25);
            v18 = v26;
            v16 = *dataPointerOut;
            goto LABEL_15;
          }

LABEL_27:
          v16 = 0;
          goto LABEL_15;
        }

        v19 = qword_1ED4CC378;
        v20 = 4294947862;
        v21 = 515;
      }

      DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, "<<<< FigProcessStateMonitorRemote >>>>", v21, v24, v12, v13);
      goto LABEL_26;
    }

    v9 = 0;
    v7 = 0;
LABEL_30:
    if (v3 <= v9)
    {
      figProcessStateMonitor_updateLastPurgeEventIfNecessary(v9);
      v3 = v9;
    }

    [qword_1ED4CDA30 compact];
    *a1 = v3;
    FigReentrantMutexUnlock(qword_1ED4CDA20);
    return v7;
  }

  else
  {
    v23 = qword_1ED4CC378;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorRemote >>>>", 0x227, v1, v4, v5);
  }
}

void figProcessStateMonitorRemote_Finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0;
  if (dword_1ED4CC380)
  {
    v25 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC378, 1, &v25, &type);
    v10 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    if (OUTLINED_FUNCTION_6_2(v10))
    {
      v27 = 136315394;
      v28 = "figProcessStateMonitorRemote_Finalize";
      v29 = 2114;
      v30 = a1;
      OUTLINED_FUNCTION_29_6();
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_34_4(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  FigStopMonitoringMediaServicesProcessDeath(a1, a2, a3, a4, a5, a6, a7, a8);
  FigXPCRemoteClientDisassociateObject(*(a1 + 16), *(a1 + 40));
  if (!*(a1 + 24) && !FigXPCCreateBasicMessage(0x64697370u, *(a1 + 40), &v26))
  {
    FigXPCRemoteClientSendAsyncMessage(*(a1 + 16), v26);
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    CFRelease(v19);
  }

  FigXPCRelease(*(a1 + 32));
  v20 = *(a1 + 72);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 96);
  if (v23)
  {
    CFRelease(v23);
  }

  FigXPCRelease(v26);
}

size_t FigProcessStateMonitorRemoteAssociateObject_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC378, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorRemote >>>>", 0x3AD, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigProcessStateMonitorRemoteAssociateObject_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC378, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorRemote >>>>", 0x3AC, v8, a7, a8);
  *a1 = result;
  return result;
}

uint64_t FigEndpointManagerGetSupportedFeatures(CFTypeRef cf1, int a2, uint64_t *a3)
{
  result = 4294950586;
  if (cf1 && a3)
  {
    if (CFEqual(cf1, @"AirPlay"))
    {
      result = 0;
      v7 = 63;
      if (!a2)
      {
        v7 = 31;
      }
    }

    else if (CFEqual(cf1, @"CarPlay") || CFEqual(cf1, @"Nero/Stevenote"))
    {
      result = 0;
      v7 = 3;
    }

    else
    {
      v8 = CFEqual(cf1, @"SidePlay");
      v9 = v8 != 0;
      if (v8)
      {
        result = 0;
      }

      else
      {
        result = 4294950583;
      }

      v7 = 8 * v9;
    }

    *a3 = v7;
  }

  return result;
}

uint64_t FigEndpointManagerGetSupportedDiscoveryFeatures(CFTypeRef cf1, uint64_t *a2)
{
  result = 4294950586;
  if (cf1 && a2)
  {
    v5 = CFEqual(cf1, @"AirPlay");
    result = 0;
    v6 = v5 == 0;
    v7 = 7;
    if (v6)
    {
      v7 = 5;
    }

    *a2 = v7;
  }

  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, uint64_t a3, CMFormatDescriptionRef *a4)
{
  *v18 = 0;
  blockBufferOut = 0;
  if (!theBuffer)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v4;
    v17 = 195;
LABEL_13:
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "(Fig)", v17, v16, v14, v15);
    goto LABEL_8;
  }

  if (!a4)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v4;
    v17 = 196;
    goto LABEL_13;
  }

  v6 = theBuffer;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!CMBlockBufferIsRangeContiguous(v6, 0, 0))
  {
    DataPointer = CMBlockBufferCreateContiguous(a1, v6, a1, 0, 0, 0, 0, &blockBufferOut);
    if (DataPointer)
    {
      goto LABEL_8;
    }

    v6 = blockBufferOut;
  }

  DataPointer = CMBlockBufferGetDataPointer(v6, 0, 0, 0, v18);
  if (!DataPointer)
  {
    DataPointer = CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData(a1, *v18, DataLength, v10, a4);
  }

LABEL_8:
  v11 = DataPointer;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v11;
}

uint64_t sceneBridgeAppendExtensionsFunc(const __CFString *a1, const void *a2, uint64_t a3)
{
  v28 = 0;
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v27 = 226;
LABEL_12:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE56uLL, "(Fig)", v27, v24, v25, v26);
    return FigAtomWriterEndAtom(a3, v13, v14, v15, v16, v17, v18, v19);
  }

  if (!a2 || (v7 = CFGetTypeID(a2), v7 != CFDataGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v27 = 227;
    goto LABEL_12;
  }

  if (!FigCFStringGetOSTypeValue(a1, &v28))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v27 = 230;
    goto LABEL_12;
  }

  if (!FigAtomWriterBeginAtom(a3, v28, 0, v8, v9, v10, v11, v12))
  {
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    FigAtomWriterAppendData(a3, BytePtr, Length);
  }

  return FigAtomWriterEndAtom(a3, v13, v14, v15, v16, v17, v18, v19);
}

size_t flipSceneDescriptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0x37, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x78, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x74, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x71, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x88, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x6D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0xAA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0xA4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "(Fig)", 0x12D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "(Fig)", 0x12E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE54uLL, "(Fig)", 0x13A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0x12C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0x12B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTransportConnectionUSBCreate(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  if (a2)
  {
    ClassID = NeroTransportConnectionGetClassID();
    v9 = CMDerivedObjectCreate(a1, &kFigTransportConnectionUSBVTable_1, ClassID, &cf, v5, v6, v7, v8);
    if (!v9)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
      v11 = FigDispatchQueueCreateWithPriority("FigTransportConnection", 0, 28);
      DerivedStorage[1] = v11;
      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = FigDispatchQueueCreateWithPriority("FigTransportConnection.data", 0, 28);
      DerivedStorage[2] = v12;
      if (!v12)
      {
        goto LABEL_16;
      }

      v13 = FigSimpleMutexCreate();
      DerivedStorage[26] = v13;
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = FigSimpleMutexCreate();
      DerivedStorage[20] = v14;
      if (!v14)
      {
        goto LABEL_16;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"FigMemoryPool_LoggingName", @"TransportConnectionUSB");
      v16 = CMMemoryPoolCreate(Mutable);
      DerivedStorage[14] = v16;
      if (Mutable)
      {
        CFRelease(Mutable);
        v16 = DerivedStorage[14];
      }

      if (v16)
      {
        Allocator = CMMemoryPoolGetAllocator(v16);
        DerivedStorage[15] = Allocator;
        if (Allocator)
        {
          CFRetain(Allocator);
        }

        DerivedStorage[4] = CFRetain(@"Nero");
        *a2 = cf;
        cf = 0;
        FigAtomicIncrement32(&sInstanceCount);
        v9 = 0;
      }

      else
      {
LABEL_16:
        v9 = 4294955245;
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFD0EEuLL, "<<< transportusb >>>", 0x7BE, v20, v21, v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t usb_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    usb_stopMessageSendingAndReceivingThreads(a1);
  }

  return 0;
}

uint64_t usb_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  usb_Invalidate(a1);
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 72) = 0;
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    _Block_release(v6);
    *(DerivedStorage + 96) = 0;
  }

  v7 = *(DerivedStorage + 104);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 104) = 0;
  }

  v8 = *(DerivedStorage + 112);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 112) = 0;
  }

  v9 = *(DerivedStorage + 120);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 120) = 0;
  }

  v10 = *(DerivedStorage + 32);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 32) = 0;
  }

  FigSimpleMutexDestroy(*(DerivedStorage + 208));
  FigSimpleMutexDestroy(*(DerivedStorage + 160));

  return FigAtomicDecrement32(&sInstanceCount);
}

uint64_t usb_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionMode"))
  {
    v8 = v7[9];
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (CFEqual(a2, @"Service"))
  {
    v8 = v7[10];
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (CFEqual(a2, @"IsHiSpeed"))
  {
    v9 = MEMORY[0x1E695E4D0];
    if (v7[31] != 512)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    v8 = *v9;
LABEL_12:
    v8 = CFRetain(v8);
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Version"))
  {
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v7 + 28);
    goto LABEL_13;
  }

  if (!CFEqual(a2, @"USBInterfaceName"))
  {
    return 4294954512;
  }

  v8 = v7[4];
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  v10 = 0;
  *a4 = v8;
  return v10;
}

uint64_t usb_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionMode"))
  {
    v7 = v6[9];
    v6[9] = a3;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"Service"))
  {
    v7 = v6[10];
    v6[10] = a3;
    if (!a3)
    {
LABEL_5:
      if (v7)
      {
        CFRelease(v7);
        return 0;
      }

      return v7;
    }

LABEL_4:
    CFRetain(a3);
    goto LABEL_5;
  }

  if (!CFEqual(a2, @"Version"))
  {
    if (!CFEqual(a2, @"USBInterfaceName"))
    {
      return 4294954512;
    }

    v7 = v6[4];
    v6[4] = a3;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!a3)
  {
    return 4294954516;
  }

  v9 = CFGetTypeID(a3);
  v7 = 4294954516;
  if (v9 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(a3, kCFNumberSInt32Type, v6 + 28))
    {
      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return v7;
}

uint64_t usb_SetEventHandler(uint64_t a1, NSObject *a2, unint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 104);
  if (a2 | a3)
  {
    if (v7)
    {
      dispatch_release(v7);
      *(v6 + 104) = 0;
    }

    if (a2)
    {
      *(v6 + 104) = a2;
      dispatch_retain(a2);
    }

    else
    {
      *(v6 + 104) = FigDispatchQueueCreateWithPriority("FigTransportConnectionEvent", 0, 28);
    }

    v8 = *(v6 + 96);
    if (v8)
    {
      _Block_release(v8);
      *(v6 + 96) = 0;
    }

    if (a3)
    {
      v9 = _Block_copy(a3);
      result = 0;
      *(v6 + 96) = v9;
      return result;
    }
  }

  else
  {
    if (!v7)
    {
      return 4294955240;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __usb_SetEventHandler_block_invoke;
    block[3] = &__block_descriptor_tmp_26_3;
    block[4] = v6;
    dispatch_sync(v7, block);
  }

  return 0;
}

uint64_t usb_Stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v3 = *(DerivedStorage + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __usb_Stop_block_invoke;
  v5[3] = &__block_descriptor_tmp_59;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

size_t usb_EnqueuePackageWithPriority(const void *a1, _DWORD *a2, OpaqueCMBlockBuffer *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  if (a2[1] == 1885957735)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v20 = 4294955246;
    v21 = 1913;
  }

  else if (DerivedStorage[25])
  {
    if ((a4 - 3) > 0xFFFFFFFD)
    {
      destinationBuffer[0] = 0;
      if (*a2 <= 7u)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFD0EAuLL, "<<< transportusb >>>", 0x231, v23, v24, v25);
        return 0;
      }

      v9 = *a2 - CMBlockBufferGetDataLength(a3);
      appended = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v9, *MEMORY[0x1E695E488], 0, 0, v9, 1u, destinationBuffer);
      v11 = destinationBuffer[0];
      if (!appended)
      {
        appended = CMBlockBufferReplaceDataBytes(a2, destinationBuffer[0], 0, v9);
        v11 = destinationBuffer[0];
        if (a3)
        {
          if (!appended)
          {
            appended = CMBlockBufferAppendBufferReference(destinationBuffer[0], a3, 0, 0, 0);
            v11 = destinationBuffer[0];
          }
        }
      }

      if (!appended || !v11)
      {
        if (!v11)
        {
          return 0;
        }

        v12 = CMBaseObjectGetDerivedStorage(a1);
        if (!*v12)
        {
          v13 = v12;
          CFRetain(v11);
          CFRetain(a1);
          v14 = *(v13 + 2);
          destinationBuffer[0] = MEMORY[0x1E69E9820];
          destinationBuffer[1] = 0x40000000;
          destinationBuffer[2] = __usb_enqueuePackageWithPriority_block_invoke;
          destinationBuffer[3] = &__block_descriptor_tmp_60_0;
          v27 = a4;
          destinationBuffer[4] = v13;
          destinationBuffer[5] = v11;
          destinationBuffer[6] = a1;
          dispatch_async(v14, destinationBuffer);
        }
      }

      CFRelease(v11);
      return 0;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v20 = 4294955246;
    v21 = 1915;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v20 = 4294955244;
    v21 = 1914;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v20, "<<< transportusb >>>", v21, v17, v18, v19);
}

uint64_t usb_FlushPendingPackagesWithPriority(const void *a1, int a2)
{
  if (*CMBaseObjectGetDerivedStorage(a1))
  {
    return 4294955241;
  }

  usb_sendDataViaUSB(a1, a2);
  return 0;
}

uint64_t usb_sendMemoryBlockViaUSB(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v7 = 0;
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 25))
    {
      if ((*(*(DerivedStorage + 240) + 16))() == -536870186)
      {
        CFRetain(a1);
        v4 = *(v3 + 8);
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 0x40000000;
        v6[2] = __usb_sendMemoryBlockViaUSB_block_invoke;
        v6[3] = &__block_descriptor_tmp_36_0;
        v6[4] = a1;
        dispatch_async(v4, v6);
      }
    }
  }

  return v7;
}

size_t usb_Start_cold_1(uint64_t a1, _DWORD *a2)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD0EEuLL, "<<< transportusb >>>", 0x73C, v2, v6, v7);
  *a2 = result;
  *(*a1 + 24) = result;
  return result;
}

uint64_t FigXPCMessageGetOpCode(void *a1, _DWORD *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, ".Operation");
  if (!uint64)
  {
    return 4294951145;
  }

  result = 0;
  *a2 = uint64;
  return result;
}

unint64_t FigXPCSendStdCopyPropertyMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OUTLINED_FUNCTION_11_18(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, *v16, cf);
  if (!v11)
  {
    v11 = FigXPCMessageSetCFString(*v16, ".PropertyName", v10);
    if (!v11)
    {
      v11 = FigXPCRemoteClientSendSyncMessageCreatingReply(v9, *v16, &v15);
      if (!v11)
      {
        v11 = FigXPCMessageCopyCFObject(v15, ".Value", &cf);
      }
    }
  }

  v12 = v11;
  if (v8)
  {
    *v8 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease(v15);
  FigXPCRelease(*v16);
  return v12;
}

uint64_t FigXPCSendStdSetPropertyMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OUTLINED_FUNCTION_13_15(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15);
  if (!v11)
  {
    v11 = FigXPCMessageSetCFString(v16, ".PropertyName", v10);
    if (!v11)
    {
      v11 = FigXPCMessageSetCFObject(v16, ".Value", v9);
      if (!v11)
      {
        v11 = FigXPCRemoteClientSendSyncMessageCreatingReply(v8, v16, 0);
      }
    }
  }

  v12 = v11;
  FigXPCRelease(v16);
  return v12;
}

uint64_t FigXPCHandleStdCopyPropertyMessage(uint64_t a1, void *a2, void *a3)
{
  cf = 0;
  v17 = 0;
  v6 = FigXPCMessageCopyCFString(a2, ".PropertyName", &v17);
  if (v6)
  {
    goto LABEL_12;
  }

  v7 = v17;
  if (!v17)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE10uLL, "<< FigXPC >>", 0x3FB, v3, v14, v15);
LABEL_12:
    v11 = v6;
    goto LABEL_8;
  }

  v8 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
  if (v8)
  {
    v9 = v8(a1, v7, *MEMORY[0x1E695E480], &cf);
    v10 = cf;
    if (!v9)
    {
      v11 = FigXPCMessageSetCFObject(a3, ".Value", cf);
      v10 = cf;
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    v11 = v9;
    if (cf)
    {
LABEL_6:
      CFRelease(v10);
    }
  }

  else
  {
    v11 = 4294954514;
  }

LABEL_8:
  if (v17)
  {
    CFRelease(v17);
  }

  return v11;
}

uint64_t FigXPCHandleStdSetPropertyMessage(uint64_t a1, void *a2)
{
  cf = 0;
  v14 = 0;
  v4 = FigXPCMessageCopyCFString(a2, ".PropertyName", &v14);
  if (v4)
  {
    goto LABEL_6;
  }

  if (!v14)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE10uLL, "<< FigXPC >>", 0x411, v10, v11, v12);
    goto LABEL_6;
  }

  v4 = FigXPCMessageCopyCFObject(a2, ".Value", &cf);
  if (v4)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_8;
  }

  if (*(*(CMBaseObjectGetVTable(a1) + 8) + 56))
  {
    v5 = OUTLINED_FUNCTION_2_9();
    v4 = v6(v5);
    goto LABEL_6;
  }

  v7 = 4294954514;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

void figXPCConnection_forwardThreadAbortForSyncXPCMessage(int64_t *a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1[1] + 24));
  if (v2)
  {
    v3 = v2;
    v4 = v2[4];
    if (v4)
    {
      figXPCConnection_forwardThreadAbort(v4, 0, *a1);
    }

    else
    {
      OUTLINED_FUNCTION_5_34();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v5, 0, v6, v7);
      v9 = v18;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v10 = v18;
      }

      else
      {
        v10 = v18 & 0xFFFFFFFE;
      }

      if (v10)
      {
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl();
        v9 = v18;
      }

      v11 = OUTLINED_FUNCTION_3_40();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v11, v12, v13, v14, v15, v9, 0, v16);
    }

    CFRelease(v3);
  }
}

uint64_t __FigXPCConnectionSendAsyncMessageWithReplyHandler_block_invoke(uint64_t a1, uint64_t a2)
{
  figXPCConnection_processServerReply(*(a1 + 40), a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t FigXPCConnectionSetCustomServerTimeoutPerConnection(uint64_t a1, int64_t a2)
{
  xdict = 0;
  v4 = FigXPCCreateBasicMessage(0x2E746F21u, 0, &xdict);
  v5 = xdict;
  if (!v4)
  {
    xpc_dictionary_set_int64(xdict, ".SelfTerminationTimeout", a2);
    v4 = FigXPCConnectionSendAsyncMessage(a1, v5);
  }

  v6 = v4;
  FigXPCRelease(v5);
  return v6;
}

size_t FigXPCConnectionAssociateObject(uint64_t a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    result = FigCFWeakReferenceTableAddValueAssociatedWithKey(*(a1 + 32), a2, a3);
    if (!result)
    {
      result = FigCFWeakReferenceTableAddValueAssociatedWithKey(*(*(a1 + 16) + 112), a2, a3);
      if (!result)
      {
        FigSimpleMutexLock(*(a1 + 96));
        v14 = *(a1 + 104);
        if (v14)
        {
          FigProcessStateMonitorRemoteAssociateObject(v14, a3, v8, v9, v10, v11, v12, v13);
        }

        FigSimpleMutexUnlock(*(a1 + 96));
        return 0;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x658, v3, v16, v17);
  }

  return result;
}

size_t FigXPCConnectionDisassociateObject(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (!a2)
    {
      return 0;
    }

    result = FigCFWeakReferenceTableRemoveValue(*(a1 + 32), a2);
    if (!result)
    {
      result = FigCFWeakReferenceTableRemoveValue(*(*(a1 + 16) + 112), a2);
      if (!result)
      {
        FigSimpleMutexLock(*(a1 + 96));
        v11 = *(a1 + 104);
        if (v11)
        {
          FigProcessStateMonitorRemoteDisassociateObject(v11, a2, v5, v6, v7, v8, v9, v10);
        }

        FigSimpleMutexUnlock(*(a1 + 96));
        return 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x673, v13, v14, v15);
  }

  return result;
}

uint64_t FigXPCConnectionRetainCopiedObject(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = 0;
  cf = 0;
  v18 = 0;
  if (a1)
  {
    v16 = a2 & 0xFFFFFFFFFFFFFF00;
    v6 = FigCFWeakReferenceTableApplyFunction(*(*(a1 + 16) + 112), figXPC_RetainCopiedObjectApplierFunction, &v16);
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = cf;
    if (!cf || v18 == a2)
    {
      goto LABEL_7;
    }

    xdict = 0;
    v8 = FigXPCCreateBasicMessage(0x2E6E6370u, a2, &xdict);
    if (!v8)
    {
      v9 = xdict;
      v6 = FigXPCConnectionSendAsyncMessage(a1, xdict);
      FigXPCRelease(v9);
      v7 = cf;
LABEL_7:
      *a3 = v7;
      cf = 0;
      goto LABEL_8;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x6B4, v12, v13, v14);
  }

  v6 = v8;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

unint64_t FigXPCConnectionSendStdCopyPropertyMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OUTLINED_FUNCTION_11_18(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, *v16, cf);
  if (!v11)
  {
    v11 = FigXPCMessageSetCFString(*v16, ".PropertyName", v10);
    if (!v11)
    {
      v11 = FigXPCConnectionSendSyncMessageCreatingReply(v9, *v16, &v15);
      if (!v11)
      {
        v11 = FigXPCMessageCopyCFObject(v15, ".Value", &cf);
      }
    }
  }

  v12 = v11;
  if (v8)
  {
    *v8 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease(v15);
  FigXPCRelease(*v16);
  return v12;
}

uint64_t FigXPCConnectionSendStdSetPropertyMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OUTLINED_FUNCTION_13_15(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15);
  if (!v11)
  {
    v11 = FigXPCMessageSetCFString(v16, ".PropertyName", v10);
    if (!v11)
    {
      v11 = FigXPCMessageSetCFObject(v16, ".Value", v9);
      if (!v11)
      {
        v11 = FigXPCConnectionSendSyncMessageCreatingReply(v8, v16, 0);
      }
    }
  }

  v12 = v11;
  FigXPCRelease(v16);
  return v12;
}

uint64_t FigXPCConnectionCopyMemoryOriginForConnectedProcess(uint64_t a1, CFTypeRef *a2)
{
  v11 = 0;
  FigSimpleMutexLock(*(*(a1 + 16) + 128));
  v4 = *(*(a1 + 16) + 136);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = FigXPCCreateBasicMessage(0x2E6F7267u, 0, &v11);
    v5 = v11;
    if (v6 || (v6 = FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1(v11), v6) || (v7 = OUTLINED_FUNCTION_2_9(), v6 = FigXPCConnectionSendSyncMessageCreatingReply(v7), v6) || (v6 = FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2(0, (*(a1 + 16) + 136)), v6))
    {
      v8 = v6;
      goto LABEL_9;
    }

    v4 = *(*(a1 + 16) + 136);
  }

  v8 = 0;
  *a2 = CFRetain(v4);
LABEL_9:
  v9 = OUTLINED_FUNCTION_22_11();
  FigSimpleMutexUnlock(v9);
  FigXPCRelease(v5);
  FigXPCRelease(0);
  return v8;
}

uint64_t FigXPCConnectionCopyMemoryRecipientForConnectedProcess(uint64_t a1, CFTypeRef *a2)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  FigSimpleMutexLock(*(*(a1 + 16) + 128));
  v4 = *(*(a1 + 16) + 144);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    updated = FigXPCCreateBasicMessage(0x2E727031u, 0, &v13);
    v5 = v13;
    if (updated || (v7 = OUTLINED_FUNCTION_2_9(), updated = FigXPCConnectionSendSyncMessageCreatingReply(v7), updated) || (updated = FigXPCCreateBasicMessage(0x2E727032u, 0, &v11), updated) || (updated = FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2(v12, v11, *(*(a1 + 16) + 16), (*(a1 + 16) + 144)), updated) || (updated = FigXPCConnectionSendSyncMessageCreatingReply(a1), updated))
    {
      v8 = updated;
      goto LABEL_10;
    }

    v4 = *(*(a1 + 16) + 144);
  }

  v8 = 0;
  *a2 = CFRetain(v4);
LABEL_10:
  v9 = OUTLINED_FUNCTION_22_11();
  FigSimpleMutexUnlock(v9);
  FigXPCRelease(v5);
  FigXPCRelease(v12);
  FigXPCRelease(v11);
  return v8;
}

uint64_t FigXPCConnectionCreateAssociatedEventLink(_DWORD *a1, uint64_t a2, unsigned int a3, int a4, CFTypeRef *a5)
{
  cf = 0;
  v27 = 0;
  xdict = 0;
  v25 = 0;
  v23 = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v21 = 4294951145;
    v22 = 2611;
LABEL_21:
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v21, "<< FigXPC >>", v22, v18, v19, v20);
LABEL_22:
    v15 = v9;
    v11 = 0;
    goto LABEL_10;
  }

  if (a1[20])
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v21 = 4294951142;
    v22 = 2612;
    goto LABEL_21;
  }

  v9 = FigXPCConnectionCopyMemoryOriginForConnectedProcess(a1, &v27);
  if (v9)
  {
    goto LABEL_22;
  }

  v9 = FigXPCConnectionCopyMemoryRecipientForConnectedProcess(a1, &cf);
  if (v9)
  {
    goto LABEL_22;
  }

  v10 = FigXPCCreateBasicMessage(0x2E656C73u, 0, &xdict);
  v11 = xdict;
  if (v10 || (xpc_dictionary_set_uint64(xdict, "ServerEventLinkFigThreadPriority", a3), xpc_dictionary_set_int64(v11, "ServerEventLinkMachThreadPriority", a4), v10 = FigXPCConnectionSendSyncMessageCreatingReply(a1, v11, &v23), v10))
  {
    v15 = v10;
LABEL_10:
    v13 = v27;
    goto LABEL_11;
  }

  v12 = CFGetAllocator(a1);
  v13 = v27;
  v14 = FigOSEventLinkRemoteCreateFromXPCObject(v12, v23, v27, cf, &v25);
  if (!v14)
  {
    v15 = FigOSEventLinkRemoteSetAbortActionCallback(v25, a1, figXPCConnection_forwardThreadAbortForEventLink);
    if (!v15)
    {
      *a5 = v25;
      v25 = 0;
    }

    goto LABEL_10;
  }

  v15 = v14;
LABEL_11:
  FigXPCRelease(v11);
  FigXPCRelease(v23);
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v15;
}

size_t FigXPCServerCreateAssociatedEventLinkForConnection(_xpc_connection_s *a1, int a2, const void *a3, const void *a4, uint64_t a5, unsigned int a6, int a7, CFTypeRef *a8)
{
  v8 = a1;
  xdict = 0;
  cf = 0;
  if (a1)
  {
    v15 = FigXPCCreateBasicMessage(0x2E656C63u, 0, &xdict);
    v16 = xdict;
    if (v15)
    {
      v17 = v15;
      v8 = 0;
    }

    else
    {
      xpc_dictionary_set_uint64(xdict, "ServerEventLinkFigThreadPriority", a6);
      xpc_dictionary_set_int64(v16, "ServerEventLinkMachThreadPriority", a7);
      v8 = xpc_connection_send_message_with_reply_sync(v8, v16);
      if (v8)
      {
        v17 = FigOSEventLinkRemoteCreateFromXPCObject(a2, v8, a3, a4, &cf);
        if (!v17)
        {
          *a8 = cf;
          cf = 0;
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFC0E1uLL, "<< FigXPC >>", 0xA76, v24, v25, v26);
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xA6A, v20, v21, v22);
    v16 = 0;
  }

  FigXPCRelease(v16);
  FigXPCRelease(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t FigXPCRemoteClientCopyMemoryOriginAsync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v13 = 0;
  v4 = OUTLINED_FUNCTION_22_11();
  FigSimpleMutexLock(v4);
  if (*(v3[2] + 136))
  {
    (*(a2 + 16))(a2, 0);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = FigXPCCreateBasicMessage(0x2E6F7267u, 0, &v13);
    v5 = v13;
    if (!v7)
    {
      v7 = FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1(v13);
      if (!v7)
      {
        CFRetain(v3);
        v8 = OUTLINED_FUNCTION_2_9();
        v7 = FigXPCConnectionSendAsyncMessageWithReplyHandler(v8, v9, v10);
      }
    }

    v6 = v7;
  }

  v11 = OUTLINED_FUNCTION_22_11();
  FigSimpleMutexUnlock(v11);
  FigXPCRelease(v5);
  return v6;
}

xpc_connection_t __FigXPCRemoteClientCreateSecondaryConnection_block_invoke(uint64_t a1)
{
  xdict = 0;
  v14 = 0;
  v2 = FigXPCCreateBasicMessage(0x2E326E64u, 0, &v14);
  v3 = v14;
  if (v2 || FigXPCRemoteClientSendSyncMessageCreatingReply(*(a1 + 32), v14, &xdict))
  {
    goto LABEL_11;
  }

  value = xpc_dictionary_get_value(xdict, ".SecondaryEndpoint");
  if (!value)
  {
    v8 = 3214;
LABEL_10:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0E1uLL, "<< FigXPC >>", v8, v10, v11, v12);
LABEL_11:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = value;
  if (MEMORY[0x19A8DA4F0]() != MEMORY[0x1E69E9E90])
  {
    v8 = 3215;
    goto LABEL_10;
  }

  v6 = xpc_connection_create_from_endpoint(v5);
  if (!v6)
  {
    v8 = 3219;
    goto LABEL_10;
  }

LABEL_6:
  FigXPCRelease(v3);
  FigXPCRelease(xdict);
  return v6;
}

size_t figXPC_RegisterServedObject(uint64_t a1, void *a2, const void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  if (a1)
  {
    if (a3)
    {
      v16 = *(*(a1 + 56) + 8) | (FigAtomicIncrement32((*(a1 + 56) + 20)) << 8) | 1;
      result = figXPC_RegisterServedObjectWithID(a1, a2, a3, a4, a5, a6, a7, v16);
      if (!result)
      {
        *a8 = v16;
      }

      return result;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v22 = 5860;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v22 = 5859;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFC0E9uLL, "<< FigXPC >>", v22, v19, v20, v21);
}

size_t figXPC_CopyInfoForProcess(uint64_t a1, void *key, void *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if (key > 0)
  {
    v5 = key;
    v7 = key;
    Value = CFDictionaryGetValue(*(a1 + 104), key);
    if (Value)
    {
      v9 = CFRetain(Value);
      if (v9)
      {
        goto LABEL_30;
      }
    }

    v66 = 0;
    v10 = *MEMORY[0x1E695E480];
    if (_MergedGlobals_66 != -1)
    {
      dispatch_once(&_MergedGlobals_66, &__block_literal_global_160);
    }

    Instance = _CFRuntimeCreateInstance();
    v9 = Instance;
    if (!Instance)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v36 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x13DC, v45, v46, v47);
      v37 = 0;
LABEL_27:
      free(v37);
      if (v36)
      {
        return v36;
      }

      goto LABEL_28;
    }

    *(Instance + 16) = v5;
    asprintf(&v66, "%s(%d)-messages", *(a1 + 88), v5);
    v12 = FigDispatchQueueCreateWithPriority(v66, 0, *(a1 + 120));
    v9[3] = v12;
    FigThreadMakeDispatchQueueAbortable(v12);
    v13 = FigSimpleMutexCreate();
    v9[10] = v13;
    if (v13)
    {
      Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
      v9[11] = Mutable;
      if (Mutable)
      {
        if (*(a1 + 124))
        {
          v15 = *a1;
          if (*a1)
          {
            v15 = CFRetain(v15);
          }

          v9[6] = v15;
        }

        else
        {
          FigCFWeakReferenceTableCreate(v10, 1, v9 + 6);
        }

        v9[7] = a1;
        *(v9 + 44) = 0;
        v16 = OUTLINED_FUNCTION_16_13();
        v20 = CFDictionaryCreateMutable(v16, v17, v18, v19);
        v9[20] = v20;
        if (v20)
        {
          v21 = OUTLINED_FUNCTION_16_13();
          v24 = CFDictionaryCreateMutable(v21, v22, v23, 0);
          v9[21] = v24;
          if (v24)
          {
            v25 = *(v9[7] + 88);
            v26 = *(v9 + 4);
            cf = 0;
            label[0] = 0;
            v75 = 0u;
            v76 = 0u;
            v74 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            handler = 0u;
            if (qword_1ED4CDB20 != -1)
            {
              dispatch_once(&qword_1ED4CDB20, &__block_literal_global_173);
            }

            v27 = _CFRuntimeCreateInstance();
            if (v27)
            {
              v28 = v27;
              FigServer_CopyProcessName(v26, &cf);
              CStringPtrMaybeUsingPreallocatedBuffer = FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(cf, &handler, 128, 0x600u);
              asprintf(label, "%s(%s-%d)-drainNotifications", v25, CStringPtrMaybeUsingPreallocatedBuffer, v26);
              snprintf((v28 + 16), 0x80uLL, "%s-%d", v25, v26);
              v30 = FigSimpleMutexCreate();
              *(v28 + 152) = v30;
              if (v30)
              {
                v31 = OUTLINED_FUNCTION_16_13();
                v34 = CFArrayCreateMutable(v31, v32, v33);
                *(v28 + 160) = v34;
                if (v34)
                {
                  v35 = dispatch_queue_create(label[0], 0);
                  *(v28 + 144) = v35;
                  if (v35)
                  {
                    v36 = 0;
                    *(v28 + 168) = 0;
                    v9[14] = v28;
                    goto LABEL_23;
                  }

                  v61 = 4381;
                }

                else
                {
                  v61 = 4379;
                }
              }

              else
              {
                v61 = 4377;
              }

              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_27_2();
              v36 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, 0xFFFFC0EAuLL, "<< FigXPC >>", v61, v63, v64, v65);
              CFRelease(v28);
            }

            else
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_27_2();
              v36 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1110, v58, v59, v60);
            }

LABEL_23:
            if (cf)
            {
              CFRelease(cf);
            }

            free(label[0]);
            if (!v36)
            {
              v37 = v66;
              goto LABEL_27;
            }

LABEL_42:
            free(v66);
            CFRelease(v9);
            v9 = 0;
            if (v36)
            {
              return v36;
            }

LABEL_28:
            CFDictionarySetValue(*(a1 + 104), v7, v9);
            v38 = dispatch_source_create(MEMORY[0x1E69E96F0], v7, 0x80000000uLL, qword_1ED4CDB30);
            if (v38)
            {
              v39 = v38;
              *&handler = MEMORY[0x1E69E9820];
              *(&handler + 1) = 0x40000000;
              *&v70 = __figXPC_StartListeningForClientProcessDeath_block_invoke;
              *(&v70 + 1) = &__block_descriptor_tmp_174;
              *&v71 = a1;
              DWORD2(v71) = v5;
              dispatch_source_set_event_handler(v38, &handler);
              label[0] = MEMORY[0x1E69E9820];
              label[1] = 0x40000000;
              label[2] = __figXPC_StartListeningForClientProcessDeath_block_invoke_2;
              label[3] = &__block_descriptor_tmp_175;
              label[4] = v39;
              dispatch_source_set_cancel_handler(v39, label);
              v9[13] = v39;
              dispatch_resume(v39);
            }

            else
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_27_2();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x141B, v50, v51, v52);
            }

LABEL_30:
            v36 = 0;
            *a3 = v9;
            return v36;
          }

          v48 = 5110;
        }

        else
        {
          v48 = 5108;
        }
      }

      else
      {
        v48 = 5096;
      }
    }

    else
    {
      v48 = 5094;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v36 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, 0xFFFFC0EAuLL, "<< FigXPC >>", v48, v54, v55, v56);
    goto LABEL_42;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x1441, v3, v42, v43);
}

size_t FigXPCServerStartWithNewXPCEndpoint(uint64_t a1, unint64_t *a2, int a3, uint64_t *a4)
{
  v5 = FigXPCServerStartWithListenerCreatingBlock(a1, a2, a3, a4, &__block_literal_global_59);
  if (!v5)
  {
    *(*a4 + 32) = xpc_endpoint_create(*(*a4 + 24));
  }

  return v5;
}

void figXPC_PurgeObjectsForPIDArrayApplier(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_unfair_lock_s **cf, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_19_13();
  a19 = v20;
  a20 = v22;
  v24 = v23;
  v25 = v21;
  cf = 0;
  if (*(v21 + 137))
  {
    v35 = 0;
    v29 = 0;
  }

  else
  {
    FigSimpleMutexLock(*(v21 + 112));
    v26 = figXPC_CopyInfoForProcess(v25, *(v24 + 2), &cf);
    FigSimpleMutexUnlock(*(v25 + 112));
    if (v26)
    {
      v29 = 0;
      v35 = 1;
    }

    else
    {
      v27 = cf;
      FigSimpleMutexLock(cf[10]);
      Count = CFArrayGetCount(v27[11]);
      v29 = xpc_array_create(0, 0);
      if (Count >= 1)
      {
        v30 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v27[11], v30 - 2);
          figXPC_ForgetNotificationsForServedObject(v27[14], ValueAtIndex);
          FigCFWeakReferenceTableRemoveValue(v27[6], ValueAtIndex[3]);
          xpc_array_set_uint64(v29, 0xFFFFFFFFFFFFFFFFLL, ValueAtIndex[3]);
          CFArrayRemoveValueAtIndex(v27[11], v30 - 2);
          --v30;
        }

        while (v30 > 1);
      }

      if (v27[4])
      {
        v32 = v24[2];
        xdict = 0;
        v33 = FigXPCCreateBasicMessage(0x2E706721u, 0, &xdict);
        v34 = xdict;
        if (!v33)
        {
          xpc_dictionary_set_value(xdict, ".ObjectIDs", v29);
          xpc_dictionary_set_int64(v34, ".PurgeIdentifier", v32);
          xpc_connection_send_notification();
        }

        FigXPCRelease(v34);
      }

      v27[12] = (*&v27[7][2]._os_unfair_lock_opaque | (FigAtomicIncrement32(&v27[7][5]) << 8) | 1);
      FigSimpleMutexUnlock(v27[10]);
      v35 = 0;
    }
  }

  if (*v24)
  {
    (*(*v24 + 16))(*v24, *(v25 + 88), v29, v24[2], v35);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_10_6();

  FigXPCRelease(v36);
}

void figXPCConnection_forwardThreadAbort(uint64_t a1, unsigned int a2, int64_t a3)
{
  xdict = 0;
  v5 = FigXPCCreateBasicMessage(0x2E737470u, 0, &xdict);
  v6 = xdict;
  if (!v5)
  {
    xpc_dictionary_set_int64(xdict, ".AbortActionID", a3);
    xpc_dictionary_set_int64(v6, ".AbortActionTarget", a2);
    v7 = OUTLINED_FUNCTION_2_9();
    FigXPCConnectionSendAsyncMessage(v7, v8);
  }

  FigXPCRelease(v6);
}

void __FigXPCRemoteClientCreateWithConnectionCreatingBlockAsync_block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  if (!a2)
  {
    if (cf)
    {
      v4 = CFRetain(cf);
    }

    else
    {
      v4 = 0;
    }

    *(*(a1 + 40) + 24) = v4;
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener(DefaultLocalCenter, *(a1 + 40), figXPCRemoteClient_PrimaryConnectionNotificationCallback, 0, *(*(a1 + 40) + 24), 0, 0);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

void __FigXPCConnectionCopyMemoryOriginForConnectedProcessAsync_block_invoke(uint64_t a1, int a2, void *a3)
{
  FigSimpleMutexLock(*(*(*(a1 + 40) + 16) + 128));
  if (!a2)
  {
    v6 = *(*(a1 + 40) + 16);
    v8 = *(v6 + 136);
    v7 = (v6 + 136);
    if (!v8)
    {
      FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2(a3, v7);
    }
  }

  (*(*(a1 + 32) + 16))();
  FigSimpleMutexUnlock(*(*(*(a1 + 40) + 16) + 128));
  v9 = *(a1 + 40);
  if (v9)
  {

    CFRelease(v9);
  }
}

void figXPCServedObject_NotificationCallback(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5)
{
  if (!*(a2 + 56))
  {
    return;
  }

  v8 = FigCFWeakReferenceLoadAndRetain((a2 + 64));
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = *(v8 + 14);
  FigSimpleMutexLock(*(v10 + 152));
  v11 = *(v10 + 172);
  if ((v11 - 1) < 2)
  {
    OUTLINED_FUNCTION_18_15();
  }

  else if (v11)
  {
    if (v11 == 3)
    {
      v12 = *(v10 + 168);
LABEL_14:
      *(v10 + 168) = v12 + 1;
      FigSimpleMutexUnlock(*(v10 + 152));
      figXPC_SendOneNotification(a2, a3, a5);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *(v10 + 168);
    if (v12 < 100)
    {
      goto LABEL_14;
    }

    *(v10 + 172) = 1;
    OUTLINED_FUNCTION_18_15();
    figXPC_SendNotificationCheckpoint(v10, *(a2 + 56));
  }

  FigSimpleMutexUnlock(*(v10 + 152));
LABEL_11:

  CFRelease(v9);
}

void figXPC_SendOneNotification(void *a1, const void *a2, const void *a3)
{
  *v12 = 0;
  v6 = FigXPCCreateBasicMessage(0x2E6E6F74u, a1[3], v12);
  v7 = *v12;
  if (v6)
  {
    goto LABEL_14;
  }

  FigXPCMessageSetCFString(*v12, ".NotificationName", a2);
  v8 = a1[6];
  if (!v8)
  {
    if (a3)
    {
LABEL_7:
      v10 = CFRetain(a3);
LABEL_8:
      if (v10)
      {
LABEL_9:
        if (!FigXPCMessageSetCFDictionary(v7, ".payload", v10))
        {
          xpc_connection_send_notification();
        }

        CFRelease(v10);
        v7 = *v12;
        goto LABEL_14;
      }
    }

LABEL_13:
    xpc_connection_send_notification();
    goto LABEL_14;
  }

  v11 = 0;
  v9 = v8(a1[4], a1[2], a2, a3, &v11, v7);
  v10 = 0;
  switch(v9)
  {
    case 0:
      if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    case 2:
      goto LABEL_8;
    case 4:
      v10 = v11;
      if (!v11)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    default:
      break;
  }

LABEL_14:
  FigXPCRelease(v7);
}

void figXPC_HandleMessage(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, ".Operation");
  context = xpc_connection_get_context(a3);
  if (context)
  {
    v10 = CFRetain(context);
  }

  else
  {
    v10 = 0;
  }

  xdicta[0] = 0;
  if (*(a1 + 125) && FigAtomicCompareAndSwap32(0, 1u, (a2 + 40)))
  {
    figXPCServer_EstablishSecondaryConnectionManagement(a1, a2);
    v11 = FigXPCCreateBasicMessage(0x2E636164u, 0, xdicta);
    v12 = xdicta[0];
    if (!v11)
    {
      xpc_dictionary_set_value(xdicta[0], ".SecondaryEndpoint", *(a2 + 136));
      v13 = xpc_connection_send_message_with_reply_sync(a3, v12);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
LABEL_8:
  FigXPCRelease(v13);
  FigXPCRelease(v12);
  if ((uint64 & 0x100000000) == 0)
  {
    remote_connection = xpc_dictionary_get_remote_connection(xdict);
    reply = xpc_dictionary_create_reply(xdict);
    if (!reply)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_10_15();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x15B5, v25, v26, v27);
      goto LABEL_112;
    }

    v16 = reply;
    if (uint64 != 775056996)
    {
      if (uint64 != 778398835)
      {
        switch(uint64)
        {
          case 0x2E6F7267:
            updated = FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2(xdict, reply, *(a1 + 88), (a2 + 72));
            break;
          case 0x2E727032:
            v22 = &qword_1ED4CD000;
            if (FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2(xdict, (a2 + 64)))
            {
              goto LABEL_112;
            }

            goto LABEL_43;
          case 0x2E727031:
            updated = FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1(reply);
            break;
          case 0x2E706E67:
            string = xpc_dictionary_get_string(xdict, ".ProcessName");
            if (string)
            {
              v18 = string;
              v19 = *MEMORY[0x1E695E480];
              v20 = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
              if (v20)
              {
                if (xpc_dictionary_get_BOOL(xdict, ".IsDaemon"))
                {
                  FigApplicationStateMonitorAddPIDToIgnore(*(v10 + 40));
                }

                FigProcessInfoCreateWithDetails(v19, *(v10 + 40), v20, v10 + 3);
                v21 = FigCFWeakReferenceLoadAndRetain(v10 + 2);
                if (v21)
                {
                  strncpy(xdicta, v18, 8uLL);
                  *(v10 + 21) = xdicta[0];
                }

                goto LABEL_22;
              }
            }

            else
            {
              v20 = 0;
            }

            v21 = 0;
LABEL_22:
            v22 = &qword_1ED4CD000;
            xpc_dictionary_set_uint64(v16, ".ServerCapabilities", qword_1ED4CDB38);
            xpc_dictionary_set_int64(v16, ".Token", *(v10 + 25));
            if (v21)
            {
              CFRelease(v21);
            }

            if (v20)
            {
              CFRelease(v20);
            }

LABEL_43:
            v34 = 0;
LABEL_83:
            v35 = 0;
LABEL_105:
            xdicta[0] = 0;
            if ((v22[359] & 1) != 0 || !FigAtomicCompareAndSwap32(0, 1u, (a2 + 44)))
            {
              v72 = 0;
            }

            else
            {
              v71 = FigProcessStateMonitorServerEnsureStartedAndCopyEndpoint(xdicta, v64, v65, v66, v67, v68, v69, v70);
              v72 = xdicta[0];
              if (!v71)
              {
                xpc_dictionary_set_value(v16, ".ProcessStateMonitorEndpoint", xdicta[0]);
                v72 = xdicta[0];
              }
            }

            FigXPCRelease(v72);
            if (!v35)
            {
              xpc_dictionary_set_int64(v16, ".ErrorReturn", v34);
              xpc_connection_send_message(remote_connection, v16);
            }

            xpc_release(v16);
            goto LABEL_112;
          default:
            TimeoutNanoseconds = FigRPCServer_GetTimeoutNanoseconds();
            if (*(v10 + 28))
            {
              v37 = *(v10 + 29);
              v38 = *(v10 + 28);
            }

            else
            {
              v38 = TimeoutNanoseconds;
              v37 = 0;
            }

            int64 = xpc_dictionary_get_int64(xdict, ".SelfTerminationTimeout");
            if (1000000000 * int64)
            {
              v59 = 0;
            }

            else
            {
              v59 = v37;
            }

            if (1000000000 * int64)
            {
              v38 = 1000000000 * int64;
            }

            if (v38 && v59)
            {
              v38 = FigRPCServer_PickRPCTimeoutForCurrentThread(v38, v59);
            }

            v78 = remote_connection;
            xpc_dictionary_set_int64(v16, ".Token", *(v10 + 25));
            if (v38)
            {
              xpc_dictionary_set_int64(v16, ".ErrorReturn", -16156);
              xpc_retain(v16);
              *(v10 + 27) = xpc_retain(xdict);
              dispatch_set_context(*(v10 + 24), v16);
              v60 = *(v10 + 24);
              v61 = dispatch_time(0, v38);
              dispatch_source_set_timer(v60, v61, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
              *(v10 + 208) = 1;
            }

            v62 = xpc_dictionary_get_int64(xdict, ".AbortActionID");
            if (v62 && *(a1 + 125))
            {
              os_unfair_lock_lock((a2 + 176));
              CFDictionarySetValue(*(a2 + 160), v62, v10);
              os_unfair_lock_unlock((a2 + 176));
            }

            v34 = (*(a1 + 48))(a3, xdict, v16);
            if (v62 && *(a1 + 125))
            {
              os_unfair_lock_lock((a2 + 176));
              CFDictionaryRemoveValue(*(a2 + 160), v62);
              os_unfair_lock_unlock((a2 + 176));
            }

            v83 = 0;
            v84 = &v83;
            v85 = 0x2000000000;
            v86 = 0;
            v22 = &qword_1ED4CD000;
            if (*(v10 + 208))
            {
              *(v10 + 208) = 0;
              dispatch_source_set_timer(*(v10 + 24), 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
              xdicta[0] = MEMORY[0x1E69E9820];
              xdicta[1] = 0x40000000;
              xdicta[2] = __figXPC_UnsetTimeoutTimer_block_invoke;
              xdicta[3] = &unk_1E74A6640;
              xdicta[4] = &v83;
              xdicta[5] = v10;
              dispatch_sync(qword_1ED4CDB30, xdicta);
              v63 = *(v84 + 24) != 0;
            }

            else
            {
              v63 = 0;
            }

            remote_connection = v78;
            _Block_object_dispose(&v83, 8);
            v35 = (uint64 & 0x200000000) == 0 && v63;
            goto LABEL_105;
        }

        v34 = updated;
        v35 = 0;
        v22 = &qword_1ED4CD000;
        goto LABEL_105;
      }

      v81 = 0;
      xdicta[0] = 0;
      v83 = 0;
      cf = 0;
      value = 0;
      v77 = remote_connection;
      if (*(a1 + 40) <= 2uLL)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_10_15();
        v57 = 7303;
      }

      else
      {
        v40 = *(a1 + 80);
        v39 = (a1 + 80);
        if (v40)
        {
          if (a3)
          {
            v41 = FigXPCServerCopyMemoryOrigin(a3, &v81);
            if (!v41)
            {
              v41 = FigXPCServerCopyMemoryRecipient(a3, &v83);
              if (!v41)
              {
                FigServer_CopyProcessName(*(a2 + 16), &cf);
                v42 = *MEMORY[0x1E695E480];
                v43 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s.%d.%@.eventlink", *(*(a2 + 56) + 88), *(a2 + 16), cf);
                Mutable = CFDictionaryCreateMutable(v42, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                CFDictionarySetValue(Mutable, @"FigMemoryPool_LoggingName", v43);
                v45 = CMMemoryPoolCreate(Mutable);
                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                v46 = xpc_dictionary_get_int64(xdict, "ServerEventLinkMachThreadPriority");
                v47 = xpc_dictionary_get_uint64(xdict, "ServerEventLinkFigThreadPriority");
                v48 = FigOSEventLinkServerCreate(v42, v47, v46, v43, 0, v45, v81, v83, xdicta);
                if (!v48)
                {
                  v48 = FigOSEventLinkServerSetAbortActionCallbacks(xdicta[0], a2, figXPC_willHandleAbortableEventLinkMessage, figXPC_didHandleAbortableEventLinkMessage);
                  if (!v48)
                  {
                    v48 = FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection(xdicta[0], a3);
                    if (!v48)
                    {
                      v49 = FigOSEventLinkServerCopyRemoteCreationInfoXPCObject(xdicta[0], &value);
                      v22 = &qword_1ED4CD000;
                      if (!v49)
                      {
                        xpc_dictionary_set_value(v16, "RemoteEventLinkCreationInfo", value);
                        v49 = (*v39)(xdicta[0], 0);
                      }

                      v34 = v49;
                      goto LABEL_71;
                    }
                  }
                }

                v34 = v48;
LABEL_70:
                v22 = &qword_1ED4CD000;
LABEL_71:
                if (cf)
                {
                  CFRelease(cf);
                }

                if (v45)
                {
                  CFRelease(v45);
                }

                if (v83)
                {
                  CFRelease(v83);
                }

                remote_connection = v77;
                if (v81)
                {
                  CFRelease(v81);
                }

                if (v43)
                {
                  CFRelease(v43);
                }

                FigXPCRelease(value);
                if (xdicta[0])
                {
                  CFRelease(xdicta[0]);
                }

                goto LABEL_83;
              }
            }

LABEL_69:
            v34 = v41;
            v45 = 0;
            v43 = 0;
            goto LABEL_70;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_10_15();
          v57 = 7305;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_10_15();
          v57 = 7304;
        }
      }

      v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, 0xFFFFC0E9uLL, "<< FigXPC >>", v57, v54, v55, v56);
      goto LABEL_69;
    }

    v50 = *(a2 + 16);
    xdicta[0] = 0;
    if (*(a1 + 138))
    {
      FigSimpleMutexLock(*(a1 + 112));
      v34 = figXPC_CopyInfoForProcess(a1, v50, xdicta);
      FigSimpleMutexUnlock(*(a1 + 112));
      v51 = xdicta[0];
      v22 = &qword_1ED4CD000;
      if (v34)
      {
        if (!xdicta[0])
        {
          goto LABEL_63;
        }
      }

      else
      {
        figXPCServer_EstablishSecondaryConnectionManagement(a1, xdicta[0]);
        xpc_dictionary_set_value(v16, ".SecondaryEndpoint", v51[17]);
      }

      CFRelease(v51);
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_10_15();
      v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, 0xFFFFB4F4uLL, "<< FigXPC >>", 0x1C45, v74, v75, v76);
      v22 = &qword_1ED4CD000;
    }

LABEL_63:
    FigXPCRelease(0);
    goto LABEL_83;
  }

  if (uint64 != 779382561)
  {
    if (uint64 == 779318384)
    {
      v28 = xpc_dictionary_get_int64(xdict, ".AbortActionID");
      v29 = xpc_dictionary_get_int64(xdict, ".AbortActionTarget");
      if (v28)
      {
        v30 = v29;
        os_unfair_lock_lock((a2 + 176));
        if (v30 == 1)
        {
          v52 = CFDictionaryGetValue(*(a2 + 168), v28);
          if (v52)
          {
            FigThreadAbort(v52);
          }
        }

        else if (!v30)
        {
          v31 = CFDictionaryGetValue(*(a2 + 160), v28);
          if (v31)
          {
            FigThreadAbortQueue(v31[30]);
          }
        }

        os_unfair_lock_unlock((a2 + 176));
      }
    }

    else if (uint64 == 778986352)
    {
      v23 = xpc_dictionary_get_uint64(xdict, ".objectID");
      FigXPCServerDisassociateObjectWithConnection(a3, v23);
    }

    else
    {
      v32 = *(a1 + 56);
      if (v32)
      {
        v32(a3, xdict);
      }
    }

LABEL_112:
    if (!v10)
    {
      return;
    }

    goto LABEL_113;
  }

  *(v10 + 28) = 1000000000 * xpc_dictionary_get_int64(xdict, ".SelfTerminationTimeout");
  *(v10 + 29) = 0;
LABEL_113:
  CFRelease(v10);
}

size_t FigXPCCreateBasicMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x3A2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCCreateBasicMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x39F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendSyncMessageCreatingReply_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB4F4uLL, "<< FigXPC >>", 0xB06, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendSyncMessageCreatingReply_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB05, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendSyncMessageCreatingReply_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB04, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x524, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x52A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x525, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x523, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageCreatingReply_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x5BD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageCreatingReply_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB4F4uLL, "<< FigXPC >>", 0x5BF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageCreatingReply_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x5BE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageCreatingReply_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x5BC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x5F0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x5F7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x5F1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x5EF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x60E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x610, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x60F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x60D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x632, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x639, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x634, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x633, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x631, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPConnectionLookupAndRetainAssociatedObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x68F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionGetServerPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x8ED, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB1F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB1E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB2D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB2C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithReplyHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB3C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithReplyHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB3B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithReplyHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB3A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB4B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB4A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB49, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientDisassociateObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB58, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientAssociateObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB67, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientLookupAndRetainAssociatedObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB74, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientRetainCopiedObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB81, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientGetServerPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", 0xC35, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientGetServerPID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xC33, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientGetServerPIDSync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", 0xC46, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientGetServerPIDSync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xC42, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientGetServerPIDSync_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xC41, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientCopyPrimaryConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0xC70, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientCopyPrimaryConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0xC6F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientCopyPrimaryConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xC6E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCIsObjectIDLocallyServed_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x169D, v1, v2, v3);
}

size_t FigXPCServerCopyMemoryOrigin_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x17AC, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t FigXPCServerCopyMemoryOrigin_cold_3(char a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x17AB, v5, v6, v7);
  return a1 & 1;
}

size_t FigXPCServerCopyMemoryRecipient_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x17BC, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t FigXPCServerCopyMemoryRecipient_cold_3(char a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x17BB, v5, v6, v7);
  return a1 & 1;
}

uint64_t FigXPCServerDisassociateObjectWithConnection_cold_2(char a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1812, v5, v6, v7);
  return a1 & 1;
}

size_t FigXPCServerAssociateObjectWithConnectionWithFlags_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1824, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerAssociateCopiedObjectWithConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1843, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figXPC_RegisterCopiedObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1735, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB4F5uLL, "<< FigXPC >>", 0x1706, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB4F5uLL, "<< FigXPC >>", 0x170F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1857, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t _figXPCServerLookupAndRetainAssociatedObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x186D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x18A5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E8uLL, "<< FigXPC >>", 0x18D7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x18D4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x18D3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromIDWithProcessID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E8uLL, "<< FigXPC >>", 0x18F2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromIDWithProcessID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x18E3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromIDWithProcessID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x18E2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerDisassociateObjectWithNeighborClientPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1952, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerConfirmNeighborProcessByPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x19C7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerSetConnectionRefcon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x19FB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerSetConnectionRefcon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x19FA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerSetConnectionRefcon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x19F7, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigXPCServerSelfTerminateDueToError_cold_1(char **a1, uint64_t a2, int a3)
{
  *a1 = 0;
  asprintf(a1, "****** Self-terminating due to fatal error %d on server %s", a3, *(a2 + 88));
  v4 = *a1;
  getpid();
  FigRPCServer_TimeoutCrashReport(0, v4);
  abort();
}

size_t FigXPCServerGetConnectionRefcon_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1A3B, v1, v2, v3);
}

size_t FigXPCServerCopyPrimaryConnection_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1A4B, v1, v2, v3);
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1A94, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1A73, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1A71, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1A6E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1A6B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1A69, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerCopyXPCEndpoint_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1ADA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerCopyXPCEndpoint_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1AD9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1B0F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1AFA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1AF8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1AF5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1AF2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1AF1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1AF0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figXPC_HandleNewClientConnection_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x162B, v1, v2, v3);
}

size_t FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x48B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0xB94, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figXPCCreateXPCConnectionInternalCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x9BA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figXPCCreateXPCConnectionInternalCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E7uLL, "<< FigXPC >>", 0x9AD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figXPCCreateXPCConnectionInternalCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x995, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figXPCCreateXPCConnectionInternalCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x991, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figXPCCreateXPCConnectionInternalCommon_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x98C, v3, v4, v5);
  *a1 = result;
  return result;
}

BOOL figXPCCreateXPCConnectionInternalCommon_cold_7(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x98B, v5, v6, v7);
  return a1 == 0;
}

size_t __figXPCCreateXPCConnectionInternalCommon_block_invoke_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x811, v1, v2, v3);
}

size_t __figXPCCreateXPCConnectionInternalCommon_block_invoke_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x810, v1, v2, v3);
}

size_t __figXPCCreateXPCConnectionInternalCommon_block_invoke_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xCE3, v1, v2, v3);
}

size_t __figXPCConnection_handleCreateAdminConnectionReplyMessageFromServer_block_invoke_cold_1(const CMBlockBufferCustomBlockSource *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", a1, v3, v4, v5);
}

size_t figXPC_RegisterServedObjectWithID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x16BA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figXPC_CreateNewConnectionInfo_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x134B, v1, v2, v3);
}

size_t figXPC_CreateNewConnectionInfo_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1348, v1, v2, v3);
}

__CFDictionary *figXPCCopySanitizedCFDictionary(__CFDictionary *result)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E6966050];
  v4[0] = *MEMORY[0x1E69660F8];
  v4[1] = v1;
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFDictionaryGetTypeID())
    {
      return FigCFDictionaryCreateCopyRemovingKeys(v2, v4, 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t FigXPCMessageSetBlockBuffer(void *a1, char *a2, CMBlockBufferRef theBuffer)
{
  address = 0;
  totalLengthOut = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  blockBufferOut = 0;
  v21 = 0;
  v3 = MEMORY[0x1E69E9A60];
  if (!theBuffer)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v19 = 4294950016;
    v20 = 843;
LABEL_26:
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<<<< FigXPCUtilities >>>>", v20, v16, v17, v18);
    goto LABEL_27;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v19 = 4294950016;
    v20 = 844;
    goto LABEL_26;
  }

  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_27;
  }

  v8 = totalLengthOut;
  if (!totalLengthOut)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v19 = 4294954590;
    v20 = 848;
    goto LABEL_26;
  }

  if (totalLengthOut >= *MEMORY[0x1E69E9AC8])
  {
    DataPointer = vm_allocate(*v3, &address, totalLengthOut, 1543503873);
    if (!DataPointer)
    {
      DataPointer = CMBlockBufferCopyDataBytes(theBuffer, 0, totalLengthOut, address);
      if (!DataPointer)
      {
        v12 = FigXPCMessageSetAndConsumeVMData(a1, a2, address, totalLengthOut);
        address = 0;
        if (v12)
        {
          v13 = v12;
          goto LABEL_20;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (lengthAtOffsetOut == totalLengthOut)
    {
LABEL_11:
      xpc_dictionary_set_data(a1, a2, dataPointerOut, v8);
LABEL_15:
      FigXPCMessageGetOpCode(a1, &v21);
      if (gGMFigKTraceEnabled == 1)
      {
        strncpy(__dst, a2, 8uLL);
        kdebug_trace();
      }

      goto LABEL_17;
    }

    DataPointer = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], theBuffer, *MEMORY[0x1E695E480], 0, 0, totalLengthOut, 0, &blockBufferOut);
    if (!DataPointer)
    {
      DataPointer = OUTLINED_FUNCTION_7_25(blockBufferOut, v9, v10, v11, &dataPointerOut);
      if (!DataPointer)
      {
        v8 = totalLengthOut;
        goto LABEL_11;
      }
    }
  }

LABEL_27:
  v13 = DataPointer;
LABEL_18:
  if (address)
  {
    MEMORY[0x19A8DA090](*v3, address, totalLengthOut);
  }

LABEL_20:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v13;
}

size_t FigXPCMessageSetFormatDescriptionArray(void *a1, const char *a2, const __CFArray *a3)
{
  v12 = 0;
  v13 = 0;
  if (!a3)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      result = FigRemote_CreateSerializedAtomDataForFormatDescriptions(a3, &v12, *MEMORY[0x1E69E9AC8], &v13);
      if (result)
      {
        return result;
      }

      xpc_dictionary_set_data(a1, a2, v12, v13);
      MEMORY[0x19A8DA090](*MEMORY[0x1E69E9A60], v12, v13);
      return 0;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = v3;
    v11 = 1150;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = v3;
    v11 = 1149;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", v11, v10, v8, v9);
}

size_t FigXPCMessageAddCMSampleBufferForPID(void *a1, CMSampleBufferRef sbuf, const __CFArray *a3, unsigned int a4, uint64_t a5, const opaqueCMFormatDescription **a6, uint64_t *a7, unsigned int a8)
{
  v65 = 0;
  v9 = *a6;
  v71 = 0;
  v10 = *a7;
  v69 = 0;
  size = 0;
  v67 = 0;
  v68 = 0;
  cf = 0;
  if (!sbuf)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v52 = v8;
    v53 = 4294951145;
    v54 = 1445;
    goto LABEL_48;
  }

  v18 = a4;
  if (CMSampleBufferDataIsReady(sbuf))
  {
    v67 = CFRetain(sbuf);
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_3_41();
      v53 = 4294951145;
      v54 = 1453;
      goto LABEL_48;
    }

    if ((v18 & 2) == 0)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_3_41();
      v53 = 4294951145;
      v54 = 1454;
      goto LABEL_48;
    }

    CopyWithNoData = FigSampleBufferCreateCopyWithNoData(*MEMORY[0x1E695E480], sbuf, &v67);
    if (CopyWithNoData)
    {
      goto LABEL_49;
    }
  }

  if (!v10)
  {
    v20 = FigCopyCommonMemoryPool();
    if (v20)
    {
      v10 = v20;
      *a7 = v20;
      goto LABEL_10;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_3_41();
    v53 = 4294951146;
    v54 = 1464;
LABEL_48:
    CopyWithNoData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v53, "<<<< FigXPCUtilities >>>>", v54, v52, v50, v51);
    goto LABEL_49;
  }

LABEL_10:
  CopyWithNoData = FigRemote_CopyReplacementAttachmentsForSampleBuffer(v67, a3, &cf, &v65);
  if (CopyWithNoData)
  {
    goto LABEL_49;
  }

  CopyWithNoData = FigRemote_WriteSerializedAtomDataForSampleBufferExcludingDataBufferWithOptionsForPID(v67, cf, v65, (a4 >> 2) & 1, 0, 0, &size, v9, 0, 0, 0, a8);
  if (CopyWithNoData)
  {
    goto LABEL_49;
  }

  v22 = size;
  if (size <= 0x3000)
  {
    v36 = malloc_type_calloc(1uLL, size, 0xA66077BAuLL);
    v68 = v36;
    if (v36)
    {
      v37 = v36;
      OUTLINED_FUNCTION_5_35();
      v43 = FigRemote_WriteSerializedAtomDataForSampleBufferExcludingDataBufferWithOptionsForPID(v38, v39, v40, v41, v37, v42, 0, v9, v55, v57, v59, valuePtr);
      if (v43)
      {
        v47 = v43;
LABEL_29:
        free(v37);
        goto LABEL_30;
      }

      xpc_dictionary_set_data(a1, "SerializedMetadata-Inline", v37, size);
      if ((v18 & 2) != 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      v44 = FigXPCMessageAddDataBufferFromCMSampleBuffer(a1, v67);
      if (v44)
      {
        v47 = v44;
LABEL_27:
        if (v22 > 0x3000)
        {
          goto LABEL_30;
        }

        v37 = v68;
        goto LABEL_29;
      }

LABEL_22:
      v45 = *a6;
      v46 = v71;
      *a6 = v71;
      if (v46)
      {
        CFRetain(v46);
      }

      if (v45)
      {
        CFRelease(v45);
      }

      v47 = 0;
      goto LABEL_27;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_3_41();
    v53 = 4294951146;
    v54 = 1478;
    goto LABEL_48;
  }

  CopyWithNoData = FigMemoryPoolCreateBlockBuffer(v10, size, &v69, v21);
  if (!CopyWithNoData)
  {
    OUTLINED_FUNCTION_7_25(v69, v23, v24, v25, &v68);
    OUTLINED_FUNCTION_5_35();
    CopyWithNoData = FigRemote_WriteSerializedAtomDataForSampleBufferExcludingDataBufferWithOptionsForPID(v26, v27, v28, v29, v30, v31, 0, v9, v55, v57, v59, valuePtr);
    if (!CopyWithNoData)
    {
      CopyWithNoData = FigMemoryOriginSetBlockBufferInXPCMessage(a5, a1, "SerializedMetadata-PooledBBuf", v69, v32, v33, v34, v35, v56, v58, v60, valuePtra, v63, v8, a5, v65, cf, v67, v68, v69, size, v71, v72, v73, v74, v75);
      if (!CopyWithNoData)
      {
        if ((v18 & 2) != 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }
  }

LABEL_49:
  v47 = CopyWithNoData;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  return v47;
}

uint64_t FigXPCMessageCopyDataBufferFromCMSampleBufferMessage(const __CFAllocator *a1, void *a2, uint64_t a3, CMBlockBufferRef *a4)
{
  v12 = 0;
  if (a4)
  {
    result = FigXPCMessageCopyBlockBufferUsingMemoryRecipient(a1, a2, "SampleData-PooledBBuf", a3, &v12);
    if (result)
    {
      return result;
    }

    v8 = v12;
    if (!v12)
    {
      result = FigXPCMessageCreateBlockBufferDataWithSize(*MEMORY[0x1E695E480], a2, "SampleData-Inline", 0, &v12);
      if (result)
      {
        return result;
      }

      v8 = v12;
    }

    result = 0;
    *a4 = v8;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<<<< FigXPCUtilities >>>>", 0x5FA, v4, v10, v11);
  }

  return result;
}

size_t FigXPCMessageCopyCMSampleBufferWithLastCryptor(const __CFAllocator *a1, xpc_object_t xdict, uint64_t a3, char a4, const opaqueCMFormatDescription **a5, void **a6, CMSampleBufferRef *a7)
{
  data = 0;
  theBuffer = 0;
  cf = 0;
  length = 0;
  SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = FigMemoryRecipientCopyBlockBufferFromXPCMessage(a1, a3, xdict, "SerializedMetadata-PooledBBuf", &theBuffer);
  if (!SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor)
  {
    if (theBuffer)
    {
      OUTLINED_FUNCTION_7_25(theBuffer, v15, v16, v17, &data);
      length = CMBlockBufferGetDataLength(theBuffer);
    }

    else
    {
      data = xpc_dictionary_get_data(xdict, "SerializedMetadata-Inline", &length);
    }

    SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = FigXPCMessageCopyDataBufferFromCMSampleBufferMessage(a1, xdict, a3, &cf);
    if (!SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor)
    {
      SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = FigRemote_CreateSampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor(a1, data, length, (a4 & 1) == 0, cf, a5, a6, a7);
    }
  }

  v18 = SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor;
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

size_t FigXPCMessageSetCFObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x12E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFObject_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x126, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFObject_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x125, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x15A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x160, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x159, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x158, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x141, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x146, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x140, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFURL_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x13F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x174, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x177, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFString_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x173, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFString_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x172, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFNumber_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x187, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFNumber_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x186, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFBoolean_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x197, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFBoolean_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x196, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x1AA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x1AD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1A9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFArray_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1A8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x1BF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1BE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1BD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x1DB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1DA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1D9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetAndConsumeVMData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7EuLL, "<<<< FigXPCUtilities >>>>", 0x1FD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetAndConsumeVMData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7EuLL, "<<<< FigXPCUtilities >>>>", 0x1F8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetAndConsumeVMData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1F5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetAndConsumeVMData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1EF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetAndConsumeVMData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1EE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFError_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x211, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFError_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x210, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFError_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x224, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x299, v3, v4, v5);
  *a1 = result;
  return result;
}

BOOL FigXPCMessageCopyCFDictionary_cold_2()
{
  OUTLINED_FUNCTION_11_1();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = OUTLINED_FUNCTION_4_34("%s signalled err=%d at <>:%d", v0, v1, "<<<< FigXPCUtilities >>>>", v2, v3, v4, v5);
  return OUTLINED_FUNCTION_1_58(v6);
}

size_t FigXPCMessageCopyCFObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x241, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFObject_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x23A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x257, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFNumber_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x26D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFBoolean_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x283, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x2AF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFDate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7EuLL, "<<<< FigXPCUtilities >>>>", 0x2CE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFDate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x2C6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x2E6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x2FC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCreateBlockBufferDataWithSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x324, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x37B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x37A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7CuLL, "<<<< FigXPCUtilities >>>>", 0x390, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x38C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCArraySetCMTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x39F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCArraySetCMTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3A2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCArraySetCMTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x39E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCArrayGetCMTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3BC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCArrayGetCMTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7CuLL, "<<<< FigXPCUtilities >>>>", 0x3C1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCArrayGetCMTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3BA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3CF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3CE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7CuLL, "<<<< FigXPCUtilities >>>>", 0x3E4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3E0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTimeMapping_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3F2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTimeMapping_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3F1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTimeMapping_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7CuLL, "<<<< FigXPCUtilities >>>>", 0x408, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTimeMapping_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x403, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetOSStatus_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x414, v1, v2, v3);
}

size_t FigXPCMessageSetOSStatus_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x413, v1, v2, v3);
}

size_t FigXPCMessageGetOSStatus_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x421, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetOSStatus_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x420, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetInt32_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x430, v1, v2, v3);
}

size_t FigXPCMessageSetInt32_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x42F, v1, v2, v3);
}

size_t FigXPCMessageGetInt32_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x43D, v1, v2, v3);
}

size_t FigXPCMessageGetInt32_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x43C, v1, v2, v3);
}

size_t FigXPCMessageSetUInt32_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x44F, v1, v2, v3);
}

size_t FigXPCMessageSetUInt32_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x44E, v1, v2, v3);
}

size_t FigXPCMessageGetUInt32_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x45A, v1, v2, v3);
}

size_t FigXPCMessageGetUInt32_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x459, v1, v2, v3);
}

size_t FigXPCMessageGetBoolean_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x46E, v1, v2, v3);
}

size_t FigXPCMessageGetBoolean_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x46D, v1, v2, v3);
}

size_t FigXPCMessageCopyFormatDescriptionArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x498, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x4AD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x4AC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFormatDescription2_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x4C6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionHasEntitlement_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x4E2, v1, v2, v3);
}

size_t FigXPCConnectionHasEntitlement_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x4E1, v1, v2, v3);
}

size_t FigXPCMessageSetBlockBufferUsingMemoryOrigin_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7EuLL, "<<<< FigXPCUtilities >>>>", 0x54A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetBlockBufferUsingMemoryOrigin_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x53C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x56A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x569, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x568, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x567, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageAddDataBufferFromCMSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<<<< FigXPCUtilities >>>>", 0x57C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCMessageAddDataBufferFromCMSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<<<< FigXPCUtilities >>>>", 0x579, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t met_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v6 = 4294954516;
  if (a2 && a3)
  {
    v8[0] = DerivedStorage;
    v8[1] = a2;
    v8[2] = a3;
    v9 = 0;
    dispatch_sync_f(*DerivedStorage, v8, met_setPropertyOnQueue);
    return v9;
  }

  return v6;
}

void met_invalidateOnQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*(CMBaseObjectGetDerivedStorage(a1) + 56))
  {
    *(DerivedStorage + 56) = 1;
    v3 = *(DerivedStorage + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(DerivedStorage + 64);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(DerivedStorage + 16);
    if (v5 >= 1)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(*(DerivedStorage + 48) + 8 * i);
        if (v7)
        {
          CFRelease(v7);
          v5 = *(DerivedStorage + 16);
        }
      }
    }

    MallocZoneForMedia = FigGetMallocZoneForMedia();
    malloc_zone_free(MallocZoneForMedia, *(DerivedStorage + 48));
    v9 = FigGetMallocZoneForMedia();
    v10 = *(DerivedStorage + 40);

    malloc_zone_free(v9, v10);
  }
}

uint64_t met_subscribeToAllEventsOnQueue(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  if (*(DerivedStorage + 16) < 1)
  {
LABEL_5:
    result = 0;
  }

  else
  {
    v5 = DerivedStorage;
    v6 = 0;
    while (1)
    {
      result = met_addSubscriberForEventID(v2, v6, v3);
      if (result)
      {
        break;
      }

      if (*(v5 + 16) <= ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  *(a1 + 64) = result;
  return result;
}

void met_publishEventDispatch(uint64_t a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(*(CMBaseObjectGetVTable(v4) + 16) + 24);
  if (v5)
  {
    v6 = v5(v4);
  }

  else
  {
    v6 = -12782;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
  v8 = *(DerivedStorage[5] + 8 * (v6 >> 56)) + (v6 & 0xFFFFFFFFFFFFFFLL);
  if (v8 >= DerivedStorage[2])
  {
    OUTLINED_FUNCTION_1_21();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 0xFFFFB405uLL, "metricevent", 0xD2, v40, v41, v42);
    goto LABEL_47;
  }

  v9 = DerivedStorage[6];
  v10 = *(v9 + 8 * v8);
  if (!v10)
  {
LABEL_47:
    v13 = 0;
    goto LABEL_37;
  }

  Count = CFSetGetCount(*(v9 + 8 * v8));
  MallocZoneForMedia = FigGetMallocZoneForMedia();
  v13 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 8 * Count, 0xC0040B8AA526DuLL);
  if (v13)
  {
    CFSetGetValues(v10, v13);
    if (Count < 1)
    {
      goto LABEL_37;
    }

    v47 = v1;
    v14 = 0;
    while (1)
    {
      v15 = v13[v14];
      v16 = *(v15 + 2);
      if (v16)
      {
        v17 = CFRetain(v16);
      }

      else
      {
        v17 = 0;
      }

      v19 = *(v15 + 3);
      v18 = *(v15 + 4);
      if (v18)
      {
        dispatch_retain(*(v15 + 4));
      }

      if (!v17)
      {
        OUTLINED_FUNCTION_1_21();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFB405uLL, "metricevent", 0x138, v32, v33, v34);
        if (!v18)
        {
          goto LABEL_32;
        }

LABEL_31:
        dispatch_release(v18);
        goto LABEL_32;
      }

      if (!*(v19 + 8) || !v18)
      {
        break;
      }

      v20 = FigGetMallocZoneForMedia();
      v21 = malloc_type_zone_calloc(v20, 1uLL, 0x28uLL, 0xE0040BA15B581uLL);
      if (!v21)
      {
        OUTLINED_FUNCTION_1_21();
        v28 = 315;
        goto LABEL_21;
      }

      v22 = v21;
      v21[1] = CFRetain(v17);
      v22[4] = v19;
      if (v2)
      {
        v23 = CFRetain(v2);
      }

      else
      {
        v23 = 0;
      }

      *v22 = v23;
      if (v3)
      {
        v29 = CFRetain(v3);
      }

      else
      {
        v29 = 0;
      }

      v22[2] = v29;
      if (v4)
      {
        v30 = CFRetain(v4);
      }

      else
      {
        v30 = 0;
      }

      v22[3] = v30;
      dispatch_async_f(v18, v22, met_issueSubscriberCallbackOnCallbackQueue);
LABEL_30:
      CFRelease(v17);
      if (v18)
      {
        goto LABEL_31;
      }

LABEL_32:
      if (Count == ++v14)
      {
        v1 = v47;
        goto LABEL_37;
      }
    }

    OUTLINED_FUNCTION_1_21();
    v28 = 312;
LABEL_21:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 0xFFFFB405uLL, "metricevent", v28, v25, v26, v27);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1_21();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 0xFFFFCD41uLL, "metricevent", 0x1F3, v44, v45, v46);
LABEL_37:
  v35 = FigGetMallocZoneForMedia();
  malloc_zone_free(v35, v13);
  if (*v1)
  {
    CFRelease(*v1);
  }

  v36 = *(v1 + 48);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = *(v1 + 56);
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = FigGetMallocZoneForMedia();

  malloc_zone_free(v38, v1);
}

size_t FigMetricEventTimelineCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x308, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x305, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineCreate_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x2FE, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineCreate_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x2F3, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineCreate_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x2E3, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_registerSubscriber_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x193, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_registerSubscriber_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x192, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_registerSubscriber_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x191, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_registerSubscriber_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x190, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_subscribeByEventID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1AC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_subscribeByEventID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1AB, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1C4, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1C3, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_subscribetoAllEvents_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1DC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_subscribetoAllEvents_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1DB, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_publishEvent_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x23C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_publishEvent_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x237, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_publishEvent_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x236, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_addSubscriberForEventID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB404uLL, "metricevent", 0xE7, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_addSubscriberForEventID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0xEC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_addSubscriberForEventID_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB404uLL, "metricevent", 0xE2, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassIDOnQueue_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB404uLL, "metricevent", 0xFE, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassIDOnQueue_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x107, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassIDOnQueue_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB404uLL, "metricevent", 0x101, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassIDOnQueue_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB404uLL, "metricevent", 0xFB, v8, a7, a8);
  *a1 = result;
  return result;
}

uint64_t FigEndpointCopyActiveEndpointOfType()
{
  v3 = v2;
  OUTLINED_FUNCTION_18_4();
  *v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  if (qword_1ED4CDB50 == -1)
  {
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_13:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v18 = 3144;
LABEL_15:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFBEB0uLL, "<< FigEndpointXPCRemote >>", v18, v15, v16, v17);
LABEL_16:
    v12 = OUTLINED_FUNCTION_15_18();
    goto LABEL_11;
  }

  dispatch_once(&qword_1ED4CDB50, &__block_literal_global_60);
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!v0)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v18 = 3145;
    goto LABEL_15;
  }

  *v0 = 0;
  if (remoteXPCFigEndpoint_getSharedXPCClient(0, &v19))
  {
    goto LABEL_16;
  }

  if (qword_1ED4CDB58 != -1)
  {
    dispatch_once(&qword_1ED4CDB58, &__block_literal_global_22);
  }

  if (FigXPCCreateBasicMessage(0x61637476u, 0, v21))
  {
    goto LABEL_16;
  }

  v4 = FigXPCMessageSetCFString(*v21, "EndpointType", v1);
  if (v4)
  {
    goto LABEL_16;
  }

  v3 = OUTLINED_FUNCTION_23_12(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20, *v21);
  v12 = v20;
  if (!v3)
  {
    v3 = FigEndpointXPCRemoteRetainCopiedEndpointFromReply(v20, &v22, v0);
    v12 = v20;
  }

LABEL_11:
  FigXPCRelease(v12);
  FigXPCRelease(*v21);
  return v3;
}

uint64_t remoteXPCFigEndpoint_getSharedXPCClient(unint64_t a1, void *a2)
{
  v103 = *MEMORY[0x1E69E9840];
  if (a1 > 2)
  {
    return 4294950576;
  }

  os_unfair_lock_lock(&_MergedGlobals_67);
  v6 = (&_MergedGlobals_67 + 16 * a1);
  if (*(v6 + 14) || (v33 = v6[6]) == 0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"Endpoint_ServerConnectionDied");
    CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_PrivilegedConnection", *MEMORY[0x1E695E4D0]);
    v16 = OUTLINED_FUNCTION_21_14(v8, v9, v10, v11, v12, v13, v14, v15, v67, v71, v75, v3, v83, v87, SBYTE2(v87), SBYTE3(v87), SHIDWORD(v87));
    v24 = OUTLINED_FUNCTION_27_10(v16, v17, v18, v19, v20, v21, v22, v23, v68, v72, v76, v79, v84, v88, v91, v93, v95);
    if (v24)
    {
      v31 = v2;
    }

    else
    {
      v31 = v2 & 0xFFFFFFFE;
    }

    if (v31)
    {
      v97 = 136315650;
      v98 = "remoteXPCFigEndpoint_getSharedXPCClient";
      v99 = 2048;
      v100 = a1;
      v101 = 2080;
      v102 = FigEndpointXPCServerNameForSource(a1);
      LODWORD(v73) = 32;
      v69 = &v97;
      v24 = OUTLINED_FUNCTION_20_13();
      v32 = v24;
      v2 = HIDWORD(v89);
    }

    else
    {
      v32 = 0;
    }

    OUTLINED_FUNCTION_19_14(v24, v25, v26, v32, v27, v28, v29, v30);
    v35 = FigEndpointXPCServerNameForSource(a1);
    v36 = FigXPCRemoteClientCreate(v35, remoteXPCFigEndpoint_getSharedXPCClient_clientCallbacks, Mutable, v6 + 6);
    *(v6 + 14) = v36;
    v44 = OUTLINED_FUNCTION_21_14(v36, v37, v38, v39, v40, v41, v42, v43, v69, v73, v77, v80, a2, v89, SBYTE2(v89), SBYTE3(v89), SHIDWORD(v89));
    v52 = OUTLINED_FUNCTION_27_10(v44, v45, v46, v47, v48, v49, v50, v51, v70, v74, v78, v81, v85, v90, v92, v94, v96);
    if (v52)
    {
      v59 = v2;
    }

    else
    {
      v59 = v2 & 0xFFFFFFFE;
    }

    if (v59)
    {
      v60 = FigEndpointXPCServerNameForSource(a1);
      v61 = *(v6 + 14);
      v97 = 136315650;
      v98 = "remoteXPCFigEndpoint_getSharedXPCClient";
      v99 = 2080;
      v100 = v60;
      v101 = 1024;
      LODWORD(v102) = v61;
      v52 = OUTLINED_FUNCTION_20_13();
      v62 = v52;
    }

    else
    {
      v62 = 0;
    }

    OUTLINED_FUNCTION_19_14(v52, v53, v54, v62, v55, v56, v57, v58);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v33 = v6[6];
    v34 = *(v6 + 14);
    a2 = v86;
    if (!v33)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v34, "<< FigEndpointXPCRemote >>", 0x4DD, v82, v64, v65);
      goto LABEL_22;
    }
  }

  else
  {
    v34 = 0;
  }

  *a2 = v33;
LABEL_22:
  os_unfair_lock_unlock(&_MergedGlobals_67);
  return v34;
}

void *FigEndpointXPCRemoteRetainCopiedEndpointFromReply(void *result, void *a2, void *a3)
{
  if (result)
  {
    if (a3)
    {
      v5 = result;
      uint64 = xpc_dictionary_get_uint64(result, "EndpointObjectID");
      if (uint64)
      {
        v7 = xpc_dictionary_get_uint64(v5, "EndpointXPCSource");
        if (FigEndpointXPCSourceNeedsSubEndpoint(v7))
        {
          v8 = xpc_dictionary_get_uint64(v5, "SubEndpointObjectID");
          v9 = xpc_dictionary_get_uint64(v5, "SubEndpointXPCSource");
        }

        else
        {
          v8 = 0;
          v9 = 0;
        }

        result = remoteXPCEndpoint_retainCopiedEndpointForSource(uint64, v7, v8, v9, a3);
        if (a2 && !result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        *a3 = 0;
        if (a2)
        {
LABEL_5:
          result = 0;
          *a2 = uint64;
          return result;
        }

        return 0;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", 0xD5C, v11, v12, v13);
    }
  }

  return result;
}

uint64_t FigEndpointIsCarPlayActive(BOOL *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_14_17();
  if (qword_1ED4CDB50 != -1)
  {
    dispatch_once(&qword_1ED4CDB50, &__block_literal_global_60);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_11:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBEB0uLL, "<< FigEndpointXPCRemote >>", 0xC7A, v10, v11, v12);
LABEL_12:
    v7 = OUTLINED_FUNCTION_25_9();
    goto LABEL_9;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_3:
  *a1 = 0;
  if (remoteXPCFigEndpoint_getSharedXPCClient(0, &v13))
  {
    goto LABEL_12;
  }

  if (qword_1ED4CDB58 != -1)
  {
    dispatch_once(&qword_1ED4CDB58, &__block_literal_global_22);
  }

  if (FigXPCCreateBasicMessage(0x61766C62u, 0, &v15))
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_35();
  v2 = FigXPCRemoteClientSendSyncMessageCreatingReply(v4, v5, v6);
  v7 = xdict;
  if (!v2)
  {
    *a1 = xpc_dictionary_get_BOOL(xdict, ".Value");
    v7 = xdict;
  }

LABEL_9:
  FigXPCRelease(v7);
  FigXPCRelease(v15);
  return v2;
}

size_t FigEndpointXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*(DerivedStorage + 32));
  if (!a2)
  {
    v12 = 0;
    v11 = 4294950576;
    goto LABEL_9;
  }

  if (a1 && CMBaseObjectGetVTable(a1) == &kFigEndpointRemoteXPC_EndpointAggregateVTable)
  {
    if (*(DerivedStorage + 40))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v9 = 4294950573;
      v10 = 3265;
    }

    else
    {
      if (!*(DerivedStorage + 41))
      {
        v11 = 0;
        v12 = *DerivedStorage;
        goto LABEL_9;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v9 = 4294950574;
      v10 = 3266;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v9 = 4294954516;
    v10 = 3264;
  }

  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v9, "<< FigEndpointXPCRemote >>", v10, v6, v7, v8);
  v12 = 0;
LABEL_9:
  FigSimpleMutexUnlock(*(DerivedStorage + 32));
  *a2 = v12;
  return v11;
}

size_t FigEndpointXPCRemoteWriteEndpointToMessageForOtherProcess(uint64_t a1, int a2, void *a3)
{
  value = 0;
  if (a1 && CMBaseObjectGetVTable(a1) == &kFigEndpointRemoteXPC_EndpointAggregateVTable)
  {
    result = FigEndpointXPCRemoteObtainObjectIDForOtherProcess(a1, a2, &value);
    if (!result)
    {
      v11 = *(CMBaseObjectGetDerivedStorage(a1) + 8);
      xpc_dictionary_set_uint64(a3, "EndpointObjectID", value);
      xpc_dictionary_set_uint64(a3, "EndpointXPCSource", v11);
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", 0xCD4, v7, v8, v9);
  }

  return result;
}

uint64_t FigEndpointXPCRemoteObtainObjectIDForOtherProcess(uint64_t a1, int a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_17();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v6);
  v27 = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v26 = 3350;
LABEL_15:
    SharedXPCClient = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", v26, v23, v24, v25);
LABEL_16:
    v20 = SharedXPCClient;
    goto LABEL_11;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v26 = 3351;
    goto LABEL_15;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v26 = 3352;
    goto LABEL_15;
  }

  v8 = DerivedStorage;
  if (qword_1ED4CDB50 != -1)
  {
    dispatch_once(&qword_1ED4CDB50, &__block_literal_global_60);
  }

  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(v8 + 8), &v27);
  if (SharedXPCClient)
  {
    goto LABEL_16;
  }

  SharedXPCClient = FigEndpointXPCRemoteGetObjectID(a1, &v30);
  if (SharedXPCClient)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_35();
  SharedXPCClient = FigXPCCreateBasicMessage(0x63656670u, v10, v11);
  if (SharedXPCClient)
  {
    goto LABEL_16;
  }

  xpc_dictionary_set_int64(xdict, "OtherProcessPID", a2);
  v20 = OUTLINED_FUNCTION_23_12(v12, v13, v14, v15, v16, v17, v18, v19, v27, v28, xdict);
  if (!v20)
  {
    *a3 = xpc_dictionary_get_uint64(v28, ".objectID");
  }

LABEL_11:
  FigXPCRelease(xdict);
  FigXPCRelease(v28);
  return v20;
}

uint64_t FigEndpointXPCRemotePing()
{
  v6 = 0;
  v7 = 0;
  if (qword_1ED4CDB50 != -1)
  {
    dispatch_once(&qword_1ED4CDB50, &__block_literal_global_60);
  }

  IsAirplaydEnabled = FigIsAirplaydEnabled();
  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(2 * (IsAirplaydEnabled != 0), &v6);
  if (SharedXPCClient)
  {
    v4 = SharedXPCClient;
    v3 = 0;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x2E706E67u, 0, &v7);
    v3 = v7;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage(v6, v7);
      v3 = v7;
    }
  }

  FigXPCRelease(v3);
  return v4;
}

size_t remoteXPCEndpoint_retainCopiedEndpointForSource(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v45 = 0;
  v46 = 0;
  if (qword_1ED4CDB50 != -1)
  {
    dispatch_once(&qword_1ED4CDB50, &__block_literal_global_60);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_47:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v39 = 3073;
    goto LABEL_49;
  }

  if (!a1)
  {
    goto LABEL_47;
  }

LABEL_3:
  if (a5)
  {
    if ((a2 & 0x1000) == 0)
    {
      Base = FigEndpointXPCSourceGetBase(a2);
      SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(Base, &v45);
      if (SharedXPCClient)
      {
        return SharedXPCClient;
      }

      v12 = FigXPCRemoteClientRetainCopiedObject(v45, a1, &v46);
      version = v46;
      if (!v12)
      {
        if (v46)
        {
          v14 = 0;
LABEL_29:
          *a5 = version;
          return v14;
        }

        v48 = 0;
        v49 = 0;
        memset(&cf, 0, sizeof(cf));
        v20 = FigEndpointXPCSourceGetBase(a2);
        v21 = remoteXPCFigEndpoint_getSharedXPCClient(v20, &v48);
        if (!v21)
        {
          v22 = (a2 >> 13) & 1;
          v23 = *MEMORY[0x1E695E480];
          v24 = v22 ? FigEndpointAggregateGetClassID() : FigEndpointExtendedGetClassID();
          v21 = CMDerivedObjectCreate(v23, &kFigEndpointRemoteXPC_EndpointAggregateVTable, v24, &v49, v25, v26, v27, v28);
          if (!v21)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage(v49);
            *DerivedStorage = a1;
            *(DerivedStorage + 96) = 1;
            *(DerivedStorage + 8) = FigEndpointXPCSourceGetBase(a2);
            *(DerivedStorage + 16) = (a2 & 0x2000) != 0;
            if (!v22 || (v21 = FigEndpointRPCCacheCreate((DerivedStorage + 48), 1), !v21))
            {
              cf.version = 0;
              cf.retain = remoteXPCEndpoint_cloneCompletionCallback;
              cf.copyDescription = 0;
              cf.equal = 0;
              cf.release = remoteXPCEndpoint_freeCompletionCallback;
              v30 = FigSimpleMutexCreate();
              *(DerivedStorage + 32) = v30;
              if (!v30)
              {
                v14 = 4294950575;
                goto LABEL_63;
              }

              v31 = CFDictionaryCreateMutable(v23, 0, 0, &cf);
              *(DerivedStorage + 88) = v31;
              if (v31)
              {
                v32 = dispatch_queue_create("com.apple.coremedia.remoteendpoint.notification", 0);
                *(DerivedStorage + 24) = v32;
                if (v32)
                {
                  Mutable = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  *(DerivedStorage + 56) = Mutable;
                  if (Mutable)
                  {
                    v34 = CFArrayCreateMutable(v23, 0, MEMORY[0x1E695E9C0]);
                    *(DerivedStorage + 80) = v34;
                    if (v34)
                    {
                      FigXPCRemoteClientAssociateObject(v48, v49, a1);
                      v14 = 0;
                      v46 = v49;
LABEL_44:
                      version = v46;
                      goto LABEL_29;
                    }

                    v40 = 2988;
                  }

                  else
                  {
                    v40 = 2985;
                  }
                }

                else
                {
                  v40 = 2982;
                }
              }

              else
              {
                v40 = 2979;
              }

              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0_20();
              v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, 0xFFFFBEAFuLL, "<< FigEndpointXPCRemote >>", v40, v42, v43, v44);
            }
          }
        }

        v14 = v21;
LABEL_63:
        if (v49)
        {
          CFRelease(v49);
        }

        goto LABEL_44;
      }

      v14 = v12;
LABEL_54:
      if (version)
      {
        CFRelease(version);
      }

      return v14;
    }

    cf.version = 0;
    v48 = 0;
    v49 = 0;
    if (qword_1ED4CDB68 != -1)
    {
      dispatch_once(&qword_1ED4CDB68, &__block_literal_global_31);
    }

    FigSimpleMutexLock(qword_1ED4CDB70);
    v15 = FigEndpointXPCSourceGetBase(a2);
    v16 = remoteXPCEndpoint_retainCopiedEndpointForSource(a1, v15, 0, 0, &v49);
    if (!v16)
    {
      v17 = FigEndpointXPCSourceGetBase(a4);
      v16 = remoteXPCEndpoint_retainCopiedEndpointForSource(a3, v17, 0, 0, &v48);
      if (!v16)
      {
        if (FigEndpointIsXPCDemux(qword_1ED4CDB60) && FigEndpointXPCDemuxEndpointsMatch(qword_1ED4CDB60, v49, v48))
        {
          cf.version = CFRetain(qword_1ED4CDB60);
LABEL_21:
          v14 = 0;
          version = cf.version;
          v46 = cf.version;
          cf.version = 0;
          goto LABEL_22;
        }

        v16 = FigEndpointXPCDemuxCreate(v49, v48, &cf);
        if (!v16)
        {
          v18 = qword_1ED4CDB60;
          qword_1ED4CDB60 = cf.version;
          if (cf.version)
          {
            CFRetain(cf.version);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          goto LABEL_21;
        }
      }
    }

    v14 = v16;
    version = 0;
LABEL_22:
    FigSimpleMutexUnlock(qword_1ED4CDB70);
    if (cf.version)
    {
      CFRelease(cf.version);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (!v14)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();
  v39 = 3074;
LABEL_49:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", v39, v36, v37, v38);
}

void remoteXPCEndpointClient_DeadConnectionCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return;
  }

  v7 = Mutable;
  FigSimpleMutexLock(*(DerivedStorage + 32));
  *(DerivedStorage + 40) = 257;
  FigCFDictionarySetInt64(v7, @"ActivationSeed", *(DerivedStorage + 64), v8, v9, v10, v11, v12);
  FigCFDictionarySetInt64(v7, @"Features", *(DerivedStorage + 72), v13, v14, v15, v16, v17);
  if (!*(DerivedStorage + 72))
  {
    v20 = 0;
    v19 = 0;
    goto LABEL_7;
  }

  v18 = *(DerivedStorage + 184);
  if (!v18)
  {
    v19 = 0;
    goto LABEL_9;
  }

  v19 = FigCFWeakReferenceHolderCopyReferencedObject(v18);
  if (v19)
  {
LABEL_9:
    v1 = *(DerivedStorage + 160);
    v2 = *(DerivedStorage + 64);
    v20 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt64(v20, @"Status", -16722, v21, v22, v23, v24, v25);
    FigCFDictionarySetValue(v20, @"FailureType", @"FailureType_Disconnected");
    goto LABEL_10;
  }

  v20 = 0;
LABEL_7:
  OUTLINED_FUNCTION_12_14();
LABEL_10:
  FigSimpleMutexUnlock(*(DerivedStorage + 32));
  v26 = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*(v26 + 32));
  Copy = CFDictionaryCreateCopy(v5, *(v26 + 88));
  CFDictionaryRemoveAllValues(*(v26 + 88));
  v28 = *(v26 + 64);
  FigSimpleMutexUnlock(*(v26 + 32));
  OUTLINED_FUNCTION_3_1();
  v35 = 0x40000000;
  v36 = __FigEndpointRemoteXPC_runAllCallbacks_block_invoke;
  v37 = &__block_descriptor_tmp_11_8;
  v38 = Copy;
  v39 = v28;
  v40 = -16722;
  dispatch_async(v29, block);
  if (v1)
  {
    remoteXPCEndpointClient_callDelegateHandleFailed(a1, 0, v2, 0, v1, v19, v20);
  }

  v30 = *(DerivedStorage + 24);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification(v30, DefaultLocalCenter, @"Endpoint_Dissociated", a1, v7, 0, v32, v33);
  if (v20)
  {
    CFRelease(v20);
  }

  CFRelease(v7);
  if (v19)
  {
    CFRelease(v19);
  }
}

uint64_t remoteXPCEndpointClient_HandleClientMessage(void *a1, void *a2)
{
  v40 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v40);
  if (OpCode)
  {
    return OpCode;
  }

  if (v40 != 1667329122)
  {
    if (v40 != 1919116387)
    {
      if (v40 != 1920230499)
      {
        return 4294966630;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
      *&v57 = 0;
      v59 = 0;
      v60[0] = 0;
      uint64 = xpc_dictionary_get_uint64(a2, "ActivationSeed");
      FigXPCMessageCopyCFString(a2, "DelegateFunctionType", &v57);
      FigSimpleMutexLock(*(DerivedStorage + 32));
      v27 = *(DerivedStorage + 184);
      if (v27)
      {
        v28 = FigCFWeakReferenceHolderCopyReferencedObject(v27);
        if (v28)
        {
          v5 = 0;
        }

        else
        {
          v5 = 4294949690;
        }
      }

      else
      {
        v5 = 0;
        v28 = 0;
      }

      v30 = *(DerivedStorage + 152);
      v29 = *(DerivedStorage + 160);
      FigSimpleMutexUnlock(*(DerivedStorage + 32));
      FigEndpointXPCRemoteRetainCopiedEndpointFromReply(a2, 0, v60);
      if (CFStringCompare(v57, @"hrar", 0))
      {
        if (CFStringCompare(v57, @"hrtf", 0))
        {
          v5 = 4294950570;
        }

        else
        {
          FigXPCMessageCopyCFDictionary(a2, "FailureInfo", &v59);
          v5 = remoteXPCEndpointClient_callDelegateHandleFailed(a1, v5, uint64, v60[0], v29, v28, v59);
          if (v59)
          {
            CFRelease(v59);
          }
        }
      }

      else
      {
        v31 = v60[0];
        CMBaseObjectGetDerivedStorage(a1);
        *&__dst[0] = 0;
        v32 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
        *v32 = FigXPCRetain(a2);
        if (!v5)
        {
          if (v30)
          {
            FigXPCMessageCopyCFString(a2, "AuthorizationType", __dst);
            CFRetain(a1);
            if (v31)
            {
              CFRetain(v31);
            }

            if (*&__dst[0])
            {
              CFRetain(*&__dst[0]);
            }

            OUTLINED_FUNCTION_9_19();
            v42 = 0x40000000;
            v43 = __remoteXPCEndpointClient_callDelegateHandleAuthRequired_block_invoke;
            v44 = &__block_descriptor_tmp_18_4;
            v45 = v30;
            v46 = a1;
            v47 = v31;
            v48 = uint64;
            v49 = v28;
            v50 = v33;
            v51 = v32;
            dispatch_async(v34, block);
            if (*&__dst[0])
            {
              CFRelease(*&__dst[0]);
            }

            v5 = 0;
            goto LABEL_58;
          }

          v5 = 4294949690;
        }

        CFRetain(a1);
        OUTLINED_FUNCTION_3_1();
        v42 = 0x40000000;
        v43 = __remoteXPCEndpointClient_callDelegateHandleAuthRequired_block_invoke_2;
        v44 = &__block_descriptor_tmp_19_6;
        v45 = a1;
        v46 = v32;
        dispatch_async(v39, block);
      }

LABEL_58:
      if (v60[0])
      {
        CFRelease(v60[0]);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      if (v57)
      {
        CFRelease(v57);
      }

      return v5;
    }

    v16 = CMBaseObjectGetDerivedStorage(a1);
    v59 = 0;
    v60[0] = 0;
    *&__dst[0] = 0;
    *(&__dst[0] + 1) = __dst;
    __dst[1] = 0x2000000000uLL;
    v17 = xpc_dictionary_get_uint64(a2, "ActivationSeed");
    FigXPCMessageCopyCFString(a2, "CommChannelUUID", v60);
    FigXPCMessageCopyCFString(a2, "DelegateFunctionType", &v59);
    FigSimpleMutexLock(*(v16 + 32));
    v18 = *(v16 + 136);
    if (v18)
    {
      v19 = FigCFWeakReferenceHolderCopyReferencedObject(v18);
      if (!v19)
      {
        v20 = 0;
        v5 = 4294949690;
        goto LABEL_25;
      }

      v5 = 0;
    }

    else
    {
      v5 = 0;
      v19 = 0;
    }

    v20 = 1;
LABEL_25:
    v21 = *(v16 + 120);
    v57 = *(v16 + 104);
    v58 = v21;
    FigSimpleMutexUnlock(*(v16 + 32));
    if (v20)
    {
      CFRetain(a1);
      FigXPCRetain(a2);
      if (v19)
      {
        CFRetain(v19);
      }

      if (v60[0])
      {
        CFRetain(v60[0]);
      }

      if (v59)
      {
        CFRetain(v59);
      }

      OUTLINED_FUNCTION_9_19();
      v42 = 0x40000000;
      v52 = v57;
      v53 = v58;
      v43 = __remoteXPCEndpointClient_handleRemoteControlDelegateCallback_block_invoke;
      v44 = &unk_1E74A6738;
      v45 = __dst;
      v46 = v22;
      v47 = a2;
      v48 = a1;
      v49 = v17;
      v50 = v60[0];
      v51 = v19;
      dispatch_async(v23, block);
    }

    if (v60[0])
    {
      CFRelease(v60[0]);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v59)
    {
      CFRelease(v59);
    }

    _Block_object_dispose(__dst, 8);
    return v5;
  }

  v6 = CMBaseObjectGetDerivedStorage(a1);
  memset(__dst, 0, 72);
  *&v57 = 0;
  v7 = xpc_dictionary_get_uint64(a2, "CompletionID");
  int64 = xpc_dictionary_get_int64(a2, "CompletionStatus");
  v9 = xpc_dictionary_get_uint64(a2, "ActivationSeed");
  v10 = xpc_dictionary_get_uint64(a2, "ActivationFeatures");
  FigXPCMessageCopyCFDictionary(a2, "SendCommandResponse", &v57);
  FigSimpleMutexLock(*(v6 + 32));
  Value = CFDictionaryGetValue(*(v6 + 88), v7);
  if (Value)
  {
    v12 = Value;
    memcpy(__dst, Value, 0x48uLL);
    remoteXPCEndpointClient_retainCompletionCallbackEntryFields(__dst);
    if (v12[1] && *(v12 + 40) && !int64)
    {
      *(v6 + 64) = v9;
      *(v6 + 72) = v10;
    }

    CFDictionaryRemoveValue(*(v6 + 88), v7);
    v13 = *&__dst[0];
    FigSimpleMutexUnlock(*(v6 + 32));
    if (v13)
    {
      if (*&__dst[2])
      {
        remoteXPCFigEndpoint_clearAggregateSubEndpointsDependentCache(v6);
      }

      if (v57)
      {
        CFRetain(v57);
      }

      remoteXPCEndpointClient_retainCompletionCallbackEntryFields(__dst);
      v14 = *(v6 + 24);
      OUTLINED_FUNCTION_3_1();
      v42 = 0x40000000;
      v43 = __remoteXPCEndpointClient_handleCompletionCallback_block_invoke;
      v44 = &__block_descriptor_tmp_16_4;
      memcpy((v15 + 32), __dst, 0x48uLL);
      *&v53 = v9;
      *(&v53 + 1) = v10;
      v54 = v57;
      v55 = int64;
      dispatch_async(v14, block);
      v5 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    FigSimpleMutexUnlock(*(v6 + 32));
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_3();
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 0xFFFFBEABuLL, "<< FigEndpointXPCRemote >>", 0x304, v36, v37, v38);
LABEL_17:
  if (v57)
  {
    CFRelease(v57);
  }

  remoteXPCEndpointClient_releaseCompletionCallbackEntryFields(__dst);
  return v5;
}

uint64_t remoteXPCEndpointClient_callDelegateHandleFailed(const void *a1, CFMutableDictionaryRef a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, const __CFDictionary *a7)
{
  CMBaseObjectGetDerivedStorage(a1);
  if (a2)
  {
    return a2;
  }

  if (!a5)
  {
    return 4294949690;
  }

  if (a4 && a7)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a7);
    FigCFDictionarySetValue(MutableCopy, @"SubEndpoint", a4);
    CFRetain(a1);
    a7 = MutableCopy;
LABEL_7:
    CFRetain(a4);
    a2 = MutableCopy;
    goto LABEL_8;
  }

  CFRetain(a1);
  MutableCopy = 0;
  a2 = 0;
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (a7)
  {
    CFRetain(a7);
  }

  OUTLINED_FUNCTION_1();
  v17[1] = 0x40000000;
  v17[2] = __remoteXPCEndpointClient_callDelegateHandleFailed_block_invoke;
  v17[3] = &__block_descriptor_tmp_12_8;
  v17[4] = a5;
  v17[5] = a1;
  v17[6] = a3;
  v17[7] = a7;
  v17[8] = a6;
  v17[9] = a4;
  dispatch_async(v15, v17);
  if (a2)
  {
    CFRelease(a2);
    return 0;
  }

  return a2;
}

void remoteXPCEndpointClient_handleAuthCompletionCallback(uint64_t a1, const void *a2, int a3, xpc_object_t *a4)
{
  if (*a4 && (remote_connection = xpc_dictionary_get_remote_connection(*a4)) != 0)
  {
    v8 = remote_connection;
    reply = xpc_dictionary_create_reply(*a4);
    xpc_dictionary_set_int64(reply, "AuthorizationResult", a3);
    FigXPCMessageSetCFString(reply, "AuthorizationString", a2);
    xpc_connection_send_message(v8, reply);
  }

  else
  {
    reply = 0;
  }

  FigXPCRelease(reply);
  FigXPCRelease(*a4);

  free(a4);
}

void __remoteXPCEndpointClient_callDelegateHandleAuthRequired_block_invoke_2(uint64_t a1)
{
  remoteXPCEndpointClient_handleAuthCompletionCallback(a1, 0, -16728, *(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

size_t FigEndpointRemoteXPC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  v17 = 0;
  v18 = 0;
  v4 = *v3;
  if (*(v3 + 40) || (v5 = v3, remoteXPCFigEndpoint_getSharedXPCClient(*(v3 + 8), &v17)) || (v6 = v17, FigXPCRemoteClientDisassociateObject(v17, v4), *(v5 + 41)))
  {
    v7 = 0;
  }

  else
  {
    v8 = FigXPCCreateBasicMessage(0x646F6F6Du, v4, &v18);
    v7 = v18;
    if (!v8)
    {
      v9 = FigXPCRemoteClientSendSyncMessage(v6, v18);
      FigXPCRemoteClientKillServerOnTimeout(v6, v9, "FigEndpointRemoteXPC_teardown", 0);
      v7 = v18;
    }
  }

  FigXPCRelease(v7);
  v10 = *(DerivedStorage + 88);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 88) = 0;
  }

  v11 = *(DerivedStorage + 56);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 56) = 0;
  }

  v12 = *(DerivedStorage + 80);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 80) = 0;
  }

  v13 = *(DerivedStorage + 136);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 136) = 0;
  }

  v14 = *(DerivedStorage + 184);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 184) = 0;
  }

  FigEndpointRPCCacheDispose(*(DerivedStorage + 48));
  v15 = *(DerivedStorage + 24);
  if (v15)
  {
    dispatch_release(v15);
  }

  return FigSimpleMutexDestroy(*(DerivedStorage + 32));
}

uint64_t FigEndpointRemoteXPC_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v5 = v4;
  Mutable = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  valuePtr = 0;
  v40 = 0;
  v37 = 0;
  cf = 0;
  v36 = 0;
  if (OUTLINED_FUNCTION_29_8() || FigCFEqual(a2, @"Type"))
  {
    if (remoteXPCFigEndpoint_copyCachedProperty(Mutable, a2, &cf))
    {
LABEL_4:
      OUTLINED_FUNCTION_12_14();
      v11 = 0;
      goto LABEL_5;
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v36);
  if (SharedXPCClient)
  {
    goto LABEL_53;
  }

  SharedXPCClient = FigEndpointXPCRemoteGetObjectID(Mutable, &v40);
  if (SharedXPCClient)
  {
    goto LABEL_53;
  }

  if (v14 && remoteXPCFigEndpoint_copyCachedProperty(Mutable, a2, &cf))
  {
    goto LABEL_4;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_12_14();
    v11 = 4294954516;
    goto LABEL_5;
  }

  if (CFEqual(@"Streams", a2) || CFEqual(@"ExternalPlaybackCompetingStreams", a2))
  {
    SharedXPCClient = FigEndpointStreamXPCRemotePing();
    if (!SharedXPCClient)
    {
      goto LABEL_28;
    }

LABEL_53:
    v11 = SharedXPCClient;
    goto LABEL_54;
  }

  if (CFEqual(@"Messenger", a2))
  {
    SharedXPCClient = FigEndpointMessengerXPCRemotePing();
    if (SharedXPCClient)
    {
      goto LABEL_53;
    }
  }

LABEL_28:
  if (!CFEqual(@"Messenger", a2))
  {
    if (!CFEqual(@"Endpoints", a2))
    {
      v11 = FigXPCSendStdCopyPropertyMessage(v36, v40, a2, &cf, v18, v19, v20, v21);
      if (!v11)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    xdict = 0;
    value = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v22 = CMBaseObjectGetDerivedStorage(Mutable);
    if (*(v22 + 16))
    {
      v23 = v22;
      ObjectID = remoteXPCFigEndpoint_getSharedXPCClient(*(v22 + 8), &v41);
      if (!ObjectID)
      {
        ObjectID = FigEndpointXPCRemoteGetObjectID(Mutable, &v42);
        if (!ObjectID)
        {
          ObjectID = FigXPCCreateBasicMessage(0x63707365u, v42, &value);
          if (!ObjectID)
          {
            ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(v41, value, &xdict);
            if (!ObjectID)
            {
              v25 = xpc_dictionary_get_value(xdict, "AddedSubEndpoints");
              Mutable = xpc_dictionary_get_value(xdict, "SubtractedSubEndpoints");
              FigSimpleMutexLock(*(v23 + 32));
              v11 = FigEndpointRPCCacheApplyObjectDeltas(*(v23 + 48), v25, Mutable);
              if (!v11)
              {
                v11 = FigEndpointRPCCacheCopyAvailableObjects(*(v23 + 48), &v43);
              }

              FigSimpleMutexUnlock(*(v23 + 32));
              cf = v43;
              v43 = 0;
LABEL_49:
              FigXPCRelease(xdict);
              FigXPCRelease(value);
              if (!v11)
              {
                goto LABEL_56;
              }

              goto LABEL_54;
            }
          }
        }
      }
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0DuLL, "<< FigEndpointXPCRemote >>", 0x4F7, v4, v34, v35);
    }

    v11 = ObjectID;
    goto LABEL_49;
  }

  Mutable = v36;
  xdict = 0;
  value = 0;
  v43 = 0;
  v16 = FigXPCCreateBasicMessage(0x636D7367u, v40, &xdict);
  if (v16 || (v16 = FigXPCRemoteClientSendSyncMessageCreatingReply(Mutable, xdict, &v43), v16))
  {
    v11 = v16;
  }

  else
  {
    v11 = FigXPCMessageCopyCFObject(v43, ".Value", &value);
    if (v11)
    {
      if (value)
      {
        CFRelease(value);
      }
    }

    else
    {
      cf = value;
      value = 0;
    }
  }

  FigXPCRelease(v43);
  FigXPCRelease(xdict);
  if (cf)
  {
    Mutable = CFGetTypeID(cf);
    if (Mutable == CFNumberGetTypeID())
    {
      if (!CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr) || (cf = 0, v11 = FigEndpointMessengerXPCRemoteCreateWithObjectID(valuePtr, &v37), !v11))
      {
        if (cf)
        {
          CFRelease(cf);
        }

        v17 = v37;
        v37 = 0;
        cf = v17;
        goto LABEL_56;
      }

LABEL_54:
      OUTLINED_FUNCTION_12_14();
      goto LABEL_5;
    }
  }

LABEL_56:
  if (!CFEqual(@"Streams", a2))
  {
    Mutable = 0;
    if (!CFEqual(@"ExternalPlaybackCompetingStreams", a2) || (v26 = cf) == 0)
    {
      v5 = 0;
      goto LABEL_72;
    }

    goto LABEL_61;
  }

  v26 = cf;
  if (cf)
  {
LABEL_61:
    Mutable = CFGetTypeID(v26);
    if (Mutable == CFArrayGetTypeID())
    {
      v5 = cf;
      cf = 0;
      Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        goto LABEL_5;
      }

      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v28 = Count;
        for (i = 0; i != v28; ++i)
        {
          xdict = 0;
          value = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &xdict))
          {
            v11 = FigEndpointStreamXPCRemoteRetainCopiedEndpointStream(xdict, &value);
            if (v11)
            {
              goto LABEL_5;
            }

            CFArrayAppendValue(Mutable, value);
            CFRelease(value);
          }
        }
      }

      cf = CFRetain(Mutable);
      goto LABEL_72;
    }
  }

  OUTLINED_FUNCTION_12_14();
LABEL_72:
  if (FigCFEqual(a2, @"AirPlayFromCloud") || FigCFEqual(a2, @"AirPlayVodkaVersion") || FigCFEqual(a2, @"AudioWithScreenMirroringOnly") || FigCFEqual(a2, @"AuthenticationData") || FigCFEqual(a2, @"AuthenticationType") || FigCFEqual(a2, @"AuthorizationType") || FigCFEqual(a2, @"AutoconnectEnabled") || FigCFEqual(a2, @"IsDissociated") || FigCFEqual(a2, @"EndpointInfo") || FigCFEqual(a2, @"ExtendedFeatures") || FigCFEqual(a2, @"ExternalPlaybackCompetingStreams") || FigCFEqual(a2, @"FirmwareVersion") || FigCFEqual(a2, @"HIDs") || FigCFEqual(a2, @"ID") || FigCFEqual(a2, @"IsLocalDevice") || FigCFEqual(a2, @"IsPerAppDisplay") || FigCFEqual(a2, @"IsRemoteControlOnly") || FigCFEqual(a2, @"LimitedUI") || FigCFEqual(a2, @"LimitedUIElements") || FigCFEqual(a2, @"MACAddress") || FigCFEqual(a2, @"Manufacturer") || FigCFEqual(a2, @"Model") || OUTLINED_FUNCTION_29_8() || FigCFEqual(a2, @"NightMode") || FigCFEqual(a2, @"OEMIcons") || FigCFEqual(a2, @"OEMIconVisible") || FigCFEqual(a2, @"OEMIconLabel") || FigCFEqual(a2, @"PrimaryUsage") || FigCFEqual(a2, @"RightHandDrive") || FigCFEqual(a2, @"ScreenInfo") || FigCFEqual(a2, @"Streams") || FigCFEqual(a2, @"Endpoints") || FigCFEqual(a2, @"SubType") || FigCFEqual(a2, @"SupportedFeatures") || FigCFEqual(a2, @"SystemFlags") || FigCFEqual(a2, @"TransportType") || FigCFEqual(a2, @"Type") || FigCFEqual(a2, @"VehicleInformation") || FigCFEqual(a2, @"VoiceActivationType") || FigCFEqual(a2, @"Volume") || FigCFEqual(a2, @"VolumeDB") || FigCFEqual(a2, @"VolumeControlSupported") || FigCFEqual(a2, @"VolumeControlType"))
  {
    if (cf && !FigCFEqual(a2, @"ID"))
    {
      OUTLINED_FUNCTION_29_8();
    }

    if (v11)
    {
      v31 = 0;
    }

    else
    {
      v31 = cf == 0;
    }

    if (v31)
    {
      v32 = *MEMORY[0x1E695E738];
    }

    else
    {
      v32 = cf;
    }

    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, a2, v32);
  }

LABEL_5:
  if (a4)
  {
    v12 = cf;
    if (cf)
    {
      v12 = CFRetain(cf);
    }

    *a4 = v12;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  FigXPCRemoteClientKillServerOnTimeout(v36, v11, "FigEndpointRemoteXPC_CopyProperty", a2);
  return v11;
}

size_t FigEndpointRemoteXPC_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_4();
  v28 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(v6);
  v15 = OUTLINED_FUNCTION_24_12(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v26);
  if (v15)
  {
    v24 = v15;
    v21 = v27;
    goto LABEL_15;
  }

  ObjectID = FigEndpointXPCRemoteGetObjectID(v4, &v28);
  v21 = v27;
  if (ObjectID || (ObjectID = FigXPCSendStdSetPropertyMessage(v27, v28, v3, a3, v17, v18, v19, v20), ObjectID))
  {
    v24 = ObjectID;
    goto LABEL_15;
  }

  if (FigCFEqual(v3, @"AutoconnectEnabled"))
  {
    v22 = DerivedStorage;
    v23 = v3;
  }

  else
  {
    if (!OUTLINED_FUNCTION_29_8() && !FigCFEqual(v3, @"VolumeDB") && !FigCFEqual(v3, @"IsMuted") && !FigCFEqual(v3, @"IsMutedByUser") && !FigCFEqual(v3, @"IsMutedProgrammatically") && !FigCFEqual(v3, @"MasterVolume"))
    {
      goto LABEL_14;
    }

    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"Volume", 0);
    v22 = DerivedStorage;
    v23 = @"VolumeDB";
  }

  remoteXPCFigEndpoint_setCachedProperty(v22, v23, 0);
LABEL_14:
  v24 = 0;
LABEL_15:
  FigXPCRemoteClientKillServerOnTimeout(v21, v24, "FigEndpointRemoteXPC_SetProperty", v3);
  return v24;
}

uint64_t FigEndpointRemoteXPC_ActivateWithCompletionCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_18_16(a1);
  ObjectID = FigEndpointXPCRemoteGetObjectID(v3, &v32);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x61637674u, v32, &xdict), ObjectID))
  {
    v14 = ObjectID;
    if (v1)
    {
      if (v3)
      {
        CFRetain(v3);
      }

      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_16_14(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, 0x40000000, __FigEndpointRemoteXPC_ActivateWithCompletionCallback_block_invoke, &__block_descriptor_tmp_36_1, v27, v28, v29, v30);
    }
  }

  else
  {
    FigXPCMessageSetCFDictionary(xdict, "ActivateOptions", v5);
    xpc_dictionary_set_uint64(xdict, "ActivationFeatures", v4);
    OUTLINED_FUNCTION_10_18();
    v14 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v7, v8, v9, v10, v11, v12, v13, 0, 0, v2);
  }

  FigXPCRelease(xdict);
  return v14;
}

uint64_t FigEndpointRemoteXPC_DeactivateWithCompletionCallback(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v29 = 0;
  v30 = 0;
  ObjectID = FigEndpointXPCRemoteGetObjectID(a1, &v30);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x64617674u, v30, &v29), ObjectID))
  {
    v17 = ObjectID;
    if (a3)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      v19 = OUTLINED_FUNCTION_6_30();
      v21 = 0x40000000;
      v22 = __FigEndpointRemoteXPC_DeactivateWithCompletionCallback_block_invoke;
      v23 = &__block_descriptor_tmp_38_2;
      v24 = a3;
      v25 = a1;
      v28 = v17;
      v26 = 0;
      v27 = a4;
      dispatch_async(v19, block);
    }
  }

  else
  {
    FigXPCMessageSetCFDictionary(v29, "DeactivateOptions", a2);
    FigSimpleMutexLock(*(DerivedStorage + 32));
    *(DerivedStorage + 72) = 0;
    FigSimpleMutexUnlock(*(DerivedStorage + 32));
    OUTLINED_FUNCTION_10_18();
    v17 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v10, v11, v12, v13, v14, v15, v16, 0, 0, a4);
  }

  FigXPCRelease(v29);
  return v17;
}

uint64_t FigEndpointRemoteXPC_Dissociate(uint64_t a1)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  ObjectID = OUTLINED_FUNCTION_5_36(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v15, v16);
  if (ObjectID || (ObjectID = FigEndpointXPCRemoteGetObjectID(a1, &v18), ObjectID) || (OUTLINED_FUNCTION_4_35(), ObjectID = FigXPCCreateBasicMessage(0x64736F63u, v11, v12), ObjectID))
  {
    v13 = ObjectID;
  }

  else
  {
    v13 = FigXPCRemoteClientSendSyncMessage(v17, 0);
    if (!v13)
    {
      FigSimpleMutexLock(*(DerivedStorage + 32));
      *(DerivedStorage + 40) = 1;
      FigSimpleMutexUnlock(*(DerivedStorage + 32));
    }
  }

  FigXPCRelease(0);
  return v13;
}

uint64_t FigEndpointRemoteXPC_SetDelegateRouting()
{
  OUTLINED_FUNCTION_18_4();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
  OUTLINED_FUNCTION_14_17();
  FigSimpleMutexLock(*(v4 + 32));
  v5 = *(DerivedStorage + 184);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 184) = 0;
  }

  if (v0)
  {
    v6 = *v0;
    v7 = v0[1];
    *(DerivedStorage + 176) = *(v0 + 4);
    *(DerivedStorage + 144) = v6;
    *(DerivedStorage + 160) = v7;
    *(DerivedStorage + 184) = FigCFWeakReferenceHolderCreateWithReferencedObject(*v0);
  }

  else
  {
    *(DerivedStorage + 176) = 0;
    *(DerivedStorage + 144) = 0u;
    *(DerivedStorage + 160) = 0u;
  }

  FigSimpleMutexUnlock(*(DerivedStorage + 32));
  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v23);
  if (!SharedXPCClient)
  {
    SharedXPCClient = FigEndpointXPCRemoteGetObjectID(v1, &v25);
    if (!SharedXPCClient)
    {
      OUTLINED_FUNCTION_4_35();
      if (v0)
      {
        v18 = 1935962740;
      }

      else
      {
        v18 = 1667527284;
      }

      SharedXPCClient = FigXPCCreateBasicMessage(v18, v16, v17);
      if (!SharedXPCClient)
      {
        SharedXPCClient = FigXPCRemoteClientSendSyncMessage(v23, v24);
      }
    }
  }

  v19 = OUTLINED_FUNCTION_8_22(SharedXPCClient, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24);
  FigXPCRelease(v19);
  OUTLINED_FUNCTION_17_13(v23, v20, "FigEndpointRemoteXPC_SetDelegateRouting");
  return DerivedStorage;
}

uint64_t FigEndpointRemoteXPC_SetDelegateRemoteControl()
{
  OUTLINED_FUNCTION_18_4();
  v22 = 0;
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
  v21 = 0;
  FigSimpleMutexLock(*(DerivedStorage + 32));
  v4 = *(DerivedStorage + 136);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 136) = 0;
  }

  if (v0)
  {
    v5 = *v0;
    *(DerivedStorage + 120) = v0[1];
    *(DerivedStorage + 104) = v5;
    *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject(*v0);
  }

  else
  {
    *(DerivedStorage + 120) = 0u;
    *(DerivedStorage + 104) = 0u;
  }

  FigSimpleMutexUnlock(*(DerivedStorage + 32));
  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v21);
  if (!SharedXPCClient)
  {
    SharedXPCClient = FigEndpointXPCRemoteGetObjectID(v1, &v23);
    if (!SharedXPCClient)
    {
      OUTLINED_FUNCTION_4_35();
      if (v0)
      {
        v16 = 1935962723;
      }

      else
      {
        v16 = 1667527267;
      }

      SharedXPCClient = FigXPCCreateBasicMessage(v16, v14, v15);
      if (!SharedXPCClient)
      {
        SharedXPCClient = FigXPCRemoteClientSendSyncMessage(v21, v22);
      }
    }
  }

  v17 = OUTLINED_FUNCTION_8_22(SharedXPCClient, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22);
  FigXPCRelease(v17);
  OUTLINED_FUNCTION_17_13(v21, v18, "FigEndpointRemoteXPC_SetDelegateRemoteControl");
  return DerivedStorage;
}

size_t FigEndpointRemoteXPC_CreatePlaybackSession(uint64_t a1, CFTypeRef *a2)
{
  v22 = 0;
  v23 = 0;
  cf = 0;
  xdict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  ObjectID = OUTLINED_FUNCTION_5_36(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  if (ObjectID || (ObjectID = FigEndpointXPCRemoteGetObjectID(a1, &v23), ObjectID) || (ObjectID = FigXPCCreateBasicMessage(0x63706273u, v23, &v22), ObjectID) || (ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(v19, v22, &xdict), ObjectID))
  {
    v14 = ObjectID;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "PlaybackSessionID");
    v14 = FigEndpointPlaybackSessionXPCRemoteCreateWithObjectID(uint64, &cf);
    if (!v14)
    {
      *a2 = cf;
      cf = 0;
    }
  }

  FigXPCRelease(v22);
  FigXPCRelease(xdict);
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_28_10(v19, v15, "FigEndpointRemoteXPC_CreatePlaybackSession");
  return v14;
}

uint64_t FigEndpointRemoteXPC_UpdateFeaturesWithCompletionCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_18_16(a1);
  ObjectID = FigEndpointXPCRemoteGetObjectID(v3, &v32);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x75706665u, v32, &xdict), ObjectID))
  {
    v14 = ObjectID;
    if (v1)
    {
      if (v3)
      {
        CFRetain(v3);
      }

      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_16_14(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, 0x40000000, __FigEndpointRemoteXPC_UpdateFeaturesWithCompletionCallback_block_invoke, &__block_descriptor_tmp_39_0, v27, v28, v29, v30);
    }
  }

  else
  {
    FigXPCMessageSetCFDictionary(xdict, "ActivateOptions", v5);
    xpc_dictionary_set_uint64(xdict, "ActivationFeatures", v4);
    OUTLINED_FUNCTION_10_18();
    v14 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v7, v8, v9, v10, v11, v12, v13, 0, 0, v2);
  }

  FigXPCRelease(xdict);
  return v14;
}

uint64_t FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v19 = DerivedStorage;
  memset(value, 0, 72);
  v34 = 0;
  v20 = a8 | a5 | a3 | a7;
  v21 = v20 == 0;
  if (v20)
  {
    *&value[1] = a7;
    *(&value[1] + 1) = a5;
    *&value[0] = a1;
    *(&value[0] + 1) = a3;
    BYTE8(value[2]) = a4;
    *&value[2] = a8;
    *&value[3] = a6;
    *(&value[3] + 1) = a9;
    *&value[4] = a10;
    FigSimpleMutexLock(*(DerivedStorage + 32));
    v24 = CMBaseObjectGetDerivedStorage(a1);
    v22 = *(v24 + 96);
    v25 = 1;
    if (v22 + 1 > 1)
    {
      v25 = v22 + 1;
    }

    *(v24 + 96) = v25;
    CFDictionarySetValue(*(v19 + 88), v22, value);
    v23 = *(v19 + 64);
    FigSimpleMutexUnlock(*(v19 + 32));
    xpc_dictionary_set_uint64(a2, "CompletionID", v22);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(v19 + 8), &v34);
  if (!SharedXPCClient)
  {
    SharedXPCClient = FigXPCRemoteClientSendSyncMessage(v34, a2);
  }

  v27 = SharedXPCClient;
  if (SharedXPCClient)
  {
    v28 = v21;
  }

  else
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    FigSimpleMutexLock(*(v19 + 32));
    if (CFDictionaryGetValueIfPresent(*(v19 + 88), v22, 0))
    {
      remoteXPCEndpointClient_retainCompletionCallbackEntryFields(value);
      v29 = *(v19 + 24);
      OUTLINED_FUNCTION_1();
      v32[1] = 0x40000000;
      v32[2] = __FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
      v32[3] = &__block_descriptor_tmp_37_2;
      memcpy((v30 + 32), value, 0x48uLL);
      v32[13] = v23;
      v33 = v27;
      dispatch_async(v29, v32);
    }

    CFDictionaryRemoveValue(*(v19 + 88), v22);
    FigSimpleMutexUnlock(*(v19 + 32));
  }

  FigXPCRemoteClientKillServerOnTimeout(v34, v27, "FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback", 0);
  return v27;
}

uint64_t FigEndpointRemoteXPC_RequestCarUI()
{
  OUTLINED_FUNCTION_0_85();
  v4 = (FigEndpointExtendedGetFigEndpoint)();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v4);
  ObjectID = OUTLINED_FUNCTION_5_36(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v27, v29);
  if (!ObjectID)
  {
    FigEndpoint = FigEndpointExtendedGetFigEndpoint(v3);
    ObjectID = FigEndpointXPCRemoteGetObjectID(FigEndpoint, &v33);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_4_35();
      ObjectID = FigXPCCreateBasicMessage(0x63617220u, v22, v23);
      if (!ObjectID)
      {
        if (v1)
        {
          FigXPCMessageSetCFString(v32, "UUID", v1);
        }

        if (v0)
        {
          FigXPCMessageSetCFURL(v32, "URL", v0);
        }

        ObjectID = FigXPCRemoteClientSendSyncMessage(v30, v32);
      }
    }
  }

  v24 = OUTLINED_FUNCTION_8_22(ObjectID, v14, v15, v16, v17, v18, v19, v20, v28, v30, v32);
  FigXPCRelease(v24);
  OUTLINED_FUNCTION_17_13(v31, v25, "FigEndpointRemoteXPC_RequestCarUI");
  return v2;
}

uint64_t FigEndpointRemoteXPC_BorrowScreen()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(v4);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v36, v39) || (v14 = FigEndpointExtendedGetFigEndpoint(v3), FigEndpointXPCRemoteGetObjectID(v14, &v43)))
  {
    v25 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    OUTLINED_FUNCTION_4_35();
    v17 = FigXPCCreateBasicMessage(0x62732020u, v15, v16);
    v25 = OUTLINED_FUNCTION_8_22(v17, v18, v19, v20, v21, v22, v23, v24, v37, v40, v41);
    if (!v2)
    {
      FigXPCMessageSetCFString(v25, "Client", v1);
      FigXPCMessageSetCFString(v42, "Reason", v0);
      v26 = FigXPCRemoteClientSendSyncMessage(v40, v42);
      v25 = OUTLINED_FUNCTION_8_22(v26, v27, v28, v29, v30, v31, v32, v33, v38, v40, v42);
    }
  }

  FigXPCRelease(v25);
  OUTLINED_FUNCTION_17_13(v40, v34, "FigEndpointRemoteXPC_BorrowScreen");
  return v2;
}

uint64_t FigEndpointRemoteXPC_UnborrowScreen()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(v4);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v36, v39) || (v14 = FigEndpointExtendedGetFigEndpoint(v3), FigEndpointXPCRemoteGetObjectID(v14, &v43)))
  {
    v25 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    OUTLINED_FUNCTION_4_35();
    v17 = FigXPCCreateBasicMessage(0x756E6273u, v15, v16);
    v25 = OUTLINED_FUNCTION_8_22(v17, v18, v19, v20, v21, v22, v23, v24, v37, v40, v41);
    if (!v2)
    {
      FigXPCMessageSetCFString(v25, "Client", v1);
      FigXPCMessageSetCFString(v42, "Reason", v0);
      v26 = FigXPCRemoteClientSendSyncMessage(v40, v42);
      v25 = OUTLINED_FUNCTION_8_22(v26, v27, v28, v29, v30, v31, v32, v33, v38, v40, v42);
    }
  }

  FigXPCRelease(v25);
  OUTLINED_FUNCTION_17_13(v40, v34, "FigEndpointRemoteXPC_UnborrowScreen");
  return v2;
}

uint64_t FigEndpointRemoteXPC_TakeScreen()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(v4);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v36, v39) || (v14 = FigEndpointExtendedGetFigEndpoint(v3), FigEndpointXPCRemoteGetObjectID(v14, &v43)))
  {
    v25 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    OUTLINED_FUNCTION_4_35();
    v17 = FigXPCCreateBasicMessage(0x74732020u, v15, v16);
    v25 = OUTLINED_FUNCTION_8_22(v17, v18, v19, v20, v21, v22, v23, v24, v37, v40, v41);
    if (!v2)
    {
      FigXPCMessageSetCFString(v25, "Client", v1);
      FigXPCMessageSetCFString(v42, "Reason", v0);
      v26 = FigXPCRemoteClientSendSyncMessage(v40, v42);
      v25 = OUTLINED_FUNCTION_8_22(v26, v27, v28, v29, v30, v31, v32, v33, v38, v40, v42);
    }
  }

  FigXPCRelease(v25);
  OUTLINED_FUNCTION_17_13(v40, v34, "FigEndpointRemoteXPC_TakeScreen");
  return v2;
}

uint64_t FigEndpointRemoteXPC_DisableBluetoothConnectivityToDevice()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(v4);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v18, v19) || (v14 = FigEndpointExtendedGetFigEndpoint(v3), FigEndpointXPCRemoteGetObjectID(v14, &v21)))
  {
    v15 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x64627464u, v21, v22);
    v15 = *v22;
    if (!v2)
    {
      FigXPCMessageSetCFString(*v22, "DeviceAddress", v1);
      FigXPCMessageSetCFDictionary(*v22, "DisableBluetoothOptions", v0);
      v2 = FigXPCRemoteClientSendSyncMessage(v20, *v22);
      v15 = *v22;
    }
  }

  FigXPCRelease(v15);
  OUTLINED_FUNCTION_17_13(v20, v16, "FigEndpointRemoteXPC_DisableBluetoothConnectivityToDevice");
  return v2;
}

uint64_t FigEndpointRemoteXPC_DuckAudio(uint64_t a1, void *a2)
{
  v21 = 0;
  *v22 = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v18, v19) || (v14 = FigEndpointExtendedGetFigEndpoint(a1), FigEndpointXPCRemoteGetObjectID(v14, &v21)))
  {
    v15 = OUTLINED_FUNCTION_25_9();
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x64756361u, v21, v22);
    v15 = *v22;
    if (!v2)
    {
      FigXPCMessageSetCFDictionary(*v22, "Params", a2);
      v2 = FigXPCRemoteClientSendSyncMessage(v20, *v22);
      v15 = *v22;
    }
  }

  FigXPCRelease(v15);
  OUTLINED_FUNCTION_28_10(v20, v16, "FigEndpointRemoteXPC_DuckAudio");
  return v2;
}

uint64_t FigEndpointRemoteXPC_SetHIDInputMode()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(v4);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v36, v39) || (v14 = FigEndpointExtendedGetFigEndpoint(v3), FigEndpointXPCRemoteGetObjectID(v14, &v43)))
  {
    v25 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    OUTLINED_FUNCTION_4_35();
    v17 = FigXPCCreateBasicMessage(0x73686D20u, v15, v16);
    v25 = OUTLINED_FUNCTION_8_22(v17, v18, v19, v20, v21, v22, v23, v24, v37, v40, v41);
    if (!v2)
    {
      FigXPCMessageSetCFString(v25, "HIDUUID", v1);
      FigXPCMessageSetCFNumber(v42, "HIDInputMode", v0);
      v26 = FigXPCRemoteClientSendSyncMessage(v40, v42);
      v25 = OUTLINED_FUNCTION_8_22(v26, v27, v28, v29, v30, v31, v32, v33, v38, v40, v42);
    }
  }

  FigXPCRelease(v25);
  OUTLINED_FUNCTION_17_13(v40, v34, "FigEndpointRemoteXPC_SetHIDInputMode");
  return v2;
}

unint64_t FigEndpointRemoteXPC_CopyHIDInputMode(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_14_17();
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(v8);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  v25 = 0;
  if (a4)
  {
    if (remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v25) || (v11 = FigEndpointExtendedGetFigEndpoint(a1), FigEndpointXPCRemoteGetObjectID(v11, &v28)) || (OUTLINED_FUNCTION_4_35(), FigXPCCreateBasicMessage(0x63686D20u, v12, v13)) || (v14 = FigXPCMessageSetCFString(*v27, "HIDUUID", a2), v14))
    {
      v22 = OUTLINED_FUNCTION_25_9();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_23_12(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26, *v27);
      v22 = v26;
      if (!v4)
      {
        v4 = FigXPCMessageCopyCFNumber(v26, "HIDInputMode", a4);
        v22 = v26;
      }
    }
  }

  else
  {
    v22 = 0;
    v4 = 0;
  }

  FigXPCRelease(v22);
  FigXPCRelease(*v27);
  OUTLINED_FUNCTION_28_10(v25, v23, "FigEndpointRemoteXPC_CopyHIDInputMode");
  return v4;
}

uint64_t FigEndpointRemoteXPC_SendCommand(const void *a1, const void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(a1);
  CMBaseObjectGetDerivedStorage(FigEndpoint);
  v30 = 0;
  *v29 = 0;
  ObjectID = FigEndpointXPCRemoteGetObjectID(FigEndpoint, &v30);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x636D6D64u, v30, v29), ObjectID))
  {
    v12 = ObjectID;
    if (a4)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_16_14(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, 0x40000000, __FigEndpointRemoteXPC_SendCommand_block_invoke, &__block_descriptor_tmp_40_2, v25, v26, v27, v28);
    }
  }

  else
  {
    FigXPCMessageSetCFString(*v29, "Command", a2);
    FigXPCMessageSetCFDictionary(*v29, "Params", a3);
    v12 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(FigEndpoint, *v29, 0, 0, 0, 0, a4, 0, 0, a5);
  }

  FigXPCRelease(*v29);
  return v12;
}

uint64_t FigEndpointRemoteXPC_CreateRemoteControlSession(uint64_t a1, void *a2, void *a3)
{
  xdict = 0;
  *v18 = 0;
  v15 = 0;
  v16 = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  v14 = 0;
  SharedXPCClient = FigEndpointRemoteControlSessionXPCRemotePing();
  if (SharedXPCClient || (SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v14), SharedXPCClient) || (v9 = FigEndpointExtendedGetFigEndpoint(a1), SharedXPCClient = FigEndpointXPCRemoteGetObjectID(v9, &v16), SharedXPCClient) || (SharedXPCClient = FigXPCCreateBasicMessage(0x63726373u, v16, v18), SharedXPCClient) || (FigXPCMessageSetCFDictionary(*v18, "Params", a2), SharedXPCClient = FigXPCRemoteClientSendSyncMessageCreatingReply(v14, *v18, &xdict), SharedXPCClient))
  {
    v11 = SharedXPCClient;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "RemoteControlSessionID");
    v11 = FigEndpointRemoteControlSessionXPCRemoteCreateWithObjectID(uint64, &v15);
    if (!v11)
    {
      *a3 = v15;
    }
  }

  FigXPCRelease(xdict);
  FigXPCRelease(*v18);
  OUTLINED_FUNCTION_17_13(v14, v12, "FigEndpointRemoteXPC_CreateRemoteControlSession");
  return v11;
}

size_t FigEndpointRemoteXPC_CreateCommChannel(uint64_t a1, void *a2, void *a3)
{
  value = 0;
  v28 = 0;
  *v26 = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  ObjectID = OUTLINED_FUNCTION_5_36(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v23, v24);
  if (ObjectID || (v16 = FigEndpointExtendedGetFigEndpoint(a1), ObjectID = FigEndpointXPCRemoteGetObjectID(v16, &v28), ObjectID) || (ObjectID = FigXPCCreateBasicMessage(0x63726363u, v28, v26), ObjectID) || (FigXPCMessageSetCFDictionary(*v26, "Params", a2), OUTLINED_FUNCTION_4_35(), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(v17, v18, v19), ObjectID) || (ObjectID = FigXPCMessageCopyCFString(0, "CommChannelUUID", &value), ObjectID))
  {
    v21 = ObjectID;
  }

  else
  {
    v20 = value;
    if (value)
    {
      FigSimpleMutexLock(*(DerivedStorage + 32));
      CFArrayAppendValue(*(DerivedStorage + 80), value);
      FigSimpleMutexUnlock(*(DerivedStorage + 32));
      v20 = value;
    }

    v21 = 0;
    *a3 = v20;
  }

  FigXPCRelease(*v26);
  FigXPCRelease(0);
  FigXPCRemoteClientKillServerOnTimeout(v25, v21, "FigEndpointRemoteXPC_CreateCommChannel", 0);
  return v21;
}

size_t FigEndpointRemoteXPC_CloseCommChannel(uint64_t a1, const void *a2)
{
  v21 = 0;
  v22 = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  v20 = 0;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    SharedXPCClient = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFBEB0uLL, "<< FigEndpointXPCRemote >>", 0x895, v17, v18, v19);
LABEL_11:
    v13 = SharedXPCClient;
    goto LABEL_9;
  }

  v6 = DerivedStorage;
  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v20);
  if (SharedXPCClient)
  {
    goto LABEL_11;
  }

  v8 = FigEndpointExtendedGetFigEndpoint(a1);
  SharedXPCClient = FigEndpointXPCRemoteGetObjectID(v8, &v22);
  if (SharedXPCClient)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_35();
  SharedXPCClient = FigXPCCreateBasicMessage(0x636C6363u, v9, v10);
  if (SharedXPCClient)
  {
    goto LABEL_11;
  }

  SharedXPCClient = FigXPCRemoteClientSendSyncMessage(v20, v21);
  if (SharedXPCClient)
  {
    goto LABEL_11;
  }

  FigSimpleMutexLock(*(v6 + 32));
  v11 = *(v6 + 80);
  v23.length = CFArrayGetCount(v11);
  v23.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v11, v23, a2);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(v6 + 80), FirstIndexOfValue);
  }

  FigSimpleMutexUnlock(*(v6 + 32));
  v13 = 0;
LABEL_9:
  FigXPCRelease(v21);
  OUTLINED_FUNCTION_17_13(v20, v14, "FigEndpointRemoteXPC_CloseCommChannel");
  return v13;
}

uint64_t FigEndpointRemoteXPC_RequestScreenViewArea()
{
  OUTLINED_FUNCTION_0_85();
  v23[0] = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(v4);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  v22 = 0;
  if (FigEndpointRemoteControlSessionXPCRemotePing() || remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v22) || (v7 = FigEndpointExtendedGetFigEndpoint(v3), FigEndpointXPCRemoteGetObjectID(v7, v23)) || FigXPCCreateBasicMessage(0x72737661u, v23[0], &xdict))
  {
    v19 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    FigXPCMessageSetCFString(xdict, "UUID", v1);
    xpc_dictionary_set_int64(xdict, "Index", v0);
    OUTLINED_FUNCTION_4_35();
    v11 = FigXPCRemoteClientSendSyncMessageCreatingReply(v8, v9, v10);
    v19 = OUTLINED_FUNCTION_8_22(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23[0], v23[1]);
  }

  FigXPCRelease(v19);
  FigXPCRelease(xdict);
  OUTLINED_FUNCTION_17_13(v22, v20, "FigEndpointRemoteXPC_RequestScreenViewArea");
  return v2;
}

unint64_t FigEndpointRemoteXPC_CopyCurrentScreenViewArea(uint64_t a1, const void *a2, void *a3)
{
  OUTLINED_FUNCTION_14_17();
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(v7);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  v17 = 0;
  if (FigEndpointRemoteControlSessionXPCRemotePing() || remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v17) || (v10 = FigEndpointExtendedGetFigEndpoint(a1), FigEndpointXPCRemoteGetObjectID(v10, &v18)) || FigXPCCreateBasicMessage(0x63737661u, v18, v20))
  {
    v14 = OUTLINED_FUNCTION_25_9();
  }

  else
  {
    FigXPCMessageSetCFString(*v20, "UUID", a2);
    OUTLINED_FUNCTION_4_35();
    v3 = FigXPCRemoteClientSendSyncMessageCreatingReply(v11, v12, v13);
    v14 = v19;
    if (!v3)
    {
      v3 = FigXPCMessageCopyCFDictionary(v19, "ViewArea", a3);
      v14 = v19;
    }
  }

  FigXPCRelease(v14);
  FigXPCRelease(*v20);
  OUTLINED_FUNCTION_28_10(v17, v15, "FigEndpointRemoteXPC_CopyCurrentScreenViewArea");
  return v3;
}

uint64_t FigEndpointRemoteXPC_AcquireAndCopyResource(uint64_t a1, const void *a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_14_17();
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(v8);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  ObjectID = OUTLINED_FUNCTION_24_12(DerivedStorage, v11, v12, v13, v14, v15, v16, v17, v27);
  if (!ObjectID)
  {
    v19 = FigEndpointExtendedGetFigEndpoint(a1);
    ObjectID = FigEndpointXPCRemoteGetObjectID(v19, &v29);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage(0x61727363u, v29, v31);
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageSetCFString(*v31, "ResourceType", a2);
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageSetCFDictionary(*v31, "ResourceOptions", a3);
          if (!ObjectID)
          {
            OUTLINED_FUNCTION_4_35();
            ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(v20, v21, v22);
            if (!ObjectID)
            {
              uint64 = xpc_dictionary_get_uint64(xdict, "ResourceID");
              if (!uint64)
              {
                v25 = 4294950567;
                goto LABEL_12;
              }

              v24 = uint64;
              if (!FigCFEqual(a2, @"endpointStream"))
              {
                v25 = 4294950570;
                goto LABEL_12;
              }

              ObjectID = FigEndpointStreamXPCRemoteRetainCopiedEndpointStream(v24, a4);
            }
          }
        }
      }
    }
  }

  v25 = ObjectID;
LABEL_12:
  FigXPCRelease(*v31);
  FigXPCRelease(xdict);
  FigXPCRemoteClientKillServerOnTimeout(v28, v25, "FigEndpointRemoteXPC_AcquireAndCopyResource", 0);
  return v25;
}

uint64_t FigEndpointRemoteXPC_RelinquishResource()
{
  OUTLINED_FUNCTION_0_85();
  value = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint(v3);
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpoint);
  ObjectID = OUTLINED_FUNCTION_24_12(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v18);
  if (!ObjectID)
  {
    v14 = FigEndpointExtendedGetFigEndpoint(v2);
    ObjectID = FigEndpointXPCRemoteGetObjectID(v14, &v21);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage(0x72727363u, v21, &xdict);
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageSetCFString(xdict, "ResourceType", v1);
        if (!ObjectID)
        {
          if (!FigCFEqual(v1, @"endpointStream"))
          {
            v15 = 4294950570;
            goto LABEL_10;
          }

          ObjectID = FigEndpointStreamXPCRemoteGetObjectID(v0, &value);
          if (!ObjectID)
          {
            xpc_dictionary_set_uint64(xdict, "ResourceID", value);
            ObjectID = FigXPCRemoteClientSendSyncMessage(v19, xdict);
          }
        }
      }
    }
  }

  v15 = ObjectID;
LABEL_10:
  FigXPCRelease(xdict);
  OUTLINED_FUNCTION_17_13(v19, v16, "FigEndpointRemoteXPC_RelinquishResource");
  return v15;
}

uint64_t FigEndpointRemoteXPC_EndpointAggregateOperationWithCompletionCallback(const void *a1, const void *a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v36 = 0;
  v37 = 0;
  v35 = 0;
  ObjectID = FigEndpointXPCRemoteGetObjectID(a1, &v37);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(a3, v37, &v35), ObjectID) || (ObjectID = FigEndpointXPCRemoteGetObjectID(a2, &v36), ObjectID))
  {
    v21 = ObjectID;
    if (a5)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      FigSimpleMutexLock(*(DerivedStorage + 32));
      v23 = *(DerivedStorage + 64);
      FigSimpleMutexUnlock(*(DerivedStorage + 32));
      v24 = OUTLINED_FUNCTION_6_30();
      v26 = 0x40000000;
      v27 = __FigEndpointRemoteXPC_EndpointAggregateOperationWithCompletionCallback_block_invoke;
      v28 = &__block_descriptor_tmp_42_2;
      v29 = a5;
      v30 = a1;
      v31 = a2;
      v32 = v23;
      v34 = v21;
      v33 = a6;
      dispatch_async(v24, block);
    }
  }

  else
  {
    FigXPCMessageSetCFDictionary(v35, "AggregateOptions", a4);
    xpc_dictionary_set_uint64(v35, "SubEndpointObjectID", v36);
    OUTLINED_FUNCTION_10_18();
    v21 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v14, v15, v16, v17, v18, v19, v20, a5, a2, a6);
    if (!v21)
    {
      remoteXPCFigEndpoint_clearAggregateSubEndpointsDependentCache(DerivedStorage);
    }
  }

  FigXPCRelease(v35);
  return v21;
}

size_t FigEndpointXPCRemoteGetSource_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", 0xD4B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigEndpointXPCRemoteRetainCopiedEndpointFromArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", 0xD7E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigEndpointXPCRemoteRetainCopiedEndpointsFromArrayToCFArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", 0xD91, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigEndpointRemoteXPC_SendData_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBEB0uLL, "<< FigEndpointXPCRemote >>", a1, v5, v6, v7);
  *a2 = result;
  return result;
}

uint64_t HandleEndpointRemoteMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  HIDWORD(v100) = 0;
  v98 = 0;
  v99 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v100 + 1);
  if (OpCode)
  {
    return OpCode;
  }

  if (HIDWORD(v100) != 1635150946)
  {
    if (HIDWORD(v100) == 1633907830)
    {
      v101 = 0;
      cf = 0;
      *v107 = 0;
      v108 = v107;
      v109 = 0x2000000000;
      v110 = 0;
      v8 = FigXPCMessageCopyCFString(a2, "EndpointType", &cf);
      if (!v8)
      {
        if (qword_1ED4CDBC8 != -1)
        {
          dispatch_once(&qword_1ED4CDBC8, &__block_literal_global_71);
        }

        OUTLINED_FUNCTION_10_19();
        OUTLINED_FUNCTION_27_11(v9, v10, v11, v12, v13, v14, v15, v16, v98, v99, v100, v101, cf, v103, 0x40000000, v104, v105, v106, v107[0]);
        v17 = *(v108 + 3);
        if (!v17)
        {
          v21 = 0;
LABEL_65:
          v8 = FigEndpointXPCServerWriteNeighborEndpointToReply(a1, v21, a3, 0);
          goto LABEL_66;
        }

        CMBaseObject = FigEndpointGetCMBaseObject(v17);
        v19 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
        if (!v19)
        {
          v30 = 4294954514;
LABEL_67:
          v50 = *(v108 + 3);
          if (v50)
          {
            CFRelease(v50);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v101)
          {
            CFRelease(v101);
          }

          _Block_object_dispose(v107, 8);
          goto LABEL_74;
        }

        v8 = v19(CMBaseObject, @"Type", *MEMORY[0x1E695E480], &v101);
        if (!v8)
        {
          v20 = FigCFEqual(cf, v101);
          v21 = *(v108 + 3);
          if (!v20 && v21)
          {
            CFRelease(*(v108 + 3));
            v21 = 0;
            *(v108 + 3) = 0;
          }

          goto LABEL_65;
        }
      }

LABEL_66:
      v30 = v8;
      goto LABEL_67;
    }

    uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
    v32 = LookupEndpointByObjectIDForConnection(a1, uint64, &v99, &v98);
    if (v32)
    {
      goto LABEL_59;
    }

    switch(HIDWORD(v100))
    {
      case 0x2E736574:
        v48 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
        PlaybackSessionMessage = FigXPCHandleStdSetPropertyMessage(v48, v49);
        goto LABEL_62;
      case 0x61656165:
        v45 = OUTLINED_FUNCTION_5_37(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
        v46 = 1;
        break;
      case 0x61657265:
        v45 = OUTLINED_FUNCTION_5_37(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
        v46 = 0;
        break;
      case 0x61727363:
        v40 = OUTLINED_FUNCTION_0_87(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
        PlaybackSessionMessage = HandleEndpointAcquireAndCopyResourceMessage(v40, v41, v42, a3);
        goto LABEL_62;
      case 0x63706273:
        v44 = OUTLINED_FUNCTION_5_37(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
        PlaybackSessionMessage = HandleEndpointCreatePlaybackSessionMessage(v44, a1, a3);
        goto LABEL_62;
      case 0x646F6F6D:
        v32 = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
LABEL_59:
        v30 = v32;
        goto LABEL_74;
      default:
        switch(HIDWORD(v100))
        {
          case 0x64736F63:
            v47 = OUTLINED_FUNCTION_5_37(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointDissociateMessage(v47);
            break;
          case 0x2E637079:
            v84 = OUTLINED_FUNCTION_0_87(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointCopyPropertyMessage(v84, v85, v86, a3);
            break;
          case 0x61637674:
            v91 = OUTLINED_FUNCTION_0_87(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointActivateMessage(v91, v92, v93);
            break;
          case 0x62732020:
            v97 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointBorrowScreenMessage(v97);
            break;
          case 0x63617220:
            v74 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointRequestCarUIMessage(v74);
            break;
          case 0x63647263:
            v3 = v99;
            PlaybackSessionMessage = HandleEndpointClearDelegateRemoteControlMessage(v99, v98);
            break;
          case 0x63647274:
            v3 = v99;
            PlaybackSessionMessage = HandleEndpointClearDelegateRoutingMessage(v99, v98);
            break;
          case 0x63656670:
            v67 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointCopyEndpointForAnotherProcess(v67, v68, a3);
            break;
          case 0x63686D20:
            v59 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointCopyHIDInputMessage(v59, v60, a3);
            break;
          case 0x636C6363:
            v75 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointCloseCommChannelMessage(v75, v76);
            break;
          case 0x636D6D64:
            v94 = OUTLINED_FUNCTION_0_87(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointSendCommandMessage(v94, v95, v96);
            break;
          case 0x636D7367:
            v52 = OUTLINED_FUNCTION_5_37(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointCopyMessengerMessage(v52, a1, a3);
            break;
          case 0x63707365:
            v3 = v99;
            v81 = OUTLINED_FUNCTION_7_26();
            PlaybackSessionMessage = HandleEndpointCopySubEndpointsMessage(v81, v82, a3, v83);
            break;
          case 0x63726363:
            v69 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointCreateCommChannelMessage(v69, v70, a3);
            break;
          case 0x63726373:
            v56 = OUTLINED_FUNCTION_0_87(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointCreateRemoteControlSessionMessage(v56, v57, v58, a3);
            break;
          case 0x63737661:
            v53 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointCopyCurrentScreenViewAreaMessage(v53, v54, a3);
            break;
          case 0x64617461:
            v62 = OUTLINED_FUNCTION_0_87(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointSendDataMessage(v62, v63, v64);
            break;
          case 0x64617674:
            OUTLINED_FUNCTION_0_87(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointDeactivateMessage();
            break;
          case 0x64627464:
            v55 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointDisableBluetoothConnectivityToDevice(v55);
            break;
          case 0x64756361:
            v61 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointDuckAudio(v61);
            break;
          case 0x72727363:
            OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointRelinquishResourceMessage();
            break;
          case 0x72737661:
            v90 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointRequestScreenViewAreaMessage(v90);
            break;
          case 0x73647263:
            v3 = v99;
            v87 = OUTLINED_FUNCTION_7_26();
            PlaybackSessionMessage = HandleEndpointSetDelegateRemoteControlMessage(v87, v88, uint64, v89);
            break;
          case 0x73647274:
            v3 = v99;
            v71 = OUTLINED_FUNCTION_7_26();
            PlaybackSessionMessage = HandleEndpointSetDelegateRoutingMessage(v71, v72, uint64, v73);
            break;
          case 0x73686D20:
            v66 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointSetHIDInputMessage(v66);
            break;
          case 0x74732020:
            v65 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointTakeScreenMessage(v65);
            break;
          case 0x756E6273:
            v80 = OUTLINED_FUNCTION_1_59(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointUnborrowScreenMessage(v80);
            break;
          case 0x75706665:
            v77 = OUTLINED_FUNCTION_0_87(v32, v33, v34, v35, v36, v37, v38, v39, v98, v99);
            PlaybackSessionMessage = HandleEndpointUpdateFeaturesMessage(v77, v78, v79);
            break;
          default:
            v30 = 4294951138;
            goto LABEL_74;
        }

LABEL_62:
        v30 = PlaybackSessionMessage;
        if (!v3)
        {
          return v30;
        }

        goto LABEL_75;
    }

    PlaybackSessionMessage = HandleEndpointAddRemoveEndpointMessage(v45, v46, a1, a2);
    goto LABEL_62;
  }

  *v107 = 0;
  v108 = v107;
  v109 = 0x2000000000;
  LOBYTE(v110) = 0;
  if (qword_1ED4CDBC8 != -1)
  {
    dispatch_once(&qword_1ED4CDBC8, &__block_literal_global_71);
  }

  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_27_11(v22, v23, v24, v25, v26, v27, v28, v29, v98, v99, v100, v101, cf, v103, 0x40000000, v104, v105, v106, v107[0]);
  xpc_dictionary_set_BOOL(a3, ".Value", v108[24] != 0);
  _Block_object_dispose(v107, 8);
  v30 = 0;
LABEL_74:
  v3 = v99;
  if (v99)
  {
LABEL_75:
    CFRelease(v3);
  }

  return v30;
}

uint64_t HandleNoReplyEndpointMessage()
{
  OUTLINED_FUNCTION_11_19();
  v8 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode(v1, &v8);
  if (OpCode)
  {
    return OpCode;
  }

  uint64 = xpc_dictionary_get_uint64(v1, ".objectID");
  v4 = LookupEndpointByObjectIDForConnection(v0, uint64, &cf, 0);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4294950586;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t FigXPCEndpointServerRetainEndpointFromMessage(void *a1, void *a2)
{
  v6 = 0;
  v7 = 0;
  uint64 = xpc_dictionary_get_uint64(a1, "EndpointObjectID");
  if (xpc_dictionary_get_uint64(a1, "EndpointXPCSource") != qword_1ED4CDBC0)
  {
    result = FigEndpointXPCRemoteRetainCopiedEndpointFromReply(a1, &v7, &v6);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = FigXPCEndpointServerRetainEndpointForID(uint64, &v6);
  if (!result)
  {
LABEL_5:
    result = 0;
    *a2 = v6;
  }

  return result;
}

size_t FigEndpointXPCServerWriteNeighborEndpointToReply(_xpc_connection_s *a1, void *cf, void *a3, uint64_t *a4)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  value = 0;
  if (!cf)
  {
    v10 = 0;
LABEL_6:
    xpc_dictionary_set_uint64(a3, "EndpointObjectID", v10);
    xpc_dictionary_set_uint64(a3, "EndpointXPCSource", value);
    if ((value & 0x1000) != 0)
    {
      xpc_dictionary_set_uint64(a3, "SubEndpointObjectID", v17);
      xpc_dictionary_set_uint64(a3, "SubEndpointXPCSource", v15);
    }

    result = 0;
    if (a4)
    {
      *a4 = v18;
    }

    return result;
  }

  v8 = CFGetTypeID(cf);
  if (v8 == FigEndpointGetTypeID())
  {
    result = figEndpointXPC_getNeighborObjectIDAndSource(a1, cf, &v18, &value, &v17, &v15);
    if (result)
    {
      return result;
    }

    v10 = v18;
    goto LABEL_6;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_3();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x95E, v12, v13, v14);
}

uint64_t figEndpointXPC_getNeighborObjectIDAndSource(_xpc_connection_s *a1, void *a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  v28 = 0;
  cf = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (!a2 || (v12 = CFGetTypeID(a2), v12 != FigEndpointGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v24 = 662;
LABEL_26:
    ObjectIDForSource = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", v24, v21, v22, v23);
    goto LABEL_27;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v24 = 663;
    goto LABEL_26;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v24 = 664;
    goto LABEL_26;
  }

  if (!FigEndpointIsXPCRemote(a2))
  {
    v14 = qword_1ED4CDBC0;
    v26 = qword_1ED4CDBC0;
    ClassID = FigEndpointAggregateGetClassID();
    if (CMBaseObjectIsMemberOfClass(a2, ClassID))
    {
      v14 |= 0x2000uLL;
      v26 = v14;
    }

    CMBaseObject = FigEndpointGetCMBaseObject(a2);
    v19 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
    if (!v19 || (v19(CMBaseObject, @"CarPlaySubEndpoint", *MEMORY[0x1E695E480], &cf), !cf) || (v14 |= 0x1000uLL, v26 = v14, ObjectIDForSource = figEndpointXPC_getNeighborObjectIDAndSource(a1, cf, &v27, &v25, 0, 0), !ObjectIDForSource))
    {
      ObjectIDForSource = figEndpointXPC_getObjectIDForSource(a1, a2, v14, &v28);
      if (!ObjectIDForSource)
      {
        goto LABEL_9;
      }
    }

LABEL_27:
    v15 = ObjectIDForSource;
    goto LABEL_13;
  }

  ObjectIDForSource = FigEndpointXPCRemoteGetSource(a2, &v26);
  if (ObjectIDForSource)
  {
    goto LABEL_27;
  }

  ObjectIDForSource = figEndpointXPC_getObjectIDForSource(a1, a2, v26, &v28);
  if (ObjectIDForSource)
  {
    goto LABEL_27;
  }

  v14 = v26;
LABEL_9:
  *a3 = v28;
  *a4 = v14;
  if (a5)
  {
    *a5 = v27;
  }

  v15 = 0;
  if (a6)
  {
    *a6 = v25;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

size_t FigEndpointXPCServerAppendNeighborEndpointToArray(_xpc_connection_s *a1, void *cf, void *a3, uint64_t *a4)
{
  if (cf && (v8 = CFGetTypeID(cf), v8 == FigEndpointGetTypeID()))
  {
    empty = xpc_dictionary_create_empty();
    v10 = FigEndpointXPCServerWriteNeighborEndpointToReply(a1, cf, empty, a4);
    if (!v10)
    {
      xpc_array_set_value(a3, 0xFFFFFFFFFFFFFFFFLL, empty);
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x993, v13, v14, v15);
    empty = 0;
  }

  FigXPCRelease(empty);
  return v10;
}

uint64_t HandleEndpointCopyPropertyMessage(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  theArray = 0;
  cf1 = 0;
  v6 = FigXPCMessageCopyCFString(a3, ".PropertyName", &cf1);
  if (!v6)
  {
    v7 = cf1;
    if (cf1)
    {
      v8 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
      if (!v8)
      {
        v21 = 4294954514;
        goto LABEL_20;
      }

      v9 = *MEMORY[0x1E695E480];
      v6 = v8(a1, v7, *MEMORY[0x1E695E480], &theArray);
      if (!v6)
      {
        if (CFEqual(cf1, @"Streams") || CFEqual(cf1, @"ExternalPlaybackCompetingStreams"))
        {
          v10 = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            theArray = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
            if (!theArray)
            {
              v21 = 4294950585;
LABEL_19:
              CFRelease(v10);
              goto LABEL_20;
            }

            if (Count >= 1)
            {
              v12 = 0;
              while (1)
              {
                CFArrayGetValueAtIndex(v10, v12);
                v13 = OUTLINED_FUNCTION_21_15();
                v16 = FigXPCEndpointStreamServerAssociateCopiedNeighborFigEndpointStream(v13, v14, v15);
                if (v16)
                {
                  break;
                }

                v17 = OUTLINED_FUNCTION_15_19();
                v19 = CFNumberCreate(v17, kCFNumberSInt64Type, v18);
                if (!v19)
                {
                  v21 = 4294950585;
                  if (v10)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_20;
                }

                v20 = v19;
                CFArrayAppendValue(theArray, v19);
                CFRelease(v20);
                if (Count == ++v12)
                {
                  goto LABEL_17;
                }
              }

LABEL_18:
              v21 = v16;
              if (!v10)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v10 = 0;
        }

LABEL_17:
        v16 = FigXPCMessageSetCFObject(a4, ".Value", theArray);
        goto LABEL_18;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_3();
      v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE10uLL, "<< FigEndpointXPCServer >>", 0x76F, v24, v25, v26);
    }
  }

  v21 = v6;
LABEL_20:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v21;
}

uint64_t HandleEndpointSetDelegateRemoteControlMessage(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  v12 = 0u;
  v13 = 0u;
  if (!a4)
  {
    return 4294954513;
  }

  DelegateCallbackParameters = CreateDelegateCallbackParameters(a3, a2, &cf);
  v7 = cf;
  if (DelegateCallbackParameters)
  {
    goto LABEL_9;
  }

  v8 = *(a4 + 16);
  *(a4 + 16) = cf;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v12 = *(a4 + 16);
  *&v13 = SendDidReceiveDataFromCommChannelCallback;
  *(&v13 + 1) = SendDidCloseCommChannelCallback;
  v9 = *(*(CMBaseObjectGetVTable(a1) + 16) + 56);
  if (v9)
  {
    DelegateCallbackParameters = v9(a1, &v12);
LABEL_9:
    v10 = DelegateCallbackParameters;
    if (!v7)
    {
      return v10;
    }

    goto LABEL_12;
  }

  v10 = 4294954514;
  if (v7)
  {
LABEL_12:
    CFRelease(v7);
  }

  return v10;
}

uint64_t HandleEndpointClearDelegateRemoteControlMessage(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954513;
  }

  OUTLINED_FUNCTION_24_13();
  v5 = *(v4 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(v3 + 16) = 0;
  }

  v6 = *(*(CMBaseObjectGetVTable(v2) + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v2, 0);
}

uint64_t HandleEndpointSetDelegateRoutingMessage(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  cf = 0;
  if (!a4)
  {
    return 4294954513;
  }

  DelegateCallbackParameters = CreateDelegateCallbackParameters(a3, a2, &cf);
  v7 = cf;
  if (DelegateCallbackParameters)
  {
    goto LABEL_9;
  }

  v8 = *(a4 + 8);
  *(a4 + 8) = cf;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  *&v13 = *(a4 + 8);
  *(&v13 + 1) = SendHandleAuthRequiredCallback;
  *&v14 = SendHandleFailedCallback;
  v9 = *(*(CMBaseObjectGetVTable(a1) + 16) + 48);
  if (v9)
  {
    DelegateCallbackParameters = v9(a1, &v13);
LABEL_9:
    v10 = DelegateCallbackParameters;
    if (!v7)
    {
      return v10;
    }

    goto LABEL_12;
  }

  v10 = 4294954514;
  if (v7)
  {
LABEL_12:
    CFRelease(v7);
  }

  return v10;
}

uint64_t HandleEndpointClearDelegateRoutingMessage(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954513;
  }

  OUTLINED_FUNCTION_24_13();
  v5 = *(v4 + 8);
  if (v5)
  {
    CFRelease(v5);
    *(v3 + 8) = 0;
  }

  v6 = *(*(CMBaseObjectGetVTable(v2) + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v2, 0);
}

uint64_t HandleEndpointRequestCarUIMessage(uint64_t a1)
{
  v16 = 0;
  cf = 0;
  if (!a1 || (OUTLINED_FUNCTION_24_13(), ClassID = FigEndpointExtendedGetClassID(), !OUTLINED_FUNCTION_17_14(ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x346, v11, v12, v13);
    goto LABEL_8;
  }

  v4 = FigXPCMessageCopyCFString(v2, "UUID", &v16);
  if (v4)
  {
    goto LABEL_8;
  }

  v5 = OUTLINED_FUNCTION_21_15();
  v4 = FigXPCMessageCopyCFURL(v5, v6, v7);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(*(CMBaseObjectGetVTable(v1) + 24) + 8))
  {
    v8 = OUTLINED_FUNCTION_4_36();
    v4 = v9(v8);
LABEL_8:
    v14 = v4;
    goto LABEL_10;
  }

  v14 = 4294954514;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

size_t HandleEndpointBorrowScreenMessage(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(), OUTLINED_FUNCTION_17_14(ClassID)))
  {
    v2 = OUTLINED_FUNCTION_14_18();
    v5 = FigXPCMessageCopyCFString(v2, v3, v4);
    if (!v5)
    {
      v6 = OUTLINED_FUNCTION_19_15();
      v5 = FigXPCMessageCopyCFString(v6, v7, v8);
      if (!v5)
      {
        if (!*(*(OUTLINED_FUNCTION_22_12() + 24) + 16))
        {
          return 4294954514;
        }

        v9 = OUTLINED_FUNCTION_4_36();
        return v10(v9);
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x35F, v12, v13, v14);
  }

  return v5;
}

size_t HandleEndpointUnborrowScreenMessage(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(), OUTLINED_FUNCTION_17_14(ClassID)))
  {
    v2 = OUTLINED_FUNCTION_14_18();
    v5 = FigXPCMessageCopyCFString(v2, v3, v4);
    if (!v5)
    {
      v6 = OUTLINED_FUNCTION_19_15();
      v5 = FigXPCMessageCopyCFString(v6, v7, v8);
      if (!v5)
      {
        if (!*(*(OUTLINED_FUNCTION_22_12() + 24) + 24))
        {
          return 4294954514;
        }

        v9 = OUTLINED_FUNCTION_4_36();
        return v10(v9);
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x379, v12, v13, v14);
  }

  return v5;
}

size_t HandleEndpointTakeScreenMessage(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(), OUTLINED_FUNCTION_17_14(ClassID)))
  {
    v2 = OUTLINED_FUNCTION_14_18();
    v5 = FigXPCMessageCopyCFString(v2, v3, v4);
    if (!v5)
    {
      v6 = OUTLINED_FUNCTION_19_15();
      v5 = FigXPCMessageCopyCFString(v6, v7, v8);
      if (!v5)
      {
        if (!*(*(OUTLINED_FUNCTION_22_12() + 24) + 32))
        {
          return 4294954514;
        }

        v9 = OUTLINED_FUNCTION_4_36();
        return v10(v9);
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x393, v12, v13, v14);
  }

  return v5;
}

uint64_t HandleEndpointCopyHIDInputMessage(char *a1, uint64_t a2, void *a3)
{
  v17 = 0;
  cf = 0;
  if (!a1 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(a1, ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x3AD, v12, v13, v14);
    goto LABEL_8;
  }

  v6 = OUTLINED_FUNCTION_15_19();
  v9 = FigXPCMessageCopyCFString(v6, v7, v8);
  if (v9)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v10 = *(*(CMBaseObjectGetVTable(a1) + 24) + 64);
  if (v10)
  {
    v9 = v10(a1, cf, *MEMORY[0x1E695E480], &v17);
    if (!v9)
    {
      v9 = FigXPCMessageSetCFNumber(a3, "HIDInputMode", v17);
    }

    goto LABEL_8;
  }

  v15 = 4294954514;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v15;
}

size_t HandleEndpointDisableBluetoothConnectivityToDevice(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(), OUTLINED_FUNCTION_17_14(ClassID)))
  {
    v2 = OUTLINED_FUNCTION_14_18();
    v5 = FigXPCMessageCopyCFString(v2, v3, v4);
    if (!v5)
    {
      v6 = OUTLINED_FUNCTION_19_15();
      v5 = FigXPCMessageCopyCFDictionary(v6, v7, v8);
      if (!v5)
      {
        if (!*(*(OUTLINED_FUNCTION_22_12() + 24) + 40))
        {
          return 4294954514;
        }

        v9 = OUTLINED_FUNCTION_4_36();
        return v10(v9);
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x3C7, v12, v13, v14);
  }

  return v5;
}

size_t HandleEndpointDuckAudio(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(), OUTLINED_FUNCTION_17_14(ClassID)))
  {
    v3 = OUTLINED_FUNCTION_14_18();
    v6 = FigXPCMessageCopyCFDictionary(v3, v4, v5);
    if (!v6)
    {
      if (!*(*(CMBaseObjectGetVTable(v1) + 24) + 48))
      {
        return 4294954514;
      }

      v7 = OUTLINED_FUNCTION_2_9();
      return v8(v7);
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x3E0, v10, v11, v12);
  }

  return v6;
}

size_t HandleEndpointSetHIDInputMessage(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(), OUTLINED_FUNCTION_17_14(ClassID)))
  {
    v2 = OUTLINED_FUNCTION_14_18();
    v5 = FigXPCMessageCopyCFString(v2, v3, v4);
    if (!v5)
    {
      v6 = OUTLINED_FUNCTION_19_15();
      v5 = FigXPCMessageCopyCFNumber(v6, v7, v8);
      if (!v5)
      {
        if (!*(*(OUTLINED_FUNCTION_22_12() + 24) + 56))
        {
          return 4294954514;
        }

        v9 = OUTLINED_FUNCTION_4_36();
        return v10(v9);
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x3F6, v12, v13, v14);
  }

  return v5;
}

uint64_t HandleEndpointSendCommandMessage(char *a1, xpc_connection_t connection, void *a3)
{
  v31 = 0;
  cf = 0;
  pid = xpc_connection_get_pid(connection);
  cf1 = 0;
  if (!a1 || (v7 = pid, ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(a1, ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x716, v26, v27, v28);
LABEL_16:
    v24 = v9;
    MutableCopy = 0;
    goto LABEL_17;
  }

  v9 = FigXPCMessageCopyCFString(a3, "Command", &cf);
  if (v9)
  {
    goto LABEL_16;
  }

  v9 = FigXPCMessageCopyCFDictionary(a3, "Params", &v31);
  if (v9)
  {
    goto LABEL_16;
  }

  CompletionCallbackParametersFromMessageAndConnection_1 = CreateCompletionCallbackParametersFromMessageAndConnection_1(a3, connection);
  v11 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], v31);
  if (MutableCopy)
  {
    CMBaseObject = FigEndpointGetCMBaseObject(a1);
    v14 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
    if (!v14)
    {
LABEL_19:
      v24 = 4294954514;
      goto LABEL_20;
    }

    v15 = v14(CMBaseObject, @"Type", v11, &cf1);
    if (!v15)
    {
      if (FigCFEqual(cf1, @"EndpointType_Car") || (v15 = FigCFDictionarySetInt64(MutableCopy, @"clientPID", v7, v16, v17, v18, v19, v20), !v15))
      {
        v21 = cf;
        if (CompletionCallbackParametersFromMessageAndConnection_1)
        {
          v22 = SendCommandCompletionCallback;
        }

        else
        {
          v22 = 0;
        }

        v23 = *(*(CMBaseObjectGetVTable(a1) + 24) + 72);
        if (v23)
        {
          v24 = v23(a1, v21, MutableCopy, v22, CompletionCallbackParametersFromMessageAndConnection_1);
LABEL_17:
          CompletionCallbackParametersFromMessageAndConnection_1 = 0;
          goto LABEL_20;
        }

        CompletionCallbackParametersFromMessageAndConnection_1 = 0;
        goto LABEL_19;
      }
    }

    v24 = v15;
  }

  else
  {
    v24 = 4294954510;
  }

LABEL_20:
  DestroyCompletionCallbackParameters(CompletionCallbackParametersFromMessageAndConnection_1);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v24;
}

uint64_t HandleEndpointCreateRemoteControlSessionMessage(char *a1, uint64_t a2, void *a3, void *a4)
{
  cf = 0;
  v21 = 0;
  if (!a1 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(a1, ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x410, v16, v17, v18);
    goto LABEL_10;
  }

  v8 = FigXPCMessageCopyCFDictionary(a3, "Params", &cf);
  if (v8)
  {
LABEL_10:
    v11 = v8;
    goto LABEL_12;
  }

  if (*(*(CMBaseObjectGetVTable(a1) + 24) + 80))
  {
    v9 = OUTLINED_FUNCTION_22_1();
    v11 = v10(v9);
    if (!v11)
    {
      if (v21)
      {
        v12 = OUTLINED_FUNCTION_21_15();
        v11 = FigXPCEndpointRemoteControlSessionServerAssociateCopiedNeighborRemoteControlSession(v12, v13, v14);
        if (!v11)
        {
          xpc_dictionary_set_uint64(a4, "RemoteControlSessionID", 0);
        }
      }
    }
  }

  else
  {
    v11 = 4294954514;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v11;
}

uint64_t HandleEndpointCreateCommChannelMessage(uint64_t a1, void *a2, void *a3)
{
  cf = 0;
  v11 = 0;
  FigXPCMessageCopyCFDictionary(a2, "Params", &cf);
  v5 = cf;
  if (*(*(CMBaseObjectGetVTable(a1) + 24) + 88))
  {
    v6 = OUTLINED_FUNCTION_21_15();
    v8 = v7(v6, v5);
    if (!v8)
    {
      FigXPCMessageSetCFString(a3, "CommChannelUUID", v11);
    }
  }

  else
  {
    v8 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v8;
}

uint64_t HandleEndpointSendDataMessage(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_11_19();
  v18 = 0;
  cf = 0;
  v5 = OUTLINED_FUNCTION_15_19();
  v8 = FigXPCMessageCopyCFString(v5, v6, v7);
  if (v8)
  {
    goto LABEL_8;
  }

  v8 = FigXPCMessageCopyCFData(a3, "Data", &v18);
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_22_1();
  CompletionCallbackParametersFromMessageAndConnection_1 = CreateCompletionCallbackParametersFromMessageAndConnection_1(v9, v10);
  v13 = v18;
  v12 = cf;
  if (CompletionCallbackParametersFromMessageAndConnection_1)
  {
    v14 = SendDataCompletionCallback;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(CMBaseObjectGetVTable(v3) + 24) + 96);
  if (v15)
  {
    v8 = v15(v3, v12, v13, v14, CompletionCallbackParametersFromMessageAndConnection_1);
LABEL_8:
    v16 = v8;
    goto LABEL_10;
  }

  v16 = 4294954514;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

uint64_t HandleEndpointCloseCommChannelMessage(uint64_t a1, void *a2)
{
  cf = 0;
  v3 = FigXPCMessageCopyCFString(a2, "CommChannelUUID", &cf);
  if (v3)
  {
    goto LABEL_4;
  }

  if (*(*(CMBaseObjectGetVTable(a1) + 24) + 104))
  {
    v4 = OUTLINED_FUNCTION_2_9();
    v3 = v5(v4);
LABEL_4:
    v6 = v3;
    goto LABEL_6;
  }

  v6 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

size_t HandleEndpointRequestScreenViewAreaMessage(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_24_13(), ClassID = FigEndpointExtendedGetClassID(), OUTLINED_FUNCTION_17_14(ClassID)))
  {
    v4 = OUTLINED_FUNCTION_21_15();
    v7 = FigXPCMessageCopyCFString(v4, v5, v6);
    if (!v7)
    {
      int64 = xpc_dictionary_get_int64(v2, "Index");
      v9 = *(*(CMBaseObjectGetVTable(v1) + 24) + 112);
      if (!v9)
      {
        return 4294954514;
      }

      return v9(v1, 0, int64);
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x454, v11, v12, v13);
  }

  return v7;
}

uint64_t HandleEndpointCopyCurrentScreenViewAreaMessage(char *a1, uint64_t a2, void *a3)
{
  cf = 0;
  v20 = 0;
  if (!a1 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(a1, ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x46B, v15, v16, v17);
    goto LABEL_9;
  }

  v6 = OUTLINED_FUNCTION_15_19();
  v9 = FigXPCMessageCopyCFString(v6, v7, v8);
  if (v9)
  {
LABEL_9:
    v13 = v9;
    goto LABEL_11;
  }

  v10 = *(*(CMBaseObjectGetVTable(a1) + 24) + 120);
  if (v10)
  {
    v11 = v10(a1, v20, &cf);
    v12 = cf;
    if (!v11)
    {
      v13 = FigXPCMessageSetCFDictionary(a3, "ViewArea", cf);
      v12 = cf;
      if (!cf)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    v13 = v11;
    if (cf)
    {
LABEL_7:
      CFRelease(v12);
    }
  }

  else
  {
    v13 = 4294954514;
  }

LABEL_11:
  if (v20)
  {
    CFRelease(v20);
  }

  return v13;
}

uint64_t HandleEndpointActivateMessage(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_11_19();
  v5 = OUTLINED_FUNCTION_15_19();
  v8 = FigXPCMessageCopyCFDictionary(v5, v6, v7);
  if (!v8)
  {
    if (!xpc_dictionary_get_uint64(a3, "ActivationFeatures"))
    {
      return 4294950576;
    }

    v9 = OUTLINED_FUNCTION_22_1();
    CreateCompletionCallbackParametersFromMessageAndConnection_1(v9, v10);
    OUTLINED_FUNCTION_8_23();
    if (!*(*(CMBaseObjectGetVTable(v3) + 16) + 8))
    {
      return 4294954514;
    }

    v11 = OUTLINED_FUNCTION_2_9();
    return v12(v11);
  }

  return v8;
}

uint64_t HandleEndpointDeactivateMessage()
{
  OUTLINED_FUNCTION_11_19();
  v1 = OUTLINED_FUNCTION_15_19();
  v4 = FigXPCMessageCopyCFDictionary(v1, v2, v3);
  if (!v4)
  {
    v5 = OUTLINED_FUNCTION_22_1();
    CompletionCallbackParametersFromMessageAndConnection_1 = CreateCompletionCallbackParametersFromMessageAndConnection_1(v5, v6);
    v8 = *(*(CMBaseObjectGetVTable(v0) + 16) + 48);
    if (v8)
    {
      v8(v0, 0);
    }

    if (CompletionCallbackParametersFromMessageAndConnection_1)
    {
      v9 = ActivationCompletionCallback;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(*(CMBaseObjectGetVTable(v0) + 16) + 16);
    if (!v10)
    {
      return 4294954514;
    }

    return v10(v0, 0, v9, CompletionCallbackParametersFromMessageAndConnection_1);
  }

  return v4;
}

uint64_t HandleEndpointUpdateFeaturesMessage(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_11_19();
  v5 = OUTLINED_FUNCTION_15_19();
  v8 = FigXPCMessageCopyCFDictionary(v5, v6, v7);
  if (!v8)
  {
    xpc_dictionary_get_uint64(a3, "ActivationFeatures");
    v9 = OUTLINED_FUNCTION_22_1();
    CreateCompletionCallbackParametersFromMessageAndConnection_1(v9, v10);
    OUTLINED_FUNCTION_8_23();
    if (!*(*(CMBaseObjectGetVTable(v3) + 16) + 80))
    {
      return 4294954514;
    }

    v11 = OUTLINED_FUNCTION_2_9();
    return v12(v11);
  }

  return v8;
}

uint64_t HandleEndpointRelinquishResourceMessage()
{
  OUTLINED_FUNCTION_11_19();
  v13 = 0;
  cf = 0;
  v2 = OUTLINED_FUNCTION_14_18();
  v5 = FigXPCMessageCopyCFString(v2, v3, v4);
  if (v5)
  {
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(v1, "ResourceID");
  if (uint64)
  {
    v7 = uint64;
    if (FigCFEqual(cf, @"endpointStream"))
    {
      v5 = FigXPCEndpointStreamServerRetainEndpointStreamForID(v7, &v13);
      if (v5)
      {
LABEL_9:
        v11 = v5;
        goto LABEL_12;
      }

      if (v0)
      {
        ClassID = FigEndpointExtendedGetClassID();
        OUTLINED_FUNCTION_17_14(ClassID);
      }

      if (*(*(OUTLINED_FUNCTION_22_12() + 24) + 136))
      {
        v9 = OUTLINED_FUNCTION_4_36();
        v5 = v10(v9);
        goto LABEL_9;
      }

      v11 = 4294954514;
    }

    else
    {
      v11 = 4294950570;
    }
  }

  else
  {
    v11 = 4294950576;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v11;
}

uint64_t HandleEndpointCopyMessengerMessage(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "Messenger", 0x8000100u);
  if (!*(*(CMBaseObjectGetVTable(a1) + 8) + 48))
  {
    v9 = 4294954514;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = OUTLINED_FUNCTION_7_26();
  v8 = v7(v6);
  if (v8)
  {
    v9 = v8;
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    CFRelease(v5);
    goto LABEL_8;
  }

  cf = 0;
  v9 = FigXPCMessageSetCFObject(a3, ".Value", 0);
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t HandleEndpointCopySubEndpointsMessage(uint64_t a1, _xpc_connection_s *a2, void *a3, uint64_t a4)
{
  value = 0;
  cf = 0;
  v12 = 0;
  if (a4)
  {
    CMBaseObject = FigEndpointGetCMBaseObject(a1);
    v8 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
    if (v8)
    {
      v9 = v8(CMBaseObject, @"Endpoints", *MEMORY[0x1E695E480], &cf);
      if (v9 || (v9 = FigEndpointRPCCacheComputeCacheDeltas(*(a4 + 24), a2, cf, &value, &v12), v9))
      {
        v10 = v9;
      }

      else
      {
        if (value)
        {
          xpc_dictionary_set_value(a3, "AddedSubEndpoints", value);
        }

        if (v12)
        {
          xpc_dictionary_set_value(a3, "SubtractedSubEndpoints", v12);
        }

        v10 = 0;
      }
    }

    else
    {
      v10 = 4294954514;
    }
  }

  else
  {
    v10 = 4294954513;
  }

  FigXPCRelease(value);
  FigXPCRelease(v12);
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

size_t HandleEndpointCopyEndpointForAnotherProcess(const void *a1, xpc_object_t xdict, void *a3)
{
  int64 = xpc_dictionary_get_int64(xdict, "OtherProcessPID");
  if (!int64)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x490, v13, v14, v15);
    goto LABEL_4;
  }

  EndpointRefCon = CreateEndpointRefCon(a1);
  OUTLINED_FUNCTION_9_20();
  v10 = FigXPCServerAssociateCopiedObjectWithNeighborProcessByPID(v7, int64, a1, EndpointRefCon, v8, 0, v9);
  if (!v10)
  {
    xpc_dictionary_set_uint64(a3, ".objectID", 0);
LABEL_4:
    EndpointRefCon = 0;
  }

  DisposeEndpointRefCon(EndpointRefCon);
  return v10;
}

void SendDidReceiveDataFromCommChannelCallback(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  xdict = 0;
  if (a5)
  {
    v9 = FigXPCCreateBasicMessage(0x72636463u, *(a5 + 16), &xdict);
    v10 = xdict;
    if (!v9)
    {
      FigXPCMessageSetCFString(xdict, "CommChannelUUID", a3);
      xpc_dictionary_set_uint64(xdict, "ActivationSeed", a2);
      FigXPCMessageSetCFString(xdict, "DelegateFunctionType", @"hrcd");
      FigXPCMessageSetCFData(xdict, "Data", a4);
      xpc_connection_send_message(*(a5 + 24), xdict);
      v10 = xdict;
    }
  }

  else
  {
    v10 = 0;
  }

  FigXPCRelease(v10);
}

void SendDidCloseCommChannelCallback(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = OUTLINED_FUNCTION_23_13();
    if (!FigXPCCreateBasicMessage(v7 | 0x72630000u, v8, v9))
    {
      FigXPCMessageSetCFString(0, "CommChannelUUID", a3);
      xpc_dictionary_set_uint64(0, "ActivationSeed", v4);
      FigXPCMessageSetCFString(0, "DelegateFunctionType", @"hrcc");
      xpc_connection_send_message(*(a4 + 24), 0);
    }
  }

  FigXPCRelease(0);
}

void SendHandleFailedCallback(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = OUTLINED_FUNCTION_23_13();
    if (!FigXPCCreateBasicMessage(v7 | 0x72740000u, v8, v9))
    {
      v10 = *(a4 + 24);
      v15[0] = @"SubEndpoint";
      if (CFDictionaryContainsKey(a3, @"SubEndpoint"))
      {
        Value = CFDictionaryGetValue(a3, @"SubEndpoint");
        CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys(a3, v15, 1);
        v14 = FigEndpointXPCServerWriteNeighborEndpointToReply(v10, Value, 0, 0);
        if (!v14)
        {
          v14 = FigXPCMessageSetCFDictionary(0, "FailureInfo", CopyRemovingKeys);
        }

        v11 = v14;
        if (CopyRemovingKeys)
        {
          CFRelease(CopyRemovingKeys);
        }
      }

      else
      {
        v11 = FigXPCMessageSetCFDictionary(0, "FailureInfo", a3);
      }

      if (!v11)
      {
        xpc_dictionary_set_uint64(0, "ActivationSeed", v4);
        FigXPCMessageSetCFString(0, "DelegateFunctionType", @"hrtf");
        xpc_connection_send_message(*(a4 + 24), 0);
      }
    }
  }

  FigXPCRelease(0);
}

void SendCommandCompletionCallback(uint64_t a1, uint64_t a2, void *a3, xpc_object_t *a4)
{
  message = 0;
  if (a4)
  {
    v6 = OUTLINED_FUNCTION_4_18(a1);
    if (!v6)
    {
      v14 = OUTLINED_FUNCTION_10_10(v6, v7, v8, v9, v10, v11, v12, v13, v34, 0);
      xpc_dictionary_set_uint64(v14, "CompletionID", v15);
      v16 = FigXPCMessageSetCFDictionary(messagea, "SendCommandResponse", a3);
      v24 = OUTLINED_FUNCTION_26_10(v16, v17, v18, v19, v20, v21, v22, v23, v35, messagea);
      xpc_dictionary_set_int64(v24, "CompletionStatus", v25);
      OUTLINED_FUNCTION_14_9(v26, v27, v28, v29, v30, v31, v32, v33, v36, messageb);
    }
  }

  DestroyCompletionCallbackParameters(a4);
  FigXPCRelease(message);
}

void SendDataCompletionCallback(uint64_t a1, const void *a2, uint64_t a3, xpc_object_t *a4)
{
  message = 0;
  if (a4)
  {
    v6 = OUTLINED_FUNCTION_4_18(a1);
    if (!v6)
    {
      v14 = OUTLINED_FUNCTION_10_10(v6, v7, v8, v9, v10, v11, v12, v13, v34, 0);
      xpc_dictionary_set_uint64(v14, "CompletionID", v15);
      v16 = FigXPCMessageSetCFString(messagea, "CommChannelUUID", a2);
      v24 = OUTLINED_FUNCTION_26_10(v16, v17, v18, v19, v20, v21, v22, v23, v35, messagea);
      xpc_dictionary_set_int64(v24, "CompletionStatus", v25);
      OUTLINED_FUNCTION_14_9(v26, v27, v28, v29, v30, v31, v32, v33, v36, messageb);
    }
  }

  DestroyCompletionCallbackParameters(a4);
  FigXPCRelease(message);
}

void ActivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, xpc_object_t *a5)
{
  xdict = 0;
  if (a5 && !OUTLINED_FUNCTION_4_18(a1))
  {
    xpc_dictionary_set_uint64(0, "ActivationFeatures", a2);
    v16 = OUTLINED_FUNCTION_10_10(v8, v9, v10, v11, v12, v13, v14, v15, v36, 0);
    xpc_dictionary_set_uint64(v16, "CompletionID", v17);
    xpc_dictionary_set_uint64(xdicta, "ActivationSeed", a3);
    v26 = OUTLINED_FUNCTION_26_10(v18, v19, v20, v21, v22, v23, v24, v25, v37, xdicta);
    xpc_dictionary_set_int64(v26, "CompletionStatus", v27);
    OUTLINED_FUNCTION_14_9(v28, v29, v30, v31, v32, v33, v34, v35, v38, xdictb);
  }

  DestroyCompletionCallbackParameters(a5);
  FigXPCRelease(xdict);
}

void AggregateEndpointAddRemoveEndpointCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, xpc_object_t *a6)
{
  xdict = 0;
  if (a6 && !OUTLINED_FUNCTION_4_18(a1))
  {
    xpc_dictionary_set_uint64(0, "ActivationFeatures", a3);
    xpc_dictionary_set_uint64(0, "ActivationSeed", a4);
    v17 = OUTLINED_FUNCTION_10_10(v9, v10, v11, v12, v13, v14, v15, v16, v37, 0);
    xpc_dictionary_set_uint64(v17, "CompletionID", v18);
    v27 = OUTLINED_FUNCTION_26_10(v19, v20, v21, v22, v23, v24, v25, v26, v38, xdicta);
    xpc_dictionary_set_int64(v27, "CompletionStatus", v28);
    OUTLINED_FUNCTION_14_9(v29, v30, v31, v32, v33, v34, v35, v36, v39, xdictb);
  }

  DestroyCompletionCallbackParameters(a6);
  FigXPCRelease(xdict);
}

void *CreateEndpointRefCon(const void *a1)
{
  v9 = 0;
  if (FigEndpointRPCCacheCreate(&v9, 1))
  {
    v2 = 0;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
    if (v2)
    {
      if (a1)
      {
        v3 = CFRetain(a1);
      }

      else
      {
        v3 = 0;
      }

      *v2 = v3;
      v2[3] = v9;
      v9 = 0;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFBEAFuLL, "<< FigEndpointXPCServer >>", 0x23F, v6, v7, v8);
    }
  }

  FigEndpointRPCCacheDispose(v9);
  return v2;
}

uint64_t figEndpointXPC_getObjectIDForSource(xpc_connection_t connection, const void *a2, uint64_t a3, void *a4)
{
  if ((a3 & 0xFFFFFFFFFFFFCFFFLL) == qword_1ED4CDBC0)
  {
    EndpointRefCon = CreateEndpointRefCon(a2);
    OUTLINED_FUNCTION_9_20();
    v17 = FigXPCServerAssociateCopiedObjectWithNeighborProcess(v14, connection, a2, EndpointRefCon, v15, 0, v16);
    if (v17)
    {
      v11 = v17;
      goto LABEL_4;
    }
  }

  else
  {
    xpc_connection_get_pid(connection);
    v7 = OUTLINED_FUNCTION_14_18();
    v10 = FigEndpointXPCRemoteObtainObjectIDForOtherProcess(v7, v8, v9);
    if (v10)
    {
      v11 = v10;
      EndpointRefCon = 0;
      goto LABEL_4;
    }
  }

  v11 = 0;
  EndpointRefCon = 0;
  *a4 = 0;
LABEL_4:
  DisposeEndpointRefCon(EndpointRefCon);
  return v11;
}

size_t FigEndpointStartServerEx_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x8D4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCEndpointServerAssociateNeighborFigEndpointWithRegistration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x910, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCEndpointServerRetainEndpointForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< FigEndpointXPCServer >>", 0x92D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t LookupEndpointByObjectIDForConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x1CD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CreateDelegateCallbackParameters_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEAFuLL, "<< FigEndpointXPCServer >>", 0x21D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CreateCompletionCallbackParametersFromMessageAndConnection_cold_1_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBEAFuLL, "<< FigEndpointXPCServer >>", 0x4B6, v1, v2, v3);
}

void fnho_callbacktimerProc(id *a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject(a1);
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage(v1);
    FigSimpleMutexLock(*DerivedStorage);
    CFSetApplyFunction(*(DerivedStorage + 72), fnho_conditionApplier, v2);
    if (!*(DerivedStorage + 81))
    {
      fnho_ensureTimerIsPaused(v2);
    }

    FigSimpleMutexUnlock(*DerivedStorage);

    CFRelease(v2);
  }
}

void fnho_ensureTimerIsScheduled(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*(DerivedStorage + 80))
  {
    v2 = DerivedStorage;
    *(DerivedStorage + 80) = 1;
    v3 = *(DerivedStorage + 8);
    v4 = dispatch_time(0, *(DerivedStorage + 32));
    v5 = *(v2 + 32);

    dispatch_source_set_timer(v3, v4, v5, 0xEE6B280uLL);
  }
}

void fnho_ensureTimerIsPaused(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 80))
  {
    *(DerivedStorage + 80) = 0;
    v2 = *(DerivedStorage + 8);

    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

os_unfair_lock_s **fnho_networkHistoryBecameActiveHandler(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage(a2);
  if (a2)
  {
    v4 = result;
    FigSimpleMutexLock(*result);
    fnho_ensureTimerIsScheduled(a2);
    *(v4 + 81) = 1;
    v5 = *v4;

    return FigSimpleMutexUnlock(v5);
  }

  return result;
}

os_unfair_lock_s **fnho_networkHistoryBecameInactiveHandler(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage(a2);
  if (a2)
  {
    v4 = result;
    FigSimpleMutexLock(*result);
    *(v4 + 81) = 0;
    v5 = *v4;

    return FigSimpleMutexUnlock(v5);
  }

  return result;
}

uint64_t FigNetworkHistoryObserverRemoveCondition(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock(*DerivedStorage);
    CFSetRemoveValue(v4[9], a2);
    FigSimpleMutexUnlock(*v4);
  }

  return 0;
}

CFTypeRef *fnho_networkConditionRetainCallback(uint64_t a1, CFTypeRef *a2)
{
  if (a2 && *a2)
  {
    CFRetain(*a2);
  }

  return a2;
}

void fnho_conditionApplier(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a2);
  cf = 0;
  if (fnho_testCondition(a2, a1, &cf))
  {
    v5 = *(DerivedStorage + 48);
    v6 = cf;
    v7 = CMBaseObjectGetDerivedStorage(a2);
    v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E0040018299E6uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = v5;
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      v9[1] = v10;
      v9[2] = a1;
      if (v6)
      {
        v11 = CFRetain(v6);
      }

      else
      {
        v11 = 0;
      }

      v9[3] = v11;
      dispatch_async_f(*(v7 + 24), v9, fnho_dispatchObserverConditionFn);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

size_t FigNetworkHistoryObserverCreate_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1D1, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1CE, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1CA, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1C7, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1C4, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1C1, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1BD, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1BA, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_9(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1B2, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_10(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1AF, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_11(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1AE, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_12(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1AD, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_13(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1AC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverAddCondition_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1FB, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverAddCondition_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1F8, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x67, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x78, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE59uLL, "(Fig)", 0x7D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x6F, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x6B, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x66, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineClientServerXPC_SerializeEvent_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB406uLL, "(Fig)", 0x31, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineClientServerXPC_DeserializeAndCopyEvent_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB406uLL, "(Fig)", 0x49, v8, a7, a8);
  *a1 = result;
  return result;
}

uint64_t FigNotificationCenterSupportWillPostNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigSimpleMutexLock(qword_1ED4CDBF0);
  if (!result)
  {
    Value = CFDictionaryGetValue(_MergedGlobals_71, -a3);
    result = FigSimpleMutexUnlock(qword_1ED4CDBF0);
    if (!result)
    {
      if (Value)
      {

        return FigReadWriteLockLockForRead(Value);
      }
    }
  }

  return result;
}

uint64_t FigNotificationCenterSupportDidPostNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!FigSimpleMutexLock(qword_1ED4CDBF0))
  {
    Value = CFDictionaryGetValue(_MergedGlobals_71, -a3);
    if (!FigSimpleMutexUnlock(qword_1ED4CDBF0))
    {
      if (Value)
      {
        FigReadWriteLockUnlockForRead(Value);
      }
    }
  }

  return 0;
}

size_t CMNotificationCenterRegisterForBarrierSupport(uint64_t a1, uint64_t a2)
{
  v4 = FigReadWriteLockCreate(0);
  if (v4)
  {
    v7 = v4;
    v8 = FigSimpleMutexLock(qword_1ED4CDBF0);
    if (v8)
    {
      return v8;
    }

    v9 = -a2;
    if (CFDictionaryContainsKey(_MergedGlobals_71, v9))
    {
      v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4CuLL, "(Fig)", 0x9B, v2, v10, v11);
      FigReadWriteLockDestroy(v7);
      if (v12)
      {
        FigSimpleMutexUnlock(qword_1ED4CDBF0);
        return v12;
      }
    }

    else
    {
      CFDictionarySetValue(_MergedGlobals_71, v9, v7);
    }

    v13 = qword_1ED4CDBF0;

    return FigSimpleMutexUnlock(v13);
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4AuLL, "(Fig)", 0x92, v2, v5, v6);
  }
}

uint64_t CMNotificationCenterUnregisterForBarrierSupport(uint64_t a1, uint64_t a2)
{
  result = FigSimpleMutexLock(qword_1ED4CDBF0);
  if (!result)
  {
    v5 = -a2;
    Value = CFDictionaryGetValue(_MergedGlobals_71, v5);
    if (Value)
    {
      v9 = Value;
      CFDictionaryRemoveValue(_MergedGlobals_71, v5);
      v10 = FigReadWriteLockDestroy(v9);
    }

    else
    {
      v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4CuLL, "(Fig)", 0xBB, v2, v7, v8);
    }

    v11 = v10;
    LODWORD(result) = FigSimpleMutexUnlock(qword_1ED4CDBF0);
    if (v11)
    {
      return v11;
    }

    else
    {
      return result;
    }
  }

  return result;
}

size_t CMNotificationCenterBarrier(uint64_t a1, uint64_t a2)
{
  result = FigSimpleMutexLock(qword_1ED4CDBF0);
  if (!result)
  {
    Value = CFDictionaryGetValue(_MergedGlobals_71, -a2);
    result = FigSimpleMutexUnlock(qword_1ED4CDBF0);
    if (!result)
    {
      if (Value)
      {
        result = FigReadWriteLockLockForWrite(Value);
        if (!result)
        {

          return FigReadWriteLockUnlockForWrite(Value);
        }
      }

      else
      {

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4CuLL, "(Fig)", 0xDD, v2, v6, v7);
      }
    }
  }

  return result;
}

uint64_t FigLogPowerEvent(int a1, CFDictionaryRef theDict)
{
  HIDWORD(v31) = 0;
  if (!theDict)
  {
    return 0;
  }

  v3 = 0;
  v4 = theDict;
  v5 = @"CM-VIDEOPLAYBACK";
  switch(a1)
  {
    case 0:
      goto LABEL_11;
    case 3:
      v5 = @"CM-VIDEOQUEUE";
      goto LABEL_11;
    case 4:
    case 6:
      v5 = @"VT-SESSION";
      goto LABEL_11;
    case 5:
      v5 = @"CM-EXPORT";
      goto LABEL_11;
    case 7:
    case 8:
      v5 = @"VTTILE-SESSION";
      goto LABEL_11;
    case 9:
      v5 = @"CM-ASSETCREATION";
      goto LABEL_11;
    case 10:
      v5 = @"CM-ASSETDOWNLOAD";
LABEL_11:
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
      if (!MutableCopy)
      {
        return 0;
      }

      v12 = MutableCopy;
      v13 = @"BundleID";
      v14 = @"processID";
LABEL_13:
      FigCFDictionaryGetInt32IfPresent(v4, v14, &v31 + 4, v7, v8, v9, v10, v11, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8]);
      v21 = HIDWORD(v31);
      if (!HIDWORD(v31))
      {
        v28 = 0;
        goto LABEL_27;
      }

      v22 = objc_autoreleasePoolPush();
      v32[0] = 0;
      v23 = [MEMORY[0x1E69C75C8] handleForIdentifier:objc_msgSend(MEMORY[0x1E69C75D8] error:{"identifierWithPid:", v21), v32}];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 identity];
        v26 = [v25 embeddedApplicationIdentifier];
        if (v26 || (v26 = [v25 xpcServiceIdentifier]) != 0 || (v26 = objc_msgSend(objc_msgSend(v24, "bundle"), "identifier")) != 0)
        {
          v27 = v26;
LABEL_19:
          CFRetain(v27);
          goto LABEL_22;
        }

        v27 = [v25 description];
        if (v27)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v27 = 0;
      }

LABEL_22:
      objc_autoreleasePoolPop(v22);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = @"N/A";
      }

      v29 = CFGetTypeID(v28);
      if (v29 == CFStringGetTypeID())
      {
        FigCFDictionarySetValue(v12, v13, v28);
      }

LABEL_27:
      FigCFDictionarySetInt32(v12, @"Category", a1, v16, v17, v18, v19, v20);
      if (_MergedGlobals_72 != -1)
      {
        dispatch_once_f(&_MergedGlobals_72, 0, figPowerLogOpenFramework);
      }

      if (off_1ED4CDC00)
      {
        off_1ED4CDC00(28, v5, v12, 0);
        v3 = 1;
        if (!v28)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v3 = 0;
      if (v28)
      {
LABEL_31:
        CFRelease(v28);
      }

LABEL_32:
      CFRelease(v12);
      break;
    case 11:
      v6 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
      if (!v6)
      {
        return 0;
      }

      v12 = v6;
      v13 = @"clientDisplayID";
      v5 = @"Video";
      v14 = @"clientPID";
      goto LABEL_13;
    default:
      return v3;
  }

  return v3;
}

CFTypeRef FigCFWeakReferenceHolderCreateWithReferencedObject(uint64_t a1)
{
  if (qword_1ED4CDC10 != -1)
  {
    OUTLINED_FUNCTION_0_89();
    dispatch_once_f(v6, v7, v8);
  }

  cf = 0;
  v10 = 0;
  if (!a1)
  {
    return 0;
  }

  if (_MergedGlobals_73 == 1)
  {
    if (FigSimpleMutexTryLock(qword_1ED4CDC20))
    {
      FigCFWeakReferenceHolderCopyCachedInstance(a1, &v10, &cf);
      FigSimpleMutexUnlock(qword_1ED4CDC20);
      CFRelease(a1);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  v2 = v10;
  if (!v10)
  {
    Instance = _CFRuntimeCreateInstance();
    v4 = Instance;
    if (Instance)
    {
      FigCFWeakReferenceInit((Instance + 24), a1);
    }

    if (_MergedGlobals_73 == 1 && FigSimpleMutexTryLock(qword_1ED4CDC20))
    {
      v11 = 0;
      FigCFWeakReferenceHolderCopyCachedInstance(a1, &v11, &cf);
      v2 = v11;
      if (!v11)
      {
        CFDictionarySetValue(qword_1ED4CDC28, -a1, -v4);
        *(v4 + 16) = -a1;
        v2 = CFRetain(v4);
      }

      FigSimpleMutexUnlock(qword_1ED4CDC20);
      CFRelease(a1);
      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v4);
    }

    else
    {
      return v4;
    }
  }

  return v2;
}

id *FigCFWeakReferenceHolderCopyReferencedObject(id *result)
{
  if (result)
  {
    return FigCFWeakReferenceLoadAndRetain(result + 3);
  }

  return result;
}

size_t FigEndpointRPCCacheApplyObjectDeltas(uint64_t a1, xpc_object_t xarray, xpc_object_t a3)
{
  v25 = 0;
  cf = 0;
  if (xarray && (v7 = xpc_array_get_count(xarray)) != 0)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      if (*a1 == 1)
      {
        v10 = FigEndpointXPCRemoteRetainCopiedEndpointFromArray(xarray, v9, &v25, &cf);
      }

      else
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCA8uLL, "<< FigEndpointCache >>", 0xAB, v3, v12, v13);
      }

      v14 = v10;
      if (v10)
      {
        break;
      }

      figEndpointRPCCacheAddObject(a1, cf, v25);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v8 == ++v9)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    if (a3)
    {
      count = xpc_array_get_count(a3);
      if (count)
      {
        v16 = count;
        for (i = 0; i != v16; ++i)
        {
          uint64 = xpc_array_get_uint64(a3, i);
          v25 = uint64;
          v19 = *(a1 + 8);
          if (v19 >= 1)
          {
            v20 = 0;
            v21 = *(a1 + 24);
            v22 = *(a1 + 8);
            while (*(v21 + v20 + 8) != uint64)
            {
              v20 += 16;
              if (!--v22)
              {
                goto LABEL_22;
              }
            }

            v23 = *(v21 + v20);
            if (v23)
            {
              CFRelease(v23);
              v21 = *(a1 + 24);
              *(v21 + v20) = 0;
              v19 = *(a1 + 8);
            }

            *(v21 + v20) = *(v21 + 16 * v19 - 16);
            --*(a1 + 8);
          }

LABEL_22:
          ;
        }
      }
    }

    v14 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

size_t FigEndpointRPCCacheCreate_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBEAFuLL, "<< FigEndpointCache >>", 0x74, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t FigEndpointRPCCacheCopyAvailableObjects_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBEB9uLL, "<< FigEndpointCache >>", 0x17E, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t FigControlCommandsRemoteClientPurgeObjectsAndGenerateReportForPID(int a1, int a2, CFTypeRef *a3, CFTypeRef *a4, void *a5)
{
  v20 = 0;
  v21 = 0;
  xdict = 0;
  cf = 0;
  v17 = 0;
  if (a1 <= 0)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<< FigControlCommandsRemoteClient >>", 0x69, v5, v15, v16);
    goto LABEL_22;
  }

  if (qword_1ED4CDC40 != -1)
  {
    dispatch_once(&qword_1ED4CDC40, &__block_literal_global_62);
  }

  v11 = _MergedGlobals_74;
  if (!_MergedGlobals_74)
  {
    v12 = FigXPCCreateBasicMessage(0x70677270u, 0, &xdict);
    if (!v12)
    {
      xpc_dictionary_set_int64(xdict, "Pid", a1);
      xpc_dictionary_set_BOOL(xdict, "ForcePurge", a2 != 0);
      v12 = FigXPCRemoteClientSendSyncMessageCreatingReply(qword_1ED4CDC38, xdict, &v17);
      if (!v12)
      {
        v12 = FigXPCMessageCopyCFBoolean(v17, "CouldNotPurgeAllObjects", &v21);
        if (!v12)
        {
          v12 = FigXPCMessageCopyCFBoolean(v17, "PurgeProhibited", &v20);
          if (!v12)
          {
            v12 = FigXPCMessageCopyCFString(v17, "Stats", &cf);
            if (!v12)
            {
              if (a3)
              {
                *a3 = cf;
                cf = 0;
              }

              if (a4)
              {
                *a4 = v21;
                v21 = 0;
              }

              v11 = 0;
              if (a5)
              {
                *a5 = v20;
                v20 = 0;
              }

              goto LABEL_16;
            }
          }
        }
      }
    }

LABEL_22:
    v11 = v12;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  FigXPCRelease(xdict);
  FigXPCRelease(v17);
  return v11;
}

uint64_t CMStartAirPlayLoopback()
{
  v4 = 0;
  if (qword_1ED4CDC40 != -1)
  {
    dispatch_once(&qword_1ED4CDC40, &__block_literal_global_62);
  }

  v0 = _MergedGlobals_74;
  if (_MergedGlobals_74)
  {
    v2 = 0;
  }

  else
  {
    v1 = FigXPCCreateBasicMessage(0x6C6F6F70u, 0, &v4);
    v2 = v4;
    if (v1)
    {
      v0 = v1;
    }

    else
    {
      v0 = FigXPCRemoteClientSendAsyncMessage(qword_1ED4CDC38, v4);
      v2 = v4;
    }
  }

  FigXPCRelease(v2);
  return v0;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGSize CVImageBufferGetEncodedSize(CVImageBufferRef imageBuffer)
{
  MEMORY[0x1EEDBF858](imageBuffer);
  result.height = v2;
  result.width = v1;
  return result;
}