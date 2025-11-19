uint64_t fpfs_EndCurrentDiscontinuity(const __CFArray *a1, unsigned int a2, unsigned int a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (a4)
  {
    fpfs_WeakStreamEnd(DerivedStorage, a2, a3);
    goto LABEL_3;
  }

  if (a2 <= 2)
  {
    v17 = *(DerivedStorage + 16 * a2 + 8 * a3 + 976);
    if (!v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    FigSignalErrorAtGM();
    FigSignalErrorAtGM();
    v17 = -1;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v18)
  {
    v18(v17, 0);
  }

LABEL_3:
  fpfs_PerformInitialResolveOfAllWaitingTracks(a1);
  v10 = *(v9 + 1024);
  while (v10)
  {
    if (!*(v9 + 1024))
    {
      return fpfs_PerformInitialResolveOfAllWaitingTracks(a1);
    }

    v11 = v10;
    v12 = *(v10 + 196);
    if (!a3 && v12 == a2)
    {
      *(v10 + 205) = 1;
    }

    v10 = *(v10 + 24);
    if (v12 == a2 && *(v11 + 198) == 1)
    {
      v13 = *(v11 + 168);
      if (a3 || v13 != 1)
      {
        if (a3 == 1 && v13 == 1)
        {
          fpfs_CompleteTrialSync(a1, v11);
          if (!v15)
          {
            continue;
          }
        }

        else if (v13 > 7 || ((1 << v13) & 0x95) == 0 && (v13 != 5 || *(v11 + 280)) || *(v11 + 128))
        {
          continue;
        }

        goto LABEL_27;
      }

      if (*(v11 + 280))
      {
        memset(&v21, 0, sizeof(v21));
        lhs = *(v11 + 232);
        v19 = *(v11 + 288);
        CMTimeSubtract(&v21, &lhs, &v19);
        CMTimeMake(&lhs, 50, 1000);
        v19 = v21;
        if (CMTimeCompare(&v19, &lhs) < 0 || CMTimebaseGetRate(*(v9 + 576)) == 0.0)
        {
          v14 = *(v11 + 280);
          if (v14)
          {
            CFRelease(v14);
            *(v11 + 280) = 0;
          }
        }
      }

      if (*(v11 + 48) == 1936684398)
      {
        if (fpfs_EndCurrentDiscontinuity_cold_1(v11, v9, (v11 + 168)))
        {
          continue;
        }

LABEL_27:
        fpfs_DeleteTrack(a1, v11);
        continue;
      }

      if (!*(v11 + 280))
      {
        goto LABEL_27;
      }
    }
  }

  return fpfs_PerformInitialResolveOfAllWaitingTracks(a1);
}

uint64_t fpfs_NewTrackNote(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v72 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(v8, 0);
  cf[0] = 0;
  v9 = 1;
  if (a3 <= 1935832171)
  {
    if (a3 == 1668047728 || a3 == 1835365473)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a3 == 1935832172)
  {
    v9 = 4;
    goto LABEL_10;
  }

  if (a3 != 1986618469)
  {
    if (a3 == 1936684398)
    {
      v9 = 2;
      goto LABEL_10;
    }

LABEL_8:
    v9 = 0;
  }

LABEL_10:
  v68 = 0;
  v69 = 0;
  if (!a1)
  {
    goto LABEL_18;
  }

  v10 = 0;
  v11 = 976;
  do
  {
    if (*(DerivedStorage + v11) == a1)
    {
      v13 = 0;
      goto LABEL_20;
    }

    ++v10;
    v11 += 16;
  }

  while (v10 != 3);
  if (!*(DerivedStorage + 1744))
  {
    goto LABEL_18;
  }

  v10 = 0;
  v12 = (DerivedStorage + 984);
  v13 = 1;
  while (*v12 != a1)
  {
    ++v10;
    v12 += 2;
    if (v10 == 3)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  if (v10 >= 3u)
  {
LABEL_18:
    fpfs_NewTrackNote_cold_5(v71);
    v14 = v71[0];
    goto LABEL_121;
  }

  LODWORD(v60) = v9;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v15)
  {
    v15(a1, a4, &v69);
  }

  if (a3 != 1835365473)
  {
    goto LABEL_31;
  }

  v16 = v69;
  CMBaseObjectGetDerivedStorage();
  if (!v16)
  {
    goto LABEL_31;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(v16);
  if (MediaSubType != 1835360888)
  {
    if (MediaSubType != 1701671783 || !dword_1EAF169F0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (dword_1EAF169F0)
  {
LABEL_30:
    LODWORD(v67) = 0;
    BYTE4(v66) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    LODWORD(v59) = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_31:
  v65 = a2;
  v18 = *(DerivedStorage + 1024);
  v19 = 1;
  if (!v18)
  {
    LODWORD(os_log_and_send_and_compose_flags_and_os_log_type) = 0;
    goto LABEL_73;
  }

  v59 = 0;
  LODWORD(os_log_and_send_and_compose_flags_and_os_log_type) = 0;
  v20 = (DerivedStorage + 24 * v13 + 8 * (v10 & 3) + 1104);
  while (*(DerivedStorage + 1024))
  {
    v21 = v18;
    v18 = *(v18 + 24);
    if (*(v21 + 48) == a3 && *(v21 + 80) == *v20)
    {
      if (*(v21 + 64) == a1 && a3 != 1835365473 && !*(v21 + 198))
      {
        break;
      }

      v68 = FigFormatDescriptionRetain();
      if (!v68)
      {
        v24 = *(v21 + 64);
        v25 = *(v21 + 40);
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v26)
        {
          v26(v24, v25, &v68);
        }
      }

      v22 = *(v21 + 196);
      if (v22 != v10)
      {
        if (*(v21 + 168) == 6)
        {
          v23 = *(DerivedStorage + 1072);
          if (((v23 >> v22) & 1) == 0)
          {
            goto LABEL_68;
          }

          if (a3 != 1835365473)
          {
LABEL_56:
            if ((v23 & v60) != 0 && 1 << *(v21 + 196) == v60)
            {
              break;
            }

            goto LABEL_62;
          }

LABEL_54:
          if (!fpfs_areMetadataFormatsRivals(v69, v68))
          {
            goto LABEL_67;
          }

          v23 = *(DerivedStorage + 1072);
          goto LABEL_56;
        }

        if (a3 == 1835365473)
        {
LABEL_59:
          if (!fpfs_areMetadataFormatsRivals(v69, v68))
          {
LABEL_67:
            ++v59;
            goto LABEL_68;
          }

          LOBYTE(v22) = *(v21 + 196);
        }

        if (1 << v22 == v60)
        {
          break;
        }

LABEL_62:
        FigFormatDescriptionRelease();
        v68 = 0;
        fpfs_StopFeedingTrack(v21, 0, 0);
        v27 = *(v21 + 112);
        if (v27)
        {
          fpfs_FlushPrimaryAndAuxRenderChains(v27, 1);
        }

        fpfs_DeleteTrack(v65, v21);
        goto LABEL_65;
      }

      if (a3 == 1835365473 && !fpfs_areMetadataFormatsRivals(v69, v68))
      {
        if (*(v21 + 168) == 6)
        {
          if (((*(DerivedStorage + 1072) >> *(v21 + 196)) & 1) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_54;
        }

        goto LABEL_59;
      }

      LODWORD(os_log_and_send_and_compose_flags_and_os_log_type) = *(v21 + 44);
LABEL_68:
      FigFormatDescriptionRelease();
      v68 = 0;
      if (!v18)
      {
LABEL_69:
        v19 = 1;
        goto LABEL_72;
      }
    }

    else
    {
LABEL_65:
      if (!v18)
      {
        goto LABEL_69;
      }
    }
  }

  v19 = 0;
LABEL_72:
  v18 = v59;
LABEL_73:
  if (a3 != 1986618469 || !v10)
  {
    if (a3 == 1986618469)
    {
      if (v18 < 5)
      {
        v34 = v19;
      }

      else
      {
        v34 = 0;
      }

      if (v34 != 1)
      {
        goto LABEL_99;
      }

      v30 = v65;
      if ((fpfs_NewTrackNote_cold_3(DerivedStorage) & 1) == 0)
      {
LABEL_128:
        LODWORD(v67) = 0;
        BYTE4(v66) = 0;
        v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v31 = *(DerivedStorage + 1680);
      if (v31 && FigAlternateIsIFrameOnly(v31))
      {
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v32)
        {
          v14 = 0;
          v30 = v65;
          goto LABEL_105;
        }

        v30 = v65;
LABEL_103:
        v32(a1, a4, 0, 0);
LABEL_104:
        v14 = 0;
        goto LABEL_105;
      }

      if (v18 < 5)
      {
        v35 = v19;
      }

      else
      {
        v35 = 0;
      }

      if ((v35 & 1) == 0)
      {
LABEL_99:
        v30 = v65;
        if (v18 >= 5 && dword_1EAF169F0)
        {
          LODWORD(v67) = 0;
          BYTE4(v66) = 0;
          v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v32 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v32)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }

      v30 = v65;
      if ((fpfs_NewTrackNote_cold_2(a3, (DerivedStorage + 1680)) & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    v51 = fpfs_AddNewTrack(v30, a4, a1, v10, a3, os_log_and_send_and_compose_flags_and_os_log_type);
    if (!v51)
    {
      fpfs_NewTrackNote_cold_4(v71);
      goto LABEL_118;
    }

    v52 = v51;
    v53 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v53)
    {
      v14 = v53(a1, a4, &kManifoldOutputCallbacks, v52);
    }

    else
    {
      v14 = 4294954514;
    }

LABEL_105:
    if (a3 != 1936684398)
    {
      goto LABEL_119;
    }

    if (Next != v30)
    {
      goto LABEL_119;
    }

    RenderingTrackofType = fpfs_LastRenderingTrackofType(v30, 1936684398, 0);
    if (!RenderingTrackofType)
    {
      goto LABEL_119;
    }

    fpfs_CancelGaplessTransitionThatDependsOnTrack(*DerivedStorage, RenderingTrackofType, 1, v38, v39, v40, v41, v42, v54, v55, v56, v57, Next, v59, v60, os_log_and_send_and_compose_flags_and_os_log_type, a4, v64, v65, v66, v67, v68, v69, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8]);
    if (v14)
    {
      goto LABEL_120;
    }

    goto LABEL_121;
  }

  if ((*(DerivedStorage + 1072) & 1) != 0 || (v28 = *(DerivedStorage + 1680)) == 0)
  {
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v33)
    {
      v33(a1, a4, 0, 0);
    }

    v14 = 0;
  }

  else
  {
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v29)
    {
      v29(a1, a4, 0, 0);
    }

    v30 = v65;
    if (dword_1EAF169F0)
    {
      v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v43 = FigAlternateSetLateDiscoveredMediaType(v28, 1986618469);
    if (v43)
    {
      goto LABEL_133;
    }

    v44 = *(DerivedStorage + 40);
    if (!v44)
    {
      goto LABEL_134;
    }

    v43 = FigAlternateSelectionBossApplyFilters(v44);
    if (v43)
    {
      goto LABEL_133;
    }

    v45 = *(DerivedStorage + 40);
    AllocatorForMedia = FigGetAllocatorForMedia();
    v43 = FigAlternateSelectionBossCopyProperty(v45, @"FilteredAlternateList", AllocatorForMedia, cf);
    if (v43)
    {
      goto LABEL_133;
    }

    if (!cf[0] || CFArrayGetCount(cf[0]) < 1)
    {
      v47 = 52570;
      goto LABEL_117;
    }

    fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
    if (v43)
    {
LABEL_133:
      v14 = v43;
      goto LABEL_120;
    }

LABEL_134:
    v47 = 52576;
LABEL_117:
    fpfs_NewTrackNote_cold_1(v47, v71);
LABEL_118:
    v14 = v71[0];
LABEL_119:
    if (v14)
    {
LABEL_120:
      v48 = CMBaseObjectGetDerivedStorage();
      fpfs_StopPlayingItemWithOSStatus(v48, v30, v14);
    }
  }

LABEL_121:
  FigFormatDescriptionRelease();
  FigFormatDescriptionRelease();
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v14;
}

uint64_t fpfs_MPEG2ManifoldErrorCallback()
{
  v0 = FigCFCopyCompactDescription();
  if (v0)
  {
    CFRelease(v0);
  }

  return 0;
}

uint64_t fpfs_isKnownMebxMetadataForRendering(const opaqueCMFormatDescription *a1)
{
  if (CMFormatDescriptionGetMediaSubType(a1) != 1835360888)
  {
    return 0;
  }

  CMMetadataFormatDescriptionGetIdentifiers(a1);
  if (FigCFArrayContainsValue())
  {
    return 1;
  }

  if (FigCFArrayContainsValue())
  {
    return 1;
  }

  if (FigCFArrayContainsValue())
  {
    return 1;
  }

  result = FigCFArrayContainsValue();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t fpfsi_TotalBytesInBuffer(uint64_t *a1)
{
  v1 = *a1;
  for (i = 0; v1; v1 = *(v1 + 24))
  {
    v3 = *(v1 + 96);
    if (v3)
    {
      i += CMBufferQueueGetTotalSize(v3);
      CMBaseObjectGetDerivedStorage();
      if (dword_1EAF169F0 >= 0xA)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  if (dword_1EAF169F0 >= 5)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return i;
}

CMTime *fpfsi_FindEarliestVideoGOPEndInTrackList@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  v3 = MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  a2->epoch = *(v3 + 16);
  for (i = result->value; i; i = *(i + 24))
  {
    if (*(i + 48) == 1986618469 && (*(i + 524) & 1) != 0 && (*(i + 548) & 1) != 0 && !*(i + 552) && (*(i + 536) & 0x8000000000000000) == 0)
    {
      v5 = *(i + 528);
      *&v7.start.value = *(i + 512);
      *&v7.start.epoch = v5;
      *&v7.duration.timescale = *(i + 544);
      CMTimeRangeGetEnd(&time1, &v7);
      *&v7.start.value = *&a2->value;
      v7.start.epoch = a2->epoch;
      result = CMTimeCompare(&time1, &v7.start);
      if ((result & 0x80000000) != 0)
      {
        v6 = *(i + 528);
        *&v7.start.value = *(i + 512);
        *&v7.start.epoch = v6;
        *&v7.duration.timescale = *(i + 544);
        result = CMTimeRangeGetEnd(a2, &v7);
      }
    }
  }

  return result;
}

opaqueCMSampleBuffer *fpfsi_ReleaseCachedSamplesFromTrack(uint64_t a1, opaqueCMBufferQueue *a2, CMTime *a3, int a4)
{
  CMBaseObjectGetDerivedStorage();
  while (1)
  {
    result = CMBufferQueueGetHead(*(a1 + 96));
    if (!result)
    {
      break;
    }

    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetOutputPresentationTimeStamp(&v12, result);
    if (a4)
    {
      if (v12.flags)
      {
        time1 = v12;
        v10 = *a3;
        result = CMTimeCompare(&time1, &v10);
        if (result <= 0)
        {
          return result;
        }
      }
    }

    else if (v12.flags)
    {
      time1 = v12;
      v10 = *a3;
      result = CMTimeCompare(&time1, &v10);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    v9 = CMBufferQueueDequeueAndRetain(*(a1 + 96));
    if (a2)
    {
      CMBufferQueueEnqueue(a2, v9);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  return result;
}

uint64_t fpfs_FindVideoGOPRangeInBufferQueue(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v10, 0, sizeof(v10));
  CMSampleBufferGetOutputPresentationTimeStamp(&v10, a1);
  if (fpfs_IsMarkerOnly(a1))
  {
    return 0;
  }

  if (fpfs_IsVideoSync(a1) && (*(a2 + 12) & 1) != 0 && (*(a2 + 36) & 1) != 0 && !*(a2 + 40) && (*(a2 + 24) & 0x8000000000000000) == 0 && (v8.start = v10, start = *a2, CMTimeCompare(&v8.start, &start) >= 1))
  {
    start = *a2;
    v7 = v10;
    CMTimeRangeFromTimeToTime(&v8, &start, &v7);
    v6 = *&v8.start.epoch;
    *a2 = *&v8.start.value;
    *(a2 + 16) = v6;
    *(a2 + 32) = *&v8.duration.timescale;
    return 0xFFFFFFFFLL;
  }

  else
  {
    if ((*(a2 + 12) & 1) != 0 && (*(a2 + 36) & 1) != 0 && !*(a2 + 40) && (*(a2 + 24) & 0x8000000000000000) == 0)
    {
      return 0;
    }

    start = v10;
    v7 = **&MEMORY[0x1E6960C68];
    CMTimeRangeMake(&v8, &start, &v7);
    result = 0;
    v5 = *&v8.start.epoch;
    *a2 = *&v8.start.value;
    *(a2 + 16) = v5;
    *(a2 + 32) = *&v8.duration.timescale;
  }

  return result;
}

uint64_t fpfsi_AddDateToQueue(uint64_t a1, const void *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, void *a8, char a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = DerivedStorage;
  if (a8)
  {
    v18 = a8;
  }

  else
  {
    v18 = (DerivedStorage + 1592);
  }

  do
  {
    v18 = *v18;
    if (!v18)
    {
      v21 = malloc_type_calloc(1uLL, 0x80uLL, 0x10E0040A18345ADuLL);
      if (!v21)
      {
        goto LABEL_17;
      }

      v18 = v21;
      *v21 = 0;
      v22 = *(v17 + 1600);
      v21[1] = v22;
      *v22 = v21;
      *(v17 + 1600) = v21;
LABEL_11:
      v18[2] = CFRetain(a2);
      v23 = *(a3 + 16);
      *(v18 + 3) = *a3;
      v18[5] = v23;
LABEL_12:
      v24 = *a4;
      v18[8] = *(a4 + 2);
      *(v18 + 3) = v24;
      v25 = *a5;
      v18[11] = *(a5 + 2);
      *(v18 + 9) = v25;
      v26 = *(a6 + 16);
      *(v18 + 6) = *a6;
      v18[14] = v26;
      v18[15] = a7;
      if (!a8)
      {
        return 0;
      }

LABEL_13:
      result = 0;
      *a8 = v18;
      return result;
    }

    time1 = *(v18 + 1);
    v28 = *a3;
  }

  while (CMTimeCompare(&time1, &v28) < 0);
  time1 = *(v18 + 1);
  v28 = *a3;
  if (!CMTimeCompare(&time1, &v28))
  {
    if (!a9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = malloc_type_calloc(1uLL, 0x80uLL, 0x10E0040A18345ADuLL);
  if (v19)
  {
    v20 = v18[1];
    *v19 = v18;
    v19[1] = v20;
    *v20 = v19;
    v18[1] = v19;
    v18 = v19;
    goto LABEL_11;
  }

LABEL_17:
  fpfsi_AddDateToQueue_cold_1(&time1);
  return LODWORD(time1.value);
}

uint64_t fpfsi_setTimePitchAlgorithm(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v5 = DerivedStorage, TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(a2)) && (CFEqual(a2, @"TimeDomain") || CFEqual(a2, @"Spectral") || CFEqual(a2, @"LowQualityZeroLatency") || CFEqual(a2, @"Varispeed")))
  {
    if (!CFEqual(a2, *(v5 + 856)))
    {
      v7 = CMBaseObjectGetDerivedStorage();
      v8 = *(v5 + 856);
      *(v5 + 856) = a2;
      CFRetain(a2);
      if (v8)
      {
        CFRelease(v8);
      }

      if (*(v7 + 80) == a1)
      {
        if (dword_1EAF169F0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpfs_stopResetDisturbReprepareAndResume(*v5, a1, 0);
      }
    }

    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

double fpfsi_PrepareTrackForReplay(uint64_t a1, __int128 *a2, uint64_t a3)
{
  memset(v13, 0, sizeof(v13));
  refcon = a1;
  v11 = *a2;
  v12 = *(a2 + 2);
  if (*(a1 + 436))
  {
    v8 = *a2;
    fpfs_DecodeTimeForAudioRandomAccessInBufferQueue(a1, &v8, &rhs);
    v8 = *a2;
    CMTimeSubtract(v13, &v8, &rhs);
  }

  else
  {
    *v13 = *(a1 + 412);
    *&v13[16] = *(a1 + 428);
  }

  *&v13[24] = *(a1 + 232);
  v6 = *(a1 + 88);
  *&v13[40] = *(a1 + 248);
  *&v13[48] = v6;
  v13[56] = *(a1 + 48) == 1986618469;
  *&v13[60] = *MEMORY[0x1E6960C80];
  *&v13[76] = *(MEMORY[0x1E6960C80] + 16);
  v13[57] = 0;
  CMBufferQueueReset(v6);
  CMBufferQueueCallForEachBuffer(*(a1 + 96), fpfsi_ReuseSamplesInQueue, &refcon);
  result = *&v13[60];
  *a3 = *&v13[60];
  *(a3 + 16) = *&v13[76];
  return result;
}

uint64_t fpfs_PreallocateVideoRendering(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 2904))
  {
    v4 = result;
    v5 = *(DerivedStorage + 832);
    if (v5 && *v5 == 1)
    {
      fpfsi_ClearCachedVideoRenderChains(*(a1 + 16));
    }

    result = fpfs_CanRenderVideo(v4, *(a1 + 16));
    if (result)
    {
      if (*(v4 + 672) <= 3)
      {
        return fpfs_PreallocateVideoRendering_cold_1(DerivedStorage);
      }
    }
  }

  return result;
}

BOOL fpfs_WantMATAtmosForTrack(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = *(a1 + 56);
  MediaSubType = CMFormatDescriptionGetMediaSubType(v2);
  result = 0;
  if (MediaSubType <= 1885692722)
  {
    if (MediaSubType > 1700997938)
    {
      if (MediaSubType == 1700997939)
      {
        return *(CMBaseObjectGetDerivedStorage() + 568) != 0;
      }

      if (MediaSubType != 1700998451)
      {
        v5 = 1885547315;
        goto LABEL_16;
      }

LABEL_18:
      sizeOut = 0;
      FormatList = CMAudioFormatDescriptionGetFormatList(v2, &sizeOut);
      if (!FormatList || sizeOut <= 0x2F)
      {
        return 0;
      }

      mFormatID = FormatList->mASBD.mFormatID;
      if (mFormatID <= 1885547314)
      {
        v9 = mFormatID == 1667574579;
        v10 = 1700997939;
      }

      else
      {
        v9 = mFormatID == 1885547315 || mFormatID == 1902324531;
        v10 = 2053319475;
      }

      if (!v9 && mFormatID != v10)
      {
        return 0;
      }

      return *(CMBaseObjectGetDerivedStorage() + 568) != 0;
    }

    if (MediaSubType == 1667574579)
    {
      return *(CMBaseObjectGetDerivedStorage() + 568) != 0;
    }

    v6 = 1667575091;
LABEL_12:
    if (MediaSubType != v6)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (MediaSubType > 1902469938)
  {
    if (MediaSubType == 2053464883)
    {
      goto LABEL_18;
    }

    if (MediaSubType == 2053319475)
    {
      return *(CMBaseObjectGetDerivedStorage() + 568) != 0;
    }

    v6 = 1902469939;
    goto LABEL_12;
  }

  if (MediaSubType == 1885692723)
  {
    goto LABEL_18;
  }

  v5 = 1902324531;
LABEL_16:
  if (MediaSubType == v5)
  {
    return *(CMBaseObjectGetDerivedStorage() + 568) != 0;
  }

  return result;
}

uint64_t fpfs_ShouldTryToGrabHDRPlaybackBaton(uint64_t a1, uint64_t a2)
{
  result = CelestialShouldLimitHDRConcurrentPlayback();
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 108) == 0.0)
    {
      return 0;
    }

    result = fpfs_CanRenderVideo(DerivedStorage, 0);
    if (!result)
    {
      return result;
    }

    v5 = CMBaseObjectGetDerivedStorage();
    v6 = CMBaseObjectGetDerivedStorage();
    if (*(v5 + 80) != a2)
    {
      return 0;
    }

    result = *(v6 + 1680);
    if (result)
    {
      if (FigAlternateGetVideoRange(result) >= 2)
      {
        return *(v5 + 856) == 0;
      }

      return 0;
    }
  }

  return result;
}

BOOL fpfs_isPlaybackBeyondReverseEndTime()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  memset(&v5, 0, sizeof(v5));
  fpfs_GetNextTimeToPlay(DerivedStorage, 0, &v5);
  if (*(v1 + 108) >= 0.0 || (*(DerivedStorage + 1388) & 0x1D) != 1)
  {
    return 0;
  }

  v3 = v5;
  FPSTimelineConverterL2TimeToL3(&v3, &time1);
  v3 = *(DerivedStorage + 1376);
  return CMTimeCompare(&time1, &v3) < 1;
}

uint64_t fpfsi_PlaybackHasBufferedBeyondTimeToPauseBuffering()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    return fpfsi_PlaybackHasBufferedBeyondTime() != 0;
  }

  return result;
}

void fpfs_EnsureEndTimerProcForTrack(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ItemAndTrackNumberPayload = fpfs_CreateItemAndTrackNumberPayload(v2, a1);
  fpfsi_CreateTimebaseTimer(v2, *(DerivedStorage + 600), ItemAndTrackNumberPayload, fpfs_endTimerProc, 0, (a1 + 128));
  if (ItemAndTrackNumberPayload)
  {
    CFRelease(ItemAndTrackNumberPayload);
  }

  if (*(a1 + 128))
  {
    fpfs_scheduleForwardEndTimeForTrack();
    fpfs_unscheduleRanDryTimer(v2, a1);
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {

    FigSignalErrorAtGM();
  }
}

void fpfs_CallDispatchHandlerWithItemAndTrack(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  ItemAndTrackNumberPayload = fpfs_CreateItemAndTrackNumberPayload(a1, a2);
  if (ItemAndTrackNumberPayload)
  {
    v5 = ItemAndTrackNumberPayload;
    a3();

    CFRelease(v5);
  }
}

void fpfs_ranDryTimerProc(const __CFArray *a1)
{
  v142 = *MEMORY[0x1E69E9840];
  v121 = 0;
  cf = 0;
  if (!a1)
  {
    fpfs_ranDryTimerProc_cold_6();
    goto LABEL_9;
  }

  if (CFArrayGetCount(a1) != 2)
  {
    fpfs_ranDryTimerProc_cold_1();
    goto LABEL_9;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  if (!ValueAtIndex)
  {
    fpfs_ranDryTimerProc_cold_5();
    goto LABEL_9;
  }

  v3 = ValueAtIndex;
  v4 = CFArrayGetValueAtIndex(a1, 1);
  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v3, &v121, &cf, v5, v6, v7, v8, v9, v95, v96, v97, v98, v101, v106, v108, SBYTE2(v108), BYTE3(v108), HIDWORD(v108), v109, SHIDWORD(v109), *v110, *&v110[4], v113, v115, lhs.value, *&lhs.timescale, lhs.epoch, v117, v118.n128_i16[0], v118.n128_i64[1], v119, valuePtr, v121, cf, rhs.value, *&rhs.timescale, rhs.epoch, v124, *v125, *&v125[8], *&v125[16], *&v125[24], *&v125[32], v126, time2.value, *&time2.timescale, time2.epoch, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
  v10 = cf;
  if (!v11)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = v121;
    v14 = CMBaseObjectGetDerivedStorage();
    valuePtr = 0;
    CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr);
    v15 = *(v14 + 840);
    voucher_adopt();
    if (FigRetainProxyIsInvalidated())
    {
      goto LABEL_6;
    }

    Next = fpfs_getNext(v14, 0);
    v17 = *(DerivedStorage + 1024);
    if (!v17)
    {
      goto LABEL_6;
    }

    while (*(v17 + 32) != valuePtr)
    {
      v17 = *(v17 + 24);
      if (!v17)
      {
        goto LABEL_6;
      }
    }

    if (!Next)
    {
      goto LABEL_6;
    }

    v118 = 0uLL;
    v119 = 0;
    fpfs_GetTime(DerivedStorage, &v118);
    if ((*(v17 + 184) & 1) == 0)
    {
LABEL_23:
      v19 = MEMORY[0x1E6960C70];
      v107 = *MEMORY[0x1E6960C70];
      *(v17 + 172) = *MEMORY[0x1E6960C70];
      v105 = *(v19 + 16);
      *(v17 + 188) = v105;
      if (dword_1EAF169F0)
      {
        LODWORD(lhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = lhs.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v22 = value;
        }

        else
        {
          v22 = value & 0xFFFFFFFE;
        }

        if (v22)
        {
          if (v13)
          {
            v23 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v23 = "";
          }

          v102 = v23;
          if (v10)
          {
            v24 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v24 = "";
          }

          v99 = v24;
          v25 = *(v17 + 32);
          *&time2.value = v118;
          time2.epoch = v119;
          Seconds = CMTimeGetSeconds(&time2);
          LODWORD(rhs.value) = 136316674;
          *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v13;
          HIWORD(rhs.epoch) = 2082;
          v124 = v102;
          *v125 = 2048;
          *&v125[2] = v10;
          *&v125[10] = 2082;
          *&v125[12] = v99;
          *&v125[20] = 1024;
          *&v125[22] = v25;
          *&v125[26] = 2048;
          *&v125[28] = Seconds;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v27 = *(v17 + 48);
      v28 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v28)
      {
LABEL_41:
        fpfs_ranDryTimerProc_cold_2();
        goto LABEL_6;
      }

      while (*(v28 + 48) != v27 || !*(v28 + 112))
      {
        v28 = *(v28 + 24);
        if (!v28)
        {
          goto LABEL_41;
        }
      }

      v29 = v28;
      do
      {
        v29 = *(v29 + 24);
      }

      while (v29 && *(v29 + 48) != v27);
      if (*(v17 + 32) > *(v28 + 32))
      {
        if (dword_1EAF169F0)
        {
          LODWORD(lhs.value) = 0;
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = lhs.value;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (!v32)
          {
            goto LABEL_113;
          }

          if (v13)
          {
            v33 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v33 = "";
          }

          if (!v10)
          {
            v44 = "";
LABEL_102:
            v53 = *(v17 + 32);
            LODWORD(rhs.value) = 136316418;
            *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v13;
            HIWORD(rhs.epoch) = 2082;
            v124 = v33;
            *v125 = 2048;
            *&v125[2] = v10;
            *&v125[10] = 2082;
            *&v125[12] = v44;
            *&v125[20] = 2048;
            *&v125[22] = v53;
            _os_log_send_and_compose_impl();
LABEL_113:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_6;
          }

          goto LABEL_168;
        }

        goto LABEL_6;
      }

      v34 = v17 == v28 && v29 == 0;
      v35 = !v34;
      if (v34)
      {
        if (*(v17 + 198))
        {
          if (dword_1EAF169F0)
          {
            LODWORD(lhs.value) = 0;
            v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v38 = lhs.value;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v38;
            }

            else
            {
              v39 = v38 & 0xFFFFFFFE;
            }

            if (!v39)
            {
              goto LABEL_113;
            }

            if (v13)
            {
              v33 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v33 = "";
            }

            if (!v10)
            {
              v44 = "";
              goto LABEL_102;
            }

LABEL_168:
            v44 = (CMBaseObjectGetDerivedStorage() + 3096);
            goto LABEL_102;
          }

LABEL_6:

          fpfs_UnlockAndPostNotificationsWithCaller(v13);
          goto LABEL_7;
        }

        if (*(v17 + 64) == *(DerivedStorage + 16 * *(v17 + 196) + 976))
        {
          if (*(v17 + 168) != 6)
          {
            if (dword_1EAF169F0)
            {
              LODWORD(lhs.value) = 0;
              v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v55 = lhs.value;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v56 = v55;
              }

              else
              {
                v56 = v55 & 0xFFFFFFFE;
              }

              if (!v56)
              {
                goto LABEL_113;
              }

              if (v13)
              {
                v33 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v33 = "";
              }

              if (!v10)
              {
                v44 = "";
                goto LABEL_102;
              }

              goto LABEL_168;
            }

            goto LABEL_6;
          }

          if (dword_1EAF169F0)
          {
            v111 = v35;
            LODWORD(lhs.value) = 0;
            v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v50 = lhs.value;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v51 = v50;
            }

            else
            {
              v51 = v50 & 0xFFFFFFFE;
            }

            if (v51)
            {
              if (v13)
              {
                v52 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v52 = "";
              }

              if (v10)
              {
                v71 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v71 = "";
              }

              v72 = *(v17 + 32);
              LODWORD(rhs.value) = 136316418;
              *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v13;
              HIWORD(rhs.epoch) = 2082;
              v124 = v52;
              *v125 = 2048;
              *&v125[2] = v10;
              *&v125[10] = 2082;
              *&v125[12] = v71;
              *&v125[20] = 2048;
              *&v125[22] = v72;
              _os_log_send_and_compose_impl();
            }

            v104 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_172;
          }

          v66 = 1;
LABEL_161:
          v104 = v66;
          goto LABEL_173;
        }

        if (dword_1EAF169F0)
        {
          LODWORD(lhs.value) = 0;
          v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v41 = lhs.value;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v42 = v41;
          }

          else
          {
            v42 = v41 & 0xFFFFFFFE;
          }

          if (!v42)
          {
            goto LABEL_158;
          }

          if (v13)
          {
            v43 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v43 = "";
          }

          if (!v10)
          {
            v67 = "";
LABEL_157:
            v70 = *(v17 + 32);
            LODWORD(rhs.value) = 136316418;
            *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v13;
            HIWORD(rhs.epoch) = 2082;
            v124 = v43;
            *v125 = 2048;
            *&v125[2] = v10;
            *&v125[10] = 2082;
            *&v125[12] = v67;
            *&v125[20] = 2048;
            *&v125[22] = v70;
            _os_log_send_and_compose_impl();
LABEL_158:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_159;
          }

LABEL_152:
          v67 = (CMBaseObjectGetDerivedStorage() + 3096);
          goto LABEL_157;
        }
      }

      else
      {
        if (v17 != v28)
        {
          goto LABEL_6;
        }

        if (v29)
        {
          v36 = *(v29 + 168) == 1;
        }

        else
        {
          v36 = 0;
        }

        v111 = v35;
        if (dword_1EAF169F0)
        {
          v103 = v36;
          LODWORD(lhs.value) = 0;
          v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v46 = lhs.value;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v46;
          }

          else
          {
            v47 = v46 & 0xFFFFFFFE;
          }

          if (v47)
          {
            if (v13)
            {
              v48 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v48 = "";
            }

            if (v10)
            {
              v57 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v57 = "";
            }

            if (v29)
            {
              v58 = *(v29 + 32);
            }

            else
            {
              v58 = -1;
            }

            LODWORD(rhs.value) = 136316674;
            *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v13;
            HIWORD(rhs.epoch) = 2082;
            v124 = v48;
            *v125 = 2048;
            *&v125[2] = v10;
            *&v125[10] = 2082;
            *&v125[12] = v57;
            *&v125[20] = 2048;
            *&v125[22] = v58;
            *&v125[30] = 1024;
            *&v125[32] = v103;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v35 = v111;
          v36 = v103;
        }

        if (v36)
        {
          if (dword_1EAF169F0)
          {
            LODWORD(lhs.value) = 0;
            v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v60 = lhs.value;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v61 = v60;
            }

            else
            {
              v61 = v60 & 0xFFFFFFFE;
            }

            if (v61)
            {
              if (v13)
              {
                v62 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v62 = "";
              }

              if (v10)
              {
                v68 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v68 = "";
              }

              v69 = *(v17 + 32);
              LODWORD(rhs.value) = 136316418;
              *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v13;
              HIWORD(rhs.epoch) = 2082;
              v124 = v62;
              *v125 = 2048;
              *&v125[2] = v10;
              *&v125[10] = 2082;
              *&v125[12] = v68;
              *&v125[20] = 2048;
              *&v125[22] = v69;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v104 = 2;
LABEL_172:
            v35 = v111;
LABEL_173:
            *&time2.value = v118;
            time2.epoch = v119;
            if (fpfs_TrackIsStalled(v17, &time2))
            {
              v73 = *(v17 + 32);
              if (dword_1EAF169F0)
              {
                v100 = *(v17 + 32);
                v112 = v35;
                LODWORD(lhs.value) = 0;
                v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v75 = lhs.value;
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  v76 = v75;
                }

                else
                {
                  v76 = v75 & 0xFFFFFFFE;
                }

                if (v76)
                {
                  if (v13)
                  {
                    v77 = (CMBaseObjectGetDerivedStorage() + 888);
                  }

                  else
                  {
                    v77 = "";
                  }

                  if (v10)
                  {
                    v78 = (CMBaseObjectGetDerivedStorage() + 3096);
                  }

                  else
                  {
                    v78 = "";
                  }

                  v79 = *(v17 + 32);
                  LODWORD(rhs.value) = 136316418;
                  *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
                  LOWORD(rhs.flags) = 2048;
                  *(&rhs.flags + 2) = v13;
                  HIWORD(rhs.epoch) = 2082;
                  v124 = v77;
                  *v125 = 2048;
                  *&v125[2] = v10;
                  *&v125[10] = 2082;
                  *&v125[12] = v78;
                  *&v125[20] = 2048;
                  *&v125[22] = v79;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v35 = v112;
                v73 = v100;
              }

              if (!fpfs_StopPlaybackByStalledTrack(v17, v104))
              {
                v80 = CMBaseObjectGetDerivedStorage();
                if (!v80 || fpfs_GetItemLivingTrack(v80, v73, &time2) || !FigSignalErrorAtGM())
                {
                  if (*(v17 + 64) == *(DerivedStorage + 16 * *(v17 + 196) + 976))
                  {
                    v81 = 1;
                  }

                  else
                  {
                    v81 = v35;
                  }

                  if ((v81 & 1) == 0)
                  {
                    fpfs_StopFeedingTrack(v17, 0, 1);
                  }

                  if (v35)
                  {
                    valuePtr = *(v29 + 32);
                    if (*(v17 + 48) != 1936684398)
                    {
                      goto LABEL_222;
                    }

                    fpfs_GetStartupDurationOfType(v29, &time2);
                    v82 = (1 << *(v29 + 196));
                    *&rhs.value = v118;
                    rhs.epoch = v119;
                    if (!fpfs_CheckCanKeepUp(v10, &time2, &rhs, v82, 0, 0, 0, 0))
                    {
                      goto LABEL_222;
                    }

                    v83 = *(DerivedStorage + 1024);
                    if (!v83)
                    {
                      goto LABEL_222;
                    }

                    while (*(v83 + 32) != valuePtr)
                    {
                      v83 = *(v83 + 24);
                      if (!v83)
                      {
                        goto LABEL_222;
                      }
                    }

                    memset(&lhs, 0, sizeof(lhs));
                    v90 = *(v83 + 88);
                    if (v90)
                    {
                      CMBufferQueueGetMinPresentationTimeStamp(&lhs, v90);
                    }

                    else
                    {
                      *&lhs.value = v107;
                      lhs.epoch = v105;
                    }

                    if ((lhs.flags & 1) != 0 && (*&time2.value = v118, time2.epoch = v119, rhs = lhs, (CMTimeCompare(&time2, &rhs) & 0x80000000) == 0))
                    {
                      if (dword_1EAF169F0)
                      {
                        v114 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      if (*(v83 + 48) == 1936684398)
                      {
                        fpfs_ForceAudioSync(v83);
                      }

                      v91 = 1;
                    }

                    else
                    {
LABEL_222:
                      v91 = 0;
                    }

                    if (!FigRetainProxyIsInvalidated())
                    {
                      if ((v91 & 1) == 0)
                      {
                        v92 = *(DerivedStorage + 1024);
                        if (v92)
                        {
                          while (*(v92 + 32) != valuePtr)
                          {
                            v92 = *(v92 + 24);
                            if (!v92)
                            {
                              goto LABEL_234;
                            }
                          }

                          v93 = *(DerivedStorage + 1744);
                          if (v93 && *(DerivedStorage + 1680) && (PeakBitRate = FigAlternateGetPeakBitRate(v93), PeakBitRate > FigAlternateGetPeakBitRate(*(DerivedStorage + 1680))))
                          {
                            fpfs_CancelTrialSwitch(v10);
                          }

                          else
                          {
                            fpfs_AbandonSyncAttempt(v92);
                          }
                        }
                      }

LABEL_234:
                      fpfs_CheckPrebufferedLevels(&time2, v10, 1, -1, 0);
                    }

                    goto LABEL_6;
                  }

                  v84 = *(DerivedStorage + 1680);
                  if (!v84 || !FigAlternateIsIFrameOnly(v84))
                  {
                    *(DerivedStorage + 2832) = 1;
                    LODWORD(lhs.value) = 0;
                    v85 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v86 = lhs.value;
                    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                    {
                      v87 = v86;
                    }

                    else
                    {
                      v87 = v86 & 0xFFFFFFFE;
                    }

                    if (v87)
                    {
                      if (v10)
                      {
                        v88 = (CMBaseObjectGetDerivedStorage() + 3096);
                      }

                      else
                      {
                        v88 = "";
                      }

                      v89 = *(DerivedStorage + 1680);
                      LODWORD(rhs.value) = 136315906;
                      *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
                      LOWORD(rhs.flags) = 2048;
                      *(&rhs.flags + 2) = v10;
                      HIWORD(rhs.epoch) = 2082;
                      v124 = v88;
                      *v125 = 2112;
                      *&v125[2] = v89;
                      _os_log_send_and_compose_impl();
                    }

                    goto LABEL_113;
                  }
                }
              }
            }

            goto LABEL_6;
          }

          v66 = 2;
          goto LABEL_161;
        }

        if (dword_1EAF169F0)
        {
          LODWORD(lhs.value) = 0;
          v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v64 = lhs.value;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v65 = v64;
          }

          else
          {
            v65 = v64 & 0xFFFFFFFE;
          }

          if (!v65)
          {
            goto LABEL_158;
          }

          if (v13)
          {
            v43 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v43 = "";
          }

          if (!v10)
          {
            v67 = "";
            goto LABEL_157;
          }

          goto LABEL_152;
        }
      }

LABEL_159:
      fpfs_StopFeedingTrack(v17, 0, 1);
      goto LABEL_6;
    }

    v18 = *(v14 + 108);
    if (v18 >= 0.0)
    {
      CMTimeMake(&rhs, 1, 100);
      *&lhs.value = v118;
      lhs.epoch = v119;
      CMTimeAdd(&time2, &lhs, &rhs);
      rhs = *(v17 + 172);
      if (CMTimeCompare(&rhs, &time2) >= 1)
      {
        goto LABEL_104;
      }

      v18 = *(v14 + 108);
    }

    if (v18 >= 0.0)
    {
      goto LABEL_23;
    }

    CMTimeMake(&rhs, 1, 100);
    *&lhs.value = v118;
    lhs.epoch = v119;
    CMTimeSubtract(&time2, &lhs, &rhs);
    rhs = *(v17 + 172);
    if ((CMTimeCompare(&rhs, &time2) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_104:
    fpfs_ranDryTimerProc_cold_3();
    goto LABEL_6;
  }

LABEL_7:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_9:
  if (v121)
  {
    CFRelease(v121);
  }
}

void fpfs_endTimerProc(const __CFArray *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v29 = 0;
  cf = 0;
  if (!a1)
  {
    fpfs_endTimerProc_cold_4();
    goto LABEL_23;
  }

  if (CFArrayGetCount(a1) != 2)
  {
    fpfs_endTimerProc_cold_1();
    goto LABEL_23;
  }

  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 1);
  CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
  v3 = CFArrayGetValueAtIndex(a1, 0);
  if (!v3)
  {
    fpfs_endTimerProc_cold_3();
    goto LABEL_23;
  }

  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v3, &v29, &cf, v4, v5, v6, v7, v8, v17, v18, v19, v20, v21, v23, v24.n128_i16[0], v24.n128_i8[2], v24.n128_u8[3], v24.n128_u32[1], v24.n128_i32[2], v24.n128_i32[3], v25, SWORD2(v25), v26.n128_i64[0], v26.n128_i64[1], v27, valuePtr, v29, cf, time2.value, *&time2.timescale, time2.epoch, v32, v33, v34, *&v35[1], v36, v37, v38, v39, v40, v41, v42, time.value, *&time.timescale, time.epoch, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  v9 = cf;
  if (!v10)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = v29;
    v13 = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 529) = 1;
    v14 = *(v13 + 840);
    voucher_adopt();
    if (FigRetainProxyIsInvalidated())
    {
LABEL_20:
      *(DerivedStorage + 529) = 0;

      fpfs_UnlockAndPostNotificationsWithCaller(v12);
      goto LABEL_21;
    }

    v15 = *(DerivedStorage + 1024);
    if (!v15)
    {
LABEL_19:
      fpfs_endEndedTracks(DerivedStorage);
      goto LABEL_20;
    }

    while (*(v15 + 32) != valuePtr)
    {
      v15 = *(v15 + 24);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    v26 = 0uLL;
    v27 = 0;
    fpfs_GetTime(DerivedStorage, &v26);
    v24 = 0uLL;
    v25 = 0;
    time = *(DerivedStorage + 1352);
    FPSTimelineConverterL3TimeToL2(&time, &v24);
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = *(v13 + 108);
    if (v16 >= 0.0)
    {
      *&time.value = v26;
      time.epoch = v27;
      time2 = *(v15 + 232);
      if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      *&time.value = v26;
      time.epoch = v27;
      *&time2.value = v24;
      time2.epoch = v25;
      if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      v16 = *(v13 + 108);
    }

    if (v16 >= 0.0 || (*&time.value = v26, time.epoch = v27, time2 = *(v15 + 232), CMTimeCompare(&time, &time2) > 0))
    {
      fpfs_endTimerProc_cold_2(v9, v15);
      goto LABEL_19;
    }

LABEL_18:
    fpfs_EndTrackPlayback(v15);
    goto LABEL_19;
  }

LABEL_21:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_23:
  if (v29)
  {
    CFRelease(v29);
  }
}

void fpfs_endEndedTracks(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 1024);
  if (v3)
  {
    v4 = DerivedStorage;
    do
    {
      v9 = 0uLL;
      v10 = 0;
      fpfs_GetTime(a1, &v9);
      v7 = 0uLL;
      v8 = 0;
      time1 = *(a1 + 1352);
      FPSTimelineConverterL3TimeToL2(&time1, &v7);
      if (*(v4 + 108) >= 0.0)
      {
        if (*(v3 + 198) && (*&time1.value = v9, time1.epoch = v10, time2 = *(v3 + 232), (CMTimeCompare(&time1, &time2) & 0x80000000) == 0) || (*&time1.value = v9, time1.epoch = v10, *&time2.value = v7, time2.epoch = v8, (CMTimeCompare(&time1, &time2) & 0x80000000) == 0))
        {
LABEL_10:
          if (dword_1EAF169F0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fpfs_EndTrackPlayback(v3);
          v5 = (a1 + 1024);
          goto LABEL_14;
        }
      }

      else if (*(v3 + 198))
      {
        *&time1.value = v9;
        time1.epoch = v10;
        time2 = *(v3 + 232);
        if (CMTimeCompare(&time1, &time2) <= 0)
        {
          goto LABEL_10;
        }
      }

      v5 = (v3 + 24);
LABEL_14:
      v3 = *v5;
    }

    while (*v5);
  }
}

BOOL fpfs_CheckItem(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == FigPlaybackItemGetTypeID() && (FigPlaybackItemGetFigBaseObject(cf), CMBaseObjectGetVTable() == &kFigPlaybackItemFigVTable) && *CMBaseObjectGetDerivedStorage() == a1)
  {
    return FigRetainProxyIsInvalidated() == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfsi_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!FigRetainProxyIsInvalidated())
  {
    CFRetain(a1);
    if (FigCFArrayContainsValue())
    {
      fpfs_RemoveFromPrebufferArrayGuts();
    }

    if (*(DerivedStorage + 463))
    {
      fpfs_RemoveFromPlayQueueGuts(v3, a1, 0);
    }

    fpfsi_InvalidateGuts(a1);
    CFRelease(a1);
  }

  return 0;
}

void fpfsi_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfsi_InvalidateGuts(a1);
  v3 = DerivedStorage[75];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[75] = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
  FigRetainProxyRelease();
  DerivedStorage[2] = 0;
  FigSimpleMutexDestroy();
  DerivedStorage[1] = 0;
  FigSimpleMutexDestroy();
  v4 = DerivedStorage[319];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[319] = 0;
  }

  v5 = DerivedStorage[302];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[302] = 0;
  }

  v6 = DerivedStorage[21];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[21] = 0;
  }

  v7 = DerivedStorage[234];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[236];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[236] = 0;
  }

  v9 = DerivedStorage[423];
  if (v9)
  {
    CFRelease(v9);
  }

  bzero(DerivedStorage, 0xD90uLL);
}

