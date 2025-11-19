@interface DepthWrapperEncoder
@end

@implementation DepthWrapperEncoder

void __DepthWrapperEncoder_EncodeFrame_block_invoke(void *a1, uint64_t a2, unsigned int a3, CMSampleBufferRef sbuf)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    CopyWithNewFormatDescription = a2;
    goto LABEL_24;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  v8 = a1[4];
  if (!*(v8 + 48))
  {
LABEL_7:
    v9 = *(v8 + 64);
    *(v8 + 64) = FormatDescription;
    if (FormatDescription)
    {
      CFRetain(FormatDescription);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v10 = a1[4];
    v11 = *(v10 + 48);
    if (v11)
    {
      CFRelease(v11);
      *(a1[4] + 48) = 0;
      v10 = a1[4];
    }

    v12 = *(v10 + 64);
    v13 = *(v10 + 16);
    formatDescriptionOut = 0;
    v14 = *(v10 + 40);
    Dimensions = CMVideoFormatDescriptionGetDimensions(v12);
    Extensions = CMFormatDescriptionGetExtensions(v12);
    if (Extensions)
    {
      v17 = Extensions;
      v18 = *MEMORY[0x1E69600A0];
      Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
      if (Value)
      {
        v20 = Value;
        *bytes = 0;
        v31 = 1;
        v32 = vrev32_s8(vmovn_s64(vcvtq_n_u64_f64(vcvtq_f64_f32(v14), 0x10uLL)));
        v21 = *MEMORY[0x1E695E480];
        v22 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 13);
        if (v22)
        {
          v23 = v22;
          MutableCopy = CFDictionaryCreateMutableCopy(v21, 0, v17);
          if (MutableCopy)
          {
            v25 = MutableCopy;
            v26 = CFDictionaryCreateMutableCopy(v21, 0, v20);
            if (v26)
            {
              v27 = v26;
              CFDictionarySetValue(v26, @"disc", v23);
              CFDictionarySetValue(v25, v18, v27);
              CFDictionaryRemoveValue(v25, *MEMORY[0x1E69600D0]);
              CFDictionaryRemoveValue(v25, *MEMORY[0x1E69600C8]);
              CopyWithNewFormatDescription = CMVideoFormatDescriptionCreate(v21, v13, Dimensions.width, Dimensions.height, v25, &formatDescriptionOut);
              if (CopyWithNewFormatDescription)
              {
                if (formatDescriptionOut)
                {
                  CFRelease(formatDescriptionOut);
                }
              }

              else
              {
                *(v10 + 48) = formatDescriptionOut;
                formatDescriptionOut = 0;
              }

              CFRelease(v25);
              CFRelease(v27);
              goto LABEL_21;
            }

            __DepthWrapperEncoder_EncodeFrame_block_invoke_cold_1(v25, &v29);
          }

          else
          {
            __DepthWrapperEncoder_EncodeFrame_block_invoke_cold_2(&v29);
          }

          CopyWithNewFormatDescription = v29;
LABEL_21:
          CFRelease(v23);
          goto LABEL_22;
        }

        __DepthWrapperEncoder_EncodeFrame_block_invoke_cold_3(&v29);
        CopyWithNewFormatDescription = v29;
LABEL_22:
        if (CopyWithNewFormatDescription)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      __DepthWrapperEncoder_EncodeFrame_block_invoke_cold_4(bytes);
    }

    else
    {
      __DepthWrapperEncoder_EncodeFrame_block_invoke_cold_5(bytes);
    }

    CopyWithNewFormatDescription = *bytes;
    goto LABEL_22;
  }

  if (!FigCFEqual())
  {
    v8 = a1[4];
    goto LABEL_7;
  }

LABEL_23:
  CopyWithNewFormatDescription = FigSampleBufferCreateCopyWithNewFormatDescription();
LABEL_24:
  depthencoder_emitEncodedFrame(a1[5], a1[6], CopyWithNewFormatDescription, a3, 0);
}

void __DepthWrapperEncoder_EncodeFrame_block_invoke_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();
  CFRelease(a1);
}

uint64_t __DepthWrapperEncoder_EncodeFrame_block_invoke_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __DepthWrapperEncoder_EncodeFrame_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __DepthWrapperEncoder_EncodeFrame_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __DepthWrapperEncoder_EncodeFrame_block_invoke_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end