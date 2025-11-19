uint64_t segPumpStreamSchedulePreloadHintRead()
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = segPumpStreamHasPreloadHint(v0);
  if (result)
  {
    result = segPumpShouldDoSegmentReadAheads(DerivedStorage);
    if (result)
    {
      v3 = OUTLINED_FUNCTION_298();
      result = segPumpStreamGetFuturePreloadCount(v3, v4);
      if (result)
      {
        if (segPumpMediaConnectionIsActive(*(v0 + 792)))
        {
          return 0;
        }

        PreloadHint = FigMediaPlaylistGetPreloadHint(*(v0 + 56));
        v6 = *(v0 + 24);
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(PreloadHint);
        v8 = OUTLINED_FUNCTION_182_1();
        segPumpEnsureMediaSegmentURLs(v8, v9, v6);
        if (MediaFilePrivateData[2])
        {
          for (i = *(v0 + 680); i; i = *i)
          {
            v11 = OUTLINED_FUNCTION_618();
            if (segPumpMediaConnectionIncludesMedia(v11, v12, PreloadHint))
            {
              return 0;
            }
          }

          v13 = *(v0 + 696);
          if (v13)
          {
            v14 = *(v13 + 32);
          }

          else
          {
            v14 = 0;
          }

          OUTLINED_FUNCTION_317_0();
          if (v15 == v16)
          {
            do
            {
              if (*(DerivedStorage + 337))
              {
                v17 = 1;
              }

              else
              {
                v17 = *(DerivedStorage + 8396);
              }

              if (v17 <= 0)
              {
                break;
              }

              v18 = **(v0 + 768);
              if (!v18)
              {
                break;
              }

              if (!segPumpMediaConnectionIsActive(v18))
              {
                v14 = *(**(v0 + 768) + 32);
              }

              OUTLINED_FUNCTION_283_1();
            }

            while (v15 != v16);
          }

          *(segPumpGetMediaFilePrivateData(PreloadHint) + 6) = 0;
          *(segPumpGetMediaFilePrivateData(PreloadHint) + 7) = 0;
          OUTLINED_FUNCTION_171();
          OUTLINED_FUNCTION_135_1();
          result = segPumpReadMediaFile(v19, v20, v21, v22, v23, v24, v14);
          if (!result)
          {
            segPumpSetMediaConnectionIsDormant(DerivedStorage, *(v0 + 792), 1);
            return 0;
          }
        }

        else
        {
          OUTLINED_FUNCTION_111();

          return FigSignalErrorAtGM();
        }
      }
    }
  }

  return result;
}

uint64_t segPumpReadMediaFile(uint64_t a1, uint64_t a2, const void *a3, int a4, int a5, int a6, uint64_t a7, uint64_t *a8)
{
  HIDWORD(v83) = a6;
  HIDWORD(v81) = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3);
  v14 = *(a2 + 752);
  cf[0] = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (a8)
  {
    *a8 = 0;
  }

  dataLength = a8;
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = segPumpGetMediaFilePrivateData(a3);
  segPumpEnsureMediaSegmentURLs(a3, v16, v17);
  if (!v18[2])
  {
LABEL_105:
    OUTLINED_FUNCTION_40_0();
    MediaConnection = FigSignalErrorAtGM();
    goto LABEL_78;
  }

  *(a2 + 104) = MediaFilePrivateData[4];
  *(MediaFilePrivateData + 72) = 0;
  *(MediaFilePrivateData + 74) = 0;
  if (*(DerivedStorage + 8392))
  {
    v19 = *(a2 + 680);
    if (v19)
    {
      while (1)
      {
        v20 = OUTLINED_FUNCTION_415_0();
        if (segPumpMediaConnectionIncludesMedia(v20, v21, a3))
        {
          break;
        }

        v19 = *v19;
        if (!v19)
        {
          goto LABEL_8;
        }
      }

      CMBaseObjectGetDerivedStorage();
      v52 = segPumpAccumConnCompletesMediaRange(v19, a3);
      v53 = *(a2 + 24);
      segPumpGetMediaFilePrivateData(a3);
      v54 = OUTLINED_FUNCTION_284();
      segPumpEnsureMediaSegmentURLs(v54, v55, v53);
      v56 = OUTLINED_FUNCTION_617();
      segPumpSetMediaFileForMediaConnection(v56, v57, a2, a3, v58);
      if (v52)
      {
        v59 = *(a2 + 880);
        v60 = OUTLINED_FUNCTION_163_1();
        MediaConnection = segPumpDeliverAccumulatedBuffer(v60, v61, a2, v19, a3, 1, v62, v63, v78, v79, dataLength, v81, a7, v83, a1, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8], cf[9], cf[10]);
        if (MediaConnection)
        {
LABEL_78:
          v65 = MediaConnection;
          goto LABEL_102;
        }

        if (v59 == *(a2 + 880))
        {
          OUTLINED_FUNCTION_163_1();
          OUTLINED_FUNCTION_320_1();
          MediaConnection = segPumpStreamProceedAfterMediaAndKeyArrival(v64);
          goto LABEL_78;
        }
      }

      goto LABEL_101;
    }
  }

LABEL_8:
  if (a4 || segPumpShouldDoSegmentReadAheads(DerivedStorage))
  {
    v22 = *(a2 + 776) + v14;
    v23 = v22 + segPumpStreamHasPreloadHint(a2);
    v14 = v23 + segPumpStreamHasPreloadMapHint(a2);
  }

  else if (!*(DerivedStorage + 8896) && FigMediaSegmentSpecifierGetBytesToRead(a3) >= 1 && *(a2 + 752) < *(a2 + 760))
  {
    OUTLINED_FUNCTION_299_0();
    if (v26 && *(a2 + 406) && !FigMediaSegmentSpecifierIsFragment(a3) && (!a3 || FigMediaSegmentSpecifierGetType(a3) != 1))
    {
      v66 = *(a2 + 760);
      v14 = v66 + 1;
      *(a2 + 752) = v66;
    }
  }

  v24 = *(a2 + 744);
  if (v14 <= v24)
  {
    v26 = v24 > v14 && (*(DerivedStorage + 8896) | a4) == 0;
    if (v26)
    {
      do
      {
        if (*(a2 + 680))
        {
          v27 = *(a2 + 688);
        }

        else
        {
          v27 = 0;
        }

        if (segPumpMediaConnectionIsActive(v27))
        {
          break;
        }

        v28 = OUTLINED_FUNCTION_235();
        segPumpDestroyMediaConnection(v28, v29, v27);
      }

      while (*(a2 + 744) > v14);
      v30 = *(a2 + 680);
      v31 = v30;
      while (1)
      {
        v31 = *v31;
        if (!v31)
        {
          v31 = *(a2 + 680);
        }

        if (!segPumpMediaConnectionIsActive(v31))
        {
          break;
        }

        if (v31 == v30)
        {
          v31 = v30;
          break;
        }
      }

      *(a2 + 696) = v31;
    }
  }

  else
  {
    while (*(a2 + 744) < v14)
    {
      MediaConnection = segPumpCreateMediaConnection(a2);
      if (MediaConnection)
      {
        goto LABEL_78;
      }
    }
  }

  if (a4)
  {
    v32 = *(a2 + 696);
    if (!v32)
    {
      v32 = *(a2 + 680);
    }

    v33 = v32;
    while (1)
    {
      v33 = *v33;
      if (!v33)
      {
        v33 = *(a2 + 680);
      }

      if (!segPumpMediaConnectionIsActive(v33))
      {
        break;
      }

      if (v33 == v32)
      {
        v33 = v32;
        break;
      }
    }

    if (!v33 || v33 == *(a2 + 696))
    {
      goto LABEL_105;
    }
  }

  else
  {
    if (!*(a2 + 1096))
    {
      v67 = FigMediaSegmentSpecifierGetBytesToRead(a3);
      if (a3)
      {
        if (v67 >= 1 && !FigMediaSegmentSpecifierGetType(a3))
        {
          v68 = (8 * FigMediaSegmentSpecifierGetBytesToRead(a3));
          *(a2 + 1096) = (v68 / FigMediaSegmentSpecifierGetTimeInSeconds(a3));
        }
      }
    }

    v33 = *(a2 + 696);
  }

  *(a2 + 960) = UpTimeNanoseconds;
  *(v33 + 144) = 0;
  *(v33 + 56) = 0;
  *(v33 + 64) = 0;
  *(v33 + 48) = UpTimeNanoseconds;
  *(v33 + 209) = BYTE4(v83);
  if (*(v33 + 80))
  {
    v34 = (UpTimeNanoseconds - *(v33 + 40)) / 1000000000.0;
  }

  else
  {
    *(v33 + 40) = UpTimeNanoseconds;
    *(v33 + 72) = 0;
    v34 = 0.0;
  }

  v35 = *(a2 + 24);
  v36 = segPumpGetMediaFilePrivateData(a3);
  v37 = OUTLINED_FUNCTION_284();
  segPumpEnsureMediaSegmentURLs(v37, v38, v35);
  v39 = v36[2];
  if (v39)
  {
    v40 = CFRetain(v39);
  }

  else
  {
    v40 = 0;
  }

  cf[0] = v40;
  if (*(DerivedStorage + 328))
  {
    MediaConnection = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a2 + 8), cf);
    if (MediaConnection)
    {
      goto LABEL_78;
    }
  }

  segPumpReadMediaFileURL();
  if (MediaConnection)
  {
    goto LABEL_78;
  }

  if (a3 && !FigMediaSegmentSpecifierGetType(a3))
  {
    *(a2 + 402) = 0;
  }

  if (*(DerivedStorage + 8280) && !*(DerivedStorage + 8896))
  {
    v41 = OUTLINED_FUNCTION_178();
    DownloadTimerIntervalForMedia = segPumpGetDownloadTimerIntervalForMedia(v41, v42);
    MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(a3);
    *(a2 + 808) = 0;
    if (MapSegmentSpecifier)
    {
      v45 = segPumpGetMediaFilePrivateData(MapSegmentSpecifier);
      v46 = v45[10];
      if (v46 > 0.0 && DownloadTimerIntervalForMedia > v46)
      {
        DownloadTimerIntervalForMedia = DownloadTimerIntervalForMedia - v46;
        *(a2 + 808) = v46;
      }

      v45[10] = 0.0;
    }

    if (v34 < DownloadTimerIntervalForMedia && v34 > 0.0)
    {
      DownloadTimerIntervalForMedia = DownloadTimerIntervalForMedia - v34;
    }

    if (v33 == *(a2 + 696))
    {
      v69 = *(a2 + 752);
      if (v69 >= 1)
      {
        for (i = 0; i < v69; ++i)
        {
          if (*(a2 + 696 + 8 * i))
          {
            OUTLINED_FUNCTION_32_1();
            FigHTTPCreateTimer(v72, v73, v74, (v71 + 112), DownloadTimerIntervalForMedia);
            v69 = *(a2 + 752);
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_32_1();
      FigHTTPCreateTimer(v49, v50, v51, (v33 + 112), DownloadTimerIntervalForMedia);
    }

    v75 = OUTLINED_FUNCTION_235();
    segPumpRTCReportingUpdateMediaTimerStats(v75, v76, v33);
  }

  if (dataLength)
  {
    v65 = 0;
    *dataLength = v33;
    goto LABEL_102;
  }

LABEL_101:
  v65 = 0;
LABEL_102:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v65;
}

double segPumpStreamGetTimeDeliveredFromBeginningForVOD(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = 0.0;
  if (v2 && FigMediaPlaylistHasEndTag(v2) && FigMediaPlaylistGetPlaylistType(*(a1 + 56)) == 2)
  {
    for (i = 0; ; ++i)
    {
      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a1 + 56));
      if (MediaSegmentSpecifiers)
      {
        MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
      }

      if (i >= MediaSegmentSpecifiers)
      {
        break;
      }

      v6 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a1 + 56));
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
      if (!*(MediaFilePrivateData + 73))
      {
        break;
      }

      v3 = *(MediaFilePrivateData + 4);
    }
  }

  return v3;
}

void segPumpReadMediaFileURL()
{
  OUTLINED_FUNCTION_218_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v32 = v8;
  OUTLINED_FUNCTION_370_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(v0);
  if (v7)
  {
    v11 = MediaFilePrivateData;
    v30 = v5;
    v13 = MediaFilePrivateData + 13;
    v12 = MediaFilePrivateData[13];
    if (v12)
    {
      Length = FigStreamingCacheMediaSegmentGetLength(*(DerivedStorage + 296), *(v1 + 64), v12, 0, MediaFilePrivateData + 6);
      v16 = v11[6];
      v11[15] = v16;
      if (Length == -16243)
      {
        v11[6] = 0;
        v11[7] = 0;
        *(v11 + 71) = 0;
        v11[8] = 0;
        v13[1] = 0;
        v13[2] = 0;
        v14 = 1;
        *v13 = 0;
      }

      else
      {
        v17 = v16 == 0;
        if (Length)
        {
          v14 = 1;
        }

        else
        {
          v14 = v17;
        }
      }
    }

    else
    {
      v14 = 1;
    }

    if (v11[7])
    {
      ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v0);
      v19 = v11[8];
      if (v19 <= v11[7])
      {
        v19 = v11[7];
      }

      v11[8] = v19;
      if (v14 && ContentKeySpecifier && FigContentKeySpecifierGetEncryptionMethod(ContentKeySpecifier) - 5 >= 0xFFFFFFFE)
      {
        v11[6] = 0;
        v11[7] = 0;
      }

      else if (!FigMediaSegmentSpecifierGetStartOffset(v0))
      {
        FigMediaSegmentSpecifierGetBytesToRead(v0);
      }
    }

    *(v7 + 211) = v3;
    OUTLINED_FUNCTION_148_1();
    segPumpGetRequestedByteRangeForMediaFileHelper();
    *(v1 + 873) = 0;
    if (!*(DerivedStorage + 8896) && !*(DerivedStorage + 48) && v0 && *(v1 + 406))
    {
      FigMediaSegmentSpecifierGetType(v0);
    }

    *(v1 + 816) = 0;
    OUTLINED_FUNCTION_148_1();
    segPumpCreateMediaURLRequest(v20, v21, v22, v32, v23, v24, v25, v26, v30, v29, v30, v7, v32, 0, 0, 0, v33, v34, v35, v36, v37, v38, v39);
    if (!v27)
    {
      *(v31 + 120) = v11[6];
    }

    OUTLINED_FUNCTION_209_1();
  }

  else
  {
    OUTLINED_FUNCTION_209_1();

    FigSignalErrorAtGM();
  }
}

void MediaHandleDownloadTimer()
{
  OUTLINED_FUNCTION_813();
  v3 = v2;
  v220 = *MEMORY[0x1E69E9840];
  v169 = 0;
  v168 = 0;
  v164 = 0;
  v165 = 0;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v159 = 0u;
  v158 = 0;
  if (segPumpLockAndCopyPumpFromRetainProxy())
  {
    goto LABEL_132;
  }

  v166 = 0;
  v167 = 0;
  while (1)
  {
    v4 = *(v168 + 49);
    v5 = OUTLINED_FUNCTION_266();
    if (findConnectionFromMediaDownloadTimer(v5, v6, v7, v8, v9))
    {
      break;
    }

    OUTLINED_FUNCTION_408_1();
    if (v10)
    {
      while (1)
      {
        v4 = *(v168 + 50);
        v11 = OUTLINED_FUNCTION_266();
        if (findConnectionFromMediaDownloadTimer(v11, v12, v13, v14, v15))
        {
          goto LABEL_10;
        }

        OUTLINED_FUNCTION_408_1();
        if (v10)
        {
          goto LABEL_132;
        }
      }
    }
  }

LABEL_10:
  if (!v4)
  {
    goto LABEL_132;
  }

  if (*(v4 + 792) == v167)
  {
    goto LABEL_132;
  }

  if (*(v4 + 800) == v167)
  {
    goto LABEL_132;
  }

  v16 = *(v167 + 8);
  if (!v16 || !*(v167 + 40))
  {
    goto LABEL_132;
  }

  v17 = v168[2 * *v4 + 50];
  if (FigMediaSegmentSpecifierIsFragment(*(v167 + 8)))
  {
    v18 = v168[2] * 0.5;
  }

  else
  {
    v18 = v168[1025];
  }

  TimeInSeconds = 30.0;
  if (FigMediaSegmentSpecifierGetTimeInSeconds(v16) < 30.0)
  {
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v16);
  }

  v20 = segPumpStreamBitRateRequiredForStream(v168, v4);
  v21 = *(v168 + 2);
  if (v21 >= 0x1E)
  {
    v21 = 30;
  }

  HIDWORD(v155) = v21;
  if (FigMediaSegmentSpecifierIsFragment(v16))
  {
    v22 = v168[2];
  }

  else
  {
    v23 = *(v168 + 2);
    if (v23 <= 0xA)
    {
      v23 = 10;
    }

    v22 = v23;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v24 = 64;
  if (!*(v167 + 211))
  {
    v24 = 40;
  }

  v25 = *(v167 + v24);
  if (*(v167 + 288) <= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = *(v167 + 288);
  }

  v27 = *(v4 + 808) + (FigGetUpTimeNanoseconds() - v26) / 1000000000.0;
  if (*(v167 + 248) < 1)
  {
    if (!dword_1EAF16A30)
    {
      goto LABEL_51;
    }

    v153 = OUTLINED_FUNCTION_215_1();
    os_log_type_enabled(v153, BYTE3(v157));
    OUTLINED_FUNCTION_101_0();
    if (v10)
    {
      v40 = v39;
    }

    else
    {
      v40 = HIDWORD(v157);
    }

    if (v40)
    {
      *&v154 = v17;
      v41 = *v4;
      v42 = *(v167 + 184);
      if (v4 == v20)
      {
        v43 = ":t";
      }

      else
      {
        v43 = "";
      }

      v44 = OUTLINED_FUNCTION_232_0();
      v45 = *(v167 + 210);
      v46 = *(v167 + 216);
      v47 = *(v167 + 72);
      *v197 = 136317954;
      *&v197[4] = "MediaHandleDownloadTimer";
      v198 = 2114;
      v199 = &stru_1F0B1AFB8;
      v200 = 2048;
      v201 = v41;
      v16 = v20;
      v202 = 2048;
      v203 = v42;
      v204 = 2080;
      v205 = v43;
      v206 = 2048;
      v207 = v0;
      v208 = 2048;
      v209 = v1;
      v210 = 2048;
      v211 = v44;
      v212 = 1024;
      v213 = v45;
      v214 = 2048;
      v215 = v46;
      v216 = 2048;
      v217 = v27;
      v218 = 1024;
      v219 = v47 / 0xF4240;
      DWORD2(v152) = 114;
      *&v152 = v197;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
      v17 = *&v154;
    }
  }

  else
  {
    if (!dword_1EAF16A30)
    {
      goto LABEL_51;
    }

    v28 = OUTLINED_FUNCTION_215_1();
    os_log_type_enabled(v28, BYTE3(v157));
    OUTLINED_FUNCTION_101_0();
    if (v10)
    {
      v30 = v29;
    }

    else
    {
      v30 = HIDWORD(v157);
    }

    if (v30)
    {
      *&v154 = v17;
      v31 = *v4;
      v32 = *(v167 + 184);
      v33 = "";
      if (v4 == v20)
      {
        v33 = ":t";
      }

      v153 = v33;
      v34 = OUTLINED_FUNCTION_232_0();
      v35 = *(v167 + 210);
      v36 = *(v167 + 216);
      v37 = *(v167 + 248);
      v38 = *(v167 + 72);
      *v170 = 136318466;
      *&v170[4] = "MediaHandleDownloadTimer";
      v171 = 2114;
      v172 = &stru_1F0B1AFB8;
      v173 = 2048;
      v174 = v31;
      v175 = 2048;
      v176 = v32;
      v16 = v20;
      v177 = 2080;
      v178 = v153;
      v179 = 2048;
      v180 = v0;
      v181 = 2048;
      v182 = v1;
      v183 = 2048;
      v184 = v34;
      v185 = 1024;
      v186 = v35;
      v187 = 2048;
      v188 = v36;
      v189 = 2048;
      v190 = v37;
      v191 = 2048;
      v192 = v36 * 100.0 / v37;
      v193 = 2048;
      v194 = v27;
      v195 = 1024;
      v196 = v38 / 0xF4240;
      DWORD2(v152) = 134;
      *&v152 = v170;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
      v17 = *&v154;
    }
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_449();
  v3 = *&v17;
LABEL_51:
  if (v27 < TimeInSeconds || v27 < v18)
  {
    if (TimeInSeconds <= v18)
    {
      v49 = v18;
    }

    else
    {
      v49 = TimeInSeconds;
    }

    DownloadTimerIntervalForMedia = v49 - v27;
    goto LABEL_60;
  }

  v76 = *(v4 + 873);
  segPumpSetCurrentSegmentTooSlow(v168, v4);
  OUTLINED_FUNCTION_39_1();
  FigNetworkInterfaceReporterSamplePhysicalStatistics(v77, v78, v79, v80, v81);
  OUTLINED_FUNCTION_265_0();
  FigReportingAgentUpdateFinalTransactionMetrics(v82, v83, v84, v85);
  if (!v76)
  {
    segPumpAddMediaSegmentNoResponseErrorIfNecessary(v168, v4, v167);
  }

  v86 = (UpTimeNanoseconds - *(v167 + 48)) / 1000000000.0;
  v87 = fmax(vcvtd_n_f64_u32(*(v168 + 2), 1uLL), 2.0);
  if (v18 > v87)
  {
    v87 = v18;
  }

  if (v87 > 30.0)
  {
    v87 = 30.0;
  }

  if (v86 < v87)
  {
    DownloadTimerIntervalForMedia = v87 - v86;
LABEL_60:
    v51 = 1;
    goto LABEL_61;
  }

  DownloadTimerIntervalForMedia = fmin(v22, 30.0);
  if (*(v167 + 210) && *(v167 + 224) != *(v167 + 120))
  {
    if (v27 < TimeInSeconds + HIDWORD(v155) || *(v168 + 8392) || *(v167 + 144))
    {
      goto LABEL_60;
    }

    if (v167 == *(v4 + 696))
    {
      FigGetAllocatorForMedia();
      v142 = *(v4 + 696);
      if (v142)
      {
        v144 = *(v142 + 8);
        v143 = "Media file";
        if (v144 && FigMediaSegmentSpecifierGetType(v144) == 1)
        {
          v143 = "Map";
        }
      }

      else
      {
        v143 = "Media file";
      }

      v145 = FigMediaSegmentSpecifierGetTimeInSeconds(v16);
      LODWORD(v146) = *(v168 + 2);
      *(&v152 + 1) = (v145 + v146);
      v147 = OUTLINED_FUNCTION_173_0();
      v150 = CFStringCreateWithFormat(v147, v148, v149);
      OUTLINED_FUNCTION_175_0();
      segPumpAppendErrorLogEntry(v151, v4, (v167 + 16), -16830, @"CoreMediaErrorDomain", v150, 0, 1, v143, SHIDWORD(v143));
      CFRelease(v150);
    }

    v51 = 1;
    *(v167 + 144) = 1;
  }

  else
  {
    if (*(v168 + 336) && FigMediaSegmentSpecifierIsFragment(v16))
    {
      goto LABEL_60;
    }

    v51 = 0;
  }

LABEL_61:
  v52 = *(v168 + 1220);
  if (!v52 || !FigAlternateFilterMonitorSubStreamHasCriticalStall(TimeInSeconds, v52, *v4))
  {
    goto LABEL_63;
  }

  v88 = v4;
  if (*v4 != 1)
  {
    v89 = *(v168 + 51);
    v88 = v4;
    if (*(v89 + 16))
    {
      v88 = v4;
      if (*(v89 + 874))
      {
        if (*(*(v89 + 696) + 8))
        {
          v88 = *(v168 + 51);
        }

        else
        {
          v88 = v4;
        }
      }
    }
  }

  segPumpHandleMediaFileNetworkError(v169, v88, 0, *(*(v88 + 696) + 8), 4294951668, &v158);
  if ((v158 & 7) == 0)
  {
LABEL_63:
    if (v51)
    {
      v53 = v167;
      *(v167 + 120) = *(v167 + 224);
LABEL_65:
      v54 = OUTLINED_FUNCTION_32_1(*v168);
      v57 = FigHTTPCreateTimer(v54, v55, v56, (v53 + 112), DownloadTimerIntervalForMedia);
      OUTLINED_FUNCTION_166_0();
      segPumpRTCReportingUpdateMediaTimerStats(v58, v59, v60);
      goto LABEL_131;
    }

    v61 = v168;
    ++*(v168 + 1087);
    if (*(v61 + 1154) && *(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v62 = OUTLINED_FUNCTION_284();
      v63(v62);
    }

    v53 = v167;
    if (!*(v167 + 210) && *(v168 + 1154) && *(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v74 = OUTLINED_FUNCTION_489();
      v75(v74);
    }

    if (*(v53 + 224) <= *(v53 + 216))
    {
      goto LABEL_121;
    }

    *v170 = 0;
    if (!*(v53 + 32))
    {
      goto LABEL_121;
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      goto LABEL_121;
    }

    v64 = OUTLINED_FUNCTION_292();
    if (v65(v64))
    {
      goto LABEL_121;
    }

    v66 = *v170;
    v67 = *(v53 + 136);
    v68 = *v170 - v67;
    if (*v170 == v67)
    {
      goto LABEL_121;
    }

    v69 = *(v53 + 216) + v68;
    if (*(v53 + 256) - 1 < v69)
    {
      goto LABEL_130;
    }

    v70 = *(v53 + 248);
    if (v70 >= 1 && v69 >= v70)
    {
      goto LABEL_130;
    }

    v72 = v168;
    *(v168 + 1090) += v68;
    *(v4 + 1112) += v68;
    *(v53 + 136) = v66;
    *(v53 + 216) = v69;
    if (*v4)
    {
      if (*v4 != 1)
      {
        goto LABEL_109;
      }

      v73 = 1103;
    }

    else
    {
      v73 = 1102;
    }

    *&v72[v73] += v68;
LABEL_109:
    if (v53 != *(v4 + 696))
    {
      goto LABEL_151;
    }

    if (FigMediaSegmentSpecifierGetContentKeySpecifier(v16))
    {
      *v197 = 0;
      ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v16);
      segPumpGetCryptKeyCommonData(ContentKeySpecifier, 0, v197, v136, v137, v138, v139, v140, v152, v153, v154, v155, UpTimeNanoseconds, v157, v158, v159, *(&v159 + 1));
      if (appended)
      {
        goto LABEL_129;
      }

      if (!*(*v197 + 152))
      {
        v141 = FigMediaSegmentSpecifierGetContentKeySpecifier(v16);
        if (FigContentKeySpecifierGetEncryptionMethod(v141) - 3 < 0xFFFFFFFE || FigMediaSegmentSpecifierGetType(v16) != 1)
        {
          if (*(v168 + 330))
          {
LABEL_151:
            OUTLINED_FUNCTION_182_1();
            appended = segPumpAppendBytesToMediaConnectionBuffer();
            if (appended)
            {
              goto LABEL_129;
            }

            goto LABEL_121;
          }
        }
      }
    }

    if (*(segPumpGetMediaFilePrivateData(v16) + 13))
    {
      OUTLINED_FUNCTION_100_0();
      appended = segPumpAppendBytesToCache(v90, v91, v92, v93, v67, v68, 0);
      if (appended)
      {
        goto LABEL_129;
      }
    }

    v95 = *(v4 + 880);
    if (FigMediaSegmentSpecifierGetContentKeySpecifier(v16) && *(v168 + 330))
    {
      OUTLINED_FUNCTION_401_1();
      v104 = segPumpMediaFileHandleCryptData(v96, v97, v98, v99, v100, v101, v102, v103);
      if (v104 == -12465)
      {
        OUTLINED_FUNCTION_167_1();
        v117 = 4294954831;
LABEL_128:
        appended = segPumpHandleMediaFileNetworkError(v113, v115, v114, v116, v117, 0);
LABEL_129:
        v57 = appended;
        goto LABEL_131;
      }

      v57 = v104;
      if (v104 == -12463)
      {
        appended = segPumpHandleCryptFailure();
        goto LABEL_129;
      }

      if (v104)
      {
        goto LABEL_131;
      }
    }

    else
    {
      LODWORD(v152) = 0;
      OUTLINED_FUNCTION_401_1();
      segPumpSendMediaCallback(v126, v127, v128, v129, v130, v131, v132, v133, v152, *(&v152 + 1), v153, v154, v155, UpTimeNanoseconds, v157, v158, v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162);
      v57 = v134;
      if (v134)
      {
LABEL_131:
        if (!v57)
        {
          goto LABEL_132;
        }

        goto LABEL_156;
      }
    }

    if (!FigRetainProxyIsInvalidated() && v95 == *(v4 + 880) && *(v53 + 8) == v16)
    {
LABEL_121:
      *(v53 + 144) = 0;
      v105 = *(v53 + 80) + 1;
      segPumpStreamDontReuseHTTPRequest(v168, v53);
      *(v53 + 80) = v105;
      v106 = *(v53 + 216);
      v107 = *(v53 + 248);
      *(v53 + 240) += v106;
      if (v107)
      {
        *(v53 + 248) = v107 - v106;
      }

      v108 = v168;
      v109 = FigGetUpTimeNanoseconds();
      segPumpGetObservedNetworkStats(v108, (v109 + DownloadTimerIntervalForMedia * -1000000000.0), &v159);
      if (v105 <= 6)
      {
        v110 = *(v168 + 1041);
        if (!v110 || (v111 = v159, v111 < FigAlternateGetPeakBitRate(*(v110 + 8))) || (LODWORD(v112) = *(v168 + 2), v27 <= v112))
        {
          if (!FigMediaSegmentSpecifierGetStartOffset(v16))
          {
            FigMediaSegmentSpecifierGetBytesToRead(v16);
          }

          OUTLINED_FUNCTION_100_0();
          segPumpCreateMediaURLRequest(v118, v119, v120, v121, v53, v122, v123, v124, 0, *(&v152 + 1), v153, v154, v155, UpTimeNanoseconds, v157, v158, v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162);
          if (v125)
          {
            v57 = v125;
LABEL_156:
            segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v3, v57);
            goto LABEL_132;
          }

          DownloadTimerIntervalForMedia = segPumpGetDownloadTimerIntervalForMedia(v168, v16);
          goto LABEL_65;
        }
      }

      v113 = v169;
      v114 = v53 + 16;
      v115 = v4;
      v116 = v16;
      v117 = 4294954407;
      goto LABEL_128;
    }

LABEL_130:
    v57 = 0;
    goto LABEL_131;
  }

LABEL_132:
  segPumpUnlockAndSendAllPendingNotifications();
  if (v169)
  {
    CFRelease(v169);
  }

  OUTLINED_FUNCTION_812();
}

void segPumpSeeIfMediaFileIsInCache()
{
  OUTLINED_FUNCTION_428_1();
  v28 = v2;
  v29 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_358_1();
  v9 = v8;
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(v10);
  v26 = 0;
  cf = 0;
  v25 = 0;
  if (*(v9 + 296))
  {
    if (*(v1 + 64))
    {
      v12 = MediaFilePrivateData;
      v13 = OUTLINED_FUNCTION_502();
      if (!segPumpCreateCacheNameFromSegment(v13, v14, 0, v15))
      {
        v16 = *(v9 + 296);
        v17 = *(v1 + 64);
        StartOffset = FigMediaSegmentSpecifierGetStartOffset(v0);
        MediaSegmentAtOffset = FigStreamingCacheMediaStreamGetMediaSegmentAtOffset(v16, v17, cf, StartOffset, &v25, &v26);
        if (MediaSegmentAtOffset == -16243)
        {
          FigMediaSegmentSpecifierGetMediaSequence(v0);
          v20 = OUTLINED_FUNCTION_489();
          MediaSegmentAtOffset = FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber(v20, v21, v22, v23, v24);
        }

        CFRelease(cf);
        if (MediaSegmentAtOffset)
        {
          if (*(v12 + 13))
          {
            *(v12 + 6) = 0;
            *(v12 + 7) = 0;
            *(v12 + 71) = 0;
            *(v12 + 8) = 0;
            *(v12 + 14) = 0;
            *(v12 + 15) = 0;
            *(v12 + 13) = 0;
            if (!v5)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

          if (v5)
          {
LABEL_15:
            *v5 = v25;
          }
        }

        else
        {
          if (v7)
          {
            *v7 = v26;
          }

          if (v5)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_439_1();
}

void segPumpCreateMediaURLRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_193();
  v24 = v23;
  v134 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v160[15] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v133 = v31;
  v136 = v35;
  if (segPumpShouldRequestURLAsHTTPURL(DerivedStorage, v31))
  {
    v37 = *(DerivedStorage + 7880);
    v38 = *v35;
    if (v37 && *(DerivedStorage + 16 * v38 + 400) == v35 && *(DerivedStorage + 8328))
    {
      FigAlternateGetPeakBitRate(*(v37 + 8));
      FigAlternateGetPeakBitRate(*(*(DerivedStorage + 8328) + 8));
      v38 = *v35;
    }

    v125 = *(DerivedStorage + 16 * v38 + 400);
    HIBYTE(v140) = 0;
    memset(v160, 0, 112);
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v33);
    CMTimeMakeWithSeconds((&v160[5] + 4), TimeInSeconds, 1000);
    v40 = *v35;
    if (*v35 == 2)
    {
      v41 = 6;
    }

    else if (v40 == 1)
    {
      v41 = 2;
    }

    else
    {
      if (v40)
      {
        goto LABEL_15;
      }

      if (*(DerivedStorage + 8576))
      {
        v41 = 3;
      }

      else
      {
        v41 = 4;
      }
    }

    HIDWORD(v160[8]) = v41;
LABEL_15:
    v42 = v35;
    v43 = v35[3];
    MediaFilePrivateData = segPumpGetMediaFilePrivateData(v33);
    v45 = OUTLINED_FUNCTION_171();
    segPumpEnsureMediaSegmentURLs(v45, v46, v43);
    v160[11] = MediaFilePrivateData[2];
    if (FigMediaSegmentSpecifierGetNextSegment(v33))
    {
      NextSegment = FigMediaSegmentSpecifierGetNextSegment(v33);
      v48 = v42[2];
      v49 = v42[3];
      v50 = segPumpGetMediaFilePrivateData(NextSegment);
      segPumpEnsureMediaSegmentURLs(NextSegment, v48, v49);
      v160[12] = v50[2];
    }

    v160[13] = v33;
    if (*(DerivedStorage + 335))
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM();
      goto LABEL_65;
    }

    if (!*(v29 + 160) && *(v136 + 280) && !FigCFHTTPCanURLsBePersistent(*(v136 + 16), v133, &v140 + 7) && HIBYTE(v140))
    {
      *(v29 + 152) = *(v136 + 272);
      *(v136 + 272) = 0;
      *(v136 + 280) = 0;
    }

    v51 = *(v29 + 32);
    if (v51)
    {
      CFRelease(v51);
      *(v29 + 32) = 0;
    }

    v52 = (v29 + 16);
    v53 = *(v29 + 24);
    if (v53)
    {
      CFRelease(v53);
      *(v29 + 24) = 0;
    }

    v54 = *(v29 + 160);
    if (v54 && *v52)
    {
      if (FigCFHTTPCanURLsBePersistent(*v52, v133, &v140 + 7) || HIBYTE(v140))
      {
        v54 = *(v29 + 160);
      }

      else
      {
        v55 = *(v29 + 152);
        if (v55)
        {
          CFRelease(v55);
          *(v29 + 152) = 0;
        }

        v56 = *(v29 + 160);
        if (v56)
        {
          CFRelease(v56);
        }

        v54 = 0;
      }
    }

    v128 = v29 + 16;
    v57 = *(v29 + 152);
    *(v29 + 152) = 0;
    *(v29 + 160) = 0;
    if (*(v136 + 696) == v29 && *(v136 + 402))
    {
      v24 |= 0x20u;
    }

    if (*(DerivedStorage + 8215))
    {
      v58 = v24 | 0x200;
    }

    else
    {
      v58 = v24;
    }

    HIDWORD(v127) = v58;
    v122 = v33;
    v59 = v33;
    v130 = v29;
    v60 = v27;
    segPumpPrepareMediaConnectionForNewRequest(DerivedStorage, v136, v59, v133, v29, v27, v134, 1, v102, cf, v106, v107, v108, v110, v112, v114, v117, v119);
    if (!*(DerivedStorage + 8641))
    {
      *(DerivedStorage + 8641) = 1;
      AttemptNetworkMonitorSetup(DerivedStorage, v133);
    }

    v61 = *(DerivedStorage + 56);
    v62 = *(DerivedStorage + 216);
    v63 = *(DerivedStorage + 240);
    v64 = *DerivedStorage;
    memcpy(__dst, v160, 0x70uLL);
    v115 = v64;
    v65 = v60;
    LODWORD(cfa) = 13;
    HIDWORD(cfa) = HIDWORD(v127);
    segPumpCreateHTTPRequest(DerivedStorage, v61, v136, v57, v54, v133, v62, v63, 0, cfa, __dst, v60, v134, segPumpMediaFileMemoryRequestCallback, segPumpMediaFileReadCallback, v115, a23, v128, v122, v125, v127, v128, v130, v133, HIDWORD(v133), v134, v136, v139, v140, *v141, *&v141[8], *&v141[16], v142);
    v67 = v66;
    if (v57)
    {
      CFRelease(v57);
    }

    if (v54)
    {
      CFRelease(v54);
    }

    if (!v67 && dword_1EAF16A30)
    {
      LODWORD(v140) = 0;
      OUTLINED_FUNCTION_418_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_233();
      if (v70)
      {
        v71 = v69;
      }

      else
      {
        v71 = 0;
      }

      if (v71)
      {
        OUTLINED_FUNCTION_393_1();
        if (v70)
        {
          v74 = v72;
        }

        else
        {
          v74 = v73;
        }

        v75 = *v137;
        v76 = *(v131 + 184);
        if (v126 == v137)
        {
          v77 = ":t";
        }

        else
        {
          v77 = "";
        }

        *v138 = *(v131 + 24);
        v78 = *(segPumpGetMediaFilePrivateData(v123) + 4);
        v79 = *(v131 + 16);
        if (!*(DerivedStorage + 347))
        {
          v79 = @"[]";
        }

        v80 = *(v131 + 96);
        *v141 = 136317698;
        *&v141[4] = "segPumpCreateMediaHTTPRequest";
        *&v141[12] = 2114;
        *&v141[14] = v74;
        *&v141[22] = 2048;
        v142 = v75;
        v143 = 2048;
        v144 = v76;
        v145 = 2080;
        v146 = v77;
        v147 = 2048;
        v148 = *v138;
        v149 = 2048;
        v150 = v78;
        v151 = 2114;
        v152 = v79;
        v153 = 2048;
        v154 = v65;
        v155 = 2048;
        v156 = v135 + v65;
        v157 = 1024;
        v158 = v80;
        OUTLINED_FUNCTION_47_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl();
      }

LABEL_64:
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_467();
      goto LABEL_65;
    }

    goto LABEL_65;
  }

  v81 = *(DerivedStorage + 16 * *v35 + 400);
  OUTLINED_FUNCTION_100_0();
  segPumpPrepareMediaConnectionForNewRequest(v82, v83, v84, v31, v29, v27, v134, 0, v102, cf, v106, v107, v108, v110, v112, v114, v117, v119);
  v85 = (v29 + 104);
  LOBYTE(v103) = (v24 & 4) != 0;
  OUTLINED_FUNCTION_39_1();
  if (!segPumpCustomURLLoaderGetURLGuts(v86, v87, v88, v89, v90, 0, v91, 0, v103, v27, v134, v29 + 104, v109, v111, v113, v116, v118, v120, v121, v124) && dword_1EAF16A30)
  {
    v92 = v81;
    *v141 = 0;
    LOBYTE(v140) = 0;
    v132 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_233();
    if (v70)
    {
      v94 = v93;
    }

    else
    {
      v94 = 0;
    }

    if (v94)
    {
      if (*(DerivedStorage + 8944))
      {
        v95 = *(DerivedStorage + 8944);
      }

      else
      {
        v95 = &stru_1F0B1AFB8;
      }

      v129 = *v136;
      v96 = v33;
      if (v92 == v136)
      {
        v97 = ":t";
      }

      else
      {
        v97 = "";
      }

      if ((v24 & 0x400) != 0)
      {
        v98 = "b";
      }

      else
      {
        v98 = "";
      }

      v99 = *(segPumpGetMediaFilePrivateData(v96) + 4);
      v100 = v133;
      if (!*(DerivedStorage + 347))
      {
        v100 = @"[]";
      }

      v101 = *v85;
      LODWORD(v160[0]) = 136317442;
      *(v160 + 4) = "segPumpCreateMediaURLRequest";
      WORD2(v160[1]) = 2114;
      *(&v160[1] + 6) = v95;
      HIWORD(v160[2]) = 2048;
      v160[3] = v129;
      LOWORD(v160[4]) = 2080;
      *(&v160[4] + 2) = v97;
      WORD1(v160[5]) = 2080;
      *(&v160[5] + 4) = v98;
      WORD2(v160[6]) = 2048;
      *(&v160[6] + 6) = v99;
      HIWORD(v160[7]) = 2114;
      v160[8] = v100;
      LOWORD(v160[9]) = 2048;
      *(&v160[9] + 2) = v27;
      WORD1(v160[10]) = 2048;
      *(&v160[10] + 4) = &v27[v134];
      WORD2(v160[11]) = 1024;
      *(&v160[11] + 6) = v101;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    goto LABEL_64;
  }

LABEL_65:
  OUTLINED_FUNCTION_191();
}

void segPumpGetRequestedByteRangeForMediaFileHelper()
{
  OUTLINED_FUNCTION_564();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v54 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(v9);
  if (MediaFilePrivateData[7] <= MediaFilePrivateData[15])
  {
    v16 = MediaFilePrivateData[15];
  }

  else
  {
    v16 = MediaFilePrivateData[7];
  }

  v17 = FigMediaSegmentSpecifierGetStartOffset(v10) + v16;
  v18 = FigMediaSegmentSpecifierGetBytesToRead(v10);
  v53 = v5;
  if (v10)
  {
    if (FigMediaSegmentSpecifierGetType(v10) == 1)
    {
      if (FigMediaSegmentSpecifierGetContentKeySpecifier(v10))
      {
        ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v10);
        if (FigContentKeySpecifierGetEncryptionMethod(ContentKeySpecifier) == 3)
        {
          v20 = FigMediaSegmentSpecifierGetContentKeySpecifier(v10);
          if (FigContentKeySpecifierGetEncryptionMethod(v20) != 4 && v18 >= 1)
          {
            v22 = FigMediaSegmentSpecifierGetContentKeySpecifier(v10);
            CryptBlockSize = FigContentKeySpecifierGetCryptBlockSize(v22);
            v18 = (FigMediaSegmentSpecifierGetBytesToRead(v10) + 2 * CryptBlockSize - 1) / CryptBlockSize * CryptBlockSize;
          }
        }
      }
    }
  }

  if (v18 <= v16)
  {
    v24 = 0;
  }

  else
  {
    v24 = v18 - v16;
  }

  if (v54 && segPumpShouldPadByteCountForMediaSegment(v14, v10))
  {
    v25 = FigMediaSegmentSpecifierGetContentKeySpecifier(v10);
    v26 = FigContentKeySpecifierGetCryptBlockSize(v25);
    if (FigMediaSegmentSpecifierGetStartOffset(v10) >= 2 * v26)
    {
      v29 = FigMediaSegmentSpecifierGetStartOffset(v10) % v26 + v26;
      v17 -= v29;
      v27 = v29;
      v24 += v29;
    }

    else
    {
      v27 = 0;
    }

    v30 = (v17 + v24) % v26;
    if (v30)
    {
      v31 = v26 - v30;
    }

    else
    {
      v31 = 0;
    }

    v24 += v26 + v31;
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v8 == v10 && v24 >= 1 && *(v14 + 8392) != 0)
  {
    v50 = v1;
    v51 = v17;
    v52 = v14;
    v32 = v24;
    if (!v10 || v24 < 1 || !*(v52 + 8392))
    {
      goto LABEL_51;
    }

    if (FigMediaSegmentSpecifierGetType(v10) == 1)
    {
      v35 = 0;
      while (1)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v12 + 56));
        if (MediaSegmentSpecifiers)
        {
          MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
        }

        if (v35 >= MediaSegmentSpecifiers)
        {
          goto LABEL_50;
        }

        v37 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v12 + 56));
        ValueAtIndex = CFArrayGetValueAtIndex(v37, v35++);
        if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex) == v10)
        {
          goto LABEL_44;
        }
      }
    }

    ValueAtIndex = FigMediaSegmentSpecifierGetNextSegment(v10);
