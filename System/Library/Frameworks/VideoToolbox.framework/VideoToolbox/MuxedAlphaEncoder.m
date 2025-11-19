@interface MuxedAlphaEncoder
@end

@implementation MuxedAlphaEncoder

void __MuxedAlphaEncoder_EncodeFrame_block_invoke(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  *(*(*(a1 + 32) + 8) + 44) = a3;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = v5;
  dispatch_group_leave(*(a1 + 40));
  v6 = *(a1 + 40);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (v7)
  {

    CFRelease(v7);
  }
}

void __MuxedAlphaEncoder_EncodeFrame_block_invoke_2(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  *(*(*(a1 + 32) + 8) + 44) = a3;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = v5;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  dispatch_retain(*(a1 + 56));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v6 = *(a1 + 48);
  v11 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v14 = *(a1 + 64);
  v10[2] = __MuxedAlphaEncoder_EncodeFrame_block_invoke_3;
  v10[3] = &unk_1E72C8F48;
  v12 = v16;
  v7 = *(v14 + 152);
  v15 = *(a1 + 80);
  v13 = v6;
  dispatch_async(v7, v10);
  v8 = *(a1 + 56);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(*(*(a1 + 32) + 8) + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  _Block_object_dispose(v16, 8);
}

void __MuxedAlphaEncoder_EncodeFrame_block_invoke_3(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(*(a1 + 32) + 8);
  MuxedAlphaFormatDescription = *(v2 + 40);
  if (MuxedAlphaFormatDescription)
  {
    goto LABEL_37;
  }

  MuxedAlphaFormatDescription = *(*(*(a1 + 40) + 8) + 40);
  if (MuxedAlphaFormatDescription)
  {
    goto LABEL_37;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(*(v2 + 48));
  v5 = CMSampleBufferGetFormatDescription(*(*(*(a1 + 40) + 8) + 48));
  v6 = *(a1 + 72);
  if (*(v6 + 32))
  {
    v7 = FigCFEqual();
    v6 = *(a1 + 72);
    if (v7)
    {
      if (FigCFEqual())
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 72);
    }
  }

  cf.value = 0;
  v8 = *(v6 + 56);
  *(v6 + 56) = FormatDescription;
  if (FormatDescription)
  {
    CFRetain(FormatDescription);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 72);
  v10 = *(v9 + 104);
  *(v9 + 104) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(*(a1 + 72) + 32);
  if (v11)
  {
    CFRelease(v11);
    *(*(a1 + 72) + 32) = 0;
  }

  FigHEVCBridge_CreateAlphaInfoSEI();
  MuxedAlphaFormatDescription = FigHEVCBridge_CreateMuxedAlphaFormatDescription();
  if (cf.value)
  {
    CFRelease(cf.value);
  }

  if (!MuxedAlphaFormatDescription)
  {
LABEL_20:
    v12 = *(*(*(a1 + 32) + 8) + 48);
    v13 = *(*(*(a1 + 40) + 8) + 48);
    v14 = *(*(a1 + 72) + 32);
    v15 = *(*(a1 + 48) + 8);
    v28 = 0;
    v29 = 0;
    values = 0;
    CMSampleBufferGetDecodeTimeStamp(&cf, v12);
    CMSampleBufferGetDecodeTimeStamp(&time2, v13);
    if (CMTimeCompare(&cf, &time2))
    {
      __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_1(&cf);
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&cf, v12);
      CMSampleBufferGetPresentationTimeStamp(&time2, v13);
      if (CMTimeCompare(&cf, &time2))
      {
        __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_2(&cf);
      }

      else
      {
        v16 = *MEMORY[0x1E6960458];
        alphaencoder_getSampleBufferSampleAttachment(v12, *MEMORY[0x1E6960458]);
        alphaencoder_getSampleBufferSampleAttachment(v12, v16);
        if (FigCFEqual())
        {
          v17 = *MEMORY[0x1E6960450];
          alphaencoder_getSampleBufferSampleAttachment(v12, *MEMORY[0x1E6960450]);
          alphaencoder_getSampleBufferSampleAttachment(v12, v17);
          if (FigCFEqual())
          {
            v18 = *MEMORY[0x1E695E480];
            values = FigCFNumberCreateSInt32();
            if (values)
            {
              v19 = CFArrayCreate(v18, &values, 1, 0);
              if (v19)
              {
                CMSampleBufferGetDataBuffer(v12);
                CMSampleBufferGetDataBuffer(v13);
                MuxedAlphaDataBuffer = FigHEVCBridge_CreateMuxedAlphaDataBuffer();
                if (MuxedAlphaDataBuffer)
                {
                  MuxedAlphaFormatDescription = MuxedAlphaDataBuffer;
                }

                else
                {
                  MuxedAlphaFormatDescription = alphaencoder_createDerivedSampleBuffer(v12, v13, v29, v14, &v28);
                  if (!MuxedAlphaFormatDescription)
                  {
                    *(v15 + 24) = v28;
                    v28 = 0;
                  }
                }

                goto LABEL_29;
              }

              __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_3(&cf);
LABEL_52:
              MuxedAlphaFormatDescription = LODWORD(cf.value);
LABEL_29:
              if (values)
              {
                CFRelease(values);
              }

              if (v19)
              {
                CFRelease(v19);
              }

              if (v29)
              {
                CFRelease(v29);
              }

              if (v28)
              {
                CFRelease(v28);
              }

              goto LABEL_37;
            }

            __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_4(&cf);
          }

          else
          {
            __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_5(&cf);
          }
        }

        else
        {
          __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_6(&cf);
        }
      }
    }

    v19 = 0;
    goto LABEL_52;
  }

LABEL_37:
  v21 = *(*(*(a1 + 32) + 8) + 48);
  if (v21)
  {
    CFRelease(v21);
    *(*(*(a1 + 32) + 8) + 48) = 0;
  }

  v22 = *(*(*(a1 + 40) + 8) + 48);
  if (v22)
  {
    CFRelease(v22);
    *(*(*(a1 + 40) + 8) + 48) = 0;
  }

  alphaencoder_emitEncodedFrame(*(a1 + 80), *(a1 + 88), MuxedAlphaFormatDescription, *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 48) + 8) + 24));
  v23 = *(*(*(a1 + 48) + 8) + 24);
  if (v23)
  {
    CFRelease(v23);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v24 = *(a1 + 64);
  if (v24)
  {
    dispatch_release(v24);
  }
}

