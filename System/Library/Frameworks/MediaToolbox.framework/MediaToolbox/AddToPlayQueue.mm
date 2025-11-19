@interface AddToPlayQueue
@end

@implementation AddToPlayQueue

void __papc_AddToPlayQueue_block_invoke(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (*(*(a1 + 32) + 24))
  {
    __papc_AddToPlayQueue_block_invoke_cold_1();
  }

  else
  {
    papc_checkStartStopAirPlay(*(a1 + 40), NAN);
    if (*(*(a1 + 32) + 72) == 1)
    {
      __papc_AddToPlayQueue_block_invoke_cold_2((a1 + 40), a1);
    }
  }

  FigReadWriteLockUnlockForRead();
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRetain(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __playerairplay_AddToPlayQueue_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    v2 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v2)
    {
      v3 = v2 == 10;
    }

    else
    {
      v3 = 1;
    }

    if (v3 || (v4 = *(a1 + 32), *(v4 + 216) == 11) && *(v4 + 56) == 0.0 && !playerairplay_isPrimaryForNativeInterstitialsInAPVPlayback())
    {
      playerairplay_addItemToSubPlayerPlayQueue(*(a1 + 40), *(a1 + 48), *(a1 + 56));
    }

    else
    {
      playerairplay_addItemToLocalPlayQueue(*(a1 + 40), *(a1 + 48), *(a1 + 56));
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {

    CFRelease(v7);
  }
}

@end