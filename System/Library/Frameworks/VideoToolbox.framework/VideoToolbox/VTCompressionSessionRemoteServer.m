@interface VTCompressionSessionRemoteServer
@end

@implementation VTCompressionSessionRemoteServer

uint64_t __VTCompressionSessionRemoteServer_PrepareToEncodeFrames_block_invoke(uint64_t a1)
{
  v2 = VTCompressionSessionPrepareToEncodeFrames(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);

  return VTCompressionSessionRemoteCallbackClient_PrepareToEncodeFramesReturn(v4, v5, v2);
}

void __VTCompressionSessionRemoteServer_EncodeFrame_block_invoke(uint64_t a1)
{
  if (*(a1 + 96))
  {
    FigMachPortReleaseSendRight_();
  }

  v2 = MEMORY[0x1E69E9A60];
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], *(a1 + 80));
  }

  if (*(a1 + 100))
  {
    MEMORY[0x193AE4440](*v2, *(a1 + 88));
  }

  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = 0;
  for (i = 56; i != 256; i += 40)
  {
    v7 = *(*(a1 + 56) + 8);
    if (*(v7 + i - 32))
    {
      FigMachPortReleaseSendRight_();
      v7 = *(*(a1 + 56) + 8);
    }

    if (*(v7 + i - 16))
    {
      MEMORY[0x193AE4440](*v2, *(v7 + i - 24));
      v7 = *(*(a1 + 56) + 8);
    }

    if (*(v7 + i))
    {
      MEMORY[0x193AE4440](*v2, *(v7 + i - 8));
    }

    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + v5 + 32);
    if (v9)
    {
      CFRelease(v9);
      v8 = *(*(a1 + 64) + 8);
    }

    v10 = *(v8 + v5 + 24);
    if (v10)
    {
      CFRelease(v10);
      v8 = *(*(a1 + 64) + 8);
    }

    v11 = *(v8 + v5 + 40);
    if (v11)
    {
      CFRelease(v11);
    }

    v5 += 24;
  }

  v12 = *(*(*(a1 + 72) + 8) + 24);
  if (v12)
  {

    CFRelease(v12);
  }
}

uint64_t __VTCompressionSessionRemoteServer_EncodeFrame_block_invoke_2(uint64_t a1)
{
  infoFlagsOut = 0;
  *(*(*(*(a1 + 40) + 8) + 24) + 168) = 1;
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = *(a1 + 72);
  if (v2)
  {
    v4 = *(*(*(a1 + 56) + 8) + 24);
    v5 = *(a1 + 80);
    presentationTimeStamp = *(a1 + 88);
    v13 = *(a1 + 112);
    v6 = VTCompressionSessionEncodeMultiImageFrame(v3, v2, &presentationTimeStamp, &v13, v4, v5, &infoFlagsOut);
  }

  else
  {
    v7 = *(*(*(a1 + 64) + 8) + 24);
    v8 = *(*(*(a1 + 56) + 8) + 24);
    v9 = *(a1 + 80);
    presentationTimeStamp = *(a1 + 88);
    v13 = *(a1 + 112);
    v6 = VTCompressionSessionEncodeFrame(v3, v7, &presentationTimeStamp, &v13, v8, v9, &infoFlagsOut);
  }

  v10 = v6;
  (*(*(a1 + 32) + 16))();
  v11 = *(*(*(a1 + 40) + 8) + 24);
  return VTCompressionSessionRemoteCallbackClient_EncodeReturn(*(v11 + 64), *(v11 + 72), infoFlagsOut, 1, v10);
}

uint64_t __VTCompressionSessionRemoteServer_CompleteFrames_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  FigSemaphoreSignal();
  v2 = *(a1 + 40);
  v5 = *(a1 + 48);
  v3 = VTCompressionSessionCompleteFrames(v2, &v5);
  return VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(*(*(a1 + 32) + 64), *(*(a1 + 32) + 72), v3);
}

