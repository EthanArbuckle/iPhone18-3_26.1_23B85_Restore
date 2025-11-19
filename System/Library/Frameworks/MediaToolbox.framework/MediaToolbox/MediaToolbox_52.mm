uint64_t figTTMLDocumentWriterWritingDirectionSpanBuilder_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v1);
}

uint64_t figTTMLDocumentWriterWritingDirectionSpanBuilder_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  start.epoch = *(DerivedStorage + 24);
  *&start.value = v5;
  v7 = *(DerivedStorage + 32);
  CMTimeRangeFromTimeToTime(&v9, &start, &v7);
  return processPropertyAtDepthLevel(a1, a2, &v9, 0);
}

uint64_t figTTMLDocumentWriterWritingDirectionSpanBuilder_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

uint64_t processPropertyAtDepthLevel(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex a4)
{
  v30[0] = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(a2);
  }

  else
  {
    v7 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v7);
  if (Length < 1)
  {
    v19 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v26 = *MEMORY[0x1E6961548];
    v10 = *MEMORY[0x1E695E480];
    v24 = a2;
    v25 = *MEMORY[0x1E695E480];
    while (1)
    {
      v28 = 0;
      v29 = 0;
      if (v30[0])
      {
        CFRelease(v30[0]);
        v30[0] = 0;
      }

      v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v11)
      {
        v19 = 4294954514;
        goto LABEL_37;
      }

      v12 = v11(a2, v8, v26, v10, v30, &v28);
      if (v12)
      {
        break;
      }

      if (v30[0])
      {
        v31 = 0;
        Mutable = FigCaptionDynamicStyleCreateMutable();
        if (Mutable)
        {
          v19 = Mutable;
        }

        else
        {
          KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
          if (KeyFrameCount < 1)
          {
            v19 = 0;
          }

          else
          {
            v15 = KeyFrameCount;
            v16 = v9;
            v17 = 0;
            while (1)
            {
              v30[1] = 0;
              if (v31)
              {
                CFRelease(v31);
                v31 = 0;
              }

              v18 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
              if (v18)
              {
                break;
              }

              if (CFArrayGetCount(v31) > a4)
              {
                CFArrayGetValueAtIndex(v31, a4);
              }

              v18 = FigCaptionDynamicStyleAddKeyFrameValue();
              if (v18)
              {
                break;
              }

              if (v15 == ++v17)
              {
                v19 = 0;
                goto LABEL_23;
              }
            }

            v19 = v18;
LABEL_23:
            v9 = v16;
            a2 = v24;
          }

          v10 = v25;
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (v19)
        {
          goto LABEL_37;
        }
      }

      FigTTMLDocumentWriterGetCMBaseObject(a1);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v21 = FigCaptionDataCopySubrange();
      if (!v21)
      {
        v21 = FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, 0);
      }

      v19 = v21;
      if (v21)
      {
        goto LABEL_37;
      }

      v8 += v29;
      if (v8 >= Length)
      {
        v19 = 0;
        goto LABEL_37;
      }
    }

    v19 = v12;
  }

LABEL_37:
  if (v30[0])
  {
    CFRelease(v30[0]);
  }

  return v19;
}

void OUTLINED_FUNCTION_0_139()
{
  v3 = *v0;

  CFDictionaryApplyFunction(v1, writeAttribute, v3);
}

uint64_t FigSampleBufferConsumerRemoteXPC_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigSampleBufferConsumerRemoteXPC_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E748FBC8;
  block[4] = &v3;
  if (FigSampleBufferConsumerRemoteXPC_ensureClientEstablished_sFigSampleBufferConsumerRemoteClientSetupOnce != -1)
  {
    dispatch_once(&FigSampleBufferConsumerRemoteXPC_ensureClientEstablished_sFigSampleBufferConsumerRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t remoteXPCSampleBufferConsumer_CreateInternal(uint64_t a1, void *a2)
{
  FigSampleBufferConsumerGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    return v4;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = a1;
  DerivedStorage[2] = FigSimpleMutexCreate();
  v6 = FigDispatchQueueCreateWithPriority();
  DerivedStorage[3] = v6;
  if (!v6)
  {
    remoteXPCSampleBufferConsumer_CreateInternal_cold_1(&v9);
    return v9;
  }

  v4 = FigXPCRemoteClientAssociateObject();
  if (v4)
  {
    return v4;
  }

  v7 = FigXPCRemoteClientCopyMemoryOrigin();
  if (!v7)
  {
    *a2 = 0;
  }

  return v7;
}

_BYTE *remoteXPCSampleBufferConsumerClient_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 1;
  return result;
}

void FigSampleBufferConsumerRemoteXPC_handleLowWaterTriggerCallbackAsync(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    v3(*(DerivedStorage + 64));
  }

  FigSimpleMutexUnlock();
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t remoteXPCSampleBufferConsumer_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteXPCSampleBufferConsumer_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_121(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a10 = 0;

  return remoteXPCSampleBufferConsumer_GetObjectID(a1, &a10);
}

uint64_t OUTLINED_FUNCTION_6_78()
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t FigNeroidCreateRemote(uint64_t a1, CFTypeRef *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (a2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    cf[0] = MEMORY[0x1E69E9820];
    cf[1] = 3221225472;
    cf[2] = __neroidRemote_ensureClientEstablished_block_invoke;
    cf[3] = &unk_1E7486A28;
    cf[4] = &v10;
    if (neroidRemote_ensureClientEstablished_sFigNeroidRemoteClientSetupOnce != -1)
    {
      dispatch_once(&neroidRemote_ensureClientEstablished_sFigNeroidRemoteClientSetupOnce, cf);
    }

    v4 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
    if (!v4)
    {
      v5 = FigXPCCreateBasicMessage();
      if (v5)
      {
        v4 = v5;
      }

      else
      {
        v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v4)
        {
          uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
          cf[0] = 0;
          FigNeroidGetClassID();
          v4 = CMDerivedObjectCreate();
          if (v4)
          {
            if (cf[0])
            {
              CFRelease(cf[0]);
            }
          }

          else
          {
            *(CMBaseObjectGetDerivedStorage() + 8) = uint64;
            FigXPCRemoteClientAssociateObject();
            *a2 = cf[0];
          }
        }
      }
    }
  }

  else
  {
    FigNeroidCreateRemote_cold_1(cf);
    v4 = LODWORD(cf[0]);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  if (v4)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v4;
}

void __neroidRemote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"Neroid_ServerConnectionDied");
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCopyPrimaryConnection();
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 32) + 8) + 24) = FigXPCConnectionSetCustomServerTimeoutPerConnection();
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t neroidRemote_deadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 1) = 1;
  return result;
}

__CFString *neroidRemote_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroidRemote %p>", a1);
  return Mutable;
}

uint64_t neroidRemote_CopyProperty(uint64_t a1)
{
  v3 = 0;
  ObjectID = neroidRemote_getObjectID(a1, &v3);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdCopyPropertyMessage();
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return ObjectID;
}

uint64_t neroidRemote_SetProperty(uint64_t a1, const void *a2, void *a3)
{
  v31 = 0;
  ObjectID = neroidRemote_getObjectID(a1, &v31);
  if (!ObjectID)
  {
    if (CFEqual(a2, @"DisplayLayer"))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = objc_autoreleasePoolPush();
      if (*(DerivedStorage + 16) == a3)
      {
        ObjectID = 0;
LABEL_29:
        objc_autoreleasePoolPop(v8);
        goto LABEL_30;
      }

      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:1];
      v9 = *(DerivedStorage + 16);
      *(DerivedStorage + 16) = a3;
      [MEMORY[0x1E6979518] commit];
      v10 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      v11 = objc_autoreleasePoolPush();
      if (!*(v10 + 16))
      {
        neroidRemote_removeHostLayer();
        ObjectID = 0;
        goto LABEL_13;
      }

      valuePtr = 0;
      FigBytePumpGetFigBaseObject(a1);
      v13 = v12;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v14(v13, 0x1F0B47B98, *MEMORY[0x1E695E4D0]);
      if (v15)
      {
LABEL_9:
        ObjectID = v15;
LABEL_13:
        DictionaryRepresentation = 0;
LABEL_25:
        objc_autoreleasePoolPop(v11);
        if (cf)
        {
          CFRelease(cf);
        }

        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }

        goto LABEL_29;
      }

      FigBytePumpGetFigBaseObject(a1);
      v18 = v17;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v15 = v19(v18, 0x1F0B47B78, 0, &cf);
        if (v15)
        {
          goto LABEL_9;
        }

        if (!cf || (v20 = CFGetTypeID(cf), v20 != CFNumberGetTypeID()))
        {
          neroidRemote_SetProperty_cold_1(&v34);
          DictionaryRepresentation = 0;
          ObjectID = v34;
          goto LABEL_25;
        }

        if (!CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr))
        {
          DictionaryRepresentation = 0;
          ObjectID = 4294950606;
          goto LABEL_25;
        }

        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        [MEMORY[0x1E6979518] setDisableActions:1];
        v21 = *(v10 + 24);
        if (v21)
        {
          [v21 removeFromSuperlayer];
        }

        else
        {
          v23 = [MEMORY[0x1E69793A8] layer];
          *(v10 + 24) = v23;
          if (!v23)
          {
            [MEMORY[0x1E6979518] commit];
            DictionaryRepresentation = 0;
            ObjectID = 4294950605;
            goto LABEL_25;
          }

          v24 = v23;
        }

        [*(v10 + 24) setName:@"FigNeroidRemoteLayerHost"];
        [*(v10 + 24) setContextId:valuePtr];
        [*(v10 + 16) addSublayer:*(v10 + 24)];
        v25 = *(v10 + 24);
        [*(v10 + 16) bounds];
        [v25 setFrame:?];
        [*(v10 + 16) bounds];
        v35.width = v26;
        v35.height = v27;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v35);
        FigBytePumpGetFigBaseObject(a1);
        v29 = v28;
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v30)
        {
          ObjectID = v30(v29, 0x1F0B31798, DictionaryRepresentation);
          if (!ObjectID)
          {
            [MEMORY[0x1E6979518] commit];
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_23:
        DictionaryRepresentation = 0;
      }

      ObjectID = 4294954514;
      goto LABEL_25;
    }

    ObjectID = FigXPCSendStdSetPropertyMessage();
  }

LABEL_30:
  FigXPCRemoteClientKillServerOnTimeout();
  return ObjectID;
}

void neroidRemote_removeHostLayer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = objc_autoreleasePoolPush();
  if (*(DerivedStorage + 24))
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    [*(DerivedStorage + 24) removeFromSuperlayer];

    *(DerivedStorage + 24) = 0;
    [MEMORY[0x1E6979518] commit];
  }

  objc_autoreleasePoolPop(v1);
}

uint64_t neroidRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    neroidRemote_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      neroidRemote_getObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t neroidRemote_Start(uint64_t a1)
{
  v7[20] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  ObjectID = neroidRemote_getObjectID(a1, v7);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    v5 = FigXPCCreateBasicMessage();
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t MTAudioProcessingTapXPCServerCopyTapForID()
{
  v0 = FigXPCServerRetainNeighborObjectFromID();
  if (v0)
  {
    return v0;
  }

  MTAudioProcessingTapXPCServerCopyTapForID_cold_1(&v3);
  return v3;
}

uint64_t MTAudioProcessingTapServerStart()
{
  if (!FigServer_IsMediaplaybackd())
  {
    FigServer_IsAirplayd();
  }

  return FigXPCServerStart();
}

uint64_t aptXPCServer_NotificationFilter(int a1, int a2, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"MTAudioProcessingTapNotification_InitializeTapCompleted"))
  {
    return 1;
  }

  result = CFEqual(cf1, @"MTAudioProcessingTapNotification_CreateAQTapCompleted");
  if (result)
  {
    return 1;
  }

  return result;
}

void aptapS_BaseClass_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  for (i = *(DerivedStorage + 24); i; i = *(DerivedStorage + 24))
  {
    v4 = i[1];
    *(DerivedStorage + 24) = *i;
    if (v4)
    {
      aptapS_DisposeSubmixTap(a1, i);
    }

    free(i);
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    os_release(v5);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *aptapS_BaseClass_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<MTAudioProcessingTapServer %p> Retain count %d Created with flags = 0x%x", a1, v4, *(DerivedStorage + 16));
  return Mutable;
}

void aptapS_DisposeSubmixTap(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  v3 = *(a2 + 24);
  if (v3)
  {
    CFDictionaryFromPointer = MTAudioProcessingTapCreateCFDictionaryFromPointer(@"SubmixTapServerPointer", v3);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (CFDictionaryFromPointer)
    {
      CFRelease(CFDictionaryFromPointer);
    }

    ATSubmixTapDispose();
  }

  *(a2 + 24) = 0;
}

void aptapS_Class_InitializeTap(uint64_t a1, uint64_t a2)
{
  v3 = (CMBaseObjectGetDerivedStorage() + 24);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (v3[1] == a2)
    {
      v4 = v3[3];
      v5 = @"SubmixTapServerPointer";
      goto LABEL_6;
    }
  }

  v5 = @"AQTapServerPointer";
  v4 = a2;
LABEL_6:
  CFDictionaryFromPointer = MTAudioProcessingTapCreateCFDictionaryFromPointer(v5, v4);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (CFDictionaryFromPointer)
  {

    CFRelease(CFDictionaryFromPointer);
  }
}

uint64_t aptapS_Class_CreateAQTap(uint64_t a1, int a2, int a3, uint64_t a4, void *a5)
{
  CMBaseObjectGetDerivedStorage();
  v8 = AudioQueueProcessingTapNew_CMServer();
  if (!v8)
  {
    CFDictionaryFromPointerAndTrackID = MTAudioProcessingTapCreateCFDictionaryFromPointerAndTrackID(@"AQTapServerPointer", 0, @"TrackID", a2, @"AudioStreamToken", a3);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    *a5 = 0;
    if (CFDictionaryFromPointerAndTrackID)
    {
      CFRelease(CFDictionaryFromPointerAndTrackID);
    }
  }

  return v8;
}

void aptapS_Class_DisposeAQTap(int a1, AudioQueueProcessingTapRef inAQTap)
{
  AudioQueueProcessingTapDispose(inAQTap);
  CFDictionaryFromPointer = MTAudioProcessingTapCreateCFDictionaryFromPointer(@"AQTapServerPointer", inAQTap);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (CFDictionaryFromPointer)
  {

    CFRelease(CFDictionaryFromPointer);
  }
}

uint64_t aptapS_Class_SetTimelineInfo(int a1, int a2, AudioQueueRef inAQ, float a4, float a5, uint64_t a6, uint64_t a7)
{
  inData = a6;
  v9 = a4;
  v10 = a7;
  v11 = a5;
  return AudioQueueSetProperty(inAQ, 0x636D7469u, &inData, 0x18u);
}

void aptapS_Class_RemoveAQFromSubmixTap(uint64_t a1, uint64_t a2)
{
  v4 = CMBaseObjectGetDerivedStorage() + 24;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*(v4 + 8) == a2)
    {
      ATAssignToSubmixTap();
      v5 = *(v4 + 16) - 1;
      *(v4 + 16) = v5;
      if (!v5 && FigAtomicCompareAndSwapPtr())
      {

        aptapS_DisposeSubmixTap(a1, v4);
      }

      return;
    }
  }
}

uint64_t aptapS_Class_SetSubmixTimelineInfo(float a1, float a2, uint64_t a3, uint64_t a4, _BYTE **a5, void *a6, int a7)
{
  v13 = CMBaseObjectGetDerivedStorage() + 24;
  do
  {
    v13 = *v13;
    if (!v13)
    {
      return 0;
    }
  }

  while (*(v13 + 8) != a4);
  if (!a7 && *(v13 + 16) != 1)
  {
    return 0;
  }

  v14 = *(v13 + 32);
  if (v14 == 0.0)
  {
    value = *a5;
    v17 = *a6;
  }

  else
  {
    v19 = *a5;
    CMTimeConvertScale(&v20, &v19, v14, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = v20.value;
    v16 = *(v13 + 32);
    v19 = *a6;
    CMTimeConvertScale(&v20, &v19, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v17 = v20.value;
  }

  v20.value = value;
  *&v20.timescale = a1;
  *&v20.flags = v17;
  *(&v20.epoch + 1) = a2;
  return ATSubmixTapSetTimelineInfo();
}

void figCaptionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 48);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 48) = 0;
  }
}

__CFString *figCaptionCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *MEMORY[0x1E695E480];
  v6 = *DerivedStorage;
  v7 = *(DerivedStorage + 32);
  *&range.start.epoch = *(DerivedStorage + 16);
  *&range.duration.timescale = v7;
  *&range.start.value = v6;
  v8 = CMTimeRangeCopyDescription(v5, &range);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<no timing>";
  }

  v11 = *(DerivedStorage + 48);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v12)
  {
    v13 = v12(v11);
  }

  else
  {
    v13 = &stru_1F0B1AFB8;
  }

  CFStringAppendFormat(Mutable, 0, @"\tCaption: %p timing:%@ text<%@>", a1, v10, v13);
  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

uint64_t figCaptionCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  v17 = 0;
  if (!a2)
  {
    figCaptionCopyProperty_cold_3(&v16);
    return LODWORD(v16.start.value);
  }

  if (!a4)
  {
    figCaptionCopyProperty_cold_2(&v16);
    return LODWORD(v16.start.value);
  }

  if (CFEqual(a2, @"TimeRange"))
  {
    memset(&v16, 0, sizeof(v16));
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v8(&v16, a1);
    }

    else
    {
      v9 = *(MEMORY[0x1E6960C98] + 16);
      *&v16.start.value = *MEMORY[0x1E6960C98];
      *&v16.start.epoch = v9;
      *&v16.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    }

    v15 = v16;
    v10 = CMTimeRangeCopyAsDictionary(&v15, a3);
    if (!v10)
    {
      figCaptionCopyProperty_cold_1(&v16, &v15);
      return LODWORD(v15.start.value);
    }

    MutableCopy = 0;
  }

  else if (CFEqual(a2, @"CaptionData"))
  {
    MutableCopy = FigCaptionDataCreateMutableCopy();
    v10 = v17;
    if (MutableCopy)
    {
      return MutableCopy;
    }
  }

  else
  {
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      MutableCopy = v13(CMBaseObject, a2, a3, &v17);
      v10 = v17;
    }

    else
    {
      v10 = 0;
      MutableCopy = 4294954514;
    }
  }

  *a4 = v10;
  return MutableCopy;
}

uint64_t figCaptionSetProperty(const void *a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figCaptionSetProperty_cold_3(&v16);
    return LODWORD(v16.start.value);
  }

  if (!a3)
  {
    figCaptionSetProperty_cold_2(&v16);
    return LODWORD(v16.start.value);
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"TimeRange"))
  {
    memset(&v15, 0, sizeof(v15));
    CMTimeRangeMakeFromDictionary(&v15, a3);
    v14 = v15;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v16 = v14;
      return v8(a1, &v16);
    }

    return 4294954514;
  }

  if (CFEqual(a2, @"CaptionData"))
  {
    v16.start.value = 0;
    v10 = CFGetTypeID(a3);
    if (v10 == FigCaptionDataGetTypeID())
    {
      CFGetAllocator(a1);
      result = FigCaptionDataCreateMutableCopy();
      if (!result)
      {
        v11 = *(v7 + 48);
        if (v11)
        {
          CFRelease(v11);
        }

        result = 0;
        *(v7 + 48) = v16.start.value;
      }
    }

    else
    {
      figCaptionSetProperty_cold_1(&v15);
      return LODWORD(v15.start.value);
    }
  }

  else
  {
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v13)
    {
      return 4294954514;
    }

    return v13(CMBaseObject, a2, a3);
  }

  return result;
}

__n128 figCaptionGetTimeRange@<Q0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  *a1 = *DerivedStorage;
  *(a1 + 16) = v3;
  result = *(DerivedStorage + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t figCaptionSetTimeRange(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 3) & 0x1D) == 1)
  {
    if ((*(a2 + 9) & 0x1D) == 1)
    {
      v4 = 0;
      v5 = *a2;
      v6 = a2[2];
      DerivedStorage[1] = a2[1];
      DerivedStorage[2] = v6;
      *DerivedStorage = v5;
    }

    else
    {
      figCaptionSetTimeRange_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    figCaptionSetTimeRange_cold_1(&v8);
    return v8;
  }

  return v4;
}

uint64_t RegisterFigSampleBufferAudioRendererType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleBufferAudioRendererGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleBufferAudioRendererGetClassID_sRegisterFigSampleBufferAudioRendererTypeOnce, RegisterFigSampleBufferAudioRendererType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigPWDKeyExchangeReceiverGetClassID()
{
  if (FigPWDKeyExchangeReceiverGetClassID_onceToken != -1)
  {
    FigPWDKeyExchangeReceiverGetClassID_cold_1();
  }

  return sFigPWDKeyExchangeReceiverClassID;
}

uint64_t RegisterFigPWDKeyExchangeReceiverBaseTypeOnce()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPWDKeyExchangeReceiverGetTypeID()
{
  if (FigPWDKeyExchangeReceiverGetClassID_onceToken != -1)
  {
    FigPWDKeyExchangeReceiverGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t acif_invalidate()
{
  v2 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*DerivedStorage, &DerivedStorage, acif_invalidateDispatch);
  return v2;
}

void acif_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 32) = 0;
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t acif_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      if (CFEqual(@"AssetCacheInspectorProperty_PlayableOffline", a2))
      {
        v6 = FigCFURLIsLocalResource();
        result = 0;
        if (v6)
        {
          v8 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v8 = MEMORY[0x1E695E4C0];
        }

        *a4 = *v8;
      }

      else
      {
        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      acif_copyProperty_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    acif_copyProperty_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t acif_copyCompletelyCachedMediaSelectionOptionsInGroup(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFArrayRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2 && (v6 = CFGetTypeID(a2), v6 == CFDictionaryGetTypeID()))
  {
    if (a4)
    {
      if (FigCFURLIsLocalResource())
      {
        Value = CFDictionaryGetValue(a2, @"MediaSelectionGroupOptions");
        if (Value)
        {
          v8 = CFRetain(Value);
        }

        else
        {
          v8 = 0;
        }

        result = 0;
        *a4 = v8;
      }

      else
      {
        v9 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
        *a4 = v9;
        if (v9)
        {
          return 0;
        }

        else
        {
          acif_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_1(&v11);
          return v11;
        }
      }
    }

    else
    {
      acif_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    acif_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_3(&v13);
    return v13;
  }

  return result;
}

uint64_t FigSampleGeneratorRemoteCreateForFormatReader(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  if (a2)
  {

    return figSampleGeneratorRemoteCreateCommon(a1, a2, 0, 0, a3, a4, a5);
  }

  else
  {
    v9 = v5;
    v10 = v6;
    FigSampleGeneratorRemoteCreateForFormatReader_cold_1(&v8);
    return v8;
  }
}

uint64_t FigSampleGeneratorRemoteCreateForTrackReader(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  if (a2)
  {

    return figSampleGeneratorRemoteCreateCommon(a1, 0, a2, 0, a3, a4, a5);
  }

  else
  {
    v9 = v5;
    v10 = v6;
    FigSampleGeneratorRemoteCreateForTrackReader_cold_1(&v8);
    return v8;
  }
}

uint64_t FigSampleGeneratorRemoteCreateForTrackReaderProducingByteReferenceSampleBuffers(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  if (a2)
  {

    return figSampleGeneratorRemoteCreateCommon(a1, 0, a2, 1, a3, a4, a5);
  }

  else
  {
    v9 = v5;
    v10 = v6;
    FigSampleGeneratorRemoteCreateForTrackReaderProducingByteReferenceSampleBuffers_cold_1(&v8);
    return v8;
  }
}

uint64_t remoteSampleGenerator_DeadConnectionCallback(const void *a1)
{
  *(CMBaseObjectGetDerivedStorage() + 8) = 1;
  v2 = CFGetTypeID(a1);
  result = FigSampleGeneratorGetTypeID();
  if (v2 == result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v5 = *(DerivedStorage + 24);
    if (v5)
    {
      CFDictionaryApplyFunction(v5, remoteSampleGenerator_markSampleBufferDataFailed, 0);
      CFDictionaryRemoveAllValues(*(DerivedStorage + 24));
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

__CFString *remoteSampleGenerator_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigSampleGeneratorRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteSampleGenerator_CreateSampleBufferAtCursor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, __int128 a9, uint64_t a10, CFTypeRef *a11)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  SampleBuffer = remoteSampleGenerator_createSampleBuffer(a1, v13, 0, a11);
  FigXPCRemoteClientKillServerOnTimeout();
  return SampleBuffer;
}

uint64_t remoteSampleGeneratorBatch_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteSampleGeneratorBatch_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

void *CreateSampleBufferRequestor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E00403B2942D6uLL);
  v9 = v8;
  if (v8)
  {
    *v8 = a2;
    v8[1] = a1;
    v8[2] = a3;
    v8[3] = a4;
  }

  else
  {
    CreateSampleBufferRequestor_cold_1();
  }

  return v9;
}

