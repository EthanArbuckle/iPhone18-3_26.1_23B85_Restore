void editMentorTimeRangesMayNoLongerIncrease_orderQueue(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a2 + 304));
  if (*(a2 + 566))
  {
    *(a2 + 566) = 0;
    v3 = *(a2 + 568);
    if (v3)
    {
      v4 = CFRetain(v3);
      editMentorAdvanceToNextEdit(a2, v4, *(a2 + 320), 0, 0);
      if (v4)
      {

        CFRelease(v4);
      }
    }

    else
    {
      v5 = *(a2 + 320);

      editMentorAdvanceToNextEdit(a2, 0, v5, 0, 0);
    }
  }
}

void editMentorChildMentorStoppedDueToError_orderQueue(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Mentor_Order");
    FigCFDictionaryGetInt32IfPresent();
    v8 = CFDictionaryGetValue(theDict, @"Mentor_SamplesWereGenerated") == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v8 = 0;
    Value = 0;
  }

  *(a2 + 288) = *(a2 + 288) != 0 || v8;
  IsCurrent_RetainParentOrder = editMentorChildOrderRefIsCurrent_RetainParentOrder(a2, Value, cf, 0);
  v10 = cf[0];
  if (IsCurrent_RetainParentOrder)
  {
    if (*(a2 + 680))
    {
      editMentorPostSyntheticPrerollCompleteNotification(a2, cf[0]);
    }

    editMentorStartNewChildOrder(a2, v10);
    v11 = *(a2 + 672);
    if (theDict && !v11)
    {
      v11 = CFDictionaryGetValue(theDict, @"Mentor_NotificationThatWasRequestedButDropped");
    }

    v12 = FigMentorNotificationPayloadCreate(@"MentorStoppingDueToError", v10, 0, *(a2 + 288), v11, 0);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v12)
    {
      CFRelease(v12);
    }

    v14 = *(a2 + 672);
    if (v14)
    {
      CFRelease(v14);
      *(a2 + 672) = 0;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void editMentorChildMentorStoppedDueToCompletion_orderQueue(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  v5 = theDict;
  v15[26] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v14 = 1;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Mentor_Order");
    v8 = CFDictionaryGetValue(v5, @"Mentor_SamplesWereGenerated");
    v9 = *MEMORY[0x1E695E4D0];
    v10 = v8 == *MEMORY[0x1E695E4D0];
    LODWORD(v5) = CFDictionaryGetValue(v5, @"Mentor_LastsForever") == v9;
  }

  else
  {
    v10 = 0;
    Value = 0;
  }

  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!editMentorChildOrderRefIsCurrent_RetainParentOrder(a2, Value, v15, &v14))
  {
    v13 = v15[0];
    if (!v15[0])
    {
      return;
    }

    goto LABEL_12;
  }

  Mutable = *(a2 + 608);
  if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a2 + 608) = Mutable) != 0) || (FigSignalErrorAtGM(), (Mutable = *(a2 + 608)) != 0))
  {
    CFDictionarySetValue(Mutable, @"ModeChangePolicy", @"PreservePreviousOutput");
    CFDictionarySetValue(*(a2 + 608), @"SynchronouslyResetOutput", *MEMORY[0x1E695E4C0]);
    CFDictionaryRemoveValue(*(a2 + 608), @"CollectorCoherenceToken");
  }

  *(a2 + 288) = (v10 | *(a2 + 288)) != 0;
  v13 = v15[0];
  editMentorAdvanceToNextEdit(a2, v15[0], v14, !v10, v5);
  if (v13)
  {
LABEL_12:
    CFRelease(v13);
  }
}

void editMentorForwardNotificationFromChildMentor_orderQueue(int a1, uint64_t a2, uint64_t a3, int a4, CFDictionaryRef theDict)
{
  v5 = theDict;
  cf = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Mentor_Order");
    FigCFDictionaryGetInt32IfPresent();
    v9 = CFDictionaryGetValue(v5, @"Mentor_NotificationThatWasRequestedButDropped");
    LODWORD(v5) = CFDictionaryGetValue(v5, @"Mentor_SamplesWereGenerated") == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v9 = 0;
    Value = 0;
  }

  IsCurrent_RetainParentOrder = editMentorChildOrderRefIsCurrent_RetainParentOrder(a2, Value, &cf, 0);
  v11 = cf;
  if (IsCurrent_RetainParentOrder)
  {
    v12 = FigMentorNotificationPayloadCreate(a3, cf, 0, v5, v9, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void editMentorChildMentorPrerollComplete_orderQueue(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  cf = 0;
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"MentorPrerollComplete_Order"), FigCFDictionaryGetInt32IfPresent(), (v13 - 1) < 2))
  {
    if (editMentorChildOrderRefIsCurrent_RetainParentOrder(a2, Value, &cf, 0))
    {
      *(a2 + 680) = 0;
      v7 = *(a2 + 608);
      if (v7)
      {
        CFDictionarySetValue(v7, @"PrerollPolicy", @"NoPreroll");
      }

      v8 = FigMentorPrerollCompletePayloadCreate(cf);
      if (dword_1EAF16E38)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else if (dword_1EAF16E38)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else if (dword_1EAF16E38 >= 2)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t editMentorRemapTimeInterval(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (editMentorChildOrderRefIsCurrent_RetainParentOrder(a1, a2, &v17, 0))
  {
    if (!a3)
    {
      memset(v16, 0, sizeof(v16));
      v18 = *a4;
      v19 = *(a4 + 16);
      editMentorSelectEditForTimeInConsolidatedEdit(a1, &v18, 1, v16);
      memset(v15, 0, sizeof(v15));
      v18 = *a5;
      v19 = *(a5 + 16);
      editMentorSelectEditForTimeInConsolidatedEdit(a1, &v18, 1, v15);
      editMentorRemapTimeFromMediaTimeToTrackTimeUsingEdit(v16, 0, a4);
      editMentorRemapTimeFromMediaTimeToTrackTimeUsingEdit(v15, 0, a5);
    }

    FigSimpleMutexLock();
    v9 = *(a1 + 248);
    if (v9)
    {
      v10 = v9(*(a1 + 256), v17, a3, a4, a5);
    }

    else
    {
      v10 = 0;
    }

    FigSimpleMutexUnlock();
    if (a3)
    {
      memset(v14, 0, sizeof(v14));
      v18 = *a4;
      v19 = *(a4 + 16);
      editMentorSelectEditForTimeInConsolidatedEdit(a1, &v18, 0, v14);
      memset(v13, 0, sizeof(v13));
      v18 = *a5;
      v19 = *(a5 + 16);
      editMentorSelectEditForTimeInConsolidatedEdit(a1, &v18, 0, v13);
      editMentorRemapTimeFromMediaTimeToTrackTimeUsingEdit(v14, a3, a4);
      editMentorRemapTimeFromMediaTimeToTrackTimeUsingEdit(v13, a3, a5);
    }
  }

  else
  {
    if (dword_1EAF16E38)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = 0;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v10;
}

__n128 editMentorMapTimeFromRangeToRange@<Q0>(CMTime *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CMTime *a4@<X8>)
{
  v8 = MEMORY[0x1E6960C70];
  *&a4->value = *MEMORY[0x1E6960C70];
  a4->epoch = *(v8 + 16);
  if (((a1->flags & 0x1D) != 1 || (*&time1.start.value = *&a1->value, time1.start.epoch = a1->epoch, *&v12.start.value = *a2, v12.start.epoch = *(a2 + 16), CMTimeCompare(&time1.start, &v12.start))) && ((*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 40) || (*(a3 + 24) & 0x8000000000000000) != 0 || (*&time1.start.value = *(a3 + 24), time1.start.epoch = *(a3 + 40), *&v12.start.value = *MEMORY[0x1E6960CC0], v12.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &v12.start))))
  {
    v14 = *a1;
    v9 = *(a2 + 16);
    *&time1.start.value = *a2;
    *&time1.start.epoch = v9;
    *&time1.duration.timescale = *(a2 + 32);
    v10 = *(a3 + 16);
    *&v12.start.value = *a3;
    *&v12.start.epoch = v10;
    *&v12.duration.timescale = *(a3 + 32);
    CMTimeMapTimeFromRangeToRange(a4, &v14, &time1, &v12);
  }

  else
  {
    result = *a3;
    *&a4->value = *a3;
    a4->epoch = *(a3 + 16);
  }

  return result;
}

void editMentorAddToTrimAttachment(const void *a1, CMTime *a2, CFStringRef key)
{
  v13 = **&MEMORY[0x1E6960CC0];
  v6 = CMGetAttachment(a1, key, 0);
  if (v6)
  {
    CMTimeMakeFromDictionary(&v13, v6);
    lhs = v13;
    v10 = *a2;
    CMTimeAdd(&time, &lhs, &v10);
    *&v13.value = *&time.value;
    epoch = time.epoch;
  }

  else
  {
    *&v13.value = *&a2->value;
    epoch = a2->epoch;
  }

  v13.epoch = epoch;
  v8 = *MEMORY[0x1E695E480];
  *&time.value = *&v13.value;
  time.epoch = epoch;
  v9 = CMTimeCopyAsDictionary(&time, v8);
  CMSetAttachment(a1, key, v9, 1u);
  if (v9)
  {
    CFRelease(v9);
  }
}

double editMentorRemapTimeFromMediaTimeToTrackTimeUsingEdit(_OWORD *a1, int a2, __int128 *a3)
{
  if (a2)
  {
    v4 = a1[4];
    *&v14.start.value = a1[3];
    *&v14.start.epoch = v4;
    *&v14.duration.timescale = a1[5];
  }

  else
  {
    v5 = a1[1];
    *&v14.start.value = *a1;
    *&v14.start.epoch = v5;
    *&v14.duration.timescale = a1[2];
    a1 += 3;
  }

  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v13[2] = a1[2];
  v7 = *a3;
  time.epoch = *(a3 + 2);
  v10 = v14;
  *&time.value = v7;
  CMTimeClampToRange(&v12, &time, &v10);
  *a3 = *&v12.value;
  epoch = v12.epoch;
  *(a3 + 2) = v12.epoch;
  *&v12.value = *a3;
  v12.epoch = epoch;
  editMentorMapTimeFromRangeToRange(&v12, &v14, v13, &v10.start);
  result = *&v10.start.value;
  *a3 = *&v10.start.value;
  *(a3 + 2) = v10.start.epoch;
  return result;
}

const char *editMentorGetModeChangePolicyStr(const __CFDictionary *a1)
{
  if (!a1)
  {
    return "default:preserve";
  }

  Value = CFDictionaryGetValue(a1, @"ModeChangePolicy");
  if (!Value)
  {
    return "default:preserve";
  }

  v2 = Value;
  if (CFEqual(Value, @"PreservePreviousOutput"))
  {
    return "preserve";
  }

  if (CFEqual(v2, @"CancelPreviousOutput"))
  {
    return "cancel";
  }

  if (CFEqual(v2, @"RepurposeOrCancelPreviousOutput"))
  {
    return "repurpose";
  }

  else
  {
    return "default:preserve";
  }
}

void __synchronizerRemote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"ServerConnectionDied");
    FigCFDictionarySetInt32();
    FigRemote_ShouldConnectToMediaparserdForFileParsing();
    FigRemote_ShouldConnectToMediaplaybackd();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();

    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -16372;
  }
}

_BYTE *synchronizerRemote_deadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 1;
  return result;
}

__CFString *synchronizerRemote_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferRenderSynchronizerRemote=%p retainCount=%d allocator=%p", a1, v5, v6);
  CFStringAppendFormat(Mutable, 0, @" objectID=%lld", *(DerivedStorage + 8));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t synchronizerRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    synchronizerRemote_getObjectID_cold_1(&v6);
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

uint64_t synchronizerRemote_AddAudioRenderer(uint64_t a1, uint64_t a2)
{
  v2 = synchronizerRemote_sendMessageWithAudioRendererPayload(a1, 1633969249, a2);
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t synchronizerRemote_RemoveAudioRenderer(uint64_t a1, uint64_t a2)
{
  v2 = synchronizerRemote_sendMessageWithAudioRendererPayload(a1, 1919776353, a2);
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t FigDetermineAudioFileTypeHintAndCreateAudioFileInfos(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  outDataSize = 0;
  url = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x1E695FFA0], 0, &url);
    if (url)
    {
      inSpecifier = CFURLCopyPathExtension(url);
      outDataSize = 0;
      if (inSpecifier)
      {
        v8 = 0;
        if (!AudioFileGetGlobalInfoSize(0x74657874u, 8u, &inSpecifier, &outDataSize) && outDataSize)
        {
          v9 = malloc_type_calloc(1uLL, outDataSize, 0x100004052888210uLL);
          if (v9)
          {
            v10 = v9;
            if (AudioFileGetGlobalInfo(0x74657874u, 8u, &inSpecifier, &outDataSize, v9))
            {
              v8 = 0;
            }

            else
            {
              v8 = *v10;
            }

            free(v10);
          }

          else
          {
            v8 = 0;
          }
        }

        if (inSpecifier)
        {
          CFRelease(inSpecifier);
        }

        CFRelease(url);
        if (v8)
        {
          goto LABEL_50;
        }
      }

      else
      {
        CFRelease(url);
      }
    }
  }

  url = 0;
  v11 = CMByteStreamGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x1E6960DC8], 0, &url);
  }

  if (url)
  {
    LODWORD(inSpecifier) = 0;
    CFNumberGetValue(url, kCFNumberSInt32Type, &inSpecifier);
    v13 = inSpecifier;
    LODWORD(inSpecifier) = bswap32(inSpecifier);
    outDataSize = 0;
    if (v13 && !AudioFileGetGlobalInfoSize(0x74686673u, 4u, &inSpecifier, &outDataSize) && outDataSize && (v14 = malloc_type_calloc(1uLL, outDataSize, 0x100004052888210uLL)) != 0)
    {
      v15 = v14;
      if (AudioFileGetGlobalInfo(0x74686673u, 4u, &inSpecifier, &outDataSize, v14))
      {
        v8 = 0;
      }

      else
      {
        v8 = *v15;
      }

      free(v15);
      CFRelease(url);
      if (v8)
      {
        goto LABEL_50;
      }
    }

    else
    {
      CFRelease(url);
    }
  }

  url = 0;
  v16 = CMByteStreamGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    goto LABEL_42;
  }

  v17(v16, *MEMORY[0x1E6960DE0], 0, &url);
  if (!url)
  {
    goto LABEL_42;
  }

  outDataSize = 0;
  v8 = 0;
  if (!AudioFileGetGlobalInfoSize(0x746D696Du, 8u, &url, &outDataSize) && outDataSize)
  {
    v18 = malloc_type_calloc(1uLL, outDataSize, 0x100004052888210uLL);
    if (v18)
    {
      v19 = v18;
      if (AudioFileGetGlobalInfo(0x746D696Du, 8u, &url, &outDataSize, v18))
      {
        v8 = 0;
      }

      else
      {
        v8 = *v19;
      }

      free(v19);
    }

    else
    {
      v8 = 0;
    }
  }

  if (url)
  {
    CFRelease(url);
  }

  if (!v8)
  {
LABEL_42:
    url = 0;
    v20 = CMByteStreamGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21 && (v21(v20, *MEMORY[0x1E6960E38], *MEMORY[0x1E695E480], &url), url))
    {
      outDataSize = 0;
      v8 = 0;
      if (!AudioFileGetGlobalInfoSize(0x74757469u, 8u, &url, &outDataSize) && outDataSize)
      {
        v22 = malloc_type_calloc(1uLL, outDataSize, 0x100004052888210uLL);
        if (v22)
        {
          v23 = v22;
          if (AudioFileGetGlobalInfo(0x74757469u, 8u, &url, &outDataSize, v22))
          {
            v8 = 0;
          }

          else
          {
            v8 = *v23;
          }

          free(v23);
        }

        else
        {
          v8 = 0;
        }
      }

      if (url)
      {
        CFRelease(url);
      }
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_50:
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (v8)
  {
    return v8;
  }

  else
  {
    return 1297106739;
  }
}

uint64_t FigAudioFileShouldNotUseAllowList()
{
  if (qword_1ED4CA768 != -1)
  {
    FigAudioFileShouldNotUseAllowList_cold_1();
  }

  return _MergedGlobals_35;
}

uint64_t AudioFileShouldNotUseAllowList(_BYTE *a1)
{
  result = FigGetCFPreferenceBooleanWithDefault();
  *a1 = result;
  return result;
}

uint64_t FigAudioFormatReaderConvertCodecElementsToMediaSubType(int a1, int a2, char *__s1, uint64_t a4, _DWORD *a5, int *a6, int *a7)
{
  v28 = a1;
  if (!a4)
  {
    if (!__s1)
    {
      if (a7)
      {
        v8 = 0;
        v9 = 4;
        goto LABEL_4;
      }

      return 0;
    }

    v26 = 0;
    v27 = 0;
    outPropertyData = 0;
    inSpecifier = a1;
    if (a1 > 1332176741)
    {
      switch(a1)
      {
        case 1332176742:
          if (!strcmp(__s1, "opus"))
          {
            v13 = 1869641075;
            goto LABEL_50;
          }

          if (!strcmp(__s1, "vorbis"))
          {
            v13 = 1987015266;
            goto LABEL_50;
          }

          if (!strcmp(__s1, "flac"))
          {
            v13 = 1718378851;
            goto LABEL_50;
          }

          if (!strcmp(__s1, "speex"))
          {
            v13 = 1936745848;
            goto LABEL_50;
          }

          goto LABEL_35;
        case 1667327590:
          goto LABEL_24;
        case 1463899717:
          LOWORD(outPropertyDataSize) = 0;
          v23 = 0;
          v14 = sscanf(__s1, "%hx%c", &outPropertyDataSize, &v23);
          if (v14 == 2)
          {
            if (!a7)
            {
              goto LABEL_46;
            }

            v15 = 10;
          }

          else
          {
            if (v14 == 1)
            {
              v26 = 2;
              LOWORD(v27) = outPropertyDataSize;
              v16 = 10;
              goto LABEL_26;
            }

            if (v14 || !a7)
            {
              goto LABEL_46;
            }

            v15 = 6;
          }

          *a7 = v15;
          goto LABEL_46;
      }
    }

    else
    {
      if ((a1 - 1297106737) < 3)
      {
        if (!strcmp(__s1, "mp3"))
        {
          v28 = 1297106739;
          v13 = 778924083;
          goto LABEL_50;
        }

        if (!strcmp(__s1, "mp2"))
        {
          v28 = 1297106738;
          v13 = 778924082;
          goto LABEL_50;
        }

        if (!strcmp(__s1, "mp1"))
        {
          v28 = 1297106737;
          v13 = 778924081;
LABEL_50:
          outPropertyData = v13;
          goto LABEL_51;
        }

LABEL_35:
        if (a7)
        {
          v8 = 0;
          v17 = 0;
          v18 = 2;
LABEL_39:
          *a7 = v18;
LABEL_62:
          free(v17);
          return v8;
        }

        goto LABEL_46;
      }

      if (a1 == 1095321155)
      {
LABEL_24:
        if (!a2)
        {
          goto LABEL_35;
        }

        v26 = 4;
        v27 = a2;
        v16 = 12;
LABEL_26:
        outPropertyDataSize = 0;
        if (!AudioFormatGetPropertyInfo(0x6964636Eu, v16, &inSpecifier, &outPropertyDataSize))
        {
          outPropertyDataSize = 4;
          if (!AudioFormatGetProperty(0x6964636Eu, v16, &inSpecifier, &outPropertyDataSize, &outPropertyData))
          {
            if (outPropertyData)
            {
LABEL_51:
              outPropertyDataSize = 0;
              if (!AudioFileGetGlobalInfoSize(0x666D6964u, 4u, &v28, &outPropertyDataSize))
              {
                v17 = malloc_type_calloc(1uLL, outPropertyDataSize, 0x2826678BuLL);
                AudioFileGetGlobalInfo(0x666D6964u, 4u, &v28, &outPropertyDataSize, v17);
                if (outPropertyDataSize < 4)
                {
LABEL_56:
                  v8 = 0;
                }

                else
                {
                  v19 = 0;
                  v20 = outPropertyData;
                  while (*&v17[v19] != outPropertyData)
                  {
                    v19 += 4;
                    if ((outPropertyDataSize & 0xFFFFFFFC) == v19)
                    {
                      goto LABEL_56;
                    }
                  }

                  if (a5)
                  {
                    *a5 = 1936684398;
                  }

                  if (a6)
                  {
                    *a6 = v20;
                  }

                  v8 = 1;
                }

                goto LABEL_62;
              }

              goto LABEL_46;
            }
          }
        }

        goto LABEL_46;
      }
    }

    if (a7)
    {
      v8 = 0;
      v17 = 0;
      v18 = 1;
      goto LABEL_39;
    }

LABEL_46:
    v8 = 0;
    v17 = 0;
    goto LABEL_62;
  }

  if (!a7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 8;
LABEL_4:
  *a7 = v9;
  return v8;
}

void FigAudioFileFormatReaderFinalize()
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

__CFString *FigAudioFileFormatReaderCopyDebugDescription()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = CFCopyDescription(v2);
    CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileFormatReader: stream<%@>", v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileFormatReader: stream<%@>", 0);
  }

  return Mutable;
}