LABEL_44:
    if (ValueAtIndex && (v39 = segPumpGetMediaFilePrivateData(ValueAtIndex), v40 = segPumpGetMediaFilePrivateData(v10), OUTLINED_FUNCTION_330_1(), segPumpEnsureMediaSegmentURLs(v41, v42, v43), v44 = v40[2], segPumpGetMediaFilePrivateData(ValueAtIndex), OUTLINED_FUNCTION_203_0(), OUTLINED_FUNCTION_100_0(), segPumpEnsureMediaSegmentURLs(v45, v46, v47), FigCFHTTPCompareURLs(v44, v10[2])))
    {
      v1 = v50;
      if (!v39[73])
      {
        OUTLINED_FUNCTION_415_0();
        OUTLINED_FUNCTION_197();
        segPumpSeeIfMediaFileIsInCache();
        v17 = v51;
        if (!v48)
        {
          v49 = OUTLINED_FUNCTION_415_0();
          segPumpGetRequestedByteRangeForMediaFileHelper(v49);
        }

LABEL_51:
        v33 = v53;
        if (!v53)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v1 = v50;
    }

LABEL_50:
    v17 = v51;
    goto LABEL_51;
  }

  v32 = v24;
  v33 = v53;
  if (v53)
  {
LABEL_52:
    *v33 = v17;
  }

LABEL_53:
  if (v3)
  {
    *v3 = v32;
  }

  if (v1)
  {
    *v1 = v28;
  }

  OUTLINED_FUNCTION_463();
}

void segPumpPrepareMediaConnectionForNewRequest(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  segPumpSetMediaFileForMediaConnection(v28, v26, v30, v31, v32);
  v27[15] = 0;
  *(v27 + 24) = 0;
  v27[27] = 0;
  v27[28] = 0;
  v27[29] = 0;
  v27[30] = v25;
  v27[31] = v23;
  v27[32] = 0;
  *(v27 + 105) = 0;
  v27[36] = 0;
  v27[37] = 0;
  ++*(v29 + 8688);
  if (!v21 || *(v27 + 208) != 1)
  {
    v33 = v27[16];
    if (v33)
    {
      CFRelease(v33);
      v27[16] = 0;
    }

    v27[17] = 0;
  }

  *(v27 + 208) = v21;
  v34 = *(v29 + 9232);
  if (v34)
  {
    v35 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v35)
    {
      v35(v34, 0x1F0B64538, 0x1F0B65598, 1);
    }
  }

  InterfaceType = *(v29 + 8648);
  if (!InterfaceType)
  {
    InterfaceType = *(v29 + 8644);
    if (!InterfaceType)
    {
      if (!*(v29 + 8632))
      {
        goto LABEL_19;
      }

      InterfaceType = FigNetworkPathInformationGetInterfaceType();
    }
  }

  if ((InterfaceType - 3) >= 2)
  {
    if (InterfaceType != 5)
    {
      goto LABEL_19;
    }

    cf = 0;
    FigNetworkWirelessReportingInterfaceCopyCellStats(&cf);
    FigNetworkWirelessReportingReportCellStats(*(v29 + 9232), cf);
  }

  else
  {
    cf = 0;
    FigNetworkWirelessReportingInterfaceCopyWifiStats(&cf);
    FigNetworkWirelessReportingReportWiFiStats(*(v29 + 9232), cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_19:
  OUTLINED_FUNCTION_652();
}

void segPumpMediaFileMemoryRequestCallback()
{
  OUTLINED_FUNCTION_629();
  v20 = v0;
  v21 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_570();
  OUTLINED_FUNCTION_198_1();
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    if (segPumpGetStreamFromMediaHTTPRequest(v18, v11, v9, &v17))
    {
      v12 = v17;
      if (v17)
      {
        if (v17[1])
        {
          v13 = v17[17];
          if (v7 - 1 >= 0x20000 - v13 && v13 > 0x10000)
          {
            v14 = v17[16];
            if (v14)
            {
              CFRelease(v14);
              v12 = v17;
              v17[16] = 0;
            }

            v12[17] = 0;
          }

          v15 = v12[16];
          if (v15)
          {
            goto LABEL_13;
          }

          segPumpGetMediaDataMemoryPool(v18);
          if (!FigMemoryPoolCreateBlockBuffer())
          {
            v16 = v17;
            v17[17] = 0;
            v15 = v16[16];
            if (!v15)
            {
LABEL_14:
              *v5 = v15;
              *v3 = v16[17];
              goto LABEL_15;
            }

LABEL_13:
            v15 = CFRetain(v15);
            v16 = v17;
            goto LABEL_14;
          }
        }
      }
    }
  }

LABEL_15:
  FigRetainProxyUnlockMutex();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_345_1();
}

void segPumpMediaFileReadCallback(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  number = 0;
  v13 = 0;
  OUTLINED_FUNCTION_381_1();
  FigRetainProxyRetain();
  v5 = segPumpLockAndCopyPumpFromRetainProxy();
  if (v5)
  {
    segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(a3, v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_341_1();
    segPumpGetStreamFromMediaHTTPRequest(v6, v7, a2, v8);
  }

  segPumpUnlockAndSendAllPendingNotifications();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  FigRetainProxyRelease();
  if (v15)
  {
    CFRelease(v15);
  }
}

void segPumpRTCReportingUpdatePrivateAppleCDNInfo(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFStringRef headerField, CFHTTPMessageRef message, CFTypeRef cf, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_298_0();
  a25 = v28;
  a26 = v29;
  message = 0;
  if (!v30)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_369();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v32)
  {
    goto LABEL_60;
  }

  v32(v27, @"FHRP_HTTPResponseHeaders", AllocatorForMedia, &message);
  if (!message)
  {
    goto LABEL_60;
  }

  v33 = CFHTTPMessageCopyHeaderFieldValue(message, @"Via");
  if (!v33)
  {
    goto LABEL_36;
  }

  v34 = v33;
  v35 = FigGetAllocatorForMedia();
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v35, v34, @",");
  if (!ArrayBySeparatingStrings)
  {
    v37 = v34;
    goto LABEL_35;
  }

  v37 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count < 1)
  {
    v53 = 1;
    goto LABEL_28;
  }

  v39 = Count;
  v95 = v34;
  v40 = 0;
  v41 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v37, v39 - 1);
    IsCacheHit = FigCFHTTPVIAHeaderIsCacheHit(ValueAtIndex);
    if (IsCacheHit == -1)
    {
      continue;
    }

    if (v40 || !IsCacheHit)
    {
      FigReportingAgentStatsUpdateSampleValueWithBool(*(v26 + 9232));
      v50 = *(v26 + 9232);
      if (!v50)
      {
        goto LABEL_21;
      }

      v51 = *(&kReportingVIAHeaderCDNHitCountKeys)[v41];
      v46 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v46)
      {
        goto LABEL_21;
      }

      v47 = v50;
      v48 = v51;
      v49 = 0;
LABEL_18:
      v46(v47, 0x1F0B64538, v48, v49);
      goto LABEL_21;
    }

    if (IsCacheHit != 1)
    {
      v40 = 0;
      goto LABEL_21;
    }

    v40 = 1;
    FigReportingAgentStatsUpdateSampleValueWithBool(*(v26 + 9232));
    v44 = *(v26 + 9232);
    if (v44)
    {
      v45 = *(&kReportingVIAHeaderCDNHitCountKeys)[v41];
      v46 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v46)
      {
        v40 = 1;
        goto LABEL_21;
      }

      v40 = 1;
      v47 = v44;
      v48 = v45;
      v49 = 1;
      goto LABEL_18;
    }

LABEL_21:
    ++v41;
  }

  while (v39-- >= 2 && v41 < 5);
  v53 = v40 == 0;
  v34 = v95;
LABEL_28:
  v54 = *(v26 + 9232);
  v55 = v53;
  if (v54)
  {
    v56 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v56)
    {
      v56(v54, 0x1F0B64538, 0x1F0B42E78, v55);
    }
  }

  FigReportingAgentStatsUpdateSampleValueWithBool(*(v26 + 9232));
  v57 = *(v26 + 9232);
  if (v57)
  {
    v58 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v58)
    {
      v58(v57, 0x1F0B64538, 0x1F0B42E98, 1);
    }
  }

  CFRelease(v34);
LABEL_35:
  CFRelease(v37);
LABEL_36:
  v59 = message;
  cf = 0;
  if (!*(v26 + 9272))
  {
    v60 = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(v60, 0, MEMORY[0x1E695E9C0]);
    *(v26 + 9272) = Mutable;
    if (!Mutable)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM();
      goto LABEL_50;
    }
  }

  if (FigCFHTTPCreateRTCReportingAppleCDNVIAEdgeDomainString(v59, &cf))
  {
    goto LABEL_50;
  }

  if (CFArrayGetCount(*(v26 + 9272)) < 6)
  {
    v62 = cf;
    v96.length = CFArrayGetCount(*(v26 + 9272));
    v96.location = 0;
    if (!CFArrayContainsValue(*(v26 + 9272), v96, v62))
    {
      CFArrayAppendValue(*(v26 + 9272), v62);
    }

    v63 = FigGetAllocatorForMedia();
    v64 = CFStringCreateByCombiningStrings(v63, *(v26 + 9272), @",");
    if (v64)
    {
      v65 = v64;
      if (*(v26 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_373();
        OUTLINED_FUNCTION_333();
        v66();
      }

      CFRelease(v65);
    }
  }

  v67 = cf;
  if (*(v26 + 9232))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_373();
      OUTLINED_FUNCTION_333();
      v68();
    }

LABEL_50:
    v67 = cf;
  }

  if (v67)
  {
    CFRelease(v67);
  }

  v69 = message;
  v70 = *(v26 + 9252);
  if (*(v26 + 9305))
  {
    if (v70)
    {
      goto LABEL_55;
    }
  }

  else if (v70 == 2)
  {
LABEL_55:
    v71 = OUTLINED_FUNCTION_198_0();
    segPumpRTCReportingLogAndUpdateStats(v71, v72, @"Via", v73, v74);
    v75 = OUTLINED_FUNCTION_198_0();
    segPumpRTCReportingLogAndUpdateStats(v75, v76, v77, -256490184, v78);
    v79 = OUTLINED_FUNCTION_198_0();
    segPumpRTCReportingLogAndUpdateStats(v79, v80, v81, -256490184, v82);
    v83 = OUTLINED_FUNCTION_198_0();
    segPumpRTCReportingLogAndUpdateStats(v83, v84, v85, -256490184, v86);
    v87 = OUTLINED_FUNCTION_198_0();
    segPumpRTCReportingLogAndUpdateStats(v87, v88, v89, -256490184, v90);
    v69 = message;
  }

  if (!*(v26 + 9248))
  {
    v91 = OUTLINED_FUNCTION_198_0();
    segPumpRTCReportingLogAndUpdateStats(v91, v92, @"Via", v93, v94);
    segPumpRTCReportingLogAndUpdateStats(v26, message, @"CDN-Server", -256490184, -256481160);
    *(v26 + 9248) = 1;
    v69 = message;
  }

  if (v69)
  {
    CFRelease(v69);
  }

LABEL_60:
  OUTLINED_FUNCTION_297_0();
}

void segPumpHandleMediaFileData()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v429 = v2;
  v4 = v3;
  v6 = v5;
  v425 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v447[16] = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v409 = *(v11 + 880);
  v421 = v13;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v413 = *DerivedStorage;
  v15 = *(v9 + 8);
  if (v15)
  {
    MediaFilePrivateData = segPumpGetMediaFilePrivateData(*(v9 + 8));
  }

  else
  {
    MediaFilePrivateData = 0;
  }

  v16 = *(v9 + 64);
  v17 = v429;
  if (!v16)
  {
    v18 = UpTimeNanoseconds - *(v9 + 40);
    *(v9 + 64) = UpTimeNanoseconds;
    *(v9 + 72) = v18;
    v16 = UpTimeNanoseconds;
  }

  if (v1)
  {
    v63 = *(v11 + 776);
    if (v63 < 1)
    {
LABEL_80:
      if (*(v11 + 792) == v9)
      {
        v65 = OUTLINED_FUNCTION_193_0();
        segPumpStreamCancelPreloadReadAndResetData(v65, v66);
      }

      else if (*(v11 + 800) == v9)
      {
        v69 = OUTLINED_FUNCTION_193_0();
        segPumpStreamCancelPreloadMapReadAndResetData(v69, v70);
      }

      else
      {
        v308 = *(v9 + 8);
        if (v308 && segPumpHandleMediaFileNetworkError(v421, v11, v9 + 16, v308, v1, 0))
        {
          goto LABEL_385;
        }
      }
    }

    else
    {
      v64 = 0;
      while (*(*(v11 + 768) + 8 * v64) != v9)
      {
        if (v63 == ++v64)
        {
          goto LABEL_80;
        }
      }

      v84 = OUTLINED_FUNCTION_193_0();
      segPumpStreamCancelReadAheadAndResetDataAtIndex(v84, v85, v86);
    }

    FigHTTPStopAndReleaseTimer((v9 + 112));
    OUTLINED_FUNCTION_298();
    segPumpPerformReportingForMediaFileReadOverHTTP();
    goto LABEL_385;
  }

  v19 = *(v11 + 296);
  if (v19)
  {
    CFRelease(v19);
    *(v11 + 296) = 0;
    v16 = *(v9 + 64);
  }

  v393 = *(v9 + 40);
  v397 = *(v9 + 72);
  if (!v15)
  {
    v25 = (v9 + 224);
    v29 = 136;
    v28 = v6;
    v24 = DerivedStorage;
LABEL_21:
    *v25 += v6;
    *(v9 + v29) += v6;
    v6 = v28;
    v17 = v429;
    goto LABEL_23;
  }

  if (!*(v9 + 210))
  {
    *(v9 + 210) = 1;
    if (!*(v9 + 256))
    {
      if (!FigMediaSegmentSpecifierGetBytesToRead(v15))
      {
        *(MediaFilePrivateData + 5) += v4;
        v20 = MEMORY[0x1E6960C98];
        v21 = *(MEMORY[0x1E6960C98] + 16);
        *(DerivedStorage + 9096) = *MEMORY[0x1E6960C98];
        *(DerivedStorage + 9112) = v21;
        *(DerivedStorage + 9128) = *(v20 + 32);
      }

      *(v9 + 256) = v4;
    }
  }

  *(v9 + 224) += v6;
  *(v9 + 136) += v6;
  if (*(v9 + 296) < 1)
  {
    v24 = DerivedStorage;
    goto LABEL_23;
  }

  StartOffset = FigMediaSegmentSpecifierGetStartOffset(*(v9 + 8));
  v23 = *(v9 + 296) + *(v9 + 240);
  v24 = DerivedStorage;
  if (StartOffset > v23)
  {
    v25 = (v9 + 296);
    v26 = FigMediaSegmentSpecifierGetStartOffset(*(v9 + 8));
    v27 = v6;
    if (v26 - v23 < v6)
    {
      v27 = FigMediaSegmentSpecifierGetStartOffset(*(v9 + 8)) - v23;
    }

    v425 += v27;
    v28 = v6 - v27;
    v29 = 216;
    v6 = v27;
    goto LABEL_21;
  }

LABEL_23:
  v401 = v16;
  if ((v17 & 1) != 0 || (DataLength = CMBlockBufferGetDataLength(*(v9 + 272)), segPumpReadCompletesMediaRange(v15, DataLength + v6)))
  {
    OUTLINED_FUNCTION_732();
    HIDWORD(v405) = v49;
    segPumpPerformReportingForMediaFileReadOverHTTP();
    v32 = 0;
    v31 = 1;
    if (v17)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v31 = 0;
    v32 = 1;
    HIDWORD(v405) = v17;
    if (v17)
    {
      goto LABEL_27;
    }
  }

  if (v6 < 1)
  {
    goto LABEL_382;
  }

