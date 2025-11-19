@interface SRSEnhancementFilter
@end

@implementation SRSEnhancementFilter

void __SRSEnhancementFilter_ProcessFrame_block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = 40;
  if (!*(v2 + 32))
  {
    v3 = 48;
    v5 = 0;
    if (!*(v2 + 33))
    {
      goto LABEL_9;
    }

LABEL_6:
    if (!*(v2 + 32))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v4 = 56;
  if (!*(v2 + 33))
  {
    v4 = 40;
  }

  v5 = *(*(*(a1 + v4) + 8) + 24);
  if (*(v2 + 33))
  {
    goto LABEL_6;
  }

LABEL_9:
  v6 = *(*(*(a1 + v3) + 8) + 24);
  v7 = OUTLINED_FUNCTION_1_8();
  CVPixelBufferGetIOSurface(v7);
  CVPixelBufferGetIOSurface(v6);
  OUTLINED_FUNCTION_0_8();
  if (IOSurfaceAcceleratorTransformSurface())
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_0_8();
  if (*(v8 + 32))
  {
    v9 = OUTLINED_FUNCTION_1_8();
    CVBufferPropagateAttachments(v9, v6);
    OUTLINED_FUNCTION_0_8();
    if (*(v2 + 32))
    {
LABEL_12:
      if (!VTPixelTransferSessionTransferImage(*(v2 + 48), v5, *(*(*(a1 + 48) + 8) + 24)))
      {
        goto LABEL_13;
      }

LABEL_42:
      v28 = 0;
      v23 = 0;
      v34 = 0;
      goto LABEL_29;
    }
  }

LABEL_13:
  if (!*(a1 + 96))
  {
    goto LABEL_25;
  }

  v10 = OUTLINED_FUNCTION_1_8();
  v11 = *MEMORY[0x1E6965D70];
  v12 = CVBufferCopyAttachment(v10, *MEMORY[0x1E6965D70], 0);
  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = v12;
  OUTLINED_FUNCTION_0_8();
  v16 = v14[2];
  v15 = v14[3];
  v17 = v14[6];
  v18 = v14[7];
  LODWORD(v45) = 0;
  v48 = 0;
  v47 = 0.0;
  if (!FigCFDictionaryGetFloat32IfPresent() || !FigCFDictionaryGetFloat32IfPresent() || !FigCFDictionaryGetFloat32IfPresent() || !FigCFDictionaryGetFloat32IfPresent() || (v19 = v17 / v16, v20 = v18 / v15, *&v45 = v19 * *&v45, *&v48 = v19 * *&v48, *(&v48 + 1) = v20 * *(&v48 + 1), v47 = v20 * v47, v21 = *MEMORY[0x1E695E480], (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0))
  {
    CFRelease(v13);
LABEL_25:
    v30 = OUTLINED_FUNCTION_2_8(*(a1 + 56));
    CVBufferPropagateAttachments(v30, *(*(v31 + 8) + 24));
    v23 = 0;
    goto LABEL_26;
  }

  v23 = Mutable;
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  CFRelease(v13);
  v24 = OUTLINED_FUNCTION_1_8();
  v25 = CVBufferCopyAttachments(v24, kCVAttachmentMode_ShouldPropagate);
  if (v25)
  {
    v26 = v25;
    MutableCopy = CFDictionaryCreateMutableCopy(v21, 0, v25);
    v28 = MutableCopy;
    if (MutableCopy)
    {
      CFDictionarySetValue(MutableCopy, v11, v23);
      v29 = OUTLINED_FUNCTION_2_8(*(a1 + 48));
      CVBufferSetAttachments(v29, v28, kCVAttachmentMode_ShouldPropagate);
    }

    CFRelease(v26);
    goto LABEL_27;
  }

LABEL_26:
  v28 = 0;
LABEL_27:
  v32 = OUTLINED_FUNCTION_1_8();
  IOSurface = CVPixelBufferGetIOSurface(v32);
  v34 = IOSurfaceCopyValue(IOSurface, @"DolbyVisionRPUData");
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_2_8(*(a1 + 48));
    v36 = CVPixelBufferGetIOSurface(v35);
    IOSurfaceSetValue(v36, @"DolbyVisionRPUData", v34);
  }

LABEL_29:
  OUTLINED_FUNCTION_0_8();
  v38 = *v37;
  v39 = *(*(*(a1 + 48) + 8) + 24);
  v45 = *(a1 + 72);
  v46 = *(a1 + 88);
  VTTemporalFilterPluginSessionEmitOutputFrame(v38, v40, 0, &v45, v39);
  OUTLINED_FUNCTION_0_8();
  VTTemporalFilterPluginSessionConcludeInputFrame(*v41, *(a1 + 64));
  if (v23)
  {
    CFRelease(v23);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  v42 = OUTLINED_FUNCTION_2_8(*(a1 + 48));
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = OUTLINED_FUNCTION_2_8(*(a1 + 40));
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = OUTLINED_FUNCTION_1_8();
  if (v44)
  {
    CFRelease(v44);
  }

  if (v34)
  {
    CFRelease(v34);
  }
}

@end