uint64_t FigAudioFileFormatReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigAudioFileFormatReaderCopyProperty_cold_1(&inSpecifier);
    return inSpecifier;
  }

  v9 = DerivedStorage;
  v10 = *DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"Duration"))
  {
    v11 = v9[1];
    if (v11)
    {
      v12 = kFigTrackProperty_EditedDuration;
LABEL_23:
      v17 = *v12;

      return FigAudioFileTrackReaderCopyProperty(v11, v17, a3, a4);
    }

    return 4294954513;
  }

  if (CFEqual(a2, @"NominalDuration"))
  {
    v11 = v9[1];
    if (v11)
    {
      v12 = kFigTrackProperty_UneditedDuration;
      goto LABEL_23;
    }

    return 4294954513;
  }

  if (CFEqual(a2, @"Identifier"))
  {
    v14 = kFigFormatReaderIdentifier_AudioFile;
LABEL_14:
    GaplessInfoDictionary_0 = CFRetain(*v14);
LABEL_15:
    v16 = GaplessInfoDictionary_0;
    goto LABEL_16;
  }

  if (CFEqual(a2, @"LyricsScanCompleted"))
  {
    v14 = MEMORY[0x1E695E4D0];
    if (!*(v10 + 177))
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_14;
  }

  if (!CFEqual(a2, @"Lyrics"))
  {
    if (CFEqual(a2, @"AccurateDurationIsKnown") || CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
    {
      v14 = MEMORY[0x1E695E4D0];
      goto LABEL_14;
    }

    if (CFEqual(a2, @"iTunesGaplessInfo"))
    {
      GaplessInfoDictionary_0 = CreateGaplessInfoDictionary_0(v10);
      goto LABEL_15;
    }

    if (CFEqual(a2, @"iTunesSoundCheckVolumeNormalization"))
    {
      inSpecifier = CopySoundCheckInfoDictionary(v10);
      if (inSpecifier)
      {
        v27 = 4;
        outPropertyData = 0;
        if (AudioFormatGetProperty(0x73636462u, 8u, &inSpecifier, &v27, &outPropertyData))
        {
          CFRelease(inSpecifier);
        }

        else
        {
          v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &outPropertyData);
          CFRelease(inSpecifier);
          if (v18)
          {
            result = 0;
            *a4 = v18;
            return result;
          }
        }
      }

      return 4294954512;
    }

    if (CFEqual(a2, @"SoundCheckInfo"))
    {
      GaplessInfoDictionary_0 = CopySoundCheckInfoDictionary(v10);
      goto LABEL_15;
    }

    if (CFEqual(a2, @"IndicatesContentProtection"))
    {
      v19 = IndicatesContentProtection(v10);
      v14 = MEMORY[0x1E695E4D0];
      if (!v19)
      {
        v14 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_14;
    }

    if (CFEqual(a2, @"MetadataReaders"))
    {
      v20 = EnsureMetadataReaderCreated(v10, a3);
      if (*(v10 + 224))
      {
        Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(Mutable, *(v10 + 224));
      }

      else
      {
        Mutable = 0;
      }

      *a4 = Mutable;
      return v20;
    }

    if (CFEqual(a2, @"MetadataReader") || CFEqual(a2, @"FormatSpecificMetadataReader"))
    {
      v22 = EnsureMetadataReaderCreated(v10, a3);
      v23 = *(v10 + 224);
      if (v23)
      {
LABEL_51:
        v23 = CFRetain(v23);
      }

LABEL_52:
      *a4 = v23;
      return v22;
    }

    if (CFEqual(a2, @"ID3MetadataReader"))
    {
      v22 = EnsureMetadataReaderCreated(v10, a3);
      v23 = *(v10 + 224);
      if (!v23)
      {
        goto LABEL_52;
      }

      if (*(v10 + 232))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (CFEqual(a2, @"ID3MetadataReaderBC"))
      {
        inSpecifier = 0;
        v24 = *(v10 + 216);
        if ((v24 & 0x8000000000000000) == 0)
        {
          result = FigMetadataReaderCreateForID3WithBackwardCompatibility(a3, *(v10 + 24), v24, &inSpecifier);
          v16 = inSpecifier;
          goto LABEL_17;
        }

        v16 = 0;
LABEL_16:
        result = 0;
LABEL_17:
        *a4 = v16;
        return result;
      }

      if (!CFEqual(a2, @"VorbisCommentMetadataReader"))
      {
        if (CFEqual(a2, @"Chapters"))
        {
          inSpecifier = 0;
          EnsureMetadataReaderCreated(v10, a3);
          v25 = *(v10 + 224);
          if (!v25 || (!*(v10 + 232) ? (ChapterArray = FigVorbisCommentMetadataCreateChapterArray(a3, v25)) : (ChapterArray = FigID3MetadataCreateChapterArrayFromTopLevelTableOfContents(a3, v25)), v16 = ChapterArray, (inSpecifier = ChapterArray) == 0))
          {
            CreateChaptersFromAudioFileChapterList();
            v16 = inSpecifier;
          }

          goto LABEL_16;
        }

        return 4294954512;
      }

      v22 = EnsureMetadataReaderCreated(v10, a3);
      v23 = *(v10 + 224);
      if (!v23)
      {
        goto LABEL_52;
      }

      if (*(v10 + 233))
      {
        goto LABEL_51;
      }
    }

    v23 = 0;
    goto LABEL_52;
  }

  return CopyLyricsFromAudioFile(a1, a4);
}

uint64_t CopyLyricsFromAudioFile(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = 0;
  if (*(v3 + 176))
  {
    goto LABEL_8;
  }

  ioDataSize = 8;
  Property = AudioFileGetProperty(*(v3 + 32), 0x4C595243u, &ioDataSize, a2);
  if (!*(v3 + 177))
  {
    *(v3 + 177) = 1;
    if (!Property)
    {
      goto LABEL_6;
    }

LABEL_8:
    *(v3 + 176) = 1;
    v5 = 4294954513;
    goto LABEL_9;
  }

  if (Property)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (!*a2)
  {
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  return v5;
}

CFTypeRef CopySoundCheckInfoDictionary(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 202))
  {
    ioDataSize = 8;
    AudioFileGetProperty(*(a1 + 32), 0x73636463u, &ioDataSize, (a1 + 208));
    *(a1 + 202) = 1;
  }

  FigSimpleMutexUnlock();
  result = *(a1 + 208);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

BOOL IndicatesContentProtection(uint64_t a1)
{
  FigSimpleMutexLock();
  ioDataSize = 4;
  outPropertyData = 0;
  AudioFileGetProperty(*(a1 + 32), 0x63727074u, &ioDataSize, &outPropertyData);
  v2 = outPropertyData != 0;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t EnsureMetadataReaderCreated(uint64_t a1, const __CFAllocator *a2)
{
  outPropertyData = 0;
  FigSimpleMutexLock();
  v5 = (a1 + 224);
  v4 = *(a1 + 224);
  v6 = *(a1 + 216);
  if (v6 < 0)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_25;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  FigMetadataReaderCreateForID3(a2, *(a1 + 24), v6, (a1 + 224));
  if (*(a1 + 224))
  {
    v7 = 0;
    *(a1 + 232) = 1;
    goto LABEL_25;
  }

LABEL_7:
  ioDataSize = 8;
  AudioFileGetProperty(*(a1 + 32), 0x61617274u, &ioDataSize, &outPropertyData);
  v8 = outPropertyData;
  outDataSize[0] = 0;
  cf = 0;
  if (AudioFileGetPropertyInfo(*(a1 + 32), 0x76636673u, outDataSize, 0) || !outDataSize[0])
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, outDataSize[0], 0xB36113CEuLL);
    if (v9)
    {
      if (!AudioFileGetProperty(*(a1 + 32), 0x76636673u, outDataSize, v9))
      {
        FigMetadataReaderCreateWithVorbisCommentFields(a2, v9, v8, &cf);
        v10 = cf;
        goto LABEL_12;
      }
    }

    else
    {
      EnsureMetadataReaderCreated_cold_1();
    }

    v10 = 0;
  }

LABEL_12:
  *v5 = v10;
  FigReleaseAudioFileMetadataItems(v9);
  free(v9);
  if (*v5)
  {
    v7 = 0;
    v15 = 1;
    goto LABEL_24;
  }

  v11 = outPropertyData;
  cf = 0;
  v20 = 8;
  *outDataSize = 0;
  if (AudioFileGetProperty(*(a1 + 32), 0x696E666Fu, &v20, &cf))
  {
    goto LABEL_28;
  }

  v7 = 0;
  v12 = 0;
  v13 = cf;
  if (v20 == 8 && cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFDictionaryGetTypeID() && CFDictionaryGetCount(cf) >= 1)
    {
      v7 = FigMetadataReaderCreateWithAudioFileProperties(a2, cf, v11, outDataSize);
      v12 = *outDataSize;
LABEL_19:
      v13 = cf;
      goto LABEL_20;
    }

LABEL_28:
    v12 = 0;
    v7 = 0;
    goto LABEL_19;
  }

LABEL_20:
  *v5 = v12;
  if (v13)
  {
    CFRelease(v13);
    v12 = *v5;
  }

  if (v12)
  {
    v15 = 0;
LABEL_24:
    *(a1 + 232) = 0;
    *(a1 + 233) = v15;
  }

LABEL_25:
  FigSimpleMutexUnlock();
  if (outPropertyData)
  {
    CFRelease(outPropertyData);
  }

  return v7;
}

uint64_t GetAudioFilePacketTableInfo(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 178))
  {
    ioDataSize = 16;
    if (!AudioFileGetProperty(*(a1 + 32), 0x706E666Fu, &ioDataSize, (a1 + 184)) && *(a1 + 184) >= 1)
    {
      *(a1 + 179) = 1;
      if ((*(a1 + 192) & 0x80000000) != 0)
      {
        *(a1 + 192) = 0;
      }

      if ((*(a1 + 196) & 0x80000000) != 0)
      {
        *(a1 + 196) = 0;
      }
    }

    *(a1 + 178) = 1;
  }

  return FigSimpleMutexUnlock();
}

uint64_t AudioFileHasSampleDependencies(uint64_t a1)
{
  if (!*(a1 + 200))
  {
    ioDataSize = 4;
    outPropertyData = 0;
    *(a1 + 200) = 1;
    if (!AudioFileGetProperty(*(a1 + 32), 0x72726170u, &ioDataSize, &outPropertyData))
    {
      *(a1 + 201) = outPropertyData != 0;
    }
  }

  return *(a1 + 201);
}

uint64_t MapPacketNumberToFrameNumber_0(uint64_t a1, int64_t a2, int64_t *a3)
{
  v4 = *(a1 + 68);
  if (v4)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 1;
  }

  if ((0x7FFFFFFFFFFEA06FLL / v5) <= a2)
  {
    result = 0;
    *a3 = 0x7FFFFFFFFFFEA06FLL;
    return result;
  }

  if (v4)
  {
    result = 0;
    v7 = v4 * a2;
  }

  else
  {
    outPropertyData[0] = 0;
    outPropertyData[1] = a2;
    outPropertyData[2] = 0;
    ioDataSize = 24;
    result = AudioFileGetProperty(*(a1 + 32), 0x706B6672u, &ioDataSize, outPropertyData);
    if (result)
    {
      return result;
    }

    v7 = outPropertyData[0];
  }

  *a3 = v7;
  return result;
}

uint64_t FigAudioFileFormatReaderCopyTrackByIndex(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    return 4294954453;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v10 = *(DerivedStorage + 8);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a3 = v10;
  }

  if (a4)
  {
    *a4 = 1936684398;
  }

  result = 0;
  if (a5)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t FigAudioFileFormatReaderCopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  if (a2 == 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *a3 = v7;
    }

    if (a4)
    {
      *a4 = 1936684398;
    }

    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigAudioFileFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  result = 4294954453;
  if (!a2 && a3 == 1936684398)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a4)
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *a4 = v9;
    }

    result = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  return result;
}

uint64_t AudioFile_FigReadProc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v12 = 0;
  v9 = *(a1 + 24);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    result = v10(v9, a3, a2, a4, &v12);
    LODWORD(v10) = v12;
  }

  else
  {
    result = 4294954514;
  }

  *a5 = v10;
  return result;
}

uint64_t AudioFile_FigGetSizeProc(uint64_t a1)
{
  v2 = (a1 + 152);
  v1 = *(a1 + 152);
  if (!v1)
  {
    number = 0;
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      if (v4(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number))
      {
        v5 = 1;
      }

      else
      {
        v5 = number == 0;
      }

      if (!v5)
      {
        CFNumberGetValue(number, kCFNumberSInt64Type, v2);
        CFRelease(number);
      }
    }

    return *v2;
  }

  return v1;
}

uint64_t RegisterFigAudioFileInfoType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA778 = result;
  return result;
}

double InitFigAudioFileInfo(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t FinalizeFigAudioFileInfo(uint64_t a1)
{
  free(*(a1 + 168));
  FigFormatDescriptionRelease();
  v2 = *(a1 + 32);
  if (v2)
  {
    AudioFileClose(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 208);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 224);
  if (v5)
  {
    CFRelease(v5);
  }

  result = *(a1 + 16);
  if (result)
  {

    return FigSimpleMutexDestroy();
  }

  return result;
}

void FigAudioFileTrackReaderFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileTrackReaderCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (*DerivedStorage)
  {
    v2 = *(*DerivedStorage + 24);
    if (v2)
    {
      v3 = CFCopyDescription(v2);
      CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileTrackReader: stream<%@> trackID %d", v3, 1);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileTrackReader: stream<%@> trackID %d", 0, 1);
    }
  }

  return Mutable;
}

uint64_t FigAudioFileTrackReaderGetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = 1936684398;
  }

  if (a2)
  {
    *a2 = 1;
  }

  return 0;
}

uint64_t FigAudioFileTrackReaderCopySampleCursorService(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSampleCursorServiceGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    FigAudioFileTrackReaderCopySampleCursorService_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v3)
    {
      v6 = CFRetain(v3);
    }

    else
    {
      v6 = 0;
    }

    *DerivedStorage = v6;
    *a2 = 0;
  }

  return v4;
}

void FigAudioFileCursorService_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileCursorService_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_AudioFile_CursorService %p>{ samplerate %d }", a1, *(*DerivedStorage + 88));
  return Mutable;
}

void FigAudioFileCursor_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileCursor_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_AudioFile_SampleCursor %p>{ curPacketNum %lld }", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t FigAudioFileCursor_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CMTimeValue *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a4)
  {
    FigAudioFileCursor_copyProperty_cold_1(outPacketDescriptions);
    value_low = LODWORD(outPacketDescriptions[0].value);
    goto LABEL_17;
  }

  *a4 = 0;
  if (!CFEqual(a2, @"CursorPlayableHorizon"))
  {
    if (CFEqual(a2, @"PreferCreateSampleBuffer"))
    {
      v14 = CFRetain(*MEMORY[0x1E695E4D0]);
      goto LABEL_16;
    }

    if (!CFEqual(a2, @"SampleDependencyAttributes"))
    {
      value_low = 4294954512;
      goto LABEL_17;
    }

    v26 = CMBaseObjectGetDerivedStorage();
    outPacketDescriptions[0].value = 0;
    HasSampleDependencies = AudioFileHasSampleDependencies(*v26);
    v28 = 0;
    if (HasSampleDependencies)
    {
      outPropertyData = 0;
      DependencyInfo = fafc_GetDependencyInfo(a1, &outPropertyData);
      if (DependencyInfo)
      {
        goto LABEL_41;
      }

      v29 = FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary();
      if (v29)
      {
        value_low = v29;
        if (outPacketDescriptions[0].value)
        {
          CFRelease(outPacketDescriptions[0].value);
        }

        goto LABEL_17;
      }

      v28 = outPacketDescriptions[0].value;
    }

    value_low = 0;
    *a4 = v28;
    goto LABEL_17;
  }

  memset(&v30, 0, sizeof(v30));
  outPropertyData = 0;
  v41 = 0;
  v42 = 0;
  ioDataSize = 24;
  v9 = *DerivedStorage;
  v10 = DerivedStorage[1];
  LODWORD(v11) = *(*DerivedStorage + 68);
  if (v11 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v11;
  }

  if (v10 >= (0x7FFFFFFFFFFEA06FLL / v11))
  {
    v30 = **&MEMORY[0x1E6960CC0];
    goto LABEL_13;
  }

  v43 = 0;
  v41 = v10;
  value_low = AudioFileGetProperty(*(v9 + 32), 0x706B6279u, &ioDataSize, &outPropertyData);
  if (value_low == 1836020325)
  {
    ioNumPackets[0] = 8;
    DependencyInfo = AudioFileReadPacketData(*(*DerivedStorage + 32), 0, 0, outPacketDescriptions, 0, ioNumPackets, 0);
    if (!DependencyInfo)
    {
      value_low = AudioFileGetProperty(*(*DerivedStorage + 32), 0x706B6279u, &ioDataSize, &outPropertyData);
      goto LABEL_10;
    }

LABEL_41:
    value_low = DependencyInfo;
    goto LABEL_17;
  }

LABEL_10:
  if (value_low)
  {
LABEL_11:
    v30 = **&MEMORY[0x1E6960CC0];
    goto LABEL_12;
  }

  v16 = *(*DerivedStorage + 24);
  v17 = outPropertyData;
  v18 = *(*DerivedStorage + 144);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v19 || (v20 = v19(v16, v18 + v17, &v43), v20 == -12782))
  {
    SizeProc = AudioFile_FigGetSizeProc(*DerivedStorage);
    if (!SizeProc)
    {
      goto LABEL_22;
    }
  }

  else
  {
    value_low = v20;
    if (v20)
    {
      goto LABEL_11;
    }

    SizeProc = v43 + outPropertyData;
    if (!(v43 + outPropertyData))
    {
LABEL_22:
      value_low = 0;
      goto LABEL_11;
    }
  }

  v37 = 0;
  v38 = 0;
  value = 0;
  v34 = 0;
  v35 = 0;
  *ioNumPackets = SizeProc;
  v32 = 24;
  value_low = AudioFileGetProperty(*(*DerivedStorage + 32), 0x6279706Bu, &v32, ioNumPackets);
  if (value_low == 1836020325)
  {
    v31 = 8;
    v22 = AudioFileReadPacketData(*(*DerivedStorage + 32), 0, 0, outPacketDescriptions, 0, &v31, 0);
    if (v22)
    {
      value_low = v22;
      goto LABEL_12;
    }

    value_low = AudioFileGetProperty(*(*DerivedStorage + 32), 0x6279706Bu, &v32, ioNumPackets);
  }

  if (!value_low)
  {
    v23 = *DerivedStorage;
    v24 = *(*DerivedStorage + 68);
    if (v24)
    {
      value_low = 0;
      v25 = (v37 - DerivedStorage[1]) * v24;
    }

    else
    {
      v32 = 24;
      v34 = v37;
      value_low = AudioFileGetProperty(*(v23 + 32), 0x706B6672u, &v32, &value);
      v25 = value;
      v23 = *DerivedStorage;
    }

    CMTimeMake(&v30, v25, *(v23 + 88));
  }

LABEL_12:
  if (!value_low)
  {
LABEL_13:
    outPacketDescriptions[0] = v30;
    v14 = CMTimeCopyAsDictionary(outPacketDescriptions, a3);
LABEL_16:
    value_low = 0;
    *a4 = v14;
  }

LABEL_17:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigAudioFileCursor_copy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    FigAudioFileCursor_copy_cold_1();
  }

  else
  {
    v5 = CMBaseObjectGetDerivedStorage();
    *v5 = *DerivedStorage;
    v6 = *v5;
    if (v6)
    {
      CFRetain(v6);
    }

    *a2 = 0;
  }

  return v4;
}

uint64_t FigAudioFileCursor_compareInDecodeOrder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  v3 = *(v1 + 8);
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

uint64_t FigAudioFileCursor_getPresentationTimeStamp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  v5 = PacketToPTS(v4, DerivedStorage[1], a2);
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigAudioFileCursor_getDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  mVariableFramesInPacket = *(v4 + 68);
  if (!mVariableFramesInPacket)
  {
    outPacketDescriptions.mStartOffset = 0;
    *&outPacketDescriptions.mVariableFramesInPacket = 0;
    ioNumPackets = 1;
    v6 = AudioFileReadPacketData(*(v4 + 32), 0, 0, &outPacketDescriptions, DerivedStorage[1], &ioNumPackets, 0);
    if (v6)
    {
      v7 = v6;
      goto LABEL_5;
    }

    mVariableFramesInPacket = outPacketDescriptions.mVariableFramesInPacket;
    if (!outPacketDescriptions.mVariableFramesInPacket)
    {
      v7 = 4294954516;
      goto LABEL_5;
    }
  }

  CMTimeMake(&v11, mVariableFramesInPacket, *(v4 + 88));
  v7 = 0;
  *a2 = v11;
LABEL_5:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigAudioFileCursor_copyChunkDetails(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unint64_t *a6, unint64_t *a7, _BYTE *a8, _BYTE *a9, _BYTE *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = *DerivedStorage;
  FigSimpleMutexLock();
  if (!*(v16 + 120))
  {
    outPropertyData = 0;
    ioDataSize = 8;
    Property = AudioFileGetProperty(*(v16 + 32), 0x646F6666u, &ioDataSize, &outPropertyData);
    if (Property)
    {
      v31 = Property;
      goto LABEL_33;
    }

    *(v16 + 120) = 1;
    *(v16 + 144) = outPropertyData;
  }

  v34 = a8;
  v33 = a7;
  if (*(v16 + 264))
  {
    v18 = *(v16 + 240);
    v19 = *(v16 + 256);
    v20 = a4;
  }

  else
  {
    v21 = 0.5;
    LODWORD(v21) = *(v16 + 68);
    v22 = *(v16 + 48) * 0.5 / v21;
    if (v22 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v22;
    }

    v23 = *(v16 + 128);
    v19 = v23 / v18;
    v24 = v23 % v18;
    *(v16 + 240) = v18;
    *(v16 + 248) = v24;
    *(v16 + 256) = v19;
    if (v24)
    {
      *(v16 + 256) = ++v19;
    }

    else
    {
      *(v16 + 248) = v18;
    }

    v20 = a4;
    *(v16 + 264) = 1;
  }

  v25 = DerivedStorage[1];
  v26 = *(v16 + 96);
  v27 = v18;
  if (v25 / v26 == v19 - 1)
  {
    v27 = *(v16 + 248);
  }

  v28 = *(v16 + 64);
  v29 = *(v16 + 144);
  if (a2)
  {
    v30 = CFRetain(*(v16 + 24));
    v20 = a4;
    *a2 = v30;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (v20)
  {
    *v20 = v29 + v25 / v26 * v26 * v28;
  }

  if (a5)
  {
    *a5 = v27 * v28;
  }

  if (a6)
  {
    *a6 = v27;
  }

  if (v33)
  {
    *v33 = v25 % v18;
  }

  if (v34)
  {
    *v34 = 1;
  }

  if (a9)
  {
    *a9 = 1;
  }

  v31 = 0;
  if (a10)
  {
    *a10 = 1;
  }

LABEL_33:
  FigSimpleMutexUnlock();
  return v31;
}

uint64_t FigAudioFileCursor_copyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(*DerivedStorage + 104);
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *a2 = v4;
  }

  return 0;
}

uint64_t ensureAllocationOfPacketDescriptions(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 160) >= a2)
  {
    return 0;
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v5 = a2;
    free(*(a1 + 168));
    v6 = malloc_type_calloc(v5, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 168) = v6;
    if (v6)
    {
      v7 = 0;
      *(a1 + 160) = v5;
    }

    else
    {
      ensureAllocationOfPacketDescriptions_cold_1(&v9);
      return v9;
    }
  }

  return v7;
}

CFDictionaryRef OUTLINED_FUNCTION_6_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  a9 = a11;
  a10 = a12;

  return CMTimeCopyAsDictionary(&a9, v12);
}

