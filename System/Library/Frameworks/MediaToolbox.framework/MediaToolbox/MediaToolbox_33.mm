uint64_t FigVideoTargetStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigVideoTargetStartServer_block_invoke;
  block[3] = &unk_1E7483E68;
  block[4] = &v3;
  if (FigVideoTargetStartServer_sFigVideoTargetServerSetupOnce != -1)
  {
    dispatch_once(&FigVideoTargetStartServer_sFigVideoTargetServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigVideoTargetStartServer_block_invoke(uint64_t a1)
{
  v2[0] = 1;
  v2[1] = HandleVideoTargetMessage;
  v2[2] = HandleVideoTargetNoReplyMessage;
  memset(&v2[3], 0, 24);
  qword_1ED4CA888 = dispatch_queue_create("CommonFVTServerAsyncQueue", 0);
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM();
  }

  else
  {
    __FigVideoTargetStartServer_block_invoke_cold_1(v2, a1);
  }
}

void DisposeServedVideoTargetState(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      os_release(v2);
    }

    free(a1);
  }
}

void __HandleVideoTargetNoReplyMessage_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

const __CFData *FigFairplayPSSHAtomParserParseAndCreateRecord(uint64_t a1, const __CFData *a2, void *a3)
{
  v6 = _os_feature_enabled_impl();
  if (v6)
  {

    return FigFairplayPSSHAtomParserParseAndCreateRecordRemote(a1, a2, a3);
  }

  else
  {

    return FigFairplayPSSHAtomParserParseAndCreateRecordInProcess(v6, a2, a3);
  }
}

uint64_t OUTLINED_FUNCTION_4_47()
{

  return FigAtomStreamGetCurrentAtomTypeAndDataLength();
}

const __CFString *fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(const __CFString *URLString)
{
  if (URLString)
  {
    v1 = CFURLCreateWithString(*MEMORY[0x1E695E480], URLString, 0);
    if (v1)
    {
      v2 = v1;
      v3 = FigSandboxRegisterDirectoryURLWithProcess();
      CFRelease(v2);
      return v3;
    }

    else
    {

      return FigSignalErrorAtGM();
    }
  }

  return URLString;
}

uint64_t remoteXPCPlayerClient_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigPlayerGetTypeID() || (v3 = CFGetTypeID(a1), result = FigPlaybackItemGetTypeID(), v3 == result))
  {
    result = CMBaseObjectGetDerivedStorage();
    *(result + 8) = 1;
  }

  return result;
}

BOOL remoteXPCPlayerClient_NotificationFilter(CFTypeRef a1, const void *a2, uint64_t a3, __CFDictionary *a4)
{
  v132 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    remoteXPCPlayerClient_NotificationFilter_cold_3();
    return 0;
  }

  if (!a2)
  {
    remoteXPCPlayerClient_NotificationFilter_cold_2();
    return 0;
  }

  v8 = CFGetTypeID(a1);
  if (v8 == FigPlayerGetTypeID())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    size.width = 0.0;
    if (*(DerivedStorage + 9))
    {
      goto LABEL_35;
    }

    v10 = DerivedStorage;
    if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &size))
    {
      goto LABEL_35;
    }

    if (CFEqual(@"SynchronousFrameEnqueued", a2))
    {
      if (!FigUseVideoReceiverForCALayer())
      {
        FigReadWriteLockLockForRead();
        v11 = *(v10 + 64);
        if (!v11)
        {
          FigReadWriteLockUnlockForRead();
          goto LABEL_35;
        }

        v12 = CFRetain(v11);
        FigReadWriteLockUnlockForRead();
        if (!v12)
        {
LABEL_36:
          FigDeferredTransactionCommit(*&size.width, 0);
          if (*&size.width)
          {
            CFRelease(*&size.width);
          }

          v21 = 0;
          goto LABEL_39;
        }

        if (CFArrayGetCount(v12) >= 1)
        {
          FPSupport_AppendDeferredTransactionChangeForCallingSetContentsChangedOnLayers(0, v12);
        }

        v13 = v12;
        goto LABEL_13;
      }
    }

    else
    {
      if (CFEqual(@"Remote_RateWillChangeTo", a2))
      {
        if (a4)
        {
          v16 = CFGetTypeID(a4);
          if (v16 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(a4, @"Remote_NewRate");
            if (Value)
            {
              v18 = Value;
              v19 = CFGetTypeID(Value);
              if (v19 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v18, kCFNumberFloat32Type, (v10 + 188));
              }
            }
          }
        }

        LODWORD(v12) = 1;
        goto LABEL_36;
      }

      if (CFEqual(@"CurrentItemDidChange", a2))
      {
        v105[0] = 0;
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v20 || v20(a1, 0, v105))
        {
          goto LABEL_35;
        }

        if (v105[0])
        {
          v64 = CMBaseObjectGetDerivedStorage();
          handler = **&MEMORY[0x1E6960C70];
          if (a4)
          {
            v67 = CFDictionaryGetValue(a4, @"CurrentDuration");
            CMTimeMakeFromDictionary(&handler, v67);
            v65 = CFDictionaryGetValue(a4, @"CurrentVideoSlotArray");
            v66 = CFDictionaryGetValue(a4, @"CurrentVideoTrackMatrix");
          }

          else
          {
            v65 = 0;
            v66 = 0;
          }

          v64[9] = handler;
          remoteXPCPlayer_connectVideoLayerToPlaybackItem(a1, v105[0], 0, v65 == 0, v65, v66, 0, 0, *&size.width);
          remoteXPCPlayer_updateLayerDurationsWhenItemReady(a1, v105[0], 3, *&size.width);
        }

        else if (remoteXPCPlayer_clearVideoLayer(a1, *&size.width))
        {
          goto LABEL_35;
        }

        v13 = v105[0];
        if (!v105[0])
        {
          goto LABEL_35;
        }

        goto LABEL_13;
      }

      if (!CFEqual(@"IsAirPlayVideoActiveDidChange", a2))
      {
        if (CFEqual(*MEMORY[0x1E69628A8], a2))
        {
          remoteXPCPlayer_clearVideoLayer(a1, *&size.width);
        }

        goto LABEL_35;
      }

      handler.value = 0;
      v29 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v29 && !v29(a1, 0, &handler))
      {
        if (FigUseVideoReceiverForCALayer())
        {
          remoteXPCPlayer_updateAirPlayScrubbingHostVideoTarget(a1, v30, v31, v32, v33, v34, v35, v36, v90, v91, v92, v94, v96, v99, v100, v101, fireTime.value, *&fireTime.timescale, fireTime.epoch, cf[0]);
        }

        else
        {
          remoteXPCPlayer_updateAirPlayVideoHostLayer(a1);
        }

        if (handler.value)
        {
          v37 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          v38 = MEMORY[0x1E6960C98];
          v39 = *(MEMORY[0x1E6960C98] + 16);
          *(v37 + 88) = *MEMORY[0x1E6960C98];
          *(v37 + 104) = v39;
          *(v37 + 120) = *(v38 + 32);
          *(v37 + 80) = 0;
          FigSimpleMutexUnlock();
        }

        else
        {
          remoteXPCPlayerClient_NotificationFilter_cold_1();
        }

        v13 = handler.value;
        if (handler.value)
        {
LABEL_13:
          CFRelease(v13);
        }
      }
    }

LABEL_35:
    LODWORD(v12) = 0;
    goto LABEL_36;
  }

  v14 = CFGetTypeID(a1);
  if (v14 == FigPlaybackItemGetTypeID())
  {
    v22 = CMBaseObjectGetDerivedStorage();
    v23 = remoteXPCItem_copyOwningPlayer();
    v113 = 0;
    FigSimpleMutexLock();
    if (*(v22 + 9) || !v23)
    {
      FigSimpleMutexUnlock();
      v21 = 0;
      LODWORD(v12) = 0;
      if (!v23)
      {
        goto LABEL_39;
      }

      goto LABEL_139;
    }

    v24 = CMBaseObjectGetDerivedStorage();
    v102 = v23;
    if (CFEqual(a2, @"ItemWasRemovedFromPlayQueue"))
    {
      if (!a4 || (v49 = *MEMORY[0x1E695E4D0], v49 != CFDictionaryGetValue(a4, @"AsRequested")))
      {
        FigSimpleMutexLock();
        v50 = *(v24 + 32);
        if (v50)
        {
          CFSetRemoveValue(v50, a1);
        }

        FigSimpleMutexUnlock();
      }

      FigSimpleMutexLock();
      if (remoteXPCItem_isSyncItem(a1))
      {
        v51 = *(v24 + 80);
        if (v51)
        {
          CFRelease(v51);
          *(v24 + 80) = 0;
        }
      }

      FigSimpleMutexUnlock();
      remoteXPCItem_updateLayerSync(a1, 0, 0);
      goto LABEL_118;
    }

    if (CFEqual(a2, @"DurationChanged"))
    {
      size.width = 0.0;
      handler = **&MEMORY[0x1E6960C70];
      if (a4)
      {
        v25 = CFDictionaryGetValue(a4, @"CurrentDuration");
        CMTimeMakeFromDictionary(&handler, v25);
      }

      *(v22 + 216) = handler;
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v26)
      {
        goto LABEL_118;
      }

      v27 = v26(v23, 0, &size);
      width = size.width;
      if (!v27 && *&size.width == a1)
      {
        remoteXPCPlayer_updateLayerDurations(v23, a1, 3, 0);
        width = size.width;
      }

      goto LABEL_116;
    }

    if (CFEqual(a2, @"ReadyForPlayback"))
    {
      v105[0] = 0;
      v40 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v40)
      {
        v41 = v40(v23, 0, v105);
        width = *v105;
        if (!v41 && v105[0] == a1)
        {
          handler = **&MEMORY[0x1E6960C70];
          v42 = *MEMORY[0x1E695F060];
          size = *MEMORY[0x1E695F060];
          cf[0] = 0;
          if (a4)
          {
            v97 = v42;
            v43 = CFDictionaryGetValue(a4, @"CurrentVideoSlotArray");
            v44 = CFDictionaryGetValue(a4, @"CurrentVideoTrackMatrix");
            v45 = CFDictionaryGetValue(a4, @"CurrentDuration");
            CMTimeMakeFromDictionary(&handler, v45);
            v46 = CFDictionaryGetValue(a4, @"CurrentDimensions");
            if (!CGSizeMakeWithDictionaryRepresentation(v46, &size))
            {
              size = v97;
            }
          }

          else
          {
            v44 = 0;
            v43 = 0;
          }

          *(v22 + 216) = handler;
          *(v22 + 240) = size;
          if (FigUseVideoReceiverForCALayer())
          {
            v68 = 0;
          }

          else
          {
            FigDeferredTransactionCreate(*MEMORY[0x1E695E480], cf);
            remoteXPCPlayer_connectVideoLayerToPlaybackItem(v23, a1, 0, v43 == 0, v43, v44, 0, 0, cf[0]);
            v68 = cf[0];
          }

          remoteXPCPlayer_updateLayerDurationsWhenItemReady(v23, a1, 3, v68);
          FigDeferredTransactionCommit(cf[0], 0);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          width = *v105;
        }

LABEL_116:
        if (width != 0.0)
        {
          CFRelease(*&width);
        }

        goto LABEL_118;
      }

      goto LABEL_118;
    }

    if (CFEqual(a2, @"DimensionsChanged"))
    {
      v98 = *MEMORY[0x1E695F060];
      *&handler.value = *MEMORY[0x1E695F060];
      if (!FigUseVideoReceiverForCALayer())
      {
        if (a4)
        {
          v48 = CFDictionaryGetValue(a4, @"CurrentVideoSlotArray");
          v47 = CFDictionaryGetValue(a4, @"CurrentVideoTrackMatrix");
          v82 = CFDictionaryGetValue(a4, @"CurrentDimensions");
          if (!CGSizeMakeWithDictionaryRepresentation(v82, &handler))
          {
            *&handler.value = v98;
          }
        }

        else
        {
          v47 = 0;
          v48 = 0;
        }

        FigSimpleMutexLock();
        isSyncItem = remoteXPCItem_isSyncItem(a1);
        FigSimpleMutexUnlock();
        *(v22 + 240) = *&handler.value;
        if (isSyncItem)
        {
          remoteXPCPlayer_connectVideoLayerToPlaybackItem(v23, a1, 1, v48 == 0, v48, v47, 0, 0, 0);
        }
      }

      goto LABEL_118;
    }

    if (CFEqual(@"ScheduleNextItemTransitionTimer", a2))
    {
      if (a4)
      {
        FigSimpleMutexLock();
        v52 = remoteXPCPlayer_copySyncItem(v23);
        v53 = v24;
        FigSimpleMutexUnlock();
        v54 = CMBaseObjectGetDerivedStorage();
        if (v52 && v52 != a1)
        {
          v55 = v54;
          v112 = 0;
          v56 = CFDictionaryGetValue(a4, @"CurrentVideoSlotArray");
          v57 = CFDictionaryGetValue(a4, @"CurrentVideoTrackMatrix");
          v58 = CFDictionaryGetValue(a4, @"FigTime");
          CMTimeMakeFromDictionary(&handler, v58);
          v130 = handler.value;
          flags = handler.flags;
          timescale = handler.timescale;
          epoch = handler.epoch;
          FigCFDictionaryGetBooleanIfPresent();
          v60 = 0;
          v95 = flags;
          if ((flags & 1) == 0 || !v56 || !v57)
          {
            goto LABEL_168;
          }

          remoteXPCPlayer_cancelAndClearNextItemTransitionTimer();
          v61 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v53 + 136));
          if (!v61)
          {
            v60 = 0;
            goto LABEL_168;
          }

          v62 = v61;
          *(v53 + 144) = v61;
          *&size.width = MEMORY[0x1E69E9820];
          *&size.height = 3221225472;
          v124 = __remoteXPCPlaybackItem_NotificationFilter_block_invoke;
          v125 = &__block_descriptor_64_e5_v8__0l;
          v126 = v56;
          v127 = v57;
          v128 = a1;
          v129 = v52;
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v106 = __remoteXPCPlaybackItem_NotificationFilter_block_invoke_2;
          v107 = &__block_descriptor_64_e5_v8__0l;
          v108 = v56;
          v109 = v57;
          v110 = a1;
          v111 = v52;
          __remoteXPCPlaybackItem_NotificationFilter_block_invoke(&size);
          handler.value = MEMORY[0x1E69E9820];
          *&handler.timescale = 3221225472;
          handler.epoch = __remoteXPCPlaybackItem_NotificationFilter_block_invoke_3;
          v115 = &unk_1E7483ED8;
          v116 = v62;
          v117 = v102;
          v121 = v112;
          v122 = v56 != 0;
          v118 = a1;
          v119 = v56;
          v120 = v57;
          dispatch_source_set_event_handler(v62, &handler);
          cf[0] = MEMORY[0x1E69E9820];
          cf[1] = 3221225472;
          cf[2] = __remoteXPCPlaybackItem_NotificationFilter_block_invoke_4;
          cf[3] = &unk_1E7483F00;
          cf[5] = v105;
          cf[6] = v55;
          cf[4] = v62;
          dispatch_source_set_cancel_handler(v62, cf);
          dispatch_resume(v62);
          if (!CMTimebaseAddTimerDispatchSource(v55[4], v62))
          {
            v63 = v55[4];
            fireTime.value = v130;
            fireTime.timescale = timescale;
            fireTime.flags = v95;
            fireTime.epoch = epoch;
            if (!CMTimebaseSetTimerDispatchSourceNextFireTime(v63, v62, &fireTime, 0))
            {
LABEL_100:
              v60 = v113;
LABEL_168:
              FigSimpleMutexUnlock();
              v21 = 0;
              v75 = 0;
              LODWORD(v12) = 1;
              goto LABEL_134;
            }

            CMTimebaseRemoveTimerDispatchSource(v55[4], v62);
          }

          v106(v105);
          goto LABEL_100;
        }

LABEL_155:
        FigSimpleMutexUnlock();
        v75 = 0;
        v21 = 0;
        LODWORD(v12) = 1;
        goto LABEL_136;
      }

LABEL_154:
      v52 = 0;
      goto LABEL_155;
    }

    if (CFEqual(a2, @"CancelNextItemTransitionTimer"))
    {
      remoteXPCPlayer_cancelAndClearNextItemTransitionTimer();
      goto LABEL_154;
    }

    if (CFEqual(a2, @"FirstVideoFrameEnqueued"))
    {
      if (dword_1ED4CBDB0)
      {
        LODWORD(v105[0]) = 0;
        LOBYTE(cf[0]) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(v22 + 258) = 1;
      remoteXPCItem_handleFirstFrameNotificationLatch(a1, 0, 0);
      goto LABEL_154;
    }

    if (CFEqual(a2, @"DidRemoveImageQueue") || CFEqual(a2, @"WillReprepareImageQueues"))
    {
      v80 = a1;
      v81 = 1;
LABEL_147:
      remoteXPCItem_handleFirstFrameNotificationLatch(v80, v81, 0);
      goto LABEL_118;
    }

    if (CFEqual(a2, @"DidPrepareImageQueue"))
    {
      FigSimpleMutexLock();
      v88 = remoteXPCItem_isSyncItem(a1);
      FigSimpleMutexUnlock();
      if (!v88)
      {
        goto LABEL_118;
      }

      v80 = a1;
      v81 = 3;
      goto LABEL_147;
    }

    if (CFEqual(a2, @"ReadyForInspection"))
    {
      if (a4)
      {
        v84 = CFDictionaryGetValue(a4, @"Properties");
        if (v84)
        {
          v85 = v84;
          v134.length = CFArrayGetCount(v84);
          v134.location = 0;
          if (CFArrayContainsValue(v85, v134, @"AccurateDuration"))
          {
            handler.value = 0;
            v86 = FigPlayerCopyPlayQueueItem(v23, &handler);
            width = *&handler.value;
            if (!v86 && handler.value == a1)
            {
              v87 = *(v22 + 176);
              *(v22 + 176) = 0;
              if (v87)
              {
                remoteXPCPlayer_updateLayerDurations(v23, a1, v87, 0);
                width = *&handler.value;
              }
            }

            goto LABEL_116;
          }
        }
      }

LABEL_118:
      v69 = 0;
      LODWORD(v12) = 0;
LABEL_119:
      v60 = v113;
      if (v113)
      {
        v70 = v113;
      }

      else
      {
        v70 = a4;
      }

      if (!v70 || (v71 = CFGetTypeID(v70), v71 != CFDictionaryGetTypeID()) || (v72 = CFDictionaryGetValue(v70, @"Server_CFError")) == 0 || (v73 = CFGetTypeID(v72), v73 != CFDictionaryGetTypeID()) || (v74 = FigCFErrorCreateFromPropertyList()) == 0)
      {
        v75 = 0;
        v21 = 0;
        v78 = 0;
        if (!v69)
        {
LABEL_133:
          FigSimpleMutexUnlock();
          v52 = 0;
          v75 = v78;
          goto LABEL_134;
        }

LABEL_132:
        v113 = 0;
        LODWORD(v12) = 4;
        v21 = v60;
        v78 = v75;
        v60 = 0;
        goto LABEL_133;
      }

      v75 = v74;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v70);
      if (MutableCopy)
      {
        v77 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, @"Server_CFError");
        CFDictionarySetValue(v77, @"CFError", v75);
        if (v60)
        {
          CFRelease(v60);
        }

        v60 = v77;
        goto LABEL_132;
      }

      goto LABEL_184;
    }

    if (CFEqual(a2, @"LegibleOutputChanged"))
    {
      fpr_copyLegibleOutputChangedNotificationPayloadFromMessage();
      if (v89)
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (!CFEqual(a2, @"MetadataOutputChanged"))
      {
        if (CFEqual(a2, @"SeekDidComplete"))
        {
          remoteXPCItem_HandleTimebaseSynchronizationUpdate(a1, a3);
          goto LABEL_118;
        }

        if (CFEqual(a2, *MEMORY[0x1E69628A8]))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          goto LABEL_118;
        }

        if (!CFEqual(a2, @"PleaseUpdateLastPlayedDate"))
        {
          goto LABEL_118;
        }

        FPSupport_ProcessPayloadForLastPlayedDateNotification(a4);
        v52 = 0;
        goto LABEL_155;
      }

      if (fpr_copyMetadataOutputChangedNotificationPayloadFromMessage())
      {
LABEL_183:
        v75 = 0;
LABEL_184:
        FigSimpleMutexUnlock();
        v21 = 0;
        v52 = 0;
        LODWORD(v12) = 1;
        v60 = v113;
LABEL_134:
        v23 = v102;
        if (v60)
        {
          CFRelease(v60);
        }

LABEL_136:
        CFRelease(v23);
        if (v52)
        {
          CFRelease(v52);
        }

        v23 = v75;
        if (!v75)
        {
LABEL_39:
          if (v12 == 4)
          {
            a4 = v21;
          }

          else if (v12 == 1)
          {
            goto LABEL_44;
          }

          fpr_deferPostNotificationToNotificationQueue(a1, a2, a4);
LABEL_44:
          if (v21)
          {
            CFRelease(v21);
          }

          return 1;
        }

LABEL_139:
        CFRelease(v23);
        goto LABEL_39;
      }
    }

    LODWORD(v12) = 4;
    v69 = 1;
    goto LABEL_119;
  }

  if (!FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(a1))
  {
    FigSignalErrorAtGM();
    return 1;
  }

  return FigXPCPlaybackCoordinatorClientHandleNotificationFilter();
}

void remoteXPCPlayerClient_ObjectPurgedCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigPlayerGetTypeID())
  {
    *(CMBaseObjectGetDerivedStorage() + 288) = 1;
  }

  else
  {
    v3 = CFGetTypeID(a1);
    if (v3 != FigPlaybackItemGetTypeID())
    {
      return;
    }

    *(CMBaseObjectGetDerivedStorage() + 270) = 1;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void fpr_deferPostNotificationToNotificationQueue(const void *a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  v6 = qword_1ED4CA8B0;
  v7 = CFGetTypeID(a1);
  if (v7 == FigPlayerGetTypeID())
  {
    v8 = CFRetain(a1);
    goto LABEL_4;
  }

  v11 = CFGetTypeID(a1);
  if (v11 != FigPlaybackItemGetTypeID())
  {
LABEL_16:

    FigSignalErrorAtGM();
    return;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 9))
  {
    fpr_deferPostNotificationToNotificationQueue_cold_1();
    return;
  }

  v8 = remoteXPCItem_copyOwningPlayer();
  if (!v8)
  {
    fpr_deferPostNotificationToNotificationQueue_cold_2();
    return;
  }

LABEL_4:
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 9))
  {
    fpr_deferPostNotificationToNotificationQueue_cold_3();
    if (v8)
    {
LABEL_13:
      CFRelease(v8);
    }
  }

  else
  {
    if (*(DerivedStorage + 48))
    {
      v10 = *(DerivedStorage + 48);
    }

    else
    {
      v10 = v6;
    }

    if (a2)
    {
      CFRetain(a2);
    }

    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpr_deferPostNotificationToNotificationQueue_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a2;
    block[5] = a1;
    block[6] = a3;
    dispatch_async(v10, block);
    if (v8)
    {
      goto LABEL_13;
    }
  }
}

void remoteXPCPlayer_updateLayerDurationsWhenItemReady(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if ((a3 & 3) != 0 && !*(DerivedStorage + 9) && !*(v9 + 9))
  {
    *(DerivedStorage + 176) |= a3;
    v10 = CFArrayCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemProperty_AccurateDuration, 1, MEMORY[0x1E695E9C0]);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v11)
    {
      v11(a2, v10, &v13);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v13)
    {
      v12 = *(DerivedStorage + 176);
      *(DerivedStorage + 176) = 0;
      remoteXPCPlayer_updateLayerDurations(a1, a2, v12, a4);
    }
  }
}

uint64_t remoteXPCPlayer_clearVideoLayer(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigUseVideoReceiverForCALayer())
  {
    remoteXPCPlayer_clearVideoLayer_cold_1();
  }

  else
  {
    if (!a2)
    {
      remoteXPCPlayer_clearVideoLayer_cold_2(&v8);
      return v8;
    }

    FigReadWriteLockLockForRead();
    v5 = *(DerivedStorage + 64);
    if (v5)
    {
      v6 = CFRetain(v5);
    }

    else
    {
      v6 = 0;
    }

    FigReadWriteLockUnlockForRead();
    FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(a2, v6, 0);
    FPSupport_AppendDeferredTransactionChangeToRelease(a2, v6);
    FPSupport_AppendDeferredTransactionPostCommitChangeToReleasePlayerResourcesOnQueue(a2, a1, *(DerivedStorage + 136));
  }

  return 0;
}

