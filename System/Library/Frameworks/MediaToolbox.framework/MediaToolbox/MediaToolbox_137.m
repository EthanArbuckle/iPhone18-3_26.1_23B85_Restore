uint64_t remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAsset_DeserializeAndCreateHLSAlternatesFromXPCDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAssetTrack_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAssetTrack_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAssetTrack_GetTrackInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAsset_storeSandboxRegistration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t remoteXPCAsset_CopyTrackByID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAsset_CopyTrackByID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAsset_CopyTracksWithMediaType_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t remoteXPCAsset_CopyTracksWithMediaType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CMBlockBufferRef dq_EnqueueSampleBuffer(const void *a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294951506;
  }

  v5 = DerivedStorage;
  result = CMSampleBufferGetDataBuffer(a2);
  if (result)
  {
    FigSimpleMutexLock();
    v7 = *(v5 + 24);
    if (_MergedGlobals_121 != -1)
    {
      dispatch_once(&_MergedGlobals_121, &__block_literal_global_99);
    }

    Instance = _CFRuntimeCreateInstance();
    Instance[2] = CFRetain(a2);
    Instance[3] = v7;
    v9 = *(v5 + 8);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      v9 = *(v5 + 8);
    }

    else
    {
      Count = 0;
    }

    v17.location = 0;
    v17.length = Count;
    v11 = CFArrayBSearchValues(v9, v17, Instance, FigDataQueueBufferInfo_compareOutputPTS, 0);
    v12 = v11;
    if (v11 >= Count)
    {
      v13 = Count;
    }

    else
    {
      v13 = v11;
    }

    CFArrayInsertValueAtIndex(*(v5 + 8), v13, Instance);
    if (v12 < Count)
    {
      CFArrayGetValueAtIndex(*(v5 + 8), v13 + 1);
      if (FigCFEqual())
      {
        CFArrayRemoveValueAtIndex(*(v5 + 8), v13 + 1);
      }
    }

    dq_Prune(a1);
    v14 = 0;
    memset(&timeOut, 0, sizeof(timeOut));
    CMTimebaseGetTimeAndRate(*(v5 + 16), &timeOut, &v14);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      time = timeOut;
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }

    CFRelease(Instance);
    FigSimpleMutexUnlock();
    return 0;
  }

  return result;
}

uint64_t dq_CopySampleBufferForTime(const void *a1, CMTime *a2, uint64_t a3, CMSampleBufferRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v218 = **&MEMORY[0x1E6960C70];
  v217 = v218;
  v216 = 0;
  v215 = v218;
  v8 = 4294951506;
  if (!a4 || (a2->flags & 1) == 0)
  {
    return v8;
  }

  v9 = DerivedStorage;
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  if (CMTimeIfPresent && (v215.flags & 1) != 0)
  {
    *time = v215;
    *&v214.value = *MEMORY[0x1E6960CC0];
    v18 = *(MEMORY[0x1E6960CC0] + 16);
    v214.epoch = v18;
    v19 = OUTLINED_FUNCTION_2_162(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v214.value, *&v214.timescale, v215.value);
    v21 = CMTimeCompare(v19, v20);
    if ((v21 & 0x80000000) != 0)
    {
      *&v215.value = v186;
      v215.epoch = v18;
    }

    else if (v215.flags)
    {
      *&time[16] = v215.epoch;
      *&time[8] = *&v215.timescale;
      *&v214.value = kDefaultNonAlignedSBuf;
      v214.epoch = 0;
      v29 = OUTLINED_FUNCTION_2_162(v21, v22, v23, v24, v25, v26, v27, v28, kDefaultNonAlignedSBuf, *(&kDefaultNonAlignedSBuf + 1), v215.value);
      if (CMTimeCompare(v29, v30) >= 1)
      {
        v215.epoch = 0;
        *&v215.value = v186;
      }
    }
  }

  FigSimpleMutexLock();
  if (!*(v9 + 16))
  {
    v218 = *a2;
    goto LABEL_12;
  }

  CMClockGetHostTimeClock();
  OUTLINED_FUNCTION_78_7();
  CMSyncConvertTime(&v218, time, v31, v32);
  v33 = *(v9 + 16);
  if (!v33)
  {
LABEL_12:
    Rate = 0.0;
    goto LABEL_15;
  }

  Rate = CMTimebaseGetRate(v33);
LABEL_15:
  v35 = 0;
  v36 = 0;
  while (1)
  {
    Count = *(v9 + 8);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v35 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 8), v35);
    v46 = OUTLINED_FUNCTION_4_128(ValueAtIndex, v39, v40, v41, v42, v43, v44, v45, v186, *(&v186 + 1), *time, *&time[8], *&time[16]);
    if (*(v9 + 24) == ValueAtIndex[3])
    {
      if (Rate >= 0.0)
      {
        *&v214.value = *&v218.value;
        OUTLINED_FUNCTION_0_178(v46, v47, v48, v49, v50, v51, v52, v53, v186, *(&v186 + 1), *time);
        v90 = OUTLINED_FUNCTION_17_5(v82, v83, v84, v85, v86, v87, v88, v89, v189, v197, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value);
        v92 = CMTimeCompare(v90, v91);
        if ((v92 & 0x80000000) == 0 || (*&v214.value = *&v218.value, OUTLINED_FUNCTION_0_178(v92, v93, v94, v95, v96, v97, v98, v99, v186, *(&v186 + 1), *time), v108 = OUTLINED_FUNCTION_17_5(v100, v101, v102, v103, v104, v105, v106, v107, v190, v198, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v215.value, *&v215.timescale, v215.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value), dq_BufferPTSIsWithinSamplingTimeWithPrecision(v108, v109, &lhs)))
        {
          v36 = ValueAtIndex;
        }
      }

      else
      {
        *&v214.value = *&v218.value;
        OUTLINED_FUNCTION_0_178(v46, v47, v48, v49, v50, v51, v52, v53, v186, *(&v186 + 1), *time);
        v62 = OUTLINED_FUNCTION_17_5(v54, v55, v56, v57, v58, v59, v60, v61, v187, v195, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value);
        v64 = CMTimeCompare(v62, v63);
        if (v64 < 1)
        {
          goto LABEL_29;
        }

        *&v214.value = *&v218.value;
        OUTLINED_FUNCTION_0_178(v64, v65, v66, v67, v68, v69, v70, v71, v186, *(&v186 + 1), *time);
        v80 = OUTLINED_FUNCTION_17_5(v72, v73, v74, v75, v76, v77, v78, v79, v188, v196, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v215.value, *&v215.timescale, v215.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value);
        if (dq_BufferPTSIsWithinSamplingTimeWithPrecision(v80, v81, &lhs))
        {
          goto LABEL_29;
        }
      }
    }

    ++v35;
  }

  ValueAtIndex = v36;
LABEL_29:
  if (HIBYTE(v216))
  {
    if (ValueAtIndex)
    {
      v110 = ValueAtIndex[2];
      if (!v110)
      {
LABEL_33:
        v8 = 0;
        *a4 = v110;
        goto LABEL_59;
      }
    }

    else
    {
      v150 = *(v9 + 32);
      if (!v150)
      {
        goto LABEL_62;
      }

      v110 = *(v150 + 16);
      if (!v110)
      {
        goto LABEL_33;
      }
    }

    v110 = CFRetain(v110);
    goto LABEL_33;
  }

  v111 = *(v9 + 32);
  if (ValueAtIndex)
  {
    *(v9 + 32) = ValueAtIndex;
    CFRetain(ValueAtIndex);
    if (v111)
    {
      CFRelease(v111);
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&v217, ValueAtIndex[2]);
    for (i = 0; ; ++i)
    {
      v113 = *(v9 + 8);
      if (v113)
      {
        v113 = CFArrayGetCount(v113);
      }

      if (i >= v113)
      {
        if (*(v9 + 32))
        {
          goto LABEL_52;
        }

LABEL_62:
        v8 = 4294951503;
        goto LABEL_59;
      }

      v114 = CFArrayGetValueAtIndex(*(v9 + 8), i);
      v122 = OUTLINED_FUNCTION_4_128(v114, v115, v116, v117, v118, v119, v120, v121, v186, *(&v186 + 1), *time, *&time[8], *&time[16]);
      if (Rate <= 0.0)
      {
        if (Rate < 0.0)
        {
          *&v214.value = *&v217.value;
          OUTLINED_FUNCTION_0_178(v122, v123, v124, v125, v126, v127, v128, v129, v186, *(&v186 + 1), *time);
          v148 = OUTLINED_FUNCTION_17_5(v140, v141, v142, v143, v144, v145, v146, v147, v192, v200, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value);
          if (CMTimeCompare(v148, v149) <= 0)
          {
LABEL_46:
            v114[8] = 2;
            continue;
          }
        }
      }

      else
      {
        *&v214.value = *&v217.value;
        OUTLINED_FUNCTION_0_178(v122, v123, v124, v125, v126, v127, v128, v129, v186, *(&v186 + 1), *time);
        v138 = OUTLINED_FUNCTION_17_5(v130, v131, v132, v133, v134, v135, v136, v137, v191, v199, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value);
        if ((CMTimeCompare(v138, v139) & 0x80000000) == 0)
        {
          goto LABEL_46;
        }
      }
    }
  }

  ValueAtIndex = *(v9 + 32);
  if (!v111)
  {
    goto LABEL_62;
  }

LABEL_52:
  *(ValueAtIndex + 8) = 1;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_78_7();
    CMTimeGetSeconds(time);
    *time = v217;
    CMTimeGetSeconds(time);
    kdebug_trace();
  }

  v151 = ValueAtIndex[2];
  if (v151)
  {
    v151 = CFRetain(v151);
  }

  *a4 = v151;
  memset(&v209, 0, sizeof(v209));
  CMSampleBufferGetOutputPresentationTimeStamp(&v209, ValueAtIndex[2]);
  memset(&v208, 0, sizeof(v208));
  OutputDuration = CMSampleBufferGetOutputDuration(&v208, ValueAtIndex[2]);
  *&v214.timescale = *&v209.timescale;
  v214.epoch = v209.epoch;
  v160 = OUTLINED_FUNCTION_17_5(OutputDuration, v153, v154, v155, v156, v157, v158, v159, kDefaultNonAlignedSBuf, *(&kDefaultNonAlignedSBuf + 1), *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), 0, 0, 0, 0, 0, 0, v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v211, kDefaultNonAlignedSBuf, *(&kDefaultNonAlignedSBuf + 1), 0, v213, v209.value);
  CMTimeSubtract(v162, v160, v161);
  *&v214.value = v193;
  v214.epoch = 0;
  CMTimeMultiply(&rhs, &v214, 2);
  lhs = v208;
  v163 = CMTimeAdd(&v214, &lhs, &rhs);
  v171 = OUTLINED_FUNCTION_2_162(v163, v164, v165, v166, v167, v168, v169, v170, v193, *(&v193 + 1), time[0]);
  v174 = CMTimeRangeMake(v173, v171, v172);
  *&time[8] = v205;
  *&time[16] = v206;
  v203 = v207;
  v214 = v218;
  v182 = OUTLINED_FUNCTION_2_162(v174, v175, v176, v177, v178, v179, v180, v181, v194, v201, v204);
  if (!CMTimeRangeContainsTime(v182, v183))
  {
    v184 = FigCFCopyCompactDescription();
    CFRelease(v184);
  }

  dq_EvaluateAndFireLWMTriggerCallback(a1);
  v8 = 0;
LABEL_59:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigDataQueueCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dq_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dq_CopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dq_CopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dq_CopyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dq_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dq_InstallLowWaterTrigger_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dq_InstallLowWaterTrigger_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dq_InstallLowWaterTrigger_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dq_RemoveLowWaterTrigger_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigStreamTrackAreTracksSyncPairs(uint64_t a1, uint64_t a2)
{
  DiscontinuityDomain = FigStreamTrackGetDiscontinuityDomain(a1);
  if (DiscontinuityDomain != FigStreamTrackGetDiscontinuityDomain(a2))
  {
    return 0;
  }

  return FigStreamTrackCanTracksBeSyncPairsIgnoringDiscontinuity(a1, a2);
}

uint64_t lockRoot(uint64_t a1, char a2)
{
  if (*(a1 + 128))
  {
    goto LABEL_7;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(a1 + 8), @"root.xml", 0);
  if (FigFileDoesFileExist() == 1)
  {
    v6 = FigFileForkOpenMainByCFURL();
    if (v6 != -17913)
    {
      if (!v5)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  OUTLINED_FUNCTION_5_115();
  v6 = FigSignalErrorAtGM();
  FigBytePumpGetFigBaseObject(v6);
  if (v5)
  {
LABEL_5:
    CFRelease(v5);
  }

LABEL_6:
  if (v6)
  {
    return v6;
  }

LABEL_7:
  v6 = FigFileLock();
  if (v6 == -12206)
  {
    OUTLINED_FUNCTION_5_115();
    v6 = FigSignalErrorAtGM();
  }

  if (!v6)
  {
    *(a1 + 112) = (a2 & 2) != 0;
    *(a1 + 113) = 1;
    return v6;
  }

  if (v6 != -17913)
  {
    return v6;
  }

  OUTLINED_FUNCTION_5_115();
  v8 = FigSignalErrorAtGM();
  FigBytePumpGetFigBaseObject(v8);
  return v8;
}

uint64_t FigHLSPersistentStoreRemovePersistentStore(uint64_t a1, const __CFDictionary *a2)
{
  theArray = 0;
  cf = 0;
  if (!a1)
  {
    v5 = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigHLSPersistentStoreCreateAtURL(AllocatorForMedia, a1, a2, 1, &cf);
  if (v5)
  {
    goto LABEL_15;
  }

  v6 = cf;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    goto LABEL_16;
  }

  v5 = v7(v6, &theArray);
  if (v5)
  {
LABEL_15:
    v16 = v5;
    goto LABEL_17;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v9 = Count;
      v10 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
        v12 = cf;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (!v13)
        {
          goto LABEL_16;
        }

        v5 = v13(v12, ValueAtIndex);
        if (v5)
        {
          goto LABEL_15;
        }
      }

      while (v9 != ++v10);
    }
  }

  v14 = cf;
  if (!cf)
  {
    v16 = 4294954516;
    goto LABEL_17;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v15)
  {
LABEL_16:
    v16 = 4294954514;
    goto LABEL_17;
  }

  v5 = v15(v14);
  if (v5)
  {
    goto LABEL_15;
  }

  v5 = FigFileDeleteRecursive();
  if (v5 != -17913)
  {
    goto LABEL_15;
  }

  FigBytePumpGetFigBaseObject(v5);
  v16 = 4294949383;
LABEL_17:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t persistentStore_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    v7 = FigReadWriteLockLockForWrite();
    if (v7)
    {
      return v7;
    }

    if (!a2)
    {
      goto LABEL_25;
    }

    if (*v3)
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_2_85();
    if (!v8)
    {
      goto LABEL_25;
    }

    if (!CFEqual(a2, @"MasterPlaylistNetworkURL"))
    {
      v16 = 4294954512;
      goto LABEL_27;
    }

    if (!a3 || (v9 = CFGetTypeID(a3), v9 != CFStringGetTypeID()))
    {
LABEL_25:
      OUTLINED_FUNCTION_243();
      v20 = FigSignalErrorAtGM();
      goto LABEL_26;
    }

    v10 = *(v3 + 48);
    FigXMLNodeGetTag(v10);
    v11 = FigCFEqual();
    if (v10 && v11 && (v12 = FigXMLNodeGetChild(v10, @"MasterPlaylist")) != 0)
    {
      v13 = v12;
      Child = FigXMLNodeGetChild(v12, @"NetworkURL");
      if (Child)
      {
        v15 = FigXMLNodeContentSetCFString(Child, a3);
      }

      else
      {
        v15 = xmlAddTargetNode(v13, a3);
      }
    }

    else
    {
      cf = 0;
      FigXMLNodeGetTag(v10);
      v17 = FigCFEqual();
      if (v10 && v17)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        v16 = FigXMLNodeCreateChildNode(AllocatorForMedia, v10, @"MasterPlaylist", &cf);
        v19 = cf;
        if (!v16)
        {
          v16 = xmlAddTargetNode(cf, a3);
          v19 = cf;
        }

        if (v19)
        {
          CFRelease(v19);
        }

LABEL_23:
        if (!v16)
        {
          v20 = writeBoot();
LABEL_26:
          v16 = v20;
        }

LABEL_27:
        FigReadWriteLockUnlockForWrite();
        return v16;
      }

      OUTLINED_FUNCTION_243();
      v15 = FigSignalErrorAtGM();
    }

    v16 = v15;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_243();

  return FigSignalErrorAtGM();
}

uint64_t persistentStore_Invalidate(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_3_130(a1);
    result = FigReadWriteLockLockForWrite();
    if (result)
    {
      return result;
    }

    if (!*v1)
    {
      *v1 = 1;
      if (*(v1 + 128))
      {
        v3 = unlockRoot(v1);
        FigFileForkClose();
        *(v1 + 128) = 0;
        if (v3 == -17913)
        {
          OUTLINED_FUNCTION_303();
          v23 = FigSignalErrorAtGM();
          FigBytePumpGetFigBaseObject(v23);
        }
      }

      v4 = *(v1 + 8);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(v1 + 24);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(v1 + 32);
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(v1 + 48);
      if (v7)
      {
        CFRelease(v7);
        *(v1 + 48) = 0;
      }

      v8 = *(v1 + 40);
      if (v8)
      {
        CFRelease(v8);
        *(v1 + 40) = 0;
      }

      v9 = *(v1 + 72);
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = *(v1 + 64);
      if (v10)
      {
        CFRelease(v10);
      }

      v11 = *(v1 + 80);
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = *(v1 + 16);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = *(v1 + 56);
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = *(v1 + 104);
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = *(v1 + 144);
      if (v15)
      {
        CFRelease(v15);
      }

      v16 = *(v1 + 152);
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = *(v1 + 96);
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = *(v1 + 88);
      if (v18)
      {
        CFRelease(v18);
      }

      v19 = *(v1 + 192);
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = *(v1 + 200);
      if (v20)
      {
        CFRelease(v20);
      }

      v21 = *(v1 + 208);
      if (v21)
      {
        CFRelease(v21);
      }

      v22 = *(v1 + 216);
      if (v22)
      {
        CFRelease(v22);
      }
    }

    FigReadWriteLockUnlockForWrite();
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  return 0;
}

uint64_t xmlAddTargetNode(uint64_t a1, const void *a2)
{
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigXMLNodeCreateChildNode(AllocatorForMedia, a1, @"NetworkURL", &cf);
  if (!v5)
  {
    v5 = FigXMLNodeContentSetCFString(cf, a2);
  }

  v6 = v5;
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t persistentStore_GetAccessLevel(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    v4 = DerivedStorage;
    *a2 = -1;
    v5 = FigReadWriteLockLockForWrite();
    if (v5)
    {
      return v5;
    }

    if (*v4)
    {
      OUTLINED_FUNCTION_239();
      v6 = FigSignalErrorAtGM();
    }

    else if (v4[112])
    {
      v6 = 0;
      *a2 = 1;
    }

    else
    {
      v6 = 0;
      if (v4[113])
      {
        *a2 = 0;
      }
    }

    FigReadWriteLockUnlockForWrite();
    return v6;
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }
}

