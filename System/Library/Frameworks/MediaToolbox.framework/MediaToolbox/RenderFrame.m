@interface RenderFrame
@end

@implementation RenderFrame

void __basicVideoCompositor_RenderFrame_block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 296);
  if (v3)
  {
    v3(*(v2 + 304), a1[5], 0, a1[6], 0);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __basicVideoCompositor_RenderFrame_block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 296);
  if (v3)
  {
    v3(*(v2 + 304), *(a1 + 40), *(a1 + 56), *(a1 + 48), 0);
  }

  v4 = *(a1 + 48);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t __openglVideoCompositor_RenderFrame_block_invoke(uint64_t result)
{
  if (!*(*(result + 40) + 648))
  {
    v1 = result;
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t __openglVideoCompositor_RenderFrame_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  result = FigGetUpTimeNanoseconds();
  v5 = (result - v3) / 1000;
  ++*(v2 + 816);
  *(v2 + 808) += v5;
  v6 = *(v2 + 792);
  if (v6 >= v5)
  {
    v6 = (result - v3) / 1000;
  }

  *(v2 + 792) = v6;
  if (*(v2 + 800) > v5)
  {
    v5 = *(v2 + 800);
  }

  *(v2 + 800) = v5;
  v7 = a1[4];
  v8 = *(v7 + 648);
  if (v8)
  {
    v9 = *(v7 + 656);
    v10 = a1[6];
    v11 = a1[7];

    return v8(v9, v10, 0, v11, 0);
  }

  return result;
}

void __mvc_RenderFrame_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(v2 + 24);
  if (v3)
  {
    v3(*(v2 + 32), a1[6], 0, *(*(a1[4] + 8) + 24), 0);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(*(a1[4] + 8) + 24);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t __basicVideoCompositor_RenderFrame_block_invoke(void *a1)
{
  Width = v1;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v5 = a1[7];
  *(a1[6] + 336) = UpTimeNanoseconds;
  v6 = CFGetAllocator(v5);
  v7 = a1[8];
  v8 = *(v7 + 168);
  v9 = a1[6];
  v10 = *(v9 + 16);
  v11 = *(v7 + 184);
  v12 = *(v7 + 192);
  v14 = *(v7 + 200);
  v13 = *(v7 + 208);
  v15 = *(v7 + 232);
  v16 = *(v7 + 240);
  v18 = *(v7 + 216);
  v17 = *(v7 + 224);
  v19 = *v9;
  v20 = *(v9 + 176);
  v83 = *(*(a1[4] + 8) + 24);
  v21 = *(v9 + 296);
  v22 = *(v9 + 304);
  v23 = *(v9 + 312);
  v24 = *(v9 + 320);
  allocator = v6;
  v85 = *(v9 + 160);
  v25 = *(v9 + 168);
  pixelBufferOut = 0;
  v88 = 0;
  if (!v6 || !v11 || !v12 || !v15)
  {
    goto LABEL_60;
  }

  if (!v16)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v34 = FigSignalErrorAtGM();
    Width = 0;
    goto LABEL_61;
  }

  if (!v18 || !v17 || !v14 || !v13 || v20 && v20 != 90 && v20 != 180 && v20 != 270)
  {
LABEL_60:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v34 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_3_113();
LABEL_61:
    v19 = 0;
    goto LABEL_131;
  }

  if (!v19)
  {
    OUTLINED_FUNCTION_3_113();
    v34 = 0;
    goto LABEL_131;
  }

  v71 = v13;
  v72 = v14;
  v73 = v11;
  v82 = v25;
  v77 = v18;
  v78 = v15;
  v86 = v10;
  v26 = (v17 + 32 * v10);
  Width = CVPixelBufferGetWidth(v19);
  Height = CVPixelBufferGetHeight(v19);
  pixelBuffer = CVPixelBufferGetPixelFormatType(v19);
  key = *MEMORY[0x1E6965F98];
  cf = CVBufferCopyAttachment(v19, *MEMORY[0x1E6965F98], 0);
  v76 = v26;
  if (!cf)
  {
    v28 = v16;
    v29 = CVBufferCopyAttachment(v19, *MEMORY[0x1E6965CE8], 0);
    CGColorSpaceGetName(v29);
    v30 = VTGetDefaultYCbCrMatrixWithColorSpaceNameAndDimensionHints();
    if (v30)
    {
      cf = CFRetain(v30);
      if (!v29)
      {
LABEL_19:
        v16 = v28;
        v26 = v76;
        goto LABEL_20;
      }
    }

    else
    {
      cf = 0;
      if (!v29)
      {
        goto LABEL_19;
      }
    }

    CFRelease(v29);
    goto LABEL_19;
  }

LABEL_20:
  if (v83 == 1)
  {
    v31 = v85;
    v32 = v82;
    v33 = v23 == v85 && v24 == v32;
    if (!v33 || (v89.origin.x = OUTLINED_FUNCTION_6_81(), CGRectContainsRect(v89, v93), v20))
    {
      OUTLINED_FUNCTION_7_70();
    }

    else
    {
      OUTLINED_FUNCTION_7_70();
      if (v43)
      {
LABEL_64:
        v44 = v16[Height];
        if (v44)
        {
          CFRelease(v44);
          v16[Height] = 0;
        }

        v45 = *(v78 + 8 * Height);
        if (v45)
        {
          CFRelease(v45);
          OUTLINED_FUNCTION_3_113();
          *(v78 + 8 * Height) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_3_113();
        }

        v34 = -16210;
        v40 = v19;
        goto LABEL_129;
      }
    }
  }

  else
  {
    Width = v85;
    v31 = v85;
    v32 = v82;
    v35 = v8 == 875704438 && pixelBuffer == 875704422;
    v36 = !v35;
    if (v35)
    {
      v37 = 875704438;
    }

    else
    {
      v37 = pixelBuffer;
    }

    v74 = v37;
    v39 = v23 == v31 && v24 == v32 && v20 == 0;
    Height = v86;
    if (v39 && (v36 & 1) != 0)
    {
      CVPixelBufferGetPixelFormatType(v19);
      OUTLINED_FUNCTION_2_137();
      if (!v33)
      {
        goto LABEL_64;
      }

      v74 = pixelBuffer;
      if (FigCFEqual())
      {
        goto LABEL_64;
      }
    }
  }

  if (*(v78 + 8 * Height) == v19 && CVPixelBufferGetWidth(v16[Height]) == Width && CVPixelBufferGetHeight(v16[Height]) == v82 && CVPixelBufferGetPixelFormatType(v16[Height]) == v74)
  {
    v92.origin.x = v21;
    v92.origin.y = v22;
    v92.size.width = v23;
    v92.size.height = v24;
    if (CGRectEqualToRect(*v26, v92) && *(v77 + 4 * Height) == v20)
    {
      v40 = v16[Height];
      if (v40)
      {
        OUTLINED_FUNCTION_3_113();
        v34 = 0;
LABEL_129:
        v19 = cf;
LABEL_130:
        *(v77 + 4 * Height) = v20;
        v26->origin.x = v21;
        v26->origin.y = v22;
        v26->size.width = v23;
        v26->size.height = v24;
        *v9 = v40;
        goto LABEL_131;
      }
    }
  }

  v75 = v16;
  if (v20)
  {
    v41 = v24;
    if (v20 == 270 || v20 == 90)
    {
      v42 = v23;
    }

    else
    {
      v42 = v24;
      v41 = v23;
    }

    if (Width <= 4 * v41)
    {
      v47 = Width;
      if (v41 > 4 * Width)
      {
        v47 = (v41 + 3) >> 2;
      }
    }

    else
    {
      v47 = 4 * v41;
    }

    v16 = (v12 + 8 * Height);
    Width = v82;
    if (v82 <= 4 * v42)
    {
      if (v42 > 4 * v82)
      {
        Width = (v42 + 3) >> 2;
      }
    }

    else
    {
      Width = 4 * v42;
    }

    if (v83 != 1)
    {
      CVPixelBufferGetPixelFormatType(v19);
      OUTLINED_FUNCTION_2_137();
      if (v33)
      {
        v48 = FigCFEqual();
        v49 = pixelBuffer;
        if (!v48)
        {
          v49 = 1111970369;
        }

        pixelBuffer = v49;
      }
    }

    v50 = bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat(*v16, v47, Width, pixelBuffer);
    v51 = *v16;
    if (v50)
    {
      if (v51)
      {
        goto LABEL_86;
      }
    }

    else if (v51)
    {
      CFRelease(v51);
      *v16 = 0;
    }

    PixelBufferPoolForPreProcessing = bvc_createPixelBufferPoolForPreProcessing(v47, Width, pixelBuffer, (v12 + 8 * Height));
    if (PixelBufferPoolForPreProcessing)
    {
      goto LABEL_154;
    }

LABEL_86:
    v52 = (v71 + 8 * Height);
    if (*v52)
    {
      if (*(v77 + 4 * v86) == v20)
      {
        goto LABEL_91;
      }

      CFRelease(*v52);
      *v52 = 0;
    }

    PixelBufferPoolForPreProcessing = VTImageRotationSessionCreate();
    if (PixelBufferPoolForPreProcessing)
    {
      goto LABEL_154;
    }

    MEMORY[0x19A8D4E00](*v52, *MEMORY[0x1E6983CF8], *MEMORY[0x1E695E4D0]);
LABEL_91:
    PixelBufferPoolForPreProcessing = CVPixelBufferPoolCreatePixelBuffer(allocator, *v16, &pixelBufferOut);
    if (!PixelBufferPoolForPreProcessing)
    {
      CVBufferPropagateAttachments(v19, pixelBufferOut);
      CVBufferRemoveAttachment(pixelBufferOut, *MEMORY[0x1E6965D70]);
      CVBufferRemoveAttachment(pixelBufferOut, *MEMORY[0x1E6965EF8]);
      v54 = OUTLINED_FUNCTION_6_81();
      PixelBufferPoolForPreProcessing = MEMORY[0x19A8D4E20](v54);
      if (!PixelBufferPoolForPreProcessing)
      {
        v16 = CVBufferCopyAttachment(pixelBufferOut, key, 0);
        v40 = pixelBufferOut;
        pixelBufferOut = 0;
        pixelBuffera = v40;
        Height = v86;
        Width = v85;
        v46 = v74;
        if (v16)
        {
          goto LABEL_99;
        }

        goto LABEL_94;
      }
    }

LABEL_154:
    v34 = PixelBufferPoolForPreProcessing;
    OUTLINED_FUNCTION_3_113();
    goto LABEL_165;
  }

  v40 = 0;
  pixelBuffera = v19;
  v46 = v74;
LABEL_94:
  if (cf)
  {
    v16 = CFRetain(cf);
  }

  else
  {
    v16 = 0;
  }

LABEL_99:
  v90.origin.x = OUTLINED_FUNCTION_9_52();
  v94.size.width = v31;
  v94.size.height = v32;
  if (CGRectContainsRect(v90, v94) && CVPixelBufferGetWidth(pixelBuffera) == Width && CVPixelBufferGetHeight(pixelBuffera) == v82 && CVPixelBufferGetPixelFormatType(pixelBuffera) == v46)
  {
    if (v83 == 1 || (CVPixelBufferGetPixelFormatType(pixelBuffera), OUTLINED_FUNCTION_2_137(), !v33) || FigCFEqual())
    {
      Width = 0;
LABEL_122:
      v61 = Height;
      v62 = *(v78 + 8 * Height);
      *(v78 + 8 * v61) = v19;
      CFRetain(v19);
      if (v62)
      {
        CFRelease(v62);
      }

      Height = v86;
      v63 = v75[v86];
      v19 = cf;
      if (v63)
      {
        CFRelease(v63);
      }

      v34 = 0;
      v75[v86] = v40;
      goto LABEL_130;
    }
  }

  v55 = (v73 + 8 * Height);
  v56 = bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat(*v55, Width, v82, v46);
  v57 = *v55;
  if (v56)
  {
    if (v57)
    {
      goto LABEL_110;
    }
  }

  else if (v57)
  {
    CFRelease(v57);
    *v55 = 0;
  }

  v59 = bvc_createPixelBufferPoolForPreProcessing(Width, v82, v46, v55);
  if (v59)
  {
    goto LABEL_150;
  }

LABEL_110:
  v58 = (v72 + 8 * v86);
  if (!*v58)
  {
    v59 = VTPixelTransferSessionCreate(allocator, (v72 + 8 * v86));
    if (!v59)
    {
      VTPixelTransferSessionSetProperty();
      goto LABEL_113;
    }

LABEL_150:
    v34 = v59;
    Width = 0;
    goto LABEL_165;
  }

LABEL_113:
  v91.origin.x = OUTLINED_FUNCTION_9_52();
  Width = CGRectCreateDictionaryRepresentation(v91);
  if (Width)
  {
    VTPixelTransferSessionSetProperty();
    v60 = VTPixelTransferSessionSetProperty();
    if (!v60)
    {
      v60 = VTPixelTransferSessionSetProperty();
      if (!v60)
      {
        v60 = VTPixelTransferSessionSetProperty();
        if (!v60)
        {
          v60 = CVPixelBufferPoolCreatePixelBuffer(allocator, *v55, &v88);
          if (!v60)
          {
            v60 = VTPixelTransferSessionTransferImage(*v58, pixelBuffera, v88);
            if (!v60)
            {
              if (v40)
              {
                CFRelease(v40);
              }

              v40 = v88;
              v88 = 0;
              Height = v86;
              v26 = v76;
              goto LABEL_122;
            }
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    v60 = FigSignalErrorAtGM();
  }

  v34 = v60;
LABEL_165:
  v19 = cf;
LABEL_131:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (Width)
  {
    CFRelease(Width);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  result = FigGetUpTimeNanoseconds();
  v65 = a1[6];
  *(v65 + 344) = result;
  if (v34)
  {
    v66 = a1[8];
    v67 = v66[20];
    v68 = v66[2];
    v69 = v66[3];
    result = bvc_updateSourcebufferCharacteristics(v65);
    if (!result)
    {
      result = bvc_computeScaledTransformAndTransformedRect(v68, v69, v67, v65);
    }

    if (v34 != -16210)
    {
      *(*(a1[5] + 8) + 24) = 1;
    }
  }

  return result;
}

void __basicVideoCompositor_RenderFrame_block_invoke_5(uint64_t a1)
{
  v182[5] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  v2 = CFGetAllocator(*(a1 + 40));
  v3 = CVPixelBufferPoolCreatePixelBuffer(v2, *(a1 + 48), &pixelBufferOut);
  if (v3)
  {
    v62 = v3;
    goto LABEL_129;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CVBufferSetAttachments(pixelBufferOut, v4, kCVAttachmentMode_ShouldPropagate);
  }

  v5 = *MEMORY[0x1E6965D70];
  CVBufferRemoveAttachment(pixelBufferOut, *MEMORY[0x1E6965D70]);
  v6 = *MEMORY[0x1E6965EF8];
  CVBufferRemoveAttachment(pixelBufferOut, *MEMORY[0x1E6965EF8]);
  v7 = *MEMORY[0x1E6965F98];
  CVBufferRemoveAttachment(pixelBufferOut, *MEMORY[0x1E6965F98]);
  v8 = *MEMORY[0x1E6965D88];
  CVBufferRemoveAttachment(pixelBufferOut, *MEMORY[0x1E6965D88]);
  v9 = *MEMORY[0x1E6965F30];
  CVBufferRemoveAttachment(pixelBufferOut, *MEMORY[0x1E6965F30]);
  CVBufferSetAttachment(pixelBufferOut, v5, *(*(a1 + 64) + 160), kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(pixelBufferOut, v6, *(*(a1 + 64) + 32), kCVAttachmentMode_ShouldPropagate);
  key = v7;
  CVBufferSetAttachment(pixelBufferOut, v7, *(a1 + 72), kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(pixelBufferOut, v8, *(a1 + 80), kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(pixelBufferOut, v9, *(a1 + 88), kCVAttachmentMode_ShouldPropagate);
  if (*(*(*(a1 + 32) + 8) + 24) == 2)
  {
    v10 = *(a1 + 96);
    v11 = *v10;
    v12 = v10[1];
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v14 = *(*(a1 + 64) + 256);
    v15 = *(a1 + 104);
    v11 *= 352;
    v16 = *(v15 + v11);
    v17 = 352 * v12;
    v18 = *(v15 + 352 * v12);
    v19 = pixelBufferOut;
    v20 = *(v15 + v11 + 24);
    Width = CVPixelBufferGetWidth(v16);
    Height = CVPixelBufferGetHeight(*(*(a1 + 104) + v11));
    *&v23 = CVPixelBufferGetWidth(*(*(a1 + 104) + v17));
    *&v24 = CVPixelBufferGetHeight(*(*(a1 + 104) + v17));
    *&v25 = CVPixelBufferGetWidth(pixelBufferOut);
    v26 = CVPixelBufferGetHeight(pixelBufferOut);
    v31 = bvc_mixBuffers(v14, v16, v18, v19, v27, v28, v29, v30, v20, 0.0, 0.0, Width, Height, 0, 0, v23, v24, 0, 0, v25, COERCE__INT64(v26));
    v32 = *(a1 + 64);
    v33 = (FigGetUpTimeNanoseconds() - UpTimeNanoseconds) / 1000;
    ++*(v32 + 440);
    v34 = *(v32 + 424);
    *(v32 + 432) += v33;
    v35 = *(v32 + 416);
    if (v35 >= v33)
    {
      v35 = v33;
    }

    if (v34 <= v33)
    {
      v33 = v33;
    }

    else
    {
      v33 = v34;
    }

    *(v32 + 416) = v35;
    *(v32 + 424) = v33;
    if (v31)
    {
      *(*(*(a1 + 32) + 8) + 24) = 3;
    }

    else
    {
      ++*(*(a1 + 64) + 364);
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24) != 3)
  {
    v62 = 0;
    goto LABEL_129;
  }

  ++*(*(a1 + 64) + 368);
  v36 = MEMORY[0x1E6965FD0];
  if (!*(a1 + 136))
  {
LABEL_42:
    v62 = 0;
    v65 = *(a1 + 112);
    cf2 = *v36;
    while (1)
    {
      if (--v65 < 0)
      {
        goto LABEL_129;
      }

      v66 = *(a1 + 104) + 352 * *(*(a1 + 96) + 8 * v65);
      v67 = (v66 + 80);
      v68 = *(v66 + 80);
      if (fabs(v68) >= 0.000001)
      {
        v69 = *(v66 + 104);
        v70 = fabs(*(v66 + 88));
        if (fabs(v68 + -1.0) < 0.000001 || (fabs(v68 + 1.0) >= 0.000001 ? (_ZF = v68 == 1.0) : (_ZF = 0), _ZF))
        {
          if (v70 < 0.000001 && fabs(*(v66 + 96)) < 0.000001 && fabs(v69) >= 0.000001)
          {
            if (fabs(v69 + -1.0) < 0.000001 || (fabs(v69 + 1.0) >= 0.000001 ? (v72 = v69 == 1.0) : (v72 = 0), v72))
            {
              v73 = *v67;
              v74 = *(v66 + 112);
              *&v159.c = *(v66 + 96);
              *&v159.tx = v74;
              *&v159.a = v73;
              CGAffineTransformInvert(&block, &v159);
              v183 = CGRectApplyAffineTransform(*(v66 + 200), &block);
              x = v183.origin.x;
              y = v183.origin.y;
              v77 = v183.size.width;
              v78 = v183.size.height;
              v79 = FigGetUpTimeNanoseconds();
              v84 = bvc_mixBuffers(*(*(a1 + 64) + 256), *v66, pixelBufferOut, pixelBufferOut, v80, v81, v82, v83, *(v66 + 24), x, y, v77, v78, *(v66 + 200), *(v66 + 208), *(v66 + 216), *(v66 + 224), *(v66 + 200), *(v66 + 208), *(v66 + 216), *(v66 + 224));
              v85 = *(a1 + 64);
              v86 = (FigGetUpTimeNanoseconds() - v79) / 1000;
              ++*(v85 + 440);
              v87 = *(v85 + 424);
              *(v85 + 432) += v86;
              v88 = *(v85 + 416);
              if (v88 >= v86)
              {
                v88 = v86;
              }

              if (v87 <= v86)
              {
                v86 = v86;
              }

              else
              {
                v86 = v87;
              }

              *(v85 + 416) = v88;
              *(v85 + 424) = v86;
              if (!v84)
              {
                v128 = 0;
                ++*(*(a1 + 64) + 376);
                goto LABEL_123;
              }

              if ((v84 + 12503) > 1)
              {
                v128 = 1;
                v62 = v84;
                goto LABEL_123;
              }
            }
          }
        }
      }

      ++*(*(a1 + 64) + 380);
      v89 = FigGetUpTimeNanoseconds();
      queuea = *(*(a1 + 64) + 256);
      v90 = *v66;
      v91 = pixelBufferOut;
      v92 = *(v66 + 24);
      v94 = *(v66 + 264);
      v93 = *(v66 + 272);
      v147 = *(v66 + 280);
      v148 = *(v66 + 288);
      v95 = *(v66 + 200);
      v96 = *(v66 + 208);
      v97 = *(v66 + 216);
      v98 = *(v66 + 224);
      v156 = *v67;
      v157 = *(v66 + 96);
      v158 = *(v66 + 112);
      v152 = 0;
      v153 = &v152;
      v154 = 0x2000000000;
      v155 = 0;
      PixelFormatType = CVPixelBufferGetPixelFormatType(v90);
      v100 = CVPixelBufferGetPixelFormatType(v91);
      v101 = CVBufferCopyAttachment(v91, key, 0);
      memset(v182, 0, 32);
      memset(v181, 0, sizeof(v181));
      memset(v180, 0, sizeof(v180));
      memset(v179, 0, sizeof(v179));
      v184.origin.x = v95;
      v184.origin.y = v96;
      v184.size.width = v97;
      v184.size.height = v98;
      v185 = CGRectIntegral(v184);
      v102 = v185.origin.x;
      v103 = v185.origin.y;
      v104 = v185.size.width;
      v105 = v185.size.height;
      CVPixelBufferLockBaseAddress(v90, 1uLL);
      CVPixelBufferLockBaseAddress(v91, 0);
      OUTLINED_FUNCTION_8_56();
      if (v100 != v106)
      {
        v111 = v153;
        v112 = -12503;
LABEL_113:
        *(v111 + 6) = v112;
        goto LABEL_114;
      }

      if (PixelFormatType == 32)
      {
        if (v101 && CFEqual(v101, cf2))
        {
          OUTLINED_FUNCTION_5_94();
          v109 = bvc_FullComposition_ARGB_420v709;
          v110 = bvc_FullCompositionOpaque_ARGB_420v709;
        }

        else
        {
          OUTLINED_FUNCTION_5_94();
          v109 = bvc_FullComposition_ARGB_420v601;
          v110 = bvc_FullCompositionOpaque_ARGB_420v601;
        }
      }

      else if (PixelFormatType == 1111970369)
      {
        if (v101 && CFEqual(v101, cf2))
        {
          OUTLINED_FUNCTION_5_94();
          v109 = bvc_FullComposition_BGRA_420v709;
          v110 = bvc_FullCompositionOpaque_BGRA_420v709;
        }

        else
        {
          OUTLINED_FUNCTION_5_94();
          v109 = bvc_FullComposition_BGRA_420v601;
          v110 = bvc_FullCompositionOpaque_BGRA_420v601;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_56();
        if (PixelFormatType != v107)
        {
          goto LABEL_112;
        }

        OUTLINED_FUNCTION_5_94();
        v109 = bvc_FullComposition_420v_420v;
        v110 = bvc_FullCompositionOpaque_420v_420v;
      }

      v113 = v108 ? v110 : v109;
      v142 = v113;
      if (!CVPixelBufferIsPlanar(v90))
      {
        break;
      }

      PlaneCount = CVPixelBufferGetPlaneCount(v90);
      if (PlaneCount >= 5)
      {
LABEL_112:
        v111 = v153;
        v112 = -12502;
        goto LABEL_113;
      }

      v115 = PlaneCount;
      if (!CVPixelBufferIsPlanar(v90))
      {
        goto LABEL_94;
      }

      if (v115)
      {
        goto LABEL_91;
      }

LABEL_95:
      if (!CVPixelBufferIsPlanar(v91))
      {
        if (CVPixelBufferIsPlanar(v91))
        {
          v118 = 1;
LABEL_102:
          for (i = 0; i != v118; ++i)
          {
            v181[i] = CVPixelBufferGetBytesPerRowOfPlane(v91, i);
            v179[i] = CVPixelBufferGetBaseAddressOfPlane(v91, i);
          }

LABEL_106:
          if (FigThreadGetMaxLogicalCoreCount() < 2)
          {
            *&v159.a = v156;
            *&v159.c = v157;
            *&v159.tx = v158;
            LODWORD(v140) = v92;
            v123 = v142(&v159, v182, v180, v181, v179, v94, v93, v147, v148, v102, v103, v104, v105, v140);
            *(v153 + 6) = v123;
          }

          else
          {
            v120 = v104 * v105 / 19200.0;
            if (v120 <= 1.0)
            {
              v121 = 1.0;
            }

            else
            {
              v121 = v120;
            }

            v122 = fmax(v105 / v121, 1.0);
            *&block.a = MEMORY[0x1E69E9820];
            *&block.b = 0x40000000;
            *&block.c = __bvc_blitLayer_block_invoke;
            *&block.d = &unk_1E7490F58;
            block.ty = v102;
            v161 = v103;
            v162 = v104;
            v163 = v105;
            v164 = (v122 & 1) + v122;
            v165 = fmax(v105 / v164, 1.0);
            v166 = v142;
            v167 = v94;
            v168 = v93;
            v169 = v147;
            v170 = v148;
            v172 = v157;
            v173 = v158;
            v171 = v156;
            v178 = v92;
            v174 = v182;
            v175 = v180;
            v176 = v181;
            v177 = v179;
            *&block.tx = &v152;
            dispatch_apply(v165, queuea, &block);
          }

          goto LABEL_114;
        }

LABEL_105:
        v181[0] = CVPixelBufferGetBytesPerRow(v91);
        v179[0] = CVPixelBufferGetBaseAddress(v91);
        goto LABEL_106;
      }

      v117 = CVPixelBufferGetPlaneCount(v91);
      if (v117 < 5)
      {
        v118 = v117;
        if (CVPixelBufferIsPlanar(v91))
        {
          if (!v118)
          {
            goto LABEL_106;
          }

          goto LABEL_102;
        }

        goto LABEL_105;
      }

      *(v153 + 6) = -12503;
LABEL_114:
      CVPixelBufferUnlockBaseAddress(v90, 1uLL);
      CVPixelBufferUnlockBaseAddress(v91, 0);
      if (v101)
      {
        CFRelease(v101);
      }

      v62 = *(v153 + 6);
      _Block_object_dispose(&v152, 8);
      v124 = *(a1 + 64);
      v125 = (FigGetUpTimeNanoseconds() - v89) / 1000;
      ++*(v124 + 440);
      v126 = *(v124 + 424);
      *(v124 + 432) += v125;
      v127 = *(v124 + 416);
      if (v127 >= v125)
      {
        v127 = v125;
      }

      if (v126 <= v125)
      {
        v125 = v125;
      }

      else
      {
        v125 = v126;
      }

      *(v124 + 416) = v127;
      *(v124 + 424) = v125;
      if (v62)
      {
        goto LABEL_129;
      }

      v128 = 0;
LABEL_123:
      if (v128)
      {
        goto LABEL_129;
      }
    }

    if (CVPixelBufferIsPlanar(v90))
    {
      v115 = 1;
LABEL_91:
      for (j = 0; j != v115; ++j)
      {
        v182[j] = CVPixelBufferGetBytesPerRowOfPlane(v90, j);
        v180[j] = CVPixelBufferGetBaseAddressOfPlane(v90, j);
      }

      goto LABEL_95;
    }

LABEL_94:
    v182[0] = CVPixelBufferGetBytesPerRow(v90);
    v180[0] = CVPixelBufferGetBaseAddress(v90);
    goto LABEL_95;
  }

  v156 = xmmword_196E75ED0;
  Value = CFDictionaryGetValue(*(a1 + 120), @"BackgroundColorARGB");
  if (Value)
  {
    v38 = Value;
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v38))
    {
      v40 = 0;
      v41 = &v156;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v38, v40);
        if (ValueAtIndex)
        {
          v43 = ValueAtIndex;
          v44 = CFNumberGetTypeID();
          if (v44 == CFGetTypeID(v43))
          {
            CFNumberGetValue(v43, kCFNumberFloat32Type, v41);
          }
        }

        ++v40;
        v41 = (v41 + 4);
      }

      while (v40 != 4);
    }
  }

  v45 = pixelBufferOut;
  LODWORD(v152) = 0;
  v46 = CVPixelBufferGetPixelFormatType(pixelBufferOut);
  v47 = CVBufferCopyAttachment(v45, key, 0);
  v48 = CVPixelBufferGetWidth(v45);
  v49 = CVPixelBufferGetHeight(v45);
  memset(&block, 0, 32);
  memset(&v159, 0, 32);
  CVPixelBufferLockBaseAddress(v45, 0);
  v50 = vcgezq_f32(v156);
  __asm { FMOV            V2.4S, #1.0 }

  v55 = vdupq_n_s32(0x437F0000u);
  v56 = vmovn_s32(vcvtq_s32_f32(vandq_s8(vbslq_s8(vbicq_s8(v50, vcgtq_f32(v156, _Q2)), vmulq_f32(v156, v55), v55), v50)));
  LODWORD(v152) = vuzp1_s8(v56, v56).u32[0];
  OUTLINED_FUNCTION_8_56();
  if (v46 != v57)
  {
    v62 = -12503;
    goto LABEL_39;
  }

  if (!v47 || (v58 = CFEqual(v47, *v36), v59 = bvc_Fill_32ARGB_420v709, !v58))
  {
    v59 = bvc_Fill_32ARGB_420v601;
  }

  queue = v59;
  v146 = v49;
  v60 = v36;
  if (CVPixelBufferIsPlanar(v45))
  {
    v61 = CVPixelBufferGetPlaneCount(v45);
    if (CVPixelBufferIsPlanar(v45))
    {
      if (!v61)
      {
        goto LABEL_38;
      }

LABEL_34:
      for (k = 0; k != v61; ++k)
      {
        *(&block.a + k) = CVPixelBufferGetBytesPerRowOfPlane(v45, k);
        *(&v159.a + k) = CVPixelBufferGetBaseAddressOfPlane(v45, k);
      }

      goto LABEL_38;
    }
  }

  else if (CVPixelBufferIsPlanar(v45))
  {
    v61 = 1;
    goto LABEL_34;
  }

  *&block.a = CVPixelBufferGetBytesPerRow(v45);
  *&v159.a = CVPixelBufferGetBaseAddress(v45);
LABEL_38:
  (queue)(v48, v146, &v152, &block, &v159);
  v62 = 0;
  v36 = v60;
LABEL_39:
  CVPixelBufferUnlockBaseAddress(v45, 0);
  if (v47)
  {
    CFRelease(v47);
  }

  OUTLINED_FUNCTION_8_56();
  if (v46 == v64)
  {
    goto LABEL_42;
  }

LABEL_129:
  dispatch_sync(*(*(a1 + 64) + 272), &__block_literal_global_35_0);
  v129 = *(a1 + 64);
  v130 = *(v129 + 272);
  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 0x40000000;
  v149[2] = __basicVideoCompositor_RenderFrame_block_invoke_7;
  v149[3] = &__block_descriptor_tmp_36_0;
  v131 = *(a1 + 128);
  v149[4] = v129;
  v149[5] = v131;
  v150 = v62;
  v149[6] = pixelBufferOut;
  dispatch_async(v130, v149);
  v132 = *(a1 + 112);
  if (v132)
  {
    for (m = 0; m < v132; ++m)
    {
      v134 = *(*(a1 + 104) + 352 * *(*(a1 + 96) + 8 * m));
      if (v134)
      {
        CFRelease(v134);
        v132 = *(a1 + 112);
      }
    }
  }

  free(*(a1 + 104));
  free(*(a1 + 96));
  v135 = *(a1 + 48);
  if (v135)
  {
    CFRelease(v135);
  }

  v136 = *(a1 + 56);
  if (v136)
  {
    CFRelease(v136);
  }

  v137 = *(a1 + 72);
  if (v137)
  {
    CFRelease(v137);
  }

  v138 = *(a1 + 80);
  if (v138)
  {
    CFRelease(v138);
  }

  v139 = *(a1 + 88);
  if (v139)
  {
    CFRelease(v139);
  }
}

@end