void remoteXPCPlayer_updateAirPlayVideoHostLayer(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  number = 0;
  cf = 0;
  valuePtr = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (FigUseVideoReceiverForCALayer())
  {
    remoteXPCPlayer_updateAirPlayVideoHostLayer_cold_1();
    v10 = 0;
    goto LABEL_27;
  }

  FigBaseObject = FigPlayerGetFigBaseObject(a1);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(FigBaseObject, @"IsAirPlayVideoActive", 0, &cf);
    v5 = cf;
  }

  v6 = *MEMORY[0x1E695E4D0];
  if (v5)
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  FigReadWriteLockLockForRead();
  v9 = *(DerivedStorage + 56);
  if (!v9)
  {
    FigReadWriteLockUnlockForRead();
    v10 = 0;
    goto LABEL_25;
  }

  v10 = CFRetain(v9);
  FigReadWriteLockUnlockForRead();
  if (!v10 || (CFArrayGetCount(v10) > 0 ? (v11 = v8) : (v11 = 0), v11 != 1))
  {
LABEL_25:
    v16 = *(DerivedStorage + 104);
    v15 = (DerivedStorage + 104);
    if (v16)
    {
      remoteXPCPlayer_updateAirPlayVideoHostLayer_cold_2(&v18, v15, v10, &v22);
      v10 = v22;
    }

    goto LABEL_27;
  }

  v12 = FigPlayerGetFigBaseObject(a1);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13 && !v13(v12, @"AirPlayVideoScrubbingCAContextID", 0, &number) && number && CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:v6 forKey:*MEMORY[0x1E697A020]];
    v14 = *(DerivedStorage + 104);
    if (v14)
    {
      [v14 removeFromSuperlayer];
    }

    else
    {
      v17 = [MEMORY[0x1E69793A8] layer];
      *(DerivedStorage + 104) = v17;
      if (!v17)
      {
LABEL_37:
        [MEMORY[0x1E6979518] commit];
        goto LABEL_27;
      }

      CFRetain(v17);
    }

    [*(DerivedStorage + 104) setContextId:valuePtr];
    [CFArrayGetValueAtIndex(v10 0)];
    goto LABEL_37;
  }

LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  objc_autoreleasePoolPop(v2);
}

void remoteXPCItem_handleFirstFrameNotificationLatch(const void *a1, int a2, const void *a3)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = remoteXPCItem_copyOwningPlayer();
  BOOLean = 0;
  if (FigUseVideoReceiverForCALayer())
  {
    if (remoteXPCItem_handleFirstFrameNotificationLatch_cold_1(v7))
    {
      return;
    }
  }

  else
  {
    if (!v7)
    {
      remoteXPCItem_handleFirstFrameNotificationLatch_cold_2();
      return;
    }

    Value = 0;
    if (a2 != 1 && a2 != 4)
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v10 || (!v10(FigBaseObject, @"HasEnqueuedFirstVideoFrame", *MEMORY[0x1E695E480], &BOOLean) ? (v11 = BOOLean == 0) : (v11 = 1), v11))
      {
        Value = 0;
      }

      else
      {
        Value = CFBooleanGetValue(BOOLean);
      }
    }

    if (FPSupport_ItemReadyToDisplayVideoLatch(a2, Value, DerivedStorage + 257, DerivedStorage + 256))
    {
      if (DerivedStorage[257])
      {
        if (!DerivedStorage[256])
        {
          theArray[0] = 0;
          v13 = FigPlaybackItemGetFigBaseObject(a1);
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v14(v13, @"VideoSlotArray", *MEMORY[0x1E695E480], theArray);
            if (theArray[0])
            {
              if (CFArrayGetCount(theArray[0]) >= 1)
              {
                remoteXPCPlayer_connectImageQueueToVideoLayerArray(v7, a1, theArray[0], 0, a3);
                DerivedStorage[256] = 1;
              }

              if (theArray[0])
              {
                CFRelease(theArray[0]);
              }
            }
          }
        }
      }

      if (DerivedStorage[258])
      {
        if (dword_1ED4CBDB0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpr_deferPostNotificationToNotificationQueue(a1, @"FirstVideoFrameEnqueued", 0);
        DerivedStorage[258] = 0;
      }
    }
  }

  CFRelease(v7);
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

void remoteXPCPlayer_updateLayerDurations(uint64_t a1, uint64_t a2, char a3, CFTypeRef a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  v19 = **&MEMORY[0x1E6960CC0];
  cf = 0;
  if ((a3 & 3) != 0 && !*(DerivedStorage + 9))
  {
    v9 = v8;
    if (!*(v8 + 9))
    {
      if (!a4)
      {
        if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf))
        {
LABEL_25:
          FigDeferredTransactionCommit(cf, 0);
          if (cf)
          {
            CFRelease(cf);
          }

          return;
        }

        a4 = cf;
      }

      time1 = *(DerivedStorage + 216);
      v16 = **&MEMORY[0x1E6960C70];
      if (CMTimeCompare(&time1, &v16))
      {
        v19 = *(DerivedStorage + 216);
      }

      else
      {
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v12)
        {
          v12(a2, &v19);
        }
      }

      time1 = v19;
      v16 = **&MEMORY[0x1E6960C68];
      if (!CMTimeCompare(&time1, &v16))
      {
        v19 = **&MEMORY[0x1E6960C88];
      }

      if ((a3 & 2) != 0)
      {
        FigSimpleMutexLock();
        v10 = *(DerivedStorage + 160);
        if (v10)
        {
          v11 = CFRetain(v10);
          FigSimpleMutexUnlock();
          if (v11)
          {
            time1 = v19;
            FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(a4, &time1, v11);
            CFRelease(v11);
          }
        }

        else
        {
          FigSimpleMutexUnlock();
        }
      }

      v13 = FigUseVideoReceiverForCALayer();
      if ((a3 & 1) != 0 && !v13)
      {
        FigReadWriteLockLockForRead();
        v14 = *(v9 + 64);
        if (v14)
        {
          v15 = CFRetain(v14);
        }

        else
        {
          v15 = 0;
        }

        FigReadWriteLockUnlockForRead();
        time1 = **&MEMORY[0x1E6960C88];
        FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(a4, &time1, v15);
        if (v15)
        {
          CFRelease(v15);
        }
      }

      goto LABEL_25;
    }
  }
}

void remoteXPCPlayer_removeAirPlayScrubbingVideoTarget()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 312);
  if (v1)
  {
    CMBaseObject = FigVideoTargetGetCMBaseObject(v1);
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v3)
    {
      v3(CMBaseObject, @"AirPlayVideoScrubbingContextID", 0);
    }

    v4 = *(DerivedStorage + 312);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 312) = 0;
    }
  }
}

void remoteXPCPlayer_cancelAndClearNextItemTransitionTimer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __remoteXPCPlayer_cancelAndClearNextItemTransitionTimer_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
}

void __remoteXPCPlayer_cancelAndClearNextItemTransitionTimer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 144);
  if (v2)
  {
    if (!dispatch_source_testcancel(*(v1 + 144)))
    {
      dispatch_source_cancel(v2);
      v2 = *(*(a1 + 32) + 144);
    }

    dispatch_release(v2);
    *(*(a1 + 32) + 144) = 0;
  }
}

void fpr_copySampleBuffersArrayFromMessage(void *a1, const char *a2, __CFArray **a3)
{
  array = xpc_dictionary_get_array(a1, a2);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (array)
  {
    count = xpc_array_get_count(array);
    if (!count)
    {
LABEL_14:
      *a3 = Mutable;
      return;
    }

    v8 = count;
    v9 = 0;
    while (1)
    {
      value = xpc_array_get_value(array, v9);
      *&customBlockSource.version = 0;
      cf = 0;
      HIDWORD(customBlockSource.AllocateBlock) = 0;
      customBlockSource.FreeBlock = fpr_bbufUtilXPCObjectReleaser;
      customBlockSource.refCon = value;
      bytes_ptr = xpc_data_get_bytes_ptr(value);
      if (bytes_ptr)
      {
        v12 = bytes_ptr;
        length = xpc_data_get_length(value);
        if (CMBlockBufferCreateWithMemoryBlock(v5, v12, length, 0, &customBlockSource, 0, length, 0, &cf))
        {
          v14 = 0;
        }

        else
        {
          FigXPCRetain();
          v14 = FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer() == 0;
        }
      }

      else
      {
        v14 = 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (!v14)
      {
        break;
      }

      CFArrayAppendValue(Mutable, 0);
      if (v8 == ++v9)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    fpr_copySampleBuffersArrayFromMessage_cold_1();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __fpr_deferPostNotificationToNotificationQueue_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t remoteXPCPlayer_displayingClosedCaptionsChanged(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    remoteXPCPlayer_updateClosedCaptionHostLayerArray(a2);

    return FigSimpleMutexUnlock();
  }

  return result;
}

__CFString *remoteXPCPlayer_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 9))
  {
    v6 = " INVALIDATED";
  }

  else
  {
    v6 = "";
  }

  if (*(DerivedStorage + 8))
  {
    v7 = " SERVER DIED";
  }

  else
  {
    v7 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPlayer(XPC) %p retainCount: %ld ObjectID: %016llx%s%s>", a1, v5, *DerivedStorage, v6, v7);
  return Mutable;
}

uint64_t remoteXPCPlayer_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  if (!a2)
  {
    remoteXPCPlayer_CopyProperty_cold_4(&cf);
    goto LABEL_53;
  }

  if (!a4)
  {
    remoteXPCPlayer_CopyProperty_cold_3(&cf);
    goto LABEL_53;
  }

  v9 = DerivedStorage;
  ObjectID = remoteXPCPlayer_GetObjectID(a1, &v22);
  if (ObjectID)
  {
    goto LABEL_50;
  }

  if (CFEqual(a2, @"ApplyVideoTrackMatrix"))
  {
    remoteXPCPlayer_CopyProperty_cold_8(v9, a4);
    goto LABEL_46;
  }

  if (CFEqual(@"MasterClock", a2))
  {
    v11 = CMBaseObjectGetDerivedStorage();
    v25 = 0;
    cf = 0;
    xdict = 0;
    v24 = 0;
    if (*(v11 + 184))
    {
      v15 = 0;
      goto LABEL_22;
    }

    v12 = remoteXPCPlayer_GetObjectID(a1, &v25);
    if (!v12)
    {
      v12 = FigXPCCreateBasicMessage();
      if (!v12)
      {
        v12 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v12)
        {
          int64 = xpc_dictionary_get_int64(xdict, "MasterClockType");
          if (int64 == 1)
          {
            HostTimeClock = CMClockGetHostTimeClock();
            if (HostTimeClock)
            {
              HostTimeClock = CFRetain(HostTimeClock);
            }

            goto LABEL_21;
          }

          if (int64 != 2)
          {
            HostTimeClock = 0;
            goto LABEL_21;
          }

          xpc_dictionary_get_uint64(xdict, "MasterClockObjectID");
          v12 = FigAudioDeviceClockXPCRemoteRetainCopiedClock();
          if (!v12)
          {
            HostTimeClock = cf;
LABEL_21:
            v15 = 0;
            *(v11 + 184) = 1;
            *(v11 + 176) = HostTimeClock;
            cf = 0;
LABEL_22:
            v16 = *(v11 + 176);
            if (v16)
            {
              v16 = CFRetain(v16);
            }

            *a4 = v16;
            FigXPCRelease();
            FigXPCRelease();
            if (cf)
            {
              CFRelease(cf);
            }

            FigXPCRemoteClientKillServerOnTimeout();
            goto LABEL_47;
          }
        }
      }
    }

    v15 = v12;
    goto LABEL_22;
  }

  if (CFEqual(a2, @"DisallowVideoLayerDisplayCompositing"))
  {
    remoteXPCPlayer_CopyProperty_cold_7(v9, a4);
    goto LABEL_46;
  }

  if (CFEqual(a2, @"Status"))
  {
    if (*(v9 + 8))
    {
      remoteXPCPlayer_CopyProperty_cold_6(a4);
LABEL_46:
      v15 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    if (CFEqual(a2, @"STSLabel"))
    {
      if (qword_1ED4CA8B8 != -1)
      {
        remoteXPCPlayer_CopyProperty_cold_1();
      }

      if (_MergedGlobals_44)
      {
        remoteXPCPlayer_CopyProperty_cold_5(v9, a4);
        goto LABEL_46;
      }
    }

    if (!CFEqual(a2, @"PlaybackCoordinator") && CFEqual(a2, @"ItemsToPrebuffer"))
    {
      v20 = *(v9 + 24);
      if (v20)
      {
        v20 = CFRetain(v20);
      }

      v15 = 0;
      *a4 = v20;
      goto LABEL_47;
    }
  }

  ObjectID = FigXPCSendStdCopyPropertyMessage();
  if (ObjectID)
  {
LABEL_50:
    v15 = ObjectID;
    goto LABEL_47;
  }

  if (CFEqual(a2, @"Topology"))
  {
    Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v18 = Mutable;
      CFArrayAppendValue(Mutable, @"Remote");
      FigCFArrayAppendArray();
      v15 = 0;
      *a4 = v18;
      goto LABEL_47;
    }

    remoteXPCPlayer_CopyProperty_cold_2(&cf);
LABEL_53:
    v15 = cf;
    goto LABEL_47;
  }

  if (CFEqual(a2, @"PlaybackCoordinator"))
  {
    cf = 0;
    UInt64 = FigCFNumberGetUInt64();
    v15 = FigPlaybackCoordinatorRemoteRetainCopiedPlaybackCoordinator(UInt64, &cf);
    if (!v15)
    {
      *a4 = cf;
    }
  }

  else
  {
    v15 = 0;
    *a4 = 0;
  }

LABEL_47:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v15;
}

uint64_t remoteXPCPlayer_InvalidateItem(uint64_t a1)
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

uint64_t remoteXPCPlayer_updateVideoLayersBeingServicedAndDisplayList(uint64_t a1, const void *a2)
{
  v3 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigUseVideoReceiverForCALayer())
  {
    remoteXPCPlayer_updateVideoLayersBeingServicedAndDisplayList_cold_1(&v13);
    v11 = v13;
    goto LABEL_16;
  }

  FigReadWriteLockLockForRead();
  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    Count = 0;
    if (!a2)
    {
LABEL_7:
      v7 = [MEMORY[0x1E695DFA8] set];
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v9 = [CFArrayGetValueAtIndex(*(DerivedStorage + 64) i)];
          if (v9)
          {
            [v7 addObject:v9];
          }
        }
      }

      FigSimpleMutexLock();
      v10 = *(DerivedStorage + 160);
      if (v10)
      {
        [v10 setBaseDisplayList:{objc_msgSend(v7, "allObjects")}];
      }

      FigSimpleMutexUnlock();
      goto LABEL_15;
    }
  }

  v14.location = 0;
  v14.length = Count;
  if (CFArrayGetFirstIndexOfValue(*(DerivedStorage + 64), v14, a2) != -1)
  {
    goto LABEL_7;
  }

LABEL_15:
  v11 = 0;
LABEL_16:
  FigReadWriteLockUnlockForRead();
  objc_autoreleasePoolPop(v3);
  return v11;
}

uint64_t fpr_setSTSLabelOnSpatialTrackingObjectsApplier(void *cf, uint64_t a2)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == FigVideoTargetGetTypeID()))
  {
    CMBaseObject = FigVideoTargetGetCMBaseObject(cf);
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 8);
    result = VTable + 8;
    v9 = *(v8 + 56);
    if (v9)
    {

      return v9(CMBaseObject, @"STSLabel", a2);
    }
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [objc_msgSend(cf "STSLabel")];
      if ((result & 1) == 0)
      {

        return [cf setSTSLabel:a2];
      }
    }
  }

  return result;
}

uint64_t __remoteXPCPlayer_participatesInSTS_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_44 = result;
  return result;
}

uint64_t remoteXPCPlayer_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[8])
  {
    remoteXPCPlayer_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[9])
    {
      remoteXPCPlayer_GetObjectID_cold_2(&v7);
      return v7;
    }

    else if (DerivedStorage[288])
    {
      remoteXPCPlayer_GetObjectID_cold_3(&v8);
      return v8;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty(const void *a1, uint64_t a2, const void *a3, __CFArray *a4, BOOL *a5, CFTypeRef *a6, void *a7)
{
  v10 = a4;
  cf[16] = *MEMORY[0x1E69E9840];
  values = a4;
  v13 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    remoteXPCPlayer_handleSetProperty_cold_17(cf);
    goto LABEL_117;
  }

  v15 = DerivedStorage;
  if (CFEqual(@"VideoLayer", a3))
  {
    v27 = CFArrayCreate(*MEMORY[0x1E695E480], &values, v10 != 0, MEMORY[0x1E695E9C0]);
    updated = remoteXPCPlayer_setClientVideoLayerArray(a1, v27);
    if (!v27)
    {
      goto LABEL_14;
    }

    v21 = v27;
    goto LABEL_13;
  }

  if (CFEqual(@"ClosedCaptionLayerArray", a3))
  {
    if (!v10 || (v16 = CFGetTypeID(v10), v16 == CFArrayGetTypeID()))
    {
      cf[0] = 0;
      v17 = CMBaseObjectGetDerivedStorage();
      v18 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], cf);
      if (v18)
      {
        updated = v18;
      }

      else
      {
        FigReadWriteLockLockForWrite();
        if (FigCFEqual())
        {
          FigReadWriteLockUnlockForWrite();
          v19 = 0;
          updated = 0;
          goto LABEL_9;
        }

        v19 = *(v17 + 112);
        if (v10)
        {
          v34 = CFRetain(v10);
        }

        else
        {
          v34 = 0;
        }

        *(v17 + 112) = v34;
        FigReadWriteLockUnlockForWrite();
        FigSimpleMutexLock();
        updated = remoteXPCPlayer_updateClosedCaptionHostLayerArray(a1);
        FigSimpleMutexUnlock();
        if (!v19 || CFArrayGetCount(v19) < 1)
        {
LABEL_9:
          FigDeferredTransactionCommit(cf[0], 0);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (!v19)
          {
            goto LABEL_14;
          }

          v21 = v19;
LABEL_13:
          CFRelease(v21);
          goto LABEL_14;
        }

        FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], v19);
      }

      v19 = 0;
      goto LABEL_9;
    }

    remoteXPCPlayer_handleSetProperty_cold_1(cf);
LABEL_117:
    updated = LODWORD(cf[0]);
    goto LABEL_15;
  }

  if (CFEqual(@"VideoLayerArray", a3))
  {
    if (v10)
    {
      v35 = CFGetTypeID(v10);
      if (v35 != CFArrayGetTypeID())
      {
        remoteXPCPlayer_handleSetProperty_cold_2(cf);
        goto LABEL_117;
      }
    }

    v36 = remoteXPCPlayer_setClientVideoLayerArray(a1, v10);
LABEL_47:
    updated = v36;
    goto LABEL_14;
  }

  if (CFEqual(@"VideoTargetArray", a3))
  {
    v92 = v13;
    v37 = CMBaseObjectGetDerivedStorage();
    if (v10 && (v38 = v37, v39 = CFGetTypeID(v10), v39 == CFArrayGetTypeID()))
    {
      FigReadWriteLockLockForWrite();
      v40 = *(v38 + 304);
      *(v38 + 304) = CFRetain(v10);
      v89 = v38;
      FigReadWriteLockUnlockForWrite();
      v41 = 0;
      if (v40)
      {
        goto LABEL_55;
      }

LABEL_56:
      for (i = 0; v41 < i; i = CFArrayGetCount(v40))
      {
        CFArrayGetValueAtIndex(v40, v41);
        if (!FigCFArrayContainsValue())
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListeners();
        }

        ++v41;
        if (!v40)
        {
          goto LABEL_56;
        }

LABEL_55:
        ;
      }

      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, j);
          getpid();
          SInt32 = FigCFNumberCreateSInt32();
          CMBaseObject = FigVideoTargetGetCMBaseObject(ValueAtIndex);
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v48)
          {
            v48(CMBaseObject, @"ResponsibleProcessID", SInt32);
          }

          if (SInt32)
          {
            CFRelease(SInt32);
          }

          if (!FigCFArrayContainsValue())
          {
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterAddWeakListeners();
          }
        }
      }

      v49 = remoteXPCPlayer_reevaluatePendingVideoTargetsAndUpdateServerPlayer(a1);
      v13 = v92;
      if (v49)
      {
        updated = v49;
        v50 = 0;
      }

      else if (FigUseVideoReceiverForCALayer())
      {
        FigSimpleMutexLock();
        v50 = remoteXPCPlayer_copySyncItem(a1);
        FigSimpleMutexUnlock();
        if (v50)
        {
          remoteXPCItem_updateLayerSync(v50, Count > 0, 0);
        }

        remoteXPCPlayer_updateVideoTargetsBeingServicedAndDisplayList(a1, 0, v60, v61, v62, v63, v64, v65, v82, v83, v84, v85, capacity, v89, v92, a5, block, v97, v98, v99);
        updated = v66;
        if (!v66)
        {
          remoteXPCPlayer_handleSetProperty_cold_3(a1, v90);
        }
      }

      else
      {
        v50 = 0;
        updated = 0;
      }

      if (v40)
      {
        CFRelease(v40);
      }

      if (v50)
      {
        CFRelease(v50);
      }
    }

    else
    {
      remoteXPCPlayer_handleSetProperty_cold_4(cf);
      updated = LODWORD(cf[0]);
    }

    FigXPCRemoteClientKillServerOnTimeout();