LABEL_27:
  if (!*(v9 + 232))
  {
    *(v9 + 232) = v6;
  }

  LODWORD(v417) = v32;
  *(v9 + 216) += v6;
  if (v17)
  {
    *(v9 + 56) = UpTimeNanoseconds;
  }

  if (v15)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v430 = v11;
  if (v33)
  {
    v447[0] = 0;
    v437 = 0.0;
    *v438 = 0;
    v435 = 0;
    v436 = 0;
    v433 = 0;
    *type = 0;
    v432 = 0;
    v431 = 0;
    v34 = *(v9 + 32);
    if (v34)
    {
      v35 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v35)
      {
        v377 = 0;
        v381 = 0;
        v373 = &v431;
        *&v366 = &v432;
        *(&v366 + 1) = &v433;
        if (!v35(v34, v447, v438, 0, &v437, &v436, &v435, type))
        {
          v36 = *v438;
          MediaFilePrivateData[17] = *v447;
          *(MediaFilePrivateData + 18) = v36;
          v37 = v436;
          MediaFilePrivateData[19] = v437;
          *(MediaFilePrivateData + 20) = v37;
          v38 = *type;
          *(MediaFilePrivateData + 21) = v435;
          *(MediaFilePrivateData + 22) = v38;
          *(MediaFilePrivateData + 184) = v432;
          *(MediaFilePrivateData + 24) = v433;
          *(MediaFilePrivateData + 50) = v431;
        }
      }
    }
  }

  else if (!v15)
  {
    goto LABEL_99;
  }

  v39 = FigMediaSegmentSpecifierGetType(v15);
  v40 = !v31;
  if (v39)
  {
    v40 = 1;
  }

  if ((v40 & 1) == 0)
  {
    v41 = *(MediaFilePrivateData + 6) + v6;
    v42 = CMBaseObjectGetDerivedStorage();
    v43 = v11;
    v44 = v42;
    LODWORD(v389) = segPumpStreamBitRateRequiredForStream(v42, v43);
    if (v41 < 1 || FigMediaSegmentSpecifierGetTimeInSeconds(v15) <= 0.5)
    {
      goto LABEL_98;
    }

    v45 = ((8 * v41) / FigMediaSegmentSpecifierGetTimeInSeconds(v15));
    *(v430 + 1104) = FigMediaSegmentSpecifierGetTimeInSeconds(v15) + *(v430 + 1104);
    v46 = *(v430 + 1096);
    v47 = v46 ? (9 * v46 + v45) / 0xAu : v45;
    *(v430 + 1096) = v47;
    *(v430 + 1100) = v45;
    if (!*(v44 + 8328))
    {
      goto LABEL_98;
    }

    if (*(v44 + 7880))
    {
      v48 = *(v44 + 16 * *v430 + 400) == v430;
    }

    else
    {
      v48 = 0;
    }

    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v15);
    LODWORD(v51) = *(v44 + 8);
    v52 = v51;
    if (TimeInSeconds >= v51)
    {
      v53 = 0;
      v55 = (v44 + 400);
      v56 = 3;
      do
      {
        if (*(*(v55 - 1) + 16))
        {
          if (!v48 || (v57 = *v55) == 0)
          {
            v57 = *(v55 - 1);
          }

          v58 = *(v57 + 1100);
          if (!v58)
          {
            goto LABEL_98;
          }

          v53 += v58;
        }

        v55 += 2;
        --v56;
      }

      while (v56);
      if (v53 <= v389)
      {
        goto LABEL_98;
      }
    }

    else
    {
      LODWORD(v436) = 0;
      v437 = 0.0;
      if (!segPumpGetAverageEstimatedMediaBitrate(v44, v48, &v436, &v437) || ((v53 = v436, v437 > v52) ? (v54 = v436 > v389) : (v54 = 0), !v54))
      {
LABEL_98:
        v24 = DerivedStorage;
        v11 = v430;
        LOBYTE(v17) = v429;
        goto LABEL_99;
      }
    }

    if (!*(v44 + 8222))
    {
      DeclaredPeakBitRate = FigAlternateGetDeclaredPeakBitRate(*(*(v44 + 8328) + 8));
      if (DeclaredPeakBitRate)
      {
        if (DeclaredPeakBitRate / 10 + DeclaredPeakBitRate < v53)
        {
          OUTLINED_FUNCTION_214_1(v44, v430, (*(v430 + 696) + 16), -12318, @"CoreMediaErrorDomain", @"Segment exceeds specified bandwidth for variant", v60, v61, 2, 3);
          *(v44 + 8222) = 1;
        }
      }
    }

    LODWORD(v435) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v62 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    if (OUTLINED_FUNCTION_186_0(v62))
    {
      OUTLINED_FUNCTION_264_0();
      if (v430)
      {
        v68 = *v430;
      }

      else
      {
        v68 = -1;
      }

      *v438 = 136316162;
      *&v438[4] = "segPumpVerifyMediaBitrateIsBelowAlternatePeakBitrate";
      v439 = 2114;
      v440 = v67;
      v441 = 2048;
      v442 = v68;
      v443 = 1024;
      v444 = v389;
      v445 = 1024;
      v446 = v53;
      DWORD2(v366) = 44;
      *&v366 = v438;
      OUTLINED_FUNCTION_19_1();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_635();
    v71 = 8328;
    if (v48)
    {
      v71 = 7880;
    }

    v72 = *(v44 + v71);
    *(v72 + 24) = v53;
    FigAlternateSetPeakBitRate(*(v72 + 8), v53);
    for (i = *(v44 + 8280); i; i = *i)
    {
      if (i != v72)
      {
        v74 = *(v72 + 28);
        v75 = *(i + 7) - v74;
        if (v75 < 0)
        {
          v75 = v74 - *(i + 7);
        }

        if (v75 / v74 <= 0.01)
        {
          *(i + 6) = v53;
          FigAlternateSetPeakBitRate(i[1], v53);
        }
      }
    }

    segPumpReadyNotification(v44, @"FBPAL_AlternateListChanged", 0);
    segPumpInitAlternateSelectionBoss(v44);
    goto LABEL_98;
  }

LABEL_99:
  *(v24 + 8720) += v6;
  *(v11 + 1112) += v6;
  if (!*v11)
  {
    v76 = 8816;
    goto LABEL_103;
  }

  if (*v11 == 1)
  {
    v76 = 8824;
LABEL_103:
    *(v24 + v76) += v6;
  }

  v77 = v24 + 0x2000;
  if (v17)
  {
    *(v9 + 104) = 0;
    FigHTTPStopAndReleaseTimer((v9 + 112));
    *(v9 + 80) = 0;
    v78 = *(v9 + 88);
    if (v78)
    {
      CFRelease(v78);
      *(v9 + 88) = 0;
    }

    if (*(v24 + 8896))
    {
      v79 = 9024;
      if (UpTimeNanoseconds > *(v9 + 280))
      {
        v79 = 9032;
      }

      ++*(v24 + v79);
    }

    *(v9 + 280) = 0x7FFFFFFFFFFFFFFFLL;
    v80 = *(v9 + 32);
    if (v80)
    {
      if (!*(v9 + 145) || (segPumpStreamDontReuseHTTPRequest(v24, v9), (v80 = *(v9 + 32)) != 0))
      {
        *(v9 + 152) = *(v9 + 24);
        *(v9 + 160) = v80;
        *(v9 + 104) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
        ++*(v9 + 192);
      }
    }
  }

  if (v33 && !*(v24 + 8896) && !*(v11 + 873) && !FigMediaSegmentSpecifierGetType(v15) && !segPumpStreamHasPreloadConnectionForSegment(v11, v15, 1))
  {
    ElapsedTimeForConnectionOnMedia = segPumpGetElapsedTimeForConnectionOnMedia(v11, v9);
    if (ElapsedTimeForConnectionOnMedia <= FigMediaSegmentSpecifierGetTimeInSeconds(v15))
    {
      if (*(v11 + 874))
      {
        v87 = *(v11 + 752);
        if (v87 < 1)
        {
          goto LABEL_132;
        }

        v88 = v11 + 696;
        v89 = 1;
        do
        {
          if (*v88 && *(*v88 + 32))
          {
            v89 = 0;
          }

          v88 += 8;
          --v87;
        }

        while (v87);
        if (v89)
        {
LABEL_132:
          *(v11 + 874) = 0;
        }
      }
    }

    else
    {
      v82 = OUTLINED_FUNCTION_732();
      segPumpSetCurrentSegmentTooSlow(v82, v83);
    }
  }

  if (segPumpShouldDoSegmentReadAheads(v24) && *(v11 + 776) >= 1)
  {
    v90 = *(v11 + 768);
    do
    {
      if (*v90)
      {
        *(*v90 + 40) = UpTimeNanoseconds;
      }

      OUTLINED_FUNCTION_309_1();
    }

    while (!v179);
  }

  if (!v15 || !FigMediaSegmentSpecifierGetContentKeySpecifier(v15) || *(v11 + 256) != v15 && *(v11 + 264) != v15)
  {
    goto LABEL_142;
  }

  v447[0] = 0;
  ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v15);
  segPumpGetCryptKeyCommonData(ContentKeySpecifier, 0, v447, v95, v96, v97, v98, v99, v366, v373, v377, v381, os_log_and_send_and_compose_flags_and_os_log_type, v389, v393, v397, v401);
  if (v100)
  {
    goto LABEL_382;
  }

  if (*(v447[0] + 152))
  {
    v91 = 0;
    HIDWORD(v417) = 1;
    v11 = v430;
    goto LABEL_144;
  }

  if (!*(v24 + 9792))
  {
    *(v24 + 9792) = FigGetUpTimeNanoseconds();
  }

  v101 = FigMediaSegmentSpecifierGetContentKeySpecifier(v15);
  v11 = v430;
  if (FigContentKeySpecifierGetEncryptionMethod(v101) - 3 < 0xFFFFFFFE || FigMediaSegmentSpecifierGetType(v15) != 1)
  {
    v91 = *(v24 + 330) != 0;
    if (*(v24 + 330))
    {
      v92 = v417;
    }

    else
    {
      v92 = 1;
    }
  }

  else
  {
LABEL_142:
    v91 = 0;
    v92 = 1;
  }

  HIDWORD(v417) = v92;
LABEL_144:
  if (*(v24 + 8896) || *(v11 + 696) != v9)
  {
    v91 = 1;
    if (!v417)
    {
LABEL_147:
      if (!v15)
      {
        goto LABEL_179;
      }

      goto LABEL_168;
    }
  }

  else if (!v417)
  {
    goto LABEL_147;
  }

  if ((v429 & 1) == 0 || (v93 = *(v11 + 696)) != 0 && (*(v93 + 32) || *(v93 + 104)))
  {
    v31 = 0;
    if (!v15)
    {
      goto LABEL_179;
    }
  }

  else
  {
    v31 = *(v11 + 704) == 0;
    if (!v15)
    {
      goto LABEL_179;
    }
  }

LABEL_168:
  if (v31)
  {
    if (FigMediaSegmentSpecifierGetType(v15) != 1)
    {
      v102 = *(v9 + 8);
      if (v102)
      {
        if (*(segPumpGetMediaFilePrivateData(v102) + 2))
        {
          v103 = segPumpGetMediaFilePrivateData(*(v9 + 8));
          CFRelease(v103[2]);
          *(segPumpGetMediaFilePrivateData(*(v9 + 8)) + 2) = 0;
        }
      }
    }

    v104 = 64;
    if (!*(v9 + 211))
    {
      v104 = 40;
    }

    v105 = *(v9 + v104);
    if (*(v9 + 288) <= 0)
    {
      v106 = v105;
    }

    else
    {
      v106 = *(v9 + 288);
    }

    MediaFilePrivateData[10] = *(v11 + 808) + (FigGetUpTimeNanoseconds() - v106) / 1000000000.0;
  }

LABEL_179:
  if (v15 && !v91)
  {
    v107 = *(v9 + 8);
    if (v107 && FigMediaSegmentSpecifierGetBytesToRead(v107))
    {
      v119 = *(v9 + 240);
      v120 = *(v9 + 216);
      v121 = FigMediaSegmentSpecifierGetStartOffset(*(v9 + 8));
      v122 = FigMediaSegmentSpecifierGetBytesToRead(*(v9 + 8));
      v108 = (v120 + v119 - (v121 + v122)) & ~((v120 + v119 - (v121 + v122)) >> 63);
    }

    else
    {
      v108 = 0;
    }

    v123 = OUTLINED_FUNCTION_105_0();
    appended = segPumpAccumConnCompletesMediaRange(v123, v124);
    v133 = appended;
    if (appended)
    {
      appended = segPumpAppendBytesToMediaConnectionBuffer();
      if (appended)
      {
        goto LABEL_382;
      }
    }

    v134 = OUTLINED_FUNCTION_206_1(appended, v126, v127, v128, v129, v130, v131, v132, v366, *(&v366 + 1), v373, v377, v381, os_log_and_send_and_compose_flags_and_os_log_type, v24 + 0x2000, v393, v397, v401, v405, v409, v413, v417, v421);
    if (segPumpDeliverAccumulatedBuffer(v134, v135, v430, v9, v15, v133, v136, v137, v367, v370, v374, v378, v382, v386, v390, v394, v398, v402, v406, v410, v414, v418, v422, v425, MediaFilePrivateData, DerivedStorage))
    {
      goto LABEL_382;
    }

    if (FigRetainProxyIsInvalidated())
    {
      goto LABEL_382;
    }

    OUTLINED_FUNCTION_377_1();
    if (!v179)
    {
      goto LABEL_382;
    }

    if (v133)
    {
      v77 = v389;
LABEL_241:
      v117 = v429;
      if (v429)
      {
        if (v140[88])
        {
          v307 = OUTLINED_FUNCTION_206_1(v138, v139, v140, v141, v142, v143, v144, v145, v366, *(&v366 + 1), v373, v377, v381, os_log_and_send_and_compose_flags_and_os_log_type, v389, v393, v397, v401, v405, v409, v413, v417, v421);
          if (segPumpMoveToNextParallelConnection(v307))
          {
            goto LABEL_382;
          }

          if (FigRetainProxyIsInvalidated())
          {
            goto LABEL_382;
          }

          v117 = v429;
          if (v409 != *(v430 + 880))
          {
            goto LABEL_382;
          }
        }
      }

LABEL_243:
      if (v31)
      {
        goto LABEL_250;
      }

      goto LABEL_244;
    }

    v146 = v6 - v108;
    v147 = (v6 - v108) & ~((v6 - v108) >> 63);
    if (v429)
    {
      v148 = v140[88];
      if (v148)
      {
        v149 = HIDWORD(v405);
        if (*(v9 + 8) == *(v148 + 8))
        {
          v149 = HIDWORD(v405) & 0xFFFFFFFE;
        }

        HIDWORD(v405) = v149;
      }
    }

    if (*(MediaFilePrivateData + 13))
    {
      OUTLINED_FUNCTION_166_0();
      v138 = segPumpAppendBytesToCache(v150, v151, v152, v153, v426, v147, v31);
      if (v138)
      {
        goto LABEL_382;
      }
    }

    v154 = *(v9 + 8);
    v155 = (*(v430 + 256) == v154 || *(v430 + 264) == v154) && *(v430 + 404) != 0;
    if (v108)
    {
      v309 = v155;
      v138 = segPumpAppendBytesToMediaConnectionBuffer();
      v155 = v309;
      if (v138)
      {
        goto LABEL_382;
      }
    }

    if (HIDWORD(v417) && v31)
    {
      v310 = *(v9 + 8);
      v77 = v389;
      if (v310)
      {
        v311 = v155;
        CFRelease(v310);
        v155 = v311;
        *(v9 + 8) = 0;
      }
    }

    else
    {
      v77 = v389;
      if (!v31)
      {
        goto LABEL_225;
      }
    }

    v312 = v155;
    v138 = segPumpStreamUnchainMediaConnIfChaining(v421, v430, v9);
    v155 = v312;
    if (v138)
    {
      goto LABEL_382;
    }

LABEL_225:
    if (v155 && (v146 > 0 || (v405 & 0x100000000) != 0))
    {
      v156 = FigMediaSegmentSpecifierGetContentKeySpecifier(v15);
      if (v156 && *(v24 + 330))
      {
        v162 = OUTLINED_FUNCTION_304_1(v156, v157, v430, v158, *(v9 + 128), v159, v160, v161, v366, *(&v366 + 1), v373, v377, v381, os_log_and_send_and_compose_flags_and_os_log_type, v389, v393, v397, v401, v405, v409, v413, v417, v421);
        v170 = segPumpMediaFileHandleCryptData(v162, v163, v164, v165, v166, v167, v168, v169);
        if (v170 == -12465)
        {
          segPumpHandleMediaFileNetworkError(v421, v430, 0, v15, 4294954831, 0);
          goto LABEL_382;
        }

        if (v170 == -12463)
        {
          OUTLINED_FUNCTION_206_1(v170, v171, v172, v173, v174, v175, v176, v177, v366, *(&v366 + 1), v373, v377, v381, os_log_and_send_and_compose_flags_and_os_log_type, v389, v393, v397, v401, v405, v409, v413, v417, v421);
          segPumpHandleCryptFailure();
          goto LABEL_382;
        }

        if (v170)
        {
          goto LABEL_382;
        }
      }

      else
      {
        LODWORD(v366) = 0;
        v318 = OUTLINED_FUNCTION_304_1(v156, v157, v430, v158, *(v9 + 128), v159, v160, v161, v366, *(&v366 + 1), v373, v377, v381, os_log_and_send_and_compose_flags_and_os_log_type, v389, v393, v397, v401, v405, v409, v413, v417, v421);
        segPumpSendMediaCallback(v318, v319, v320, v321, v322, v323, v324, v325, v368, v371, v375, v379, v383, v387, v391, v395, v399, v403, v407, v411, v415, v419, v423);
        if (v326)
        {
          goto LABEL_382;
        }
      }

      if (FigRetainProxyIsInvalidated())
      {
        goto LABEL_382;
      }

      OUTLINED_FUNCTION_377_1();
      if (!v179 || v140[32] != v15 && v140[33] != v15)
      {
        goto LABEL_382;
      }
    }

    else
    {
      *(MediaFilePrivateData + 6) += v147;
      v140 = v430;
    }

    goto LABEL_241;
  }

  v109 = segPumpAppendBytesToMediaConnectionBuffer();
  if (v109)
  {
    goto LABEL_382;
  }

  v117 = v429;
  if ((v429 & 1) != 0 && v15 && *(v24 + 8896) && HIDWORD(v417) && *(v430 + 696) == v9)
  {
    v313 = *(v9 + 8);
    if (v313)
    {
      v315 = v430;
      if (FigMediaSegmentSpecifierGetType(*(v9 + 8)) == 1)
      {
LABEL_409:
        v335 = *(v9 + 8);
        if (v335)
        {
          CFRelease(v335);
          *(v9 + 8) = 0;
        }

        v336 = OUTLINED_FUNCTION_206_1(v335, v327, v328, v329, v330, v331, v332, v333, v366, *(&v366 + 1), v373, v377, v381, os_log_and_send_and_compose_flags_and_os_log_type, v389, v393, v397, v401, v405, v409, v413, v417, v421);
        if (segPumpDeliverAccumulatedBuffer(v336, v337, v315, v9, v15, 1, v338, v339, v369, v372, v376, v380, v384, v388, v392, v396, v400, v404, v408, v412, v416, v420, v424, v425, MediaFilePrivateData, DerivedStorage))
        {
          goto LABEL_382;
        }

        v117 = v429;
        if (FigRetainProxyIsInvalidated())
        {
          goto LABEL_382;
        }

        if (v313 != v15 || v409 != *(v430 + 880))
        {
          goto LABEL_382;
        }

        HIDWORD(v417) = 1;
        goto LABEL_243;
      }

      v314 = *(v9 + 8);
    }

    else
    {
      v314 = 0;
      v315 = v430;
    }

    if (*(segPumpGetMediaFilePrivateData(v314) + 2))
    {
      v334 = segPumpGetMediaFilePrivateData(*(v9 + 8));
      CFRelease(v334[2]);
      *(segPumpGetMediaFilePrivateData(*(v9 + 8)) + 2) = 0;
    }

    goto LABEL_409;
  }

  if (v31)
  {
    if (!v9 || !*(v24 + 8896))
    {
      HIDWORD(v417) = 0;
      goto LABEL_250;
    }

    if (*(v430 + 776) < 1)
    {
      HIDWORD(v417) = 0;
      goto LABEL_250;
    }

    v118 = *(v430 + 768);
    while (*v118 != v9)
    {
      OUTLINED_FUNCTION_309_1();
      if (v179)
      {
        HIDWORD(v417) = 0;
        goto LABEL_243;
      }
    }

    v316 = OUTLINED_FUNCTION_206_1(v109, v110, v111, v112, v113, v114, v115, v116, v366, *(&v366 + 1), v373, v377, v381, os_log_and_send_and_compose_flags_and_os_log_type, v389, v393, v397, v401, v405, v409, v413, v417, v421);
    segPumpCheckAndTryToAdoptStepAhead(v316, v317);
    OUTLINED_FUNCTION_322_1();
    if (v179)
    {
      v31 = 1;
      goto LABEL_382;
    }

    HIDWORD(v417) = 0;
    goto LABEL_243;
  }

  HIDWORD(v417) = 0;
LABEL_244:
  v31 = (v117 & 1) != 0 && ((v178 = *(v430 + 696)) == 0 || !*(v178 + 32) && !*(v178 + 104)) && *(v430 + 704) == 0;
LABEL_250:
  if (v15)
  {
    v179 = v31 && *(v77 + 704) == 0;
    if (v179 || (v117 & (*(v77 + 704) != 0)) != 0)
    {
      IsConnectedWithHighSpeedHighPower = FigMediaSegmentSpecifierGetType(v15);
      if (IsConnectedWithHighSpeedHighPower)
      {
        goto LABEL_380;
      }

      v189 = v77;
      v438[0] = 0;
      IsConnectedWithHighSpeedHighPower = segPumpIsConnectedWithHighSpeedHighPower(v24, v438);
      if (!IsConnectedWithHighSpeedHighPower)
      {
        v276 = v438[0];
        if (*(v24 + 9232))
        {
          VTable = CMBaseObjectGetVTable();
          v278 = *(VTable + 16);
          IsConnectedWithHighSpeedHighPower = VTable + 16;
          if (*(v278 + 56))
          {
            OUTLINED_FUNCTION_310();
            IsConnectedWithHighSpeedHighPower = v279();
          }
        }

        v24 = DerivedStorage;
        if (v276)
        {
          v280 = *(DerivedStorage + 9232);
          IsConnectedWithHighSpeedHighPower = segPumpGetMediaFilePrivateData(v15);
          if (v280)
          {
            v117 = *(IsConnectedWithHighSpeedHighPower + 40);
            v281 = CMBaseObjectGetVTable();
            v282 = *(v281 + 16);
            IsConnectedWithHighSpeedHighPower = v281 + 16;
            if (*(v282 + 32))
            {
              v283 = OUTLINED_FUNCTION_61_1();
              IsConnectedWithHighSpeedHighPower = v284(v283);
            }
          }
        }
      }

      if (*v430 != 1)
      {
        if (*v430)
        {
LABEL_379:
          v24 = DerivedStorage;
LABEL_380:
          v306 = OUTLINED_FUNCTION_206_1(IsConnectedWithHighSpeedHighPower, v182, v183, v184, v185, v186, v187, v188, v366, *(&v366 + 1), v373, v377, v381, os_log_and_send_and_compose_flags_and_os_log_type, v389, v393, v397, v401, v405, v409, v413, v417, v421);
          if (!segPumpStreamProceedAfterMediaAndKeyArrival(v306))
          {
            FigRetainProxyIsInvalidated();
          }

          goto LABEL_382;
        }

        segPumpGetMediaFilePrivateData(v15);
        segPumpRTCReportingUpdateBandwidthStats(DerivedStorage);
        v190 = v397 / 0xF4240;
        FigReportingAgentStatsUpdateSampleValueWithBool(*(DerivedStorage + 9232));
        v191 = *(DerivedStorage + 9232);
        if (v191)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v192 = OUTLINED_FUNCTION_198_0();
            v193(v192);
          }

          OUTLINED_FUNCTION_94_0();
        }

        else
        {
          v190 = 0;
        }

        segPumpGetMediaFilePrivateData(v15);
        if (v190 && *(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v194 = OUTLINED_FUNCTION_373();
          v195(v194);
        }

        v196 = OUTLINED_FUNCTION_22_1();
        v197 = segPumpGetMediaFilePrivateData(v196);
        if (v190)
        {
          v191 = v197[17];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v198 = OUTLINED_FUNCTION_27_1();
            v199(v198);
          }
        }

        v200 = OUTLINED_FUNCTION_22_1();
        v201 = segPumpGetMediaFilePrivateData(v200);
        if (v190)
        {
          v191 = v201[18];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v202 = OUTLINED_FUNCTION_27_1();
            v203(v202);
          }
        }

        v204 = OUTLINED_FUNCTION_22_1();
        v205 = segPumpGetMediaFilePrivateData(v204);
        if (v190)
        {
          v191 = v205[19];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v206 = OUTLINED_FUNCTION_27_1();
            v207(v206);
          }
        }

        v208 = OUTLINED_FUNCTION_22_1();
        v209 = segPumpGetMediaFilePrivateData(v208);
        if (v190)
        {
          v191 = v209[21];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v210 = OUTLINED_FUNCTION_27_1();
            v211(v210);
          }
        }

        v212 = OUTLINED_FUNCTION_22_1();
        v213 = segPumpGetMediaFilePrivateData(v212);
        if (v190)
        {
          v191 = v213[20];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v214 = OUTLINED_FUNCTION_27_1();
            v215(v214);
          }
        }

        v216 = OUTLINED_FUNCTION_22_1();
        v217 = segPumpGetMediaFilePrivateData(v216);
        if (v190)
        {
          v191 = v217[22];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v218 = OUTLINED_FUNCTION_27_1();
            v219(v218);
          }
        }

        OUTLINED_FUNCTION_94_0();
        if (v190)
        {
          v191 = *(v430 + 1128);
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v220 = OUTLINED_FUNCTION_373();
            v221(v220);
          }
        }

        v222 = OUTLINED_FUNCTION_22_1();
        FigMediaSegmentSpecifierGetTimeInSeconds(v222);
        if (v190 && *(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v223 = OUTLINED_FUNCTION_373();
          v224(v223);
        }

        OUTLINED_FUNCTION_94_0();
        v225 = v15;
        IsConnectedWithHighSpeedHighPower = segPumpGetMediaFilePrivateData(v15);
        if (v190)
        {
          v191 = *(IsConnectedWithHighSpeedHighPower + 48);
          v226 = CMBaseObjectGetVTable();
          v227 = *(v226 + 16);
          IsConnectedWithHighSpeedHighPower = v226 + 16;
          if (*(v227 + 40))
          {
            v228 = OUTLINED_FUNCTION_61_1();
            IsConnectedWithHighSpeedHighPower = v229(v228);
          }
        }

        v230 = v189;
        v231 = *(DerivedStorage + 9252);
        if (*(v189 + 1113))
        {
          if (!v231)
          {
            goto LABEL_441;
          }
        }

        else if (v231 != 2)
        {
          goto LABEL_441;
        }

        IsConnectedWithHighSpeedHighPower = segPumpShouldIssueVerboseEvent(DerivedStorage, v430, v225);
        if (IsConnectedWithHighSpeedHighPower)
        {
          v447[0] = 0;
          OUTLINED_FUNCTION_146_1();
          if (v191)
          {
            v190 = *(v430 + 752);
            v341 = v225;
            if (*(*(CMBaseObjectGetVTable() + 16) + 40))
            {
              v342 = OUTLINED_FUNCTION_198_0();
              v343(v342);
            }

            OUTLINED_FUNCTION_94_0();
          }

          else
          {
            v190 = 0;
            v341 = v225;
          }

          v344 = segPumpGetMediaFilePrivateData(v341);
          if (v190)
          {
            v191 = v344[184];
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v345 = OUTLINED_FUNCTION_61_1();
              v346(v345);
            }
          }

          OUTLINED_FUNCTION_94_0();
          v347 = segPumpGetMediaFilePrivateData(v341);
          if (v190)
          {
            v191 = v347[24];
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v348 = OUTLINED_FUNCTION_61_1();
              v349(v348);
            }
          }

          FigSymptomsManagerTriggerScorecardsUpdate();
          v230 = v189;
          if (FigSymptomsManagerGetBandwidthPredictionFromLastUpdate(v447, 0))
          {
            goto LABEL_435;
          }

          OUTLINED_FUNCTION_146_1();
          if (v191)
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 40))
            {
              v364 = OUTLINED_FUNCTION_198_0();
              v365(v364);
            }

LABEL_435:
            OUTLINED_FUNCTION_146_1();
            if (v191 && *(*(CMBaseObjectGetVTable() + 16) + 40))
            {
              OUTLINED_FUNCTION_165_1();
              v350 = OUTLINED_FUNCTION_198_0();
              v351(v350);
            }

            OUTLINED_FUNCTION_146_1();
            if (v191)
            {
              v352 = CMBaseObjectGetVTable();
              v353 = *(v352 + 16);
              IsConnectedWithHighSpeedHighPower = v352 + 16;
              if (*(v353 + 8))
              {
                OUTLINED_FUNCTION_198_0();
                OUTLINED_FUNCTION_305();
                IsConnectedWithHighSpeedHighPower = v354();
              }
            }
          }
        }

LABEL_441:
        if (!*(v230 + 36))
        {
          goto LABEL_379;
        }

        v355 = *(DerivedStorage + 8328);
        if (v355)
        {
          if (FigAlternateGetDeclaredPeakBitRate(*(v355 + 8)))
          {
            OUTLINED_FUNCTION_94_0();
            if (!v190)
            {
              goto LABEL_379;
            }

            v191 = IsConnectedWithHighSpeedHighPower;
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v356 = OUTLINED_FUNCTION_373();
              v357(v356);
            }
          }
        }

        else
        {
          v191 = *(DerivedStorage + 9232);
          if (!v191)
          {
            goto LABEL_379;
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 64))
          {
            v358 = OUTLINED_FUNCTION_198_0();
            v359(v358);
          }
        }

        OUTLINED_FUNCTION_146_1();
        if (!v191)
        {
          goto LABEL_379;
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v360 = OUTLINED_FUNCTION_198_0();
          v361(v360);
        }

        OUTLINED_FUNCTION_146_1();
        v362 = CMBaseObjectGetVTable();
        v363 = *(v362 + 16);
        IsConnectedWithHighSpeedHighPower = v362 + 16;
        if (!*(v363 + 8))
        {
          goto LABEL_379;
        }

        goto LABEL_378;
      }

      if (*(v24 + 8600) == 1)
      {
        segPumpGetMediaFilePrivateData(v15);
        segPumpRTCReportingUpdateBandwidthStats(v24);
      }

      v232 = *(v24 + 9232);
      memset(v447, 0, 88);
      v233 = *(v430 + 960);
      if (v233 < 1)
      {
        if (!v232)
        {
          goto LABEL_310;
        }
      }

      else
      {
        segPumpGetObservedNetworkStats(v24, v233, v447);
        if (!v232)
        {
          goto LABEL_310;
        }
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v234 = OUTLINED_FUNCTION_373();
        v235(v234);
      }

LABEL_310:
      OUTLINED_FUNCTION_146_1();
      if (v117)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v236 = OUTLINED_FUNCTION_198_0();
          v237(v236);
        }

        OUTLINED_FUNCTION_94_0();
      }

      else
      {
        v232 = 0;
      }

      segPumpGetMediaFilePrivateData(v15);
      if (v232 && *(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v238 = OUTLINED_FUNCTION_373();
        v239(v238);
      }

      v240 = OUTLINED_FUNCTION_22_1();
      v241 = segPumpGetMediaFilePrivateData(v240);
      if (v232)
      {
        v117 = v241[17];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v242 = OUTLINED_FUNCTION_27_1();
          v243(v242);
        }
      }

      v244 = OUTLINED_FUNCTION_22_1();
      v245 = segPumpGetMediaFilePrivateData(v244);
      if (v232)
      {
        v117 = v245[18];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v246 = OUTLINED_FUNCTION_27_1();
          v247(v246);
        }
      }

      v248 = OUTLINED_FUNCTION_22_1();
      v249 = segPumpGetMediaFilePrivateData(v248);
      if (v232)
      {
        v117 = v249[19];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v250 = OUTLINED_FUNCTION_27_1();
          v251(v250);
        }
      }

      v252 = OUTLINED_FUNCTION_22_1();
      v253 = segPumpGetMediaFilePrivateData(v252);
      if (v232)
      {
        v117 = v253[21];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v254 = OUTLINED_FUNCTION_27_1();
          v255(v254);
        }
      }

      v256 = OUTLINED_FUNCTION_22_1();
      v257 = segPumpGetMediaFilePrivateData(v256);
      if (v232)
      {
        v117 = v257[20];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v258 = OUTLINED_FUNCTION_27_1();
          v259(v258);
        }
      }

      v260 = OUTLINED_FUNCTION_22_1();
      v261 = segPumpGetMediaFilePrivateData(v260);
      if (v232)
      {
        v117 = v261[22];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v262 = OUTLINED_FUNCTION_27_1();
          v263(v262);
        }
      }

      OUTLINED_FUNCTION_94_0();
      if (v232)
      {
        v117 = *(v430 + 1128);
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v264 = OUTLINED_FUNCTION_373();
          v265(v264);
        }
      }

      v266 = OUTLINED_FUNCTION_22_1();
      FigMediaSegmentSpecifierGetTimeInSeconds(v266);
      if (v232 && *(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v267 = OUTLINED_FUNCTION_373();
        v268(v267);
      }

      v269 = OUTLINED_FUNCTION_22_1();
      IsConnectedWithHighSpeedHighPower = segPumpGetMediaFilePrivateData(v269);
      if (v232)
      {
        v117 = *(IsConnectedWithHighSpeedHighPower + 40);
        v270 = CMBaseObjectGetVTable();
        v271 = *(v270 + 16);
        IsConnectedWithHighSpeedHighPower = v270 + 16;
        if (*(v271 + 40))
        {
          v272 = OUTLINED_FUNCTION_61_1();
          IsConnectedWithHighSpeedHighPower = v273(v272);
        }
      }

      v274 = v189;
      v275 = *(DerivedStorage + 9252);
      if (*(v189 + 1113))
      {
        if (!v275)
        {
          goto LABEL_373;
        }
      }

      else if (v275 != 2)
      {
        goto LABEL_373;
      }

      IsConnectedWithHighSpeedHighPower = segPumpShouldIssueVerboseEvent(DerivedStorage, v430, v15);
      if (IsConnectedWithHighSpeedHighPower)
      {
        OUTLINED_FUNCTION_146_1();
        if (v117)
        {
          v288 = *(v430 + 752);
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v289 = OUTLINED_FUNCTION_198_0();
            v290(v289);
          }

          OUTLINED_FUNCTION_94_0();
        }

        else
        {
          v288 = 0;
        }

        v291 = segPumpGetMediaFilePrivateData(v15);
        if (v288)
        {
          v117 = v291[184];
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v292 = OUTLINED_FUNCTION_61_1();
            v293(v292);
          }
        }

        v294 = OUTLINED_FUNCTION_22_1();
        v295 = segPumpGetMediaFilePrivateData(v294);
        if (v288)
        {
          v117 = v295[24];
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v296 = OUTLINED_FUNCTION_61_1();
            v297(v296);
          }
        }

        OUTLINED_FUNCTION_146_1();
        v274 = v189;
        if (v117)
        {
          v298 = CMBaseObjectGetVTable();
          v299 = *(v298 + 16);
          IsConnectedWithHighSpeedHighPower = v298 + 16;
          if (*(v299 + 8))
          {
            OUTLINED_FUNCTION_198_0();
            OUTLINED_FUNCTION_305();
            IsConnectedWithHighSpeedHighPower = v300();
          }
        }
      }