uint64_t persistentStore_SetAccessLevel(uint64_t a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    v8 = FigReadWriteLockLockForWrite();
    if (v8)
    {
      return v8;
    }

    if (!*v3)
    {
      switch(a2)
      {
        case -1:
          updated = unlockRoot(v3);
          goto LABEL_13;
        case 0:
          if (v3[112] != v3[113])
          {
            goto LABEL_8;
          }

LABEL_10:
          updated = updateRootLockOptions(a1, ((a2 == 0) | (2 * (a2 == 1))) | (4 * (a3 != 0)));
LABEL_13:
          v9 = updated;
          goto LABEL_14;
        case 1:
          if (v3[112])
          {
LABEL_8:
            v9 = 0;
LABEL_14:
            FigReadWriteLockUnlockForWrite();
            return v9;
          }

          goto LABEL_10;
      }
    }

    OUTLINED_FUNCTION_303();
    updated = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

void persistentStore_GetAndRetainStreamInfoForStreamID(uint64_t a1, const __CFURL *a2, const __CFDictionary *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v18 = 0;
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (FigReadWriteLockLockForWrite())
    {
LABEL_17:
      OUTLINED_FUNCTION_843();
      return;
    }

    if (*v4)
    {
      goto LABEL_24;
    }

    v10 = *(v4 + 56);
    if (!v10)
    {
      goto LABEL_15;
    }

    if (a4 && a2 && (v11 = CFDictionaryGetValue(v10, a2)) != 0)
    {
      Value = CFDictionaryGetValue(v11, @"StreamInformationRef");
      v18 = Value;
      if (Value)
      {
        CFRetain(Value);
LABEL_14:
        *a4 = v18;
        goto LABEL_15;
      }

      if (persistentStore_CreateStreamOptions(v4, &cf, a3))
      {
        goto LABEL_15;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      if (FigHLSPersistentStreamInfoCreate(AllocatorForMedia, a2, a1, *(v4 + 8), cf, &v18))
      {
        goto LABEL_15;
      }

      v14 = v18;
      v15 = CFDictionaryGetValue(*(v4 + 56), a2);
      if (v15)
      {
        CFDictionarySetValue(v15, @"StreamInformationRef", v14);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_239();
      if (!FigSignalErrorAtGM())
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_24:
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM();
    }

LABEL_15:
    FigReadWriteLockUnlockForWrite();
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_843();

  FigSignalErrorAtGM();
}

void persistentStore_SetMasterPlaylist(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFDictionaryRef theDict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_12_60();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theDict = 0;
  v35 = FigCFEqual();
  v36 = FigCFEqual();
  if (DerivedStorage && v25 && v29)
  {
    v37 = v36;
    if (!FigReadWriteLockLockForWrite())
    {
      if (!*DerivedStorage)
      {
        OUTLINED_FUNCTION_2_85();
        if (v38)
        {
          if (v31 && v35 | v37)
          {
            copyDataIDDictionaryFilteredByCategoryIndexedByAccessKeyWork(DerivedStorage, @"Playlist", @"DataItemDescriptorRole", &theDict);
            v39 = theDict;
            if (theDict)
            {
              if ((Value = CFDictionaryGetValue(theDict, @"Master"), v35) && Value && removeDataItem(v33, Value) || (v41 = CFDictionaryGetValue(v39, @"AvailableOfflineMaster")) != 0 && removeDataItem(v33, v41))
              {
                FigReadWriteLockUnlockForWrite();
                v45 = 0;
LABEL_21:
                CFRelease(v39);
LABEL_22:
                if (v45)
                {
                  CFRelease(v45);
                }

                goto LABEL_24;
              }
            }

            v42 = v25;
            AllocatorForMedia = FigGetAllocatorForMedia();
            Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v45 = Mutable;
            if (v27)
            {
              CFDictionarySetValue(Mutable, @"DataItemDescriptorPropertyListDescriptor", v27);
              if (!v35)
              {
LABEL_18:
                if (!v37)
                {
                  goto LABEL_20;
                }

                goto LABEL_19;
              }
            }

            else if (!v35)
            {
              goto LABEL_18;
            }

            CFDictionarySetValue(v45, @"DataItemDescriptorRole", @"Master");
            if (!v37)
            {
LABEL_20:
              CFDictionarySetValue(v45, @"DataItemDescriptorCategory", @"Playlist");
              CFDictionarySetValue(v45, @"DataItemDescriptorName", v29);
              CFDictionarySetValue(v45, @"DataItemDescriptorPlaylistType", v31);
              setDataItemWork(v33, v42, v45);
              FigReadWriteLockUnlockForWrite();
              if (!v39)
              {
                goto LABEL_22;
              }

              goto LABEL_21;
            }

LABEL_19:
            CFDictionarySetValue(v45, @"DataItemDescriptorRole", @"AvailableOfflineMaster");
            goto LABEL_20;
          }
        }
      }

      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM();
      FigReadWriteLockUnlockForWrite();
    }

LABEL_24:
    OUTLINED_FUNCTION_90_4();
    return;
  }

  OUTLINED_FUNCTION_429();
  OUTLINED_FUNCTION_90_4();

  FigSignalErrorAtGM();
}

void persistentStore_SetStreamComplete(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (FigReadWriteLockLockForWrite())
    {
      goto LABEL_25;
    }

    if (*v3 || (OUTLINED_FUNCTION_2_85(), !v7) || (Value = CFDictionaryGetValue(*(v3 + 56), a2)) == 0 || (v9 = Value, AllocatorForMedia = FigGetAllocatorForMedia(), (MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, v9)) == 0))
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM();
      FigReadWriteLockUnlockForWrite();
      goto LABEL_25;
    }

    v12 = MutableCopy;
    v13 = MEMORY[0x1E695E4D0];
    if (a3 != 1)
    {
      v13 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(MutableCopy, @"StreamInformationComplete", *v13);
    CFDictionarySetValue(*(v3 + 56), a2, v12);
    StreamNode = xmlFindStreamNode(*(v3 + 48));
    if (!StreamNode)
    {
      OUTLINED_FUNCTION_111();
      if (FigSignalErrorAtGM())
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v15 = StreamNode;
    Child = FigXMLNodeGetChild(StreamNode, @"Complete");
    if (Child)
    {
      v17 = CFRetain(Child);
      cf = v17;
      if (v17)
      {
LABEL_16:
        if (a3 == 1)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v19 = FigXMLNodeContentSetCFString(v17, v20);
        v17 = cf;
LABEL_20:
        if (v17)
        {
          CFRelease(v17);
        }

        if (v19)
        {
          goto LABEL_24;
        }

LABEL_23:
        writeBoot();
LABEL_24:
        FigReadWriteLockUnlockForWrite();
        CFRelease(v12);
LABEL_25:
        OUTLINED_FUNCTION_843();
        return;
      }
    }

    else
    {
      cf = 0;
    }

    v18 = FigGetAllocatorForMedia();
    v19 = FigXMLNodeCreateChildNode(v18, v15, @"Complete", &cf);
    v17 = cf;
    if (v19)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_843();

  FigSignalErrorAtGM();
}

uint64_t persistentStore_RemoveStreamInfoForStreamID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    v5 = FigReadWriteLockLockForWrite();
    if (v5)
    {
      return v5;
    }

    if (!*v2)
    {
      OUTLINED_FUNCTION_2_85();
      if (v6)
      {
        Value = CFDictionaryGetValue(*(v2 + 56), a2);
        if (Value)
        {
          v8 = Value;
          v9 = CFDictionaryGetValue(Value, @"StreamInformationRef");
          if (v9)
          {
            FigBaseObject = FigHLSPersistentStreamInfoGetFigBaseObject(v9);
            if (FigBaseObject)
            {
              v11 = FigBaseObject;
              v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
              if (v12)
              {
                v12(v11);
              }
            }
          }

          v13 = xmlRemoveStream(*(v2 + 48));
          if (v13)
          {
            goto LABEL_25;
          }

          v13 = writeBoot();
          if (v13)
          {
            goto LABEL_25;
          }

          if (CFDictionaryGetValue(v8, @"StreamInformationURL"))
          {
            v14 = FigFileDeleteRecursive();
            v15 = v14;
            if (v14)
            {
              if (v14 == -17913)
              {
                OUTLINED_FUNCTION_303();
                v15 = 4294949383;
                v17 = FigSignalErrorAtGM();
                FigBytePumpGetFigBaseObject(v17);
              }
            }

            else
            {
              CFDictionaryRemoveValue(*(v2 + 56), a2);
            }

            goto LABEL_16;
          }
        }
      }
    }

    OUTLINED_FUNCTION_303();
    v13 = FigSignalErrorAtGM();
LABEL_25:
    v15 = v13;
LABEL_16:
    FigReadWriteLockUnlockForWrite();
    return v15;
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

uint64_t persistentStore_AddStreamInfo(uint64_t a1, const __CFDictionary *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  v32 = 0;
  if (!DerivedStorage)
  {
    OUTLINED_FUNCTION_303();
    v8 = FigSignalErrorAtGM();
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_3_130(DerivedStorage);
  v8 = FigReadWriteLockLockForWrite();
  if (v8)
  {
LABEL_57:
    v26 = v8;
    goto LABEL_42;
  }

  if (*v3)
  {
    goto LABEL_60;
  }

  if (!*(v3 + 56))
  {
    v26 = 0;
LABEL_61:
    FigReadWriteLockUnlockForWrite();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_2_85();
  if (!v10 || CFDictionaryContainsKey(v9, a3))
  {
LABEL_60:
    OUTLINED_FUNCTION_303();
    v26 = FigSignalErrorAtGM();
    goto LABEL_61;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v12 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(v3 + 8), a3, 1u);
  if (FigCFURLDoesDirectoryExist())
  {
    OUTLINED_FUNCTION_303();
    DirectoryAtURL = FigSignalErrorAtGM();
  }

  else
  {
    DirectoryAtURL = makeDirectoryAtURL();
    if (!DirectoryAtURL)
    {
      if (a2)
      {
        Value = CFDictionaryGetValue(a2, @"StreamInfoNetworkURL");
        a2 = CFDictionaryGetValue(a2, @"StreamInfoUniqueTag");
      }

      else
      {
        Value = 0;
      }

      v15 = *(v3 + 48);
      v33 = 0;
      v34 = 0;
      StreamList = xmlGetStreamList(v15);
      if (StreamList)
      {
        cf = CFRetain(StreamList);
        if (cf)
        {
          goto LABEL_20;
        }
      }

      else
      {
        cf = 0;
      }

      FigXMLNodeGetTag(v15);
      v17 = FigCFEqual();
      if (!v15 || !v17)
      {
        OUTLINED_FUNCTION_303();
        v19 = FigSignalErrorAtGM();
        goto LABEL_29;
      }

      v18 = FigGetAllocatorForMedia();
      v19 = FigXMLNodeCreateChildNode(v18, v15, @"Streams", &cf);
      if (v19)
      {
        goto LABEL_29;
      }

LABEL_20:
      v20 = FigGetAllocatorForMedia();
      v19 = FigXMLNodeCreateChildNode(v20, cf, @"Stream", &v34);
      if (!v19)
      {
        v19 = FigXMLNodeAttributeSetCFString(v34, @"ID", a3);
        if (!v19)
        {
          v19 = FigXMLNodeAttributeSetCFString(v34, @"Path", a3);
          if (!v19)
          {
            if (!Value || (v19 = FigXMLNodeAttributeSetCFString(v34, @"NetworkURL", Value), !v19))
            {
              if (!a2 || (v19 = FigXMLNodeAttributeSetCFString(v34, @"UniqueTag", a2), !v19))
              {
                v21 = FigGetAllocatorForMedia();
                v19 = FigXMLNodeCreateChildNode(v21, v34, @"Complete", &v33);
                if (!v19)
                {
                  v19 = FigXMLNodeContentSetCFString(v33, @"NO");
                }
              }
            }
          }
        }
      }

LABEL_29:
      v22 = v19;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      if (!v22)
      {
        StreamOptions = writeBoot();
        if (StreamOptions || (StreamOptions = persistentStore_CreateStreamOptions(v3, &v31, 0), StreamOptions) || (v24 = FigGetAllocatorForMedia(), StreamOptions = FigHLSPersistentStreamInfoCreate(v24, a3, a1, *(v3 + 8), v31, &v32), StreamOptions))
        {
          v22 = StreamOptions;
        }

        else
        {
          v25 = addStreamToStreamList(v3, a3, v12, Value, a2, 0, v32);
          v26 = 0;
          if (!v25)
          {
            goto LABEL_40;
          }

          v22 = v25;
          if (v32)
          {
            CFRelease(v32);
            v32 = 0;
          }
        }

        if (xmlRemoveStream(*(v3 + 48)))
        {
          OUTLINED_FUNCTION_303();
          FigSignalErrorAtGM();
        }

        if (writeBoot())
        {
          OUTLINED_FUNCTION_303();
          FigSignalErrorAtGM();
        }
      }

      v28 = FigFileDeleteRecursive();
      if (v28)
      {
        v29 = v28;
        OUTLINED_FUNCTION_303();
        v30 = FigSignalErrorAtGM();
        if (v29 == -17913)
        {
          FigBytePumpGetFigBaseObject(v30);
        }
      }

      v26 = v22;
      goto LABEL_40;
    }
  }

  v26 = DirectoryAtURL;
LABEL_40:
  FigReadWriteLockUnlockForWrite();
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_42:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v26;
}

uint64_t persistentStore_SetDataItem(uint64_t a1, OpaqueCMBlockBuffer *a2, const __CFDictionary *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a3 && a2 && a4)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    v10 = FigReadWriteLockLockForWrite();
    if (v10)
    {
      return v10;
    }

    if (!*v4 && (OUTLINED_FUNCTION_2_85(), v11))
    {
      v12 = setDataItemWork(a1, a2, a3);
    }

    else
    {
      OUTLINED_FUNCTION_303();
      v12 = FigSignalErrorAtGM();
    }

    v13 = v12;
    FigReadWriteLockUnlockForWrite();
    return v13;
  }

  else
  {
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM();
  }
}

uint64_t persistentStore_RemoveDataItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    v6 = FigReadWriteLockLockForWrite();
    if (v6)
    {
      return v6;
    }

    if (!*v2 && (OUTLINED_FUNCTION_2_85(), v7))
    {
      v8 = removeDataItem(a1, a2);
    }

    else
    {
      OUTLINED_FUNCTION_303();
      v8 = FigSignalErrorAtGM();
    }

    v9 = v8;
    FigReadWriteLockUnlockForWrite();
    return v9;
  }

  else
  {
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM();
  }
}

void persistentStore_AddInterstitialAsset()
{
  OUTLINED_FUNCTION_12_60();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (!FigReadWriteLockLockForWrite())
    {
      if (!primeInterstitialAssetFolder())
      {
        Value = FigCFDictionaryGetValue();
        if (Value)
        {
          v9 = CFRetain(Value);
          if (v9)
          {
            v10 = v9;
            v11 = 0;
            v12 = 0;
            goto LABEL_14;
          }
        }

        Base32EncodedSHA1HashFromCFString = FigCreateBase32EncodedSHA1HashFromCFString();
        if (Base32EncodedSHA1HashFromCFString)
        {
          v12 = Base32EncodedSHA1HashFromCFString;
          AllocatorForMedia = FigGetAllocatorForMedia();
          v11 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@.%@");
          if (v11 && !*v0 && (OUTLINED_FUNCTION_2_85(), v15))
          {
            v16 = FigGetAllocatorForMedia();
            v10 = CFURLCreateCopyAppendingPathComponent(v16, *(v0 + 200), v11, 0);
            if (v10)
            {
              if (!addInterstitialAssetWork(v6, v4, v11, v10, 0))
              {
LABEL_14:
                *v2 = v10;
                FigReadWriteLockUnlockForWrite();
                v10 = 0;
                v17 = 0;
                if (!v12)
                {
LABEL_16:
                  if (v11)
                  {
                    CFRelease(v11);
                  }

                  if (v17)
                  {
                    CFRelease(v17);
                  }

                  goto LABEL_20;
                }

LABEL_15:
                CFRelease(v12);
                v17 = v10;
                goto LABEL_16;
              }
            }

            else
            {
              OUTLINED_FUNCTION_111();
              FigSignalErrorAtGM();
            }
          }

          else
          {
            OUTLINED_FUNCTION_111();
            FigSignalErrorAtGM();
            v10 = 0;
          }

          FigReadWriteLockUnlockForWrite();
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_111();
        FigSignalErrorAtGM();
      }

      FigReadWriteLockUnlockForWrite();
    }

LABEL_20:
    OUTLINED_FUNCTION_90_4();
    return;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_90_4();

  FigSignalErrorAtGM();
}

void persistentStore_AddInterstitialAssetList(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_12_60();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && v26)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (FigReadWriteLockLockForWrite())
    {
      goto LABEL_28;
    }

    if (*v22 || (OUTLINED_FUNCTION_2_85(), !v32))
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM();
      FigReadWriteLockUnlockForWrite();
LABEL_28:
      OUTLINED_FUNCTION_90_4();
      return;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v34 = CFUUIDCreate(AllocatorForMedia);
    v35 = FigGetAllocatorForMedia();
    v36 = CFUUIDCreateString(v35, v34);
    if (!*(v22 + 200))
    {
      v37 = FigGetAllocatorForMedia();
      *(v22 + 200) = CFURLCreateCopyAppendingPathComponent(v37, *(v22 + 8), @"InterstitialAssets", 1u);
    }

    if (!FigCFURLDoesDirectoryExist() && makeDirectoryAtURL())
    {
      v41 = 0;
      v39 = 0;
LABEL_20:
      FigReadWriteLockUnlockForWrite();
      if (v34)
      {
        CFRelease(v34);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      if (v41)
      {
        CFRelease(v41);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      goto LABEL_28;
    }

    v38 = FigGetAllocatorForMedia();
    v39 = CFStringCreateWithFormat(v38, 0, @"%@.json");
    v40 = FigGetAllocatorForMedia();
    v41 = CFURLCreateCopyAppendingPathComponent(v40, *(v22 + 200), v39, 0);
    FigGetAllocatorForMedia();
    v42 = CMByteStreamCreateForFileURL();
    if (!v42)
    {
      CMBlockBufferGetDataLength(v28);
      v42 = CMByteStreamWriteBlockBuffer();
      if (!v42)
      {
        v43 = *(CMBaseObjectGetVTable() + 16);
        if (*v43 < 2uLL || (v44 = v43[5]) == 0)
        {
          v45 = -12782;
          goto LABEL_17;
        }

        v42 = v44(0, 1);
      }
    }

    v45 = v42;
LABEL_17:
    if (!v45 && !addInterstitialAssetWork(v30, v26, v39, v41, 1))
    {
      *v24 = v36;
      v36 = 0;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_90_4();

  FigSignalErrorAtGM();
}

uint64_t persistentStore_CopyInterstitialAssets(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    v5 = FigReadWriteLockLockForRead();
    if (v5)
    {
      return v5;
    }

    if (*v2)
    {
      OUTLINED_FUNCTION_239();
      v7 = FigSignalErrorAtGM();
    }

    else
    {
      v6 = *(v2 + 208);
      if (v6)
      {
        v6 = CFRetain(v6);
      }

      v7 = 0;
      *a2 = v6;
    }

    FigReadWriteLockUnlockForRead();
    return v7;
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }
}

uint64_t persistentStore_CopyInterstitialAssetLists(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    v5 = FigReadWriteLockLockForRead();
    if (v5)
    {
      return v5;
    }

    if (*v2)
    {
      OUTLINED_FUNCTION_239();
      v7 = FigSignalErrorAtGM();
    }

    else
    {
      v6 = *(v2 + 216);
      if (v6)
      {
        v6 = CFRetain(v6);
      }

      v7 = 0;
      *a2 = v6;
    }

    FigReadWriteLockUnlockForRead();
    return v7;
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }
}

uint64_t updateRootLockOptions(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = lockRoot(DerivedStorage, a2);
  if (v4)
  {
    return v4;
  }

  BootFromFile = loadBootFromFile();
  if (BootFromFile)
  {
    unlockRoot(DerivedStorage);
  }

  return BootFromFile;
}

uint64_t persistentStore_ensureMemoryPool(uint64_t a1)
{
  if (*(a1 + 192))
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    v5 = FigGetAllocatorForMedia();
    v6 = CFStringCreateWithFormat(v5, 0, @"[FigHLSPersistentStore %p]", a1);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(v4, *MEMORY[0x1E69628C8], v6);
      v8 = CMMemoryPoolCreate(v4);
      *(a1 + 192) = v8;
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_303();
        v9 = FigSignalErrorAtGM();
      }

      CFRelease(v4);
      v10 = v7;
    }

    else
    {
      OUTLINED_FUNCTION_303();
      v9 = FigSignalErrorAtGM();
      v10 = v4;
    }

    CFRelease(v10);
    return v9;
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

void copyDataIDDictionaryFilteredByCategoryIndexedByAccessKeyWork(uint64_t a1, __CFString *a2, uint64_t a3, CFTypeRef *a4)
{
  v11 = 0;
  v12 = 0;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = @"Default";
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Value = CFDictionaryGetValue(*(a1 + 96), v7);
  if (Value)
  {
    v11 = Mutable;
    v12 = a3;
    CFDictionaryApplyFunction(Value, retrieveDataIDsForKey, &v11);
  }

  if (Mutable)
  {
    *a4 = CFRetain(Mutable);
    CFRelease(Mutable);
  }

  else
  {
    *a4 = 0;
  }
}

uint64_t setDataItemWork(uint64_t a1, OpaqueCMBlockBuffer *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  cf = 0;
  v8 = CFDictionaryGetValue(a3, @"DataItemDescriptorCategory");
  if (v8)
  {
    v9 = v8;
    v10 = CFDictionaryGetValue(a3, @"DataItemDescriptorName");
    if (v10)
    {
      v11 = v10;
      if (!*(DerivedStorage + 32))
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        *(DerivedStorage + 32) = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(DerivedStorage + 8), @"Data", 1u);
      }

      if (!FigCFURLDoesDirectoryExist())
      {
        DirectoryAtURL = makeDirectoryAtURL();
        if (DirectoryAtURL)
        {
          return DirectoryAtURL;
        }
      }

      v13 = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (CFDictionaryGetValueIfPresent(a3, @"DataItemDescriptorID", &value))
      {
        v15 = removeDataItem(a1, value);
        if (v15)
        {
          v35 = v15;
          if (!Mutable)
          {
            return v35;
          }

          goto LABEL_102;
        }

        v74 = 0;
        v75 = 0;
        v16 = value;
      }

      else
      {
        v17 = FigGetAllocatorForMedia();
        v18 = CFUUIDCreate(v17);
        v19 = FigGetAllocatorForMedia();
        v74 = v18;
        v16 = CFUUIDCreateString(v19, v18);
        v75 = v16;
      }

      CFDictionarySetValue(Mutable, @"DataItemDescriptorID", v16);
      CFDictionarySetValue(Mutable, @"DataItemDescriptorCategory", v9);
      CFDictionarySetValue(Mutable, @"DataItemDescriptorName", v11);
      v20 = CFDictionaryGetValue(a3, @"DataItemDescriptorPropertyListDescriptor");
      v21 = CFDictionaryGetValue(a3, @"DataItemDescriptorRole");
      if (v21)
      {
        CFDictionarySetValue(Mutable, @"DataItemDescriptorRole", v21);
      }

      v22 = CFDictionaryGetValue(a3, @"DataItemDescriptorNetworkURL");
      if (v22)
      {
        CFDictionarySetValue(Mutable, @"DataItemDescriptorNetworkURL", v22);
      }

      v23 = v75;
      if (!CFDictionaryGetValueIfPresent(*(DerivedStorage + 96), v9, &cf))
      {
        v24 = FigGetAllocatorForMedia();
        cf = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(*(DerivedStorage + 96), v9, cf);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (!v20)
      {
        goto LABEL_33;
      }

      v25 = *(DerivedStorage + 32);
      error[0] = 0;
      v26 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorName");
      v27 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorCategory");
      v28 = FigGetAllocatorForMedia();
      v29 = CFStringCreateWithFormat(v28, 0, @"%@-%@-%@.%@", v27, v26, v75, @"descriptor", v3);
      v30 = FigGetAllocatorForMedia();
      v31 = CFURLCreateCopyAppendingPathComponent(v30, v25, v29, 0);
      CFDictionarySetValue(Mutable, @"DataItemDescriptorURL", v31);
      CFDictionarySetValue(Mutable, @"DataItemDescriptorFileName", v29);
      v32 = FigGetAllocatorForMedia();
      v33 = CFWriteStreamCreateWithFile(v32, v31);
      v34 = v33;
      if (v33 && CFWriteStreamOpen(v33) == 1)
      {
        CFPropertyListWrite(v20, v34, kCFPropertyListXMLFormat_v1_0, 0, error);
        v35 = reportIfError(error[0]);
        if (error[0])
        {
          CFRelease(error[0]);
          error[0] = 0;
        }

        if (!v35)
        {
          CFWriteStreamClose(v34);
        }

        if (v29)
        {
          goto LABEL_25;
        }
      }

      else
      {
        OUTLINED_FUNCTION_43_1();
        v35 = FigSignalErrorAtGM();
        if (v29)
        {
LABEL_25:
          CFRelease(v29);
        }
      }

      if (v31)
      {
        CFRelease(v31);
      }

      if (error[0])
      {
        CFRelease(error[0]);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      if (v35)
      {
        goto LABEL_97;
      }

LABEL_33:
      v36 = *(DerivedStorage + 32);
      error[0] = 0;
      v37 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorName");
      v38 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorCategory");
      v39 = FigCFEqual();
      v40 = FigGetAllocatorForMedia();
      if (v39)
      {
        v41 = CFStringCreateWithFormat(v40, 0, @"%@-%@-%@", v38, v75, v37, v73);
      }

      else
      {
        v41 = CFStringCreateWithFormat(v40, 0, @"%@-%@-%@.%@", v38, v75, v37, @"data");
      }

      v42 = v41;
      v43 = FigGetAllocatorForMedia();
      v44 = CFURLCreateCopyAppendingPathComponent(v43, v36, v42, 0);
      CFDictionarySetValue(Mutable, @"DataItemURL", v44);
      CFDictionarySetValue(Mutable, @"DataItemFileName", v42);
      FigGetAllocatorForMedia();
      v45 = CMByteStreamCreateForFileURL();
      if (!v45)
      {
        CMBlockBufferGetDataLength(a2);
        v45 = CMByteStreamWriteBlockBuffer();
        if (!v45)
        {
          v46 = error[0];
          v47 = *(CMBaseObjectGetVTable() + 16);
          if (*v47 < 2uLL || (v48 = v47[5]) == 0)
          {
            v35 = 4294954514;
LABEL_43:
            if (error[0])
            {
              CFRelease(error[0]);
            }

            if (v42)
            {
              CFRelease(v42);
            }

            if (v44)
            {
              CFRelease(v44);
            }

            if (!v35)
            {
              CFDictionarySetValue(cf, v75, Mutable);
              CFDictionarySetValue(*(DerivedStorage + 88), v75, Mutable);
              v49 = *(DerivedStorage + 48);
              v85 = 0;
              error[0] = 0;
              v84 = 0;
              v82 = 0;
              v83 = 0;
              v80 = 0;
              v81 = 0;
              v78 = 0;
              v79 = 0;
              FigXMLNodeGetTag(v49);
              v50 = FigCFEqual();
              v51 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorRole");
              v52 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorCategory");
              v53 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorID");
              v54 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorName");
              v55 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorNetworkURL");
              v56 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorFileName");
              v57 = CFDictionaryGetValue(Mutable, @"DataItemFileName");
              if (!v49 || !v50)
              {
                OUTLINED_FUNCTION_43_1();
                ChildNode = FigSignalErrorAtGM();
                goto LABEL_110;
              }

              v58 = v57;
              Child = FigXMLNodeGetChild(v49, @"DataItems");
              if (Child)
              {
                error[0] = CFRetain(Child);
                if (error[0])
                {
LABEL_58:
                  v62 = FigGetAllocatorForMedia();
                  ChildNode = FigXMLNodeCreateChildNode(v62, error[0], @"DataItem", &v85);
                  if (!ChildNode)
                  {
                    v63 = FigGetAllocatorForMedia();
                    ChildNode = FigXMLNodeCreateChildNode(v63, v85, @"ID", &v84);
                    if (!ChildNode)
                    {
                      ChildNode = FigXMLNodeContentSetCFString(v84, v53);
                      if (!ChildNode)
                      {
                        v64 = FigGetAllocatorForMedia();
                        ChildNode = FigXMLNodeCreateChildNode(v64, v85, @"Category", &v83);
                        if (!ChildNode)
                        {
                          ChildNode = FigXMLNodeContentSetCFString(v83, v52);
                          if (!ChildNode)
                          {
                            v65 = FigGetAllocatorForMedia();
                            ChildNode = FigXMLNodeCreateChildNode(v65, v85, @"Name", &v82);
                            if (!ChildNode)
                            {
                              ChildNode = FigXMLNodeContentSetCFString(v82, v54);
                              if (!ChildNode)
                              {
                                if (!v55 || (v66 = FigGetAllocatorForMedia(), ChildNode = FigXMLNodeCreateChildNode(v66, v85, @"kDataItemNetworkURL", &v81), !ChildNode) && (ChildNode = FigXMLNodeContentSetCFString(v81, v55), !ChildNode))
                                {
                                  v23 = v75;
                                  if (!v56 || (v67 = FigGetAllocatorForMedia(), v68 = FigXMLNodeCreateChildNode(v67, v85, @"DescriptorPath", &v80), !v68) && (v68 = FigXMLNodeContentSetCFString(v80, v56), !v68))
                                  {
                                    v69 = FigGetAllocatorForMedia();
                                    v68 = FigXMLNodeCreateChildNode(v69, v85, @"DataPath", &v79);
                                    if (!v68)
                                    {
                                      v35 = FigXMLNodeContentSetCFString(v79, v58);
                                      if (v35 || !v51)
                                      {
                                        goto LABEL_77;
                                      }

                                      v70 = FigGetAllocatorForMedia();
                                      v68 = FigXMLNodeCreateChildNode(v70, v85, @"Role", &v78);
                                      if (!v68)
                                      {
                                        v68 = FigXMLNodeContentSetCFString(v78, v51);
                                      }
                                    }
                                  }

                                  v35 = v68;
LABEL_77:
                                  if (v85)
                                  {
                                    CFRelease(v85);
                                  }

                                  if (error[0])
                                  {
                                    CFRelease(error[0]);
                                  }

                                  if (v84)
                                  {
                                    CFRelease(v84);
                                  }

                                  if (v81)
                                  {
                                    CFRelease(v81);
                                  }

                                  if (v79)
                                  {
                                    CFRelease(v79);
                                  }

                                  if (v78)
                                  {
                                    CFRelease(v78);
                                  }

                                  if (v82)
                                  {
                                    CFRelease(v82);
                                  }

                                  if (v83)
                                  {
                                    CFRelease(v83);
                                  }

                                  if (v80)
                                  {
                                    CFRelease(v80);
                                  }

                                  if (!v35)
                                  {
                                    v35 = writeBoot();
                                  }

                                  goto LABEL_97;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_110:
                  v35 = ChildNode;
                  v23 = v75;
                  goto LABEL_77;
                }
              }

              else
              {
                error[0] = 0;
              }

              v60 = FigGetAllocatorForMedia();
              ChildNode = FigXMLNodeCreateChildNode(v60, v49, @"DataItems", error);
              if (ChildNode)
              {
                goto LABEL_110;
              }

              ChildNode = FigXMLNodeAttributeSetCFString(error[0], @"Directory", @"Data");
              if (ChildNode)
              {
                goto LABEL_110;
              }

              goto LABEL_58;
            }

LABEL_97:
            if (v74)
            {
              CFRelease(v74);
            }

            if (v23)
            {
              CFRelease(v23);
            }

            if (!Mutable)
            {
              return v35;
            }

LABEL_102:
            CFRelease(Mutable);
            return v35;
          }

          v45 = v48(v46, 1);
        }
      }

      v35 = v45;
      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

uint64_t makeDirectoryAtURL()
{
  result = FigCFURLCreateDirectory();
  if (!result)
  {
    LODWORD(result) = FigDirectoryEnableDirStatsTracking();
    if (result == -17916)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t copyDataItemWork(uint64_t a1, const void *a2, __CFDictionary **a3, CMBlockBufferRef *a4)
{
  cf = 0;
  error = 0;
  v40 = 0;
  valuePtr = 0;
  dataPointerOut = 0;
  number = 0;
  totalLengthOut = 0;
  theBuffer = 0;
  lengthAtOffsetOut = 0;
  Value = CFDictionaryGetValue(*(a1 + 88), a2);
  if (!Value)
  {
    OUTLINED_FUNCTION_111();
    v21 = FigSignalErrorAtGM();
    FigBytePumpGetFigBaseObject(v21);
    Mutable = 0;
    v17 = 0;
    goto LABEL_46;
  }

  v8 = Value;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = CFDictionaryGetValue(v8, @"DataItemDescriptorRole");
  if (v11)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorRole", v11);
  }

  v12 = CFDictionaryGetValue(v8, @"DataItemDescriptorCacheHeader");
  if (v12)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorCacheHeader", v12);
  }

  v13 = CFDictionaryGetValue(v8, @"DataItemDescriptorUniqueTag");
  if (v13)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorUniqueTag", v13);
  }

  v14 = CFDictionaryGetValue(v8, @"DataItemDescriptorCategory");
  if (v14)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorCategory", v14);
  }

  v15 = CFDictionaryGetValue(v8, @"DataItemDescriptorCacheHeader");
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorCacheHeader", v15);
  }

  v16 = CFDictionaryGetValue(v8, @"DataItemDescriptorName");
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorName", v16);
  }

  if (!a3)
  {
    v17 = 0;
LABEL_27:
    v23 = 0;
    if (!a4)
    {
LABEL_25:
      v24 = CFDictionaryGetValue(v8, @"DataItemFileName");
      CFDictionarySetValue(Mutable, @"DataItemFileName", v24);
LABEL_40:
      theBuffer = 0;
      v21 = 0;
      if (a3)
      {
        *a3 = Mutable;
      }

      Mutable = 0;
      goto LABEL_44;
    }

LABEL_28:
    if (!CFDictionaryGetValue(v8, @"DataItemURL"))
    {
LABEL_39:
      v33 = CFDictionaryGetValue(v8, @"DataItemFileName");
      CFDictionarySetValue(Mutable, @"DataItemFileName", v33);
      *a4 = theBuffer;
      goto LABEL_40;
    }

    FigGetAllocatorForMedia();
    BlockBuffer = CMByteStreamCreateForFileURL();
    if (BlockBuffer)
    {
      goto LABEL_62;
    }

    v26 = FigGetAllocatorForMedia();
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v28)
    {
      BlockBuffer = v28(CMBaseObject, *MEMORY[0x1E695FF78], v26, &number);
      if (BlockBuffer)
      {
        goto LABEL_62;
      }

      CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
      BlockBuffer = persistentStore_ensureMemoryPool(a1);
      if (BlockBuffer)
      {
        goto LABEL_62;
      }

      BlockBuffer = FigMemoryPoolCreateBlockBuffer();
      if (BlockBuffer)
      {
        goto LABEL_62;
      }

      BlockBuffer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
      if (BlockBuffer)
      {
        goto LABEL_62;
      }

      if (lengthAtOffsetOut != totalLengthOut)
      {
        OUTLINED_FUNCTION_111();
        BlockBuffer = FigSignalErrorAtGM();
        goto LABEL_62;
      }

      v30 = valuePtr;
      v29 = cf;
      v31 = dataPointerOut;
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v32)
      {
        BlockBuffer = v32(v29, v30, 0, v31, &v40);
        if (!BlockBuffer)
        {
          if (v40 == valuePtr)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_111();
          v21 = FigSignalErrorAtGM();
          FigBytePumpGetFigBaseObject(v21);
LABEL_44:
          if (v23)
          {
            CFRelease(v23);
          }

          goto LABEL_46;
        }

LABEL_62:
        v21 = BlockBuffer;
        goto LABEL_44;
      }
    }

    v21 = 4294954514;
    goto LABEL_44;
  }

  v17 = CFDictionaryGetValue(v8, @"DataItemDescriptorURL");
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = FigGetAllocatorForMedia();
  v19 = CFReadStreamCreateWithFile(v18, v17);
  v17 = v19;
  if (!v19)
  {
    OUTLINED_FUNCTION_111();
    v21 = FigSignalErrorAtGM();
    goto LABEL_46;
  }

  if (CFReadStreamOpen(v19))
  {
    goto LABEL_21;
  }

  v20 = CFReadStreamCopyError(v17);
  v21 = reportIfError(v20);
  if (v20)
  {
    CFRelease(v20);
  }

  if (!v21)
  {
LABEL_21:
    v22 = FigGetAllocatorForMedia();
    v23 = CFPropertyListCreateWithStream(v22, v17, 0, 0, 0, &error);
    CFReadStreamClose(v17);
    v21 = reportIfError(error);
    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    if (v21)
    {
      goto LABEL_44;
    }

    CFDictionarySetValue(Mutable, @"DataItemDescriptorPropertyListDescriptor", v23);
    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

LABEL_46:
  if (error)
  {
    CFRelease(error);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v21;
}

uint64_t addInterstitialAssetWork(uint64_t a1, const void *a2, const void *a3, __CFDictionary *a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a3)
  {
    v11 = DerivedStorage;
    v12 = primeInterstitialAssetFolder();
    if (v12)
    {
      return v12;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v15 = Mutable;
      if (a5)
      {
        if (!CFDictionaryContainsKey(*(v11 + 216), a2))
        {
          CFDictionarySetValue(v15, @"InterstitialAssetListFileName", a3);
          CFDictionarySetValue(v15, @"InterstitialAssetListNetworkURL", a2);
          OUTLINED_FUNCTION_13_46();
          v16 = FigCFEqual();
          if (v5 && v16)
          {
            Value = CFDictionaryGetValue(v15, @"InterstitialAssetListNetworkURL");
            v18 = CFDictionaryGetValue(v15, @"InterstitialAssetListFileName");
            Child = FigXMLNodeGetChild(v5, @"InterstitialAssets");
            if (Child)
            {
              cf = CFRetain(Child);
              if (cf)
              {
                goto LABEL_21;
              }
            }

            else
            {
              cf = 0;
            }

            v22 = FigGetAllocatorForMedia();
            v23 = FigXMLNodeCreateChildNode(v22, v5, @"InterstitialAssets", &cf);
            if (!v23)
            {
              v23 = FigXMLNodeAttributeSetCFString(cf, @"Directory", @"InterstitialAssets");
              if (!v23)
              {
LABEL_21:
                v24 = FigGetAllocatorForMedia();
                v23 = FigXMLNodeCreateChildNode(v24, cf, @"InterstitialAssetList", &v39);
                if (!v23)
                {
                  v25 = FigGetAllocatorForMedia();
                  v23 = FigXMLNodeCreateChildNode(v25, v39, @"NetworkURL", &v38);
                  if (!v23)
                  {
                    v26 = FigGetAllocatorForMedia();
                    v23 = FigXMLNodeCreateChildNode(v26, v39, @"PathToLocalCopy", &v37);
                    if (!v23)
                    {
                      v23 = FigXMLNodeContentSetCFString(v38, Value);
                      if (!v23)
                      {
                        v23 = FigXMLNodeContentSetCFString(v37, v18);
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_39_4();
            v23 = FigSignalErrorAtGM();
          }

          v27 = v23;
          if (cf)
          {
            CFRelease(cf);
          }

          if (v39)
          {
            CFRelease(v39);
          }

          if (v38)
          {
            CFRelease(v38);
          }

          if (v37)
          {
            CFRelease(v37);
          }

          if (v27)
          {
            goto LABEL_55;
          }

          v28 = *(v11 + 216);
          v29 = a2;
          v30 = v15;
          goto LABEL_54;
        }

LABEL_63:
        v27 = 0;
        goto LABEL_55;
      }

      if (CFDictionaryContainsKey(*(v11 + 208), a2))
      {
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_13_46();
      v20 = FigCFEqual();
      if (v5 && v20)
      {
        v21 = FigXMLNodeGetChild(v5, @"InterstitialAssets");
        if (v21)
        {
          cf = CFRetain(v21);
          if (cf)
          {
            goto LABEL_39;
          }
        }

        else
        {
          cf = 0;
        }

        v31 = FigGetAllocatorForMedia();
        v32 = FigXMLNodeCreateChildNode(v31, v5, @"InterstitialAssets", &cf);
        if (!v32)
        {
          v32 = FigXMLNodeAttributeSetCFString(cf, @"Directory", @"InterstitialAssets");
          if (!v32)
          {
LABEL_39:
            v33 = FigGetAllocatorForMedia();
            v32 = FigXMLNodeCreateChildNode(v33, cf, @"InterstitialAsset", &v39);
            if (!v32)
            {
              v34 = FigGetAllocatorForMedia();
              v32 = FigXMLNodeCreateChildNode(v34, v39, @"NetworkURL", &v37);
              if (!v32)
              {
                v35 = FigGetAllocatorForMedia();
                v32 = FigXMLNodeCreateChildNode(v35, v39, @"PathToLocalCopy", &v38);
                if (!v32)
                {
                  v32 = FigXMLNodeContentSetCFString(v37, a2);
                  if (!v32)
                  {
                    v32 = FigXMLNodeContentSetCFString(v38, a3);
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_39_4();
        v32 = FigSignalErrorAtGM();
      }

      v27 = v32;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      if (v38)
      {
        CFRelease(v38);
      }

      if (v37)
      {
        CFRelease(v37);
      }

      if (v27)
      {
        goto LABEL_55;
      }

      v28 = *(v11 + 208);
      v29 = a2;
      v30 = a4;
LABEL_54:
      CFDictionarySetValue(v28, v29, v30);
      v27 = writeBoot();
LABEL_55:
      CFRelease(v15);
      return v27;
    }
  }

  OUTLINED_FUNCTION_39_4();

  return FigSignalErrorAtGM();
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

const void *FigHLSPersistentStoreCreateAtURL_cold_4(const __CFDictionary *a1, uint64_t a2)
{
  result = CFDictionaryGetValue(a1, @"HLSStoreClientBundleIdentifier");
  if (result)
  {
    result = CFRetain(result);
  }

  *(a2 + 152) = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_7(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return FigBytePumpGetFigBaseObject(v2);
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_17(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return FigBytePumpGetFigBaseObject(v2);
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_18(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_19(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSPersistentStoreCreateAtURL_cold_20(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL loadBootFromFile_cold_2(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t loadBootFromFile_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t loadBootFromFile_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t loadBootFromFile_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t loadBootFromFile_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t loadBootFromFile_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t loadBootFromFile_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t loadBootFromFile_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t loadBootFromFile_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t loadBootFromFile_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HLSPersistentStore_Invalidate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t xmlCopyHLSMoviePackageType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t xmlCopyHLSMoviePackageType_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t xmlCopyRootType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeBoot_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyStreamIDs_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyStreamIDs_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyStreamIDs_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyStreamIDs_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyStreamIDs_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyMasterPlaylist_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyMasterPlaylist_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyMasterPlaylist_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyMasterPlaylist_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyMasterPlaylist_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_IsStreamComplete_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_IsStreamComplete_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_IsStreamComplete_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_IsStreamComplete_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyNetworkURLForStreamID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyNetworkURLForStreamID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyNetworkURLForStreamID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyNetworkURLForStreamID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyUniqueTagForStreamID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyUniqueTagForStreamID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyUniqueTagForStreamID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyUniqueTagForStreamID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyDataItem_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyDataItem_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyDataCategories_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyDataCategories_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyDataCategories_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CreateStreamOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t persistentStore_CreateStreamOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

double removeDataItem_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;

  return FigBytePumpGetFigBaseObject(v2);
}

uint64_t xmlRemoveStream_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t xmlRemoveStream_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t addStreamToStreamList_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialPreloadeCreateFromDictionary_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialPreloadeCreateFromDictionary_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_179();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_2(const void *a1, _DWORD *a2)
{
  v4 = FigSignalErrorAtGM();
  *a2 = v4;
  CFRelease(a1);
  return v4 == 0;
}

uint64_t FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_179();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_179();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_179();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _FigHTTPRequestSessionCreateForNSURLSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _FigHTTPRequestSessionCreateForNSURLSession_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _FigHTTPRequestSessionCreateForNSURLSession_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _FigHTTPRequestSessionCreateForNSURLSession_cold_6(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t _FigHTTPRequestSessionCreateForNSURLSession_cold_7(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t _FigHTTPRequestSessionCreateForNSURLSession_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figHTTPRequestSessionNSCreateHTTPRequest_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueRemoteServer_Destroy()
{
  v0 = FigRPCLookupClientConnection();
  if (v0)
  {
    return v0;
  }

  v1 = FigRPCGetConnectionInfo();
  if (!v1)
  {
    FigRPCDisposeClientConnection();
  }

  return v1;
}

uint64_t FigVideoQueueRemoteServer_Create(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5, uint64_t a6, unsigned int a7, _DWORD *a8, void *a9, uint64_t *a10, _DWORD *a11, _OWORD *a12)
{
  v84 = *MEMORY[0x1E69E9840];
  v71 = 0;
  v17 = a12[1];
  *handler.val = *a12;
  *&handler.val[4] = v17;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  v69 = 0;
  v70 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  v19 = *MEMORY[0x1E695E480];
  if (a7)
  {
    v20 = MEMORY[0x19A8D2B00](a6, a7, *MEMORY[0x1E695E480], &v69);
    if (v20)
    {
LABEL_85:
      v48 = v20;
      v62 = 0;
      goto LABEL_72;
    }

    v21 = v69;
  }

  else
  {
    v21 = 0;
  }

  v20 = FigVideoQueueCreateLocalWithOptions(v19, v21, &v71);
  if (v20)
  {
    goto LABEL_85;
  }

  v66 = a4;
  if (a5)
  {
    v22 = CFStringCreateWithCString(v19, a5, 0x8000100u);
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  FigProcessInfoCreateWithDetails();
  v24 = v70;
  v23 = v71;
  v25 = a12[1];
  v77 = *a12;
  v78 = v25;
  v73 = 0;
  cf = 0;
  SInt32 = FigCFNumberCreateSInt32();
  FigVideoQueueGetClassID();
  v26 = CMDerivedObjectCreate();
  if (!v26)
  {
    v65 = a7;
    if (dword_1EAF17830)
    {
      v27 = a6;
      LODWORD(v75) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v29 = v75;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        *v79 = 136315650;
        *&v79[4] = "videoQueueServer_makeWrapperForVideoQueueInternal";
        *&v79[12] = 2048;
        *&v79[14] = cf;
        *&v79[22] = 2048;
        v80 = v23;
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7_86();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a6 = v27;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = v23;
    CFRetain(v23);
    *(DerivedStorage + 20) = ClientPIDFromAuditToken;
    if (v24)
    {
      v32 = CFRetain(v24);
    }

    else
    {
      v32 = 0;
    }

    DerivedStorage[11] = v32;
    v33 = FigSimpleMutexCreate();
    DerivedStorage[8] = v33;
    if (!v33 || (v34 = FigOSTransactionCreate(), (DerivedStorage[4] = v34) == 0) || (v35 = FigSimpleMutexCreate(), (DerivedStorage[7] = v35) == 0))
    {
      OUTLINED_FUNCTION_49_0();
      v48 = FigSignalErrorAtGM();
      v36 = 0;
      goto LABEL_89;
    }

    v36 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (!v36)
    {
      goto LABEL_88;
    }

    if (qword_1ED4CB928 != -1)
    {
      dispatch_once(&qword_1ED4CB928, &__block_literal_global_101);
    }

    v37 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED4CB920);
    if (!v37)
    {
LABEL_88:
      OUTLINED_FUNCTION_49_0();
      v48 = FigSignalErrorAtGM();
      goto LABEL_89;
    }

    v38 = v37;
    dispatch_set_context(v37, v36);
    *handler.val = MEMORY[0x1E69E9820];
    *&handler.val[2] = 0x40000000;
    *&handler.val[4] = __videoQueueServer_makeWrapperForVideoQueueInternal_block_invoke;
    *&handler.val[6] = &__block_descriptor_tmp_114;
    v83 = v38;
    dispatch_source_set_cancel_handler(v38, &handler);
    *v79 = MEMORY[0x1E69E9820];
    *&v79[8] = 0x40000000;
    *&v79[16] = __videoQueueServer_makeWrapperForVideoQueueInternal_block_invoke_2;
    v80 = &__block_descriptor_tmp_12_5;
    v81 = v38;
    dispatch_source_set_event_handler(v38, v79);
    DerivedStorage[12] = v38;
    dispatch_activate(v38);
    DerivedStorage[9] = 0;
    v39 = FigRPCCreateClientConnectionWithNotifications();
    if (v39)
    {
      goto LABEL_83;
    }

    CMBaseObject = FigVideoQueueGetCMBaseObject(*DerivedStorage);
    v41 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v41)
    {
      v41(CMBaseObject, @"ClientPID", SInt32);
    }

    v42 = FigVideoQueueGetCMBaseObject(*DerivedStorage);
    v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v43)
    {
      v43(v42, @"ResponsibleProcessID", SInt32);
    }

    v44 = CMBaseObjectGetDerivedStorage();
    v45 = videoQueueServer_copySubVideoQueue();
    if (!v45)
    {
      OUTLINED_FUNCTION_49_0();
      v48 = FigSignalErrorAtGM();
      if (v48)
      {
        goto LABEL_84;
      }

LABEL_40:
      CMNotificationCenterGetDefaultLocalCenter();
      v39 = FigNotificationCenterAddWeakListener();
      if (!v39)
      {
        v48 = FigRPCGetConnectionInfo();
        a7 = v65;
        v36 = 0;
        if (!v48)
        {
          *a9 = 0;
          v73 = 0;
        }

        goto LABEL_43;
      }

LABEL_83:
      v48 = v39;
      goto LABEL_84;
    }

    v46 = v45;
    if (in_audio_mx_server_process())
    {
      v75 = v77;
      v76 = v78;
      UsingPrimaryCMSessionForAuditToken = FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken(v19, &v75, (v44 + 24));
      if (UsingPrimaryCMSessionForAuditToken)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v75 = v77;
      v76 = v78;
      UsingPrimaryCMSessionForAuditToken = FigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(v19, &v75, @"FigVideoQueue", (v44 + 24));
      if (UsingPrimaryCMSessionForAuditToken)
      {
        goto LABEL_93;
      }
    }

    if (*(v44 + 24))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61();
      v48 = 0;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_49_0();
    UsingPrimaryCMSessionForAuditToken = FigSignalErrorAtGM();
LABEL_93:
    v48 = UsingPrimaryCMSessionForAuditToken;
LABEL_39:
    CFRelease(v46);
    if (v48)
    {
LABEL_84:
      v36 = 0;
LABEL_89:
      a7 = v65;
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v48 = v26;
  v36 = 0;
LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  OUTLINED_FUNCTION_4_129();
  if (v73)
  {
    FigRPCDisposeClientConnection();
  }

  if (!v48)
  {
    v49 = a12[1];
    *handler.val = *a12;
    *&handler.val[4] = v49;
    v50 = SecTaskCreateWithAuditToken(v19, &handler);
    v51 = MEMORY[0x1E695E4D0];
    if (v50)
    {
      v52 = v50;
      if (VTIsSecTaskEntitledForVP9Decode())
      {
        v53 = FigVideoQueueGetCMBaseObject(v71);
        v54 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v54)
        {
          v54(v53, @"AllowAlternateVideoDecoderSelection", *v51);
        }
      }

      CFRelease(v52);
    }

    if (!v66)
    {
      v60 = FigVideoQueueGetCMBaseObject(v71);
      v61 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v61)
      {
        v61(v60, @"EnableFlushCAToRemoveImage", *MEMORY[0x1E695E4C0]);
      }
    }

    if (FigVideoQueueUtilityIsProcessASecureCaptureExtension(ClientPIDFromAuditToken))
    {
      v55 = FigVideoQueueGetCMBaseObject(v71);
      v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v56)
      {
        v56(v55, 0x1F0B59498, *v51);
      }
    }

    *a10 = FigRemote_GetServerTimeoutToken();
    if (dword_1EAF17830)
    {
      LODWORD(v75) = 0;
      LOBYTE(cf) = 0;
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v58 = v75;
      if (os_log_type_enabled(v57, cf))
      {
        v59 = v58;
      }

      else
      {
        v59 = v58 & 0xFFFFFFFE;
      }

      if (v59)
      {
        *v79 = 136315394;
        *&v79[4] = "FigVideoQueueRemoteServer_Create";
        *&v79[12] = 1024;
        *&v79[14] = ClientPIDFromAuditToken;
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7_86();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v48 = 0;
  }

  v62 = v67;
LABEL_72:
  if (v71)
  {
    v63 = v62;
    CFRelease(v71);
    v62 = v63;
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  OUTLINED_FUNCTION_4_129();
  if (a7)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], a6, a7);
  }

  *a11 = v48;
  return 0;
}

uint64_t videoQueueServerCopyClientFromCommandPort(uint64_t a1, void *a2)
{
  result = FigRPCLookupClientConnection();
  if (!result)
  {
    result = FigRPCGetConnectionInfo();
    if (a2)
    {
      if (!result)
      {
        *a2 = 0;
      }
    }
  }

  return result;
}

uint64_t FigVideoQueueRemoteServer_GetProperty(uint64_t a1, const char *a2)
{
  v3 = OUTLINED_FUNCTION_9_65(a1);
  if (v3)
  {
    goto LABEL_15;
  }

  CMBaseObjectGetDerivedStorage();
  v4 = videoQueueServer_copySubVideoQueue();
  if (!v4)
  {
    OUTLINED_FUNCTION_429();
    v3 = FigSignalErrorAtGM();
LABEL_15:
    VMBufferFromPropertyList = v3;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    VMBufferFromPropertyList = v8(v5, v7, v6, &cf);
    if (!VMBufferFromPropertyList)
    {
      VMBufferFromPropertyList = FigRemote_CreateVMBufferFromPropertyList();
    }
  }

  else
  {
    VMBufferFromPropertyList = 4294954514;
  }

  CFRelease(v5);
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return VMBufferFromPropertyList;
}

uint64_t FigVideoQueueRemoteServer_SetProperty(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v32 = 0;
  v7 = videoQueueServerCopyClientFromCommandPort(a1, 0);
  if (!v7)
  {
    CMBaseObjectGetDerivedStorage();
    v8 = videoQueueServer_copySubVideoQueue();
    if (v8)
    {
      v9 = v8;
      v10 = *MEMORY[0x1E695E480];
      v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0);
      v12 = MEMORY[0x19A8D2B00](a3, a4, v10, &cf);
      if (v12)
      {
LABEL_50:
        v20 = v12;
        goto LABEL_52;
      }

      if (!FigCFEqual())
      {
LABEL_24:
        if (!FigCFEqual())
        {
          if (FigCFEqual())
          {
            v20 = 0;
LABEL_52:
            CFRelease(v9);
            goto LABEL_53;
          }

          goto LABEL_48;
        }

        v21 = cf;
        if (cf && (v22 = CFGetTypeID(cf), v22 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(v21), (Mutable = CFArrayCreateMutable(v10, Count, MEMORY[0x1E695E9C0])) != 0))
        {
          v25 = Mutable;
          if (Count < 1)
          {
LABEL_41:
            if (cf)
            {
              CFRelease(cf);
            }

            cf = v25;
            if (v11)
            {
              CFRelease(v11);
            }

            if (@"VideoTargetArray")
            {
              v11 = CFRetain(@"VideoTargetArray");
            }

            else
            {
              v11 = 0;
            }

LABEL_48:
            v28 = cf;
            v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v29)
            {
              v20 = 4294954514;
              goto LABEL_52;
            }

            v12 = v29(v9, v11, v28);
            goto LABEL_50;
          }

          v26 = 0;
          while (1)
          {
            v34 = 0;
            if (!FigCFArrayGetInt64AtIndex())
            {
              break;
            }

            value = 0;
            v27 = FigXPCVideoTargetServerCopyVideoTargetForID(v34, &value);
            if (v27)
            {
              goto LABEL_39;
            }

            CFArrayAppendValue(v25, value);
            if (value)
            {
              CFRelease(value);
            }

            if (Count == ++v26)
            {
              goto LABEL_41;
            }
          }

          OUTLINED_FUNCTION_40_0();
          v27 = FigSignalErrorAtGM();
LABEL_39:
          v20 = v27;
          CFRelease(v25);
          if (v20)
          {
            goto LABEL_52;
          }
        }

        else
        {
          OUTLINED_FUNCTION_40_0();
          v20 = FigSignalErrorAtGM();
          if (v20)
          {
            goto LABEL_52;
          }
        }

        v25 = 0;
        goto LABEL_41;
      }

      v13 = cf;
      if (cf && (v14 = CFGetTypeID(cf), v14 == CFArrayGetTypeID()) && (v15 = CFArrayGetCount(v13), (v16 = CFArrayCreateMutable(v10, v15, MEMORY[0x1E695E9C0])) != 0))
      {
        v17 = v16;
        if (v15 < 1)
        {
LABEL_17:
          if (cf)
          {
            CFRelease(cf);
          }

          cf = v17;
          if (v11)
          {
            CFRelease(v11);
          }

          if (@"VisualContextArray")
          {
            v11 = CFRetain(@"VisualContextArray");
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_24;
        }

        v18 = 0;
        while (1)
        {
          v34 = 0;
          if (!FigCFArrayGetInt64AtIndex())
          {
            break;
          }

          value = 0;
          v19 = FigVisualContextServerRetainVisualContextForID(v34, &value);
          if (v19)
          {
            goto LABEL_15;
          }

          CFArrayAppendValue(v17, value);
          CFRelease(value);
          if (v15 == ++v18)
          {
            goto LABEL_17;
          }
        }

        OUTLINED_FUNCTION_40_0();
        v19 = FigSignalErrorAtGM();
LABEL_15:
        v20 = v19;
        CFRelease(v17);
        if (v20)
        {
          goto LABEL_52;
        }
      }

      else
      {
        OUTLINED_FUNCTION_40_0();
        v20 = FigSignalErrorAtGM();
        if (v20)
        {
          goto LABEL_52;
        }
      }

      v17 = 0;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_40_0();
    v7 = FigSignalErrorAtGM();
  }

  v20 = v7;
  v11 = 0;
LABEL_53:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a3 && !v20)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], a3, a4);
  }

  return v20;
}

uint64_t FigVideoQueueRemoteServer_Start(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_72(a1);
  if (!v3)
  {
    CMBaseObjectGetDerivedStorage();
    v4 = videoQueueServer_copySubVideoQueue();
    if (v4)
    {
      v5 = v4;
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v6)
      {
        v7 = v6(v5, a2);
      }

      else
      {
        v7 = 4294954514;
      }

      CFRelease(v5);
      goto LABEL_7;
    }

    v3 = FigSignalErrorAtGM();
  }

  v7 = v3;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t FigVideoQueueRemoteServer_EnqueueVideoSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int *a6)
{
  OUTLINED_FUNCTION_0_180();
  v10 = v9;
  v12 = OUTLINED_FUNCTION_9_65(v11);
  if (v12)
  {
    v17 = v12;
    v13 = 0;
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    v13 = videoQueueServer_copySubVideoQueue();
    if (v13)
    {
      SampleBufferFromSerializedAtomData = FigRemote_CreateSampleBufferFromSerializedAtomData();
      if (SampleBufferFromSerializedAtomData)
      {
LABEL_6:
        v17 = SampleBufferFromSerializedAtomData;
        a4 = 0;
        goto LABEL_8;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        v15 = OUTLINED_FUNCTION_1_168();
        SampleBufferFromSerializedAtomData = v16(v15);
        goto LABEL_6;
      }

      a4 = 0;
      v17 = -12782;
    }

    else
    {
      v17 = FigSignalErrorAtGM();
    }
  }

LABEL_8:
  if (v10)
  {
    OUTLINED_FUNCTION_4_129();
  }

  if (a4)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], a3, a4);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (a6)
  {
    *a6 = v17;
  }

  return 0;
}

uint64_t FigVideoQueueRemoteServer_EnqueueTaggedBufferGroupBackedSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, int *a9)
{
  OUTLINED_FUNCTION_0_180();
  v12 = 0;
  v26 = *MEMORY[0x1E69E9840];
  v25[0] = v13;
  v25[1] = v14;
  v25[2] = v15;
  v25[3] = v16;
  do
  {
    if (!v25[v12])
    {
      break;
    }

    ++v12;
  }

  while (v12 != 4);
  v17 = videoQueueServerCopyClientFromCommandPort(v11, 0);
  if (v17)
  {
    v22 = v17;
    v18 = 0;
    goto LABEL_11;
  }

  CMBaseObjectGetDerivedStorage();
  v18 = videoQueueServer_copySubVideoQueue();
  if (!v18)
  {
    OUTLINED_FUNCTION_429();
    v22 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  SampleBufferFromSerializedAtomDataAndIOSurfaceArray = FigRemote_CreateSampleBufferFromSerializedAtomDataAndIOSurfaceArray();
  if (!SampleBufferFromSerializedAtomDataAndIOSurfaceArray)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      a7 = 0;
      v22 = -12782;
      goto LABEL_11;
    }

    v20 = OUTLINED_FUNCTION_1_168();
    SampleBufferFromSerializedAtomDataAndIOSurfaceArray = v21(v20);
  }

  v22 = SampleBufferFromSerializedAtomDataAndIOSurfaceArray;
  a7 = 0;
LABEL_11:
  for (i = 0; i != 4; ++i)
  {
    if (v25[i])
    {
      OUTLINED_FUNCTION_4_129();
    }
  }

  if (a7)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], a6, a7);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (a9)
  {
    *a9 = v22;
  }

  return 0;
}

uint64_t FigVideoQueueRemoteServer_EnqueueH264Frame(uint64_t a1, uint64_t a2, uint64_t a3, const UInt8 *a4, unsigned int a5, void *a6, unsigned int a7, uint64_t a8, uint64_t a9, int *a10)
{
  OUTLINED_FUNCTION_0_180();
  cf = 0;
  v37 = 0;
  v15 = videoQueueServerCopyClientFromCommandPort(v14, 0);
  v16 = MEMORY[0x1E69E9A60];
  if (v15)
  {
    v34 = v15;
    v20 = 0;
    v19 = 0;
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    v19 = videoQueueServer_copySubVideoQueue();
    if (v19)
    {
      v20 = 0;
      v21 = MEMORY[0x1E695E480];
      if (a4)
      {
        if (a5)
        {
          v22 = a5;
          v20 = CFDataCreate(*MEMORY[0x1E695E480], a4, a5);
          if (!v20)
          {
            v34 = -108;
            v16 = MEMORY[0x1E69E9A60];
            goto LABEL_14;
          }
        }
      }

      if (a6 && a7 && (OUTLINED_FUNCTION_6_102(*v21, v17, a7, v18, &sVMAllocatedDataBlockSource), (v30 = OUTLINED_FUNCTION_14_54(v23, a6, v24, v25, v26, v27, v28, v29, &cf)) != 0))
      {
        v34 = v30;
        v16 = MEMORY[0x1E69E9A60];
      }

      else
      {
        VTable = CMBaseObjectGetVTable();
        v16 = MEMORY[0x1E69E9A60];
        if (*(*(VTable + 16) + 24))
        {
          v32 = OUTLINED_FUNCTION_1_168();
          v34 = v33(v32);
          a7 = 0;
        }

        else
        {
          a7 = 0;
          v34 = -12782;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_429();
      v34 = FigSignalErrorAtGM();
      v20 = 0;
    }
  }

  if (!a5)
  {
    goto LABEL_15;
  }

  v22 = a5;
LABEL_14:
  MEMORY[0x19A8D6C70](*v16, a4, v22);
LABEL_15:
  if (a7)
  {
    MEMORY[0x19A8D6C70](*v16, a6, a7);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (a10)
  {
    *a10 = v34;
  }

  return 0;
}

uint64_t FigVideoQueueRemoteServer_SyncTimebaseToMoment(uint64_t a1, int a2, int *a3, int *a4)
{
  v39 = 0;
  v38 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v35 = 0u;
  sourceTimebase = 0;
  timebaseOut = 0;
  v7 = *a3;
  v6 = a3[1];
  v8 = *(a3 + 1);
  v9 = *(a3 + 1);
  v47 = *(a3 + 4);
  v48 = 0;
  v46 = v9;
  v10 = *(a3 + 10);
  v45 = *(a3 + 7);
  v44 = v10;
  v11 = *(a3 + 8);
  v12 = *(a3 + 18);
  v43 = *(a3 + 11);
  v42 = v12;
  v13 = *(a3 + 6);
  v41 = *(a3 + 14);
  v40 = v13;
  v14 = videoQueueServerCopyClientFromCommandPort(a1, 0);
  if (!v14)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v16 = DerivedStorage;
      v17 = videoQueueServer_copySubVideoQueue();
      if (!v17)
      {
        v24 = -12785;
        goto LABEL_27;
      }

      v18 = v17;
      FigSimpleMutexLock();
      LODWORD(v35) = v7;
      if (v7 == 120)
      {
        DWORD1(v35) = v6;
        *(&v35 + 1) = v8;
        v36 = v46;
        *&v37[0] = v47;
        *(v37 + 8) = v44;
        *(&v37[1] + 1) = v45;
        *&v37[2] = v11;
        *(&v37[2] + 8) = v42;
        *(&v37[3] + 1) = v43;
        v39 = v41;
        v38 = v40;
        if (a2)
        {
          v19 = *(v16 + 40);
          if (v19)
          {
            goto LABEL_24;
          }

          v20 = *MEMORY[0x1E695E480];
          HostTimeClock = CMClockGetHostTimeClock();
          v22 = CMTimebaseCreateWithSourceClock(v20, HostTimeClock, &sourceTimebase);
          if (v22 || (v22 = CMTimebaseCreateWithSourceTimebase(v20, sourceTimebase, &timebaseOut)) != 0)
          {
            v24 = v22;
            goto LABEL_26;
          }

          if (timebaseOut)
          {
            v23 = CFRetain(timebaseOut);
          }

          else
          {
            v23 = 0;
          }

          *(v16 + 40) = v23;
          v29 = sourceTimebase;
          if (sourceTimebase)
          {
            v29 = CFRetain(sourceTimebase);
            v23 = *(v16 + 40);
          }

          *(v16 + 48) = v29;
          CMBaseObject = FigVideoQueueGetCMBaseObject(v18);
          v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v31)
          {
            v31(CMBaseObject, @"VideoQueue_ControlTimebase", v23);
          }

          v19 = *(v16 + 40);
          if (v19)
          {
LABEL_24:
            FigTimebaseSynchronizeToMoment2(v19, *(v16 + 48), &v35);
          }
        }

        else
        {
          v25 = FigVideoQueueGetCMBaseObject(v18);
          v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v26)
          {
            v26(v25, @"VideoQueue_ControlTimebase", 0);
          }

          v27 = *(v16 + 40);
          if (v27)
          {
            CFRelease(v27);
            *(v16 + 40) = 0;
          }

          v28 = *(v16 + 48);
          if (v28)
          {
            CFRelease(v28);
            v24 = 0;
            *(v16 + 48) = 0;
LABEL_26:
            CFRelease(v18);
            FigSimpleMutexUnlock();
            goto LABEL_27;
          }
        }
      }

      v24 = 0;
      goto LABEL_26;
    }

    v14 = FigSignalErrorAtGM();
  }

  v24 = v14;
LABEL_27:
  if (v48)
  {
    CFRelease(v48);
  }

  if (timebaseOut)
  {
    CFRelease(timebaseOut);
  }

  if (sourceTimebase)
  {
    CFRelease(sourceTimebase);
  }

  if (a4)
  {
    *a4 = v24;
  }

  return 0;
}

uint64_t FigVideoQueueRemoteServer_Flush(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_72(a1);
  if (!v3)
  {
    CMBaseObjectGetDerivedStorage();
    v4 = videoQueueServer_copySubVideoQueue();
    if (v4)
    {
      v5 = v4;
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v6)
      {
        v7 = v6(v5, a2);
      }

      else
      {
        v7 = 4294954514;
      }

      CFRelease(v5);
      goto LABEL_7;
    }

    v3 = FigSignalErrorAtGM();
  }

  v7 = v3;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t FigVideoQueueRemoteServer_IsAboveHighWaterLevel(uint64_t a1, _DWORD *a2)
{
  v3 = OUTLINED_FUNCTION_8_72(a1);
  if (!v3)
  {
    CMBaseObjectGetDerivedStorage();
    v4 = videoQueueServer_copySubVideoQueue();
    if (v4)
    {
      v5 = v4;
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v6)
      {
        v7 = v6(v5);
      }

      else
      {
        v7 = 0;
      }

      *a2 = v7;
      CFRelease(v5);
      v8 = 0;
      goto LABEL_7;
    }

    v3 = FigSignalErrorAtGM();
  }

  v8 = v3;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigVideoQueueRemoteServer_RequestDecodeForPreroll(uint64_t a1, uint64_t a2, unsigned int a3, int *a4)
{
  v7 = OUTLINED_FUNCTION_9_65(a1);
  if (!v7)
  {
    CMBaseObjectGetDerivedStorage();
    v8 = videoQueueServer_copySubVideoQueue();
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0x19A8D2B00](a2, a3, *MEMORY[0x1E695E480], &v15);
      if (!v10)
      {
        v11 = v15;
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v12)
        {
          v13 = -12782;
          goto LABEL_8;
        }

        v10 = v12(v9, v11);
      }

      v13 = v10;
LABEL_8:
      CFRelease(v9);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_429();
    v7 = FigSignalErrorAtGM();
  }

  v13 = v7;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (a3)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], a2, a3);
  }

  if (a4)
  {
    *a4 = v13;
  }

  return 0;
}

uint64_t FigVideoQueueRemoteServer_CopyCurrentlyDisplayedCVPixelBuffer(uint64_t a1, _DWORD *a2, void *a3, _DWORD *a4, int *a5)
{
  cf = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v19 = 0;
  v9 = videoQueueServerCopyClientFromCommandPort(a1, 0);
  if (v9)
  {
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = videoQueueServer_copySubVideoQueue();
  if (!v11)
  {
    v9 = FigSignalErrorAtGM();
LABEL_22:
    SerializedAtomDataForPixelBuffer = v9;
    goto LABEL_9;
  }

  v12 = v11;
  CMBaseObject = FigVideoQueueGetCMBaseObject(v11);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v15 = v14(CMBaseObject, @"CurrentlyDisplayedCVPixelBuffer", *MEMORY[0x1E695E480], &v19);
    if (v15)
    {
      SerializedAtomDataForPixelBuffer = v15;
    }

    else
    {
      SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
      if (SerializedAtomDataForPixelBuffer)
      {
        *(DerivedStorage + 72) = 0;
      }

      else
      {
        v18 = v20;
        *(DerivedStorage + 72) = (v20 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        *a2 = v22;
        v22 = 0;
        *a3 = v21;
        *a4 = v18;
        v20 = 0;
        v21 = 0;
      }
    }
  }

  else
  {
    SerializedAtomDataForPixelBuffer = -12782;
  }

  CFRelease(v12);
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v22)
  {
    OUTLINED_FUNCTION_4_129();
  }

  if (v20)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], v21);
  }

  if (a5)
  {
    *a5 = SerializedAtomDataForPixelBuffer;
  }

  return 0;
}

__CFString *fastStartRemaker_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  cf = 0;
  if (!DerivedStorage)
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FastStartRemaker %p>", a1);
  CFStringAppendFormat(Mutable, 0, @" { ftypAtomOffset: %llu ftypAtomLength: %llu moovAtomOffset: %llu moovAtomLength: %llu firstMdatAtomOffset: %llu wholeMdatAtomLength: %llu", v3[8], v3[11], v3[9], v3[12], v3[10], v3[13]);
  v6 = MEMORY[0x1E695FFA0];
  if (v3[3])
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *v6, v4, &cf);
    }
  }

  if (v3[4])
  {
    v9 = CMByteStreamGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *v6, v4, &v12);
      v10 = v12;
    }
  }

  else
  {
    v10 = 0;
  }

  CFStringAppendFormat(Mutable, 0, @" sourceByteStream: %@ sourceURL: %@ outputByteStream: %@ outputURL: %@ }", v3[3], cf, v3[4], v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return Mutable;
}

uint64_t fastStartRemaker_getMovieDataAtom()
{
  OUTLINED_FUNCTION_187();
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    if (*(v0 + 112))
    {
      result = 0;
      *(v0 + 104) = -*(v0 + 80);
    }

    else
    {
      *(v0 + 80) = 0;
      *(v0 + 112) = 1;
      result = FigAtomStreamGetCurrentAtomHeaderSize();
      if (!result)
      {
        return 4294955167;
      }
    }
  }

  return result;
}

uint64_t fastStartRemaker_parseChildAtoms(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = (a3 + 8);
  while (1)
  {
    result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (result)
    {
      return result;
    }

    if (a2 >= 1)
    {
      v11 = 0;
      v12 = v9;
      v13 = v9;
      while (*(v13 - 2))
      {
        ++v11;
        v13 += 2;
        v12 += 4;
        if (a2 == v11)
        {
          goto LABEL_12;
        }
      }

      v14 = 1 << v11;
      if ((*(v13 - 4) & 1) != 0 && (v14 & v8) != 0)
      {
        return FigSignalErrorAtGM();
      }

      v8 |= v14;
      result = (*v13)(a1, a4);
      if (result == 1937010544)
      {
        result = 0;
        goto LABEL_17;
      }

      if (result)
      {
        return result;
      }
    }

LABEL_12:
    LODWORD(result) = FigAtomStreamAdvanceToNextAtom();
    if (result)
    {
      if (result == -12890)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

LABEL_17:
      if (a2 >= 1)
      {
        v15 = 0;
        v16 = (a3 + 4);
        do
        {
          v17 = *v16;
          v16 += 16;
          if ((v17 & 2) != 0 && ((v8 >> v15) & 1) == 0)
          {
            result = FigSignalErrorAtGM();
          }

          ++v15;
        }

        while (a2 != v15);
      }

      return result;
    }
  }
}

uint64_t fastStartRemaker_getTrackAtom(int a1, void *cf)
{
  v3 = CFGetAllocator(cf);
  v4 = MEMORY[0x19A8CC720](v3, 112, 0x100004090191A6FLL, 0);
  if (!v4)
  {
    return 4294955196;
  }

  v5 = v4;
  *&v6 = OUTLINED_FUNCTION_0_15();
  v7[5] = v6;
  v7[6] = v6;
  v7[3] = v6;
  v7[4] = v6;
  *v7 = v6;
  v7[1] = v6;
  v7[2] = v6;
  CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (CurrentAtomGlobalOffset || (CurrentAtomGlobalOffset = FigAtomStreamInitWithParent(), CurrentAtomGlobalOffset))
  {
    started = CurrentAtomGlobalOffset;
    goto LABEL_8;
  }

  started = fastStartRemaker_parseChildAtoms(&v12, 1, &fastStartRemaker_getTrackAtom_atomDispatch, v5);
  if (started)
  {
LABEL_8:
    v11 = CFGetAllocator(cf);
    CFAllocatorDeallocate(v11, v5);
    return started;
  }

  CFArrayAppendValue(cf, v5);
  return started;
}

uint64_t fastStartRemaker_getMediaAtom()
{
  OUTLINED_FUNCTION_187();
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    OUTLINED_FUNCTION_0_15();
    result = OUTLINED_FUNCTION_3_131();
    if (!result)
    {
      return fastStartRemaker_parseChildAtoms(&v2, 1, &fastStartRemaker_getMediaAtom_atomDispatch, v0);
    }
  }

  return result;
}

