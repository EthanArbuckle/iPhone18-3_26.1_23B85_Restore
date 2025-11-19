@interface VTDecompressionSessionRemoteServer
@end

@implementation VTDecompressionSessionRemoteServer

uint64_t *__VTDecompressionSessionRemoteServer_Destroy_block_invoke(uint64_t a1)
{
  for (i = *(a1 + 32); ; i = *(a1 + 32))
  {
    v5 = *(i + 120);
    v4 = (i + 120);
    result = v5;
    if (!v5)
    {
      break;
    }

    v6 = *result;
    *v4 = *result;
    if (!v6)
    {
      *(*(a1 + 32) + 128) = *(a1 + 32) + 120;
    }

    vtdss_freeQueuedFrame(result);
    FigSemaphoreSignal();
  }

  return result;
}

void __VTDecompressionSessionRemoteServer_DecodeFrame_block_invoke(uint64_t a1)
{
  v12 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 152) = 1;
  CMSampleBufferGetPresentationTimeStamp(&v11, v2);
  *(v3 + 224) = v11;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(v5 + 248) = v7;
  v8 = VTDecompressionSessionDecodeFrameWithOptions(*(v5 + 24), v4, *(a1 + 72), v6, v7, &v12);
  VTDecompressionSessionRemoteCallbackClient_DecodeFrameReturn(*(*(a1 + 32) + 56), *(*(a1 + 32) + 64), v12, 1, v8);
  if (*(a1 + 76))
  {
    FigMachPortReleaseSendRight_();
  }

  if (*(a1 + 80))
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], *(a1 + 64));
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(*(a1 + 32));
}

void __VTDecompressionSessionRemoteServer_FinishDelayedFrames_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 152) = 0;
  FigSemaphoreSignal();
  v2 = VTDecompressionSessionFinishDelayedFrames(*(*(a1 + 32) + 24));
  VTDecompressionSessionRemoteCallbackClient_FinishDelayedFramesReturn(*(*(a1 + 32) + 56), *(*(a1 + 32) + 64), v2);
  v3 = *(a1 + 32);

  CFRelease(v3);
}

double __VTDecompressionSessionRemoteServer_GetMinOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 40) + 120); i; i = *i)
  {
    time1 = *(*(*(a1 + 32) + 8) + 24);
    v5 = *(i + 5);
    CMTimeMinimum(&v7, &time1, &v5);
    v3 = *(*(a1 + 32) + 8);
    *(v3 + 40) = v7.epoch;
    result = *&v7.value;
    *(v3 + 24) = *&v7.value;
  }

  return result;
}

double __VTDecompressionSessionRemoteServer_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke(void *a1)
{
  for (i = *(a1[6] + 120); i; i = *i)
  {
    time1 = *(*(a1[4] + 8) + 24);
    time2 = *(i + 5);
    CMTimeMinimum(&v8, &time1, &time2);
    *(*(a1[4] + 8) + 24) = v8;
    time1 = *(*(a1[5] + 8) + 24);
    time2 = *(i + 5);
    CMTimeMaximum(&v5, &time1, &time2);
    v3 = *(a1[5] + 8);
    *(v3 + 40) = v5.epoch;
    result = *&v5.value;
    *(v3 + 24) = *&v5.value;
  }

  return result;
}

void __VTDecompressionSessionRemoteServer_DecodeTile_block_invoke(uint64_t a1)
{
  v7 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 152) = 1;
  v4 = VTTileDecompressionSessionDecodeTile(*(v3 + 32), v2, *(a1 + 64), *(a1 + 72), *(a1 + 48), *(a1 + 80), *(a1 + 88), *(a1 + 56), &v7);
  VTDecompressionSessionRemoteCallbackClient_DecodeFrameReturn(*(*(a1 + 32) + 56), *(*(a1 + 32) + 64), v7, 1, v4);
  if (*(a1 + 92))
  {
    FigMachPortReleaseSendRight_();
  }

  if (*(a1 + 96))
  {
    FigMachPortReleaseSendRight_();
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

  CFRelease(*(a1 + 32));
}

void __VTDecompressionSessionRemoteServer_FinishDelayedTiles_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 152) = 0;
  FigSemaphoreSignal();
  v2 = VTTileDecompressionSessionFinishDelayedTiles(*(*(a1 + 32) + 32));
  VTDecompressionSessionRemoteCallbackClient_FinishDelayedFramesReturn(*(*(a1 + 32) + 56), *(*(a1 + 32) + 64), v2);
  v3 = *(a1 + 32);

  CFRelease(v3);
}

@end