LABEL_373:
      if (!*(v274 + 36))
      {
        goto LABEL_379;
      }

      OUTLINED_FUNCTION_146_1();
      if (!v117)
      {
        goto LABEL_379;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v301 = OUTLINED_FUNCTION_198_0();
        v302(v301);
      }

      OUTLINED_FUNCTION_146_1();
      v303 = CMBaseObjectGetVTable();
      v304 = *(v303 + 16);
      IsConnectedWithHighSpeedHighPower = v303 + 16;
      if (!*(v304 + 8))
      {
        goto LABEL_379;
      }

LABEL_378:
      OUTLINED_FUNCTION_198_0();
      OUTLINED_FUNCTION_305();
      IsConnectedWithHighSpeedHighPower = v305();
      goto LABEL_379;
    }
  }

  if (!*(v77 + 31) && *v430 == *(v24 + 8600) && v15 && !*(v77 + 704))
  {
    if (FigMediaSegmentSpecifierGetBytesToRead(v15) < 1)
    {
      v180 = *(MediaFilePrivateData + 5);
      if (!v180)
      {
        goto LABEL_382;
      }
    }

    else
    {
      v180 = FigMediaSegmentSpecifierGetBytesToRead(v15);
      if (!v180)
      {
        goto LABEL_382;
      }
    }

    v285 = (UpTimeNanoseconds - v401) / 1000000.0;
    v286 = *(MediaFilePrivateData + 6);
    v287 = FigMediaSegmentSpecifierGetTimeInSeconds(v15);
    if (v285 >= 2000.0 && v285 - v287 * (v286 / v180) * 1000.0 >= 1000.0)
    {
      *(v77 + 31) = 1;
      segPumpAddMediaSegmentNoResponseErrorIfNecessary(v24, v430, *(v430 + 696));
    }
  }

LABEL_382:
  if (*(v24 + 337) && v31)
  {
    segPumpResumeRoundTripMonitoring(v24);
  }

LABEL_385:
  OUTLINED_FUNCTION_191();
}

void segPumpPerformReportingForMediaFileReadOverHTTP()
{
  OUTLINED_FUNCTION_381_1();
  if (*(v2 + 32))
  {
    v5 = v4;
    v6 = v3;
    v7 = v2;
    OUTLINED_FUNCTION_400();
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_127_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v8 = OUTLINED_FUNCTION_187_1();
      v9(v8);
    }

    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_127_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v10 = OUTLINED_FUNCTION_187_1();
      v11(v10);
    }

    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_127_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v12 = OUTLINED_FUNCTION_187_1();
      v13(v12);
    }

    FigCFDictionaryGetInt64IfPresent();
    FigCFDictionaryGetInt64IfPresent();
    if (v6)
    {
      v14 = *(v0 + 9252);
      if (*(v0 + 9305))
      {
        v15 = v14 != 0;
      }

      else
      {
        v15 = v14 == 2;
      }

      FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v0 + 9312), *(v7 + 32), *(v0 + 9232), 0x1F0B64538, v15);
      segPumpRTCReportingUpdatePrivateAppleCDNInfo(v0, *(v7 + 32), v16, v17, v18, v19, v20, v21, v41, v42, v43, v44, v45, v46, 0, v48, v50, cf, v52, v53, v54, v55, v56, v57, v58[0], v58[1]);
      FigReportingAgentUpdateFinalTransactionMetrics(*(v0 + 9232), *(v7 + 32), 0, 0);
      v58[0] = 0;
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        OUTLINED_FUNCTION_279_1();
        OUTLINED_FUNCTION_26_1();
        v22();
      }

      if (*(v0 + 9232))
      {
        v23 = CFURLCopyHostName(*(v7 + 16));
        if (v23)
        {
          v24 = v23;
          if (*(v0 + 9264) && *(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            v25 = OUTLINED_FUNCTION_489();
            v26(v25);
          }

          CFRelease(v24);
        }
      }

      v57 = 0;
      v58[0] = 0;
      if (v52)
      {
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetDoubleIfPresent();
        if (!FigCreateErrorForOSStatus(v5, v58))
        {
          v27 = (*(v0 + 16 * *(v0 + 8600) + 392) + 680);
          while (1)
          {
            v27 = *v27;
            if (!v27)
            {
              break;
            }

            v28 = v27[22];
            if (v28)
            {
              goto LABEL_34;
            }
          }

          v28 = 0;
LABEL_34:
          v29 = FigCFHTTPCreateAddressString(v28);
          v30 = *(v7 + 8);
          if (v30)
          {
            TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v30);
          }

          else
          {
            TimeInSeconds = 0.0;
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          v33 = *(v7 + 16);
          v34 = v1[2];
          v35 = v58[0];
          if (*v1 > 2uLL)
          {
            v36 = 0;
          }

          else
          {
            v36 = dword_196E7291C[*v1];
          }

          v37 = *(v7 + 8);
          if (v37)
          {
            v38 = FigMediaSegmentSpecifierGetType(v37) == 1;
          }

          else
          {
            v38 = 0;
          }

          v39 = FigMetricHLSMediaSegmentRequestEventCreate(AllocatorForMedia, v33, v34, v29, v49, v47, 0, v35, 0.0, 0.0, 0.0, 0.0, TimeInSeconds, v50, v36, v38, &v57);
          v40 = v57;
          if (!v39)
          {
            segPumpPublishMetricEvent(v0, v57);
            v40 = v57;
          }

          if (v40)
          {
            CFRelease(v40);
          }

          if (v29)
          {
            CFRelease(v29);
          }
        }
      }

      if (v58[0])
      {
        CFRelease(v58[0]);
      }

      segPumpSetWiFiStatsOnNetworkPredictor(v0, v7 + 16);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v50)
  {
    CFRelease(v50);
  }
}

uint64_t segPumpSetCurrentSegmentTooSlow(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 873))
  {
    ++*(result + 8680);
    v3 = *(result + 9232);
    if (v3)
    {
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 16);
      result = VTable + 16;
      v6 = *(v5 + 32);
      if (v6)
      {
        result = v6(v3, 0x1F0B64538, 0x1F0B42378, 1);
      }
    }
  }

  *(a2 + 873) = 257;
  return result;
}

uint64_t segPumpAppendBytesToMediaConnectionBuffer()
{
  OUTLINED_FUNCTION_207();
  if (*(v1 + 272) || (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_296(), result = CMBlockBufferCreateEmpty(v2, v3, v4, v5), !result))
  {
    if (v0)
    {
      OUTLINED_FUNCTION_606();

      return CMBlockBufferAppendBufferReference(v7, v8, v9, v10, v11);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MediaKeyStreamHandleDownloadTimer()
{
  OUTLINED_FUNCTION_50();
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    (segPumpCheckAndTryToAdoptStepAhead)();
  }

  segPumpUnlockAndSendAllPendingNotifications();
  if (cf)
  {
    CFRelease(cf);
  }
}

void segPumpRTCReportingUpdateBandwidthStats(uint64_t a1)
{
  OUTLINED_FUNCTION_112_0();
  v3 = *(v2 + 960);
  if (v3 >= 1)
  {
    segPumpGetObservedNetworkStats(a1, v3, v13);
  }

  if (*(a1 + 9232))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v4 = OUTLINED_FUNCTION_293();
      v5(v4);
    }

    if (*(a1 + 9232))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v6 = OUTLINED_FUNCTION_293();
        v7(v6);
      }

      if (!*(a1 + 9232))
      {
        v10 = 0;
        goto LABEL_13;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 32))
      {
        v8 = OUTLINED_FUNCTION_293();
        v9(v8);
      }
    }
  }

  v10 = *(a1 + 9232);
LABEL_13:
  FigGlobalNetworkBandwidthTrackerGetAggregateBandwidth();
  if (v10 && *(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    v11 = OUTLINED_FUNCTION_171();
    v12(v11);
  }

  segPumpRTCReportingSetCurrentAlternateIndexAndBitRate(a1);
}

void segPumpCustomURLLoaderGetURLGuts(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_845();
  if (!v25 || (v26 = v23, !v23[10]))
  {
    FigSignalErrorAtGM();
    goto LABEL_32;
  }

  v27 = v24;
  FigGetAllocatorForMedia();
  if (!FigCustomURLRequestInfoCreateMutable() && !FigCustomURLRequestInfoSetCryptor() && !FigCustomURLRequestInfoSetIsRenewalRequest() && !FigCustomURLRequestInfoSetIsPingRequest() && !FigCustomURLRequestInfoSetCryptorKeyRequestID() && !FigCustomURLRequestInfoSetHTTPHeaders() && !FigCustomURLRequestInfoSetAllowedUniversalTypeIdentifiers() && !FigCustomURLRequestInfoSetIsSecureStopSupported() && !FigCustomURLRequestInfoSetNetworkHistory() && !FigCustomURLRequestInfoSetExpectedToBlock())
  {
    if (!v27 || !v26[1098] || (segPumpGetCurrentRTT(v26), OUTLINED_FUNCTION_399(), !FigCustomURLRequestInfoSetDefaultLatency()))
    {
      v28 = FigCFHTTPCreateUserAgent();
      if (FigCustomURLRequestInfoSetUserAgent() || a21 && FigCustomURLRequestInfoSetAcceptEncoding() || (a22 <= 0 ? (v29 = a23 < 1) : (v29 = 0), !v29 && FigCustomURLRequestInfoSetByteRange()))
      {
LABEL_28:
        if (!v28)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (!v26[19])
      {
        v30 = v26[8];
        v26[19] = v30;
        dispatch_retain(v30);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v31 = OUTLINED_FUNCTION_284();
        v32(v31);
        goto LABEL_28;
      }

      if (v28)
      {
LABEL_31:
        CFRelease(v28);
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_843();
}

void segPumpCustomURLLoaderDataCallback()
{
  OUTLINED_FUNCTION_193();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v270[16] = *MEMORY[0x1E69E9840];
  v258 = 0;
  v259 = 0;
  v256 = 0;
  v257 = 0;
  v254 = 0;
  v255 = 0;
  v252 = 0;
  v253 = 0;
  v250 = 0;
  cf = 0;
  if (segPumpLockAndCopyPumpFromRetainProxy())
  {
    goto LABEL_256;
  }

  CFDataWithBlockBuffer = FigCustomURLResponseInfoCopyRequestInfo();
  if (CFDataWithBlockBuffer)
  {
    goto LABEL_235;
  }

  FigGetAllocatorForMedia();
  if (v8)
  {
    OUTLINED_FUNCTION_496();
    CFDataWithBlockBuffer = FigCreateCFDataWithBlockBuffer();
    if (CFDataWithBlockBuffer)
    {
      goto LABEL_235;
    }

    v16 = v256;
  }

  else
  {
    OUTLINED_FUNCTION_613();
    v16 = CFDataCreate(v17, v18, v19);
    v256 = v16;
  }

  Length = CFDataGetLength(v16);
  if ((v6 & 1) == 0 && !Length)
  {
LABEL_256:
    v23 = 0;
    goto LABEL_165;
  }

  CFDataWithBlockBuffer = FigCustomURLRequestInfoCopyURL();
  if (CFDataWithBlockBuffer)
  {
    goto LABEL_235;
  }

  if (FigCustomURLResponseInfoCopyUniversalTypeIdentifier())
  {
    OUTLINED_FUNCTION_125_1();
    if (!v64)
    {
      goto LABEL_236;
    }
  }

  if (FigCustomURLResponseInfoCopyContentRenewalDate())
  {
    OUTLINED_FUNCTION_125_1();
    if (!v64)
    {
      goto LABEL_236;
    }
  }

  if (FigCustomURLResponseInfoCopyHTTPHeaders())
  {
    OUTLINED_FUNCTION_125_1();
    if (!v64)
    {
      goto LABEL_236;
    }
  }

  if (FigCustomURLResponseInfoGetHTTPStatusCode())
  {
    OUTLINED_FUNCTION_125_1();
    if (!v64)
    {
      goto LABEL_236;
    }
  }

  if (FigCustomURLResponseInfoGetContentLength())
  {
    OUTLINED_FUNCTION_125_1();
    if (!v64)
    {
      goto LABEL_236;
    }
  }

  FigCustomURLResponseInfoGetRoundTripTime();
  v22 = v21;
  CFDataWithBlockBuffer = FigCustomURLResponseInfoCopyFinalURL();
  if (CFDataWithBlockBuffer)
  {
LABEL_235:
    v0 = CFDataWithBlockBuffer;
LABEL_236:
    v23 = 0;
    goto LABEL_237;
  }

  v23 = FigCFHTTPCreateURLString(v255);
  if (!v23)
  {
    v0 = FigSignalErrorAtGM();
    if (!v0)
    {
      goto LABEL_165;
    }

LABEL_237:
    segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v14, v0);
    goto LABEL_165;
  }

  if (!v4)
  {
    v24 = FigCFHTTPCreateCFErrorFromHTTPStatusCode(0, &v250);
    if (v24)
    {
      v0 = v24;
      goto LABEL_237;
    }

    v4 = v250;
  }

  v25 = v259;
  v26 = v256;
  v231 = v253;
  v233 = v254;
  v227 = v252;
  v249 = cf;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theBuffer = 0;
  v223 = @"CoreMediaErrorDomain";
  if (v4)
  {
    Domain = CFErrorGetDomain(v4);
    Code = CFErrorGetCode(v4);
    v248 = CFErrorCopyDescription(v4);
  }

  else
  {
    v248 = 0;
    Code = 0;
    Domain = @"CoreMediaErrorDomain";
  }

  v246 = v23;
  v247 = v14;
  v244 = v6;
  theDict = v2;
  v221 = v10;
  if (v26 && CFDataGetLength(v26) >= 1)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_496();
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v0 = BlockBufferWithCFDataNoCopy;
      v12 = 0;
      v87 = 0;
      v32 = v248;
      goto LABEL_156;
    }

    DataLength = CMBlockBufferGetDataLength(theBuffer);
  }

  else
  {
    DataLength = 0;
  }

  HIDWORD(v235) = v4 != 0;
  v245 = FigCFHTTPCopyRedirectLocationFromHTTPHeaders(v249);
  v30 = 0;
  v31 = DerivedStorage;
  v32 = DerivedStorage + 392;
  key = *MEMORY[0x1E6962B28];
  v218 = *MEMORY[0x1E69610E0];
  v33 = 1;
LABEL_39:
  v34 = 0;
  v243 = v33;
  while (1)
  {
    v35 = (v32 + 16 * v34);
    if (v30)
    {
      ++v35;
    }

    v36 = *v35;
    v270[0] = 0;
    v265[0] = 0;
    if (*(v36 + 56))
    {
      break;
    }

LABEL_57:
    for (i = 0; i != 3; ++i)
    {
      v58 = *(v32 + 16 * i);
      v59 = v58 + 680;
      while (1)
      {
        v59 = *v59;
        if (!v59)
        {
          break;
        }

        if (*(v59 + 104) == v12)
        {
          goto LABEL_68;
        }
      }

      v58 = *(v32 + 16 * i + 8);
      v59 = v58 + 680;
      while (1)
      {
        v59 = *v59;
        if (!v59)
        {
          break;
        }

        if (*(v59 + 104) == v12)
        {
          goto LABEL_68;
        }
      }
    }

    v59 = 0;
    v58 = 0;
LABEL_68:
    if (v36 == v58)
    {
      v72 = *(v59 + 8);
      v74 = dword_1EAF16A30 <= 2 && *(v31 + 335) != 0 || dword_1EAF16A30 == 0;
      v23 = v246;
      if (!v74)
      {
        OUTLINED_FUNCTION_334_0();
        v75 = OUTLINED_FUNCTION_217_0();
        v76 = os_log_type_enabled(v75, type[0]);
        if (OUTLINED_FUNCTION_28_1(v76))
        {
          OUTLINED_FUNCTION_76_1();
          OUTLINED_FUNCTION_333_0();
          OUTLINED_FUNCTION_332_1();
          OUTLINED_FUNCTION_8_0(v116);
          OUTLINED_FUNCTION_56_0();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
      }

      v12 = v245;
      if (FigCFHTTPIsStatusCodeRedirect(0) && !*(v31 + 335) && v245)
      {
        v128 = *(v36 + 792);
        v129 = CMBaseObjectGetDerivedStorage();
        segPumpCustomURLLoaderCancelRequest(v129);
        *(v59 + 104) = 0;
        v32 = v248;
        if (v72)
        {
          OUTLINED_FUNCTION_182_1();
          segPumpReadMediaFileURL();
          if (appended)
          {
            goto LABEL_154;
          }
        }

        if (v59 == v128)
        {
          v130 = OUTLINED_FUNCTION_770();
          segPumpSetMediaConnectionIsDormant(v130, v131, 1);
        }

        goto LABEL_191;
      }

      v32 = v248;
      if (!*(v31 + 335) && (!v72 || FigMediaSegmentSpecifierGetType(v72) != 1))
      {
        OUTLINED_FUNCTION_175_0();
        v132 = OUTLINED_FUNCTION_617();
        OUTLINED_FUNCTION_214_1(v132, v133, v134, -12881, Domain, v135, v136, v137, v211, SDWORD1(v211));
        segPumpResetConnection(v31, v59 + 16);
        v138 = *(v36 + 24);
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(v72);
        v140 = OUTLINED_FUNCTION_171();
        segPumpEnsureMediaSegmentURLs(v140, v141, v138);
        v142 = MediaFilePrivateData[2];
        if (v142)
        {
          v142 = CFRetain(v142);
        }

        v14 = v247;
        v87 = 0;
        *(v59 + 16) = v142;
        v0 = 4294954415;
        goto LABEL_156;
      }

      *(v31 + 8648) = 0;
      segPumpUpdateNetworkCostHasHighSpeedHighPower(v31);
      if (*(v59 + 128) || (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_296(), appended = CMBlockBufferCreateEmpty(v117, v118, v119, (v59 + 128)), !appended))
      {
        if (!theBuffer || !DataLength || (OUTLINED_FUNCTION_39_1(), appended = CMBlockBufferAppendBufferReference(v120, v121, v122, v123, v124), !appended))
        {
          if (v244)
          {
            FigReportingAgentUpdateFinalReportFromCustomURLResponse(*(v31 + 9232), theDict, SHIDWORD(v235));
          }

          OUTLINED_FUNCTION_182_1();
          segPumpHandleMediaFileData();
        }
      }

LABEL_154:
      v0 = appended;
      goto LABEL_155;
    }

    if (*(v36 + 496) == v12)
    {
      OUTLINED_FUNCTION_331_1();
      if (!v77)
      {
        v0 = 0;
        v87 = 0;
        v23 = v246;
        goto LABEL_156;
      }

      v78 = FigCFHTTPIsStatusCodeRedirect(0);
      v23 = v246;
      if (v78)
      {
        if (v12)
        {
          if (dword_1EAF16A30)
          {
            OUTLINED_FUNCTION_334_0();
            v85 = OUTLINED_FUNCTION_217_0();
            v86 = os_log_type_enabled(v85, type[0]);
            if (OUTLINED_FUNCTION_124_0(v86))
            {
              if (v31)
              {
                OUTLINED_FUNCTION_409_0();
              }

              OUTLINED_FUNCTION_332_1();
              OUTLINED_FUNCTION_8_0(v125);
              v267 = 1024;
              v268 = 0;
              v269 = v126;
              *(v127 + 50) = v12;
              OUTLINED_FUNCTION_66_0();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_345_0();
          }

          segPumpStreamUpdateIndexFileURLWithResponse(v31, v36, v12);
          appended = segPumpSendIndexFileRequest(v31, v36, 1);
          goto LABEL_154;
        }

        goto LABEL_308;
      }

      if (!*(v36 + 456))
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v89 = UpTimeNanoseconds - *(v36 + 432);
        *(v36 + 456) = UpTimeNanoseconds;
        *(v36 + 464) = v89;
        *(v31 + 8644) = 0;
        segPumpUpdateNetworkCostHasHighSpeedHighPower(v31);
      }

      if (!Code)
      {
        v90 = OUTLINED_FUNCTION_617();
        segPumpStreamUpdateIndexFileURLWithResponse(v90, v91, v233);
        if (theBuffer)
        {
          if (!*(v36 + 520))
          {
            FigGetAllocatorForMedia();
            OUTLINED_FUNCTION_296();
            CMBlockBufferCreateEmpty(v92, v93, v94, (v36 + 520));
          }

          if (DataLength)
          {
            OUTLINED_FUNCTION_39_1();
            appended = CMBlockBufferAppendBufferReference(v95, v96, v97, v98, v99);
            if (appended)
            {
              goto LABEL_154;
            }
          }

          v101 = OUTLINED_FUNCTION_617();
          v103 = segPumpVerifyM3UPlaylist(v101, v102);
          if (v103)
          {
            v0 = v103;
            if (dword_1EAF16A30)
            {
              OUTLINED_FUNCTION_334_0();
              v206 = OUTLINED_FUNCTION_217_0();
              v207 = os_log_type_enabled(v206, type[0]);
              if (OUTLINED_FUNCTION_124_0(v207))
              {
                v208 = &stru_1F0B1AFB8;
                if (v31)
                {
                  OUTLINED_FUNCTION_409_0();
                  if (!v64)
                  {
                    v208 = v209;
                  }
                }

                LODWORD(v265[0]) = 136315650;
                OUTLINED_FUNCTION_229_1(v208);
                OUTLINED_FUNCTION_66_0();
                OUTLINED_FUNCTION_44_0();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_345_0();
            }

            goto LABEL_202;
          }
        }

        if (v244)
        {
          if (*(v36 + 520))
          {
            v87 = FigCFHTTPCreateHTTPMessageFromHTTPResponseHeaders(v249);
            *(v36 + 859) = 0;
            *(v36 + 448) = FigGetUpTimeNanoseconds();
            *(v36 + 472) = 0;
            v104 = *(v36 + 480);
            if (v104)
            {
              CFRelease(v104);
              *(v36 + 480) = 0;
            }

            *(v36 + 858) = 1;
            *(v36 + 867) = 0;
            FigHTTPStopAndReleaseTimer((v36 + 504));
            segPumpCheckAndUpdateLowLatencyServerCompliance();
            OUTLINED_FUNCTION_186();
            segPumpParseIndexFile();
            v0 = v105;
            goto LABEL_156;
          }

LABEL_308:
          OUTLINED_FUNCTION_43_1();
          appended = FigSignalErrorAtGM();
          goto LABEL_154;
        }

LABEL_191:
        v0 = 0;
        goto LABEL_155;
      }

      *(v36 + 859) = 0;
      OUTLINED_FUNCTION_206_1(v78, v79, v80, Code, v81, v82, v83, v84, v211, *(&v211 + 1), v214, v218, v221, v223, key, v227, Domain, v231, v233, v235, theDict, 0, v25);
      segPumpHandleIndexFileNetworkError();
      goto LABEL_154;
    }

    if (*(v31 + 8808) == v12)
    {
      segPumpPongCallback(v22, *v31, v29, Code);
      v0 = 0;
      v87 = 0;
      *(v31 + 8808) = 0;
      v23 = v246;
      goto LABEL_203;
    }

    if (++v34 == 3)
    {
      v33 = 0;
      v30 = 1;
      if ((v243 & 1) == 0)
      {
        v66 = v31;
        CryptKeyCommonDataForRequestID = segPumpFindCryptKeyCommonDataForRequestID(v31, v12);
        v23 = v246;
        if (CryptKeyCommonDataForRequestID)
        {
          v68 = CryptKeyCommonDataForRequestID;
          if (dword_1EAF16A30)
          {
            OUTLINED_FUNCTION_334_0();
            v69 = OUTLINED_FUNCTION_217_0();
            v70 = os_log_type_enabled(v69, type[0]);
            if (OUTLINED_FUNCTION_124_0(v70))
            {
              OUTLINED_FUNCTION_76_1();
              OUTLINED_FUNCTION_333_0();
              OUTLINED_FUNCTION_332_1();
              OUTLINED_FUNCTION_8_0(v71);
              OUTLINED_FUNCTION_56_0();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_345_0();
          }

          *(v68 + 153) = 0;
          CryptKeyReleaseAndClearVideoDecryptor(v68);
          CryptKeyReleaseAndClearAudioDecryptor(v68);
        }

        if (segPumpFindSessionDataEntryForRequestID(*v32, v12))
        {
          LOBYTE(v270[0]) = 0;
          OUTLINED_FUNCTION_331_1();
          if (v173)
          {
            if (Code)
            {
              Empty = segPumpHandleSessionDataNetworkError(v25, v36);
              if (!Empty)
              {
                goto LABEL_252;
              }

              goto LABEL_316;
            }

            if (theBuffer && !CMBlockBufferIsEmpty(theBuffer))
            {
              if (!*(v31 + 8088))
              {
                FigGetAllocatorForMedia();
                OUTLINED_FUNCTION_296();
                Empty = CMBlockBufferCreateEmpty(v174, v175, v176, v177);
                if (Empty)
                {
                  goto LABEL_316;
                }
              }

              OUTLINED_FUNCTION_333();
              Empty = CMBlockBufferAppendBufferReference(v179, v180, v181, v182, v183);
              if (Empty)
              {
                goto LABEL_316;
              }
            }

            if ((v244 & 1) == 0)
            {
              v184 = 0;
              goto LABEL_254;
            }

            if (*(v31 + 8088))
            {
              OUTLINED_FUNCTION_617();
              segPumpParseSessionDataFromConnection();
LABEL_252:
              v184 = 0;
              if ((v244 & 1) == 0 || LOBYTE(v270[0]))
              {
                goto LABEL_254;
              }

              *(segPumpEnsureAndGetSessionDataPrivateData(*(v31 + 8112)) + 16) = 1;
              *(v31 + 8040) = 0;
              v199 = *(v31 + 8048);
              if (v199)
              {
                CFRelease(v199);
                *(v31 + 8048) = 0;
              }

              Empty = segPumpSendNextSessionDataRequest(v31, *(v31 + 392), v270);
              if (!Empty)
              {
                if (LOBYTE(v270[0]))
                {
                  v184 = 0;
                  goto LABEL_254;
                }

                segPumpResetConnection(v31, v31 + 7976);
                if (*(v31 + 9824) >= 1)
                {
                  if (FigGetUpTimeNanoseconds() - *(v31 + 9824) < 1)
                  {
                    v184 = 1;
                    OUTLINED_FUNCTION_331_1();
                    v66 = v31;
                    goto LABEL_254;
                  }

                  v66 = v31;
                  FigReportingAgentStatsSetIntValueWithOptions_0(*(v31 + 9232));
                }

                v184 = 1;
                OUTLINED_FUNCTION_331_1();
LABEL_254:
                v0 = 0;
                if (v184)
                {
LABEL_255:
                  dispatch_group_leave(*(v66 + 7960));
                }

LABEL_297:
                v87 = 0;
                goto LABEL_156;
              }

LABEL_316:
              v0 = Empty;
              v210 = 1;
LABEL_317:
              v32 = v248;
              v12 = v245;
              v66 = v31;
              if (v210)
              {
                goto LABEL_255;
              }

              goto LABEL_297;
            }

            v210 = 1;
          }

          else
          {
            v210 = 0;
          }

          OUTLINED_FUNCTION_43_1();
          v0 = FigSignalErrorAtGM();
          goto LABEL_317;
        }

LABEL_201:
        v0 = 0;
LABEL_202:
        v87 = 0;
LABEL_203:
        v32 = v248;
LABEL_204:
        v12 = v245;
        goto LABEL_156;
      }

      goto LABEL_39;
    }
  }

  v37 = 0;
  do
  {
    ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(*(v36 + 56));
    if (ContentKeySpecifiers)
    {
      ContentKeySpecifiers = CFArrayGetCount(ContentKeySpecifiers);
    }

    if (v37 >= ContentKeySpecifiers)
    {
      goto LABEL_57;
    }

    v39 = FigMediaPlaylistGetContentKeySpecifiers(*(v36 + 56));
    ValueAtIndex = CFArrayGetValueAtIndex(v39, v37);
    segPumpGetCryptKeyCommonData(ValueAtIndex, v270, v265, v41, v42, v43, v44, v45, v211, v214, v218, v221, v223, key, v227, Domain, v231);
    if (v46)
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_289_1();
    if (v64)
    {
      break;
    }

    if (*(v52 + 128) == v12)
    {
      break;
    }

    ++v37;
  }

  while (*(v270[0] + 6) != v12);
  if (!ValueAtIndex)
  {
    goto LABEL_57;
  }

  if (*(v31 + 8600) != 1 || !*(v52 + 155))
  {
    goto LABEL_131;
  }

  v53 = *(v31 + 408);
  v54 = *(v53 + 248);
  if (v54)
  {
    segPumpGetCryptKeyCommonData(v54, v270, v265, v47, v48, v49, v50, v51, v211, v214, v218, v221, v223, key, v227, Domain, v231);
    if (v60)
    {
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_289_1();
    if (v64 || *(v61 + 128) == v12)
    {
      if (v53 == v36)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v64 = v53 != v36 && *(v270[0] + 6) == v12;
      if (!v64)
      {
        goto LABEL_55;
      }
    }

    ValueAtIndex = 0;
  }

LABEL_55:
  v55 = *(v31 + 416);
  v56 = *(v55 + 248);
  if (!v56)
  {
    goto LABEL_56;
  }

  segPumpGetCryptKeyCommonData(v56, v270, v265, v47, v48, v49, v50, v51, v211, v214, v218, v221, v223, key, v227, Domain, v231);
  if (v62)
  {
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_289_1();
  if (!v64 && *(v63 + 128) != v12)
  {
    if (v55 == v36 || *(v270[0] + 6) != v12)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if (v55 != v36)
  {
    goto LABEL_57;
  }

LABEL_56:
  if (!ValueAtIndex)
  {
    goto LABEL_57;
  }

LABEL_131:
  v106 = FigCFEqual();
  v23 = v246;
  v215 = v31;
  if (dword_1EAF16A30)
  {
    OUTLINED_FUNCTION_334_0();
    v113 = OUTLINED_FUNCTION_217_0();
    v32 = v264;
    v114 = os_log_type_enabled(v113, type[0]);
    if (OUTLINED_FUNCTION_16_1(v114))
    {
      OUTLINED_FUNCTION_332_1();
      OUTLINED_FUNCTION_8_0(v115);
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
      v32 = v264;
    }

    OUTLINED_FUNCTION_7();
    v106 = OUTLINED_FUNCTION_238_0();
  }

  if (!*(v36 + 592))
  {
    v106 = FigGetUpTimeNanoseconds();
    *(v36 + 592) = v106;
    *(v36 + 600) = v106 - *(v36 + 568);
  }

  v143 = Code;
  if (Code)
  {
    if (Code != -17296 || (v106 = FigCFEqual(), v143 = Code, !v106))
    {
      v151 = OUTLINED_FUNCTION_206_1(v106, v107, v108, v143, v109, v110, v111, v112, v211, *(&v211 + 1), v31, v218, v221, v223, key, v227, Domain, v231, v233, v235, theDict, 0, v25);
      v32 = v248;
      v0 = segPumpHandleCryptKeyNetworkError(v151, v152, ValueAtIndex, v153, v230, v248, v154, v155, v212, v213, v216, v219, v222, v224, keya, v228, v230, v232, v234, v236, theDicta, v239, v240, DataLength, 0, Code);
      v87 = 0;
      goto LABEL_204;
    }

    v264 = 0;
    v263 = 0;
    segPumpGetCryptKeyCommonData(ValueAtIndex, 0, &v264, Code, v109, v110, v111, v112, v211, v31, v218, v221, v223, key, v227, Domain, v231);
    if (!v169)
    {
      FigHTTPStopAndReleaseTimer((v36 + 640));
      if (dword_1EAF16A30)
      {
        *type = 0;
        v261 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v32 = v261;
        v171 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v261);
        if (OUTLINED_FUNCTION_77_0(v171))
        {
          OUTLINED_FUNCTION_332_1();
          OUTLINED_FUNCTION_8_0(v172);
          OUTLINED_FUNCTION_66_0();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
      }

      if (*(v264 + 88) == v12)
      {
        v185 = 96;
        v186 = 72;
      }

      else
      {
        if (*(v264 + 128) != v12)
        {
          if (dword_1EAF16A30)
          {
            *type = 0;
            v261 = OS_LOG_TYPE_DEFAULT;
            v194 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v195 = os_log_type_enabled(v194, v261);
            if (OUTLINED_FUNCTION_77_0(v195))
            {
              OUTLINED_FUNCTION_325_0();
              if (v64)
              {
                v196 = &stru_1F0B1AFB8;
              }

              LODWORD(v265[0]) = 136315906;
              OUTLINED_FUNCTION_229_1(v196);
              v266 = v197;
              *(v198 + 34) = v12;
              OUTLINED_FUNCTION_66_0();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_420();
          }

          v0 = 4294951673;
          goto LABEL_296;
        }

        v185 = 136;
        v186 = 112;
      }

      if (!*(v264 + v185))
      {
        goto LABEL_273;
      }

      v187 = *(v264 + v186);
      v188 = *(CMBaseObjectGetVTable() + 16);
      if (*v188 < 6uLL || !v188[20])
      {
        v0 = 4294954514;
LABEL_296:
        v32 = v248;
        v12 = v245;
        goto LABEL_297;
      }

      OUTLINED_FUNCTION_284_1();
      v169 = v189();
      if (!v169)
      {
        if (v263)
        {
          v270[0] = 0;
          FigCreateErrorForOSStatus(4294951067, v270);
          v190 = v270[0];
          v191 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v191)
          {
            v191(v187, v220, v190);
          }

          if (v270[0])
          {
            CFRelease(v270[0]);
          }
        }

LABEL_273:
        if (*(v264 + 88) == v12)
        {
          CryptKeyReleaseAndClearVideoDecryptor(v264);
          v192 = v264;
          *(v264 + 88) = 0;
          *(v192 + 96) = 0;
          v193 = (v192 + 104);
        }

        else
        {
          if (*(v264 + 128) != v12)
          {
LABEL_292:
            OUTLINED_FUNCTION_331_1();
            *(v201 + 152) = 0;
            appended = segPumpSendCryptKeyRequest(v25, v217, v36, *(v36 + 248), v202, v203, v204, v205);
            goto LABEL_154;
          }

          CryptKeyReleaseAndClearAudioDecryptor(v264);
          v200 = v264;
          *(v264 + 128) = 0;
          *(v200 + 136) = 0;
          v193 = (v200 + 144);
        }

        *v193 = 0;
        goto LABEL_292;
      }
    }

    v0 = v169;
    goto LABEL_296;
  }

  if (!theBuffer)
  {
    goto LABEL_200;
  }

  v270[0] = 0;
  segPumpGetCryptKeyCommonData(ValueAtIndex, 0, v270, Code, v109, v110, v111, v112, v211, v31, v218, v221, v223, key, v227, Domain, v231);
  if (v145)
  {
    goto LABEL_309;
  }

  if (!*(v36 + 656) || !*(v270[0] + 20))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_296();
    v145 = CMBlockBufferCreateEmpty(v160, v161, v162, (v36 + 656));
    if (v145)
    {
      goto LABEL_309;
    }
  }

  if (DataLength)
  {
    OUTLINED_FUNCTION_39_1();
    v145 = CMBlockBufferAppendBufferReference(v163, v164, v165, v166, v167);
    if (v145)
    {
      goto LABEL_309;
    }
  }

  v168 = CMBlockBufferGetDataLength(theBuffer);
  *(v270[0] + 20) += v168;
LABEL_200:
  if ((v244 & 1) == 0)
  {
    goto LABEL_201;
  }

  v270[0] = 0;
  *(v36 + 584) = FigGetUpTimeNanoseconds();
  *(v36 + 608) = 0;
  v144 = *(v36 + 616);
  if (v144)
  {
    CFRelease(v144);
    *(v36 + 616) = 0;
  }

  if (*(v36 + 656))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_496();
    v145 = FigCreateCFDataWithBlockBuffer();
    if (v145)
    {
LABEL_309:
      v0 = v145;
      goto LABEL_202;
    }
  }

  if (v270[0])
  {
    if (v227)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, key, v227);
      OUTLINED_FUNCTION_315_1();
      segPumpCryptSetKey();
      v0 = v158;
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      OUTLINED_FUNCTION_315_1();
      segPumpCryptSetKey();
      v0 = v150;
    }

    v32 = v248;
  }

  else
  {
    v146 = OUTLINED_FUNCTION_182_1();
    v32 = v248;
    v0 = segPumpHandleCryptKeyNetworkError(v146, v147, ValueAtIndex, -15622, Domain, v248, v148, v149, v211, *(&v211 + 1), v215, v218, v221, v223, key, v227, Domain, v231, v233, v235, theDict, 0, v25, DataLength, 0, Code);
  }

  v12 = v245;
  if (v270[0])
  {
    CFRelease(v270[0]);
  }

  v159 = *(v36 + 656);
  if (v159)
  {
    CFRelease(v159);
    *(v36 + 656) = 0;
  }

LABEL_155:
  v87 = 0;
LABEL_156:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v0)
  {
    goto LABEL_237;
  }

LABEL_165:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v255)
  {
    CFRelease(v255);
  }

  if (v252)
  {
    CFRelease(v252);
  }

  if (v253)
  {
    CFRelease(v253);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v257)
  {
    CFRelease(v257);
  }

  if (v256)
  {
    CFRelease(v256);
  }

  if (v254)
  {
    CFRelease(v254);
  }

  if (v250)
  {
    CFRelease(v250);
  }

  segPumpUnlockAndSendAllPendingNotifications();
  if (v259)
  {
    CFRelease(v259);
  }

  OUTLINED_FUNCTION_191();
}

void segPumpCryptSetKey()
{
  OUTLINED_FUNCTION_428_1();
  v55 = v0;
  v56 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  segPumpGetCryptKeyCommonData(v8, 0, v54, v8, v6, v4, v2, v14, v52, v53, 0, v54[1], v54[2], v54[3], v54[4], v54[5], v54[6]);
  if (v15)
  {
    goto LABEL_36;
  }

  FigHTTPStopAndReleaseTimer((v11 + 640));
  if (v9 && FigContentKeySpecifierGetKeySystem(v9) == 2)
  {
    if (v3)
    {
      v16 = CFRetain(v3);
    }

    else
    {
      v16 = 0;
    }

    *(v54[0] + 56) = v16;
    Length = CFDataGetLength(v3);
    if (Length == FigContentKeySpecifierGetCryptKeySize(v9))
    {
      v18 = v54[0];
      *(v54[0] + 152) = 1;
      goto LABEL_12;
    }

    v33 = OUTLINED_FUNCTION_198_0();
    OUTLINED_FUNCTION_214_1(v33, v34, v35, -12885, v36, v37, v38, v39, 3, 1);
    OUTLINED_FUNCTION_303();
LABEL_35:
    v15 = FigSignalErrorAtGM();
    goto LABEL_36;
  }

  KeySystem = FigContentKeySpecifierGetKeySystem(v9);
  v18 = v54[0];
  if (KeySystem != 1)
  {
    goto LABEL_12;
  }

  HIBYTE(v53) = 0;
  v19 = (v54[0] + 88);
  if (*(v54[0] + 88) == v7)
  {
    v20 = 104;
    v21 = 96;
    v22 = 72;
  }

  else
  {
    v19 = (v54[0] + 128);
    if (*(v54[0] + 128) != v7)
    {
LABEL_28:
      v29 = 0;
      goto LABEL_51;
    }

    v20 = 144;
    v21 = 136;
    v22 = 112;
  }

  v25 = *(v54[0] + v22);
  *v19 = 0;
  *(v18 + v21) = 0;
  *(v18 + v20) = 0;
  if (!v25)
  {
    goto LABEL_28;
  }

  if (!v5)
  {
    v30 = *(CMBaseObjectGetVTable() + 16);
    if (*v30 >= 4uLL && v30[12])
    {
      v31 = OUTLINED_FUNCTION_732();
      v29 = v32(v31);
    }

    else
    {
      v29 = -12782;
    }

    if (!*(v13 + 330) || !v29)
    {
      goto LABEL_44;
    }

LABEL_51:
    if (v29 == -15626)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v26)
  {
LABEL_50:
    v29 = -12782;
    goto LABEL_51;
  }

  v15 = v26(v25, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
  if (v15)
  {
LABEL_36:
    v29 = v15;
    goto LABEL_51;
  }

  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v27 = OUTLINED_FUNCTION_187_1();
    v29 = v28(v27);
  }

  else
  {
    v29 = -12782;
  }

  if (*(v13 + 330) && v29)
  {
    goto LABEL_51;
  }

  if (*(v13 + 296))
  {
    if (*(v13 + 329))
    {
      if (!*(v54[0] + 154))
      {
        FigContentKeySpecifierGetIdentifier(v9);
        v40 = OUTLINED_FUNCTION_201_0();
        v15 = segPumpSaveCryptKeyToCache(v40, v41);
        if (v15)
        {
          goto LABEL_36;
        }
      }
    }
  }

LABEL_44:
  v42 = *(CMBaseObjectGetVTable() + 16);
  if (*v42 < 6uLL)
  {
    goto LABEL_50;
  }

  v43 = v42[20];
  if (!v43)
  {
    goto LABEL_50;
  }

  v15 = v43(v25, 2, 3, &v53 + 7, 0);
  if (v15)
  {
    goto LABEL_36;
  }

  if (!*(v54[0] + 88) && !*(v54[0] + 128))
  {
    *(v54[0] + 152) = 1;
    if (*(v13 + 330))
    {
      if (segPumpCryptKeyIsLowValueFairPlayStreamingKey(v9))
      {
        FigGetAllocatorForMedia();
        v44 = OUTLINED_FUNCTION_732();
        if (CMBaseObjectCopyProperty(v44, v45, v46, v47) || (FigGetAllocatorForMedia(), v48 = OUTLINED_FUNCTION_732(), CMBaseObjectCopyProperty(v48, v49, v50, v51)))
        {
          OUTLINED_FUNCTION_303();
          goto LABEL_35;
        }
      }
    }
  }

  v18 = v54[0];
LABEL_12:
  if (*(v18 + 152))
  {
    OUTLINED_FUNCTION_255_1();
    v15 = segPumpContinueAfterKeyFetched();
    goto LABEL_36;
  }

LABEL_13:
  if (*(v13 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_408_0();
    v24();
  }

LABEL_16:
  OUTLINED_FUNCTION_439_1();
}

void segPumpPongCallback(double a1, uint64_t a2, uint64_t a3, int a4)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (!OUTLINED_FUNCTION_154_0())
  {
    if (a4)
    {
      MEMORY[0x2240] = 0;
      MEMORY[0x2250] = 0u;
      if (MEMORY[0x2620] && *(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v10 = OUTLINED_FUNCTION_340_1();
        v11(v10);
      }
    }

    else
    {
      MEMORY[0x2258] = UpTimeNanoseconds;
      MEMORY[0x2248] = (MEMORY[0x2240] + 2 * MEMORY[0x2248]) / 3;
      MEMORY[0x2240] = (a1 * 1000000000.0);
      if (MEMORY[0x2620])
      {
        v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, 0x2240);
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v8 = OUTLINED_FUNCTION_308();
          v9(v8);
        }

        if (v7)
        {
          CFRelease(v7);
        }
      }
    }

    segPumpResumeRoundTripMonitoring(0);
  }

  segPumpUnlockAndSendAllPendingNotifications();
}

