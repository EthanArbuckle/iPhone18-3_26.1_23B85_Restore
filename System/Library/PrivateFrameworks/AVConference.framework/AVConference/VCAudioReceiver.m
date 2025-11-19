@interface VCAudioReceiver
@end

@implementation VCAudioReceiver

void __VCAudioReceiver_Finalize_block_invoke(uint64_t a1)
{
  VCRealTimeThread_Finalize(*(*(a1 + 32) + 576));
  v2 = *(a1 + 32);

  _VCAudioReceiver_Cleanup(v2);
}

uint64_t __VCAudioReceiver_PullAudioSamples_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, BOOL *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a3 + 32;
  v12 = a3 + 5;
  v13 = xmmword_1DBD50EC0;
  *(a3 + 21) = 16;
  *(a3 + 4) = 0;
  v9 = (a3 + 4);
  VCAudioBufferList_GetTimestamp(a2);
  kdebug_trace();
  v10 = *(a1 + 32);
  ++*(v10 + 9176);
  if (v8 <= a3)
  {
    __break(0x5519u);
  }

  VCJitterBuffer_PlaybackGetSamples(*(v10 + 448), a2, a3, v9, &v12, (a3 + 24), (a3 + 28));
  *(a3 + 21) = BYTE8(v13);
  *a4 = *(a3 + 24) != 0;
  return kdebug_trace();
}

