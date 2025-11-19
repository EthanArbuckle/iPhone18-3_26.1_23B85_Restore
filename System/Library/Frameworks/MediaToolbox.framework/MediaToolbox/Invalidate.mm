@interface Invalidate
@end

@implementation Invalidate

void __remoteXPCItem_Invalidate_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 192) = 0;
  }
}

void __papc_Invalidate_block_invoke()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    iapc_Invalidate();

    CFRelease(v1);
  }
}

void __papm_Invalidate_block_invoke()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    iapm_Invalidate();

    CFRelease(v1);
  }
}

uint64_t __papm_Invalidate_block_invoke_2()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

void __playerairplay_Invalidate_block_invoke_7(uint64_t a1)
{
  pap_setAirPlayState(*(a1 + 32), 0);

  playerairplay_removeAndCleanupQueuedItemsOnAirPlayController();
}

void __itemairplay_Invalidate_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __itemairplay_Invalidate_block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __videoQueueRemote_Invalidate_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 120) = 0;
  }
}

void __videoQueueRemote_Invalidate_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 136) = 0;
  }
}

void *__surrogateAIG_Invalidate_block_invoke(void *result)
{
  v1 = result[5];
  if (!*(v1 + 40))
  {
    v2 = result;
    result = *(v1 + 24);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(v2[4] + 8) + 24) = result;
    *(v2[5] + 40) = 1;
  }

  return result;
}

@end