uint64_t segPumpMediaFileCreateDecryptedData(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, uint64_t a5, char *a6, int a7, OpaqueCMBlockBuffer *a8)
{
  dataPointerOut[16] = *MEMORY[0x1E69E9840];
  v150 = 0;
  v151 = 0;
  v149 = 0;
  dataLength = 0;
  v148 = 0;
  v145 = 0;
  v146 = 0;
  if (!a3 || !a8)
  {
    OUTLINED_FUNCTION_429();
    return FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_207();
  ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v16);
  segPumpGetCryptKeyCommonData(ContentKeySpecifier, &v146, &v145, v18, v19, v20, v21, v22, v119, v124, v126, v128, v129, a5, v136, v140, v142);
  if (Empty)
  {
    return Empty;
  }

  HIDWORD(v143) = a7 & 1;
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(v8);
  v25 = FigMediaSegmentSpecifierGetContentKeySpecifier(v8);
  v141 = v8;
  if (FigContentKeySpecifierGetEncryptionMethod(v25) == 4)
  {
    TagSize = FigCryptGetTagSize(3);
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_296();
    Empty = CMBlockBufferCreateEmpty(v27, v28, v29, v30);
    if (Empty)
    {
      return Empty;
    }

    v31 = TagSize;
    v32 = a4;
    v33 = (MediaFilePrivateData + 216);
    if (*(MediaFilePrivateData + 27))
    {
      OUTLINED_FUNCTION_39_1();
      Empty = CMBlockBufferAppendBufferReference(v34, v35, v36, v37, v38);
      if (Empty)
      {
        return Empty;
      }

      if (*v33)
      {
        CFRelease(*v33);
        *v33 = 0;
      }
    }

    if (a6)
    {
      Empty = CMBlockBufferAppendBufferReference(0, v32, offsetToDataa, a6, 0);
      if (Empty)
      {
        return Empty;
      }
    }

    if (a7)
    {
      FigGetAllocatorForMedia();
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_197();
      v51 = 0;
    }

    else
    {
      v39 = CMBlockBufferGetDataLength(0);
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_408_0();
      Empty = CMBlockBufferCreateWithBufferReference(v40, v41, v42, v43, v44, MediaFilePrivateData + 27);
      if (Empty)
      {
        return Empty;
      }

      if (v39 <= v31)
      {
        return 0;
      }

      FigGetAllocatorForMedia();
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_197();
      v51 = v39 - v31;
    }

    Empty = CMBlockBufferCreateContiguous(v45, v46, v47, v48, v49, v51, 0, v50);
    if (Empty)
    {
      return Empty;
    }

    a4 = 0;
    a6 = CMBlockBufferGetDataLength(0);
    offsetToDataa = 0;
    v8 = v141;
  }

  if (MediaFilePrivateData[72])
  {
    if (!a6)
    {
      goto LABEL_35;
    }

LABEL_33:
    dataPointerOut[0] = 0;
    Empty = CMBlockBufferGetDataPointer(a4, offsetToDataa, dataPointerOut, 0, &v151);
    if (!Empty)
    {
      if (dataPointerOut[0] < a6)
      {
        goto LABEL_104;
      }

      goto LABEL_35;
    }

    return Empty;
  }

  if (!*(v146 + 24))
  {
    v102 = a4;
    BytePtr = CFDataGetBytePtr(*(v145 + 56));
    Length = CFDataGetLength(*(v145 + 56));
    v104 = FigMediaSegmentSpecifierGetContentKeySpecifier(v8);
    if (FigContentKeySpecifierGetEncryptionMethod(v104) == 4)
    {
      v105 = 3;
    }

    else
    {
      v105 = FigContentKeySpecifierGetEncryptionMethod(v104) == 3 ? 1 : -1;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v107 = FigGetAllocatorForMedia();
    Empty = FigCryptCreateForDecrypt(v105, AllocatorForMedia, 0, v107, BytePtr, Length, (v146 + 24));
    v8 = v141;
    a4 = v102;
    if (Empty)
    {
      return Empty;
    }
  }

  v52 = FigMediaSegmentSpecifierGetContentKeySpecifier(v8);
  if (FigContentKeySpecifierGetKeySystem(v52) == 1)
  {
    v53 = v8;
    v54 = *(v145 + 64);
  }

  else
  {
    IV = FigMediaSegmentSpecifierGetIV(v8);
    v53 = v8;
    v54 = IV;
  }

  v56 = FigMediaSegmentSpecifierGetContentKeySpecifier(v53);
  if (FigContentKeySpecifierGetEncryptionMethod(v56) == 4)
  {
    dataPointerOut[0] = 0;
    lengthAtOffsetOut[0] = 0;
    IVSize = FigCryptGetIVSize(3);
    Empty = CMBlockBufferGetDataPointer(a4, offsetToDataa, lengthAtOffsetOut, 0, dataPointerOut);
    if (Empty)
    {
      return Empty;
    }

    if (lengthAtOffsetOut[0] > IVSize)
    {
      v58 = FigCryptSetIV(*(v146 + 24), dataPointerOut[0]);
      offsetToDataa += IVSize;
      a6 -= IVSize;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_43_1();
    return FigSignalErrorAtGM();
  }

  CFDataGetBytePtr(v54);
  CFDataGetLength(v54);
  v59 = OUTLINED_FUNCTION_246_0();
  v58 = FigCryptSetIV(v59, v60);
LABEL_31:
  v8 = v141;
  if (v58)
  {
    return v58;
  }

  MediaFilePrivateData[72] = 1;
  if (a6)
  {
    goto LABEL_33;
  }

LABEL_35:
  v61 = FigMediaSegmentSpecifierGetContentKeySpecifier(v8);
  CryptBlockSize = FigContentKeySpecifierGetCryptBlockSize(v61);
  v137 = v10;
  if (a7)
  {
    v63 = FigMediaSegmentSpecifierGetContentKeySpecifier(v8);
    if (FigContentKeySpecifierGetEncryptionMethod(v63) == 4)
    {
      v64 = FigCryptGetTagSize(3);
      v65 = a6 >= v64;
      a6 -= v64;
      if (!v65)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_40;
  }

  if (!a6)
  {
    v109 = OUTLINED_FUNCTION_252_1();
    v117 = OUTLINED_FUNCTION_445_0(v109, v110, v111, v112, v113, v114, v115, v116, v120, v122, v125, v127, v11, v130, offsetToDataa, v10, v141, v143, v144, SBYTE2(v144), BYTE3(v144), SHIDWORD(v144));
    if (OUTLINED_FUNCTION_109_0(v117))
    {
      if (v139)
      {
        OUTLINED_FUNCTION_202_1();
      }

      LODWORD(lengthAtOffsetOut[0]) = 136316162;
      OUTLINED_FUNCTION_63_0();
      v153 = v118;
      v154 = offsetToDatac;
      v155 = v118;
      v156 = 0;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524();
    OUTLINED_FUNCTION_429();
    return FigSignalErrorAtGM();
  }

LABEL_40:
  v131 = a8;
  v66 = v10 + 0x2000;
  v67 = (v9 + 840);
  offsetToDatab = 2 * CryptBlockSize;
  v68 = 0x20000 - 2 * CryptBlockSize;
  do
  {
    dataPointerOut[0] = 0;
    v149 = 0;
    v69 = *v67;
    if (*v67)
    {
      v70 = *(v9 + 848);
      if (v68 >= v70)
      {
        goto LABEL_46;
      }

      CFRelease(v69);
      *v67 = 0;
    }

    segPumpGetMediaDataMemoryPool(v10);
    BlockBuffer = FigMemoryPoolCreateBlockBuffer();
    if (BlockBuffer)
    {
      return BlockBuffer;
    }

    v70 = 0;
    *(v9 + 848) = 0;
    v69 = *(v9 + 840);
LABEL_46:
    BlockBuffer = CMBlockBufferGetDataPointer(v69, v70, dataPointerOut, 0, &v150);
    if (BlockBuffer)
    {
      return BlockBuffer;
    }

    if (*(v66 + 704))
    {
      v72 = FigMediaSegmentSpecifierGetBytesToRead(v141) > 0;
    }

    else
    {
      v72 = 0;
    }

    v58 = FigCryptDecryptMemory(*(v146 + 24), SHIDWORD(v143), v72, v151, a6, &v148, v150, dataPointerOut[0], &dataLength, &v149);
    if (v58)
    {
      v86 = OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_214_1(v86, v87, v88, v89, @"CoreMediaErrorDomain", @"Decryption error", v90, v91, 0, 2);
      a6 = 0;
      continue;
    }

    v65 = a6 >= v148;
    a6 -= v148;
    if (!v65)
    {
      OUTLINED_FUNCTION_43_1();
      return FigSignalErrorAtGM();
    }

    v151 += v148;
    if (v149)
    {
      v73 = 0;
    }

    else
    {
      v73 = a6 == 0;
    }

    v74 = v73;
    v75 = v74 & a7;
    MediaFilePrivateData[97] = v75;
    v76 = dataLength;
    if ((a7 & 1) == 0 && !dataLength)
    {
      if (!v75)
      {
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    v77 = *(v9 + 880);
    if (!*(v66 + 184))
    {
      goto LABEL_73;
    }

    v78 = FigMediaSegmentSpecifierGetContentKeySpecifier(v141);
    if (FigContentKeySpecifierGetEncryptionMethod(v78) != 4)
    {
      v76 = dataLength;
LABEL_73:
      if (v76)
      {
        appended = CMBlockBufferAppendBufferReference(v131, *(v9 + 840), *(v9 + 848), v76, 0);
        goto LABEL_82;
      }

      v85 = 0;
LABEL_78:
      *(v9 + 848) += v85;
      goto LABEL_83;
    }

    if (!*(MediaFilePrivateData + 26))
    {
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_296();
      BlockBuffer = CMBlockBufferCreateEmpty(v79, v80, v81, v82);
      if (BlockBuffer)
      {
        return BlockBuffer;
      }
    }

    if (dataLength)
    {
      BlockBuffer = CMBlockBufferAppendBufferReference(*(MediaFilePrivateData + 26), *(v9 + 840), *(v9 + 848), dataLength, 0);
      if (BlockBuffer)
      {
        return BlockBuffer;
      }
    }

    if (!MediaFilePrivateData[97])
    {
      v85 = dataLength;
      goto LABEL_78;
    }

    v83 = CMBlockBufferGetDataLength(*(MediaFilePrivateData + 26));
    if (v83)
    {
      appended = CMBlockBufferAppendBufferReference(v131, *(MediaFilePrivateData + 26), 0, v83, 0);
    }

    else
    {
      appended = 0;
    }

    v92 = *(MediaFilePrivateData + 26);
    if (v92)
    {
      CFRelease(v92);
      *(MediaFilePrivateData + 26) = 0;
    }

LABEL_82:
    *(v9 + 848) += dataLength;
    if (appended)
    {
      return appended;
    }

LABEL_83:
    if (v77 != *(v9 + 880))
    {
      return 0;
    }

    v10 = v137;
    if (!MediaFilePrivateData[97])
    {
LABEL_85:
      if (&a6[offsetToDatab] < CMBlockBufferGetDataLength(*(v9 + 840)) - *(v9 + 848))
      {
        continue;
      }
    }

LABEL_86:
    if (*v67)
    {
      CFRelease(*v67);
      *v67 = 0;
    }

    *(v9 + 848) = 0;
  }

  while (a6 || v149);
  if ((a7 & 1) != 0 && !MediaFilePrivateData[97])
  {
    v93 = OUTLINED_FUNCTION_252_1();
    v101 = OUTLINED_FUNCTION_445_0(v93, v94, v95, v96, v97, v98, v99, v100, v121, v123, v125, @"CoreMediaErrorDomain", v11, v131, offsetToDatab, v137, v141, v143, v144, SBYTE2(v144), BYTE3(v144), SHIDWORD(v144));
    if (OUTLINED_FUNCTION_109_0(v101))
    {
      OUTLINED_FUNCTION_264_0();
      LODWORD(lengthAtOffsetOut[0]) = 136315650;
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524();
    v73 = v58 == -12465;
    v58 = 4294954831;
    if (!v73)
    {
LABEL_104:
      OUTLINED_FUNCTION_429();
      return FigSignalErrorAtGM();
    }
  }

  return v58;
}

uint64_t segPumpDispatchAsyncMediaDelivery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v12 = OUTLINED_FUNCTION_347_1();
  if (!v12)
  {
    return 4294954655;
  }

  v13 = v12;
  *v12 = FigRetainProxyRetain();
  v13[1] = a2;
  v14 = *(a2 + 880);
  v13[2] = *(a2 + 1176);
  v13[3] = v14;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = -1;
  if (a5)
  {
    v15 = CFRetain(a5);
  }

  else
  {
    v15 = 0;
  }

  v13[7] = v15;
  v13[8] = a6;
  dispatch_async_f(*(a1 + 72), v13, segPumpDispatchAsyncMediaDeliveryFunc);
  return 0;
}

void segPumpReplaceMediaFileWithDiscontinuity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  OUTLINED_FUNCTION_369();
  OUTLINED_FUNCTION_140_0();
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    v7 = 0;
    v8 = MEMORY[0x2198];
    do
    {
      if (v8 && *(*(v7 + 392) + 16))
      {
        goto LABEL_12;
      }

      v7 += 16;
      --v8;
    }

    while (v7 != 48);
    v9 = *(v5 + 56);
    if (!v9 || (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v9)) == 0 || CFArrayGetCount(MediaSegmentSpecifiers) <= 0)
    {
LABEL_12:
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM();
      goto LABEL_13;
    }

    MediaEntryForMediaSequence = segPumpGetMediaEntryForMediaSequence(*(v5 + 56), a5);
    if (MediaEntryForMediaSequence)
    {
      if (MEMORY[0x22C0])
      {
        OUTLINED_FUNCTION_307_1();
        segPumpMakeDataCallback(v12, v5, v13, 0, 0x20u, v14, MEMORY[0x1E6960C70], 0, v19, v20, v21, v22);
      }

      else
      {
        v15 = MediaEntryForMediaSequence;
        *(segPumpGetMediaFilePrivateData(MediaEntryForMediaSequence) + 99) = 1;
        if (*(v5 + 256) == v15 || *(v5 + 264) == v15)
        {
          segPumpSetDeliveryStatusForMediaFileAndParts(v15, 1);
        }

        if (MEMORY[0x201A] && MEMORY[0x188] == v5)
        {
          *(v5 + 96) = *(v5 + 96) - FigMediaSegmentSpecifierGetTimeInSeconds(v15);
          MEMORY[0x160] = MEMORY[0x160] - FigMediaSegmentSpecifierGetTimeInSeconds(v15);
          segPumpReadyNotification(0, @"FBPAL_SeekableTimeRangeChanged", 0);
          segPumpReadyNotification(0, @"FBP_DurationChanged", 0);
        }

        OUTLINED_FUNCTION_494();
        segPumpCancelMediaFileReadAndResetData(v16, v17, v18, 0);
        *(v5 + 403) = 1;
        segPumpDeliverNextMediaForSingleStream(0);
      }
    }
  }

LABEL_13:
  segPumpUnlockAndSendAllPendingNotifications();
}

uint64_t segPumpEnsureAndSetupBasicAESProtector(uint64_t a1)
{
  v1 = a1 + 248;
  if (*(a1 + 248) || (AllocatorForMedia = FigGetAllocatorForMedia(), result = FigCPEProtectorCreateForScheme(AllocatorForMedia, @"com.apple.basicAES", 0, v1), !result))
  {
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v4 = OUTLINED_FUNCTION_236();

      return v5(v4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

void segPumpCopyMapEntryFromCache()
{
  OUTLINED_FUNCTION_629();
  v24 = v2;
  v25 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_358_1();
  v7 = v6;
  OUTLINED_FUNCTION_570();
  *v8 = 0;
  if (!segPumpCreateCacheNameFromSegment(v9, v0, &v22, cf))
  {
    if (!*(v7 + 296) || !*(v1 + 64) || (v10 = cf[0], v11 = FigMediaSegmentSpecifierGetStartOffset(v0), FigMediaSegmentSpecifierGetMediaSequence(v0), v12 = OUTLINED_FUNCTION_618(), FigStreamingCacheCopyMediaMap(v12, v13, v10, v11, v14, v15)) || (v16 = v21) == 0)
    {
      v17 = v22;
      StartOffset = FigMediaSegmentSpecifierGetStartOffset(v0);
      v19 = FigMediaSegmentSpecifierGetBytesToRead(v0);
      SavedEntry = segPumpFindSavedEntry(v7, v17, StartOffset, v19);
      if (!SavedEntry)
      {
        goto LABEL_10;
      }

      v16 = *(SavedEntry + 16);
      if (v16)
      {
        v16 = CFRetain(v16);
      }
    }

    *v5 = v16;
  }

LABEL_10:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  OUTLINED_FUNCTION_345_1();
}

void segPumpMoveToNextMedia()
{
  OUTLINED_FUNCTION_216_0();
  v3 = v2 + 0x2000;
  if (!v4)
  {
    v13 = OUTLINED_FUNCTION_311_1();
    if (v13 && *(segPumpGetMediaFilePrivateData(v13) + 2))
    {
      v14 = OUTLINED_FUNCTION_311_1();
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(v14);
      CFRelease(MediaFilePrivateData[2]);
      v16 = OUTLINED_FUNCTION_311_1();
      *(segPumpGetMediaFilePrivateData(v16) + 2) = 0;
    }

    if (*(v3 + 704))
    {
      goto LABEL_10;
    }

LABEL_11:
    v17 = *(v0 + 696);
    v18 = v17[1];
    if (!v18 || (CFRelease(v18), *(*(v0 + 696) + 8) = 0, (v17 = *(v0 + 696)) != 0))
    {
      if (v17[4] || v17[13])
      {
LABEL_23:
        OUTLINED_FUNCTION_198_0();
        OUTLINED_FUNCTION_860();

        segPumpDeliverNextMediaForSingleStream(v20, v21, v22);
        return;
      }
    }

    else
    {
      v17 = *(v0 + 680);
    }

    v19 = v17;
    while (1)
    {
      v19 = *v19;
      if (!v19)
      {
        v19 = *(v0 + 680);
      }

      if (!segPumpMediaConnectionIsActive(v19))
      {
        break;
      }

      if (v19 == v17)
      {
        v19 = v17;
        break;
      }
    }

    *(v0 + 696) = v19;
    goto LABEL_23;
  }

  if (!*(v2 + 8896))
  {
    goto LABEL_11;
  }

  if (*(v2 + 8952))
  {
    *(v2 + 8952) = 0;
    v5 = OUTLINED_FUNCTION_198_0();
    NextIFrame = segPumpRetrieveNextIFrame(v5, v6);
    if (NextIFrame)
    {
      v30 = NextIFrame;
      v8 = OUTLINED_FUNCTION_298();
      segPumpMakeDataCallbackWithOSStatus(v8, v9, v10, 0, 0x20u, v11, v12, 0, 0, v30, 0, 0);
    }

LABEL_10:
    OUTLINED_FUNCTION_860();
    return;
  }

  if (**(v0 + 768))
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_197();
    segPumpAdoptReadAhead(v27);
    if (*(v1 + 8920) != 0.0)
    {
      v28 = OUTLINED_FUNCTION_627();
      segPumpDoAllStepAheads(v28, v29);
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_860();

  segPumpDoNextStep(v24, v25);
}

uint64_t segPumpDoAllStepAheads(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HIDWORD(_48[0]) = 0;
  v42 = 0;
  v7 = *(DerivedStorage + 392);
  v8 = v7[98];
  if (v8 < 1)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = *(v7[96] + 8 * v9);
    if (!v10)
    {
      break;
    }

    if (*(v10 + 8))
    {
      a2 = *(v10 + 8);
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  if (v9 >= v8)
  {
    return 0;
  }

  v39 = v3;
  v40 = a1;
  v11 = 0;
  v12 = 0;
  v41 = 0;
  do
  {
    segPumpGetMediaFilePrivateData(a2);
    FigMediaPlaylistGetPlaylistActiveDurationSecs(v7[7]);
    OUTLINED_FUNCTION_178();
    OUTLINED_FUNCTION_135_1();
    segPumpChooseNextStep(v13, v14, v15, v16, v17, v18, v19, v20, _48 + 6, _48 + 7, _48 + 4, &v41, v38, v39, v40, v41, v42, _48[0], _48[1], _48[2], _48[3], _48[4], _48[5], _48[6], _48[7], _48[8], _48[9], _48[10], _48[11], _48[12], _48[13], vars8);
    if (!v21)
    {
      break;
    }

    a2 = v21;
    segPumpGetMediaFilePrivateData(v21);
    OUTLINED_FUNCTION_440_1();
    if (!*(v2 + 16))
    {
      OUTLINED_FUNCTION_120();

      return FigSignalErrorAtGM();
    }

    if (BYTE5(_48[0]))
    {
      return v11;
    }

    segPumpGetMediaFilePrivateData(a2);
    OUTLINED_FUNCTION_440_1();
    if (!segPumpShouldRequestURLAsHTTPURL(DerivedStorage, *(v2 + 16)))
    {
      return v11;
    }

    if (HIBYTE(_48[0]))
    {
      ++v12;
    }

    else
    {
      if (FigMediaSegmentSpecifierGetContentKeySpecifier(a2))
      {
        ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
        if (segPumpDoesCryptKeyRequireFetch(ContentKeySpecifier))
        {
          return v11;
        }
      }

      MediaFilePrivateData = segPumpGetMediaFilePrivateData(a2);
      MediaFilePrivateData[6] = 0;
      MediaFilePrivateData[7] = 0;
      OUTLINED_FUNCTION_119_0();
      segPumpReadMediaFile(v26, v27, v28, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_322_1();
      if (v35)
      {
        return 4294951670;
      }

      v11 = v34;
      *(DerivedStorage + 9048) = vaddq_s64(*(DerivedStorage + 9048), vdupq_n_s64(1uLL));
      v36 = *(v7[96] + 8 * v9);
      if (!v36)
      {
        return v11;
      }

      *(v36 + 280) = v41;
      ++v9;
    }

    v22 = v7[98];
  }

  while (v9 < v22 && v12 < v22);
  return v11;
}

uint64_t segPumpFetchOrDispatchMediaSegment(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t Ahead, _BYTE *a6, NSObject *a7)
{
  v10 = a4;
  v224 = a1;
  v251 = *MEMORY[0x1E69E9840];
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a4);
  v233 = 0;
  cf2 = 0;
  v232 = 0;
  if (!v10)
  {
    goto LABEL_75;
  }

  if (*(a3 + 256))
  {
    goto LABEL_171;
  }

  if (*(a3 + 264))
  {
    OUTLINED_FUNCTION_376();
    IsMapEntryCached = FigSignalErrorAtGM();
    goto LABEL_175;
  }

  if (Ahead)
  {
    v13 = Ahead;
  }

  else
  {
    v13 = v10;
  }

  v226 = Ahead;
  cf = v10;
  if (dword_1EAF16A30 >= 3)
  {
    OUTLINED_FUNCTION_153_0();
    v14 = OUTLINED_FUNCTION_107_0();
    if (os_log_type_enabled(v14, BYTE4(v229)))
    {
      v15 = v230;
    }

    else
    {
      v15 = v230 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v219 = a7;
      v222 = a6;
      if (a2)
      {
        OUTLINED_FUNCTION_222_0();
      }

      v217 = *a3;
      v216 = *(segPumpGetMediaFilePrivateData(v13) + 4);
      URLString = FigMediaSegmentSpecifierGetURLString(v13);
      v17 = a2;
      if (*(a2 + 347))
      {
        v18 = URLString;
      }

      else
      {
        v18 = @"[]";
      }

      StartOffset = FigMediaSegmentSpecifierGetStartOffset(v13);
      v20 = FigMediaSegmentSpecifierGetStartOffset(v13);
      v21 = FigMediaSegmentSpecifierGetBytesToRead(v13) + v20;
      FigMediaSegmentSpecifierIsMarkedAsGap(v13);
      v234 = 136316930;
      OUTLINED_FUNCTION_172_0();
      v238 = 2048;
      v239 = v217;
      v240 = 2048;
      v241 = v216;
      v242 = v22;
      v243 = v18;
      a2 = v17;
      v244 = 2048;
      v245 = StartOffset;
      v246 = 2048;
      v247 = v21;
      v248 = 1024;
      v249 = v23;
      OUTLINED_FUNCTION_145();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
      a6 = v222;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_420();
    v10 = cf;
  }

  if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v10))
  {
    v250 = 0;
    FigMediaSegmentSpecifierGetMapSegmentSpecifier(v10);
    v24 = OUTLINED_FUNCTION_105_0();
    IsMapEntryCached = segPumpIsMapEntryCached(v24, v25, v26, v27);
    if (IsMapEntryCached)
    {
      goto LABEL_175;
    }

    v29 = v13;
    v30 = v250 != 0;
    if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v10) && FigMediaSegmentSpecifierGetMapSegmentSpecifier(v10) != *(a3 + 288) && FigMediaPlaylistUtilityGetDiscontinuityDomainForSegment(*(a3 + 312), v10) == *(a3 + 304))
    {
      *(a3 + 403) = 1;
    }
  }

  else
  {
    v29 = v13;
    v30 = 1;
  }

  v31 = a2 + 0x2000;
  if (*(a3 + 401))
  {
    if (!MediaFilePrivateData[6] && !*(a2 + 8896))
    {
      v32 = a7;
      v33 = *(a3 + 376) + 1;
      v63 = v33 == FigMediaSegmentSpecifierGetMediaSequence(v10);
      a7 = v32;
      if (!v63)
      {
        *(a3 + 403) = 1;
        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_153_0();
          v219 = OUTLINED_FUNCTION_107_0();
          LODWORD(v216) = BYTE4(v229);
          if (os_log_type_enabled(v219, BYTE4(v229)))
          {
            v34 = v230;
          }

          else
          {
            v34 = v230 & 0xFFFFFFFE;
          }

          if (v34)
          {
            OUTLINED_FUNCTION_222_0();
            v217 = a2;
            v35 = *a3;
            v222 = a6;
            v215 = *(a3 + 376);
            MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(cf);
            FigMediaSegmentSpecifierIsDiscontinuity(cf);
            v234 = 136316418;
            OUTLINED_FUNCTION_172_0();
            a7 = v32;
            v238 = 2048;
            v239 = v35;
            a2 = v217;
            v240 = 2048;
            v241 = v215;
            v242 = 2048;
            v243 = MediaSequence;
            v244 = 1024;
            LODWORD(v245) = v37;
            OUTLINED_FUNCTION_145();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_420();
          Ahead = v226;
          v10 = cf;
        }
      }
    }

    v52 = OUTLINED_FUNCTION_89_1();
    segPumpSetStreamDiscontinuityDomain(v52, v53, v54);
    *(a3 + 944) = -1;
    if (v30)
    {
      goto LABEL_41;
    }
  }

  else
  {
    *(a3 + 376) = FigMediaSegmentSpecifierGetMediaSequence(v10) - 1;
    if (v30)
    {
      *(a3 + 401) = 1;
      v38 = OUTLINED_FUNCTION_89_1();
      segPumpSetStreamDiscontinuityDomain(v38, v39, v40);
      *(a3 + 944) = -1;
LABEL_41:
      v55 = v29;
      if (!*(a3 + 869))
      {
        goto LABEL_198;
      }

      if (!Ahead)
      {
LABEL_180:
        v71 = 0;
        LOBYTE(v10) = 0;
        goto LABEL_181;
      }

      FigMediaSegmentSpecifierGetPartialSegments(v10);
      FirstValue = FigCFArrayGetFirstValue();
      if (FirstValue != Ahead)
      {
LABEL_198:
        if (*(a2 + 8600) == *a3)
        {
          *(v31 + 31) = 0;
        }

        if (!*(a2 + 296))
        {
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_372_1(FirstValue, v42, v43, v44, v45, v46, v47, v48, v214, *(&v214 + 1), v215, v216, v217, v219, v222, v224);
        IsMapEntryCached = segPumpEnsureDiskBackedCacheForStreamPossiblyEndingStream();
        if (IsMapEntryCached)
        {
          goto LABEL_175;
        }

        Ahead = v226;
        if (!*(a3 + 1152))
        {
LABEL_47:
          v56 = *(a3 + 776);
          v57 = &off_196E72000;
          if (Ahead)
          {
            if (v56 >= 1)
            {
              v58 = 0;
              do
              {
                v59 = *(*(a3 + 768) + 8 * v58);
                if (v59)
                {
                  if (*(v59 + 8) == Ahead)
                  {
                    goto LABEL_111;
                  }
                }
              }

              while (v56 != ++v58);
            }
          }

          else if (v56 >= 1)
          {
            v60 = 0;
            while (1)
            {
              v61 = *(*(a3 + 768) + 8 * v60);
              if (v61)
              {
                if (*(v61 + 8) == v10)
                {
                  break;
                }
              }

              if (v56 == ++v60)
              {
                goto LABEL_59;
              }
            }

LABEL_111:
            v128 = OUTLINED_FUNCTION_89_1();
            IsMapEntryCached = segPumpAdoptReadAhead(v128);
            if (!IsMapEntryCached)
            {
              v68 = 0;
              v55 = 0;
              LOBYTE(v10) = 1;
              Ahead = v226;
              goto LABEL_67;
            }

            goto LABEL_175;
          }

LABEL_59:
          if (!*(a2 + 296) || !*(a3 + 64) || (OUTLINED_FUNCTION_89_1(), segPumpSeeIfMediaFileIsInCache(), !v118))
          {
            v62 = *(*(a3 + 696) + 8);
            if (v62)
            {
              v63 = v62 == v55;
            }

            else
            {
              v63 = 1;
            }

            if (!v63)
            {
              OUTLINED_FUNCTION_105_0();
              OUTLINED_FUNCTION_265_0();
              segPumpCancelMediaFileReadAndResetData(v64, v65, v66, v67);
            }

            LOBYTE(v10) = 0;
            v68 = 0;
            *(a3 + 404) = 1;
LABEL_67:
            v69 = *(a3 + 256);
            *(a3 + 256) = cf;
            CFRetain(cf);
            if (v69)
            {
              CFRelease(v69);
            }

            v70 = *(a3 + 264);
            *(a3 + 264) = Ahead;
            if (Ahead)
            {
              CFRetain(Ahead);
            }

            if (v70)
            {
              CFRelease(v70);
            }

            if (!v55)
            {
              if (!v68)
              {
LABEL_75:
                v71 = 0;
LABEL_76:
                Ahead = 0;
                goto LABEL_181;
              }

LABEL_116:
              MediaFilePrivateData[14] = 0;
              FigMediaSegmentSpecifierGetMediaSequence(v68);
              OUTLINED_FUNCTION_142_1();
              v137 = OUTLINED_FUNCTION_105_0();
              NetworkURLFromPumpCache = segPumpDispatchAsyncMediaDelivery(v137, v138, v139, -1, 0, v140);
              if (!NetworkURLFromPumpCache)
              {
                v71 = dword_1EAF16A30;
                if (dword_1EAF16A30)
                {
                  v218 = a2;
                  OUTLINED_FUNCTION_153_0();
                  v141 = OUTLINED_FUNCTION_107_0();
                  v142 = v230;
                  if (os_log_type_enabled(v141, BYTE4(v229)))
                  {
                    v143 = v142;
                  }

                  else
                  {
                    v143 = v142 & 0xFFFFFFFE;
                  }

                  if (v143)
                  {
                    v220 = a7;
                    v223 = a6;
                    v144 = &stru_1F0B1AFB8;
                    if (v218)
                    {
                      OUTLINED_FUNCTION_392_1();
                      if (!v63)
                      {
                        v144 = v145;
                      }
                    }

                    v146 = *a3;
                    v147 = *(segPumpGetMediaFilePrivateData(v68) + 4);
                    v148 = FigMediaSegmentSpecifierGetURLString(v68);
                    if (*(v218 + 347))
                    {
                      v149 = v148;
                    }

                    else
                    {
                      v149 = @"[]";
                    }

                    v150 = FigMediaSegmentSpecifierGetStartOffset(v68);
                    v151 = FigMediaSegmentSpecifierGetStartOffset(v68);
                    v152 = FigMediaSegmentSpecifierGetBytesToRead(v68);
                    v234 = 136316674;
                    v235 = "segPumpFetchOrDispatchMediaSegment";
                    v236 = 2114;
                    v237 = v144;
                    v238 = 2048;
                    v239 = v146;
                    v240 = 2048;
                    v241 = v147;
                    v242 = 2114;
                    v243 = v149;
                    v244 = 2048;
                    v245 = v150;
                    v246 = 2048;
                    v247 = v152 + v151;
                    OUTLINED_FUNCTION_145();
                    OUTLINED_FUNCTION_23();
                    _os_log_send_and_compose_impl();
                    a7 = v220;
                    a6 = v223;
                  }

                  OUTLINED_FUNCTION_109();
                  LOBYTE(v10) = 1;
                  OUTLINED_FUNCTION_417();
                  v71 = 0;
                  Ahead = 0;
                  a2 = v218;
                }

                else
                {
                  Ahead = 0;
                  LOBYTE(v10) = 1;
                }

                goto LABEL_181;
              }

LABEL_89:
              Ahead = NetworkURLFromPumpCache;
              v71 = 0;
              goto LABEL_181;
            }

            IsMarkedAsGap = FigMediaSegmentSpecifierIsMarkedAsGap(v55);
            if (IsMarkedAsGap)
            {
              v121 = OUTLINED_FUNCTION_372_1(IsMarkedAsGap, v98, v99, v100, v101, v102, v103, v104, v214, *(&v214 + 1), v215, v216, v217, v219, v222, v224);
              NetworkURLFromPumpCache = segPumpHandleMediaFileNetworkError(v121, v122, 0, v55, 4294951877, 0);
              if (NetworkURLFromPumpCache)
              {
                goto LABEL_89;
              }

              if (*(a2 + 8328) || !*(a2 + 8280))
              {
                v123 = FigMediaSegmentSpecifierGetMediaSequence(v55);
                segPumpGetFragmentNumber(cf, v226);
                v124 = OUTLINED_FUNCTION_105_0();
                NetworkURLFromPumpCache = segPumpDispatchAsyncMediaDelivery(v124, v125, v123, v126, 0, v127);
                if (NetworkURLFromPumpCache)
                {
                  goto LABEL_89;
                }
              }
            }

            else
            {
              v105 = OUTLINED_FUNCTION_105_0();
              NetworkURLFromPumpCache = segPumpCopyAndCreateNetworkURLFromPumpCache(v105, v106, v107);
              if (NetworkURLFromPumpCache)
              {
                goto LABEL_89;
              }

              v108 = FigCFHTTPCompareURLs(*(a3 + 24), cf2);
              if (!v108)
              {
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_153_0();
                  v116 = OUTLINED_FUNCTION_107_0();
                  v117 = os_log_type_enabled(v116, BYTE4(v229));
                  if (OUTLINED_FUNCTION_115_1(v117))
                  {
                    v234 = *(v57 + 134);
                    v235 = "segPumpFetchOrDispatchMediaSegment";
                    OUTLINED_FUNCTION_4_1();
                    OUTLINED_FUNCTION_44_0();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_414();
                }

                *(a3 + 136) = *(a3 + 376);
                v153 = OUTLINED_FUNCTION_105_0();
                segPumpStopStream(v153, v154, 1);
                v155 = *(a3 + 256);
                if (v155)
                {
                  CFRelease(v155);
                  *(a3 + 256) = 0;
                }

                v156 = *(a3 + 264);
                if (v156)
                {
                  CFRelease(v156);
                  *(a3 + 264) = 0;
                }

                v157 = OUTLINED_FUNCTION_105_0();
                Ahead = segPumpSendIndexFileRequest(v157, v158, 0);
                v71 = 1;
                goto LABEL_181;
              }

              OUTLINED_FUNCTION_372_1(v108, v109, v110, v111, v112, v113, v114, v115, v214, *(&v214 + 1), v215, v216, v217, v219, v222, v224);
              OUTLINED_FUNCTION_119_0();
              NetworkURLFromPumpCache = segPumpReadMediaFile(v130, v131, v132, v133, v134, v135, v136, 0);
              if (NetworkURLFromPumpCache)
              {
                goto LABEL_89;
              }
            }

            LOBYTE(v10) = 1;
            if (!v68)
            {
              goto LABEL_75;
            }

            goto LABEL_116;
          }

          if (!Ahead)
          {
            if (FigMediaSegmentSpecifierGetContentKeySpecifier(v10))
            {
              v230 = 0;
              ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v10);
              segPumpGetCryptKeyCommonData(ContentKeySpecifier, 0, &v230, v182, v183, v184, v185, v186, v214, v215, v216, v217, v219, v222, v224, MediaFilePrivateData, v226);
              if (IsMapEntryCached)
              {
                goto LABEL_175;
              }

              v187 = v230;
              if (!*(v230 + 152))
              {
                v188 = *(a3 + 256);
                if (v188)
                {
                  CFRelease(v188);
                  *(a3 + 256) = 0;
                  v187 = v230;
                }

                if (*(v187 + 153) || (v189 = *(a3 + 248), v189 == FigMediaSegmentSpecifierGetContentKeySpecifier(v10)))
                {
                  Ahead = 0;
                }

                else
                {
                  v203 = OUTLINED_FUNCTION_105_0();
                  segPumpCancelCryptReadAndResetData(v203);
                  v204 = *(a3 + 248);
                  v205 = FigMediaSegmentSpecifierGetContentKeySpecifier(v10);
                  *(a3 + 248) = v205;
                  if (v205)
                  {
                    CFRetain(v205);
                  }

                  if (v204)
                  {
                    CFRelease(v204);
                  }

                  OUTLINED_FUNCTION_166_0();
                  Ahead = segPumpSendCryptKeyRequest(v206, v207, v208, v209, v210, v211, v212, v213);
                  OUTLINED_FUNCTION_322_1();
                  v10 = cf;
                  v57 = &off_196E72000;
                  if (v63)
                  {
                    Ahead = 4294951670;
                    goto LABEL_180;
                  }
                }

                if (*(a2 + 330))
                {
                  if (dword_1EAF16A30)
                  {
                    v190 = a2;
                    OUTLINED_FUNCTION_201_1();
                    v191 = OUTLINED_FUNCTION_141_1();
                    if (OUTLINED_FUNCTION_443_0(v191, v192, v193, v194, v195, v196, v197, v198, v214, *(&v214 + 1), v215, v216, v217, a7, v222, v224, MediaFilePrivateData, v226, cf, v229, SBYTE2(v229), BYTE3(v229), SHIDWORD(v229)))
                    {
                      v199 = v10;
                    }

                    else
                    {
                      v199 = v10 & 0xFFFFFFFE;
                    }

                    if (v199)
                    {
                      OUTLINED_FUNCTION_254_0();
                      v200 = *a3;
                      FigMediaSegmentSpecifierGetContentKeySpecifier(cfa);
                      v234 = 136316162;
                      OUTLINED_FUNCTION_172_0();
                      v238 = 2048;
                      v239 = v200;
                      v240 = 2112;
                      v241 = cfa;
                      v242 = 2112;
                      v243 = v201;
                      OUTLINED_FUNCTION_145();
                      OUTLINED_FUNCTION_44_0();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_420();
                    a2 = v190;
                    a7 = v221;
                  }

                  *(a3 + 405) = 1;
                  goto LABEL_180;
                }
              }
            }

            if (*(a3 + 405))
            {
              if (dword_1EAF16A30)
              {
                OUTLINED_FUNCTION_153_0();
                v119 = OUTLINED_FUNCTION_107_0();
                v120 = os_log_type_enabled(v119, BYTE4(v229));
                if (OUTLINED_FUNCTION_77_0(v120))
                {
                  OUTLINED_FUNCTION_222_0();
                  v234 = 136315650;
                  v235 = "segPumpFetchOrDispatchMediaSegment";
                  OUTLINED_FUNCTION_4_1();
                  OUTLINED_FUNCTION_44_0();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_420();
                v10 = cf;
              }

              *(a3 + 405) = 0;
            }

            MediaFilePrivateData[13] = v232;
            v159 = OUTLINED_FUNCTION_89_1();
            IsMapEntryCached = segPumpSetMediaFilePumpTimeOffsetsArray(v159, v160, v161);
            if (!IsMapEntryCached)
            {
              Ahead = v226;
              if (v233)
              {
                v68 = v10;
                LOBYTE(v10) = 0;
                v55 = 0;
                goto LABEL_67;
              }

              v230 = 0;
              v162 = *(*(a3 + 696) + 8);
              if (v162 == v10)
              {
                v163 = 0;
              }

              else
              {
                v163 = v10;
                if (v162)
                {
                  OUTLINED_FUNCTION_105_0();
                  OUTLINED_FUNCTION_265_0();
                  segPumpCancelMediaFileReadAndResetData(v164, v165, v166, v167);
                  v163 = v10;
                }
              }

              v168 = v163;
              FigStreamingCacheMediaSegmentGetLength(*(a2 + 296), *(a3 + 64), v232, 0, &v230);
              if (v230 && v230 != MediaFilePrivateData[7])
              {
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_201_1();
                  v171 = OUTLINED_FUNCTION_141_1();
                  v179 = OUTLINED_FUNCTION_443_0(v171, v172, v173, v174, v175, v176, v177, v178, v214, *(&v214 + 1), v215, v216, v217, v219, v222, v224, MediaFilePrivateData, v226, cf, v229, SBYTE2(v229), BYTE3(v229), SHIDWORD(v229));
                  if (OUTLINED_FUNCTION_77_0(v179))
                  {
                    OUTLINED_FUNCTION_222_0();
                    v234 = 136315906;
                    v235 = "segPumpFetchOrDispatchMediaSegment";
                    v236 = 2114;
                    OUTLINED_FUNCTION_6_1();
                    OUTLINED_FUNCTION_228_0();
                    OUTLINED_FUNCTION_145();
                    OUTLINED_FUNCTION_44_0();
                    _os_log_send_and_compose_impl();
                  }

                  v55 = v168;
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_420();
                  v180 = 0;
                  v68 = cf;
                  goto LABEL_177;
                }

                v180 = 0;
                v68 = v10;
              }

              else
              {
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_201_1();
                  v169 = OUTLINED_FUNCTION_141_1();
                  v170 = os_log_type_enabled(v169, BYTE3(v229));
                  if (OUTLINED_FUNCTION_288_1(v170))
                  {
                    OUTLINED_FUNCTION_222_0();
                    v234 = 136315906;
                    v235 = "segPumpFetchOrDispatchMediaSegment";
                    v236 = 2114;
                    OUTLINED_FUNCTION_6_1();
                    OUTLINED_FUNCTION_228_0();
                    OUTLINED_FUNCTION_145();
                    OUTLINED_FUNCTION_44_0();
                    _os_log_send_and_compose_impl();
                  }

                  v55 = v168;
                  OUTLINED_FUNCTION_109();
                  v180 = 1;
                  OUTLINED_FUNCTION_454();
                  v68 = 0;
                  Ahead = v226;
                  goto LABEL_177;
                }

                v68 = 0;
                v180 = 1;
              }

              v55 = v168;
LABEL_177:
              v57 = &off_196E72000;
              LOBYTE(v10) = 0;
              *(a3 + 404) = v180;
              goto LABEL_67;
            }

LABEL_175:
            Ahead = IsMapEntryCached;
            goto LABEL_180;
          }
        }
      }

LABEL_171:
      v71 = 0;
      LOBYTE(v10) = 0;
      goto LABEL_76;
    }

    v49 = OUTLINED_FUNCTION_89_1();
    segPumpSetStreamDiscontinuityDomain(v49, v50, v51);
    *(a3 + 944) = -1;
  }

  CMBaseObjectGetDerivedStorage();
  MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v10);
  v73 = segPumpGetMediaFilePrivateData(v10);
  v74 = segPumpGetMediaFilePrivateData(MapSegmentSpecifier);
  if (!MapSegmentSpecifier)
  {
    v78 = *(a3 + 256);
    *(a3 + 256) = 0;
    goto LABEL_84;
  }

  v75 = *(a3 + 776);
  if (v75 < 1)
  {
LABEL_83:
    v78 = *(a3 + 256);
    *(a3 + 256) = MapSegmentSpecifier;
    CFRetain(MapSegmentSpecifier);
LABEL_84:
    if (v78)
    {
      CFRelease(v78);
    }

    v79 = *(a3 + 264);
    if (v79)
    {
      CFRelease(v79);
      *(a3 + 264) = 0;
    }

    LOBYTE(v10) = 1;
    *(a3 + 404) = 1;
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(cf);
    v81 = FigMediaSegmentSpecifierSetTimeInSeconds(MapSegmentSpecifier, TimeInSeconds);
    v74[4] = v73[4];
    v74[6] = 0;
    v74[7] = 0;
    OUTLINED_FUNCTION_372_1(v81, v82, v83, v84, v85, v86, v87, v88, v214, *(&v214 + 1), v215, v216, v217, v219, v222, v224);
    OUTLINED_FUNCTION_119_0();
    NetworkURLFromPumpCache = segPumpReadMediaFile(v89, v90, v91, v92, v93, v94, v95, 0);
    goto LABEL_89;
  }

  v76 = 0;
  while (1)
  {
    v77 = *(*(a3 + 768) + 8 * v76);
    if (v77)
    {
      if (*(v77 + 8) == MapSegmentSpecifier)
      {
        break;
      }
    }

    if (v75 == ++v76)
    {
      goto LABEL_83;
    }
  }

  v129 = OUTLINED_FUNCTION_105_0();
  Ahead = segPumpAdoptReadAhead(v129);
  v71 = 0;
  LOBYTE(v10) = 1;
LABEL_181:
  if (a7)
  {
    LOBYTE(a7->isa) = v10;
  }

  if (a6)
  {
    *a6 = v71;
  }

  segPumpUpdateBufferingDoneState(a2);
  if (cf2)
  {
    CFRelease(cf2);
  }

  return Ahead;
}

uint64_t segPumpCopyAndCreateNetworkURLFromPumpCache(uint64_t a1, uint64_t a2, void *a3)
{
  URLString = 0;
  v5 = *(a1 + 296);
  if (!v5)
  {
    goto LABEL_10;
  }

  if (*(a1 + 8896))
  {
    if (*(a1 + 8212) && *(a1 + 392) == a2)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = *(a2 + 24);
    if (v8)
    {
      v8 = CFRetain(v8);
    }

    goto LABEL_12;
  }

  if (!*(a1 + 8213))
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!*(a2 + 64))
  {
    goto LABEL_10;
  }

  v6 = FigStreamingCacheMediaStreamCopyNetworkURL(v5, *(a2 + 64), &URLString);
  if (!v6)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v8 = CFURLCreateWithString(AllocatorForMedia, URLString, 0);
LABEL_12:
    v9 = 0;
    *a3 = v8;
    goto LABEL_13;
  }

  v9 = v6;
LABEL_13:
  if (URLString)
  {
    CFRelease(URLString);
  }

  return v9;
}

void segPumpChooseNextStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29, _BYTE *a30, _BYTE *a31, uint64_t *a32)
{
  OUTLINED_FUNCTION_813();
  v34 = v33;
  v164 = v35;
  v161 = v36;
  v155 = v37;
  v152 = v38;
  v157 = v39;
  v41 = v40;
  MediaEntryForTimeFromEnd = v42;
  v44 = v32;
  v46 = v45;
  v206 = *MEMORY[0x1E69E9840];
  v47 = *(v45 + 392);
  v166 = *(v47 + 857);
  *a29 = 0;
  *a30 = 0;
  *a31 = 0;
  if (!v42)
  {
    MediaEntryForTimeFromEnd = segPumpGetMediaEntryForTimeFromEnd(*(v47 + 56), 0, 0, v32);
  }

  v48 = segPumpGetMediaEntryForTimeFromEnd(*(v47 + 56), v44 > v41, 0, v41);
  if (!v48)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(*(v47 + 56));
    if (v44 > v41)
    {
      LastValue = FigCFArrayGetLastValue();
    }

    else
    {
      LastValue = FigCFArrayGetFirstValue();
    }

    v48 = LastValue;
  }

  v153 = v46 + 0x2000;
  if (*(v46 + 8218))
  {
    v50 = v46;
    v51 = v34;
    v52 = MediaEntryForTimeFromEnd;
    v53 = 0;
    v54 = 0;
    goto LABEL_19;
  }

  v50 = v46;
  segPumpGetLiveBoundary(v46, *(v47 + 56));
  v55 = OUTLINED_FUNCTION_198();
  v54 = segPumpGetMediaEntryForTimeFromEnd(v55, v56, 0, v57);
  if (v54)
  {
    v51 = v34;
    if (MediaEntryForTimeFromEnd)
    {
      FigMediaSegmentSpecifierGetMediaSequence(MediaEntryForTimeFromEnd);
      v52 = MediaEntryForTimeFromEnd;
      v58 = OUTLINED_FUNCTION_199();
      if (MediaEntryForTimeFromEnd > FigMediaSegmentSpecifierGetMediaSequence(v58))
      {
        v52 = v54;
      }

      if (!v48)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v52 = 0;
      if (!v48)
      {
LABEL_17:
        v53 = 1;
        goto LABEL_19;
      }
    }

    FigMediaSegmentSpecifierGetMediaSequence(v48);
    v59 = OUTLINED_FUNCTION_199();
    if (MediaEntryForTimeFromEnd > FigMediaSegmentSpecifierGetMediaSequence(v59))
    {
      v48 = v54;
    }

    goto LABEL_17;
  }

  v51 = v34;
  v52 = MediaEntryForTimeFromEnd;
  v53 = 0;
LABEL_19:
  v60 = a32;
  v61 = v52 != v48 || v52 == 0;
  if (v61 || v166 != 0)
  {
    goto LABEL_34;
  }

  if (v44 <= v41)
  {
    PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(v48);
LABEL_33:
    v48 = PreviousSegment;
    goto LABEL_34;
  }

  v64 = v53 ^ 1;
  if (v48 == v54)
  {
    v64 = 1;
  }

  if ((v64 & 1) == 0)
  {
    PreviousSegment = FigMediaSegmentSpecifierGetNextSegment(v48);
    goto LABEL_33;
  }

LABEL_34:
  if (v48)
  {
    v65 = v53;
  }

  else
  {
    v65 = 0;
  }

  if (v65 == 1 && ((FigMediaSegmentSpecifierGetMediaSequence(v48), v66 = OUTLINED_FUNCTION_199(), MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(v66), v44 > v41) ? (v68 = v53 >= MediaSequence) : (v68 = 0), v68))
  {
    v71 = v52;
    if (*(segPumpGetMediaFilePrivateData(v54) + 73))
    {
      v73 = 0;
      *a31 = 1;
      v72 = 0;
      goto LABEL_55;
    }
  }

  else
  {
    if (v54)
    {
      v69 = 1;
    }

    else
    {
      v69 = v48 == 0;
    }

    if (!v69 && v44 > v41)
    {
      v71 = v52;
      if (!*(segPumpGetMediaFilePrivateData(v48) + 73))
      {
        goto LABEL_56;
      }

      goto LABEL_52;
    }

    v71 = v52;
    if (!v48)
    {
LABEL_52:
      v72 = 0;
      v73 = 0;
LABEL_55:
      v74 = 0.0;
      v75 = v51;
      v76 = v164;
      goto LABEL_161;
    }
  }

LABEL_56:
  v75 = v51;
  if (!v71)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(*(v47 + 56));
    v71 = FigCFArrayGetLastValue();
  }

  if (v48 == v71)
  {
    v81 = 1;
    v80 = v48;
  }

  else
  {
    if (v44 > v41)
    {
      NextSegment = FigMediaSegmentSpecifierGetNextSegment(v71);
      if (!NextSegment)
      {
        FigMediaPlaylistGetMediaSegmentSpecifiers(*(v47 + 56));
        NextSegment = FigCFArrayGetLastValue();
      }

      v78 = v48;
      v80 = NextSegment;
    }

    else
    {
      FirstValue = FigMediaSegmentSpecifierGetPreviousSegment(v71);
      if (!FirstValue)
      {
        FigMediaPlaylistGetMediaSegmentSpecifiers(*(v47 + 56));
        FirstValue = FigCFArrayGetFirstValue();
      }

      v78 = FirstValue;
      NextSegment = v48;
      v80 = v78;
    }

    v81 = 1;
    if (v80 != v48 && NextSegment && NextSegment != v78)
    {
      v81 = 1;
      do
      {
        NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
        ++v81;
      }

      while (NextSegment && NextSegment != v78);
    }
  }

  v82 = *(v50 + 8920);
  if (v82 == 0.0)
  {
    v83 = 1.0;
  }

  else
  {
    v83 = 1.0 / fabsf(v82);
  }

  v84 = *(v50 + 8928);
  v85 = (v157 - FigGetUpTimeNanoseconds()) / 1000000000.0;
  v74 = 0.0;
  if (v85 < 0.0)
  {
    v85 = 0.0;
  }

  v151 = v85;
  v160 = v47;
  v73 = 0;
  if (!v80)
  {
    v72 = 0;
    LODWORD(v165) = 1;
    v87 = 0.0;
    goto LABEL_121;
  }

  v86 = v83 * (vabdd_f64(v41, v44) / v84);
  v87 = 0.0;
  v165 = 1;
  while (1)
  {
    if (*(v50 + 296) && *(v47 + 64) && (OUTLINED_FUNCTION_313_1(), segPumpSeeIfMediaFileIsInCache(), v91))
    {
      v88 = v50;
      v90 = 0;
      v74 = 0.0;
      v89 = 1;
    }

    else
    {
      FigMediaSegmentSpecifierGetBytesToRead(v80);
      v88 = v50;
      v74 = segPumpPredictIFrameDownload();
      v89 = 0;
      v90 = 1;
    }

    v92 = v80;
    if (v44 <= v41 || (v92 = FigMediaSegmentSpecifierGetPreviousSegment(v80)) != 0)
    {
      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v92);
    }

    else
    {
      TimeInSeconds = 0.0;
    }

    v87 = v87 + v83 * TimeInSeconds;
    v94 = v90 ^ 1;
    if (v161)
    {
      v94 = 0;
    }

    if (v94)
    {
      goto LABEL_108;
    }

    v95 = v74 < v151 + v87;
    if (v87 < v86)
    {
      v95 = 0;
    }

    if (v80 != v48 && !v95)
    {
      goto LABEL_108;
    }

    v149 = v71;
    v150 = v75;
    v97 = *(v160 + 16);
    v96 = *(v160 + 24);
    segPumpGetMediaFilePrivateData(v80);
    v98 = OUTLINED_FUNCTION_230_1();
    segPumpEnsureMediaSegmentURLs(v98, v97, v96);
    if (!*(v75 + 16))
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM();
      v72 = 0;
      goto LABEL_139;
    }

    v71 = v149;
    if (!v73)
    {
      if (!FigMediaSegmentSpecifierGetMapSegmentSpecifier(v80))
      {
        goto LABEL_103;
      }

      LOBYTE(v170) = 0;
      MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v80);
      if (segPumpIsMapEntryCached(v88, v160, MapSegmentSpecifier, &v170))
      {
        v72 = 0;
LABEL_127:
        v73 = 0;
        goto LABEL_139;
      }

      if (v170)
      {
LABEL_103:
        v73 = 0;
        goto LABEL_104;
      }

      v73 = 1;
    }

    if (!v152)
    {
      v72 = 0;
      goto LABEL_139;
    }

    v99 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v80);
    FigMediaSegmentSpecifierGetBytesToRead(v99);
    OUTLINED_FUNCTION_171_1();
    v74 = v74 + segPumpPredictIFrameDownload();
