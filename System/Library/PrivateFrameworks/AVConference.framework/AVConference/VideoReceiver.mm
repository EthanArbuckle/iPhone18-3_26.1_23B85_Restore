@interface VideoReceiver
@end

@implementation VideoReceiver

void ___VideoReceiver_SendRTCP_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *(a1 + 200);
  if ((v2 & 0x40) != 0)
  {
    v5 = RTPSendControlPacket(v4, v3);
  }

  else
  {
    v5 = RTPSendRTCP(v4);
  }

  v6 = v5;
  if (v5 < 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 208);
        v11 = 136316418;
        v12 = v7;
        v13 = 2080;
        v14 = "_VideoReceiver_SendRTCP_block_invoke";
        v15 = 1024;
        v16 = 2032;
        v17 = 1024;
        v18 = 2032;
        v19 = 2048;
        v20 = v10;
        v21 = 1024;
        v22 = v6;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoReceiver.c:%d: VideoReceiver[%p] send rtcp failed (%08X)", &v11, 0x32u);
      }
    }
  }

  else
  {
    _VideoReceiver_HandleSendRTCPSuccess(*(a1 + 216), v3, *(a1 + 224));
  }

  v9 = *(a1 + 232);
  if (v9)
  {
    VCMemoryPool_Free(*(*(a1 + 208) + 43144), v9);
  }
}

__n128 ___VideoReceiver_RegisterStatistics_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v3;
  v11 = *(a2 + 192);
  v4 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v4;
  v5 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v5;
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  _VideoReceiver_ProcessRTTStatistics(v2, v10);
  return result;
}

uint64_t ___VideoReceiver_ReportingRegisterPeriodicTask_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v309 = *MEMORY[0x1E69E9840];
  v5 = micro();
  v304 = 0.0;
  result = CheckInHandleDebug();
  if (result)
  {
    v7 = result;
    alloc = v3;
    v8 = result + 40900;
    VideoReceiver_GetFramerate(1.0, *(v4 + 32), &v304);
    v10 = v304;
    if (v304 > 0.0)
    {
      ++*(v8 + 1792);
      LOWORD(v9) = *(v8 + 1790);
      *(v8 + 1790) = (v10 + v9);
      if (*(v8 + 1900) < v10)
      {
        *(v8 + 1900) = v10;
      }

      if (*(v8 + 1908) > v10)
      {
        *(v8 + 1908) = v10;
      }
    }

    v303 = 0.0;
    VideoReceiver_GetBitrate(1.0, *(v4 + 32), &v303, 0, 0, 0, 0);
    v11 = v303;
    if (*(v8 + 1924) < v303)
    {
      *(v8 + 1924) = v303;
    }

    v281 = (v8 + 1924);
    v271 = (v8 + 1932);
    if (*(v8 + 1932) > v11)
    {
      *v271 = v11;
    }

    v301 = 0.0;
    v302 = 0.0;
    v299 = 0.0;
    v300 = 0.0;
    v275 = v8;
    v269 = v8 + 1916;
    VideoReceiver_GetBitrate(*(v8 + 2288), *(v4 + 32), v8 + 1916, &v302, &v301, &v300, &v299);
    if (*v7)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 436;
      do
      {
        LODWORD(v307[0]) = -1431655766;
        __dst[0] = -1431655766;
        LODWORD(v289[0]) = -1431655766;
        v19 = v15;
        v20 = v16;
        RTPGetPacketLossMetrics(*&v7[v18], v307, __dst, v289);
        v13 += __dst[0];
        v14 += LODWORD(v289[0]);
        memset(v308, 0, 24);
        RTPGetDownlinkReportingStats(*&v7[v18], v308);
        v15 = *(&v308[0] + 1) + v19;
        v16 = *&v308[1] + v20;
        v17 += *&v308[0];
        ++v12;
        v18 += 1088;
      }

      while (v12 < *v7);
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
    }

    v270 = v14;
    v273 = v17;
    v274 = v7;
    v21 = v275;
    v22 = *(v275 + 1796);
    v23 = v13 - v22;
    v24 = v13;
    if (v13 >= v22)
    {
      v25 = v270 - *(v275 + 1800);
    }

    else
    {
      *(v275 + 1796) = v13;
      v25 = v270;
      *(v275 + 1800) = v270;
      v23 = v13;
    }

    v272 = v15;
    if (v15 <= *(v275 + 1812))
    {
      LODWORD(v26) = 0;
    }

    else
    {
      v26 = *(v275 + 1812);
    }

    v27 = *(v275 + 1820);
    if (v16 > v27)
    {
      LODWORD(v27) = v16 - v27;
    }

    v266 = v27;
    v267 = v16;
    v28 = (v275 + 1828);
    v29 = *(v275 + 1828);
    if (v273 <= v29)
    {
      LODWORD(v29) = 0;
    }

    theDict = v29;
    if (v23 < 1 || (v25 & 0x80000000) != 0)
    {
      v32 = 0.0;
      if (!alloc)
      {
        return CheckOutHandleDebug();
      }
    }

    else
    {
      v30 = v25 / v23;
      if (v30 <= 1.0)
      {
        v31 = v30 * 100.0;
        v32 = v31;
      }

      else
      {
        v32 = 100.0;
      }

      v33 = (v275 + 1564);
      v34 = *(v275 + 1564);
      v35 = v34 == 0.0;
      v36 = v32 * 0.5 + v34 * 0.5;
      if (v35)
      {
        v36 = v32;
      }

      *v33 = v36;
      if (*v275 == 1 && (v23 > 0xA || v36 > 0.0))
      {
        memset(&v308[2], 0, 40);
        memset(&v308[5], 0, 120);
        v37 = *(v274 + 162);
        v38 = *(v275 + 2252);
        *&v308[0] = 3;
        *(v308 + 1) = v5;
        *&v308[1] = 0;
        *(&v308[1] + 1) = v36;
        *(&v308[4] + 1) = v37;
        VCRateControlSetStatistics(v38, v308);
      }

      if (!alloc)
      {
        return CheckOutHandleDebug();
      }

      v39 = *(v274 + 172);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v39)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v41 = VRTraceErrorLogLevelToCSTR();
          v42 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(*(v274 + 172), 0x8000100u);
            v44 = *v33;
            v45 = FourccToCStr(v274[348]);
            LODWORD(v308[0]) = 136317442;
            *(v308 + 4) = v41;
            WORD6(v308[0]) = 2080;
            *(v308 + 14) = "_VideoReceiver_ReportingRegisterPeriodicTask_block_invoke";
            WORD3(v308[1]) = 1024;
            DWORD2(v308[1]) = 5351;
            WORD6(v308[1]) = 2048;
            *(&v308[1] + 14) = v274;
            WORD3(v308[2]) = 2080;
            *(&v308[2] + 1) = CStringPtr;
            v28 = (v275 + 1828);
            LOWORD(v308[3]) = 2048;
            *(&v308[3] + 2) = v44;
            WORD5(v308[3]) = 2048;
            *(&v308[3] + 12) = v32;
            WORD2(v308[4]) = 1024;
            *(&v308[4] + 6) = v23;
            WORD5(v308[4]) = 1024;
            HIDWORD(v308[4]) = v25;
            LOWORD(v308[5]) = 2080;
            *(&v308[5] + 2) = v45;
            v46 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC health report for participantId:%s with PLR percentage:%.2f, current percentage:%.2f (exp:%d, loss:%d) streamGroupID:%s";
            v47 = v42;
            v48 = 90;