LABEL_14:
    *a5 = 1;
    goto LABEL_15;
  }

  if (CFEqual(@"ShouldWaitForVideoTarget", a3))
  {
    if (v10)
    {
      v23 = CFBooleanGetValue(v10) != 0;
    }

    else
    {
      v23 = 0;
    }

    FigReadWriteLockLockForWrite();
    v24 = *(v15 + 336);
    v95 = a5;
    v26 = (!v24 || CFArrayGetCount(v24) < 1 || (v25 = *(v15 + 328)) != 0 && CFArrayGetCount(v25)) && *(v15 + 320) != v23;
    *(v15 + 320) = v23;
    FigReadWriteLockUnlockForWrite();
    if (dword_1ED4CBDB0)
    {
      v103 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_42:
    updated = 0;
    *v95 = !v26;
    if (!v26)
    {
      goto LABEL_15;
    }

    v33 = 0;
    goto LABEL_87;
  }

  if (CFEqual(@"VisualContext", a3))
  {
    updated = 4294954436;
    goto LABEL_14;
  }

  v29 = a6;
  if (CFEqual(a3, @"ApplyVideoTrackMatrix"))
  {
    if (!v10 || (v30 = a7, v31 = CFGetTypeID(v10), v31 != CFBooleanGetTypeID()))
    {
      remoteXPCPlayer_handleSetProperty_cold_6(cf);
      goto LABEL_117;
    }

    Value = CFBooleanGetValue(v10);
    a7 = v30;
    if (Value == *(v15 + 168) || (*(v15 + 168) = Value, FigUseVideoReceiverForCALayer()))
    {
      v33 = 0;
      updated = 0;
LABEL_85:
      a6 = v29;
LABEL_86:
      *a5 = 0;
LABEL_87:
      *a6 = CFRetain(a3);
      if (v10)
      {
        v52 = CFRetain(v10);
      }

      else
      {
        v52 = 0;
      }

      *a7 = v52;
      if (v33)
      {
        goto LABEL_91;
      }

      goto LABEL_15;
    }

    FigSimpleMutexLock();
    v67 = remoteXPCPlayer_copySyncItem(a1);
    FigSimpleMutexUnlock();
    if (v67)
    {
      remoteXPCPlayer_handleSetProperty_cold_5(a1, v67, cf);
      v33 = 0;
      updated = LODWORD(cf[0]);
    }

    else
    {
      v33 = 0;
      updated = 0;
    }

LABEL_84:
    a7 = v30;
    goto LABEL_85;
  }

  if (CFEqual(a3, @"SetVideoLayerBoundsAutomatically"))
  {
    if (!v10 || (v30 = a7, v51 = CFGetTypeID(v10), v51 != CFBooleanGetTypeID()))
    {
      remoteXPCPlayer_handleSetProperty_cold_7(cf);
      goto LABEL_117;
    }

    v33 = 0;
    updated = 0;
    *(v15 + 169) = CFBooleanGetValue(v10);
    goto LABEL_84;
  }

  v93 = a7;
  if (CFEqual(a3, @"DisallowVideoLayerDisplayCompositing"))
  {
    if (!v10 || (v53 = CFGetTypeID(v10), v53 != CFBooleanGetTypeID()))
    {
      remoteXPCPlayer_handleSetProperty_cold_8(cf);
      goto LABEL_117;
    }

    v33 = 0;
    updated = 0;
    *(v15 + 171) = CFBooleanGetValue(v10);
    goto LABEL_99;
  }

  if (CFEqual(@"NetworkCacheURL", a3))
  {
    remoteXPCPlayer_setNetworkCacheURL(a1, v10, v54, v55, v56, v57, v58, v59, v82, v83, v84, v85, capacity, v88, a7, v94, block, v97, v98, v99);
    goto LABEL_47;
  }

  if (CFEqual(@"UseApplicationAudioSession", a3))
  {
    AudioSessionCreateForPID();
    v33 = 0;
    updated = 0;
LABEL_99:
    a7 = v93;
    goto LABEL_86;
  }

  if (CFEqual(@"MasterClock", a3))
  {
    if (v10)
    {
      v70 = CFGetTypeID(v10);
      if (v70 != CMClockGetTypeID())
      {
        remoteXPCPlayer_handleSetProperty_cold_9(cf);
        goto LABEL_117;
      }
    }

    v36 = remoteXPCPlayer_setMasterClock();
    goto LABEL_47;
  }

  if (CFEqual(@"DisplayList", a3))
  {
    updated = 4294954509;
    goto LABEL_14;
  }

  if (CFEqual(@"UsePerPlayerRemoteNotificationQueue", a3))
  {
    if (!v10 || (v68 = CFGetTypeID(v10), v68 == CFBooleanGetTypeID()))
    {
      if (*MEMORY[0x1E695E4D0] == v10)
      {
        snprintf(cf, 0x60uLL, "com.apple.coremedia.playerremote.notifications.<%p>", a1);
        v69 = FigDispatchQueueCreateWithPriority();
      }

      else
      {
        v69 = 0;
      }

      if (a1)
      {
        CFRetain(a1);
      }

      block = MEMORY[0x1E69E9820];
      v97 = 3221225472;
      v98 = __remoteXPCPlayer_handleSetProperty_block_invoke;
      v99 = &unk_1E7483B48;
      v100 = v69;
      v101 = a1;
      dispatch_async(qword_1ED4CA8B0, &block);
      updated = 0;
      goto LABEL_14;
    }

    remoteXPCPlayer_handleSetProperty_cold_10(cf);
    goto LABEL_117;
  }

  v95 = a5;
  if (CFEqual(@"STSLabel", a3))
  {
    if (qword_1ED4CA8B8 != -1)
    {
      remoteXPCPlayer_CopyProperty_cold_1();
    }

    if (_MergedGlobals_44)
    {
      if (v10)
      {
        v79 = CFGetTypeID(v10);
        if (v79 != CFStringGetTypeID())
        {
          remoteXPCPlayer_handleSetProperty_cold_12(cf);
          goto LABEL_117;
        }

        FigSimpleMutexLock();
        remoteXPCPlayer_removeAllSpatialTrackingLayers();
        v80 = *(v15 + 256);
        *(v15 + 256) = v10;
        CFRetain(v10);
        if (v80)
        {
          CFRelease(v80);
        }

        v26 = 1;
        *(v15 + 264) = 1;
      }

      else
      {
        FigSimpleMutexLock();
        if (*(v15 + 264))
        {
          v81 = *(v15 + 256);
          if (v81)
          {
            CFRelease(v81);
            *(v15 + 256) = 0;
          }

          *(v15 + 264) = 0;
          remoteXPCPlayer_reevaluateSpatialTrackingObjectsAndUpdateLabelIfNecessary(a1);
        }

        v26 = 0;
      }

      FigSimpleMutexUnlock();
      a7 = v93;
      goto LABEL_42;
    }
  }

  if (CFEqual(@"AsynchronousControlQueueHolder", a3))
  {
    updated = 0;
    goto LABEL_14;
  }

  if (!CFEqual(@"ItemsToPrebuffer", a3))
  {
    v33 = 0;
LABEL_165:
    updated = 0;
    a7 = v93;
    a5 = v95;
    goto LABEL_85;
  }

  if (!v10)
  {
    v33 = 0;
    v78 = *(v15 + 24);
    *(v15 + 24) = 0;
LABEL_163:
    if (v78)
    {
      CFRelease(v78);
    }

    goto LABEL_165;
  }

  v71 = CFGetTypeID(v10);
  if (v71 != CFArrayGetTypeID())
  {
    remoteXPCPlayer_handleSetProperty_cold_13(cf);
    goto LABEL_117;
  }

  capacitya = CFArrayGetCount(v10);
  if (capacitya < 1)
  {
    v33 = 0;
    Mutable = v10;
LABEL_162:
    v78 = *(v15 + 24);
    *(v15 + 24) = v10;
    CFRetain(v10);
    v10 = Mutable;
    goto LABEL_163;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacitya, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    remoteXPCPlayer_handleSetProperty_cold_16(cf);
    goto LABEL_117;
  }

  v72 = 0;
  while (1)
  {
    v73 = CFArrayGetValueAtIndex(v10, v72);
    if (!v73 || (v74 = CFGetTypeID(v73), v74 != FigPlaybackItemGetTypeID()))
    {
      remoteXPCPlayer_handleSetProperty_cold_15(cf);
LABEL_177:
      updated = LODWORD(cf[0]);
      goto LABEL_179;
    }

    if (CMBaseObjectGetVTable() != &kRemoteXPCPlaybackItemVTable)
    {
      remoteXPCPlayer_handleSetProperty_cold_14(cf);
      goto LABEL_177;
    }

    CMBaseObjectGetDerivedStorage();
    v75 = remoteXPCItem_copyOwningPlayer();
    v76 = v75;
    if (v75)
    {
      CFRelease(v75);
    }

    if (v76 != a1)
    {
      break;
    }

    UInt64 = FigCFNumberCreateUInt64();
    FigCFArrayAppendValue();
    if (UInt64)
    {
      CFRelease(UInt64);
    }

    if (capacitya == ++v72)
    {
      v33 = Mutable;
      values = Mutable;
      goto LABEL_162;
    }
  }

  updated = FigSignalErrorAtGM();
LABEL_179:
  v33 = Mutable;
LABEL_91:
  CFRelease(v33);
LABEL_15:
  objc_autoreleasePoolPop(v13);
  return updated;
}

void __remoteXPCPlayer_handleSetProperty_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 40);
  *(DerivedStorage + 48) = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __remoteXPCPlayer_updateClosedCaptionHostLayerArray_block_invoke(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  while (1)
  {
    Count = *(a1 + 32);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v2);
    Mutable = CFDictionaryCreateMutable(v3, 2, v4, v5);
    if (Mutable)
    {
      v9 = Mutable;
      FigCFDictionarySetCFIndex();
      [ValueAtIndex bounds];
      FigCFDictionarySetCGRect();
      FigBaseObject = FigPlayerGetFigBaseObject(*(a1 + 40));
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(FigBaseObject, @"ClosedCaptionLayerBoundsUpdate", v9);
      }

      CFRelease(v9);
    }

    ++v2;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    CFRelease(v13);
  }

  objc_autoreleasePoolPop(context);
}

uint64_t remoteXPCItem_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13[5] = 0;
  if (*(DerivedStorage + 9))
  {
    FigXPCRelease();
    return 0;
  }

  else
  {
    v3 = DerivedStorage;
    v4 = remoteXPCItem_copyOwningPlayer();
    if (v4)
    {
      v5 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v5 = 0;
    }

    FigStopMonitoringMediaServicesProcessDeath();
    *(v3 + 9) = 1;
    v6 = FigXPCRemoteClientDisassociateObject();
    if (!*(v3 + 8) && !*(v3 + 270))
    {
      v6 = FigXPCCreateBasicMessage();
      if (!v6)
      {
        v6 = FigXPCRemoteClientSendAsyncMessage();
      }
    }

    FigSimpleMutexLock();
    if (v5)
    {
      CFSetRemoveValue(*(v5 + 16), a1);
    }

    v7 = *(v3 + 152);
    if (v7)
    {
      FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v7, 0, 0);
    }

    FigSimpleMutexLock();
    v8 = *(v3 + 160);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 160) = 0;
    }

    FigSimpleMutexUnlock();
    v9 = *(v3 + 184);
    if (v9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __remoteXPCItem_Invalidate_block_invoke;
      v13[3] = &__block_descriptor_40_e5_v8__0l;
      v13[4] = v3;
      dispatch_sync(v9, v13);
    }

    v10 = *(v3 + 200);
    if (v10)
    {
      CFRelease(v10);
      *(v3 + 200) = 0;
    }

    v11 = *(v3 + 208);
    if (v11)
    {
      CFRelease(v11);
      *(v3 + 208) = 0;
    }

    if (v5)
    {
      remoteXPCItem_Invalidate_cold_1(v5, a1);
    }

    FigXPCRelease();
    if (v4)
    {
      CFRelease(v4);
    }

    FigSimpleMutexUnlock();
  }

  return v6;
}

uint64_t remoteXPCItem_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  remoteXPCItem_Invalidate(a1);
  v3 = DerivedStorage[19];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[19] = 0;
  }

  if (DerivedStorage[18])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[18] = 0;
  }

  if (DerivedStorage[21])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[21] = 0;
  }

  if (DerivedStorage[17])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[17] = 0;
  }

  v4 = DerivedStorage[5];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[5] = 0;
  }

  v5 = DerivedStorage[4];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[4] = 0;
  }

  v6 = DerivedStorage[6];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[6] = 0;
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[3] = 0;
  }

  v8 = DerivedStorage[23];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[23] = 0;
  }

  result = DerivedStorage[2];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    DerivedStorage[2] = 0;
  }

  return result;
}

__CFString *remoteXPCItem_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 9))
  {
    v6 = " INVALIDATED";
  }

  else
  {
    v6 = "";
  }

  if (*(DerivedStorage + 8))
  {
    v7 = " SERVER DIED";
  }

  else
  {
    v7 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackItemRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s%s>", a1, v5, *DerivedStorage, v6, v7);
  return Mutable;
}

uint64_t remoteXPCItem_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  cf = 0;
  v11 = 0;
  if (!a2)
  {
    remoteXPCItem_SetProperty_cold_2(&v15);
LABEL_15:
    v9 = v15;
    goto LABEL_10;
  }

  v6 = remoteXPCItem_copyOwningPlayer();
  if (!v6)
  {
    remoteXPCItem_SetProperty_cold_1(&v15);
    goto LABEL_15;
  }

  v7 = v6;
  ObjectID = remoteXPCItem_GetObjectID(a1, &v14);
  if (ObjectID)
  {
    goto LABEL_7;
  }

  ObjectID = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(a1, a2, a3, 0, remoteXPCItem_handleSetProperty, &v11, &v13, &cf);
  if (ObjectID)
  {
    goto LABEL_7;
  }

  if (!v11)
  {
    ObjectID = FigXPCSendStdSetPropertyMessage();
LABEL_7:
    v9 = ObjectID;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  CFRelease(v7);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_10:
  if (v13)
  {
    CFRelease(v13);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t remoteXPCItem_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[8])
  {
    remoteXPCItem_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[9])
    {
      remoteXPCItem_GetObjectID_cold_2(&v7);
      return v7;
    }

    else if (DerivedStorage[270])
    {
      remoteXPCItem_GetObjectID_cold_3(&v8);
      return v8;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

BOOL remoteXPCItem_copyCurrentDateProperty(uint64_t a1, uint64_t a2, const void *a3, CFDateRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v24, 0, sizeof(v24));
  FigSimpleMutexLock();
  v8 = 0.0;
  if (remoteXPCItem_GetCurrentTime(a1, &v24) || (v24.flags & 1) == 0 || (v9 = *(DerivedStorage + 104), *&range.start.value = *(DerivedStorage + 88), *&range.start.epoch = v9, *&range.duration.timescale = *(DerivedStorage + 120), time.start = v24, !CMTimeRangeContainsTime(&range, &time.start)) || (memset(&range, 0, 24), time.start = v24, rhs = *(DerivedStorage + 88), CMTimeSubtract(&range.start, &time.start, &rhs), v10 = *(DerivedStorage + 80), *&time.start.value = *&range.start.value, time.start.epoch = range.start.epoch, v8 = v10 + CMTimeGetSeconds(&time.start), v8 == 0.0))
  {
    theDict = 0;
    if (!FigXPCSendStdCopyPropertyMessage() && theDict != 0)
    {
      Value = CFDictionaryGetValue(theDict, @"date");
      memset(&range, 0, sizeof(range));
      v13 = CFDictionaryGetValue(theDict, @"timeRange");
      CMTimeRangeMakeFromDictionary(&range, v13);
      if (Value)
      {
        if ((range.start.flags & 1) != 0 && (range.duration.flags & 1) != 0 && !range.duration.epoch && (range.duration.value & 0x8000000000000000) == 0)
        {
          time = range;
          rhs = v24;
          if (CMTimeRangeContainsTime(&time, &rhs))
          {
            memset(&time, 0, 24);
            rhs = v24;
            start = range.start;
            CMTimeSubtract(&time.start, &rhs, &start);
            v14 = *&range.start.epoch;
            *(DerivedStorage + 88) = *&range.start.value;
            *(DerivedStorage + 104) = v14;
            *(DerivedStorage + 120) = *&range.duration.timescale;
            v15 = MEMORY[0x19A8CCD90](Value);
            *(DerivedStorage + 80) = v15;
            rhs = time.start;
            v8 = v15 + CMTimeGetSeconds(&rhs);
          }
        }
      }

      if (theDict)
      {
        CFRelease(theDict);
      }
    }
  }

  FigSimpleMutexUnlock();
  if (v8 != 0.0)
  {
    if (CFEqual(a3, @"currentDate"))
    {
      v16 = CFDateCreate(*MEMORY[0x1E695E480], v8);
LABEL_23:
      *a4 = v16;
      return v8 != 0.0;
    }

    if (CFEqual(a3, @"currentDateAndTime"))
    {
      HIWORD(range.duration.flags) = 0;
      *(&range.duration.timescale + 2) = 0;
      range.start = v24;
      v17 = *MEMORY[0x1E695E480];
      *&range.duration.value = v8;
      LOWORD(range.duration.timescale) = 257;
      v16 = FigDateTimeMomentCopyAsDictionary(&range, v17);
      goto LABEL_23;
    }
  }

  return v8 != 0.0;
}

uint64_t remoteXPCItem_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (a2)
  {
    result = *(DerivedStorage + 32);
    if (result)
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
      result = 0;
      *a2 = v7;
      v5 = v8;
    }

    else
    {
      v6 = MEMORY[0x1E6960C70];
      *a2 = *MEMORY[0x1E6960C70];
      v5 = *(v6 + 16);
    }

    *(a2 + 16) = v5;
  }

  else
  {
    remoteXPCItem_GetCurrentTime_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t remoteXPCItem_handleSetProperty(const void *a1, uint64_t a2, __CFString *a3, const __CFArray *a4, _BYTE *a5, CFTypeRef *a6, void *a7)
{
  v13 = objc_autoreleasePoolPush();
  v72 = 0;
  if (!a3)
  {
    remoteXPCItem_handleSetProperty_cold_11(&cf);
    goto LABEL_121;
  }

  v68 = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = remoteXPCItem_copyOwningPlayer();
  if (!v15)
  {
    remoteXPCItem_handleSetProperty_cold_10(&cf);
    goto LABEL_121;
  }

  v16 = v15;
  v67 = a6;
  ObjectID = remoteXPCItem_GetObjectID(a1, &v72);
  if (ObjectID)
  {
    goto LABEL_115;
  }

  v66 = a7;
  if (*(CMBaseObjectGetDerivedStorage() + 9))
  {
    remoteXPCItem_handleSetProperty_cold_1(&cf);
    goto LABEL_123;
  }

  if (CFEqual(a3, @"SynchronizedLayers"))
  {
    cf.value = 0;
    v18 = *MEMORY[0x1E695E480];
    ObjectID = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf.value);
    if (!ObjectID)
    {
      if (a4 && (v19 = CFGetTypeID(a4), v19 == CFArrayGetTypeID()))
      {
        Copy = CFArrayCreateCopy(v18, a4);
      }

      else
      {
        Copy = 0;
      }

      FigSimpleMutexLock();
      v21 = DerivedStorage[20];
      DerivedStorage[20] = Copy;
      FigSimpleMutexUnlock();
      if (v21)
      {
        CFRelease(v21);
      }

      FigSimpleMutexLock();
      isSyncItem = remoteXPCItem_isSyncItem(a1);
      FigSimpleMutexUnlock();
      remoteXPCItem_updateLayerSync(a1, isSyncItem, cf.value);
      if (Copy)
      {
        remoteXPCPlayer_updateLayerDurationsWhenItemReady(v16, a1, 2, cf.value);
      }

      FigDeferredTransactionCommit(cf.value, 0);
      if (cf.value)
      {
        CFRelease(cf.value);
      }

      value_low = 0;
      goto LABEL_18;
    }

LABEL_115:
    value_low = ObjectID;
    goto LABEL_19;
  }

  if (!CFEqual(a3, @"VisualContextArray"))
  {
    v65 = v13;
    if (CFEqual(a3, @"VideoCompositor"))
    {
      v37 = DerivedStorage[26];
      if (v37)
      {
        CFRelease(v37);
        DerivedStorage[26] = 0;
      }

      if (a4)
      {
        v38 = CFGetTypeID(a4);
        if (v38 == FigVideoCompositorGetTypeID())
        {
          cf.value = 0;
          ObjectID = FigVideoCompositorRemoteGetObjectID(a4, &cf);
          if (ObjectID)
          {
            goto LABEL_115;
          }

          v39 = DerivedStorage[26];
          DerivedStorage[26] = a4;
          CFRetain(a4);
          if (v39)
          {
            CFRelease(v39);
          }

          v40 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &cf);
          v33 = 0;
          v41 = @"Server_VideoCompositorID";
          a4 = v40;
          goto LABEL_48;
        }
      }

      goto LABEL_94;
    }

    if (CFEqual(a3, @"VideoCompositionProperties"))
    {
      if (a4)
      {
        v45 = CFGetTypeID(a4);
        if (v45 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(a4, @"VideoCompositor");
          v47 = CFDictionaryGetValue(a4, @"VideoCompositorOutputBufferDescription");
          v48 = DerivedStorage[26];
          if (v48)
          {
            CFRelease(v48);
            DerivedStorage[26] = 0;
          }

          if (Value && (v49 = CFGetTypeID(Value), v49 == FigVideoCompositorGetTypeID()))
          {
            cf.value = 0;
            ObjectID = FigVideoCompositorRemoteGetObjectID(Value, &cf);
            if (ObjectID)
            {
              goto LABEL_115;
            }

            v50 = DerivedStorage[26];
            DerivedStorage[26] = Value;
            CFRetain(Value);
            if (v50)
            {
              CFRelease(v50);
            }

            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a4);
            if (!MutableCopy)
            {
              remoteXPCItem_handleSetProperty_cold_4(&v71);
              value_low = LODWORD(v71.value);
              goto LABEL_19;
            }

            v52 = MutableCopy;
            CFDictionaryRemoveValue(MutableCopy, @"VideoCompositor");
            FigCFDictionarySetInt64();
          }

          else
          {
            v52 = 0;
          }

          if (!v47)
          {
            goto LABEL_65;
          }

          v53 = CFGetTypeID(v47);
          if (v53 != CFArrayGetTypeID())
          {
            if (v47 == *MEMORY[0x1E695E738])
            {
LABEL_65:
              Mutable = 0;
              if (v52)
              {
                a4 = v52;
              }

              v43 = v52;
              goto LABEL_95;
            }

            remoteXPCItem_handleSetProperty_cold_5(&cf);
LABEL_130:
            value_low = LODWORD(cf.value);
            goto LABEL_106;
          }

          v62 = *MEMORY[0x1E695E480];
          v63 = remoteXPCItem_copyTagCollectionArrayAsDataArray(*MEMORY[0x1E695E480], v47);
          if (!v63)
          {
            remoteXPCItem_handleSetProperty_cold_7(&cf);
            goto LABEL_130;
          }

          v64 = v63;
          if (v52 || (v52 = CFDictionaryCreateMutableCopy(v62, 0, a4)) != 0)
          {
            CFDictionarySetValue(v52, @"VideoCompositorOutputBufferDescription", v64);
            CFRelease(v64);
            goto LABEL_65;
          }

          remoteXPCItem_handleSetProperty_cold_6(v16, v64, &cf);
LABEL_121:
          value_low = LODWORD(cf.value);
          goto LABEL_109;
        }
      }

      remoteXPCItem_handleSetProperty_cold_8(&cf);
LABEL_123:
      value_low = LODWORD(cf.value);
      goto LABEL_19;
    }

    if (CFEqual(@"AudioProcessingTap", a3))
    {
      if (a4)
      {
        v54 = CFGetTypeID(a4);
        if (v54 != MTAudioProcessingTapGetTypeID())
        {
          remoteXPCItem_handleSetProperty_cold_9(&cf);
          goto LABEL_123;
        }
      }

      cf.value = 0;
      FigSimpleMutexLock();
      v55 = DerivedStorage[25];
      DerivedStorage[25] = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      if (v55)
      {
        CFRelease(v55);
      }

      FigSimpleMutexUnlock();
      if (!a4)
      {
        v40 = 0;
        goto LABEL_84;
      }

      v56 = MTAudioProcessingTapXPCRemoteGetObjectID(a4, &cf);
      if (!v56)
      {
        v40 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &cf);
LABEL_84:
        v33 = 0;
        v41 = @"Server_AudioProcessingTapID";
LABEL_87:
        a4 = v40;
        goto LABEL_48;
      }

