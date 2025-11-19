@interface RemoveFromPlayQueue
@end

@implementation RemoveFromPlayQueue

void __papc_RemoveFromPlayQueue_block_invoke(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (*(*(a1 + 32) + 24))
  {
    __papc_RemoveFromPlayQueue_block_invoke_cold_1();
    goto LABEL_13;
  }

  papc_checkStartStopAirPlay(*(a1 + 40), NAN);
  if (*(*(a1 + 32) + 72) != 1)
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  if (*(DerivedStorage + 72) == 1)
  {
    v7 = *(DerivedStorage + 104);
    v6 = (DerivedStorage + 104);
    if (!v7 || (FigBaseObject = FigPlaybackItemGetFigBaseObject(v2), (v9 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v9(FigBaseObject, 0x1F0B3D158, v4, &cf))
    {
LABEL_9:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_11;
    }

    if (cf)
    {
      __papc_RemoveFromPlayQueue_block_invoke_cold_2(Mutable, cf, v6);
      goto LABEL_9;
    }
  }

LABEL_11:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_13:
  FigReadWriteLockUnlockForRead();
  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
  }
}

void __playerairplay_RemoveFromPlayQueue_block_invoke(uint64_t a1)
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

    if (!v3)
    {
      playerairplay_removeItemFromLocalPlayQueue(*(a1 + 40), *(a1 + 48));
    }

    playerairplay_removeItemFromSubPlayerPlayQueue(*(a1 + 40), *(a1 + 48));
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t __papc_RemoveFromPlayQueue_block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  FigCFDictionarySetValue();
  v5 = *a3;
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 40);
  if (v9)
  {
    return v9(v5, a1, 0, 0);
  }

  return result;
}

@end