uint64_t figTTMLDocumentWriter_RegisterFigTTMLDocumentWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLDocumentWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTTMLDocumentWriterGetClassID_sRegisterFigTTMLDocumentWriterBaseTypeOnce, figTTMLDocumentWriter_RegisterFigTTMLDocumentWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTTMLDocumentWriterSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTTMLDocumentWriterCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigTTMLDocumentWriterInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTTMLDocumentWriterStartElement(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLDocumentWriterEndElement(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTTMLDocumentWriterAddCaptionData(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLDocumentWriterSetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTTMLDocumentWriterFlush(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t RegisterFigSampleCursorServiceType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleCursorServiceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleCursorServiceGetClassID_sRegisterFigSampleCursorServiceTypeOnce, RegisterFigSampleCursorServiceType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSampleCursorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleCursorGetClassID_sRegisterFigSampleCursorTypeOnce, RegisterFigSampleCursorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSampleCursorUtilityGetBatchSampleTimingAndSizes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  cf = 0;
  if (!a1)
  {
    FigSampleCursorUtilityGetBatchSampleTimingAndSizes_cold_1(&v41);
    return v41;
  }

  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v16)
  {
    v17 = v16(a1, &cf);
    if (!v17)
    {
      if (a2 < 1)
      {
        a2 = 0;
        if (a4)
        {
LABEL_42:
          *a4 = a2;
        }

LABEL_43:
        if (a5)
        {
          *a5 = a2;
        }

        v37 = 0;
        if (a7)
        {
          *a7 = a2;
        }

        goto LABEL_38;
      }

      v39 = a5;
      v40 = a7;
      v18 = a6 + 48;
      v19 = -1;
      v20 = a8;
      while (1)
      {
        if (a8)
        {
          v21 = cf;
          v22 = *(*(CMBaseObjectGetVTable() + 16) + 144);
          if (!v22)
          {
            goto LABEL_37;
          }

          v17 = v22(v21, 0, v20, 0, 0);
          if (v17)
          {
            break;
          }
        }

        if (a6)
        {
          v23 = cf;
          v24 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v24)
          {
            goto LABEL_37;
          }

          v17 = v24(v23, v18 - 24);
          if (v17)
          {
            break;
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            v25 = cf;
            v26 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (!v26)
            {
              goto LABEL_37;
            }

            v17 = v26(v25, v18);
            if (v17)
            {
              break;
            }
          }

          else
          {
            v27 = MEMORY[0x1E6960C70];
            *v18 = *MEMORY[0x1E6960C70];
            *(v18 + 16) = *(v27 + 16);
          }

          v28 = cf;
          v29 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v29)
          {
            goto LABEL_37;
          }

          v17 = v29(v28, v18 - 48);
          if (v17)
          {
            break;
          }
        }

        v41 = 0;
        v30 = cf;
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 168);
        if (!v31)
        {
          goto LABEL_37;
        }

        v17 = v31(v30, 1, &v41);
        if (v17)
        {
          break;
        }

        if (v41 != 1 || a3 && ((v32 = cf, (v33 = *(CMBaseObjectGetVTable() + 16)) == 0) ? (v34 = 0) : (v34 = v33), (v35 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v36 = 0) : (v36 = v35), v34 == v36 && *(v34 + 32) && (*(v36 + 32))(v32, a3) == 1))
        {
          a2 = -v19;
LABEL_35:
          a5 = v39;
          a7 = v40;
          if (a4)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        --v19;
        v18 += 72;
        v20 += 8;
        if (a2 + v19 == -1)
        {
          goto LABEL_35;
        }
      }
    }

    v37 = v17;
  }

  else
  {
LABEL_37:
    v37 = 4294954514;
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  return v37;
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigBufferedAirPlayGlobalRoutingRegistryStartServer_block_invoke;
  block[3] = &unk_1E7481570;
  block[4] = &v3;
  if (FigBufferedAirPlayGlobalRoutingRegistryStartServer_once != -1)
  {
    dispatch_once(&FigBufferedAirPlayGlobalRoutingRegistryStartServer_once, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __FigBufferedAirPlayGlobalRoutingRegistryStartServer_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void globalRoutingRegistry_disposeConnectionState(uint64_t *a1)
{
  if (a1)
  {
    SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
    if (SharedInstance)
    {
      v3 = SharedInstance;
      v4 = *a1;
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v5)
      {
        v5(v3, v4);
      }
    }

    free(a1);
  }
}

uint64_t OUTLINED_FUNCTION_2_43()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_3_32()
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_5_31(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, os_log_type_t type, int a13)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigSnippetEditCursorServiceSetTrackDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(a2 + 16);
  *&DerivedStorage->value = *a2;
  DerivedStorage->epoch = v4;
  snippet_updateSnippetCount(DerivedStorage);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigSnippetEditCursorServiceSetSnippetDurationAndStep(uint64_t a1, CMTime *a2, CMTime *a3, char a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a2->flags & 0x1D) != 1 || (a3->flags & 0x1D) != 1 || (time1 = *a2, v15 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v8 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v8, CMTimeCompare(&time1, &time2) < 1) || (time1 = *a3, *&time2.value = v15, time2.epoch = v8, CMTimeCompare(&time1, &time2) <= 0))
  {
    v9 = MEMORY[0x1E6960C70];
    v10 = *MEMORY[0x1E6960C70];
    *&a2->value = *MEMORY[0x1E6960C70];
    v11 = *(v9 + 16);
    a2->epoch = v11;
    *&a3->value = v10;
    a3->epoch = v11;
  }

  FigSimpleMutexLock();
  v12 = *&a2->value;
  *(DerivedStorage + 40) = a2->epoch;
  *(DerivedStorage + 24) = v12;
  epoch = a3->epoch;
  *(DerivedStorage + 48) = *&a3->value;
  *(DerivedStorage + 64) = epoch;
  *(DerivedStorage + 72) = a4;
  snippet_updateSnippetCount(DerivedStorage);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigSnippetEditCursorServiceCreate(uint64_t a1, uint64_t a2, void *a3)
{
  FigEditCursorServiceGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(a2 + 16);
    *DerivedStorage = *a2;
    *(DerivedStorage + 16) = v7;
    v8 = MEMORY[0x1E6960C70];
    v9 = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
    v10 = *(v8 + 16);
    *(DerivedStorage + 40) = v10;
    *(DerivedStorage + 48) = v9;
    *(DerivedStorage + 64) = v10;
    *(DerivedStorage + 72) = 1;
    *(DerivedStorage + 80) = 1;
    *(DerivedStorage + 88) = FigSimpleMutexCreate();
    *a3 = 0;
  }

  return v5;
}

uint64_t snippetCursorService_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 88);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 88) = 0;
  }

  return result;
}

__CFString *snippetCursorService_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSnippetEditCursorService %p>", a1);
  v4 = *DerivedStorage;
  time.epoch = *(DerivedStorage + 16);
  *&time.value = v4;
  Seconds = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"{ trackDuration %1.3f", *&Seconds);
  if ((*(DerivedStorage + 36) & 0x1D) == 1 && (*(DerivedStorage + 60) & 0x1D) == 1)
  {
    time = *(DerivedStorage + 24);
    v6 = CMTimeGetSeconds(&time);
    CFStringAppendFormat(Mutable, 0, @", snippetDuration %1.3f", *&v6);
    time = *(DerivedStorage + 48);
    v7 = CMTimeGetSeconds(&time);
    CFStringAppendFormat(Mutable, 0, @", snippetStep %1.3f", *&v7);
  }

  CFStringAppendFormat(Mutable, 0, @" }");
  return Mutable;
}

void snippetCursor_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *snippetCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSnippetEditCursor %p>{ service %p, editIndex %d }", a1, *DerivedStorage, DerivedStorage[1]);
  return Mutable;
}

uint64_t snippetCursor_Step(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(v4 + 80);
  FigSimpleMutexUnlock();
  v6 = *(DerivedStorage + 8) + a2;
  v7 = v5 - 1;
  if (v6 >= v5)
  {
    v8 = -12520;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < v5)
  {
    v7 = *(DerivedStorage + 8) + a2;
  }

  if (v6 >= 0)
  {
    result = v8;
  }

  else
  {
    result = 4294954776;
  }

  if (v6 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 8) = v10;
  return result;
}

uint64_t snippetCursor_GetEditSegment(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if ((*(v4 + 60) & 0x1D) == 1)
  {
    v5 = *(DerivedStorage + 8);
    if (v5 >> 31)
    {
      snippetCursor_GetEditSegment_cold_1(&lhs);
      value_low = LODWORD(lhs.value);
    }

    else
    {
      time = *(v4 + 48);
      CMTimeMultiply(&lhs, &time, v5);
      *(a2 + 48) = lhs;
      v6 = *(v4 + 48);
      *(a2 + 88) = *(v4 + 64);
      *(a2 + 72) = v6;
      if (*(v4 + 72))
      {
        lhs = *(v4 + 48);
        v16 = *(v4 + 24);
        CMTimeSubtract(&time, &lhs, &v16);
        v16 = *(a2 + 48);
        CMTimeAdd(&lhs, &v16, &time);
        *a2 = *&lhs.value;
        epoch = lhs.epoch;
      }

      else
      {
        *a2 = *(a2 + 48);
        epoch = *(a2 + 64);
      }

      *(a2 + 16) = epoch;
      value_low = 0;
      v14 = *(v4 + 24);
      *(a2 + 40) = *(v4 + 40);
      *(a2 + 24) = v14;
    }
  }

  else
  {
    value_low = 0;
    v9 = MEMORY[0x1E6960CC0];
    v10 = *MEMORY[0x1E6960CC0];
    *(a2 + 48) = *MEMORY[0x1E6960CC0];
    v11 = *(v9 + 16);
    *(a2 + 64) = v11;
    v12 = *v4;
    *(a2 + 88) = *(v4 + 16);
    *(a2 + 72) = v12;
    *(a2 + 16) = v11;
    *a2 = v10;
    v13 = *(v4 + 16);
    *(a2 + 24) = *v4;
    *(a2 + 40) = v13;
  }

  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t RegisterFigCaptionRendererOutputType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void sapl_didUpdateContentKeyBossToNewBoss(const void *a1, uint64_t a2)
{
  if (_os_feature_enabled_impl())
  {
    if (dword_1EAF16E58)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(a2 + 64);
    *(a2 + 64) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

CFIndex FigStreamingAssetLoaderCopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, void *a4)
{
  if (!a4)
  {
    FigStreamingAssetLoaderCopyProperty_cold_3(&time);
    return LODWORD(time.value);
  }

  if (!a1)
  {
    FigStreamingAssetLoaderCopyProperty_cold_2(&time);
    return LODWORD(time.value);
  }

  FigSimpleMutexLock();
  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    MultivariantPlaylist = sapl_loadMultivariantPlaylist(a1);
    if (MultivariantPlaylist)
    {
      goto LABEL_102;
    }

    if (*(a1 + 120))
    {
      goto LABEL_71;
    }

    if (!*(a1 + 240))
    {
      v10 = *(a1 + 256);
      if (v10)
      {
        goto LABEL_104;
      }

      goto LABEL_71;
    }

    if (FigCFEqual())
    {
      Alternates = FigMultivariantPlaylistGetAlternates(*(a1 + 240));
      ContentKeySpecifiers = FigStreamAlternateCopyAlternates(Alternates);
      goto LABEL_89;
    }

    if (FigCFEqual())
    {
      ContentKeySpecifiers = FigMultivariantPlaylistGetContentKeySpecifiers(*(a1 + 240));
      if (!ContentKeySpecifiers)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }

    if (FigCFEqual())
    {
      ContentKeySpecifiers = FigMultivariantPlaylistGetMediaSelectionArray(*(a1 + 240));
      if (!ContentKeySpecifiers)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }

    if (FigCFEqual())
    {
      v19 = FigMultivariantPlaylistGetAlternates(*(a1 + 240));
      v20 = FigStreamAlternateCopyNominalVideoFrameRate(v19);
    }

    else
    {
      if (FigCFEqual())
      {
        SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(*(a1 + 240));
        if (!SessionDataSpecifiers || CFArrayGetCount(SessionDataSpecifiers) < 1)
        {
          goto LABEL_71;
        }

        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          FigStreamingAssetLoaderCopyProperty_cold_1(&time);
          value_low = LODWORD(time.value);
          goto LABEL_97;
        }

        v27 = Mutable;
        CFArrayAppendValue(Mutable, @"com.apple.quicktime.HLS");
        *a4 = CFRetain(v27);
        CFRelease(v27);
        goto LABEL_96;
      }

      if (!FigCFEqual())
      {
        if (!FigCFEqual())
        {
          goto LABEL_96;
        }

        *&time.value = *MEMORY[0x1E695F060];
        v29 = FigMultivariantPlaylistGetAlternates(*(a1 + 240));
        if (FigStreamAlternateCopyMaximumVideoResolution(v29, &time.value))
        {
          *&v33.width = time.value;
          v33.height = *&time.timescale;
          ContentKeySpecifiers = CGSizeCreateDictionaryRepresentation(v33);
          goto LABEL_89;
        }

        goto LABEL_71;
      }

      v28 = FigMultivariantPlaylistGetAlternates(*(a1 + 240));
      v20 = FigStreamAlternateCopyAvailableVideoDynamicRanges(v28);
    }

    *a4 = v20;
    v21 = v20 == 0;
    v22 = -12783;
LABEL_75:
    if (v21)
    {
      value_low = v22;
    }

    else
    {
      value_low = 0;
    }

    goto LABEL_97;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    MultivariantPlaylist = sapl_loadMultivariantPlaylist(a1);
    if (MultivariantPlaylist)
    {
      goto LABEL_102;
    }

    MultivariantPlaylist = sapl_loadMediaPlaylist(a1);
    if (MultivariantPlaylist)
    {
      goto LABEL_102;
    }

    if (!*(a1 + 264))
    {
      if (!*(a1 + 240) && (v13 = *(a1 + 256)) != 0 || (v13 = *(a1 + 280)) != 0)
      {
        value_low = CFErrorGetCode(v13);
        if (value_low)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_71;
    }

    if (FigCFEqual())
    {
      time = **&MEMORY[0x1E6960C68];
      HasEndTag = FigMediaPlaylistHasEndTag(*(a1 + 264));
      PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a1 + 264));
      if (HasEndTag)
      {
        CMTimeMakeWithSeconds(&time, PlaylistActiveDurationSecs, 1000);
      }

      else if (PlaylistActiveDurationSecs <= 0.0)
      {
        goto LABEL_71;
      }

      v31 = time;
      ContentKeySpecifiers = CMTimeCopyAsDictionary(&v31, a3);
LABEL_89:
      value_low = 0;
      *a4 = ContentKeySpecifiers;
      goto LABEL_97;
    }

    if (FigCFEqual())
    {
      v14 = FigMediaPlaylistGetContentKeySpecifiers(*(a1 + 264));
      if (v14 && CFArrayGetCount(v14) > 0 || (v15 = *(a1 + 240)) != 0 && (v16 = FigMultivariantPlaylistGetContentKeySpecifiers(v15)) != 0 && CFArrayGetCount(v16) >= 1)
      {
        value_low = 0;
        v18 = MEMORY[0x1E695E4D0];
      }

      else
      {
        value_low = 0;
        v18 = MEMORY[0x1E695E4C0];
      }

      *a4 = *v18;
      goto LABEL_97;
    }

    if (!FigCFEqual())
    {
      goto LABEL_96;
    }

    if (!FigMediaPlaylistGetTargetDuration(*(a1 + 264)))
    {
      *a4 = 0;
      goto LABEL_71;
    }

    MinimumTimeOffsetFromLive = sapl_getMinimumTimeOffsetFromLive(a1);
    CMTimeMakeWithSeconds(&time, MinimumTimeOffsetFromLive, 1000000);
    v24 = CMTimeCopyAsDictionary(&time, a3);
    *a4 = v24;
    v21 = v24 == 0;
    v22 = -12786;
    goto LABEL_75;
  }

  if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
  {
    if (FigCFEqual())
    {
      ContentKeySpecifiers = *(a1 + 392);
      if (!ContentKeySpecifiers)
      {
        goto LABEL_71;
      }

      goto LABEL_88;
    }

LABEL_96:
    value_low = 0;
    goto LABEL_97;
  }

  MultivariantPlaylist = sapl_loadMultivariantPlaylist(a1);
  if (MultivariantPlaylist || (FigCFEqual() || FigCFEqual()) && (MultivariantPlaylist = sapl_loadMediaPlaylist(a1), MultivariantPlaylist) || (MultivariantPlaylist = sapl_loadSessionData(a1), MultivariantPlaylist))
  {
LABEL_102:
    value_low = MultivariantPlaylist;
    goto LABEL_97;
  }

  if (FigCFEqual())
  {
    v10 = *(a1 + 304);
    if (!v10)
    {
      ContentKeySpecifiers = *(a1 + 288);
      if (!ContentKeySpecifiers)
      {
        goto LABEL_71;
      }

      goto LABEL_88;
    }

LABEL_104:
    value_low = CFErrorGetCode(v10);
    goto LABEL_97;
  }

  if (FigCFEqual())
  {
    v10 = *(a1 + 352);
    if (v10)
    {
      goto LABEL_104;
    }

    ContentKeySpecifiers = *(a1 + 336);
    if (!ContentKeySpecifiers)
    {
      goto LABEL_71;
    }

    goto LABEL_88;
  }

  if (FigCFEqual())
  {
    v10 = *(a1 + 328);
    if (v10)
    {
      goto LABEL_104;
    }

    ContentKeySpecifiers = *(a1 + 312);
    if (!ContentKeySpecifiers)
    {
      goto LABEL_71;
    }

    goto LABEL_88;
  }

  if (!FigCFEqual())
  {
    goto LABEL_96;
  }

  v10 = *(a1 + 376);
  if (v10)
  {
    goto LABEL_104;
  }

  ContentKeySpecifiers = *(a1 + 360);
  if (ContentKeySpecifiers)
  {
LABEL_88:
    ContentKeySpecifiers = CFRetain(ContentKeySpecifiers);
    goto LABEL_89;
  }

LABEL_71:
  value_low = 4294954513;
LABEL_97:
  FigSimpleMutexUnlock();
  return value_low;
}

double sapl_getMinimumTimeOffsetFromLive(uint64_t a1)
{
  if (FigMediaPlaylistDoesServerSupportsBlockingReload(*(a1 + 264)) && FigMediaPlaylistGetPartTargetDuration(*(a1 + 264)) > 0.0)
  {
    PartTargetDuration = FigMediaPlaylistGetPartTargetDuration(*(a1 + 264));
    v3 = PartTargetDuration + PartTargetDuration;
    if (FigMediaPlaylistGetHoldBackDuration(*(a1 + 264)) <= PartTargetDuration + PartTargetDuration)
    {
      return v3;
    }
  }

  else
  {
    v3 = FigMediaPlaylistGetTargetDuration(*(a1 + 264)) * 3.0;
    if (v3 >= FigMediaPlaylistGetHoldBackDuration(*(a1 + 264)))
    {
      return v3;
    }
  }

  v5 = *(a1 + 264);

  return FigMediaPlaylistGetHoldBackDuration(v5);
}

uint64_t FigStreamingAssetPropertyLoaderCopyAndClearMetricEvents(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      v4 = *(a1 + 384);
      if (v4)
      {
        v5 = CFRetain(v4);
        v6 = *(a1 + 384);
        if (v6)
        {
          CFRelease(v6);
          *(a1 + 384) = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      FigSimpleMutexUnlock();
      result = 0;
      *a2 = v5;
    }

    else
    {
      FigStreamingAssetPropertyLoaderCopyAndClearMetricEvents_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigStreamingAssetPropertyLoaderCopyAndClearMetricEvents_cold_2(&v9);
    return v9;
  }

  return result;
}

uint64_t FigStreamingAssetPropertyLoaderCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, int a6, uint64_t a7, const void *a8, const void *a9, char a10, const void *a11, const void *a12, const void *a13, char a14, uint64_t *a15)
{
  v38 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a15)
  {
    if (!a9 && dword_1EAF16E58)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *context = xmmword_1E7481598;
    if (sapl_getTypeID_once != -1)
    {
      dispatch_once_f(&sapl_getTypeID_once, context, spptUtil_registerClass_0);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v20 = Instance;
      if (a2)
      {
        *(Instance + 16) = CFRetain(a2);
        v21 = CFRetain(a2);
      }

      else
      {
        v21 = 0;
        *(v20 + 16) = 0;
      }

      *(v20 + 24) = v21;
      if (a3)
      {
        v22 = CFRetain(a3);
      }

      else
      {
        v22 = 0;
      }

      *(v20 + 32) = v22;
      if (a4)
      {
        v23 = CFRetain(a4);
      }

      else
      {
        v23 = 0;
      }

      *(v20 + 40) = v23;
      v24 = a5;
      if (a5)
      {
        v24 = CFRetain(a5);
      }

      *(v20 + 48) = v24;
      v25 = a8;
      if (a8)
      {
        v25 = CFRetain(a8);
      }

      *(v20 + 56) = v25;
      if (a9)
      {
        v26 = CFRetain(a9);
      }

      else
      {
        v26 = 0;
      }

      *(v20 + 144) = v26;
      *(v20 + 152) = a10;
      *(v20 + 184) = a7;
      *(v20 + 216) = 0;
      if (a11)
      {
        v27 = CFRetain(a11);
      }

      else
      {
        v27 = 0;
      }

      *(v20 + 72) = v27;
      *(v20 + 176) = a7 & 8;
      *(v20 + 80) = a14;
      if (a12)
      {
        v28 = CFRetain(a12);
      }

      else
      {
        v28 = 0;
      }

      *(v20 + 88) = v28;
      if (a13)
      {
        v29 = CFRetain(a13);
      }

      else
      {
        v29 = 0;
      }

      *(v20 + 96) = v29;
      *(v20 + 104) = a6;
      *(v20 + 112) = FigReentrantMutexCreate();
      *(v20 + 200) = FigReentrantMutexCreate();
      v30 = FigHTTPSchedulerRetain(0);
      *(v20 + 136) = v30;
      if (v30)
      {
        v31 = dispatch_semaphore_create(0);
        result = 0;
        *(v20 + 224) = v31;
        *a15 = v20;
        return result;
      }

      FigStreamingAssetPropertyLoaderCreate_cold_1(v20, context);
    }

    else
    {
      FigStreamingAssetPropertyLoaderCreate_cold_2(context);
    }
  }

  else
  {
    FigStreamingAssetPropertyLoaderCreate_cold_3(context);
  }

  return context[0];
}

uint64_t sapl_waitForSemaphore(uint64_t a1)
{
  FigSimpleMutexUnlock();
  if (!FigThreadRegisterAbortAction())
  {
    dispatch_semaphore_wait(*(a1 + 224), 0xFFFFFFFFFFFFFFFFLL);
  }

  FigThreadUnregisterAbortAction();
  return FigSimpleMutexLock();
}