uint64_t fastStartRemaker_getMediaInfoAtom()
{
  OUTLINED_FUNCTION_187();
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    OUTLINED_FUNCTION_0_15();
    result = OUTLINED_FUNCTION_3_131();
    if (!result)
    {
      return fastStartRemaker_parseChildAtoms(&v2, 1, &fastStartRemaker_getMediaInfoAtom_atomDispatch, v0);
    }
  }

  return result;
}

uint64_t fastStartRemaker_getSampleTableAtom()
{
  OUTLINED_FUNCTION_187();
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    OUTLINED_FUNCTION_0_15();
    result = OUTLINED_FUNCTION_3_131();
    if (!result)
    {
      return fastStartRemaker_parseChildAtoms(&v2, 2, &fastStartRemaker_getSampleTableAtom_atomDispatch, v0);
    }
  }

  return result;
}

uint64_t FigFastStartRemakerCreateWithURLs_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFastStartRemakerCreateWithURLs_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFastStartRemakerCreateWithURLs_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFastStartRemakerCreateWithURLs_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFastStartRemakerCreateWithURLs_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFastStartRemakerCreateWithURLs_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFastStartRemakerCreateWithURLs_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFastStartRemakerCreateWithURLs_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fastStartRemaker_Invalidate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fastStartRemaker_CopyProperty_cold_2(uint64_t result, float *a2)
{
  v2 = *(result + 104);
  v3 = 0.0;
  if (v2)
  {
    v4 = *(result + 48) / v2;
    if (v4 >= 0.0)
    {
      v3 = *(result + 48) / v2;
      if (v4 > 1.0)
      {
        v3 = 1.0;
      }
    }
  }

  *a2 = v3;
  return result;
}