uint64_t fpfsi_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  v138 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = *DerivedStorage;
    if (!FigPropertyStorageCopyValue(*(DerivedStorage + 168), a2, a4))
    {
      return 0;
    }

    v10 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v10 + 8);
    if (FigRetainProxyIsInvalidated())
    {
      fpfsi_CopyProperty_cold_1(&range);
      goto LABEL_69;
    }

    if (CFEqual(a2, @"SeekableTimeIntervals"))
    {
      v11 = CMBaseObjectGetDerivedStorage();
      if (!*(v11 + 912))
      {
        value_low = 4294954432;
        goto LABEL_37;
      }

      v12 = v11;
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      values = Mutable;
      if (Mutable)
      {
        v15 = Mutable;
        memset(&cf[1], 0, 48);
        fpfsi_getPumpAvailableTimeRange(v12, &cf[1]);
        if (v16)
        {
          fpfsi_TotalTimeRangeInBuffer();
          value = range.start.value;
          flags = range.start.flags;
          timescale = range.start.timescale;
          if ((range.start.flags & 1) == 0)
          {
            value_low = 4294954513;
            goto LABEL_35;
          }

          v20 = *&range.duration.timescale;
          value_low = 4294954513;
          if ((range.duration.flags & 1) == 0 || range.duration.epoch || (v18 = *&range.start.epoch, range.duration.value < 0))
          {
LABEL_35:
            v41 = values;
            if (values)
            {
LABEL_36:
              CFRelease(v41);
            }

LABEL_37:
            fpfs_UnlockAndPostNotificationsWithCaller(v9);
            return value_low;
          }

          v19 = 0;
        }

        else
        {
          value = cf[1];
          flags = HIDWORD(cf[2]);
          timescale = cf[2];
          v18 = *&cf[3];
          v19 = cf[6];
          v20 = cf[5];
        }

        range.start.value = value;
        range.start.timescale = timescale;
        range.start.flags = flags;
        *&range.start.epoch = v18;
        *&range.duration.timescale = v20;
        range.duration.epoch = v19;
        FPSTimelineConverterL2TimeRangeToL3();
        v21 = lhs[0].flags;
        v135 = lhs[0].timescale;
        v134 = lhs[0].value;
        range = *&lhs[0].value;
        epoch = lhs[0].epoch;
        CMTimeRangeGetEnd(lhs, &range);
        rhs.value = lhs[0].value;
        v23 = lhs[0].flags;
        rhs.timescale = lhs[0].timescale;
        v24 = lhs[0].epoch;
        if (v21)
        {
          range.start.value = v134;
          range.start.timescale = v135;
          range.start.flags = v21;
          range.start.epoch = epoch;
          CMTimeGetSeconds(&range.start);
          FigCFDictionarySetDouble();
        }

        if (v23)
        {
          range.start.value = rhs.value;
          range.start.timescale = rhs.timescale;
          range.start.flags = v23;
          range.start.epoch = v24;
          CMTimeGetSeconds(&range.start);
          FigCFDictionarySetDouble();
        }

        range.start.value = v134;
        range.start.timescale = v135;
        range.start.flags = v21;
        range.start.epoch = epoch;
        FigCFDictionarySetCMTime();
        range.start.value = rhs.value;
        range.start.timescale = rhs.timescale;
        range.start.flags = v23;
        range.start.epoch = v24;
        FigCFDictionarySetCMTime();
        if ((*(v12 + 1316) & 0x1D) != 1)
        {
          v25 = *(v12 + 912);
          if (v25)
          {
            cf[0] = 0;
            v26 = FigGetAllocatorForMedia();
            FigBytePumpGetFigBaseObject(v25);
            v28 = v27;
            v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v29)
            {
              v29(v28, 0x1F0B1F278, v26, cf);
              v30 = cf[0];
            }

            else
            {
              v30 = 0;
            }

            CMTimeRangeMakeFromDictionary(&range, v30);
            *&lhs[0].value = *&range.start.value;
            *&lhs[0].epoch = *&range.start.epoch;
            v34 = range.duration.flags;
            lhs[1].timescale = range.duration.timescale;
            if ((range.duration.flags & 0x1D) == 1)
            {
              v35 = range.duration.epoch;
              v36 = FigGetAllocatorForMedia();
              range.start.value = lhs[1].value;
              range.start.timescale = lhs[1].timescale;
              range.start.flags = v34;
              range.start.epoch = v35;
              v37 = CMTimeCopyAsDictionary(&range.start, v36);
              if (v37)
              {
                v38 = v37;
                CFDictionarySetValue(v15, @"liveEdgeDuration", v37);
                CFRelease(v38);
              }
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }
          }
        }

        v39 = FigGetAllocatorForMedia();
        v40 = CFArrayCreate(v39, &values, 1, MEMORY[0x1E695E9C0]);
        if (v40)
        {
          value_low = 0;
          *a4 = v40;
        }

        else
        {
          value_low = FigSignalErrorAtGM();
        }

        goto LABEL_35;
      }

      fpfsi_CopyProperty_cold_2(&range);
LABEL_69:
      value_low = LODWORD(range.start.value);
      goto LABEL_37;
    }

    if (CFEqual(a2, @"PlayableTimeIntervals"))
    {
      TrackIDArray = fpfsi_copyPlayableTimeL3(a1, a4);
LABEL_25:
      value_low = TrackIDArray;
      goto LABEL_37;
    }

    if (CFEqual(a2, @"currentDate"))
    {
      TrackIDArray = fpfsi_CopyCurrentDate();
      goto LABEL_25;
    }

    if (CFEqual(a2, @"currentDateAndTime"))
    {
      TrackIDArray = fpfsi_CopyCurrentDateAndTime();
      goto LABEL_25;
    }

    if (CFEqual(a2, @"estimatedCurrentDate"))
    {
      memset(&range, 0, 24);
      fpfs_GetTime(DerivedStorage, &range);
      memset(&cf[1], 0, 24);
      lhs[0] = range.start;
      rhs = *(DerivedStorage + 1160);
      CMTimeAdd(&cf[1], lhs, &rhs);
      v42 = *(DerivedStorage + 912);
      if (v42)
      {
        lhs[0] = *&cf[1];
        TrackIDArray = FigBytePumpCopyEstimatedDateForTime(v42, &lhs[0].value, a4);
        goto LABEL_25;
      }

LABEL_59:
      value_low = 4294954513;
      goto LABEL_37;
    }

    if (CFEqual(a2, @"currentDatePeriod"))
    {
      *&v140 = a1;
      *(&v140 + 1) = a4;
      TrackIDArray = fpfsi_CopyCurrentDatePeriod(v140, v43, v44, v45, v46, v47, v117.value, *&v117.timescale, v118, *(&v118 + 1), v119, SHIDWORD(v119), v120, v121, v122, v123, *cf, *&cf[2], *&cf[4], cf[6], cf[7], values, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v127, v128, v129, v130, rhs.value, *&rhs.timescale, rhs.epoch, v132, lhs[0].value, *&lhs[0].timescale, lhs[0].epoch, lhs[1].value, *&lhs[1].timescale);
      goto LABEL_25;
    }

    if (CFEqual(a2, @"Timebase"))
    {
      Tag = *(DerivedStorage + 584);
      if (!Tag)
      {
LABEL_49:
        value_low = 0;
LABEL_50:
        *a4 = Tag;
        goto LABEL_37;
      }

LABEL_48:
      Tag = CFRetain(Tag);
      goto LABEL_49;
    }

    if (CFEqual(a2, @"Lyrics"))
    {
      value_low = 4294954514;
      goto LABEL_37;
    }

    if (CFEqual(a2, @"AvailableAlternateTrackGroups"))
    {
      goto LABEL_59;
    }

    if (CFEqual(a2, @"ChosenAlternateTrackIDDictionary"))
    {
      TrackIDArray = fpfsi_copyChosenAlternateTrackIDsDictionary(a1, a3, a4);
      goto LABEL_25;
    }

    if (CFEqual(a2, @"EstimatedDuration"))
    {
      memset(&range, 0, 24);
      value_low = fpfsi_GetDurationL3(a1, &range);
      if (value_low)
      {
        goto LABEL_37;
      }

      *&cf[1] = *&range.start.value;
      cf[3] = range.start.epoch;
      Tag = CMTimeCopyAsDictionary(&cf[1], a3);
      goto LABEL_50;
    }

    if (CFEqual(a2, @"AccurateDuration"))
    {
      goto LABEL_59;
    }

    if (CFEqual(a2, @"EndTime"))
    {
      TrackIDArray = fpfsi_copyEndTimeL3(a1, a4);
      goto LABEL_25;
    }

    if (CFEqual(a2, @"ReverseEndTime"))
    {
      *&range.start.value = *MEMORY[0x1E6960C70];
      range.start.epoch = *(MEMORY[0x1E6960C70] + 16);
      if ((*(DerivedStorage + 1388) & 0x1D) == 1)
      {
        *&range.start.value = *(DerivedStorage + 1376);
        range.start.epoch = *(DerivedStorage + 1392);
      }

      else
      {
        fpfsi_getSeekableTimeRange(&v118);
        *&cf[1] = v118;
        cf[3] = v119;
        FPSTimelineConverterL2TimeToL3(&cf[1], &range);
      }

      *&cf[1] = *&range.start.value;
      cf[3] = range.start.epoch;
      p_range = &cf[1];
      goto LABEL_84;
    }

    if (CFEqual(a2, @"TimeToPauseBuffering"))
    {
      v50 = (DerivedStorage + 1400);
      v51 = *(DerivedStorage + 1416);
LABEL_79:
      range.start.epoch = v51;
      *&range.start.value = *v50;
LABEL_83:
      p_range = &range;
LABEL_84:
      Tag = CMTimeCopyAsDictionary(&p_range->start, a3);
      goto LABEL_49;
    }

    if (CFEqual(a2, @"TimeToPausePlayback"))
    {
      *&range.start.value = *(DerivedStorage + 1424);
      v52 = *(DerivedStorage + 1440);
LABEL_82:
      range.start.epoch = v52;
      goto LABEL_83;
    }

    if (CFEqual(a2, @"AutomaticallyHandlesInterstitialEvents"))
    {
      value_low = 0;
      if (*(DerivedStorage + 467))
      {
        v53 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v53 = MEMORY[0x1E695E4C0];
      }

      v54 = *v53;
      goto LABEL_90;
    }

    if (CFEqual(a2, @"BasicsReadyForInspection"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 460);
LABEL_94:
      v57 = MEMORY[0x1E695E4C0];
      goto LABEL_95;
    }

    if (CFEqual(a2, @"CleanApertureRectangle"))
    {
      v58 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v58)
      {
        goto LABEL_59;
      }

      value_low = 4294954513;
      while (*(v58 + 48) != 1986618469 || !*(v58 + 112))
      {
        v58 = *(v58 + 24);
        if (!v58)
        {
          goto LABEL_37;
        }
      }

      v61 = *(v58 + 56);
      if (!v61)
      {
        goto LABEL_59;
      }

      CleanAperture = CMVideoFormatDescriptionGetCleanAperture(v61, 0);
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(CleanAperture);
      goto LABEL_123;
    }

    if (CFEqual(a2, @"EncodedDimensions"))
    {
      v59 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v59)
      {
        goto LABEL_59;
      }

      value_low = 4294954513;
      while (*(v59 + 48) != 1986618469 || !*(v59 + 112))
      {
        v59 = *(v59 + 24);
        if (!v59)
        {
          goto LABEL_37;
        }
      }

      v63 = *(v59 + 56);
      if (!v63)
      {
        goto LABEL_59;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(v63);
      v141.width = Dimensions.width;
      v141.height = Dimensions.height;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v141);