void sapl_playlistDidProduceDataOutput(uint64_t a1, uint64_t a2, const __CFData *a3, uint64_t a4, uint64_t a5, OpaqueCMBlockBuffer *a6, int a7, int a8)
{
  v32 = 0;
  v31 = 0uLL;
  v29 = 0;
  cf2 = 0;
  FigSimpleMutexLock();
  if (!a7)
  {
    sapl_playlistDidProduceDataOutput_cold_2(&v33);
LABEL_51:
    v26 = v33;
    if (!v33)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  FigMediaRequestForPlaylistCopyURL(a1, &cf2);
  URLForCacheLookup = FigMediaRequestForPlaylistGetURLForCacheLookup(a1);
  ParamsAsDict = FigCFHTTPCopyQueryParamsAsDict(cf2, &v29);
  if (ParamsAsDict)
  {
    v26 = ParamsAsDict;
LABEL_36:
    AllocatorForMedia = FigGetAllocatorForMedia();
    CFError = CFErrorCreate(AllocatorForMedia, @"CoreMediaErrorDomain", v26, 0);
    v19 = 0;
    if (CFError)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

  PlaylistVariables = *(a2 + 240);
  if (PlaylistVariables)
  {
    PlaylistVariables = FigMultivariantPlaylistGetPlaylistVariables(PlaylistVariables);
  }

  v17 = FigStreamPlaylistParse(a6, cf2, URLForCacheLookup, &v32, 0, 1, 1, 1u, (a2 + 392), *(a2 + 72), PlaylistVariables, v29, &v31 + 1, &v31);
  if ((v17 & 0xFFFFFFFB) != 0xFFFFCE9A)
  {
    if (v31 != 0)
    {
      if (!a8 && (*(&v31 + 1) || v31 && FigMediaPlaylistHasEndTag(v31) && (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v31)) != 0 && CFArrayGetCount(MediaSegmentSpecifiers) >= 1))
      {
        FigMediaRequestDeliverOnceWithCacheSaveDataToCache(a1, a6);
      }

      v21 = *(&v31 + 1);
      if (*(&v31 + 1))
      {
        v24 = *(a2 + 240);
        *(a2 + 240) = *(&v31 + 1);
        CFRetain(v21);
        if (v24)
        {
          CFRelease(v24);
        }

        if (FigCFHTTPCompareURLs(*(a2 + 16), cf2))
        {
LABEL_28:
          v25 = *(a2 + 208);
          if (v25 == 2)
          {
            LOBYTE(v25) = 1;
          }

          else
          {
            if (v25 != 1)
            {
              FigSignalErrorAtGM();
              goto LABEL_35;
            }

            *(a2 + 248) = 1;
            if (!*(a2 + 120))
            {
LABEL_35:
              v26 = sapl_appendToUnpublishedPlaylistRequestEvents(a2, a3, cf2, 0, *(&v31 + 1) != 0, a8);
              if (!v26)
              {
                goto LABEL_37;
              }

              goto LABEL_36;
            }
          }

          *(a2 + 272) = v25;
          goto LABEL_35;
        }

        v23 = *(a2 + 16);
        v22 = cf2;
        *(a2 + 16) = cf2;
        if (!v22)
        {
LABEL_26:
          if (v23)
          {
            CFRelease(v23);
          }

          goto LABEL_28;
        }
      }

      else
      {
        v22 = v31;
        if (!v31)
        {
          goto LABEL_28;
        }

        if (*(a2 + 208) == 1)
        {
          *(a2 + 120) = 1;
        }

        v23 = *(a2 + 264);
        *(a2 + 264) = v22;
      }

      CFRetain(v22);
      goto LABEL_26;
    }

    sapl_playlistDidProduceDataOutput_cold_1(&v33);
    goto LABEL_51;
  }

  CFError = FigCreateCFError(@"CoreMediaErrorDomain", v17, @"Playlist parse error", 0, 0, cf2, 0);
  v19 = 6;
  if (CFError)
  {
LABEL_7:
    sapl_playlistDidFail(a1, a2, a3, CFError, v19);
    CFRelease(CFError);
    goto LABEL_41;
  }

LABEL_37:
  sapl_setCurrentMediaRequest(a2, 0);
  if (*(a2 + 232) > 0)
  {
    v28 = 0;
    do
    {
      dispatch_semaphore_signal(*(a2 + 224));
      ++v28;
    }

    while (v28 < *(a2 + 232));
  }

  *(a2 + 232) = 0;
LABEL_41:
  FigSimpleMutexUnlock();
  if (cf2)
  {
    CFRelease(cf2);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (*(&v31 + 1))
  {
    CFRelease(*(&v31 + 1));
  }

  if (v31)
  {
    CFRelease(v31);
  }
}

void sapl_playlistDidFail(uint64_t a1, uint64_t a2, const __CFData *a3, void *a4, uint64_t a5)
{
  v27 = 0;
  cf = 0;
  v26 = 0;
  if (a5 == 8)
  {
    v25 = -19582;
    goto LABEL_45;
  }

  FigSimpleMutexLock();
  FigMediaRequestForPlaylistCopyURL(a1, &cf);
  sapl_appendToUnpublishedPlaylistRequestEvents(a2, a3, cf, a4, *(a2 + 208) == 1, 0);
  v10 = *(a2 + 208);
  if (v10 == 2)
  {
    if (a5 == 6)
    {
      v12 = *(a2 + 240);
      if (v12)
      {
        v13 = *(a2 + 216) + 1;
        *(a2 + 216) = v13;
        Alternates = FigMultivariantPlaylistGetAlternates(v12);
        if (Alternates)
        {
          Alternates = CFArrayGetCount(Alternates);
        }

        if (v13 < Alternates)
        {
          v15 = 0;
          v16 = 2;
          goto LABEL_21;
        }

        *(a2 + 216) = 0;
      }
    }

    if (a4)
    {
      v17 = CFRetain(a4);
    }

    else
    {
      v17 = 0;
    }

    *(a2 + 280) = v17;
    v15 = 1;
    *(a2 + 272) = 1;
  }

  else if (v10 == 1)
  {
    if (a4)
    {
      v11 = CFRetain(a4);
    }

    else
    {
      v11 = 0;
    }

    *(a2 + 256) = v11;
    v15 = 1;
    *(a2 + 248) = 1;
  }

  else
  {
    FigSignalErrorAtGM();
    v15 = 1;
  }

  v16 = 1;
LABEL_21:
  if (a4)
  {
    if (*(a2 + 392) || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a2 + 392) = Mutable) != 0))
    {
      ErrorLogEntry = FigMediaRequestCreateErrorLogEntry(a1, a4, 1, v16);
      CFArrayAppendValue(*(a2 + 392), ErrorLogEntry);
      if (ErrorLogEntry)
      {
        CFRelease(ErrorLogEntry);
      }
    }
  }

  sapl_setCurrentMediaRequest(a2, 0);
  if ((v15 & 1) == 0)
  {
    NextAlternate = sapl_findNextAlternate(a2, &v27);
    if (!NextAlternate)
    {
      PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v27);
      if (PlaylistAlternateURL)
      {
        v24 = CFRetain(PlaylistAlternateURL);
      }

      else
      {
        v24 = 0;
      }

      v26 = v24;
      if (!*(a2 + 80))
      {
        goto LABEL_43;
      }

      NextAlternate = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a2 + 16), &v26);
      if (!NextAlternate)
      {
        v24 = v26;
LABEL_43:
        sapl_playlistDidFail_cold_1(&v27, a2, v24);
        goto LABEL_31;
      }
    }

    v25 = NextAlternate;
LABEL_45:
    sapl_playlistDidFail_cold_2(a2, v25);
    goto LABEL_31;
  }

  if (*(a2 + 232) >= 1)
  {
    v21 = 0;
    do
    {
      dispatch_semaphore_signal(*(a2 + 224));
      ++v21;
    }

    while (v21 < *(a2 + 232));
  }

  *(a2 + 232) = 0;
LABEL_31:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

uint64_t sapl_setCurrentMediaRequest(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 192);
  *(a1 + 192) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexUnlock();
}

uint64_t sapl_sessionDataSchedulerDidFailForItem(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  FigSimpleMutexLock();
  if (FigSessionDataSpecifierIsChapterMetadata(a2))
  {
    v7 = a3[38];
    a3[38] = a4;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (FigSessionDataSpecifierIsLocalizedRenditionNameMetadata(a2))
  {
    v7 = a3[41];
    a3[41] = a4;
    if (!a4)
    {
      goto LABEL_4;
    }

LABEL_3:
    CFRetain(a4);
    goto LABEL_4;
  }

  if (FigSessionDataSpecifierIsCustomMediaSelectionSchemeMetadata(a2))
  {
    v7 = a3[47];
    a3[47] = a4;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = a3[44];
    a3[44] = a4;
    if (a4)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  if (v7)
  {
    CFRelease(v7);
  }

  return FigSimpleMutexUnlock();
}

uint64_t sapl_sessionDataSchedulerDidFinishReadQueue(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  *(a2 + 344) = 1;
  sapl_setCurrentMediaRequest(a2, 0);
  if (*(a2 + 232) >= 1)
  {
    v3 = 0;
    do
    {
      dispatch_semaphore_signal(*(a2 + 224));
      ++v3;
    }

    while (v3 < *(a2 + 232));
  }

  *(a2 + 232) = 0;

  return FigSimpleMutexUnlock();
}

uint64_t sapl_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[16];
  if (v8)
  {
    CFRelease(v8);
    a1[16] = 0;
  }

  v9 = a1[17];
  if (v9)
  {
    dispatch_release(v9);
    a1[17] = 0;
  }

  v10 = a1[18];
  if (v10)
  {
    CFRelease(v10);
    a1[18] = 0;
  }

  v11 = a1[20];
  if (v11)
  {
    CFRelease(v11);
    a1[20] = 0;
  }

  v12 = a1[21];
  if (v12)
  {
    CFRelease(v12);
    a1[21] = 0;
  }

  v13 = a1[11];
  if (v13)
  {
    CFRelease(v13);
    a1[11] = 0;
  }

  v14 = a1[12];
  if (v14)
  {
    CFRelease(v14);
    a1[12] = 0;
  }

  sapl_setCurrentMediaRequest(a1, 0);
  v15 = a1[28];
  if (v15)
  {
    dispatch_release(v15);
    a1[28] = 0;
  }

  v16 = a1[30];
  if (v16)
  {
    CFRelease(v16);
    a1[30] = 0;
  }

  v17 = a1[32];
  if (v17)
  {
    CFRelease(v17);
    a1[32] = 0;
  }

  v18 = a1[33];
  if (v18)
  {
    CFRelease(v18);
    a1[33] = 0;
  }

  v19 = a1[35];
  if (v19)
  {
    CFRelease(v19);
    a1[35] = 0;
  }

  v20 = a1[42];
  if (v20)
  {
    CFRelease(v20);
    a1[42] = 0;
  }

  v21 = a1[44];
  if (v21)
  {
    CFRelease(v21);
    a1[44] = 0;
  }

  v22 = a1[36];
  if (v22)
  {
    CFRelease(v22);
    a1[36] = 0;
  }

  v23 = a1[38];
  if (v23)
  {
    CFRelease(v23);
    a1[38] = 0;
  }

  v24 = a1[39];
  if (v24)
  {
    CFRelease(v24);
    a1[39] = 0;
  }

  v25 = a1[41];
  if (v25)
  {
    CFRelease(v25);
    a1[41] = 0;
  }

  v26 = a1[45];
  if (v26)
  {
    CFRelease(v26);
    a1[45] = 0;
  }

  v27 = a1[47];
  if (v27)
  {
    CFRelease(v27);
    a1[47] = 0;
  }

  v28 = a1[49];
  if (v28)
  {
    CFRelease(v28);
    a1[49] = 0;
  }

  v29 = a1[48];
  if (v29)
  {
    CFRelease(v29);
    a1[48] = 0;
  }

  v30 = a1[9];
  if (v30)
  {
    CFRelease(v30);
    a1[9] = 0;
  }

  FigSimpleMutexDestroy();

  return FigSimpleMutexDestroy();
}

uint64_t spptUtil_registerClass_0(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

CFPropertyListRef OUTLINED_FUNCTION_5_32(const __CFAllocator *a1)
{

  return CFPropertyListCreateWithData(a1, v1, 1uLL, 0, 0);
}

uint64_t OUTLINED_FUNCTION_6_25()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigTrackReaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTrackReaderGetClassID_sRegisterFigTrackReaderBaseTypeOnce, RegisterFigTrackReaderBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigEditCursorServiceBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigEditCursorServiceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigEditCursorServiceGetClassID_sRegisterFigEditCursorServiceBaseTypeOnce, RegisterFigEditCursorServiceBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigEditCursorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigEditCursorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigEditCursorGetClassID_sRegisterFigEditCursorBaseTypeOnce, RegisterFigEditCursorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigPlaybackItemLogCreateW3CLogData(const __CFArray *a1, __CFString **a2)
{
  if (!a1 || !a2)
  {
    FigPlaybackItemLogCreateW3CLogData_cold_3(&v70);
    return v70;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    FigPlaybackItemLogCreateW3CLogData_cold_2(&v69);
    return v69;
  }

  v6 = Mutable;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = CFDateCreate(v4, Current);
  if (!v8)
  {
    v65 = 608;
    goto LABEL_54;
  }

  if (!FigPlaybackItemLogCreateW3CLogData_sDateFormatter)
  {
    v9 = CFDateFormatterCreate(v4, 0, kCFDateFormatterShortStyle, kCFDateFormatterLongStyle);
    if (v9)
    {
      v10 = v9;
      CFDateFormatterSetFormat(v9, @"yyyy/MM/dd HH:mm:ss.sss");
      if (!FigAtomicCompareAndSwapPtr())
      {
        CFRelease(v10);
      }
    }

    if (!FigPlaybackItemLogCreateW3CLogData_sDateFormatter)
    {
      v65 = 620;
LABEL_54:
      FigPlaybackItemLogCreateW3CLogData_cold_1(v65, v6, &v68);
      v63 = v68;
      if (!v8)
      {
        return v63;
      }

      goto LABEL_48;
    }
  }

  v66 = a2;
  CFStringAppend(v6, @"#Version: 1.0\n#Software: ");
  v11 = FigCFHTTPCreateUserAgent();
  if (v11)
  {
    v12 = v11;
    CFStringAppend(v6, v11);
    CFRelease(v12);
  }

  CFStringAppend(v6, @"\n#Date: ");
  v67 = v8;
  StringWithDate = CFDateFormatterCreateStringWithDate(v4, FigPlaybackItemLogCreateW3CLogData_sDateFormatter, v8);
  if (StringWithDate)
  {
    v14 = StringWithDate;
    CFStringAppend(v6, StringWithDate);
    CFRelease(v14);
  }

  if (CFArrayGetCount(a1) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    v16 = CFDictionaryContainsKey(ValueAtIndex, @"status");
    v17 = FigPlaybackItemLogCreateW3CLogData_sDateFormatter;
    v18 = a1;
    Count = CFArrayGetCount(a1);
    if (v16)
    {
      CFStringAppend(v6, @"\n#Fields: date time uri cs-guid s-ip status domain comment cs-iftype\n");
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v21 = CFArrayGetValueAtIndex(a1, i);
          Value = CFDictionaryGetValue(v21, @"date");
          w3cAppendDateString(v6, Value, v17);
          v23 = CFDictionaryGetValue(v21, @"uri");
          if (v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = @"-";
          }

          CFStringAppend(v6, v24);
          CFStringAppend(v6, @" ");
          v25 = CFDictionaryGetValue(v21, @"cs-guid");
          if (v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = @"-";
          }

          CFStringAppend(v6, v26);
          CFStringAppend(v6, @" ");
          v27 = CFDictionaryGetValue(v21, @"s-ip");
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = @"-";
          }

          CFStringAppend(v6, v28);
          CFStringAppend(v6, @" ");
          v29 = CFDictionaryGetValue(v21, @"status");
          w3cAppendNumber(v6, v29, 1);
          v30 = CFDictionaryGetValue(v21, @"domain");
          w3cAppendQuotedString(v6, v30);
          v31 = CFDictionaryGetValue(v21, @"comment");
          w3cAppendQuotedString(v6, v31);
          v32 = CFDictionaryGetValue(v21, @"cs-iftype");
          if (v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = @"-";
          }

          CFStringAppend(v6, v33);
          CFStringAppend(v6, @"\n");
        }
      }
    }

    else
    {
      CFStringAppend(v6, @"\n#Fields: date time uri cs-guid s-ip s-ip-changes sc-count c-duration-downloaded c-start-time c-duration-watched bytes c-observed-bitrate sc-indicated-bitrate c-stalls c-frames-dropped c-startup-time c-overdue c-reason c-observed-min-bitrate c-observed-max-bitrate c-observed-bitrate-sd s-playback-type sc-wwan-count c-switch-bitrate\n");
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          v35 = CFArrayGetValueAtIndex(v18, j);
          v36 = CFDictionaryGetValue(v35, @"date");
          w3cAppendDateString(v6, v36, v17);
          v37 = CFDictionaryGetValue(v35, @"uri");
          if (v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = @"-";
          }

          CFStringAppend(v6, v38);
          CFStringAppend(v6, @" ");
          v39 = CFDictionaryGetValue(v35, @"cs-guid");
          if (v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = @"-";
          }

          CFStringAppend(v6, v40);
          CFStringAppend(v6, @" ");
          v41 = CFDictionaryGetValue(v35, @"s-ip");
          if (v41)
          {
            v42 = v41;
          }

          else
          {
            v42 = @"-";
          }

          CFStringAppend(v6, v42);
          CFStringAppend(v6, @" ");
          v43 = CFDictionaryGetValue(v35, @"s-ip-changes");
          w3cAppendNumber(v6, v43, 1);
          v44 = CFDictionaryGetValue(v35, @"sc-count");
          w3cAppendNumber(v6, v44, 1);
          v45 = CFDictionaryGetValue(v35, @"c-duration-downloaded");
          w3cAppendNumber(v6, v45, 1);
          v46 = CFDictionaryGetValue(v35, @"c-start-time");
          w3cAppendNumber(v6, v46, 1);
          v47 = CFDictionaryGetValue(v35, @"c-duration-watched");
          w3cAppendNumber(v6, v47, 1);
          v48 = CFDictionaryGetValue(v35, @"bytes");
          w3cAppendNumber(v6, v48, 1);
          v49 = CFDictionaryGetValue(v35, @"c-observed-bitrate");
          w3cAppendNumber(v6, v49, 1);
          v50 = CFDictionaryGetValue(v35, @"sc-indicated-bitrate");
          w3cAppendNumber(v6, v50, 1);
          v51 = CFDictionaryGetValue(v35, @"c-stalls");
          w3cAppendNumber(v6, v51, 1);
          v52 = CFDictionaryGetValue(v35, @"c-frames-dropped");
          w3cAppendNumber(v6, v52, 1);
          v53 = CFDictionaryGetValue(v35, @"c-startup-time");
          w3cAppendNumber(v6, v53, 1);
          v54 = CFDictionaryGetValue(v35, @"c-overdue");
          w3cAppendNumber(v6, v54, 1);
          v55 = CFDictionaryGetValue(v35, @"c-reason");
          w3cAppendNumber(v6, v55, 1);
          v56 = CFDictionaryGetValue(v35, @"c-observed-min-bitrate");
          w3cAppendNumber(v6, v56, 1);
          v57 = CFDictionaryGetValue(v35, @"c-observed-max-bitrate");
          w3cAppendNumber(v6, v57, 1);
          v58 = CFDictionaryGetValue(v35, @"c-observed-bitrate-sd");
          w3cAppendNumber(v6, v58, 1);
          v59 = CFDictionaryGetValue(v35, @"s-playback-type");
          if (v59)
          {
            v60 = v59;
          }

          else
          {
            v60 = @"-";
          }

          CFStringAppend(v6, v60);
          CFStringAppend(v6, @" ");
          v61 = CFDictionaryGetValue(v35, @"sc-wwan-count");
          w3cAppendNumber(v6, v61, 1);
          v62 = CFDictionaryGetValue(v35, @"c-switch-bitrate");
          w3cAppendNumber(v6, v62, 0);
          CFStringAppend(v6, @"\n");
        }
      }
    }
  }

  v63 = 0;
  v8 = v67;
  *v66 = v6;
LABEL_48:
  CFRelease(v8);
  return v63;
}

void w3cAppendDateString(CFMutableStringRef theString, CFDateRef date, CFDateFormatterRef formatter)
{
  if (date && (StringWithDate = CFDateFormatterCreateStringWithDate(*MEMORY[0x1E695E480], formatter, date)) != 0)
  {
    v5 = StringWithDate;
    CFStringAppend(theString, StringWithDate);
    CFStringAppend(theString, @" ");

    CFRelease(v5);
  }

  else
  {
    CFStringAppend(theString, @"-");
    CFStringAppend(theString, @" ");
    CFStringAppend(theString, @"-");

    CFStringAppend(theString, @" ");
  }
}

void w3cAppendNumber(CFMutableStringRef theString, CFNumberRef number, int a3)
{
  if (!number || (!CFNumberIsFloatType(number) ? (v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@", number)) : (valuePtr = 0, CFNumberGetValue(number, kCFNumberDoubleType, &valuePtr), v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%.3f", valuePtr)), (v7 = v6) == 0))
  {
    CFStringAppend(theString, @"-");
    if (!a3)
    {
      return;
    }

    goto LABEL_9;
  }

  CFStringAppend(theString, v6);
  CFRelease(v7);
  if (a3)
  {
LABEL_9:
    CFStringAppend(theString, @" ");
  }
}

void w3cAppendQuotedString(CFMutableStringRef theString, const __CFString *a2)
{
  if (a2)
  {
    v4 = @"";
    CFStringAppend(theString, @"");
    CFStringAppend(theString, a2);
  }

  else
  {
    v4 = @"-";
  }

  CFStringAppend(theString, v4);

  CFStringAppend(theString, @" ");
}

uint64_t FigAlternateSetErrorCategory(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 208) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateSetIsFairPlayStreamingVideoAlternate(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 224) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateSetPeakBitRate(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 228) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateSetStreamBitrateCurve(uint64_t a1, const void *a2, unint64_t a3)
{
  result = 4294954516;
  if (a1 && a3 <= 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (a3)
    {
      if (!*(DerivedStorage + 248))
      {
        if (a2)
        {
          v8 = CFRetain(a2);
        }

        else
        {
          v8 = 0;
        }

        *(DerivedStorage + 248) = v8;
      }
    }

    else if (!*(DerivedStorage + 240))
    {
      if (a2)
      {
        v9 = CFRetain(a2);
      }

      else
      {
        v9 = 0;
      }

      *(DerivedStorage + 240) = v9;
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  return result;
}

CFTypeRef FigAlternateCopyStreamBitrateCurve(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2 <= 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (a2)
    {
      v5 = *(DerivedStorage + 248);
      if (v5)
      {
LABEL_5:
        v2 = CFRetain(v5);
LABEL_8:
        FigSimpleMutexUnlock();
        return v2;
      }
    }

    else
    {
      v5 = *(DerivedStorage + 240);
      if (v5)
      {
        goto LABEL_5;
      }
    }

    v2 = 0;
    goto LABEL_8;
  }

  return v2;
}

uint64_t FigAlternateSetLateDiscoveredMediaType(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 != 1986618469)
  {
    return 4294954514;
  }

  v4 = DerivedStorage;
  FigSimpleMutexLock();
  *(v4 + 232) = 1986618469;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateGetCurrentErrorCategory(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 208);
  FigSimpleMutexUnlock();
  return v2;
}

BOOL FigAlternateHasUndeclaredVideo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 232) == 1986618469;
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t FigAlternateHasVideo(uint64_t result)
{
  if (result)
  {
    return FigAlternateHasVideoDeclared(result) || FigAlternateHasUndeclaredVideo();
  }

  return result;
}

