@interface SetProperty
@end

@implementation SetProperty

uint64_t __audioRendererAirPlay_SetProperty_block_invoke(uint64_t a1)
{
  result = audioRendererAirPlay_setRoutingContextAndRemoteDeviceIDInternal(*(a1 + 40), *(a1 + 48), *(*(a1 + 56) + 32));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __videoReceiver_SetProperty_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *&v8.value = *(a1 + 40);
  v8.epoch = *(a1 + 56);
  CMBaseObjectGetDerivedStorage();
  time = v8;
  CMTimeGetSeconds(&time);
  Float32 = FigCFNumberCreateFloat32();
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = FigCFDictionaryCopyArrayOfValues();
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4) >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
        CFDictionaryGetValue(ValueAtIndex, @"ImageQueueReceiverKey");
        CAXPCImageQueueReceiverSetProperty();
        ++v6;
      }

      while (v6 < CFArrayGetCount(v5));
    }

    CFRelease(v5);
  }

  if (Float32)
  {
    CFRelease(Float32);
  }

  videoReceiver_deferCFObjectRelease(*(a1 + 32));
}

void __videoReceiver_SetProperty_block_invoke_2(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = FigCFDictionaryCopyArrayOfValues();
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
        CFDictionaryGetValue(ValueAtIndex, @"ImageQueueReceiverKey");
        CAXPCImageQueueReceiverSetDisplayedPixelCount();
        ++v5;
      }

      while (v5 < CFArrayGetCount(v4));
    }

    CFRelease(v4);
  }

  videoReceiver_deferCFObjectRelease(*(a1 + 32));
}

void __airplayRoute_SetProperty_block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*v2)
  {
    v5 = *(v2 + 112);
    if (v5)
    {
      v6 = a1[5];
      v7 = *(CMBaseObjectGetVTable() + 16);
      if (v7)
      {
        v8 = *(v7 + 56);
        if (v8)
        {
          v8(v5, *MEMORY[0x1E69B0450], v6);
        }
      }
    }
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __vq_SetProperty_block_invoke(uint64_t a1)
{
  if (!FigCFEqual())
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 656);
    *(v3 + 656) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 392);
    if (v6)
    {
      v7 = *(v5 + 656);
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {

        v8(v6, @"DisplayList", v7);
      }
    }
  }
}

void __surrogateAIG_SetProperty_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 24);
  if (v2)
  {
    v2 = CFRetain(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = *(*(a1 + 48) + 32);
    if (v3 || (v4 = CFGetAllocator(*(a1 + 56)), *(*(a1 + 48) + 32) = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (v3 = *(*(a1 + 48) + 32)) != 0))
    {
      v5 = *(a1 + 64);
      v6 = *(a1 + 72);

      CFDictionarySetValue(v3, v5, v6);
    }

    else
    {
      __surrogateAIG_SetProperty_block_invoke_cold_1(a1);
    }
  }
}

void __fpic_SetProperty_block_invoke(uint64_t a1)
{
  if (FigCFEqual())
  {
    if (*(a1 + 48))
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(*(a1 + 48)))
      {
        v3 = *(a1 + 48);
        v4 = *(a1 + 56);
        v5 = *(v4 + 1208);
        *(v4 + 1208) = v3;
        if (v3)
        {
          CFRetain(v3);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        DerivedStorage = CMBaseObjectGetDerivedStorage();
        Count = CFArrayGetCount(*(DerivedStorage + 656));
        if (Count < 1)
        {
LABEL_12:
          v10 = 0;
        }

        else
        {
          v8 = Count;
          v9 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(*(DerivedStorage + 656), v9);
            fpic_updateIntegratedTimelineOffsetTimesOnItemForEvent();
            if (v10)
            {
              break;
            }

            if (v8 == ++v9)
            {
              goto LABEL_12;
            }
          }
        }

        goto LABEL_13;
      }
    }

    return;
  }

  if (FigCFEqual())
  {
    if (*(a1 + 48))
    {
      v11 = CFNumberGetTypeID();
      if (v11 == CFGetTypeID(*(a1 + 48)))
      {
        *(*(a1 + 56) + 1260) = FigCFNumberGetSInt32();
        if (dword_1EAF178D0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    return;
  }

  if (FigCFEqual())
  {
    if (!*(a1 + 48))
    {
      return;
    }

    v13 = CFNumberGetTypeID();
    if (v13 != CFGetTypeID(*(a1 + 48)))
    {
      return;
    }

    v14 = CMBaseObjectGetDerivedStorage();
    FigCFNumberGetFloat32();
    v16 = v15;
    if (v15 != *(v14 + 884))
    {
      if (dword_1EAF178D0)
      {
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(v14 + 884) = v16;
    }

    goto LABEL_35;
  }

  if (FigCFEqual())
  {
    if (!*(a1 + 48))
    {
      return;
    }

    v18 = CFBundleGetTypeID();
    if (v18 != CFGetTypeID(*(a1 + 48)))
    {
      return;
    }

    fpic_setLocalizedStringsBundle();
LABEL_35:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  if (!FigCFEqual())
  {
    v10 = FigSignalErrorAtGM();
LABEL_13:
    *(*(*(a1 + 32) + 8) + 24) = v10;
    return;
  }

  if (*(a1 + 48))
  {
    v19 = CFStringGetTypeID();
    if (v19 == CFGetTypeID(*(a1 + 48)))
    {
      fpic_setLocalizedStringsTableName();
      goto LABEL_35;
    }
  }
}

uint64_t __remoteSampleCursor_SetProperty_block_invoke(int a1, OpaqueCMBlockBuffer *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  result = OUTLINED_FUNCTION_3_57(a1, a2, a3, a4, a5, a6, a7, a8, v10, v12);
  if (!result)
  {
    result = 4294949526;
    if ((v13 & 7) == 0 && v11 > 0x197)
    {
      bzero(v13, 0x198uLL);
      *v13 = *(v8 + 32);
      v13[1] = 0;
      *(v13 + 4) = 779314548;
      result = FigInMemorySerializerAppendCFString();
      if (!result)
      {
        *(v13 + 344) = *(v8 + 56);
      }
    }
  }

  return result;
}

uint64_t __surrogateAIG_SetProperty_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end