LABEL_104:
    if (v80 == v48 || v74 < v151 + v87)
    {
      break;
    }

LABEL_108:
    if (v166)
    {
      if (!v90)
      {
        if (!v89)
        {
          OUTLINED_FUNCTION_335_0();
          v167 = v123;
          v50 = v88;
          v72 = v124;
          goto LABEL_123;
        }

LABEL_163:
        v159 = 0;
        goto LABEL_164;
      }
    }

    else
    {
      v102 = v89 ^ 1;
      if (v81 - 1 > v165)
      {
        v102 = 1;
      }

      if ((v102 & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    if (v44 > v41)
    {
      v103 = FigMediaSegmentSpecifierGetNextSegment(v80);
    }

    else
    {
      v103 = FigMediaSegmentSpecifierGetPreviousSegment(v80);
    }

    v80 = v103;
    v47 = v160;
    v50 = v88;
    ++v165;
    if (!v103)
    {
      v72 = 0;
LABEL_121:
      v104 = v155 != 0;
LABEL_122:
      v167 = v104;
      goto LABEL_123;
    }
  }

  v159 = (v157 + v87 * 1000000000.0);
  if (v89)
  {
LABEL_164:
    v50 = v88;
    *a30 = 1;
    v72 = v159;
    goto LABEL_121;
  }

  if (v155)
  {
    v125 = v90;
  }

  else
  {
    v125 = 0;
  }

  if ((v125 & 1) == 0)
  {
    v167 = v155 != 0;
    v50 = v88;
    v72 = v159;
    goto LABEL_123;
  }

  v126 = v160;
  v50 = v88;
  if (!**(v160 + 768))
  {
    v167 = 1;
    goto LABEL_180;
  }

  v127 = *(v160 + 696);
  v72 = v159;
  if (v127 && (v128 = *(v127 + 8)) != 0 && FigMediaSegmentSpecifierGetType(v128) == 1 || ((v129 = *(v50 + 8920), v129 == 0.0) ? (v130 = 1.0) : (v130 = 1.0 / v129), MediaFilePrivateData = segPumpGetMediaFilePrivateData(v80), *(v160 + 776) <= 0))
  {
    v104 = 1;
    goto LABEL_122;
  }

  v132 = 0;
  v133 = MediaFilePrivateData[4];
  v163 = v73;
  while (2)
  {
    v134 = **(v126 + 768);
    if (!v134)
    {
LABEL_203:
      v167 = 1;
      v71 = v149;
      goto LABEL_123;
    }

    v135 = *(v134 + 8);
    if (!v135)
    {
      if (dword_1EAF16A30)
      {
        v139 = OUTLINED_FUNCTION_293_1();
        v140 = os_log_type_enabled(v139, type);
        if (OUTLINED_FUNCTION_186_0(v140))
        {
          OUTLINED_FUNCTION_205_0();
          if (v61)
          {
            v141 = &stru_1F0B1AFB8;
          }

          v142 = *v160;
          v200 = 136315650;
          v201 = "segPumpChooseNextStep";
          v202 = 2114;
          v203 = v141;
          v204 = 2048;
          v205 = v142;
          OUTLINED_FUNCTION_82_1();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_282();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_635();
        v126 = v160;
        v73 = v163;
      }

      v146 = OUTLINED_FUNCTION_313_1();
      segPumpStreamCancelReadAheadAndResetDataAtIndex(v146, v147, 0);
      v75 = v150;
LABEL_202:
      if (++v132 >= *(v126 + 776))
      {
        goto LABEL_203;
      }

      continue;
    }

    break;
  }

  v136 = segPumpGetMediaFilePrivateData(*(v134 + 8));
  if (v80 == v135)
  {
    goto LABEL_209;
  }

  v137 = v136[4];
  v75 = v150;
  if (v137 <= v133)
  {
    v138 = FigMediaSegmentSpecifierGetPreviousSegment(v80);
  }

  else
  {
    v138 = FigMediaSegmentSpecifierGetNextSegment(v80);
  }

  if (v138 != *(**(v126 + 768) + 8))
  {
    v143 = v137 > v133;
    if (v44 <= v41)
    {
      v143 = v137 < v133;
    }

    if (v143)
    {
      goto LABEL_203;
    }

    v144 = OUTLINED_FUNCTION_313_1();
    segPumpStreamCancelReadAheadAndResetDataAtIndex(v144, v145, 0);
    ++*(v50 + 9040);
    v72 = v159;
    goto LABEL_202;
  }

  v159 = (v72 + v130 * (v137 - v133) * 1000000000.0);
  v80 = v138;
LABEL_209:
  OUTLINED_FUNCTION_197();
  segPumpAdoptReadAhead(v148);
  v167 = 1;
  *a29 = 1;
  v75 = v150;
  v71 = v149;
  v73 = v163;
LABEL_180:
  v72 = v159;
LABEL_123:
  if (v73 && v80)
  {
    if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v80))
    {
      LOBYTE(v170) = 0;
      FigMediaSegmentSpecifierGetMapSegmentSpecifier(v80);
      v105 = OUTLINED_FUNCTION_313_1();
      if (segPumpIsMapEntryCached(v105, v106, v107, v108))
      {
        goto LABEL_127;
      }

      v73 = v170 == 0;
    }

    else
    {
      v73 = 0;
    }
  }

  if (*(v50 + 296))
  {
    v109 = 1;
    if (*(v153 + 20))
    {
      if (*(v153 + 21))
      {
        v109 = 1;
      }

      else
      {
        v109 = 2;
      }
    }
  }

  else
  {
    v109 = 1;
  }

  if (v109 <= dword_1EAF16A30)
  {
    v162 = v73;
    v158 = OUTLINED_FUNCTION_293_1();
    os_log_type_enabled(v158, type);
    OUTLINED_FUNCTION_101_0();
    if (v61)
    {
      v111 = v110;
    }

    else
    {
      v111 = v169;
    }

    if (v111)
    {
      OUTLINED_FUNCTION_392_1();
      if (v61)
      {
        v112 = &stru_1F0B1AFB8;
      }

      v156 = v112;
      if (v160)
      {
        v113 = *v160;
      }

      else
      {
        v113 = -1;
      }

      v154 = v113;
      PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(v160 + 56));
      if (v71)
      {
        StartOffset = FigMediaSegmentSpecifierGetStartOffset(v71);
      }

      else
      {
        StartOffset = -1;
      }

      v116 = PlaylistActiveDurationSecs - v44;
      v117 = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(v160 + 56)) - v41;
      v118 = FigMediaSegmentSpecifierGetStartOffset(v48);
      if (v167)
      {
        v119 = "_IR";
      }

      else
      {
        v119 = "_SA";
      }

      if (v80)
      {
        v120 = *(segPumpGetMediaFilePrivateData(v80) + 4) - *(v160 + 88);
        v121 = FigMediaSegmentSpecifierGetBytesToRead(v80);
      }

      else
      {
        v121 = 0;
        v120 = -1.0;
      }

      v170 = 136318722;
      v171 = "segPumpChooseNextStep";
      v172 = 2114;
      v173 = v156;
      v174 = 2048;
      v175 = v154;
      v176 = 2048;
      v177 = v116;
      v178 = 2048;
      v179 = StartOffset;
      v180 = 2048;
      v181 = v117;
      v182 = 2048;
      v183 = v118;
      v184 = 1024;
      v185 = v81;
      v186 = 2082;
      v187 = v119;
      v188 = 1024;
      v189 = v165;
      v190 = 2048;
      v191 = v120;
      v192 = 2048;
      v193 = v151 + v87;
      v194 = 2048;
      v195 = v74;
      v196 = 1024;
      v197 = v162;
      v198 = 1024;
      v199 = v121;
      OUTLINED_FUNCTION_108();
      v73 = v122;
      _os_log_send_and_compose_impl();
      v60 = a32;
      v76 = v164;
    }

    else
    {
      v60 = a32;
      v76 = v164;
      v73 = v162;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
  }

  else
  {
LABEL_139:
    v76 = v164;
    v60 = a32;
  }