uint64_t FigAlternateHasVideoDeclared(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 422))
  {
    v2 = *(DerivedStorage + 421);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (!v3)
    {
      goto LABEL_9;
    }

    MediaValidatorPlist = *(CMBaseObjectGetDerivedStorage() + 480);
    if (!MediaValidatorPlist)
    {
      MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
    }

    if (!FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v3, MediaValidatorPlist, &v7, 0))
    {
      v2 = v7 & 2;
    }

    else
    {
LABEL_9:
      v2 = 1;
    }

    v5 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v5 + 421) = v2;
    *(v5 + 422) = 1;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateHasStereoVideo(__CFArray *a1)
{
  VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 466))
    {
      LOBYTE(DerivedStorage) = *(DerivedStorage + 465);
LABEL_14:
      FigSimpleMutexUnlock();
      return DerivedStorage;
    }

    FigSimpleMutexUnlock();
  }

  v4 = 0;
  LODWORD(DerivedStorage) = 0;
  v5 = *MEMORY[0x1E6960688];
  v6 = *(MEMORY[0x1E6960688] + 8);
  if (!VideoLayoutTags)
  {
    goto LABEL_7;
  }

LABEL_6:
  for (i = CFArrayGetCount(VideoLayoutTags); v4 < i && !DerivedStorage; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v4);
    *&v11.category = v5;
    v11.value = v6;
    LODWORD(DerivedStorage) = CMTagCollectionContainsTag(ValueAtIndex, v11);
    ++v4;
    if (VideoLayoutTags)
    {
      goto LABEL_6;
    }

LABEL_7:
    ;
  }

  if (a1)
  {
    v9 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v9 + 465) = DerivedStorage;
    *(v9 + 466) = 1;
    goto LABEL_14;
  }

  return DerivedStorage;
}

__CFArray *FigAlternateGetVideoLayoutTags(__CFArray *result)
{
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    result = *(DerivedStorage + 144);
    if (!result)
    {
      result = FigAlternateCreateDefaultTagCollectionsArrayForVideo();
      *(DerivedStorage + 144) = result;
    }
  }

  return result;
}

uint64_t FigAlternateHasMVStereoVideo(__CFArray *a1)
{
  VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
  v2 = 0;
  v3 = *MEMORY[0x1E6960688];
  v4 = *(MEMORY[0x1E6960688] + 8);
  v5 = *MEMORY[0x1E6963158];
  v6 = *(MEMORY[0x1E6963158] + 8);
  if (!VideoLayoutTags)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(VideoLayoutTags); ; i = 0)
  {
    if (v2 >= i)
    {
      return 0;
    }

    *&tagBuffer.category = 0;
    tagBuffer.value = 0;
    numberOfTagsCopied = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v2);
    CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_PackingType, &tagBuffer, 1, &numberOfTagsCopied);
    *&v12.category = v3;
    v12.value = v4;
    if (CMTagCollectionContainsTag(ValueAtIndex, v12))
    {
      *&v13.category = v5;
      v13.value = v6;
      if (CMTagEqualToTag(tagBuffer, v13))
      {
        break;
      }
    }

    ++v2;
    if (VideoLayoutTags)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return 1;
}

uint64_t FigAlternateHasAudioDeclared(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 420))
  {
    v2 = *(DerivedStorage + 419);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (!v3)
    {
      goto LABEL_9;
    }

    MediaValidatorPlist = *(CMBaseObjectGetDerivedStorage() + 480);
    if (!MediaValidatorPlist)
    {
      MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
    }

    if (!FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v3, MediaValidatorPlist, &v7, 0))
    {
      v2 = v7 & 1;
    }

    else
    {
LABEL_9:
      v2 = 1;
    }

    v5 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v5 + 419) = v2;
    *(v5 + 420) = 1;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateIsAudioOnly(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (FigAlternateHasVideoDeclared(result))
    {
      return 0;
    }

    else
    {
      result = FigAlternateHasAudioDeclared(v1);
      if (result)
      {
        return !FigAlternateHasUndeclaredVideo();
      }
    }
  }

  return result;
}

uint64_t FigAlternateGetLastKnownValueForIsFullyCached()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 236);
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t FigAlternateGetPeakBitRate(uint64_t result)
{
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v2 = *(DerivedStorage + 228);
    FigSimpleMutexUnlock();
    if (v2)
    {
      return v2;
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

  return result;
}

uint64_t FigAlternateGetExpectedAverageBitrate(uint64_t a1)
{
  if (a1)
  {
    return fa_GetAlternateAverageBandwidth(a1);
  }

  return a1;
}

uint64_t fa_GetAlternateAverageBandwidth(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 48);
  if (!result)
  {

    return FigAlternateGetPeakBitRate(a1);
  }

  return result;
}

uint64_t FigAlternateGetDeclaredPeakBitRate(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 8);
  }

  return result;
}

uint64_t FigAlternateGetAverageBitRate(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 48);
  }

  return result;
}

double FigAlternateGetRankingScore(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 64);
  }

  else
  {
    return -1.0;
  }
}

uint64_t FigAlternateGetVideoQualityIndex(uint64_t result)
{
  if (result)
  {
    v1 = result;
    VideoRange = FigAlternateGetVideoRange(result);
    BestVideoFormat = FigAlternateGetBestVideoFormat(v1);
    if (BestVideoFormat <= 3)
    {
      if (VideoRange >= 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = 20;
      }

      v5 = VideoRange < 2;
      if (VideoRange == 2)
      {
        v6 = 14;
      }

      else
      {
        v6 = 0;
      }

      if (VideoRange == 3)
      {
        v6 = 13;
      }

      if (VideoRange >= 2)
      {
        v7 = v6;
      }

      else
      {
        v7 = 3;
      }

      if (BestVideoFormat != 3)
      {
        v7 = 0;
      }

      if (BestVideoFormat != 2)
      {
        v5 = v7;
      }

      if (BestVideoFormat == 1)
      {
        return v4;
      }

      else
      {
        return v5;
      }
    }

    else if (BestVideoFormat > 6)
    {
      if (BestVideoFormat == 7)
      {
        if (VideoRange == 3)
        {
          v9 = fa_CodecsIncludeVideoFormat(v1, 1685481521, 20) == 0;
          v10 = 22;
          v11 = 12;
          goto LABEL_48;
        }

        return 0;
      }

      if (VideoRange == 3)
      {
        v8 = 17;
      }

      else
      {
        v8 = 0;
      }

      if (BestVideoFormat == 8)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      if (BestVideoFormat != 4)
      {
        if (BestVideoFormat == 5)
        {
          if (VideoRange < 2)
          {
            return 4;
          }

          if (VideoRange == 2)
          {
            v9 = FigAlternateGetBestSupplementalVideoFormat(v1) == 3;
            v10 = 15;
            v11 = 21;
LABEL_48:
            if (v9)
            {
              return v11;
            }

            else
            {
              return v10;
            }
          }

          if (VideoRange == 3)
          {
            v9 = FigAlternateGetBestSupplementalVideoFormat(v1) == 3;
            v10 = 16;
            v11 = 19;
            goto LABEL_48;
          }
        }

        return 0;
      }

      if (VideoRange == 1)
      {
        return 2;
      }

      if (VideoRange != 2)
      {
        if (VideoRange == 3)
        {
          v9 = FigAlternateGetBestSupplementalVideoFormat(v1) == 3;
          v10 = 11;
          v11 = 18;
          goto LABEL_48;
        }

        return 0;
      }

      if (FigAlternateGetBestSupplementalVideoFormat(v1) == 2)
      {
        return 9;
      }

      else
      {
        return 10;
      }
    }
  }

  return result;
}

uint64_t FigAlternateGetVideoRange(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 364))
  {
    v2 = *(DerivedStorage + 360);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = *(CMBaseObjectGetDerivedStorage() + 132) + 2;
    if (v3 > 4)
    {
      v2 = 0;
    }

    else
    {
      v2 = dword_196E76354[v3];
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 360) = v2;
    *(v4 + 364) = 1;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateGetBestVideoFormat(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 260))
  {
    v3 = *(DerivedStorage + 256);
  }

  else
  {
    FigSimpleMutexUnlock();
    if (fa_CodecsIncludeVideoFormat(a1, 1684108849, 0))
    {
      v3 = 8;
    }

    else
    {
      v3 = 7;
      if (!FigAlternateHasVideoFormat(a1, 7))
      {
        if (fa_CodecsIncludeVideoFormat(a1, 1635135537, 0))
        {
          v3 = 5;
        }

        else
        {
          v3 = 4;
          if (!FigAlternateHasVideoFormat(a1, 4))
          {
            if (fa_CodecsIncludeVideoFormat(a1, 1987063865, 0))
            {
              v3 = 3;
            }

            else
            {
              v3 = 2;
              if (!FigAlternateHasVideoFormat(a1, 2))
              {
                v3 = FigAlternateHasVideoFormat(a1, 1) != 0;
              }
            }
          }
        }
      }
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 256) = v3;
    *(v4 + 260) = 1;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAlternateGetBestSupplementalVideoFormat(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 268))
  {
    v3 = *(DerivedStorage + 264);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = 3;
    if (!FigAlternateHasSupplementalVideoFormat(a1, 3))
    {
      v3 = 2;
      if (!FigAlternateHasSupplementalVideoFormat(a1, 2))
      {
        v3 = FigAlternateHasSupplementalVideoFormat(a1, 1) != 0;
      }
    }

    v5 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v5 + 264) = v3;
    *(v5 + 268) = 1;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAlternateHasVideoDolbyVisionHEVCProfile(uint64_t result, int a2)
{
  if (result)
  {
    return fa_CodecsIncludeVideoFormat(result, 1685481521, a2);
  }

  return result;
}

uint64_t FigAlternateMeetsVideoChoice(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v3 = result;
    VideoRange = FigAlternateGetVideoRange(result);
    if (FigAlternateHasVideoFormat(v3, 7))
    {
      return *a2 == 7;
    }

    if (fa_CodecsIncludeVideoFormat(v3, 1684108849, 0))
    {
      return *a2 == 8;
    }

    if (FigAlternateHasVideoFormat(v3, 4))
    {
      v6 = *a2 | 2;
      goto LABEL_12;
    }

    if (fa_CodecsIncludeVideoFormat(v3, 1987063865, 0))
    {
      if (*a2 != 6 && *a2 != 3)
      {
        return 0;
      }
    }

    else if (fa_CodecsIncludeVideoFormat(v3, 1635135537, 0))
    {
      if ((*a2 - 5) > 1)
      {
        return 0;
      }
    }

    else
    {
      if (FigAlternateHasVideoFormat(v3, 2))
      {
        v6 = *a2 | 4;
LABEL_12:
        if (v6 != 6)
        {
          return 0;
        }

        return a2[1] == VideoRange;
      }

      if (!FigAlternateHasVideoFormat(v3, 1))
      {
        return FigAlternateHasUndeclaredVideo() && *a2 == 2;
      }

      if (*a2 != 6 && *a2 != 1)
      {
        return 0;
      }
    }

    return a2[1] == VideoRange;
  }

  return result;
}

uint64_t FigAlternateHasVideoFormat(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2 > 4)
    {
      if (a2 > 6)
      {
        if (a2 == 7)
        {
          if (!fa_CodecsIncludeVideoFormat(v2, 1685481521, 0))
          {
            v3 = 1685481573;
            goto LABEL_32;
          }

          return 1;
        }

        if (a2 != 8)
        {
          return result;
        }

        v5 = v2;
        v6 = 1684108849;
      }

      else
      {
        if (a2 != 5)
        {
          if (fa_CodecsIncludeVideoFormat(v2, 1635148593, 0) || fa_CodecsIncludeVideoFormat(v2, 1635148595, 0) || fa_CodecsIncludeVideoFormat(v2, 1752589105, 0) || fa_CodecsIncludeVideoFormat(v2, 1751479857, 0) || fa_CodecsIncludeVideoFormat(v2, 1987063865, 0))
          {
            return 1;
          }

          v4 = v2;
          v3 = 1635135537;
          return fa_CodecsIncludeVideoFormat(v4, v3, 0) != 0;
        }

        v5 = v2;
        v6 = 1635135537;
      }
    }

    else
    {
      if (a2 <= 2)
      {
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            return result;
          }

          if (!fa_CodecsIncludeVideoFormat(v2, 1635148593, 0))
          {
            v3 = 1635148595;
LABEL_32:
            v4 = v2;
            return fa_CodecsIncludeVideoFormat(v4, v3, 0) != 0;
          }

          return 1;
        }

        if (fa_CodecsIncludeVideoFormat(v2, 1785750887, 0))
        {
          return 1;
        }

        v4 = v2;
        v3 = 1835692135;
        return fa_CodecsIncludeVideoFormat(v4, v3, 0) != 0;
      }

      if (a2 != 3)
      {
        if (fa_CodecsIncludeVideoFormat(v2, 1752589105, 0))
        {
          return 1;
        }

        v4 = v2;
        v3 = 1751479857;
        return fa_CodecsIncludeVideoFormat(v4, v3, 0) != 0;
      }

      v5 = v2;
      v6 = 1987063865;
    }

    return fa_CodecsIncludeVideoFormat(v5, v6, 0);
  }

  return result;
}

uint64_t FigAlternateGetNormalizedPeakBitrate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    BestVideoFormat = FigAlternateGetBestVideoFormat(result);
    if (BestVideoFormat >= 9)
    {
      v3 = 0;
    }

    else
    {
      v3 = BestVideoFormat;
    }

    v4 = kVideoCodecScoreFactor[v3];
    PeakBitRate = FigAlternateGetPeakBitRate(v1);
    if (PeakBitRate == 0x7FFFFFFF)
    {
      return 0x7FFFFFFFLL;
    }

    else
    {
      return (v4 * PeakBitRate);
    }
  }

  return result;
}

int FigAlternateGetVariantBitrateRank(uint64_t a1, signed int a2)
{
  if (a1)
  {
    NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
    if (NormalizedPeakBitrate <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = NormalizedPeakBitrate;
    }

    if (v4 <= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4;
    }

    LODWORD(a1) = vcvtpd_s64_f64(v4 * 100.0 / v5);
  }

  return a1;
}

uint64_t FigAlternateGetCodecString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 16);
  }

  return result;
}

uint64_t FigAlternateGetSupplementalCodecString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 72);
  }

  return result;
}

BOOL FigAlternateHasDeclaredPathwayID(_BOOL8 result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 152) != 0;
  }

  return result;
}

__CFString *FigAlternateGetPathwayID(uint64_t a1)
{
  v1 = @".";
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 152))
    {
      return *(DerivedStorage + 152);
    }
  }

  return v1;
}

uint64_t FigAlternateIsIFrameOnly(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 24);
  }

  return result;
}

uint64_t FigAlternateHasValidCodecs(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 418))
  {
    IsValidCodecString = *(DerivedStorage + 417);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (v3)
    {
      MediaValidatorPlist = *(CMBaseObjectGetDerivedStorage() + 480);
      if (!MediaValidatorPlist)
      {
        MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
      }

      IsValidCodecString = FigStreamAlternateIsValidCodecString(v3, MediaValidatorPlist, 0, 0, 0, 0);
    }

    else
    {
      IsValidCodecString = 1;
    }

    v5 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v5 + 417) = IsValidCodecString;
    *(v5 + 418) = 1;
  }

  FigSimpleMutexUnlock();
  return IsValidCodecString;
}

const __CFString *FigAlternateHasUnknownCodecs(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 424))
  {
    v2 = *(DerivedStorage + 423);
  }

  else
  {
    FigSimpleMutexUnlock();
    v2 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (v2)
    {
      MediaValidatorPlist = *(CMBaseObjectGetDerivedStorage() + 480);
      if (!MediaValidatorPlist)
      {
        MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
      }

      if (FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v2, MediaValidatorPlist, &v6, 0))
      {
        v2 = 0;
      }

      else
      {
        v2 = ((v6 >> 2) & 1);
      }
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 423) = v2;
    *(v4 + 424) = 1;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateHasVideoCodecType(uint64_t result, int a2)
{
  if (result)
  {
    return fa_CodecsIncludeVideoFormat(result, a2, 0);
  }

  return result;
}

uint64_t fa_CodecsIncludeVideoFormat(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  }

  else
  {
    v5 = 0;
  }

  CodecAndProfile = 0;
  if (a2 <= 1685481572)
  {
    if (a2 <= 1635148594)
    {
      if (a2 == 1635135537)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(DerivedStorage + 316))
        {
          CodecAndProfile = *(DerivedStorage + 315);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v18 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v18 + 315) = CodecAndProfile;
          *(v18 + 316) = 1;
        }

        goto LABEL_63;
      }

      if (a2 == 1635148593)
      {
        v10 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v10 + 300))
        {
          CodecAndProfile = *(v10 + 299);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v19 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v19 + 299) = CodecAndProfile;
          *(v19 + 300) = 1;
        }

        goto LABEL_63;
      }
    }

    else
    {
      switch(a2)
      {
        case 1635148595:
          v15 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v15 + 302))
          {
            CodecAndProfile = *(v15 + 301);
          }

          else
          {
            FigSimpleMutexUnlock();
            CodecAndProfile = FigCFStringFind();
            v22 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v22 + 301) = CodecAndProfile;
            *(v22 + 302) = 1;
          }

          goto LABEL_63;
        case 1684108849:
          v12 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (a3 == 10)
          {
            if (v12[320])
            {
              CodecAndProfile = v12[319];
            }

            else
            {
              FigSimpleMutexUnlock();
              CodecAndProfile = fa_CodecStringFindCodecAndProfile(v5, @"dav1", 10);
              v27 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexLock();
              *(v27 + 319) = CodecAndProfile;
              *(v27 + 320) = 1;
            }
          }

          else if (v12[318])
          {
            CodecAndProfile = v12[317];
          }

          else
          {
            FigSimpleMutexUnlock();
            CodecAndProfile = FigCFStringFind();
            v28 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v28 + 317) = CodecAndProfile;
            *(v28 + 318) = 1;
          }

          goto LABEL_63;
        case 1685481521:
          v8 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (a3 == 5)
          {
            if (v8[314])
            {
              CodecAndProfile = v8[313];
            }

            else
            {
              FigSimpleMutexUnlock();
              CodecAndProfile = fa_CodecStringFindCodecAndProfile(v5, @"dvh1", 5);
              v30 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexLock();
              *(v30 + 313) = CodecAndProfile;
              *(v30 + 314) = 1;
            }
          }

          else if (a3 == 20)
          {
            if (v8[312])
            {
              CodecAndProfile = v8[311];
            }

            else
            {
              FigSimpleMutexUnlock();
              CodecAndProfile = fa_CodecStringFindCodecAndProfile(v5, @"dvh1", 20);
              v29 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexLock();
              *(v29 + 311) = CodecAndProfile;
              *(v29 + 312) = 1;
            }
          }

          else if (v8[310])
          {
            CodecAndProfile = v8[309];
          }

          else
          {
            FigSimpleMutexUnlock();
            CodecAndProfile = FigCFStringFind();
            v31 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v31 + 309) = CodecAndProfile;
            *(v31 + 310) = 1;
          }

          goto LABEL_63;
      }
    }
  }

  else if (a2 > 1785750886)
  {
    switch(a2)
    {
      case 1785750887:
        v17 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v17 + 296))
        {
          CodecAndProfile = *(v17 + 295);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v26 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v26 + 295) = CodecAndProfile;
          *(v26 + 296) = 1;
        }

        goto LABEL_63;
      case 1835692135:
        v14 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v14 + 298))
        {
          CodecAndProfile = *(v14 + 297);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v21 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v21 + 297) = CodecAndProfile;
          *(v21 + 298) = 1;
        }

        goto LABEL_63;
      case 1987063865:
        v9 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v9 + 322))
        {
          CodecAndProfile = *(v9 + 321);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v24 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v24 + 321) = CodecAndProfile;
          *(v24 + 322) = 1;
        }

        goto LABEL_63;
    }
  }

  else
  {
    switch(a2)
    {
      case 1685481573:
        v16 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v16 + 308))
        {
          CodecAndProfile = *(v16 + 307);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v25 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v25 + 307) = CodecAndProfile;
          *(v25 + 308) = 1;
        }

        goto LABEL_63;
      case 1751479857:
        v13 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v13 + 306))
        {
          CodecAndProfile = *(v13 + 305);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v20 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v20 + 305) = CodecAndProfile;
          *(v20 + 306) = 1;
        }

        goto LABEL_63;
      case 1752589105:
        v7 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v7 + 304))
        {
          CodecAndProfile = *(v7 + 303);
        }

        else
        {
          FigSimpleMutexUnlock();
          CodecAndProfile = FigCFStringFind();
          v23 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v23 + 303) = CodecAndProfile;
          *(v23 + 304) = 1;
        }

LABEL_63:
        FigSimpleMutexUnlock();
        break;
    }
  }

  return CodecAndProfile;
}

uint64_t FigAlternateHasVideoDolbyVisionProfile(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    return fa_CodecsIncludeVideoFormat(result, 1685481521, a2) || fa_CodecsIncludeVideoFormat(v3, 1684108849, a2) != 0;
  }

  return result;
}

double FigAlternateGetResolution(uint64_t a1)
{
  if (a1)
  {
    v1 = CMBaseObjectGetDerivedStorage() + 160;
  }

  else
  {
    v1 = MEMORY[0x1E695F060];
  }

  return *v1;
}

uint64_t FigAlternateGetPixelCount(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = (DerivedStorage + 160);
    v3 = (DerivedStorage + 168);
  }

  else
  {
    v2 = MEMORY[0x1E695F060];
    v3 = (MEMORY[0x1E695F060] + 8);
  }

  return *v3 * *v2;
}

uint64_t FigAlternateGetPixelPerSecondCount(__CFArray *a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = *(DerivedStorage + 168) * *(DerivedStorage + 160);
    v4 = *(CMBaseObjectGetDerivedStorage() + 56);
  }

  else
  {
    v3 = *(MEMORY[0x1E695F060] + 8) * *MEMORY[0x1E695F060];
    v4 = 0.0;
  }

  if (v4 == 0.0)
  {
    v4 = 23.976;
  }

  return (v4 * v3) << FigAlternateHasMVStereoVideo(a1);
}

double FigAlternateGetFrameRate(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 56);
  }

  else
  {
    return 0.0;
  }
}

uint64_t FigAlternateGetFrameRateBucket(uint64_t a1)
{
  if (a1)
  {
    v1 = *(CMBaseObjectGetDerivedStorage() + 56);
  }

  else
  {
    v1 = 0.0;
  }

  if (v1 <= 60.0)
  {
    return v1 > 30.0;
  }

  else
  {
    return 2;
  }
}

uint64_t FigFrameRateToFrameRateBucket(double a1)
{
  if (a1 <= 60.0)
  {
    return a1 > 30.0;
  }

  else
  {
    return 2;
  }
}

uint64_t FigAlternateGetRankingScoreOrAverageBWWithVideoCodecScore(uint64_t result, int a2, _DWORD *a3)
{
  if (result)
  {
    v5 = result;
    CMBaseObjectGetDerivedStorage();
    result = fa_GetAlternateAverageBandwidth(v5);
    v6 = result;
    if (a2)
    {
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      result = FigAlternateGetBestVideoFormat(v5);
      if (!a3)
      {
        return result;
      }
    }
  }

  else
  {
    v6 = 0;
    if (!a3)
    {
      return result;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t FigAlternateGetAlternateIndex(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 28);
  }

  return result;
}

uint64_t FigAlternateGetZeroIndexedAlternateIndex(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 32);
  }

  return result;
}