uint64_t remoteSampleGenerator_createSampleBufferGeneratorRequestXPCMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = 403;
    goto LABEL_16;
  }

  if (!a4)
  {
    v7 = 404;
    goto LABEL_16;
  }

  *(a4 + 16) = *(a1 + 24);
  *a4 = *(a1 + 8);
  *(a4 + 20) = *(a1 + 36);
  if (!a2)
  {
    v7 = 412;
    goto LABEL_16;
  }

  if (FigSampleCursorXPCRemoteGetObjectID(a2, a4 + 32) || !*(a4 + 32))
  {
    v7 = 414;
LABEL_16:
    remoteSampleGenerator_createSampleBufferGeneratorRequestXPCMessage_cold_1(v7, &v8);
    return v8;
  }

  if (a3 && (FigSampleCursorXPCRemoteGetObjectID(a3, a4 + 40) || !*(a4 + 40)))
  {
    v7 = 418;
    goto LABEL_16;
  }

  return 0;
}

uint64_t remoteSampleGenerator_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteSampleGenerator_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

__CFString *remoteSampleGeneratorBatch_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = "open";
  v7 = *(DerivedStorage + 28);
  if (v7 > 1)
  {
    v6 = "completed";
  }

  if (v7 == 1)
  {
    v6 = "committed";
  }

  if (*(DerivedStorage + 8))
  {
    v8 = " SERVER DIED";
  }

  else
  {
    v8 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigSampleGeneratorBatchRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s State: %s(%d)", a1, v5, *DerivedStorage, v8, v6, v7);
  return Mutable;
}

uint64_t remoteSampleGeneratorBatch_removeListener()
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t remoteSampleGeneratorBatch_completionCallback(uint64_t a1, uint64_t a2, uint64_t a3, opaqueCMSampleBuffer *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    statusOut = 0;
    HasDataFailed = CMSampleBufferHasDataFailed(a4, &statusOut);
    v7 = statusOut;
    v8 = CMBaseObjectGetDerivedStorage();
    if (v7 != -16751 || HasDataFailed == 0)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    *(v8 + 28) = v10;
  }

  CFSetRemoveValue(*(DerivedStorage + 40), a4);
  if (!CFSetGetCount(*(DerivedStorage + 40)))
  {
    if ((*(DerivedStorage + 28) - 3) >= 2)
    {
      *(CMBaseObjectGetDerivedStorage() + 28) = 2;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return FigSimpleMutexUnlock();
}

uint64_t remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CMSampleBufferRef *a12)
{
  sbuf = 0;
  if (!a1)
  {
    remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_5(&v33);
LABEL_17:
    v22 = v33;
    goto LABEL_14;
  }

  if (!a12)
  {
    remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_4(&v33);
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 28))
  {
    remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_1(&v33);
  }

  else
  {
    v24[0] = a2;
    v24[1] = a3;
    v24[2] = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v30 = a10;
    v29 = a9;
    v31 = a11;
    if (remoteSampleGenerator_createSampleBuffer(*(DerivedStorage + 32), v24, a1, &sbuf) || (v21 = sbuf) == 0)
    {
      remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_3(&v33);
    }

    else
    {
      if (!*(DerivedStorage + 24))
      {
LABEL_9:
        if (!CMSampleBufferDataIsReady(v21))
        {
          CFSetAddValue(*(DerivedStorage + 40), sbuf);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
        }

        v22 = 0;
        *a12 = sbuf;
        sbuf = 0;
        goto LABEL_12;
      }

      if (CMSampleBufferDataIsReady(sbuf))
      {
        v21 = sbuf;
        goto LABEL_9;
      }

      remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_2(&v33);
    }
  }

  v22 = v33;
LABEL_12:
  FigSimpleMutexUnlock();
  if (sbuf)
  {
    CFRelease(sbuf);
  }

LABEL_14:
  FigXPCRemoteClientKillServerOnTimeout();
  return v22;
}

uint64_t remoteSampleGeneratorBatch_GetState(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    v2 = 0;
    *a2 = *(CMBaseObjectGetDerivedStorage() + 28);
  }

  else
  {
    remoteSampleGeneratorBatch_GetState_cold_1(&v4);
    v2 = v4;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t FigMediaProcessorCreateForCustom(const __CFAllocator *a1, const __CFString *a2, uint64_t a3, uint64_t a4, const void *a5, void *a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, int a13, uint64_t *a14)
{
  v33 = 0;
  v31 = 0;
  cf = 0;
  v30 = 0;
  if ((a5 == 0) == (a6 != 0) && a9)
  {
    v19 = FigSampleBufferProcessorCreateForCustom(a1, a2, a3, a4, &v33);
    if (!v19)
    {
      v20 = *MEMORY[0x1E695E480];
      if (a5)
      {
        v19 = FigSampleBufferProviderCreateForBufferQueue(v20, a5, &cf);
        if (v19)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = *a7;
        v29 = *(a7 + 16);
        v23 = a8[1];
        v25 = *a8;
        v26 = v23;
        v27 = a8[2];
        v28 = v22;
        v19 = FigSampleBufferProviderCreateForVisualContext(v20, a6, &v28, &v25, &cf);
        if (v19)
        {
          goto LABEL_12;
        }
      }

      v25 = *a10;
      *&v26 = *(a10 + 16);
      v28 = *a11;
      v29 = *(a11 + 16);
      v19 = FigSampleBufferConsumerCreateForBufferQueue(a9, &v25, &v28, &v31);
      if (!v19)
      {
        if (a12)
        {
          v19 = FigActivitySchedulerCreateForCFRunLoop(a1, a12, &v30);
          if (v19)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v19 = FigActivitySchedulerCreateForNewThread(a1, a13, @"com.apple.coremedia.mediaprocessor.videocustom", &v30);
          if (v19)
          {
            goto LABEL_12;
          }
        }

        v19 = FigMediaProcessorCreate(a1, v33, cf, v31, v30, a14);
      }
    }

LABEL_12:
    v24 = v19;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    return v24;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigSampleBufferProcessorCreateCustomProcessors(CFStringRef theString, __CFArray **a2)
{
  v3 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @",");
  if (ArrayBySeparatingStrings)
  {
    v5 = ArrayBySeparatingStrings;
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    if (Count)
    {
      v7 = Count;
      Mutable = CFArrayCreateMutable(v3, Count, MEMORY[0x1E695E9C0]);
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          value = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          if (CFEqual(ValueAtIndex, @"monochrome"))
          {
            FigSampleBufferProcessorCreateForMonochrome(v3, &value);
          }

          if (value)
          {
            CFArrayAppendValue(Mutable, value);
            CFRelease(value);
          }
        }
      }

      if (Mutable)
      {
        if (CFArrayGetCount(Mutable) < 1)
        {
          *a2 = 0;
          CFRelease(Mutable);
        }

        else
        {
          *a2 = Mutable;
        }
      }
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t FigSampleBufferProcessorCreateForCustom(int a1, const __CFString *cf1, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (CFEqual(cf1, @"monochrome"))
  {
    result = FigSampleBufferProcessorCreateForMonochrome(*MEMORY[0x1E695E480], &v13);
  }

  else
  {
    if (!CFStringGetCString(cf1, buffer, 1024, 0x8000100u) || (snprintf(__str, 0x400uLL, "%s/%s.videoprocessor", "/System/Library/VideoProcessors", buffer), snprintf(__symbol, 0x400uLL, "%s%s", "FigSampleBufferProcessorCreateFor", buffer), (v11 = dlopen(__str, 4)) == 0) || (v12 = dlsym(v11, __symbol)) == 0)
    {
      v9 = v13;
      result = 4294954516;
      goto LABEL_13;
    }

    result = v12(*MEMORY[0x1E695E480], a3, &v13);
  }

  v9 = v13;
  if (v13)
  {
    v10 = 0;
  }

  else
  {
    v10 = 4294954516;
  }

  if (!result)
  {
    result = v10;
  }

LABEL_13:
  *a5 = v9;
  return result;
}

CFURLRef FigFairPlayCopyDefaultKeybagFolderURL()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getuid();
  v1 = getpwuid(v0);
  if (v1)
  {
    snprintf(__str, 0x400uLL, "%s/Media/iTunes_Control/iTunes/", v1->pw_dir);
    v2 = *MEMORY[0x1E695E480];
    v3 = strlen(__str);
    result = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], __str, v3, 1u);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v2 = *MEMORY[0x1E695E480];
  }

  return CFURLCreateWithFileSystemPath(v2, @"/", kCFURLPOSIXPathStyle, 1u);
}

__CFString *FigFairPlayCopyAbsolutePathFromURL(const __CFURL *a1)
{
  if (a1 && (v1 = CFURLCopyAbsoluteURL(a1)) != 0)
  {
    v2 = v1;
    v3 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return v3;
  }

  else
  {
    return @"/";
  }
}

CFDictionaryRef FigFairPlayCopySinfExtensionsFromFormatDescription(const opaqueCMFormatDescription *a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (!Extension)
  {
    goto LABEL_34;
  }

  v3 = Extension;
  v4 = CFGetTypeID(Extension);
  if (v4 != CFDictionaryGetTypeID())
  {
    goto LABEL_34;
  }

  values = 0;
  v41[0] = 0;
  keys = 0;
  v39 = 0;
  Value = CFDictionaryGetValue(v3, @"sinf");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFDataGetTypeID()))
  {
    p_keys = &v39;
    p_values = v41;
    v8 = CFDataGetLength(v6) + 8;
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v8);
    CFDataIncreaseLength(Mutable, v8);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    *MutableBytePtr = bswap32(v8);
    *(MutableBytePtr + 1) = 1718511987;
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v6);
    memcpy(MutableBytePtr + 8, BytePtr, Length);
    values = Mutable;
    v36 = 1;
    numValues = 1;
    keys = @"sinf";
  }

  else
  {
    v36 = 0;
    numValues = 0;
    p_values = &values;
    p_keys = &keys;
  }

  v13 = 0;
  v14 = 1;
  do
  {
    v15 = v14;
    v16 = *(&off_1E748FE90 + v13);
    v17 = CFDictionaryGetValue(v3, v16);
    if (v17)
    {
      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 == CFDataGetTypeID() && CFDataGetLength(v18) >= 0x10)
      {
        v20 = CFDataGetBytePtr(v18);
        if (*v20 == 0xA7458277191E8547 && *(v20 + 1) == 0x65FB4846FF1A9E8FLL)
        {
          v25 = CFDataGetLength(v18) + 8;
          v22 = *MEMORY[0x1E695E480];
          v26 = CFDataCreateMutable(*MEMORY[0x1E695E480], v25);
          CFDataIncreaseLength(v26, v25);
          v27 = CFDataGetMutableBytePtr(v26);
          *v27 = bswap32(v25);
          *(v27 + 1) = bswap32(*&aDiuudiuufnisih[4 * v13]);
          v28 = CFDataGetBytePtr(v18);
          v29 = CFDataGetLength(v18);
          memcpy(v27 + 8, v28, v29);
          *p_keys = CFRetain(v16);
          *p_values = v26;
          v23 = numValues + 1;
          goto LABEL_20;
        }
      }
    }

    v14 = 0;
    v13 = 1;
  }

  while ((v15 & 1) != 0);
  if (!v36)
  {
    v24 = 0;
    v23 = numValues;
    goto LABEL_21;
  }

  v22 = *MEMORY[0x1E695E480];
  v23 = numValues;
LABEL_20:
  v24 = CFDictionaryCreate(v22, &keys, &values, v23, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_21:
  if (v23 >= 1)
  {
    v30 = v23 + 1;
    v31 = &v41[v23 - 2];
    do
    {
      if (*v31)
      {
        CFRelease(*v31);
      }

      --v30;
      --v31;
    }

    while (v30 > 1);
  }

  if (!v24)
  {
LABEL_34:
    if (CMFormatDescriptionGetMediaType(a1) == 1936684398 && (values = 0, (MagicCookie = CMAudioFormatDescriptionGetMagicCookie(a1, &values)) != 0))
    {
      return FigFairPlayCopySinfExtensionsFromAtomContainer(MagicCookie);
    }

    else
    {
      return 0;
    }
  }

  return v24;
}

CFDictionaryRef FigFairPlayCopySinfExtensionsFromAtomContainer(const UInt8 *a1)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = 0;
  values[1] = 0;
  keys[0] = 0;
  keys[1] = 0;
  if (FigAtomStreamInitWithMemoryBlock())
  {
    return 0;
  }

  if (FigAtomStreamPositionAtFirstAtomWithType() || FigAtomStreamGetCurrentAtomGlobalOffset())
  {
    v2 = 0;
  }

  else
  {
    keys[0] = @"sinf";
    values[0] = CFDataCreate(*MEMORY[0x1E695E480], a1, 0);
    v2 = 1;
  }

  if (!FigAtomStreamPositionAtFirstAtomWithType())
  {
    FigAtomStreamGetCurrentAtomGlobalOffset();
  }

  if (!FigAtomStreamPositionAtFirstAtomWithType())
  {
    FigAtomStreamGetCurrentAtomUUIDType();
  }

  if (!v2)
  {
    return 0;
  }

  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = 2;
  v5 = values;
  do
  {
    if (*v5)
    {
      CFRelease(*v5);
    }

    --v4;
    --v5;
  }

  while (v4 > 1);
  return v3;
}

const void *FigFairPlayGetBestSinfFromSinfExtensions(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, @"UUID"))
  {
    v2 = @"UUID";
  }

  else
  {
    v2 = @"uuid";
  }

  result = CFDictionaryGetValue(a1, v2);
  if (!result)
  {
    result = CFDictionaryGetValue(a1, @"sinf");
    if (!result)
    {
      result = CFDictionaryGetValue(a1, @"pinf");
      if (!result)
      {

        return CFDictionaryGetValue(a1, @"dpInfo");
      }
    }
  }

  return result;
}

const void *FigFairPlayGetExtendedSinfFromSinfExtensions(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, @"UUID"))
  {
    v2 = @"UUID";
  }

  else
  {
    v2 = @"uuid";
  }

  return CFDictionaryGetValue(a1, v2);
}

uint64_t FigFairPlayGetSkipParametersFromSinf(const __CFDictionary *a1, _DWORD *a2)
{
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (BestSinfFromSinfExtensions)
  {
    v4 = BestSinfFromSinfExtensions;
    v18 = 0;
    BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
    Length = CFDataGetLength(v4);
    hZZRqgZwI(BytePtr, Length, 19, &v18);
    result = FAIRPLAY_CALL_LOG(v7);
    if (result)
    {
      v9 = 0;
LABEL_7:
      v10 = 0;
      goto LABEL_8;
    }

    v9 = v18;
    v12 = CFDataGetBytePtr(v4);
    v13 = CFDataGetLength(v4);
    hZZRqgZwI(v12, v13, 20, &v18);
    result = FAIRPLAY_CALL_LOG(v14);
    if (result)
    {
      goto LABEL_7;
    }

    v10 = v18;
    v15 = CFDataGetBytePtr(v4);
    v16 = CFDataGetLength(v4);
    hZZRqgZwI(v15, v16, 21, &v18);
    result = FAIRPLAY_CALL_LOG(v17);
    if (result)
    {
LABEL_8:
      v11 = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_9;
    }

    v11 = v18;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    result = 4294955146;
    if (!a2)
    {
      return result;
    }
  }

LABEL_9:
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  return result;
}

uint64_t FigFairPlayGetMediaKindFromSinf(const __CFDictionary *a1, uint64_t *a2)
{
  v13 = 0;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (!BestSinfFromSinfExtensions)
  {
    v12 = 0;
    result = 4294955146;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  v4 = BestSinfFromSinfExtensions;
  BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
  Length = CFDataGetLength(v4);
  hZZRqgZwI(BytePtr, Length, 11, &v13);
  LODWORD(result) = FAIRPLAY_CALL_LOG(v7);
  v9 = result == 0;
  v10 = v13 == 0;
  v11 = !v9 || !v10;
  if (v9 && v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v13;
  }

  if (v11)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
LABEL_9:
    *a2 = v12;
  }

  return result;
}