uint64_t ___VCAudioReceiver_RegisterReportingTask_block_invoke(uint64_t result, uint64_t a2)
{
  v196 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 40);
  if (v3)
  {
    v4 = v3 < v2[6] && v3 >= v2[7];
    if (!v4)
    {
      goto LABEL_79;
    }
  }

  result = CheckInHandleDebug();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 448);
  if (!v6)
  {
    if (v5[152])
    {
      v6 = 0;
    }

    else
    {
      *(v5 + 608) = 1;
      reportingSymptom();
      v6 = *(v5 + 56);
    }
  }

  if (!VCJitterBuffer_GetIsRunning(v6))
  {
    v81 = v2[5];
    if (v81 && (v81 >= v2[6] || v81 < v2[7]))
    {
      goto LABEL_79;
    }

    return CheckOutHandleDebug();
  }

  v184 = 0;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  VCJitterBuffer_GetPlaybackReportingMetrics(*(v5 + 56), &v174);
  v7 = selectDestinationForRTMetrics();
  *valuePtr = v174;
  v8 = *MEMORY[0x1E695E480];
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"AAL", v9);
  CFRelease(v9);
  *valuePtr = DWORD1(v174);
  v10 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"AWL", v10);
  CFRelease(v10);
  *valuePtr = HIDWORD(v174);
  v11 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"AJQS", v11);
  CFRelease(v11);
  *valuePtr = *(&v174 + 2) * 1000.0;
  v12 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"XJoW", v12);
  CFRelease(v12);
  *valuePtr = DWORD1(v175);
  v13 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"FrameErasureRate", v13);
  CFRelease(v13);
  *valuePtr = DWORD2(v175);
  v14 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"FrameErasureRateAlt", v14);
  CFRelease(v14);
  *valuePtr = HIDWORD(v175);
  v15 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"FrameSpeechErasureRate", v15);
  CFRelease(v15);
  *valuePtr = v176;
  v16 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"JitterErasureRate", v16);
  CFRelease(v16);
  *valuePtr = DWORD1(v176);
  v17 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"WindowedFrameErasureRate", v17);
  CFRelease(v17);
  *valuePtr = DWORD2(v176);
  v18 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"RedErasureCompensationRate", v18);
  CFRelease(v18);
  *valuePtr = (*(&v176 + 3) * 1000.0);
  v19 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"MaxRedFrameRecoveryDepth", v19);
  CFRelease(v19);
  *valuePtr = v177;
  v20 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxPlayedCount", v20);
  CFRelease(v20);
  *valuePtr = DWORD1(v177);
  v21 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxPlayedBytes", v21);
  CFRelease(v21);
  *valuePtr = DWORD2(v177);
  v22 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"FramesPlayedCount", v22);
  CFRelease(v22);
  *valuePtr = DWORD2(v178);
  v23 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"FrameErasureCount", v23);
  CFRelease(v23);
  *valuePtr = HIDWORD(v178);
  v24 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"FrameErasureCountAlt", v24);
  CFRelease(v24);
  *valuePtr = HIDWORD(v179);
  v25 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"MaxConsecutiveAudioErasures", v25);
  CFRelease(v25);
  *valuePtr = BYTE12(v182);
  v26 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"EnhancedJBAdaptationsEnabled", v26);
  CFRelease(v26);
  *valuePtr = v183;
  v27 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"JBJumpSpikeCount", v27);
  CFRelease(v27);
  *valuePtr = DWORD1(v183);
  v28 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"JBSlopeSpikeCount", v28);
  CFRelease(v28);
  v29 = *(&v183 + 1);
  *valuePtr = v29;
  v30 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"JBSpikeSizeDelta", v30);
  CFRelease(v30);
  *valuePtr = DWORD1(v181);
  v31 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"TimescaleRate", v31);
  CFRelease(v31);
  *valuePtr = DWORD2(v181);
  v32 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"SpeechTimescaleRate", v32);
  CFRelease(v32);
  *valuePtr = HIDWORD(v181);
  v33 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"SilenceTimescaleRate", v33);
  CFRelease(v33);
  *valuePtr = v180;
  v34 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"TotalTimescaleCount", v34);
  CFRelease(v34);
  *valuePtr = HIDWORD(v180);
  v35 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"TotalExpandTimescaleCount", v35);
  CFRelease(v35);
  *valuePtr = v181;
  v36 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"TotalCompressTimescaleCount", v36);
  CFRelease(v36);
  *valuePtr = DWORD2(v180);
  v37 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"TotalSpeechTimescaleCount", v37);
  CFRelease(v37);
  *valuePtr = DWORD1(v180);
  v38 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"TotalSilenceTimescaleCount", v38);
  CFRelease(v38);
  memcpy(v5 + 2470, v5 + 2342, 0x200uLL);
  *(v5 + 2342) = 0u;
  *(v5 + 2346) = 0u;
  *(v5 + 2350) = 0u;
  *(v5 + 2354) = 0u;
  *(v5 + 2358) = 0u;
  *(v5 + 2362) = 0u;
  *(v5 + 2366) = 0u;
  *(v5 + 2370) = 0u;
  *(v5 + 2374) = 0u;
  *(v5 + 2378) = 0u;
  *(v5 + 2382) = 0u;
  *(v5 + 2386) = 0u;
  *(v5 + 2390) = 0u;
  *(v5 + 2394) = 0u;
  *(v5 + 2398) = 0u;
  *(v5 + 2402) = 0u;
  *(v5 + 2406) = 0u;
  *(v5 + 2410) = 0u;
  *(v5 + 2414) = 0u;
  *(v5 + 2418) = 0u;
  *(v5 + 2422) = 0u;
  *(v5 + 2426) = 0u;
  *(v5 + 2430) = 0u;
  *(v5 + 2434) = 0u;
  *(v5 + 2438) = 0u;
  *(v5 + 2442) = 0u;
  *(v5 + 2446) = 0u;
  *(v5 + 2450) = 0u;
  *(v5 + 2454) = 0u;
  *(v5 + 2458) = 0u;
  *(v5 + 2462) = 0u;
  *(v5 + 2466) = 0u;
  StringForPayloadData = _VCAudioReceiver_CreateStringForPayloadData(v5);
  if (StringForPayloadData)
  {
    v47 = StringForPayloadData;
    CFDictionaryAddValue(v7, @"Payload", StringForPayloadData);
    CFRelease(v47);
  }

  *(v5 + 2590) = 0u;
  *(v5 + 2594) = 0u;
  *(v5 + 2582) = 0u;
  *(v5 + 2586) = 0u;
  *(v5 + 2574) = 0u;
  *(v5 + 2578) = 0u;
  *(v5 + 2566) = 0u;
  *(v5 + 2570) = 0u;
  *(v5 + 2558) = 0u;
  *(v5 + 2562) = 0u;
  *(v5 + 2550) = 0u;
  *(v5 + 2554) = 0u;
  *(v5 + 2542) = 0u;
  *(v5 + 2546) = 0u;
  *(v5 + 2534) = 0u;
  *(v5 + 2538) = 0u;
  *(v5 + 2526) = 0u;
  *(v5 + 2530) = 0u;
  *(v5 + 2518) = 0u;
  *(v5 + 2522) = 0u;
  *(v5 + 2510) = 0u;
  *(v5 + 2514) = 0u;
  *(v5 + 2502) = 0u;
  *(v5 + 2506) = 0u;
  *(v5 + 2494) = 0u;
  *(v5 + 2498) = 0u;
  *(v5 + 2486) = 0u;
  *(v5 + 2490) = 0u;
  *(v5 + 2478) = 0u;
  *(v5 + 2482) = 0u;
  *(v5 + 2470) = 0u;
  *(v5 + 2474) = 0u;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v170 = 0u;
  VCJitterBuffer_GetReportingMetrics(*(v5 + 56), &v170, v40, v41, v42, v43, v44, v45, 0.0, v46);
  *valuePtr = *(&v170 + 1) * 1000.0;
  v48 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"NJB", v48);
  CFRelease(v48);
  *valuePtr = *(&v170 + 2) * 1000.0;
  v49 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"UJBL", v49);
  CFRelease(v49);
  v50 = *(&v172 + 1);
  *valuePtr = v50;
  v51 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"RedOverheadDelay", v51);
  CFRelease(v51);
  *valuePtr = HIDWORD(v170);
  v52 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxCount", v52);
  CFRelease(v52);
  *valuePtr = v171;
  v53 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxBytes", v53);
  CFRelease(v53);
  *valuePtr = DWORD1(v171);
  v54 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxDiscardCount", v54);
  CFRelease(v54);
  *valuePtr = DWORD2(v171);
  v55 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxDiscardBytes", v55);
  CFRelease(v55);
  *valuePtr = HIDWORD(v171);
  v56 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"JitterBufferTargetChanges", v56);
  CFRelease(v56);
  *valuePtr = v5[123];
  v57 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  theDict = v7;
  CFDictionaryAddValue(v7, @"ARCC", v57);
  CFRelease(v57);
  v58 = atomic_exchange(v5 + 194, 0);
  v59 = atomic_exchange(v5 + 207, 0);
  v60 = micro();
  v146 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = v60 - *(v5 + 528);
  *(v5 + 528) = v60;
  if (v64 >= 0.5)
  {
    v63 = ((8 * v58) / v64 / 1000.0 + 0.5);
    v62 = ((8 * v59) / v64 / 1000.0 + 0.5);
    v61 = ((8 * (v59 - v171)) / v64 / 1000.0 + 0.5);
    v146 = ((8 * v171) / v64 / 1000.0 + 0.5);
  }

  v143 = v61;
  v144 = v63;
  allocator = v8;
  v145 = v2;
  v5[1058] = v63;
  v142 = v62;
  v5[1059] = v62;
  v65 = *(&v174 + 1);
  if (*v5)
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = (v5 + 2);
    while (1)
    {
      v189 = 0;
      v188 = 0;
      if (v73 >= (v5 + 58) || v73 < (v5 + 2))
      {
        break;
      }

      v74 = v69;
      RTPGetPacketLossMetrics(*v73, &v189 + 1, &v189, &v188);
      v164 = HIDWORD(v189);
      v166 = v189;
      v168 = v188;
      v185 = 0;
      v186 = 0;
      v187 = 0;
      RTPGetDownlinkReportingStats(*v73, &v185);
      v75 = v186;
      v156 = v185;
      v160 = v187;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v150 = VRTraceErrorLogLevelToCSTR();
        v76 = *MEMORY[0x1E6986650];
        log = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
            v78 = *(v73 + 8);
            *valuePtr = 136317186;
            *&valuePtr[4] = v150;
            *&valuePtr[12] = 2080;
            *&valuePtr[14] = "_VCAudioReceiver_GetRTPMetricsFromStreams";
            *&valuePtr[22] = 1024;
            *&valuePtr[24] = 547;
            *&valuePtr[28] = 2048;
            *&valuePtr[30] = v5;
            *&valuePtr[38] = 2080;
            *&valuePtr[40] = CStringPtr;
            *&valuePtr[48] = 1024;
            *&valuePtr[50] = v78;
            *&valuePtr[54] = 1024;
            *&valuePtr[56] = HIDWORD(v189);
            *&valuePtr[60] = 1024;
            *&valuePtr[62] = v189;
            *&valuePtr[66] = 1024;
            *&valuePtr[68] = v188;
            _os_log_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s idsStreamID=%u Total(Received=%u expected=%u lost=%u)", valuePtr, 0x48u);
          }
        }

        else if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          v79 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
          v80 = *(v73 + 8);
          *valuePtr = 136317186;
          *&valuePtr[4] = v150;
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "_VCAudioReceiver_GetRTPMetricsFromStreams";
          *&valuePtr[22] = 1024;
          *&valuePtr[24] = 547;
          *&valuePtr[28] = 2048;
          *&valuePtr[30] = v5;
          *&valuePtr[38] = 2080;
          *&valuePtr[40] = v79;
          *&valuePtr[48] = 1024;
          *&valuePtr[50] = v80;
          *&valuePtr[54] = 1024;
          *&valuePtr[56] = HIDWORD(v189);
          *&valuePtr[60] = 1024;
          *&valuePtr[62] = v189;
          *&valuePtr[66] = 1024;
          *&valuePtr[68] = v188;
          _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s idsStreamID=%u Total(Received=%u expected=%u lost=%u)", valuePtr, 0x48u);
        }
      }

      v66 += v164;
      v67 += v166;
      v68 += v168;
      v69 = (v74 + v75);
      v70 += v160;
      v71 += v156;
      ++v72;
      v73 += 56;
      if (v72 >= *v5)
      {
        goto LABEL_37;
      }
    }