uint64_t __VTCompressionSessionRemoteServer_PrepareToEncodeTiles_block_invoke(uint64_t a1)
{
  v2 = VTTileCompressionSessionPrepareToEncodeTiles(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  *(*(*(a1 + 32) + 8) + 28) = 0;
  return VTCompressionSessionRemoteCallbackClient_PrepareToEncodeTilesReturn(*(*(a1 + 48) + 64), *(*(a1 + 48) + 72), *(*(*(a1 + 32) + 8) + 24), v2);
}

uint64_t __VTCompressionSessionRemoteServer_EncodeTile_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 168) = 1;
  v4 = VTTileCompressionSessionEncodeTile(v2);
  if (*(a1 + 104))
  {
    FigMachPortReleaseSendRight_();
  }

  v5 = MEMORY[0x1E69E9A60];
  if (*(a1 + 108))
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], *(a1 + 72));
  }

  if (*(a1 + 112))
  {
    MEMORY[0x193AE4440](*v5, *(a1 + 80));
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

  return VTCompressionSessionRemoteCallbackClient_EncodeReturn(*(*(a1 + 32) + 64), *(*(a1 + 32) + 72), 0, 1, v4);
}

uint64_t __VTCompressionSessionRemoteServer_CompleteTiles_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  FigSemaphoreSignal();
  v2 = VTTileCompressionSessionCompleteTiles(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);

  return VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v4, v5, v2);
}

void __VTCompressionSessionRemoteServer_EstimateMotion_block_invoke(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(*(*(v3 + 8) + 24) + 168) = 1;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __VTCompressionSessionRemoteServer_EstimateMotion_block_invoke_2;
  v14[3] = &unk_1E72C7C98;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v14[5] = &v15;
  v14[6] = v8;
  v14[4] = v7;
  v9 = VTMotionEstimationSessionEstimateMotionVectors(v2, v4, v5, v6, 0, v14);
  if (*(a1 + 92))
  {
    FigMachPortReleaseSendRight_();
  }

  v10 = MEMORY[0x1E69E9A60];
  if (*(a1 + 96))
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], *(a1 + 72));
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  if (*(a1 + 100))
  {
    FigMachPortReleaseSendRight_();
  }

  if (*(a1 + 104))
  {
    MEMORY[0x193AE4440](*v10, *(a1 + 80));
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(*(*(a1 + 32) + 8) + 24);
  VTCompressionSessionRemoteCallbackClient_EncodeReturn(*(v13 + 64), *(v13 + 72), *(v16 + 6), 1, v9);
  _Block_object_dispose(&v15, 8);
}

void __VTCompressionSessionRemoteServer_EstimateMotion_block_invoke_2(void *a1, int a2, int a3, const void *a4, const void *a5)
{
  if (!*(*(*(a1[4] + 8) + 24) + 200))
  {
    v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E0040003D4157uLL);
    if (v10)
    {
      v11 = v10;
      v10[1] = a1[6];
      *(v10 + 4) = a2;
      *(v10 + 5) = a3;
      if (a4)
      {
        v12 = CFRetain(a4);
      }

      else
      {
        v12 = 0;
      }

      v11[3] = v12;
      v11[7] = 0;
      if (a5)
      {
        v13 = CFRetain(a5);
      }

      else
      {
        v13 = 0;
      }

      v11[8] = v13;
      *(*(a1[5] + 8) + 24) = a3;
      v14 = *(*(a1[4] + 8) + 24);

      vtcss_enqueueFrame(v14, v11);
    }

    else
    {
      __VTCompressionSessionRemoteServer_EstimateMotion_block_invoke_2_cold_1();
    }
  }
}

uint64_t __VTCompressionSessionRemoteServer_CompleteMotionEstimation_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  FigSemaphoreSignal();
  v2 = VTMotionEstimationSessionCompleteFrames(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);

  return VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v4, v5, v2);
}

uint64_t __VTCompressionSessionRemoteServer_TemporalProcessFrame_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 168) = 1;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v11 = *(a1 + 92);
  v12 = *(a1 + 108);
  v6 = VTTemporalFilterSessionProcessFrame(v2, v4, &v11, v5);
  if (*(a1 + 80))
  {
    FigMachPortReleaseSendRight_();
  }

  v7 = MEMORY[0x1E69E9A60];
  if (*(a1 + 84))
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], *(a1 + 64));
  }

  if (*(a1 + 88))
  {
    MEMORY[0x193AE4440](*v7, *(a1 + 72));
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  return VTCompressionSessionRemoteCallbackClient_EncodeReturn(*(*(a1 + 32) + 64), *(*(a1 + 32) + 72), 0, 1, v6);
}

uint64_t __VTCompressionSessionRemoteServer_CompleteTemporalFilterFrames_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  FigSemaphoreSignal();
  v2 = VTTemporalFilterSessionCompleteFrames(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);

  return VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v4, v5, v2);
}

uint64_t __VTCompressionSessionRemoteServer_EstimateMotion_block_invoke_2_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

@end