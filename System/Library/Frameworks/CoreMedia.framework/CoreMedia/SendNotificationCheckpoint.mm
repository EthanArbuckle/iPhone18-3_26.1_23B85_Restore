@interface SendNotificationCheckpoint
@end

@implementation SendNotificationCheckpoint

void __figXPC_SendNotificationCheckpoint_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock(*(*(a1 + 32) + 152));
  v2 = *(a1 + 32);
  *(v2 + 168) = 0;
  if (*(v2 + 172) == 3)
  {
    goto LABEL_5;
  }

  Count = CFArrayGetCount(*(v2 + 160));
  v2 = *(a1 + 32);
  if (!Count)
  {
    *(v2 + 172) = 0;
LABEL_5:
    FigSimpleMutexUnlock(*(v2 + 152));
    goto LABEL_6;
  }

  *(v2 + 172) = 2;
  FigSimpleMutexUnlock(*(v2 + 152));
  CFRetain(*(a1 + 32));
  xpc_retain(*(a1 + 40));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __figXPC_SendNotificationCheckpoint_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_165;
  v5 = *(a1 + 32);
  dispatch_async(*(v5 + 144), v4);
LABEL_6:
  CFRelease(*(a1 + 32));
}

void __figXPC_SendNotificationCheckpoint_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = (v2 + 152);
  FigSimpleMutexLock(*(v2 + 152));
  if (*(v2 + 172) != 3)
  {
    while (CFArrayGetCount(*(v2 + 160)))
    {
      if (*(v2 + 168) >= 100)
      {
        *(v2 + 172) = 1;
        figXPC_SendNotificationCheckpoint(v2, v3);
        goto LABEL_7;
      }

      if (__figXPC_SendNotificationCheckpoint_block_invoke_2_cold_1((v2 + 160), (v2 + 168), v4, (v2 + 172)))
      {
        goto LABEL_7;
      }
    }

    *(v2 + 172) = 0;
  }

LABEL_7:
  FigSimpleMutexUnlock(*v4);
  CFRelease(*(a1 + 32));
  v5 = *(a1 + 40);

  xpc_release(v5);
}

BOOL __figXPC_SendNotificationCheckpoint_block_invoke_2_cold_1(CFArrayRef *a1, _DWORD *a2, os_unfair_lock_s **a3, _DWORD *a4)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*a1, 0);
  v10 = *ValueAtIndex;
  v9 = ValueAtIndex[1];
  v11 = ValueAtIndex[2];
  CFArrayRemoveValueAtIndex(*a1, 0);
  free(ValueAtIndex);
  ++*a2;
  FigSimpleMutexUnlock(*a3);
  figXPC_SendOneNotification(v10, v9, v11);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  FigSimpleMutexLock(*a3);
  return *a4 == 3;
}

@end