BOOL FigAlternateHasRankingScore(_BOOL8 result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 64) > 0.0;
  }

  return result;
}

double FigAlternateGetStartupScore(uint64_t a1)
{
  if (!a1)
  {
    return -1.79769313e308;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 216);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigAlternateGetAllowedAOCP(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 116);
  }

  else
  {
    return 1;
  }
}

uint64_t FigAlternateGetAllowedCPC(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 136);
  }

  else
  {
    return -1;
  }
}

uint64_t FigAlternateGetHDCPLevel(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 128);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t FigAlternateHasDeclaredVideoLayoutTags(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 117);
  }

  return result;
}

CFMutableStringRef FigAlternateGetVideoLayoutString(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(v4 + 448))
  {
    VideoLayoutLoggingStringFromCollectionArray = *(v4 + 440);
LABEL_10:
    FigSimpleMutexUnlock();
    return VideoLayoutLoggingStringFromCollectionArray;
  }

  FigSimpleMutexUnlock();
  if (!*(CMBaseObjectGetDerivedStorage() + 117))
  {
    VideoLayoutLoggingStringFromCollectionArray = 0;
LABEL_9:
    v6 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v6 + 440) = VideoLayoutLoggingStringFromCollectionArray;
    *(v6 + 448) = 1;
    goto LABEL_10;
  }

  VideoLayoutLoggingStringFromCollectionArray = FigAlternateCreateVideoLayoutLoggingStringFromCollectionArray(*(v3 + 144));
  if (VideoLayoutLoggingStringFromCollectionArray)
  {
    goto LABEL_9;
  }

  return VideoLayoutLoggingStringFromCollectionArray;
}

CFMutableStringRef FigAlternateGetVideoContentTypeString(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(v4 + 464))
  {
    VideoContentTypeStringFromCollectionArray = *(v4 + 456);
LABEL_10:
    FigSimpleMutexUnlock();
    return VideoContentTypeStringFromCollectionArray;
  }

  FigSimpleMutexUnlock();
  if (!*(CMBaseObjectGetDerivedStorage() + 117))
  {
    VideoContentTypeStringFromCollectionArray = 0;
LABEL_9:
    v6 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v6 + 456) = VideoContentTypeStringFromCollectionArray;
    *(v6 + 464) = 1;
    goto LABEL_10;
  }

  VideoContentTypeStringFromCollectionArray = FigAlternateCreateVideoContentTypeStringFromCollectionArray(*(v3 + 144));
  if (VideoContentTypeStringFromCollectionArray)
  {
    goto LABEL_9;
  }

  return VideoContentTypeStringFromCollectionArray;
}

__CFString *FigAlternateGetHDCPString(uint64_t a1)
{
  if (a1 && (v1 = *(CMBaseObjectGetDerivedStorage() + 128) + 1, v1 <= 2))
  {
    return off_1E7481AB0[v1];
  }

  else
  {
    return @"Unknown";
  }
}

__CFString *FigAlternateGetLoggingStringFromHDCPLevel(int a1)
{
  if ((a1 + 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481AB0[a1 + 1];
  }
}

uint64_t FigAlternateGetAudioGroupIDString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 80);
  }

  return result;
}

uint64_t FigAlternateGetVideoGroupIDString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 88);
  }

  return result;
}

uint64_t FigAlternateGetSubtitleGroupIDString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 96);
  }

  return result;
}

uint64_t FigAlternateGetClosedCaptionGroupIDString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 104);
  }

  return result;
}

uint64_t FigAlternateIsVideoGroupSynthesized(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 113);
  }

  return result;
}

uint64_t FigAlternateIsAudioGroupSynthesized(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 112);
  }

  return result;
}

uint64_t FigAlternateIsSubtitleGroupSynthesized(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 114);
  }

  return result;
}

uint64_t FigAlternateIsClosedCaptionGroupSynthesized(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 115);
  }

  return result;
}

__CFString *FigAlternateGetVideoRangeString(__CFString *result)
{
  if (result)
  {
    v1 = FigAlternateGetVideoRange(result) - 1;
    if (v1 > 3)
    {
      return @"Unknown";
    }

    else
    {
      return off_1E7481AC8[v1];
    }
  }

  return result;
}

uint64_t FigAlternateGetStableStreamIdentifier(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 120);
  }

  return result;
}

uint64_t FigAlternateGetPlaylistAlternateURL(uint64_t result)
{
  if (result)
  {
    return *CMBaseObjectGetDerivedStorage();
  }

  return result;
}

uint64_t FigAlternateGetURLForCacheLookup(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 40);
  }

  return result;
}

uint64_t FigAlternateGetRenditionInfoForMediaType(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, int a6, const __CFDictionary **a7, void *a8, void *a9)
{
  if (a2 == 1986618469)
  {
    if (!a1)
    {
      goto LABEL_14;
    }

    v14 = 184;
    a5 = a3;
  }

  else
  {
    if (a2 != 1936684398)
    {
      if (a2 == 1935832172 && a1)
      {
        v14 = 192;
        goto LABEL_10;
      }

LABEL_14:
      v16 = 0;
      v18 = 0;
      Value = 0;
      goto LABEL_15;
    }

    if (!a1)
    {
      goto LABEL_14;
    }

    v14 = 176;
    a5 = a4;
  }

LABEL_10:
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  if (a5)
  {
    v17 = *(DerivedStorage + v14);
    v18 = 0;
    Value = 0;
    if (v17)
    {
      Value = CFDictionaryGetValue(v17, a5);
      if (Value)
      {
        v20 = Value;
        v16 = CFDictionaryGetValue(Value, *MEMORY[0x1E6962BB0]);
        v18 = CFDictionaryGetValue(v20, *MEMORY[0x1E6962BB8]);
        Value = CFDictionaryGetValue(v20, *MEMORY[0x1E6962BA8]);
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
    Value = 0;
  }

LABEL_15:
  if (a6 && !v16 && !v18 && !Value)
  {
    if (a1)
    {
      v16 = *CMBaseObjectGetDerivedStorage();
      v18 = *(CMBaseObjectGetDerivedStorage() + 40);
      Value = *(CMBaseObjectGetDerivedStorage() + 120);
    }

    else
    {
      v16 = 0;
      v18 = 0;
      Value = 0;
    }
  }

  if (a7)
  {
    *a7 = Value;
  }

  if (a8)
  {
    *a8 = v16;
  }

  if (a9)
  {
    *a9 = v18;
  }

  return 0;
}

uint64_t FigAlternateGetSubtitleGroupLocatorMap(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 192);
  }

  return result;
}

uint64_t FigAlternateGetAudioGroupLocatorMap(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 176);
  }

  return result;
}

uint64_t FigAlternateGetVideoGroupLocatorMap(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 184);
  }

  return result;
}

const __CFURL *FigAlternateGetCacheLookupIdentifier(const __CFURL *result)
{
  if (result)
  {
    result = *(CMBaseObjectGetDerivedStorage() + 120);
    if (!result)
    {
      result = *CMBaseObjectGetDerivedStorage();
      if (result)
      {

        return CFURLGetString(result);
      }
    }
  }

  return result;
}

uint64_t FigAlternateGetClosedCaptionGroupLocatorMap(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 200);
  }

  return result;
}

uint64_t FigAlternateGetMediaGroupLocatorMap(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 1936684397)
  {
    if (a2 == 1936684398)
    {
      if (a1)
      {
        v3 = 176;
        return *(CMBaseObjectGetDerivedStorage() + v3);
      }

      return 0;
    }

    if (a2 == 1986618469)
    {
      if (a1)
      {
        v3 = 184;
        return *(CMBaseObjectGetDerivedStorage() + v3);
      }

      return 0;
    }
  }

  else
  {
    if (a2 == 1668047728)
    {
      if (a1)
      {
        v3 = 200;
        return *(CMBaseObjectGetDerivedStorage() + v3);
      }

      return 0;
    }

    if (a2 == 1935832172)
    {
      if (a1)
      {
        v3 = 192;
        return *(CMBaseObjectGetDerivedStorage() + v3);
      }

      return 0;
    }
  }

  return v2;
}

const __CFString *FigAlternateGetAudioFormatIDs(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    FigAlternateHasAudioDeclared(0);
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 416))
  {
    v3 = *(DerivedStorage + 408);
    FigSimpleMutexUnlock();
    return v3;
  }

  FigSimpleMutexUnlock();
  if (FigAlternateHasAudioDeclared(a1))
  {
    v3 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (!v3)
    {
      goto LABEL_9;
    }

    MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
    if (!FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v3, MediaValidatorPlist, 0, &cf))
    {
      Value = FigCFDictionaryGetValue();
      v3 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(v5 + 408) = v3;
  *(v5 + 416) = 1;
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

const __CFArray *FigAlternateGetCountOfValidMediaSubTypes(const __CFArray *result, int a2)
{
  if (!result)
  {
    return result;
  }

  if (a2 == 1986618469)
  {
    result = FigAlternateGetVideoCodecs(result);
    if (!result)
    {
      return result;
    }

    return CFArrayGetCount(result);
  }

  if (a2 != 1936684398)
  {
    return 0;
  }

  result = FigAlternateGetAudioFormatIDs(result);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const void *FigAlternateGetVideoCodecs(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    v4 = 0;
    v3 = 0;
    if (!FigAlternateHasVideoDeclared(0))
    {
      return v3;
    }

LABEL_8:
    MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
    if (FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v4, MediaValidatorPlist, 0, &cf))
    {
      v3 = 0;
    }

    else
    {
      Value = FigCFDictionaryGetValue();
      v3 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    if (!a1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 400))
  {
    v3 = *(DerivedStorage + 392);
    FigSimpleMutexUnlock();
    return v3;
  }

  FigSimpleMutexUnlock();
  if (FigAlternateHasVideoDeclared(a1))
  {
    v4 = *(CMBaseObjectGetDerivedStorage() + 16);
    goto LABEL_8;
  }

  v3 = 0;
LABEL_15:
  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(v7 + 392) = v3;
  *(v7 + 400) = 1;
  FigSimpleMutexUnlock();
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t FigAlternateHasAudioFormatID(const void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == 1700997939)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 354))
    {
      v4 = *(DerivedStorage + 353);
LABEL_20:
      FigSimpleMutexUnlock();
      return v4;
    }

    FigSimpleMutexUnlock();
    if (!fa_CodecsIncludeAudioFormatChoice(a1, 1700998451))
    {
      v4 = 0;
LABEL_19:
      v12 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v12 + 353) = v4;
      *(v12 + 354) = 1;
      goto LABEL_20;
    }

    v6 = *(CMBaseObjectGetDerivedStorage() + 176);
    Count = FigCFDictionaryGetCount();
    if (Count < 1)
    {
      v4 = 0;
      v10 = 0;
LABEL_18:
      free(v10);
      goto LABEL_19;
    }

    v8 = Count;
    v9 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    if (v9)
    {
      v10 = v9;
      CFDictionaryGetKeysAndValues(v6, v9, 0);
      v11 = 0;
      while (1)
      {
        v13 = 0;
        FigAlternateGetAudioChannelCount(a1, v10[v11], &v13);
        if (v13)
        {
          break;
        }

        if (v8 == ++v11)
        {
          v4 = 0;
          goto LABEL_18;
        }
      }

      v4 = 1;
      goto LABEL_18;
    }

    FigAlternateHasAudioFormatID_cold_1();
    return 0;
  }

  return fa_CodecsIncludeAudioFormatChoice(a1, a2);
}

uint64_t fa_CodecsIncludeAudioFormatChoice(uint64_t a1, int a2)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  v3 = 0;
  if (a2 <= 1633889586)
  {
    if (a2 > 1633772319)
    {
      switch(a2)
      {
        case 1633772320:
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(DerivedStorage + 330))
          {
            v3 = *(DerivedStorage + 329);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v24 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v24 + 329) = v3;
            *(v24 + 330) = 1;
          }

          goto LABEL_59;
        case 1633772392:
          v16 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v16 + 332))
          {
            v3 = *(v16 + 331);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v26 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v26 + 331) = v3;
            *(v26 + 332) = 1;
          }

          goto LABEL_59;
        case 1633772400:
          v7 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v7 + 334))
          {
            v3 = *(v7 + 333);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v29 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v29 + 333) = v3;
            *(v29 + 334) = 1;
          }

          goto LABEL_59;
      }
    }

    else
    {
      switch(a2)
      {
        case 778924081:
          v13 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v13 + 336))
          {
            v3 = *(v13 + 335);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v23 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v23 + 335) = v3;
            *(v23 + 336) = 1;
          }

          goto LABEL_59;
        case 778924082:
          v15 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v15 + 338))
          {
            v3 = *(v15 + 337);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v25 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v25 + 337) = v3;
            *(v25 + 338) = 1;
          }

          goto LABEL_59;
        case 778924083:
          v5 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v5 + 340))
          {
            v3 = *(v5 + 339);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v28 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v28 + 339) = v3;
            *(v28 + 340) = 1;
          }

          goto LABEL_59;
      }
    }
  }

  else if (a2 <= 1700998450)
  {
    switch(a2)
    {
      case 1633889587:
        v11 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v11 + 350))
        {
          v3 = *(v11 + 349);
        }

        else
        {
          FigSimpleMutexUnlock();
          v3 = FigCFStringFind();
          v19 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v19 + 349) = v3;
          *(v19 + 350) = 1;
        }

        goto LABEL_59;
      case 1634492771:
        v12 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v12 + 348))
        {
          v3 = *(v12 + 347);
        }

        else
        {
          FigSimpleMutexUnlock();
          v3 = FigCFStringFind();
          v22 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v22 + 347) = v3;
          *(v22 + 348) = 1;
        }

        goto LABEL_59;
      case 1634754915:
        v6 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v6 + 356))
        {
          v3 = *(v6 + 355);
        }

        else
        {
          FigSimpleMutexUnlock();
          v3 = FigCFStringFind();
          v27 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v27 + 355) = v3;
          *(v27 + 356) = 1;
        }

        goto LABEL_59;
    }
  }

  else if (a2 > 1869641074)
  {
    if (a2 == 1869641075)
    {
      v10 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(v10 + 346))
      {
        v3 = *(v10 + 345);
      }

      else
      {
        FigSimpleMutexUnlock();
        v3 = FigCFStringFind();
        v18 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v18 + 345) = v3;
        *(v18 + 346) = 1;
      }

      goto LABEL_59;
    }

    if (a2 == 1970495843)
    {
      v8 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(v8 + 342))
      {
        v3 = *(v8 + 341);
      }

      else
      {
        FigSimpleMutexUnlock();
        v3 = FigCFStringFind();
        v21 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v21 + 341) = v3;
        *(v21 + 342) = 1;
      }

      goto LABEL_59;
    }
  }

  else
  {
    if (a2 == 1700998451)
    {
      v9 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(v9 + 352))
      {
        v3 = *(v9 + 351);
      }

      else
      {
        FigSimpleMutexUnlock();
        v3 = FigCFStringFind();
        v17 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v17 + 351) = v3;
        *(v17 + 352) = 1;
      }

      goto LABEL_59;
    }

    if (a2 == 1718378851)
    {
      v4 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(v4 + 344))
      {
        v3 = *(v4 + 343);
      }

      else
      {
        FigSimpleMutexUnlock();
        v3 = FigCFStringFind();
        v20 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v20 + 343) = v3;
        *(v20 + 344) = 1;
      }

LABEL_59:
      FigSimpleMutexUnlock();
    }
  }

  return v3;
}

uint64_t FigAlternateGetAudioChannelCount(const void *a1, const void *a2, _DWORD *a3)
{
  v6 = 0uLL;
  v7 = 0;
  fa_getDeclaredAudioInfo(a1, a2, &v6);
  result = v6;
  if (a3)
  {
    *a3 = DWORD1(v6);
  }

  if (!result)
  {
    return FigAlternateGetAudioChannelCountAccordingToCodecTag(a1);
  }

  return result;
}

BOOL FigAlternateGetBestAudioFormat(const void *a1)
{
  if (!a1)
  {
    return FigAlternateHasAudioFormat(0, 1) != 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 276))
  {
    v3 = *(DerivedStorage + 272);
  }

  else
  {
    FigSimpleMutexUnlock();
    if (fa_CodecsIncludeAudioFormatChoice(a1, 1718378851))
    {
      v3 = 2;
    }

    else if (fa_CodecsIncludeAudioFormatChoice(a1, 1634492771))
    {
      v3 = 4;
    }

    else if (fa_CodecsIncludeAudioFormatChoice(a1, 1634754915))
    {
      v3 = 8;
    }

    else if (FigAlternateHasAudioFormatID(a1, 1700997939))
    {
      v3 = 7;
    }

    else if (fa_CodecsIncludeAudioFormatChoice(a1, 1700998451))
    {
      v3 = 6;
    }

    else if (fa_CodecsIncludeAudioFormatChoice(a1, 1633889587))
    {
      v3 = 5;
    }

    else if (fa_CodecsIncludeAudioFormatChoice(a1, 1869641075))
    {
      v3 = 3;
    }

    else
    {
      v3 = FigAlternateHasAudioFormat(a1, 1) != 0;
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 272) = v3;
    *(v4 + 276) = 1;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAlternateGetDeclaredAudioChannelCount(const void *a1, const void *a2, _DWORD *a3)
{
  v5 = 0uLL;
  v6 = 0;
  fa_getDeclaredAudioInfo(a1, a2, &v5);
  if (a3)
  {
    *a3 = DWORD1(v5);
  }

  return v5;
}

uint64_t FigAlternateGetAudioChannelCountAccordingToCodecTag(const void *a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 284))
    {
      v3 = *(DerivedStorage + 280);
    }

    else
    {
      FigSimpleMutexUnlock();
      if (FigAlternateHasAudioFormatID(a1, 1634754915))
      {
        v3 = 4;
      }

      else if (FigAlternateHasAudioFormatID(a1, 1700998451))
      {
        v3 = 8;
      }

      else if (FigAlternateHasAudioFormatID(a1, 1633889587))
      {
        v3 = 6;
      }

      else if (FigAlternateHasAudioFormatID(a1, 1718378851) || FigAlternateHasAudioFormatID(a1, 1869641075) || FigAlternateHasAudioFormatID(a1, 1634492771) || FigAlternateHasAudioFormat(a1, 1))
      {
        v3 = 2;
      }

      else
      {
        v3 = 2 * (*(CMBaseObjectGetDerivedStorage() + 24) == 0);
      }

      v4 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v4 + 280) = v3;
      *(v4 + 284) = 1;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigAlternateGetAudioChannelCountAccordingToCodecTag_cold_1();
    return 2;
  }

  return v3;
}

uint64_t FigAlternateGetAudioChannelCounts(const void *a1, const void *a2, _DWORD *a3, _DWORD *a4)
{
  AudioChannelCount = FigAlternateGetAudioChannelCount(a1, a2, a4);
  if (a3)
  {
    *a3 = 0;
    if (a1)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(DerivedStorage + 436))
      {
        v8 = *(DerivedStorage + 432);
      }

      else
      {
        FigSimpleMutexUnlock();
        AudioFormatIDs = FigAlternateGetAudioFormatIDs(a1);
        if (AudioFormatIDs && (v10 = AudioFormatIDs, CFArrayGetCount(AudioFormatIDs) >= 1))
        {
          v8 = 0;
          v11 = 0;
          do
          {
            FigCFArrayGetInt32AtIndex();
            AudioMaximumDecodeChannelCount = FigStreamAlternateGetAudioMaximumDecodeChannelCount(0);
            if (AudioMaximumDecodeChannelCount > v8)
            {
              v8 = AudioMaximumDecodeChannelCount;
            }

            ++v11;
          }

          while (CFArrayGetCount(v10) > v11);
        }

        else
        {
          v8 = 0;
        }

        v13 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v13 + 432) = v8;
        *(v13 + 436) = 1;
      }

      FigSimpleMutexUnlock();
      if (v8)
      {
        v14 = AudioChannelCount <= v8;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        *a3 = AudioChannelCount - v8;
      }
    }
  }

  return AudioChannelCount;
}

uint64_t FigAlternateHasLosslessAudio(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 294))
  {
    v3 = *(DerivedStorage + 293);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = 1;
    if (!fa_CodecsIncludeAudioFormatChoice(a1, 1718378851))
    {
      v3 = fa_CodecsIncludeAudioFormatChoice(a1, 1634492771) != 0;
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 293) = v3;
    *(v4 + 294) = 1;
  }

  FigSimpleMutexUnlock();
  return v3;
}

double FigAlternateGetMaxAudioSampleRate(uint64_t a1)
{
  if (!a1)
  {
    v4 = 0;
    if (!FigAlternateHasAudioDeclared(0))
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 384))
  {
    FigSimpleMutexUnlock();
    if (!FigAlternateHasAudioDeclared(a1))
    {
      v8 = 0;
      v3 = 0.0;
LABEL_19:
      v11 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v11 + 376) = v3;
      *(v11 + 384) = 1;
      FigSimpleMutexUnlock();
      v4 = v8;
      goto LABEL_20;
    }

    v4 = *(CMBaseObjectGetDerivedStorage() + 176);
LABEL_8:
    Count = FigCFDictionaryGetCount();
    if (Count < 1)
    {
      v8 = 0;
      v3 = 0.0;
      goto LABEL_16;
    }

    v6 = Count;
    v7 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    if (v7)
    {
      v8 = v7;
      CFDictionaryGetKeysAndValues(v4, v7, 0);
      v9 = 0;
      v3 = 0.0;
      do
      {
        AudioSampleRate = FigAlternateGetAudioSampleRate(a1, v8[v9]);
        if (AudioSampleRate > v3)
        {
          v3 = AudioSampleRate;
        }

        ++v9;
      }

      while (v6 != v9);
LABEL_16:
      v4 = v8;
      if (!a1)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    FigAlternateGetMaxAudioSampleRate_cold_1();
    v4 = 0;
LABEL_5:
    v3 = 0.0;
LABEL_20:
    free(v4);
    return v3;
  }

  v3 = *(DerivedStorage + 376);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAlternateWillPlayIfFairplayProtected(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 428))
  {
    HasValidCodecs = *(DerivedStorage + 427);
  }

  else
  {
    FigSimpleMutexUnlock();
    HasValidCodecs = FigAlternateHasValidCodecs(a1);
    if (*(CMBaseObjectGetDerivedStorage() + 16) && HasValidCodecs && FigAlternateHasValidCodecs(a1) && fa_hasVideoDecodedBySoftware(a1))
    {
      HasValidCodecs = !FigAlternateHasVideoFormat(a1, 4) && !FigAlternateHasVideoFormat(a1, 7) && !fa_CodecsIncludeVideoFormat(a1, 1635135537, 0) && fa_CodecsIncludeVideoFormat(a1, 1684108849, 0) == 0;
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 427) = HasValidCodecs;
    *(v4 + 428) = 1;
  }

  FigSimpleMutexUnlock();
  return HasValidCodecs;
}