uint64_t FigFairPlayGetSchemeFromSinf(const __CFDictionary *a1, unsigned int *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"sinf");
  if (Value)
  {
    v5 = Value;
    v15 = 0;
    v16[0] = 0x7363686D73696E66;
    v14 = 0;
    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(v5);
    result = FigFairPlayGetSinfChildDataWithPath(BytePtr, Length, v16, 2, &v15, &v14);
    if (result)
    {
      v9 = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_20;
    }

    if (v14 != 12)
    {
      v9 = 0;
      result = 4294925279;
      if (!a2)
      {
        return result;
      }

      goto LABEL_20;
    }

    result = 0;
    v9 = bswap32(*(v15 + 4));
    if (a2)
    {
LABEL_20:
      *a2 = v9;
    }
  }

  else
  {
    if (CFDictionaryContainsKey(a1, @"UUID"))
    {
      v10 = @"UUID";
    }

    else
    {
      v10 = @"uuid";
    }

    v11 = CFDictionaryGetValue(a1, v10);
    if (v11 && (v12 = v11, CFDataGetLength(v11) >= 0x18))
    {
      v13 = CFDataGetBytePtr(v12);
      if (*(v13 + 1) ^ 0xA7458277191E8547 | *(v13 + 2) ^ 0x65FB4846FF1A9E8FLL)
      {
        v9 = 0;
      }

      else
      {
        v9 = 1769239918;
      }
    }

    else
    {
      v9 = 0;
    }

    result = 4294955146;
    if (a2)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t FigFairPlayGetSinfChildDataWithPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  result = 4294955146;
  if (a1)
  {
    if (a3)
    {
      result = FigAtomStreamInitWithMemoryBlock();
      if (!result)
      {
        result = FigAtomStreamPositionViaAtomPath();
        if (!result)
        {
          result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
          if (!result)
          {
            result = FigAtomStreamGetCurrentAtomDataGlobalOffset();
            if (!result)
            {
              if (a5)
              {
                *a5 = a1;
              }

              result = 0;
              if (a6)
              {
                *a6 = 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFairPlayIsRentalSinf(const __CFDictionary *a1, BOOL *a2)
{
  v9 = 1;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (BestSinfFromSinfExtensions)
  {
    v4 = BestSinfFromSinfExtensions;
    BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
    Length = CFDataGetLength(v4);
    hZZRqgZwI(BytePtr, Length, 14, &v9);
    result = FAIRPLAY_CALL_LOG(v7);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 4294955146;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v9 != 0;
  return result;
}

uint64_t FigFairPlayIsHDCPRequiredSinf(const __CFDictionary *a1, BOOL *a2)
{
  v13 = 4;
  v12 = 0x40000000;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (BestSinfFromSinfExtensions)
  {
    v4 = BestSinfFromSinfExtensions;
    BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
    Length = CFDataGetLength(v4);
    hZZRqgZwI(BytePtr, Length, 15, &v13);
    result = FAIRPLAY_CALL_LOG(v7);
    if (!result)
    {
      v9 = CFDataGetBytePtr(v4);
      v10 = CFDataGetLength(v4);
      hZZRqgZwI(v9, v10, 12, &v12);
      result = FAIRPLAY_CALL_LOG(v11);
    }
  }

  else
  {
    result = 4294955146;
  }

  if (a2)
  {
    *a2 = v12 != 0;
  }

  return result;
}

uint64_t FigFairPlayIsLowValueSinf(const __CFDictionary *a1, BOOL *a2)
{
  v9 = 0;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (BestSinfFromSinfExtensions)
  {
    v4 = BestSinfFromSinfExtensions;
    BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
    Length = CFDataGetLength(v4);
    hZZRqgZwI(BytePtr, Length, 16, &v9);
    result = FAIRPLAY_CALL_LOG(v7);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 4294955146;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v9 != 0;
  return result;
}

uint64_t FigFairPlayIsSkipEncrypted(const __CFDictionary *a1, BOOL *a2)
{
  v9 = 0;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (!BestSinfFromSinfExtensions)
  {
    return 4294955146;
  }

  v4 = BestSinfFromSinfExtensions;
  BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
  Length = CFDataGetLength(v4);
  hZZRqgZwI(BytePtr, Length, 13, &v9);
  result = FAIRPLAY_CALL_LOG(v7);
  if (a2)
  {
    if (!result)
    {
      *a2 = v9 == 3;
    }
  }

  return result;
}

uint64_t FigFairPlayIsPreviewEncrypted(const __CFDictionary *a1, BOOL *a2)
{
  v9 = 0;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (!BestSinfFromSinfExtensions)
  {
    return 4294955146;
  }

  v4 = BestSinfFromSinfExtensions;
  BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
  Length = CFDataGetLength(v4);
  hZZRqgZwI(BytePtr, Length, 1, &v9);
  result = FAIRPLAY_CALL_LOG(v7);
  if (a2)
  {
    if (!result)
    {
      *a2 = v9 == 0;
    }
  }

  return result;
}

uint64_t FigFairPlayIsPlaceholder(const __CFDictionary *a1, BOOL *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *"fnisihcsresu";
  v10 = 1970496882;
  Value = CFDictionaryGetValue(a1, @"sinf");
  if (!Value)
  {
    v7 = 0;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v4 = Value;
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(v4);
  v7 = FigFairPlayGetSinfChildDataWithPath(BytePtr, Length, &v9, 3, 0, 0) != 0;
  if (a2)
  {
LABEL_3:
    *a2 = v7;
  }

  return 0;
}

uint64_t FigFairPlayGetSinfExtensionType(const __CFDictionary *a1, int *a2)
{
  if (!a1)
  {
    return 4294955146;
  }

  if (!a2)
  {
    return 0;
  }

  if (CFDictionaryContainsKey(a1, @"sinf") || CFDictionaryContainsKey(a1, @"UUID") || CFDictionaryContainsKey(a1, @"uuid"))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (CFDictionaryContainsKey(a1, @"dpInfo") != 0);
  }

  result = 0;
  *a2 = v4;
  return result;
}

CFTypeRef FigFairPlayCopyDisposeStorageAllocator()
{
  MEMORY[0x19A8D3660](&sFairPlayDisposeStorageAllocatorContextOnce, FigFairPlayInitFairPlayDisposeStorageAllocatorContext);
  result = sFairPlayDisposeStorageAllocator;
  if (sFairPlayDisposeStorageAllocator)
  {

    return CFRetain(result);
  }

  return result;
}

CFAllocatorRef FigFairPlayInitFairPlayDisposeStorageAllocatorContext()
{
  v1.reallocate = 0;
  memset(&v1, 0, 40);
  v1.allocate = FigFairPlayDisposeStorageAllocatorAllocateCallback;
  v1.deallocate = FigFairPlayDisposeStorageAllocatorDeallocateCallback;
  v1.preferredSize = 0;
  result = CFAllocatorCreate(*MEMORY[0x1E695E480], &v1);
  sFairPlayDisposeStorageAllocator = result;
  return result;
}

uint64_t FigCFKBCryptRefRegisterClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigCFKBCryptRefCreate(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_92 != -1)
  {
    FigCFKBCryptRefCreate_cold_1();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 16) = a2;
  return result;
}

uint64_t FigFairPlayDisposeStorageAllocatorDeallocateCallback(uint64_t a1)
{
  v1 = jEHf8Xzsv8K(a1);

  return FAIRPLAY_CALL_LOG(v1);
}

uint64_t FigCFKBCryptRefFinalize(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v2 = Hz73b(result);

    return FAIRPLAY_CALL_LOG(v2);
  }

  return result;
}

uint64_t FigAssetCacheInspectorStartServer()
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();
    return FigXPCServerStart();
  }
}

void FreeAVITrackArray(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      if (*(a1 + 48) >= 1)
      {
        v3 = 0;
        v4 = 0;
        do
        {
          TearDownPerTrackInfo(*(a1 + 64) + v3);
          ++v4;
          v3 += 108;
        }

        while (v4 < *(a1 + 48));
        v2 = *(a1 + 64);
      }

      free(v2);
      *(a1 + 64) = 0;
      *(a1 + 48) = 0;
    }
  }
}

void TearDownPerTrackInfo(uint64_t a1)
{
  if (a1)
  {
    FigFormatDescriptionRelease();
    *(a1 + 8) = 0;
    free(*(a1 + 100));
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
  }
}

uint64_t ProcessChildRIFFAtoms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v7 = (a2 + 8);
  while (1)
  {
    result = RIFFAtomStreamGetCurrentAtomTypeAndDataLength(a1, &v14, 0);
    if (result)
    {
      return result;
    }

    if (a3 >= 1)
    {
      v9 = v7;
      v10 = v7;
      v11 = a3;
      while (1)
      {
        if (v14 == *(v10 - 2))
        {
          if (v14 != 1380533830 && v14 != 1279873876)
          {
            break;
          }

          v13 = 0;
          result = RIFFAtomStreamGetCurrentAtomLISTType(a1, &v13);
          if (result)
          {
            return result;
          }

          if (*(v10 - 1) == v13)
          {
            break;
          }
        }

        v10 += 2;
        v9 += 4;
        if (!--v11)
        {
          goto LABEL_17;
        }
      }

      result = (*v10)(a1, a4);
      if (result == 1937010544)
      {
        return 0;
      }

      if (result)
      {
        return result;
      }
    }

LABEL_17:
    result = RIFFAtomStreamAdvanceToNextAtom(a1);
    if (result)
    {
      if (result != -12340)
      {
        return result;
      }

      return 0;
    }
  }
}

uint64_t Parse_idx1(uint64_t a1, uint64_t **a2)
{
  if (!(*a2)[6])
  {
    Parse_idx1_cold_2(&v19);
    v8 = 0;
    v2 = v19;
    goto LABEL_25;
  }

  if (!*(*a2 + 108))
  {
    v19 = 0;
    CurrentAtomTypeAndDataLength = RIFFAtomStreamGetCurrentAtomTypeAndDataLength(a1, 0, &v19);
    if (CurrentAtomTypeAndDataLength)
    {
      v2 = CurrentAtomTypeAndDataLength;
      v8 = 0;
    }

    else
    {
      v6 = v19;
      v7 = (*a2)[8];
      v8 = malloc_type_malloc(0x4000uLL, 0x1000040451B5BE8uLL);
      if (v8)
      {
        if (v6 < 0x10)
        {
LABEL_24:
          v2 = 0;
        }

        else
        {
          v9 = 0;
          v10 = v6 >> 4;
          while (1)
          {
            v11 = v10 >= 1024 ? 1024 : v10;
            CurrentAtomData = RIFFAtomStreamReadCurrentAtomData(a1, v9, 16 * v11, v8);
            if (CurrentAtomData)
            {
              break;
            }

            if (v10 >= 1)
            {
              v13 = 0;
              while (1)
              {
                v14 = &v8[16 * v13];
                v15 = *a2;
                if (*v14 == *v7)
                {
                  goto LABEL_21;
                }

                v16 = v15[6];
                if (v16 >= 1)
                {
                  break;
                }

LABEL_22:
                if (++v13 == v11)
                {
                  goto LABEL_23;
                }
              }

              v17 = v15[8];
              while (*v17 != *v14)
              {
                v17 += 27;
                if (!--v16)
                {
                  goto LABEL_22;
                }
              }

              v7 = v17;
LABEL_21:
              CurrentAtomData = AddChunkToTrack(v15[3], *(v14 + 2) + v15[4] + 16, *(v14 + 3), *(v14 + 1), v7);
              if (CurrentAtomData)
              {
                break;
              }

              goto LABEL_22;
            }

LABEL_23:
            v9 += 16 * v11;
            v10 -= v11;
            if (!v10)
            {
              goto LABEL_24;
            }
          }

          v2 = CurrentAtomData;
        }
      }

      else
      {
        Parse_idx1_cold_1(&v20);
        v2 = v20;
      }
    }

LABEL_25:
    free(v8);
    return v2;
  }

  return 0;
}

uint64_t Parse_strn(uint64_t a1)
{
  cf = 0;
  BBuf = RIFFAtomStreamReadCurrentAtomDataAndCreateBBuf(a1, 0, 0, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return BBuf;
}

uint64_t AddChunkToTrack(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int *a5)
{
  if ((a3 & 0x80000000) != 0)
  {
    AddChunkToTrack_cold_6(&v30);
    return v30;
  }

  v7 = a3;
  v10 = a5[23];
  if (v10 == a5[24])
  {
    v11 = *(a5 + 25);
    if (!v11)
    {
      v17 = malloc_type_malloc(0x60000uLL, 0x1000040504FFAC1uLL);
      *(a5 + 25) = v17;
      if (!v17)
      {
        AddChunkToTrack_cold_5(&v30);
        return v30;
      }

      *(a5 + 23) = 0x400000000000;
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    v12 = v10 + 0x2000;
    v13 = malloc_type_realloc(v11, 24 * (v10 + 0x2000), 0x1000040504FFAC1uLL);
    if (!v13)
    {
      AddChunkToTrack_cold_1(&v30);
      return v30;
    }

    a5[24] = v12;
    *(a5 + 25) = v13;
  }

  if (v7)
  {
LABEL_7:
    v14 = a5[23];
    v15 = *(a5 + 25) + 24 * v14;
    *(v15 + 16) = a4;
    *v15 = a2;
    *(v15 + 8) = v7;
    v16 = a5[22];
    *(v15 + 20) = v16;
    goto LABEL_25;
  }

LABEL_10:
  if (a5[1] != 1986618469 || a5[23] < 1 || (v18 = *a5, v29 = 0, v30 = 0, (v19 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || (!v19(a1, 8, a2 - 8, &v30, &v29) ? (v20 = v29 == 8) : (v20 = 0), v20 ? (v21 = HIDWORD(v30) == 0) : (v21 = 0), v21 ? (v22 = v30 == v18) : (v22 = 0), !v22 || (v14 = a5[23], v23 = *(a5 + 25) + 24 * v14, *(v23 + 16) = *(v23 - 8), v24 = *(v23 - 24), *v23 = v24, v16 = a5[22], *(v23 + 20) = v16, (v7 = DWORD2(v24)) == 0)))
  {
    AddChunkToTrack_cold_4(&v30);
    return v30;
  }

LABEL_25:
  a5[23] = v14 + 1;
  v25 = *(a5 + 17);
  if (v25)
  {
    v26 = v7 / v25;
    if (v26 <= 0)
    {
      AddChunkToTrack_cold_2(&v30);
      return v30;
    }
  }

  else
  {
    v26 = 1;
  }

  v27 = v26 + v16;
  if (!(v27 >> 31))
  {
    result = 0;
    a5[22] = v27;
    return result;
  }

  AddChunkToTrack_cold_3(&v30);
  return v30;
}

uint64_t OUTLINED_FUNCTION_1_125(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;
  a11 = 0u;
  a12 = 0u;
  a9 = 0u;
  a10 = 0u;

  return RIFFAtomStreamInitWithParent(a1, 0, &a9);
}

uint64_t AVIFormatReaderCreateFromStream(const void *a1, const __CFAllocator *a2, void *a3)
{
  FigFormatReaderGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (sRegisterAVIFileInfoTypeOnce != -1)
  {
    AVIFormatReaderCreateFromStream_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    AVIFormatReaderCreateFromStream_cold_2(&value);
    return value;
  }

  v9 = Instance;
  *(Instance + 24) = CFRetain(a1);
  Default = a2;
  if (!a2)
  {
    Default = CFAllocatorGetDefault();
  }

  *(v9 + 16) = CFRetain(Default);
  *DerivedStorage = v9;
  v6 = ParseAVIFile(v9);
  if (v6)
  {
    return v6;
  }

  v11 = *(*DerivedStorage + 6);
  if (v11)
  {
    DerivedStorage[1] = CFArrayCreateMutable(*MEMORY[0x1E695E480], v11, MEMORY[0x1E695E9C0]);
    v12 = *DerivedStorage;
    if (*(*DerivedStorage + 6) >= 1)
    {
      v13 = 0;
      do
      {
        value = 0;
        FigTrackReaderGetClassID();
        if (!CMDerivedObjectCreate())
        {
          v14 = CMBaseObjectGetDerivedStorage();
          *v14 = CFRetain(v12);
          *(v14 + 8) = v13;
          if (value)
          {
            CFArrayAppendValue(DerivedStorage[1], value);
            CFRelease(value);
          }
        }

        ++v13;
        v12 = *DerivedStorage;
      }

      while (v13 < *(*DerivedStorage + 6));
    }
  }

  v15 = 0;
  *a3 = 0;
  return v15;
}

uint64_t AVIFormatReaderConvertCodecElementsToMediaSubType(int a1, char *__s1, uint64_t a3, _DWORD *a4, int *a5, int *a6)
{
  if (a3)
  {
    if (a6)
    {
      result = 0;
      v7 = 8;
LABEL_4:
      *a6 = v7;
      return result;
    }

    return 0;
  }

  if (!__s1)
  {
    if (a6)
    {
      result = 0;
      v7 = 4;
      goto LABEL_4;
    }

    return 0;
  }

  if (!a1)
  {
    return FigAudioFormatReaderConvertCodecElementsToMediaSubType(1463899717, a1, __s1, 0, a4, a5, a6);
  }

  if (a1 != 1296715847)
  {
    if (*__s1 - 51 < 0xFFFFFFFD)
    {
      return 0;
    }

    return FigAudioFormatReaderConvertCodecElementsToMediaSubType(1463899717, a1, __s1, 0, a4, a5, a6);
  }

  if (a4)
  {
    *a4 = 1986618469;
  }

  if (a5)
  {
    *a5 = 1684890161;
  }

  if (a6)
  {
    *a6 = 0;
  }

  return 1;
}

void AVIFormatReaderFinalize()
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

__CFString *AVIFormatReaderCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(*DerivedStorage + 24);
  if (v5)
  {
    v6 = CFCopyDescription(v5);
    CFStringAppendFormat(Mutable, 0, @"\tAVI FormatReader: stream<%@> trackCount<%d>", v6, *(*DerivedStorage + 48));
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tAVI FormatReader: stream<%@> trackCount<%d>", 0, *(*DerivedStorage + 48));
  }

  return Mutable;
}

uint64_t AVIFormatReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    AVIFormatReaderCopyProperty_cold_2(&v13);
    return LODWORD(v13.value);
  }

  if (!a2)
  {
    AVIFormatReaderCopyProperty_cold_1(&v13);
    return LODWORD(v13.value);
  }

  v8 = DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"Duration") || CFEqual(a2, @"NominalDuration"))
  {
    v13 = *(*v8 + 72);
    IdentityMatrixCFArray = CMTimeCopyAsDictionary(&v13, a3);
    goto LABEL_6;
  }

  if (CFEqual(a2, @"Identifier"))
  {
    v12 = kFigFormatReaderIdentifier_AVI;
LABEL_13:
    IdentityMatrixCFArray = CFRetain(*v12);
    goto LABEL_6;
  }

  if (CFEqual(a2, @"AccurateDurationIsKnown") || CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
  {
    v12 = MEMORY[0x1E695E4D0];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"PreferredRate") || CFEqual(a2, @"PreferredVolume"))
  {
    LODWORD(v13.value) = 1065353216;
    IdentityMatrixCFArray = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &v13);
  }

  else
  {
    if (!CFEqual(a2, @"MovieMatrix"))
    {
      return 4294954512;
    }

    IdentityMatrixCFArray = wvtt_CreateIdentityMatrixCFArray(a3);
  }

LABEL_6:
  v10 = IdentityMatrixCFArray;
  result = 0;
  *a4 = v10;
  return result;
}

uint64_t AVIFormatReaderGetTrackCount(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(*v4 + 48);
  }

  else
  {
    AVIFormatReaderGetTrackCount_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t AVIFormatReaderCopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(*DerivedStorage + 6);
  if (v8 < 1)
  {
LABEL_5:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v9 = DerivedStorage;
    v10 = 0;
    v11 = 0;
    while (*(*(*DerivedStorage + 8) + v10) != a2)
    {
      ++v11;
      v10 += 108;
      if (v8 == v11)
      {
        goto LABEL_5;
      }
    }

    if (a3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], v11);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      *a3 = ValueAtIndex;
    }

    if (a4)
    {
      *a4 = *(*(*v9 + 8) + v10 + 4);
    }

    return 0;
  }
}

uint64_t AVIFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(*DerivedStorage + 6);
  if (v10 < 1)
  {
    return 4294954453;
  }

  v11 = 0;
  v12 = 0;
  for (i = (*(*DerivedStorage + 8) + 4); *i != a3; i += 27)
  {
LABEL_6:
    if (v10 == ++v11)
    {
      return 4294954453;
    }
  }

  if (v12 != a2)
  {
    ++v12;
    goto LABEL_6;
  }

  if (a4)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], v11);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    *a4 = ValueAtIndex;
  }

  result = 0;
  if (a5)
  {
    *a5 = *(i - 1);
  }

  return result;
}

uint64_t RegisterAVIFileInfoType()
{
  result = _CFRuntimeRegisterClass();
  sAVIFileInfoID = result;
  return result;
}

double InitAVIFileInfo(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FinalizeAVIFileInfo(uint64_t a1)
{
  FreeAVITrackArray(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

void AVITrackReaderFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  *(DerivedStorage + 8) = -1;
}

__CFString *AVITrackReaderCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v6 = *(DerivedStorage + 8);
    if (v6 != -1)
    {
      v7 = (*(v5 + 64) + 108 * v6);
      v8 = *(v5 + 24);
      if (v8)
      {
        v9 = CFCopyDescription(v8);
      }

      else
      {
        v9 = 0;
      }

      v11 = *v7;
      v10 = v7[1];
      v12 = HIBYTE(v10);
      v13 = BYTE2(v10);
      v14 = BYTE1(v10);
      v15 = v10;
      v16 = v7[22];
      v17 = *(v7 + 5);
      time.epoch = *(v7 + 9);
      *&time.value = v17;
      Seconds = CMTimeGetSeconds(&time);
      CFStringAppendFormat(Mutable, 0, @"\t AVITrackReader: stream<%@> trackType %c%c%c%c trackID %d contains %d samples media duration %1.3f seconds (%lld/%d)", v9, v12, v13, v14, v15, v11, v16, *&Seconds, *(v7 + 5), v7[7]);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  return Mutable;
}

uint64_t TrackIndexToTrack(uint64_t a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    if ((a2 & 0x80000000) != 0 || *(a1 + 48) <= a2)
    {
      TrackIndexToTrack_cold_1(&v5);
      return v5;
    }

    else
    {
      result = 0;
      *a3 = *(a1 + 64) + 108 * a2;
    }
  }

  else
  {
    TrackIndexToTrack_cold_2(&v6);
    return v6;
  }

  return result;
}

CFDictionaryRef CreateDimensionDictionary(const __CFAllocator *a1, float a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a3;
  valuePtr = a2;
  *keys = xmmword_1E748FEC0;
  v4 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  cf = CFNumberCreate(v4, kCFNumberFloat32Type, &v7);
  v5 = CFDictionaryCreate(a1, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t AVITrackReaderCopySampleCursorService(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage || (v4 = DerivedStorage, *(DerivedStorage + 8) == -1))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    FigSampleCursorServiceGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v8 = v5;
      AVITrackReaderCopySampleCursorService_cold_1();
    }

    else
    {
      v6 = CMBaseObjectGetDerivedStorage();
      v7 = *v4;
      if (*v4)
      {
        v7 = CFRetain(v7);
      }

      v8 = 0;
      *v6 = v7;
      *(v6 + 8) = *(v4 + 8);
      *a2 = 0;
    }

    return v8;
  }
}

void AVICursorServiceFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  *(DerivedStorage + 8) = -1;
}

__CFString *AVICursorServiceCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_AVI_SampleCursorService %p>{ trackIndex %d }", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t ComputeSampleDeltaForDuration(uint64_t a1, CMTime *a2, int a3, int *a4, _BYTE *a5, char *a6)
{
  v11 = *(a1 + 52);
  v18 = *a2;
  CMTimeConvertScale(&v19, &v18, v11, kCMTimeRoundingMethod_RoundTowardZero);
  if ((v19.flags & 0x1D) == 1)
  {
    v12 = v19.value / *(a1 + 44) + a3;
    v13 = *(a1 + 88);
    if (v12 < v13)
    {
      v14 = 0;
      result = 0;
      v16 = v12 >> 31;
      v17 = v12 & ~(v12 >> 31);
      goto LABEL_11;
    }

    LOBYTE(v16) = 0;
    result = 0;
    goto LABEL_9;
  }

  if ((~v19.flags & 9) == 0)
  {
    v17 = 0;
    v14 = 0;
    result = 0;
    LOBYTE(v16) = 1;
    goto LABEL_11;
  }

  if ((~v19.flags & 5) == 0)
  {
    LOBYTE(v16) = 0;
    result = 0;
    v13 = *(a1 + 88);
LABEL_9:
    v17 = v13 - 1;
    v14 = 1;
    goto LABEL_11;
  }

  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  v17 = 0;
  LOBYTE(v16) = 0;
  v14 = 0;
LABEL_11:
  *a4 = v17;
  if (a5)
  {
    *a5 = v16;
  }

  if (a6)
  {
    *a6 = v14;
  }

  return result;
}

uint64_t CreateAVISampleCursor(const void *a1, uint64_t a2, int32_t a3, void *a4)
{
  v22 = 0;
  *a4 = 0;
  v4 = *(a2 + 88);
  if (v4 <= a3)
  {
    CreateAVISampleCursor_cold_1(&v21);
    return LODWORD(v21.value);
  }

  if (v4)
  {
    FigSampleCursorGetClassID();
    v9 = CMDerivedObjectCreate();
    if (v9)
    {
      v14 = v9;
      CreateAVISampleCursor_cold_2();
      return v14;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a1);
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = a3;
    v11 = *(a2 + 60);
    *(DerivedStorage + 48) = *(a2 + 44);
    *(DerivedStorage + 64) = v11;
    v20 = *(a2 + 44);
    CMTimeMultiply(&v21, &v20, a3);
    *(DerivedStorage + 24) = v21;
    v12 = *(DerivedStorage + 8);
    v13 = *(v12 + 100);
    if (*(v13 + 20) > a3)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    v16 = *(v12 + 92);
    if (v16 < 2)
    {
      LODWORD(v18) = 1;
    }

    else
    {
      v17 = (v13 + 44);
      v18 = 1;
      while (1)
      {
        v19 = *v17;
        v17 += 6;
        if (v19 > a3)
        {
          break;
        }

        if (v16 == ++v18)
        {
          LODWORD(v18) = v16;
          goto LABEL_16;
        }
      }
    }

    if (v18 <= v16)
    {
LABEL_16:
      v14 = 0;
      *(DerivedStorage + 20) = v18 - 1;
      *a4 = v22;
      return v14;
    }

    CreateAVISampleCursor_cold_3(&v21);
    return LODWORD(v21.value);
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

double AVISampleCursorFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  *(DerivedStorage + 8) = 0;
  result = 0.0;
  *(DerivedStorage + 16) = 0u;
  *(DerivedStorage + 32) = 0u;
  *(DerivedStorage + 48) = 0u;
  *(DerivedStorage + 64) = 0;
  return result;
}

__CFString *AVISampleCursorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(DerivedStorage + 8);
  v6 = *v5;
  CFStringAppendFormat(Mutable, 0, @"<AVI SampleCursor %p>{ sampleNum %d, Track ID %d (%c%c%c%c), Type %c%c%c%c }", a1, *(DerivedStorage + 16), v6, BYTE3(v6), BYTE2(v6), BYTE1(v6), v6, HIBYTE(v5[1]), BYTE2(v5[1]), BYTE1(v5[1]), v5[1]);
  return Mutable;
}