LABEL_132:
      value_low = v56;
      goto LABEL_19;
    }

    if (!CFEqual(@"PriorImageQueueGauge", a3))
    {
      if (CFEqual(@"TransientTimebaseForCoordinatedPlaybackSynchronization", a3))
      {
        if (a4)
        {
          v58 = CFGetTypeID(a4);
          if (v58 == CMTimebaseGetTypeID())
          {
            cf = **&MEMORY[0x1E6960C70];
            v71 = cf;
            rateOut = 0.0;
            CMTimebaseGetTimeAndRate(a4, &cf, &rateOut);
            if (rateOut != 0.0)
            {
              HostTimeClock = CMClockGetHostTimeClock();
              time = cf;
              CMSyncConvertTime(&v71, &time, a4, HostTimeClock);
            }

            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            time = cf;
            FigCFDictionarySetCMTime();
            time = v71;
            FigCFDictionarySetCMTime();
            FigCFDictionarySetDouble();
            v43 = 0;
            a3 = @"Server-TransientTimebaseDict";
            a4 = Mutable;
            goto LABEL_95;
          }

          Mutable = 0;
          v43 = 0;
          a4 = 0;
        }

        else
        {
          Mutable = 0;
          v43 = 0;
        }

        a3 = @"Server-TransientTimebaseDict";
LABEL_95:
        v40 = 0;
        v33 = 0;
        *v68 = 0;
        v41 = a3;
        goto LABEL_96;
      }

LABEL_94:
      Mutable = 0;
      v43 = 0;
      goto LABEL_95;
    }

    cf.value = 0;
    if (a4 && (v57 = CFGetTypeID(a4), v57 == FigImageQueueGaugeGetTypeID()))
    {
      v56 = FigImageQueueGaugeXPCRemoteGetObjectID(a4, &cf);
      if (v56)
      {
        goto LABEL_132;
      }

      v40 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &cf);
    }

    else
    {
      v40 = 0;
    }

    v33 = 0;
    v41 = @"Server_PriorImageQueueGaugeID";
    goto LABEL_87;
  }

  if (!a4 || (v25 = CFGetTypeID(a4), v25 != CFArrayGetTypeID()))
  {
    remoteXPCItem_handleSetProperty_cold_3(&v71);
LABEL_126:
    value_low = LODWORD(v71.value);
    if (LODWORD(v71.value))
    {
LABEL_18:
      *v68 = 1;
LABEL_19:
      v24 = v16;
LABEL_108:
      CFRelease(v24);
      goto LABEL_109;
    }

    goto LABEL_44;
  }

  v26 = CMBaseObjectGetDerivedStorage();
  v27 = CFGetAllocator(a1);
  Count = CFArrayGetCount(a4);
  if (Count < 1)
  {
    v33 = CFArrayCreateMutable(v27, Count, MEMORY[0x1E695E9C0]);
    if (v33)
    {
LABEL_46:
      v65 = v13;
      v42 = *(v26 + 184);
      cf.value = MEMORY[0x1E69E9820];
      *&cf.timescale = 3221225472;
      cf.epoch = __remoteXPCItem_updateVisualContextArrayAndCopyIDArray_block_invoke;
      v74 = &__block_descriptor_48_e5_v8__0l;
      v75 = v26;
      v76 = a4;
      dispatch_sync(v42, &cf);
      goto LABEL_47;
    }

LABEL_125:
    remoteXPCItem_handleSetProperty_cold_2(&v71);
    goto LABEL_126;
  }

  v29 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, v29);
    if (!ValueAtIndex)
    {
      break;
    }

    v31 = CFGetTypeID(ValueAtIndex);
    if (v31 != FigVisualContextGetTypeID())
    {
      break;
    }

    if (Count == ++v29)
    {
      v32 = CFArrayCreateMutable(v27, Count, MEMORY[0x1E695E9C0]);
      if (!v32)
      {
        goto LABEL_125;
      }

      v33 = v32;
      v34 = 0;
      while (1)
      {
        v35 = CFArrayGetValueAtIndex(a4, v34);
        v71.value = 0;
        appended = FigVisualContextXPCRemoteGetObjectID(v35, &v71);
        if (appended)
        {
          break;
        }

        appended = FigCFArrayAppendInt64();
        if (appended)
        {
          break;
        }

        if (Count == ++v34)
        {
          goto LABEL_46;
        }
      }

      value_low = appended;
      CFRelease(v33);
      goto LABEL_18;
    }
  }

  value_low = FigSignalErrorAtGM();
  if (value_low)
  {
    goto LABEL_18;
  }

LABEL_44:
  v65 = v13;
  v33 = 0;
LABEL_47:
  v40 = 0;
  v41 = @"Server_VisualContextIDArray";
  a4 = v33;
LABEL_48:
  v43 = 0;
  Mutable = 0;
  *v68 = 0;
LABEL_96:
  v52 = v43;
  *v67 = CFRetain(v41);
  if (a4)
  {
    v60 = CFRetain(a4);
  }

  else
  {
    v60 = 0;
  }

  v13 = v65;
  *v66 = v60;
  if (v40)
  {
    CFRelease(v40);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  value_low = 0;
LABEL_106:
  CFRelease(v16);
  if (v52)
  {
    v24 = v52;
    goto LABEL_108;
  }

LABEL_109:
  FigXPCRemoteClientKillServerOnTimeout();
  objc_autoreleasePoolPop(v13);
  return value_low;
}

void __remoteXPCItem_updateVisualContextArrayAndCopyIDArray_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 192);
  *(v2 + 192) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t remoteXPCItem_SetProperties(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  v17 = 0;
  memset(cf, 0, sizeof(cf));
  v15 = 0;
  v14 = 0;
  if (!a2)
  {
    remoteXPCItem_SetProperties_cold_2(&v18);
    v6 = 0;
    goto LABEL_26;
  }

  v6 = remoteXPCItem_copyOwningPlayer();
  if (!v6)
  {
    remoteXPCItem_SetProperties_cold_1(&v18);
LABEL_26:
    v9 = v18;
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  ObjectID = remoteXPCItem_GetObjectID(a1, &v17);
  if (ObjectID)
  {
    goto LABEL_23;
  }

  ObjectID = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(a1, a2, 0, remoteXPCItem_handleSetProperty, &v15, cf, &v14);
  if (ObjectID)
  {
    goto LABEL_23;
  }

  if (v15)
  {
LABEL_13:
    v9 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v14, 0, a3);
    goto LABEL_14;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (!ObjectID)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (!ObjectID)
    {
      v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v8)
      {
        v9 = v8;
        v10 = FigCFDictionaryCopyArrayOfKeys();
        v11 = FigCFCopyCompactDescription();
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_11;
      }

      v9 = FigXPCMessageCopyCFDictionary();
      if (!v9)
      {
        goto LABEL_13;
      }

LABEL_14:
      FigXPCRemoteClientKillServerOnTimeout();
      v11 = 0;
      v12 = 0;
      if (!v6)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

LABEL_23:
  v9 = ObjectID;
  v11 = 0;
LABEL_11:
  FigXPCRemoteClientKillServerOnTimeout();
LABEL_15:
  CFRelease(v6);
  v12 = v11;
LABEL_16:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t remoteXPCPlayer_GetRate(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 9))
  {
    remoteXPCPlayer_GetRate_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 188);
  }

  return result;
}

uint64_t remoteXPCPlayer_CopyDisplayedCVPixelBuffer(uint64_t a1, const __CFDictionary *ValueAtIndex, CVPixelBufferRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (FigUseVideoReceiverForCALayer())
  {
    remoteXPCPlayer_CopyDisplayedCVPixelBuffer_cold_1(&pixelBufferOut);
    return pixelBufferOut;
  }

  if (ValueAtIndex)
  {
    if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"VideoLayer", &value))
    {
      FigReadWriteLockLockForRead();
      v7 = *(DerivedStorage + 72);
      v8 = *(DerivedStorage + 56);
      if (v8)
      {
        Count = CFArrayGetCount(*(DerivedStorage + 56));
        if (v7)
        {
LABEL_6:
          v10 = CFArrayGetCount(v7);
          goto LABEL_10;
        }
      }

      else
      {
        Count = 0;
        if (v7)
        {
          goto LABEL_6;
        }
      }

      v10 = 0;
LABEL_10:
      ValueAtIndex = 0;
      if (Count >= 1 && Count == v10)
      {
        v24.length = CFArrayGetCount(v8);
        v24.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v24, value);
        if (FirstIndexOfValue == -1)
        {
          ValueAtIndex = 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, FirstIndexOfValue);
        }
      }

      FigReadWriteLockUnlockForRead();
      goto LABEL_16;
    }

    ValueAtIndex = 0;
  }

LABEL_16:
  v21 = 0;
  pixelBufferOut = 0;
  xdict = 0;
  v20 = 0;
  if (a3)
  {
    ObjectID = remoteXPCPlayer_GetObjectID(a1, &v21);
    if (ObjectID)
    {
      goto LABEL_31;
    }

    ObjectID = FigXPCCreateBasicMessage();
    if (ObjectID)
    {
      goto LABEL_31;
    }

    if (ValueAtIndex && *MEMORY[0x1E695E738] != ValueAtIndex)
    {
      FigXPCMessageSetCFNumber();
    }

    ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (ObjectID)
    {
LABEL_31:
      v16 = ObjectID;
    }

    else
    {
      v13 = xpc_dictionary_get_value(xdict, "CurrentlyDisplayedIOSurface");
      if (v13 && (v14 = IOSurfaceLookupFromXPCObject(v13)) != 0)
      {
        v15 = v14;
        v16 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v14, 0, &pixelBufferOut);
        if (v16)
        {
          if (pixelBufferOut)
          {
            CFRelease(pixelBufferOut);
          }
        }

        else
        {
          *a3 = pixelBufferOut;
          pixelBufferOut = 0;
        }

        CFRelease(v15);
      }

      else
      {
        v16 = 0;
        *a3 = 0;
        pixelBufferOut = 0;
      }
    }
  }

  else
  {
    remoteXPCPlayer_CopyDisplayedCVPixelBuffer_cold_2(&v23);
    v16 = v23;
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v16;
}

uint64_t OUTLINED_FUNCTION_6_39()
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_20_9()
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_30_10()
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_31_10()
{

  return FigXPCCreateBasicMessage();
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_50_5()
{

  return FigXPCRemoteClientSendSyncMessage();
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider(const __CFDictionary *a1, CGDataProvider *a2, uint64_t a3, CGImageRef *a4)
{
  plist[6] = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  bytesPerRow = 0;
  v37 = 0;
  v35 = 0;
  intent = kCGRenderingIntentDefault;
  Value = CFDictionaryGetValue(a1, @"CGImageWidth");
  if (!Value)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_11(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v9 = CFDictionaryGetValue(a1, @"CGImageHeight");
  if (!v9)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_10(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(v9, kCFNumberIntType, &v37 + 4);
  v10 = CFDictionaryGetValue(a1, @"CGImageBitsPerComponent");
  if (!v10)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_9(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(v10, kCFNumberIntType, &v37);
  v11 = CFDictionaryGetValue(a1, @"CGImageBitsPerPixel");
  if (!v11)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_8(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(v11, kCFNumberIntType, &bytesPerRow + 4);
  v12 = CFDictionaryGetValue(a1, @"CGImageBytesPerRow");
  if (!v12)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_7(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(v12, kCFNumberIntType, &bytesPerRow);
  v13 = CFDictionaryGetValue(a1, @"CGImageColorSpaceType");
  if (!v13)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_6(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(v13, kCFNumberIntType, &v35 + 4);
  if (HIDWORD(v35) == 1)
  {
    goto LABEL_13;
  }

  plist[0] = 0;
  v14 = CFDictionaryGetValue(a1, @"CGImageColorSpacePList");
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  BytePtr = CFDataGetBytePtr(v14);
  Length = CFDataGetLength(v15);
  MEMORY[0x19A8D2B00](BytePtr, Length, a3, plist);
  if (!plist[0])
  {
    goto LABEL_13;
  }

  DeviceRGB = CGColorSpaceCreateWithPropertyList(plist[0]);
  if (plist[0])
  {
    CFRelease(plist[0]);
  }

  if (!DeviceRGB)
  {
LABEL_13:
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v19 = CFDictionaryGetValue(a1, @"CGImageBitmapInfo");
  if (!v19)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_5(plist);
    goto LABEL_43;
  }

  CFNumberGetValue(v19, kCFNumberIntType, &v35);
  v20 = CFDictionaryGetValue(a1, @"CGImageShouldInterpolate");
  if (!v20)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_4(plist);
    goto LABEL_43;
  }

  v21 = CFBooleanGetValue(v20);
  v22 = CFDictionaryGetValue(a1, @"CGImageRenderingIntent");
  if (!v22)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_3(plist);
    goto LABEL_43;
  }

  CFNumberGetValue(v22, kCFNumberIntType, &intent);
  v23 = CFDictionaryGetValue(a1, @"CGImageDecodeArray");
  if (v23)
  {
    v24 = v23;
    Count = CFArrayGetCount(v23);
    if (Count <= 6)
    {
      v26 = Count;
      if (Count >= 1)
      {
        v27 = 0;
        v28 = plist;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v24, v27);
          if (!ValueAtIndex)
          {
            break;
          }

          CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, v28);
          ++v27;
          ++v28;
          if (v26 == v27)
          {
            goto LABEL_23;
          }
        }

        figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_1(&v39);
        v32 = v39;
        goto LABEL_28;
      }

LABEL_23:
      decode = plist;
      goto LABEL_25;
    }

    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_2(plist);
LABEL_43:
    v32 = LODWORD(plist[0]);
    goto LABEL_28;
  }

  decode = 0;
LABEL_25:
  v31 = CGImageCreate(valuePtr, SHIDWORD(v37), v37, SHIDWORD(bytesPerRow), bytesPerRow, DeviceRGB, v35, a2, decode, v21 != 0, intent);
  *a4 = v31;
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = 4294954510;
  }

LABEL_28:
  if (DeviceRGB)
  {
    CGColorSpaceRelease(DeviceRGB);
  }

  return v32;
}

uint64_t FigRemote_CreateSerializedDataForCGImage(CGImage *a1, vm_address_t *a2, _DWORD *a3, mach_port_t *a4, vm_address_t *a5, _DWORD *a6)
{
  theData = 0;
  v37 = 0;
  v34 = 0;
  address = 0;
  v6 = MEMORY[0x1E69E9A60];
  if (!a2)
  {
    FigRemote_CreateSerializedDataForCGImage_cold_7(&v38);
LABEL_44:
    v25 = 0;
    Length = 0;
    v24 = 0;
    v31 = v38;
    goto LABEL_28;
  }

  if (!a3)
  {
    FigRemote_CreateSerializedDataForCGImage_cold_6(&v38);
    goto LABEL_44;
  }

  if (!a5)
  {
    FigRemote_CreateSerializedDataForCGImage_cold_5(&v38);
    goto LABEL_44;
  }

  if (!a6)
  {
    FigRemote_CreateSerializedDataForCGImage_cold_4(&v38);
    goto LABEL_44;
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = figremote_CreateCGImageParametersDictonary(a1, *MEMORY[0x1E695E480], &v37);
  v14 = v37;
  if (v13 || (v13 = MEMORY[0x19A8D2A70](v37, v12, &theData), v13))
  {
    v31 = v13;
    v24 = 0;
    goto LABEL_22;
  }

  Length = CFDataGetLength(theData);
  if (Length)
  {
    v16 = vm_allocate(*v6, &address, Length, 1543503873);
    if (v16)
    {
      v31 = v16;
      v24 = 0;
LABEL_23:
      v25 = 0;
      if (!v14)
      {
        goto LABEL_28;
      }

LABEL_27:
      CFRelease(v14);
      goto LABEL_28;
    }

    v17 = address;
    BytePtr = CFDataGetBytePtr(theData);
    memcpy(v17, BytePtr, Length);
    v19 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    Property = CGImageGetProperty();
    if (Property)
    {
      v21 = Property;
      PixelFormat = IOSurfaceGetPixelFormat(Property);
      if (PixelFormat == 1111970369 || PixelFormat == 1380411457)
      {
        MachPort = IOSurfaceCreateMachPort(v21);
        v24 = 0;
        LODWORD(v25) = 0;
LABEL_21:
        v6 = MEMORY[0x1E69E9A60];
        v31 = 0;
        *a2 = v34;
        *a3 = v25;
        *a5 = address;
        *a6 = Length;
        *a4 = MachPort;
LABEL_22:
        Length = 0;
        goto LABEL_23;
      }

      fig_log_get_emitter();
      v31 = FigSignalErrorAtGM();
      v24 = 0;
      v25 = 0;
      goto LABEL_26;
    }

    DataProvider = CGImageGetDataProvider(a1);
    v27 = CGDataProviderCopyData(DataProvider);
    v24 = v27;
    if (v27)
    {
      v25 = CFDataGetLength(v27);
      if (v25)
      {
        v28 = vm_allocate(*MEMORY[0x1E69E9A60], &v34, v25, 1543503873);
        if (!v28)
        {
          v29 = v34;
          v30 = CFDataGetBytePtr(v24);
          memcpy(v29, v30, v25);
          if (*v19 == 1)
          {
            kdebug_trace();
          }

          MachPort = 0;
          goto LABEL_21;
        }

        v31 = v28;
LABEL_26:
        v6 = MEMORY[0x1E69E9A60];
        if (!v14)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      FigRemote_CreateSerializedDataForCGImage_cold_1(&v38);
    }

    else
    {
      FigRemote_CreateSerializedDataForCGImage_cold_2(&v38);
      v25 = 0;
    }

    v31 = v38;
    goto LABEL_26;
  }

  FigRemote_CreateSerializedDataForCGImage_cold_3(&v38);
  v24 = 0;
  v25 = 0;
  v31 = v38;
  if (v14)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25 && v34)
  {
    MEMORY[0x19A8D6C70](*v6, v34, v25);
  }

  if (Length && address)
  {
    MEMORY[0x19A8D6C70](*v6, address, Length);
  }

  return v31;
}

uint64_t FigRemote_CreateCGImageFromSerializedDataInBlockBuffer(CMBlockBufferRef theBuffer, const __CFDictionary *a2, uint64_t a3, CGImageRef *a4)
{
  if (!theBuffer)
  {
    FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_4(&lengthAtOffsetOut);
    return lengthAtOffsetOut;
  }

  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  data = 0;
  if (!a2)
  {
    FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_3(&v17);
LABEL_14:
    CGImageFromParametersDictionaryAndCGDataProvider = v17;
    goto LABEL_15;
  }

  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &data);
  if (DataPointer)
  {
    CGImageFromParametersDictionaryAndCGDataProvider = DataPointer;
LABEL_15:
    v12 = theBuffer;
    goto LABEL_7;
  }

  if (lengthAtOffsetOut != totalLengthOut)
  {
    FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_1(&v17);
    goto LABEL_14;
  }

  CFRetain(theBuffer);
  v9 = CGDataProviderCreateWithData(theBuffer, data, lengthAtOffsetOut, figremote_releaseImageDataBlockBufferForCGDataProvider);
  if (!v9)
  {
    FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_2(&v17);
    goto LABEL_14;
  }

  v10 = v9;
  CGImageFromParametersDictionaryAndCGDataProvider = figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider(a2, v9, a3, a4);
  v12 = v10;
LABEL_7:
  CFRelease(v12);
  return CGImageFromParametersDictionaryAndCGDataProvider;
}

void figremote_releaseImageDataBlockBufferForCGDataProvider(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  if (cf && a2)
  {
    if (a3)
    {
      CFRelease(cf);
    }
  }
}

uint64_t FigRemote_CreateCommonMetadataBinaryPListData(const __CFDictionary *a1, CFAllocatorRef allocator, uint64_t a3)
{
  if (!a1)
  {

    JUMPOUT(0x19A8D2A70);
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionaryApplyFunction(a1, figremote_convertMetadataLocalePropertyFromCFLocaleToCFString, Mutable);
    v8 = MEMORY[0x19A8D2A70](v7, allocator, a3);
    CFRelease(v7);
    return v8;
  }

  else
  {
    FigRemote_CreateCommonMetadataBinaryPListData_cold_1(&v10);
    return v10;
  }
}

void figremote_convertMetadataLocalePropertyFromCFLocaleToCFString(const void *a1, const __CFDictionary *a2, void *cf)
{
  if (a2)
  {
    if (a1)
    {
      if (cf)
      {
        v6 = CFGetAllocator(cf);
        v7 = v6;
        MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
        if (MutableCopy)
        {
          v9 = MutableCopy;
          Value = CFDictionaryGetValue(MutableCopy, @"MetadataProperties");
          if (Value)
          {
            v11 = FigRemote_CopyMetadataItemWithLocaleAsCFString(v7, Value);
            if (v11)
            {
              v12 = v11;
              CFDictionaryReplaceValue(v9, @"MetadataProperties", v11);
              CFRelease(v12);
            }
          }

          CFDictionaryAddValue(cf, a1, v9);

          CFRelease(v9);
        }
      }
    }
  }
}

void figremote_convertMetadataLocalePropertyFromCFStringToCFLocale(const void *a1, const __CFDictionary *a2, void *cf)
{
  if (a2)
  {
    if (a1)
    {
      if (cf)
      {
        v6 = CFGetAllocator(cf);
        v7 = v6;
        MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
        if (MutableCopy)
        {
          v9 = MutableCopy;
          Value = CFDictionaryGetValue(MutableCopy, @"MetadataProperties");
          if (Value)
          {
            v11 = FigRemote_CopyMetadataItemWithLocaleAsCFLocale(v7, Value);
            if (v11)
            {
              v12 = v11;
              CFDictionaryReplaceValue(v9, @"MetadataProperties", v11);
              CFRelease(v12);
            }
          }

          CFDictionaryAddValue(cf, a1, v9);

          CFRelease(v9);
        }
      }
    }
  }
}

CFNumberRef OUTLINED_FUNCTION_2_61(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberIntType, a3);
}

uint64_t FigTTMLPCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      return v8;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
    if (v8)
    {
      return v8;
    }

    v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
    if (v8)
    {
      return v8;
    }

    else
    {
      v10 = MEMORY[0x1E695E9C0];
      *(DerivedStorage + 136) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 144) = CFArrayCreateMutable(a1, 0, v10);
      *a3 = 0;
      *(a3 + 8) = 0;
      FigTTMLParseNode(a2, figTTMLP_ConsumeChildNode, a3);
      v12 = v11;
      if (!v11)
      {
        *a4 = 0;
      }
    }
  }

  else
  {
    FigTTMLPCreate_cold_1(&v14);
    return v14;
  }

  return v12;
}

uint64_t figTTMLP_ConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theString = 0;
  value = 0;
  CFGetAllocator(*a2);
  InlineClassNode = FigTTMLParseAndCreateInlineClassNode();
  if (InlineClassNode || (CFGetAllocator(*a2), InlineClassNode = FigTTMLParseAndCreateAnimationClassNode(), InlineClassNode))
  {
    v8 = InlineClassNode;
  }

  else
  {
    v10 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
    v8 = v10;
    if (a3 && !v10)
    {
      v8 = 0;
      *a3 = value;
      value = 0;
    }
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v8;
}

void figTTMLP_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLP_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"p: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLP_CopyChildNodeArray(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
    result = 0;
    *a2 = ConcatenationOfTwoArrays;
  }

  else
  {
    figTTMLP_CopyChildNodeArray_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigTTMLP_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 4;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigTTMLP_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigStreamPlaylistParserStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigStreamPlaylistParserStartServer_block_invoke;
  block[3] = &unk_1E7483F70;
  block[4] = &v3;
  if (FigStreamPlaylistParserStartServer_sFigStreamPlaylistParserServerSetupOnce != -1)
  {
    dispatch_once(&FigStreamPlaylistParserStartServer_sFigStreamPlaylistParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigStreamPlaylistParserStartServer_block_invoke(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetInt32();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart();
    CFRelease(v4);
  }

  else
  {
    __FigStreamPlaylistParserStartServer_block_invoke_cold_1(a1 + 32);
  }
}

uint64_t __FigStreamPlaylistParserServerConnectionObjGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA8C8 = result;
  return result;
}

void streamPlaylistParserServerServerConnectionObj_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    xpc_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t OUTLINED_FUNCTION_1_67()
{

  return FigXPCServerLookupAndRetainAssociatedObject();
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return FigCFStringGetCStringPtrAndBufferToFree();
}

uint64_t remoteXPCMutableMovieClient_EnsureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCMutableMovieClient_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E7483FB8;
  block[4] = &v3;
  if (gMutableMovieRemoteClientSetupOnce != -1)
  {
    dispatch_once(&gMutableMovieRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void setOptionsDictionaryEntryForMoviePropertyFromFormatReader(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  if (!CFDictionaryContainsKey(a1, a2))
  {
    FigBaseObject = FigFormatReaderGetFigBaseObject(a3);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(FigBaseObject, a2, *MEMORY[0x1E695E480], &value);
      if (value)
      {
        CFDictionaryAddValue(a1, a2, value);
        CFRelease(value);
      }
    }
  }
}

uint64_t remoteXPCMutableMovie_CreateByteStreamForURLAndSetObjectIDToXPCMessage(const __CFURL *a1, unsigned int a2, void *a3, CFTypeRef *a4)
{
  value = 0;
  cf = 0;
  ObjectID = remoteXPCMutableMovie_CreateByteStreamForURLAndGetObjectID(a1, a2, &cf, &value);
  if (ObjectID)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    xpc_dictionary_set_uint64(a3, "ByteStream", value);
    *a4 = cf;
  }

  return ObjectID;
}

uint64_t remoteXPCMutableMovie_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = FigSandboxRegisterURLWithProcessAndCopyRegistration();
  if (v5)
  {
    return v5;
  }

  v6 = 0;
  *a4 = 0;
  return v6;
}

void remoteXPCMutableMovie_storeSandboxRegistration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = *(DerivedStorage + 40);
  if (Mutable || (Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]), (*(DerivedStorage + 40) = Mutable) != 0))
  {
    if (a2)
    {

      CFSetAddValue(Mutable, a2);
    }
  }

  else
  {
    remoteXPCMutableMovie_storeSandboxRegistration_cold_1();
  }
}

uint64_t remoteXPCMutableMovieClient_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    *(result + 9) = 1;
  }

  return result;
}