uint64_t fastStartRemaker_CopyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fastStartRemaker_StartOutput_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fastStartRemaker_StartOutput_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL writeFirstStartMovieDispatchFunction_cold_3()
{
  OUTLINED_FUNCTION_1_169();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_290_1(v0);
}

uint64_t writeFirstStartMovieDispatchFunction_cold_4(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writeFirstStartMovieDispatchFunction_cold_18(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL writeFirstStartMovieDispatchFunction_cold_19()
{
  OUTLINED_FUNCTION_1_169();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_290_1(v0);
}

int *fastStartRemaker_getChunkOffsetAtomInfo_cold_1(int *result, char a2, uint64_t a3, uint64_t *a4)
{
  v4 = *result;
  if (a2)
  {
    if (v4 > 0)
    {
      v5 = 0;
      v6 = *a4 + 4;
      v7 = -1;
      do
      {
        v8 = bswap32(*(v6 - 4));
        if (v7 >= v8)
        {
          v7 = v8;
        }

        if (v5 <= v8)
        {
          v5 = v8;
        }

        *a4 = v6;
        v6 += 4;
        --v4;
      }

      while (v4);
      goto LABEL_19;
    }

LABEL_18:
    v5 = 0;
    v7 = -1;
    goto LABEL_19;
  }

  if (v4 <= 0)
  {
    goto LABEL_18;
  }

  v5 = 0;
  v9 = *a4 + 8;
  v7 = -1;
  do
  {
    v10 = bswap64(*(v9 - 8));
    if (v7 >= v10)
    {
      v7 = v10;
    }

    if (v5 <= v10)
    {
      v5 = v10;
    }

    *a4 = v9;
    v9 += 8;
    --v4;
  }

  while (v4);
LABEL_19:
  *(a3 + 96) = v7;
  *(a3 + 104) = v5;
  return result;
}

uint64_t FigReportingAgentCreateFromAsset(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  v2 = @"com.apple.coremedia";
  OUTLINED_FUNCTION_10_65();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_10_65();
  fig_note_initialize_category_with_default_work_cf();
  CMBaseObject = FigAssetGetCMBaseObject(a1);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v2 = *MEMORY[0x1E695E480];
    v4 = OUTLINED_FUNCTION_8_73();
    v6 = v5(v4);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    OUTLINED_FUNCTION_189_0();
    v8 = 4294954514;
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (CMBaseObject)
  {
    CFRelease(CMBaseObject);
  }

  return v8;
}

const void *fra_setCFStringRefValueFromKeyInDict(const void *result, void *key, CFDictionaryRef theDict)
{
  if (result)
  {
    if (key)
    {
      result = CFDictionaryGetValue(theDict, key);
      if (result)
      {
        v3 = CFGetTypeID(result);
        result = CFStringGetTypeID();
        if (v3 == result)
        {

          return FigCFDictionarySetValueFromKeyInDict();
        }
      }
    }
  }

  return result;
}

uint64_t FigReportingAgentCreate(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, int a7, const __CFDictionary *a8, char a9, void *a10)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_12_61();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_12_61();
  fig_note_initialize_category_with_default_work_cf();
  if (!a10)
  {
    return 4294955296;
  }

  MEMORY[0x19A8D3660](&unk_1ED4CA2E8, fra_createStaticKeyArrayForTCPIStats);
  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  if (!GlobalNetworkBufferingQueue)
  {
    return 0;
  }

  v15 = GlobalNetworkBufferingQueue;
  v16 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&_MergedGlobals_10, RegisterFigReportingAgentBaseType);
  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    return v17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955295;
  }

  v19 = DerivedStorage;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"force_reporting", @"com.apple.coremedia", 0);
  v21 = 0;
  *(v19 + 132) = AppIntegerValue != 0;
  if (a3)
  {
    v21 = CFRetain(a3);
  }

  *(v19 + 16) = v21;
  v22 = a4 ? CFRetain(a4) : 0;
  *(v19 + 48) = v22;
  fra_setAdditionalReportingConfigParams(v19, a8);
  v23 = a1 ? CFRetain(a1) : 0;
  *(v19 + 24) = v23;
  v24 = a2 ? CFRetain(a2) : 0;
  *(v19 + 32) = v24;
  v25 = a5 ? CFRetain(a5) : 0;
  *(v19 + 56) = v25;
  v26 = a6 ? CFRetain(a6) : 0;
  *(v19 + 64) = v26;
  *(v19 + 112) = v15;
  dispatch_retain(v15);
  *(v19 + 104) = FigSimpleMutexCreate();
  *(v19 + 128) = a7;
  *(v19 + 144) = 0;
  FigCFDictionaryGetIntIfPresent();
  *(v19 + 148) = 0;
  *(v19 + 168) = a9;
  v17 = FigReportingSessionStatsCreate(v19);
  if (v17)
  {
    return v17;
  }

  if (!*v19)
  {
    return 4294955295;
  }

  Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = Mutable;
  if (a6 && Mutable)
  {
    CFDictionarySetValue(Mutable, @"FRM_BundleName", a6);
  }

  switch(a7)
  {
    case 1:
      v29 = OUTLINED_FUNCTION_13_47();
      v33 = FigReportingModeratorCreateForHLS(v29, v30, v31, v32);
      goto LABEL_32;
    case 2:
      goto LABEL_31;
    case 3:
      v33 = FigReportingModeratorCreateForStreamingAssetDownloader(v16, *v19, (v19 + 120));
      goto LABEL_32;
    case 4:
      *(v19 + 150) = 1;
LABEL_31:
      v34 = OUTLINED_FUNCTION_13_47();
      v33 = FigReportingModeratorCreateForCRABS(v34, v35, v36, v37);
LABEL_32:
      v38 = v33;
      if (v33)
      {
        goto LABEL_42;
      }

      if (*(v19 + 120))
      {
        *(v19 + 133) = 1;
        *(v19 + 40) = arc4random();
        *(v19 + 152) = arc4random() / 4294967300.0;
        if (*(v19 + 128) != 1)
        {
LABEL_40:
          v38 = 0;
          *a10 = 0;
          goto LABEL_42;
        }

        v39 = CMBaseObjectGetDerivedStorage();
        if (v39)
        {
          v40 = v39;
          if (*(v39 + 140))
          {
            v38 = 4294955290;
          }

          else
          {
            *(v39 + 88) = FigGetUpTimeNanoseconds();
            v41 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v40 + 112));
            *(v40 + 80) = v41;
            if (v41)
            {
              v42 = FigCFWeakReferenceHolderCreateWithReferencedObject();
              if (v42)
              {
                dispatch_set_context(*(v40 + 80), v42);
                v43 = *(v40 + 80);
                v44 = dispatch_walltime(0, 300000000000);
                dispatch_source_set_timer(v43, v44, 0x45D964B800uLL, 0xEE6B280uLL);
                dispatch_source_set_event_handler_f(*(v40 + 80), fra_handlePeriodicTimerCallback);
                dispatch_source_set_cancel_handler_f(*(v40 + 80), fra_handlePeriodicTimerCancelCallback);
                dispatch_resume(*(v40 + 80));
                goto LABEL_40;
              }
            }

            OUTLINED_FUNCTION_40_0();
            v38 = FigSignalErrorAtGM();
            if (!v38)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
LABEL_41:
          v38 = 4294955296;
        }
      }

      else
      {
        OUTLINED_FUNCTION_40_0();
        v38 = FigSignalErrorAtGM();
      }