uint64_t AVISampleCursorCopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (cf1)
    {
      *a4 = 0;
      if (CFEqual(cf1, @"CursorPlayableHorizon"))
      {
        return 4294954513;
      }

      else if (CFEqual(cf1, @"CursorPlayableThroughEndOfTrack"))
      {
        return 4294954513;
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      AVISampleCursorCopyProperty_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    AVISampleCursorCopyProperty_cold_2(&v7);
    return v7;
  }
}

uint64_t AVISampleCursorCopy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    AVISampleCursorCopy_cold_1();
  }

  else
  {
    v5 = CMBaseObjectGetDerivedStorage();
    *v5 = *DerivedStorage;
    v7 = *(DerivedStorage + 32);
    v6 = *(DerivedStorage + 48);
    v8 = *(DerivedStorage + 16);
    *(v5 + 64) = *(DerivedStorage + 64);
    *(v5 + 32) = v7;
    *(v5 + 48) = v6;
    *(v5 + 16) = v8;
    v9 = *v5;
    if (v9)
    {
      CFRetain(v9);
    }

    *a2 = 0;
  }

  return v4;
}

uint64_t AVISampleCursorCompareInDecodeOrder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  v3 = *(v1 + 16);
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

uint64_t AVISampleCursorGetPresentationTimeStamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    *(a2 + 16) = *(DerivedStorage + 40);
    *a2 = v4;
  }

  return 0;
}

uint64_t AVISampleCursorGetDecodeTimeStamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    *(a2 + 16) = *(DerivedStorage + 40);
    *a2 = v4;
  }

  return 0;
}

uint64_t AVISampleCursorGetDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 48);
    *(a2 + 16) = *(DerivedStorage + 64);
    *a2 = v4;
  }

  return 0;
}

uint64_t AVISampleCursorGetDependencyInfo(uint64_t a1, BOOL *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = (*(*(*(DerivedStorage + 8) + 100) + 24 * *(DerivedStorage + 20) + 16) & 0x10) != 0;
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

uint64_t AVISampleCursorStepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  time1 = *a2;
  time2 = **&MEMORY[0x1E6960CC0];
  result = CMTimeCompare(&time1, &time2);
  if (result)
  {
    v11 = 0;
    v10 = 0;
    time2.value = 0;
    v6 = *(DerivedStorage + 8);
    v7 = *(DerivedStorage + 16);
    time1 = *a2;
    result = ComputeSampleDeltaForDuration(v6, &time1, v7, &v11, &v10, &v10 + 1);
    if (!result)
    {
      v8 = v11 - *(DerivedStorage + 16);
      result = AVISampleCursorStepInDecodeOrderAndReportStepsTaken(a1, v8, &time2);
      if (!result)
      {
        if (time2.value == v8 && (v10 | HIBYTE(v10)) == 0)
        {
          return 0;
        }

        else
        {
          return 4294954456;
        }
      }
    }
  }

  return result;
}

uint64_t AVISampleCursorCopySampleLocation(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  if (a5)
  {
    *a5 = 0;
  }

  if (a4)
  {
    v11 = *(*DerivedStorage + 24);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    *a4 = v11;
  }

  v12 = *(v10 + 8);
  v13 = *(v12 + 68);
  if (v13)
  {
    if (a2)
    {
      v14 = *(v12 + 100) + 24 * *(v10 + 20);
      *a2 = *v14 + v13 * (*(v10 + 16) - *(v14 + 20));
    }

    if (!a3)
    {
      return 0;
    }

LABEL_16:
    *a3 = v13;
    return 0;
  }

  if (a2)
  {
    *a2 = *(*(v12 + 100) + 24 * *(v10 + 20));
  }

  if (a3)
  {
    v13 = *(*(v12 + 100) + 24 * *(v10 + 20) + 8);
    goto LABEL_16;
  }

  return 0;
}

uint64_t AVISampleCursorCopyChunkDetails(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t *a6, void *a7, uint64_t a8, _BYTE *a9, _BYTE *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = DerivedStorage;
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    v18 = *(*DerivedStorage + 24);
    if (v18)
    {
      v18 = CFRetain(v18);
    }

    *a2 = v18;
  }

  if (a4)
  {
    *a4 = *(*(*(v17 + 8) + 100) + 24 * *(v17 + 20));
  }

  if (a5)
  {
    *a5 = *(*(*(v17 + 8) + 100) + 24 * *(v17 + 20) + 8);
  }

  if (a6)
  {
    v19 = *(v17 + 8);
    v20 = *(v19 + 68);
    if (v20)
    {
      v21 = *(*(v19 + 100) + 24 * *(v17 + 20) + 8) / v20;
    }

    else
    {
      v21 = 1;
    }

    *a6 = v21;
  }

  if (a7)
  {
    v22 = *(v17 + 8);
    if (*(v22 + 68))
    {
      v23 = (*(v17 + 16) - *(*(v22 + 100) + 24 * *(v17 + 20) + 20));
      if (v23 < 0)
      {
        AVISampleCursorCopyChunkDetails_cold_1(&v25);
        return v25;
      }
    }

    else
    {
      v23 = 0;
    }

    *a7 = v23;
  }

  if (a9)
  {
    *a9 = 1;
  }

  result = 0;
  if (a10)
  {
    *a10 = 1;
  }

  return result;
}

uint64_t AVISampleCursorCopyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(*(DerivedStorage + 8) + 8);
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *a2 = v4;
  }

  return 0;
}

uint64_t AVISampleCursorStepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 16);
  if ((v7 ^ 0x7FFFFFFF) < a2)
  {
    v8 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  if (v7 < -a2)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v8 = v7 + a2;
  if (v7 + a2 >= 0)
  {
LABEL_6:
    v9 = *(*(DerivedStorage + 8) + 88);
    if (v8 >= v9)
    {
      v10 = v9 - 1;
    }

    else
    {
      v10 = v8;
    }

    if (a3)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = 0;
  if (a3)
  {
LABEL_10:
    *a3 = v10 - v7;
  }

LABEL_11:
  if (v10 != v7)
  {
    time = *(DerivedStorage + 48);
    CMTimeMultiply(&rhs, &time, v10 - v7);
    v24 = *(v6 + 24);
    CMTimeAdd(&time, &v24, &rhs);
    *(v6 + 24) = time;
  }

  *(v6 + 16) = v10;
  v11 = *(v6 + 8);
  if (!*(v11 + 68))
  {
    result = 0;
    *(v6 + 20) = v10;
    return result;
  }

  v12 = *(v6 + 20);
  v13 = *(v11 + 100);
  if (v10 >= *(v13 + 24 * v12 + 20))
  {
    v17 = v12;
    v18 = *(v11 + 92);
    if (v18 <= v12 + 1)
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = v19 - 1;
    --v12;
    v21 = v17 + 1;
    v22 = (v13 + 24 * v17 + 44);
    while (v21 < v18)
    {
      v23 = *v22;
      v22 += 6;
      ++v12;
      ++v21;
      if (v10 < v23)
      {
        goto LABEL_28;
      }
    }

    v12 = v20;
LABEL_28:
    if (v12 < 0)
    {
      AVISampleCursorStepInDecodeOrderAndReportStepsTaken_cold_2(&time);
    }

    else
    {
      if (v12 < v18)
      {
LABEL_30:
        result = 0;
        *(v6 + 20) = v12;
        return result;
      }

      AVISampleCursorStepInDecodeOrderAndReportStepsTaken_cold_1(&time);
    }
  }

  else
  {
    v14 = (v13 + 24 * v12 - 4);
    while (v12 > 0)
    {
      v15 = *v14;
      v14 -= 6;
      --v12;
      if (v10 >= v15)
      {
        goto LABEL_30;
      }
    }

    AVISampleCursorStepInDecodeOrderAndReportStepsTaken_cold_3(&time);
  }

  return LODWORD(time.value);
}

uint64_t OUTLINED_FUNCTION_1_126(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  v12 = *a1;
  v13 = *(a1 + 8);

  return TrackIndexToTrack(v12, v13, &a10);
}

uint64_t RIFFAtomStreamInitWithByteStream(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  number = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = *MEMORY[0x1E695FF78];
  v14 = 0;
  result = v9(CMBaseObject, v10, 0, &number);
  if (!result)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &v14);
    CFRelease(number);
    if (a2 < 0 || (v12 = v14, v13 = v14 - a2, v14 <= a2))
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    else
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 80) = 0u;
      *a4 = a3;
      *(a4 + 8) = a1;
      *(a4 + 16) = v12;
      *(a4 + 24) = ReadBytesFromByteStreamDataSource;
      *(a4 + 32) = ReadBBufFromByteStreamDataSource;
      *(a4 + 40) = a2;
      *(a4 + 48) = v13;
      return CommonRIFFStreamInitialization(a4);
    }
  }

  return result;
}

uint64_t ReadBytesFromByteStreamDataSource(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t ReadBBufFromByteStreamDataSource(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t CommonRIFFStreamInitialization(uint64_t a1)
{
  v7 = 0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48) + v2;
  result = ReadRIFFHeader(a1 + 8, v2, v3, (a1 + 64), (a1 + 72), (a1 + 88), &v7);
  if (!result)
  {
    v5 = *(a1 + 72);
    if (v5 >= 8 && (*(a1 + 40) + v5) <= v3)
    {
      result = 0;
      v6 = v7;
      *(a1 + 56) = v7;
      *(a1 + 80) = v5 - v6;
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t RIFFAtomStreamInitWithParent(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *a3 = 0;
  v3 = *(a1 + 8);
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 8) = v3;
  v4 = *(a1 + 56) + *(a1 + 40);
  v5 = *(a1 + 80);
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
  if (v5 >= a2)
  {
    v12 = 0;
    v9 = v5 + v4;
    result = ReadRIFFHeader(a3 + 8, v4 + a2, v5 + v4, (a3 + 64), (a3 + 72), (a3 + 88), &v12);
    if (result)
    {
      return result;
    }

    v10 = *(a3 + 72);
    if (v10 >= 8 && v10 + a2 + *(a3 + 40) <= v9)
    {
      result = 0;
      v11 = v12;
      *(a3 + 56) = v12 + a2;
      *(a3 + 80) = v10 - v11;
      return result;
    }

    fig_log_get_emitter();
  }

  else
  {
    fig_log_get_emitter();
  }

  return FigSignalErrorAtGM();
}

uint64_t RIFFAtomStreamGetCurrentAtomTypeAndDataLength(uint64_t a1, _DWORD *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 64);
  }

  if (a3)
  {
    *a3 = *(a1 + 80);
  }

  return 0;
}

uint64_t RIFFAtomStreamGetCurrentAtomLISTType(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 64);
  if (v2 != 1380533830 && v2 != 1279873876)
  {
    return 4294954951;
  }

  result = 0;
  *a2 = *(a1 + 88);
  return result;
}

uint64_t RIFFAtomStreamReadCurrentAtomData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  if (v4 <= a2 || a3 + a2 > v4)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = 0;
    result = (*(a1 + 24))(a1 + 8, a3, *(a1 + 40) + a2 + *(a1 + 56), a4, &v8);
    if (!result)
    {
      if (v8 == a3)
      {
        return 0;
      }

      else
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }
    }
  }

  return result;
}

uint64_t RIFFAtomStreamGetCurrentAtomGlobalOffset(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = a1[7] + a1[5] - a1[9] + a1[10];
  }

  if (a3)
  {
    *a3 = a1[9];
  }

  return 0;
}

uint64_t RIFFAtomStreamReadCurrentAtomDataAndCreateBBuf(uint64_t a1, uint64_t a2, size_t a3, CMBlockBufferRef *a4)
{
  v4 = *(a1 + 80);
  if (v4 <= a2 || a3 + a2 > v4)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    sourceBuffer = 0;
    v13 = 0;
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v4 - a2;
    }

    v9 = (*(a1 + 32))(a1 + 8, v8, *(a1 + 40) + a2 + *(a1 + 56), &sourceBuffer, &v13);
    if (!v9)
    {
      if (v13 == v8)
      {
        if (CMBlockBufferIsRangeContiguous(sourceBuffer, 0, v8))
        {
          v9 = 0;
          *a4 = sourceBuffer;
        }

        else
        {
          blockBufferOut = 0;
          v9 = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], sourceBuffer, *MEMORY[0x1E695E480], 0, 0, v8, 0, &blockBufferOut);
          v10 = sourceBuffer;
          *a4 = blockBufferOut;
          if (v10)
          {
            CFRelease(v10);
          }
        }
      }

      else
      {
        if (sourceBuffer)
        {
          CFRelease(sourceBuffer);
        }

        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }
    }

    return v9;
  }
}

uint64_t RIFFAtomStreamAdvanceToNextAtom(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 80) + *(a1 + 56);
  if (v2 == v1)
  {
    return 4294954956;
  }

  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v5 = *(a1 + 40);
  v6 = v5 + v1;
  result = ReadRIFFHeader(a1 + 8, v5 + v2, v5 + v1, &v13, &v12, &v11, &v10);
  if (!result)
  {
    v7 = v12;
    if (v12 >= 8 && (v12 + v2 + *(a1 + 40)) <= v6)
    {
      v8 = v13;
      *(a1 + 64) = v13;
      v9 = v10;
      *(a1 + 56) = v10 + v2;
      *(a1 + 72) = v7;
      *(a1 + 80) = v7 - v9;
      if (v8 == 1380533830 || v8 == 1279873876)
      {
        result = 0;
        *(a1 + 88) = v11;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t RegisterFigMutableMovieBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMutableMovieGetTypeID()
{
  MEMORY[0x19A8D3660](&FigMutableMovieGetClassID_sRegisterFigMutableMovieBaseTypeOnce, RegisterFigMutableMovieBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMutableMovieCreateEmpty(int a1, __CFString *a2, int a3, uint64_t a4, CFTypeRef *a5, int a6, int a7, int a8)
{
  v43 = 0;
  var38[0] = 0;
  if (a5)
  {
    if (!a2)
    {
      a2 = @"com.apple.quicktime-movie";
    }

    createMutableMovieObject(a1, a2, a3, var38, &v43, a6, a7, a8, v37, v38, v39, v40, v41, cf, v43, var38[0], var38[1], var38[2], var38[3], var38[4], var38[5], var38[6], var38[7], var38[8]);
    if (v10)
    {
      v35 = v10;
      goto LABEL_44;
    }

    if (v43)
    {
      if (a4)
      {
        v41 = 0;
        cf = 0;
        v39 = 0;
        v40 = 0;
        v38 = 0;
        v11 = *MEMORY[0x1E695E480];
        FigBaseObject = FigFormatReaderGetFigBaseObject(a4);
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          v13(FigBaseObject, @"PreferredVolume", v11, &cf);
        }

        v14 = cf;
        if (cf)
        {
          v15 = var38[0];
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v16)
          {
            v16(v15, @"PreferredVolume", v14);
          }
        }

        v17 = FigFormatReaderGetFigBaseObject(a4);
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v18(v17, @"PreferredRate", v11, &v41);
        }

        v19 = v41;
        if (v41)
        {
          v20 = var38[0];
          v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v21)
          {
            v21(v20, @"PreferredVolume", v19);
          }
        }

        v22 = FigFormatReaderGetFigBaseObject(a4);
        v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v23)
        {
          v23(v22, @"MovieMatrix", v11, &v40);
          v24 = v40;
          if (v40)
          {
            v25 = var38[0];
            v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v26)
            {
              v26(v25, @"MovieMatrix", v24);
            }
          }
        }

        v27 = FigFormatReaderGetFigBaseObject(a4);
        v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v28)
        {
          v28(v27, @"Timescale", v11, &v39);
          v29 = v39;
          if (v39)
          {
            v30 = var38[0];
            v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v31)
            {
              v31(v30, @"MovieTimeScale", v29);
            }
          }
        }

        FigMetadataCopyMovieMetadata(a4, v11, &v38);
        v32 = v38;
        if (v38)
        {
          v33 = var38[0];
          v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v34)
          {
            v34(v33, @"Metadata", v32);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v41)
        {
          CFRelease(v41);
        }

        if (v40)
        {
          CFRelease(v40);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        if (v38)
        {
          CFRelease(v38);
        }
      }

      v35 = 0;
      *a5 = var38[0];
      return v35;
    }

    FigMutableMovieCreateEmpty_cold_1(&cf);
  }

  else
  {
    FigMutableMovieCreateEmpty_cold_2(&cf);
  }

  v35 = cf;
LABEL_44:
  if (var38[0])
  {
    CFRelease(var38[0]);
  }

  return v35;
}

uint64_t FigMutableMovieCreateWithByteStream(int a1, uint64_t a2, __CFString *a3, int a4, void *a5)
{
  if (!a2)
  {
    FigMutableMovieCreateWithByteStream_cold_2(&v8);
    return v8;
  }

  if (!a5)
  {
    FigMutableMovieCreateWithByteStream_cold_1(&v8);
    return v8;
  }

  if (!a3)
  {
    a3 = @"com.apple.quicktime-movie";
  }

  MutableMovieObjectWithByteStream = createMutableMovieObjectWithByteStream(a1, a2, a3, a4);
  if (!MutableMovieObjectWithByteStream)
  {
    *a5 = 0;
  }

  return MutableMovieObjectWithByteStream;
}

void releaseTrack(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    v4 = a2[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[2];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a2[5];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a2[6];
    if (v7)
    {
      CFRelease(v7);
    }

    releaseSource(*MEMORY[0x1E695E480], a2[16]);

    CFAllocatorDeallocate(a1, a2);
  }
}

void releaseSource(const __CFAllocator *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a2 + 32);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a2 + 24);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a2 + 40);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a2 + 48);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a2 + 136);
    if (v9)
    {
      CFRelease(v9);
    }

    deleteTimeMappingArray(*(a2 + 64));
    deleteTimeMappingArray(*(a2 + 72));
    deleteTimeMappingArray(*(a2 + 80));
    deleteTimeMappingArray(*(a2 + 88));
    MediaSampleTimingGeneratorRelease(*(a2 + 56));

    CFAllocatorDeallocate(a1, a2);
  }
}

void deleteTimeMappingArray(void **a1)
{
  if (a1)
  {
    free(*a1);

    free(a1);
  }
}

uint64_t getMaximumEditedTrackDuration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E6960CC0];
  *a2 = *MEMORY[0x1E6960CC0];
  *(a2 + 16) = *(v4 + 16);
  FigSimpleMutexLock();
  v5 = *(a1 + 56);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
        memset(&v13, 0, sizeof(v13));
        getTrackEditedDuration(a1, ValueAtIndex, &v13);
        time1 = v13;
        v11 = *a2;
        if (CMTimeCompare(&time1, &v11) >= 1)
        {
          *a2 = v13;
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

__CFArray *copyArrayOfKnownMetadataFormats(const __CFAllocator *a1)
{
  Mutable = CFArrayCreateMutable(a1, 0, 0);
  v2 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, @"com.apple.quicktime.udta");
    CFArrayAppendValue(v2, @"com.apple.quicktime.mdta");
    CFArrayAppendValue(v2, @"org.mp4ra");
    CFArrayAppendValue(v2, @"com.apple.itunes");
    CFArrayAppendValue(v2, @"org.id3");
    CFArrayAppendValue(v2, @"com.apple.quicktime.HLS");
  }

  return v2;
}

uint64_t FigMutableMovieCopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, @"TrackProtectedStatus", a3, a4);
}

uint64_t CFArrayToFigMatrix(const __CFArray *a1, uint64_t a2)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  result = 4294950861;
  if (a1 && a2)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a1) && CFArrayGetCount(a1) == 9)
    {
      v6 = 0;
      v7 = 0;
      v8 = &v14;
LABEL_6:
      v9 = v8;
      v10 = 3;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
        v12 = CFNumberGetTypeID();
        if (v12 != CFGetTypeID(ValueAtIndex))
        {
          break;
        }

        ++v6;
        CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, v9);
        v9 += 4;
        if (!--v10)
        {
          ++v7;
          v8 = (v8 + 12);
          if (v7 != 3)
          {
            goto LABEL_6;
          }

          result = 0;
          v13 = v15;
          *a2 = v14;
          *(a2 + 16) = v13;
          *(a2 + 32) = v16;
          return result;
        }
      }
    }

    return 4294950861;
  }

  return result;
}

const __CFString *convertCFStringToOSType(const __CFString *result)
{
  *buffer = 0;
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    if (Length >= 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = Length;
    }

    v5.location = 0;
    v5.length = v3;
    if (v3 == CFStringGetBytes(v1, v5, 0, 0, 0, buffer, 4, 0))
    {
      return bswap32(*buffer);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MutableMovie_CopyFormatReader(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v9 = 0;
  if (a1 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      if (*DerivedStorage)
      {
        v8 = 0;
        result = 4294950869;
      }

      else
      {
        result = MovieFormatReaderCreateWithMovieInformation(*(DerivedStorage + 24), a2 != 0, &v9);
        v8 = v9;
      }
    }

    else
    {
      v8 = 0;
      result = 4294950861;
    }

    goto LABEL_6;
  }

  result = 4294950861;
  if (a4)
  {
    v8 = 0;
LABEL_6:
    *a4 = v8;
  }

  return result;
}

uint64_t MutableMovie_WriteHeader(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (!a1)
  {
    MutableMovie_WriteHeader_cold_5(&v11);
    return v11;
  }

  if (!a2)
  {
    MutableMovie_WriteHeader_cold_4(&v11);
    return v11;
  }

  if (!a3)
  {
    MutableMovie_WriteHeader_cold_3(&v11);
    return v11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    MutableMovie_WriteHeader_cold_2(&v11);
    return v11;
  }

  if (*DerivedStorage)
  {
    MutableMovie_WriteHeader_cold_1(&v11);
    return v11;
  }

  FigFileDoesFileExist();
  v8 = CMByteStreamCreateForFileURL();
  if (v8)
  {
    return v8;
  }

  else
  {
    return writeHeaderToByteStream(a1, a2, 0, a4);
  }
}

uint64_t MutableMovie_WriteHeaderToByteStream(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (!a1)
  {
    MutableMovie_WriteHeaderToByteStream_cold_5(&v10);
    return v10;
  }

  if (!a2)
  {
    MutableMovie_WriteHeaderToByteStream_cold_4(&v10);
    return v10;
  }

  if (!a3)
  {
    MutableMovie_WriteHeaderToByteStream_cold_3(&v10);
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    MutableMovie_WriteHeaderToByteStream_cold_2(&v10);
    return v10;
  }

  if (*DerivedStorage)
  {
    MutableMovie_WriteHeaderToByteStream_cold_1(&v10);
    return v10;
  }

  return writeHeaderToByteStream(a1, a2, a3, a4);
}

uint64_t createMovieHeaderMakerFromMiP(uint64_t a1, const void *a2, void *a3)
{
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (*DerivedStorage)
    {
      v7 = 4294950869;
    }

    else
    {
      v7 = 4294950861;
      if (a2 && a3)
      {
        v8 = MovieInformationLockForRead(a2);
        if (v8 || (v8 = MovieHeaderMakerCreateWithMovieInformation(*MEMORY[0x1E695E480], a2, 0, &v20), v8))
        {
          v7 = v8;
          goto LABEL_21;
        }

        if (!v20)
        {
          createMovieHeaderMakerFromMiP_cold_1(&v19);
          v7 = v19;
          goto LABEL_21;
        }

        TrackCount = MovieInformationGetTrackCount(a2);
        if (TrackCount < 1)
        {
LABEL_18:
          v7 = 0;
        }

        else
        {
          v10 = TrackCount;
          v11 = 0;
          while (1)
          {
            v19 = 0;
            TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(a2, v11);
            v18 = 0;
            if (!TrackForTrackIndex)
            {
              break;
            }

            v13 = TrackForTrackIndex;
            BasicInfo = MovieTrackGetBasicInfo(TrackForTrackIndex, 0, &v18);
            if (BasicInfo)
            {
              goto LABEL_23;
            }

            if (!v18)
            {
              break;
            }

            BasicInfo = MovieHeaderMakerAddTrack(v20, v13, &v19);
            if (BasicInfo || (Storage = MutableMovieTrackGetStorage(a1, v18)) != 0 && (v16 = *(Storage + 6)) != 0 && (BasicInfo = MovieHeaderMakerTrackSetSampleReferenceBaseURL(v20, v19, v16), BasicInfo))
            {
LABEL_23:
              v7 = BasicInfo;
              goto LABEL_19;
            }

            if (v10 == ++v11)
            {
              goto LABEL_18;
            }
          }

          v7 = 4294950872;
        }

LABEL_19:
        MovieInformationUnlockForRead(a2);
      }
    }
  }

  else
  {
    v7 = 4294950861;
  }

  if (a3)
  {
LABEL_21:
    *a3 = v20;
  }

  return v7;
}

