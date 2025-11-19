@interface EnsureDataChannelConfigurationIsValid
@end

@implementation EnsureDataChannelConfigurationIsValid

void __videoReceiver_EnsureDataChannelConfigurationIsValid_block_invoke(uint64_t a1)
{
  ChannelCount = FigDataChannelConfigurationGetChannelCount(*(a1 + 40));
  if (ChannelCount < 1)
  {
    return;
  }

  v3 = ChannelCount;
  v4 = 0;
  while (1)
  {
    OutputQueueTypeAtIndex = FigDataChannelConfigurationGetOutputQueueTypeAtIndex(*(a1 + 40), v4);
    if (OutputQueueTypeAtIndex == 2)
    {
      break;
    }

    if (OutputQueueTypeAtIndex == 1)
    {
      FigDataChannelConfigurationGetCAImageQueueIDAtIndex();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      UInt64 = FigCFNumberCreateUInt64();
      v8 = CFDictionaryContainsKey(*(DerivedStorage + 16), UInt64);
      if (UInt64)
      {
        CFRelease(UInt64);
      }

      if (!v8)
      {
        if (dword_1ED4CBE90 >= 2)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v11 = -15574;
        goto LABEL_18;
      }
    }

LABEL_10:
    if (v3 == ++v4)
    {
      return;
    }
  }

  if (FigDataChannelConfigurationGetFigDataQueueAtIndex(*(a1 + 40), v4))
  {
    goto LABEL_10;
  }

  if (dword_1ED4CBE90 >= 2)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = -15578;
LABEL_18:
  *(*(*(a1 + 32) + 8) + 24) = v11;
}

@end