uint64_t remoteXPCMutableMovie_CreateByteStreamForURLAndGetObjectID(const __CFURL *a1, unsigned int a2, CFTypeRef *a3, void *a4)
{
  v10 = 0;
  cf = 0;
  v6 = FigByteStreamRemoteCreateWithURL(*MEMORY[0x1E695E480], a1, a2, &cf);
  if (v6)
  {
    ObjectID = v6;
  }

  else
  {
    ObjectID = FigByteStreamRemoteGetObjectID(cf, &v10);
    if (!ObjectID)
    {
      v8 = v10;
      *a3 = cf;
      *a4 = v8;
      return ObjectID;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return ObjectID;
}

__CFString *remoteXPCMutableMovie_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigMutableMovieXPCRemote %p retainCount: %ld allocator: %p ObjectID: %016llx>", a1, v5, v6, *DerivedStorage);
  return Mutable;
}

uint64_t remoteXPCMutableMovie_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteXPCMutableMovie_GetObjectID_cold_1(&v6);
    return v6;
  }

  else if (a2)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      remoteXPCMutableMovie_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  else
  {
    remoteXPCMutableMovie_GetObjectID_cold_3(&v8);
    return v8;
  }

  return result;
}

void setOptionsDictionaryEntryForTrackPropertyFromTrackReader(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  if (!CFDictionaryContainsKey(a1, a2))
  {
    FigBaseObject = FigTrackReaderGetFigBaseObject(a3);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(FigBaseObject, a2, *MEMORY[0x1E695E480], &value);
      if (value)
      {
        CFDictionaryAddValue(a1, a2, value);
        CFRelease(value);
      }
    }
  }
}

uint64_t remoteXPCMutableMovie_CreateByteStreamForTrackMediaDataStorageURLAndSetObjectIDInXPCMessageIfNecessary(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFNumberCreateSInt32();
  cf = 0;
  value = 0;
  if (FigCFDictionaryGetValueIfPresent() || (v7 = *(DerivedStorage + 16), (value = v7) == 0) || CFSetContainsValue(*(DerivedStorage + 32), v7))
  {
    v8 = 0;
LABEL_10:
    v11 = 0;
    *a4 = v8;
    return v11;
  }

  if (FigFileDoesFileExist())
  {
    v9 = 2;
  }

  else
  {
    v9 = 18;
  }

  v10 = remoteXPCMutableMovie_CreateByteStreamForURLAndSetObjectIDToXPCMessage(value, v9, a3, &cf);
  if (!v10)
  {
    CFSetAddValue(*(DerivedStorage + 32), value);
    v8 = cf;
    goto LABEL_10;
  }

  v11 = v10;
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t OUTLINED_FUNCTION_3_50@<X0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 time2, uint64_t time2_16)
{
  time2 = *a1;
  time2_16 = *(a1 + 2);

  return CMTimeCompare(&a2, &time2);
}

uint64_t OUTLINED_FUNCTION_15_17()
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_18_13()
{

  return remoteXPCMutableMovieClient_EnsureClientEstablished();
}

uint64_t OUTLINED_FUNCTION_28_11()
{

  return FigXPCCreateBasicMessage();
}

uint64_t OUTLINED_FUNCTION_29_10()
{

  return FigXPCRemoteClientSendSyncMessage();
}

uint64_t FigManifoldCreateForGap(CFAllocatorRef Default, CMTime *a2, CMTime *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v26 = 0;
  v15 = MEMORY[0x1E6960CC0];
  if (a2)
  {
    memset(&v23, 0, 24);
    fgGetDurationFromBlockBuffer(a2, &v23.start);
    if ((v23.start.flags & 1) == 0)
    {
      return 4294951252;
    }

    start = v23.start;
    duration = *v15;
    if (CMTimeCompare(&start, &duration) <= 0)
    {
      return 4294951252;
    }
  }

  if ((a3->flags & 0x1D) != 1)
  {
    FigManifoldCreateForGap_cold_1(&v23);
    return LODWORD(v23.start.value);
  }

  FigManifoldGetClassID();
  v16 = CMDerivedObjectCreate();
  v17 = v26;
  if (!v16)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = FigReentrantMutexCreate();
    *(DerivedStorage + 16) = v19;
    if (v19)
    {
      if (!Default)
      {
        Default = CFAllocatorGetDefault();
      }

      *DerivedStorage = CFRetain(Default);
      *(DerivedStorage + 136) = a5;
      *(DerivedStorage + 144) = a6;
      *(DerivedStorage + 152) = a7;
      *(DerivedStorage + 96) = 0xCA000000C9;
      *(DerivedStorage + 124) = 0x736F756E76696465;
      start = *a3;
      duration = *v15;
      CMTimeRangeMake(&v23, &start, &duration);
      v20 = *&v23.start.epoch;
      *(DerivedStorage + 160) = *&v23.start.value;
      *(DerivedStorage + 176) = v20;
      *(DerivedStorage + 192) = *&v23.duration.timescale;
      start = *a3;
      duration = *v15;
      CMTimeRangeMake(&v23, &start, &duration);
      v16 = 0;
      v21 = *&v23.start.epoch;
      *(DerivedStorage + 208) = *&v23.start.value;
      *(DerivedStorage + 224) = v21;
      *(DerivedStorage + 240) = *&v23.duration.timescale;
      *(DerivedStorage + 13) = a4;
      *a8 = v26;
      return v16;
    }

    fig_log_get_emitter();
    v16 = FigSignalErrorAtGM();
    v17 = v26;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

uint64_t fgInvalidate(const void *a1)
{
  CFRetain(a1);
  fgInvalidateGuts(a1);
  CFRelease(a1);
  return 0;
}

uint64_t fgFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fgInvalidateGuts(a1);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  result = *(DerivedStorage + 16);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 16) = 0;
  }

  return result;
}

__CFString *fgCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    v2 = DerivedStorage;
    v3 = *(DerivedStorage + 96);
    time = *(DerivedStorage + 160);
    Seconds = CMTimeGetSeconds(&time);
    lhs = *(v2 + 160);
    rhs = *(v2 + 184);
    CMTimeAdd(&time, &lhs, &rhs);
    v5 = CMTimeGetSeconds(&time);
    v6 = *(v2 + 100);
    time = *(v2 + 208);
    v7 = CMTimeGetSeconds(&time);
    lhs = *(v2 + 208);
    rhs = *(v2 + 232);
    CMTimeAdd(&time, &lhs, &rhs);
    v8 = CMTimeGetSeconds(&time);
    v9 = 89;
    if (!*(v2 + 8))
    {
      v9 = 78;
    }

    CFStringAppendFormat(Mutable, 0, @"FigFigGapManifold : pending gap duration Video[%d][%f, %f] Audio[%d][%f %f]. Invalidated[%c]", v3, *&Seconds, *&v5, v6, *&v7, *&v8, v9);
  }

  return Mutable;
}

uint64_t fgSetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = v1 + 1;
  if (*(DerivedStorage + 8))
  {
    fig_log_get_emitter();
    v2 = FigSignalErrorAtGM();
    v1 = *(DerivedStorage + 24) - 1;
  }

  else
  {
    v2 = 4294954512;
  }

  *(DerivedStorage + 24) = v1;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t fgInvalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = v3 + 1;
  if (!*(DerivedStorage + 8))
  {
    v4 = *(DerivedStorage + 13) != 0;
    v5 = DerivedStorage + 104;
    do
    {
      v6 = v4;
      v7 = *(v5 + 8 * v4);
      if (v7)
      {
        CFRelease(v7);
        *(v5 + 8 * v6) = 0;
      }

      v4 = 1;
    }

    while (!v6);
    *(DerivedStorage + 8) = 1;
    fgEndAllTracks(a1, 0xFFFFC153);
    v3 = *(DerivedStorage + 24) - 1;
  }

  *(DerivedStorage + 24) = v3;

  return FigSimpleMutexUnlock();
}

uint64_t fgEndAllTracks(uint64_t a1, unsigned int a2)
{
  FigManifoldGetFigBaseObject(a1);
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  v4 = *(result + 13) != 0;
  v5 = result + 32;
  v6 = result + 96;
  v7 = result + 80;
  do
  {
    v8 = v4;
    v9 = v5 + 24 * v4;
    v12 = *(v9 + 16);
    v10 = (v9 + 16);
    v11 = v12;
    if (v12)
    {
      *v10 = 0;
      v13 = *(v3 + 24);
      *(v3 + 24) = 0;
      if (v13 >= 1)
      {
        v14 = v13;
        do
        {
          FigSimpleMutexUnlock();
          --v14;
        }

        while (v14);
      }

      v11(a1, *(v6 + 4 * v8), *(v7 + 8 * v8), a2);
      do
      {
        result = FigSimpleMutexLock();
        v15 = *(v3 + 24) + 1;
        *(v3 + 24) = v15;
      }

      while (v15 < v13);
    }

    v4 = 1;
  }

  while (!v8);
  return result;
}

uint64_t fgManifoldInjectData(const void *a1, uint64_t a2, uint64_t a3, CMTime *a4)
{
  v79 = *MEMORY[0x1E69E9840];
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    fgManifoldInjectData(&time1);
    return LODWORD(time1.duration.value);
  }

  v6 = DerivedStorage;
  fgGetDurationFromBlockBuffer(a4, &time1.duration);
  value = time1.duration.value;
  flags = time1.duration.flags;
  timescale = time1.duration.timescale;
  if ((time1.duration.flags & 0x1D) != 1 || (time1.duration.value = value, time1.duration.timescale = timescale, epoch = time1.duration.epoch, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1.duration, &time2) <= 0))
  {
    fgManifoldInjectData(&time1);
    return LODWORD(time1.duration.value);
  }

  CFRetain(a1);
  CFRetain(a4);
  FigSimpleMutexLock();
  ++*(v6 + 24);
  if (*(v6 + 8))
  {
    fgManifoldInjectData(&time1);
LABEL_95:
    value_low = LODWORD(time1.duration.value);
    goto LABEL_88;
  }

  if (*(v6 + 11))
  {
    fgManifoldInjectData(&time1);
    goto LABEL_95;
  }

  v8 = *(v6 + 13) != 0;
  v67 = v6 + 9;
  v65 = v6 + 104;
  allocator = *MEMORY[0x1E695E480];
  v62 = *MEMORY[0x1E69604B0];
  key = *MEMORY[0x1E6962E38];
  v61 = *MEMORY[0x1E695E4D0];
  v59 = a4;
  v58 = flags;
  while (1)
  {
    v9 = v8;
    *(v6 + 11) = 0;
    if (!*(v67 + v8))
    {
      v10 = *(v6 + 136);
      if (v10)
      {
        v11 = *(v6 + 24);
        *(v6 + 24) = 0;
        if (v11 >= 1)
        {
          v12 = v11;
          do
          {
            FigSimpleMutexUnlock();
            --v12;
          }

          while (v12);
        }

        value_low = v10(a1, *(v6 + 152), *(v6 + 124 + 4 * v9), *(v6 + 96 + 4 * v9));
        do
        {
          FigSimpleMutexLock();
          v14 = *(v6 + 24) + 1;
          *(v6 + 24) = v14;
        }

        while (v14 < v11);
        if (value_low)
        {
          goto LABEL_87;
        }

        *(v67 + v9) = 1;
        if (*(v6 + 8) || *(v6 + 12))
        {
          break;
        }
      }
    }

    v15 = v6 + 160 + 48 * v9;
    v16 = *(v15 + 24);
    time2.epoch = *(v15 + 40);
    *&time2.value = v16;
    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    CMTimeAdd(&time1.duration, &time2, &rhs);
    v17 = *&time1.duration.value;
    *(v15 + 40) = time1.duration.epoch;
    *(v15 + 24) = v17;
    v18 = *(v65 + 8 * v9);
    v19 = CMGetAttachment(a4, @"FBPAKey_FakeFormatDescription", 0);
    *(v65 + 8 * v9) = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    *(v6 + 11) = 1;
    FigManifoldGetFigBaseObject(a1);
    v20 = CMBaseObjectGetDerivedStorage();
    v76 = 0;
    if (*(v20 + 8))
    {
      fgManifoldInjectData(&time1);
      value_low = LODWORD(time1.duration.value);
      goto LABEL_63;
    }

    v21 = v20;
    v22 = v20 + 48 * v9;
    if (*(v22 + 172))
    {
      v23 = *(v22 + 184);
      time1.duration.epoch = *(v22 + 200);
      *&time1.duration.value = v23;
      time2 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&time1.duration, &time2) >= 1)
      {
        v24 = v21 + 24 * v9;
        v26 = *(v24 + 40);
        v25 = (v24 + 40);
        if (v26)
        {
          v27 = v21 + 120;
          if (*(v21 + 120 + v9))
          {
            goto LABEL_59;
          }

          v28 = v21 + 104;
          v29 = *(v21 + 104 + 8 * v9);
          if (!v29)
          {
            v30 = *(v21 + 4 * v9 + 96);
            FigManifoldGetFigBaseObject(a1);
            v31 = CMBaseObjectGetDerivedStorage();
            time2.value = 0;
            if (v30 == 202)
            {
              memset(&time1.duration.timescale, 0, 32);
              time1.duration.value = 0x40D5888000000000;
              time1.duration.timescale = 1633772320;
              HIDWORD(time1.duration.epoch) = 1024;
              HIDWORD(time1.presentationTimeStamp.value) = 2;
              CMAudioFormatDescriptionCreate(*v31, &time1, 0, 0, 0, 0, 0, &time2);
            }

            else if (v30 == 201)
            {
              CMVideoFormatDescriptionCreate(*v31, 0x61766331u, 1, 1, 0, &time2);
            }

            else
            {
              fig_log_get_emitter();
              FigSignalErrorAtGM();
            }

            v29 = time2.value;
            v28 = v21 + 104;
            *(v21 + 104 + 8 * v9) = time2.value;
            if (!v29)
            {
              value_low = 4294954510;
              goto LABEL_63;
            }
          }

          v32 = *(v25 - 1);
          if (!v32)
          {
            goto LABEL_44;
          }

          v33 = *(v21 + 24);
          *(v21 + 24) = 0;
          if (v33 >= 1)
          {
            v64 = v28;
            v34 = v33;
            do
            {
              FigSimpleMutexUnlock();
              --v34;
            }

            while (v34);
            v29 = *(v64 + 8 * v9);
          }

          value_low = v32(a1, *(v21 + 4 * v9 + 96), *(v21 + 8 * v9 + 80), v29, 0);
          do
          {
            FigSimpleMutexLock();
            v35 = *(v21 + 24) + 1;
            *(v21 + 24) = v35;
          }

          while (v35 < v33);
          a4 = v59;
          flags = v58;
          if (value_low)
          {
            goto LABEL_63;
          }

          *(v27 + v9) = 1;
          if (*(v21 + 8))
          {
LABEL_82:
            value_low = 4294951251;
            goto LABEL_63;
          }

          if (*(v21 + 12))
          {
LABEL_83:
            value_low = 4294951251;
          }

          else
          {
LABEL_44:
            v36 = *(v21 + 13) != 0;
            v37 = 1;
            do
            {
              v38 = v36;
              if (!*(v27 + v36))
              {
                v37 = 0;
              }

              v36 = 1;
            }

            while (!v38);
            v39 = *(v21 + 144);
            if (v39)
            {
              v40 = v37 == 0;
            }

            else
            {
              v40 = 1;
            }

            a4 = v59;
            flags = v58;
            if (!v40)
            {
              v41 = *(v21 + 24);
              *(v21 + 24) = 0;
              if (v41 >= 1)
              {
                v42 = v41;
                do
                {
                  FigSimpleMutexUnlock();
                  --v42;
                }

                while (v42);
              }

              v39(a1, *(v21 + 152));
              do
              {
                FigSimpleMutexLock();
                v43 = *(v21 + 24) + 1;
                *(v21 + 24) = v43;
              }

              while (v43 < v41);
              if (*(v21 + 8) || *(v21 + 12))
              {
                goto LABEL_82;
              }
            }

LABEL_59:
            if (*(v21 + 104 + 8 * v9))
            {
              time2 = **&MEMORY[0x1E6960CC0];
              memset(&rhs, 0, sizeof(rhs));
              CMTimeMakeWithSeconds(&rhs, 0.5, 900000);
              time1.duration = time2;
              v44 = *(v22 + 184);
              v73.epoch = *(v22 + 200);
              for (*&v73.value = v44; CMTimeCompare(&time1.duration, &v73) < 0; *&v73.value = v56)
              {
                v45 = *v25;
                if (!*v25)
                {
                  break;
                }

                memset(&v73, 0, sizeof(v73));
                v46 = *(v22 + 184);
                time1.duration.epoch = *(v22 + 200);
                *&time1.duration.value = v46;
                v72 = rhs;
                CMTimeMinimum(&v73, &time1.duration, &v72);
                time1.duration = v73;
                v47 = *(v22 + 176);
                *&time1.presentationTimeStamp.value = *(v22 + 160);
                time1.presentationTimeStamp.epoch = v47;
                v48 = *(v22 + 176);
                *&time1.decodeTimeStamp.value = *(v22 + 160);
                time1.decodeTimeStamp.epoch = v48;
                value_low = 4294954510;
                if (CMSampleBufferCreate(allocator, 0, 1u, 0, 0, *(v21 + 104 + 8 * v9), 0, 1, &time1, 0, 0, &v76) || !v76)
                {
                  goto LABEL_62;
                }

                CMSetAttachment(v76, v62, v61, 1u);
                CMSetAttachment(v76, key, v61, 1u);
                v49 = *(v21 + 24);
                *(v21 + 24) = 0;
                if (v49 >= 1)
                {
                  v50 = v49;
                  do
                  {
                    FigSimpleMutexUnlock();
                    --v50;
                  }

                  while (v50);
                }

                value_low = v45(a1, *(v21 + 96 + 4 * v9), *(v21 + 80 + 8 * v9), 3, 0, v76);
                do
                {
                  FigSimpleMutexLock();
                  v51 = *(v21 + 24) + 1;
                  *(v21 + 24) = v51;
                }

                while (v51 < v49);
                if (value_low)
                {
                  goto LABEL_62;
                }

                if (*(v21 + 8) || *(v21 + 12))
                {
                  goto LABEL_83;
                }

                v52 = *(v22 + 160);
                lhs.epoch = *(v22 + 176);
                *&lhs.value = v52;
                v69 = v73;
                CMTimeAdd(&v72, &lhs, &v69);
                v53 = *&v72.value;
                *(v22 + 176) = v72.epoch;
                *(v22 + 160) = v53;
                v54 = *(v22 + 184);
                lhs.epoch = *(v22 + 200);
                *&lhs.value = v54;
                v69 = v73;
                CMTimeSubtract(&v72, &lhs, &v69);
                v55 = *&v72.value;
                *(v22 + 200) = v72.epoch;
                *(v22 + 184) = v55;
                if (v76)
                {
                  CFRelease(v76);
                  v76 = 0;
                }

                time1.duration = time2;
                v56 = *(v22 + 184);
                v73.epoch = *(v22 + 200);
              }
            }

            value_low = 0;
          }

LABEL_62:
          a4 = v59;
          flags = v58;
          goto LABEL_63;
        }
      }
    }

    value_low = 0;
LABEL_63:
    if (v76)
    {
      CFRelease(v76);
    }

    v8 = 1;
    if (v9)
    {
      goto LABEL_87;
    }
  }

  value_low = 4294951251;
LABEL_87:
  *(v6 + 11) = 0;
LABEL_88:
  --*(v6 + 24);
  FigSimpleMutexUnlock();
  CFRelease(a4);
  CFRelease(a1);
  return value_low;
}

uint64_t fgNoteStreamEnd(const void *a1, unsigned int a2)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 8))
  {
    fgNoteStreamEnd(&v7);
    v5 = v7;
  }

  else
  {
    *(DerivedStorage + 12) = 1;
    fgEndAllTracks(a1, a2);
    v5 = 0;
  }

  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v5;
}

uint64_t fgCopyTrackProperty(uint64_t a1)
{
  FigManifoldGetFigBaseObject(a1);
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return 4294951251;
  }

  else
  {
    return 4294954512;
  }
}

void sccFormatReader_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *sccFormatReader_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CFCopyDescription(*(*DerivedStorage + 24));
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SCCFormatReader: stream<%@>", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return Mutable;
}

uint64_t sccFormatReader_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    sccFormatReader_CopyProperty_cold_2(&time1);
    return LODWORD(time1.value);
  }

  if (!a4)
  {
    sccFormatReader_CopyProperty_cold_1(&time1);
    return LODWORD(time1.value);
  }

  v8 = *DerivedStorage;
  if (CFEqual(a2, @"Duration") || CFEqual(a2, @"NominalDuration"))
  {
    v9 = *(v8 + 80);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      v22 = **&MEMORY[0x1E6960CC0];
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 80), i);
          time1 = v22;
          time2 = ValueAtIndex[1];
          CMTimeMaximum(&v22, &time1, &time2);
        }
      }
    }

    else
    {
      v22 = **&MEMORY[0x1E6960CC0];
    }

    time1 = v22;
    v14 = CMTimeCopyAsDictionary(&time1, a3);
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    LODWORD(time1.value) = *(v8 + 40);
    v17 = *MEMORY[0x1E695E480];
    v18 = kCFNumberSInt32Type;
LABEL_16:
    v14 = CFNumberCreate(v17, v18, &time1);
LABEL_12:
    v15 = v14;
LABEL_13:
    result = 0;
    *a4 = v15;
    return result;
  }

  if (FigCFEqual())
  {
    v19 = kFigFormatReaderIdentifier_SCC;
LABEL_21:
    v20 = *v19;
LABEL_22:
    v14 = CFRetain(v20);
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    v19 = MEMORY[0x1E695E4D0];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    goto LABEL_24;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    LODWORD(time1.value) = 1065353216;
    v17 = *MEMORY[0x1E695E480];
    v18 = kCFNumberFloat32Type;
    goto LABEL_16;
  }

  if (FigCFEqual())
  {

    return sccInfoCopyFigMatrixAsArray(a3, a4);
  }

  else
  {
    if (FigCFEqual())
    {
LABEL_24:
      v21 = MEMORY[0x1E695E4D0];
      goto LABEL_25;
    }

    if (FigCFEqual())
    {
      v20 = *(v8 + 72);
      if (v20)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    if (FigCFEqual())
    {
      v21 = MEMORY[0x1E695E4D0];
      if (!*(v8 + 65))
      {
        v21 = MEMORY[0x1E695E4C0];
      }

LABEL_25:
      v20 = *v21;
      if (*v21)
      {
        goto LABEL_22;
      }

LABEL_26:
      v15 = 0;
      goto LABEL_13;
    }

    return 4294954512;
  }
}

uint64_t sccInfoCopyFigMatrixAsArray(const __CFAllocator *a1, CFArrayRef *a2)
{
  v4 = 0;
  LODWORD(v5) = 0;
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  *values = 0u;
  v18 = 0u;
  v6 = *MEMORY[0x1E695E480];
  v7 = &kIdentityMatrix;
  while (2)
  {
    v5 = v5;
    v8 = 3;
    v9 = v7;
    do
    {
      v10 = CFNumberCreate(v6, kCFNumberFloat32Type, v9);
      values[v5] = v10;
      if (!v10)
      {
        sccInfoCopyFigMatrixAsArray_cold_2(&v16);
        goto LABEL_9;
      }

      ++v5;
      v9 += 4;
      --v8;
    }

    while (v8);
    ++v4;
    v7 += 12;
    if (v4 != 3)
    {
      continue;
    }

    break;
  }

  v11 = CFArrayCreate(a1, values, 9, MEMORY[0x1E695E9C0]);
  if (v11)
  {
    v12 = 0;
    *a2 = v11;
    goto LABEL_10;
  }

  sccInfoCopyFigMatrixAsArray_cold_1(&v16);
LABEL_9:
  v12 = v16;
LABEL_10:
  for (i = 0; i != 9; ++i)
  {
    v14 = values[i];
    if (v14)
    {
      CFRelease(v14);
    }
  }

  return v12;
}

uint64_t sccFormatReader_GetTrackCount(uint64_t a1, const __CFArray **a2)
{
  Count = *(*CMBaseObjectGetDerivedStorage() + 80);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  *a2 = Count;
  return 0;
}

