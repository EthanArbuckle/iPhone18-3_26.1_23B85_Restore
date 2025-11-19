@interface UpdateCryptorFromSampleBuffer
@end

@implementation UpdateCryptorFromSampleBuffer

void __vq_UpdateCryptorFromSampleBuffer_block_invoke(void *a1)
{
  v1 = a1[6];
  if (!*v1 && *(v1 + 392) != a1[7])
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    v4 = *(a1[6] + 392);
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *(*(a1[4] + 8) + 24) = v4;
    if (*(*(a1[4] + 8) + 24))
    {
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
    }

    v6 = a1[6];
    v5 = a1[7];
    v7 = *(v6 + 392);
    *(v6 + 392) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[7];
    if (v8)
    {
      cf = 0;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        if (!v9(v8, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &cf))
        {
          v10 = cf;
          *(*(a1[5] + 8) + 24) = cf == *MEMORY[0x1E695E4D0];
          if (v10)
          {
            CFRelease(v10);
          }
        }
      }

      v11 = *(a1[6] + 656);
      if (v11)
      {
        v12 = a1[7];
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v13)
        {
          v13(v12, @"DisplayList", v11);
        }
      }

      FigNotificationCenterAddWeakListener();
      FigNotificationCenterAddWeakListener();
    }

    v14 = a1[8];
    if (v14)
    {
      CFRetain(v14);
      v15 = a1[8];
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1[6] + 536);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __vq_UpdateCryptorFromSampleBuffer_block_invoke_2;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = DefaultLocalCenter;
    block[5] = v15;
    dispatch_async(v16, block);
  }
}

void __vq_UpdateCryptorFromSampleBuffer_block_invoke_2(uint64_t a1)
{
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end