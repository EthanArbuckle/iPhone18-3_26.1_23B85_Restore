@interface NotificationFilter
@end

@implementation NotificationFilter

CFTypeRef __remoteXPCPlaybackItem_NotificationFilter_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRetain(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRetain(v4);
  }

  result = a1[7];
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void __remoteXPCPlaybackItem_NotificationFilter_block_invoke_2(void *a1)
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

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __remoteXPCPlaybackItem_NotificationFilter_block_invoke_3(uint64_t a1)
{
  cf = 0;
  if (!dispatch_source_testcancel(*(a1 + 32)))
  {
    if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf))
    {
      __remoteXPCPlaybackItem_NotificationFilter_block_invoke_3_cold_1();
    }

    dispatch_source_cancel(*(a1 + 32));
    FigDeferredTransactionCommit(cf, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t __remoteXPCPlaybackItem_NotificationFilter_block_invoke_4(uint64_t a1)
{
  CMTimebaseRemoveTimerDispatchSource(*(*(a1 + 48) + 32), *(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __remoteXPCPlaybackItem_NotificationFilter_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_187();
  remoteXPCPlayer_connectVideoLayerToPlaybackItem(*(v2 + 40), *(v1 + 48), *(v1 + 72) != 0, *(v1 + 73) == 0, *(v1 + 56), *(v1 + 64), 0, 0, *v0);
  remoteXPCPlayer_updateLayerDurationsWhenItemReady(*(v1 + 40), *(v1 + 48), 3, *v0);
}

@end