LABEL_42:
      if (v28)
      {
        CFRelease(v28);
      }

      break;
    default:
      goto LABEL_41;
  }

  return v38;
}

void fra_setAdditionalReportingConfigParams(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return;
  }

  v4 = *(a1 + 72);
  if (a2 && !v4)
  {
    v5 = *MEMORY[0x1E695E480];
    v4 = a2;
LABEL_8:
    MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, v4);
    goto LABEL_9;
  }

  if (!a2 && v4)
  {
    v5 = *MEMORY[0x1E695E480];
    goto LABEL_8;
  }

  v9 = *MEMORY[0x1E695E480];
  if (a2 | v4)
  {
    v10 = CFDictionaryCreateMutableCopy(v9, 0, v4);
    if (!v10)
    {
      return;
    }

    v7 = v10;
    OUTLINED_FUNCTION_0_181();
    CFDictionaryApplyFunction(a2, v11, v7);
    goto LABEL_10;
  }

  MutableCopy = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_9:
  v7 = MutableCopy;
  if (!MutableCopy)
  {
    return;
  }

LABEL_10:
  if (*(a1 + 132) == 1)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  FigCFDictionarySetInt();
  v8 = *(a1 + 72);
  *(a1 + 72) = v7;
  CFRetain(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v7);
}

void fra_handlePeriodicTimerCallback(uint64_t a1)
{
  if (a1)
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v1)
    {
      v2 = v1;
      if (CMBaseObjectGetDerivedStorage())
      {
        FigSimpleMutexLock();
        OUTLINED_FUNCTION_3_132();
        fra_issueAndCopyReportingEvent(v3, v4, v5, v6, 0, 0);
        FigSimpleMutexUnlock();
      }

      CFRelease(v2);
    }
  }
}

uint64_t FigReportingAgentStatsUpdateSampleValueWithBool(uint64_t a1)
{
  if (!a1)
  {
    return 4294955296;
  }

  OUTLINED_FUNCTION_471();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    return 4294954514;
  }

  OUTLINED_FUNCTION_0_6();

  return v1();
}

uint64_t reportingAgentSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955296;
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  if (*(v6 + 140))
  {
    v8 = 4294955290;
    goto LABEL_13;
  }

  if (!CFEqual(a2, @"IssueEndEvents"))
  {
    if (CFEqual(a2, @"Timebase"))
    {
      if (!a3)
      {
        goto LABEL_15;
      }

      v9 = CFGetTypeID(a3);
      if (v9 != CMTimebaseGetTypeID())
      {
        goto LABEL_15;
      }

      v10 = *(v6 + 120);
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(v10, a2, a3);
      }
    }

    v8 = 0;
    goto LABEL_13;
  }

  if (!a3 || (v7 = CFGetTypeID(a3), v7 != CFBooleanGetTypeID()))
  {
LABEL_15:
    v8 = 4294955296;
    goto LABEL_13;
  }

  v8 = 0;
  *(v6 + 133) = *MEMORY[0x1E695E4D0] == a3;
LABEL_13:
  FigSimpleMutexUnlock();
  return v8;
}

void reportingAgentInvalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 140))
  {
    return;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 133) == 1 && *(DerivedStorage + 128) != 3)
  {
    fra_ensureRTCReportingConnection(a1, 0);
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(v3 + 80));
  }

  fra_issueDeferredRTCReportingEvents(v3);
  if (*(v3 + 133) == 1)
  {
    v5 = *(v3 + 128);
    if ((v5 - 1) < 2 || v5 == 4)
    {
      fra_issueAndCopyReportingEvent(v3, 112, 0, 0, 1, 0);
      OUTLINED_FUNCTION_3_132();
      fra_issueAndCopyReportingEvent(v17, v18, v19, v20, 1, 0);
      v21 = v3;
      v22 = 101;
      v23 = 0;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_13;
      }

      v21 = v3;
      v22 = 701;
      v23 = 1;
    }

    fra_issueAndCopyReportingEvent(v21, v22, 0, v23, 1, 0);
  }

LABEL_13:
  if (*v3)
  {
    CFRelease(*v3);
  }

  v7 = *(v3 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v3 + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(v3 + 32);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(v3 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(v3 + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(v3 + 64);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(v3 + 72);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(v3 + 120);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(v3 + 160);
  if (v16)
  {
    CFRelease(v16);
  }

  *(v3 + 140) = 1;
}

uint64_t fra_ensureRTCReportingConnection(uint64_t a1, const __CFDictionary *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = result;
    if (!*(result + 150) && (*(result + 144) & 0xFFFFFFFD) == 0 && !*(result + 140) && !*(result + 8))
    {
      fra_setAdditionalReportingConfigParams(result, a2);
      if (*(v4 + 132))
      {
        v5 = @"com.apple.coremedia.apple_internal";
        v6 = @"CM_AppleInternal";
      }

      else
      {
        v6 = *(v4 + 16);
        v5 = *(v4 + 48);
      }

      result = FigRTCReportingCreate(*(v4 + 40), *(v4 + 24), *(v4 + 32), *(v4 + 128), v6, v5, *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 148), *(v4 + 168), (v4 + 8));
      if (!result)
      {
        *(v4 + 144) = 1;
      }
    }
  }

  return result;
}

void fra_issueDeferredRTCReportingEvents(uint64_t a1)
{
  v1 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (!*(a1 + 150))
  {
    FigCFArrayApplyFunction();
  }

  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t fra_issueRTCReportingEvent(uint64_t result, int a2, __CFDictionary *a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (*(result + 150))
  {
    return 0;
  }

  v7 = *(result + 8);
  if (!a4 && !v7)
  {
    return 4294955296;
  }

  if (*(v4 + 140))
  {
    return 4294955290;
  }

  ++*(v4 + 136);
  if (v7)
  {

    return FigRTCReportingSendMsgWithErrors(v7);
  }

  if (!a4)
  {
    return 0;
  }

  if (*(v4 + 132))
  {
    v8 = @"com.apple.coremedia.apple_internal";
    v9 = @"CM_AppleInternal";
  }

  else
  {
    v9 = *(v4 + 16);
    v8 = *(v4 + 48);
  }

  v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (v4 + 136));
  if (!v10)
  {
    return 4294955295;
  }

  v11 = v10;
  CFDictionarySetValue(a3, @"EventNumber", v10);
  v12 = FigRTCReportingSendOneMessageWithDictionary(*(v4 + 40), *(v4 + 24), *(v4 + 32), *(v4 + 128), v9, v8, *(v4 + 56), *(v4 + 64), *(v4 + 72), a2, SHIWORD(a2), 0, 0, *(v4 + 168), a3);
  CFRelease(v11);
  return v12;
}