uint64_t sccFormatReader_CopyTrackByIndex(uint64_t a1, CFIndex a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *DerivedStorage;
  v11 = *(*DerivedStorage + 10);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
  }

  else
  {
    Count = 0;
  }

  result = 4294954453;
  if ((a2 & 0x8000000000000000) == 0 && Count > a2)
  {
    if (a3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], a2);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      *a3 = ValueAtIndex;
    }

    if (a4)
    {
      *a4 = 1668047728;
    }

    if (a5)
    {
      v15 = CFArrayGetValueAtIndex(*(v10 + 10), a2);
      result = 0;
      *a5 = v15[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sccFormatReader_CopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *DerivedStorage;
  v9 = *(*DerivedStorage + 10);
  if (!v9)
  {
    return 4294954453;
  }

  Count = CFArrayGetCount(v9);
  if (Count < 1)
  {
    return 4294954453;
  }

  v11 = Count;
  v12 = 0;
  while (*(CFArrayGetValueAtIndex(*(v8 + 10), v12) + 2) != a2)
  {
    if (v11 == ++v12)
    {
      return 4294954453;
    }
  }

  if (a3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], v12);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    *a3 = ValueAtIndex;
  }

  result = 0;
  if (a4)
  {
    *a4 = 1668047728;
  }

  return result;
}

uint64_t sccFormatReader_CopyTrackByType(uint64_t a1, CFIndex a2, int a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *DerivedStorage;
  v11 = *(*DerivedStorage + 10);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
  }

  else
  {
    Count = 0;
  }

  result = 4294954453;
  if ((a2 & 0x8000000000000000) == 0 && a3 == 1668047728 && Count > a2)
  {
    if (a4)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], a2);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      *a4 = ValueAtIndex;
    }

    if (a5)
    {
      v15 = CFArrayGetValueAtIndex(*(v10 + 10), a2);
      result = 0;
      *a5 = v15[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sccInfoEndOfFileCallback(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  v19 = 0;
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), v5);
    v7 = (ValueAtIndex + 48);
    v8 = *(ValueAtIndex + 6);
    if (v8)
    {
      break;
    }

LABEL_5:
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  v9 = ValueAtIndex;
  v10 = *(v8 + 48);
  time = *(a1 + 32);
  CMTimeMultiply(&v18, &time, v10);
  *(v8 + 24) = v18;
  v11 = sccInfoSampleBufferCreate(v8, v9[2], *(a1 + 16), &v19);
  v12 = v19;
  if (!v11)
  {
    CFArrayAppendValue(v9[7], v19);
    v13 = *v8;
    time.epoch = *(v8 + 16);
    *&time.value = v13;
    v16 = *(v8 + 24);
    CMTimeAdd(&v18, &time, &v16);
    *(v9 + 1) = v18;
    if (v12)
    {
      CFRelease(v12);
      v19 = 0;
    }

    sccInfoSCCSampleReleaseAndClear(*v9, v7);
    goto LABEL_5;
  }

  v14 = v11;
  if (v19)
  {
    CFRelease(v19);
  }

  return v14;
}

uint64_t sccInfoMalformedDataCallback(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a9 + 16);
  if (*(a9 + 72) || (v12 = CFArrayCreateMutable(*(a9 + 16), 0, MEMORY[0x1E695E9C0]), (*(a9 + 72) = v12) != 0))
  {
    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v14 = Mutable;
      if (!FigCFDictionarySetInt32() && !FigCFDictionarySetInt32())
      {
        CFDictionarySetValue(v14, @"DiagnosticInformation", a2);
        CFDictionarySetValue(v14, @"ReferencedText", a3);
        FigCFDictionarySetInt32();
        v15 = CFDictionaryCreateMutable(v11, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v15)
        {
          v16 = v15;
          if (!FigCFDictionarySetCFIndex() && !FigCFDictionarySetCFIndex())
          {
            CFDictionarySetValue(v14, @"TextRange", v16);
            v17 = CFDictionaryCreateMutable(v11, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v17)
            {
              v18 = v17;
              if (!FigCFDictionarySetCFIndex() && !FigCFDictionarySetCFIndex())
              {
                CFDictionarySetValue(v14, @"TextRangeInLine", v18);
                CFArrayAppendValue(*(a9 + 72), v14);
              }

              CFRelease(v18);
            }

            else
            {
              sccInfoMalformedDataCallback_cold_1();
            }
          }

          CFRelease(v16);
        }

        else
        {
          sccInfoMalformedDataCallback_cold_2();
        }
      }

      CFRelease(v14);
    }

    else
    {
      sccInfoMalformedDataCallback_cold_3();
    }
  }

  else
  {
    sccInfoMalformedDataCallback_cold_4();
  }

  return 1;
}

uint64_t sccInfoRegisterType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA8D8 = result;
  return result;
}

double sccInfo_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void sccInfo_Finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 24) = 0;
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
      sccInfoTrackRelease(ValueAtIndex);
    }
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 72) = 0;
  }

  FigSCCParserRelease(*(a1 + 56));
  *(a1 + 56) = 0;
  v9 = *(a1 + 16);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 16) = 0;
  }
}

void sccInfoTrackRelease(const __CFAllocator **a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
      a1[2] = 0;
    }

    v4 = a1[7];
    if (v4)
    {
      CFRelease(v4);
      a1[7] = 0;
    }

    v5 = a1[8];
    if (v5)
    {
      CFRelease(v5);
      a1[8] = 0;
    }

    sccInfoSCCSampleReleaseAndClear(v2, a1 + 6);
    CFAllocatorDeallocate(v2, a1);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void sccInfoSCCSampleReleaseAndClear(CFAllocatorRef allocator, void **a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v5 = v3[7];
      if (v5)
      {
        CFRelease(v5);
        v3 = *a2;
      }

      CFAllocatorDeallocate(allocator, v3);
      *a2 = 0;
    }
  }
}

void sccTrackReader_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *sccTrackReader_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SCCTrackReader %p>", a1);
  return Mutable;
}

uint64_t sccTrackReader_CopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *DerivedStorage;
  ValueAtIndex = CFArrayGetValueAtIndex(*(*DerivedStorage + 80), DerivedStorage[1]);
  if (!a2)
  {
    sccTrackReader_CopyProperty_cold_2(&v18);
    return LODWORD(v18.value);
  }

  if (!a4)
  {
    sccTrackReader_CopyProperty_cold_1(&v18);
    return LODWORD(v18.value);
  }

  v10 = ValueAtIndex;
  if (FigCFEqual())
  {
    v11 = CFArrayCreate(a3, v10 + 2, 1, MEMORY[0x1E695E9C0]);
LABEL_10:
    v14 = v11;
    result = 0;
    *a4 = v14;
    return result;
  }

  if (FigCFEqual())
  {
    LODWORD(v18.value) = v8[10];
    v12 = *MEMORY[0x1E695E480];
    v13 = kCFNumberSInt32Type;
LABEL_7:
    v11 = CFNumberCreate(v12, v13, &v18);
    goto LABEL_10;
  }

  if (FigCFEqual())
  {
    v11 = CFRetain(*MEMORY[0x1E695E4D0]);
    goto LABEL_10;
  }

  if (FigCFEqual())
  {

    return sccInfoCopyFigMatrixAsArray(a3, a4);
  }

  else
  {
    if (FigCFEqual() || FigCFEqual())
    {
      v18 = *(v10 + 1);
      v11 = CMTimeCopyAsDictionary(&v18, a3);
      goto LABEL_10;
    }

    if (FigCFEqual())
    {
      Count = *(v10 + 7);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      v18.value = Count;
      v12 = *MEMORY[0x1E695E480];
      v13 = kCFNumberCFIndexType;
      goto LABEL_7;
    }

    if (FigCFEqual())
    {
      v17 = DerivedStorage[1];

      return sccCursorServiceCreate(v8, v17, 1, a3, a4);
    }

    else
    {
      return 4294954512;
    }
  }
}

uint64_t sccCursorServiceCreate(const void *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  FigSampleCursorServiceGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    sccCursorServiceCreate_cold_1();
  }

  else
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

    *DerivedStorage = v11;
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = a3;
    *a5 = 0;
  }

  return v9;
}

void sccCursorService_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *sccCursorService_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SCCCursorService %p>", a1);
  return Mutable;
}

uint64_t sccCursorCreate(CFArrayRef *a1, CFIndex a2, int a3, uint64_t a4, void *a5)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1[10], a2);
  v10 = 64;
  if (!a3)
  {
    v10 = 56;
  }

  v11 = *&ValueAtIndex[v10];
  if (v11 && CFArrayGetCount(v11))
  {
    FigSampleCursorGetClassID();
    v12 = CMDerivedObjectCreate();
    if (v12)
    {
      sccCursorCreate_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = CFRetain(a1);
      *(DerivedStorage + 8) = a2;
      *(DerivedStorage + 16) = a3;
      *a5 = 0;
    }
  }

  else
  {
    sccCursorCreate_cold_2(&v15);
    return v15;
  }

  return v12;
}

uint64_t sccCursorMoveToDTS(uint64_t *a1, CMTime *a2, char *a3, char *a4)
{
  v8 = *a1;
  ValueAtIndex = CFArrayGetValueAtIndex(*(*a1 + 80), a1[1]);
  v10 = ValueAtIndex;
  v11 = 64;
  if (!*(a1 + 16))
  {
    v11 = 56;
  }

  v12 = *(&ValueAtIndex->value + v11);
  if (v12)
  {
    v13 = CFArrayGetCount(*(&ValueAtIndex->value + v11)) - 1;
  }

  else
  {
    v13 = -1;
  }

  v14 = *(v8 + 40);
  time = *a2;
  CMTimeConvertScale(&time1, &time, v14, kCMTimeRoundingMethod_RoundTowardZero);
  *&a2->value = *&time1.value;
  epoch = time1.epoch;
  a2->epoch = time1.epoch;
  *&time1.value = *&a2->value;
  time1.epoch = epoch;
  time = **&MEMORY[0x1E6960CC0];
  result = CMTimeCompare(&time1, &time);
  if ((result & 0x80000000) != 0)
  {
    v13 = 0;
    v20 = 0;
    v21 = 1;
    goto LABEL_20;
  }

  time1 = v10[1];
  time = *a2;
  result = CMTimeCompare(&time1, &time);
  if (result < 1)
  {
    v21 = 0;
    v20 = 1;
    goto LABEL_20;
  }

  time1 = **&MEMORY[0x1E6960C70];
  time = time1;
  v24 = time1;
  if (v13 < 0)
  {
LABEL_15:
    v13 = 0;
    goto LABEL_19;
  }

  v17 = 0;
  while (1)
  {
    v18 = (v13 + v17) >> 1;
    v19 = CFArrayGetValueAtIndex(v12, v18);
    CMSampleBufferGetPresentationTimeStamp(&time1, v19);
    CMSampleBufferGetDuration(&time, v19);
    lhs = time1;
    v22 = time;
    CMTimeAdd(&v24, &lhs, &v22);
    lhs = *a2;
    v22 = time1;
    result = CMTimeCompare(&lhs, &v22);
    if ((result & 0x80000000) != 0)
    {
      v13 = v18 - 1;
      goto LABEL_14;
    }

    lhs = v24;
    v22 = *a2;
    result = CMTimeCompare(&lhs, &v22);
    if (result > 0)
    {
      break;
    }

    v17 = v18 + 1;
LABEL_14:
    if (v17 > v13)
    {
      goto LABEL_15;
    }
  }

  v13 = (v13 + v17) >> 1;
LABEL_19:
  v21 = 0;
  v20 = 0;
LABEL_20:
  a1[3] = v13;
  if (a3)
  {
    *a3 = v21;
  }

  if (a4)
  {
    *a4 = v20;
  }

  return result;
}

void sccCursor_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *sccCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SCCSampleCursor %p>{curSampleNumber:%lld}", a1, *(DerivedStorage + 24));
  return Mutable;
}

uint64_t sccCursor_CopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v7 = DerivedStorage;
    if (FigCFEqual())
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*v7 + 80), v7[1]);
      CurrentSample = sccCursorGetCurrentSample(v7);
      memset(&time, 0, sizeof(time));
      CMSampleBufferGetPresentationTimeStamp(&time, CurrentSample);
      memset(&v12, 0, sizeof(v12));
      lhs = ValueAtIndex[1];
      rhs = time;
      CMTimeSubtract(&v12, &lhs, &rhs);
      time = v12;
      v10 = CMTimeCopyAsDictionary(&time, a3);
      result = 0;
      *a4 = v10;
    }

    else
    {
      return 4294954512;
    }
  }

  else
  {
    sccCursor_CopyProperty_cold_1(&time);
    return LODWORD(time.value);
  }

  return result;
}

const void *sccCursorGetCurrentSample(uint64_t a1)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(*a1 + 80), *(a1 + 8));
  v3 = 64;
  if (!*(a1 + 16))
  {
    v3 = 56;
  }

  v4 = *&ValueAtIndex[v3];
  v5 = *(a1 + 24);

  return CFArrayGetValueAtIndex(v4, v5);
}

uint64_t sccCursor_Copy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    sccCursor_Copy_cold_1();
  }

  else
  {
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = DerivedStorage[1];
    *v5 = *DerivedStorage;
    v5[1] = v6;
    v7 = *v5;
    if (v7)
    {
      CFRetain(v7);
    }

    *a2 = 0;
  }

  return v4;
}

uint64_t sccCursor_CompareInDecodeOrder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 24);
  v3 = *(v1 + 24);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

uint64_t sccCursor_GetPresentationTimeStamp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CurrentSample = sccCursorGetCurrentSample(DerivedStorage);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetPresentationTimeStamp(&v6, CurrentSample);
  *a2 = v6;
  return 0;
}

uint64_t sccCursor_GetDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CurrentSample = sccCursorGetCurrentSample(DerivedStorage);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetDuration(&v6, CurrentSample);
  *a2 = v6;
  return 0;
}

uint64_t sccCursor_GetDependencyInfo(uint64_t a1, _BYTE *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

uint64_t sccCursor_CreateSampleBuffer(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 24);
  v7 = *DerivedStorage;
  ValueAtIndex = CFArrayGetValueAtIndex(*(*DerivedStorage + 80), *(DerivedStorage + 8));
  v9 = 64;
  if (!*(DerivedStorage + 16))
  {
    v9 = 56;
  }

  v10 = *&ValueAtIndex[v9];
  if (!a2)
  {
    goto LABEL_7;
  }

  v11 = ValueAtIndex;
  v12 = CMBaseObjectGetDerivedStorage();
  if (v11 != CFArrayGetValueAtIndex(*(v7 + 80), *(v12 + 8)))
  {
    sccCursor_CreateSampleBuffer_cold_1(&v17);
    return v17;
  }

  v13 = *(v12 + 24);
  if (v6 > v13)
  {
    sccCursor_CreateSampleBuffer_cold_3(&v19);
    return v19;
  }

  if (v13 != v6)
  {
    sccCursor_CreateSampleBuffer_cold_2(&v18);
    return v18;
  }

  else
  {
LABEL_7:
    v14 = CFArrayGetValueAtIndex(v10, v6);
    if (v14)
    {
      v15 = CFRetain(v14);
    }

    else
    {
      v15 = 0;
    }

    result = 0;
    *a3 = v15;
  }

  return result;
}

uint64_t sccCursor_StepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = **&MEMORY[0x1E6960C70];
  v8 = 0;
  CurrentSample = sccCursorGetCurrentSample(DerivedStorage);
  memset(&lhs, 0, sizeof(lhs));
  CMSampleBufferGetPresentationTimeStamp(&lhs, CurrentSample);
  v10 = lhs;
  v6 = *a2;
  CMTimeAdd(&v9, &lhs, &v6);
  lhs = v9;
  sccCursorMoveToDTS(DerivedStorage, &lhs, &v8 + 1, &v8);
  if (HIBYTE(v8) | v8)
  {
    return 4294954456;
  }

  else
  {
    return 0;
  }
}

uint64_t sccCursor_CopyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(CFArrayGetValueAtIndex(*(*DerivedStorage + 80), DerivedStorage[1]) + 2);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;
  return 0;
}

uint64_t sccCursor_StepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v7 = DerivedStorage[3];
  v8 = v7 + a2;
  if (a2 < 1)
  {
    v12 = v8 & ~(v8 >> 63);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(*DerivedStorage + 80), DerivedStorage[1]);
    v10 = 64;
    if (!*(v6 + 16))
    {
      v10 = 56;
    }

    Count = *&ValueAtIndex[v10];
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    v12 = Count - 1;
    if (Count > v8)
    {
      v12 = v7 + a2;
    }
  }

  v6[3] = v12;
  if (a3)
  {
    *a3 = v12 - v7;
  }

  return 0;
}

uint64_t sccTrackReader_GetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *a2 = *(CFArrayGetValueAtIndex(*(*DerivedStorage + 80), DerivedStorage[1]) + 2);
  }

  if (a3)
  {
    *a3 = 1668047728;
  }

  return 0;
}

uint64_t sccTrackReader_CopySampleCursorService(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage[1];
  v5 = *(*DerivedStorage + 16);
  v6 = *DerivedStorage;

  return sccCursorServiceCreate(v6, v4, 0, v5, a2);
}

dispatch_queue_t __FigDisplayMirroringGetAccessQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.displaymirroringobserver", 0);
  FigDisplayMirroringGetAccessQueue_sFigDisplayMirroringAccessQueue = result;
  return result;
}

uint64_t FigAudioUnitRenderPipelineCreate(uint64_t a1, const __CFDictionary *a2, Float64 *a3)
{
  if (a3)
  {
    outData.mSampleRate = 0.0;
    FigRenderPipelineGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      return v5;
    }

    mSampleRate = outData.mSampleRate;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    memset(&v33, 0, sizeof(v33));
    CMTimeMake(&v33, 1, 2);
    memset(&v32, 0, sizeof(v32));
    CMTimeMake(&v32, 1, 1);
    memset(&outData, 0, sizeof(outData));
    values = @"com.apple.coremedia.audiounitrenderpipeline";
    valuePtr = 0;
    v8 = *MEMORY[0x1E695E480];
    v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!a2)
    {
      goto LABEL_16;
    }

    Value = CFDictionaryGetValue(a2, @"FormatDescription");
    v11 = CFDictionaryGetValue(a2, @"PreparedQueueLowWaterLevel");
    if (v11)
    {
      CMTimeMakeFromDictionary(&v28, v11);
      v33 = v28;
    }

    v12 = CFDictionaryGetValue(a2, @"PreparedQueueHighWaterLevel");
    if (v12)
    {
      CMTimeMakeFromDictionary(&v28, v12);
      v32 = v28;
    }

    v13 = CFDictionaryGetValue(a2, @"AudioDeviceID");
    if (v13)
    {
      HIDWORD(valuePtr) = CFNumberGetValue(v13, kCFNumberIntType, &valuePtr + 4);
    }

    if (!Value)
    {
      goto LABEL_16;
    }

    CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    v15 = CMBufferQueueCreate(v8, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 8));
    if (v15)
    {
LABEL_18:
      if (v9)
      {
        CFRelease(v9);
      }

      if (!v15)
      {
        *a3 = mSampleRate;
      }

      return v15;
    }

    *(DerivedStorage + 16) = Value;
    CFRetain(Value);
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(DerivedStorage + 16));
    if (!StreamBasicDescription)
    {
      goto LABEL_16;
    }

    v17 = StreamBasicDescription;
    outInstance = 0;
    *&v28.value = xmmword_196E76740;
    LODWORD(v28.epoch) = 0;
    Next = AudioComponentFindNext(0, &v28);
    if (Next && !AudioComponentInstanceNew(Next, &outInstance))
    {
      v21 = outInstance;
      *(DerivedStorage + 32) = outInstance;
    }

    else
    {
      fig_log_get_emitter();
      if (FigSignalErrorAtGM())
      {
        goto LABEL_16;
      }

      v21 = *(DerivedStorage + 32);
    }

    LODWORD(valuePtr) = 40;
    if (!AudioUnitGetProperty(v21, 8u, 2u, 0, &outData, &valuePtr))
    {
      if (outData.mSampleRate == 0.0)
      {
        outData.mSampleRate = v17->mSampleRate;
      }

      if (!CMAudioFormatDescriptionCreate(v8, &outData, 0, 0, 0, 0, 0, (DerivedStorage + 24)))
      {
        LODWORD(valuePtr) = 40;
        if (!AudioUnitSetProperty(*(DerivedStorage + 32), 8u, 1u, 0, v17, 0x28u))
        {
          if (HIDWORD(valuePtr))
          {
            figAudioUnitSetOutputDevice(DerivedStorage, SHIDWORD(valuePtr), &valuePtr + 1);
          }

          CurrentOutputDevice = figAudioUnitGetCurrentOutputDevice(DerivedStorage, &valuePtr + 1);
          v23 = HIDWORD(valuePtr);
          if (CurrentOutputDevice)
          {
            v23 = 0;
          }

          *(DerivedStorage + 84) = v23;
          *(DerivedStorage + 40) = figAudioUnit_RenderProc;
          *(DerivedStorage + 48) = DerivedStorage;
          if (!AudioUnitSetProperty(*(DerivedStorage + 32), 0x17u, 1u, 0, (DerivedStorage + 40), 0x10u) && !AudioUnitInitialize(*(DerivedStorage + 32)))
          {
            LODWORD(valuePtr) = 4;
            if (!AudioUnitGetProperty(*(DerivedStorage + 32), 0xEu, 0, 0, (DerivedStorage + 120), &valuePtr))
            {
              v24 = *(DerivedStorage + 120);
              *(DerivedStorage + 144) = 0;
              *(DerivedStorage + 148) = 4 * v24;
              v25 = MEMORY[0x19A8CC720](v8, v17->mBytesPerFrame * v24, 543810113, 0);
              *(DerivedStorage + 112) = v25;
              if (v25)
              {
                if (!CMSimpleQueueCreate(v8, 32, (DerivedStorage + 136)) && !CMSimpleQueueCreate(v8, 32, (DerivedStorage + 152)))
                {
                  v26 = FigSemaphoreCreate();
                  *(DerivedStorage + 176) = v26;
                  if (v26)
                  {
                    *(DerivedStorage + 168) = 1;
                    if (!FigThreadCreate())
                    {
                      v27 = *(DerivedStorage + 8);
                      v28 = **&MEMORY[0x1E6960CC0];
                      v19 = CMBufferQueueInstallTrigger(v27, faurpSourceDataBecameReady, DerivedStorage, 7, &v28, (DerivedStorage + 128));
                      goto LABEL_17;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_16:
    fig_log_get_emitter();
    v19 = FigSignalErrorAtGM();
LABEL_17:
    v15 = v19;
    goto LABEL_18;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t figAudioUnitRenderPipelineInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      if (*(DerivedStorage + 160))
      {
        *(DerivedStorage + 168) = 0;
        FigMemoryBarrier();
        FigSemaphoreSignal();
        FigThreadJoin();
        *(v1 + 160) = 0;
      }

      if (*(v1 + 176))
      {
        FigSemaphoreDestroy();
        *(v1 + 176) = 0;
      }

      v2 = *(v1 + 32);
      if (v2)
      {
        AudioUnitUninitialize(v2);
        AudioComponentInstanceDispose(*(v1 + 32));
        *(v1 + 32) = 0;
      }

      v3 = *(v1 + 112);
      if (v3 && *(v1 + 120))
      {
        CFAllocatorDeallocate(*MEMORY[0x1E695E480], v3);
        *(v1 + 112) = 0;
        *(v1 + 120) = 0;
      }

      v4 = *(v1 + 8);
      if (v4)
      {
        v5 = *(v1 + 128);
        if (v5)
        {
          CMBufferQueueRemoveTrigger(v4, v5);
          *(v1 + 128) = 0;
          v4 = *(v1 + 8);
        }

        CFRelease(v4);
        *(v1 + 8) = 0;
      }

      v6 = *(v1 + 136);
      if (v6)
      {
        while (1)
        {
          v7 = CMSimpleQueueDequeue(v6);
          if (!v7)
          {
            break;
          }

          CFRelease(v7);
          v6 = *(v1 + 136);
        }

        FigSimpleQueueRelease();
        *(v1 + 136) = 0;
      }

      v8 = *(v1 + 152);
      if (v8)
      {
        while (1)
        {
          v9 = CMSimpleQueueDequeue(v8);
          if (!v9)
          {
            break;
          }

          CFRelease(v9);
          v8 = *(v1 + 152);
        }

        FigSimpleQueueRelease();
        *(v1 + 152) = 0;
      }

      v10 = *(v1 + 16);
      if (v10)
      {
        CFRelease(v10);
        *(v1 + 16) = 0;
      }

      v11 = *(v1 + 24);
      if (v11)
      {
        CFRelease(v11);
        *(v1 + 24) = 0;
      }

      v12 = *(v1 + 184);
      if (v12)
      {
        CFRelease(v12);
        *(v1 + 184) = 0;
      }
    }
  }

  return 0;
}

__CFString *figAudioUnitRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigAudioUnitRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t figAudioUnitRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CMClockRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v8 = DerivedStorage, *DerivedStorage))
  {
LABEL_3:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    result = *(v8 + 1);
    goto LABEL_10;
  }

  if (CFEqual(@"Timebase", a2))
  {
    result = *(v8 + 23);
LABEL_10:
    *a4 = result;
    if (result)
    {
      CFRetain(result);
      return 0;
    }

    return result;
  }

  if (!CFEqual(@"PreferredClock", a2))
  {
    if (CFEqual(@"IsRunning", a2))
    {
      v11 = MEMORY[0x1E695E4D0];
      if (!v8[80])
      {
        v11 = MEMORY[0x1E695E4C0];
      }

      v12 = CFRetain(*v11);
    }

    else
    {
      if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
      {
        memset(&v16, 0, sizeof(v16));
        CMBufferQueueGetEndPresentationTimeStamp(&v16, *(v8 + 1));
      }

      else
      {
        if (!CFEqual(@"PipelineLatency", a2))
        {
          return 4294954446;
        }

        memset(&v16, 0, sizeof(v16));
        StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(v8 + 3));
        if (!StreamBasicDescription)
        {
          goto LABEL_3;
        }

        CMTimeMake(&v16, *(v8 + 30), StreamBasicDescription->mSampleRate);
      }

      v15 = v16;
      v12 = CMTimeCopyAsDictionary(&v15, a3);
    }

    v13 = v12;
    result = 0;
    *a4 = v13;
    return result;
  }

  v10 = *(v8 + 21);
  if (v10)
  {

    return CMAudioDeviceClockCreateFromAudioDeviceID(a3, v10, a4);
  }

  else
  {

    return CMAudioDeviceClockCreate(a3, 0, a4);
  }
}

uint64_t figAudioUnitRenderPipelineSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_3;
  }

  v6 = DerivedStorage;
  if (*DerivedStorage)
  {
    goto LABEL_3;
  }

  if (!CFEqual(@"Timebase", a2))
  {
    return 4294954446;
  }

  if (a3 && (TypeID = CMTimebaseGetTypeID(), TypeID != CFGetTypeID(a3)))
  {
LABEL_3:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v9 = *(v6 + 23);
    if (v9)
    {
      CFRelease(v9);
    }

    *(v6 + 23) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    return 0;
  }
}