LABEL_79:
    __break(0x5519u);
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
LABEL_37:
  v82 = v5[197];
  v4 = v67 >= v82;
  v83 = v67 - v82;
  loga = v69;
  v169 = v66;
  v167 = v70;
  if (v4)
  {
    v162 = v83;
    v66 -= v5[195];
    v154 = v68 - v5[198];
    v165 = v69 - *(v5 + 100);
    v86 = v71 - *(v5 + 101);
    v85 = v70 - *(v5 + 102);
    v90 = allocator;
    v89 = theDict;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v94 = VRTraceErrorLogLevelToCSTR();
      v95 = *MEMORY[0x1E6986650];
      v158 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
          *valuePtr = 136317698;
          *&valuePtr[4] = v94;
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "_VCAudioReceiver_CalculateAndReportRTPMetrics";
          *&valuePtr[22] = 1024;
          *&valuePtr[24] = 578;
          *&valuePtr[28] = 2048;
          *&valuePtr[30] = v5;
          *&valuePtr[38] = 2080;
          *&valuePtr[40] = v96;
          *&valuePtr[48] = 1024;
          *&valuePtr[50] = v169;
          *&valuePtr[54] = 1024;
          *&valuePtr[56] = v67;
          *&valuePtr[60] = 1024;
          *&valuePtr[62] = v68;
          *&valuePtr[66] = 1024;
          *&valuePtr[68] = v66;
          *&valuePtr[72] = 1024;
          *&valuePtr[74] = v162;
          *&valuePtr[78] = 1024;
          v97 = v154;
          *v191 = v154;
          _os_log_impl(&dword_1DB56E000, v158, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s Total(Received=%u expected=%u lost=%u) Reporting interval(Received=%u expected=%u lost=%u)", valuePtr, 0x54u);
LABEL_47:
          v88 = v162;
          v87 = v97;
          goto LABEL_52;
        }
      }

      else if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        v140 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
        *valuePtr = 136317698;
        *&valuePtr[4] = v94;
        *&valuePtr[12] = 2080;
        *&valuePtr[14] = "_VCAudioReceiver_CalculateAndReportRTPMetrics";
        *&valuePtr[22] = 1024;
        *&valuePtr[24] = 578;
        *&valuePtr[28] = 2048;
        *&valuePtr[30] = v5;
        *&valuePtr[38] = 2080;
        *&valuePtr[40] = v140;
        *&valuePtr[48] = 1024;
        *&valuePtr[50] = v169;
        *&valuePtr[54] = 1024;
        *&valuePtr[56] = v67;
        *&valuePtr[60] = 1024;
        *&valuePtr[62] = v68;
        *&valuePtr[66] = 1024;
        *&valuePtr[68] = v66;
        *&valuePtr[72] = 1024;
        *&valuePtr[74] = v162;
        *&valuePtr[78] = 1024;
        v97 = v154;
        *v191 = v154;
        _os_log_debug_impl(&dword_1DB56E000, v158, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s Total(Received=%u expected=%u lost=%u) Reporting interval(Received=%u expected=%u lost=%u)", valuePtr, 0x54u);
        goto LABEL_47;
      }
    }

    v87 = v154;
    v88 = v162;
    goto LABEL_52;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  LODWORD(v85) = v70;
  LODWORD(v86) = v71;
  LODWORD(v165) = v69;
  v87 = v68;
  v88 = v67;
  v90 = allocator;
  v89 = theDict;
  if (ErrorLogLevelForModule < 8)
  {
    goto LABEL_52;
  }

  v157 = VRTraceErrorLogLevelToCSTR();
  v91 = *MEMORY[0x1E6986650];
  v161 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    v92 = os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT);
    LODWORD(v85) = v167;
    LODWORD(v86) = v71;
    LODWORD(v165) = v69;
    v87 = v68;
    v88 = v67;
    if (!v92)
    {
      goto LABEL_52;
    }

    v93 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
    *valuePtr = 136316930;
    *&valuePtr[4] = v157;
    *&valuePtr[12] = 2080;
    *&valuePtr[14] = "_VCAudioReceiver_CalculateAndReportRTPMetrics";
    *&valuePtr[22] = 1024;
    *&valuePtr[24] = 587;
    *&valuePtr[28] = 2048;
    *&valuePtr[30] = v5;
    *&valuePtr[38] = 2080;
    *&valuePtr[40] = v93;
    *&valuePtr[48] = 1024;
    *&valuePtr[50] = v66;
    *&valuePtr[54] = 1024;
    *&valuePtr[56] = v67;
    *&valuePtr[60] = 1024;
    *&valuePtr[62] = v68;
    _os_log_impl(&dword_1DB56E000, v161, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s Expected packet count decreased, resetting counts. Received=%u expected=%u lost=%u", valuePtr, 0x42u);
    goto LABEL_42;
  }

  v98 = os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG);
  LODWORD(v85) = v167;
  LODWORD(v86) = v71;
  LODWORD(v165) = v69;
  v87 = v68;
  v88 = v67;
  if (v98)
  {
    v99 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
    *valuePtr = 136316930;
    *&valuePtr[4] = v157;
    *&valuePtr[12] = 2080;
    *&valuePtr[14] = "_VCAudioReceiver_CalculateAndReportRTPMetrics";
    *&valuePtr[22] = 1024;
    *&valuePtr[24] = 587;
    *&valuePtr[28] = 2048;
    *&valuePtr[30] = v5;
    *&valuePtr[38] = 2080;
    *&valuePtr[40] = v99;
    *&valuePtr[48] = 1024;
    *&valuePtr[50] = v66;
    *&valuePtr[54] = 1024;
    *&valuePtr[56] = v67;
    *&valuePtr[60] = 1024;
    *&valuePtr[62] = v68;
    _os_log_debug_impl(&dword_1DB56E000, v161, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s Expected packet count decreased, resetting counts. Received=%u expected=%u lost=%u", valuePtr, 0x42u);
LABEL_42:
    LODWORD(v85) = v167;
    LODWORD(v86) = v71;
    LODWORD(v165) = v69;
    v87 = v68;
    v88 = v67;
  }

LABEL_52:
  v100 = 0;
  v101 = 0.0;
  v151 = v67;
  v149 = v68;
  v141 = v71;
  v159 = v66;
  v102 = v86;
  if (v88 && v87)
  {
    v103 = (v87 / v88);
    v104 = 100.0;
    if (v103 * 100.0 <= 100.0)
    {
      v104 = v103 * 100.0;
    }

    v101 = v104;
    v100 = (v103 * 10000.0);
  }

  v163 = v88;
  v155 = v87;
  *valuePtr = v100;
  v105 = CFNumberCreate(v90, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v89, @"ARxPLR", v105);
  CFRelease(v105);
  *valuePtr = v165;
  v106 = CFNumberCreate(v90, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v89, @"RTPDownlinkIngressAudioPkts", v106);
  CFRelease(v106);
  *valuePtr = v102;
  v107 = CFNumberCreate(v90, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v89, @"RTPDownlinkIngressNonDupMediaPkts", v107);
  CFRelease(v107);
  *valuePtr = v85;
  v108 = CFNumberCreate(v90, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v89, @"RTPDownlinkEgressAudioPkts", v108);
  CFRelease(v108);
  v109 = atomic_exchange(v5 + 208, 0);
  v110 = atomic_exchange(v5 + 211, 0);
  v111 = atomic_exchange(v5 + 212, 0);
  v112 = atomic_exchange(v5 + 210, 0);
  v113 = atomic_exchange(v5 + 209, 0);
  v114 = atomic_exchange(v5 + 213, 0);
  v115 = atomic_exchange(v5 + 214, 0);
  VCUtil_ExponentialMovingAverage(v5 + 206, v101, 3.0);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v116 = VRTraceErrorLogLevelToCSTR();
    v117 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v118 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
      *valuePtr = 136319234;
      v119 = *(v5 + 206);
      *&valuePtr[4] = v116;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = "_VCAudioReceiver_CalculateAndReportRTPMetrics";
      *&valuePtr[22] = 1024;
      *&valuePtr[24] = 624;
      *&valuePtr[28] = 2080;
      *&valuePtr[30] = v118;
      *&valuePtr[38] = 2048;
      *&valuePtr[40] = v65 * 100.0;
      *&valuePtr[48] = 2048;
      *&valuePtr[50] = v119;
      *&valuePtr[58] = 2048;
      *&valuePtr[60] = v101;
      *&valuePtr[68] = 1024;
      *&valuePtr[70] = v159;
      *&valuePtr[74] = 1024;
      *&valuePtr[76] = v163;
      *v191 = 1024;
      *&v191[2] = v155;
      *&v191[6] = 1024;
      *&v191[8] = v109;
      *&v191[12] = 1024;
      *&v191[14] = v110;
      *&v191[18] = 1024;
      *&v191[20] = v111;
      *&v191[24] = 1024;
      *&v191[26] = v112;
      *&v191[30] = 1024;
      LODWORD(v192) = v113;
      WORD2(v192) = 1024;
      *(&v192 + 6) = v114;
      WORD5(v192) = 1024;
      HIDWORD(v192) = v115;
      _os_log_impl(&dword_1DB56E000, v117, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d @=@ Health: VCAudioReceiver ParticipantID=%s erasure percentage=%.2f%% PLR percentage=%.2f%% current percentage:%.2f%% (rec:%u exp:%u, loss:%u) receiver(rtp=%u, bb=%u, unk=%u, dup=%u, drop=%u) jb(enc=%u, drop=%u)", valuePtr, 0x80u);
    }
  }

  v5[195] = v169;
  v5[196] += v159;
  v5[197] = v151;
  v5[198] = v149;
  *(v5 + 100) = loga;
  *(v5 + 101) = v141;
  *(v5 + 102) = v167;
  *valuePtr = v144;
  v120 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(theDict, @"ARxR", v120);
  CFRelease(v120);
  *valuePtr = v5[196];
  v121 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(theDict, @"APktRx", v121);
  CFRelease(v121);
  *valuePtr = v142;
  v122 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(theDict, @"AMRR", v122);
  CFRelease(v122);
  *valuePtr = v143;
  v123 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(theDict, @"ARxDecodeBitrate", v123);
  CFRelease(v123);
  *valuePtr = v146;
  v124 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(theDict, @"RedRxBitrate", v124);
  CFRelease(v124);
  if (*(v5 + 9168) == 1)
  {
    *valuePtr = v5[2334];
    v125 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
    CFDictionaryAddValue(theDict, @"MSTC", v125);
    CFRelease(v125);
    v5[2334] = 0;
    v126 = *(v5 + 1165);
    *valuePtr = v126;
    v127 = CFNumberCreate(allocator, kCFNumberFloat32Type, valuePtr);
    CFDictionaryAddValue(theDict, @"MSTT", v127);
    CFRelease(v127);
    *(v5 + 1165) = 0;
    v128 = *(v5 + 1166);
    *valuePtr = v128;
    v129 = CFNumberCreate(allocator, kCFNumberFloat32Type, valuePtr);
    CFDictionaryAddValue(theDict, @"MMST", v129);
    CFRelease(v129);
    *(v5 + 1166) = 0;
  }

  v130 = *(v5 + 1169);
  if (v130)
  {
    *valuePtr = 0;
    VCAudioIssueDetector_GetReportingStats(v130, valuePtr);
  }

  if ((v5[69] & 1) == 0 && *v5)
  {
    v131 = 0;
    v132 = (v5 + 2);
    while (v132 < v5 + 29 && v132 >= v5 + 1)
    {
      v133 = *v132;
      v132 += 7;
      v193 = v182;
      v194 = v183;
      v195 = v184;
      *&valuePtr[64] = v178;
      *v191 = v179;
      *&v191[16] = v180;
      v192 = v181;
      *valuePtr = v174;
      *&valuePtr[16] = v175;
      *&valuePtr[32] = v176;
      *&valuePtr[48] = v177;
      _VCAudioReceiver_ReportAWDMetrics(v5, v133, valuePtr);
      if (++v131 >= *v5)
      {
        goto LABEL_70;
      }
    }

    goto LABEL_79;
  }