LABEL_48:
            _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, v46, v308, v48);
            goto LABEL_49;
          }

          goto LABEL_49;
        }
      }

      else if (ErrorLogLevelForModule >= 7)
      {
        v49 = VRTraceErrorLogLevelToCSTR();
        v50 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(v274 + 162);
          v52 = *v33;
          LODWORD(v308[0]) = 136317186;
          *(v308 + 4) = v49;
          WORD6(v308[0]) = 2080;
          *(v308 + 14) = "_VideoReceiver_ReportingRegisterPeriodicTask_block_invoke";
          WORD3(v308[1]) = 1024;
          DWORD2(v308[1]) = 5353;
          WORD6(v308[1]) = 2048;
          *(&v308[1] + 14) = v274;
          WORD3(v308[2]) = 2048;
          *(&v308[2] + 1) = v51;
          LOWORD(v308[3]) = 2048;
          *(&v308[3] + 2) = v52;
          WORD5(v308[3]) = 2048;
          *(&v308[3] + 12) = v32;
          WORD2(v308[4]) = 1024;
          *(&v308[4] + 6) = v23;
          WORD5(v308[4]) = 1024;
          HIDWORD(v308[4]) = v25;
          v46 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC health report for participantId:%llu with PLR percentage:%.2f, current percentage:%.2f (exp:%d, loss:%d)";
          v47 = v50;
          v48 = 80;
          goto LABEL_48;
        }