uint64_t CMByteStreamWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4, 0);
}

void syncPropertiesOfNewTrackWithSourceTrackUsingTrackReaderOrOptionsDictionary(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"TrackEnabled", a3, a4);
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"TrackLanguageCode", a3, a4);
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"ExtendedLanguageTagString", a3, a4);
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"TrackTimescale", a3, a4);
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"Volume", a3, a4);
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"TrackMatrix", a3, a4);
  if (a4)
  {
    v8[0] = a1;
    v8[1] = a2;
    CFDictionaryApplyFunction(a4, setTrackPropertiesFromOptionsDictionary, v8);
  }
}

void setTrackPropertyFromTrackReaderOrOptionsDictionary(uint64_t a1, uint64_t a2, __CFString *cf1, uint64_t a4, const __CFDictionary *a5)
{
  cf = 0;
  if (CFEqual(cf1, @"TrackTimescale"))
  {
    v10 = @"MediaTimeScale";
  }

  else if (CFEqual(cf1, @"TrackLanguageCode"))
  {
    v10 = @"LanguageCode";
  }

  else if (CFEqual(cf1, @"ExtendedLanguageTagString"))
  {
    v10 = @"ExtendedLanguageTag";
  }

  else if (CFEqual(cf1, @"TrackFormatDescriptionArray"))
  {
    v10 = @"FormatDescriptionArray";
  }

  else if (CFEqual(cf1, @"TrackExcludeFromAutoSelection"))
  {
    v10 = @"IsExcludedFromAutoselection";
  }

  else if (CFEqual(cf1, @"TrackIsSelfContained"))
  {
    v10 = @"IsSelfContained";
  }

  else
  {
    v10 = cf1;
  }

  if (a5 && CFDictionaryContainsKey(a5, cf1))
  {
    Value = CFDictionaryGetValue(a5, cf1);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v12)
    {

      v12(a1, a2, v10, Value);
    }
  }

  else if (a4)
  {
    FigBaseObject = FigTrackReaderGetFigBaseObject(a4);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      if (!v14(FigBaseObject, cf1, *MEMORY[0x1E695E480], &cf))
      {
        v15 = cf;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v16)
        {
          v16(a1, a2, v10, v15);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

uint64_t setTrackPropertiesFromOptionsDictionary(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    if (a3)
    {
      v4 = result;
      v5 = *a3;
      v6 = *(a3 + 2);
      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 16);
      result = VTable + 16;
      v9 = *(v8 + 56);
      if (v9)
      {

        return v9(v5, v6, v4, a2);
      }
    }
  }

  return result;
}

uint64_t FigFormatReaderCopyTrackByID_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3, 0);
}

uint64_t setClosedCaptionTrackDimensionsIfNeeded(uint64_t a1)
{
  v11 = 0;
  TrackCount = MovieInformationGetTrackCount(a1);
  if (TrackCount < 1)
  {
    return 0;
  }

  v3 = TrackCount;
  for (i = 0; i != v3; ++i)
  {
    TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(a1, i);
    if (MovieTrackGetMediaType(TrackForTrackIndex) == 1986618469)
    {
      MovieTrackGetSpatialInformation(TrackForTrackIndex, &v11 + 1, &v11, 0);
    }
  }

  result = 0;
  if (*(&v11 + 1) != 0.0 && *&v11 != 0.0 && v3 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = MovieInformationFindTrackForTrackIndex(a1, v8);
      if (MovieTrackGetMediaType(v9) == 1668047728)
      {
        v10 = 0;
        MovieTrackGetSpatialInformation(v9, &v10 + 1, &v10, 0);
        if (*(&v10 + 1) == 0.0 || *&v10 == 0.0)
        {
          result = MovieTrackSetTrackDimensions(v9, *(&v11 + 1), *&v11);
          if (result)
          {
            break;
          }
        }
      }

      if (v3 == ++v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t addSample(CMSampleBufferRef sbuf, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return addSampleBufferToTrack(*a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), sbuf);
  }

  else
  {
    return 4294950861;
  }
}

uint64_t addSampleBufferToTrack(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, CMSampleBufferRef sbuf)
{
  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  v43 = 0;
  timingArrayEntriesNeededOut = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v11 = *(a1 + 128);
  OutputSampleTimingInfoArray = CMSampleBufferGetOutputSampleTimingInfoArray(sbuf, 0, 0, &timingArrayEntriesNeededOut);
  if (OutputSampleTimingInfoArray != -12736)
  {
    v14 = OutputSampleTimingInfoArray;
    if (OutputSampleTimingInfoArray)
    {
      v13 = 0;
      goto LABEL_6;
    }

    if ((timingArrayEntriesNeededOut - 0x38E38E38E38E38FLL) < 0xFC71C71C71C71C72)
    {
      v13 = 0;
      v14 = 4294950861;
      goto LABEL_6;
    }

    v15 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
    if (!v15)
    {
      v14 = 4294950861;
      v13 = v41;
      goto LABEL_6;
    }

    v16 = v15;
    v17 = CMSampleBufferGetOutputSampleTimingInfoArray(sbuf, timingArrayEntriesNeededOut, v15, 0);
    v18 = MEMORY[0x1E695E480];
    if (v17 || (v17 = MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArray(*(v11 + 56), NumSamples, timingArrayEntriesNeededOut, v16, &v43, &v42, &v41, &v40), v17) || v40 && (v42 && (sizeArrayEntriesNeededOut = *(v41 + 3 * v42 - 3), v19 = *(a1 + 16), ptr = sizeArrayEntriesNeededOut, MovieTrackSetLastSampleDecodeDuration(v19, &ptr), v17) || (MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(v41), v41 = 0, v17 = MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArrayWithDefaultLastSampleDuration(*(v11 + 56), &v43, &v42, &v41), v17)))
    {
      v14 = v17;
LABEL_39:
      MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(v41);
      CFAllocatorDeallocate(*v18, v16);
      return v14;
    }

    v20 = v43;
    v35 = v41;
    v36 = v42;
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
    v21 = *v18;
    v22 = CMCopyDictionaryOfAttachments(*v18, sbuf, 1u);
    sizeArrayEntriesNeededOut.value = 0;
    ptr.value = 0;
    v48[0] = 0;
    v47 = 0;
    if (CMSampleBufferGetSampleSizeArray(sbuf, 0, 0, &sizeArrayEntriesNeededOut.value) == -12735)
    {
      if (*a1 == 1936684398)
      {
        if (v20 >= 1)
        {
          v32 = v20;
          v46 = 0;
          IsNonInterleavedPCMAudioSample = FigMovieIsNonInterleavedPCMAudioSample(sbuf, &v46);
          allocator = v21;
          if (IsNonInterleavedPCMAudioSample)
          {
            goto LABEL_29;
          }

          if (!v46)
          {
            IsNonInterleavedPCMAudioSample = FigMovieCreateContiguousBBufFromNonContiguousAudioSample(sbuf, v21, &v47, v21, &sizeArrayEntriesNeededOut.value, &ptr);
            if (!IsNonInterleavedPCMAudioSample)
            {
              v24 = v47;
              *(*(a1 + 128) + 96) = a4;
              if (!v24)
              {
                v14 = 0;
                goto LABEL_30;
              }

              goto LABEL_27;
            }

LABEL_29:
            v14 = IsNonInterleavedPCMAudioSample;
            goto LABEL_30;
          }

          addSampleBufferToTrack_cold_1(&valuePtr);
          v14 = valuePtr;
LABEL_30:
          v21 = allocator;
          if (!v22)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }
      }

      else
      {
        *(*(a1 + 128) + 96) = a4;
      }

      v14 = 4294954561;
      if (!v22)
      {
LABEL_35:
        if (v47)
        {
          CFRelease(v47);
        }

        if (ptr.value)
        {
          CFAllocatorDeallocate(v21, ptr.value);
        }

        goto LABEL_39;
      }

LABEL_34:
      CFRelease(v22);
      goto LABEL_35;
    }

    v32 = v20;
    allocator = v21;
    v25 = MEMORY[0x19A8CC720](v21, 8 * sizeArrayEntriesNeededOut.value, 0x100004000313F17, 0);
    ptr.value = v25;
    SampleSizeArray = CMSampleBufferGetSampleSizeArray(sbuf, sizeArrayEntriesNeededOut.value, v25, 0);
    if (SampleSizeArray)
    {
      v14 = SampleSizeArray;
    }

    else
    {
      DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
      if (DataBuffer || (DataBuffer = CMSampleBufferGetImageBuffer(sbuf)) != 0)
      {
        v24 = DataBuffer;
        *(*(a1 + 128) + 96) = a4;
        v18 = MEMORY[0x1E695E480];
LABEL_27:
        IsNonInterleavedPCMAudioSample = MovieTrackFindOrAddSampleDescription(*(a1 + 16), FormatDescription, a2, v48);
        if (!IsNonInterleavedPCMAudioSample)
        {
          MovieInformationEvaluateTrackAlternateGroupAssignment(*(a1 + 8), *(a1 + 16));
          IsNonInterleavedPCMAudioSample = MediaDataChunkWriterTrackAppendSampleData(*(a1 + 24), *(a1 + 32), a3, v24, v48[0], v32, v36, v35, sizeArrayEntriesNeededOut.value, ptr.value, SampleAttachmentsArray, v22);
        }

        goto LABEL_29;
      }

      v29 = CMGetAttachment(sbuf, *MEMORY[0x1E6960528], 0);
      *(*(a1 + 128) + 96) = a4;
      if (v29)
      {
        valuePtr = 0;
        CFNumberGetValue(v29, kCFNumberSInt64Type, &valuePtr);
        v30 = CMGetAttachment(sbuf, *MEMORY[0x1E6960530], 0);
        appended = MovieTrackFindOrAddSampleDescription(*(a1 + 16), FormatDescription, v30, v48);
        if (!appended)
        {
          MovieInformationEvaluateTrackAlternateGroupAssignment(*(a1 + 8), *(a1 + 16));
          appended = MediaDataChunkWriterTrackAppendSampleReference(*(a1 + 24), *(a1 + 32), valuePtr, v48[0], v20, v36, v35, sizeArrayEntriesNeededOut.value, v25, SampleAttachmentsArray, v22);
        }

        v14 = appended;
        v18 = MEMORY[0x1E695E480];
        if (!v22)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v14 = 0;
    }

    v18 = MEMORY[0x1E695E480];
    goto LABEL_30;
  }

  v13 = 0;
  v14 = 0;
LABEL_6:
  MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(v13);
  return v14;
}

uint64_t writeMdatHeader(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    writeMdatHeader_cold_1(&v2, a1, &v3);
  }

  else
  {
    writeMdatHeader_cold_2(&v3);
  }

  return v3;
}

CMTime *GetTotalEditSegmentDuration@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  v4 = MEMORY[0x1E6960CC0];
  *&a2->value = *MEMORY[0x1E6960CC0];
  a2->epoch = *(v4 + 16);
  LODWORD(v4) = result[34].value;
  v5 = (v4 - 1);
  if (v4 >= 1)
  {
    v12 = v2;
    v13 = v3;
    v6 = (result[33].epoch + 96 * v5 + 48);
    v7 = v5 + 1;
    while ((*(v6 - 36) & 1) == 0)
    {
      v6 -= 6;
      if (v7-- <= 1)
      {
        return result;
      }
    }

    v9 = *v6;
    v10 = v6[2];
    *&v11.start.epoch = v6[1];
    *&v11.duration.timescale = v10;
    *&v11.start.value = v9;
    return CMTimeRangeGetEnd(a2, &v11);
  }

  return result;
}

void releaseSourceArray(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v3 - 2);
        v5 = CFGetAllocator(a1);
        releaseSource(v5, ValueAtIndex);
        --v3;
      }

      while (v3 > 1);
    }

    CFRelease(a1);
  }
}

__n128 appendToTimeRangeArray(char **a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1[1];
    v5 = a1[2];
    v6 = *a1;
    if (v4 == v5)
    {
      a1[2] = (2 * v4);
      v6 = malloc_type_realloc(v6, 96 * v4, 0x1000040EED21634uLL);
      *a1 = v6;
      v4 = a1[1];
    }

    a1[1] = v4 + 1;
    v7 = &v6[48 * v4];
    result = *a2;
    v9 = *(a2 + 32);
    *(v7 + 1) = *(a2 + 16);
    *(v7 + 2) = v9;
    *v7 = result;
  }

  return result;
}

__n128 appendToTimeMappingArray(char **a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1[1];
    v5 = a1[2];
    v6 = *a1;
    if (v4 == v5)
    {
      a1[2] = (2 * v4);
      v6 = malloc_type_realloc(v6, 192 * v4, 0x1000040565EDBD2uLL);
      *a1 = v6;
      v4 = a1[1];
    }

    a1[1] = v4 + 1;
    v7 = &v6[96 * v4];
    v8 = *(a2 + 16);
    *v7 = *a2;
    *(v7 + 1) = v8;
    result = *(a2 + 32);
    v10 = *(a2 + 48);
    v11 = *(a2 + 80);
    *(v7 + 4) = *(a2 + 64);
    *(v7 + 5) = v11;
    *(v7 + 2) = result;
    *(v7 + 3) = v10;
  }

  return result;
}

