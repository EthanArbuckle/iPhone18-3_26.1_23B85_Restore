@interface Finalize
@end

@implementation Finalize

void __urlProcessor_Finalize_block_invoke(int a1, int a2, dispatch_semaphore_t dsema)
{
  dispatch_semaphore_signal(dsema);
  if (dsema)
  {

    dispatch_release(dsema);
  }
}

void __servedPlayerState_Finalize_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __servedPlayerState_Finalize_block_invoke_2;
  block[3] = &__block_descriptor_tmp_125_0;
  block[4] = *(a1 + 40);
  dispatch_sync(v2, block);
  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_release(v3);
  }
}

void __servedPlayerState_Finalize_block_invoke_2(uint64_t a1)
{
  FigBaseObject = FigPlayerGetFigBaseObject(*(a1 + 32));
  if (FigBaseObject)
  {
    v3 = FigBaseObject;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v4)
    {
      v4(v3);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __servedPlaybackItemState_Finalize_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __servedPlaybackItemState_Finalize_block_invoke_2;
  block[3] = &__block_descriptor_tmp_144_0;
  block[4] = *(a1 + 40);
  dispatch_sync(v2, block);
  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_release(v3);
  }
}

void __servedPlaybackItemState_Finalize_block_invoke_2(uint64_t a1)
{
  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(a1 + 32));
  if (FigBaseObject)
  {
    v3 = FigBaseObject;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v4)
    {
      v4(v3);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __figPlaybackCoordinator_Finalize_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v4)
  {
    v4(v2, v3);
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[5];
  if (v7)
  {

    CFRelease(v7);
  }
}

@end