LABEL_123:
      *a4 = DictionaryRepresentation;
      goto LABEL_59;
    }

    if (CFEqual(a2, @"VideoTrackMatrix"))
    {
      v60 = *(DerivedStorage + 3368);
      if (v60)
      {
        Tag = CFRetain(v60);
      }

      else
      {
        v65 = *(MEMORY[0x1E695EFD0] + 16);
        *&range.start.value = *MEMORY[0x1E695EFD0];
        *&range.start.epoch = v65;
        *&range.duration.timescale = *(MEMORY[0x1E695EFD0] + 32);
        Tag = FigCreate3x3MatrixArrayFromCGAffineTransform(a3, &range);
      }

      if (!Tag)
      {
        fpfsi_CopyProperty_cold_3(&range);
        goto LABEL_69;
      }

      goto LABEL_49;
    }

    if (CFEqual(a2, @"TrackIDArray") || CFEqual(a2, @"ChosenTrackIDArray"))
    {
      TrackIDArray = fpfsi_createTrackIDArray();
      goto LABEL_25;
    }

    if (CFEqual(a2, @"HasEnabledAudio"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 793);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"HasEnabledVideo"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 794);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"HasDiscoveredVideo"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 795);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"EQPreset"))
    {
      v66 = *MEMORY[0x1E695E480];
      v67 = (DerivedStorage + 848);
      v68 = kCFNumberIntType;
LABEL_134:
      Tag = CFNumberCreate(v66, v68, v67);
      goto LABEL_49;
    }

    if (CFEqual(a2, @"SynchronizedLayers"))
    {
      Tag = *(DerivedStorage + 704);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"ReadBandwidth"))
    {
      v69 = *(DerivedStorage + 912);
      if (!v69)
      {
        goto LABEL_59;
      }

      v70 = @"FBP_NetworkBandwidth";
      goto LABEL_141;
    }

    if (CFEqual(a2, @"AvailableFileSize") || CFEqual(a2, @"FileSize"))
    {
      goto LABEL_59;
    }

    if (CFEqual(a2, @"AudioDeviceChannelMap"))
    {
      v72 = *(DerivedStorage + 1816);
      *a4 = v72;
      if (v72)
      {
        CFRetain(v72);
      }

      goto LABEL_147;
    }

    if (CFEqual(a2, @"MovieMatrix") || CFEqual(a2, @"ChapterNames") || CFEqual(a2, @"ChapterImageInfoArray") || CFEqual(a2, @"ChapterHREFs"))
    {
      goto LABEL_59;
    }

    if (CFEqual(a2, @"ApertureMode"))
    {
      if (*(DerivedStorage + 844))
      {
        v55 = &kFigPlaybackItemApertureMode_CleanAperture;
        v56 = *(DerivedStorage + 845);
        v57 = &kFigPlaybackItemApertureMode_ProductionAperture;
LABEL_95:
        if (!v56)
        {
          v55 = v57;
        }

        goto LABEL_97;
      }

      v55 = &kFigPlaybackItemApertureMode_EncodedPixels;
LABEL_97:
      Tag = *v55;
      goto LABEL_48;
    }

    if (CFEqual(a2, @"QualityGear"))
    {
      if (*(DerivedStorage + 912) && *(DerivedStorage + 1680))
      {
        TrackIDArray = fpfsi_copyPlaybackRateMonitorProperty(DerivedStorage);
        goto LABEL_25;
      }

      goto LABEL_59;
    }

    if (CFEqual(a2, @"AlternateStreamInformation"))
    {
      TrackIDArray = fpfsi_copyAlternateStreamInformation(DerivedStorage, a3, a4);
      goto LABEL_25;
    }

    if (CFEqual(a2, @"BufferState"))
    {
      if (*(DerivedStorage + 1896))
      {
        v55 = &kFigPlaybackItemBufferState_Full;
      }

      else
      {
        v55 = &kFigPlaybackItemBufferState_Filling;
      }

      goto LABEL_97;
    }

    if (CFEqual(a2, @"WillKeepUpPrediction"))
    {
      if (*(DerivedStorage + 524) == 1)
      {
        v55 = &kFigPlaybackItemWillKeepUpPrediction_LikelyToKeepUp;
      }

      else
      {
        v55 = &kFigPlaybackItemWillKeepUpPrediction_UnlikelyToKeepUp;
      }

      goto LABEL_97;
    }

    if (CFEqual(a2, @"AbsoluteTimeWhenReadyToPlay"))
    {
      v66 = *MEMORY[0x1E695E480];
      v67 = (DerivedStorage + 2088);
LABEL_330:
      v68 = kCFNumberDoubleType;
      goto LABEL_134;
    }

    if (CFEqual(a2, @"RestrictsAutomaticMediaSelectionToAvailableOfflineOptions"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 1844);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"RequiresExternalProtection"))
    {
      v73 = *MEMORY[0x1E695E4C0];
      v74 = *(DerivedStorage + 1848);
      if (v74)
      {
        range.start.value = 0;
        CFNumberGetValue(v74, kCFNumberSInt64Type, &range);
        v75 = *MEMORY[0x1E695E4D0];
        if (range.start.value)
        {
          v54 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v54 = v73;
        }

        if (v54 != v73)
        {
          goto LABEL_449;
        }
      }

      else
      {
        v75 = *MEMORY[0x1E695E4D0];
      }

      ExternalProtectionMethodRequiredForPlayback = fpfsi_GetExternalProtectionMethodRequiredForPlayback();
      if (ExternalProtectionMethodRequiredForPlayback)
      {
        v54 = v75;
      }

      else
      {
        v54 = v73;
      }

      *(DerivedStorage + 3000) = ExternalProtectionMethodRequiredForPlayback;
LABEL_449:
      value_low = 0;
LABEL_90:
      *a4 = v54;
      goto LABEL_37;
    }

    if (CFEqual(a2, @"AccessLog"))
    {
      if (!*(DerivedStorage + 1920))
      {
        goto LABEL_59;
      }

      range.start.value = 0;
      fpfs_UpdateCurrentAccessLogEntryPlayTimes(DerivedStorage);
      if (*(DerivedStorage + 2144))
      {
        v77 = fpfs_CreateAccessLogEntryWithUnlock(a1, &range) == 0;
        v76 = range.start.value;
      }

      else
      {
        v76 = 0;
        v77 = 1;
      }

      if (v76)
      {
        value_low = v77;
      }

      else
      {
        value_low = 0;
      }

      v81 = *(DerivedStorage + 1920);
      if (v81)
      {
        MutableCopy = CFArrayCreateMutableCopy(a3, 0, v81);
        if (MutableCopy)
        {
          if (value_low)
          {
            v83 = *(DerivedStorage + 2608);
            if (v83)
            {
              CFDictionarySetValue(v76, @"c-startup_perf", v83);
            }

            CFArrayAppendValue(MutableCopy, v76);
            value_low = 0;
            *a4 = MutableCopy;
LABEL_219:
            v41 = v76;
            goto LABEL_36;
          }
        }

        else
        {
          value_low = FigSignalErrorAtGM();
        }
      }

      else
      {
        MutableCopy = 0;
        value_low = 0;
      }

      *a4 = MutableCopy;
      if (!v76)
      {
        goto LABEL_37;
      }

      goto LABEL_219;
    }

    if (CFEqual(a2, @"ErrorLog"))
    {
      v79 = *(DerivedStorage + 912);
      if (v79)
      {
        if (*(DerivedStorage + 1928))
        {
          CFRelease(*(DerivedStorage + 1928));
          *(DerivedStorage + 1928) = 0;
          v79 = *(DerivedStorage + 912);
        }

        FigBytePumpGetFigBaseObject(v79);
        value_low = CMBaseObjectCopyProperty(v80, 0x1F0B1EFD8, a3, DerivedStorage + 1928);
      }

      else
      {
        value_low = 0;
      }

      v84 = *(DerivedStorage + 1928);
      if (!v84)
      {
        goto LABEL_59;
      }

      PublicCopy = FigErrorLogCreatePublicCopy(a3, v84);
      *a4 = PublicCopy;
      if (PublicCopy)
      {
        goto LABEL_37;
      }

      goto LABEL_227;
    }

    if (CFEqual(a2, @"CanPlayFastForward") || CFEqual(a2, @"CanPlayFastReverse") || CFEqual(a2, @"CanPlayReverse"))
    {
      if (!*(DerivedStorage + 912))
      {
        goto LABEL_59;
      }

      if (*(DerivedStorage + 40) && *(DerivedStorage + 1713) == 1)
      {
        goto LABEL_422;
      }

LABEL_423:
      v55 = MEMORY[0x1E695E4C0];
      goto LABEL_97;
    }

    if (CFEqual(a2, @"SupportsFrameStepping"))
    {
      goto LABEL_423;
    }

    if (CFEqual(a2, @"MediaSelectionArray"))
    {
      Tag = *(DerivedStorage + 1672);
      if (!Tag)
      {
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"SelectedMediaArray"))
    {
      v86 = *(DerivedStorage + 1768);
      if (!v86)
      {
        goto LABEL_59;
      }

      Copy = CFArrayCreateCopy(a3, v86);
      *a4 = Copy;
      if (Copy)
      {
LABEL_147:
        value_low = 0;
        goto LABEL_37;
      }

LABEL_227:
      TrackIDArray = FigSignalErrorAtGM();
      goto LABEL_25;
    }

    if (CFEqual(a2, @"EligibleForDSPBasedEnhancedDialogue"))
    {
      if (*(DerivedStorage + 1776))
      {
        goto LABEL_423;
      }

LABEL_422:
      v55 = MEMORY[0x1E695E4D0];
      goto LABEL_97;
    }

    if (CFEqual(a2, @"MediaPresentationLanguages"))
    {
      Tag = *(DerivedStorage + 1784);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"kFigPlaybackItemProperty_MediaPresentationCharacteristics"))
    {
      Tag = *(DerivedStorage + 1792);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"ItemCoordinationMediaSelectionCriteria"))
    {
      Tag = *(DerivedStorage + 1808);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"PreferredMaximumBufferDuration"))
    {
      v88 = *MEMORY[0x1E695E480];
      v89 = (DerivedStorage + 2260);
LABEL_325:
      v92 = kCFNumberSInt32Type;
LABEL_326:
      Tag = CFNumberCreate(v88, v92, v89);
      if (!Tag)
      {
        value_low = 4294954510;
        goto LABEL_37;
      }

      goto LABEL_49;
    }

    if (CFEqual(a2, @"MaximumTrailingBufferDuration"))
    {
      v88 = *MEMORY[0x1E695E480];
      v89 = (DerivedStorage + 2304);
      goto LABEL_325;
    }

    if (CFEqual(a2, @"TextMarkupArray"))
    {
      Tag = *(DerivedStorage + 1824);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"TextHighlightArray"))
    {
      Tag = *(DerivedStorage + 1832);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"LegibleOutputs"))
    {
      Tag = *(DerivedStorage + 1880);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"MetadataOutputs"))
    {
      Tag = FigXMLNodeGetTag(*(DerivedStorage + 1888));
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"VisualContextArray"))
    {
      if (FigStreamingItemCombinedVideoDestinationGetCountOfVisualContexts(*(DerivedStorage + 656)))
      {
        v90 = FigStreamingItemCombinedVideoDestinationCopyVisualContexts(*(DerivedStorage + 656));
        v91 = CFArrayCreateCopy(a3, v90);
        *a4 = v91;
        if (v91)
        {
          value_low = 0;
        }

        else
        {
          value_low = FigSignalErrorAtGM();
        }

        if (!v90)
        {
          goto LABEL_37;
        }

        v41 = v90;
        goto LABEL_36;
      }

      goto LABEL_436;
    }

    if (CFEqual(a2, @"Volume"))
    {
      v88 = *MEMORY[0x1E695E480];
      v89 = (DerivedStorage + 1840);
      v92 = kCFNumberFloat32Type;
      goto LABEL_326;
    }

    if (CFEqual(a2, @"DisplayNonForcedSubtitles"))
    {
      v93 = MEMORY[0x1E695E4D0];
      v94 = *(DerivedStorage + 531);
      goto LABEL_273;
    }

    if (CFEqual(a2, @"allowProgressiveSwitchUp"))
    {
      v93 = MEMORY[0x1E695E4D0];
      v94 = *(DerivedStorage + 554);
      goto LABEL_273;
    }

    if (CFEqual(a2, @"allowProgressiveStartup"))
    {
      v93 = MEMORY[0x1E695E4D0];
      v94 = *(DerivedStorage + 555);
      goto LABEL_273;
    }

    if (CFEqual(a2, @"allowProgressiveResume"))
    {
      v93 = MEMORY[0x1E695E4D0];
      v94 = *(DerivedStorage + 556);
LABEL_273:
      if (!v94)
      {
        v93 = MEMORY[0x1E695E4C0];
      }

      Tag = *v93;
      if (!*v93)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"AutomaticallyLoadedAssetProperties"))
    {
      Tag = *(DerivedStorage + 144);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"AutomaticallyLoadedAssetTrackProperties"))
    {
      Tag = *(DerivedStorage + 152);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"MediaKind"))
    {
      Tag = *(DerivedStorage + 2392);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"TimePitchAlgorithm"))
    {
      Tag = *(DerivedStorage + 856);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"CanPlayUpTo2xForward"))
    {
      goto LABEL_422;
    }

    if (CFEqual(a2, @"BandwidthCap"))
    {
      v88 = *MEMORY[0x1E695E480];
      v89 = (DerivedStorage + 2412);
      goto LABEL_325;
    }

    if (CFEqual(a2, @"BandwidthCapForExpensiveNetwork"))
    {
      Tag = *(DerivedStorage + 2416);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"TimeOffsetFromLive"))
    {
      v69 = *(DerivedStorage + 912);
      if (!v69)
      {
        v50 = (DerivedStorage + 632);
        v51 = *(DerivedStorage + 648);
        goto LABEL_79;
      }

      v70 = @"FBP_PrebufferReservation";
      goto LABEL_141;
    }

    if (CFEqual(a2, @"RecommendedTimeOffsetFromLive"))
    {
      TrackIDArray = fpfsi_CopyPumpSecondsPropertyAsTime(DerivedStorage, 0x1F0B1F298, a3, a4);
      goto LABEL_25;
    }

    if (CFEqual(a2, @"AutomaticallyPreservesTimeOffsetFromLive"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 465);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"HasEnqueuedFirstVideoFrame"))
    {
      v95 = fpfsi_copyCurrentVideoDestination();
      if (!v95)
      {
        goto LABEL_423;
      }

      v96 = v95;
      IsAnyOutputReadyToRender = FigAggregateVideoDestinationIsAnyOutputReadyToRender(v95);
      CFRelease(v96);
      if (!IsAnyOutputReadyToRender)
      {
        goto LABEL_423;
      }

      goto LABEL_422;
    }

    if (CFEqual(a2, @"ImageQueueGauge"))
    {
      Tag = fpfsi_copyImageQueueGauge(a1);
      goto LABEL_49;
    }

    if (CFEqual(a2, @"PriorImageQueueGauge"))
    {
      Tag = *(DerivedStorage + 728);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"TaggedRangeMetadataArray"))
    {
      v98 = *(DerivedStorage + 2624);
      if (v98)
      {
        *a4 = CFRetain(v98);
      }

      else
      {
        fpfsi_UpdateTaggedRangeMetadataFromPumpAndNotifyIfNeeded();
      }

      if (*(DerivedStorage + 2624))
      {
        value_low = 0;
      }

      else
      {
        value_low = 4294954513;
      }

      goto LABEL_37;
    }

    if (CFEqual(a2, @"CountOfTaggedRangeMetadataArrayListeners"))
    {
      v88 = *MEMORY[0x1E695E480];
      v89 = (DerivedStorage + 2632);
      v92 = kCFNumberCFIndexType;
      goto LABEL_326;
    }

    if (CFEqual(a2, @"MinimizeNetworkingWhilePaused"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 532);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"VariantPreferences"))
    {
      v88 = *MEMORY[0x1E695E480];
      v89 = (DerivedStorage + 560);
      goto LABEL_325;
    }

    if (CFEqual(a2, @"AudioSampleRateCap"))
    {
      v66 = *MEMORY[0x1E695E480];
      v67 = (DerivedStorage + 2544);
      goto LABEL_330;
    }

    if (CFEqual(a2, @"SuppressesAudioOnlyVariants"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 558);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"LiveUpdateInterval"))
    {
      range.start.value = 0;
      v99 = *(DerivedStorage + 912);
      if (!v99)
      {
        goto LABEL_59;
      }

      v100 = FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject(v99);
      v102 = CMBaseObjectCopyProperty(v101, 0x1F0B1F5F8, v100, &range);
      v54 = range.start.value;
      if (!range.start.value || v102)
      {
        if (v102)
        {
          value_low = v102;
        }

        else
        {
          value_low = 4294954510;
        }

        goto LABEL_37;
      }

      goto LABEL_449;
    }

    if (CFEqual(a2, @"ProgressToPlayThrough"))
    {
      LODWORD(cf[1]) = 0;
      if (*(DerivedStorage + 524) == 1 || (v103 = *(DerivedStorage + 1680)) != 0 && FigAlternateIsIFrameOnly(v103) || *(DerivedStorage + 2992))
      {
        LODWORD(cf[1]) = 1065353216;
      }

      else if (*(DerivedStorage + 912))
      {
        memset(&v117, 0, sizeof(v117));
        fpfs_GetItemBufferedDuration(a1, &v117, &range, 0);
        fpfs_IsItemReadyToStart(a1, &v117, &range, &cf[1], 0, 0);
      }

      v66 = *MEMORY[0x1E695E480];
      v67 = &cf[1];
      v68 = kCFNumberFloat32Type;
      goto LABEL_134;
    }

    if (CFEqual(a2, @"AudioSpatializationAllowed"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 869);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"StereoAudioSpatializationAllowed"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 870);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"IsRenderingSpatialAudio"))
    {
      v104 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (v104)
      {
        v55 = MEMORY[0x1E695E4C0];
        while (*(v104 + 48) != 1936684398 || !*(v104 + 112))
        {
          v104 = *(v104 + 24);
          if (!v104)
          {
            goto LABEL_97;
          }
        }

        fpfsi_CopyProperty_cold_4();
        v55 = range.start.value;
        goto LABEL_97;
      }

      goto LABEL_423;
    }

    if (CFEqual(a2, @"LoudnessInfo"))
    {
      Tag = *(DerivedStorage + 2400);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"AudioProcessingTap"))
    {
      Tag = *(DerivedStorage + 3128);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"AudioProcessingUnits"))
    {
      Tag = *(DerivedStorage + 3144);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"AudioCurves"))
    {
      Tag = *(DerivedStorage + 3152);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"PreferSDRVideo"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 872);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"ConfigurationGroup"))
    {
      v105 = *(DerivedStorage + 912);
      if (v105)
      {
        range.start.value = 0;
        v106 = FigGetAllocatorForMedia();
        FigBytePumpGetFigBaseObject(v105);
        CMBaseObjectCopyProperty(v107, 0x1F0B1F2D8, v106, &range);
        v108 = FigRCLCopyConfigurationGroupName(range.start.value);
        if (v108)
        {
          v109 = v108;
          *a4 = CFRetain(v108);
          CFRelease(v109);
          value_low = 0;
        }

        else
        {
          value_low = 4294954513;
        }

        v41 = range.start.value;
        if (!range.start.value)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      goto LABEL_59;
    }

    if (CFEqual(a2, @"StartsOnFirstEligibleVariant"))
    {
      v55 = MEMORY[0x1E695E4D0];
      if (*(DerivedStorage + 2892) != 1)
      {
        v55 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_97;
    }

    if (CFEqual(a2, @"CurrentStableVariantID"))
    {
      v110 = *(DerivedStorage + 1680);
      if (!v110)
      {
        goto LABEL_59;
      }

      Tag = FigAlternateGetStableStreamIdentifier(v110);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"CoordinationIdentifier"))
    {
      Tag = *(DerivedStorage + 3216);
      if (!Tag)
      {
        v111 = (DerivedStorage + 3216);
        FPSupport_CreateDefaultCoordinationIdentifierForPlaybackItem(a1, v111);
        Tag = *v111;
        if (!*v111)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"ParticipatesInCoordinatedPlayback"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 3224);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"interstitialEvents"))
    {
      Tag = *(DerivedStorage + 3240);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"currentInterstitialEvent"))
    {
      Tag = *(DerivedStorage + 3232);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"InterstitialEventItemTimeOffset"))
    {
      Tag = *(DerivedStorage + 3248);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"TransientTimebaseForCoordinatedPlaybackSynchronization"))
    {
      Tag = *(DerivedStorage + 568);
      if (!Tag)
      {
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"IsCoordinatedPlaybackSupported"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 3256);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"ReportingAgent"))
    {
      Tag = *(DerivedStorage + 2568);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"IsReadyForPlayback"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 469);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"AutoSwitchAtmosVariants"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 564);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"MaximumTimePlayedToSinceLastSeek"))
    {
      fpfsi_updateMaxPlayThroughTime();
      *&range.start.value = *(DerivedStorage + 3272);
      v52 = *(DerivedStorage + 3288);
      goto LABEL_82;
    }

    if (CFEqual(a2, @"IsPlayingIFrameOnly"))
    {
      v112 = *(DerivedStorage + 1680);
      if (!v112 || !FigAlternateIsIFrameOnly(v112))
      {
        goto LABEL_423;
      }

      goto LABEL_422;
    }

    if (CFEqual(a2, @"PrefersConcurrentSwitching"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(DerivedStorage + 553);
      goto LABEL_94;
    }

    if (CFEqual(a2, @"SpeedRampData"))
    {
      TrackIDArray = FPSTimelineConverterCopyProperty(*(DerivedStorage + 3376), @"SpeedRampData", 0, a4);
      goto LABEL_25;
    }

    if (CFEqual(a2, @"OverlapRange"))
    {
      Tag = *(DerivedStorage + 3384);
      if (!Tag)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"UniqueInstanceIdentifier"))
    {
      v113 = *(DerivedStorage + 3392);
      if (v113)
      {
        Tag = CFStringCreateCopy(a3, v113);
        goto LABEL_49;
      }

      goto LABEL_436;
    }

    if (CFEqual(a2, @"MetricEventTimeline"))
    {
      Tag = *(DerivedStorage + 3400);
      if (Tag)
      {
        goto LABEL_48;
      }

LABEL_436:
      value_low = 0;
      *a4 = 0;
      goto LABEL_37;
    }

    if (CFEqual(a2, @"OfflineInterstitialURLs"))
    {
      range.start.value = 0;
      v114 = *(DerivedStorage + 912);
      if (v114)
      {
        v115 = 0x1F0B1EEF8;
LABEL_443:
        FigBytePumpGetFigBaseObject(v114);
        value_low = CMBaseObjectCopyProperty(v116, v115, a3, &range);
        if (value_low)
        {
          goto LABEL_37;
        }

        v54 = range.start.value;
        goto LABEL_449;
      }
    }

    else
    {
      if (!CFEqual(a2, @"OfflineInterstitialListJSON"))
      {
        if (!CFEqual(a2, @"nearFutureLiveBufferInfo"))
        {
          if (!CFEqual(a2, @"MissingAudioEditList"))
          {
            value_low = 4294954512;
            goto LABEL_37;
          }

          v55 = MEMORY[0x1E695E4D0];
          v56 = *(DerivedStorage + 3464);
          goto LABEL_94;
        }

        v69 = *(DerivedStorage + 912);
        if (!v69)
        {
          goto LABEL_59;
        }

        v70 = @"FBP_NearFutureLiveBufferInfo";
LABEL_141:
        FigBytePumpGetFigBaseObject(v69);
        TrackIDArray = CMBaseObjectCopyProperty(v71, v70, a3, a4);
        goto LABEL_25;
      }

      range.start.value = 0;
      v114 = *(DerivedStorage + 912);
      if (v114)
      {
        v115 = 0x1F0B1EF18;
        goto LABEL_443;
      }
    }

    v54 = 0;
    goto LABEL_449;
  }

  return FigSignalErrorAtGM();
}

void fpfsi_ResetPrebufferingItem()
{
  if (*(CMBaseObjectGetDerivedStorage() + 463))
  {
    if (!dword_1EAF169F0)
    {
      return;
    }
  }

  else
  {
    fpfsi_ResetPlaybackItem();
    if (!dword_1EAF169F0)
    {
      return;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void fpfs_FlushCurrentPlayback()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 80);
  if (v1)
  {
    v2 = DerivedStorage;
    v3 = *(DerivedStorage + 688);
    *(DerivedStorage + 688) = 0;
    fpfs_StopPlayingItemWithOSStatus(DerivedStorage, v1, 4294951599);
    *(v2 + 688) = v3;
  }
}

BOOL fpfs_TrackMightRenderMoreAudio(uint64_t a1)
{
  v2 = *(a1 + 16);
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a1 + 198) && (v5 = DerivedStorage, fpfsi_PumpHasEndedOrBufferedBeyondEndTime()) && !fpfsi_AreAnyOtherTracksOfMediaTypeAwaitingPlayingState(v2, a1))
  {
    return fpfs_getNext(v5, v2) != 0;
  }

  else
  {
    return 1;
  }
}

uint64_t fpfsi_AreAnyOtherTracksOfMediaTypeAwaitingPlayingState(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v3)
  {
    return 0;
  }

  while (v3 == a2 || *(v3 + 48) != 1936684398 || *(v3 + 168) >= 5u)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

void fpfsi_logAttachMarker(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = *(a1 + 112);
  if (v2)
  {
    if (*(v2 + 32))
    {
      v3 = FigCFCopyCompactDescription();
      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

void fpfsi_clearOutOfBandSubtitleObjects()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 896);
  if (v1)
  {
    FigSyncMomentSourceDestroy(v1);
    *(DerivedStorage + 896) = 0;
  }

  v2 = *(DerivedStorage + 888);
  if (v2)
  {
    FigOutOfBandTrackControllerInvalidate(v2);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier();
    v3 = *(DerivedStorage + 888);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 888) = 0;
    }
  }
}

void fpfsi_handleOutOfBandTrackPlaybackFailed()
{
  v0 = FigCFCopyCompactDescription();
  if (v0)
  {

    CFRelease(v0);
  }
}

void fpfsi_handleOutOfBandTrackSubtitleChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v7 = DerivedStorage;
    if (!FigRetainProxyIsInvalidated() && !*(v7 + 846) && !*(CMBaseObjectGetDerivedStorage() + 52))
    {
      v8 = *v7;
      v9 = *v7;

      fpfs_PostNotificationWhenUnlocked(v8, @"SubtitleChanged", v9, a5);
    }
  }
}

void fpfs_CheckIfPlaybackStateChangedAndNotifyBeforeUnlock(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  fpfs_getPlaybackState(a1, &v6, (DerivedStorage + 168));
  v3 = v6;
  if (v6 != *(DerivedStorage + 164))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    fpfs_EnqueueNotificationWithoutLocking(a1, @"PlaybackStateDidChange", a1, Mutable);
    *(DerivedStorage + 164) = v3;
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

uint64_t FigBytePumpCopyEstimatedDateForTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  return v6(a1, &v8, a3);
}

uint64_t fpfsi_copyChosenAlternateTrackIDsDictionary(uint64_t a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  TrackOfType = fpfs_LastTrackOfType(a1, 1936684398, 0);
  if (!TrackOfType)
  {
    return 4294954513;
  }

  v6 = TrackOfType;
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v8 = Mutable;
  valuePtr = *(v6 + 32);
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v8, @"Audio", v9);
  CFRelease(v9);
  result = 0;
  *a3 = v8;
  return result;
}

uint64_t fpfsi_GetDurationL3(uint64_t a1, __n128 *a2)
{
  v10 = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v8 = v10;
  v9 = v11;
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Duration = fpfsi_GetDuration(a1, &v10);
    if (!Duration)
    {
      v6 = v10;
      v7 = v11;
      FPSTimelineConverterL2TimeToL3(&v6, &v8);
    }

    *a2 = v8;
    a2[1].n128_u64[0] = v9;
  }

  else
  {
    fpfsi_GetDurationL3_cold_1(&v6);
    return v6.n128_u32[0];
  }

  return Duration;
}