LABEL_161:
  *v76 = v73;
  *v75 = v74;
  *v60 = v72;
  OUTLINED_FUNCTION_812();
}

double segPumpPredictIFrameDownload()
{
  OUTLINED_FUNCTION_187();
  bzero(&__src[1], 0xD8uLL);
  segPumpMakeNetworkPredictionInput(v1, __src);
  OUTLINED_FUNCTION_112_0();
  __src[0] = *(v1 + 112);
  __src[4] = v0;
  __src[21] |= 8uLL;
  FigGetUpTimeNanoseconds();
  OUTLINED_FUNCTION_200_1();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  v3 = 0.0;
  if (v2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v4 = OUTLINED_FUNCTION_266();
    if (!v2(v4))
    {
      v5 = v8 * v7;
      if (v5 > 0.0)
      {
        return (8 * v0) / v5;
      }
    }
  }

  return v3;
}

void segPumpRTCReportingUpdateCryptorErrorKeys(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFIndex valuePtr, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    OUTLINED_FUNCTION_653();
    a17 = v18;
    a18 = v19;
    v21 = v20;
    v23 = v22;
    valuePtr = CFErrorGetCode(v20);
    v24 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
    if (*(v23 + 9232))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 120))
      {
        v25 = OUTLINED_FUNCTION_293();
        v26(v25);
      }

      v27 = *(v23 + 9232);
      CFErrorGetDomain(v21);
      if (v27)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 120))
        {
          v28 = OUTLINED_FUNCTION_104_0();
          v29(v28);
        }
      }

      if (!v24)
      {
        goto LABEL_10;
      }
    }

    else
    {
      CFErrorGetDomain(v21);
      if (!v24)
      {
        goto LABEL_10;
      }
    }

    CFRelease(v24);
LABEL_10:
    OUTLINED_FUNCTION_652();
  }
}

void segPumpPrepareCryptorForKeyLoading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_653();
  a20 = v22;
  a21 = v23;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_369();
  a13 = 0;
  a9 = 0;
  if (v28)
  {
    v29 = 3;
  }

  else
  {
    v29 = 1;
  }

  v30 = *(CMBaseObjectGetVTable() + 16);
  if (*v30 >= 6uLL)
  {
    v31 = v30[20];
    if (v31)
    {
      if (!v31(v21, v29, 2, &a13, &a9))
      {
        v32 = a13;
        *v25 = a13;
        *v27 = a9;
        if (v21)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          if (v32)
          {
            OUTLINED_FUNCTION_84_0();
            FigNotificationCenterRemoveWeakListener();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_84_0();
            FigNotificationCenterRemoveWeakListener();
          }

          else
          {
            OUTLINED_FUNCTION_84_0();
            OUTLINED_FUNCTION_186();
            v33 = FigNotificationCenterAddWeakListener();
            if (v33)
            {
              v34 = v33 == -12724;
            }

            else
            {
              v34 = 1;
            }

            if (v34)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              OUTLINED_FUNCTION_84_0();
              OUTLINED_FUNCTION_186();
              FigNotificationCenterAddWeakListener();
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM();
        }
      }
    }
  }

  OUTLINED_FUNCTION_652();
}

void segPumpMediaExpiryTimerCallback()
{
  OUTLINED_FUNCTION_158_1();
  v1 = v0;
  OUTLINED_FUNCTION_179_1();
  if (segPumpLockAndCopyPumpFromRetainProxy())
  {
    goto LABEL_50;
  }

  v26 = v1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v27 = 0;
  v6 = 0;
  v2.f64[0] = 8073216000.0;
  do
  {
    v7 = *(v28 + 16 * v3 + 392);
    v8 = *(v7 + 56);
    if (!v8)
    {
      goto LABEL_40;
    }

    FigMediaPlaylistGetMediaSegmentSpecifiers(v8);
    LastValue = FigCFArrayGetLastValue();
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v11 = *(v7 + 88);
    v6 = 0;
    if (!LastValue)
    {
LABEL_34:
      if (!v3)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    while (1)
    {
      PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(LastValue);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(LastValue);
      if (!MediaFilePrivateData[96])
      {
        break;
      }

LABEL_33:
      LastValue = PreviousSegment;
      if (!PreviousSegment)
      {
        goto LABEL_34;
      }
    }

    v14 = MediaFilePrivateData;
    v15 = *(MediaFilePrivateData + 11);
    if (UpTimeNanoseconds < v15 && v6 == 0)
    {
      v6 = 0;
      if (v5)
      {
        v18 = v15 < v4;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        v5 = 1;
        v4 = *(MediaFilePrivateData + 11);
      }

      goto LABEL_33;
    }

    if (MediaFilePrivateData[73])
    {
      FigMediaPlaylistGetMediaSegmentSpecifiers(*(v7 + 56));
      v17 = LastValue == FigCFArrayGetLastValue();
    }

    else
    {
      v17 = 1;
    }

    v27 = *(v28 + 8218);
    v14[96] = 1;
    *(v7 + 88) = FigMediaSegmentSpecifierGetTimeInSeconds(LastValue) + *(v7 + 88);
    *(v7 + 96) = *(v7 + 96) - FigMediaSegmentSpecifierGetTimeInSeconds(LastValue);
    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(LastValue);
    v21 = 0;
    if (PartialSegments)
    {
LABEL_23:
      Count = CFArrayGetCount(PartialSegments);
      goto LABEL_25;
    }

    while (1)
    {
      Count = 0;
LABEL_25:
      if (v21 >= Count)
      {
        break;
      }

      v23 = OUTLINED_FUNCTION_284();
      ValueAtIndex = CFArrayGetValueAtIndex(v23, v24);
      *(segPumpGetMediaFilePrivateData(ValueAtIndex) + 96) = 1;
      ++v21;
      if (PartialSegments)
      {
        goto LABEL_23;
      }
    }

    if (!*(v28 + 8211) || *(v28 + 8600) != v3 || !v17 || *(v7 + 400) || !*(v7 + 424))
    {
      v6 = 1;
      goto LABEL_33;
    }

    segPumpStopPlaylistReadsAndResetAllData(v28);
    if (*(v7 + 504) && *(v7 + 867))
    {
      segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v26, 4294954412);
    }

    v5 = 0;
    v6 = 1;
    if (!v3)
    {
LABEL_35:
      if (*(v28 + 8897))
      {
        v2 = OUTLINED_FUNCTION_336_0(v28 + 0x2000, COERCE__INT64(*(v7 + 88) - v11));
      }
    }

LABEL_37:
    if (v5)
    {
      v2.f64[0] = (v4 - UpTimeNanoseconds) / 1000000000.0 + CFAbsoluteTimeGetCurrent();
    }

    else
    {
      v5 = 0;
      v2.f64[0] = 8073216000.0;
    }

LABEL_40:
    ++v3;
  }

  while (v3 != 3);
  segPumpSetMediaFileExpireTimer(v28, v2);
  if (v6)
  {
    segPumpReadyNotification(v28, @"FBPAL_SeekableTimeRangeChanged", 0);
    if (v27)
    {
      segPumpReadyNotification(v28, @"FBP_DurationChanged", 0);
    }
  }

LABEL_50:
  segPumpUnlockAndSendAllPendingNotifications();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_156_1();
}

void segPumpContentSteeringAlternateListChangedCallback()
{
  OUTLINED_FUNCTION_570();
  if (!v1)
  {
    goto LABEL_23;
  }

  v2 = v1;
  OUTLINED_FUNCTION_187();
  if (CFArrayGetCount(v3) < 1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_198_1();
  v4 = segPumpLockAndCopyPumpFromRetainProxy();
  if (v4)
  {
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    FigGetAllocatorForMedia();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_17;
    }

    v5 = OUTLINED_FUNCTION_104_0();
    v4 = v6(v5);
    if (v4)
    {
LABEL_16:
      v13 = v4;
LABEL_18:
      segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v0, v13);
      goto LABEL_19;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    FigAlternateGetPathwayID(ValueAtIndex);
    if (*(v15 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v8 = OUTLINED_FUNCTION_502();
      v9(v8);
    }

    if (FigCFEqual())
    {
      goto LABEL_19;
    }

    if (*(v15 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v10 = OUTLINED_FUNCTION_502();
      v11(v10);
    }

    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
LABEL_17:
      v13 = 4294954514;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_100_0();
    v4 = v12();
    if (v4)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  segPumpUnlockAndSendAllPendingNotifications();
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_23:
  OUTLINED_FUNCTION_860();
}

void segPumpContentSteeringAlternatesAddedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_257_0();
    if (CFArrayGetCount(v5) >= 1)
    {
      valid = OUTLINED_FUNCTION_154_0();
      if (valid || (valid = segPumpAddNewAlternatesToValidAlternatesQueue(0, v4), valid))
      {
        segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v3, valid);
      }

      segPumpUnlockAndSendAllPendingNotifications();
    }
  }
}

uint64_t segPumpAddNewAlternatesToValidAlternatesQueue(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  if (CFArrayGetCount(v3) < 1 || CFArrayGetCount(v2) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = OUTLINED_FUNCTION_198_0();
    CFArrayGetValueAtIndex(v5, v6);
    v7 = OUTLINED_FUNCTION_399();
    result = segPumpAddFigAlternate(v7, v8);
    if (result)
    {
      break;
    }

    if (++v4 >= CFArrayGetCount(v2))
    {
      return 0;
    }
  }

  return result;
}

double segPumpPlaylistGetEndDate(uint64_t a1)
{
  v1 = 0.0;
  if (a1 && FigMediaPlaylistGetDateStampCount(a1) >= 1)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      Count = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    else
    {
      Count = 0;
    }

    while (1)
    {
      v1 = 0.0;
      if (Count-- < 1)
      {
        break;
      }

      v6 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
      ValueAtIndex = CFArrayGetValueAtIndex(v6, Count);
      if (FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex))
      {
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex);
        v9 = MEMORY[0x19A8CCD90](DateStamp);
        v10 = *(segPumpGetMediaFilePrivateData(ValueAtIndex) + 4);
        goto LABEL_10;
      }
    }

    v9 = 0.0;
    v10 = 0.0;
LABEL_10:
    FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      v12 = LastValue;
      FigMediaSegmentSpecifierGetPartialSegments(LastValue);
      v13 = FigCFArrayGetLastValue();
      if (v13)
      {
        v12 = v13;
      }

      v14 = v9 + *(segPumpGetMediaFilePrivateData(v12) + 4) - v10;
      return FigMediaSegmentSpecifierGetTimeInSeconds(v12) + v14;
    }
  }

  return v1;
}

void segPumpCreateDiscoInfoList()
{
  OUTLINED_FUNCTION_428_1();
  v4 = v3;
  v5 = *(v3 + 56);
  if (v5)
  {
    v6 = v2;
    v7 = v1;
    v8 = v0;
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v5);
    if (MediaSegmentSpecifiers)
    {
      if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1 && FigMediaPlaylistGetDateStampCount(*(v4 + 56)) >= 1)
      {
        segPumpFreeDiscoQueue(v8);
        v10 = *(v4 + 56);
        if (!v10)
        {
          goto LABEL_21;
        }

        v11 = FigMediaPlaylistGetMediaSegmentSpecifiers(v10);
        if (!v11)
        {
          goto LABEL_21;
        }

        if (CFArrayGetCount(v11) < 1)
        {
          goto LABEL_21;
        }

        if (FigMediaPlaylistGetDateStampCount(*(v4 + 56)) < 1)
        {
          goto LABEL_21;
        }

        NextMediaFileWithDate = segPumpGetNextMediaFileWithDate(*(v4 + 56), 0);
        if (!NextMediaFileWithDate)
        {
          goto LABEL_21;
        }

        segPumpGetMediaFilePrivateData(NextMediaFileWithDate);
        v13 = OUTLINED_FUNCTION_127_1();
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(v13);
        v15 = MEMORY[0x19A8CCD90](DateStamp) - *(v6 + 32) + *(v4 + 88);
        FigMediaPlaylistGetMediaSegmentSpecifiers(*(v4 + 56));
        FirstValue = FigCFArrayGetFirstValue();
        v17 = 0;
        v18 = 0;
        v19 = v7 + FigMediaSegmentSpecifierGetDiscontinuityDomain(FirstValue) - 1;
        v20 = 0.0;
        while (1)
        {
          Count = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v4 + 56));
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v18 >= Count)
          {
            break;
          }

          v22 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v4 + 56));
          ValueAtIndex = CFArrayGetValueAtIndex(v22, v18);
          if (FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex))
          {
            v24 = FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex);
            v15 = MEMORY[0x19A8CCD90](v24);
          }

          if (v19 != FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex) + v7)
          {
            MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
            v26 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040CA010D23uLL);
            if (!v26)
            {
              goto LABEL_25;
            }

            v27 = v26;
            v28 = MediaFilePrivateData[4];
            v26[2] = v15;
            *(v26 + 3) = v28;
            v19 = FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex) + v7;
            *(v27 + 4) = v19;
            v27[5] = v20;
            v29 = *(v8 + 8);
            *v27 = 0.0;
            *(v27 + 1) = v29;
            *v29 = v27;
            *(v8 + 8) = v27;
            ++v17;
            v20 = 0.0;
          }

          v15 = v15 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
          v20 = v20 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
          ++v18;
        }

        if (*v8)
        {
          goto LABEL_23;
        }

LABEL_25:
        OUTLINED_FUNCTION_239();
        if (FigSignalErrorAtGM())
        {
LABEL_21:
          segPumpFreeDiscoQueue(v8);
          v17 = 0;
LABEL_23:
          *v6 = v17;
        }
      }
    }
  }

  OUTLINED_FUNCTION_439_1();
}

uint64_t segPumpGetTimeRangeForDateWithSegmentOffset(const void *a1, uint64_t a2, const __CFDate *a3, CMTime *a4, CMTime *a5, void *a6)
{
  v7 = v6;
  v63 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v15 = OUTLINED_FUNCTION_198();
  v17 = segPumpAPILockAndEnsureAPIStatus(v15, v16);
  if (v17)
  {
    goto LABEL_67;
  }

  if (!a4)
  {
    v17 = FigSignalErrorAtGM();
LABEL_67:
    v51 = v17;
    return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v51);
  }

  if (!a2 || FigMediaPlaylistGetPlaylistActiveDurationSecs(a2) == 0.0)
  {
    goto LABEL_55;
  }

  v18 = MEMORY[0x19A8CCD90](a3);
  FigMediaPlaylistGetMediaSegmentSpecifiers(a2);
  FirstValue = FigCFArrayGetFirstValue();
  v58 = FirstValue;
  if (!FirstValue && dword_1EAF16A30)
  {
    LODWORD(v54) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    OUTLINED_FUNCTION_362_1();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_124_0(v25))
    {
      v26 = &stru_1F0B1AFB8;
      if (DerivedStorage && DerivedStorage[1118])
      {
        v26 = DerivedStorage[1118];
      }

      *v59 = 136315394;
      *&v59[4] = "segPumpGetTimeRangeForDateWithSegmentOffset";
      v60 = 2114;
      v61 = v26;
      OUTLINED_FUNCTION_361_1();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0();
    goto LABEL_55;
  }

  if (!FirstValue)
  {
LABEL_55:
    v51 = 4294954513;
    return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v51);
  }

  v57 = 0;
  if (!OUTLINED_FUNCTION_430_1(FirstValue, v20, v21, v22, v23))
  {
    v51 = 4294954647;
    v31 = 0;
    if (!a6)
    {
      return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v51);
    }

    goto LABEL_64;
  }

  v53 = a5;
  OUTLINED_FUNCTION_398_0();
  v27 = 0;
  v28 = 0;
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0;
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  do
  {
    if (v18 <= v30 + v29 && DerivedStorage != 0)
    {
      v34 = v29;
      v32 = v33;
      v7 = DerivedStorage;
    }

    v36 = v56;
    FigMediaSegmentSpecifierGetPartialSegments(v57);
    if (v36 == FigCFArrayGetFirstValue() && FigMediaSegmentSpecifierGetDateStamp(v57))
    {
      if (v27 || (v37 = FigMediaSegmentSpecifierGetDateStamp(v57), CFDateCompare(a3, v37, 0) != kCFCompareLessThan))
      {
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(v57);
        if (CFDateCompare(a3, DateStamp, 0) == kCFCompareLessThan)
        {
          DerivedStorage = 0;
          v28 = 1;
          goto LABEL_33;
        }
      }

      DerivedStorage = v57;
      v39 = FigMediaSegmentSpecifierGetDateStamp(v57);
      v30 = MEMORY[0x19A8CCD90](v39);
      v33 = *(segPumpGetMediaFilePrivateData(DerivedStorage) + 4);
      v29 = 0.0;
      v28 = 1;
      v27 = 1;
    }

    if (DerivedStorage && v18 > v30 + v29)
    {
      v62.value = 0;
      *v59 = v57;
      v54 = v56;
      if (FigMediaPlaylistUtilityIterateMedia(a2, v59, &v54, &v62.value) && FigMediaSegmentSpecifierGetDateStamp(v62.value))
      {
        v40 = FigMediaSegmentSpecifierGetDateStamp(v62.value);
        v29 = MEMORY[0x19A8CCD90](v40) - v30;
      }

      else
      {
        v29 = v29 + FigMediaSegmentSpecifierGetTimeInSeconds(v58);
      }

      v31 = *(segPumpGetMediaFilePrivateData(v58) + 4);
    }

LABEL_33:
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v58);
  }

  while (OUTLINED_FUNCTION_430_1(v42, v43, v44, v45, v46, TimeInSeconds));
  v47 = v18 > v30 + v29 || DerivedStorage == 0;
  v48 = v47;
  if (v47)
  {
    v49 = v34;
  }

  else
  {
    v49 = v29;
  }

  if (v47)
  {
    v50 = v32;
  }

  else
  {
    v50 = v33;
  }

  if (!v28)
  {
    v51 = 4294954647;
    if (!a6)
    {
      return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v51);
    }

    goto LABEL_64;
  }

  if (v7)
  {
    v48 = 0;
  }

  if (v48)
  {
    v51 = 4294954648;
    if (!a6)
    {
      return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v51);
    }

LABEL_64:
    *a6 = v31;
  }

  else
  {
    CMTimeMakeWithSeconds(&v62, v50, 90000);
    *a4 = v62;
    if (v53)
    {
      CMTimeMakeWithSeconds(&v62, v50 + v49, 90000);
      v51 = 0;
      *v53 = v62;
      if (!a6)
      {
        return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v51);
      }

      goto LABEL_64;
    }

    v51 = 0;
    if (a6)
    {
      goto LABEL_64;
    }
  }

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v51);
}

