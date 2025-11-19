@interface VideoTransmitter
@end

@implementation VideoTransmitter

uint64_t ___VideoTransmitter_HandleDataBuffer_block_invoke(uint64_t a1)
{
  _VideoTransmitter_TransmitFrame(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  _VideoTransmitter_ProcessEncoderArgs(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  return CheckOutHandleDebug();
}

uint64_t ___VideoTransmitter_RetransmitPacketDispatched_block_invoke(uint64_t a1)
{
  result = RTPTransportResendRTP(*(a1 + 48), *(a1 + 40), *(a1 + 64), *(a1 + 68), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___VideoTransmitter_ReportingRegisterPeriodicTask_block_invoke(uint64_t a1, uint64_t a2)
{
  v190 = *MEMORY[0x1E69E9840];
  result = CheckInHandleDebug();
  if (result)
  {
    v5 = result;
    v6 = result + 23632;
    v7 = atomic_load((result + 23824));
    if (v7)
    {
      v8 = (result + 16886);
      v150 = 0.0;
      VideoTransmitter_GetFramerate(1.0, *(a1 + 32), &v150);
      v10 = v150;
      if (v150 > 0.0)
      {
        ++*(v5 + 16958);
        LOWORD(v9) = *(v5 + 16952);
        *&v11 = v10 + v9;
        *(v5 + 16952) = *&v11;
        LOWORD(v11) = *(v5 + 16954);
        v12 = v11;
        if (v10 > v12)
        {
          *(v5 + 16954) = v10;
        }

        LOWORD(v12) = *(v5 + 16956);
        if (v10 < *&v12)
        {
          *(v5 + 16956) = v10;
        }
      }

      v149 = 0.0;
      VideoTransmitter_GetBitrate(1.0, *(a1 + 32), &v149);
      v13 = v149;
      if (*(v5 + 368) < v149)
      {
        *(v5 + 368) = v149;
      }

      if (*(v5 + 376) > v13)
      {
        *(v5 + 376) = v13;
      }

      if (a2)
      {
        _VideoTransmitter_GetBitrates(v5, (v5 + 328), (v5 + 336), (v5 + 344), (v5 + 352), (v5 + 360), *(v5 + 12));
        v14 = selectDestinationForRTMetrics();
        v15 = *(v5 + 12);
        v16 = 0.0;
        v17 = 0.0;
        v18 = 0.0;
        if (v15)
        {
          v17 = *(v5 + 320) / v15;
          v18 = *(v5 + 324) / v15;
        }

        *valuePtr = (v17 / 1000.0 + 0.5);
        v19 = *MEMORY[0x1E695E480];
        v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRHDRVCP", v20);
        CFRelease(v20);
        *valuePtr = (v18 / 1000.0 + 0.5);
        v21 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRFECVCP", v21);
        CFRelease(v21);
        v22 = *(v5 + 328);
        if (v22 > 0.0)
        {
          v16 = *(v5 + 344) * 100.0 / v22;
        }

        v23 = v16;
        *valuePtr = v23;
        v24 = CFNumberCreate(v19, kCFNumberFloat32Type, valuePtr);
        CFDictionaryAddValue(v14, @"VTxFECOverhead", v24);
        CFRelease(v24);
        *valuePtr = (*(v5 + 328) / 1000.0 + 0.5);
        v25 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRMedia", v25);
        CFRelease(v25);
        *valuePtr = (*(v5 + 336) / 1000.0 + 0.5);
        v26 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRHDR", v26);
        CFRelease(v26);
        *valuePtr = (*(v5 + 344) / 1000.0 + 0.5);
        v27 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRFEC", v27);
        CFRelease(v27);
        *valuePtr = (*(v5 + 360) / 1000.0 + 0.5);
        v28 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxR", v28);
        CFRelease(v28);
        *valuePtr = (*(v5 + 368) / 1000.0 + 0.5);
        v29 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRMax", v29);
        CFRelease(v29);
        *valuePtr = (*(v5 + 376) / 1000.0 + 0.5);
        v30 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRMin", v30);
        CFRelease(v30);
        *valuePtr = (*(v5 + 36) / 1000.0 + 0.5);
        v31 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRTarget", v31);
        CFRelease(v31);
        *valuePtr = (*(v5 + 352) / 1000.0 + 0.5);
        v32 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxMetadataOverhead", v32);
        CFRelease(v32);
        *valuePtr = *(v5 + 16);
        v33 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"CodecPayload", v33);
        CFRelease(v33);
        if (*(v6 + 268))
        {
          v34 = 2;
        }

        else
        {
          v34 = 1;
        }

        *valuePtr = v34;
        v35 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"CodecLayers", v35);
        CFRelease(v35);
        *valuePtr = *(v6 + 12);
        v36 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"QID", v36);
        CFRelease(v36);
        if (*(v5 + 16958))
        {
          LOWORD(v37) = *(v5 + 16952);
          *&v37 = v37 / *(v5 + 16958);
        }

        else
        {
          LODWORD(v37) = 0;
        }

        *valuePtr = v37;
        v38 = CFNumberCreate(v19, kCFNumberFloat32Type, valuePtr);
        CFDictionaryAddValue(v14, @"ATFr", v38);
        CFRelease(v38);
        *valuePtr = *(v5 + 16954);
        v39 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"XTFr", v39);
        CFRelease(v39);
        v40 = *(v5 + 16956);
        if (v40 == 0xFFFF)
        {
          v40 = 0;
        }

        *valuePtr = v40;
        v41 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"NTFr", v41);
        CFRelease(v41);
        *valuePtr = *(v5 + 4832);
        v42 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VFEC", v42);
        CFRelease(v42);
        *valuePtr = *v8;
        v43 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"AFECL", v43);
        CFRelease(v43);
        *v8 = 0;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *valuePtr = (VCFECGeneratorCommon_GetProcessingAverageTime(DerivedStorage) * 10000000.0);
        v45 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxFECTime", v45);
        CFRelease(v45);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v46 = VRTraceErrorLogLevelToCSTR();
          v47 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v48 = *(v6 + 184);
            v49 = *(v6 + 188);
            *valuePtr = 136316418;
            *&valuePtr[4] = v46;
            v152 = 2080;
            v153 = "_VideoTransmitter_ReportingRegisterPeriodicTask_block_invoke";
            v154 = 1024;
            v155 = 889;
            v156 = 2048;
            *v157 = v5;
            *&v157[8] = 1024;
            *&v157[10] = v48;
            *&v157[14] = 1024;
            *&v157[16] = v49;
            _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter[%p] numPSFBltrACKsReceived=%u, numAPPltrACKsReceived=%u", valuePtr, 0x32u);
          }
        }

        if (*(v6 + 184))
        {
          *valuePtr = *(v6 + 184);
          v50 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
          CFDictionaryAddValue(v14, @"LTRAckRx", v50);
          CFRelease(v50);
          *(v6 + 184) = 0;
        }

        if (*(v6 + 188))
        {
          *valuePtr = *(v6 + 188);
          v51 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
          CFDictionaryAddValue(v14, @"RtcpAppLTRAckRx", v51);
          CFRelease(v51);
          *(v6 + 188) = 0;
        }

        v52 = *(v5 + 23832);
        if (v52 && *(v6 + 114) == 1)
        {
          VCNACKConsumer_GetStatistics(v52, v14);
        }

        *(v5 + 368) = xmmword_1DBD480B0;
        *(v5 + 16952) = 0xFFFF00000000;
        if (*(v5 + 1928))
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = (v5 + 560);
          do
          {
            v148 = 0;
            RTPGetPacketSent(*v56, &v148);
            v54 += v148;
            *valuePtr = 0;
            v57 = *v56;
            v56 += 19;
            RTPGetUplinkReportingStats(v57, valuePtr);
            v55 += *valuePtr;
            ++v53;
          }

          while (v53 < *(v5 + 1928));
        }

        else
        {
          v55 = 0;
          v54 = 0;
        }

        v58 = *(v5 + 23616);
        if (v55 <= v58)
        {
          LODWORD(v58) = 0;
        }

        v141 = v55;
        v59 = *(v5 + 264);
        theDict = v59 - *(v5 + 268);
        *(v5 + 268) = v59;
        *valuePtr = v55 - v58;
        v60 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"RTPUplinkIngressVideoPkts", v60);
        CFRelease(v60);
        *valuePtr = v54;
        v61 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VPS", v61);
        CFRelease(v61);
        *valuePtr = *(v5 + 16960);
        v62 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VMediaPktSent", v62);
        CFRelease(v62);
        *valuePtr = *(v5 + 16912);
        allocator = v19;
        v63 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VNWET", v63);
        CFRelease(v63);
        v64 = v5 + 18232;
        v65 = *(v5 + 18232);
        if ((*(v5 + 18216) & 1) == 0)
        {
          v65 = (v65 / fmax((micro() - *(v5 + 18224)) / 5.0, 1.0));
          *(v5 + 18216) = 1;
        }

        *valuePtr = v65;
        v66 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VFCCnt", v66);
        CFRelease(v66);
        *valuePtr = *(v5 + 18260);
        v67 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"IdleFrameCount", v67);
        CFRelease(v67);
        v68 = v14;
        v140 = (v5 + 18240);
        *valuePtr = *(v5 + 18240);
        v69 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"EncInFrameCnt", v69);
        CFRelease(v69);
        v70 = (v5 + 18244);
        *valuePtr = *(v5 + 18244);
        v71 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v68, @"EncOutFrameCnt", v71);
        CFRelease(v71);
        v72 = (v5 + 18256);
        *valuePtr = *(v5 + 18256);
        v73 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v68, @"VTxNoFecTF", v73);
        CFRelease(v73);
        v143 = v5 + 16886;
        *valuePtr = *(v5 + 16992);
        v74 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v68, @"VTxSinglePktFrame", v74);
        CFRelease(v74);
        *valuePtr = v59;
        v75 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v68, @"VTxKeyFramesSent", v75);
        CFRelease(v75);
        v146 = v5;
        *valuePtr = *(v5 + 272);
        v76 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v68, @"VTxTotalIDR", v76);
        CFRelease(v76);
        *valuePtr = theDict;
        v77 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        v142 = v68;
        CFDictionaryAddValue(v68, @"VTxDeltaKeyFramesSent", v77);
        CFRelease(v77);
        if (*(v6 + 376) == 1)
        {
          v78 = *(v6 + 380);
          if (v78 > 0.0 && (*(v6 + 384) / v78) > 1.0)
          {
            ++*(v6 + 388);
          }

          ++*(v6 + 392);
          *(v6 + 380) = 0;
        }

        v79 = *v70;
        v80 = *v6;
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v81 = VRTraceErrorLogLevelToCSTR();
          v82 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v139 = *(v146 + 440);
            v83 = FourccToCStr(*(v146 + 528));
            v84 = *v64;
            v85 = *(v143 + 1350);
            v86 = *(v143 + 1362);
            v87 = *(v143 + 1378);
            v88 = *v140;
            v89 = *(v146 + 12);
            v90 = *v70;
            v91 = *(v143 + 1366);
            v92 = *v72;
            v93 = *(v143 + 106);
            *valuePtr = 136321026;
            v95 = *(v146 + 328);
            v94 = *(v146 + 336);
            v96 = *(v146 + 344);
            v97 = *(v146 + 360);
            v98 = *(v146 + 4780);
            *&valuePtr[4] = v81;
            v152 = 2080;
            v153 = "_VideoTransmitter_ReportingRegisterPeriodicTask_block_invoke";
            v154 = 1024;
            v155 = 964;
            v156 = 1024;
            *v157 = v139;
            *&v157[4] = 2080;
            *&v157[6] = v83;
            *&v157[14] = 1024;
            *&v157[16] = v84;
            LOWORD(v158) = 1024;
            *(&v158 + 2) = v85;
            HIWORD(v158) = 1024;
            *v159 = v86;
            *&v159[4] = 1024;
            *&v159[6] = v87;
            v160 = 1024;
            v161 = v88;
            v162 = 1024;
            v163 = v79 / v80;
            v164 = 2048;
            v165 = ((v79 / v80) / v89);
            v166 = 1024;
            v167 = v90;
            v168 = 2048;
            v169 = (v90 / v89);
            v170 = 1024;
            v171 = v91;
            v172 = 1024;
            v173 = v92;
            v174 = 1024;
            v175 = v93;
            v176 = 2048;
            v177 = v95;
            v178 = 2048;
            v179 = v94;
            v180 = 2048;
            v181 = v96;
            v182 = 2048;
            v183 = v97;
            v184 = 2048;
            v185 = v16;
            v186 = 1024;
            v187 = v98;
            v188 = 1024;
            v189 = theDict;
            _os_log_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VideoTransmitter streamID=%d, streamGroupId=%s, toBeBufferedFrameCount=%d, bufferedFrameCount=%d, encoderProcCount=%d, transmitterProcCount=%d toBeEncodedFrameCount=%d, encodedFullFrameCount=%d, encodedFullFrameRate=%f, encodedFrameCount=%d, encodedFrameRate=%f, transmittedFrameCount=%d, transmittedNonFECFrameCount=%d, singlePacketFrameCount=%d, currentMediaBitrate=%f, currentHeaderBitrate=%f, currentFECBitrate=%f, currentTotalBitrate=%f, currentFECOverhead=%2.4f targetBitrate=%d deltaKeyFramesSent=%d", valuePtr, 0xBAu);
          }
        }

        _VideoTransmitter_ReportInvalidVideoTxCaptureFrameCount(v146);
        *(v146 + 360) = 0;
        *(v143 + 106) = 0;
        *(v146 + 320) = 0u;
        *(v146 + 336) = 0u;
        *v64 = 0u;
        *(v64 + 16) = 0u;
        *(v64 + 32) = 0;
        v99 = MEMORY[0x1E695E9D8];
        v100 = MEMORY[0x1E695E9E8];
        theDicta = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        Mutable = CFDictionaryCreateMutable(allocator, 0, v99, v100);
        v102 = CFDictionaryCreateMutable(allocator, 0, v99, v100);
        v103 = CFDictionaryCreateMutable(allocator, 0, v99, v100);
        v104 = CFDictionaryCreateMutable(allocator, 0, v99, v100);
        v105 = CFDictionaryCreateMutable(allocator, 0, v99, v100);
        v106 = 0;
        v107 = (v143 + 1906);
        do
        {
          if (*(v107 - 6))
          {
            v108 = CFStringCreateWithFormat(allocator, 0, @"%u", v106);
            *valuePtr = *(v107 - 5);
            v109 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
            CFDictionaryAddValue(Mutable, v108, v109);
            CFRelease(v109);
            *valuePtr = *(v107 - 4);
            v110 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
            CFDictionaryAddValue(v102, v108, v110);
            CFRelease(v110);
            *valuePtr = *(v107 - 6);
            v111 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
            CFDictionaryAddValue(v103, v108, v111);
            CFRelease(v111);
            *valuePtr = *v107;
            v112 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
            CFDictionaryAddValue(v104, v108, v112);
            CFRelease(v112);
            *valuePtr = *(v107 - 1);
            v113 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
            CFDictionaryAddValue(v105, v108, v113);
            CFRelease(v113);
            CFRelease(v108);
          }

          ++v106;
          v107 += 12;
        }

        while (v106 != 101);
        CFDictionaryAddValue(theDicta, @"VFecDB", Mutable);
        CFDictionaryAddValue(theDicta, @"VFecPB", v102);
        CFDictionaryAddValue(theDicta, @"VFecTF", v103);
        CFDictionaryAddValue(theDicta, @"VFecMPC", v104);
        CFDictionaryAddValue(theDicta, @"VFecPPC", v105);
        CFRelease(Mutable);
        CFRelease(v102);
        CFRelease(v103);
        CFRelease(v104);
        CFRelease(v105);
        CFDictionaryAddValue(v142, @"VTxFecStats", theDicta);
        CFRelease(theDicta);
        v114 = 0;
        v115 = (v143 + 1402);
        do
        {
          if (*v115)
          {
            v116 = FECUtil_GranularLevelToPrecentage(v114);
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v117 = VRTraceErrorLogLevelToCSTR();
              v118 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v119 = *(v115 - 2);
                v120 = *(v115 - 1);
                v121 = *v115;
                *valuePtr = 136316930;
                *&valuePtr[4] = v117;
                v152 = 2080;
                v153 = "_VideoTransmitter_ReportingRegisterPeriodicTask_block_invoke";
                v154 = 1024;
                v155 = 994;
                v156 = 2048;
                *v157 = v146;
                *&v157[8] = 2048;
                *&v157[10] = v116;
                *&v157[18] = 2048;
                v158 = v119;
                *v159 = 2048;
                *&v159[2] = v120;
                v160 = 1024;
                v161 = v121;
                _os_log_impl(&dword_1DB56E000, v118, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter[%p] FEC health report: fecLevel:%.2f data:%llu, parity:%llu, totalFrame:%d", valuePtr, 0x4Au);
              }
            }
          }

          ++v114;
          v115 += 12;
        }

        while (v114 != 10);
        bzero((v146 + 18752), 0x12F0uLL);
        *(v146 + 18720) = 0u;
        *(v146 + 18736) = 0u;
        *(v146 + 18688) = 0u;
        *(v146 + 18704) = 0u;
        *(v146 + 18656) = 0u;
        *(v146 + 18672) = 0u;
        *(v146 + 18624) = 0u;
        *(v146 + 18640) = 0u;
        *(v146 + 18592) = 0u;
        *(v146 + 18608) = 0u;
        *(v146 + 18560) = 0u;
        *(v146 + 18576) = 0u;
        *(v146 + 18528) = 0u;
        *(v146 + 18544) = 0u;
        *(v146 + 18496) = 0u;
        *(v146 + 18512) = 0u;
        *(v146 + 18464) = 0u;
        *(v146 + 18480) = 0u;
        *(v146 + 18432) = 0u;
        *(v146 + 18448) = 0u;
        *(v146 + 18400) = 0u;
        *(v146 + 18416) = 0u;
        *(v146 + 18368) = 0u;
        *(v146 + 18384) = 0u;
        *(v146 + 18336) = 0u;
        *(v146 + 18352) = 0u;
        *(v146 + 18304) = 0u;
        *(v146 + 18320) = 0u;
        *(v146 + 18272) = 0u;
        *(v146 + 18288) = 0u;
        *valuePtr = 0;
        v122 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"AVPEL", v122);
        CFRelease(v122);
        *valuePtr = 0;
        v123 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"AVEL", v123);
        CFRelease(v123);
        *valuePtr = 0;
        v124 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"AVPL", v124);
        CFRelease(v124);
        *valuePtr = 0;
        v125 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"APSL", v125);
        CFRelease(v125);
        *valuePtr = 0;
        v126 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"ATSL", v126);
        CFRelease(v126);
        *valuePtr = 0;
        v127 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"MVPEL", v127);
        CFRelease(v127);
        *valuePtr = 0;
        v128 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"MVEL", v128);
        CFRelease(v128);
        *valuePtr = 0;
        v129 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"MVEL", v129);
        CFRelease(v129);
        *valuePtr = 0;
        v130 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"MPSL", v130);
        CFRelease(v130);
        *valuePtr = 0;
        v131 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"MTSL", v131);
        CFRelease(v131);
        pthread_mutex_lock((v146 + 17232));
        *valuePtr = *(v143 + 410);
        v132 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"AFL", v132);
        CFRelease(v132);
        *valuePtr = *(v143 + 414);
        v133 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"VFL", v133);
        CFRelease(v133);
        *(v146 + 17296) = 0;
        pthread_mutex_unlock((v146 + 17232));
        *valuePtr = *(v146 + 424);
        v134 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v142, @"AVHTDCount", v134);
        CFRelease(v134);
        *valuePtr = *(v146 + 408);
        v135 = CFNumberCreate(allocator, kCFNumberDoubleType, valuePtr);
        CFDictionaryAddValue(v142, @"AVHTDMax", v135);
        CFRelease(v135);
        *valuePtr = *(v146 + 416);
        v136 = CFNumberCreate(allocator, kCFNumberDoubleType, valuePtr);
        CFDictionaryAddValue(v142, @"AVHTDMin", v136);
        CFRelease(v136);
        *valuePtr = *(v146 + 400);
        v137 = CFNumberCreate(allocator, kCFNumberDoubleType, valuePtr);
        CFDictionaryAddValue(v142, @"AVHTDSum", v137);
        CFRelease(v137);
        *valuePtr = *(v146 + 392);
        v138 = CFNumberCreate(allocator, kCFNumberDoubleType, valuePtr);
        CFDictionaryAddValue(v142, @"AVHTDAbsSum", v138);
        CFRelease(v138);
        *(v146 + 424) = 0;
        *(v146 + 408) = xmmword_1DBD485F0;
        *(v146 + 392) = 0;
        *(v146 + 400) = 0;
        *(v146 + 23616) = v141;
      }

      return CheckOutHandleDebug();
    }

    else
    {

      return CheckOutHandleDebug();
    }
  }

  return result;
}

int32x2_t ___VideoTransmitter_RegisterStatistics_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3)
  {
    v2 = *(a2 + 48);
    v3 = *(a1 + 32);
    v3[2951].i32[0] = *(a2 + 40);
    result = vrev64_s32(v2);
    v3[2950] = result;
  }

  return result;
}

void ___VideoTransmitter_TransmitEncodedFrame_block_invoke(uint64_t a1)
{
  _VideoTransmitter_TransmitFrame(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  _VideoTransmitter_ProcessEncoderArgs(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end