uint64_t fpfsi_copyEndTimeL3(uint64_t a1, CFDictionaryRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *MEMORY[0x1E6960C70];
  v20 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v21 = v7;
  if ((*(DerivedStorage + 1364) & 0x1D) == 1)
  {
    Duration = 0;
    v21 = *(DerivedStorage + 1368);
    v20 = *(DerivedStorage + 1352);
  }

  else if ((*(DerivedStorage + 492) & 1) == 0 || (v9 = *(DerivedStorage + 1680)) != 0 && (v14 = v6, IsIFrameOnly = FigAlternateIsIFrameOnly(v9), v6 = v14, IsIFrameOnly))
  {
    v18 = v6;
    v19 = v7;
    Duration = fpfsi_GetDuration(a1, &v18);
    if (!Duration && (BYTE12(v18) & 0x1D) == 1)
    {
      memset(&time, 0, sizeof(time));
      fpfsi_getSeekableTimeRange(&time);
      range = time;
      CMTimeRangeGetEnd(&v16, &range);
      p_time = &v16;
    }

    else
    {
      *&time.start.value = v18;
      time.start.epoch = v19;
      p_time = &time;
    }

    FPSTimelineConverterL2TimeToL3(p_time, &v20);
  }

  else
  {
    *&time.start.value = *(v5 + 480);
    time.start.epoch = *(v5 + 496);
    FPSTimelineConverterL2TimeToL3(&time, &v20);
    Duration = 0;
  }

  *&time.start.value = v20;
  time.start.epoch = v21;
  AllocatorForMedia = FigGetAllocatorForMedia();
  *a2 = CMTimeCopyAsDictionary(&time.start, AllocatorForMedia);
  return Duration;
}

uint64_t fpfsi_copyAlternateStreamInformation(uint64_t a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v6 = *(a1 + 1664);
  if (!v6)
  {
    goto LABEL_18;
  }

  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    goto LABEL_18;
  }

  v8 = Count;
  v9 = *(a1 + 1680);
  v28 = a3;
  v10 = v9 ? FigAlternateGetPeakBitRate(v9) : 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 2;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1664), v11);
    PeakBitRate = FigAlternateGetPeakBitRate(ValueAtIndex);
    if (++v11 >= v8)
    {
      goto LABEL_15;
    }

    v17 = v14;
    do
    {
      v18 = CFArrayGetValueAtIndex(*(a1 + 1664), v17 - 1);
      v19 = FigAlternateGetPeakBitRate(v18);
    }

    while (v19 != PeakBitRate && v17++ < v8);
    if (v19 != PeakBitRate)
    {
LABEL_15:
      ++v12;
      if (PeakBitRate < v10)
      {
        ++v13;
      }
    }

    ++v14;
  }

  while (v11 != v8);
  valuePtr = v12;
  v29 = v13;
  a3 = v28;
  if (!v12)
  {
LABEL_18:
    valuePtr = 1;
  }

  keys[0] = @"StreamCount";
  v21 = *MEMORY[0x1E695E480];
  v22 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  values = v22;
  keys[1] = @"CurrentStreamIndex";
  v23 = CFNumberCreate(v21, kCFNumberIntType, &v29);
  cf = v23;
  v24 = 4294954510;
  if (v22)
  {
    v25 = v23 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = CFDictionaryCreate(a2, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a3 = v26;
    if (v26)
    {
      v24 = 0;
    }

    else
    {
      v24 = 4294954510;
    }

    v22 = values;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

uint64_t fpfsi_GetExternalProtectionMethodRequiredForPlayback()
{
  valuePtr = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v0)
  {
    return 0;
  }

  while (*(v0 + 48) != 1986618469)
  {
    v0 = *(v0 + 24);
    if (!v0)
    {
      return 0;
    }
  }

  v1 = *(v0 + 400);
  if (!v1)
  {
    return 0;
  }

  number = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(v1, @"ExternalProtectionMethodsRequiredForPlayback", AllocatorForMedia, &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      if (number)
      {
        CFRelease(number);
      }
    }
  }

  return valuePtr;
}

uint64_t fpfsi_CopyPumpSecondsPropertyAsTime(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v4 = *(a1 + 912);
  if (!v4)
  {
    return 4294954513;
  }

  number = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBytePumpGetFigBaseObject(v4);
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    return 4294954514;
  }

  result = v11(v10, a2, AllocatorForMedia, &number);
  if (!result)
  {
    valuePtr = 0.0;
    CFNumberGetValue(number, kCFNumberDoubleType, &valuePtr);
    CMTimeMakeWithSeconds(&v14, valuePtr, 1000000);
    v13 = v14;
    *a4 = CMTimeCopyAsDictionary(&v13, a3);
    if (number)
    {
      CFRelease(number);
    }

    return 0;
  }

  return result;
}

uint64_t FigAggregateVideoDestinationIsAnyOutputReadyToRender(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t fpfs_IsItemReadyToStart(uint64_t a1, CMTime *a2, uint64_t a3, float *a4, CMTime *a5, uint64_t a6)
{
  v51 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47 = 0uLL;
  v48 = 0;
  fpfs_GetApproximateTime(DerivedStorage, &v47);
  v46 = **&MEMORY[0x1E6960C70];
  v44 = v46;
  v45 = v46;
  v11 = *(DerivedStorage + 1024);
  if (v11)
  {
    v38 = a6;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *(v11 + 196);
      v17 = *(DerivedStorage + 976 + 16 * v16);
      v18 = *(v11 + 48);
      v19 = (1 << v16) | v15;
      if (v18 == 1936684398)
      {
        v20 = 1;
      }

      else
      {
        v20 = v14;
      }

      if (v18 != 1935832172 && v18 != 1986618469 && v18 != 1936684398)
      {
        v19 = v15;
        v20 = v14;
      }

      if (*(v11 + 64) == v17)
      {
        v15 = v19;
        v14 = v20;
      }

      v23 = *(v11 + 168);
      if (v23 == 6)
      {
        v12 = 1;
      }

      if (v18 == 1986618469 && v23 == 5)
      {
        v25 = CMBaseObjectGetDerivedStorage();
        if (!fpfs_CanRenderVideo(v25, a1))
        {
          v13 = 1;
        }
      }

      if (v12 && *(v11 + 120))
      {
        break;
      }

      v11 = *(v11 + 24);
      if (!v11)
      {
        goto LABEL_31;
      }
    }

    v12 = 0;
LABEL_31:
    if (!v12 && v13 && !v14)
    {
      if (dword_1EAF169F0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v12 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        v12 = 1;
      }
    }

    a6 = v38;
  }

  else
  {
    v15 = 0;
    v12 = 0;
  }

  v27 = *(DerivedStorage + 1072);
  if (v15 == v27)
  {
    goto LABEL_60;
  }

  v28 = *(DerivedStorage + 472);
  if (*(DerivedStorage + 553))
  {
    if (!*(DerivedStorage + 472))
    {
      goto LABEL_45;
    }

    if (!*(DerivedStorage + 1744))
    {
      v15 |= 1u;
      if (!*(DerivedStorage + 473))
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

    v28 = *(DerivedStorage + 475);
  }

  if (v28)
  {
    v15 |= 1u;
  }

LABEL_45:
  v29 = *(DerivedStorage + 473);
  if (*(DerivedStorage + 553))
  {
    if (!*(DerivedStorage + 473))
    {
      goto LABEL_51;
    }

LABEL_47:
    if (!*(DerivedStorage + 1744))
    {
      v15 |= 2u;
      if (!*(DerivedStorage + 474))
      {
        goto LABEL_58;
      }

LABEL_53:
      if (!*(DerivedStorage + 1744))
      {
LABEL_56:
        v31 = v15 | 4;
        goto LABEL_59;
      }

      v30 = *(DerivedStorage + 477);
      goto LABEL_55;
    }

    v29 = *(DerivedStorage + 476);
  }

  if (v29)
  {
    v15 |= 2u;
  }

LABEL_51:
  v30 = *(DerivedStorage + 474);
  if (*(DerivedStorage + 553))
  {
    if (!*(DerivedStorage + 474))
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

LABEL_55:
  if (v30)
  {
    goto LABEL_56;
  }

LABEL_58:
  v31 = v15;
LABEL_59:
  v15 = *(DerivedStorage + 1072);
  if (v31 == v27)
  {
LABEL_60:
    v32 = v15 & 3;
    if (!v12)
    {
      if (!a4)
      {
        goto LABEL_75;
      }

      goto LABEL_64;
    }

    if (fpfsi_PumpHasEndedOrBufferedBeyondEndTime())
    {
      if (a4)
      {
        *a4 = 1.0;
      }

LABEL_70:
      v33 = 1;
      goto LABEL_76;
    }

    v50 = *a2;
    *&lhs.value = v47;
    lhs.epoch = v48;
    v33 = fpfs_CheckCanKeepUp(a1, &v50, &lhs, v15 & 3, a3, a4, &v44, a6);
    if (v33)
    {
      goto LABEL_76;
    }

    if (*(DerivedStorage + 1896) == 1)
    {
      if (dword_1EAF169F0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(type.value) = 0;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        v33 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_76;
      }

      goto LABEL_70;
    }

LABEL_75:
    v33 = 0;
    goto LABEL_76;
  }

  v32 = v31 & 3;
  if (!a4)
  {
    goto LABEL_75;
  }

LABEL_64:
  v50 = *a2;
  *&lhs.value = v47;
  lhs.epoch = v48;
  fpfs_CheckCanKeepUp(a1, &v50, &lhs, v32, a3, a4, &v44, a6);
  v33 = 0;
  *a4 = fminf(*a4, 0.9);
LABEL_76:
  if (v44.flags)
  {
    v36 = CMBaseObjectGetDerivedStorage();
    lhs = v44;
    rhs = *(DerivedStorage + 1160);
    CMTimeSubtract(&v50, &lhs, &rhs);
    v44 = v50;
    v37 = *(v36 + 108);
    if (v37 <= 2.0 && v37 >= 0.0 && (*(DerivedStorage + 420) & 1) != 0)
    {
      memset(&v50, 0, sizeof(v50));
      lhs = v44;
      rhs = *(DerivedStorage + 408);
      CMTimeSubtract(&v50, &lhs, &rhs);
      memset(&lhs, 0, sizeof(lhs));
      rhs = v45;
      CMTimeMultiplyByRatio(&lhs, &rhs, 1, 2);
      type = v50;
      v41 = lhs;
      CMTimeSubtract(&rhs, &type, &v41);
      *&type.value = v47;
      type.epoch = v48;
      if (CMTimeCompare(&type, &rhs) < 0)
      {
        v33 = 0;
        v46 = v50;
      }
    }
  }

  if (a5)
  {
    *a5 = v46;
  }

  return v33;
}

uint64_t fpfsi_setEQPreset(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 848) = a2;
  v5 = *DerivedStorage;

  return fpfs_applyEQPreset(v5, a1, 0);
}

uint64_t fpfsi_setPropertyOnAllAudioRenderPipelines()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 824);
  if (v1)
  {
    fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  }

  for (i = *(DerivedStorage + 1024); i; i = *(i + 24))
  {
    if (*(i + 48) == 1936684398)
    {
      v3 = *(i + 112);
      if (v3)
      {
        v4 = v3 == v1;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      }
    }
  }

  return 0;
}

uint64_t fpfsi_synchronizeLayerToTimebaseWithTransaction()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 688);
  if (v1)
  {
    FigLayerSynchronizerSynchronizeToTimebaseWithDeferredTransaction(v1, *(DerivedStorage + 576));
  }

  return FigSimpleMutexUnlock();
}

uint64_t fpfsi_setVideoEnhancementModeOnImageQueues(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  for (i = *(result + 1024); i; i = *(i + 24))
  {
    if (*(i + 48) == 1986618469)
    {
      v5 = *(i + 112);
      if (v5)
      {
        FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v5 + 32));
        VTable = CMBaseObjectGetVTable();
        v8 = *(VTable + 8);
        result = VTable + 8;
        v9 = *(v8 + 56);
        if (v9)
        {
          result = v9(FigBaseObject, @"VideoEnhancementMode", a2);
        }
      }
    }
  }

  return result;
}

uint64_t fpfsi_SeekToDateWithID(const __CFArray *a1, const void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v8 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v26 = 0;
  v23 = a3 != 0;
  v9 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v9 + 8);
  if (!a2 || (v10 = CFGetTypeID(a2), v10 != CFDateGetTypeID()))
  {
    fpfsi_SeekToDateWithID_cold_3(&v32);
LABEL_36:
    value_low = v32;
    goto LABEL_37;
  }

  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_SeekToDateWithID_cold_1(&v32);
    goto LABEL_36;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(time1.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  epoch = *(v8 + 16);
  v13 = *(DerivedStorage + 1576);
  if (v13)
  {
    v14 = CFRetain(v13);
    v15 = *(DerivedStorage + 1576);
    v16 = DerivedStorage + 1472;
    v32 = *(DerivedStorage + 1472);
    v33 = *(DerivedStorage + 1488);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 1576) = 0;
    }
  }

  else
  {
    v14 = 0;
    v16 = DerivedStorage + 1472;
    v32 = *(DerivedStorage + 1472);
    v33 = *(DerivedStorage + 1488);
  }

  *v16 = *v8;
  *(v16 + 16) = epoch;
  if (*(DerivedStorage + 912))
  {
    v17 = fpsi_TryDateSeekWithSeekID(a1, a2, &v30, &v27, a3, a3 != 0, &v26) == 0;
    value_low = v30;
    if (v30)
    {
LABEL_12:
      *(DerivedStorage + 1576) = v14;
      *v16 = v32;
      *(v16 + 16) = v33;
LABEL_37:
      fpfs_UnlockAndPostNotificationsWithCaller(v7);
      return value_low;
    }
  }

  else
  {
    v17 = 1;
  }

  flags = *(v8 + 12);
  if (!*(DerivedStorage + 912) || !v17)
  {
    goto LABEL_18;
  }

  if ((v28 & 0x100000000) != 0)
  {
    value = v27;
    timescale = v28;
    epoch = v29;
    flags = HIDWORD(v28);
LABEL_18:
    if (!v26)
    {
      v17 = 1;
    }

    if (v17)
    {
      v20 = *(DerivedStorage + 2220);
      if (v20 && v20 != a3)
      {
        fpfs_SeekDidFail();
      }

      *(DerivedStorage + 1576) = CFRetain(a2);
      *(DerivedStorage + 2220) = a3;
      *(DerivedStorage + 2240) = v23;
    }

    if (flags)
    {
      v21 = MEMORY[0x1E6960CC0];
      *(DerivedStorage + 224) = *MEMORY[0x1E6960CC0];
      *(DerivedStorage + 240) = *(v21 + 16);
      fpfs_GetTime(DerivedStorage, &time2);
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = epoch;
      if (!CMTimeCompare(&time1, &time2))
      {
        CMTimeMake(&time1, 1, 90000);
        type.value = value;
        type.timescale = timescale;
        type.flags = flags;
        type.epoch = epoch;
        CMTimeAdd(&time2, &type, &time1);
        value = time2.value;
        flags = time2.flags;
        timescale = time2.timescale;
        epoch = time2.epoch;
      }
    }

    goto LABEL_28;
  }

  if (!fpfsi_SeekToDateWithID_cold_2(&time2))
  {
    value_low = LODWORD(time2.value);
    goto LABEL_12;
  }

LABEL_28:
  if (flags)
  {
    time2.value = value;
    time2.timescale = timescale;
    time2.flags = flags;
    time2.epoch = epoch;
    time1 = **&MEMORY[0x1E6960C80];
    type = **&MEMORY[0x1E6960C88];
    value_low = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &time2, 0, &time1, &type, a3, 0, v23, 0, 0, 1, 1, 0, 1);
  }

  else
  {
    value_low = 0;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v7);
  if (v14)
  {
    CFRelease(v14);
  }

  return value_low;
}

uint64_t fpfs_applyAutoSelectionCriteria(const void *a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v5 + 8);
  if (!*(DerivedStorage + 52) && *(DerivedStorage + 761))
  {
    v8 = a2;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpfs_PlayQueueCallForEachItem(a1, fpfs_CreateAndApplyMediaArrayWithContext, &v8);
  }

  return fpfs_UnlockAndPostNotificationsWithCaller(a1);
}

uint64_t fpfs_applyAutoSelectionCriteriaOnItem(uint64_t result, uint64_t a2)
{
  if (!*(result + 52) && a2)
  {
    if (*(result + 761))
    {
      return fpfs_CreateAndApplyMediaArrayWithContext();
    }
  }

  return result;
}

const void *fpfsi_setVisualContextArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigStreamingItemCombinedVideoDestinationSetVisualContexts(*(DerivedStorage + 656), a2);
  if (result)
  {
    FigVisualContextGetTypeID();
    FigStreamingItemCombinedVideoDestinationGetCountOfVisualContexts(*(DerivedStorage + 656));
    return fpfsi_handleVideoOutputsChanged();
  }

  return result;
}

uint64_t fpfsi_UpdateBandwidthCap(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(a1 + 812);
  v6 = *(DerivedStorage + 2412);
  if (v5 >= v6)
  {
    v7 = *(DerivedStorage + 2412);
  }

  else
  {
    v7 = *(a1 + 812);
  }

  if (!v6)
  {
    v7 = *(a1 + 812);
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(DerivedStorage + 2412);
  }

  return fpfsi_ConfigurePlaybackMonitorForBandwidthCap(a2, v8);
}

uint64_t fpfs_isSupportedAudioProcessingTap(const void *a1, char *a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  TypeID = MTAudioProcessingTapGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    result = 0;
    v6 = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if ((v5 = *(*(CMBaseObjectGetVTable() + 16) + 40)) != 0 && v5(a1) || MTAudioProcessingTapIsProxyTap(a1))
  {
LABEL_6:
    v6 = 0;
    result = 1;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = _os_feature_enabled_impl();
    v6 = 1;
    if (!a2)
    {
      return result;
    }
  }

LABEL_9:
  *a2 = v6;
  return result;
}

void fpfsi_setAudioProcessingTap(const __CFArray *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 3128);
  if (v5 != a2)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 3136);
    *(v6 + 3136) = 0;
    if (v7)
    {
      CFRelease(v7);
      v5 = *(v6 + 3128);
    }

    *(v6 + 3128) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v8 = *v6;

    fpfs_stopResetDisturbReprepareAndResume(v8, a1, 0);
  }
}

void fpfsi_setAudioProcessingUnits(const __CFArray *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FPSupport_AudioProcessingUnitsConfigurationsAreDifferent())
  {
    v5 = *(DerivedStorage + 3144);
    *(DerivedStorage + 3144) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *DerivedStorage;

    fpfs_stopResetDisturbReprepareAndResume(v6, a1, 0);
  }
}

const void *fpfs_getPrev(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80) == a2)
  {
    return 0;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    v6.length = CFArrayGetCount(v5);
    v5 = *(v4 + 72);
  }

  else
  {
    v6.length = 0;
  }

  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v6, a2);
  if (!FirstIndexOfValue)
  {
    return *(v4 + 80);
  }

  v8 = FirstIndexOfValue - 1;
  if (FirstIndexOfValue < 1)
  {
    return 0;
  }

  v9 = *(v4 + 72);

  return CFArrayGetValueAtIndex(v9, v8);
}

void fpfsi_updateVideoSlotUsage(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 672))
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = DerivedStorage;
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          v11 = CFGetTypeID(ValueAtIndex);
          if (v11 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v10, @"SlotNumber");
            v13 = CFDictionaryGetValue(v10, @"UsedForScrubbingOnly");
            if (Value)
            {
              v14 = v13;
              if (v13)
              {
                v15 = *(v5 + 672);
                v24.length = CFArrayGetCount(v15);
                v24.location = 0;
                FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v15, v24, Value);
                if (FirstIndexOfValue != -1)
                {
                  v17 = CFArrayGetValueAtIndex(*(v5 + 664), FirstIndexOfValue);
                  cf = 0;
                  v18 = fpfsi_copyCurrentVideoDestination();
                  if (v18)
                  {
                    v19 = v18;
                    v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                    if (v20)
                    {
                      v20(v19, v17, &cf);
                    }

                    CFRelease(v19);
                  }

                  if (cf)
                  {
                    FigBaseObject = FigImageQueueGetFigBaseObject(cf);
                    v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v22)
                    {
                      v22(FigBaseObject, @"ForScrubbingOnly", v14);
                    }

                    CFRelease(cf);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t fpfsi_setPreferSDRVideo(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 872) != a2)
  {
    *(result + 872) = a2;
    result = fpfsi_SwitchBetweenHDRAndSDR(a1, a2);
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void fpfsi_CheckSpeedRampCompatibility()
{
  CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 968))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(CMBaseObjectGetDerivedStorage() + 906) || DerivedStorage[404] || (v1 = DerivedStorage[405]) != 0 && CFArrayGetCount(v1))
    {
LABEL_10:
      fpfsi_CheckSpeedRampCompatibility_cold_1();
      return;
    }

    v2 = DerivedStorage[128];
    if (v2)
    {
      while (*(v2 + 48) == 1936684398)
      {
        v2 = *(v2 + 24);
        if (!v2)
        {
          return;
        }
      }

      goto LABEL_10;
    }
  }
}

uint64_t fpfsi_updateOverlapRangeOnAllRenderPipelines()
{
  result = CMBaseObjectGetDerivedStorage();
  for (i = *(result + 1024); i; i = *(i + 24))
  {
    result = *(i + 112);
    if (result)
    {
      result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    }
  }

  return result;
}

void fpfsi_updatePriorImageQueueGaugeOnVideoRenderPipelines()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = fpfsi_copyPreviousImageQueueGauge();
  v2 = *(DerivedStorage + 1024);
  if (v2)
  {
    v3 = &unk_1EAF16000;
    do
    {
      if (*(v2 + 48) == 1986618469)
      {
        if (*(v2 + 112))
        {
          if (!*(v2 + 200))
          {
            fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
            if (v1)
            {
              if (v3[636])
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v3 = &unk_1EAF16000;
              }
            }
          }
        }
      }

      v2 = *(v2 + 24);
    }

    while (v2);
  }

  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t fpfs_applyEQPreset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2 || (Next = fpfs_getNext(DerivedStorage, 0)) != 0)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    v9 = *(v6 + 172);
    if (*(v8 + 848))
    {
      v9 = *(v8 + 848);
    }

    valuePtr = v9;
    v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (a3)
    {
      if (*(a3 + 112) && *(a3 + 48) == 1936684398)
      {
        Next = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
LABEL_17:
        CFRelease(v10);
        return Next;
      }
    }

    else
    {
      v11 = *(v8 + 1024);
      if (v11)
      {
        do
        {
          if (*(v11 + 112) && *(v11 + 48) == 1936684398)
          {
            Next = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
          }

          else
          {
            Next = 0;
          }

          v11 = *(v11 + 24);
        }

        while (v11);
        goto LABEL_17;
      }
    }

    Next = 0;
    goto LABEL_17;
  }

  return Next;
}