double OUTLINED_FUNCTION_8_47()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_12_41()
{
  v0 = *&STACK[0x300];
  *&STACK[0x490] = *&STACK[0x2F0];
  *&STACK[0x4A0] = v0;
  result = *&STACK[0x310];
  *&STACK[0x4B0] = *&STACK[0x310];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_38@<X0>(__int128 a1@<0:X2, 8:X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, __int128 a5, __int128 time2a, uint64_t time2_16, uint64_t a8, CMTime *time1, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t time1a, uint64_t time1_8, uint64_t time1_16)
{
  time1_16 = a2;
  time2a = a5;
  time2_16 = v22;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_16_31(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 valuePtr)
{
  valuePtr = 0;

  return CFNumberGetValue(v19, kCFNumberSInt16Type, &valuePtr);
}

uint64_t OUTLINED_FUNCTION_18_27()
{

  return CMByteStreamWriteBlockBuffer();
}

__n128 OUTLINED_FUNCTION_19_30@<Q0>(unint64_t a1@<X8>)
{
  STACK[0x2A0] = a1;
  v3 = v1[4];
  *&STACK[0x350] = v1[3];
  *&STACK[0x360] = v3;
  *&STACK[0x370] = v1[5];
  v4 = *(v2 - 208);
  *&STACK[0x2F0] = *(v2 - 224);
  *&STACK[0x300] = v4;
  result = *(v2 - 192);
  *&STACK[0x310] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_24_20()
{
  result = *v0;
  *(v1 - 128) = *v0;
  *(v1 - 112) = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_29_19()
{
  v1 = *(v0 + 64);
  *&STACK[0x460] = *(v0 + 48);
  *&STACK[0x470] = v1;
  result = *(v0 + 80);
  *&STACK[0x480] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_30_17()
{
  result = *(v0 - 224);
  *&STACK[0x2F0] = result;
  STACK[0x300] = *(v0 - 208);
  return result;
}

__n128 OUTLINED_FUNCTION_35_13()
{
  *&STACK[0x490] = *&STACK[0x260];
  STACK[0x4A0] = STACK[0x270];
  result = *(v0 - 128);
  *&STACK[0x460] = result;
  STACK[0x470] = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_14@<X0>(uint64_t a1@<X8>, CMTime *time1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a11, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

__n128 OUTLINED_FUNCTION_45_13(__n128 a1)
{
  *&STACK[0x4B0] = a1;
  v1 = *&STACK[0x2A0];
  *&STACK[0x460] = *&STACK[0x290];
  *&STACK[0x470] = v1;
  result = *&STACK[0x2B0];
  *&STACK[0x480] = *&STACK[0x2B0];
  return result;
}

uint64_t OUTLINED_FUNCTION_49_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, CMTime *time2, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 time2a, CMTime *time2_16)
{
  time2a = a12;
  time2_16 = time2;

  return CMTimeCompare((v22 - 128), &time2a);
}

void *OUTLINED_FUNCTION_50_9()
{

  return malloc_type_calloc(1uLL, 0x18uLL, 0x102004024DAA5DEuLL);
}

uint64_t OUTLINED_FUNCTION_51_14()
{

  return CMBaseObjectGetVTable();
}

__n128 OUTLINED_FUNCTION_52_14()
{
  result = *&STACK[0x238];
  *&STACK[0x350] = *&STACK[0x238];
  STACK[0x360] = STACK[0x248];
  return result;
}

double OUTLINED_FUNCTION_53_14()
{
  result = 0.0;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CMTime *time2)
{

  return CMTimeCompare(&a9, &time2);
}

uint64_t OUTLINED_FUNCTION_61_12(__n128 a1)
{
  *&STACK[0x3F0] = a1;
  *&STACK[0x400] = a1;
  *&STACK[0x3D0] = a1;
  *&STACK[0x3E0] = a1;
  *&STACK[0x3B0] = a1;
  *&STACK[0x3C0] = a1;

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_62_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time1, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t time1a)
{
  *(v14 - 112) = v13;

  return CMTimeCompare(&time1a, (v14 - 128));
}

void *OUTLINED_FUNCTION_63_9(size_t a1)
{

  return malloc_type_calloc(a1, 0x60uLL, 0x1000040565EDBD2uLL);
}

void *OUTLINED_FUNCTION_64_10(size_t a1)
{

  return malloc_type_calloc(a1, 0x30uLL, 0x1000040EED21634uLL);
}

CFDictionaryRef OUTLINED_FUNCTION_65_9(uint64_t a1, const __CFAllocator *a2, CMTimeRange *range, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 rangea, __int128 range_16, __int128 range_32, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19)
{
  rangea = a17;
  range_16 = a18;
  range_32 = a19;

  return CMTimeRangeCopyAsDictionary(&rangea, a2);
}

uint64_t OUTLINED_FUNCTION_66_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int valuePtr)
{
  valuePtr = 1065353216;

  return CFNumberGetValue(v15, kCFNumberFloat32Type, &valuePtr);
}

__n128 OUTLINED_FUNCTION_67_10()
{
  result = *&STACK[0x460];
  *&STACK[0x350] = *&STACK[0x460];
  STACK[0x360] = STACK[0x470];
  return result;
}

__n128 OUTLINED_FUNCTION_70_7()
{
  result = *&STACK[0x220];
  *&STACK[0x350] = *&STACK[0x220];
  STACK[0x360] = STACK[0x230];
  return result;
}

__n128 OUTLINED_FUNCTION_78_5()
{
  result = *(v0 - 256);
  *&STACK[0x420] = result;
  STACK[0x430] = *(v0 - 240);
  return result;
}

__n128 OUTLINED_FUNCTION_83_5()
{
  result = *&STACK[0x490];
  *(v0 + 24) = *&STACK[0x490];
  *(v0 + 40) = STACK[0x4A0];
  return result;
}

__n128 OUTLINED_FUNCTION_84_3()
{
  result = *&STACK[0x490];
  *(v0 + 72) = *&STACK[0x490];
  *(v0 + 88) = STACK[0x4A0];
  return result;
}

uint64_t OUTLINED_FUNCTION_92_5()
{

  return CMByteStreamWriteBlockBuffer();
}

CMTime *OUTLINED_FUNCTION_94_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = a1;

  return CMTimeSubtract(&STACK[0x460], &STACK[0x490], (v1 - 256));
}

CMTime *OUTLINED_FUNCTION_95_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = a1;

  return CMTimeSubtract(&STACK[0x490], (v1 - 256), &STACK[0x460]);
}

uint64_t OUTLINED_FUNCTION_96_3()
{

  return CMBaseObjectGetVTable();
}

CFTypeID OUTLINED_FUNCTION_97_6()
{

  return CFGetTypeID(v0);
}

void __FigNWPathEvaluatorCreate_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void figNwPathEvaluatorFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    nw_path_evaluator_cancel();
    v1 = *(DerivedStorage + 8);
    if (v1)
    {
      nw_release(v1);
    }

    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figNwPathEvaluatorCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (a1)
  {
    if (a4)
    {
      if (CFEqual(cf1, @"kFigNetworkPathEvaluatorProperty_EstimatedDownloadThroughput"))
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v10 = 0;
        v11 = &v10;
        v12 = 0x2000000000;
        v13 = 0;
        v6 = *DerivedStorage;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __figNwPathEvaluatorCopyProperty_block_invoke;
        block[3] = &unk_1E7490130;
        block[4] = &v10;
        block[5] = &v14;
        block[6] = DerivedStorage;
        dispatch_sync(v6, block);
        if (!*(v15 + 6))
        {
          *a4 = v11[3];
        }

        _Block_object_dispose(&v10, 8);
      }

      else
      {
        *(v15 + 6) = FigSignalErrorAtGM();
      }
    }

    else
    {
      figNwPathEvaluatorCopyProperty_cold_1();
    }
  }

  else
  {
    figNwPathEvaluatorCopyProperty_cold_2();
  }

  v7 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __figNwPathEvaluatorCopyProperty_block_invoke(uint64_t a1)
{
  v2 = nw_path_evaluator_copy_path();
  if (v2)
  {
    v3 = v2;
    nw_path_get_estimated_download_throughput();
    *(*(*(a1 + 32) + 8) + 24) = FigCFNumberCreateUInt64();
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = -12786;
    }

    nw_release(v3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = -12783;
  }
}

CFDictionaryRef figNwPathEvaluatorCopyCurrentPathInformation(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = *DerivedStorage;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __figNwPathEvaluatorCopyCurrentPathInformation_block_invoke;
    v6[3] = &unk_1E7490158;
    v6[4] = &v7;
    v6[5] = DerivedStorage;
    dispatch_sync(v2, v6);
    v3 = fnpe_CopyCurrentPathInformationFromNWPath(v8[3]);
  }

  else
  {
    figNwPathEvaluatorCopyCurrentPathInformation_cold_1();
    v3 = 0;
  }

  v4 = v8[3];
  if (v4)
  {
    nw_release(v4);
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

CFDictionaryRef fnpe_CopyCurrentPathInformationFromNWPath(NSObject *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    if (a1)
    {
      v5 = nw_path_copy_interface();
      FigNetworkInterfaceGetTypeFromNWInterface();
      if (v5)
      {
        nw_release(v5);
      }

      FigNetworkPathInformationSetInterfaceType();
      v6 = ((nw_path_get_status(a1) - 1) & 0xFFFFFFFD) == 0;
      FigNetworkPathInformationSetHostIsReachable(v4, v6);
      is_local = nw_path_is_local();
      FigNetworkPathInformationSetHostIsLocal(v4, is_local);
      if (((nw_path_get_status(a1) - 1) & 0xFFFFFFFD) != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = MEMORY[0x19A8D6300](a1, 2);
      }

      FigNetworkPathInformationSetDoesUseCellular(v4, v8);
      v9 = MEMORY[0x19A8D62E0](a1);
    }

    else
    {
      FigNetworkPathInformationSetInterfaceType();
      FigNetworkPathInformationSetHostIsReachable(v4, 0);
      FigNetworkPathInformationSetHostIsLocal(v4, 0);
      FigSignalErrorAtGM();
      FigNetworkPathInformationSetDoesUseCellular(v4, 0);
      FigSignalErrorAtGM();
      v9 = 0;
    }

    FigNetworkPathInformationSetExpensive(v4, v9);
    Copy = CFDictionaryCreateCopy(v2, v4);
    CFRelease(v4);
    return Copy;
  }

  else
  {
    fnpe_CopyCurrentPathInformationFromNWPath_cold_1();
    return 0;
  }
}

uint64_t __FigNwPathEvaluatorGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t OUTLINED_FUNCTION_2_124()
{

  return FigCFStringGetCStringPtrAndBufferToFree();
}

uint64_t FigPlaybackCoordinatorCreate()
{
  v12 = *MEMORY[0x1E69E9840];
  cf = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  v3 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigPlaybackCoordinatorGetClassID();
  v0 = CMDerivedObjectCreate();
  if (v0)
  {
    return v0;
  }

  FigPlaybackCoordinatorCreate_cold_8(v11);
  return v11[0];
}

void playbackCoordinator_performStartupTaskNegotiatingTimingWithCoordinatedPlaybackGroup(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v47 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    playbackCoordinator_performStartupTaskNegotiatingTimingWithCoordinatedPlaybackGroup_cold_1(a4, a2, a5);
    return;
  }

  v10 = DerivedStorage;
  FigCFDictionaryGetFloat32IfPresent();
  playbackCoordinator_completePendingStartupTask(a1, 0);
  FigCFDictionaryGetValue();
  *(v10 + 192) = a5;
  *(v10 + 200) = a4;
  *(v10 + 184) = a2;
  v11 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  *(v10 + 208) = CFDateCreate(v11, Current);
  if (!*(v10 + 104))
  {
    if (*(v10 + 304))
    {
      playbackCoordinator_completePendingStartupTask(a1, 1);
    }

    if (!FigCFEqual())
    {
      return;
    }

    v45 = -1;
    v44 = 0;
    type = **&MEMORY[0x1E6960C70];
    v42 = type;
    v41 = 0.0;
    v40 = 0;
    FigPlaybackCoordinatorGetCMBaseObject(a1);
    v15 = CMBaseObjectGetDerivedStorage();
    v16 = *(MEMORY[0x1E6960C98] + 16);
    v39[0] = *MEMORY[0x1E6960C98];
    v39[1] = v16;
    v39[2] = *(MEMORY[0x1E6960C98] + 32);
    if (*(v15 + 184) != a2)
    {
      return;
    }

    v17 = v15;
    if (!*(v15 + 48) || *(v15 + 64) != 10000)
    {
      return;
    }

    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetFloat32IfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    if (v41 != 0.0 && (playbackCoordinator_systemEventSuspensionsActive(a1) || figPlaybackCoordinator_isSuspendedForReason(a1)))
    {
      v21 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (dword_1ED4CBE70)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexLock();
      v24 = playbackCoordinator_systemEventSuspensionsActive(a1);
      v25 = v24;
      if (v24)
      {
        playbackCoordinator_endAllSystemEventSuspensions(a1);
      }

      v26 = *MEMORY[0x1E69632F8];
      if (figPlaybackCoordinator_isSuspendedForReason(a1))
      {
        figPlaybackCoordinator_endSuspensionForReason(a1, v26);
      }

      if (FigTimelineCoordinatorIsSuspended())
      {
        if (dword_1ED4CBE70)
        {
          v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        playbackCoordinator_completePendingStartupTask(a1, 1);
        FigSimpleMutexUnlock();
      }

      else
      {
        *(v17 + 328) = v25;
        FigSimpleMutexUnlock();
        if (*(v17 + 224))
        {
          if (dword_1ED4CBE70)
          {
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 0);
          if (!v21)
          {
            return;
          }

LABEL_42:
          v20 = v21;
          goto LABEL_16;
        }
      }

      if (!v21)
      {
        return;
      }

      goto LABEL_42;
    }

    if (FigTimelineCoordinatorIsSuspended())
    {
      if (dword_1ED4CBE70)
      {
        goto LABEL_49;
      }

      goto LABEL_12;
    }

    if (*(v17 + 176) == v41)
    {
      if (!*(v17 + 112))
      {
        time = v42;
        if (!figPlaybackCoordinator_isTimeInInterstitialRange(a1, &time, v39))
        {
          if (dword_1ED4CBE70)
          {
            v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          return;
        }

        if (!dword_1ED4CBE70)
        {
          goto LABEL_12;
        }

        goto LABEL_49;
      }

      if (!*(v17 + 240))
      {
        if (dword_1ED4CBE70)
        {
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v18 = a1;
        v19 = 0;
        goto LABEL_13;
      }

      if (*(v17 + 128) & 1) != 0 && *(v17 + 164) != 0.0 && (*(v17 + 152))
      {
        v37 = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
        *v37 = CFRetain(a1);
        v37[2] = a2;
        if (dword_1ED4CBE70)
        {
          v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        dispatch_async_f(*(v17 + 280), v37, playbackCoordinator_setReferenceTimebaseAndCompleteStartupTask);
        return;
      }

      if (dword_1ED4CBE70)
      {
LABEL_49:
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_12:
      v18 = a1;
      v19 = 1;
LABEL_13:
      playbackCoordinator_completePendingStartupTask(v18, v19);
      return;
    }

    if (dword_1ED4CBE70)
    {
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if (*(v17 + 272))
    {
      if (!dword_1ED4CBE70)
      {
        goto LABEL_65;
      }

      goto LABEL_55;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    if (*(v17 + 328))
    {
      if (!dword_1ED4CBE70)
      {
LABEL_65:
        playbackCoordinator_completePendingStartupTask(a1, 0);
        FigSimpleMutexUnlock();
        return;
      }

LABEL_55:
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_65;
    }

    FigSimpleMutexUnlock();
    if (*(v17 + 224))
    {
      if (dword_1ED4CBE70)
      {
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 0);
    }

    if (*(v17 + 176) == v41 || v41 == 0.0)
    {
      Mutable = 0;
LABEL_79:
      v36 = 1;
      goto LABEL_80;
    }

    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69632D8], *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69632E0], *MEMORY[0x1E695E4C0]);
    if (FigTimelineCoordinatorCoordinateRateChange())
    {
      v36 = 0;
    }

    else
    {
      *(v17 + 96) = v45;
      *(v17 + 176) = v41;
      *(v17 + 112) = 0;
      time = v42;
      if (!figPlaybackCoordinator_isTimeInInterstitialRange(a1, &time, v39))
      {
        goto LABEL_79;
      }

      if (dword_1ED4CBE70)
      {
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v36 = 1;
      playbackCoordinator_completePendingStartupTask(a1, 1);
    }

LABEL_80:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v36)
    {
      return;
    }

    goto LABEL_12;
  }

  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1ED4CBE70)
  {
    LODWORD(v39[0]) = 0;
    LOBYTE(type.value) = 0;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  playbackCoordinator_completePendingStartupTask(a1, 1);
  if (v13)
  {
    v20 = v13;
LABEL_16:
    CFRelease(v20);
  }
}

void playbackCoordinator_pause(uint64_t a1, float a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, const void *a7, int a8, uint64_t a9, void (*a10)(uint64_t, void))
{
  v31[23] = *MEMORY[0x1E69E9840];
  v31[0] = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v18 = DerivedStorage;
    cf = FigCFWeakReferenceHolderCopyReferencedObject();
    if (cf)
    {
      if (*(v18 + 48) && FigCFEqual() && (!*(v18 + 496) || *(v18 + 456)))
      {
        figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, a10, a9, 0);
        v19 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v21 = CFDateCreate(v19, Current);
        v22 = *(v18 + 256);
        *(v18 + 256) = a7;
        *(v18 + 264) = v21;
        if (a7)
        {
          CFRetain(a7);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        if (a8 == 5)
        {
          FigSimpleMutexLock();
          *(v18 + 328) = 0;
          FigSimpleMutexUnlock();
        }

        else if (!a8)
        {
          figPlaybackCoordinator_updateReportingStats(a1);
        }

        *(v18 + 112) = 0;
        v23 = a5 != 0;
        if (a5)
        {
          v24 = a2;
        }

        else
        {
          v24 = 0.0;
        }

        *(v18 + 176) = v24;
        *(v18 + 248) = 0;
        if (a2 == 0.0)
        {
          v23 = 0;
        }

        *(v18 + 252) = v23;
        if (*(v18 + 96) <= a4)
        {
          playbackCoordinator_completePendingStartupTask(a1, 0);
          if (dword_1ED4CBE70)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *(v18 + 240) = 1;
          if (!FPSupport_CreateSetRateOptions(v19, 33, v31))
          {
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            if (a5 && (a8 == 6 || !a8))
            {
              FigCFDictionarySetValue();
            }

            v28 = v31[0];
            v27 = cf;
            v29 = *(*(CMBaseObjectGetVTable() + 16) + 104);
            if (v29 && !v29(cf, v28, v24))
            {
              figPlaybackCoordinator_checkForCommandCompletion(a1);
            }

            goto LABEL_35;
          }
        }

        else
        {
          if (dword_1ED4CBE70)
          {
            v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 0);
        }

        v27 = cf;
LABEL_35:
        CFRelease(v27);
        if (v31[0])
        {
          CFRelease(v31[0]);
        }

        return;
      }

      v27 = cf;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  if (FigSignalErrorAtGM())
  {
    a10(a9, 0);
  }

  if (v27)
  {
    goto LABEL_35;
  }
}

void playbackCoordinator_prepareToSetRate(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, int a7, uint64_t a8, void (*a9)(uint64_t, void))
{
  v32 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = **&MEMORY[0x1E6960C70];
  if (a1)
  {
    v17 = DerivedStorage;
    v18 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v18)
    {
      if (a2 == 0.0)
      {
        playbackCoordinator_prepareToSetRate_cold_1(v31);
      }

      else if (*(v17 + 48))
      {
        if (FigCFEqual())
        {
          if (!*(v17 + 496) || *(v17 + 456))
          {
            figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, a9, a8, 0);
            v19 = *MEMORY[0x1E695E480];
            Current = CFAbsoluteTimeGetCurrent();
            v21 = CFDateCreate(v19, Current);
            v22 = *(v17 + 256);
            *(v17 + 256) = a6;
            *(v17 + 264) = v21;
            if (a6)
            {
              CFRetain(a6);
            }

            if (v22)
            {
              CFRelease(v22);
            }

            if (a7 == 5)
            {
              FigSimpleMutexLock();
              *(v17 + 328) = 0;
              FigSimpleMutexUnlock();
            }

            else if (!a7)
            {
              figPlaybackCoordinator_updateReportingStats(a1);
            }

            *(v17 + 112) = 0;
            *(v17 + 176) = a2;
            *(v17 + 248) = 0;
            *(v17 + 252) = 1;
            if (*(v17 + 96) <= a4)
            {
              playbackCoordinator_completePendingStartupTask(a1, 0);
              if (dword_1ED4CBE70)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              *(v17 + 240) = 1;
              if (FPSupport_CreateSetRateOptions(v19, 33, &cf))
              {
                goto LABEL_32;
              }

              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
              if (a7 == 6 || !a7)
              {
                FigCFDictionarySetValue();
              }

              v25 = cf;
              v26 = *(*(CMBaseObjectGetVTable() + 16) + 104);
              if (!v26 || v26(v18, v25, a2))
              {
                goto LABEL_32;
              }

              v27 = *(v17 + 48);
              v28 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v28)
              {
                v28(v27, &v29);
              }

              v31[0] = v29;
              if (!figPlaybackCoordinator_isInterstitialScheduledAtTime(a1, v31))
              {
                figPlaybackCoordinator_checkForCommandCompletion(a1);
LABEL_32:
                CFRelease(v18);
                if (cf)
                {
                  CFRelease(cf);
                }

                return;
              }

              FigTimelineCoordinatorSetReadinessHintFromTimelineControl();
            }

            else if (dword_1ED4CBE70)
            {
              v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 0);
            goto LABEL_32;
          }

          playbackCoordinator_prepareToSetRate_cold_2(v31);
        }

        else
        {
          playbackCoordinator_prepareToSetRate_cold_3(v31);
        }
      }

      else
      {
        playbackCoordinator_prepareToSetRate_cold_4(v31);
      }
    }

    else
    {
      playbackCoordinator_prepareToSetRate_cold_5(v31);
    }
  }

  else
  {
    playbackCoordinator_prepareToSetRate_cold_6(v31);
    v18 = 0;
  }

  if (LODWORD(v31[0].value))
  {
    a9(a8, 0);
  }

  if (v18)
  {
    goto LABEL_32;
  }
}

uint64_t playbackCoordinator_proposeTimelineForIdentifier(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return playbackCoordinator_proposeTimelineForIdentifier_cold_2();
  }

  if (!FigCFEqual())
  {
    return playbackCoordinator_proposeTimelineForIdentifier_cold_1();
  }

  return figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a1);
}

void figPlaybackCoordinator_transitionToNewCurrentItemAsync(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  figPlaybackCoordinator_transitionToNewCurrentItemIfReady(a1, v2);
  if (a1)
  {
    CFRelease(a1);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigCFRelease_9(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t figPlaybackCoordinator_Finalize(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v3 = CMBaseObjectGetDerivedStorage();
  if (v3[4])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
  }

  if (v3[2])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
  }

  figPlaybackCoordinator_removeAllItemListeners(a1);
  figPlaybackCoordinator_removeTimebaseNotificationListeners(a1, v3[7]);
  v3[4] = 0;
  figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 0);
  playbackCoordinator_completePendingStartupTask(a1, 1);
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v5 = v4;
  if (v4)
  {
    v6 = *(DerivedStorage + 40);
    if (v6)
    {
      v7 = *(DerivedStorage + 48);
      CFRetain(v4);
      if (v7)
      {
        CFRetain(v7);
      }

      CFRetain(v6);
      v8 = *(DerivedStorage + 280);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __figPlaybackCoordinator_Finalize_block_invoke;
      block[3] = &__block_descriptor_tmp_86;
      block[4] = v5;
      block[5] = v6;
      block[6] = v7;
      dispatch_async(v8, block);
    }
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 72) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 216) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 360) = 0;
  v9 = *(DerivedStorage + 16);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 16) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  v11 = *(DerivedStorage + 24);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 24) = 0;
  }

  v12 = *(DerivedStorage + 280);
  if (v12)
  {
    dispatch_release(v12);
    *(DerivedStorage + 280) = 0;
  }

  v13 = *(DerivedStorage + 168);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 168) = 0;
  }

  v14 = *(DerivedStorage + 296);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 296) = 0;
  }

  v15 = *(DerivedStorage + 304);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 304) = 0;
  }

  *(DerivedStorage + 312) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 288) = 0;
  v16 = *(DerivedStorage + 80);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 80) = 0;
  }

  v17 = *(DerivedStorage + 48);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 48) = 0;
  }

  v18 = *(DerivedStorage + 56);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 56) = 0;
  }

  v19 = *(DerivedStorage + 320);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 320) = 0;
  }

  v20 = *(DerivedStorage + 208);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 208) = 0;
  }

  v21 = *(DerivedStorage + 448);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 448) = 0;
  }

  v22 = *(DerivedStorage + 464);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 464) = 0;
  }

  v23 = *(DerivedStorage + 472);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 472) = 0;
  }

  v24 = *(DerivedStorage + 480);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 480) = 0;
  }

  figPlaybackCoordinator_resetInterstitialStateMachine(a1);
  if (v5)
  {
    CFRelease(v5);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

__CFString *figPlaybackCoordinator_CopyDebugDescription(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackCoordinator %p> [%d]", a1, *(DerivedStorage + 496));
  return Mutable;
}

uint64_t figPlaybackCoordinator_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v7 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE1E0](v7, a2, a3, a4);
}

uint64_t figPlaybackCoordinator_SetProperty(const void *a1, uint64_t a2, const void *a3)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    if (!a3 || (v6 = CFGetTypeID(a3), v6 != CFBooleanGetTypeID()))
    {
      figPlaybackCoordinator_SetProperty_cold_1(&v10);
      return v10;
    }

    v7 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    *v7 = v8;
    v7[1] = a3;
    dispatch_async_f(*(DerivedStorage + 280), v7, figPlaybackCoordinator_handleChangeInInterstitialActiveStatusOnQueue);
  }

  return FigTimelineCoordinatorSetProperty();
}

void figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 224);
  if (v9)
  {
    v10 = *(DerivedStorage + 232);
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 224) = a2;
  *(DerivedStorage + 232) = a3;
  *(DerivedStorage + 244) = 0;
  v11 = *(DerivedStorage + 256);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 256) = 0;
  }

  v12 = *(DerivedStorage + 264);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 264) = 0;
  }

  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 56))
  {
    v13 = figPlaybackCoordinator_copyGroupTimebaseFromCurrentItemTimebase(a1, &cf);
    if (!v9 || v13)
    {
      goto LABEL_18;
    }

    v14 = cf;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    v14 = 0;
  }

  if (a4)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v9(v10, v15);
  FigTimelineCoordinatorSetReadinessHintFromTimelineControl();
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t playbackCoordinator_completePendingStartupTask(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 192);
  if (result)
  {
    v14 = *(DerivedStorage + 192);
    v6 = *(DerivedStorage + 184);
    *(DerivedStorage + 184) = 0;
    v8 = *(DerivedStorage + 200);
    v7 = *(DerivedStorage + 208);
    *(DerivedStorage + 192) = 0;
    *(DerivedStorage + 200) = 0;
    if (v7)
    {
      v9 = *MEMORY[0x1E695E480];
      Current = CFAbsoluteTimeGetCurrent();
      v11 = CFDateCreate(v9, Current);
      if (v11)
      {
        v13 = v11;
        CFDateGetTimeIntervalSinceDate(v11, *(DerivedStorage + 208));
        figPlaybackCoordinator_updateReportingStats(a1);
        CFRelease(v13);
      }

      v12 = *(DerivedStorage + 208);
      if (v12)
      {
        CFRelease(v12);
        *(DerivedStorage + 208) = 0;
      }
    }

    return v14(v8, v6, a2);
  }

  return result;
}

__n128 figPlaybackCoordinator_resetInterstitialStateMachine(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 368);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 368) = 0;
  }

  v4 = *(DerivedStorage + 440);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 440) = 0;
  }

  figPlaybackCoordinator_clearInterstitialEventTimer(a1);
  *(DerivedStorage + 384) = 0;
  v5 = MEMORY[0x1E6960C98];
  v6 = *(MEMORY[0x1E6960C98] + 16);
  *(DerivedStorage + 392) = *MEMORY[0x1E6960C98];
  *(DerivedStorage + 408) = v6;
  result = v5[2];
  *(DerivedStorage + 424) = result;
  return result;
}

uint64_t figPlaybackCoordinator_removeAllItemListeners(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 48))
  {
    v2 = result;
    if (*(result + 69))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      result = FigNotificationCenterRemoveWeakListener();
      *(v2 + 69) = 0;
    }

    if (*(v2 + 68))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      result = FigNotificationCenterRemoveWeakListener();
      *(v2 + 68) = 0;
    }
  }

  return result;
}