uint64_t fra_issueAndCopyReportingEvent(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int a4, int a5, CFDictionaryRef *a6)
{
  v54 = 0;
  cf = 0;
  v53 = 0;
  v52 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v13 = MEMORY[0x1E695E480];
  if (!a1)
  {
    Mutable = 0;
LABEL_63:
    v43 = 0;
    goto LABEL_65;
  }

  if (*(a1 + 140))
  {
    Mutable = 0;
    goto LABEL_86;
  }

  v14 = UpTimeNanoseconds;
  if (a6)
  {
    *a6 = 0;
  }

  v15 = *v13;
  Mutable = CFDictionaryCreateMutable(*v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v43 = 4294955295;
    goto LABEL_65;
  }

  v17 = *(a1 + 120);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v18)
  {
    goto LABEL_64;
  }

  v19 = v18(v17, a2, &cf, &v54);
  if (v19)
  {
    goto LABEL_89;
  }

  if (a2 == 101)
  {
    v20 = *a1;
    v21 = cf;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v22)
    {
      goto LABEL_64;
    }

    v19 = v22(v20, v21, Mutable);
    if (v19)
    {
      goto LABEL_89;
    }

    v23 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v23)
    {
      v24 = v23;
      v25 = *a1;
      v26 = kFigReportingEventKeyArray_TCPInfoKeyForTimeWeightedStats;
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v27 && !v27(v25, v26, v24))
      {
        OUTLINED_FUNCTION_15_48();
        OUTLINED_FUNCTION_15_48();
        OUTLINED_FUNCTION_15_48();
        OUTLINED_FUNCTION_15_48();
      }

      CFRelease(v24);
    }
  }

  else if ((a2 - 2001) >= 2 && a2 != 3001)
  {
    if (a2 == 112)
    {
      v31 = *a1;
      v32 = cf;
      v33 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v33)
      {
        goto LABEL_64;
      }

      v19 = v33(v31, v32, Mutable);
      if (v19)
      {
        goto LABEL_89;
      }
    }

    else if (a2 == 110)
    {
      v28 = *a1;
      v29 = cf;
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v30)
      {
        goto LABEL_64;
      }

      v19 = v30(v28, v29, Mutable);
      if (v19)
      {
        goto LABEL_89;
      }

      if (a5)
      {
        FigCFDictionarySetBoolean();
      }

      FigCFDictionarySetInt64();
      *(a1 + 88) = v14;
    }

    else
    {
      v34 = *a1;
      v36 = v54;
      v35 = cf;
      v37 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v37)
      {
        goto LABEL_64;
      }

      v19 = v37(v34, v35, v36, Mutable);
      if (v19)
      {
        goto LABEL_89;
      }
    }
  }

  v38 = *(a1 + 120);
  v39 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v39)
  {
    v39(v38, a2, Mutable);
  }

  if (a3)
  {
    OUTLINED_FUNCTION_0_181();
    CFDictionaryApplyFunction(a3, v40, Mutable);
  }

  if (*(a1 + 128) != 3 && (*(a1 + 144) | 2) == 2)
  {
    v44 = a1;
    v45 = a2;
LABEL_57:
    fra_storeDeferredReportingEvent(v44, v45, Mutable);
    goto LABEL_58;
  }

  if (a2 == 110)
  {
    fra_issueDeferredRTCReportingEvents(a1);
    v42 = fra_issueRTCReportingEventRealTime(a1);
    goto LABEL_42;
  }

  if ((a2 & 0xFFFFFFFE) == 0x320)
  {
    v41 = a2 == 800;
    if (!*(a1 + 140))
    {
      if (*(a1 + 150))
      {
        goto LABEL_58;
      }

      if (*(a1 + 149) == v41)
      {
        v43 = 4294955296;
        goto LABEL_65;
      }

      *(a1 + 149) = v41;
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v42 = FigNetworkInterfaceReporterReportStreamingActivity(Mutable);
      goto LABEL_42;
    }

LABEL_86:
    v43 = 4294955290;
    goto LABEL_65;
  }

  if (a2 == 112)
  {
    if (CFDictionaryGetCount(Mutable))
    {
LABEL_47:
      v42 = fra_issueRTCReportingEvent(a1, a2, Mutable, a4);
LABEL_42:
      v43 = v42;
      goto LABEL_43;
    }

    goto LABEL_58;
  }

  if ((a2 - 2001) < 2)
  {
    goto LABEL_58;
  }

  if (a2 == 113 && !a4)
  {
    v51 = *(a1 + 160);
    if (v51 && CFArrayGetCount(v51) >= 10)
    {
      fra_issueDeferredRTCReportingEvents(a1);
    }

    v44 = a1;
    v45 = 113;
    goto LABEL_57;
  }

  if (a2 != 101)
  {
    if (a2 != 3001)
    {
      if (a2 != 901)
      {
        goto LABEL_47;
      }

      fra_issuePowerlogEvent(a1);
    }

LABEL_58:
    v46 = *(a1 + 120);
    v47 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v47)
    {
      v19 = v47(v46, a2);
      if (!v19)
      {
        v48 = *(a1 + 120);
        v49 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v49)
        {
          v49(v48, a2, &v53, &v52);
          if (v53)
          {
            fra_issueAndCopyReportingEvent(a1);
          }
        }

        goto LABEL_63;
      }

LABEL_89:
      v43 = v19;
      goto LABEL_65;
    }

LABEL_64:
    v43 = 4294954514;
    goto LABEL_65;
  }

  fra_issueDeferredRTCReportingEvents(a1);
  v43 = fra_issueRTCReportingEventRealTime(a1);
  CFDictionaryGetValue(Mutable, @"PlayTimeWC");
  FigCFNumberGetFloat64();
  FigCAStatsReportingSubmitData();
LABEL_43:
  if (!v43)
  {
    goto LABEL_58;
  }

LABEL_65:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (!v43 && a6 && Mutable)
  {
    *a6 = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], Mutable);
    goto LABEL_75;
  }

  if (Mutable)
  {
LABEL_75:
    CFRelease(Mutable);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  return v43;
}

void fra_storeDeferredReportingEvent(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!*(a1 + 150))
  {
    if (*(a1 + 160) || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*(a1 + 160) = Mutable) != 0))
    {
      FigCFDictionarySetInt();
      v6 = *(a1 + 160);

      CFArrayAppendValue(v6, a3);
    }

    else
    {

      FigSignalErrorAtGM();
    }
  }
}

uint64_t fra_issueRTCReportingEventRealTime(uint64_t result)
{
  if (result)
  {
    if (*(result + 150) || !*(result + 8))
    {
      return 0;
    }

    else if (*(result + 140))
    {
      return 4294955290;
    }

    else
    {
      return FigRTCReportingSendMsgRealTime(*(result + 8));
    }
  }

  return result;
}

uint64_t reportingAgentIssueAndCopyRTCReportingEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CFDictionaryRef *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v9 = result;
    if (*(result + 140))
    {
      return 4294955290;
    }

    else
    {
      FigSimpleMutexLock();
      if (!*(v9 + 140))
      {
        fra_issueAndCopyReportingEvent(v9, a3, 0, a4, 0, a5);
      }

      FigSimpleMutexUnlock();
      return 0;
    }
  }

  return result;
}

uint64_t reportingAgentIssueAndCopyRTCReportingEventWithPayload(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, int a5, CFDictionaryRef *a6)
{
  if (CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_6_103();
    if (!*(v6 + 140))
    {
      fra_issueAndCopyReportingEvent(v6, a3, a4, a5, 0, a6);
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentStatsCopy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (a3 && DerivedStorage && v5 && v5 != DerivedStorage)
  {
    FigSimpleMutexLock();
    if (*v5)
    {
      v7 = CFRetain(*v5);
    }

    else
    {
      v7 = 0;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    v8 = *DerivedStorage;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 184);
    if (v9)
    {
      v9(v8, v7, a3);
    }

    FigSimpleMutexUnlock();
    if (v7)
    {
      CFRelease(v7);
    }

    return 0;
  }

  return result;
}

uint64_t reportingAgentStatsAddToCountValue()
{
  if (OUTLINED_FUNCTION_7_87())
  {
    OUTLINED_FUNCTION_6_103();
    if (!*(v0 + 140) && *(*(OUTLINED_FUNCTION_14_55() + 16) + 64))
    {
      v1 = OUTLINED_FUNCTION_0_159();
      v2(v1);
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentStatsUpdateSampleValue()
{
  if (OUTLINED_FUNCTION_7_87())
  {
    OUTLINED_FUNCTION_6_103();
    if (!*(v0 + 140) && *(*(OUTLINED_FUNCTION_14_55() + 16) + 72))
    {
      v1 = OUTLINED_FUNCTION_0_159();
      v2(v1);
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentStatsSetCFTypeValueWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_471();
  if (CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_6_103();
    if (!*(v5 + 140))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 80))
      {
        OUTLINED_FUNCTION_0_6();
        v8 = v7();
        if (a5)
        {
          if (!v8)
          {
            OUTLINED_FUNCTION_0_6();
            reportingAgentFreezeKey(v10, v11, v12);
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentStatsSetIntValueWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_471();
  if (CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_6_103();
    if (!*(v5 + 140))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        OUTLINED_FUNCTION_0_6();
        v8 = v7();
        if (a5)
        {
          if (!v8)
          {
            OUTLINED_FUNCTION_0_6();
            reportingAgentFreezeKey(v10, v11, v12);
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentStatsResetValue()
{
  OUTLINED_FUNCTION_471();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v3 = result;
    result = 4294955296;
    if (v1)
    {
      if (v0)
      {
        FigSimpleMutexLock();
        if (!*(v3 + 140))
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 104))
          {
            OUTLINED_FUNCTION_0_6();
            v4();
          }
        }

        FigSimpleMutexUnlock();
        return 0;
      }
    }
  }

  return result;
}

uint64_t reportingAgentStatsResetAll(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = result;
    if (*(result + 140))
    {
      return 4294955290;
    }

    else if (a2)
    {
      FigSimpleMutexLock();
      if (!*(v4 + 140))
      {
        v5 = *v4;
        v6 = *(CMBaseObjectGetVTable() + 16);
        if (*(v6 + 160))
        {
          (*(v6 + 168))(v5, a2);
        }
      }

      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      return 4294955296;
    }
  }

  return result;
}

uint64_t reportingAgentPeriodicStatsResetValue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    if (!*(v4 + 140))
    {
      v5 = *v4;
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (v6)
      {
        v6(v5, a2);
      }
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentUpdateUserInfo(uint64_t a1, const void *a2, const void *a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    if (!*(DerivedStorage + 150))
    {
      FigSimpleMutexLock();
      if (!*(v8 + 140))
      {
        if (a2)
        {
          v9 = *(v8 + 16);
          *(v8 + 16) = a2;
          CFRetain(a2);
          if (v9)
          {
            CFRelease(v9);
          }
        }

        if (a3 && !*(v8 + 48))
        {
          *(v8 + 48) = CFRetain(a3);
        }

        fra_setAdditionalReportingConfigParams(v8, a4);
        v10 = *(v8 + 8);
        if (v10)
        {
          if (*(v8 + 132))
          {
            v11 = @"com.apple.coremedia.apple_internal";
            v12 = @"CM_AppleInternal";
          }

          else
          {
            v12 = *(v8 + 16);
            v11 = *(v8 + 48);
          }

          FigRTCReportingSetUserInfo(v10, *(v8 + 24), *(v8 + 32), v12, *(v8 + 64), v11, *(v8 + 72), *(v8 + 168), *(v8 + 128));
        }
      }

      FigSimpleMutexUnlock();
    }
  }

  return 0;
}

uint64_t reportingAgentSetIntValueAndIssuePeriodicEvent()
{
  result = OUTLINED_FUNCTION_7_87();
  if (result)
  {
    v2 = result;
    if (*(result + 140))
    {
      return 4294955290;
    }

    if (!*(result + 8) && !*(result + 150))
    {
      return 4294955296;
    }

    FigSimpleMutexLock();
    if (*(v2 + 140) || !*(*(OUTLINED_FUNCTION_14_55() + 16) + 144))
    {
      goto LABEL_19;
    }

    v3 = OUTLINED_FUNCTION_0_159();
    v5 = v4(v3);
    if (!v5)
    {
      if (!v0)
      {
LABEL_17:
        if (*(*(OUTLINED_FUNCTION_14_55() + 16) + 88))
        {
          v8 = OUTLINED_FUNCTION_0_159();
          v9(v8);
        }

LABEL_19:
        FigSimpleMutexUnlock();
        return 0;
      }

      OUTLINED_FUNCTION_3_132();
      v5 = fra_issueAndCopyReportingEvent(v10, v11, v12, v13, 0, 0);
    }

    if (v5 != -17513 && v5 != 0 && v5 != -12005)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t reportingAgentActivate(uint64_t a1, const __CFDictionary *a2)
{
  if (!CMBaseObjectGetDerivedStorage())
  {
    return 4294955296;
  }

  OUTLINED_FUNCTION_6_103();
  if (!*(v2 + 140))
  {
    fra_ensureRTCReportingConnection(a1, a2);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t reportingAgentDeactivate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (!*(DerivedStorage + 150))
    {
      FigSimpleMutexLock();
      if (!*(v1 + 140))
      {
        v2 = *(v1 + 8);
        if (v2)
        {
          CFRelease(v2);
          *(v1 + 8) = 0;
        }

        *(v1 + 144) = 2;
      }

      FigSimpleMutexUnlock();
    }
  }

  return 0;
}

uint64_t reportingAgentStatsAppendCFTypeValueToArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v10 = DerivedStorage;
    FigSimpleMutexLock();
    if (!*(v10 + 140))
    {
      v11 = *v10;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 192);
      if (v12)
      {
        v12(v11, a2, a3, a4, a5);
      }
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

void reportingAgentFreezeKey(uint64_t a1, uint64_t a2, const void *a3)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (Mutable)
  {
    v7 = Mutable;
    CFSetAddValue(Mutable, a3);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 200);
    if (v8)
    {
      v8(a1, a2, v7);
    }

    CFRelease(v7);
  }
}

uint64_t fra_issuePowerlogEvent_cold_1(uint64_t *a1, uint64_t *a2, __CFDictionary *a3)
{
  v6 = a1[15];
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 8);
  if (v10)
  {
    result = v10(v6, 900, a2, 0);
    if (!result)
    {
      v11 = *a2;
      if (v11)
      {
        v12 = *a1;
        v13 = CMBaseObjectGetVTable();
        v14 = *(v13 + 16);
        result = v13 + 16;
        v15 = *(v14 + 16);
        if (v15)
        {
          result = v15(v12, v11, a3);
          if (!result)
          {
            FigCFDictionarySetValueFromKeyInDict();
            FigCFDictionarySetValueFromKeyInDict();
            FigCFDictionarySetValueFromKeyInDict();
            FigCFDictionarySetValueFromKeyInDict();
            CFDictionaryRemoveValue(a3, @"IBR");
            CFDictionaryRemoveValue(a3, @"PlayerTWIBR");
            CFDictionaryRemoveValue(a3, @"PlayerTWIABR");
            CFDictionaryRemoveValue(a3, @"PowerLogItemLoggingIdentifier");
            FigCFDictionarySetValue();
            v16 = *(a1 + 32);
            if (v16 == 1 || v16 == 2 || v16 == 4)
            {
              FigCFDictionarySetValue();
            }

            return FigLogPowerEvent();
          }
        }
      }
    }
  }

  return result;
}

uint64_t surrogatePlayer_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v18 = 0;
  v16 = 0;
  cf = 0;
  if (!a2)
  {
    v4 = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  v4 = FPSupport_HandlePlayerSetPropertyAndCopyModification(a1, a2, a3, 0, surrogatePlayer_handleSetProperty, &v18, &cf, &v16);
  if (v4)
  {
LABEL_20:
    v14 = v4;
    goto LABEL_14;
  }

  if (!v18)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v20 = 0;
    v21 = 0;
    context = a1;
    v6 = OUTLINED_FUNCTION_1_170(DerivedStorage);
    dispatch_sync_f(v6, &context, v7);
    v8 = v21;
    if (v20)
    {
      FigPlayerGetFigBaseObject(v20);
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v9 = OUTLINED_FUNCTION_104_0();
        v10(v9);
      }
    }

    if (v8 && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      v12 = v16;
      v11 = cf;
      FigBaseObject = FigPlayerGetFigBaseObject(v8);
      CMBaseObjectSetProperty(FigBaseObject, v11, v12);
    }
  }

  v14 = 0;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

void surrogatePlayer_invalidateInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 32))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_7_88();
      FigNotificationCenterRemoveWeakListener();
      FigBaseObject = FigPlayerGetFigBaseObject(v1[4]);
      if (FigBaseObject)
      {
        v3 = FigBaseObject;
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v4)
        {
          v4(v3);
        }
      }
    }

    if (v1[5])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_7_88();
      FigNotificationCenterRemoveWeakListener();
      v5 = FigPlayerGetFigBaseObject(v1[5]);
      if (v5)
      {
        v6 = v5;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v7(v6);
        }
      }
    }

    v8 = v1[18];
    if (v8)
    {
      CFRelease(v8);
      v1[18] = 0;
    }

    if (v1[6])
    {
      FigCFWeakReferenceTableApplyFunction();
    }

    v9 = v1[10];
    if (v9)
    {

      CFDictionaryRemoveAllValues(v9);
    }
  }
}

void surrogatePlayer_realPlayerNotificationWeakCallbackInternal(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return;
  }

  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 88);
  v8 = !v7 || v7 == v3;
  if (!v8 && !FigCFEqual())
  {
    return;
  }

  if (FigCFEqual())
  {
    cf[0] = 0;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v9(v3, 0, cf);
      v10 = cf[0];
      if (cf[0])
      {
        goto LABEL_15;
      }
    }

    v11 = CMBaseObjectGetDerivedStorage();
    if (CFArrayGetCount(*(v11 + 56)) >= 1)
    {
      CFArrayGetValueAtIndex(*(v11 + 56), 0);
      v12 = CMBaseObjectGetDerivedStorage();
      if (!*(v12 + 162) && !*(v12 + 160))
      {
        v28 = OUTLINED_FUNCTION_415_0();
        surrogatePlayer_initiateLoadingOfItemAssetTypeOnQ(v28, v29, 1);
      }
    }

    v10 = cf[0];
    if (cf[0])
    {
LABEL_15:
      CFRelease(v10);
    }

    v13 = CFDictionaryGetValue(v4, @"ReasonForCurrentItemDidChange");
    if (!*(v6 + 104) && !FigCFEqual())
    {
      v26 = CMBaseObjectGetDerivedStorage();
      if (CFArrayGetCount(*(v26 + 56)) >= 1)
      {
        CFArrayGetValueAtIndex(*(v26 + 56), 0);
      }

      v27 = CMBaseObjectGetDerivedStorage();
      if (v27 && !*(v27 + 170))
      {
        *(v26 + 112) = 1;
      }
    }

    v14 = *(v6 + 112);
    if (v14 == 2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v4);
      CFDictionarySetValue(MutableCopy, @"ReasonForCurrentItemDidChange", *(v6 + 120));
      v24 = *(v6 + 120);
      *(v6 + 112) = 0;
      if (v24)
      {
        CFRelease(v24);
        *(v6 + 120) = 0;
      }

      v16 = 1;
    }

    else if (v14 == 1)
    {
      replaceNextCurrentItemDidChangeNotification(*a1, v13);
      MutableCopy = 0;
      v16 = 0;
    }

    else
    {
      MutableCopy = 0;
      v16 = 1;
    }

    if (FigCFEqual())
    {
      v16 = *(v6 + 104);
      *(v6 + 104) = 0;
    }

    if (!v16)
    {
      if (!MutableCopy)
      {
        return;
      }

      goto LABEL_36;
    }

    goto LABEL_47;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      CMBaseObjectGetDerivedStorage();
      value = 0;
      if (v4)
      {
        v25 = CFGetTypeID(v4);
        if (v25 == CFDictionaryGetTypeID())
        {
          v30 = CFDictionaryGetValue(v4, @"Remote_NewRate");
          v31 = *MEMORY[0x1E695E480];
          FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 17, &value);
          Mutable = CFDictionaryCreateMutable(v31, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(Mutable, @"Rate", v30);
          CFDictionarySetValue(Mutable, @"SetRateOptions", value);
          cf[0] = v2;
          cf[1] = @"CurrentRate";
          cf[3] = 0;
          cf[4] = 0;
          cf[2] = Mutable;
          surrogatePlayer_setPropertyInCacheInternal(cf);
          if (value)
          {
            CFRelease(value);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }
      }
    }

    goto LABEL_41;
  }

  v17 = CMBaseObjectGetDerivedStorage();
  v18 = *(v17 + 56);
  if (v18)
  {
    Count = CFArrayGetCount(v18);
    if (Count >= 1)
    {
      v20 = Count;
      v21 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v17 + 56), v21);
        v23 = CMBaseObjectGetDerivedStorage();
        if (!*(v23 + 162))
        {
          break;
        }

        if (v20 == ++v21)
        {
          goto LABEL_46;
        }
      }

      if (ValueAtIndex && !*(v23 + 160))
      {
        surrogatePlayer_initiateLoadingOfItemAssetTypeOnQ(v2, ValueAtIndex, 1);
LABEL_41:
        MutableCopy = 0;
        goto LABEL_47;
      }
    }
  }

LABEL_46:
  MutableCopy = 0;
  *(v17 + 96) = 1;
LABEL_47:
  surrogatePlayer_deferPostNotification(v2);
  if (MutableCopy)
  {
LABEL_36:
    CFRelease(MutableCopy);
  }
}

uint64_t surrogatePlayer_initiateLoadingOfItemAssetTypeOnQ(uint64_t a1, const void *a2, char a3)
{
  v60 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMBaseObjectGetDerivedStorage();
  v9 = result;
  if (dword_1EAF17870)
  {
    v10 = OUTLINED_FUNCTION_33_27();
    v3 = HIBYTE(v38);
    os_log_type_enabled(v10, HIBYTE(v38));
    OUTLINED_FUNCTION_37();
    if (v4)
    {
      if (a1)
      {
        v11 = a1;
        v12 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v11 = 0;
        v12 = "";
      }

      v13 = *(DerivedStorage + 64);
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(v40) = 136316418;
      OUTLINED_FUNCTION_47();
      *(&v41 + 6) = v11;
      HIWORD(v41) = 2082;
      v42 = v12;
      *v43 = v14;
      *&v43[2] = v15;
      *&v43[10] = v14;
      *&v43[12] = v13;
      *&v43[20] = 2082;
      *&v43[22] = v16;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
      a1 = v11;
    }

    OUTLINED_FUNCTION_7();
    result = OUTLINED_FUNCTION_449();
  }

  if (!*v9 && !*DerivedStorage)
  {
    *(DerivedStorage + 160) = a3;
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v17 = OUTLINED_FUNCTION_502();
      result = v18(v17);
      if (!result)
      {
        return result;
      }

      v19 = result;
    }

    else
    {
      v19 = -12782;
    }

    if (dword_1EAF17870)
    {
      v20 = OUTLINED_FUNCTION_33_27();
      os_log_type_enabled(v20, HIBYTE(v38));
      OUTLINED_FUNCTION_28();
      if (v3)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v21 = *(DerivedStorage + 64);
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LODWORD(v40) = 136316418;
        OUTLINED_FUNCTION_47();
        *(&v41 + 6) = a1;
        OUTLINED_FUNCTION_39_21();
        *&v43[2] = v22;
        *&v43[10] = v23;
        *&v43[12] = v21;
        *&v43[20] = v24;
        *&v43[22] = v25;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417();
    }

    *(DerivedStorage + 160) = 0;
    surrogatePlaybackItem_deferFailedToBecomeReadyForInspectionNotification(a2, v19, 0, 0);
    v26 = OUTLINED_FUNCTION_177();
    return surrogatePlayer_respondToFailedLoadingOfItemAssetTypeOnQ(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, a2, SBYTE2(a2), BYTE3(a2), SHIDWORD(a2), v38, SHIDWORD(v38), *v39, *&v39[4], v40, v41, *(&v41 + 1), v42, *v43, *&v43[4], *&v43[8], *&v43[16], *&v43[24], v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  }

  return result;
}