uint64_t fpfs_ApplyMediaArray(const void *a1, const __CFArray *a2)
{
  v162 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = a2;
  Count = CFArrayGetCount(a2);
  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
  v122 = FigGetCFStringForOSTypeValue();
  FigGetCFStringForOSTypeValue();
  cf2 = FigGetCFStringForOSTypeValue();
  v5 = *(DerivedStorage + 1680);
  v153 = 0;
  v154 = v5;
  v6 = *(DerivedStorage + 1768);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v143 = DerivedStorage;
  if (v6)
  {
    MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, 0, *(DerivedStorage + 1768));
    goto LABEL_4;
  }

  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  MutableCopy = 0;
  *(DerivedStorage + 1768) = Mutable;
  if (Mutable)
  {
LABEL_4:
    v129 = MutableCopy;
    if (Count >= 1)
    {
      v130 = 0;
      v121 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v10 = 0;
      v131 = 0;
      v132 = 0;
      v138 = 0;
      v128 = 0;
      v125 = 1;
      v133 = Count;
      while (1)
      {
        idx.value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
        Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
        MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(*(DerivedStorage + 1768), Value, &idx);
        v14 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
        v15 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsUniqueOutOfBandID");
        if (Value)
        {
          break;
        }

        *v150 = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v26 = v133;
LABEL_77:
        if (v26 == ++v10)
        {
          v36 = HIDWORD(v123) == 0;
          v37 = v124 == 0;
          v38 = v130 == 0;
          v39 = v125 == 0;
          v40 = v123 == 0;
          v41 = v138 == 0;
          v42 = v126 != 0;
          v43 = v128 != 0;
          if (HIDWORD(v123) && v124)
          {
            fpfs_ApplyMediaArray_cold_1(&lhs);
            goto LABEL_171;
          }

          goto LABEL_82;
        }
      }

      v16 = v15;
      if (FigCFEqual())
      {
        *v150 = 0;
        LOBYTE(type.value) = 0;
        v93 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
        v80 = v129;
        v82 = v131;
        v81 = v132;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        value_low = FigSignalErrorAtGM();
        v47 = 0;
        if (value_low)
        {
          goto LABEL_135;
        }

        goto LABEL_139;
      }

      if (MediaTypeInMediaArray)
      {
        v17 = CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionOptionsPersistentID");
        if (v17)
        {
          v18 = CFRetain(v17);
        }

        else
        {
          v18 = 0;
        }

        v21 = CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionOptionsUniqueOutOfBandID");
        if (v21)
        {
          v22 = CFRetain(v21);
        }

        else
        {
          v22 = 0;
        }

        cf = v22;
        if (FigCFEqual() && FigCFEqual())
        {
          v23 = FigCFCopyCompactDescription();
          if (dword_1EAF169F0)
          {
            *v150 = 0;
            LOBYTE(type.value) = 0;
            v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

LABEL_71:
          if (v23)
          {
            CFRelease(v23);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          v26 = v133;
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_77;
        }

        CFArrayRemoveValueAtIndex(*(DerivedStorage + 1768), idx.value);
        CFArrayAppendValue(*(DerivedStorage + 1768), ValueAtIndex);
        if (v16)
        {
          v25 = *(DerivedStorage + 880);
          *(DerivedStorage + 880) = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          if (v25)
          {
            CFRelease(v25);
          }

LABEL_34:
          v128 = 1;
          goto LABEL_37;
        }

        if (v22)
        {
          v27 = *(DerivedStorage + 880);
          if (v27)
          {
            CFRelease(v27);
            *(DerivedStorage + 880) = 0;
          }

          goto LABEL_34;
        }

        cf = 0;
      }

      else
      {
        CFArrayAppendValue(*(DerivedStorage + 1768), ValueAtIndex);
        if (v16)
        {
          v20 = *(DerivedStorage + 880);
          *(DerivedStorage + 880) = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          cf = 0;
          v18 = 0;
          goto LABEL_34;
        }

        cf = 0;
        v18 = 0;
      }

LABEL_37:
      v23 = FigCFCopyCompactDescription();
      v28 = v138;
      if (!(v14 | v16))
      {
        v28 = 1;
      }

      v138 = v28;
      if (!*(DerivedStorage + 1680))
      {
        goto LABEL_68;
      }

      if (!CFEqual(Value, cf2))
      {
        if (CFEqual(Value, v122) || CFEqual(Value, CFStringForOSTypeValue))
        {
          if (v18)
          {
            v30 = v14 == 0;
          }

          else
          {
            v30 = 1;
          }

          v31 = HIDWORD(v124);
          if (!v30)
          {
            v31 = 1;
          }

          HIDWORD(v124) = v31;
          if (v14)
          {
            v125 = 0;
            LODWORD(v123) = 1;
          }

          else
          {
            v32 = CFEqual(Value, v122);
            v125 = 0;
            if (v32)
            {
              v33 = 1;
            }

            else
            {
              v33 = v124;
            }

            v34 = HIDWORD(v123);
            if (!v32)
            {
              v34 = 1;
            }

            HIDWORD(v123) = v34;
            LODWORD(v124) = v33;
          }
        }

        else
        {
          HIDWORD(v124) = 1;
          v125 = 0;
        }

        goto LABEL_68;
      }

      ClosedCaptionGroupLocatorMap = FigAlternateGetClosedCaptionGroupLocatorMap(*(DerivedStorage + 1680));
      if (v18)
      {
        v132 = CFRetain(v18);
      }

      else
      {
        v132 = 0;
      }

      if (cf)
      {
        v131 = CFRetain(cf);
        if (!ClosedCaptionGroupLocatorMap)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v131 = 0;
        if (!ClosedCaptionGroupLocatorMap)
        {
          goto LABEL_60;
        }
      }

      if (v14 && CFDictionaryContainsKey(ClosedCaptionGroupLocatorMap, v14))
      {
        v121 = 1;
LABEL_68:
        if (dword_1EAF169F0)
        {
          *v150 = 0;
          LOBYTE(type.value) = 0;
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v130 = 1;
        goto LABEL_71;
      }

LABEL_60:
      v126 = 1;
      goto LABEL_68;
    }

    v39 = 0;
    v121 = 0;
    v42 = 0;
    BYTE4(v124) = 0;
    v131 = 0;
    v132 = 0;
    v43 = 0;
    v38 = 1;
    v36 = 1;
    v37 = 1;
    v41 = 1;
    v40 = 1;
LABEL_82:
    v44 = *(DerivedStorage + 1680);
    if (v44)
    {
      if (*(DerivedStorage + 1072) == 1 && !v37)
      {
        fpfs_ApplyMediaArray_cold_2(&lhs);
        goto LABEL_171;
      }

      if (FigAlternateIsAudioOnly(v44))
      {
        v45 = v36;
      }

      else
      {
        v45 = 1;
      }

      if ((v45 & 1) == 0)
      {
        fpfs_ApplyMediaArray_cold_3(&lhs);
        goto LABEL_171;
      }
    }

    if (v38)
    {
      value_low = 0;
      v47 = 0;
      v48 = 0;
      goto LABEL_90;
    }

    fpfs_FindAndSetForcedSubtitle(DerivedStorage);
    if (!v39)
    {
      v85 = *(DerivedStorage + 1800);
      if (v85)
      {
        CFDictionaryGetValue(v85, @"MediaSelectionOptionsPersistentID");
        CFDictionaryGetValue(*(DerivedStorage + 1800), @"MediaSelectionOptionsUniqueOutOfBandID");
        if (FigCFEqual())
        {
          if (FigCFEqual())
          {
            v86 = v121;
            if (v121 == 0 && !v42)
            {
              value_low = 0;
              v47 = 0;
              v48 = 0;
              goto LABEL_90;
            }

            if (*(DerivedStorage + 460))
            {
              fpfsi_postSelectedMediaOptionsDidChangeNotification();
              value_low = 0;
              v47 = 0;
              v48 = 0;
            }

            else
            {
              v112 = DerivedStorage;
              value_low = 0;
              v47 = 0;
              v48 = 0;
              *(v112 + 461) = 1;
            }

            goto LABEL_224;
          }
        }
      }
    }

    if (!*(DerivedStorage + 912) || !*(DerivedStorage + 1680))
    {
      value_low = 0;
      v47 = 0;
      v48 = 1;
      goto LABEL_90;
    }

    cfa = CMBaseObjectGetDerivedStorage();
    memset(&number, 0, sizeof(number));
    memset(&idx, 0, sizeof(idx));
    memset(v150, 0, sizeof(v150));
    v151 = 0;
    v139 = *(DerivedStorage + 2220);
    v140 = *(DerivedStorage + 1072);
    v149 = 0;
    v142 = *(DerivedStorage + 332);
    memset(&type, 0, sizeof(type));
    if (v40 || !*(DerivedStorage + 40))
    {
      goto LABEL_178;
    }

    v87 = CMBaseObjectGetDerivedStorage();
    lhs.value = 0;
    v88 = FigGetAllocatorForMedia();
    v89 = FigAlternateMediaSelectionAudibleFilterCreate(v88, *(v87 + 1768), &lhs);
    if (!v89)
    {
      v89 = FigAlternateSelectionBossAddFilter(*(v87 + 40), lhs.value);
      if (!v89)
      {
        v89 = fpfsi_SetupAlternateSelectionBossWithPreferPlaybackFromCache();
        if (!v89)
        {
          v89 = fpfsi_CreateAndAddCombinedAudioPreferenceFilter();
          if (!v89)
          {
            v89 = FigAlternateSelectionBossApplyFilters(*(v87 + 40));
          }
        }
      }
    }

    value_low = v89;
    if (lhs.value)
    {
      CFRelease(lhs.value);
    }

    if (value_low)
    {
LABEL_252:
      v47 = 0;
      goto LABEL_134;
    }

    v90 = *(DerivedStorage + 40);
    v91 = FigGetAllocatorForMedia();
    v92 = FigAlternateSelectionBossCopyProperty(v90, @"FilteredAlternateList", v91, &v153);
    if (v92)
    {
LABEL_251:
      value_low = v92;
      goto LABEL_252;
    }

    if (v153 && CFArrayGetCount(v153) > 0)
    {
      fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
      if (!v92)
      {
LABEL_178:
        v94 = FigBytePumpRetain(*(DerivedStorage + 912));
        v95 = DerivedStorage;
        v47 = v94;
        if (v154 == *(v95 + 1680))
        {
          v104 = FigGetCFStringForOSTypeValue();
          fpfs_FindMediaTypeInMediaArray(v129, v104, 0);
          v105 = FigCFDictionaryGetValue();
          CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
          FigAlternateGetAudioInstreamID(v154, v105);
          AudioInstreamID = FigAlternateGetAudioInstreamID(v154, CurrentAudioPersistentIDFromMediaOption);
          if (AudioInstreamID)
          {
            v108 = AudioInstreamID;
            if (!FigCFEqual())
            {
              v109 = *(v143 + 1024);
              if (v109)
              {
                do
                {
                  if (*(v109 + 48) == 1936684398)
                  {
                    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(*(v109 + 112) + 32));
                    v111 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v111)
                    {
                      v111(FigBaseObject, @"SceneCompositionPreset", v108);
                    }
                  }

                  BYTE4(v124) = 0;
                  v109 = *(v109 + 24);
                }

                while (v109);
              }

              else
              {
                BYTE4(v124) = 0;
              }
            }
          }
        }

        if (BYTE4(v124) || (v142) && (fpfsi_pauseItem(a1), *(v143 + 464) = 0, (v142))
        {
          number = *(v143 + 320);
          type = number;
          idx = *(v143 + 344);
          v151 = *(v143 + 384);
          *v150 = *(v143 + 368);
          v96 = *(v143 + 392);
          theArraya = *(v143 + 2240);
        }

        else
        {
          fpfs_GetNextTimeToPlayIfEstablished(a1, &type);
          lhs = type;
          *&rhs.value = kSeekToCurrentFudge;
          rhs.epoch = 0;
          CMTimeSubtract(&number, &lhs, &rhs);
          theArraya = 0;
          idx = **&MEMORY[0x1E6960C80];
          *v150 = *MEMORY[0x1E6960C88];
          v151 = *(MEMORY[0x1E6960C88] + 16);
          v96 = 5;
        }

        v97 = fpfs_FlowControlPump(v143, 0xFFu, 0, 0);
        if (!v97)
        {
          v98 = *v143;
          lhs = **&MEMORY[0x1E6960C70];
          v97 = fpfs_SetAlternateWithContext(v98, a1, v154, 1u, &lhs, 0, &v149, 0, 9u);
          if (!v97)
          {
            if (!v36 && v140 == 1 && *(v143 + 1072) == 1)
            {
              value_low = 4294954514;
              goto LABEL_134;
            }

            if (*(v143 + 460))
            {
              fpfsi_postSelectedMediaOptionsDidChangeNotification();
            }

            else
            {
              *(v143 + 461) = 1;
            }

            if ((v142 & 1) == 0)
            {
              if ((~v140 & 3) != 0 || ((*(v143 + 1072) & 3) == 1 ? (v99 = v36) : (v99 = 0), !v99 || !v37))
              {
                CMTimeMake(&lhs, 50, 1000);
                v100 = cfa[27];
                if (v100 > 2.0 || v100 < 0.0)
                {
                  v102 = v143;
                  v101 = *(v143 + 2992) == 0;
                }

                else
                {
                  v101 = 0;
                  v102 = v143;
                }

                fpfsi_TrimFromAllTracks(v102, &lhs, v100 < 0.0, v101);
                if (v39)
                {
                  fpfs_DeleteTracksWhenSubstreamChanges(a1, v140, v149);
                  if (BYTE4(v124))
                  {
                    fpfs_setUnlikelyToKeepUpAndRanDry(a1);
                  }
                }

                else
                {
                  fpfs_DeleteAllTracksForSubstream(a1, 2);
                }

LABEL_206:
                value_low = fpfs_FlowControlPump(v143, 0, 1, 255);
                v86 = v121;
                if (!v41)
                {
                  fpfs_PrepareAndEnqueueTracksChangedNotification(*v143, a1);
                }

                v103 = v121 != 0 || v42;
                v48 = 1;
                if (!v103)
                {
LABEL_90:
                  v49 = CMBaseObjectGetDerivedStorage();
                  v50 = CMBaseObjectGetDerivedStorage();
                  v51 = v50;
                  if ((v48 & v43 & 1) == 0)
                  {
                    if (!*(v50 + 788))
                    {
                      fpfsi_clearOutOfBandSubtitleObjects();
                    }

                    goto LABEL_132;
                  }

                  fpfsi_clearOutOfBandSubtitleObjects();
                  v52 = *(v49 + 880);
                  if (!v52)
                  {
                    goto LABEL_132;
                  }

                  if (*(v51 + 462))
                  {
                    v53 = *(v51 + 463) != 0;
                    if (*(v51 + 788))
                    {
                      goto LABEL_99;
                    }
                  }

                  else
                  {
                    v53 = 0;
                    if (*(v51 + 788))
                    {
                      goto LABEL_99;
                    }
                  }

                  if (!v53)
                  {
                    goto LABEL_132;
                  }

LABEL_99:
                  v54 = CFDictionaryGetValue(v52, @"MediaSelectionOptionsURL");
                  if (v54)
                  {
                    v55 = v54;
                    if (FigCFStringFind())
                    {
                      v56 = FigGetAllocatorForMedia();
                      v57 = CFURLCreateWithString(v56, v55, 0);
                      if (v57)
                      {
                        v141 = v57;
                        v58 = CMBaseObjectGetDerivedStorage();
                        v59 = FigGetAllocatorForMedia();
                        v60 = CFDictionaryCreateMutable(v59, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (v60)
                        {
                          v61 = v60;
                          v62 = *(v58 + 32);
                          if (v62)
                          {
                            lhs.value = 0;
                            number.value = 0;
                            v63 = FigGetAllocatorForMedia();
                            CMBaseObject = FigAssetGetCMBaseObject(v62);
                            v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                            if (v65)
                            {
                              v65(CMBaseObject, @"assetProperty_CreationURL", v63, &lhs);
                              if (lhs.value)
                              {
                                CFDictionarySetValue(v61, @"ReferenceSecurityPolicyFlagBaseURL", lhs.value);
                                CFRelease(lhs.value);
                              }
                            }

                            v66 = *(v58 + 32);
                            v67 = FigGetAllocatorForMedia();
                            v68 = FigAssetGetCMBaseObject(v66);
                            v69 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                            if (v69)
                            {
                              v69(v68, @"assetProperty_CreationFlags", v67, &number);
                              if (number.value)
                              {
                                idx.value = 0;
                                CFNumberGetValue(number.value, kCFNumberSInt64Type, &idx);
                                CFRelease(number.value);
                                if (((LODWORD(idx.value) >> 1) & 0x1E) != 0)
                                {
                                  FigCFDictionarySetInt32();
                                }
                              }
                            }
                          }

                          v70 = FigGetAllocatorForMedia();
                          v71 = (v49 + 888);
                          FigOutOfBandTrackControllerCreate(v70, v141, v61, (v49 + 888));
                          CFRelease(v61);
                          if (!*(v49 + 888))
                          {
                            goto LABEL_131;
                          }

                          CMNotificationCenterGetDefaultLocalCenter();
                          FigNotificationCenterAddWeakListener();
                          CMNotificationCenterGetDefaultLocalCenter();
                          FigNotificationCenterAddWeakListener();
                          fpfs_GetTime(v49, &lhs);
                          if ((lhs.flags & 0x1D) == 1)
                          {
                            v72 = *(v49 + 888);
                            fpfs_GetTime(v49, &number);
                            FigOutOfBandTrackControllerSetCurrentTime(v72, &number.value);
                          }

                          v73 = *(v49 + 1824);
                          if (v73)
                          {
                            FigOutOfBandTrackControllerSetProperty(*v71, @"TextMarkupArray", v73);
                          }

                          v74 = *(v49 + 1832);
                          if (v74)
                          {
                            FigOutOfBandTrackControllerSetProperty(*v71, @"TextHighlightArray", v74);
                          }

                          if (!v53)
                          {
LABEL_129:
                            if (!FigOutOfBandTrackControllerPrepare(*v71))
                            {
                              FigSyncMomentSourceCreateWithDispatchQueue(fpfsi_synchronizeOOBSController, a1, *(v49 + 576), *(v49 + 600), (v49 + 896));
                            }

LABEL_131:
                            CFRelease(v141);
                            goto LABEL_132;
                          }

                          LODWORD(number.value) = 0;
                          LODWORD(idx.value) = 0;
                          v75 = FigGetAllocatorForMedia();
                          v76 = CFDictionaryCreateMutable(v75, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                          if (v76)
                          {
                            v77 = v76;
                            v78 = MEMORY[0x1E695E4D0];
                            if (!*(v51 + 462))
                            {
                              v78 = MEMORY[0x1E695E4C0];
                            }

                            CFDictionarySetValue(v76, @"Visuals", *v78);
                            if (*(v51 + 462))
                            {
                              CFDictionarySetValue(v77, @"NeroTransport", *(v51 + 488));
                            }

                            FigOutOfBandTrackControllerSetProperty(*v71, @"UsingNeroVideo", v77);
                            fpfsi_GetDimensions(a1, &number, &idx);
                            v163.width = *&number.value;
                            v163.height = *&idx.value;
                            DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v163);
                            if (DictionaryRepresentation)
                            {
                              FigOutOfBandTrackControllerSetProperty(*v71, @"NeroVideoDimensions", DictionaryRepresentation);
                            }

                            fpfs_setDisplaySizeOnOutOfBandSubtitleController(*v71, *(v51 + 464), *(v51 + 472));
                            FigOutOfBandTrackControllerSetProperty(*v71, @"NeroVideoGravity", *(v51 + 480));
                            if (DictionaryRepresentation)
                            {
                              CFRelease(DictionaryRepresentation);
                            }

                            CFRelease(v77);
                            goto LABEL_129;
                          }

                          fpfs_ApplyMediaArray_cold_6();
                        }

                        else
                        {
                          fpfs_ApplyMediaArray_cold_7();
                        }
                      }
                    }
                  }

LABEL_132:
                  fpfs_updateCaptionOrSubtitleHintOnVideoPipeline();
                  if (v48)
                  {
                    fpfsi_UpdateEligibilityForEnhancedDialogue();
                  }

                  goto LABEL_134;
                }

LABEL_224:
                if (v86)
                {
                  if (*(v143 + 816))
                  {
                    fpfs_ApplyMediaArray_cold_5();
                  }

                  if (dword_1EAF169F0)
                  {
                    LODWORD(idx.value) = 0;
                    v150[0] = OS_LOG_TYPE_DEFAULT;
                    v113 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v114 = idx.value;
                    if (os_log_type_enabled(v113, v150[0]))
                    {
                      v115 = v114;
                    }

                    else
                    {
                      v115 = v114 & 0xFFFFFFFE;
                    }

                    if (v115)
                    {
                      v116 = *v143;
                      if (*v143)
                      {
                        v117 = (CMBaseObjectGetDerivedStorage() + 888);
                      }

                      else
                      {
                        v117 = "";
                      }

                      v118 = a1;
                      if (a1)
                      {
                        v119 = (CMBaseObjectGetDerivedStorage() + 3096);
                        v118 = a1;
                      }

                      else
                      {
                        v119 = "";
                      }

                      LODWORD(number.value) = 136316162;
                      *(&number.value + 4) = "fpfs_ApplyMediaArray";
                      LOWORD(number.flags) = 2048;
                      *(&number.flags + 2) = v116;
                      HIWORD(number.epoch) = 2082;
                      v156 = v117;
                      v157 = 2048;
                      v158 = v118;
                      v159 = 2082;
                      v160 = v119;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }

                fpfs_updateClosedCaptionsDisplay();
                goto LABEL_90;
              }
            }

            lhs = number;
            rhs = idx;
            v145 = *v150;
            v146 = v151;
            v97 = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &lhs, v96, &rhs, &v145, v139, 0, theArraya, 0, 0, 1, 1, 0, 0);
            if (!v97)
            {
              goto LABEL_206;
            }
          }
        }

        value_low = v97;
LABEL_134:
        v80 = v129;
        v82 = v131;
        v81 = v132;
        if (!value_low)
        {
          goto LABEL_139;
        }

LABEL_135:
        v83 = *(v143 + 1768);
        *(v143 + 1768) = v80;
        if (v80)
        {
          CFRetain(v80);
        }

        if (v83)
        {
          goto LABEL_138;
        }

LABEL_139:
        if (v80)
        {
          CFRelease(v80);
        }

        if (v81)
        {
          CFRelease(v81);
        }

        if (v82)
        {
          CFRelease(v82);
        }

        goto LABEL_145;
      }

      goto LABEL_251;
    }

    fpfs_ApplyMediaArray_cold_4(&lhs);
LABEL_171:
    v47 = 0;
    value_low = LODWORD(lhs.value);
    goto LABEL_134;
  }

  value_low = FigSignalErrorAtGM();
  if (value_low)
  {
    v80 = 0;
    v82 = 0;
    v81 = 0;
    v47 = 0;
    v83 = *(v143 + 1768);
    *(v143 + 1768) = 0;
    if (!v83)
    {
      goto LABEL_139;
    }

LABEL_138:
    CFRelease(v83);
    goto LABEL_139;
  }

  v47 = 0;
LABEL_145:
  if (v153)
  {
    CFRelease(v153);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  return value_low;
}

void fpfs_DeleteAllTracksForSubstream(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 1024);
  if (v5)
  {
    v6 = DerivedStorage;
    v7 = 0;
    do
    {
      v8 = *(v5 + 24);
      if (*(v5 + 196) == a2)
      {
        if (*(v5 + 48) == 1986618469)
        {
          v7 = 1;
        }

        fpfs_DeleteTrack(a1, v5);
      }

      if (!v8)
      {
        break;
      }

      v5 = v8;
    }

    while (*(v6 + 1024));
    if (v7)
    {
      *(v6 + 528) = 1;

      fpfsi_ClearCachedVideoRenderChains(a1);
    }
  }
}

void fpfs_DeleteTracksWhenSubstreamChanges(const void *a1, char a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    fpfs_DeleteAllTracksForSubstream(a1, 0);
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  if ((a2 & 3) == 1 && (*(DerivedStorage + 1072) & 2) != 0)
  {
    v7 = *(DerivedStorage + 1024);
    if (v7)
    {
      do
      {
        v8 = *(v7 + 24);
        if (!*(v7 + 196) && *(v7 + 48) == 1936684398)
        {
          fpfs_DeleteTrack(a1, v7);
        }

        if (!v8)
        {
          break;
        }

        v7 = v8;
      }

      while (*(DerivedStorage + 1024));
    }
  }

  fpfs_DeleteAllTracksForSubstream(a1, 1);
  if ((a3 & 4) != 0)
  {
LABEL_15:

    fpfs_DeleteAllTracksForSubstream(a1, 2);
  }
}

uint64_t fpfs_updateCaptionOrSubtitleHintOnVideoPipeline()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 80);
  if (result)
  {
    result = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 80))
    {
      for (i = *(result + 1024); i; i = *(i + 24))
      {
        if (*(i + 48) == 1986618469)
        {
          result = *(i + 112);
          if (result)
          {
            result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
          }
        }
      }
    }
  }

  return result;
}

void fpfs_setDisplaySizeOnOutOfBandSubtitleController(uint64_t a1, double a2, double a3)
{
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&a2);
  if (DictionaryRepresentation)
  {
    v5 = DictionaryRepresentation;
    FigOutOfBandTrackControllerSetProperty(a1, @"NeroDisplaySize", DictionaryRepresentation);

    CFRelease(v5);
  }
}

uint64_t fpfsi_synchronizeOOBSController(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigRetainProxyIsInvalidated();
  if (!result)
  {
    if (a2)
    {
      result = *(DerivedStorage + 888);
      if (result)
      {
        if ((*(a2 + 4) & 3) != 0)
        {
          v5 = *(a2 + 8);
          v8 = *(a2 + 16);
          v9 = *(a2 + 32);
          v6 = *(a2 + 40);
          v7 = *(a2 + 56);
          return FigOutOfBandTrackControllerSetRateAndAnchorTime(result, &v8, &v6, v5);
        }
      }
    }
  }

  return result;
}

uint64_t fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts(const __CFArray *a1, CMTime *a2, unsigned int a3, CMTime *a4, CMTime *a5, uint64_t a6, const void *a7, int a8)
{
  v15 = *CMBaseObjectGetDerivedStorage();
  v29 = *MEMORY[0x1E6960C70];
  v30 = *(MEMORY[0x1E6960C70] + 16);
  v27 = v29;
  v28 = v30;
  v25 = v29;
  v26 = v30;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 8);
  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts_cold_1(&v24);
    value_low = LODWORD(v24.value);
  }

  else
  {
    v24 = *a2;
    FPSTimelineConverterL3TimeToL2(&v24, &v29);
    v24 = *a4;
    FPSTimelineConverterL3TimeToL2(&v24, &v27);
    v24 = *a5;
    FPSTimelineConverterL3TimeToL2(&v24, &v25);
    *&v24.value = v29;
    v24.epoch = v30;
    v22 = v27;
    v23 = v28;
    v20 = v25;
    v21 = v26;
    value_low = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &v24, a3, &v22, &v20, a6, a7, a8, 1, 0, 1, 1, 0, 1);
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v15);
  return value_low;
}

uint64_t fpfsi_vtable_GetCurrentTime(uint64_t a1, __n128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  v13 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v11 = v13;
  v12 = v14;
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v6 + 8);
    if (FigRetainProxyIsInvalidated())
    {
      fpfsi_vtable_GetCurrentTime_cold_1(&v9);
      v7 = v9.n128_u32[0];
    }

    else
    {
      fpfs_GetNextTimeToPlay(v5, 0, &v13);
      v9 = v13;
      v10 = v14;
      FPSTimelineConverterL2TimeToL3(&v9, &v11);
      v7 = 0;
      *a2 = v11;
      a2[1].n128_u64[0] = v12;
    }

    fpfs_UnlockAndPostNotificationsWithCaller(v4);
  }

  else
  {
    fpfsi_vtable_GetCurrentTime_cold_2(&v9);
    return v9.n128_u32[0];
  }

  return v7;
}

uint64_t fpfsi_CopyTrackProperty(uint64_t a1, int a2, const void *a3, const __CFAllocator *a4, const void **a5)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      if (a5)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (!FigRetainProxyIsInvalidated())
        {
          v11 = *DerivedStorage;
          v12 = DerivedStorage[21];
          LODWORD(v49) = a2;
          theDict[0] = 0;
          v13 = MEMORY[0x1E695E480];
          if (!v12)
          {
            goto LABEL_21;
          }

          v14 = FigPropertyStorageCopyValue(v12, @"TrackPropertyStorages", theDict);
          if (v14)
          {
            v18 = v14;
            goto LABEL_18;
          }

          if (theDict[0])
          {
            v15 = CFNumberCreate(*v13, kCFNumberSInt32Type, &v49);
            if (v15)
            {
              v16 = v15;
              Value = CFDictionaryGetValue(theDict[0], v15);
              CFRelease(v16);
              v18 = -12784;
              if (Value)
              {
                v18 = CFDictionaryGetValueIfPresent(Value, a3, a5) ? 0 : -12784;
                if (*a5)
                {
                  CFRetain(*a5);
                }
              }

LABEL_18:
              if (theDict[0])
              {
                CFRelease(theDict[0]);
              }

              if (!v18)
              {
                return 0;
              }

LABEL_21:
              v49 = 0;
              v19 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexLock();
              ++*(v19 + 8);
              v20 = a2;
              fpfs_GetItemLivingTrack(DerivedStorage, a2, &v49);
              v21 = v49;
              if (!v49)
              {
                v21 = DerivedStorage[132];
                if (!v21)
                {
LABEL_30:
                  v25 = 4294954453;
LABEL_96:
                  fpfs_UnlockAndPostNotificationsWithCaller(v11);
                  return v25;
                }

                while (*(v21 + 32) != v20)
                {
                  v21 = *(v21 + 24);
                  if (!v21)
                  {
                    goto LABEL_30;
                  }
                }

                v49 = v21;
              }

              if (CFEqual(a3, @"FormatDescriptionArray"))
              {
                v23 = *(v21 + 56);
                v22 = (v21 + 56);
                if (v23)
                {
                  v24 = CFArrayCreate(a4, v22, 1, MEMORY[0x1E695E9C0]);
                  *a5 = v24;
                  if (!v24)
                  {
LABEL_48:
                    v35 = FigSignalErrorAtGM();
                    goto LABEL_49;
                  }

                  goto LABEL_43;
                }

LABEL_95:
                v25 = 4294954513;
                goto LABEL_96;
              }

              if (CFEqual(a3, @"Dimensions"))
              {
                width = 0.0;
                height = 0.0;
                if (*(v21 + 48) == 1986618469)
                {
                  Dimensions = CMVideoFormatDescriptionGetDimensions(*(v21 + 56));
                  width = Dimensions.width;
                  height = Dimensions.height;
                }

                v50 = height;
                valuePtr = width;
                *keys = xmmword_1E7476B38;
                v29 = *v13;
                v30 = CFNumberCreate(*v13, kCFNumberFloat32Type, &valuePtr);
                theDict[0] = v30;
                v31 = CFNumberCreate(v29, kCFNumberFloat32Type, &v50);
                theDict[1] = v31;
                if (v30)
                {
                  v32 = v31 == 0;
                }

                else
                {
                  v32 = 1;
                }

                if (v32)
                {
                  v33 = 0;
                  if (!v30)
                  {
LABEL_40:
                    if (theDict[1])
                    {
                      CFRelease(theDict[1]);
                    }

                    *a5 = v33;
                    if (!v33)
                    {
                      goto LABEL_48;
                    }

LABEL_43:
                    v25 = 0;
                    goto LABEL_96;
                  }
                }

                else
                {
                  v33 = CFDictionaryCreate(a4, keys, theDict, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v30 = theDict[0];
                  if (!theDict[0])
                  {
                    goto LABEL_40;
                  }
                }

                CFRelease(v30);
                goto LABEL_40;
              }

              if (CFEqual(a3, @"EstimatedDataRate"))
              {
                v34 = *(v21 + 64);
                if (v34)
                {
                  v35 = FigManifoldCopyTrackProperty(v34, *(v21 + 40), @"FMFD_TrackEstimatedDataRate", a4, a5);
LABEL_49:
                  v25 = v35;
                  goto LABEL_96;
                }

                goto LABEL_95;
              }

              if (CFEqual(a3, @"NominalFrameRate") || CFEqual(a3, @"CurrentVideoFrameRate"))
              {
                v36 = *(v21 + 112);
                if (!v36)
                {
                  goto LABEL_95;
                }

                v37 = *(v36 + 32);
                if (!v37)
                {
                  goto LABEL_95;
                }

                v38 = kFigRenderPipelineProperty_CurrentVideoFrameRate;
LABEL_55:
                v39 = *v38;
                FigBaseObject = FigRenderPipelineGetFigBaseObject(v37);
                v35 = CMBaseObjectCopyProperty(FigBaseObject, v39, a4, a5);
                goto LABEL_49;
              }

              if (CFEqual(a3, @"Matrix"))
              {
                v41 = *(v21 + 72);
                if (v41)
                {
                  Copy = CFArrayCreateCopy(a4, v41);
                }

                else
                {
                  v44 = *(MEMORY[0x1E695EFD0] + 16);
                  *theDict = *MEMORY[0x1E695EFD0];
                  v53 = v44;
                  v54 = *(MEMORY[0x1E695EFD0] + 32);
                  Copy = FigCreate3x3MatrixArrayFromCGAffineTransform(a4, theDict);
                }

                if (!Copy)
                {
                  fpfsi_CopyTrackProperty_cold_3(theDict);
                  v25 = LODWORD(theDict[0]);
                  goto LABEL_96;
                }

                goto LABEL_64;
              }

              if (CFEqual(a3, @"Enabled"))
              {
                v43 = *MEMORY[0x1E695E4D0];
              }

              else
              {
                if (CFEqual(a3, @"MediaCharacteristicArray"))
                {
                  *theDict = fpfsi_CopyTrackProperty_trackInformationCallbacks;
                  v53 = unk_1F0AD95F8;
                  *&v54 = off_1F0AD9608;
                  v35 = FigMediaCharacteristicsCopyMediaCharacteristicsWithTrackCallbacks(a4, v21, theDict, a5);
                  goto LABEL_49;
                }

                if (CFEqual(a3, @"EffectiveLoudnessInfo"))
                {
                  if (*(v21 + 48) == 1936684398)
                  {
                    v35 = fpfsi_copyLoudnessInfoWithItemMediaKindAndLID(DerivedStorage, v21, a5);
                    goto LABEL_49;
                  }

                  goto LABEL_48;
                }

                if (CFEqual(a3, @"EffectiveEQPreset"))
                {
                  if (*(v21 + 48) != 1936684398)
                  {
                    goto LABEL_95;
                  }

                  v45 = *(v21 + 112);
                  if (!v45)
                  {
                    goto LABEL_95;
                  }

                  v37 = *(v45 + 32);
                  if (!v37)
                  {
                    goto LABEL_95;
                  }

                  v38 = kFigAudioRenderPipelineProperty_EQPreset;
                  goto LABEL_55;
                }

                if (CFEqual(a3, @"WillTrimShortDurationAudioSamples"))
                {
                  if (*(v21 + 48) != 1936684398)
                  {
                    goto LABEL_95;
                  }

                  v46 = *(v21 + 112);
                  if (!v46)
                  {
                    goto LABEL_95;
                  }

                  v37 = *(v46 + 32);
                  if (!v37)
                  {
                    goto LABEL_95;
                  }

                  v38 = kFigAudioRenderPipelineProperty_WillTrimShortDurationSamples;
                  goto LABEL_55;
                }

                if (CFEqual(a3, @"EmploysHardwarePassthrough"))
                {
                  if (*(v21 + 48) != 1936684398)
                  {
                    goto LABEL_95;
                  }

                  v47 = *(v21 + 112);
                  if (!v47)
                  {
                    goto LABEL_95;
                  }

                  v37 = *(v47 + 32);
                  if (!v37)
                  {
                    goto LABEL_95;
                  }

                  v38 = kFigAudioRenderPipelineProperty_EmploysHardwarePassthrough;
                  goto LABEL_55;
                }

                if (!CFEqual(a3, @"RenderPipeline"))
                {
                  if (!CFEqual(a3, @"TrackCachedSampleCount"))
                  {
                    v25 = 4294954512;
                    goto LABEL_96;
                  }

                  CMBufferQueueGetBufferCount(*(v21 + 96));
                  Copy = FigCFNumberCreateSInt64();
                  goto LABEL_64;
                }

                v48 = *(v21 + 112);
                if (!v48)
                {
                  goto LABEL_95;
                }

                v43 = *(v48 + 32);
                if (!v43)
                {
                  goto LABEL_95;
                }
              }

              Copy = CFRetain(v43);
LABEL_64:
              v25 = 0;
              *a5 = Copy;
              goto LABEL_96;
            }

            fpfsi_CopyTrackProperty_cold_1(keys);
          }

          else
          {
            fpfsi_CopyTrackProperty_cold_2(keys);
          }

          v18 = keys[0];
          goto LABEL_18;
        }
      }
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t fpfsi_vtable_SetCurrentTimeWithRange(const __CFArray *a1, CMTime *a2, unsigned int a3, CMTime *a4, CMTime *a5)
{
  v8 = *a2;
  v7 = *a4;
  v6 = *a5;
  return fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts(a1, &v8, a3, &v7, &v6, 0, 0, 0);
}