uint64_t segPumpSyncTimeRolledPastToExistingStream(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDate *a4)
{
  OUTLINED_FUNCTION_471();
  v56 = *MEMORY[0x1E69E9840];
  memset(&v41, 0, sizeof(v41));
  memset(&v40, 0, sizeof(v40));
  v39 = 0.0;
  result = segPumpGetTimeRangeForDateWithSegmentOffset(v8, *(v7 + 56), a4, &v41, &v40, &v39);
  if (result)
  {
    return result;
  }

  v10 = *v4;
  if (*(v4 + 864))
  {
    v11 = *(v5 + 16 * v10 + 392);
    if (!v11)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v10)
  {
LABEL_17:
    v11 = *(v5 + 408);
    if (*(v11 + 866))
    {
      return result;
    }

    goto LABEL_5;
  }

  v11 = *(v5 + 392);
  if (*(v11 + 866))
  {
    if (v10 == 1)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_5:
  if (!*(v5 + 8218))
  {
    if (v11[7])
    {
      v12 = OUTLINED_FUNCTION_188();
      result = segPumpGetTimeRangeForDateWithSegmentOffset(v12, v13, v14, v15, v16, v17);
      if (!result)
      {
        v18 = *(v4 + 88);
        v19 = v39 - v18;
        v20 = 0.0 - (v39 - v18);
        if (v18 != v20)
        {
          if (dword_1EAF16A30)
          {
            OUTLINED_FUNCTION_10_1();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v29 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v22, v23, v24, v25, v26, v27, v28, v35, v36, v37, v38, SBYTE2(v38), BYTE3(v38), SHIDWORD(v38));
            if (OUTLINED_FUNCTION_109_0(v29))
            {
              v30 = *(v5 + 8944);
              v31 = *v4;
              if (!v30)
              {
                v30 = &stru_1F0B1AFB8;
              }

              v32 = *(v4 + 88);
              v33 = *v11;
              v34 = v11[11];
              v42 = 136316674;
              v43 = "segPumpSyncTimeRolledPastToExistingStream";
              v44 = 2114;
              v45 = v30;
              v46 = 2048;
              v47 = v31;
              v48 = 2048;
              v49 = v32;
              v50 = 2048;
              v51 = v20;
              v52 = 1024;
              v53 = v33;
              v54 = 2048;
              v55 = v34;
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_329_0();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524();
            v19 = v39 - *(v4 + 88);
          }

          return segPumpStreamSyncTimeRolledPast(v4, v19, 0.0);
        }
      }
    }
  }

  return result;
}

CFIndex segPumpAPILockAndEnsureAPIStatus(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_199();
  CFRetain(v4);
  FigRetainProxyLockMutex();
  result = segPumpAPICheckStatus(v2, 0);
  if (a2 && result && result != -12883)
  {
    v6 = *(v2 + 8232);
    if (v6)
    {
      CFRelease(v6);
      *(v2 + 8232) = 0;
    }

    v7 = 392;
    while (1)
    {
      v8 = *(v2 + v7);
      if (*(v8 + 16))
      {
        *(v8 + 1152) = 0;
        v9 = *(v8 + 1160);
        if (v9)
        {
          CFRelease(v9);
          *(v8 + 1160) = 0;
        }

        *(v8 + 866) = 1;
        v10 = OUTLINED_FUNCTION_69_0();
        result = segPumpRestartStreamReads(v10);
        if (result)
        {
          break;
        }
      }

      v7 += 16;
      if (v7 == 440)
      {
        return 0;
      }
    }
  }

  return result;
}

CFIndex segPumpAPICheckStatus(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return a2;
  }

  if (!FigRetainProxyIsInvalidated())
  {
    if (segPumpSentEndCallbackForAnyStream(a1) && (v3 = *(a1 + 8232)) != 0)
    {
      return CFErrorGetCode(v3);
    }

    else
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

void RoundTripMonitorTimeoutTimer()
{
  OUTLINED_FUNCTION_50();
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    FigHTTPStopAndReleaseTimer((v0 + 8800));
    segPumpGetCurrentRTT(v0);
    segPumpResumeRoundTripMonitoring();
  }

  segPumpUnlockAndSendAllPendingNotifications();
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t segPumpStepNextFrame(const void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int *a6, float a7)
{
  v13 = OUTLINED_FUNCTION_351_0(a2[2], *a2, a2[1], v35);
  v14 = OUTLINED_FUNCTION_351_0(a4[2], *a4, a4[1], v36);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = *(DerivedStorage + 392);
  v17 = OUTLINED_FUNCTION_198();
  Step = segPumpAPILockAndEnsureAPIStatus(v17, v18);
  if (Step)
  {
    goto LABEL_36;
  }

  if (!*(DerivedStorage + 8896) || *(DerivedStorage + 8897))
  {
    goto LABEL_37;
  }

  v20 = *(v16 + 56);
  v21 = v20 ? FigMediaPlaylistGetPlaylistActiveDurationSecs(v20) : *(v16 + 96);
  if (!v21)
  {
    goto LABEL_37;
  }

  if (a6)
  {
    v22 = *(v16 + 72) + 1;
    *(v16 + 72) = v22;
    *a6 = v22;
  }

  v23 = *(v16 + 56);
  if (v23)
  {
    PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(v23);
  }

  else
  {
    PlaylistActiveDurationSecs = *(v16 + 96);
  }

  v25 = *(v16 + 88);
  v26 = v25 + PlaylistActiveDurationSecs;
  if (v13 >= v14)
  {
    v27 = v26 + -0.000001;
    if (v13 < v26)
    {
      v27 = v13;
    }

    if (v14 >= v25)
    {
      v28 = v14;
    }

    else
    {
      v28 = *(v16 + 88);
    }

    if (v27 < v25)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (v13 >= v25)
    {
      v27 = v13;
    }

    else
    {
      v27 = *(v16 + 88);
    }

    v28 = v25 + 0.001;
    if (v14 > v25)
    {
      v28 = v14;
    }

    if (v28 >= v26)
    {
      v28 = v26 + -0.000001;
    }

    if (v27 >= v26)
    {
LABEL_37:
      OUTLINED_FUNCTION_303();
      Step = FigSignalErrorAtGM();
      goto LABEL_36;
    }
  }

  *(v16 + 871) = 0;
  *(v16 + 1152) = 0;
  *(DerivedStorage + 8904) = v26 - v27;
  *(DerivedStorage + 8912) = v26 - v28;
  *(DerivedStorage + 8928) = a5;
  *(DerivedStorage + 8920) = a7;
  *(DerivedStorage + 8936) = a3;
  v29 = *(v16 + 56);
  if (v29)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v29);
    if (MediaSegmentSpecifiers)
    {
      if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1 && !*(v16 + 869))
      {
        v33 = OUTLINED_FUNCTION_198_0();
        Step = segPumpDoNextStep(v33, v34);
LABEL_36:
        v31 = Step;
        return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v31);
      }
    }
  }

  v31 = 0;
  *(DerivedStorage + 8897) = 1;
  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v31);
}

void segPumpDetermineMediaSegmentToDeliver(uint64_t UpTimeNanoseconds, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v239 = a5;
  v7 = a2;
  v253 = *MEMORY[0x1E69E9840];
  v242 = 0;
  v243 = 0;
  LODWORD(v235) = segPumpStreamBitRateRequiredForStream(a2, a3);
  *&v241 = 0.0;
  v238 = a4;
  *a4 = 0;
  v9 = *(a3 + 56);
  if (!v9 || *(a3 + 256))
  {
    goto LABEL_193;
  }

  if (*(a3 + 264))
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_451_0();

    FigSignalErrorAtGM();
    return;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(v9);
  FirstValue = FigCFArrayGetFirstValue();
  if (!FirstValue)
  {
    goto LABEL_193;
  }

  v10 = __src;
  v11 = (a3 + 136);
  if (*(a3 + 136) == -1)
  {
    v17 = 1;
    goto LABEL_53;
  }

  for (i = 0; ; ++i)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a3 + 56));
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (i >= MediaSegmentSpecifiers)
    {
      ValueAtIndex = 0;
LABEL_32:
      v29 = 0;
      v17 = 1;
      goto LABEL_52;
    }

    v14 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a3 + 56));
    ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
    MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
    if (FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex) == *(a3 + 136))
    {
      MediaFilePrivateData[8] = *(a3 + 152);
    }

    if (FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex) >= *v11)
    {
      break;
    }

    segPumpSetDeliveryStatusForMediaFileAndParts(ValueAtIndex, 1);
  }

  if (!ValueAtIndex)
  {
    goto LABEL_32;
  }

  PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(ValueAtIndex);
  *(a3 + 120) = 0xBFF0000000000000;
  *(a3 + 920) = 0;
  if (PreviousSegment && (DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(PreviousSegment), DiscontinuityDomain < FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex)) && !*(a3 + 152))
  {
    v73 = *(a3 + 288);
    if (v73)
    {
      CFRelease(v73);
      *(a3 + 288) = 0;
    }
  }

  else
  {
    v20 = *(a3 + 288);
    MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
    *(a3 + 288) = MapSegmentSpecifier;
    if (MapSegmentSpecifier)
    {
      CFRetain(MapSegmentSpecifier);
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  *(a3 + 320) = FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex);
  v22 = OUTLINED_FUNCTION_770();
  segPumpSetStreamDiscontinuityDomain(v22, v23, ValueAtIndex);
  if ((*(a3 + 144) & 0x8000000000000000) == 0)
  {
    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
    v25 = 0;
    if (!PartialSegments)
    {
      goto LABEL_27;
    }

LABEL_26:
    for (j = CFArrayGetCount(PartialSegments); v25 < j; j = 0)
    {
      v27 = OUTLINED_FUNCTION_267_0();
      v29 = CFArrayGetValueAtIndex(v27, v28);
      v30 = segPumpGetMediaFilePrivateData(v29);
      if (v25 == *(a3 + 144))
      {
        goto LABEL_34;
      }

      v30[73] = 1;
      ++v25;
      if (PartialSegments)
      {
        goto LABEL_26;
      }

LABEL_27:
      ;
    }
  }

  v29 = 0;
LABEL_34:
  if (dword_1EAF16A30)
  {
    v237 = v7;
    OUTLINED_FUNCTION_302_1();
    v31 = OUTLINED_FUNCTION_258_1();
    if (os_log_type_enabled(v31, type[0]))
    {
      v32 = v245[0];
    }

    else
    {
      v32 = v245[0] & 0xFFFFFFFE;
    }

    if (v32)
    {
      v33 = &stru_1F0B1AFB8;
      if (v237 && *(v237 + 8944))
      {
        v33 = *(v237 + 8944);
      }

      v233 = v31;
      if (a3)
      {
        v34 = *a3;
      }

      else
      {
        v34 = -1;
      }

      v231 = v34;
      v35 = *(a3 + 136);
      v36 = *(a3 + 152);
      URLString = FigMediaSegmentSpecifierGetURLString(ValueAtIndex);
      if (*(v237 + 347))
      {
        v38 = URLString;
      }

      else
      {
        v38 = @"[]";
      }

      LODWORD(__src[0]) = 136316418;
      *(__src + 4) = "segPumpPrimeRecoverySequenceNumberAndOffsetIfPending";
      WORD2(__src[1]) = 2114;
      *(&__src[1] + 6) = v33;
      HIWORD(__src[2]) = 2048;
      __src[3] = v231;
      LOWORD(__src[4]) = 2048;
      *(&__src[4] + 2) = v35;
      WORD1(__src[5]) = 2048;
      *(&__src[5] + 4) = v36;
      WORD2(__src[6]) = 2114;
      v10 = __src;
      *(&__src[6] + 6) = v38;
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_403_1();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0();
    v17 = 0;
    v7 = v237;
  }

  else
  {
    v17 = 0;
  }

LABEL_52:
  *v11 = -1;
  *(a3 + 144) = -1;
  *(a3 + 152) = 0;
  v243 = v29;
  FirstValue = ValueAtIndex;
LABEL_53:
  LODWORD(v237) = v17;
  if (*(a3 + 861))
  {
    *type = 0.0;
    if (segPumpGetSafeNetworkBandwidth(v7, type, 0, 1))
    {
      goto LABEL_193;
    }

    bzero(&__src[1], 0xD8uLL);
    segPumpMakeNetworkPredictionInput(v7, __src);
    v250 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *v245 = 0u;
    v39 = *(v7 + 112);
    __src[2] = 60000000000;
    __src[0] = v39;
    __src[21] |= 8uLL;
    v40 = *(v7 + 96);
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v41 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    v42 = 0.0;
    if (v41)
    {
      memcpy(__dst, __src, sizeof(__dst));
      if (!v41(v40, UpTimeNanoseconds, __dst, v245))
      {
        v42 = v247;
      }
    }

    if (!*(v7 + 8218) && *(a3 + 920) != 0.0 && *(a3 + 928) > 0.0)
    {
      *__dst = *(a3 + 96) - *(a3 + 904);
      v43 = OUTLINED_FUNCTION_280_0();
      matched = segPumpTryToMatchDate(v43, v44, v45, v46, v47, v48, v49);
      if (matched == -1 && *&v241 > 0.0)
      {
        if (*&v241 <= *(a3 + 936) - *(a3 + 920))
        {
          v51 = *&v241 + *__dst;
          v52 = *&v241 + *(a3 + 928);
          goto LABEL_94;
        }
      }

      else if (!matched)
      {
        v51 = *__dst;
        v52 = *(a3 + 928);
LABEL_94:
        segPumpStreamSyncTimeRolledPast(a3, v51, v52);
      }

      *(a3 + 928) = 0;
    }

    if (v17)
    {
      v74 = *(a3 + 96) - *(a3 + 904);
      *__dst = v74;
      if (*(v7 + 8328) && (v75 = *(v7 + 7880)) != 0 && *(a3 + 864))
      {
        PeakBitRate = FigAlternateGetPeakBitRate(*(v75 + 8));
        v77 = PeakBitRate > FigAlternateGetPeakBitRate(*(*(v7 + 8328) + 8));
      }

      else
      {
        v77 = 0;
      }

      if (*(a3 + 920) == 0.0)
      {
        v78 = -1;
      }

      else
      {
        v79 = OUTLINED_FUNCTION_280_0();
        v78 = segPumpTryToMatchDate(v79, v80, v81, v82, v83, v84, v74);
      }

      LODWORD(v233) = v77;
      if (v77)
      {
        LODWORD(v231) = 0;
        goto LABEL_113;
      }

      v85 = *(a3 + 56);
      if (v85 && ((PlaylistType = FigMediaPlaylistGetPlaylistType(*(a3 + 56)), !v78) || PlaylistType == 2) && !*a3)
      {
        v87 = v235;
        if (FigMediaPlaylistHasIndependentSegments(v85))
        {
          v201 = *(*(v7 + 408) + 16) == 0;
        }

        else
        {
          v201 = 1;
        }

        LODWORD(v231) = v201;
      }

      else
      {
        LODWORD(v231) = 1;
LABEL_113:
        v87 = v235;
      }

      UpTimeNanoseconds = &stru_1F0B1AFB8;
      v229 = *(a3 + 56);
      v88 = *__dst;
      v89 = *(a3 + 888);
      v90 = (v89 - FigGetUpTimeNanoseconds()) / 1000000000.0;
      v235 = v78;
      HIDWORD(v227) = v78 == 0;
      v91 = v87;
      v92 = *type;
      v93 = (*(a3 + 448) - *(a3 + 896)) / 1000000000.0;
      v94 = *(a3 + 944);
      v95 = *(a3 + 312);
      v96 = *type;
      v97 = v42 / 1000000000.0;
      v98 = !segPumpConnectedInterfaceIsWWAN(v7) && *a3 <= 1 && *(a3 + 864) == 0;
      DoesBandwidthAllowAggressiveWalkback = FigMediaPlaylistUtilityDoesBandwidthAllowAggressiveWalkback(v96, v87);
      v10 = *a3;
      OUTLINED_FUNCTION_325_0();
      if (!_ZF)
      {
        UpTimeNanoseconds = v100;
      }

      v101 = *(v7 + 347);
      MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(v7, 0);
      LOBYTE(v219) = v101;
      v103 = FigMediaPlaylistUtilityDetermineSegmentToSwitchTo(v229, 0, SHIDWORD(v227), v94, v95, 1, DoesBandwidthAllowAggressiveWalkback & v98, v233, v88, v90, v91, *&v92, v93, v97, MinimumPrebufferReservation + *(v7 + 8176), *(v7 + 8888), v231, v10, UpTimeNanoseconds, v219, segPumpSetDeliveryStatusForMediaFileAndParts, &v243, &FirstValue);
      v53 = v235;
      if (v103)
      {
        goto LABEL_193;
      }
    }

    else
    {
      v53 = -1;
    }

    *(a3 + 920) = 0;
    *(a3 + 120) = 0xBFF0000000000000;
    *(a3 + 861) = 0;
    *(a3 + 936) = 0;
    goto LABEL_122;
  }

  if (*(a3 + 920) == 0.0)
  {
    v53 = -1;
    goto LABEL_122;
  }

  v54 = (a3 + 920);
  v55 = OUTLINED_FUNCTION_280_0();
  v62 = segPumpTryToMatchDate(v55, v56, v57, v58, v59, v60, v61);
  v53 = v62;
  if (v62 == -1 && *&v241 > 0.0)
  {
    v63 = *(a3 + 936) - *(a3 + 920);
    v64 = *&v241 > v63;
    if (*&v241 <= v63)
    {
      segPumpStreamSyncTimeRolledPast(a3, 0.0, *&v241 + *(a3 + 928));
    }

    *v54 = 0;
    *(a3 + 928) = 0;
    *(a3 + 936) = 0;
    if (!v64)
    {
      goto LABEL_122;
    }
  }

  else
  {
    if (!v62)
    {
      if (!*(v7 + 8218))
      {
        v72 = *(a3 + 928);
        if (v72 > 0.0)
        {
          segPumpStreamSyncTimeRolledPast(a3, *(a3 + 120), v72);
        }
      }

      *v54 = 0;
      *(a3 + 928) = 0;
      *(a3 + 936) = 0;
      goto LABEL_122;
    }

    *v54 = 0;
    *(a3 + 928) = 0;
    *(a3 + 936) = 0;
    if (v62 != -1)
    {
LABEL_122:
      v104 = *(a3 + 120);
      if (v104 <= 0.0)
      {
        goto LABEL_181;
      }

      v105 = &off_196E72000;
      if (v104 >= FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a3 + 56)))
      {
        v235 = v53;
        v106 = 1.0;
        if (!FigMediaPlaylistHasEndTag(*(a3 + 56)))
        {
          v106 = segPumpGetMinimumPrebufferReservation(v7, *(a3 + 56)) + *(v7 + 8176);
        }

        OUTLINED_FUNCTION_302_1();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v108 = v245[0];
        v10 = type[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
        {
          UpTimeNanoseconds = v108;
        }

        else
        {
          UpTimeNanoseconds = v108 & 0xFFFFFFFE;
        }

        if (UpTimeNanoseconds)
        {
          v109 = &stru_1F0B1AFB8;
          if (v7)
          {
            OUTLINED_FUNCTION_325_0();
            if (!_ZF)
            {
              v109 = v110;
            }
          }

          v111 = *a3;
          v112 = *(a3 + 120);
          PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a3 + 56));
          LODWORD(__src[0]) = 136316162;
          *(__src + 4) = "segPumpDetermineMediaSegmentToDeliver";
          WORD2(__src[1]) = 2114;
          *(&__src[1] + 6) = v109;
          HIWORD(__src[2]) = 2048;
          __src[3] = v111;
          LOWORD(__src[4]) = 2048;
          *(&__src[4] + 2) = v112;
          WORD1(__src[5]) = 2048;
          *(&__src[5] + 4) = PlaylistActiveDurationSecs;
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl();
          v105 = &off_196E72000;
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_417();
        *(a3 + 120) = fmax(FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a3 + 56)) - v106, 0.0);
        *(a3 + 128) = 0xBFF0000000000000;
        v53 = v235;
      }

      if (dword_1EAF16A30)
      {
        OUTLINED_FUNCTION_302_1();
        v114 = OUTLINED_FUNCTION_258_1();
        v122 = OUTLINED_FUNCTION_237_0(v114, v115, v116, v117, v118, v119, v120, v121, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v238, v239, type[0], v241, v242, v243, FirstValue, v245[0]);
        if (OUTLINED_FUNCTION_124_0(v122))
        {
          v123 = &stru_1F0B1AFB8;
          if (v7)
          {
            OUTLINED_FUNCTION_409_0();
            if (!_ZF)
            {
              v123 = v124;
            }
          }

          LODWORD(__src[0]) = *(v105 + 135);
          *(__src + 4) = "segPumpDetermineMediaSegmentToDeliver";
          WORD2(__src[1]) = 2114;
          *(&__src[1] + 6) = v123;
          OUTLINED_FUNCTION_173_1();
          *(v126 + 34) = v125;
          WORD1(__src[5]) = v127;
          *(v126 + 44) = v128;
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_403_1();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0();
      }

      HasEndTag = FigMediaPlaylistHasEndTag(*(a3 + 56));
      if (!HasEndTag)
      {
        v153 = *(a3 + 128);
        if (v153 > 0.0)
        {
          if (v53)
          {
            v154 = *(a3 + 448) / 1000000000.0 - v153;
            v155 = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a3 + 56)) - v154;
            *(a3 + 120) = v155;
            if (v7)
            {
              OUTLINED_FUNCTION_325_0();
              v157 = _ZF ? &stru_1F0B1AFB8 : v156;
            }

            else
            {
              v157 = &stru_1F0B1AFB8;
            }

            *(a3 + 120) = FigMediaPlaylistUtilityEnsureOffsetInDiscDomain(v155, v157, *(v7 + 347), *a3, *(a3 + 312), *(a3 + 56), *(a3 + 944));
            if (dword_1EAF16A30)
            {
              OUTLINED_FUNCTION_302_1();
              v182 = OUTLINED_FUNCTION_258_1();
              v190 = OUTLINED_FUNCTION_237_0(v182, v183, v184, v185, v186, v187, v188, v189, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v238, v239, type[0], v241, v242, v243, FirstValue, v245[0]);
              if (OUTLINED_FUNCTION_124_0(v190))
              {
                OUTLINED_FUNCTION_325_0();
                OUTLINED_FUNCTION_373_1();
                LODWORD(__src[0]) = 136316418;
                *(__src + 4) = "segPumpDetermineMediaSegmentToDeliver";
                WORD2(__src[1]) = 2114;
                *(&__src[1] + 6) = v191;
                OUTLINED_FUNCTION_173_1();
                *(v192 + 34) = v154;
                WORD1(__src[5]) = v193;
                *(v192 + 44) = v194;
                WORD2(__src[6]) = v193;
                *(v192 + 54) = v195 / v196;
                OUTLINED_FUNCTION_51();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_403_1();
              }

              OUTLINED_FUNCTION_7();
              HasEndTag = OUTLINED_FUNCTION_345_0();
            }
          }
        }
      }

      if (!OUTLINED_FUNCTION_429_1(HasEndTag, v130, v131, v132, v133, v134, v135, v136, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v238, v239, *type, v241, v242, v243, 0))
      {
        v137 = 0.0;
        goto LABEL_174;
      }

      OUTLINED_FUNCTION_260_1();
      v137 = 0.0;
      while (1)
      {
        IsFragment = segPumpGetMediaFilePrivateData(v242);
        if (!*(IsFragment + 96))
        {
          if (FigMediaSegmentSpecifierIsMarkedIndependent(v242))
          {
            v10 = FirstValue;
            UpTimeNanoseconds = v242;
          }

          if (v137 + FigMediaSegmentSpecifierGetTimeInSeconds(v242) > *(a3 + 120))
          {
LABEL_154:
            if (v243)
            {
              _ZF = !UpTimeNanoseconds || v243 == UpTimeNanoseconds;
              if (!_ZF)
              {
                v148 = *(segPumpGetMediaFilePrivateData(v243) + 4);
                v149 = *(segPumpGetMediaFilePrivateData(UpTimeNanoseconds) + 4);
                if (v10 != FigMediaSegmentSpecifierGetNextSegment(FirstValue))
                {
                  NextSegment = v10;
                  do
                  {
                    segPumpSetDeliveryStatusForMediaFileAndParts(NextSegment, 0);
                    NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
                  }

                  while (NextSegment != FigMediaSegmentSpecifierGetNextSegment(FirstValue));
                }

                FigMediaSegmentSpecifierGetPartialSegments(v10);
                for (k = FigCFArrayGetFirstValue(); k != UpTimeNanoseconds; k = FigMediaSegmentSpecifierGetNextSegment(v152))
                {
                  v152 = k;
                  if (!k)
                  {
                    break;
                  }

                  segPumpSetDeliveryStatusForMediaFileAndParts(k, 1);
                }

                v137 = v137 - (v148 - v149);
                v243 = UpTimeNanoseconds;
                FirstValue = v10;
              }
            }

LABEL_174:
            if (dword_1EAF16A30)
            {
              OUTLINED_FUNCTION_302_1();
              v158 = OUTLINED_FUNCTION_258_1();
              v166 = OUTLINED_FUNCTION_237_0(v158, v159, v160, v161, v162, v163, v164, v165, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v237, v238, v239, type[0], v241, v242, v243, FirstValue, v245[0]);
              if (OUTLINED_FUNCTION_124_0(v166))
              {
                v167 = &stru_1F0B1AFB8;
                if (v7)
                {
                  OUTLINED_FUNCTION_409_0();
                  if (!_ZF)
                  {
                    v167 = v168;
                  }
                }

                LODWORD(__src[0]) = 136315906;
                *(__src + 4) = "segPumpDetermineMediaSegmentToDeliver";
                WORD2(__src[1]) = 2114;
                *(&__src[1] + 6) = v167;
                OUTLINED_FUNCTION_173_1();
                *(v169 + 34) = v137;
                OUTLINED_FUNCTION_95_1();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_403_1();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_345_0();
            }

LABEL_181:
            __asm { FMOV            V0.2D, #-1.0 }

            *(a3 + 120) = _Q0;
            if ((v237 & 1) == 0)
            {
              *(a3 + 863) = 1;
            }

            v174 = FirstValue;
            if (FirstValue)
            {
              while (1)
              {
                v175 = segPumpGetMediaFilePrivateData(v174);
                if (!v175[73] && !v175[96] && !v175[99])
                {
                  break;
                }

                v174 = FigMediaSegmentSpecifierGetNextSegment(FirstValue);
                FirstValue = v174;
                if (!v174)
                {
                  goto LABEL_188;
                }
              }

              m = v243;
              if (v243)
              {
                goto LABEL_232;
              }

              v180 = FirstValue;
              v181 = FigMediaSegmentSpecifierGetPartialSegments(FirstValue);
              if (FigMediaSegmentSpecifierIsFragment(v180))
              {
LABEL_196:
                m = v243;
                if (v243)
                {
                  goto LABEL_232;
                }

                FigMediaSegmentSpecifierGetPartialSegments(FirstValue);
                for (m = FigCFArrayGetFirstValue(); ; m = FigMediaSegmentSpecifierGetNextSegment(v243))
                {
                  v243 = m;
                  if (!m)
                  {
                    break;
                  }

LABEL_232:
                  v212 = segPumpGetMediaFilePrivateData(m);
                  if (!v212[73] && !v212[96] && !v212[99])
                  {
                    if (v243)
                    {
                      goto LABEL_237;
                    }

                    break;
                  }
                }

                FirstValue = 0;
                goto LABEL_188;
              }

              if (v181 && CFArrayGetCount(v181) >= 1)
              {
                v202 = FigCFArrayGetFirstValue();
                v203 = segPumpGetMediaFilePrivateData(v202);
                if (v203[73] || v203[96] || v203[99])
                {
                  goto LABEL_210;
                }

                v209 = FigCFArrayGetFirstValue();
                if (v209 && *(a3 + 776) >= 1)
                {
                  v210 = *(a3 + 768);
                  while (!*v210 || *(*v210 + 8) != v209)
                  {
                    OUTLINED_FUNCTION_309_1();
                    if (_ZF)
                    {
                      goto LABEL_229;
                    }
                  }

                  goto LABEL_210;
                }

LABEL_229:
                v211 = FigCFArrayGetFirstValue();
                if (v211 == FigCFArrayGetLastValue())
                {
LABEL_210:
                  LastValue = FigCFArrayGetLastValue();
                  v205 = segPumpGetMediaFilePrivateData(LastValue);
                  if (!v205[73] && !v205[96] && !v205[99])
                  {
                    goto LABEL_196;
                  }
                }
              }

LABEL_237:
              if (!FirstValue)
              {
                goto LABEL_188;
              }
            }

            else
            {
LABEL_188:
              FigMediaPlaylistGetMediaSegmentSpecifiers(*(a3 + 56));
              v176 = FigCFArrayGetLastValue();
              v177 = segPumpGetMediaFilePrivateData(v176);
              if (FigMediaPlaylistHasEndTag(*(a3 + 56)) && v177[73] && !*(a3 + 871))
              {
                v197 = OUTLINED_FUNCTION_770();
                segPumpDispatchAsyncMediaDelivery(v197, v198, -1, -1, v199, v200);
              }
            }

            v178 = v243;
            *v238 = FirstValue;
            *v239 = v178;
            goto LABEL_193;
          }

          segPumpSetDeliveryStatusForMediaFileAndParts(v242, 1);
          v137 = v137 + FigMediaSegmentSpecifierGetTimeInSeconds(v242);
          v146 = v242;
          if (v242 == v243)
          {
            FigMediaSegmentSpecifierGetPartialSegments(FirstValue);
            IsFragment = FigCFArrayGetLastValue();
            if (v146 == IsFragment)
            {
              IsFragment = FigMediaSegmentSpecifierIsFragment(FirstValue);
              if (!IsFragment)
              {
                IsFragment = segPumpSetDeliveryStatusForMediaFileAndParts(FirstValue, 1);
              }
            }
          }
        }

        if (!OUTLINED_FUNCTION_429_1(IsFragment, v139, v140, v141, v142, v143, v144, v145, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v237, v238, v239, *type, v241, v242, v243, FirstValue))
        {
          goto LABEL_154;
        }
      }
    }
  }

  if (*(v7 + 8218))
  {
    goto LABEL_122;
  }

  v65 = 392;
  if (!*a3)
  {
    v65 = 408;
  }

  v66 = *(v7 + v65);
  v67 = *(v66 + 56);
  if (v67)
  {
    *&__dst[0] = 0;
    v68 = FigMediaPlaylistGetPlaylistActiveDurationSecs(v67);
    v69 = segPumpGetMinimumPrebufferReservation(v7, *(v66 + 56));
    segPumpGetLastDiscAndDateForTimeReadInPlaylist(*(v66 + 56), 0, __dst, v68 - (v69 + *(v7 + 8176)));
    if (*__dst != 0.0)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v207 = CFDateCreate(AllocatorForMedia, *__dst);
      segPumpSyncTimeRolledPastToExistingStream(UpTimeNanoseconds, v7, a3, v207);
      if (v207)
      {
        CFRelease(v207);
      }
    }
  }

  v70 = MEMORY[0x1E6960C70];
  while (1)
  {
    v71 = *(v7 + 392);
    if (v71[2])
    {
      if (segPumpMakeDataCallbackWithOSStatus(UpTimeNanoseconds, v71, *(v7 + 176), 0, 8u, v71[38], v70, 0, -1, 0, 0, 0))
      {
        break;
      }
    }

    OUTLINED_FUNCTION_408_1();
    if (_ZF)
    {
      __dst[0] = *MEMORY[0x1E6960C88];
      *&__dst[1] = *(MEMORY[0x1E6960C88] + 16);
      segPumpSetCurrentTime(UpTimeNanoseconds, __dst, MEMORY[0x1E6960C70], 0, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v238, v239, *type, v241, v242, v243, FirstValue, *v245);
      break;
    }
  }

LABEL_193:
  OUTLINED_FUNCTION_451_0();
}