uint64_t surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ(uint64_t a1, __CFString *a2)
{
  v225 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  v195 = 0;
  v189 = v2;
  if (dword_1EAF17870)
  {
    OUTLINED_FUNCTION_41_24();
    v7 = OUTLINED_FUNCTION_35_23();
    os_log_type_enabled(v7, type[0]);
    OUTLINED_FUNCTION_46();
    if (v6)
    {
      if (a1)
      {
        v8 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v8 = "";
      }

      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *v210 = 136316418;
      OUTLINED_FUNCTION_56_16();
      v211 = v8;
      OUTLINED_FUNCTION_83_8(v9);
      *&v212[20] = 1024;
      *(v11 + 54) = v10;
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  FigSimpleMutexLock();
  if (*DerivedStorage || *v6)
  {
    v13 = 0;
    v16 = 0;
    RealItem = 4294954511;
    goto LABEL_189;
  }

  v6[160] = 0;
  *&v221 = 0;
  *v210 = 0;
  cf[0] = 0;
  v12 = surrogatePlaybackItem_copyAssetTypeAndRealPlayerAndRealItem(a2, cf, &v221, v210);
  v13 = v221;
  if (v12)
  {
    RealItem = v12;
  }

  else
  {
    v14 = *v210;
    if (v221 && *v210)
    {
      RealItem = 0;
    }

    else
    {
      if (v221)
      {
        CFRelease(v221);
        *&v221 = 0;
        v14 = *v210;
      }

      if (v14)
      {
        CFRelease(v14);
        *v210 = 0;
      }

      v81 = surrogatePlayer_createRealPlayerOnQ(a1, cf[0], &v221);
      v13 = v221;
      if (v81)
      {
        RealItem = v81;
      }

      else
      {
        OUTLINED_FUNCTION_627();
        RealItem = surrogatePlaybackItem_createRealItem();
        v13 = v221;
      }
    }
  }

  v193 = v6;
  *&v221 = 0;
  v16 = *v210;
  *v210 = 0;
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (RealItem)
  {
    goto LABEL_99;
  }

  v17 = OUTLINED_FUNCTION_177();
  surrogatePlayer_updateItemsToPrebufferOnRealPlayers(v17, v18, v19, v20, v21, v22, v23, v24, v183, v184, v185, v186, SBYTE2(v186), BYTE3(v186), SHIDWORD(v186), v187, SHIDWORD(v187), v188, SWORD2(v188), v2, v190, v191[0], v191[1], v192, v6, v194, v195, v196, valuePtr, v198, *(&v198 + 1), v199, v200, v201, *(&v201 + 1), v202, v203, *type, *&type[8], v205, v206, cf[0], cf[1], v208, v209, *v210, *&v210[8], *&v210[16], v211, *v212, *&v212[8], *&v212[16], *&v212[24], v213, *v214);
  RealItem = v25;
  IndexOfItem = surrogatePlayer_getIndexOfItem(DerivedStorage, a2);
  v194 = v13;
  if (dword_1EAF17870)
  {
    v191[0] = DerivedStorage;
    LODWORD(v190) = RealItem;
    v34 = OUTLINED_FUNCTION_20_34();
    v35 = cf[0];
    os_log_type_enabled(v34, type[0]);
    OUTLINED_FUNCTION_53_17();
    if (v37)
    {
      v38 = v36;
    }

    else
    {
      v38 = v35;
    }

    if (v38)
    {
      if (a1)
      {
        v39 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v39 = "";
      }

      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_85_6();
      OUTLINED_FUNCTION_14_56();
      v211 = v39;
      *v212 = v40;
      *(v41 + 34) = a2;
      *&v212[10] = v42;
      *(v41 + 44) = v43;
      *&v212[20] = 1024;
      *(v41 + 54) = IndexOfItem;
      *&v212[26] = v40;
      *(v41 + 60) = v194;
      WORD2(v213) = v40;
      *(v41 + 70) = v16;
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_71_9();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0();
    v13 = v194;
    RealItem = RealItem;
  }

  if (IndexOfItem == -1)
  {
    v53 = 1;
    v54 = 1;
LABEL_122:
    v6 = v193;
    goto LABEL_123;
  }

  v44 = CMBaseObjectGetDerivedStorage();
  if (*(v44 + 98) && !*(v44 + 100))
  {
    v6 = v193;
    v193[161] = 1;
    if (!dword_1EAF17870)
    {
      goto LABEL_189;
    }

    OUTLINED_FUNCTION_41_24();
    v66 = OUTLINED_FUNCTION_35_23();
    OUTLINED_FUNCTION_38_20(v66, v67, v68, v69, v70, v71, v72, v73, v183, v184, v185, v186, v187, v188, v189, v190, v191[0], v191[1], v192, v193, v194, v195, v196, valuePtr, v198, *(&v198 + 1), v199, v200, v201, *(&v201 + 1), v202, v203, type[0], *&type[8], v205, v206, cf[0]);
    OUTLINED_FUNCTION_53_17();
    if (v37)
    {
      v75 = v74;
    }

    else
    {
      v75 = v13;
    }

    if (!v75)
    {
      goto LABEL_98;
    }

    if (a1)
    {
      v76 = (CMBaseObjectGetDerivedStorage() + 128);
      if (!a2)
      {
LABEL_97:
        OUTLINED_FUNCTION_85_6();
        OUTLINED_FUNCTION_14_56();
        v211 = v76;
        *v212 = v89;
        *(v90 + 34) = a2;
        *&v212[10] = v91;
        *(v90 + 44) = v92;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_71_9();
LABEL_98:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0();
        v13 = v194;
        goto LABEL_99;
      }
    }

    else
    {
      v76 = "";
      if (!a2)
      {
        goto LABEL_97;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_97;
  }

  v190 = v16;
  if (!IndexOfItem)
  {
    if (*(DerivedStorage + 88) == v13)
    {
LABEL_120:
      v53 = 0;
      v54 = 0;
      goto LABEL_121;
    }

    v191[0] = DerivedStorage;
    if (!dword_1EAF17870)
    {
LABEL_103:
      v97 = *(DerivedStorage + 32);
      if (v13 == v97)
      {
        v97 = *(DerivedStorage + 40);
      }

      if (v97)
      {
        v98 = *MEMORY[0x1E695E480];
        SInt32 = FigCFNumberCreateSInt32();
        FPSupport_CreateSetRateOptions(v98, 16, &v195);
        if (*(*(CMBaseObjectGetVTable() + 16) + 104))
        {
          v100 = OUTLINED_FUNCTION_151_1();
          v101(v100);
        }

        v188 = @"VideoLayerArray";
        FigBaseObject = FigPlayerGetFigBaseObject(v97);
        v103 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v103)
        {
          v103(FigBaseObject, @"VideoLayerArray", 0);
        }

        v104 = FigPlayerGetFigBaseObject(v97);
        v105 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v105)
        {
          v105(v104, @"VideoTargetArray", 0);
        }

        v106 = FigPlayerGetFigBaseObject(v97);
        v107 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v107)
        {
          v107(v106, @"RequiresNumVideoSlots", SInt32);
        }

        v108 = FigPlayerGetFigBaseObject(v97);
        v109 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v109)
        {
          v109(v108, @"ClosedCaptionLayerArray", 0);
        }

        if (SInt32)
        {
          CFRelease(SInt32);
        }

        v13 = v194;
      }

      *(v191[0] + 88) = v13;
      *(v191[0] + 96) = 0;
      v110 = OUTLINED_FUNCTION_151_1();
      surrogatePlayer_setRealPlayerPropertyFromCache(v110, v111, v112);
      v113 = OUTLINED_FUNCTION_151_1();
      surrogatePlayer_setRealPlayerPropertyFromCache(v113, v114, @"VideoTargetArray");
      v115 = OUTLINED_FUNCTION_151_1();
      DerivedStorage = v191[0];
      surrogatePlayer_setRealPlayerPropertyFromCache(v115, v116, @"ClosedCaptionLayerArray");
      v117 = OUTLINED_FUNCTION_151_1();
      surrogatePlayer_setRealPlayerPropertyFromCache(v117, v118, @"RequiresNumVideoSlots");
      goto LABEL_120;
    }

    v55 = OUTLINED_FUNCTION_20_34();
    OUTLINED_FUNCTION_38_20(v55, v56, v57, v58, v59, v60, v61, v62, v183, v184, v185, v186, v187, v188, v189, v16, DerivedStorage, v191[1], v192, v193, v194, v195, v196, valuePtr, v198, *(&v198 + 1), v199, v200, v201, *(&v201 + 1), v202, v203, type[0], *&type[8], v205, v206, cf[0]);
    OUTLINED_FUNCTION_53_17();
    if (v37)
    {
      v64 = v63;
    }

    else
    {
      v64 = v13;
    }

    if (!v64)
    {
LABEL_102:
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_345_0();
      v13 = v194;
      DerivedStorage = v191[0];
      goto LABEL_103;
    }

    if (a1)
    {
      v65 = (CMBaseObjectGetDerivedStorage() + 128);
      if (!a2)
      {
LABEL_101:
        *v210 = 136316674;
        OUTLINED_FUNCTION_56_16();
        v211 = v65;
        OUTLINED_FUNCTION_83_8(v93);
        *&v212[20] = v94;
        *(v96 + 54) = v95;
        *&v212[30] = v94;
        v213 = v194;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_71_9();
        goto LABEL_102;
      }
    }

    else
    {
      v65 = "";
      if (!a2)
      {
        goto LABEL_101;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_101;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), IndexOfItem - 1);
  v46 = CMBaseObjectGetDerivedStorage();
  v47 = v46;
  if (!*(v46 + 162) || *(v46 + 72) != v13)
  {
    if (dword_1EAF17870)
    {
      v188 = a2;
      v48 = DerivedStorage;
      OUTLINED_FUNCTION_41_24();
      v49 = OUTLINED_FUNCTION_35_23();
      v50 = cf[0];
      HIDWORD(v187) = type[0];
      if (os_log_type_enabled(v49, type[0]))
      {
        v51 = v50;
      }

      else
      {
        v51 = v50 & 0xFFFFFFFE;
      }

      if (v51)
      {
        if (a1)
        {
          v52 = (CMBaseObjectGetDerivedStorage() + 128);
        }

        else
        {
          v52 = "";
        }

        v186 = v52;
        if (a2)
        {
          v82 = (CMBaseObjectGetDerivedStorage() + 175);
        }

        else
        {
          v82 = "";
        }

        v83 = *(v47 + 72);
        if (ValueAtIndex)
        {
          v84 = (CMBaseObjectGetDerivedStorage() + 175);
        }

        else
        {
          v84 = "";
        }

        v85 = *(v47 + 162);
        v86 = *(v48 + 88);
        if (*(v47 + 72) == v194)
        {
          v87 = "MATCHES";
        }

        else
        {
          v87 = "does NOT match";
        }

        *v210 = 136317698;
        v88 = "previous item IS enqueued with real player";
        *&v210[4] = "surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ";
        *&v210[12] = 2048;
        *&v210[14] = a1;
        if (!v85)
        {
          v88 = "previous item is NOT enqueued with real player";
        }

        *&v210[22] = 2082;
        v211 = v186;
        *v212 = 2048;
        *&v212[2] = a2;
        *&v212[10] = 2082;
        *&v212[12] = v82;
        *&v212[20] = 2048;
        *&v212[22] = v83;
        v13 = v194;
        *&v212[30] = 2048;
        v213 = ValueAtIndex;
        *v214 = 2082;
        *&v214[2] = v84;
        v215 = 2082;
        v216 = v87;
        v217 = 2082;
        v218 = v88;
        v219 = 2048;
        v220 = v86;
        OUTLINED_FUNCTION_51();
        DerivedStorage = v48;
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

      else
      {
        DerivedStorage = v48;
      }

      v6 = v193;
      OUTLINED_FUNCTION_21_1();
      v53 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v54 = 1;
      goto LABEL_123;
    }

    v53 = 1;
    v54 = 1;
    goto LABEL_121;
  }

  v54 = dword_1EAF17870;
  if (!dword_1EAF17870)
  {
    v53 = 1;
LABEL_121:
    v16 = v190;
    goto LABEL_122;
  }

  v191[0] = DerivedStorage;
  v77 = OUTLINED_FUNCTION_20_34();
  v78 = cf[0];
  if (os_log_type_enabled(v77, type[0]))
  {
    v79 = v78;
  }

  else
  {
    v79 = v78 & 0xFFFFFFFE;
  }

  if (v79)
  {
    if (a1)
    {
      v80 = (CMBaseObjectGetDerivedStorage() + 128);
    }

    else
    {
      v80 = "";
    }

    v188 = v80;
    if (a2)
    {
      v154 = (CMBaseObjectGetDerivedStorage() + 175);
    }

    else
    {
      v154 = "";
    }

    if (ValueAtIndex)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_85_6();
    OUTLINED_FUNCTION_14_56();
    v211 = v188;
    *v212 = v155;
    *(v156 + 34) = a2;
    *&v212[10] = v157;
    *(v156 + 44) = v154;
    *&v212[20] = v155;
    *(v156 + 54) = ValueAtIndex;
    *&v212[30] = v157;
    v213 = v158;
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_38();
    _os_log_send_and_compose_impl();
  }

  v6 = v193;
  v13 = v194;
  OUTLINED_FUNCTION_21_1();
  v53 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v54 = 0;
  DerivedStorage = v191[0];
LABEL_123:
  if (v6[162])
  {
    if (!dword_1EAF17870)
    {
      goto LABEL_189;
    }

    v172 = OUTLINED_FUNCTION_20_34();
    OUTLINED_FUNCTION_38_20(v172, v173, v174, v175, v176, v177, v178, v179, v183, v184, v185, v186, v187, v188, v189, v190, v191[0], v191[1], v192, v193, v194, v195, v196, valuePtr, v198, *(&v198 + 1), v199, v200, v201, *(&v201 + 1), v202, v203, type[0], *&type[8], v205, v206, cf[0]);
    OUTLINED_FUNCTION_53_17();
    if (v37)
    {
      v181 = v180;
    }

    else
    {
      v181 = v13;
    }

    if (v181)
    {
      *v210 = 136315138;
      *&v210[4] = "surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ";
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_71_9();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0();
    v13 = v194;
LABEL_99:
    v6 = v193;
    goto LABEL_189;
  }

  if (v54)
  {
    goto LABEL_140;
  }

  *(DerivedStorage + 96) = 0;
  if (dword_1EAF17870)
  {
    v119 = OUTLINED_FUNCTION_20_34();
    OUTLINED_FUNCTION_38_20(v119, v120, v121, v122, v123, v124, v125, v126, v183, v184, v185, v186, v187, v188, v189, v190, v191[0], v191[1], v192, v193, v194, v195, v196, valuePtr, v198, *(&v198 + 1), v199, v200, v201, *(&v201 + 1), v202, v203, type[0], *&type[8], v205, v206, cf[0]);
    OUTLINED_FUNCTION_53_17();
    if (v37)
    {
      v128 = v127;
    }

    else
    {
      v128 = v13;
    }

    if (!v128)
    {
      goto LABEL_136;
    }

    if (a1)
    {
      v129 = (CMBaseObjectGetDerivedStorage() + 128);
      if (!a2)
      {
LABEL_135:
        OUTLINED_FUNCTION_85_6();
        OUTLINED_FUNCTION_14_56();
        v211 = v129;
        *v212 = v130;
        *(v131 + 34) = a2;
        *&v212[10] = v130;
        *(v131 + 44) = v16;
        *&v212[20] = v132;
        *(v131 + 54) = v133;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_71_9();
LABEL_136:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0();
        v6 = v193;
        v13 = v194;
        goto LABEL_137;
      }
    }

    else
    {
      v129 = "";
      if (!a2)
      {
        goto LABEL_135;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_135;
  }

LABEL_137:
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    RealItem = 4294954514;
    goto LABEL_189;
  }

  v134 = OUTLINED_FUNCTION_184();
  RealItem = v135(v134);
  if (RealItem)
  {
    goto LABEL_189;
  }

  v6[162] = 1;
LABEL_140:
  surrogatePlayer_setCachedActionAtEndOnRealPlayerOnQ(a1, v26, v27, v28, v29, v30, v31, v32, v183, v184, v185, v186, v187, SHIDWORD(v187), v188, SWORD2(v188), v189, v190, v191[0], v191[1], v192, v193, v194, v195, v196, valuePtr, v198, *(&v198 + 1), v199, v200, v201, *(&v201 + 1), v202, v203, *type, *&type[8], v205, v206, cf[0], cf[1], v208, v209, *v210, *&v210[8], *&v210[16], v211, *v212, *&v212[8], *&v212[16], *&v212[24]);
  if (v53)
  {
    goto LABEL_189;
  }

  v136 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v136 + 80), @"CurrentRate");
  if (!Value)
  {
    goto LABEL_188;
  }

  v138 = Value;
  valuePtr = 0;
  v139 = CFDictionaryGetValue(Value, @"Rate");
  if (!v139)
  {
    OUTLINED_FUNCTION_79_11();
    v182 = FigSignalErrorAtGM();
LABEL_208:
    RealItem = v182;
    goto LABEL_189;
  }

  CFNumberGetValue(v139, kCFNumberFloat32Type, &valuePtr + 4);
  HIDWORD(v196) = 0;
  v140 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v140)
  {
    v141 = v140(v13, &v196 + 4);
    if (!v141)
    {
      if (*(&v196 + 1) == *(&valuePtr + 1))
      {
LABEL_188:
        RealItem = 0;
        goto LABEL_189;
      }

      if (!CFDictionaryGetValue(v138, @"AnchorTime"))
      {
        v159 = CFDictionaryGetValue(v138, @"SetRateOptions");
        if (v159)
        {
          MutableCopy = v159;
          if (FigCFDictionaryGetInt32IfPresent() && valuePtr == 17)
          {
            CFRetain(MutableCopy);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
            FigCFDictionarySetInt32();
          }

          v13 = v194;
        }

        else
        {
          *&v221 = 0;
          FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 17, &v221);
          MutableCopy = v221;
        }

        v161 = *(&valuePtr + 1);
        v162 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v162)
        {
          v162(v13, MutableCopy, v161);
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_188;
      }

      v142 = CMBaseObjectGetDerivedStorage();
      v143 = CFDictionaryGetValue(*(v142 + 80), @"CurrentRate");
      if (v143)
      {
        v144 = v143;
        HIDWORD(v209) = 0;
        if (!FigCFDictionaryGetFloat32IfPresent())
        {
          v6 = v193;
LABEL_216:
          OUTLINED_FUNCTION_79_11();
          v182 = FigSignalErrorAtGM();
          v13 = v194;
          if (!v182)
          {
            goto LABEL_188;
          }

          goto LABEL_208;
        }

        if (CFDictionaryGetValue(v144, @"AnchorTime"))
        {
          *v191 = *MEMORY[0x1E6960C70];
          *cf = *MEMORY[0x1E6960C70];
          v145 = *(MEMORY[0x1E6960C70] + 16);
          v208 = v145;
          if (FigCFDictionaryGetCMTimeIfPresent())
          {
            if ((BYTE4(cf[1]) & 1) != 0 && (BYTE4(cf[1]) & 0x1D) != 1)
            {
              v6 = v193;
            }

            else
            {
              *type = *v191;
              v205 = v145;
              if (FigCFDictionaryGetCMTimeIfPresent())
              {
                if ((type[12] & 1) != 0 && (type[12] & 0x1D) != 1)
                {
                  v6 = v193;
                }

                else
                {
                  HIDWORD(v203) = 0;
                  if (FigCFDictionaryGetInt32IfPresent())
                  {
                    v146 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v144);
                    CFDictionaryRemoveValue(v146, @"AnchorTime");
                    *&v221 = a1;
                    *(&v221 + 1) = @"CurrentRate";
                    v223 = 0;
                    v224 = 0;
                    v222 = v146;
                    surrogatePlayer_setPropertyInCacheInternal(&v221);
                    CFRelease(v146);
                    v147 = *(&v209 + 1);
                    v148 = HIDWORD(v203);
                    v201 = *cf;
                    v202 = v208;
                    v198 = *type;
                    v199 = v205;
                    v13 = v194;
                    v149 = *(*(CMBaseObjectGetVTable() + 16) + 88);
                    if (v149)
                    {
                      v221 = v201;
                      v222 = v202;
                      *v210 = v198;
                      *&v210[16] = v199;
                      v149(v194, &v221, v210, v148, v147);
                    }

                    goto LABEL_159;
                  }

                  v6 = v193;
                }
              }

              else
              {
                v6 = v193;
              }
            }
          }

          else
          {
            v6 = v193;
          }

          goto LABEL_216;
        }
      }

LABEL_159:
      v6 = v193;
      goto LABEL_188;
    }

    v150 = v141;
  }

  else
  {
    v150 = 4294954514;
  }

  OUTLINED_FUNCTION_41_24();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v152 = cf[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
  {
    v153 = v152;
  }

  else
  {
    v153 = v152 & 0xFFFFFFFE;
  }

  if (v153)
  {
    *v210 = 136315138;
    *&v210[4] = "surrogatePlayer_maybeSetRealPlayerRateFromCache";
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_23();
    _os_log_send_and_compose_impl();
  }

  v6 = v193;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_417();
  RealItem = v150;
LABEL_189:
  FigSimpleMutexUnlock();
  if (v195)
  {
    CFRelease(v195);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (RealItem)
  {
    surrogatePlaybackItem_deferFailedToBecomeReadyForInspectionNotification(a2, RealItem, 0, 0);
    v164 = OUTLINED_FUNCTION_177();
    surrogatePlayer_respondToFailedLoadingOfItemAssetTypeOnQ(v164, v165, v166, v167, v168, v169, v170, v171, v183, v184, v185, v186, SBYTE2(v186), BYTE3(v186), SHIDWORD(v186), v187, SHIDWORD(v187), v188, SWORD2(v188), v189, v190, v191[0], v191[1], v192, SWORD2(v192), v193, v194, v195, v196, valuePtr, v198, *(&v198 + 1), v199, v200, v201, *(&v201 + 1), v202, v203, *type, *&type[8], v205, v206, cf[0], cf[1], v208, v209, *v210, *&v210[8], *&v210[16], v211, *v212, *&v212[8], *&v212[16], *&v212[24], v213, *v214);
  }

  v6[160] = 0;
  return RealItem;
}

void surrogatePlaybackItem_postDeferredNotification(uint64_t a1, void *a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    v3 = 0;
  }

  else
  {
    v3 = surrogatePlaybackItem_copyOwningPlayer();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  surrogatePlaybackItem_deferReleaseToSafeQ(a2);

  surrogatePlayer_deferReleaseToSafeQ(v3);
}

CFIndex surrogatePlayer_getIndexOfItem(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return -1;
  }

  OUTLINED_FUNCTION_187();
  Count = CFArrayGetCount(*(v4 + 56));
  if (Count < 1)
  {
    return -1;
  }

  v7.length = Count;
  v6 = *(v3 + 56);
  v7.location = 0;

  return CFArrayGetFirstIndexOfValue(v6, v7, v2);
}

void surrogatePlayer_updateItemsToPrebufferOnRealPlayers(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15, int a16, int a17, int a18, __int16 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_415();
  v57 = v56;
  v59 = v58;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v61 = CMBaseObjectGetDerivedStorage();
  if (!*(v61 + 174))
  {
    goto LABEL_43;
  }

  if (!dword_1EAF17870)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_147();
  v62 = OUTLINED_FUNCTION_126();
  os_log_type_enabled(v62, type);
  OUTLINED_FUNCTION_37();
  if (v55)
  {
    if (v59)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v57)
      {
LABEL_9:
        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_47_18();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
        goto LABEL_10;
      }
    }

    else if (!v57)
    {
      goto LABEL_9;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_449();
LABEL_11:
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = MEMORY[0x1E695E9C0];
  while (1)
  {
    Count = *(DerivedStorage + 144);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v65 >= Count)
    {
LABEL_29:
      v76 = *(DerivedStorage + 32);
      if (v76)
      {
        FigBaseObject = FigPlayerGetFigBaseObject(v76);
        v78 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v78)
        {
          goto LABEL_37;
        }

        if (v78(FigBaseObject, @"ItemsToPrebuffer", v64))
        {
          goto LABEL_35;
        }
      }

      v79 = *(DerivedStorage + 40);
      if (!v79)
      {
        if (!v64)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v80 = FigPlayerGetFigBaseObject(v79);
      v81 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v81)
      {
        v81(v80, @"ItemsToPrebuffer", v63);
LABEL_35:
        if (!v64)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

LABEL_37:
      if (!v64)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    CFArrayGetValueAtIndex(*(DerivedStorage + 144), v65);
    v68 = CMBaseObjectGetDerivedStorage();
    v69 = v68;
    v70 = *(v68 + 72);
    if (v70)
    {
      break;
    }

    if (!*(v68 + 173))
    {
      goto LABEL_29;
    }

LABEL_28:
    ++v65;
  }

  if (v70 != *(DerivedStorage + 32))
  {
    if (v63)
    {
      Mutable = v63;
LABEL_27:
      CFArrayAppendValue(Mutable, *(v69 + 64));
      goto LABEL_28;
    }

    v72 = OUTLINED_FUNCTION_9_2();
    Mutable = CFArrayCreateMutable(v72, v73, v66);
    if (Mutable)
    {
      v63 = Mutable;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
    v63 = 0;
    if (!v64)
    {
      goto LABEL_41;
    }

LABEL_40:
    CFRelease(v64);
    goto LABEL_41;
  }

  if (v64)
  {
    Mutable = v64;
    goto LABEL_27;
  }

  v74 = OUTLINED_FUNCTION_9_2();
  Mutable = CFArrayCreateMutable(v74, v75, v66);
  if (Mutable)
  {
    v64 = Mutable;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_239();
  FigSignalErrorAtGM();
LABEL_41:
  if (v63)
  {
    CFRelease(v63);
  }

LABEL_43:
  *(v61 + 174) = 0;
  OUTLINED_FUNCTION_355();
}

const void *surrogatePlayer_getItemAfterItem(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 56));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v12.location = 0;
  v12.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 56), v12, a2);
  v7 = FirstIndexOfValue + 1;
  if (FirstIndexOfValue == -1 || v7 >= v5)
  {
    return 0;
  }

  v10 = *(a1 + 56);

  return CFArrayGetValueAtIndex(v10, v7);
}