uint64_t fpfsi_vtable_SetCurrentTimeWithRangeAndSeekID(const __CFArray *a1, CMTime *a2, unsigned int a3, CMTime *a4, CMTime *a5, uint64_t a6)
{
  v9 = *a2;
  v8 = *a4;
  v7 = *a5;
  return fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts(a1, &v9, a3, &v8, &v7, a6, 0, 0);
}

uint64_t fpfsi_CopyAsset(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v5 + 8);
  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_CopyAsset_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v6 = *(DerivedStorage + 32);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    v7 = 0;
    *a2 = v6;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v4);
  return v7;
}

uint64_t fpfsi_vtable_SetCurrentTimeWithOptions(const __CFArray *a1, CMTime *a2)
{
  v7 = *a2;
  v11 = 0;
  v10 = **&MEMORY[0x1E6960C70];
  v9 = v10;
  v8 = 0;
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  Value = FigCFDictionaryGetValue();
  FigCFDictionaryGetInt32IfPresent();
  v6 = v10;
  v5 = v10;
  return fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts(a1, &v7, 0, &v6, &v5, 0, Value, 0);
}

uint64_t FigManifoldCopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t fpfsi_CopyFormatDescriptions(uint64_t a1, CFAllocatorRef allocator, CFArrayRef *a3)
{
  values = *(a1 + 56);
  if (values)
  {
    v4 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 0;
}

uint64_t fpfsi_TrimAudioInQueue(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v149 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 8);
  v145 = *(a2 + 12);
  v146 = *(a2 + 20);
  v5 = *(a2 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v71, 0, sizeof(v71));
  CMSampleBufferGetPresentationTimeStamp(&v71, a1);
  v144 = 0;
  v143 = 0;
  v140 = 0;
  v139 = 0;
  memset(&v70, 0, sizeof(v70));
  CMSampleBufferGetOutputPresentationTimeStamp(&v70, a1);
  IsMarkerOnly = fpfs_IsMarkerOnly(a1);
  result = 0;
  if (IsMarkerOnly)
  {
    return result;
  }

  time1 = v70;
  time2.value = v3;
  *&time2.flags = v145;
  time2.timescale = v4;
  HIDWORD(time2.epoch) = v146;
  if (!CMTimeCompare(&time1, &time2))
  {
    return 0xFFFFFFFFLL;
  }

  v65 = DerivedStorage;
  fpfs_GetEndOutputPresentationTimeStamp(a1, &time1);
  value = time1.value;
  v141 = *&time1.flags;
  timescale = time1.timescale;
  epoch_high = HIDWORD(time1.epoch);
  v137 = v145;
  v138 = v146;
  v61 = CMBaseObjectGetDerivedStorage();
  memset(&v76, 0, sizeof(v76));
  v9 = MEMORY[0x1E6960CC0];
  v147 = *(MEMORY[0x1E6960CC0] + 12);
  v148 = *(MEMORY[0x1E6960CC0] + 20);
  memset(&v75, 0, sizeof(v75));
  CMSampleBufferGetOutputPresentationTimeStamp(&v75, a1);
  memset(&v74, 0, sizeof(v74));
  fpfs_GetEndOutputPresentationTimeStamp(a1, &v74);
  v69 = **&MEMORY[0x1E6960C70];
  v10 = *MEMORY[0x1E6960560];
  v11 = CMGetAttachment(a1, *MEMORY[0x1E6960560], 0);
  if (v11)
  {
    CMTimeMakeFromDictionary(&time1, v11);
    v12 = time1.value;
    v147 = *&time1.flags;
    v13 = time1.timescale;
    v148 = HIDWORD(time1.epoch);
  }

  else
  {
    v12 = *v9;
    v13 = *(v9 + 8);
  }

  time1 = v75;
  time2.value = v12;
  *&time2.flags = v147;
  time2.timescale = v13;
  HIDWORD(time2.epoch) = v148;
  CMTimeSubtract(&v76, &time1, &time2);
  time1.value = v3;
  *&time1.flags = v145;
  time1.timescale = v4;
  HIDWORD(time1.epoch) = v146;
  time2 = v76;
  v14 = v4;
  v15 = v3;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v15 = v76.value;
    v137 = *&v76.flags;
    v14 = v76.timescale;
    v138 = HIDWORD(v76.epoch);
  }

  time1.value = v15;
  *&time1.flags = v137;
  time1.timescale = v14;
  HIDWORD(time1.epoch) = v138;
  time2 = v74;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v15 = v74.value;
    v14 = v74.timescale;
    v137 = *&v74.flags;
    v138 = HIDWORD(v74.epoch);
  }

  time1.value = v15;
  *&time1.flags = v137;
  time1.timescale = v14;
  HIDWORD(time1.epoch) = v138;
  time2 = v76;
  CMTimeSubtract(&v69, &time1, &time2);
  time1 = v69;
  v64 = v12;
  time2.value = v12;
  *&time2.flags = v147;
  time2.timescale = v13;
  HIDWORD(time2.epoch) = v148;
  if (CMTimeCompare(&time1, &time2))
  {
    time1 = v69;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      time1 = v69;
      v17 = CMTimeCopyAsDictionary(&time1, AllocatorForMedia);
      if (!v17)
      {
        goto LABEL_41;
      }

      v18 = v17;
      CMSetAttachment(a1, v10, v17, 1u);
      CFRelease(v18);
      time1.value = v15;
      *&time1.flags = v137;
      time1.timescale = v14;
      HIDWORD(time1.epoch) = v138;
      CMSampleBufferSetOutputPresentationTimeStamp(a1, &time1);
      if (dword_1EAF169F0 < 5)
      {
        goto LABEL_41;
      }

      v73 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v20 = v73;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = *v61;
        if (*v61)
        {
          v23 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v23 = "";
        }

        v62 = v23;
        if (v5)
        {
          v29 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v29 = "";
        }

        v57 = v29;
        v30 = v69.value;
        v55 = v69.timescale;
        time1 = v69;
        Seconds = CMTimeGetSeconds(&time1);
        time1.value = v64;
        *&time1.flags = v147;
        time1.timescale = v13;
        HIDWORD(time1.epoch) = v148;
        v32 = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136317954;
        *(&time2.value + 4) = "fpfs_TrimBufferAtStartToTime";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v22;
        HIWORD(time2.epoch) = 2082;
        v120 = v62;
        v121 = 2048;
        v122 = v5;
        v123 = 2082;
        v124 = v57;
        v125 = 2048;
        v126 = v30;
        v127 = 1024;
        *v128 = v55;
        *&v128[4] = 2048;
        *&v128[6] = Seconds;
        v129 = 2048;
        v130 = *&a1;
        v131 = 2048;
        v132 = v64;
        v133 = 1024;
        v134 = v13;
        v135 = 2048;
        v136 = v32;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      CMRemoveAttachment(a1, v10);
      if (dword_1EAF169F0 < 5)
      {
        goto LABEL_41;
      }

      v73 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v25 = v73;
      if (os_log_type_enabled(v24, type))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v27 = *v61;
        if (*v61)
        {
          v28 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v28 = "";
        }

        v63 = v28;
        if (v5)
        {
          v33 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v33 = "";
        }

        v59 = v33;
        time1.value = v12;
        *&time1.flags = v147;
        time1.timescale = v13;
        HIDWORD(time1.epoch) = v148;
        v34 = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136317186;
        *(&time2.value + 4) = "fpfs_TrimBufferAtStartToTime";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v27;
        HIWORD(time2.epoch) = 2082;
        v120 = v63;
        v121 = 2048;
        v122 = v5;
        v123 = 2082;
        v124 = v59;
        v125 = 2048;
        v126 = a1;
        v127 = 2048;
        *v128 = v12;
        *&v128[8] = 1024;
        *&v128[10] = v13;
        v129 = 2048;
        v130 = v34;
        _os_log_send_and_compose_impl();
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_41:
  v35 = v69.value;
  v36 = v69.timescale;
  v143 = *&v69.flags;
  v144 = HIDWORD(v69.epoch);
  CMSampleBufferGetOutputPresentationTimeStamp(&time1, a1);
  v37 = time1.value;
  v139 = *&time1.flags;
  v38 = time1.timescale;
  v140 = HIDWORD(time1.epoch);
  CMSampleBufferGetOutputDuration(&time1, a1);
  time2 = **&MEMORY[0x1E6960CC0];
  if (!CMTimeCompare(&time1, &time2))
  {
    time1.value = v37;
    *&time1.flags = v139;
    time1.timescale = v38;
    HIDWORD(time1.epoch) = v140;
    time2.value = v3;
    *&time2.flags = v145;
    time2.timescale = v4;
    HIDWORD(time2.epoch) = v146;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v139 = v145;
      v140 = v146;
      time1.value = v3;
      *&time1.flags = v145;
      time1.timescale = v4;
      HIDWORD(time1.epoch) = v146;
      CMSampleBufferSetOutputPresentationTimeStamp(a1, &time1);
      v37 = v3;
      v38 = v4;
    }
  }

  if (dword_1EAF169F0 >= 5)
  {
    LODWORD(v76.value) = 0;
    LOBYTE(v75.value) = 0;
    v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v40 = v76.value;
    v41 = os_log_type_enabled(v39, v75.value);
    v42 = v40 & 0xFFFFFFFE;
    if (v41)
    {
      v42 = v40;
    }

    if (v42)
    {
      v43 = v36;
      v44 = *v65;
      if (*v65)
      {
        v45 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v45 = "";
      }

      v66 = v45;
      if (v5)
      {
        v46 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v46 = "";
      }

      v60 = v46;
      v56 = v71.value;
      v58 = v71.timescale;
      time1 = v71;
      v47 = CMTimeGetSeconds(&time1);
      v53 = v70.value;
      v54 = v70.timescale;
      time1 = v70;
      v48 = CMTimeGetSeconds(&time1);
      time1.value = v37;
      *&time1.flags = v139;
      time1.timescale = v38;
      HIDWORD(time1.epoch) = v140;
      v49 = CMTimeGetSeconds(&time1);
      time1.value = v35;
      *&time1.flags = v143;
      time1.timescale = v43;
      HIDWORD(time1.epoch) = v144;
      v50 = CMTimeGetSeconds(&time1);
      time1.value = v3;
      *&time1.flags = v145;
      time1.timescale = v4;
      HIDWORD(time1.epoch) = v146;
      v51 = CMTimeGetSeconds(&time1);
      time1.value = value;
      *&time1.flags = v141;
      time1.timescale = timescale;
      HIDWORD(time1.epoch) = epoch_high;
      v52 = CMTimeGetSeconds(&time1);
      LODWORD(time1.value) = 136320770;
      *(&time1.value + 4) = "fpfsi_TrimAudioInQueue";
      LOWORD(time1.flags) = 2048;
      *(&time1.flags + 2) = v44;
      HIWORD(time1.epoch) = 2082;
      v78 = v66;
      v79 = 2048;
      v80 = v5;
      v81 = 2082;
      v82 = v60;
      v83 = 2048;
      v84 = v56;
      v85 = 1024;
      v86 = v58;
      v87 = 2048;
      v88 = v47;
      v89 = 2048;
      v90 = v53;
      v91 = 1024;
      v92 = v54;
      v93 = 2048;
      v94 = v48;
      v95 = 2048;
      v96 = v37;
      v97 = 1024;
      v98 = v38;
      v99 = 2048;
      v100 = v49;
      v101 = 2048;
      v102 = v35;
      v103 = 1024;
      v104 = v43;
      v105 = 2048;
      v106 = v50;
      v107 = 2048;
      v108 = v3;
      v109 = 1024;
      v110 = v4;
      v111 = 2048;
      v112 = v51;
      v113 = 2048;
      v114 = value;
      v115 = 1024;
      v116 = timescale;
      v117 = 2048;
      v118 = v52;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  time1.value = value;
  *&time1.flags = v141;
  time1.timescale = timescale;
  HIDWORD(time1.epoch) = epoch_high;
  time2.value = v3;
  *&time2.flags = v145;
  time2.timescale = v4;
  HIDWORD(time2.epoch) = v146;
  return (~CMTimeCompare(&time1, &time2) >> 31);
}

uint64_t fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 < 1.0 || a2 < 1.0)
  {
    fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_4(&v30);
    return v30;
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&a1);
  if (!DictionaryRepresentation)
  {
    fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_3(&v30);
    return v30;
  }

  v10 = DictionaryRepresentation;
  fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  if (!a5)
  {
LABEL_31:
    v26 = v10;
    goto LABEL_32;
  }

  v28 = 1.0;
  v29 = 1.0;
  Dimensions = fpfsi_GetDimensions(a5, &v29, &v28);
  if (Dimensions)
  {
    a5 = Dimensions;
    goto LABEL_31;
  }

  v12 = fminf(v29, v28);
  if (v12 >= 1.0)
  {
    v13 = v28;
  }

  else
  {
    v13 = a2;
  }

  if (v12 >= 1.0)
  {
    v14 = v29;
  }

  else
  {
    v14 = a1;
  }

  v15 = v14;
  v16 = v13;
  v17 = FigCFEqual();
  v31.width = v14;
  v31.height = v13;
  v18 = CGSizeCreateDictionaryRepresentation(v31);
  if (!v18)
  {
    fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_2(&v30);
    a5 = v30;
    goto LABEL_31;
  }

  v19 = v18;
  v20 = a1 / v15;
  v21 = a2 / v16;
  if (v20 >= v21)
  {
    v22 = a2 / v16;
  }

  else
  {
    v22 = a1 / v15;
  }

  if (v20 <= v21)
  {
    v20 = a2 / v16;
  }

  if (!v17)
  {
    v20 = v22;
  }

  v23 = (v14 * v20);
  v24 = (v13 * v20);
  fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  v32.origin.x = (a1 - v23) * 0.5;
  v32.origin.y = (a2 - v24) * 0.5;
  v32.size.width = v23;
  v32.size.height = v24;
  v25 = CGRectCreateDictionaryRepresentation(v32);
  if (v25)
  {
    fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    a5 = 0;
  }

  else
  {
    fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_1(&v30);
    a5 = v30;
  }

  CFRelease(v10);
  CFRelease(v19);
  if (v25)
  {
    v26 = v25;
LABEL_32:
    CFRelease(v26);
  }

  return a5;
}

float fpfs_ProjectedDeliveryTime(uint64_t a1, CFIndex a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(*(a1 + 1680));
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1664), a2);
  return *(a1 + 1536) * (FigAlternateGetPeakBitRate(ValueAtIndex) / PeakBitRate);
}

BOOL fpfs_IsMarkerSampleContainingAttachment(opaqueCMSampleBuffer *a1, const __CFString *a2)
{
  result = fpfs_IsMarkerOnly(a1);
  if (result)
  {
    return CMGetAttachment(a1, a2, 0) != 0;
  }

  return result;
}

void fpfsi_restartAudioRendering(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = *(CMBaseObjectGetDerivedStorage() + 536);
  if (!v8)
  {
    goto LABEL_35;
  }

  BOOLean = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v10 = *(CMBaseObjectGetVTable() + 16);
  if (v10 && (v11 = *(v10 + 8)) != 0 && (v11(v8, @"FAS_IsActive", AllocatorForMedia, &BOOLean), BOOLean))
  {
    Value = CFBooleanGetValue(BOOLean);
    CFRelease(BOOLean);
    v13 = Value == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 && dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v13)
  {
LABEL_35:
    v15 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v15)
    {
      while (1)
      {
        if (*(v15 + 48) == 1936684398)
        {
          v16 = *(v15 + 112);
          if (v16)
          {
            break;
          }
        }

        v15 = *(v15 + 24);
        if (!v15)
        {
          return;
        }
      }

      if (*(v16 + 32) == a4 && *(a3 + 840) != 0.0)
      {
        if (dword_1EAF169F0)
        {
          LODWORD(BOOLean) = 0;
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v18 = BOOLean;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
          }

          else
          {
            v19 = v18 & 0xFFFFFFFE;
          }

          if (v19)
          {
            if (a1)
            {
              v20 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v20 = "";
            }

            if (a2)
            {
              v21 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v21 = "";
            }

            *v23 = 136316162;
            *&v23[4] = "fpfsi_restartAudioRendering";
            *&v23[12] = 2048;
            *&v23[14] = a1;
            *&v23[22] = 2082;
            v24 = v20;
            v25 = 2048;
            v26 = a2;
            v27 = 2082;
            v28 = v21;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpfsi_pauseItem(a2);
        v29 = *MEMORY[0x1E6960C70];
        v30 = *(MEMORY[0x1E6960C70] + 16);
        *v23 = v29;
        *&v23[16] = v30;
        fpfs_setRateInternal(a1, a2, &v29, v23);
      }
    }
  }
}

uint64_t fpfs_SynchronousFrameEnqueued(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 52) != 1)
  {
    result = FigAtomicIncrement32();
    if (result <= 1)
    {
      fpfs_PostNotificationWhenUnlocked(a2, @"SynchronousFrameEnqueued", a2, 0);
      CFRetain(a2);
      CMNotificationCenterGetDefaultLocalCenter();
      dispatch_get_global_queue(0, 0);
      FigGetAllocatorForMedia();

      return FigDeferNotificationToDispatchQueue();
    }
  }

  return result;
}

void fpfsi_completedDecodeForPreroll(int a1, uint64_t a2, int a3, int a4, CFTypeRef cf)
{
  cfa = 0;
  v8 = 0;
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &v8, &cfa))
      {
        CMBaseObjectGetDerivedStorage();
        FigRetainProxyRetain();
        CMNotificationCenterGetDefaultLocalCenter();
        FigGetAllocatorForMedia();
        FigDeferNotificationToDispatchQueue();
      }
    }

    else
    {
      fpfsi_completedDecodeForPreroll_cold_1();
    }
  }

  else
  {
    fpfsi_completedDecodeForPreroll_cold_2();
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t fpfsi_markerBufferConsumed(int a1, int a2, int a3, const void *a4, CFTypeRef cf)
{
  if (!cf)
  {
    return fpfsi_markerBufferConsumed_cold_2();
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID())
  {
    return fpfsi_markerBufferConsumed_cold_1();
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRetainProxyRetain();
  if (a4)
  {
    CFRetain(a4);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  dispatch_get_global_queue(2, 0);
  FigGetAllocatorForMedia();
  return FigDeferNotificationToDispatchQueue();
}

void fpfs_RenderPipelineLostDecoderState(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = 0;
  cf = 0;
  if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v6))
  {
    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v5 = v6;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void fpfs_deferredSynchronousFrameEnqueued(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v4 + 8);
  *(DerivedStorage + 808) = 0;
  FigMemoryBarrier();
  if (!*(DerivedStorage + 52))
  {
    v5 = *(DerivedStorage + 392);
    if (v5)
    {
      if (CFArrayGetCount(v5) >= 1)
      {
        cf = 0;
        AllocatorForMedia = FigGetAllocatorForMedia();
        FigDeferredTransactionCreate(AllocatorForMedia, &cf);
        FPSupport_AppendDeferredTransactionChangeForCallingSetContentsChangedOnLayers(cf, *(DerivedStorage + 392));
        FigDeferredTransactionCommit(cf, 0);
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  fpfs_UnlockAndPostNotificationsWithCaller(a2);
  CFRelease(a2);
}

uint64_t fpfsi_RTCReportingUpdateAudioInfoForVariantEnd(uint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 456))
  {
    return result;
  }

  v3 = result;
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(*(a2 + 56));
  if (RichestDecodableFormat)
  {
    v5 = 1;
  }

  else
  {
    v5 = dword_1EAF169F0 == 0;
  }

  if (!v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
  v16[0] = 0;
  AudioChannelCount = FigAlternateGetAudioChannelCount(*(a2 + 456), CurrentAudioPersistentIDFromMediaOption, v16);
  if ((AudioChannelCount - 1) <= 1)
  {
    if ((v16[0] & 2) != 0)
    {
      v9 = 3;
    }

    else
    {
      v9 = (v16[0] >> 1) & 2;
    }

LABEL_14:
    v10 = *(v3 + 2568);
    if (v10)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v11)
      {
        v11(v10, @"playerStats", 0x1F0B43438, v9, 0);
      }
    }

    goto LABEL_17;
  }

  if (AudioChannelCount >= 3)
  {
    v9 = 1;
    goto LABEL_14;
  }

LABEL_17:
  result = fpfs_ShouldEnableSpatializationForTrack(a2);
  if (result)
  {
    v12 = *(v3 + 2568);
    if (v12)
    {
      VTable = CMBaseObjectGetVTable();
      v14 = *(VTable + 16);
      result = VTable + 16;
      v15 = *(v14 + 56);
      if (v15)
      {
        result = v15(v12, @"playerStats", 0x1F0B43498, 1, 0);
      }
    }
  }

  if (RichestDecodableFormat)
  {
    return fpfsi_RTCReportingUpdateAudioInfoForVariantEnd_cold_1(v3, RichestDecodableFormat);
  }

  return result;
}

void fpfs_BufferChomper(opaqueCMBufferQueue **a1)
{
  v2 = *a1;
  v3 = 100;
  while (1)
  {
    v4 = CMBufferQueueDequeueAndRetain(v2);
    if (!v4)
    {
      break;
    }

    CFRelease(v4);
    if (!--v3)
    {
      if (CMBufferQueueGetBufferCount(v2) >= 1)
      {
        v5 = dispatch_time(0, 20000000);
        global_queue = dispatch_get_global_queue(-2, 0);

        dispatch_after_f(v5, global_queue, a1, fpfs_BufferChomper);
        return;
      }

      break;
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v7 = dispatch_time(0, 3000000000);
  v8 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpfs_BufferChomper_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_after(v7, v8, block);
}

void fpfsi_ExternalProtectionStatusChanged(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  cf = 0;
  FigRetainProxyRetain();
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v4))
  {
    FigRetainProxyRelease();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = v4;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void fpfsi_ExternalProtectionRequiredChanged(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  cf = 0;
  FigRetainProxyRetain();
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v4))
  {
    FigRetainProxyRelease();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = v4;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void fpfs_PreserveResumeTag(const void *a1, uint64_t a2)
{
  v3 = CMGetAttachment(a1, *MEMORY[0x1E6960518], 0);
  if (v3)
  {
    v4 = *(a2 + 56);
    *(a2 + 56) = v3;
    CFRetain(v3);
    if (v4)
    {

      CFRelease(v4);
    }
  }
}

BOOL fpfs_UseTrackToSetPumpOffset(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valid = fpfs_audioOnlyValidAlternateList(DerivedStorage);
  if ((*(DerivedStorage + 24 * *(a1 + 196) + 1196) & 1) == 0 || *(a1 + 64) == *(DerivedStorage + 16 * *(a1 + 196) + 984))
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (v4 == 1986618469)
  {
    return 1;
  }

  return valid && v4 == 1936684398;
}

uint64_t fpfs_UpdatePumpOffset(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  result = CMBaseObjectGetDerivedStorage();
  v7 = result;
  v8 = (result + 1280);
  v9 = *(result + 1292);
  v10 = MEMORY[0x1E6960C70];
  if (v9)
  {
    memset(&v39, 0, sizeof(v39));
    v11 = (result + 1256);
    lhs = *a3;
    rhs = *(result + 1256);
    CMTimeSubtract(&v39, &lhs, &rhs);
    memset(&v38, 0, sizeof(v38));
    lhs = *a2;
    rhs = *v8;
    CMTimeSubtract(&v38, &lhs, &rhs);
    memset(&v37, 0, sizeof(v37));
    memset(&v36, 0, sizeof(v36));
    CMTimeMake(&v36, 1, 1);
    lhs = v39;
    rhs = v38;
    if (CMTimeCompare(&lhs, &rhs) < 0)
    {
      lhs = v38;
      *&rhs.value = *&v39.value;
      epoch = v39.epoch;
    }

    else
    {
      lhs = v39;
      *&rhs.value = *&v38.value;
      epoch = v38.epoch;
    }

    rhs.epoch = epoch;
    CMTimeSubtract(&v37, &lhs, &rhs);
    lhs = v37;
    rhs = v36;
    result = CMTimeCompare(&lhs, &rhs);
    if ((result & 0x80000000) == 0)
    {
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        v10 = MEMORY[0x1E6960C70];
      }

      v13 = *v10;
      *&v8->value = *v10;
      v14 = *(v10 + 2);
      v8->epoch = v14;
      *v11 = v13;
      *(v7 + 1272) = v14;
    }

    v9 = *(v7 + 1292);
  }

  if ((v9 & 1) == 0)
  {
    rhs = *a3;
    v39 = *a2;
    CMTimeSubtract(&lhs, &rhs, &v39);
    *(v7 + 1160) = *&lhs.value;
    v15 = lhs.epoch;
    *(v7 + 1176) = lhs.epoch;
    v16 = *(v7 + 96);
    *&lhs.value = *(v7 + 1160);
    lhs.epoch = v15;
    result = FigAlternatePlaybackBitrateMonitorSetPumpOffset(v16, &lhs);
    if (dword_1EAF169F0)
    {
      LODWORD(v39.value) = 0;
      LOBYTE(v38.value) = 0;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v39.value;
      if (os_log_type_enabled(v17, v38.value))
      {
        v19 = value;
      }

      else
      {
        v19 = value & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *v7;
        if (*v7)
        {
          v21 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v21 = "";
        }

        v34 = v21;
        if (a1)
        {
          v22 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v22 = "";
        }

        v33 = v22;
        lhs = *(v7 + 1160);
        Seconds = CMTimeGetSeconds(&lhs);
        fpfs_GetTime(v7, &lhs);
        v24 = CMTimeGetSeconds(&lhs);
        lhs = *a3;
        v25 = CMTimeGetSeconds(&lhs);
        lhs = *a2;
        v26 = CMTimeGetSeconds(&lhs);
        LODWORD(rhs.value) = 136317186;
        *(&rhs.value + 4) = "fpfs_UpdatePumpOffset";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v20;
        HIWORD(rhs.epoch) = 2082;
        v41 = v34;
        v42 = 2048;
        v43 = a1;
        v44 = 2082;
        v45 = v33;
        v46 = 2048;
        v47 = Seconds;
        v48 = 2048;
        v49 = v24;
        v50 = 2048;
        v51 = v25;
        v52 = 2048;
        v53 = v26;
        _os_log_send_and_compose_impl();
      }

      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      v10 = MEMORY[0x1E6960C70];
    }

    v27 = *&a2->value;
    v8->epoch = a2->epoch;
    *&v8->value = v27;
    v28 = *&a3->value;
    *(v7 + 1272) = a3->epoch;
    *(v7 + 1256) = v28;
  }

  v29 = 0;
  v30 = *v10;
  v31 = *(v10 + 2);
  do
  {
    v32 = v7 + 1184 + v29;
    *v32 = v30;
    *(v32 + 16) = v31;
    v29 += 24;
  }

  while (v29 != 72);
  return result;
}

void fpfs_SyncAudioBuffer(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(&v17, 0, sizeof(v17));
  memset(&v18, 0, sizeof(v18));
  CMSampleBufferGetOutputPresentationTimeStamp(&v17, a3);
  v14 = 0uLL;
  v15 = 0;
  if (*(a2 + 64) == *(a1 + 976 + 16 * *(a2 + 196)))
  {
    *&v13.value = *(a2 + 208);
    v6 = *(a2 + 224);
  }

  else
  {
    *&v13.value = *MEMORY[0x1E6960C88];
    v6 = *(MEMORY[0x1E6960C88] + 16);
  }

  v13.epoch = v6;
  memset(&v16, 0, sizeof(v16));
  fpfs_GetTime(a1, &v14);
  if (*(a2 + 199))
  {
    v7 = *(a2 + 64) == *(a1 + 976 + 16 * *(a2 + 196) + 8) && fpfs_IsTrialReadyToComplete(a1, a2);
    *&time1.value = v14;
    time1.epoch = v15;
    time2 = v13;
    if (fpfs_CheckAudioSync(a1, a2, a3, &time1, &time2, v7, &v16))
    {
      Head = CMBufferQueueGetHead(*(a2 + 88));
      memset(&v12, 0, sizeof(v12));
      CMSampleBufferGetOutputPresentationTimeStamp(&v12, Head);
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      time1 = v16;
      fpfs_FinishAudioSyncAndStart();
    }
  }

  else
  {
    fpfs_GetEndOutputPresentationTimeStamp(a3, &v18);
    time1 = v18;
    *&time2.value = v14;
    time2.epoch = v15;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      if (*(a2 + 436))
      {
        fpfs_SyncAudioBuffer_cold_1(&v14, a2);
      }

      else
      {
        CMBufferQueueReset(*(a2 + 88));
        CMBufferQueueReset(*(a2 + 96));
      }
    }

    else
    {
      v8 = CMBufferQueueGetHead(*(a2 + 88));
      memset(&v12, 0, sizeof(v12));
      if (v8)
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&v12, v8);
      }

      else
      {
        v12 = v17;
      }

      if (dword_1EAF169F0)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(a2 + 199) = 1;
      *(a2 + 201) = 1;
      *(a2 + 312) = v12;
      fpfs_SyncAudioBuffer(a1, a2, a3);
    }
  }
}