unint64_t fa_hasVideoDecodedBySoftware(uint64_t a1)
{
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 426))
  {
    FigSimpleMutexUnlock();
    if (a1)
    {
      v3 = *(CMBaseObjectGetDerivedStorage() + 16);
      if (!v3)
      {
LABEL_9:
        v5 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v5 + 425) = v3;
        *(v5 + 426) = 1;
        goto LABEL_10;
      }

      MediaValidatorPlist = *(CMBaseObjectGetDerivedStorage() + 480);
      if (!MediaValidatorPlist)
      {
        MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
      }

      if (!FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v3, MediaValidatorPlist, &v7, 0))
      {
        v3 = (~v7 & 0x18) == 0;
        goto LABEL_9;
      }
    }

    v3 = 0;
    goto LABEL_9;
  }

  v3 = *(DerivedStorage + 425);
LABEL_10:
  FigSimpleMutexUnlock();
  return v3;
}

BOOL FigAlternateHasVideoCodecRequiringSoftwareDecode(_BOOL8 result)
{
  if (result)
  {
    return fa_hasVideoDecodedBySoftware(result) != 0;
  }

  return result;
}

unint64_t FigAlternateShouldBeAvoidedForPlaybackInLPM(unint64_t result)
{
  if (result)
  {
    v1 = result;
    result = fa_hasVideoDecodedBySoftware(result);
    if (!result)
    {
      return FigAlternateGetVideoRange(v1) > 1;
    }
  }

  return result;
}

uint64_t FigAlternateGetMaxAudioChannelCount(const void *a1)
{
  if (!a1)
  {
    AudioChannelCountAccordingToCodecTag = 0;
    v4 = 0;
    if (!FigAlternateHasAudioDeclared(0))
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 292))
  {
    FigSimpleMutexUnlock();
    if (!FigAlternateHasAudioDeclared(a1))
    {
      goto LABEL_18;
    }

    AudioChannelCountAccordingToCodecTag = *(CMBaseObjectGetDerivedStorage() + 176);
LABEL_8:
    Count = FigCFDictionaryGetCount();
    if (Count >= 1)
    {
      v6 = Count;
      v4 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
      if (!v4)
      {
        FigAlternateGetMaxAudioChannelCount_cold_1();
        AudioChannelCountAccordingToCodecTag = 0;
        goto LABEL_21;
      }

      CFDictionaryGetKeysAndValues(AudioChannelCountAccordingToCodecTag, v4, 0);
      v7 = 0;
      LODWORD(AudioChannelCountAccordingToCodecTag) = 0;
      do
      {
        v8 = v4[v7];
        v11 = 0uLL;
        v12 = 0;
        fa_getDeclaredAudioInfo(a1, v8, &v11);
        if (v11 <= AudioChannelCountAccordingToCodecTag)
        {
          AudioChannelCountAccordingToCodecTag = AudioChannelCountAccordingToCodecTag;
        }

        else
        {
          AudioChannelCountAccordingToCodecTag = v11;
        }

        ++v7;
      }

      while (v6 != v7);
      if (AudioChannelCountAccordingToCodecTag)
      {
        if (!a1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      AudioChannelCountAccordingToCodecTag = FigAlternateGetAudioChannelCountAccordingToCodecTag(a1);
      if (!a1)
      {
LABEL_21:
        free(v4);
        return AudioChannelCountAccordingToCodecTag;
      }

LABEL_20:
      v9 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v9 + 288) = AudioChannelCountAccordingToCodecTag;
      *(v9 + 292) = 1;
      FigSimpleMutexUnlock();
      goto LABEL_21;
    }

LABEL_18:
    v4 = 0;
    goto LABEL_19;
  }

  AudioChannelCountAccordingToCodecTag = *(DerivedStorage + 288);
  FigSimpleMutexUnlock();
  return AudioChannelCountAccordingToCodecTag;
}

uint64_t FigAlternateGetMaxPlayableAudioChannelCount(const void *a1)
{
  if (!a1)
  {
    AudioChannelCountAccordingToCodecTag = 0;
    v4 = 0;
    if (!FigAlternateHasAudioDeclared(0))
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 372))
  {
    FigSimpleMutexUnlock();
    if (!FigAlternateHasAudioDeclared(a1))
    {
      goto LABEL_18;
    }

    AudioChannelCountAccordingToCodecTag = *(CMBaseObjectGetDerivedStorage() + 176);
LABEL_8:
    Count = FigCFDictionaryGetCount();
    if (Count >= 1)
    {
      v6 = Count;
      v4 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
      if (!v4)
      {
        FigAlternateGetMaxPlayableAudioChannelCount_cold_1();
        AudioChannelCountAccordingToCodecTag = 0;
        goto LABEL_21;
      }

      CFDictionaryGetKeysAndValues(AudioChannelCountAccordingToCodecTag, v4, 0);
      v7 = 0;
      LODWORD(AudioChannelCountAccordingToCodecTag) = 0;
      do
      {
        v11 = 0;
        AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, v4[v7], &v11, 0);
        if (AudioChannelCounts - v11 <= AudioChannelCountAccordingToCodecTag)
        {
          AudioChannelCountAccordingToCodecTag = AudioChannelCountAccordingToCodecTag;
        }

        else
        {
          AudioChannelCountAccordingToCodecTag = (AudioChannelCounts - v11);
        }

        ++v7;
      }

      while (v6 != v7);
      if (AudioChannelCountAccordingToCodecTag)
      {
        if (!a1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      AudioChannelCountAccordingToCodecTag = FigAlternateGetAudioChannelCountAccordingToCodecTag(a1);
      if (!a1)
      {
LABEL_21:
        free(v4);
        return AudioChannelCountAccordingToCodecTag;
      }

LABEL_20:
      v9 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v9 + 368) = AudioChannelCountAccordingToCodecTag;
      *(v9 + 372) = 1;
      FigSimpleMutexUnlock();
      goto LABEL_21;
    }

LABEL_18:
    v4 = 0;
    goto LABEL_19;
  }

  AudioChannelCountAccordingToCodecTag = *(DerivedStorage + 368);
  FigSimpleMutexUnlock();
  return AudioChannelCountAccordingToCodecTag;
}

uint64_t FigAlternateHasBinauralAudio(const void *a1)
{
  if (!a1)
  {
    v4 = 0;
    if (!FigAlternateHasAudioDeclared(0))
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 366))
  {
    FigSimpleMutexUnlock();
    if (!FigAlternateHasAudioDeclared(a1))
    {
      v3 = 0;
      v8 = 0;
LABEL_19:
      v10 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v10 + 365) = v3;
      *(v10 + 366) = 1;
      FigSimpleMutexUnlock();
      v4 = v8;
      goto LABEL_20;
    }

    v4 = *(CMBaseObjectGetDerivedStorage() + 176);
LABEL_8:
    Count = FigCFDictionaryGetCount();
    if (Count < 1)
    {
      v8 = 0;
LABEL_15:
      v3 = 0;
LABEL_16:
      v4 = v8;
      if (!a1)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v6 = Count;
    v7 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    if (v7)
    {
      v8 = v7;
      CFDictionaryGetKeysAndValues(v4, v7, 0);
      v9 = 0;
      while (FigAlternateGetSpecializedAudioChannelUsage(a1, v8[v9]) != 3)
      {
        if (v6 == ++v9)
        {
          goto LABEL_15;
        }
      }

      v3 = 1;
      goto LABEL_16;
    }

    FigAlternateHasBinauralAudio_cold_1();
    v4 = 0;
LABEL_5:
    v3 = 0;
LABEL_20:
    free(v4);
    return v3;
  }

  v3 = *(DerivedStorage + 365);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAlternateIsPeakBitRateDeclared(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 8);
  }

  return result;
}

BOOL FigAlternateIsAverageBitRateDeclared(_BOOL8 result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 48) != 0;
  }

  return result;
}

BOOL FigAlternateIsFrameRateDeclared(_BOOL8 result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 56) > 0.0;
  }

  return result;
}

__CFString *FigAlternateGetStringFromVideoRange(int a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481AC8[a1 - 1];
  }
}

__CFString *FigAlternateGetStringFromVideoFormat(int a1)
{
  if ((a1 - 1) > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481AE8[a1 - 1];
  }
}

__CFString *FigAlternateGetStringFromAudioFormat(int a1)
{
  if ((a1 - 1) > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481B30[a1 - 1];
  }
}

__CFString *FigAlternateGetStringFromHDCPState(int a1)
{
  if ((a1 + 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481B78[a1 + 1];
  }
}

__CFString *FigAlternateGetPlaylistStringFromHDCPLevel(int a1)
{
  if ((a1 + 1) > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7481B90[a1 + 1];
  }
}

__CFString *FigAlternateGetStringFromFramerateBucket(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"UnknownBucket";
  }

  else
  {
    return off_1E7481BA8[a1];
  }
}

__CFString *FigAlternateGetStringFromSpecializedChannelUsage(int a1)
{
  if ((a1 - 2) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481BC8[a1 - 2];
  }
}

uint64_t FigAlternateStreamVideoQualityIndexToCMVideoDynamicRange(int a1)
{
  if ((a1 - 1) > 0x15)
  {
    return 0;
  }

  else
  {
    return dword_196E76368[a1 - 1];
  }
}

BOOL FigAlternateIs4k(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = (DerivedStorage + 160);
    v3 = (DerivedStorage + 168);
  }

  else
  {
    v2 = MEMORY[0x1E695F060];
    v3 = (MEMORY[0x1E695F060] + 8);
  }

  v4 = *v2;
  if (*v3 < *v2)
  {
    v4 = *v3;
  }

  return v4 > 1440.0;
}

BOOL FigAlternateHasHDVideoResolution(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = (DerivedStorage + 160);
    v3 = (DerivedStorage + 168);
  }

  else
  {
    v2 = MEMORY[0x1E695F060];
    v3 = (MEMORY[0x1E695F060] + 8);
  }

  v4 = *v2;
  if (*v3 < *v2)
  {
    v4 = *v3;
  }

  return v4 >= 1440.0;
}

double fa_getAlternateAvgToPeakRatio(uint64_t a1)
{
  if (a1)
  {
    AlternateAverageBandwidth = fa_GetAlternateAverageBandwidth(a1);
  }

  else
  {
    AlternateAverageBandwidth = 0.0;
  }

  return AlternateAverageBandwidth / FigAlternateGetPeakBitRate(a1);
}

uint64_t FigAlternateGetClassID()
{
  if (_MergedGlobals_36 != -1)
  {
    FigAlternateGetClassID_cold_1();
  }

  return qword_1ED4CA798;
}

uint64_t RegisterFigAlternateType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAlternateGetTypeID()
{
  if (_MergedGlobals_36 != -1)
  {
    FigAlternateGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigAlternateCreate(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5, char a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    if (_MergedGlobals_36 != -1)
    {
      FigAlternateGetClassID_cold_1();
    }

    v16 = CMDerivedObjectCreate();
    if (!v16)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a3)
      {
        v18 = CFRetain(a3);
      }

      else
      {
        v18 = 0;
      }

      *DerivedStorage = v18;
      v19 = *a9;
      if (*a9)
      {
        v19 = CFRetain(v19);
      }

      *(DerivedStorage + 8) = a4;
      v20 = *(a9 + 8);
      *(DerivedStorage + 40) = v19;
      *(DerivedStorage + 48) = v20;
      *(DerivedStorage + 56) = *(a9 + 16);
      if (a5)
      {
        v21 = CFRetain(a5);
      }

      else
      {
        v21 = 0;
      }

      *(DerivedStorage + 16) = v21;
      v22 = *(a9 + 32);
      if (v22)
      {
        v22 = CFRetain(v22);
      }

      *(DerivedStorage + 72) = v22;
      v23 = *(a9 + 56);
      if (v23)
      {
        v23 = CFRetain(v23);
      }

      *(DerivedStorage + 80) = v23;
      *(DerivedStorage + 112) = *(a9 + 64);
      v24 = *(a9 + 40);
      if (v24)
      {
        v24 = CFRetain(v24);
      }

      *(DerivedStorage + 88) = v24;
      *(DerivedStorage + 113) = *(a9 + 48);
      v25 = *(a9 + 72);
      if (v25)
      {
        v25 = CFRetain(v25);
      }

      *(DerivedStorage + 96) = v25;
      *(DerivedStorage + 114) = *(a9 + 80);
      v26 = *(a9 + 88);
      if (v26)
      {
        v26 = CFRetain(v26);
      }

      *(DerivedStorage + 104) = v26;
      *(DerivedStorage + 115) = *(a9 + 96);
      *(DerivedStorage + 24) = a6;
      *(DerivedStorage + 64) = *(a9 + 24);
      v27 = *(a9 + 104);
      if (v27)
      {
        v27 = CFRetain(v27);
      }

      *(DerivedStorage + 120) = v27;
      *(DerivedStorage + 128) = *(a9 + 112);
      *(DerivedStorage + 136) = *(a9 + 120);
      *(DerivedStorage + 116) = *(a9 + 200);
      v28 = *(a9 + 144);
      if (v28)
      {
        v28 = CFRetain(v28);
      }

      *(DerivedStorage + 152) = v28;
      *(DerivedStorage + 160) = *(a9 + 152);
      *(DerivedStorage + 28) = a7;
      *(DerivedStorage + 32) = a8;
      v29 = *(a9 + 168);
      if (v29)
      {
        v29 = CFRetain(v29);
      }

      *(DerivedStorage + 176) = v29;
      v30 = *(a9 + 176);
      if (v30)
      {
        v30 = CFRetain(v30);
      }

      *(DerivedStorage + 184) = v30;
      v31 = *(a9 + 184);
      if (v31)
      {
        v31 = CFRetain(v31);
      }

      *(DerivedStorage + 192) = v31;
      v32 = *(a9 + 192);
      if (v32)
      {
        v32 = CFRetain(v32);
      }

      *(DerivedStorage + 200) = v32;
      v33 = FigSimpleMutexCreate();
      *(DerivedStorage + 488) = v33;
      if (v33)
      {
        *(DerivedStorage + 216) = 0xFFEFFFFFFFFFFFFFLL;
        *(DerivedStorage + 228) = a4;
        v34 = a2;
        if (a2)
        {
          v34 = CFRetain(a2);
        }

        *(DerivedStorage + 480) = v34;
        v35 = *(a9 + 128);
        if (v35)
        {
          v35 = CFRetain(v35);
        }

        v16 = 0;
        *(DerivedStorage + 144) = v35;
        *(DerivedStorage + 117) = *(a9 + 136);
        *a10 = 0;
      }

      else
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigAlternateCreate_cold_2(&v38);
    return v38;
  }

  return v16;
}

uint64_t FigAlternateCopy(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_7:
    a3 = *DerivedStorage;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  a2 = *(DerivedStorage + 480);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a4)
  {
    goto LABEL_4;
  }

LABEL_8:
  a4 = *(DerivedStorage + 40);
LABEL_4:
  v26 = a11;
  if (a7)
  {
    v27 = a8;
  }

  else
  {
    a7 = *(DerivedStorage + 80);
    v27 = *(DerivedStorage + 112);
  }

  v28 = a13;
  if (a11)
  {
    v29 = a12;
  }

  else
  {
    v26 = *(DerivedStorage + 104);
    v29 = *(DerivedStorage + 115);
  }

  if (!a13)
  {
    v28 = *(DerivedStorage + 152);
  }

  v31 = a16;
  if (!a15)
  {
    a14 = *(DerivedStorage + 28);
  }

  v32 = a17;
  if (!a16)
  {
    v31 = *(DerivedStorage + 176);
  }

  v33 = a18;
  if (!a17)
  {
    v32 = *(DerivedStorage + 184);
  }

  v34 = a19;
  if (!a18)
  {
    v33 = *(DerivedStorage + 192);
  }

  if (!a19)
  {
    v34 = *(DerivedStorage + 200);
  }

  v35 = *(DerivedStorage + 48);
  v36 = *(DerivedStorage + 72);
  v47[0] = a4;
  v47[1] = v35;
  v37 = *(DerivedStorage + 88);
  v38 = *(DerivedStorage + 96);
  v49 = v36;
  v50 = v37;
  v51 = *(DerivedStorage + 113);
  v52 = a7;
  v53 = v27;
  v56 = HIBYTE(a8);
  v55 = HIDWORD(a8) >> 8;
  v54 = a8 >> 8;
  v57 = v38;
  v58 = *(DerivedStorage + 114);
  v59 = v26;
  v60 = v29;
  v63 = HIBYTE(a12);
  v62 = HIDWORD(a12) >> 8;
  v39 = *(DerivedStorage + 120);
  v61 = a12 >> 8;
  v64 = v39;
  v40 = *(DerivedStorage + 144);
  v66 = *(DerivedStorage + 136);
  v67 = v40;
  v68 = *(DerivedStorage + 117);
  v70 = v28;
  v72 = v31;
  v73 = v32;
  v74 = v33;
  v75 = v34;
  v41 = *MEMORY[0x1E695E480];
  v76 = *(DerivedStorage + 116);
  v42 = *(DerivedStorage + 8);
  v43 = *(DerivedStorage + 16);
  memset(v69, 0, sizeof(v69));
  v71 = *(DerivedStorage + 160);
  memset(v77, 0, sizeof(v77));
  v44 = *(DerivedStorage + 24);
  v48 = *(DerivedStorage + 56);
  v45 = *(DerivedStorage + 32);
  v65 = *(DerivedStorage + 128);
  return FigAlternateCreate(v41, a2, a3, v42, v43, v44, a14, v45, v47, a20);
}

uint64_t FigAlternatesCarryRankingScore(const __CFArray *a1)
{
  if (!a1)
  {
    return 1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 1;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    result = CFArrayGetValueAtIndex(a1, v4);
    if (!result)
    {
      break;
    }

    if (*(CMBaseObjectGetDerivedStorage() + 64) == -1.0)
    {
      return 0;
    }

    if (v3 == ++v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t fa_CodecStringFindCodecAndProfile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"%@.%02d", a2, a3);
  v6 = FigCFStringFind();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t figAlternateEqual(uint64_t a1, uint64_t a2)
{
  result = (a1 | a2) == 0;
  if (a1 && a2)
  {
    if (*(CMBaseObjectGetDerivedStorage() + 120) && *(CMBaseObjectGetDerivedStorage() + 120))
    {
      CMBaseObjectGetDerivedStorage();
      CMBaseObjectGetDerivedStorage();
      result = FigCFEqual();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v5 = *(CMBaseObjectGetDerivedStorage() + 40);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      result = FigCFHTTPCompareURLs(v5, *(DerivedStorage + 40));
      if (!result)
      {
        return result;
      }
    }

    v7 = *(CMBaseObjectGetDerivedStorage() + 8);
    if (v7 != *(CMBaseObjectGetDerivedStorage() + 8))
    {
      return 0;
    }

    v8 = *(CMBaseObjectGetDerivedStorage() + 48);
    if (v8 != *(CMBaseObjectGetDerivedStorage() + 48))
    {
      return 0;
    }

    v9 = CMBaseObjectGetDerivedStorage();
    v11 = *(v9 + 160);
    v10 = *(v9 + 168);
    v12 = CMBaseObjectGetDerivedStorage();
    result = 0;
    if (v11 != *(v12 + 160) || v10 != *(v12 + 168))
    {
      return result;
    }

    v13 = *(CMBaseObjectGetDerivedStorage() + 64);
    if (v13 != *(CMBaseObjectGetDerivedStorage() + 64))
    {
      return 0;
    }

    v14 = *(CMBaseObjectGetDerivedStorage() + 24);
    if (v14 != *(CMBaseObjectGetDerivedStorage() + 24))
    {
      return 0;
    }

    v15 = *(CMBaseObjectGetDerivedStorage() + 136);
    if (v15 != *(CMBaseObjectGetDerivedStorage() + 136))
    {
      return 0;
    }

    v16 = *(CMBaseObjectGetDerivedStorage() + 116);
    if (v16 != *(CMBaseObjectGetDerivedStorage() + 116))
    {
      return 0;
    }

    v17 = *(CMBaseObjectGetDerivedStorage() + 112);
    if (v17 != *(CMBaseObjectGetDerivedStorage() + 112))
    {
      return 0;
    }

    v18 = *(CMBaseObjectGetDerivedStorage() + 113);
    if (v18 != *(CMBaseObjectGetDerivedStorage() + 113))
    {
      return 0;
    }

    v19 = *(CMBaseObjectGetDerivedStorage() + 114);
    if (v19 != *(CMBaseObjectGetDerivedStorage() + 114))
    {
      return 0;
    }

    v20 = *(CMBaseObjectGetDerivedStorage() + 115);
    if (v20 != *(CMBaseObjectGetDerivedStorage() + 115))
    {
      return 0;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    v21 = *(CMBaseObjectGetDerivedStorage() + 56);
    if (v21 != *(CMBaseObjectGetDerivedStorage() + 56))
    {
      return 0;
    }

    VideoRange = FigAlternateGetVideoRange(a1);
    if (VideoRange != FigAlternateGetVideoRange(a2))
    {
      return 0;
    }

    v23 = *(CMBaseObjectGetDerivedStorage() + 128);
    if (v23 != *(CMBaseObjectGetDerivedStorage() + 128))
    {
      return 0;
    }

    FigAlternateGetVideoLayoutTags(a1);
    FigAlternateGetVideoLayoutTags(a2);
    result = FigCFEqual();
    if (result)
    {
      CMBaseObjectGetDerivedStorage();
      CMBaseObjectGetDerivedStorage();
      result = FigCFEqual();
      if (result)
      {
        CMBaseObjectGetDerivedStorage();
        CMBaseObjectGetDerivedStorage();
        result = FigCFEqual();
        if (result)
        {
          CMBaseObjectGetDerivedStorage();
          CMBaseObjectGetDerivedStorage();
          result = FigCFEqual();
          if (result)
          {
            CMBaseObjectGetDerivedStorage();
            CMBaseObjectGetDerivedStorage();
            return FigCFEqual() != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t figAlternateFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 40) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 72);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 72) = 0;
  }

  v4 = *(DerivedStorage + 80);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 80) = 0;
  }

  v5 = *(DerivedStorage + 88);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 88) = 0;
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 96) = 0;
  }

  v7 = *(DerivedStorage + 104);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 104) = 0;
  }

  v8 = *(DerivedStorage + 120);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 120) = 0;
  }

  v9 = *(DerivedStorage + 152);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 152) = 0;
  }

  v10 = *(DerivedStorage + 176);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 176) = 0;
  }

  v11 = *(DerivedStorage + 184);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 184) = 0;
  }

  v12 = *(DerivedStorage + 192);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 192) = 0;
  }

  v13 = *(DerivedStorage + 200);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 200) = 0;
  }

  v14 = *(DerivedStorage + 240);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 240) = 0;
  }

  v15 = *(DerivedStorage + 248);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 248) = 0;
  }

  v16 = *(DerivedStorage + 472);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 472) = 0;
  }

  v17 = *(DerivedStorage + 392);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 392) = 0;
  }

  v18 = *(DerivedStorage + 408);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 408) = 0;
  }

  v19 = *(DerivedStorage + 480);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 480) = 0;
  }

  v20 = *(DerivedStorage + 144);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 144) = 0;
  }

  v21 = *(DerivedStorage + 440);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 440) = 0;
  }

  v22 = *(DerivedStorage + 456);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 456) = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t fa_ensureSerializationContextAndCopyMediaGroupForCache(CFMutableDictionaryRef *a1, void *key, CFMutableDictionaryRef *a3)
{
  if (a1)
  {
    Mutable = *a1;
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a1 = Mutable;
      if (!Mutable)
      {
        fa_ensureSerializationContextAndCopyMediaGroupForCache_cold_2(&v12);
        return v12;
      }
    }

    Value = CFDictionaryGetValue(Mutable, key);
    if (Value)
    {
      v8 = Value;
      CFRetain(Value);
    }

    else
    {
      v9 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v9)
      {
        fa_ensureSerializationContextAndCopyMediaGroupForCache_cold_1(&v11);
        return v11;
      }

      v8 = v9;
      CFDictionarySetValue(*a1, key, v9);
    }
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a3 = v8;
  return result;
}