__CFDictionary *surrogatePlayer_makeRateDict(const void *a1, float a2)
{
  valuePtr = a2;
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = CFNumberCreate(v3, kCFNumberFloat32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(Mutable, @"Rate", v5);
    if (a1)
    {
      CFDictionarySetValue(Mutable, @"SetRateOptions", a1);
    }

    CFRelease(v6);
  }

  return Mutable;
}

uint64_t surrogatePlayer_carefullyRemoveItemOnQ(const void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IndexOfItem = surrogatePlayer_getIndexOfItem(DerivedStorage, a2);
  if (IndexOfItem)
  {
    OUTLINED_FUNCTION_76_12(IndexOfItem, v9, v10, v11, v12, v13, v14, v15, v40, v41, v42, v43);
    if (a4)
    {
      *a4 = v44;
    }

    return v45;
  }

  else
  {
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = CMBaseObjectGetDerivedStorage();
    v18 = v17;
    *(v16 + 160) = 0;
    if (a4)
    {
      *a4 = *(v16 + 162);
    }

    Count = CFArrayGetCount(*(v17 + 56));
    if (Count >= 1 && (v20 = Count, CFArrayGetValueAtIndex(*(v18 + 56), 0), FigCFEqual()))
    {
      v23 = OUTLINED_FUNCTION_178();
      ItemAfterItem = surrogatePlayer_getItemAfterItem(v23, v24);
      v33 = ItemAfterItem;
      v34 = *(v16 + 162);
      if (!*(v16 + 162))
      {
        v35 = OUTLINED_FUNCTION_587();
        ItemAfterItem = surrogatePlaybackItem_deferPostNotification(v35);
        if (*(v18 + 104))
        {
          surrogatePlayer_deferPostCurrentItemDidChangeNotification(a1, @"ReasonAddToPlayQueue");
          *(v18 + 104) = 0;
        }
      }

      OUTLINED_FUNCTION_76_12(ItemAfterItem, v26, v27, v28, v29, v30, v31, v32, v40, v41, v42, v43);
      v21 = v46;
      if (!v34)
      {
        v36 = OUTLINED_FUNCTION_587();
        surrogatePlaybackItem_deferPostNotification(v36);
        v37 = OUTLINED_FUNCTION_177();
        if (v20 == 1)
        {
          surrogatePlayer_deferPostCurrentItemDidChangeNotification(v37, v38);
        }

        else
        {
          replaceNextCurrentItemDidChangeNotification(v37, v38);
        }
      }

      if (v33)
      {
        if (*(v18 + 97))
        {
          v39 = CMBaseObjectGetDerivedStorage();
          if (*(v39 + 162))
          {
            if (*(v39 + 72) != *(v18 + 88))
            {
              surrogatePlaybackItem_deferPostNotification(v33);
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v21;
}

void surrogatePlayer_setPropertyInCacheInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v7 = 0uLL;
  }

  else
  {
    v3 = DerivedStorage;
    v4 = v1[2];
    if (FigCFEqual())
    {
      *(v3 + 97) = FigCFEqual();
    }

    v5 = *v1;
    v10 = 0uLL;
    v9 = v5;
    surrogatePlayer_currentRealPlayerInternal(&v9);
    v8 = v10;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = *MEMORY[0x1E695E738];
    }

    CFDictionarySetValue(v3[10], v1[1], v6);
    v7 = v8;
  }

  *(v1 + 3) = v7;
}

void surrogatePlayerItem_cancelPendingPrerollInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || (v3 = DerivedStorage, !CFDictionaryGetValue(*(DerivedStorage + 120), @"StartPreroll")))
  {
    v4 = 0;
  }

  else
  {
    FigCFDictionaryGetInt32IfPresent();
    CFDictionaryRemoveValue(*(v3 + 120), @"StartPreroll");
    v4 = surrogatePlaybackItem_copyOwningPlayer();
    if (v4)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32();
      surrogatePlayer_deferPostNotification(v4);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  surrogatePlayer_deferReleaseToSafeQ(v4);
  if (*(v1 + 9))
  {
    surrogatePlaybackItem_deferReleaseToSafeQ(*v1);
  }

  if (*(v1 + 8))
  {
    free(v1);
  }
}

uint64_t surrogatePlaybackItem_copyAssetType()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_49_15(*(DerivedStorage + 144), v3, v4, v5, v6, v7, v8, v9, v11, context);
  result = 0;
  *v0 = 0;
  return result;
}

uint64_t surrogatePlayer_isRealItemCurrentInRealPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v5 = OUTLINED_FUNCTION_383();
      if (v6(v5))
      {
        return 0;
      }

      else if (a3)
      {
        if (*(CMBaseObjectGetDerivedStorage() + 64))
        {
          return 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t surrogatePlaybackItem_copyAssetTypeAndRealPlayerAndRealItem(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_216_0();
  context = v7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_49_15(*(DerivedStorage + 144), v10, v11, v12, v13, v14, v15, v16, v18, context);
  if (v5)
  {
    *v5 = 0;
  }

  if (v4)
  {
    *v4 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t surrogatePlaybackItem_createRealItem()
{
  OUTLINED_FUNCTION_207();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = v2;
  v6 = v1;
  cf = 0;
  v8 = 0;
  dispatch_sync_f(*(DerivedStorage + 144), &v5, surrogatePlaybackItem_createRealItemInternal);
  result = v8;
  if (!v8)
  {
    if (v0)
    {
      result = 0;
      *v0 = cf;
    }

    else if (cf)
    {
      CFRelease(cf);
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void surrogatePlaybackItem_copyAssetTypeAndRealPlayerAndRealItemInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = *(DerivedStorage + 48);
  if (!v3)
  {
    goto LABEL_4;
  }

  CMBaseObject = FigAssetGetCMBaseObject(v3);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v8 = 0;
    v7 = 0;
    v11 = -12782;
    goto LABEL_18;
  }

  v6 = v5(CMBaseObject, @"assetProperty_AssetType", *MEMORY[0x1E695E480], &cf);
  if (v6)
  {
    v11 = v6;
    v8 = 0;
    v7 = 0;
  }

  else
  {
LABEL_4:
    v7 = *(DerivedStorage + 72);
    if (v7)
    {
      CFRetain(*(DerivedStorage + 72));
    }

    v8 = *(DerivedStorage + 64);
    if (v8)
    {
      CFRetain(v8);
    }

    v9 = cf;
    if (cf)
    {
      v9 = CFRetain(cf);
    }

    *(v1 + 8) = v9;
    if (v7)
    {
      v10 = CFRetain(v7);
    }

    else
    {
      v10 = 0;
    }

    *(v1 + 16) = v10;
    if (v8)
    {
      v12 = CFRetain(v8);
    }

    else
    {
      v12 = 0;
    }

    v11 = 0;
    *(v1 + 24) = v12;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  *(v1 + 32) = v11;
}

void surrogatePlaybackItem_realItemNotificationWeakCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (FigCFEqual())
  {
    if (a5 && (value[0] = 0, CFDictionaryGetValueIfPresent(a5, @"AsRequested", value), value[0]))
    {
      v7 = CFBooleanGetValue(value[0]);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = DerivedStorage;
      if (v7)
      {
        if (*(DerivedStorage + 169))
        {
          v10 = 0;
          *(DerivedStorage + 169) = 0;
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v9 = CMBaseObjectGetDerivedStorage();
    }

    v10 = surrogatePlaybackItem_copyOwningPlayer();
    if (!v10)
    {
      goto LABEL_24;
    }

    *(v9 + 169) = 0;
    v11 = CMBaseObjectGetDerivedStorage();
    value[1] = a2;
    value[2] = 0;
    value[0] = v10;
    v12 = *(v11 + 64);
    v13 = surrogatePlayer_removeItemFromPlayQueueInternal;
    v14 = value;
    goto LABEL_10;
  }

  if (FigCFEqual())
  {
    v10 = 0;
    *(CMBaseObjectGetDerivedStorage() + 172) = 1;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    v10 = surrogatePlaybackItem_copyOwningPlayer();
    if (!v10)
    {
      goto LABEL_24;
    }

    v15 = CMBaseObjectGetDerivedStorage();
    v16 = CMBaseObjectGetDerivedStorage();
    dispatch_sync_f(*(v15 + 64), (v16 + 170), surrogatePlaybackItem_setBooleanToTrue);
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_16_17();
LABEL_10:
    dispatch_sync_f(v12, v14, v13);
LABEL_23:
    surrogatePlaybackItem_deferPostNotification(a2);
    goto LABEL_24;
  }

  if (!FigCFEqual() || a5 && (v17 = CFGetTypeID(a5), v17 == CFDictionaryGetTypeID()) && (v18 = CFDictionaryGetValue(a5, @"Properties")) != 0 && ((v19 = v18, v20 = CFGetTypeID(v18), v20 != CFArrayGetTypeID()) || CFArrayGetCount(v19)))
  {
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v21 = CMBaseObjectGetDerivedStorage();
  v22 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (v22)
  {
    v23 = v22;
    *v22 = CFRetain(a2);
    surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueue_f(*(v21 + 8), *(v21 + 144), v23, surrogatePlaybackItem_deferReadyForInspectionNotificationInternal);
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
  }

  v10 = 0;
LABEL_24:
  surrogatePlaybackItem_retainReleaseOnSafeQ(a2);
  surrogatePlayer_deferReleaseToSafeQ(v10);
}

void surrogatePlaybackItem_deferReadyForInspectionNotification(const void *a1, void *a2)
{
  values = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *MEMORY[0x1E695E480];
    cf = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    v6 = CFDictionaryCreate(v5, &kFigPlaybackItemParameter_Properties, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (cf)
    {
      CFRelease(cf);
    }

    surrogatePlaybackItem_deferPostNotification(a1);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else if (!*(DerivedStorage + 164))
  {
    *(DerivedStorage + 164) = 1;

    surrogatePlaybackItem_deferPostNotification(a1);
  }
}

uint64_t surrogatePlaybackItem_callMakeReadyForInspectionOnRealItem(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  OUTLINED_FUNCTION_62_13();
  if (v8)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  v10 = OUTLINED_FUNCTION_502();
  result = surrogatePlaybackItem_callMakeReadyForInspectionOnRealItemForProperty(v10, v11, 0, a4, v12);
  if (!result)
  {
    if (qword_1ED4CB958 != -1)
    {
      dispatch_once_f(&qword_1ED4CB958, &qword_1ED4CB950, surrogatePlaybackItem_initPropertiesWithSpecialHandlingWhenMakingReadyForInspection);
    }

    if (qword_1ED4CB950)
    {
      v14 = CFArrayGetCount(qword_1ED4CB950);
    }

    else
    {
      v14 = 0;
    }

    if (Count < 1)
    {
LABEL_15:
      result = 0;
      if (a5)
      {
        *a5 = 0;
      }
    }

    else
    {
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v15);
        v20.location = 0;
        v20.length = v14;
        if (CFArrayContainsValue(qword_1ED4CB950, v20, ValueAtIndex))
        {
          v17 = OUTLINED_FUNCTION_502();
          result = surrogatePlaybackItem_callMakeReadyForInspectionOnRealItemForProperty(v17, v18, ValueAtIndex, a4, v19);
          if (result)
          {
            break;
          }
        }

        if (Count == ++v15)
        {
          goto LABEL_15;
        }
      }
    }
  }

  return result;
}

void surrogatePlaybackItem_deferReadyForInspectionNotificationInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  CMBaseObjectGetDerivedStorage();
  surrogatePlaybackItem_deferReadyForInspectionNotification(*v1, 0);
  CFRelease(*v1);

  free(v1);
}

void *surrogatePlayer_copyItemsToPrebuffer_internal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  v2 = *(v1 + 8);
  result = CMBaseObjectGetDerivedStorage();
  if (*result)
  {
    v4 = -12785;
  }

  else
  {
    result = result[18];
    if (result)
    {
      result = CFRetain(result);
    }

    v4 = 0;
    *v2 = result;
  }

  *(v1 + 16) = v4;
  return result;
}

uint64_t surrogatePlayer_createRealPlayer_internal(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_172(a1);
  result = surrogatePlayer_createRealPlayerOnQ(v2, *(v1 + 8), *(v1 + 16));
  *(v1 + 24) = result;
  return result;
}

void surrogatePlayer_setItemsToPrebuffer_internal(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v13 = -12785;
    goto LABEL_31;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 144) == v3)
  {
    v13 = 0;
    goto LABEL_31;
  }

  if (!v3)
  {
LABEL_20:
    v17 = *(v5 + 32);
    if (v17)
    {
      FigBaseObject = FigPlayerGetFigBaseObject(v17);
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v19)
      {
        v13 = v19(FigBaseObject, @"ItemsToPrebuffer", 0);
      }

      else
      {
        v13 = -12782;
      }
    }

    else
    {
      v13 = 0;
    }

    v20 = *(v5 + 40);
    if (v20)
    {
      v21 = FigPlayerGetFigBaseObject(v20);
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v22)
      {
        v13 = v22(v21, @"ItemsToPrebuffer", 0);
      }

      else
      {
        v13 = -12782;
      }
    }

    v23 = *(v5 + 144);
    if (v23)
    {
      CFRelease(v23);
      *(v5 + 144) = 0;
    }

    goto LABEL_31;
  }

  if (CFArrayGetCount(v3) < 1)
  {
LABEL_12:
    if (CFArrayGetCount(v3))
    {
      v11 = *(v5 + 144);
      *(v5 + 144) = v3;
      CFRetain(v3);
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = 0;
      v13 = 0;
      while (1)
      {
        Count = *(v5 + 144);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v12 >= Count)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(v5 + 144), v12);
        *(CMBaseObjectGetDerivedStorage() + 174) = 1;
        v15 = OUTLINED_FUNCTION_178();
        v13 = surrogatePlayer_deferInitiateLoadingOfItemAssetType(v15, v16, 0);
        ++v12;
      }

      goto LABEL_31;
    }

    goto LABEL_20;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    if (!ValueAtIndex || (v8 = CFGetTypeID(ValueAtIndex), v8 != FigPlaybackItemGetTypeID()) || CMBaseObjectGetVTable() != &kFigPlaybackItemSurrogateVTable)
    {
      OUTLINED_FUNCTION_243();
      v13 = FigSignalErrorAtGM();
      goto LABEL_31;
    }

    v9 = surrogatePlaybackItem_copyOwningPlayer();
    v10 = v9;
    if (!v9 || v9 != v2)
    {
      break;
    }

    CFRelease(v9);
    if (++v6 >= CFArrayGetCount(v3))
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_243();
  v13 = FigSignalErrorAtGM();
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_31:
  *(a1 + 16) = v13;
}

uint64_t surrogatePlaybackItem_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_216_0();
  v7 = v6;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  cf = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (*DerivedStorage)
  {
    v11 = 0;
    v12 = 4294954511;
    goto LABEL_8;
  }

  if (CFEqual(v4, @"Timebase"))
  {
    v10 = *(v9 + 7);
    if (!v10)
    {
LABEL_7:
      v11 = 0;
      v12 = 0;
      *a4 = v10;
      goto LABEL_8;
    }

LABEL_6:
    v10 = CFRetain(v10);
    goto LABEL_7;
  }

  surrogatePlaybackItem_copyRealItemAndRealPlayer(v7, &cf, 0);
  v14 = cf;
  if (cf)
  {
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      if (!FigCFEqual())
      {
        v19 = 0;
        goto LABEL_37;
      }

      v18 = (v9 + 192);
      goto LABEL_19;
    }

LABEL_18:
    v18 = MEMORY[0x1E695E4C0];
LABEL_19:
    v19 = *v18;
    goto LABEL_22;
  }

  v19 = 0;
LABEL_22:
  v24 = 0;
  v20 = *(v9 + 6);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v21)
  {
    v12 = 4294954514;
LABEL_29:
    v11 = 0;
    goto LABEL_8;
  }

  v22 = v21(v20, @"assetProperty_AssetType", &v24 + 4, &v24, 0);
  if (v22)
  {
    v12 = v22;
    goto LABEL_29;
  }

  if (HIDWORD(v24) == 3)
  {
    v12 = v24;
    goto LABEL_29;
  }

  if (SHIDWORD(v24) > 1)
  {
LABEL_37:
    v23 = 0;
    goto LABEL_38;
  }

  v23 = 1;
  if (FigCFEqual())
  {
    v9[168] = 1;
  }

LABEL_38:
  v14 = cf;
  if (cf)
  {
    goto LABEL_12;
  }

  if (FigCFEqual() || FigCFEqual())
  {
LABEL_41:
    v11 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  v14 = cf;
  if (v23 || cf)
  {
    if (!cf)
    {
      if (v23)
      {
        if (a4)
        {
          if (!v19)
          {
            v10 = 0;
            goto LABEL_7;
          }

          v10 = v19;
          goto LABEL_6;
        }

        goto LABEL_41;
      }

      v11 = 0;
LABEL_54:
      OUTLINED_FUNCTION_243();
      RealItemAndRealPlayer = FigSignalErrorAtGM();
      goto LABEL_15;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v11 = surrogatePlaybackItem_copyOwningPlayer();
  if (!v11)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_489();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_15;
  }

  v14 = cf;
  if (!cf)
  {
    goto LABEL_54;
  }

LABEL_13:
  FigPlaybackItemGetFigBaseObject(v14);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v15 = OUTLINED_FUNCTION_184();
    RealItemAndRealPlayer = v16(v15);
LABEL_15:
    v12 = RealItemAndRealPlayer;
    goto LABEL_8;
  }

  v12 = 4294954514;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  surrogatePlayer_deferReleaseToSafeQ(v11);
  return v12;
}