uint64_t figPlaybackCoordinator_removeTimebaseNotificationListeners(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void figPlaybackCoordinator_playerCurrentItemDidChange(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  figPlaybackCoordinator_transitionToNewCurrentItemIfReady(a2, a4);
  if (v8 == *(DerivedStorage + 48) || (playbackCoordinator_endAllSystemEventSuspensions(a2), *(DerivedStorage + 496)))
  {
    if (!v8)
    {
      return;
    }
  }

  else
  {
    figPlaybackCoordinator_endPlayingInterstitialSuspension(a2);
    if (!v8)
    {
      return;
    }
  }

  CFRelease(v8);
}

void figPlaybackCoordinator_playerRateDidChange(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = **&MEMORY[0x1E6960C70];
  FigCFDictionaryGetFloat32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  if (dword_1ED4CBE70)
  {
    LODWORD(time1.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a2, 0, 0, 0);
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  CMBaseObjectGetDerivedStorage();
  LODWORD(theArray[0].value) = 0;
  FigCFDictionaryGetInt32IfPresent();
  v5 = *(DerivedStorage + 176);
  if (v5 != *&v10)
  {
    if (*&v10 == 0.0)
    {
      FigPlaybackCoordinatorGetCMBaseObject(a2);
      CMBaseObjectGetDerivedStorage();
      v14 = 0;
      FigCFDictionaryGetInt32IfPresent();
      LOBYTE(v15.value) = 0;
      LODWORD(theArray[0].value) = 0;
      if (!FigCFDictionaryGetInt32IfPresent() || LODWORD(theArray[0].value) <= 1 || FigCFDictionaryGetBooleanIfPresent() && LOBYTE(v15.value))
      {
        v6 = *(DerivedStorage + 48);
        if (v6)
        {
          FigPlaybackItemGetCurrentTime(v6, &v9);
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v15 = v9;
        figPlaybackCoordinator_getGroupTimeFromPlayerTime(a2, &v15, theArray);
        v9 = theArray[0];
        FigCFDictionarySetCMTime();
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69632D0], *MEMORY[0x1E695E4D0]);
        FigTimelineCoordinatorCoordinateRateChange();
        *(DerivedStorage + 96) = v11;
        *(DerivedStorage + 176) = v10;
        *(DerivedStorage + 112) = 0;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return;
      }

      if (figPlaybackCoordinator_playerHasPlaybackStalled())
      {
        v8 = MEMORY[0x1E6963328];
      }

      else if (figPlaybackCoordinator_playerIsAudioSessionInterrupted())
      {
        v8 = MEMORY[0x1E69632F0];
      }

      else
      {
        v8 = MEMORY[0x1E6963330];
      }

      if (*v8)
      {
        playbackCoordinator_beginSystemEventSuspensionForReason(a2, *v8);
      }
    }

    else
    {
      if (v5 == 0.0 || *(DerivedStorage + 104))
      {
        return;
      }

      FigTimelineCoordinatorCoordinateRateChange();
      *(DerivedStorage + 96) = v11;
    }

    *(DerivedStorage + 176) = v10;
    *(DerivedStorage + 112) = 0;
  }
}

void figPlaybackCoordinator_transitionToNewCurrentItemIfReady(const void *a1, uint64_t a2)
{
  v21 = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {
      v6(a2, 0, &v21);
      v7 = v21;
    }

    else
    {
      v7 = 0;
    }

    if (*(v5 + 496))
    {
      v8 = *(v5 + 48);
      if (v8)
      {
        if (!v7)
        {
          v20 = **&MEMORY[0x1E6960C70];
          v19 = v20;
          start = v20;
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v9)
          {
            v9(v8, &v20);
          }

          v10 = *(v5 + 48);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v11)
          {
            v11(v10, &v19);
          }

          time1.source.start = v20;
          time2.start = v19;
          if ((CMTimeCompare(&time1.source.start, &time2.start) & 0x80000000) == 0)
          {
            v12 = *(v5 + 480);
            if (v12)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
              memset(&time1, 0, sizeof(time1));
              CMTimeMappingMakeFromDictionary(&time1, ValueAtIndex);
              time2 = time1.target;
              CMTimeRangeGetEnd(&start, &time2);
              CMTimeMake(&time2.start, 1, 10);
              CMTimeMake(&v14, 1, 1000);
              CMTimeAdd(&rhs, &time2.start, &v14);
              v14 = start;
              CMTimeAdd(&time2.start, &v14, &rhs);
              start = time2.start;
            }
          }

          time1.source.start = start;
          playbackCoordinator_endCoordinatedPlaybackNotPossibleSuspension(a1, 4);
          figPlaybackCoordinator_beginPlayingPrimarySuspension(a1);
          v7 = v21;
        }
      }
    }

    figPlaybackCoordinator_transitionToNewCurrentItem(a1, v7);
    if (v21)
    {
      CFRelease(v21);
    }
  }
}

void playbackCoordinator_endAllSystemEventSuspensions(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = FigCFDictionaryCopyArrayOfValues();
  CFDictionaryRemoveAllValues(*(DerivedStorage + 296));
  FigSimpleMutexUnlock();
  FigTimelineCoordinatorEndSuspensions();
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t figPlaybackCoordinator_endPlayingInterstitialSuspension(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 448))
  {
    FigTimelineCoordinatorEndSuspensionReApplyingGroupStateOnlyIfNeeded();
    v2 = *(DerivedStorage + 448);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 448) = 0;
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t playbackCoordinator_endCoordinatedPlaybackNotPossibleSuspension(uint64_t a1, int a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = (*(DerivedStorage + 312) & ~a2) == 0;
  *(DerivedStorage + 312) &= ~a2;
  if (v4 && *(DerivedStorage + 304))
  {
    v5 = FigTimelineCoordinatorEndSuspensionProposingNewTime();
    v7 = *(DerivedStorage + 304);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 304) = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  return v5;
}

BOOL playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(uint64_t a1, int a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = (*(DerivedStorage + 312) & a2) != 0;
  FigSimpleMutexUnlock();
  return v4;
}

void figPlaybackCoordinator_setIntegratedTimelineOffsetTimesForItem(uint64_t a1, uint64_t a2)
{
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figPlaybackCoordinator_setIntegratedTimelineOffsetTimesForItem_cold_1();
    goto LABEL_6;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(a2);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
LABEL_6:
    v7 = *(DerivedStorage + 480);
    *(DerivedStorage + 480) = 0;
    goto LABEL_7;
  }

  v5(FigBaseObject, @"IntegratedTimelineTimeOffsets", *MEMORY[0x1E695E480], &cf);
  v6 = cf;
  v7 = *(DerivedStorage + 480);
  *(DerivedStorage + 480) = cf;
  if (v6)
  {
    CFRetain(v6);
  }

LABEL_7:
  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void figPlaybackCoordinator_currentItemReadyForPlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) == a4)
  {
    figPlaybackCoordinator_currentItemReadyForPlayback_cold_2(a2, a4, DerivedStorage);
  }

  else
  {
    figPlaybackCoordinator_currentItemReadyForPlayback_cold_1();
  }
}

uint64_t figPlaybackCoordinator_currentItemFailedToBecomeReadyForInspectionOrPlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) != a4)
  {
    return figPlaybackCoordinator_currentItemFailedToBecomeReadyForInspectionOrPlayback_cold_1();
  }

  if ((*(DerivedStorage + 64) - 102) <= 0xFFFFFFFD)
  {
    return figPlaybackCoordinator_currentItemFailedToBecomeReadyForInspectionOrPlayback_cold_2();
  }

  return figPlaybackCoordinator_beginOrEndCoordinatedPlaybackNotPossibleSuspension(a2, 0, 1);
}

void figPlaybackCoordinator_readyForInspection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) == a4)
  {
    if (*(DerivedStorage + 64) == 100)
    {
      *(DerivedStorage + 64) = 101;
    }

    if (!*(DerivedStorage + 496) && !*(DerivedStorage + 480))
    {

      figPlaybackCoordinator_seekToGroupTimeIfOnlyReadyForInspection(a2);
    }
  }

  else
  {
    figPlaybackCoordinator_readyForInspection_cold_1();
  }
}

uint64_t figPlaybackCoordinator_beginOrEndCoordinatedPlaybackNotPossibleSuspension(uint64_t result, int a2, int a3)
{
  v4 = result;
  if (a2 == 1)
  {
    result = playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(result, a3);
    if (result)
    {

      return playbackCoordinator_endCoordinatedPlaybackNotPossibleSuspension(v4, a3);
    }
  }

  else if (!a2)
  {
    result = playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(result, a3);
    if (!result)
    {

      return playbackCoordinator_beginCoordinatedPlaybackNotPossibleSuspension(v4, a3);
    }
  }

  return result;
}

double figPlaybackCoordinator_getPlayerTimeFromGroupTime@<D0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X2>, const __CFArray *a4@<X3>, char *a5@<X4>, CMTime *a6@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = *&a2->value;
  *&a6->value = *&a2->value;
  a6->epoch = a2->epoch;
  v14 = *(a3 + 12);
  if (v14)
  {
    *&lhs.source.start.value = *&a2->value;
    lhs.source.start.epoch = a2->epoch;
    *&rhs.source.start.value = *a3;
    rhs.source.start.epoch = *(a3 + 16);
    CMTimeSubtract(a6, &lhs.source.start, &rhs.source.start);
  }

  else if (a4 && CFArrayGetCount(a4) >= 1)
  {
    v40 = *a2;
    Count = CFArrayGetCount(a4);
    *time = *MEMORY[0x1E6960CC0];
    v16 = *(MEMORY[0x1E6960CC0] + 16);
    *&time[16] = v16;
    *&target.start.value = *time;
    target.start.epoch = v16;
    if (Count >= 1)
    {
      v17 = Count;
      v18 = 0;
      v19 = *(MEMORY[0x1E6960C98] + 16);
      *&lhs.source.start.value = *MEMORY[0x1E6960C98];
      *&lhs.source.start.epoch = v19;
      *&lhs.source.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
      *v43 = *time;
      *&v43[16] = v16;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v18);
        CMTimeRangeMakeFromDictionary(&lhs.source, ValueAtIndex);
        time2 = lhs.source.start;
        v41 = *v43;
        CMTimeSubtract(&rhs.source.start, &time2, &v41);
        time2 = target.start;
        CMTimeAdd(&target.start, &time2, &rhs.source.start);
        *&rhs.source.start.value = *&target.start.value;
        rhs.source.start.epoch = target.start.epoch;
        time2 = v40;
        if ((CMTimeCompare(&rhs.source.start, &time2) & 0x80000000) == 0)
        {
          break;
        }

        *&rhs.source.start.value = *time;
        rhs.source.start.epoch = *&time[16];
        time2 = lhs.source.duration;
        CMTimeAdd(time, &rhs.source.start, &time2);
        *&rhs.source.start.value = *&lhs.source.start.value;
        *&rhs.source.start.epoch = *&lhs.source.start.epoch;
        *&rhs.source.duration.timescale = *&lhs.source.duration.timescale;
        CMTimeRangeGetEnd(v43, &rhs.source);
        ++v18;
      }

      while (v17 != v18);
    }

    lhs.source.start = v40;
    *&rhs.source.start.value = *time;
    rhs.source.start.epoch = *&time[16];
    CMTimeAdd(v43, &lhs.source.start, &rhs.source.start);
    v21 = 0;
    *&v13 = *v43;
    *&a6->value = *v43;
    a6->epoch = *&v43[16];
    goto LABEL_11;
  }

  v21 = 1;
LABEL_11:
  v22 = *(DerivedStorage + 480);
  if (!v22)
  {
    goto LABEL_44;
  }

  v23 = CFArrayGetCount(v22);
  v24 = v21 ^ 1;
  if (v23 < 1)
  {
    v24 = 1;
  }

  if (v24)
  {
LABEL_44:
    v36 = 0;
    if (!a5)
    {
      return *&v13;
    }

LABEL_45:
    *a5 = v36;
    return *&v13;
  }

  v38 = *&a6->value;
  epoch = a6->epoch;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v25 = CMBaseObjectGetDerivedStorage();
  v40 = **&MEMORY[0x1E6960C70];
  v26 = *(v25 + 480);
  if (!v26 || (v27 = CFArrayGetCount(v26), v27 < 1))
  {
LABEL_48:
    v36 = 0;
    goto LABEL_49;
  }

  v28 = v27;
  v29 = 1;
  v30 = v27;
  while (1)
  {
    v31 = CFArrayGetValueAtIndex(*(v25 + 480), v29 - 1);
    memset(&lhs, 0, sizeof(lhs));
    CMTimeMappingMakeFromDictionary(&lhs, v31);
    target = lhs.target;
    *&rhs.source.start.value = v38;
    memset(&time2, 0, sizeof(time2));
    rhs.source.start.epoch = epoch;
    *time = *&lhs.target.start.value;
    *&time[16] = lhs.target.start.epoch;
    CMTimeSubtract(&time2, &rhs.source.start, time);
    rhs.source = target;
    *time = v38;
    *&time[16] = epoch;
    if (CMTimeRangeContainsTime(&rhs.source, time) || (*time = time2, CMTimeAbsoluteValue(&rhs.source.start, time), CMTimeMake(time, 350, 1000), CMTimeCompare(&rhs.source.start, time) < 0) || (rhs.source = target, CMTimeRangeGetEnd(time, &rhs.source), *&rhs.source.start.value = v38, rhs.source.start.epoch = epoch, !CMTimeCompare(time, &rhs.source.start)))
    {
LABEL_47:
      *&rhs.source.start.value = *&lhs.source.start.value;
      rhs.source.start.epoch = lhs.source.start.epoch;
      *time = time2;
      CMTimeAdd(&v40, &rhs.source.start, time);
      goto LABEL_48;
    }

    if (!*(v25 + 496))
    {
      if ((v14 & 1) == 0 || v30 != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    rhs.source = target;
    CMTimeRangeGetEnd(time, &rhs.source);
    *&rhs.source.start.value = v38;
    rhs.source.start.epoch = epoch;
    if (CMTimeCompare(&rhs.source.start, time) >= 1)
    {
      v36 = 0;
      v40 = **&MEMORY[0x1E6960C88];
      goto LABEL_49;
    }

    v32 = *(v25 + 496);
    if ((v14 & 1) != 0 && v30 == 1)
    {
      if (*(v25 + 496))
      {
        goto LABEL_42;
      }

LABEL_29:
      rhs.source = target;
      CMTimeRangeGetEnd(time, &rhs.source);
      *&rhs.source.start.value = v38;
      rhs.source.start.epoch = epoch;
      if (CMTimeCompare(&rhs.source.start, time) > 0)
      {
        goto LABEL_47;
      }

      v32 = *(v25 + 496);
    }

    if (v32)
    {
      goto LABEL_42;
    }

LABEL_32:
    if (v40.flags)
    {
      goto LABEL_42;
    }

    *v43 = *&lhs.source.start.value;
    *&v43[16] = *&lhs.source.start.epoch;
    v44 = *&lhs.source.duration.timescale;
    if (v29 < v28)
    {
      break;
    }

    rhs.source = target;
    CMTimeRangeGetEnd(&v41, &rhs.source);
    *&rhs.source.start.value = v38;
    rhs.source.start.epoch = epoch;
    if (CMTimeCompare(&rhs.source.start, &v41) >= 1)
    {
      goto LABEL_52;
    }

LABEL_42:
    ++v29;
    if (!--v30)
    {
      goto LABEL_48;
    }
  }

  v33 = CFArrayGetValueAtIndex(*(v25 + 480), v29);
  CMTimeMappingMakeFromDictionary(&rhs, v33);
  *time = *&rhs.source.start.value;
  *&time[16] = *&rhs.source.start.epoch;
  v49[0] = *&rhs.source.duration.timescale;
  *(v49 + 12) = *(&rhs.source.duration.epoch + 4);
  flags = rhs.target.start.flags;
  if ((rhs.target.start.flags & 1) == 0)
  {
    goto LABEL_42;
  }

  if ((rhs.target.duration.flags & 1) == 0)
  {
    goto LABEL_42;
  }

  if (rhs.target.duration.epoch)
  {
    goto LABEL_42;
  }

  if (rhs.target.duration.value < 0)
  {
    goto LABEL_42;
  }

  v35 = rhs.target.start.epoch;
  rhs.source = target;
  CMTimeRangeGetEnd(&v41, &rhs.source);
  *&rhs.source.start.value = v38;
  rhs.source.start.epoch = epoch;
  if (CMTimeCompare(&rhs.source.start, &v41) < 1)
  {
    goto LABEL_42;
  }

  *&rhs.source.start.value = v38;
  rhs.source.start.epoch = epoch;
  v41.value = *&v49[1];
  v41.timescale = DWORD2(v49[1]);
  v41.flags = flags;
  v41.epoch = v35;
  if ((CMTimeCompare(&rhs.source.start, &v41) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_52:
  *&rhs.source.start.value = *v43;
  *&rhs.source.start.epoch = *&v43[16];
  *&rhs.source.duration.timescale = v44;
  CMTimeRangeGetEnd(&v41, &rhs.source);
  CMTimeMake(&rhs.source.start, 350, 1000);
  CMTimeSubtract(&v40, &v41, &rhs.source.start);
  rhs.source.start = v40;
  v41 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&rhs.source.start, &v41) < 0)
  {
    v40 = **&MEMORY[0x1E6960CC0];
  }

  v36 = 1;
LABEL_49:
  *&v13 = v40.value;
  *a6 = v40;
  if (a5)
  {
    goto LABEL_45;
  }

  return *&v13;
}

uint64_t figPlaybackCoordinator_addTimebaseNotificationListeners(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

void figPlaybackCoordinator_updateHLSInterstitialStartTimes(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0;
  memset(cf, 0, sizeof(cf));
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[6];
  if (!v2)
  {
    goto LABEL_31;
  }

  v3 = *MEMORY[0x1E695E480];
  FigBaseObject = FigPlaybackItemGetFigBaseObject(v2);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(FigBaseObject, @"interstitialEvents", v3, cf);
    v7 = cf[0];
    v8 = DerivedStorage[59];
    DerivedStorage[59] = cf[0];
    if (v7)
    {
      CFRetain(v7);
    }
  }

  else
  {
    v8 = DerivedStorage[59];
    DerivedStorage[59] = 0;
    v6 = -12782;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (!cf[0])
  {
LABEL_31:
    Mutable = 0;
    goto LABEL_32;
  }

  Count = CFArrayGetCount(cf[0]);
  Mutable = 0;
  v11 = 1;
  if (v6)
  {
    goto LABEL_34;
  }

  v12 = Count;
  if (Count < 1)
  {
    goto LABEL_34;
  }

  v33 = **&MEMORY[0x1E6960C70];
  v13 = FigPlaybackItemGetFigBaseObject(DerivedStorage[6]);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14 || v14(v13, @"currentDateAndTime", v3, &v35) || (FigDateTimeMakeFromDictionary(v35, &time), *&cf[1] = time, !v32) || !v31)
  {
    Mutable = 0;
    goto LABEL_34;
  }

  CMTimeMakeWithSeconds(&v33, seconds, 1000000000);
  lhs = v33;
  v28 = *&cf[1];
  CMTimeSubtract(&time, &lhs, &v28);
  v33 = time;
  v15 = CMTimeGetSeconds(&time);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  v16 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf[0], v16);
    v28.value = 0;
    if (!FigPlayerInterstitialEventCreateFromDictionary(0, ValueAtIndex, &v28.value))
    {
      FigPlayerInterstitialEventGetStartTime(v28.value, &time);
      lhs.value = time.value;
      flags = time.flags;
      lhs.timescale = time.timescale;
      epoch = time.epoch;
      if ((time.flags & 1) == 0)
      {
        started = FigPlayerInterstitialEventCopyStartDate(v28.value);
        if (started)
        {
          v21 = started;
          v22 = MEMORY[0x19A8CCD90]();
          CMTimeMakeWithSeconds(&time, v22 - v15, 1000000000);
          lhs.value = time.value;
          flags = time.flags;
          lhs.timescale = time.timescale;
          epoch = time.epoch;
          CFRelease(v21);
        }
      }

      time.value = lhs.value;
      time.timescale = lhs.timescale;
      time.flags = flags;
      time.epoch = epoch;
      v23 = CMTimeCopyAsDictionary(&time, v3);
      if (v23)
      {
        v24 = v23;
        CFArrayAppendValue(Mutable, v23);
        CFRelease(v24);
      }

      CFRelease(v28.value);
    }

    ++v16;
  }

  while (v12 != v16);
  if (!Mutable)
  {
LABEL_32:
    v11 = 1;
    goto LABEL_34;
  }

  if (CFArrayGetCount(Mutable) >= 1)
  {
    v25 = FigCFCopyCompactDescription();
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = DerivedStorage[58];
    DerivedStorage[58] = Mutable;
    CFRetain(Mutable);
    if (v26)
    {
      CFRelease(v26);
    }

    v11 = 0;
    goto LABEL_36;
  }

  v11 = 0;
LABEL_34:
  v27 = DerivedStorage[58];
  if (v27)
  {
    CFRelease(v27);
    DerivedStorage[58] = 0;
  }

LABEL_36:
  if (v35)
  {
    CFRelease(v35);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if ((v11 & 1) == 0)
  {
    CFRelease(Mutable);
  }
}

void figPlaybackCoordinator_seekDidComplete(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v13 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v12 = 0;
  if (v7)
  {
    v8 = v7;
    if (*(DerivedStorage + 48) == a4)
    {
      FigCFDictionaryGetInt32IfPresent();
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v9)
      {
        v9(v8, &v12);
      }

      v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v10)
      {
        v10(a4, &v13);
      }

      if (dword_1ED4CBE70)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(DerivedStorage + 104))
      {
        figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a2);
      }

      else if (HIDWORD(v12))
      {
        if (HIDWORD(v12) == *(DerivedStorage + 244))
        {
          *(DerivedStorage + 244) = 0;
          figPlaybackCoordinator_checkForCommandCompletion(a2);
        }
      }

      figPlaybackCoordinator_updateInterstitialStateMachine(a2, 1);
    }

    else
    {
      figPlaybackCoordinator_seekDidComplete_cold_1();
    }

    CFRelease(v8);
  }

  else
  {
    figPlaybackCoordinator_seekDidComplete_cold_2();
  }
}

void figPlaybackCoordinator_seekWasCancelled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    if (*(DerivedStorage + 48) == a4)
    {
      FigCFDictionaryGetInt32IfPresent();
      if (!*(DerivedStorage + 244))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a2, 0, 0, 0);
      }
    }

    else
    {
      figPlaybackCoordinator_seekWasCancelled_cold_1();
    }

    CFRelease(v8);
  }

  else
  {
    figPlaybackCoordinator_seekWasCancelled_cold_2();
  }
}

uint64_t figPlaybackCoordinator_coordinationIdentifierChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  if (*(CMBaseObjectGetDerivedStorage() + 48) != a4)
  {
    return figPlaybackCoordinator_coordinationIdentifierChanged_cold_1();
  }

  return figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a2);
}

void figPlaybackCoordinator_playbackStalled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  if (*(CMBaseObjectGetDerivedStorage() + 48) == a4)
  {
    v6 = *MEMORY[0x1E6963328];

    playbackCoordinator_beginSystemEventSuspensionForReason(a2, v6);
  }

  else
  {
    figPlaybackCoordinator_playbackStalled_cold_1();
  }
}

uint64_t figPlaybackCoordinator_coordinatedPlaybackSupportChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) != a4)
  {
    return figPlaybackCoordinator_coordinatedPlaybackSupportChanged_cold_1();
  }

  if (*(DerivedStorage + 64) != 10000)
  {
    return figPlaybackCoordinator_coordinatedPlaybackSupportChanged_cold_2();
  }

  if (!a5)
  {
    return figPlaybackCoordinator_coordinatedPlaybackSupportChanged_cold_3();
  }

  v9 = CFDictionaryGetValue(a5, @"IsCoordinatedPlaybackSupported") == *MEMORY[0x1E695E4D0];

  return figPlaybackCoordinator_beginOrEndCoordinatedPlaybackNotPossibleSuspension(a2, v9, 1);
}