uint64_t figAudioUnitRenderPipelineSetRateAndAnchorTime(float a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 == 1.0)
  {
    v6 = CMBaseObjectGetDerivedStorage();
    mSampleRate = CMAudioFormatDescriptionGetStreamBasicDescription(*(v6 + 16))->mSampleRate;
    memset(&immediateSourceTime, 0, sizeof(immediateSourceTime));
    CMTimebaseGetTimeWithTimeScale(&immediateSourceTime, *(v6 + 184), mSampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v8 = AudioOutputUnitStart(*(v6 + 32));
    if (v8)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    CMTimebaseSetRate(*(v6 + 184), a1);
    *(v6 + 80) = 1;
    return v8;
  }

  if (a1 != 0.0)
  {
    v13 = DerivedStorage;
    if (*(DerivedStorage + 80))
    {
      v8 = AudioOutputUnitStop(*(DerivedStorage + 32));
      *(v13 + 80) = 0;
    }

    else
    {
      v8 = 0;
    }

    v14 = *(v13 + 184);
    v17 = a1;
    goto LABEL_17;
  }

  v21 = *a3;
  v9 = *(a3 + 12);
  v22 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = CMBaseObjectGetDerivedStorage();
  v12 = v11;
  if (*(v11 + 80))
  {
    v8 = AudioOutputUnitStop(*(v11 + 32));
    *(v12 + 80) = 0;
  }

  else
  {
    v8 = 0;
  }

  v14 = *(v12 + 184);
  if ((v9 & 0x1D) != 1)
  {
    v17 = 0.0;
LABEL_17:
    CMTimebaseSetRate(v14, v17);
    return v8;
  }

  v15 = CMTimebaseCopySource(v14);
  v16 = *(v12 + 184);
  CMSyncGetTime(&immediateSourceTime, v15);
  timebaseTime.value = v21;
  timebaseTime.timescale = v22;
  timebaseTime.flags = v9;
  timebaseTime.epoch = v10;
  CMTimebaseSetRateAndAnchorTime(v16, 0.0, &timebaseTime, &immediateSourceTime);
  if (v15)
  {
    CFRelease(v15);
  }

  return v8;
}

uint64_t figAudioUnitSetOutputDevice(uint64_t a1, int a2, _DWORD *a3)
{
  inData = a2;
  result = AudioUnitSetProperty(*(a1 + 32), 0x7D0u, 0, 0, &inData, 4u);
  if (a3)
  {
    if (!result)
    {
      *a3 = inData;
    }
  }

  return result;
}

uint64_t figAudioUnitGetCurrentOutputDevice(uint64_t a1, _DWORD *a2)
{
  outData = 0;
  ioDataSize = 4;
  result = AudioUnitGetProperty(*(a1 + 32), 0x7D0u, 0, 0, &outData, &ioDataSize);
  if (a2)
  {
    if (!result)
    {
      *a2 = outData;
    }
  }

  return result;
}

uint64_t figAudioUnit_RenderProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v9 = *(a1 + 112);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 16));
  if (StreamBasicDescription && *(a1 + 120) >= a5)
  {
    v11 = StreamBasicDescription;
    v12 = 0;
    if (a5)
    {
      while (1)
      {
        while (1)
        {
          v13 = *(a1 + 88);
          if (v13)
          {
            NumSamples = *(a1 + 104);
            goto LABEL_12;
          }

          v14 = CMSimpleQueueDequeue(*(a1 + 136));
          *(a1 + 88) = v14;
          if (!v14)
          {
            goto LABEL_19;
          }

          *(a1 + 96) = 0;
          *(a1 + 104) = 0;
          if (!CMSampleBufferGetDataBuffer(v14))
          {
            break;
          }

          NumSamples = CMSampleBufferGetNumSamples(*(a1 + 88));
          *(a1 + 104) = NumSamples;
          *(a1 + 144) -= NumSamples;
          if (NumSamples)
          {
            goto LABEL_10;
          }
        }

        NumSamples = *(a1 + 104);
        if (NumSamples)
        {
LABEL_10:
          v13 = *(a1 + 88);
LABEL_12:
          if (a5 - v12 >= NumSamples - *(a1 + 96))
          {
            v16 = NumSamples - *(a1 + 96);
          }

          else
          {
            v16 = a5 - v12;
          }

          DataBuffer = CMSampleBufferGetDataBuffer(v13);
          CMBlockBufferCopyDataBytes(DataBuffer, *(a1 + 96) * v11->mBytesPerFrame, v16 * v11->mBytesPerFrame, v9);
          mBytesPerFrame = v11->mBytesPerFrame;
          v19 = *(a1 + 104);
          v20 = *(a1 + 96) + v16;
          *(a1 + 96) = v20;
          if (v20 == v19)
          {
            CMSimpleQueueEnqueue(*(a1 + 152), *(a1 + 88));
            *(a1 + 88) = 0;
            if (CMSimpleQueueGetCount(*(a1 + 136)) <= 0)
            {
              FigSemaphoreSignal();
            }
          }

          v9 += v16 * mBytesPerFrame;
          v12 += v16;
          if (v12 >= a5)
          {
            break;
          }
        }
      }
    }

LABEL_19:
    *(a6 + 16) = *(a1 + 112);
    *(a6 + 12) = v11->mBytesPerFrame * v12;
  }

  return 0;
}

uint64_t faurpTransferThread(uint64_t a1)
{
  if (CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 16)))
  {
    while (1)
    {
      FigSemaphoreWaitRelative();
      if (!*(a1 + 168))
      {
        break;
      }

      v2 = *(a1 + 144);
      v3 = *(a1 + 148);
      while (v2 < v3)
      {
        v4 = CMBufferQueueDequeueAndRetain(*(a1 + 8));
        if (!v4)
        {
          break;
        }

        v5 = v4;
        CMSimpleQueueEnqueue(*(a1 + 136), v4);
        NumSamples = CMSampleBufferGetNumSamples(v5);
        v3 = *(a1 + 148);
        v2 = *(a1 + 144) + NumSamples;
        *(a1 + 144) = v2;
      }

      while (1)
      {
        v7 = CMSimpleQueueDequeue(*(a1 + 152));
        if (!v7)
        {
          break;
        }

        CFRelease(v7);
      }
    }
  }

  return 0;
}

_BYTE *faurpSourceDataBecameReady(_BYTE *result)
{
  if (!*result)
  {
    return FigSemaphoreSignal();
  }

  return result;
}

uint64_t FigVTTMetadataCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTMetadataCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTMetadata_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTMetadata_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"metadata: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figVTTMetadata_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTMetadata_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTMetadata_copyNodeDocumentSerialization(uint64_t a1, CFStringRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
    v4 = *(DerivedStorage + 8);
    if (v4 && (v5 = CFRetain(v4)) != 0)
    {
      v6 = v5;
      *a2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@\n", v5);
      CFRelease(v6);
      return 0;
    }

    else
    {
      figVTTMetadata_copyNodeDocumentSerialization_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    figVTTMetadata_copyNodeDocumentSerialization_cold_2(&v9);
    return v9;
  }
}

uint64_t figTextContainerRegisterFigTextContainer()
{
  result = _CFRuntimeRegisterClass();
  sFigTextContainerID = result;
  return result;
}

uint64_t FigTextContainerCreateWithCFData(const __CFAllocator *a1, CFDataRef theData, CFStringEncoding a3, uint64_t a4, uint64_t *a5)
{
  if (theData)
  {
    if (a5)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);

      return figTextContainerCreateWithCFStringOrDataPtr_internal(a1, 0, BytePtr, Length, a3, a5);
    }

    else
    {
      FigTextContainerCreateWithCFData_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    FigTextContainerCreateWithCFData_cold_2(&v13);
    return v13;
  }
}

uint64_t figTextContainerCreateWithCFStringOrDataPtr_internal(const __CFAllocator *a1, const __CFString *a2, UInt8 *bytes, CFIndex numBytes, CFStringEncoding encoding, uint64_t *a6)
{
  if (a2)
  {
    Copy = CFStringCreateCopy(a1, a2);
  }

  else
  {
    Copy = CFStringCreateWithBytes(a1, bytes, numBytes, encoding, 1u);
  }

  v8 = Copy;
  if (Copy)
  {
    MEMORY[0x19A8D3660](&FigTextContainerGetTypeID_sRegisterFigTextContainerOnce, figTextContainerRegisterFigTextContainer);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v10 = Instance;
      *(Instance + 16) = v8;
      Length = CFStringGetLength(v8);
      result = 0;
      *(v10 + 24) = Length;
      *a6 = v10;
    }

    else
    {
      figTextContainerCreateWithCFStringOrDataPtr_internal_cold_1(v8, &v13);
      return v13;
    }
  }

  else
  {
    figTextContainerCreateWithCFStringOrDataPtr_internal_cold_2(&v14);
    return v14;
  }

  return result;
}

uint64_t FigTextContainerGetLength(uint64_t a1, void *a2)
{
  if (a1)
  {
    result = 0;
    *a2 = *(a1 + 24);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigTextContainerGetLength_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigTextContainerGetCharacterAtIndex(uint64_t a1, CFRange buffer)
{
  if (a1)
  {
    if (buffer.location < 0 || *(a1 + 24) <= buffer.location)
    {
      FigTextContainerGetCharacterAtIndex_cold_1(&v4);
      return v4;
    }

    else
    {
      length = buffer.length;
      buffer.length = 1;
      CFStringGetCharacters(*(a1 + 16), buffer, length);
      return 0;
    }
  }

  else
  {
    FigTextContainerGetCharacterAtIndex_cold_2(&v5);
    return v5;
  }
}

uint64_t FigTextContainerGetCharactersForRange(uint64_t a1, CFRange a2, UniChar *a3)
{
  if (a1)
  {
    if (a2.location < 0 || (v3 = *(a1 + 24), a2.location >= v3))
    {
      FigTextContainerGetCharactersForRange_cold_1(&v5);
      return v5;
    }

    else if (a2.location + a2.length > v3)
    {
      FigTextContainerGetCharactersForRange_cold_2(&v6);
      return v6;
    }

    else
    {
      CFStringGetCharacters(*(a1 + 16), a2, a3);
      return 0;
    }
  }

  else
  {
    FigTextContainerGetCharactersForRange_cold_3(&v7);
    return v7;
  }
}

uint64_t figTextContainer_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void figTextContainer_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t FigContentKeyCompoundBossCreate(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    FigContentKeyBossGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
LABEL_18:
      v17 = v5;
      goto LABEL_24;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = FigSimpleMutexCreate();
    *DerivedStorage = v7;
    if (v7)
    {
      v8 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      *(DerivedStorage + 24) = Mutable;
      if (Mutable)
      {
        v10 = CFDictionaryCreateMutable(v8, 0, 0, MEMORY[0x1E695E9E8]);
        *(DerivedStorage + 40) = v10;
        if (v10)
        {
          *(DerivedStorage + 48) = FigIsItOKToLogURLs();
          if (a2)
          {
            FigCFDictionaryGetBooleanIfPresent();
          }

          v11 = ckcb_createLoggingIdentifier_sNextLoggingIdentifier++;
          v12 = CFStringCreateWithFormat(v8, 0, @"%s/%llu", "CKCB", v11);
          if (!v12)
          {
            FigUserCrashWithMessage();
          }

          *(DerivedStorage + 56) = v12;
          v5 = FigContentKeyBossCreate(v8, a2, (DerivedStorage + 16));
          if (!v5)
          {
            v19 = 0;
            v13 = *(DerivedStorage + 16);
            v14 = *(*(CMBaseObjectGetVTable() + 16) + 136);
            if (v14)
            {
              v14(v13, &v19);
            }

            if (dword_1EAF16FE0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (dword_1EAF16FE0)
              {
                v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            v17 = 0;
            *a3 = cf;
            return v17;
          }

          goto LABEL_18;
        }

        FigContentKeyCompoundBossCreate_cold_1(v21);
      }

      else
      {
        FigContentKeyCompoundBossCreate_cold_2(v21);
      }
    }

    else
    {
      FigContentKeyCompoundBossCreate_cold_3(v21);
    }
  }

  else
  {
    FigContentKeyCompoundBossCreate_cold_4(v21);
  }

  v17 = v21[0];
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t ckcb_processRequest(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, const void *a5, const void *a6, void *a7, uint64_t a8, NSObject *a9, uint64_t *a10)
{
  v70 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v52 = 0;
  v53[0] = 1;
  v53[1] = ckcb_requestDidSucceed;
  v53[2] = ckcb_requestDidFail;
  v53[3] = 0;
  v51 = 0;
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_processRequest_cold_1(context);
    goto LABEL_65;
  }

  if (dword_1EAF16FE0)
  {
    LODWORD(v58) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    ckcb_processRequest_cold_4(context);
    goto LABEL_65;
  }

  if (!a10)
  {
    ckcb_processRequest_cold_3(context);
    goto LABEL_65;
  }

  NextRequestID = ckbutil_getNextRequestID();
  v18 = *MEMORY[0x1E695E480];
  *context = xmmword_1E7484000;
  if (ckcbr_getTypeID_once != -1)
  {
    dispatch_once_f(&ckcbr_getTypeID_once, context, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    if (ckcb_processRequest_cold_2(context))
    {
      goto LABEL_29;
    }

LABEL_65:
    v46 = context[0];
    FigSimpleMutexUnlock();
    return v46;
  }

  v20 = a2[2];
  if (v20)
  {
    v20 = CFRetain(v20);
  }

  *(Instance + 32) = v20;
  *(Instance + 40) = CFRetain(a2);
  *(Instance + 48) = a3;
  *(Instance + 56) = a4;
  if (a8)
  {
    *(Instance + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  if (a9)
  {
    dispatch_retain(a9);
  }

  *(Instance + 104) = a9;
  __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24((Instance + 64), a7);
  if (a5)
  {
    v21 = CFRetain(a5);
  }

  else
  {
    v21 = 0;
  }

  *(Instance + 16) = v21;
  if (a6)
  {
    v22 = CFRetain(a6);
  }

  else
  {
    v22 = 0;
  }

  *(Instance + 24) = v22;
  *(Instance + 112) = NextRequestID;
  v23 = CFStringCreateWithFormat(v18, 0, @"%s/%llu", "CKCBR", NextRequestID);
  if (!v23)
  {
    FigUserCrashWithMessage();
  }

  *(Instance + 120) = v23;
  *type = 0;
  v58 = 0;
  cf = 0;
  v24 = ckbutil_keyGroupID_copyLoggingDescription(*(Instance + 48));
  ckbutil_contentKeySpecifier_copyLoggingArguments(*(Instance + 32), &v58, type, &cf);
  if (dword_1EAF16FE0)
  {
    v55 = 0;
    v54 = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_29:
  if (FigContentKeySpecifierGetKeySystem(a2[2]) != 1)
  {
    v26 = DerivedStorage[4];
    if (v26)
    {
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (v27)
      {
        v27(v26, &v51);
      }

      if (dword_1EAF16FE0)
      {
        LODWORD(v58) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v29 = v58;
        if (os_log_type_enabled(v28, type[0]))
        {
          v30 = v29;
        }

        else
        {
          v30 = v29 & 0xFFFFFFFE;
        }

        if (v30)
        {
          v31 = DerivedStorage[7];
          v59 = 136316162;
          v60 = "ckcb_processRequest";
          v61 = 2114;
          v62 = v31;
          v63 = 2048;
          v64 = NextRequestID;
          v65 = 2082;
          v66 = "The client-managed boss";
          v67 = 2114;
          v68 = v51;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v43 = DerivedStorage[4];
      GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
      v45 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v45)
      {
        v41 = v45(v43, a2, a3, a4, a5, a6, v53, a1, GlobalNetworkBufferingQueue, &v52);
        if (!v41)
        {
          v42 = DerivedStorage[5];
LABEL_55:
          v41 = ckcb_associateChildBossRequestIDWithRequestWithBossMutex(a1, v42, v52, Instance);
          if (!v41)
          {
            v46 = 0;
            *a10 = NextRequestID;
            goto LABEL_58;
          }

          goto LABEL_66;
        }

        goto LABEL_66;
      }

LABEL_57:
      v46 = 4294954514;
      goto LABEL_58;
    }
  }

  v32 = DerivedStorage[2];
  v33 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v33)
  {
    v33(v32, &v51);
  }

  if (dword_1EAF16FE0)
  {
    LODWORD(v58) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v35 = v58;
    if (os_log_type_enabled(v34, type[0]))
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 & 0xFFFFFFFE;
    }

    if (v36)
    {
      v37 = DerivedStorage[7];
      v59 = 136316162;
      v60 = "ckcb_processRequest";
      v61 = 2114;
      v62 = v37;
      v63 = 2048;
      v64 = NextRequestID;
      v65 = 2082;
      v66 = "The default boss";
      v67 = 2114;
      v68 = v51;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v38 = DerivedStorage[2];
  v39 = FigThreadGetGlobalNetworkBufferingQueue();
  v40 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v40)
  {
    goto LABEL_57;
  }

  v41 = v40(v38, a2, a3, a4, a5, a6, v53, a1, v39, &v52);
  if (!v41)
  {
    v42 = DerivedStorage[3];
    goto LABEL_55;
  }

LABEL_66:
  v46 = v41;
LABEL_58:
  FigSimpleMutexUnlock();
  if (Instance)
  {
    CFRelease(Instance);
  }

  return v46;
}

uint64_t ckcb_destroyGroup(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_destroyGroup_cold_1(v11);
    v7 = v11[0];
  }

  else
  {
    if (dword_1EAF16FE0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(DerivedStorage + 16);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v6)
    {
      v7 = v6(v5, a2);
    }

    else
    {
      v7 = 4294954514;
    }

    v8 = *(DerivedStorage + 32);
    if (v8)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v9)
      {
        v7 = v9(v8, a2);
      }

      else
      {
        v7 = 4294954514;
      }
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t ckcb_setClientManagedBoss(uint64_t a1, const void *a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_setClientManagedBoss_cold_1(cf);
LABEL_31:
    v16 = LODWORD(cf[0]);
    goto LABEL_28;
  }

  if (dword_1EAF16FE0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    ckcb_setClientManagedBoss_cold_3(cf);
    goto LABEL_31;
  }

  if (qword_1ED4CA8F8 != -1)
  {
    ckcb_setClientManagedBoss_cold_2();
  }

  v5 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = a2;
  CFRetain(a2);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 32);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v7)
  {
    v7(v6, &v20);
  }

  if (dword_1EAF16FE0)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = *(DerivedStorage + 16);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v10)
  {
    v10(v9, 4);
  }

  if (_MergedGlobals_47)
  {
    v11 = *(DerivedStorage + 32);
    if (v11)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v12)
      {
        v12(v11, 10);
      }
    }
  }

  cf[0] = 0;
  v13 = *(DerivedStorage + 16);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v15 = v14(v13, @"kCKBP_CMCDHeaderVendor", *MEMORY[0x1E695E480], cf);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = cf[0];
      if (cf[0])
      {
        v17 = *(DerivedStorage + 32);
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v18)
        {
          v18(v17, @"kCKBP_CMCDHeaderVendor", v16);
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 4294954514;
  }

LABEL_28:
  FigSimpleMutexUnlock();
  return v16;
}

uint64_t ckcb_copyAuthorizationToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_copyAuthorizationToken_cold_1(v13);
LABEL_19:
    v10 = v13[0];
    goto LABEL_15;
  }

  if (dword_1EAF16FE0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    ckcb_copyAuthorizationToken_cold_3(v13);
    goto LABEL_19;
  }

  if (!a3)
  {
    ckcb_copyAuthorizationToken_cold_2(v13);
    goto LABEL_19;
  }

  v7 = *(DerivedStorage + 32);
  if (v7)
  {
    v8 = *(CMBaseObjectGetVTable() + 16);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v11 = v9[13];
    if (v11 && *v9 >= 2uLL)
    {
      v10 = v11(v7, a2, a3);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t ckcb_requestDidSucceed(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, const void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_requestDidSucceed_cold_1();
  }

  else
  {
    if (*(DerivedStorage + 16) == a2)
    {
      Value = CFDictionaryGetValue(*(DerivedStorage + 24), a4);
      if (!Value)
      {
        goto LABEL_8;
      }

      ckcb_sendStatusCallbackForRequestsWithBossMutex(a1, Value, a5, a6, 0);
      v13 = *(DerivedStorage + 24);
    }

    else
    {
      v12 = CFDictionaryGetValue(*(DerivedStorage + 40), a4);
      if (!v12)
      {
        goto LABEL_8;
      }

      ckcb_sendStatusCallbackForRequestsWithBossMutex(a1, v12, a5, a6, 0);
      v13 = *(DerivedStorage + 40);
    }

    CFDictionaryRemoveValue(v13, a4);
  }

LABEL_8:

  return FigSimpleMutexUnlock();
}

uint64_t ckcb_requestDidFail(const void *a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, const void *a6)
{
  v35[28] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_requestDidFail_cold_1();
    return FigSimpleMutexUnlock();
  }

  if (*(DerivedStorage + 16) == a2)
  {
    theArray = CFDictionaryGetValue(*(DerivedStorage + 24), a4);
    if (theArray)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 32) && (FigCFErrorIsEqualToOSStatus(a5, @"CoreMediaErrorDomain", -17297) || FigCFErrorIsEqualToOSStatus(a5, @"CoreMediaErrorDomain", -17383)))
      {
        v29 = a4;
        v30 = DerivedStorage;
        v32 = CMBaseObjectGetDerivedStorage();
        v34 = 0;
        v35[0] = 1;
        v35[1] = ckcb_requestDidSucceed;
        v35[2] = ckcb_requestDidFail;
        v35[3] = 0;
        v33 = 0;
        if (CFArrayGetCount(theArray) >= 1)
        {
          v14 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
            if (!ValueAtIndex)
            {
              break;
            }

            v16 = ValueAtIndex;
            v17 = *(v32 + 32);
            v18 = *(*(CMBaseObjectGetVTable() + 16) + 136);
            if (v18)
            {
              v18(v17, &v33);
            }

            if (dword_1EAF16FE0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v20 = *(v32 + 32);
            v21 = v16[5];
            v22 = v16[6];
            v23 = *(v16 + 56);
            v25 = v16[2];
            v24 = v16[3];
            GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
            v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v27)
            {
              if (!v27(v20, v21, v22, v23, v25, v24, v35, a1, GlobalNetworkBufferingQueue, &v34) && !ckcb_associateChildBossRequestIDWithRequestWithBossMutex(a1, *(v32 + 40), v34, v16) && ++v14 < CFArrayGetCount(theArray))
              {
                continue;
              }
            }

            goto LABEL_20;
          }

          ckcb_requestDidFail_cold_2();
        }