uint64_t fpfs_ensureDecryptorHasStarted(uint64_t a1)
{
  v10[26] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 408);
  if (!v1)
  {
    v10[0] = 0;
    v3 = *(a1 + 400);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v4)
    {
      return 0;
    }

    v5 = v4(v3, v10);
    v6 = v5 == -15844 || v5 == -12782;
    if (v6 || v5 == 0)
    {
      return 0;
    }

    else
    {
      if (v5 == -12785)
      {
        v1 = 4294954373;
      }

      else
      {
        v1 = v5;
      }

      *(a1 + 408) = v1;
      CMBaseObjectGetDerivedStorage();
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return v1;
}

void fpfs_associateCrossTalkerToRenderChain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v4 = *(a1 + 1024);
  if (v4)
  {
    do
    {
      if (v4 != a2 && *(v4 + 80) == *(a2 + 80))
      {
        v6 = *(v4 + 48);
        v7 = v6 == 1668047728 || v6 == 1986618469;
        if (v7 || v6 == 1935832172)
        {
          v9 = *(v4 + 112);
          if (v9)
          {
            v10 = *(v9 + 32);
            AllocatorForMedia = FigGetAllocatorForMedia();
            FigBaseObject = FigRenderPipelineGetFigBaseObject(v10);
            v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v13)
            {
              if (!v13(FigBaseObject, @"HDRCrossTalker", AllocatorForMedia, &cf))
              {
                break;
              }
            }
          }
        }
      }

      v4 = *(v4 + 24);
    }

    while (v4);
    v14 = cf;
    if (cf)
    {
      goto LABEL_18;
    }
  }

  v15 = FigGetAllocatorForMedia();
  FigCrossTalkerCreate(v15, &cf);
  v14 = cf;
  if (cf)
  {
LABEL_18:
    v16 = FigRenderPipelineGetFigBaseObject(*(a3 + 32));
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      v17(v16, @"HDRCrossTalker", v14);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t fpfs_createTimedDataRenderChain(uint64_t a1, uint64_t a2, CFTypeRef **a3)
{
  v5 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040EF867D01uLL);
  if (!v5)
  {
    fpfs_createTimedDataRenderChain_cold_1(&v15);
    return v15;
  }

  v6 = v5;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v8 = FigTimedMetadataRenderPipelineCreate(AllocatorForMedia, fpfs_TimedDataRenderCallback, a1, v6 + 4);
  if (v8)
  {
    v13 = v8;
    goto LABEL_8;
  }

  v9 = v6[4];
  v10 = FigGetAllocatorForMedia();
  FigBaseObject = FigRenderPipelineGetFigBaseObject(v9);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_7;
  }

  v13 = v12(FigBaseObject, @"SourceSampleBufferQueue", v10, v6 + 5);
  if (v13)
  {
LABEL_7:
    CFRelease(v6[4]);
LABEL_8:
    free(v6);
    return v13;
  }

  v6[2] = FigFormatDescriptionRetain();
  *v6 = 1;
  *a3 = v6;
  return v13;
}

CFStringRef fpfs_createNextRenderPipelineIdentifierString()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ++*(DerivedStorage + 900);
  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"R%s.%02d", DerivedStorage + 888, *(DerivedStorage + 900));
}

CFMutableDictionaryRef fpfs_createSpeedRampOrWarehouseRenderPipelineOptions()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  return Mutable;
}

uint64_t fpfsi_syncMomentSourceCallback(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigRetainProxyIsInvalidated();
  if (!result)
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 688))
    {
      v5 = pthread_main_np();
      v6 = *(DerivedStorage + 688);
      if (v5)
      {
        FigLayerSynchronizerSynchronizeToMoment(v6, a2, 0);
      }

      else
      {
        FigLayerSynchronizerSynchronizeToMomentWithDeferredTransaction(v6, a2);
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

void fpfs_TimedDataRenderCallback(void *a1, const void *a2)
{
  values = a1;
  if (*(CMBaseObjectGetDerivedStorage() + 459))
  {
    if (a1)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v5 = CFDictionaryCreate(AllocatorForMedia, &kFigPlayerTimedMetadataNotificationKey_ValueArray, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      fpfs_PostNotificationWhenUnlocked(a2, @"TimedMetadata", a2, v5);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {

      fpfs_PostNotificationWhenUnlocked(a2, @"TimedMetadata", a2, 0);
    }
  }
}

uint64_t fpfsi_prepareSubtitleRenderPipeline(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a2);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v6(FigBaseObject, @"DisplayNonForcedSubtitles", *MEMORY[0x1E695E4D0]);
  }

  v7 = *(DerivedStorage + 1824);
  if (!v7)
  {
    return 0;
  }

  if (!*(v4 + 460))
  {
    v8 = FigRenderPipelineGetFigBaseObject(a2);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v10 = 0x1F0B550D8;
      goto LABEL_10;
    }

    return 4294954514;
  }

  v8 = FigRenderPipelineGetFigBaseObject(a2);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = 0x1F0B2FB78;
LABEL_10:

  return v9(v8, v10, v7);
}