void figPlaybackCoordinator_currentItemTimebaseDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) == a4)
  {
    v7 = DerivedStorage;
    FigBaseObject = FigPlaybackItemGetFigBaseObject(a4);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &cf);
      v11 = cf;
      if (!v10)
      {
        v12 = *(v7 + 56);
        if (cf != v12)
        {
          figPlaybackCoordinator_removeTimebaseNotificationListeners(a2, v12);
          v13 = *(v7 + 56);
          v14 = cf;
          *(v7 + 56) = cf;
          if (v14)
          {
            CFRetain(v14);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          figPlaybackCoordinator_addTimebaseNotificationListeners(a2, *(v7 + 56));
          figPlaybackCoordinator_handleCurrentTimebaseRateChange(a2);
          v11 = cf;
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  else
  {
    figPlaybackCoordinator_currentItemTimebaseDidChange_cold_1();
  }
}

void figPlaybackCoordinator_integratedTimelineOffsetsChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  if (*(CMBaseObjectGetDerivedStorage() + 48) == a4)
  {

    figPlaybackCoordinator_setIntegratedTimelineOffsetTimesForItem(a2, a4);
  }

  else
  {
    figPlaybackCoordinator_integratedTimelineOffsetsChanged_cold_1();
  }
}

void figPlaybackCoordinator_primeNextInterstitialEventTimer(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figPlaybackCoordinator_clearInterstitialEventTimer(a1);
  *&v14.value = *a2;
  v14.epoch = *(a2 + 16);
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v7 = CMBaseObjectGetDerivedStorage();
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, *(v8 + 280));
  if (v9)
  {
    v10 = v9;
    v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_set_context(v10, v11);
    dispatch_source_set_timer(v10, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    dispatch_source_set_event_handler_f(v10, figPlaybackCoordinator_interstitialTimerEventProc);
    dispatch_source_set_cancel_handler_f(v10, 0);
    dispatch_set_finalizer_f(v10, FigCFRelease_9);
    dispatch_resume(v10);
    if (CMTimebaseAddTimerDispatchSource(*(v7 + 56), v10) || (v12 = *(v7 + 56), fireTime = v14, CMTimebaseSetTimerDispatchSourceNextFireTime(v12, v10, &fireTime, 1u)))
    {
      CFRelease(v10);
    }

    else
    {
      *(v7 + 388) = a3;
      if (dword_1ED4CBE70)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(DerivedStorage + 376) = v10;
    }
  }

  else
  {

    FigSignalErrorAtGM();
  }
}

CMTime *figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 368);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    v18 = **&MEMORY[0x1E6960CC0];
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      v10 = *(MEMORY[0x1E6960C98] + 16);
      *&v17.start.value = *MEMORY[0x1E6960C98];
      *&v17.start.epoch = v10;
      *&v17.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 368), v9);
        CMTimeRangeMakeFromDictionary(&v17, ValueAtIndex);
        range = v17;
        CMTimeRangeGetEnd(&time1, &range);
        *&range.start.value = *&a2->value;
        range.start.epoch = a2->epoch;
        if (CMTimeCompare(&time1, &range.start) >= 1)
        {
          break;
        }

        range.start = v18;
        time1 = v17.duration;
        CMTimeAdd(&v18, &range.start, &time1);
        if (v8 == ++v9)
        {
          goto LABEL_10;
        }
      }

      *&range.start.value = *&v17.start.value;
      *&range.start.epoch = *&v17.start.epoch;
      v12 = *&a2->value;
      *&range.duration.timescale = *&v17.duration.timescale;
      *&time1.value = v12;
      time1.epoch = a2->epoch;
      if (figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(&range, &time1))
      {
        time1 = *a2;
        start = v17.start;
        CMTimeSubtract(&range.start, &time1, &start);
        time1 = v18;
        CMTimeAdd(&v18, &time1, &range.start);
      }
    }
  }

  else
  {
    v18 = **&MEMORY[0x1E6960CC0];
  }

LABEL_10:
  *&v17.start.value = *&a2->value;
  v17.start.epoch = a2->epoch;
  range.start = v18;
  return CMTimeSubtract(a3, &v17.start, &range.start);
}

void figPlaybackCoordinator_endDiscontinuitiyBasedInterstitialSuspensionProposingNewTime(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 440))
  {
    v2 = DerivedStorage;
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    v6 = 0;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v4)
    {
      v4(v3, &v6);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    FigTimelineCoordinatorEndSuspensionWeaklyIfNeededProposingNewRateAndTime();
    v5 = *(v2 + 440);
    if (v5)
    {
      CFRelease(v5);
      *(v2 + 440) = 0;
    }
  }
}

uint64_t figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(uint64_t a1, CMTime *a2)
{
  v4 = *(a1 + 16);
  *&range.start.value = *a1;
  *&range.start.epoch = v4;
  *&range.duration.timescale = *(a1 + 32);
  time = *a2;
  if (CMTimeRangeContainsTime(&range, &time))
  {
    return 1;
  }

  CMTimeMake(&time, 40, 1000);
  v7 = *a2;
  CMTimeAdd(&range.start, &v7, &time);
  time = *a1;
  if (CMTimeCompare(&range.start, &time) < 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  *&range.start.value = *a1;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *(a1 + 32);
  CMTimeRangeGetEnd(&time, &range);
  *&range.start.value = *&a2->value;
  range.start.epoch = a2->epoch;
  return CMTimeCompare(&range.start, &time) >> 31;
}

uint64_t figPlaybackCoordinator_isTimeInInterstitialRange(uint64_t a1, CMTime *a2, _OWORD *a3)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 368);
  if (!result)
  {
    v12 = *(MEMORY[0x1E6960C98] + 16);
    *&v17.start.value = *MEMORY[0x1E6960C98];
    *&v17.start.epoch = v12;
    *&v17.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    if (!a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  Count = CFArrayGetCount(result);
  v8 = *(MEMORY[0x1E6960C98] + 16);
  *&v17.start.value = *MEMORY[0x1E6960C98];
  *&v17.start.epoch = v8;
  *&v17.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (Count < 1)
  {
LABEL_6:
    result = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    memset(&v16, 0, sizeof(v16));
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 368), v10);
    CMTimeRangeMakeFromDictionary(&v16, ValueAtIndex);
    v15 = v16;
    v14 = *a2;
    if (figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(&v15, &v14))
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_6;
    }
  }

  v17 = v16;
  result = 1;
  if (a3)
  {
LABEL_9:
    v13 = *&v17.start.epoch;
    *a3 = *&v17.start.value;
    a3[1] = v13;
    a3[2] = *&v17.duration.timescale;
  }

  return result;
}

void figPlaybackCoordinator_interstitialTimerEventProc()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    figPlaybackCoordinator_interstitialTimerEventProc_cold_1(v0);
  }
}

void playbackCoordinator_completePendingStartupTaskOnQueue(uint64_t a1)
{
  v2 = *a1;
  playbackCoordinator_completePendingStartupTask(*a1, *(a1 + 8));
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void playbackCoordinator_beginSystemEventSuspensionForReason(uint64_t a1, const void *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!CFDictionaryContainsKey(*(DerivedStorage + 296), a2))
  {
    if (FigTimelineCoordinatorSuspensionCreate())
    {
      return;
    }

    CFDictionarySetValue(*(DerivedStorage + 296), a2, 0);
  }

  FigSimpleMutexUnlock();
}

void figPlaybackCoordinator_handleCurrentTimebaseRateChange(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Rate = CMTimebaseGetRate(*(DerivedStorage + 56));
  if (*(DerivedStorage + 104))
  {
    v4 = Rate;
    if (dword_1ED4CBE70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v4 != 0.0)
    {
      figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a1);
    }
  }

  else if (*(DerivedStorage + 224))
  {

    figPlaybackCoordinator_checkForCommandCompletion(a1);
  }
}

uint64_t FigPlaybackItemSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(FigBaseObject, a2, a3);
  }

  return result;
}

void figPlaybackCoordinator_currentItemTimebaseRateDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  if (*(CMBaseObjectGetDerivedStorage() + 56) == a4)
  {

    figPlaybackCoordinator_handleCurrentTimebaseRateChange(a2);
  }

  else
  {
    figPlaybackCoordinator_currentItemTimebaseRateDidChange_cold_1();
  }
}

uint64_t figPlaybackCoordinator_CopyParticipantSnapshots(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE1D8](v3, a2);
}

double figPlaybackCoordinator_getGroupTimeFromPlayerTime@<D0>(uint64_t a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  a3->epoch = a2->epoch;
  v8 = *&a2->value;
  *&a3->value = *&a2->value;
  if (*(DerivedStorage + 344))
  {
    lhs = *a2;
    v16 = *(DerivedStorage + 332);
    CMTimeAdd(a3, &lhs, &v16);
    v10 = 1;
    v11 = 1;
  }

  else
  {
    v9 = *(DerivedStorage + 368);
    if (v9 && CFArrayGetCount(v9) >= 1)
    {
      lhs = *a2;
      figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(a1, &lhs, a3);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }
  }

  v12 = *(v7 + 480);
  if (v12)
  {
    Count = CFArrayGetCount(v12);
    v14 = v10 ^ 1;
    if (Count < 1)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      v16 = *a3;
      figPlaybackCoordinator_getGroupTimeFromPlayerTimeOnIntegratedTimeline(a1, &v16.value, v11, &lhs);
      *&v8 = lhs.value;
      *a3 = lhs;
    }
  }

  return *&v8;
}

uint64_t figPlaybackCoordinator_copyGroupTimebaseFromCurrentItemTimebase(uint64_t a1, CMTimebaseRef *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CMTimebaseGetTime(&v21, v5);
    value = v21.value;
    flags = v21.flags;
    timescale = v21.timescale;
    epoch = v21.epoch;
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  v21 = **&MEMORY[0x1E6960CC0];
  if (*(DerivedStorage + 344))
  {
    v21 = *(DerivedStorage + 332);
    if ((flags & 1) == 0)
    {
      goto LABEL_19;
    }

    v9 = 1;
  }

  else
  {
    if ((flags & 1) == 0)
    {
      goto LABEL_19;
    }

    v8 = *(DerivedStorage + 368);
    if (v8 && CFArrayGetCount(v8) >= 1)
    {
      memset(&v20, 0, sizeof(v20));
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(a1, &lhs, &v20);
      lhs = v20;
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      CMTimeSubtract(&v21, &lhs, &rhs);
      v9 = 0;
      v10 = 0;
      goto LABEL_13;
    }

    v9 = 0;
  }

  v10 = 1;
LABEL_13:
  v11 = *(DerivedStorage + 480);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    v13 = v10 ^ 1;
    if (Count < 1)
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      memset(&v20, 0, sizeof(v20));
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      figPlaybackCoordinator_getGroupTimeFromPlayerTimeOnIntegratedTimeline(a1, &lhs.value, v9, &v20);
      if (v20.flags)
      {
        memset(&lhs, 0, sizeof(lhs));
        rhs = v20;
        v17.value = value;
        v17.timescale = timescale;
        v17.flags = flags;
        v17.epoch = epoch;
        CMTimeSubtract(&lhs, &rhs, &v17);
        v17 = v21;
        v16 = lhs;
        CMTimeAdd(&rhs, &v17, &v16);
        v21 = rhs;
      }
    }
  }

LABEL_19:
  v14 = *(DerivedStorage + 56);
  v20 = v21;
  return figPlaybackCoordinator_copyTimebaseAndAddOffset(v14, &v20, a2);
}

uint64_t figPlaybackCoordinator_getGroupTimeFromPlayerTimeOnIntegratedTimeline@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, CMTime *a4@<X8>)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = MEMORY[0x1E6960C70];
  a4->epoch = *(MEMORY[0x1E6960C70] + 16);
  *&a4->value = *v8;
  result = *(DerivedStorage + 480);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v10 = result;
      for (i = 0; ; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 480), i);
        memset(&v18, 0, sizeof(v18));
        CMTimeMappingMakeFromDictionary(&v18, ValueAtIndex);
        source = v18.source;
        *&v14.start.value = *a2;
        memset(&v16, 0, sizeof(v16));
        v14.start.epoch = *(a2 + 2);
        rhs = v18.source.start;
        CMTimeSubtract(&v16, &v14.start, &rhs);
        *&v14.start.value = *&source.start.value;
        *&v14.start.epoch = *&source.start.epoch;
        v13 = *a2;
        *&v14.duration.timescale = *&source.duration.timescale;
        *&rhs.value = v13;
        rhs.epoch = *(a2 + 2);
        if (CMTimeRangeContainsTime(&v14, &rhs))
        {
          break;
        }

        rhs = v16;
        CMTimeAbsoluteValue(&v14.start, &rhs);
        CMTimeMake(&rhs, 350, 1000);
        if (CMTimeCompare(&v14.start, &rhs) < 0)
        {
          break;
        }

        v14 = source;
        CMTimeRangeGetEnd(&rhs, &v14);
        *&v14.start.value = *a2;
        v14.start.epoch = *(a2 + 2);
        result = CMTimeCompare(&rhs, &v14.start);
        if (!result)
        {
          break;
        }

        if (a3)
        {
          if (v10 == 1 && !*(DerivedStorage + 496))
          {
            v14 = source;
            CMTimeRangeGetEnd(&rhs, &v14);
            *&v14.start.value = *a2;
            v14.start.epoch = *(a2 + 2);
            result = CMTimeCompare(&v14.start, &rhs);
            if (result >= 1)
            {
              break;
            }
          }
        }

        if (!--v10)
        {
          return result;
        }
      }

      *&v14.start.value = *&v18.target.start.value;
      v14.start.epoch = v18.target.start.epoch;
      rhs = v16;
      return CMTimeAdd(a4, &v14.start, &rhs);
    }
  }

  return result;
}

uint64_t figPlaybackCoordinator_suspensionReasonsChanged()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t figPlaybackCoordinator_timelineCoordinatorParticipantsDidChange(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
  if (a2)
  {
    v9 = CFRetain(a2);
  }

  else
  {
    v9 = 0;
  }

  *v8 = v9;
  if (a5)
  {
    v10 = CFRetain(a5);
  }

  else
  {
    v10 = 0;
  }

  v8[1] = v10;
  dispatch_async_f(*(DerivedStorage + 280), v8, figPlaybackCoordinator_timelineCoordinatorParticipantsDidChangeDispatch);
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t figPlaybackCoordinator_timelineCoordinatorDidIssueCommandToTimelineControl()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void figPlaybackCoordinator_handleChangeInInterstitialActiveStatusOnQueue(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  FigPlaybackCoordinatorGetCMBaseObject(*a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 496))
  {
    if (*MEMORY[0x1E695E4C0] == v3 && !playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(v2, 4))
    {
      figPlaybackCoordinator_beginPlayingPrimarySuspension(v2);
    }
  }

  else if (*MEMORY[0x1E695E4D0] == v3)
  {
    figPlaybackCoordinator_handleChangeInInterstitialActiveStatusOnQueue_cold_1(v2);
  }

  else
  {
    v5 = DerivedStorage;
    figPlaybackCoordinator_endPlayingInterstitialSuspension(v2);
    if (*(v5 + 104))
    {
      figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(v2);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t figPlaybackCoordinator_EndSuspensionProposingNewTime(const void *a1, const void *a2, __int128 *a3)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = malloc_type_malloc(0x28uLL, 0x1020040E349F4B1uLL);
  if (a1)
  {
    v8 = CFRetain(a1);
  }

  else
  {
    v8 = 0;
  }

  *v7 = v8;
  if (a2)
  {
    v9 = CFRetain(a2);
  }

  else
  {
    v9 = 0;
  }

  v7[1] = v9;
  v10 = *a3;
  v7[4] = *(a3 + 2);
  *(v7 + 1) = v10;
  dispatch_async_f(*(DerivedStorage + 280), v7, figPlaybackCoordinator_EndSuspensionProposingNewTimeOnQueue);
  return 0;
}

uint64_t figPlaybackCoordinator_EndSuspensionWithReason(const void *a1, const void *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
  if (v5)
  {
    v6 = v5;
    if (a1)
    {
      v7 = CFRetain(a1);
    }

    else
    {
      v7 = 0;
    }

    *v6 = v7;
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    v6[1] = v8;
    dispatch_async_f(*(DerivedStorage + 280), v6, figPlaybackCoordinator_EndSuspensionWithReasonOnQueue);
    return 0;
  }

  else
  {
    figPlaybackCoordinator_EndSuspensionWithReason_cold_1(&v10);
    return v10;
  }
}

uint64_t figPlaybackCoordinator_SetWeakMediumAndCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE2A0](v5, a2, a3);
}

uint64_t figPlaybackCoordinator_HandleAssignmentOfUUIDToLocalParticipantByMedium(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE240](v3, a2);
}

uint64_t figPlaybackCoordinator_CopyParticipantSnapshotForUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE1D0](v5, a2, a3);
}

uint64_t figPlaybackCoordinator_HandleRemovalOfParticipantStateFromMedium(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE248](v3, a2);
}

uint64_t figPlaybackCoordinator_GetExpectedTimeAtHostTime(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  return FigTimelineCoordinatorGetExpectedTimeAtHostTime();
}

uint64_t figPlaybackCoordinator_HandleUpdatedTimelineStateFromMedium(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE270](v3, a2);
}

uint64_t figPlaybackCoordinator_HandleReplacementOfAllParticipantStatesFromMedium(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE250](v3, a2);
}

uint64_t figPlaybackCoordinator_HandleUpdatedParticipantStateFromMedium(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE268](v3, a2);
}

uint64_t figPlaybackCoordinator_DisconnectFromMedium(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v1 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE1F0](v1);
}

uint64_t figPlaybackCoordinator_StopTrackingPlayer(void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  dispatch_async_f(*(DerivedStorage + 280), a1, playbackCoordinator_stopTrackingPlayerOnQueue);
  return 0;
}

uint64_t figPlaybackCoordinator_ResetGroupTimelineExpectationsForIdentifier(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE288](v3, a2);
}

void figPlaybackCoordinator_EndSuspensionProposingNewTimeOnQueue(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v18 = *(a1 + 16);
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v15 = *MEMORY[0x1E6960C98];
  v16 = v4;
  v17 = *(MEMORY[0x1E6960C98] + 32);
  FigPlaybackCoordinatorGetCMBaseObject(v2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, v3);
  v7 = *(DerivedStorage + 368);
  if (v7 && CFArrayGetCount(v7) >= 1)
  {
    FigPlaybackCoordinatorGetCMBaseObject(v2);
    if (!*(CMBaseObjectGetDerivedStorage() + 440) || (rhs = v18, FigPlaybackCoordinatorGetCMBaseObject(v2), v8 = CMBaseObjectGetDerivedStorage(), v9 = *(v8 + 408), *lhs = *(v8 + 392), *&lhs[16] = v9, v21 = *(v8 + 424), !figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(lhs, &rhs)))
    {
      *lhs = v18;
      if (figPlaybackCoordinator_isTimeInInterstitialRange(v2, lhs, &v15))
      {
        *&v18.value = v15;
        v18.epoch = v16;
      }
    }

    FigPlaybackCoordinatorGetCMBaseObject(v2);
    if (*(CMBaseObjectGetDerivedStorage() + 440))
    {
      rhs = v18;
      FigPlaybackCoordinatorGetCMBaseObject(v2);
      v10 = CMBaseObjectGetDerivedStorage();
      v11 = *(v10 + 408);
      *lhs = *(v10 + 392);
      *&lhs[16] = v11;
      v21 = *(v10 + 424);
      if (!figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(lhs, &rhs))
      {
        CFArrayAppendValue(Mutable, *(DerivedStorage + 440));
        v12 = *(DerivedStorage + 440);
        if (v12)
        {
          CFRelease(v12);
          *(DerivedStorage + 440) = 0;
        }
      }
    }
  }

  if (*(DerivedStorage + 344))
  {
    *lhs = v18;
    rhs = *(DerivedStorage + 332);
    CMTimeAdd(&v18, lhs, &rhs);
  }

  else
  {
    v13 = *(DerivedStorage + 368);
    if (v13 && CFArrayGetCount(v13) >= 1)
    {
      *lhs = v18;
      figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(v2, lhs, &v18);
    }
  }

  *lhs = v18;
  FigTimelineCoordinatorEndSuspensionsProposingNewTime();
  v14 = *(a1 + 8);
  if (v14)
  {
    CFRelease(v14);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(a1);
}

void figPlaybackCoordinator_EndSuspensionWithReasonOnQueue(CFTypeRef *a1)
{
  v2 = *a1;
  v3 = a1[1];
  FigPlaybackCoordinatorGetCMBaseObject(*a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 328) = 0;
  FigSimpleMutexUnlock();
  figPlaybackCoordinator_endSuspensionForReason(v2, v3);
  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t figPlaybackCoordinator_endSuspensionForReason(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE218](v3, a2);
}

BOOL playbackCoordinator_systemEventSuspensionsActive(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = FigCFDictionaryGetCount() > 0;
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t figPlaybackCoordinator_isSuspendedForReason(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  FigTimelineCoordinatorCopyActiveSuspensionReasons();
  return 0;
}

void playbackCoordinator_setReferenceTimebaseAndCompleteStartupTask(CFTypeRef *a1)
{
  v2 = *a1;
  FigPlaybackCoordinatorGetCMBaseObject(*a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v5 = v4;
  if (*(DerivedStorage + 184) == *(a1 + 2))
  {
    if (v4)
    {
      v6 = *(DerivedStorage + 48);
      if (v6)
      {
        if (*(DerivedStorage + 64) == 10000)
        {
          v7 = *(DerivedStorage + 168);
          FigBaseObject = FigPlaybackItemGetFigBaseObject(v6);
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v9)
          {
            v9(FigBaseObject, @"TransientTimebaseForCoordinatedPlaybackSynchronization", v7);
          }

          cf = 0;
          v10 = FigPlayerGetFigBaseObject(v5);
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v11)
          {
            v11(v10, @"SynchronizedNULL", *MEMORY[0x1E695E480], &cf);
            if (cf)
            {
              CFRelease(cf);
            }
          }

          playbackCoordinator_completePendingStartupTask(v2, 1);
        }

        else
        {
          playbackCoordinator_setReferenceTimebaseAndCompleteStartupTask_cold_1();
        }
      }

      else
      {
        playbackCoordinator_setReferenceTimebaseAndCompleteStartupTask_cold_2();
      }

      goto LABEL_11;
    }

    playbackCoordinator_setReferenceTimebaseAndCompleteStartupTask_cold_3();
  }

  else if (v4)
  {
LABEL_11:
    CFRelease(v5);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t figPlaybackCoordinator_isInterstitialScheduledAtTime(uint64_t a1, CMTime *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 368);
  if (v5 && CFArrayGetCount(v5) >= 1)
  {
    v19 = *a2;
    return figPlaybackCoordinator_isTimeInInterstitialRange(a1, &v19, 0);
  }

  else
  {
    v7 = *(DerivedStorage + 464);
    if (v7 && CFArrayGetCount(v7) >= 1 && (*&v15.value = *&a2->value, v15.epoch = a2->epoch, FigPlaybackCoordinatorGetCMBaseObject(a1), v8 = CMBaseObjectGetDerivedStorage(), (v9 = *(v8 + 464)) != 0) && (Count = CFArrayGetCount(v9), Count >= 1))
    {
      v11 = Count;
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 464), v12);
        memset(&v19, 0, sizeof(v19));
        CMTimeMakeFromDictionary(&v19, ValueAtIndex);
        v6 = 1;
        CMTimeMake(&v18, 1, 1000);
        v17 = v19;
        v16 = v15;
        if (faqrp_timeDifferenceIsWithinTolerance(&v17, &v16, &v18))
        {
          break;
        }

        if (v11 == ++v12)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

__n128 OUTLINED_FUNCTION_1_128()
{
  result = *v0;
  v1[10] = *v0;
  v1[11].n128_u64[0] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_2_125(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21, unint64_t a22)
{
  result = a21;
  v22[6] = a21;
  v22[7].n128_u64[0] = a22;
  return result;
}

void OUTLINED_FUNCTION_3_101()
{

  figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(v0, 0, 0, 0);
}