LABEL_20:
        a4 = v29;
        DerivedStorage = v30;
      }

      else
      {
        ckcb_sendStatusCallbackForRequestsWithBossMutex(a1, theArray, 0, a6, a5);
      }

      v13 = *(DerivedStorage + 24);
      goto LABEL_22;
    }
  }

  else
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 40), a4);
    if (Value)
    {
      ckcb_sendStatusCallbackForRequestsWithBossMutex(a1, Value, 0, a6, a5);
      v13 = *(DerivedStorage + 40);
LABEL_22:
      CFDictionaryRemoveValue(v13, a4);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t ckcb_associateChildBossRequestIDWithRequestWithBossMutex(uint64_t a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a2, a3);
  if (Value)
  {
LABEL_8:
    CFArrayAppendValue(Value, a4);
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Value = Mutable;
    CFDictionarySetValue(a2, a3, Mutable);
    v12 = 0;
    v13 = 0;
    cf = 0;
    ckbutil_contentKeySpecifier_copyLoggingArguments(*(a4[5] + 16), &v13, &v12, &cf);
    if (dword_1EAF16FE0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(Value);
    goto LABEL_8;
  }

  ckcb_associateChildBossRequestIDWithRequestWithBossMutex_cold_1(v14);
  return v14[0];
}

CFIndex ckcb_sendStatusCallbackForRequestsWithBossMutex(const void *a1, CFArrayRef theArray, const void *a3, const void *a4, const void *a5)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
      if (!ValueAtIndex)
      {
        break;
      }

      v13 = ValueAtIndex;
      v14 = malloc_type_calloc(1uLL, 0x28uLL, 0x6004075FDF98BuLL);
      if (v14)
      {
        v15 = v14;
        if (a1)
        {
          v16 = CFRetain(a1);
        }

        else
        {
          v16 = 0;
        }

        *v15 = v16;
        v15[1] = CFRetain(v13);
        if (a5)
        {
          v17 = CFRetain(a5);
        }

        else
        {
          v17 = 0;
        }

        v15[2] = v17;
        if (a3)
        {
          v18 = CFRetain(a3);
        }

        else
        {
          v18 = 0;
        }

        v15[3] = v18;
        if (a4)
        {
          v19 = CFRetain(a4);
        }

        else
        {
          v19 = 0;
        }

        v15[4] = v19;
        dispatch_async_f(v13[13], v15, ckcb_sendStatusCallbackOnQueueWithBossMutex);
      }

      else
      {
        ckcb_sendStatusCallbackForRequestsWithBossMutex_cold_1();
      }

      ++v11;
      result = CFArrayGetCount(theArray);
      if (v11 >= result)
      {
        return result;
      }
    }

    return ckcb_sendStatusCallbackForRequestsWithBossMutex_cold_2();
  }

  return result;
}

void ckcb_sendStatusCallbackOnQueueWithBossMutex(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_sendStatusCallbackOnQueueWithBossMutex_cold_1();
    v2 = 0;
  }

  else
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v2)
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (v3 && (v5 = v4[10]) != 0)
    {
      if (dword_1EAF16FE0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 = *(a1 + 8);
        v3 = *(a1 + 16);
        v5 = v4[10];
      }

      v8 = *a1;
      v9 = v4[4];
      v10 = v4[14];
    }

    else
    {
      v5 = v4[9];
      if (!v5)
      {
        goto LABEL_13;
      }

      if (dword_1EAF16FE0)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 = *(a1 + 8);
        v5 = v4[9];
      }

      v8 = *a1;
      v9 = v4[4];
      v10 = v4[14];
      v3 = *(a1 + 24);
    }

    v5(v2, v8, v9, v10, v3, *(a1 + 32));
  }

LABEL_13:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void ckcbr_finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[15];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[13];
  if (v8)
  {

    dispatch_release(v8);
  }
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_1_70()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_4_49()
{

  return _os_log_send_and_compose_impl();
}

void TextParserBase::TextParserBase(TextParserBase *this, int a2, int (*a3)(uint64_t, uint64_t *, uint64_t *, __CFData *, __CFData *, void *), void *a4)
{
  *this = &unk_1F0AE32E0;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = a2;
  *(this + 3) = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
}

void TextParserBase::~TextParserBase(TextParserBase *this)
{
  *this = &unk_1F0AE32E0;
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }
}

void TextRendererBase::TextRendererBase(TextRendererBase *this)
{
  *this = &unk_1F0AE3320;
  *(this + 8) = 1;
  *(this + 2) = 0;
}

void TextRendererBase::SetProperties(TextRendererBase *this, CFDictionaryRef theDict)
{
  Count = CFDictionaryGetCount(theDict);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    v7 = malloc_type_calloc(v5, 8uLL, 0xC0040B8AA526DuLL);
    v8 = v7;
    if (v6 && v7)
    {
      CFDictionaryGetKeysAndValues(theDict, v6, v7);
      v9 = v6;
      v10 = v8;
      do
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        (*(*this + 48))(this, v11, v13);
        --v5;
      }

      while (v5);
    }

    free(v6);

    free(v8);
  }
}

uint64_t TextRendererBase::SetProperty(TextRendererBase *this, CFTypeRef cf1, const __CFBoolean *a3)
{
  if (!CFEqual(cf1, @"DoDisplay"))
  {
    return 4294965101;
  }

  Value = CFBooleanGetValue(a3);
  result = 0;
  *(this + 8) = Value != 0;
  return result;
}

uint64_t FigCSSSimpleTokenCreate(uint64_t a1, int a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigCSSBaseTokenCreate(a1, a2, 0, &cf);
  if (v4)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

  return v4;
}

uint64_t FigCSSCodePointTokenCreate(const __CFAllocator *a1, int a2, int a3, CFTypeRef *a4)
{
  cf = 0;
  valuePtr = a3;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(v8, @"code_point", v9);
      v11 = FigCSSBaseTokenCreate(a1, a2, v8, &cf);
      if (!v11)
      {
        *a4 = cf;
        cf = 0;
      }

      CFRelease(v10);
    }

    else
    {
      FigCSSCodePointTokenCreate_cold_1(&v15);
      v11 = v15;
    }

    CFRelease(v8);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    FigCSSCodePointTokenCreate_cold_2(&v15);
    return v15;
  }

  return v11;
}

uint64_t FigCSSNumberTokenCreate(const __CFAllocator *a1, uint64_t a2, unsigned int a3, CFTypeRef *a4, double a5)
{
  cf = 0;
  if (!a2)
  {
    FigCSSNumberTokenCreate_cold_3(&v9);
    return v9;
  }

  if (a3 >= 2)
  {
    FigCSSNumberTokenCreate_cold_2(&v9);
    return v9;
  }

  if (!a4)
  {
    FigCSSNumberTokenCreate_cold_1(&v9);
    return v9;
  }

  v6 = figCSSNumericTokenCreate_internal(a1, 22, a2, a3, 0, &cf, a5);
  if (v6)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
  }

  return v6;
}

uint64_t figCSSNumericTokenCreate_internal(CFAllocatorRef allocator, int a2, uint64_t a3, unsigned int a4, const void *a5, CFTypeRef *a6, double a7)
{
  valuePtr = a7;
  cf = 0;
  if (!a3)
  {
    figCSSNumericTokenCreate_internal_cold_7(&v22);
    return v22;
  }

  if (a4 >= 2)
  {
    figCSSNumericTokenCreate_internal_cold_6(&v22);
    return v22;
  }

  if (!a6)
  {
    figCSSNumericTokenCreate_internal_cold_5(&v22);
    return v22;
  }

  if (a2 == 23 && !a5)
  {
    figCSSNumericTokenCreate_internal_cold_4(&v22);
    return v22;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    figCSSNumericTokenCreate_internal_cold_3(&v22);
    return v22;
  }

  v13 = Mutable;
  v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (v14)
  {
    v15 = v14;
    v16 = @"integer";
    if (a4)
    {
      v16 = 0;
    }

    if (a4 == 1)
    {
      v17 = @"number";
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      CFDictionarySetValue(v13, @"number_value", v14);
      CFDictionarySetValue(v13, @"number_type", v17);
      if (a2 == 23)
      {
        CFDictionarySetValue(v13, @"dimension_units", a5);
      }

      v18 = FigCSSBaseTokenCreate(allocator, a2, v13, &cf);
      if (!v18)
      {
        *a6 = cf;
        cf = 0;
      }

      CFRelease(v15);
      CFRelease(v17);
      goto LABEL_19;
    }

    figCSSNumericTokenCreate_internal_cold_1(v14, &v22);
  }

  else
  {
    figCSSNumericTokenCreate_internal_cold_2(&v22);
  }

  v18 = v22;
LABEL_19:
  CFRelease(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t FigCSSDimensionTokenCreate(const __CFAllocator *a1, uint64_t a2, unsigned int a3, const void *a4, CFTypeRef *a5, double a6)
{
  cf = 0;
  v7 = figCSSNumericTokenCreate_internal(a1, 23, a2, a3, a4, &cf, a6);
  if (v7)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a5 = cf;
  }

  return v7;
}

uint64_t FigCSSPercentageTokenCreate(const __CFAllocator *a1, uint64_t a2, unsigned int a3, CFTypeRef *a4, double a5)
{
  cf = 0;
  v6 = figCSSNumericTokenCreate_internal(a1, 24, a2, a3, 0, &cf, a5);
  if (v6)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
  }

  return v6;
}

uint64_t FigCSSStringValueTokenCreate(const __CFAllocator *a1, int a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a3)
  {
    FigCSSStringValueTokenCreate_cold_3(&v13);
    return v13;
  }

  if (!a4)
  {
    FigCSSStringValueTokenCreate_cold_2(&v13);
    return v13;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigCSSStringValueTokenCreate_cold_1(&v13);
    return v13;
  }

  v9 = Mutable;
  CFDictionarySetValue(Mutable, @"value", a3);
  v10 = FigCSSBaseTokenCreate(a1, a2, v9, &cf);
  if (!v10)
  {
    *a4 = cf;
    cf = 0;
  }

  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t FigCSSHashTokenCreate(const __CFAllocator *a1, unsigned int a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (a2 >= 2)
  {
    FigCSSHashTokenCreate_cold_5(&v15);
    return v15;
  }

  if (!a3)
  {
    FigCSSHashTokenCreate_cold_4(&v15);
    return v15;
  }

  if (!a4)
  {
    FigCSSHashTokenCreate_cold_3(&v15);
    return v15;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigCSSHashTokenCreate_cold_2(&v15);
    return v15;
  }

  v9 = Mutable;
  v10 = @"unrestricted";
  if (a2)
  {
    v10 = 0;
  }

  if (a2 == 1)
  {
    v11 = @"id";
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    CFDictionarySetValue(Mutable, @"hash_type", v11);
    CFDictionarySetValue(v9, @"value", a3);
    v12 = FigCSSBaseTokenCreate(a1, 11, v9, &cf);
    if (!v12)
    {
      *a4 = cf;
      cf = 0;
    }

    CFRelease(v11);
  }

  else
  {
    FigCSSHashTokenCreate_cold_1(&v15);
    v12 = v15;
  }

  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t FigCSSTokenCreateSerializationString(const __CFAllocator *a1, CFTypeRef cf, CFStringRef *a3)
{
  v24 = 0;
  theDict = 0;
  if (!cf)
  {
    FigCSSTokenCreateSerializationString_cold_3(&valuePtr);
    return LODWORD(valuePtr);
  }

  v6 = CFGetTypeID(cf);
  if (v6 == FigCSSTokenGetTypeID())
  {
    if (a3)
    {
      TokenType = FigCSSTokenGetTokenType(cf, &v24);
      if (TokenType || (TokenType = FigCSSTokenCopyAttributes(cf, &theDict), TokenType))
      {
        v17 = TokenType;
      }

      else
      {
        switch(v24)
        {
          case 0:
            v14 = "INVALID";
            goto LABEL_54;
          case 1:
            v14 = "EOF";
            goto LABEL_54;
          case 2:
            v14 = " ";
            goto LABEL_54;
          case 3:
            Value = CFDictionaryGetValue(theDict, @"value");
            v9 = CFStringCreateWithFormat(a1, 0, @"%@", Value);
            goto LABEL_58;
          case 4:
            v14 = "TODO{<bad-string-token>}";
            goto LABEL_54;
          case 5:
            LODWORD(valuePtr) = 0;
            v16 = CFDictionaryGetValue(theDict, @"code_point");
            CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
            chars = LOWORD(valuePtr);
            v9 = CFStringCreateWithCharacters(a1, &chars, 1);
            goto LABEL_58;
          case 6:
            v14 = "TODO{<unicode-range-token>}";
            goto LABEL_54;
          case 7:
          case 8:
          case 11:
          case 32:
            v8 = CFDictionaryGetValue(theDict, @"value");
            switch(v24)
            {
              case 8:
                v9 = CFStringCreateWithFormat(a1, 0, @"@%@", v8);
                goto LABEL_58;
              case 32:
                v9 = CFStringCreateWithFormat(a1, 0, @"%@("), v8;
                goto LABEL_58;
              case 11:
                v9 = CFStringCreateWithFormat(a1, 0, @"#%@", v8);
                goto LABEL_58;
            }

            v19 = v8;
            goto LABEL_34;
          case 9:
            v14 = "TODO{<url-token>}";
            goto LABEL_54;
          case 10:
            v14 = "TODO{<bad-url-token>}";
            goto LABEL_54;
          case 12:
            v14 = ",";
            goto LABEL_54;
          case 13:
            v14 = ":";
            goto LABEL_54;
          case 14:
            v14 = ";";
            goto LABEL_54;
          case 15:
            v14 = "||";
            goto LABEL_54;
          case 16:
            v14 = "(";
            goto LABEL_54;
          case 17:
            v14 = ")";
            goto LABEL_54;
          case 18:
            v14 = "{";
            goto LABEL_54;
          case 19:
            v14 = "}";
            goto LABEL_54;
          case 20:
            v14 = "[";
            goto LABEL_54;
          case 21:
            v14 = "]";
            goto LABEL_54;
          case 22:
          case 23:
          case 24:
            v10 = CFDictionaryGetValue(theDict, @"number_value");
            v11 = CFDictionaryGetValue(theDict, @"number_type");
            if (v11 && CFEqual(v11, @"integer"))
            {
              valuePtr = -1.0;
              CFNumberGetValue(v10, kCFNumberDoubleType, &valuePtr);
              v12 = 0;
              v13 = valuePtr;
            }

            else
            {
              v13 = 0;
              v12 = 1;
            }

            if (v24 == 23)
            {
              v15 = CFDictionaryGetValue(theDict, @"dimension_units");
              if (v12)
              {
                v9 = CFStringCreateWithFormat(a1, 0, @"%@%@", v10, v15);
              }

              else
              {
                v9 = CFStringCreateWithFormat(a1, 0, @"%lld%@", v13, v15);
              }
            }

            else if (v24 == 24)
            {
              if (v12)
              {
                v9 = CFStringCreateWithFormat(a1, 0, @"%@%%", v10);
              }

              else
              {
                v9 = CFStringCreateWithFormat(a1, 0, @"%lld%%", v13);
              }
            }

            else if (v12)
            {
              v19 = v10;
LABEL_34:
              v9 = CFStringCreateWithFormat(a1, 0, @"%@", v19);
            }

            else
            {
              v9 = CFStringCreateWithFormat(a1, 0, @"%lld", v13);
            }

LABEL_58:
            v17 = 0;
            *a3 = v9;
            break;
          case 25:
            v14 = "-->";
            goto LABEL_54;
          case 26:
            v14 = "<!--";
            goto LABEL_54;
          case 27:
            v14 = "^=";
            goto LABEL_54;
          case 28:
            v14 = "$=";
            goto LABEL_54;
          case 29:
            v14 = "*=";
            goto LABEL_54;
          case 30:
            v14 = "~=";
            goto LABEL_54;
          case 31:
            v14 = "|=";
            goto LABEL_54;
          default:
            v14 = "{UNKNOWN}";
LABEL_54:
            v9 = CFStringCreateWithCString(a1, v14, 0x8000100u);
            goto LABEL_58;
        }
      }

      goto LABEL_59;
    }

    FigCSSTokenCreateSerializationString_cold_2(&valuePtr);
  }

  else
  {
    FigCSSTokenCreateSerializationString_cold_1(&valuePtr);
  }

  v17 = LODWORD(valuePtr);
LABEL_59:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v17;
}

uint64_t FigRecalcSumIndex(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      off_1EE59EBD8[0] = *(result + 8);
    }
  }

  return result;
}

uint64_t FigCaptionRendererPaintOnCaptionSetCurrentTime(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(a2 + 16);
    *(DerivedStorage + 8) = *a2;
    *(DerivedStorage + 24) = v7;
    if (!*(DerivedStorage + 64))
    {
      cf.value = 0;
      FigCaptionRendererCaptionProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0 && (v10 = *(v9 + 32)) != 0)
      {
        v10(a1, &cf);
        value = cf.value;
        v12 = *(DerivedStorage + 64);
        *(DerivedStorage + 64) = cf.value;
        if (value)
        {
          CFRetain(value);
        }
      }

      else
      {
        v12 = *(DerivedStorage + 64);
        *(DerivedStorage + 64) = 0;
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    cf = *(DerivedStorage + 32);
    Seconds = CMTimeGetSeconds(&cf);
    *&v79 = FigBytePumpGetFigBaseObject(v14);
    *(&v79 + 1) = v15;
    FigCaptionRendererIntervalProtocolGetProtocolID();
    v16 = CMBaseObjectGetProtocolVTable();
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = *(v17 + 8);
        if (v18)
        {
          v18(a1, &v79);
        }
      }
    }

    v19 = *(DerivedStorage + 8);
    cf.epoch = *(DerivedStorage + 24);
    *&cf.value = v19;
    v20 = CMTimeGetSeconds(&cf);
    if (v20 == *&v79)
    {
      *(DerivedStorage + 56) = 1;
      if (a3)
      {
        v81 = 0;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v21 = CMBaseObjectGetProtocolVTable();
        if (v21 && (v22 = *(v21 + 16)) != 0 && (v23 = *(v22 + 16)) != 0)
        {
          v23(a1, &v81);
          v24 = v81;
        }

        else
        {
          v24 = 0;
        }

        v59 = *(MEMORY[0x1E695F050] + 16);
        v79 = *MEMORY[0x1E695F050];
        v80 = v59;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v60 = CMBaseObjectGetProtocolVTable();
        if (v60)
        {
          v62 = *(v60 + 16);
          v60 += 16;
          v61 = v62;
          if (v62)
          {
            v63 = *(v61 + 104);
            if (v63)
            {
              v60 = v63(v24, &v79);
            }
          }
        }

        v78[0] = FigBytePumpGetFigBaseObject(v60);
        v78[1] = v64;
        FigCaptionRendererIntervalProtocolGetProtocolID();
        v65 = CMBaseObjectGetProtocolVTable();
        if (v65)
        {
          v66 = *(v65 + 16);
          if (v66)
          {
            v67 = *(v66 + 8);
            if (v67)
            {
              v67(a1, v78);
            }
          }
        }

        v68 = *(DerivedStorage + 8);
        cf.epoch = *(DerivedStorage + 24);
        *&cf.value = v68;
        v69 = CMTimeGetSeconds(&cf);
        v70 = *v78;
        v76 = v79;
        v77 = v80;
        *(DerivedStorage + 72) = 0x2100000021;
        v71 = v81;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v72 = CMBaseObjectGetProtocolVTable();
        if (v72)
        {
          v73 = *(v72 + 16);
          if (v73)
          {
            v74 = *(v73 + 312);
            if (v74)
            {
              LODWORD(cf.value) = 0;
              HIDWORD(cf.value) = ((Seconds - (v69 - v70)) * 1000.0);
              *&cf.timescale = v76;
              v83 = v77;
              v74(v71, &cf);
            }
          }
        }

        return 0;
      }
    }

    else
    {
      *(DerivedStorage + 56) = 0;
    }

    v25 = *(DerivedStorage + 72);
    v26 = __OFSUB__(v25, 33);
    v25 -= 33;
    *(DerivedStorage + 72) = v25;
    if ((v25 < 0) ^ v26 | (v25 == 0))
    {
      *(DerivedStorage + 72) = *(DerivedStorage + 76);
      v27 = CMBaseObjectGetDerivedStorage();
      FigBaseObject = FigBytePumpGetFigBaseObject(v27);
      v30 = v29;
      *&v79 = FigBaseObject;
      *(&v79 + 1) = v29;
      FigCaptionRendererIntervalProtocolGetProtocolID();
      v31 = CMBaseObjectGetProtocolVTable();
      if (v31)
      {
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = *(v32 + 8);
          if (v33)
          {
            v33(a1, &v79);
            v30 = *(&v79 + 1);
          }
        }
      }

      if (v30 <= 0.0)
      {
        FigCaptionRendererPaintOnCaptionSetCurrentTime_cold_1();
      }

      else
      {
        v34 = *(v27 + 64);
        Length = CFAttributedStringGetLength(v34);
        v36 = *(v27 + 8);
        cf.epoch = *(v27 + 24);
        *&cf.value = v36;
        v37 = CMTimeGetSeconds(&cf);
        cf = *(v27 + 32);
        v38 = CMTimeGetSeconds(&cf);
        v39 = v37 - *&v79;
        v40 = 1.0;
        if (v38 > 0.0 && Length >= 1)
        {
          v41 = v39 * 1000.0 / 33.0;
          v42 = v41 + v41;
          v43 = v41 < 0.0;
          v44 = 0.0;
          if (!v43)
          {
            v44 = v42;
          }

          v45 = v44 / Length;
          v40 = 1.0;
          if (v45 <= 1.0)
          {
            v40 = v45;
          }
        }

        if ((v38 - v39) * 1000.0 >= 66.0)
        {
          v46 = v40;
        }

        else
        {
          v46 = 1.0;
        }

        LODWORD(v47) = llround(v46 * Length);
        if (v47 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v47;
        }

        if (Length >= v47)
        {
          v48.length = v47;
        }

        else
        {
          v48.length = Length;
        }

        v48.location = 0;
        v49 = CFAttributedStringCreateWithSubstring(*MEMORY[0x1E695E480], v34, v48);
        FigCaptionRendererCaptionProtocolGetProtocolID();
        v50 = CMBaseObjectGetProtocolVTable();
        if (v50)
        {
          v51 = *(v50 + 16);
          if (v51)
          {
            v52 = *(v51 + 24);
            if (v52)
            {
              v52(a1, v49);
            }
          }
        }

        if (v49)
        {
          CFRelease(v49);
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v53 = CMBaseObjectGetProtocolVTable();
        if (v53)
        {
          v54 = *(v53 + 16);
          if (v54)
          {
            v55 = *(v54 + 232);
            if (v55)
            {
              v55(a1, 1);
            }
          }
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v56 = CMBaseObjectGetProtocolVTable();
        if (v56)
        {
          v57 = *(v56 + 16);
          if (v57)
          {
            v58 = *(v57 + 216);
            if (v58)
            {
              v58(a1, 1);
            }
          }
        }
      }
    }

    return 0;
  }

  FigCaptionRendererPaintOnCaptionSetCurrentTime_cold_2(&cf);
  return LODWORD(cf.value);
}