uint64_t fpfsi_setAudioSessionPreferredAudioHardwareFormat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = *(result + 536);
  if (v5)
  {
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = VTable + 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 56);
      if (v9)
      {
        result = v9(v5, *MEMORY[0x1E69B01E8], a3);
      }
    }
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t fpfsi_DetermineRateSnapping(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    result = FigCFEqual();
    v4 = 0x420000003D000000;
    if (!result)
    {
      result = FigCFEqual();
      if (!result)
      {
        result = FigCFEqual();
        if (!result)
        {
          result = FigCFEqual();
          if (result)
          {
            v4 = 0;
            v5 = 1;
            goto LABEL_6;
          }

          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    v5 = 0;
LABEL_6:
    *a2 = v5;
    *(a2 + 4) = v4;
  }

  return result;
}

void fpfs_enqueuePrerollDidCompleteNotificationIfNeeded()
{
  if (*(CMBaseObjectGetDerivedStorage() + 2224))
  {
    fpfs_enqueuePrerollDidCompleteNotificationIfNeeded_cold_1();
  }
}

void fpfs_PostNotificationListFromDispatch(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = *(v2 + 32);
      fpfs_PostNotificationFromDispatch(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t fpfs_Invalidate(CFTypeRef cf)
{
  v21 = *MEMORY[0x1E69E9840];
  if (dword_1EAF169F0)
  {
    HIDWORD(v14) = 0;
    BYTE3(v14) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRetain(cf);
  fpfs_InvalidateGuts(cf, v3, v4, v5, v6, v7, v8, v9, cfa, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  CFRelease(cf);
  return 0;
}

uint64_t fpfs_InvalidateItem(uint64_t a1)
{
  result = FigPlaybackItemGetFigBaseObject(a1);
  if (result)
  {
    v2 = result;
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 8);
    result = VTable + 8;
    v5 = *(v4 + 24);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

uint64_t fpfs_clientRenderOptionChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigGetAllocatorForMedia();

  return FigDeferNotificationToDispatchQueue();
}

uint64_t fpfs_FVTPreferredDataChannelGroupsChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigGetAllocatorForMedia();

  return FigDeferNotificationToDispatchQueue();
}

uint64_t fpfs_externalStartupTaskCompleted(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v7 + 8);
  if (*(DerivedStorage + 52))
  {
    fpfs_externalStartupTaskCompleted_cold_1();
  }

  else
  {
    v8 = *(DerivedStorage + 952);
    v12.length = CFArrayGetCount(v8);
    v12.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v12, a4);
    if (FigPlayerStartupTaskDoesAllowStartup(a4) && FirstIndexOfValue != -1 && *(DerivedStorage + 80))
    {
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFArrayRemoveValueAtIndex(*(DerivedStorage + 952), FirstIndexOfValue);
      fpfs_CheckPrebufferedLevels();
    }
  }

  return fpfs_UnlockAndPostNotificationsWithCaller(a2);
}

uint64_t fpfs_prerollLost(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigGetAllocatorForMedia();

  return FigDeferNotificationToDispatchQueue();
}

uint64_t fpfs_handleSetProperty(void *a1, int a2, const void *a3, uint64_t a4, _BYTE *a5)
{
  v252 = *MEMORY[0x1E69E9840];
  *cf = a4;
  if (!a1 || !a3)
  {
    fpfs_handleSetProperty_cold_37(&size);
    return LODWORD(size.width);
  }

  *a5 = 1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a3, @"PlayerRole"))
  {
    v8 = FigCFCopyCompactDescription();
    if (dword_1EAF169F0)
    {
      LODWORD(v231.origin.x) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  v10 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v10 + 8);
  if (*(DerivedStorage + 52))
  {
    fpfs_handleSetProperty_cold_1(&size);
    goto LABEL_54;
  }

  if (CFEqual(a3, @"DestinationPixelBufferAttributes"))
  {
    if (!*cf || (v11 = CFGetTypeID(*cf), v11 == CFDictionaryGetTypeID()))
    {
      v12 = *(DerivedStorage + 640);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = *cf;
      *(DerivedStorage + 640) = *cf;
      if (v13)
      {
        CFRetain(v13);
      }

      goto LABEL_16;
    }

    fpfs_handleSetProperty_cold_2(&size);
LABEL_54:
    width_low = LODWORD(size.width);
    goto LABEL_67;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerArray"))
  {
    fpfs_handleSetProperty_cold_31(cf, a1, &size);
    goto LABEL_54;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerBoundsUpdate"))
  {
    *type = 0;
    v15 = *(MEMORY[0x1E695F058] + 16);
    *&cf[8] = *MEMORY[0x1E695F058];
    rect_16 = v15;
    v231.origin = *&cf[8];
    v231.size = v15;
    v16 = *(MEMORY[0x1E6962818] + 16);
    size = *MEMORY[0x1E6962818];
    v17 = *(MEMORY[0x1E6962818] + 32);
    v18 = *(MEMORY[0x1E6962818] + 48);
    v240 = v16;
    v241 = v17;
    v242 = v18;
    if (*cf && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(*cf)))
    {
      Value = CFDictionaryGetValue(*cf, @"ClosedCaptionLayerBoundsUpdate_LayerBounds");
      if (Value)
      {
        CGRectMakeWithDictionaryRepresentation(Value, &cf[8]);
      }

      v21 = CFDictionaryGetValue(*cf, @"ClosedCaptionLayerBoundsUpdate_LayerVideoRelativeToViewport");
      v22 = v21;
      if (v21)
      {
        CGRectMakeWithDictionaryRepresentation(v21, &v231);
      }

      v23 = CFDictionaryGetValue(*cf, @"ClosedCaptionLayerBoundsUpdate_LayerCaptionsAvoidanceMargins");
      v24 = v23 == 0;
      if (v23)
      {
        FigGeometryMarginsMakeFromDictionary();
      }

      v25 = CFDictionaryGetValue(*cf, @"ClosedCaptionLayerBoundsUpdate_LayerIndex");
      if (v25)
      {
        CFNumberGetValue(v25, kCFNumberIntType, type);
        v26 = *type;
        if ((*type & 0x80000000) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v26 = 0;
      }

      width_low = 0;
      v28 = DerivedStorage + 208;
      v29 = *(DerivedStorage + 200);
      v27 = v26;
      if (v22)
      {
        v30 = &v231;
        goto LABEL_32;
      }
    }

    else
    {
      width_low = FigSignalErrorAtGM();
      v27 = 0;
      v28 = DerivedStorage + 208;
      v29 = *(DerivedStorage + 200);
      v24 = 1;
    }

    v30 = 0;
LABEL_32:
    if (v24)
    {
      p_size = 0;
    }

    else
    {
      p_size = &size;
    }

    FPSupport_updateClosedCaptionLayerBounds(v28, *&cf[8], *&cf[16], rect_16.width, rect_16.height, v29, v27, v30, p_size);
    goto LABEL_67;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerSetOptions"))
  {
    *&cf[8] = 0;
    if (*cf && (v32 = CFDictionaryGetTypeID(), v32 == CFGetTypeID(*cf)))
    {
      v33 = CFDictionaryGetValue(*cf, @"ClosedCaptionLayerSetOption_LayerIndex");
      if (v33)
      {
        CFNumberGetValue(v33, kCFNumberIntType, &cf[8]);
      }

      v34 = FigCFDictionaryGetValue();
      if (!v34)
      {
        fpfs_handleSetProperty_cold_4(&size);
        goto LABEL_54;
      }

      v35 = v34;
      v36 = FigCFDictionaryGetValue();
      if (!v36)
      {
        fpfs_handleSetProperty_cold_3(&size);
        goto LABEL_54;
      }

      width_low = 0;
      v37 = *&cf[8];
      if ((*&cf[8] & 0x80000000) != 0)
      {
        goto LABEL_67;
      }

      v38 = v36;
    }

    else
    {
      width_low = FigSignalErrorAtGM();
      v35 = 0;
      v38 = 0;
      v37 = 0;
    }

    FPSupport_setClosedCaptionLayerOptions(DerivedStorage + 208, *(DerivedStorage + 200), v37, v35, v38);
    goto LABEL_67;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerSetSeparated"))
  {
    fpfs_handleSetProperty_cold_27(cf, DerivedStorage, &size, v39, v40, v41, v42, v43, v227, v228, HIDWORD(v228), v229, *type, *&v231.origin.x, *&v231.origin.y, *&v231.size.width, *&v231.size.height, v232, *cf);
    goto LABEL_54;
  }

  if (CFEqual(a3, @"ImageQueueSlotTransitionFinished"))
  {
    fpfs_releaseTransitionImageQueuesAndSlots();
    goto LABEL_16;
  }

  if (CFEqual(a3, @"VideoLayerArray"))
  {
    if (!*cf)
    {
      v45 = 0;
      goto LABEL_63;
    }

    v44 = CFArrayGetTypeID();
    if (v44 == CFGetTypeID(*cf))
    {
      v45 = *cf;
LABEL_63:
      if (FigUseVideoReceiverForCALayer())
      {
        fpfs_handleSetProperty_cold_5(&size);
        goto LABEL_54;
      }

      v49 = fpfs_setClientVideoLayerArray(a1, v45);
      goto LABEL_66;
    }

LABEL_65:
    v49 = FigSignalErrorAtGM();
    goto LABEL_66;
  }

  if (CFEqual(a3, @"VideoLayer"))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v47 = CFArrayCreate(AllocatorForMedia, cf, *cf != 0, MEMORY[0x1E695E9C0]);
    if (v47)
    {
      v48 = v47;
      width_low = fpfs_setClientVideoLayerArray(a1, v47);
      CFRelease(v48);
      goto LABEL_67;
    }

    fpfs_handleSetProperty_cold_6(&size);
    goto LABEL_54;
  }

  if (CFEqual(a3, @"RequiresNumVideoSlots"))
  {
    *type = 0;
    if (*cf && (v51 = CFGetTypeID(*cf), v51 == CFNumberGetTypeID()))
    {
      if (!FigUseVideoReceiverForCALayer())
      {
        CFNumberGetValue(*cf, kCFNumberCFIndexType, type);
        if (*type == *(DerivedStorage + 408))
        {
          goto LABEL_16;
        }

        v231.size.width = 0.0;
        v52 = CAImageQueueGetTypeID();
        v53 = *(DerivedStorage + 408);
        *&v231.origin.x = v52;
        *&v231.origin.y = *type - v53;
        LOBYTE(v231.size.width) = 1;
        Next = fpfs_getNext(DerivedStorage, 0);
        if (dword_1EAF169F0)
        {
          v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v61 = *type;
        if (*type >= 1 && Next)
        {
          fpfs_EnqueueNotification(a1, @"TimebaseChanged", Next, 0);
          v61 = *type;
        }

        *(DerivedStorage + 408) = v61;
        *(DerivedStorage + 456) = 1;
        v62 = fpfsi_handleVideoOutputsChanged;
        v63 = &v231;
        v64 = a1;
        goto LABEL_96;
      }

      v71 = 65026;
    }

    else
    {
      v71 = 65024;
    }

    fpfs_handleSetProperty_cold_7(v71, &size);
    goto LABEL_54;
  }

  if (CFEqual(a3, @"VideoLayerDestinationIsTVOut") || CFEqual(a3, @"PreventDisplaySleepDuringVideoPlayback"))
  {
    if (*cf)
    {
      v56 = CFBooleanGetTypeID();
      if (v56 == CFGetTypeID(*cf))
      {
        v57 = CFEqual(a3, @"PreventDisplaySleepDuringVideoPlayback");
        v58 = CFBooleanGetValue(*cf);
        if (v57)
        {
          v59 = v58;
        }

        else
        {
          v59 = v58 == 0;
        }

        if (*(DerivedStorage + 416) == v59)
        {
          goto LABEL_16;
        }

        v60 = fpfs_getNext(DerivedStorage, 0);
        *(DerivedStorage + 416) = v59;
        if (!v60 || !*(CMBaseObjectGetDerivedStorage() + 832))
        {
          goto LABEL_16;
        }

        v49 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
LABEL_66:
        width_low = v49;
        goto LABEL_67;
      }
    }

    goto LABEL_65;
  }

  if (CFEqual(a3, @"AudioPipelineEarlyDump"))
  {
    if (!*cf || (v65 = CFGetTypeID(*cf), v65 != CFNumberGetTypeID()))
    {
      fpfs_handleSetProperty_cold_8(&size);
      goto LABEL_54;
    }

    CFNumberGetValue(*cf, kCFNumberIntType, (DerivedStorage + 628));
LABEL_16:
    width_low = 0;
LABEL_67:
    fpfs_UnlockAndPostNotificationsWithCaller(a1);
    return width_low;
  }

  if (CFEqual(a3, @"VideoPipelineEarlyDump"))
  {
    if (*cf)
    {
      v66 = CFGetTypeID(*cf);
      if (v66 == CFNumberGetTypeID())
      {
        CFNumberGetValue(*cf, kCFNumberIntType, (DerivedStorage + 632));
        goto LABEL_105;
      }
    }

    fpfs_handleSetProperty_cold_9(&size);
LABEL_151:
    width_low = LODWORD(size.width);
    goto LABEL_67;
  }

  if (CFEqual(a3, @"DisallowVideoLayerDisplayCompositing"))
  {
    if (!*cf || (v67 = CFGetTypeID(*cf), v67 != CFBooleanGetTypeID()))
    {
      fpfs_handleSetProperty_cold_10(&size);
      goto LABEL_151;
    }

    *(DerivedStorage + 400) = CFBooleanGetValue(*cf);
    v68 = fpfsi_updateVideoChannelSettingForAllVideoTracks;
    v69 = a1;
    v70 = 0;
LABEL_111:
    fpfs_PlayQueueCallForEachItem(v69, v68, v70);
    goto LABEL_16;
  }

  if (CFEqual(a3, @"AllowGaplessTransitions"))
  {
    width_low = 0;
    *(DerivedStorage + 49) = *cf != *MEMORY[0x1E695E4C0];
    goto LABEL_67;
  }

  if (CFEqual(a3, @"NetworkCacheURL"))
  {
LABEL_118:
    width_low = 4294954514;
    goto LABEL_67;
  }

  if (CFEqual(a3, @"PlayerVolume"))
  {
    v49 = fpfs_setVolume(a1, *cf);
    goto LABEL_66;
  }

  if (CFEqual(a3, @"PlayerMuted"))
  {
    v49 = fpfs_setMuted();
    goto LABEL_66;
  }

  if (CFEqual(a3, @"EQPreset"))
  {
    *&cf[8] = 0;
    if (*cf)
    {
      v72 = CFGetTypeID(*cf);
      if (v72 == CFNumberGetTypeID())
      {
        CFNumberGetValue(*cf, kCFNumberIntType, &cf[8]);
        v49 = fpfs_setEQPreset(a1, *&cf[8]);
        goto LABEL_66;
      }
    }

    fpfs_handleSetProperty_cold_11(&size);
    goto LABEL_151;
  }

  if (CFEqual(a3, @"SetVideoLayerBoundsAutomatically"))
  {
    if (*cf)
    {
      v73 = CFGetTypeID(*cf);
      if (v73 == CFBooleanGetTypeID())
      {
        width_low = 0;
        *(DerivedStorage + 457) = CFBooleanGetValue(*cf);
        goto LABEL_67;
      }
    }

    fpfs_handleSetProperty_cold_12(&size);
    goto LABEL_151;
  }

  if (CFEqual(a3, @"PrimaryVideoOutputSize"))
  {
    size.height = 0.0;
    size.width = 0.0;
    if (*cf)
    {
      v74 = CFGetTypeID(*cf);
      if (v74 == CFDictionaryGetTypeID() && CGSizeMakeWithDictionaryRepresentation(*cf, &size))
      {
        if (size.width == *(DerivedStorage + 440) && size.height == *(DerivedStorage + 448))
        {
          goto LABEL_105;
        }

        *(DerivedStorage + 440) = size;
        updated = fpfs_PlayQueueCallForEachItem(a1, fpfsi_HandleResolutionCapOrDisplaySizeChange, 0);
        goto LABEL_144;
      }
    }

LABEL_143:
    updated = FigSignalErrorAtGM();
    goto LABEL_144;
  }

  if (CFEqual(a3, @"PostClosedCaptionCommands"))
  {
    if (*cf)
    {
      v76 = CFGetTypeID(*cf);
      if (v76 == CFBooleanGetTypeID())
      {
        width_low = 0;
        *(DerivedStorage + 208) = CFBooleanGetValue(*cf);
        goto LABEL_67;
      }
    }

    fpfs_handleSetProperty_cold_13(&size);
    goto LABEL_151;
  }

  if (CFEqual(a3, @"DisplayClosedCaptions"))
  {
    if (!*cf || (v77 = CFGetTypeID(*cf), v77 != CFBooleanGetTypeID()))
    {
      fpfs_handleSetProperty_cold_14(&size);
      goto LABEL_151;
    }

    v78 = CFBooleanGetValue(*cf);
    if (v78 != *(DerivedStorage + 209))
    {
      *(DerivedStorage + 209) = v78;
      fpfs_updateClosedCaptionsDisplay();
      goto LABEL_16;
    }

    goto LABEL_105;
  }

  if (CFEqual(a3, @"RequiredNumberOfCAContextsForClosedCaptionLayers"))
  {
    fpfs_handleSetProperty_cold_28(cf, DerivedStorage, &size);
    goto LABEL_151;
  }

  if (CFEqual(a3, @"DisplayNonForcedSubtitles") || CFEqual(a3, @"PreferredLanguageList"))
  {
    width_low = 4294954513;
    goto LABEL_67;
  }

  if (CFEqual(a3, @"ActionAtEnd"))
  {
    v79 = *(DerivedStorage + 688);
    v80 = fpfs_getNext(DerivedStorage, 0);
    if (*cf)
    {
      v81 = CFGetTypeID(*cf);
      if (v81 == CFStringGetTypeID())
      {
        ActionAtEndForString = FigPlaybackGetActionAtEndForString(*cf);
        width_low = 0;
        *(DerivedStorage + 688) = ActionAtEndForString;
        if (v79 == ActionAtEndForString || !v80)
        {
          goto LABEL_67;
        }

        v83 = ActionAtEndForString;
        v84 = *(DerivedStorage + 80);
        Count = CFArrayGetCount(*(DerivedStorage + 72));
        if (v84)
        {
          v86 = Count + 1;
        }

        else
        {
          v86 = Count;
        }

        if (FigPlaybackGetEffectiveActionAtEnd(v83, v86))
        {
          RenderingTrackofType = fpfs_LastRenderingTrackofType(v80, 1936684398, 0);
          if (RenderingTrackofType)
          {
            fpfs_CancelGaplessTransitionThatDependsOnTrack(a1, RenderingTrackofType, 1, v88, v89, v90, v91, v92, v227, v228, v229, *type, *&v231.origin.x, *&v231.origin.y, *&v231.size.width, *&v231.size.height, v232, *cf, *&cf[8], *&cf[16], *&rect_16.width, *&rect_16.height, v235, v236, v237, v238, *&size.width, *&size.height, v240, *(&v240 + 1), v241, *(&v241 + 1));
          }
        }

        fpfs_AdvanceToNextItemIfNecessary();
        goto LABEL_16;
      }
    }

    fpfs_handleSetProperty_cold_15(&size);
    goto LABEL_151;
  }

  if (CFEqual(a3, @"ApplyVideoTrackMatrix"))
  {
    if (!*cf || (v93 = CFGetTypeID(*cf), v93 != CFBooleanGetTypeID()))
    {
      fpfs_handleSetProperty_cold_16(&size);
      goto LABEL_151;
    }

    v94 = CFBooleanGetValue(*cf);
    if (v94 != *(DerivedStorage + 664))
    {
      width_low = 0;
      *(DerivedStorage + 664) = v94;
      goto LABEL_67;
    }

    goto LABEL_105;
  }

  if (CFEqual(a3, @"TimeAccuracy"))
  {
    goto LABEL_118;
  }

  if (CFEqual(a3, @"FigAudioSession"))
  {
    if (*cf)
    {
      v95 = CFGetTypeID(*cf);
      if (v95 != FigAudioSessionGetTypeID())
      {
        goto LABEL_143;
      }

      v96 = *cf;
      v97 = (DerivedStorage + 536);
      v98 = *(DerivedStorage + 536);
      *(DerivedStorage + 536) = *cf;
      CFRetain(v96);
    }

    else
    {
      v97 = (DerivedStorage + 536);
      v98 = *(DerivedStorage + 536);
      *(DerivedStorage + 536) = 0;
    }

    if (v98)
    {
      CFRelease(v98);
    }

    fpfs_setCachedRouteInfo();
    if (*(DerivedStorage + 80))
    {
      v100 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v100)
      {
        goto LABEL_206;
      }

      while (*(v100 + 48) != 1936684398 || !*(v100 + 112))
      {
        v100 = *(v100 + 24);
        if (!v100)
        {
          goto LABEL_206;
        }
      }
    }

    if (*v97)
    {
      fpfs_stopResetDisturbReprepareAndResume(a1, *(DerivedStorage + 80), 0);
    }

LABEL_206:
    if (!*(DerivedStorage + 528))
    {
      fpfs_FetchClientBundleIdentifierFromAudioSession(a1);
      goto LABEL_16;
    }

    goto LABEL_105;
  }

  if (CFEqual(a3, @"FigAudioSession2"))
  {
    goto LABEL_105;
  }

  if (CFEqual(a3, @"ClientName"))
  {
    if (fpfs_handleSetProperty_cold_35(cf))
    {
      v104 = *(DerivedStorage + 184);
      if (v104)
      {
        CFRelease(v104);
        *(DerivedStorage + 184) = 0;
      }

      if (*cf)
      {
        width_low = 0;
        *(DerivedStorage + 184) = CFRetain(*cf);
        goto LABEL_67;
      }

      goto LABEL_105;
    }

    goto LABEL_233;
  }

  if (CFEqual(a3, @"STSLabel"))
  {
    v105 = fpfs_handleSetProperty_cold_34(cf);
    if (v105)
    {
      if (v105 != 1)
      {
        goto LABEL_233;
      }

      v106 = *cf;
    }

    else
    {
      v106 = 0;
    }

    *&size.width = @"STSLabel";
    *&size.height = v106;
    v112 = *(DerivedStorage + 192);
    *(DerivedStorage + 192) = v106;
    if (v106)
    {
      CFRetain(v106);
    }

    if (v112)
    {
      CFRelease(v112);
    }

    v62 = fpfsi_setPropertyOnAllAudioRenderPipelines;
    v63 = &size;
    v64 = a1;
LABEL_96:
    v49 = fpfs_PlayQueueCallForEachItem(v64, v62, v63);
    goto LABEL_66;
  }

  if (CFEqual(a3, @"AudioDeviceUID"))
  {
    if (!*cf || (v99 = CFStringGetTypeID(), v99 == CFGetTypeID(*cf)))
    {
      v102 = (DerivedStorage + 176);
      if (!FigCFEqual())
      {
        fpfs_handleSetProperty_cold_29(v102, cf);
        goto LABEL_16;
      }

      goto LABEL_105;
    }

LABEL_233:
    width_low = 4294954436;
    goto LABEL_67;
  }

  if (CFEqual(a3, @"EnableHardwareAcceleratedVideoDecoder"))
  {
    fpfs_handleSetProperty_cold_33();
    goto LABEL_151;
  }

  if (CFEqual(a3, @"PreferredVideoDecoderGPURegistryID"))
  {
    if (*cf)
    {
      v101 = CFNumberGetTypeID();
      if (v101 != CFGetTypeID(*cf))
      {
        width_low = 4294954516;
        goto LABEL_67;
      }
    }

    if (!FigCFEqual())
    {
      fpfs_handleSetProperty_cold_30((DerivedStorage + 656), cf);
      goto LABEL_16;
    }

    goto LABEL_105;
  }

  if (CFEqual(a3, @"GatherPerformanceHistoryArray"))
  {
    fpfs_handleSetProperty_cold_32(cf, DerivedStorage, &size);
    goto LABEL_151;
  }

  if (CFEqual(a3, @"DisplayTimedMetadata"))
  {
    if (*cf)
    {
      v103 = CFGetTypeID(*cf);
      if (v103 == CFBooleanGetTypeID())
      {
        width_low = 0;
        *(DerivedStorage + 459) = CFBooleanGetValue(*cf);
        goto LABEL_67;
      }
    }

    fpfs_handleSetProperty_cold_17(&size);
    goto LABEL_151;
  }

  if (CFEqual(a3, @"SendToNero"))
  {
    if (*cf)
    {
      v107 = CFDictionaryGetTypeID();
      if (v107 == CFGetTypeID(*cf))
      {
        v108 = CFDictionaryGetValue(*cf, @"Visuals");
        if (v108 && (v109 = v108, v110 = *(DerivedStorage + 462), v110 != CFBooleanGetValue(v108)))
        {
          v118 = CFBooleanGetValue(v109);
          *(DerivedStorage + 462) = v118;
          v111 = (*(DerivedStorage + 463) | v118) == 0;
        }

        else
        {
          v111 = 1;
        }

        if (*(DerivedStorage + 462))
        {
          v119 = CFDictionaryGetValue(*cf, @"NeroTransport");
          if (v119)
          {
            v120 = *(DerivedStorage + 488);
            *(DerivedStorage + 488) = v119;
            CFRetain(v119);
            if (v120)
            {
              CFRelease(v120);
            }
          }

          else
          {
            FigSignalErrorAtGM();
          }
        }

        else
        {
          v121 = *(DerivedStorage + 488);
          if (v121)
          {
            CFRelease(v121);
            *(DerivedStorage + 488) = 0;
          }
        }

        if (v111)
        {
          goto LABEL_105;
        }

        updated = fpfs_PlayQueueCallForEachItem(a1, fpfsi_updateNeroChange, 0);
        if (!updated)
        {
          if (*(DerivedStorage + 462))
          {
            fpfs_RTCReportingSetSendingVisualsToNero(DerivedStorage);
          }

          goto LABEL_105;
        }

        goto LABEL_144;
      }
    }

    goto LABEL_143;
  }

  if (CFEqual(a3, @"NeroDisplaySize"))
  {
    if (!*cf)
    {
      goto LABEL_143;
    }

    v113 = CFDictionaryGetTypeID();
    if (v113 != CFGetTypeID(*cf))
    {
      goto LABEL_143;
    }

    size = *MEMORY[0x1E695F060];
    if (!CGSizeMakeWithDictionaryRepresentation(*cf, &size))
    {
      goto LABEL_143;
    }

    if (size.width == *(DerivedStorage + 464) && size.height == *(DerivedStorage + 472))
    {
      goto LABEL_105;
    }

    *(DerivedStorage + 464) = size;
    if (!*(DerivedStorage + 462) || !*(DerivedStorage + 463) || !*(DerivedStorage + 80))
    {
      goto LABEL_327;
    }

    v114 = CMBaseObjectGetDerivedStorage();
    v115 = v114[101];
    v116 = v114[102];
    if (v116 && *(v116 + 32))
    {
      width_low = fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(DerivedStorage + 464), *(DerivedStorage + 472), v116, *(DerivedStorage + 480), *(DerivedStorage + 80));
    }

    else
    {
      width_low = 0;
    }

    if (!width_low && v115)
    {
      if (!*(v115 + 32))
      {
LABEL_325:
        v135 = v114[111];
        if (v135)
        {
          fpfs_setDisplaySizeOnOutOfBandSubtitleController(v135, *(DerivedStorage + 464), *(DerivedStorage + 472));
        }

LABEL_327:
        width_low = 0;
        goto LABEL_328;
      }

      width_low = fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(DerivedStorage + 464), *(DerivedStorage + 472), v115, *(DerivedStorage + 480), *(DerivedStorage + 80));
    }

    if (width_low)
    {
LABEL_328:
      fpfs_PlayQueueCallForEachItem(a1, fpfsi_HandleResolutionCapOrDisplaySizeChange, 0);
      goto LABEL_67;
    }

    goto LABEL_325;
  }

  if (CFEqual(a3, @"NeroVideoGravity"))
  {
    if (*cf)
    {
      v117 = CFStringGetTypeID();
      if (v117 != CFGetTypeID(*cf))
      {
        goto LABEL_143;
      }
    }

    if (FigCFEqual())
    {
      goto LABEL_105;
    }

    v124 = *(DerivedStorage + 480);
    v125 = *cf;
    *(DerivedStorage + 480) = *cf;
    if (v125)
    {
      CFRetain(v125);
    }

    if (v124)
    {
      CFRelease(v124);
    }

    if (!*(DerivedStorage + 462) || !*(DerivedStorage + 463) || !*(DerivedStorage + 80))
    {
      goto LABEL_105;
    }

    v126 = CMBaseObjectGetDerivedStorage();
    v127 = v126[104];
    if (v127 && *(v127 + 32))
    {
      width_low = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    }

    else
    {
      width_low = 0;
    }

    v128 = v126[102];
    if (v128 && *(v128 + 32))
    {
      width_low = fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(DerivedStorage + 464), *(DerivedStorage + 472), v128, *(DerivedStorage + 480), *(DerivedStorage + 80));
    }

    if (!width_low)
    {
      v129 = v126[101];
      if (v129)
      {
        if (!*(v129 + 32))
        {
LABEL_306:
          v130 = v126[111];
          if (!v130)
          {
            goto LABEL_105;
          }

          updated = FigOutOfBandTrackControllerSetProperty(v130, @"NeroVideoGravity", *(DerivedStorage + 480));
LABEL_144:
          width_low = updated;
          goto LABEL_67;
        }

        width_low = fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(DerivedStorage + 464), *(DerivedStorage + 472), v129, *(DerivedStorage + 480), *(DerivedStorage + 80));
      }
    }

    if (width_low)
    {
      goto LABEL_67;
    }

    goto LABEL_306;
  }

  if (CFEqual(a3, @"AllowVideoRenderingIfSendingVisualsToNero"))
  {
    if (*cf)
    {
      v122 = CFBooleanGetTypeID();
      if (v122 == CFGetTypeID(*cf))
      {
        v123 = *(DerivedStorage + 496);
        if (v123 != CFBooleanGetValue(*cf))
        {
          *(DerivedStorage + 496) = CFBooleanGetValue(*cf);
          if (*(DerivedStorage + 462))
          {
            if (*(DerivedStorage + 80))
            {
              fpfs_handleSetProperty_cold_18();
            }
          }
        }
      }
    }

    goto LABEL_105;
  }

  if (CFEqual(a3, @"AutoSwitchStreamQuality"))
  {
    if (!*cf || (v131 = CFGetTypeID(*cf), v131 != CFBooleanGetTypeID()))
    {
      fpfs_handleSetProperty_cold_19(&size);
      goto LABEL_151;
    }

    *(DerivedStorage + 458) = CFBooleanGetValue(*cf);
    v132 = fpfsi_setPlaybackMonitorAutoSwitchStreamQuality;
LABEL_313:
    v62 = v132;
    v64 = a1;
    v63 = 0;
    goto LABEL_96;
  }

  if (!CFEqual(a3, @"ClientSuspended"))
  {
    if (CFEqual(a3, @"SystemWillSleep"))
    {
      if (!*cf)
      {
        goto LABEL_143;
      }

      v136 = CFBooleanGetTypeID();
      if (v136 != CFGetTypeID(*cf))
      {
        goto LABEL_143;
      }

      if (CFBooleanGetValue(*cf))
      {
        fpfs_DoAnyItemsHaveFairPlayEncryptedContent();
        goto LABEL_16;
      }

LABEL_105:
      width_low = 0;
      goto LABEL_67;
    }

    if (CFEqual(a3, @"SystemHasPoweredOn"))
    {
      if (*cf)
      {
        CFBooleanGetTypeID();
        CFGetTypeID(*cf);
      }

      goto LABEL_143;
    }

    if (CFEqual(a3, @"DisplayList"))
    {
      if (*cf)
      {
        v137 = CFArrayGetTypeID();
        if (v137 != CFGetTypeID(*cf))
        {
          goto LABEL_143;
        }

        v138 = FigGetAllocatorForMedia();
        Copy = CFArrayCreateCopy(v138, *cf);
        if (!Copy)
        {
          width_low = 4294954510;
          goto LABEL_67;
        }

        shouldApplyResolutionCapForBuiltinDisplay = fpfs_shouldApplyResolutionCapForBuiltinDisplay();
        v142 = *(DerivedStorage + 728);
        *(DerivedStorage + 728) = Copy;
        CFRetain(Copy);
        v144 = 0;
      }

      else
      {
        shouldApplyResolutionCapForBuiltinDisplay = fpfs_shouldApplyResolutionCapForBuiltinDisplay();
        Copy = 0;
        v142 = *(DerivedStorage + 728);
        *(DerivedStorage + 728) = 0;
        v144 = 1;
      }

      if (v142)
      {
        CFRelease(v142);
      }

      if ((v144 & 1) == 0)
      {
        CFRelease(Copy);
      }

      if (!fpfs_PlayQueueCallForEachItem(a1, fpfsi_updateDisplayListOnCryptors, 0) && !fpfs_PlayQueueCallForEachItem(a1, fpfsi_updateDisplayListForHDCPMonitor, 0) && !fpfs_PlayQueueCallForEachItem(a1, fpfsi_updateDisplayListForVideoRangeMonitors, 0) && (shouldApplyResolutionCapForBuiltinDisplay == fpfs_shouldApplyResolutionCapForBuiltinDisplay() || !fpfs_PlayQueueCallForEachItem(a1, fpfsi_HandleResolutionCapOrDisplaySizeChange, 0)))
      {
        goto LABEL_105;
      }

      goto LABEL_143;
    }

    if (CFEqual(a3, @"OverrideDisplaySupportedVideoRange"))
    {
      if (!*cf)
      {
        goto LABEL_143;
      }

      v140 = CFNumberGetTypeID();
      if (v140 != CFGetTypeID(*cf))
      {
        goto LABEL_143;
      }

      LODWORD(size.width) = 0;
      CFNumberGetValue(*cf, kCFNumberSInt32Type, &size);
      if (LODWORD(size.width) >= 6)
      {
        goto LABEL_143;
      }

      *(DerivedStorage + 736) = LODWORD(size.width);
      v132 = fpfsi_setOverrideDisplaysSupportedVideoRangeForEachItem;
      goto LABEL_313;
    }

    if (CFEqual(a3, @"MediaSelectionCriteria"))
    {
      if (*cf)
      {
        v143 = CFDictionaryGetTypeID();
        if (v143 != CFGetTypeID(*cf))
        {
          goto LABEL_143;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_396;
      }

      v146 = *(DerivedStorage + 744);
      v147 = *cf;
      *(DerivedStorage + 744) = *cf;
      if (!v147)
      {
        goto LABEL_384;
      }

      goto LABEL_383;
    }

    if (CFEqual(a3, @"LegibleFallbackMediaSelectionCriteria"))
    {
      if (*cf)
      {
        v145 = CFDictionaryGetTypeID();
        if (v145 != CFGetTypeID(*cf))
        {
          goto LABEL_143;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_396;
      }

      v146 = *(DerivedStorage + 752);
      v147 = *cf;
      *(DerivedStorage + 752) = *cf;
      if (!v147)
      {
        goto LABEL_384;
      }

LABEL_383:
      CFRetain(v147);
LABEL_384:
      if (v146)
      {
        CFRelease(v146);
      }

LABEL_396:
      v151 = a1;
LABEL_404:
      v155 = 0;
      goto LABEL_424;
    }

    if (CFEqual(a3, @"AllowsLegibleFallbackMediaSelectionCriteriaForAllAudibleMediaSelections"))
    {
      if (!*cf)
      {
        goto LABEL_143;
      }

      v148 = CFGetTypeID(*cf);
      if (v148 != CFBooleanGetTypeID())
      {
        goto LABEL_143;
      }

      v149 = *(DerivedStorage + 760) != 0;
      v150 = CFBooleanGetValue(*cf);
      *(DerivedStorage + 760) = v150;
      if (v150 == v149)
      {
        goto LABEL_105;
      }

      goto LABEL_396;
    }

    if (CFEqual(a3, @"AppliesMediaSelectionCriteriaAutomatically"))
    {
      if (!*cf)
      {
        goto LABEL_143;
      }

      v152 = CFGetTypeID(*cf);
      if (v152 != CFBooleanGetTypeID())
      {
        goto LABEL_143;
      }

      v153 = *(DerivedStorage + 761);
      v154 = CFBooleanGetValue(*cf);
      width_low = 0;
      *(DerivedStorage + 761) = v154;
      if (!v154 || v153)
      {
        goto LABEL_67;
      }

      v151 = a1;
      goto LABEL_404;
    }

    if (CFEqual(a3, @"PlayerCoordinationMediaSelectionCriteria"))
    {
      if (*cf)
      {
        v156 = CFDictionaryGetTypeID();
        if (v156 != CFGetTypeID(*cf))
        {
          goto LABEL_143;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_105;
      }

      v163 = *(DerivedStorage + 768);
      v164 = *cf;
      *(DerivedStorage + 768) = *cf;
      if (v164)
      {
        CFRetain(v164);
      }

      if (v163)
      {
        CFRelease(v163);
      }

      v151 = a1;
      v155 = 1;
LABEL_424:
      fpfs_applyAutoSelectionCriteria(v151, v155);
      goto LABEL_16;
    }

    if (CFEqual(a3, @"MinRateForAudioPlayback"))
    {
      if (!*cf)
      {
        v158 = *(DerivedStorage + 776);
        v159 = *(DerivedStorage + 784);
        *(DerivedStorage + 776) = 0;
        goto LABEL_441;
      }

      v157 = CFNumberGetTypeID();
      if (v157 != CFGetTypeID(*cf))
      {
        goto LABEL_143;
      }

      v158 = *(DerivedStorage + 776);
      v159 = *(DerivedStorage + 784);
      v160 = CFNumberGetTypeID();
      if (v160 == CFGetTypeID(*cf))
      {
        *(DerivedStorage + 776) = 1;
        v161 = *cf;
        v162 = (DerivedStorage + 780);
LABEL_431:
        CFNumberGetValue(v161, kCFNumberFloat32Type, v162);
        goto LABEL_441;
      }

      goto LABEL_441;
    }

    if (CFEqual(a3, @"MaxRateForAudioPlayback"))
    {
      if (!*cf)
      {
        v158 = *(DerivedStorage + 776);
        v159 = *(DerivedStorage + 784);
        *(DerivedStorage + 777) = 0;
        goto LABEL_441;
      }

      v165 = CFNumberGetTypeID();
      if (v165 != CFGetTypeID(*cf))
      {
        goto LABEL_143;
      }

      v158 = *(DerivedStorage + 776);
      v159 = *(DerivedStorage + 784);
      v166 = CFNumberGetTypeID();
      if (v166 == CFGetTypeID(*cf))
      {
        *(DerivedStorage + 777) = 1;
        v161 = *cf;
        v162 = (DerivedStorage + 784);
        goto LABEL_431;
      }

LABEL_441:
      fpfs_handlePlayerAudibleRateRangeChangeIfNecessary(a1, v158, v159);
      goto LABEL_16;
    }

    if (CFEqual(a3, @"AllowPixelBufferPoolSharing"))
    {
      if (*cf)
      {
        v167 = CFGetTypeID(*cf);
        if (v167 == CFBooleanGetTypeID() || (v168 = CFGetTypeID(*cf), v168 == CFNumberGetTypeID()))
        {
          width_low = *(DerivedStorage + 680);
          v169 = *cf;
          *(DerivedStorage + 680) = *cf;
          CFRetain(v169);
          if (!width_low)
          {
            goto LABEL_67;
          }

          CFRelease(width_low);
          goto LABEL_105;
        }
      }

      fpfs_handleSetProperty_cold_20(&size);
      goto LABEL_151;
    }

    if (CFEqual(a3, @"AllowOutOfBandTextTrackRendering"))
    {
      if (!*cf)
      {
        goto LABEL_143;
      }

      v170 = CFGetTypeID(*cf);
      if (v170 != CFBooleanGetTypeID())
      {
        goto LABEL_143;
      }

      v171 = CFBooleanGetValue(*cf);
      if (v171 == *(DerivedStorage + 788))
      {
        goto LABEL_105;
      }

      *(DerivedStorage + 788) = v171;
      goto LABEL_563;
    }

    if (CFEqual(a3, @"MultichannelAudioStrategy"))
    {
      if (!*cf)
      {
        goto LABEL_143;
      }

      v172 = CFStringGetTypeID();
      if (v172 != CFGetTypeID(*cf))
      {
        goto LABEL_143;
      }

      if (!FigCFEqual() && (CFEqual(*cf, @"MatchMultichannelTrackPreferenceToAudioDevice") || CFEqual(*cf, @"PreferAC3ViaExclusivePassthrough") || CFEqual(*cf, @"PreferExclusivePassthrough") || CFEqual(*cf, @"PreferStereo")))
      {
        fpfs_setMultiAudioChannelStrategy(a1, *cf);
        goto LABEL_16;
      }

      goto LABEL_105;
    }

    if (CFEqual(a3, @"BandwidthCap"))
    {
      v173 = *cf;
      if (*cf)
      {
        v174 = CFNumberGetTypeID();
        if (v174 != CFGetTypeID(*cf))
        {
          goto LABEL_143;
        }

        LODWORD(size.width) = 0;
        CFNumberGetValue(*cf, kCFNumberSInt32Type, &size);
        v173 = LODWORD(size.width);
      }

      else
      {
        LODWORD(size.width) = 0;
      }

      *(DerivedStorage + 812) = v173;
    }

    else if (CFEqual(a3, @"PreferredMaximumBufferDuration"))
    {
      v175 = *cf;
      if (*cf)
      {
        v176 = CFNumberGetTypeID();
        if (v176 != CFGetTypeID(*cf))
        {
          goto LABEL_143;
        }

        LODWORD(size.width) = 0;
        CFNumberGetValue(*cf, kCFNumberSInt32Type, &size);
        v175 = LODWORD(size.width);
        if ((LODWORD(size.width) & 0x80000000) != 0)
        {
          goto LABEL_143;
        }
      }

      else
      {
        LODWORD(size.width) = 0;
      }

      *(DerivedStorage + 816) = v175;
    }

    else
    {
      if (!CFEqual(a3, @"MaximumTrailingBufferDuration"))
      {
        if (CFEqual(a3, @"ReleaseResourcesWhenPaused"))
        {
          v49 = fpfs_SetReleaseResourcesWhenPaused(a1, *cf == *MEMORY[0x1E695E4D0]);
          goto LABEL_66;
        }

        if (CFEqual(a3, @"ResourceConservationLevelWhenPaused"))
        {
          if (*cf)
          {
            v178 = CFNumberGetTypeID();
            if (v178 != CFGetTypeID(*cf))
            {
              goto LABEL_143;
            }

            LODWORD(size.width) = 0;
            CFNumberGetValue(*cf, kCFNumberSInt32Type, &size);
          }

          else
          {
            LODWORD(size.width) = 0;
          }

          v49 = fpfs_SetResourceConservationLevelWhenPaused();
          goto LABEL_66;
        }

        if (CFEqual(a3, @"NetworkResourcePriority"))
        {
          if (*cf)
          {
            v179 = CFGetTypeID(*cf);
            if (v179 == CFNumberGetTypeID())
            {
              fpfs_handleSetProperty_cold_21(cf);
              goto LABEL_105;
            }
          }

          goto LABEL_143;
        }

        if (CFEqual(a3, @"PlayerRole"))
        {
          if (*cf)
          {
            if (CFEqual(*cf, @"Scanning"))
            {
              v181 = a1;
              v182 = 1;
            }

            else
            {
              if (!CFEqual(*cf, @"PIP"))
              {
                goto LABEL_105;
              }

              v181 = a1;
              v182 = 2;
            }
          }

          else
          {
            v181 = a1;
            v182 = 0;
          }

          v49 = fpfs_SetPlayerRole(v181, v182);
          goto LABEL_66;
        }

        if (CFEqual(a3, @"LimitsBandwidthForCellularAccess"))
        {
          v183 = *cf;
          if (*cf)
          {
            v184 = CFBooleanGetTypeID();
            if (v184 != CFGetTypeID(*cf))
            {
              goto LABEL_143;
            }

            v183 = *cf;
          }

          width_low = 0;
          *(DerivedStorage + 832) = v183 != *MEMORY[0x1E695E4C0];
          goto LABEL_67;
        }

        if (CFEqual(a3, @"BufferedAirPlayOutput"))
        {
          v185 = *cf;
          if (*cf)
          {
            v186 = FigBufferedAirPlayOutputGetTypeID();
            if (v186 != CFGetTypeID(*cf))
            {
              goto LABEL_143;
            }

            v185 = *cf;
          }

          if (*(DerivedStorage + 504) == v185)
          {
            goto LABEL_105;
          }

          v187 = CMBaseObjectGetDerivedStorage();
          if (*(CMBaseObjectGetDerivedStorage() + 504))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListener();
          }

          fpfs_PlayQueueCallForEachItem(a1, fpfsi_ClearCachedAudioRenderChains, 0);
          fpfs_ResetAudioHardwareFormat(a1);
          v188 = *(DerivedStorage + 504);
          v189 = *cf;
          *(DerivedStorage + 504) = *cf;
          if (v189)
          {
            CFRetain(v189);
          }

          if (v188)
          {
            CFRelease(v188);
          }

          if (v187)
          {
            fpfs_handleSetProperty_cold_22(DerivedStorage + 504, v187);
          }

          if (*(CMBaseObjectGetDerivedStorage() + 504))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterAddWeakListener();
          }

          LOBYTE(size.width) = 1;
          v68 = fpfs_handleAvailableAudioFormatChange_Apply;
          v70 = &size;
          v69 = a1;
          goto LABEL_111;
        }

        if (CFEqual(a3, @"AutomaticallyWaitsToMinimizeStalling"))
        {
          if (*cf)
          {
            v190 = CFBooleanGetTypeID();
            if (v190 == CFGetTypeID(*cf))
            {
              v191 = CMBaseObjectGetDerivedStorage();
              v192 = CFBooleanGetValue(*cf);
              *(DerivedStorage + 160) = v192;
              if (v191)
              {
                FigReportingAgentStatsSetIntValueWithOptions(*(v191 + 2568));
                v192 = *(DerivedStorage + 160);
              }

              if (!v192 && *(DerivedStorage + 80))
              {
                fpfs_CheckPrebufferedLevels();
              }

              goto LABEL_105;
            }
          }

          goto LABEL_143;
        }

        if (CFEqual(a3, @"CaptionPlaybackStrategy"))
        {
          if (*cf)
          {
            v193 = CFStringGetTypeID();
            if (v193 == CFGetTypeID(*cf))
            {
              if (CFEqual(*cf, @"CoreTextSubtitleRenderer"))
              {
                width_low = 0;
                *(DerivedStorage + 461) = 1;
                goto LABEL_67;
              }

              if (CFEqual(*cf, @"CaptionDisplayService"))
              {
                width_low = 0;
                *(DerivedStorage + 461) = 0;
                goto LABEL_67;
              }
            }
          }

          goto LABEL_143;
        }

        if (CFEqual(a3, @"CaptionPipelineStrategy"))
        {
          if (*cf)
          {
            v194 = CFStringGetTypeID();
            if (v194 == CFGetTypeID(*cf))
            {
              if (CFEqual(*cf, @"CFAttributedStrings"))
              {
                width_low = 0;
                *(DerivedStorage + 460) = 1;
                goto LABEL_67;
              }

              if (CFEqual(*cf, @"FigCaptions"))
              {
                width_low = 0;
                *(DerivedStorage + 460) = 0;
                goto LABEL_67;
              }
            }
          }

          goto LABEL_143;
        }

        if (CFEqual(a3, @"AutomaticallyResumesRenderingAfterConfigurationChange"))
        {
          if (*cf)
          {
            v195 = CFGetTypeID(*cf);
            if (v195 == CFBooleanGetTypeID())
            {
              width_low = 0;
              *(DerivedStorage + 624) = *cf == *MEMORY[0x1E695E4D0];
              goto LABEL_67;
            }
          }

          goto LABEL_143;
        }

        if (!CFEqual(a3, @"SuppressAudioRendering"))
        {
          if (!CFEqual(a3, @"IgnoreAudioDeviceLatencyInStartupSync"))
          {
            if (CFEqual(a3, @"VideoTargetArray"))
            {
              if (*cf)
              {
                v226 = CFGetTypeID(*cf);
                if (v226 != CFArrayGetTypeID())
                {
                  fpfs_handleSetProperty_cold_23(&size);
                  goto LABEL_151;
                }

                v208 = *cf;
              }

              else
              {
                v208 = 0;
              }

              fpfs_setVideoTargetArray(a1, v208, v201, v202, v203, v204, v205, v206, v227, v228, v229, SBYTE2(v229), BYTE3(v229), SHIDWORD(v229), *type, *&v231.origin.x, *&v231.origin.y, *&v231.size.width, *&v231.size.height, v232, SHIDWORD(v232), *cf, *&cf[16], *&rect_16, v235, v236, v237, v238, *&size.width, *&size.height, v240, *(&v240 + 1), v241, *(&v241 + 1), v242, *(&v242 + 1), v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261);
              goto LABEL_66;
            }

            if (!CFEqual(a3, @"ItemsToPrebuffer"))
            {
              if (!CFEqual(a3, @"SupportsNetworkArbitration"))
              {
                width_low = 4294954512;
                goto LABEL_67;
              }

              if (*cf)
              {
                v209 = CFGetTypeID(*cf);
                if (v209 == CFBooleanGetTypeID())
                {
                  size.width = 0.0;
                  v210 = *cf == *MEMORY[0x1E695E4D0];
                  FigPlayerResourceArbiterGetGlobalSingleton(&size);
                  FigPlayerResourceArbiterSetSupportsNetworkArbitration(*&size.width, *(DerivedStorage + 928), 0, v210);
                  goto LABEL_105;
                }
              }

              goto LABEL_143;
            }

            if (*cf)
            {
              v207 = CFGetTypeID(*cf);
              if (v207 == CFArrayGetTypeID())
              {
                v211 = CFArrayGetCount(*cf);
                if (v211 < 1)
                {
LABEL_590:
                  v216 = *(DerivedStorage + 976);
                  if (v216)
                  {
                    fpfs_handleSetProperty_cold_26(v216, (DerivedStorage + 976));
                  }

                  v217 = FigGetAllocatorForMedia();
                  *(DerivedStorage + 976) = CFArrayCreateMutableCopy(v217, 0, *cf);
                  fpfs_CheckItemsPrebuffering(a1, v218, v219, v220, v221, v222, v223, v224, v227, v228, v229, *type, *&v231.origin, SLODWORD(v231.size.width), SWORD2(v231.size.width), SBYTE6(v231.size.width), HIBYTE(v231.size.width), SLODWORD(v231.size.height), SWORD2(v231.size.height), SBYTE6(v231.size.height), SHIBYTE(v231.size.height), v232, SHIDWORD(v232), *cf, *&cf[16], *&rect_16, v235, v236, v237, v238, *&size.width, *&size.height, v240, *(&v240 + 1), v241, *(&v241 + 1), v242, *(&v242 + 1), v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262);
                  goto LABEL_16;
                }

                v212 = v211;
                v213 = 0;
                while (1)
                {
                  ValueAtIndex = FigCFArrayGetValueAtIndex();
                  if (!fpfs_CheckItem(a1, ValueAtIndex))
                  {
                    fpfs_handleSetProperty_cold_25(&size);
                    goto LABEL_151;
                  }

                  LastIndexOfValue = FigCFArrayGetLastIndexOfValue();
                  if (LastIndexOfValue != FigCFArrayGetFirstIndexOfValue())
                  {
                    break;
                  }

                  if (v212 == ++v213)
                  {
                    goto LABEL_590;
                  }
                }

                fpfs_handleSetProperty_cold_24(&size);
                goto LABEL_151;
              }

              goto LABEL_143;
            }

            fpfs_RemoveFromPrebufferArrayGuts();
            v225 = *(DerivedStorage + 976);
            if (v225)
            {
              CFRelease(v225);
              width_low = 0;
              *(DerivedStorage + 976) = 0;
              goto LABEL_67;
            }

            goto LABEL_105;
          }

          if (!*cf)
          {
            goto LABEL_143;
          }

          v199 = CFGetTypeID(*cf);
          if (v199 != CFBooleanGetTypeID())
          {
            goto LABEL_143;
          }

          v200 = *cf == *MEMORY[0x1E695E4D0];
          if (*(DerivedStorage + 524) == v200)
          {
            goto LABEL_105;
          }

          *&size.width = @"IgnoreAudioDeviceLatencyInStartupSync";
          size.height = *cf;
          fpfs_PlayQueueCallForEachItem(a1, fpfsi_setPropertyOnAllAudioRenderPipelines, &size);
          *(DerivedStorage + 524) = v200;
          v198 = *(DerivedStorage + 80);
LABEL_571:
          fpfs_stopResetDisturbReprepareAndResume(a1, v198, 0);
          goto LABEL_16;
        }

        if (!*cf)
        {
          goto LABEL_143;
        }

        v196 = CFGetTypeID(*cf);
        if (v196 != CFBooleanGetTypeID())
        {
          goto LABEL_143;
        }

        v197 = *cf == *MEMORY[0x1E695E4D0];
        if (*(DerivedStorage + 523) == v197)
        {
          goto LABEL_105;
        }

        *(DerivedStorage + 523) = v197;
LABEL_563:
        v198 = *(DerivedStorage + 80);
        goto LABEL_571;
      }

      if (*cf)
      {
        v177 = CFNumberGetTypeID();
        if (v177 != CFGetTypeID(*cf))
        {
          goto LABEL_143;
        }

        LODWORD(size.width) = 0;
        CFNumberGetValue(*cf, kCFNumberSInt32Type, &size);
        v180 = LODWORD(size.width);
      }

      else
      {
        v180 = -1;
        LODWORD(size.width) = -1;
      }

      *(DerivedStorage + 820) = v180;
    }

    updated = fpfs_UpdatePlayerOverrideForAllItems();
    goto LABEL_144;
  }

  if (!*cf || (v133 = CFBooleanGetTypeID(), v133 != CFGetTypeID(*cf)))
  {
    fpfs_handleSetProperty_cold_36(&size);
    goto LABEL_151;
  }

  *(DerivedStorage + 51) = CFBooleanGetValue(*cf);
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  if (*(DerivedStorage + 51))
  {
    v134 = 0;
  }

  else if (*(DerivedStorage + 48) && *(DerivedStorage + 32) != 2)
  {
    v134 = 1;
  }

  else
  {
    v134 = 2;
  }

  return fpfs_updatePlayerActiveState(a1, v134);
}