LABEL_70:
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v134 = VRTraceErrorLogLevelToCSTR();
    v135 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v136 = v5[2341];
      v137 = *(v5 + 4586);
      v138 = v5[196];
      *valuePtr = 136318210;
      *&valuePtr[4] = v134;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = "_VCAudioReceiver_RegisterReportingTask_block_invoke";
      *&valuePtr[22] = 1024;
      *&valuePtr[24] = 815;
      *&valuePtr[28] = 2048;
      *&valuePtr[30] = v5;
      *&valuePtr[38] = 1024;
      *&valuePtr[40] = v144;
      *&valuePtr[44] = 1024;
      *&valuePtr[46] = v142;
      *&valuePtr[50] = 1024;
      *&valuePtr[52] = v136;
      *&valuePtr[56] = 1024;
      *&valuePtr[58] = v137;
      *&valuePtr[62] = 1024;
      *&valuePtr[64] = v146;
      *&valuePtr[68] = 1024;
      *&valuePtr[70] = v138;
      *&valuePtr[74] = 1024;
      *&valuePtr[76] = v143;
      *v191 = 1024;
      *&v191[2] = ((8 * DWORD1(v177)) / v64 / 1000.0 + 0.5);
      *&v191[6] = 1024;
      *&v191[8] = ((8 * DWORD2(v171)) / v64 / 1000.0 + 0.5);
      _os_log_impl(&dword_1DB56E000, v135, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d @=@ Health: VCAudioReceiver [%p] audioRxBitrate=%ukbps, primaryAudioRxRate=%ukbps payload=%d streamID=%d redReceivedBitrate=%ukbps totalPacketsReceived=%d mediaBitrateNoRed=%ukbps redPlayedRate=%ukbps redDiscardedRate=%ukbps", valuePtr, 0x5Cu);
    }
  }

  v139 = v145[5];
  if (v139 && (v139 >= v145[6] || v139 < v145[7]))
  {
    goto LABEL_79;
  }

  return CheckOutHandleDebug();
}

void ___VCAudioReceiver_RegisterStatistics_block_invoke(uint64_t a1, int *a2, double a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *a2;
    if (*a2 == 11)
    {
      v5 = *(a2 + 50);
      if (v5 != 0xFFFF)
      {
        v6 = *(a2 + 97);
        v7 = *(a2 + 49);
        *&v17 = *(a2 + 4);
        *(&v17 + 1) = v6;
        WORD5(v17) = v7;
        WORD6(v17) = v5;
        VCJitterBuffer_ProcessWiFiNetworkNotification(*(v3 + 448), &v17, a3);
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        WORD6(v17) = v15;
        OUTLINED_FUNCTION_6();
        v18 = 139;
        v19 = v16;
        v20 = v4;
        v8 = &dword_1DB56E000;
        v11 = "VCAudioReceiver [%s] %s:%d Wrong type of statistics message is processed by VCAudioStream type=%d";
        v12 = &v17;
        v9 = v14;
        v10 = OS_LOG_TYPE_ERROR;
        v13 = 34;
        goto LABEL_12;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v18 = 138;
      OUTLINED_FUNCTION_2_0();
LABEL_12:
      _os_log_error_impl(v8, v9, v10, v11, v12, v13);
    }
  }
}

@end