void __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  *(*(*(a1 + 32) + 8) + 44) = a3;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = v5;
  dispatch_group_leave(*(a1 + 40));
  v6 = *(a1 + 40);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (v7)
  {

    CFRelease(v7);
  }
}

void __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_2(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  *(*(*(a1 + 32) + 8) + 44) = a3;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = v5;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  dispatch_retain(*(a1 + 56));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v6 = *(a1 + 48);
  v11 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v14 = *(a1 + 64);
  v10[2] = __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3;
  v10[3] = &unk_1E72C9008;
  v12 = v16;
  v7 = *(v14 + 152);
  v15 = *(a1 + 80);
  v13 = v6;
  dispatch_async(v7, v10);
  v8 = *(a1 + 56);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(*(*(a1 + 32) + 8) + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  _Block_object_dispose(v16, 8);
}

void __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(*(a1 + 32) + 8);
  MultiviewMuxedAlphaFormatDescription = *(v2 + 40);
  if (MultiviewMuxedAlphaFormatDescription)
  {
    goto LABEL_42;
  }

  MultiviewMuxedAlphaFormatDescription = *(*(*(a1 + 40) + 8) + 40);
  if (MultiviewMuxedAlphaFormatDescription)
  {
    goto LABEL_42;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(*(v2 + 48));
  v5 = CMSampleBufferGetFormatDescription(*(*(*(a1 + 40) + 8) + 48));
  v6 = *(a1 + 72);
  if (*(v6 + 32))
  {
    v7 = FigCFEqual();
    v6 = *(a1 + 72);
    if (v7)
    {
      if (FigCFEqual())
      {
        goto LABEL_30;
      }

      v6 = *(a1 + 72);
    }
  }

  cf.value = 0;
  v27.value = 0;
  v8 = *(v6 + 56);
  *(v6 + 56) = FormatDescription;
  if (FormatDescription)
  {
    CFRetain(FormatDescription);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 72);
  v10 = *(v9 + 104);
  *(v9 + 104) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(*(a1 + 72) + 32);
  if (v11)
  {
    CFRelease(v11);
    *(*(a1 + 72) + 32) = 0;
  }

  FigHEVCBridge_CreateAlphaInfoSEI();
  v12 = *(a1 + 72);
  LOWORD(v30) = 0;
  v13 = FigHEVCBridge_AllocThreeDimensionalReferenceDisplaysInfo();
  *v13 = 31;
  if (*(v12 + 144) || *(v12 + 136))
  {
    FigCFArrayGetInt16AtIndex();
  }

  else
  {
    LOWORD(v30) = 2;
  }

  v13[4] = v30;
  if (*(v12 + 144) || *(v12 + 136))
  {
    FigCFArrayGetInt16AtIndex();
  }

  else
  {
    LOWORD(v30) = 3;
  }

  v13[5] = v30;
  FigHEVCBridge_CreateThreeDimensionalReferenceDisplaysInfoSEI();
  free(v13);
  MultiviewMuxedAlphaFormatDescription = FigHEVCBridge_CreateMultiviewMuxedAlphaFormatDescription();
  if (!MultiviewMuxedAlphaFormatDescription)
  {
    LODWORD(v30) = 0;
    MultiviewMuxedAlphaFormatDescription = FigVideoFormatDescriptionDetermineCompatibilityWithCoreMediaRequirementsForHEVCWithAlpha();
  }

  if (cf.value)
  {
    CFRelease(cf.value);
  }

  if (v27.value)
  {
    CFRelease(v27.value);
  }

  if (!MultiviewMuxedAlphaFormatDescription)
  {
LABEL_30:
    v14 = *(*(*(a1 + 32) + 8) + 48);
    v15 = *(*(*(a1 + 40) + 8) + 48);
    v16 = *(a1 + 72);
    v17 = *(v16 + 32);
    v18 = *(v16 + 128);
    v19 = *(*(a1 + 48) + 8);
    v29 = 0;
    v30 = 0;
    CMSampleBufferGetDecodeTimeStamp(&cf, v14);
    CMSampleBufferGetDecodeTimeStamp(&v27, v15);
    if (CMTimeCompare(&cf, &v27))
    {
      __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3_cold_1(&cf);
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&cf, v14);
      CMSampleBufferGetPresentationTimeStamp(&v27, v15);
      if (CMTimeCompare(&cf, &v27))
      {
        __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3_cold_2(&cf);
      }

      else
      {
        v20 = *MEMORY[0x1E6960458];
        alphaencoder_getSampleBufferSampleAttachment(v14, *MEMORY[0x1E6960458]);
        alphaencoder_getSampleBufferSampleAttachment(v14, v20);
        if (FigCFEqual())
        {
          v21 = *MEMORY[0x1E6960450];
          alphaencoder_getSampleBufferSampleAttachment(v14, *MEMORY[0x1E6960450]);
          alphaencoder_getSampleBufferSampleAttachment(v14, v21);
          if (FigCFEqual())
          {
            if (v18)
            {
              CMSampleBufferGetDataBuffer(v14);
              CMSampleBufferGetDataBuffer(v15);
              MultiviewMuxedAlphaDataBuffer = FigHEVCBridge_CreateMultiviewMuxedAlphaDataBuffer();
              if (MultiviewMuxedAlphaDataBuffer)
              {
                MultiviewMuxedAlphaFormatDescription = MultiviewMuxedAlphaDataBuffer;
              }

              else
              {
                MultiviewMuxedAlphaFormatDescription = alphaencoder_createDerivedSampleBuffer(v14, v15, v30, v17, &v29);
                if (!MultiviewMuxedAlphaFormatDescription)
                {
                  *(v19 + 24) = v29;
                  v29 = 0;
                }
              }
            }

            else
            {
              __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3_cold_3();
              MultiviewMuxedAlphaFormatDescription = 0;
            }

            goto LABEL_38;
          }

          __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3_cold_4(&cf);
        }

        else
        {
          __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3_cold_5(&cf);
        }
      }
    }

    MultiviewMuxedAlphaFormatDescription = LODWORD(cf.value);
LABEL_38:
    if (v30)
    {
      CFRelease(v30);
    }

    if (v29)
    {
      CFRelease(v29);
    }
  }

LABEL_42:
  v23 = *(*(*(a1 + 32) + 8) + 48);
  if (v23)
  {
    CFRelease(v23);
    *(*(*(a1 + 32) + 8) + 48) = 0;
  }

  v24 = *(*(*(a1 + 40) + 8) + 48);
  if (v24)
  {
    CFRelease(v24);
    *(*(*(a1 + 40) + 8) + 48) = 0;
  }

  alphaencoder_emitEncodedFrame(*(a1 + 80), *(a1 + 88), MultiviewMuxedAlphaFormatDescription, *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 48) + 8) + 24));
  v25 = *(*(*(a1 + 48) + 8) + 24);
  if (v25)
  {
    CFRelease(v25);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v26 = *(a1 + 64);
  if (v26)
  {
    dispatch_release(v26);
  }
}

uint64_t __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __MuxedAlphaEncoder_EncodeFrame_block_invoke_3_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_3_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end