LABEL_49:
        v21 = v275;
      }
    }

    v264 = v28;
    v263 = v24;
    v53 = selectDestinationForRTMetrics();
    if (*(v274 + 1558))
    {
      v54 = 2;
    }

    else
    {
      v54 = 1;
    }

    LODWORD(v308[0]) = v54;
    v55 = *MEMORY[0x1E695E480];
    v56 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"CodecLayers", v56);
    CFRelease(v56);
    v57 = (v301 / 1000.0 + 0.5);
    v258 = (*v269 / 1000.0 + 0.5);
    LODWORD(v308[0]) = v258;
    v58 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VRxR", v58);
    CFRelease(v58);
    LODWORD(v308[0]) = (*v281 / 1000.0 + 0.5);
    v59 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VRxRMax", v59);
    CFRelease(v59);
    v60 = 0.0;
    LODWORD(v308[0]) = (*v271 / 1000.0 + 0.5);
    v61 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VRxRMin", v61);
    CFRelease(v61);
    LODWORD(v308[0]) = (v302 / 1000.0 + 0.5);
    v62 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VRFECRxR", v62);
    CFRelease(v62);
    v259 = v57;
    LODWORD(v308[0]) = v57;
    v63 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VRxMetadataOverhead", v63);
    CFRelease(v63);
    LODWORD(v308[0]) = (v300 / 1000.0 + 0.5);
    v64 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VRxMR", v64);
    CFRelease(v64);
    LODWORD(v308[0]) = (v299 / 1000.0 + 0.5);
    v65 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VRxDMR", v65);
    CFRelease(v65);
    _VideoReceiver_CheckIfVideoStalling(v274);
    v67 = 0.0;
    if (*(v21 + 1792))
    {
      LOWORD(v66) = *(v21 + 1790);
      v67 = v66 / *(v21 + 1792);
    }

    v68 = *(v21 + 1908);
    *v308 = v67;
    v69 = CFNumberCreate(v55, kCFNumberFloat32Type, v308);
    CFDictionaryAddValue(v53, @"ARFr", v69);
    CFRelease(v69);
    v257 = (v21 + 1900);
    LODWORD(v308[0]) = *(v21 + 1900);
    v70 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"XRFr", v70);
    CFRelease(v70);
    LODWORD(v308[0]) = v68;
    v71 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"NRFr", v71);
    CFRelease(v71);
    v72 = *(v21 + 1940);
    *v308 = v72;
    v73 = CFNumberCreate(v55, kCFNumberFloat32Type, v308);
    CFDictionaryAddValue(v53, @"VST", v73);
    CFRelease(v73);
    v265 = (v21 + 1940);
    v262 = (v21 + 1948);
    v74 = *(v21 + 1948);
    v75 = *(v21 + 1940) - v74;
    LODWORD(v74) = *(v21 + 2288);
    *&v75 = v75 / *&v74;
    LODWORD(v308[0]) = LODWORD(v75);
    v76 = CFNumberCreate(v55, kCFNumberFloat32Type, v308);
    CFDictionaryAddValue(v53, @"iVSP", v76);
    CFRelease(v76);
    v255 = (v21 + 1988);
    v77 = *(v21 + 1988);
    *v308 = v77;
    v78 = CFNumberCreate(v55, kCFNumberFloat32Type, v308);
    CFDictionaryAddValue(v53, @"VSTSM", v78);
    CFRelease(v78);
    LODWORD(v308[0]) = *(v21 + 1964);
    v79 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VSTCNT", v79);
    CFRelease(v79);
    *(v21 + 1964) = 0;
    v80 = *(v21 + 2408);
    v81 = v80 - *(v21 + 2412);
    *(v21 + 2412) = v80;
    v256 = v81;
    LODWORD(v308[0]) = v81;
    v82 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VFrErCnt", v82);
    CFRelease(v82);
    v254 = *(v21 + 1612);
    PlaybackTimeOffset = VCVideoPlayer_GetPlaybackTimeOffset();
    v297 = 0u;
    v298 = 0u;
    v296 = 0u;
    v294 = 0u;
    v295 = 0u;
    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    memset(v289, 0, sizeof(v289));
    VCVideoPlayer_CollectVideoPlayerStatsForReporting(v5, *(v21 + 76), v289);
    _VideoReceiver_ReportVideoPlayerStatsForReporting(v289, v53);
    VCVideoPlayer_ResetVideoPlayerStatsForReporting(v5);
    v84 = v273;
    if (*(v274 + 1324) == 1)
    {
      v85 = v26;
      v86 = (v21 + 1604);
      v26 = v21;
      v87 = (v21 + 1588);
      v88 = *v87;
      *v308 = v88;
      v89 = CFNumberCreate(v55, kCFNumberFloat32Type, v308);
      CFDictionaryAddValue(v53, @"VJ", v89);
      CFRelease(v89);
      LODWORD(v308[0]) = *(v26 + 1612);
      v90 = CFNumberCreate(v55, kCFNumberIntType, v308);
      CFDictionaryAddValue(v53, @"VJBTC", v90);
      CFRelease(v90);
      *(v26 + 1612) = 0;
      v91 = v5 - *(v26 + 1620);
      v92 = *v86;
      v93 = (v26 + 1628);
      v94 = *(v26 + 1628);
      if (v92 != 0.0)
      {
        v94 = v91 + v94;
        *v93 = v94;
      }

      v95 = v94;
      *v308 = v95;
      v96 = CFNumberCreate(v55, kCFNumberFloat32Type, v308);
      CFDictionaryAddValue(v53, @"VJBTNZT", v96);
      CFRelease(v96);
      v253 = *v93;
      v97 = *v87;
      v21 = v275;
      v98 = *(v275 + 1636);
      v99 = v98 + v91 * v97;
      *(v275 + 1636) = v99;
      LODWORD(v98) = *(v275 + 2288);
      v100 = v99 / *&v98;
      *&v99 = v100;
      LODWORD(v308[0]) = LODWORD(v99);
      v101 = CFNumberCreate(v55, kCFNumberFloat32Type, v308);
      CFDictionaryAddValue(v53, @"VJBTWA", v101);
      CFRelease(v101);
      *v93 = 0.0;
      *(v26 + 1636) = 0;
      *(v26 + 1620) = v5;
      v102 = PlaybackTimeOffset;
      *v308 = v102;
      v103 = CFNumberCreate(v55, kCFNumberFloat32Type, v308);
      CFDictionaryAddValue(v53, @"VPO", v103);
      CFRelease(v103);
      LODWORD(v26) = v85;
      if (*(v274 + 1360) == 1 && *(v274 + 1361) == 1)
      {
        LODWORD(v308[0]) = *&v290;
        v104 = CFNumberCreate(v55, kCFNumberIntType, v308);
        CFDictionaryAddValue(v53, @"AVSyncOffsetMin", v104);
        CFRelease(v104);
        LODWORD(v308[0]) = *(&v290 + 1);
        v105 = CFNumberCreate(v55, kCFNumberIntType, v308);
        CFDictionaryAddValue(v53, @"AVSyncOffsetMax", v105);
        CFRelease(v105);
        v106 = v292;
        if (v292)
        {
          v106 = (*&v291 / v292);
        }

        LODWORD(v308[0]) = v106;
        v107 = CFNumberCreate(v55, kCFNumberIntType, v308);
        CFDictionaryAddValue(v53, @"AVSyncOffset", v107);
        CFRelease(v107);
      }

      v60 = v100 * 1000.0;
      v84 = v273;
    }

    else
    {
      v253 = 0.0;
    }

    LODWORD(v308[0]) = *&v298;
    v108 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VPFDC", v108);
    CFRelease(v108);
    *&v308[0] = *(&v298 + 1);
    v109 = CFNumberCreate(v55, kCFNumberDoubleType, v308);
    CFDictionaryAddValue(v53, @"VPFDCD", v109);
    CFRelease(v109);
    v110 = *(v21 + 2476);
    if (v110)
    {
      VCNACKGenerator_GetStatistics(v110, v53);
    }

    bzero(v307, 0xC820uLL);
    _VideoReceiver_GetVPBStats(v274);
    v111 = *v274;
    if (v111)
    {
      v112 = 0;
      v113 = 456;
      do
      {
        v114 = *&v274[v113];
        if (v114)
        {
          VideoPacketBuffer_ResetStatistics(v114);
          v111 = *v274;
        }

        ++v112;
        v113 += 1088;
      }

      while (v112 < v111);
    }

    v260 = v272 - v26;
    v261 = v84 - theDict;
    if (LODWORD(v307[1197]))
    {
      v307[1194] = v307[1193] / LODWORD(v307[1197]);
    }

    Mutable = CFArrayCreateMutable(0, 23, MEMORY[0x1E695E9C0]);
    v116 = 0;
    v117 = &v307[1181] + 4;
    do
    {
      v118 = CFNumberCreate(0, kCFNumberIntType, v117);
      CFArraySetValueAtIndex(Mutable, v116, v118);
      if (v118)
      {
        CFRelease(v118);
      }

      ++v116;
      v117 += 4;
    }

    while (v116 != 23);
    CFDictionaryAddValue(v53, @"VFEVLtPktDelayHist", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    LODWORD(v308[0]) = HIDWORD(v307[1196]);
    v119 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VFEVTrCnt", v119);
    CFRelease(v119);
    v120 = v307[1194];
    *v308 = v120;
    v121 = CFNumberCreate(v55, kCFNumberFloat32Type, v308);
    CFDictionaryAddValue(v53, @"VFEVLtPktDelay", v121);
    CFRelease(v121);
    v122 = v307[1195];
    *v308 = v122;
    v123 = CFNumberCreate(v55, kCFNumberFloat32Type, v308);
    CFDictionaryAddValue(v53, @"VFEVMaxLtPktDelay", v123);
    CFRelease(v123);
    LODWORD(v308[0]) = LODWORD(v307[1196]);
    v124 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VFrLateCount", v124);
    CFRelease(v124);
    LODWORD(v308[0]) = LODWORD(v307[1197]);
    v125 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VFEVRecoveredCnt", v125);
    CFRelease(v125);
    LODWORD(v308[0]) = LODWORD(v307[1199]);
    v126 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"NacksFrmsSchWithRTX", v126);
    CFRelease(v126);
    LODWORD(v308[0]) = HIDWORD(v307[1199]);
    v127 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"NacksFrmsAssemWithRTX", v127);
    CFRelease(v127);
    LODWORD(v308[0]) = LODWORD(v307[1200]);
    v128 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"NacksFrmsFailedAssemWithRTX", v128);
    CFRelease(v128);
    LODWORD(v308[0]) = HIDWORD(v307[6402]);
    v129 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"VRxIDRC", v129);
    CFRelease(v129);
    LODWORD(v308[0]) = LODWORD(v307[6403]);
    v130 = CFNumberCreate(v55, kCFNumberIntType, v308);
    CFDictionaryAddValue(v53, @"LKFASC", v130);
    CFRelease(v130);
    LODWORD(v308[0]) = HIDWORD(v307[6403]);
    v131 = CFNumberCreate(v55, kCFNumberIntType, v308);
    v268 = v53;
    CFDictionaryAddValue(v53, @"LPFASC", v131);
    CFRelease(v131);
    v132 = MEMORY[0x1E695E9D8];
    v133 = MEMORY[0x1E695E9E8];
    v277 = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    memcpy(__dst, v307, sizeof(__dst));
    theDicta = CFDictionaryCreateMutable(v55, 0, v132, v133);
    v282 = CFDictionaryCreateMutable(v55, 0, v132, v133);
    v279 = CFDictionaryCreateMutable(v55, 0, v132, v133);
    v134 = CFDictionaryCreateMutable(v55, 0, v132, v133);
    v135 = CFDictionaryCreateMutable(v55, 0, v132, v133);
    alloca = v55;
    v136 = CFDictionaryCreateMutable(v55, 0, v132, v133);
    v137 = 0;
    v138 = &__dst[131];
    do
    {
      v139 = *(v138 - 3);
      if (v139)
      {
        v140 = CFStringCreateWithFormat(v55, 0, @"%u", v137);
        LODWORD(v308[0]) = *(v138 - 7);
        v141 = CFNumberCreate(v55, kCFNumberIntType, v308);
        CFDictionaryAddValue(theDicta, v140, v141);
        CFRelease(v141);
        LODWORD(v308[0]) = *(v138 - 5);
        v142 = CFNumberCreate(v55, kCFNumberIntType, v308);
        CFDictionaryAddValue(v282, v140, v142);
        CFRelease(v142);
        LODWORD(v308[0]) = v139;
        v143 = CFNumberCreate(v55, kCFNumberIntType, v308);
        CFDictionaryAddValue(v279, v140, v143);
        CFRelease(v143);
        LODWORD(v308[0]) = *(v138 - 2);
        v144 = CFNumberCreate(v55, kCFNumberIntType, v308);
        CFDictionaryAddValue(v134, v140, v144);
        CFRelease(v144);
        LODWORD(v308[0]) = *(v138 - 1);
        v145 = CFNumberCreate(v55, kCFNumberIntType, v308);
        CFDictionaryAddValue(v135, v140, v145);
        CFRelease(v145);
        LODWORD(v308[0]) = *v138;
        v146 = CFNumberCreate(v55, kCFNumberIntType, v308);
        CFDictionaryAddValue(v136, v140, v146);
        CFRelease(v146);
        CFRelease(v140);
      }

      ++v137;
      v138 += 12;
    }

    while (v137 != 101);
    CFDictionaryAddValue(v277, @"VFecDB", theDicta);
    CFDictionaryAddValue(v277, @"VFecPB", v282);
    CFDictionaryAddValue(v277, @"VFecTF", v279);
    CFDictionaryAddValue(v277, @"VFecCF", v134);
    CFDictionaryAddValue(v277, @"VFecNF", v135);
    CFDictionaryAddValue(v277, @"VFecFF", v136);
    CFRelease(theDicta);
    CFRelease(v282);
    CFRelease(v279);
    CFRelease(v134);
    CFRelease(v135);
    CFRelease(v136);
    v147 = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    for (i = 0; i != 102; ++i)
    {
      v149 = *(&__dst[2312] + i);
      if (*(&__dst[2312] + i))
      {
        v150 = CFStringCreateWithFormat(v55, 0, @"%d", i);
        LODWORD(v308[0]) = v149;
        v151 = CFNumberCreate(v55, kCFNumberIntType, v308);
        CFDictionaryAddValue(v147, v150, v151);
        CFRelease(v151);
        CFRelease(v150);
      }
    }

    CFDictionaryAddValue(v277, @"VRLossPattern", v147);
    CFRelease(v147);
    memcpy(v308, __dst, sizeof(v308));
    v152 = MEMORY[0x1E695E9D8];
    v153 = MEMORY[0x1E695E9E8];
    v154 = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v155 = CFDictionaryCreateMutable(v55, 0, v152, v153);
    v156 = CFDictionaryCreateMutable(v55, 0, v152, v153);
    v157 = CFDictionaryCreateMutable(v55, 0, v152, v153);
    v158 = 0;
    v159 = 334;
    do
    {
      v160 = &v308[v159];
      v161 = *(&v308[v159] + 1);
      if (v161)
      {
        v162 = CFStringCreateWithFormat(alloca, 0, @"%u", v158);
        valuePtr = v161;
        v163 = CFNumberCreate(alloca, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v155, v162, v163);
        CFRelease(v163);
        valuePtr = *v160;
        v164 = CFNumberCreate(alloca, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v154, v162, v164);
        CFRelease(v164);
        valuePtr = v160[3];
        v165 = CFNumberCreate(alloca, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v156, v162, v165);
        CFRelease(v165);
        valuePtr = v160[2];
        v166 = CFNumberCreate(alloca, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v157, v162, v166);
        CFRelease(v166);
        if (v162)
        {
          CFRelease(v162);
        }
      }

      ++v158;
      v159 += 2;
    }

    while (v158 != 122);
    CFDictionaryAddValue(v277, @"VFecSVPC", v154);
    CFDictionaryAddValue(v277, @"VFecSVFC", v155);
    CFDictionaryAddValue(v277, @"VFecSVDPL", v156);
    CFDictionaryAddValue(v277, @"VFecSVFAC", v157);
    if (v154)
    {
      CFRelease(v154);
    }

    if (v155)
    {
      CFRelease(v155);
    }

    if (v156)
    {
      CFRelease(v156);
    }

    v167 = v275;
    if (v157)
    {
      CFRelease(v157);
    }

    _VideoReceiver_ComputePacketLoss2DHistogram(v277, @"VRLossHistogram", &__dst[2401]);
    _VideoReceiver_ComputePacketLoss2DHistogram(v277, @"VRLossFecHistogram", &__dst[7603]);
    CFDictionaryAddValue(v268, @"VFecStats", v277);
    CFRelease(v277);
    v168 = 0;
    *(v275 + 2504) = 0;
    v169 = &v307[6];
    v170 = MEMORY[0x1E6986650];
    do
    {
      if (*(v169 - 4) || *(v169 - 4))
      {
        v171 = FECUtil_GranularLevelToPrecentage(v168);
        *(v167 + 2504) = v168;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v172 = VRTraceErrorLogLevelToCSTR();
          v173 = *v170;
          if (os_log_type_enabled(*v170, OS_LOG_TYPE_DEFAULT))
          {
            v174 = CFStringGetCStringPtr(*(v274 + 172), 0x8000100u);
            v176 = *(v169 - 4);
            v175 = *(v169 - 3);
            v276 = *(v169 - 4);
            v278 = *(v169 - 3);
            v280 = *(v169 - 2);
            v283 = *(v169 - 1);
            theDictb = *v169;
            v177 = FourccToCStr(v274[348]);
            LODWORD(v308[0]) = 136318466;
            *(v308 + 4) = v172;
            WORD6(v308[0]) = 2080;
            *(v308 + 14) = "_VideoReceiver_ReportingRegisterPeriodicTask_block_invoke";
            WORD3(v308[1]) = 1024;
            DWORD2(v308[1]) = 5504;
            WORD6(v308[1]) = 2048;
            *(&v308[1] + 14) = v274;
            WORD3(v308[2]) = 2048;
            *(&v308[2] + 1) = v171;
            LOWORD(v308[3]) = 2080;
            *(&v308[3] + 2) = v174;
            WORD5(v308[3]) = 2048;
            *(&v308[3] + 12) = v176;
            v167 = v275;
            WORD2(v308[4]) = 2048;
            *(&v308[4] + 6) = v175;
            v170 = MEMORY[0x1E6986650];
            HIWORD(v308[4]) = 1024;
            LODWORD(v308[5]) = v276;
            WORD2(v308[5]) = 1024;
            *(&v308[5] + 6) = v278;
            WORD5(v308[5]) = 1024;
            HIDWORD(v308[5]) = v280;
            LOWORD(v308[6]) = 1024;
            *(&v308[6] + 2) = v283;
            WORD3(v308[6]) = 1024;
            DWORD2(v308[6]) = theDictb;
            WORD6(v308[6]) = 2080;
            *(&v308[6] + 14) = v177;
            _os_log_impl(&dword_1DB56E000, v173, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC health report: fecLevel:%.2f participantID:%s data:%llu, parity:%llu, totalFrame:%d complete:%d, notRecoverable:%d, failedToRecover:%d, recovered:%d streamGroupId:%s", v308, 0x76u);
          }
        }
      }

      ++v168;
      v169 += 6;
    }

    while (v168 != 10);
    if (*(v274 + 653))
    {
      v178 = *(v167 + 1888) / *(v274 + 653);
    }

    else
    {
      v178 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v179 = VRTraceErrorLogLevelToCSTR();
      v180 = *v170;
      if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
      {
        v181 = CFStringGetCStringPtr(*(v274 + 172), 0x8000100u);
        v182 = v274[290];
        v183 = FourccToCStr(v274[348]);
        v184 = *v257;
        v185 = *v265 * 1000.0;
        v186 = *v255 * 1000.0;
        v187 = *(v275 + 1588) * 1000.0;
        v188 = *(v275 + 1804);
        v189 = *(v275 + 2312);
        v190 = *(v275 + 2308);
        v191 = *(v275 + 1888);
        LODWORD(v308[0]) = 136321026;
        *(v308 + 4) = v179;
        WORD6(v308[0]) = 2080;
        *(v308 + 14) = "_VideoReceiver_ReportingRegisterPeriodicTask_block_invoke";
        WORD3(v308[1]) = 1024;
        DWORD2(v308[1]) = 5510;
        WORD6(v308[1]) = 2080;
        *(&v308[1] + 14) = v181;
        WORD3(v308[2]) = 1024;
        DWORD2(v308[2]) = v182;
        WORD6(v308[2]) = 2080;
        *(&v308[2] + 14) = v183;
        WORD3(v308[3]) = 2048;
        *(&v308[3] + 1) = v67;
        LOWORD(v308[4]) = 2048;
        *(&v308[4] + 2) = v68;
        WORD5(v308[4]) = 2048;
        *(&v308[4] + 12) = v184;
        WORD2(v308[5]) = 1024;
        *(&v308[5] + 6) = v258;
        WORD5(v308[5]) = 2048;
        *(&v308[5] + 12) = v185;
        WORD2(v308[6]) = 2048;
        *(&v308[6] + 6) = v186;
        HIWORD(v308[6]) = 2048;
        *&v308[7] = v187;
        WORD4(v308[7]) = 2048;
        *(&v308[7] + 10) = PlaybackTimeOffset * 1000.0;
        WORD1(v308[8]) = 1024;
        DWORD1(v308[8]) = v254;
        WORD4(v308[8]) = 2048;
        *(&v308[8] + 10) = v253;
        WORD1(v308[9]) = 2048;
        *(&v308[9] + 4) = v60;
        WORD6(v308[9]) = 1024;
        *(&v308[9] + 14) = v256;
        WORD1(v308[10]) = 1024;
        DWORD1(v308[10]) = v188;
        WORD4(v308[10]) = 1024;
        *(&v308[10] + 10) = v189;
        HIWORD(v308[10]) = 1024;
        LODWORD(v308[11]) = v190;
        WORD2(v308[11]) = 1024;
        *(&v308[11] + 6) = v259;
        WORD5(v308[11]) = 1024;
        HIDWORD(v308[11]) = v191;
        LOWORD(v308[12]) = 1024;
        *(&v308[12] + 2) = v178;
        _os_log_impl(&dword_1DB56E000, v180, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d @=@ Health: VideoReceiver participantID=%s, mode=%d, streamGroupId=%s, videoRxAvgFrameRate=%.2f, videoRxMinFrameRate=%.2f, videoRxMaxFrameRate=%.2f, videoRxBitrate=%d kbps, videoStallTime=%.1f ms, videoSegmentMaxStall=%.1f ms, videoJitterQueueSize=%.1f ms, playbackOffset=%f ms, numOfJitterQueueSizeChanges=%d, timeSpentInNonZeroJBQueueSize=%f s, averageJitterQueueSize=%f ms, frameErasureCount=%u, packetReceived=%u, callbackCount=%u significantOutOfOrderPacketCount=%d, metadataRxBitrateKbps=%u, decodedFrameCount=%d, decodedFullFrameCount=%d,", v308, 0xC6u);
      }
    }

    if (*(v274 + 1325) == 1)
    {
      VCVideoJitterBuffer_HealthPrint(*(v275 + 2372));
    }

    v192 = *(v275 + 1564);
    *v308 = v192;
    v193 = CFNumberCreate(alloca, kCFNumberFloat32Type, v308);
    CFDictionaryAddValue(v268, @"VRxAvgPktLoss", v193);
    CFRelease(v193);
    *v308 = v32;
    v194 = CFNumberCreate(alloca, kCFNumberFloat32Type, v308);
    CFDictionaryAddValue(v268, @"VRxPktLoss", v194);
    CFRelease(v194);
    LODWORD(v308[0]) = 0;
    v195 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VPktRx", v195);
    CFRelease(v195);
    v196 = *(v275 + 1876);
    v197 = 0.0;
    v198 = v196;
    v199 = 0.0;
    if ((v196 - *(v275 + 1874)) >= 1)
    {
      v199 = (v196 - *(v275 + 1874)) / v198;
    }

    v200 = (v196 - *(v275 + 1872));
    if (v200 >= 1)
    {
      v197 = v200 / v198;
    }

    *v308 = v199;
    v201 = CFNumberCreate(alloca, kCFNumberFloat32Type, v308);
    CFDictionaryAddValue(v268, @"VRFrLoss", v201);
    CFRelease(v201);
    *v308 = v197;
    v202 = CFNumberCreate(alloca, kCFNumberFloat32Type, v308);
    CFDictionaryAddValue(v268, @"VRFrShown", v202);
    CFRelease(v202);
    LODWORD(v308[0]) = *(v275 + 1876);
    v203 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VRFrExpected", v203);
    CFRelease(v203);
    v205 = *(v275 + 2112);
    if (*(v275 + 2112))
    {
      v206 = *(v275 + 1792);
      if (*(v275 + 1792))
      {
        LOWORD(v204) = *(v275 + 2110);
        v207 = (*(v275 + 2108) / v205);
        v208 = -v204 / v205;
        v209 = (1.0 - expf((v208 * (*(v275 + 1790) / v206 - 1)) / 30.0)) * v207;
        v210 = v209 / (1.0 - expf(v208));
        if (v210 <= 0xA)
        {
          LOBYTE(v206) = 5 * v210 + 50;
        }

        else
        {
          LOBYTE(v206) = 100;
        }

        v206 = v206;
        *(v275 + 2108) = 0;
        *(v275 + 2112) = 0;
      }
    }

    else
    {
      v206 = 0;
    }

    LODWORD(v308[0]) = v206;
    v211 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VQS", v211);
    CFRelease(v211);
    LODWORD(v308[0]) = *(v275 + 2308);
    v212 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VRSOOOCnt", v212);
    CFRelease(v212);
    LODWORD(v308[0]) = LODWORD(v307[0]);
    v213 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VFIRDCnt", v213);
    CFRelease(v213);
    LODWORD(v308[0]) = *(v275 + 1836);
    v214 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VFIRCnt", v214);
    CFRelease(v214);
    LODWORD(v308[0]) = *(v275 + 1844);
    v215 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VFIRFSCnt", v215);
    CFRelease(v215);
    LODWORD(v308[0]) = *(v275 + 1880);
    v216 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VFDBSCnt", v216);
    CFRelease(v216);
    LODWORD(v308[0]) = HIDWORD(v307[0]);
    v217 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VFTICnt", v217);
    CFRelease(v217);
    LODWORD(v308[0]) = *(v275 + 1888);
    v218 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"DecOutFrameCnt", v218);
    CFRelease(v218);
    LODWORD(v308[0]) = *(v275 + 1872);
    v219 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"DVFECnt", v219);
    CFRelease(v219);
    LODWORD(v308[0]) = *(v275 + 1874);
    v220 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VFRxCnt", v220);
    CFRelease(v220);
    LODWORD(v308[0]) = HIDWORD(v307[1]);
    v221 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VNoFecTF", v221);
    CFRelease(v221);
    LODWORD(v308[0]) = LODWORD(v307[1]);
    v222 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VNoFecCF", v222);
    CFRelease(v222);
    LODWORD(v308[0]) = *(v275 + 1892);
    v223 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"DecNoShowFrameCnt", v223);
    CFRelease(v223);
    LODWORD(v308[0]) = *(v275 + 1664);
    v224 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"Width", v224);
    CFRelease(v224);
    LODWORD(v308[0]) = *(v275 + 1668);
    v225 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"Height", v225);
    CFRelease(v225);
    _VideoReceiver_AddMLStatsToReportingDictionary(v274, v268);
    LODWORD(v308[0]) = (*(v275 + 1862) - *(v275 + 1864));
    v226 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VFExCnt", v226);
    CFRelease(v226);
    LODWORD(v308[0]) = *(v275 + 1884);
    v227 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VRxSinglePktFrame", v227);
    CFRelease(v227);
    LODWORD(v308[0]) = 0;
    v228 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"APRL", v228);
    CFRelease(v228);
    LODWORD(v308[0]) = 0;
    v229 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"AVDL", v229);
    CFRelease(v229);
    LODWORD(v308[0]) = 0;
    v230 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"ADL", v230);
    CFRelease(v230);
    LODWORD(v308[0]) = 0;
    v231 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"ATRL", v231);
    CFRelease(v231);
    LODWORD(v308[0]) = 0;
    v232 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"MPRL", v232);
    CFRelease(v232);
    LODWORD(v308[0]) = 0;
    v233 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"MVDL", v233);
    CFRelease(v233);
    LODWORD(v308[0]) = 0;
    v234 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"MDL", v234);
    CFRelease(v234);
    LODWORD(v308[0]) = 0;
    v235 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"MTRL", v235);
    CFRelease(v235);
    LODWORD(v308[0]) = (_VideoReceiver_GetTotalPLR(v274) * 10000.0);
    v236 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"VRxPLR", v236);
    CFRelease(v236);
    LODWORD(v308[0]) = v260;
    v237 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"RTPDownlinkIngressVideoPkts", v237);
    CFRelease(v237);
    LODWORD(v308[0]) = v266;
    v238 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"RTPDownlinkEgressVideoPkts", v238);
    CFRelease(v238);
    LODWORD(v308[0]) = v261;
    v239 = CFNumberCreate(alloca, kCFNumberIntType, v308);
    CFDictionaryAddValue(v268, @"RTPDownlinkIngressNonDupMediaPkts", v239);
    CFRelease(v239);
    v240 = *v274;
    if (v240)
    {
      v241 = 0;
      v242 = 0;
      v243 = v274 + 1494;
      v244 = v272;
      do
      {
        v241 += *(v243 - 1);
        v242 += *v243;
        v243 += 1088;
        --v240;
      }

      while (v240);
      if (v241)
      {
        LODWORD(v308[0]) = v241;
        v245 = CFNumberCreate(alloca, kCFNumberIntType, v308);
        CFDictionaryAddValue(v268, @"LTRAckTx", v245);
        CFRelease(v245);
        v244 = v272;
      }

      if (v242)
      {
        LODWORD(v308[0]) = v242;
        v246 = CFNumberCreate(alloca, kCFNumberIntType, v308);
        CFDictionaryAddValue(v268, @"LossFbTx", v246);
        CFRelease(v246);
        v244 = v272;
      }

      LODWORD(v240) = *v274;
      if (*v274)
      {
        v247 = 0;
        v248 = 1495;
        v249 = *v274;
        do
        {
          v247 += v274[v248];
          v248 += 1088;
          --v249;
        }

        while (v249);
        if (v247)
        {
          LODWORD(v308[0]) = v247;
          v250 = CFNumberCreate(alloca, kCFNumberIntType, v308);
          CFDictionaryAddValue(v268, @"RtcpAppLTRAckTx", v250);
          CFRelease(v250);
          v244 = v272;
          LODWORD(v240) = *v274;
        }
      }
    }

    else
    {
      v244 = v272;
    }

    *(v275 + 1864) = *(v275 + 1862);
    *(v275 + 1836) = 0;
    *(v275 + 1844) = 0;
    *(v275 + 1880) = 0u;
    *(v275 + 1790) = 0;
    *(v274 + 2675) = xmmword_1DBD480B0;
    *(v275 + 1872) = 0;
    *v269 = 0;
    *(v269 + 8) = 0;
    *v271 = NAN;
    *(v275 + 2308) = 0;
    *v262 = *v265;
    *(v275 + 1796) = v263;
    *(v275 + 1800) = v270;
    *(v275 + 1812) = v244;
    *(v275 + 1820) = v267;
    *v264 = v273;
    if (v240)
    {
      v251 = v274;
      v240 = v240;
      do
      {
        v251[468] = v251[467];
        *(v251 + 930) = v251[466];
        *(v251 + 1493) = 0;
        v251[1495] = 0;
        v251 += 1088;
        --v240;
      }

      while (v240);
    }

    if (!*(v275 + 2508))
    {
      if (VCOverlayManager_isOverlayEnabled())
      {
        OverlaySourceForToken = VCOverlayManager_createOverlaySourceForToken(*(v274 + 187), 1u);
        *(v275 + 2508) = OverlaySourceForToken;
        VCOverlaySource_SetParticipantID(OverlaySourceForToken, *(v274 + 172));
      }
    }

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t ___VideoReceiver_RegisterTransportCallbacks_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 42947) == 1)
  {
    v5 = *(*(a1 + 32) + 42952);
    if (v5)
    {
      _VideoReceiverUtil_LogRtpMediaPacket(a3 + 8, v5, *(a1 + 40));
    }
  }

  return _VideoReceiver_RTPPacketCallback(a2, a3);
}

uint64_t ___VideoReceiver_RegisterTransportCallbacks_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CheckInHandleDebug();
  if (result)
  {
    _VideoReceiver_ProcessVideoRTCPInternal(result, a2, a3);

    return CheckOutHandleDebug();
  }

  return result;
}

@end