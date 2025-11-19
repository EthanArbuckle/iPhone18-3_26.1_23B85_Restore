@interface MuxedAlphaDecoder
@end

@implementation MuxedAlphaDecoder

void __MuxedAlphaDecoder_DecodeFrame_block_invoke(uint64_t a1, int a2, int a3, uint64_t a4, const void *a5)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  *(*(*(a1 + 32) + 8) + 44) = a3;
  if (a2)
  {
    a5 = 0;
  }

  if (a5)
  {
    CFRetain(a5);
  }

  *(*(*(a1 + 32) + 8) + 56) = a5;
  dispatch_group_leave(*(a1 + 40));
  dispatch_release(*(a1 + 40));
  v7 = *(*(*(a1 + 32) + 8) + 32);
  if (v7)
  {
    CFRelease(v7);
    *(*(*(a1 + 32) + 8) + 32) = 0;
  }
}

void __MuxedAlphaDecoder_DecodeFrame_block_invoke_2(uint64_t a1, int a2, int a3, uint64_t a4, const void *a5)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  *(*(*(a1 + 32) + 8) + 44) = a3;
  if (a2)
  {
    a5 = 0;
  }

  if (a5)
  {
    CFRetain(a5);
  }

  *(*(*(a1 + 32) + 8) + 56) = a5;
  dispatch_group_leave(*(a1 + 40));
  dispatch_release(*(a1 + 40));
  v7 = *(*(*(a1 + 32) + 8) + 32);
  if (v7)
  {
    CFRelease(v7);
    *(*(*(a1 + 32) + 8) + 32) = 0;
  }
}

void __MuxedAlphaDecoder_DecodeFrame_block_invoke_3(uint64_t a1, int a2, int a3, const void *a4)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  *(*(*(a1 + 32) + 8) + 44) = a3;
  if (a2)
  {
    a4 = 0;
  }

  if (a4)
  {
    CFRetain(a4);
  }

  *(*(*(a1 + 32) + 8) + 48) = a4;
  dispatch_group_leave(*(a1 + 40));
  dispatch_release(*(a1 + 40));
  v6 = *(*(*(a1 + 32) + 8) + 32);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 32) + 8) + 32) = 0;
  }
}

void __MuxedAlphaDecoder_DecodeFrame_block_invoke_4(uint64_t a1, int a2, int a3, const void *a4)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  *(*(*(a1 + 32) + 8) + 44) = a3;
  if (a2)
  {
    a4 = 0;
  }

  if (a4)
  {
    CFRetain(a4);
  }

  *(*(*(a1 + 32) + 8) + 48) = a4;
  dispatch_group_leave(*(a1 + 40));
  dispatch_release(*(a1 + 40));
  v6 = *(*(*(a1 + 32) + 8) + 32);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 32) + 8) + 32) = 0;
  }
}

void __MuxedAlphaDecoder_DecodeFrame_block_invoke_5(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 40) + 8) + 40);
  v2 = *(*(a1 + 32) + 8);
  if (!*(v2 + 24))
  {
    *(v2 + 24) = *(*(*(a1 + 48) + 8) + 40);
  }

  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 48) + 8) + 44) | *(*(*(a1 + 40) + 8) + 44);
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 24) & 0xFFFFFFFE;
  if (*(a1 + 112))
  {
    ++v4;
  }

  *(v3 + 24) = v4;
  v5 = *(a1 + 80);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (*(v5 + 136))
  {
    if (!v6)
    {
      v23 = *(*(*(a1 + 64) + 8) + 24);
      if (v23)
      {
        if (!*(v5 + 124))
        {
          v24 = *(*(*(a1 + 40) + 8) + 56);
          v25 = *(*(*(a1 + 48) + 8) + 56);
          Count = CMTaggedBufferGroupGetCount(v24);
          if (Count == CMTaggedBufferGroupGetCount(v25))
          {
            if (CMTaggedBufferGroupGetCount(v24) < 1)
            {
LABEL_35:
              v31 = 0;
            }

            else
            {
              v27 = 0;
              while (1)
              {
                CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v24, v27);
                v29 = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v25, v27);
                v30 = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v23, v27);
                v31 = alphadecoder_mergeBaseAndAlpha(CVPixelBufferAtIndex, v29, v30);
                if (v31)
                {
                  break;
                }

                if (++v27 >= CMTaggedBufferGroupGetCount(v24))
                {
                  goto LABEL_35;
                }
              }
            }
          }

          else
          {
            __MuxedAlphaDecoder_DecodeFrame_block_invoke_5_cold_1(&v33);
            v31 = v33;
          }

          *(*(*(a1 + 32) + 8) + 24) = v31;
        }
      }
    }

    v7 = *(*(*(a1 + 40) + 8) + 56);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(*(*(a1 + 48) + 8) + 56);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 96);
    v10 = *(*(*(a1 + 32) + 8) + 24);
    v11 = *(*(*(a1 + 56) + 8) + 24);
    v12 = *(*(*(a1 + 64) + 8) + 24);
    VTVideoDecoderGetCMBaseObject(*(a1 + 88));
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    VTDecoderSessionEmitDecodedMultiImageFrame(*(DerivedStorage + 8), v9, v10, v11, v12);
    --*(DerivedStorage + 120);
    dispatch_semaphore_signal(*(DerivedStorage + 112));
    dispatch_group_leave(*(DerivedStorage + 104));
    for (i = 0; ; ++i)
    {
      v15 = *(*(a1 + 80) + 128);
      if (v15)
      {
        v15 = CFArrayGetCount(v15);
      }

      if (i >= v15)
      {
        break;
      }

      ValueAtIndex = FigCFArrayGetValueAtIndex();
      VTDecoderSessionForgetPixelBufferForFrame(*(*(a1 + 80) + 8), *(a1 + 96), ValueAtIndex);
    }

    v17 = *(a1 + 64);
  }

  else
  {
    if (!v6)
    {
      v32 = *(*(*(a1 + 72) + 8) + 24);
      if (v32)
      {
        if (!*(v5 + 124))
        {
          *(*(*(a1 + 32) + 8) + 24) = alphadecoder_mergeBaseAndAlpha(*(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 48) + 8) + 48), v32);
        }
      }
    }

    v18 = *(*(*(a1 + 40) + 8) + 48);
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = *(*(*(a1 + 48) + 8) + 48);
    if (v19)
    {
      CFRelease(v19);
    }

    alphadecoder_emitDecodedFrame(*(a1 + 88), *(a1 + 96), *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 72) + 8) + 24));
    FirstValue = FigCFArrayGetFirstValue();
    VTDecoderSessionForgetPixelBufferForFrame(*(*(a1 + 80) + 8), *(a1 + 96), FirstValue);
    v17 = *(a1 + 72);
  }

  v21 = *(*(v17 + 8) + 24);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 104);

  dispatch_release(v22);
}

uint64_t __MuxedAlphaDecoder_DecodeFrame_block_invoke_5_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end