void OUTLINED_FUNCTION_6_26(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  a10 = 0uLL;
  a11 = 0;

  fa_getDeclaredAudioInfo(a1, a2, &a10);
}

uint64_t OUTLINED_FUNCTION_7_18()
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return FigCFStringFind();
}

void OUTLINED_FUNCTION_10_15(const __CFDictionary *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, void *a6)
{

  fa_serializeMediaGroupLocatorMapToXPCDict(a1, v7, v6, a4, a5, a6);
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryGetClassID()
{
  if (FigBufferedAirPlayGlobalRoutingRegistryGetClassID_sGlobalRoutingRegistryOnce != -1)
  {
    FigBufferedAirPlayGlobalRoutingRegistryGetClassID_cold_1();
  }

  return sGlobalRoutingRegistryClassID;
}

uint64_t __FigBufferedAirPlayGlobalRoutingRegistryGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryGetTypeID()
{
  if (FigBufferedAirPlayGlobalRoutingRegistryGetClassID_sGlobalRoutingRegistryOnce != -1)
  {
    FigBufferedAirPlayGlobalRoutingRegistryGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance()
{
  if (FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance_onceToken != -1)
  {
    FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance_cold_1();
  }

  return FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance_sGlobalRoutingRegistry;
}

uint64_t __FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance_block_invoke()
{
  if (FigServer_IsMediaplaybackd())
  {
    result = FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared();
  }

  else
  {
    result = FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared();
  }

  FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance_sGlobalRoutingRegistry = result;
  return result;
}

uint64_t figVTTSerializer_RegisterFigVTTSerializerBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVTTSerializerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVTTSerializerGetClassID_sRegisterFigVTTSerializerBaseTypeOnce, figVTTSerializer_RegisterFigVTTSerializerBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVTTSerializerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVTTSerializerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigVTTSerializerInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigVTTSerializerAddText(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVTTSerializerFlush(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t bossSetCursorServiceInTrackList(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    v8 = ValueAtIndex;
    if (a2)
    {
      v9 = ValueAtIndex + 48;
      if (*(a2 + 8 * v6))
      {
        FigCFDictionaryGetBooleanIfPresent();
      }
    }

    else
    {
      v9 = ValueAtIndex + 48;
    }

    v10 = *(v8 + 4);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v11)
    {
      break;
    }

    result = v11(v10, v9);
    if (result)
    {
      return result;
    }

    v8[420] = 0;
    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return 4294954514;
}

_DWORD *bossElectNewTimebaseStarter(_DWORD *result)
{
  if ((*(result + 12) & 0x8000000000000000) != 0)
  {
    v1 = result;
    v2 = *MEMORY[0x1E695E4D0];
    v3 = 1;
    do
    {
      while (1)
      {
        v4 = v3;
        if (*(v1 + 10) >= 1)
        {
          break;
        }

        v3 = 0;
        if ((v4 & 1) == 0)
        {
          return result;
        }
      }

      v5 = 0;
      while (1)
      {
        result = CFArrayGetValueAtIndex(*(v1 + 9), v5);
        v6 = result;
        if ((v4 & 1) == 0 || result[18] == 1936684398)
        {
          VTable = CMBaseObjectGetVTable();
          v8 = *(VTable + 16);
          result = (VTable + 16);
          if (*(v8 + 8))
          {
            FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v6 + 10));
            v10 = CMBaseObjectGetVTable();
            v11 = *(v10 + 8);
            result = (v10 + 8);
            v12 = *(v11 + 56);
            if (v12)
            {
              result = v12(FigBaseObject, @"IsTimebaseStarter", v2);
              if (!result)
              {
                break;
              }
            }
          }
        }

        if (++v5 >= *(v1 + 10))
        {
          v13 = *(v1 + 12) >> 63;
          goto LABEL_12;
        }
      }

      LODWORD(v13) = 0;
      *(v1 + 12) = v5;
LABEL_12:
      v3 = 0;
    }

    while ((v13 & v4 & 1) != 0);
  }

  return result;
}

void bossElectNewPreferredClock(uint64_t a1)
{
  newSourceClock = 0;
  if (*(a1 + 88) <= -2)
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = 1;
    while (1)
    {
      v4 = v3;
      if (*(a1 + 80) >= 1)
      {
        v5 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v5);
          if ((v4 & 1) == 0 || *(ValueAtIndex + 18) == 1936684398)
          {
            FigBaseObject = FigRenderPipelineGetFigBaseObject(ValueAtIndex[10]);
            v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v8)
            {
              v9 = v8(FigBaseObject, @"PreferredClock", v2, &newSourceClock);
              v10 = newSourceClock;
              if (!v9 && newSourceClock != 0)
              {
                *(a1 + 88) = v5;
                goto LABEL_17;
              }
            }
          }

          ++v5;
        }

        while (v5 < *(a1 + 80));
        v10 = newSourceClock;
        if (newSourceClock)
        {
          break;
        }
      }

      v3 = 0;
      if ((v4 & 1) == 0)
      {
        newSourceClock = CMClockGetHostTimeClock();
        CFRetain(newSourceClock);
        *(a1 + 88) = -2;
        v10 = newSourceClock;
        break;
      }
    }

LABEL_17:
    CMTimebaseSetSourceClock(*(a1 + 120), v10);
    CFRelease(newSourceClock);
  }
}

uint64_t bossGetVideoDecoderMaxSpeedThreshold(uint64_t a1, float *a2)
{
  if (*(a1 + 80) < 1)
  {
    return 0;
  }

  v15 = v5;
  v16 = v4;
  v17 = v2;
  v18 = v3;
  v8 = 0;
  v9 = 0;
  v10 = 3.4028e38;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v8);
    v14 = 3.4028e38;
    if (*(ValueAtIndex + 18) == 1986618469 && !FigGetEstimatedMaxFullFramePlaybackSpeedForTrackReader(*(ValueAtIndex + 4), &v14))
    {
      if (v10 >= v14)
      {
        v12 = v14;
      }

      else
      {
        v12 = v10;
      }

      if (v9)
      {
        v10 = v12;
      }

      else
      {
        v10 = v14;
      }

      v9 = 1;
    }

    ++v8;
  }

  while (v8 < *(a1 + 80));
  result = 0;
  if (v9)
  {
    if (v10 > 2.0)
    {
      *a2 = v10;
      return 1;
    }
  }

  return result;
}

uint64_t bossSetExpectScaledEdits(const __CFArray *a1, char *a2, char *a3)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v33 = *MEMORY[0x1E695E480];
    v9 = *MEMORY[0x1E695E4D0];
    v10 = *MEMORY[0x1E695E4C0];
    while (1)
    {
      result = CFArrayGetValueAtIndex(a1, v6);
      if (*(result + 72) == 1936684398)
      {
        break;
      }

LABEL_38:
      if (++v6 == v5)
      {
        goto LABEL_42;
      }
    }

    v11 = result;
    v12 = *(result + 32);
    v41 = 0;
    v42[0] = 0;
    v40 = 0;
    FigBaseObject = FigTrackReaderGetFigBaseObject(v12);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14 && (v14(FigBaseObject, @"SecondaryEditCursorService", v33, v42), (v15 = v42[0]) != 0) && (*&start.start.value = *MEMORY[0x1E6960C80], start.start.epoch = *(MEMORY[0x1E6960C80] + 16), duration = **&MEMORY[0x1E6960C88], CMTimeRangeMake(&v35, &start.start, &duration), figPlaybackBoss_editCursorServiceContainsScaledEditsInTimeRange(v15, &v35)))
    {
LABEL_7:
      v16 = 0;
    }

    else
    {
      v17 = FigTrackReaderGetFigBaseObject(v12);
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v18(v17, @"EditCursorService", v33, &v41);
        v19 = v41;
        if (v41)
        {
          v20 = v42[0];
          if (!v42[0])
          {
            *&start.start.value = *MEMORY[0x1E6960C80];
            start.start.epoch = *(MEMORY[0x1E6960C80] + 16);
            duration = **&MEMORY[0x1E6960C88];
            CMTimeRangeMake(&v35, &start.start, &duration);
            v16 = figPlaybackBoss_editCursorServiceContainsScaledEditsInTimeRange(v19, &v35) == 0;
            goto LABEL_24;
          }

          v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v21)
          {
            *&v35.start.value = *MEMORY[0x1E6960C80];
            v35.start.epoch = *(MEMORY[0x1E6960C80] + 16);
            if (!v21(v20, &v35, &v40))
            {
              while (1)
              {
                v37 = 0u;
                v38 = 0u;
                v36 = 0u;
                memset(&v35, 0, sizeof(v35));
                v22 = v40;
                v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (!v23 || v23(v22, &v35))
                {
                  break;
                }

                if ((v35.start.flags & 1) != 0 && (v35.duration.flags & 1) != 0 && !v35.duration.epoch && (v35.duration.value & 0x8000000000000000) == 0)
                {
                  start = v35;
                  if (figPlaybackBoss_editCursorServiceContainsScaledEditsInTimeRange(v41, &start))
                  {
                    goto LABEL_7;
                  }
                }

                v24 = v40;
                v25 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (!v25)
                {
                  break;
                }

                v16 = 1;
                if (v25(v24, 1))
                {
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }

      v16 = 1;
    }

LABEL_24:
    if (v42[0])
    {
      CFRelease(v42[0]);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (v40)
    {
      CFRelease(v40);
    }

    if (v16)
    {
      v26 = v10;
    }

    else
    {
      v26 = v9;
    }

    v27 = FigRenderPipelineGetFigBaseObject(*(v11 + 80));
    VTable = CMBaseObjectGetVTable();
    v29 = *(VTable + 8);
    result = VTable + 8;
    v30 = *(v29 + 56);
    if (v30)
    {
      result = v30(v27, @"ExpectScaledEdits", v26);
    }

    if (!v16)
    {
      v8 = 1;
    }

    v7 = 1;
    goto LABEL_38;
  }

  v8 = 0;
  v7 = 0;
LABEL_42:
  if (a2)
  {
    *a2 = v7;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t bosstrackListDoesContainVideoTrack(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (*(CFArrayGetValueAtIndex(a1, v4) + 18) != 1986618469)
  {
    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t FigPlaybackBossRemoveAndAddTracks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFIndex a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v13 = a2;
  v96 = *MEMORY[0x1E69E9840];
  v93 = 0;
  memset(&v92, 0, sizeof(v92));
  if (dword_1EAF16E78)
  {
    LODWORD(v91.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = a2;
    v8 = a8;
  }

  if (!a1)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_12(&v95);
    return LODWORD(v95.value);
  }

  if (!(a5 | v13))
  {
    value_low = 0;
    goto LABEL_139;
  }

  if (v13 < 0)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_11(&v95);
LABEL_138:
    value_low = LODWORD(v95.value);
LABEL_139:
    *(a1 + 148) = 1;
    return value_low;
  }

  if (a5 < 0)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_10(&v95);
    goto LABEL_138;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

  if (!a3)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_2(&v95);
    goto LABEL_138;
  }

  if (!a4)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_1(&v95);
    goto LABEL_138;
  }

LABEL_10:
  v86 = a5;
  if (!a5)
  {
    v81 = 0;
    theArray = 0;
    if (!v13)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  if (!a6)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_9(&v95);
    goto LABEL_138;
  }

  if (!a7)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_8(&v95);
    goto LABEL_138;
  }

  v16 = 0;
  do
  {
    v17 = *(a7 + 8 * v16);
    if (!v17 || (v18 = CFGetTypeID(v17), v18 != FigRenderPipelineGetTypeID()))
    {
      FigPlaybackBossRemoveAndAddTracks_cold_7(&v95);
      goto LABEL_138;
    }

    ++v16;
  }

  while (a5 != v16);
  if (v8)
  {
    v19 = a8;
    while (1)
    {
      if (*v19)
      {
        v20 = CFGetTypeID(*v19);
        if (v20 != CFDictionaryGetTypeID())
        {
          break;
        }
      }

      ++v19;
      if (!--a5)
      {
        goto LABEL_22;
      }
    }

    FigPlaybackBossRemoveAndAddTracks_cold_3(&v95);
    goto LABEL_138;
  }

LABEL_22:
  v21 = *MEMORY[0x1E695E480];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!theArray)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_6(&v95);
    goto LABEL_138;
  }

  v22 = 0;
  v80 = *MEMORY[0x1E695E4D0];
  do
  {
    v95.value = 0;
    if (FigPlaybackBossTrackGetTypeID_oneTimeOnly != -1)
    {
      FigPlaybackBossCreate_cold_2();
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      v79 = 3732;
LABEL_143:
      FigPlaybackBossCreate_cold_3(v79, &v94);
      value_low = LODWORD(v94.value);
      goto LABEL_39;
    }

    v24 = Instance;
    CFArrayAppendValue(theArray, Instance);
    CFRelease(v24);
    v25 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v24 + 2) = v25;
    if (!v25)
    {
      v79 = 3737;
      goto LABEL_143;
    }

    v26 = *(a6 + 4 * v22);
    *(v24 + 6) = v26;
    v27 = *(a1 + 40);
    v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v28)
    {
      value_low = 4294954514;
LABEL_39:
      v34 = theArray;
      v35 = 0;
      v36 = 0;
      goto LABEL_129;
    }

    v29 = v28(v27, v26, v24 + 32, v24 + 72);
    if (v29)
    {
      value_low = v29;
      goto LABEL_39;
    }

    v30 = *(a7 + 8 * v22);
    if (v30)
    {
      v30 = CFRetain(v30);
    }

    *(v24 + 10) = v30;
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v30);
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v32 && !v32(FigBaseObject, @"NeedsToFlushWhenRateChanges", v21, &v95) && v95.value == v80)
    {
      v24[88] = 1;
    }

    v24[89] = 1;
    ++v22;
  }

  while (v86 != v22);
  v37 = a8;
  v38 = bossSetCursorServiceInTrackList(theArray, a8);
  if (v38)
  {
    value_low = v38;
    v35 = 0;
    v36 = 0;
    v34 = theArray;
    goto LABEL_129;
  }

  v81 = CFNumberCreate(v21, kCFNumberFloat32Type, (a1 + 444));
  v39 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v39);
    v41 = ValueAtIndex;
    if (v37)
    {
      v37 = *(v37 + v39);
    }

    if (*(ValueAtIndex + 18) == 1936684398)
    {
      v42 = FigRenderPipelineGetFigBaseObject(ValueAtIndex[10]);
      v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v43)
      {
        v43(v42, @"PipelineRate", v81);
      }
    }

    v44 = *(a1 + 120);
    v45 = FigRenderPipelineGetFigBaseObject(*(v41 + 80));
    v46 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v46)
    {
      v46(v45, @"Timebase", v44);
    }

    v47 = *(v41 + 80);
    v48 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v48)
    {
      v48(v47);
    }

    v49 = bossBuildMentorForTrack(a1, v41, v21, v37);
    if (v49 || (*(v41 + 232) = 1000 * FigAtomicIncrement32(), v49 = bossAddNotificationListenersForTrack(a1, v41), v49) || (v50 = *(v41 + 112)) != 0 && (v49 = FigMediaProcessorGo(v50), v49))
    {
      value_low = v49;
      v36 = 0;
      v34 = theArray;
      v35 = v81;
      goto LABEL_129;
    }

    ++v39;
    v37 = a8;
  }

  while (v86 != v39);
  bossSetExpectScaledEdits(theArray, &v93 + 1, &v93);
  a5 = v86;
  v13 = a2;
  if (a2)
  {
LABEL_41:
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    goto LABEL_60;
  }

LABEL_59:
  Mutable = 0;
LABEL_60:
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    LODWORD(v91.value) = 0;
    LOBYTE(type.value) = 0;
    v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = a2;
  }

  if (v13)
  {
    v52 = 0;
    v84 = 0;
    while (*(a1 + 80) < 1)
    {
LABEL_69:
      LODWORD(v91.value) = 0;
      LOBYTE(type.value) = 0;
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v58 = a2;
LABEL_87:
      if (++v52 == v58)
      {
        v66 = v84 == 0;
        goto LABEL_90;
      }
    }

    v53 = 0;
    while (1)
    {
      v54 = CFArrayGetValueAtIndex(*(a1 + 72), v53);
      if (v54[6] == *(a3 + 4 * v52))
      {
        v55 = v54;
        v56 = *(v54 + 10);
        if (v56 == *(a4 + 8 * v52))
        {
          break;
        }
      }

      if (++v53 >= *(a1 + 80))
      {
        goto LABEL_69;
      }
    }

    if (*(a1 + 96) == v53)
    {
      v59 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v59 || v59(v56))
      {
        LODWORD(v91.value) = 0;
        LOBYTE(type.value) = 0;
        v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a5 = v86;
      }
    }

    CFArrayAppendValue(Mutable, v55);
    v61 = v84;
    if (v55[18] == 1936684398)
    {
      v61 = 1;
    }

    v84 = v61;
    v62 = *(a1 + 96);
    if (v62 == v53)
    {
      v63 = -1;
      v58 = a2;
      goto LABEL_80;
    }

    v58 = a2;
    if (v62 > v53)
    {
      v63 = v62 - 1;
LABEL_80:
      *(a1 + 96) = v63;
    }

    v64 = *(a1 + 88);
    if (v64 == v53)
    {
      v65 = -2;
      goto LABEL_85;
    }

    if (v64 > v53)
    {
      v65 = v64 - 1;
LABEL_85:
      *(a1 + 88) = v65;
    }

    CFArrayRemoveValueAtIndex(*(a1 + 72), v53);
    --*(a1 + 80);
    goto LABEL_87;
  }

  v66 = 1;
LABEL_90:
  v67 = *(a1 + 80);
  v34 = theArray;
  v97.location = 0;
  v97.length = a5;
  CFArrayAppendArray(*(a1 + 72), theArray, v97);
  *(a1 + 80) += a5;
  bossApplyThrottleForBackground(a1);
  if (*(a1 + 80) < 1)
  {
LABEL_94:
    v69 = 0;
  }

  else
  {
    v68 = 0;
    while (!*(CFArrayGetValueAtIndex(*(a1 + 72), v68) + 88))
    {
      if (*(a1 + 80) <= ++v68)
      {
        goto LABEL_94;
      }
    }

    v69 = 1;
  }

  *(a1 + 108) = v69;
  *(a1 + 106) = bosstrackListDoesContainVideoTrack(*(a1 + 72));
  if (HIBYTE(v93))
  {
    v70 = v93 == 0;
  }

  else
  {
    v70 = 1;
  }

  if (v70)
  {
    if (!v66)
    {
      bossSetExpectScaledEdits(*(a1 + 72), (a1 + 104), (a1 + 105));
    }
  }

  else
  {
    *(a1 + 104) = 257;
  }

  bossElectNewTimebaseStarter(a1);
  bossElectNewPreferredClock(a1);
  value_low = 0;
  v71 = *(a1 + 432);
  if (v71 <= 1886530415)
  {
    if (v71 > 1886151032)
    {
      v35 = v81;
      v36 = Mutable;
      if (v71 != 1886151033)
      {
        if (v71 == 1886154860)
        {
          bossSwitchMentorsToSideQueues(a1, v67);
        }

        else if (v71 != 1886155888)
        {
          goto LABEL_128;
        }
      }

      memset(&v95, 0, sizeof(v95));
      CMTimebaseGetTime(&v95, *(a1 + 120));
      memset(&v94, 0, sizeof(v94));
      if (v95.timescale <= 1000)
      {
        timescale = 1000;
      }

      else
      {
        timescale = v95.timescale;
      }

      CMTimeMakeWithSeconds(&v94, *(a1 + 440) * 0.1, timescale);
      type = v95;
      rhs = v94;
      CMTimeAdd(&v91, &type, &rhs);
      v95 = v91;
      bossBroadcastPrerollRateToRenderPipelines(a1, v67, *(a1 + 440));
      v91 = v95;
      v73 = bossSetMentorModesForTimeAndRate(a1, v67, a5, &v91, *(a1 + 440), *(a1 + 448), 2, 0, 1u);
LABEL_127:
      value_low = v73;
      goto LABEL_128;
    }

    if (v71 == 1768189029)
    {
      goto LABEL_121;
    }

    v35 = v81;
    v36 = Mutable;
    if (v71 != 1885435251)
    {
      goto LABEL_128;
    }

LABEL_120:
    FigPlaybackBossGetTime(a1, &v92);
    v95 = v92;
    v73 = bossSetMentorModesToScrub(a1, v67, a5, &v95, 0, 0);
    goto LABEL_127;
  }

  if (v71 > 1919247480)
  {
    if (v71 == 2003853684 || v71 == 1920298606)
    {
      goto LABEL_121;
    }

    v72 = 1919247481;
LABEL_116:
    v35 = v81;
    v36 = Mutable;
    if (v71 != v72)
    {
LABEL_128:
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      goto LABEL_129;
    }

    *(a1 + 432) = 1885435251;
    goto LABEL_120;
  }

  if (v71 != 1886530416)
  {
    if (v71 != 1886544244)
    {
      v72 = 1886545266;
      goto LABEL_116;
    }

LABEL_121:
    LODWORD(v91.value) = 0;
    LOBYTE(type.value) = 0;
    v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
    v35 = v81;
    v36 = Mutable;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    value_low = 0;
    goto LABEL_128;
  }

  FigSimpleMutexUnlock();
  v77 = *(a1 + 432);
  v78 = *(a1 + 424);
  v95 = **&MEMORY[0x1E6960C70];
  value_low = figPlaybackBossStartPrerollAndSetPlayState(a1, &v95, *(a1 + 440), *(a1 + 448), 3, v77, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v78);
  FigSimpleMutexUnlock();
  v35 = v81;
  v36 = Mutable;
LABEL_129:
  *(a1 + 148) = 1;
  if (v34)
  {
    CFRelease(v34);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return value_low;
}