CVPixelBufferRef ARPixelBufferWithCIImage(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695F620] context];
  v10 = 0;
  [v1 extent];
  v4 = v3;
  [v1 extent];
  v6 = v5;
  v11 = *MEMORY[0x1E69660D8];
  v12[0] = MEMORY[0x1E695E0F8];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  CVPixelBufferCreate(*MEMORY[0x1E695E480], v4, v6, 0x34323066u, v7, &v10);
  [v2 render:v1 toCVPixelBuffer:v10];
  v8 = v10;

  return v8;
}

uint64_t ARCreatePixelBufferWithPaddingToFillMinimumDimension(__CVBuffer *a1, size_t a2, Pixel_8 a3, __CVBuffer **a4)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1278226488)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v11 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v12 = _ARLogGeneral();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v14 = "Pixelbuffer must have format kCVPixelFormatType_OneComponent8";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_1C241C000, v15, v16, v14, &buf, 2u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.data) = 0;
      v14 = "Error: Pixelbuffer must have format kCVPixelFormatType_OneComponent8";
      v15 = v13;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }

    return 4294960616;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (Width >= a2 && Height >= a2)
  {
    *a4 = a1;
    CVPixelBufferRetain(a1);
    return 0;
  }

  if (Width <= a2)
  {
    Width = a2;
  }

  if (Height > a2)
  {
    a2 = Height;
  }

  pixelBufferOut = 0;
  Attributes = _getAttributes();
  if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, a2, 0x4C303038u, Attributes, &pixelBufferOut))
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    CVPixelBufferLockBaseAddress(a1, 0);
    buf.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
    buf.height = CVPixelBufferGetHeight(pixelBufferOut);
    buf.width = CVPixelBufferGetWidth(pixelBufferOut);
    buf.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    src.data = CVPixelBufferGetBaseAddress(a1);
    src.height = CVPixelBufferGetHeight(a1);
    src.width = CVPixelBufferGetWidth(a1);
    src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
    dest.data = buf.data;
    dest.height = src.height;
    dest.width = src.width;
    dest.rowBytes = buf.rowBytes;
    if (vImageOverwriteChannelsWithScalar_Planar8(a3, &buf, 0))
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_2();
      }

      v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v24 = _ARLogGeneral();
      v20 = v24;
      if (v23 == 1)
      {
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        v29[0] = 0;
        v21 = "Error: Could not fill buffer";
LABEL_38:
        p_buf = v29;
        goto LABEL_39;
      }

      if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v29[0] = 0;
      v21 = "Error: Error: Could not fill buffer";
    }

    else
    {
      if (!vImageCopyBuffer(&src, &dest, 1uLL, 0))
      {
        CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
        CVPixelBufferUnlockBaseAddress(a1, 0);
        result = 0;
        *a4 = pixelBufferOut;
        return result;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_2();
      }

      v25 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v26 = _ARLogGeneral();
      v20 = v26;
      if (v25 == 1)
      {
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        v29[0] = 0;
        v21 = "Error: Could not copy buffer";
        goto LABEL_38;
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v29[0] = 0;
      v21 = "Error: Error: Could not copy buffer";
    }

    p_buf = v29;
    goto LABEL_46;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARCorrectCVPixelBufferOrientation_cold_2();
  }

  v18 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v19 = _ARLogGeneral();
  v20 = v19;
  if (v18 != 1)
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_48;
    }

    LOWORD(buf.data) = 0;
    v21 = "Error: Error: Could not create mask";
    p_buf = &buf;
LABEL_46:
    v27 = v20;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_47;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.data) = 0;
    v21 = "Error: Could not create mask";
    p_buf = &buf;
LABEL_39:
    v27 = v20;
    v28 = OS_LOG_TYPE_ERROR;
LABEL_47:
    _os_log_impl(&dword_1C241C000, v27, v28, v21, p_buf, 2u);
  }

LABEL_48:

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferRelease(pixelBufferOut);
  return 4294960636;
}

uint64_t ARCreateSynchronizationMarker(size_t width, size_t height, CVPixelBufferRef *a3)
{
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], width, height, 0x4C303038u, 0, &pixelBufferOut))
  {
    return 4294960636;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  dest.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
  dest.height = CVPixelBufferGetHeight(pixelBufferOut);
  dest.width = CVPixelBufferGetWidth(pixelBufferOut);
  dest.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  if (vImageOverwriteChannelsWithScalar_Planar8(0, &dest, 0x200u) || (v4 = dest.height >> 1, v19.data = dest.data + ((dest.height >> 1) - (dest.height >> 1) / 2) * dest.rowBytes - (dest.height >> 1) / 2 + (dest.width >> 1), v19.height = (dest.height >> 1), v19.width = v19.height, v19.rowBytes = dest.rowBytes, vImageOverwriteChannelsWithScalar_Planar8(0xFFu, &v19, 0x200u)))
  {
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    CVPixelBufferRelease(pixelBufferOut);
    return 4294960636;
  }

  v6 = v19.height;
  if ((v4 & 0x80000000) == 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 3;
  }

  if (v19.height)
  {
    v8 = 0;
    data = v19.data;
    v10 = v19.width;
    v11 = SLODWORD(v19.height) / -2;
    v12 = SLODWORD(v19.width) / 2 * (SLODWORD(v19.width) / 2);
    v13 = (v7 >> 2) * (v7 >> 2);
    v14 = SLODWORD(v19.width) / -2;
    do
    {
      if (v10)
      {
        v15 = 0;
        v16 = data + v19.rowBytes * v8;
        v17 = v14;
        do
        {
          v18 = (v11 + v8) * (v11 + v8) + v17 * v17;
          if (v18 < v12)
          {
            *(v16 + v15) = 85;
          }

          if (v18 < v13)
          {
            *(v16 + v15) = -86;
          }

          ++v15;
          v10 = v19.width;
          ++v17;
        }

        while (v19.width > v15);
        v6 = v19.height;
      }

      ++v8;
    }

    while (v6 > v8);
  }

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  result = 0;
  *a3 = pixelBufferOut;
  return result;
}

size_t ARWrapCVPixelBufferVImage@<X0>(__CVBuffer *a1@<X0>, void **a2@<X8>)
{
  *a2 = CVPixelBufferGetBaseAddress(a1);
  a2[1] = CVPixelBufferGetHeight(a1);
  a2[2] = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetBytesPerRow(a1);
  a2[3] = result;
  return result;
}

size_t ARWrapCVPixelBufferPlaneVImage@<X0>(__CVBuffer *a1@<X0>, size_t a2@<X1>, void **a3@<X8>)
{
  *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  a3[1] = CVPixelBufferGetHeightOfPlane(a1, a2);
  a3[2] = CVPixelBufferGetWidthOfPlane(a1, a2);
  result = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  a3[3] = result;
  return result;
}

CVPixelBufferRef ARCreateCVPixelBufferFromPoolWithZeroCopyOption(CVPixelBufferPoolRef *a1, int a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  pixelBufferOut = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(a1, a2, a5, a8, a9);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v54 = __ARCreateCVPixelBufferFromPoolWithZeroCopyOption_block_invoke;
  v55 = &unk_1E817EAF8;
  v56 = &v58;
  v57 = a7;
  if (!*(v59 + 6))
  {
    if (a6 < 1)
    {
      v38 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *a1, &pixelBufferOut);
      *(v59 + 6) = v38;
      if (v38)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          ARCorrectCVPixelBufferOrientation_cold_2();
        }

        v39 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v40 = _ARLogTechnique();
        v30 = v40;
        if (v39 == 1)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = objc_opt_class();
            v42 = NSStringFromClass(v41);
            v43 = *(v59 + 6);
            *buf = 138413058;
            v66 = v42;
            v67 = 2048;
            v68 = v17;
            v69 = 2112;
            v70 = v18;
            v71 = 1024;
            v72 = v43;
            _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_ERROR, "%@(%p): Unable to create pixel buffer for %@: %i", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          v49 = *(v59 + 6);
          *buf = 138413058;
          v66 = v48;
          v67 = 2048;
          v68 = v17;
          v69 = 2112;
          v70 = v18;
          v71 = 1024;
          v72 = v49;
          _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "Error: %@(%p): Unable to create pixel buffer for %@: %i", buf, 0x26u);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v63 = *MEMORY[0x1E6966150];
      v25 = [MEMORY[0x1E696AD98] numberWithInt:a6];
      v64 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];

      v27 = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(*MEMORY[0x1E695E480], *a1, v26, &pixelBufferOut);
      *(v59 + 6) = v27;
      if (v27)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          ARCorrectCVPixelBufferOrientation_cold_2();
        }

        v28 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v29 = _ARLogTechnique();
        v30 = v29;
        if (v28 == 1)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            v33 = *(v59 + 6);
            *buf = 138413058;
            v66 = v32;
            v67 = 2048;
            v68 = v17;
            v69 = 2112;
            v70 = v18;
            v71 = 1024;
            v72 = v33;
            _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_ERROR, "%@(%p): Unable to create pixel buffer with aux attributes for %@: %i", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = *(v59 + 6);
          *buf = 138413058;
          v66 = v45;
          v67 = 2048;
          v68 = v17;
          v69 = 2112;
          v70 = v18;
          v71 = 1024;
          v72 = v46;
          _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "Error: %@(%p): Unable to create pixel buffer with aux attributes for %@: %i", buf, 0x26u);
        }

LABEL_27:
      }
    }

    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"arkit/%s %@; X/X", "ARCreateCVPixelBufferFromPoolWithZeroCopyOption", v18];;
    IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
    IOSurfaceSetValue(IOSurface, *MEMORY[0x1E696CF98], v50);
    v37 = pixelBufferOut;

    goto LABEL_29;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARCorrectCVPixelBufferOrientation_cold_2();
  }

  v19 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v20 = _ARLogTechnique();
  v21 = v20;
  if (v19 == 1)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = *(v59 + 6);
      *buf = 138413058;
      v66 = v23;
      v67 = 2048;
      v68 = v17;
      v69 = 2112;
      v70 = v18;
      v71 = 1024;
      v72 = v24;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_ERROR, "%@(%p): Unable to configure pixelbuffer pool for %@: %i", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = *(v59 + 6);
    *buf = 138413058;
    v66 = v35;
    v67 = 2048;
    v68 = v17;
    v69 = 2112;
    v70 = v18;
    v71 = 1024;
    v72 = v36;
    _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "Error: %@(%p): Unable to configure pixelbuffer pool for %@: %i", buf, 0x26u);
  }

  v37 = pixelBufferOut;
LABEL_29:
  v54(v53);
  _Block_object_dispose(&v58, 8);

  return v37;
}

void sub_1C2596D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void (*)(uint64_t *));
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  v11(va);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

uint64_t ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(CVPixelBufferPoolRef *a1, int a2, int a3, double a4, double a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  if (v10)
  {
    v11 = CVPixelBufferPoolGetPixelBufferAttributes(v10);
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E6966208]];
    v13 = [v12 integerValue];

    v14 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
    v15 = [v14 integerValue];

    v16 = [v11 objectForKeyedSubscript:*MEMORY[0x1E6966130]];
    v17 = [v16 integerValue];

    if (v13 == a4 && v15 == a5)
    {

      if (v17 == a2)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v17 = 0;
  }

  v19 = _ARLogGeneral();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *a1;
    v28 = 134219520;
    v29 = v20;
    v30 = 2048;
    v31 = v13;
    v32 = 2048;
    v33 = v15;
    v34 = 2048;
    v35 = v17;
    v36 = 1024;
    v37 = a4;
    v38 = 1024;
    v39 = a5;
    v40 = 1024;
    v41 = a2;
    _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "ARSystemTools: Recreating pixel buffer pool (%p) due to configuration changes: %li,%li/%li => %i,%i/%i", &v28, 0x3Cu);
  }

  if (*a1)
  {
    CVPixelBufferPoolRelease(*a1);
    *a1 = 0;
  }

  kdebug_trace();
  NewWithZeroCopyOption = ar_pixelBufferPoolCreateNewWithZeroCopyOption(a4, a5, a2, a1, a3);
  kdebug_trace();
  if (NewWithZeroCopyOption)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v21 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v22 = _ARLogGeneral();
    v23 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v28) = 0;
        v24 = "ARSystemTools: Could not create pixel buffer pool.";
        v25 = v23;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_1C241C000, v25, v26, v24, &v28, 2u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(v28) = 0;
      v24 = "Error: ARSystemTools: Could not create pixel buffer pool.";
      v25 = v23;
      v26 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }
  }

  return NewWithZeroCopyOption;
}

uint64_t __ARCreateCVPixelBufferFromPoolWithZeroCopyOption_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    *v1 = *(*(*(result + 32) + 8) + 24);
  }

  return result;
}

double ARPixelBufferGetSensorCropRect(__CVBuffer *a1)
{
  v3 = *MEMORY[0x1E695F058];
  if (a1)
  {
    v1 = ARPixelBufferGetMetadata(a1);
    FigCFDictionaryGetCGRectIfPresent();
  }

  return *&v3;
}

id ARPixelBufferGetMetadata(__CVBuffer *a1)
{
  v1 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  v2 = [(__CFDictionary *)v1 valueForKey:*MEMORY[0x1E6990D40]];

  return v2;
}

uint64_t ARPixelBufferConvertYCbCrToARGB(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    v7 = CVPixelBufferGetPixelFormatType(*a2);
    v8 = CVPixelBufferGetWidth(*a2);
    v9 = CVPixelBufferGetHeight(*a2);
    if (v7 == 32)
    {
      if (v9 == Height && v8 == Width)
      {
        CVPixelBufferLockBaseAddress(*a2, 0);
        CVPixelBufferLockBaseAddress(a1, 0);
        v12 = *MEMORY[0x1E6958848];
        *permuteMap = 50462976;
        if ((PixelFormatType | 0x10) != 0x34323076)
        {
          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            ARCorrectCVPixelBufferOrientation_cold_1();
          }

          v30 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v31 = _ARLogGeneral();
          v32 = v31;
          if (v30 == 1)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *outInfo.opaque = 0;
              _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_ERROR, "Pixel format not supported", outInfo.opaque, 2u);
            }
          }

          else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *outInfo.opaque = 0;
            _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "Error: Pixel format not supported", outInfo.opaque, 2u);
          }

          goto LABEL_67;
        }

        v10.i32[0] = 875704422;
        v11.i32[0] = PixelFormatType;
        v13 = vbsl_s8(vdup_lane_s32(vceq_s32(v11, v10), 0), 0x1000000FFLL, 0x10000000EBLL);
        pixelRange.Yp_bias = 16 * (PixelFormatType != 875704422);
        pixelRange.CbCr_bias = 128;
        pixelRange.YpRangeMax = v13.i32[0];
        if (PixelFormatType == 875704422)
        {
          v14 = 255;
        }

        else
        {
          v14 = 240;
        }

        pixelRange.CbCrRangeMax = v14;
        *&pixelRange.YpMax = v13;
        pixelRange.CbCrMax = v14;
        pixelRange.CbCrMin = 16 * (PixelFormatType != 875704422);
        if (!vImageConvert_YpCbCrToARGB_GenerateConversion(v12, &pixelRange, &outInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0))
        {
LABEL_53:
          memset(&buf, 0, sizeof(buf));
          __ARPixelBufferConvertYCbCrToARGB_block_invoke(a1, 0, &buf.data);
          memset(&srcCbCr, 0, sizeof(srcCbCr));
          __ARPixelBufferConvertYCbCrToARGB_block_invoke(a1, 1uLL, &srcCbCr.data);
          memset(&dest, 0, sizeof(dest));
          __ARPixelBufferConvertYCbCrToARGB_block_invoke(*a2, 0, &dest.data);
          if (!vImageConvert_420Yp8_CbCr8ToARGB8888(&buf, &srcCbCr, &dest, &outInfo, permuteMap, 0xFFu, 0))
          {
            v28 = 0;
LABEL_68:
            CVPixelBufferUnlockBaseAddress(*a2, 0);
            CVPixelBufferUnlockBaseAddress(a1, 0);
            return v28;
          }

          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            ARCorrectCVPixelBufferOrientation_cold_2();
          }

          v33 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v34 = _ARLogGeneral();
          v35 = v34;
          if (v33 == 1)
          {
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *v39 = 0;
              v36 = "Could not convert color formats";
              v37 = v35;
              v38 = OS_LOG_TYPE_ERROR;
LABEL_62:
              _os_log_impl(&dword_1C241C000, v37, v38, v36, v39, 2u);
            }
          }

          else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *v39 = 0;
            v36 = "Error: Could not convert color formats";
            v37 = v35;
            v38 = OS_LOG_TYPE_INFO;
            goto LABEL_62;
          }

LABEL_67:
          v28 = 4294960636;
          goto LABEL_68;
        }

        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          ARCorrectCVPixelBufferOrientation_cold_2();
        }

        v15 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v16 = _ARLogGeneral();
        v17 = v16;
        if (v15 == 1)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.data) = 0;
            v18 = "Could not generate the conversion format";
            v19 = v17;
            v20 = OS_LOG_TYPE_ERROR;
LABEL_51:
            _os_log_impl(&dword_1C241C000, v19, v20, v18, &buf, 2u);
          }
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.data) = 0;
          v18 = "Error: Could not generate the conversion format";
          v19 = v17;
          v20 = OS_LOG_TYPE_INFO;
          goto LABEL_51;
        }

        goto LABEL_53;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_1();
      }

      v26 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v27 = _ARLogGeneral();
      v23 = v27;
      if (v26 == 1)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *outInfo.opaque = 0;
          _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_ERROR, "Output pixel buffer must have same dimensions as input pixel buffer", outInfo.opaque, 2u);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *outInfo.opaque = 0;
        _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "Error: Output pixel buffer must have same dimensions as input pixel buffer", outInfo.opaque, 2u);
      }
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_1();
      }

      v24 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v25 = _ARLogGeneral();
      v23 = v25;
      if (v24 == 1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *outInfo.opaque = 0;
          _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_ERROR, "Output pixel buffer must have format kCVPixelFormatType_32ARGB", outInfo.opaque, 2u);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *outInfo.opaque = 0;
        _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "Error: Output pixel buffer must have format kCVPixelFormatType_32ARGB", outInfo.opaque, 2u);
      }
    }
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v21 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v22 = _ARLogGeneral();
    v23 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *outInfo.opaque = 0;
        _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_ERROR, "Input buffer cannot be null", outInfo.opaque, 2u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *outInfo.opaque = 0;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "Error: Input buffer cannot be null", outInfo.opaque, 2u);
    }
  }

  return 4294960635;
}

size_t __ARPixelBufferConvertYCbCrToARGB_block_invoke@<X0>(CVPixelBufferRef pixelBuffer@<X1>, size_t planeIndex@<X2>, void **a3@<X8>)
{
  *a3 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, planeIndex);
  a3[1] = CVPixelBufferGetHeightOfPlane(pixelBuffer, planeIndex);
  a3[2] = CVPixelBufferGetWidthOfPlane(pixelBuffer, planeIndex);
  result = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, planeIndex);
  a3[3] = result;
  return result;
}

CVPixelBufferRef ARCreatePixelBufferWithConversion(__CVBuffer *a1, OSType a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v23 = __ARCreatePixelBufferWithConversion_block_invoke;
  v24 = &unk_1E817EB20;
  v25 = &v26;
  v4 = VTPixelTransferSessionCreate(0, &v29);
  if (v4)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v5 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v6 = _ARLogGeneral();
    v7 = v6;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v4;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "Could not create pixel transfer session. Error code: %d", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: Could not create pixel transfer session. Error code: %d", buf, 8u);
    }

LABEL_26:

LABEL_32:
    v20 = 0;
    goto LABEL_33;
  }

  *buf = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v10 = CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, a2, 0, buf);
  if (v10)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v11 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v12 = _ARLogGeneral();
    v7 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v30 = 67109120;
        v31 = v10;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "Could not create RGB24 pixel buffer. Error code: %d", v30, 8u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v30 = 67109120;
      v31 = v10;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: Could not create RGB24 pixel buffer. Error code: %d", v30, 8u);
    }

    goto LABEL_26;
  }

  v13 = VTPixelTransferSessionTransferImage(v27[3], a1, *buf);
  if (v13)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v14 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v15 = _ARLogGeneral();
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v30 = 67109120;
        v31 = v13;
        v17 = "Could not transfer pixel buffer. Error code: %d";
        v18 = v16;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_30:
        _os_log_impl(&dword_1C241C000, v18, v19, v17, v30, 8u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v30 = 67109120;
      v31 = v13;
      v17 = "Error: Could not transfer pixel buffer. Error code: %d";
      v18 = v16;
      v19 = OS_LOG_TYPE_INFO;
      goto LABEL_30;
    }

    CVPixelBufferRelease(*buf);
    goto LABEL_32;
  }

  v20 = *buf;
LABEL_33:
  v23(v22);
  _Block_object_dispose(&v26, 8);
  return v20;
}

void sub_1C2597CA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void (*)(uint64_t *));
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v6(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __ARCreatePixelBufferWithConversion_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ARPixelBufferConvertRGBAHalfTo128RGBAFloat(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    v7 = CVPixelBufferGetPixelFormatType(*a2);
    v8 = CVPixelBufferGetWidth(*a2);
    v9 = CVPixelBufferGetHeight(*a2);
    if (PixelFormatType == 1380411457)
    {
      if (v7 == 1380410945)
      {
        if (v9 == Height && v8 == Width)
        {
          CVPixelBufferLockBaseAddress(*a2, 0);
          CVPixelBufferLockBaseAddress(a1, 0);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v31 = __ARPixelBufferConvertRGBAHalfTo128RGBAFloat_block_invoke;
          v32 = &__block_descriptor_48_e5_v8__0l;
          v33 = a2;
          v34 = a1;
          memset(&src, 0, sizeof(src));
          ARWrapCVPixelBufferVImage(a1, &src.data);
          memset(&v28, 0, sizeof(v28));
          ARWrapCVPixelBufferVImage(*a2, &v28.data);
          src.width *= 4;
          v28.width *= 4;
          v10 = vImageConvert_Planar16FtoPlanarF(&src, &v28, 0);
          if (!v10)
          {
            v26 = 0;
LABEL_54:
            v31(v30);
            return v26;
          }

          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            ARCorrectCVPixelBufferOrientation_cold_2();
          }

          v11 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v12 = _ARLogGeneral();
          v13 = v12;
          if (v11 == 1)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v36 = v10;
              v14 = "vImageConvert_Planar16FtoPlanarF error: %zd";
              v15 = v13;
              v16 = OS_LOG_TYPE_ERROR;
LABEL_52:
              _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v36 = v10;
            v14 = "Error: vImageConvert_Planar16FtoPlanarF error: %zd";
            v15 = v13;
            v16 = OS_LOG_TYPE_INFO;
            goto LABEL_52;
          }

          v26 = 4294960636;
          goto LABEL_54;
        }

        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          ARCorrectCVPixelBufferOrientation_cold_1();
        }

        v24 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v25 = _ARLogGeneral();
        v19 = v25;
        if (v24 == 1)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            LOWORD(src.data) = 0;
            _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "Output pixel buffer must have same dimensions as input pixel buffer", &src, 2u);
          }
        }

        else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(src.data) = 0;
          _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: Output pixel buffer must have same dimensions as input pixel buffer", &src, 2u);
        }
      }

      else
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          ARCorrectCVPixelBufferOrientation_cold_1();
        }

        v22 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v23 = _ARLogGeneral();
        v19 = v23;
        if (v22 == 1)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(src.data) = 0;
            _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "Output pixel buffer must have format kCVPixelFormatType_128RGBAFloat", &src, 2u);
          }
        }

        else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(src.data) = 0;
          _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: Output pixel buffer must have format kCVPixelFormatType_128RGBAFloat", &src, 2u);
        }
      }
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_1();
      }

      v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v21 = _ARLogGeneral();
      v19 = v21;
      if (v20 == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          LOWORD(src.data) = 0;
          _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "Input pixel buffer must have format kCVPixelFormatType_64RGBAHalf", &src, 2u);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(src.data) = 0;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: Input pixel buffer must have format kCVPixelFormatType_64RGBAHalf", &src, 2u);
      }
    }
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v17 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v18 = _ARLogGeneral();
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(src.data) = 0;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "Input buffer cannot be null", &src, 2u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(src.data) = 0;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: Input buffer cannot be null", &src, 2u);
    }
  }

  return 4294960635;
}

uint64_t __ARPixelBufferConvertRGBAHalfTo128RGBAFloat_block_invoke(uint64_t a1)
{
  CVPixelBufferUnlockBaseAddress(**(a1 + 32), 0);
  v2 = *(a1 + 40);

  return CVPixelBufferUnlockBaseAddress(v2, 0);
}

uint64_t ARPixelBufferConvertTwoComponent16HalfToRGBAHalf(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  if (!a1)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v21 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v22 = _ARLogGeneral();
    v23 = v22;
    if (v21 != 1)
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_43;
      }

      *buf = 0;
      v24 = "Error: Input buffer cannot be null";
      goto LABEL_41;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v24 = "Input buffer cannot be null";
LABEL_36:
    v31 = v23;
    v32 = OS_LOG_TYPE_ERROR;
LABEL_42:
    _os_log_impl(&dword_1C241C000, v31, v32, v24, buf, 2u);
    goto LABEL_43;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v7 = CVPixelBufferGetPixelFormatType(*a2);
  v8 = CVPixelBufferGetWidth(*a2);
  v9 = CVPixelBufferGetHeight(*a2);
  if (PixelFormatType != 843264104)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v25 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v26 = _ARLogGeneral();
    v23 = v26;
    if (v25 != 1)
    {
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_43;
      }

      *buf = 0;
      v24 = "Error: Input pixel buffer must have format kCVPixelFormatType_TwoComponent16Half";
      goto LABEL_41;
    }

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v24 = "Input pixel buffer must have format kCVPixelFormatType_TwoComponent16Half";
    goto LABEL_36;
  }

  if (v7 != 1380411457)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v27 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v28 = _ARLogGeneral();
    v23 = v28;
    if (v27 != 1)
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_43;
      }

      *buf = 0;
      v24 = "Error: Output pixel buffer must have format kCVPixelFormatType_64RGBAHalf";
      goto LABEL_41;
    }

    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v24 = "Output pixel buffer must have format kCVPixelFormatType_64RGBAHalf";
    goto LABEL_36;
  }

  if (v9 != Height || v8 != Width)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v29 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v30 = _ARLogGeneral();
    v23 = v30;
    if (v29 == 1)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v24 = "Output pixel buffer must have same dimensions as input pixel buffer";
        goto LABEL_36;
      }

LABEL_43:

      return 4294960635;
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v24 = "Error: Output pixel buffer must have same dimensions as input pixel buffer";
LABEL_41:
    v31 = v23;
    v32 = OS_LOG_TYPE_INFO;
    goto LABEL_42;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(*a2, 0);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __ARPixelBufferConvertTwoComponent16HalfToRGBAHalf_block_invoke;
  v35 = &__block_descriptor_48_e5_v8__0l;
  v36 = a1;
  v37 = a2;
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v12 = CVPixelBufferGetBytesPerRow(*a2);
  v13 = CVPixelBufferGetBaseAddress(*a2);
  DataSize = CVPixelBufferGetDataSize(*a2);
  bzero(v13, DataSize);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v16 = v13;
      v17 = BaseAddress;
      v18 = Width;
      if (Width)
      {
        do
        {
          v19 = *v17++;
          *v16 = v19;
          v16 += 2;
          --v18;
        }

        while (v18);
      }

      BaseAddress += BytesPerRow;
      v13 += v12;
    }
  }

  v34(v33);
  return 0;
}

uint64_t __ARPixelBufferConvertTwoComponent16HalfToRGBAHalf_block_invoke(uint64_t a1)
{
  CVPixelBufferUnlockBaseAddress(*(a1 + 32), 0);
  v2 = **(a1 + 40);

  return CVPixelBufferUnlockBaseAddress(v2, 0);
}

uint64_t ARPixelBufferConvertBGRAToARGB(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  if (!a1)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v22 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v23 = _ARLogGeneral();
    v24 = v23;
    if (v22 != 1)
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_43;
      }

      v34[0] = 0;
      v25 = "Error: Input buffer cannot be null";
      goto LABEL_41;
    }

    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v34[0] = 0;
    v25 = "Input buffer cannot be null";
LABEL_36:
    v32 = v24;
    v33 = OS_LOG_TYPE_ERROR;
LABEL_42:
    _os_log_impl(&dword_1C241C000, v32, v33, v25, v34, 2u);
    goto LABEL_43;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v7 = CVPixelBufferGetPixelFormatType(*a2);
  v8 = CVPixelBufferGetWidth(*a2);
  v9 = CVPixelBufferGetHeight(*a2);
  if (PixelFormatType != 1111970369)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v26 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v27 = _ARLogGeneral();
    v24 = v27;
    if (v26 != 1)
    {
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_43;
      }

      v34[0] = 0;
      v25 = "Error: Input pixel buffer must have format kCVPixelFormatType_32BGRA";
      goto LABEL_41;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v34[0] = 0;
    v25 = "Input pixel buffer must have format kCVPixelFormatType_32BGRA";
    goto LABEL_36;
  }

  if (v7 != 32)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v28 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v29 = _ARLogGeneral();
    v24 = v29;
    if (v28 != 1)
    {
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_43;
      }

      v34[0] = 0;
      v25 = "Error: Output pixel buffer must have format kCVPixelFormatType_32ARGB";
      goto LABEL_41;
    }

    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v34[0] = 0;
    v25 = "Output pixel buffer must have format kCVPixelFormatType_32ARGB";
    goto LABEL_36;
  }

  if (v9 != Height || v8 != Width)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v30 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v31 = _ARLogGeneral();
    v24 = v31;
    if (v30 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v34[0] = 0;
        v25 = "Output pixel buffer must have same dimensions as input pixel buffer";
        goto LABEL_36;
      }

LABEL_43:

      return 4294960635;
    }

    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_43;
    }

    v34[0] = 0;
    v25 = "Error: Output pixel buffer must have same dimensions as input pixel buffer";
LABEL_41:
    v32 = v24;
    v33 = OS_LOG_TYPE_INFO;
    goto LABEL_42;
  }

  CVPixelBufferLockBaseAddress(*a2, 0);
  CVPixelBufferLockBaseAddress(a1, 0);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v11 = CVPixelBufferGetBytesPerRow(*a2);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v13 = CVPixelBufferGetBaseAddress(*a2);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v16 = v13;
      v17 = BaseAddress;
      v18 = Width;
      if (Width)
      {
        do
        {
          v19 = *v17++;
          v14.i32[0] = v19;
          v20 = vrev64_s16(*&vmovl_u8(v14));
          v14 = vuzp1_s8(v20, v20);
          *v16++ = v14.i32[0];
          --v18;
        }

        while (v18);
      }

      BaseAddress += BytesPerRow;
      v13 += v11;
    }
  }

  CVPixelBufferUnlockBaseAddress(*a2, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  return 0;
}

uint64_t AROSTypeFromMTLPixelFormat(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 != 10)
  {
    v3 = &qword_1C25F3FC0;
    v4 = 10;
    while (--v4)
    {
      v5 = v3 + 3;
      v6 = *v3;
      v3 += 3;
      if (v6 == a1)
      {
        return *(v5 - 8);
      }
    }

    v1 = *(v3 - 2);
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogGeneral();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 134217984;
        v15 = a1;
        v10 = "MTLPixelFormat not supported %lu";
        v11 = v9;
        v12 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v11, v12, v10, &v14, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      v15 = a1;
      v10 = "Error: MTLPixelFormat not supported %lu";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    return v1;
  }

  return 1278226488;
}

uint64_t ARMTLPixelFormatFromOSType(unsigned int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 == 1278226488)
  {
    v1 = "800L";
    return *(v1 + 1);
  }

  else
  {
    v3 = "800L";
    v4 = 10;
    while (--v4)
    {
      v1 = v3 + 24;
      v5 = *(v3 + 6);
      v3 += 24;
      if (v5 == a1)
      {
        return *(v1 + 1);
      }
    }

    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogGeneral();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = AROSTypeToString(a1);
        v12 = 138543362;
        v13 = v10;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "OSType not supported %{public}@", &v12, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = AROSTypeToString(a1);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: OSType not supported %{public}@", &v12, 0xCu);
    }

    return 0;
  }
}

id AROSTypeToString(unsigned int a1)
{
  *&v12[31] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = &v11;
    for (i = 24; i != -8; i -= 8)
    {
      v3 = a1 >> i;
      v4 = (a1 >> i);
      if (v4 - 127 > 0xFFFFFFA0)
      {
        v8 = v1 + 1;
      }

      else
      {
        v3 = (a1 >> i) & 0xF;
        if (v4 >= 0xA0)
        {
          v5 = 55;
        }

        else
        {
          v5 = 48;
        }

        v1[1] = v5 + ((a1 >> i) >> 4);
        if (v3 >= 0xA)
        {
          v6 = 55;
        }

        else
        {
          v6 = 48;
        }

        v7 = v6 + v3;
        v8 = v1 + 3;
        v1[2] = v7;
        LOBYTE(v3) = 36;
      }

      *v1 = v3;
      v1 = v8;
    }
  }

  else
  {
    v8 = v12;
    v11 = 48;
  }

  *v8 = 0;
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v11];

  return v9;
}

uint64_t ARBytesPerElement(unsigned int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 == 1278226488)
  {
    v1 = "800L";
    return *(v1 + 4);
  }

  else
  {
    v3 = "800L";
    v4 = 10;
    while (--v4)
    {
      v1 = v3 + 24;
      v5 = *(v3 + 6);
      v3 += 24;
      if (v5 == a1)
      {
        return *(v1 + 4);
      }
    }

    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogGeneral();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = AROSTypeToString(a1);
        v12 = 138543362;
        v13 = v10;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "OSType not supported %{public}@", &v12, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = AROSTypeToString(a1);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: OSType not supported %{public}@", &v12, 0xCu);
    }

    return 0;
  }
}

__CFDictionary *ar_createAttributeDictionaryNewWithZeroCopyOption(unsigned int a1, unsigned int a2, int a3, int a4)
{
  v19 = __PAIR64__(a1, a2);
  LODWORD(v18) = 16;
  HIDWORD(v18) = a3;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = CFNumberCreate(v5, kCFNumberIntType, &v18 + 4);
    if (v7 && (v8 = v7, CFDictionarySetValue(Mutable, *MEMORY[0x1E6966130], v7), CFRelease(v8), (v9 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0) && (v10 = v9, CFDictionaryAddValue(Mutable, *MEMORY[0x1E69660D8], v9), CFRelease(v10), (v11 = CFNumberCreate(v5, kCFNumberIntType, &v19 + 4)) != 0) && (v12 = v11, CFDictionarySetValue(Mutable, *MEMORY[0x1E6966208], v11), CFRelease(v12), (v13 = CFNumberCreate(v5, kCFNumberIntType, &v19)) != 0) && (v14 = v13, CFDictionarySetValue(Mutable, *MEMORY[0x1E69660B8], v13), CFRelease(v14), (v15 = CFNumberCreate(v5, kCFNumberIntType, &v18)) != 0))
    {
      v16 = v15;
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6966140], v15);
      CFRelease(v16);
      if (a4)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E6966020], [MEMORY[0x1E696AD98] numberWithInt:{64, v18, v19}]);
      }
    }

    else
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t ar_pixelBufferPoolCreateNewWithZeroCopyOption(unsigned int a1, unsigned int a2, int a3, __CVPixelBufferPool **a4, int a5)
{
  AttributeDictionaryNewWithZeroCopyOption = ar_createAttributeDictionaryNewWithZeroCopyOption(a1, a2, a3, a5);
  if (AttributeDictionaryNewWithZeroCopyOption)
  {
    v7 = AttributeDictionaryNewWithZeroCopyOption;
    v8 = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, AttributeDictionaryNewWithZeroCopyOption, a4);
    CFRelease(v7);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v8 = 4294960636;
  }

  *a4 = 0;
  return v8;
}

id ARPixelBufferToDictionaryRepresentation(__CVBuffer *a1)
{
  v14[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    CVPixelBufferLockBaseAddress(a1, 0);
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:CVPixelBufferGetBaseAddress(a1) length:BytesPerRow * Height];
    CVPixelBufferUnlockBaseAddress(a1, 0);
    v14[0] = v6;
    v13[0] = @"ARPixelBufferData";
    v13[1] = @"ARPixelBufferWidth";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Width];
    v14[1] = v7;
    v13[2] = @"ARPixelBufferHeight";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Height];
    v14[2] = v8;
    v13[3] = @"ARPixelBufferBytesPerRow";
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:BytesPerRow];
    v14[3] = v9;
    v13[4] = @"ARPixelBufferFormat";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
    v14[4] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t ARPixelBufferFromDictionaryRepresentation(void *a1, CVPixelBufferRef *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 4294960635;
  if (v3 && a2)
  {
    v6 = [v3 objectForKeyedSubscript:@"ARPixelBufferWidth"];
    v7 = [v6 unsignedIntegerValue];

    v8 = [v4 objectForKeyedSubscript:@"ARPixelBufferHeight"];
    v9 = [v8 unsignedIntegerValue];

    v10 = [v4 objectForKeyedSubscript:@"ARPixelBufferFormat"];
    v11 = [v10 unsignedIntValue];

    v12 = [v4 objectForKeyedSubscript:@"ARPixelBufferBytesPerRow"];
    v13 = [v12 unsignedIntegerValue];

    v14 = [v4 objectForKeyedSubscript:@"ARPixelBufferData"];
    v15 = v14;
    if (v7 && v9 && v11 && v13 && v14)
    {
      v5 = CVPixelBufferCreateWithBytes(0, v7, v9, v11, [v14 bytes], v13, 0, 0, 0, a2);
    }
  }

  return v5;
}

uint64_t ARUnWrapOneComponent16BufferDepth32BitsBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1278226742 || v5 != 1717855600)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v16 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v17 = _ARLogGeneral();
    v18 = v17;
    if (v16 != 1)
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      v35 = 0;
      v19 = "Error: Source buffer must have pixel format kCVPixelFormatType_OneComponent16 and destination buffer kCVPixelFormatType_DepthFloat32.";
      v20 = &v35;
      goto LABEL_39;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v36 = 0;
    v19 = "Source buffer must have pixel format kCVPixelFormatType_OneComponent16 and destination buffer kCVPixelFormatType_DepthFloat32.";
    v20 = &v36;
LABEL_27:
    v25 = v18;
    v26 = OS_LOG_TYPE_ERROR;
LABEL_40:
    _os_log_impl(&dword_1C241C000, v25, v26, v19, v20, 2u);
    goto LABEL_41;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  v10 = CVPixelBufferGetHeight(a2);
  v11 = CVPixelBufferGetWidth(a2);
  if (Height != v10)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v21 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v22 = _ARLogGeneral();
    v18 = v22;
    if (v21 != 1)
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      v33 = 0;
      v19 = "Error: Source buffer and destination buffer must have the same height";
      v20 = &v33;
      goto LABEL_39;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v34 = 0;
    v19 = "Source buffer and destination buffer must have the same height";
    v20 = &v34;
    goto LABEL_27;
  }

  v12 = v11;
  if (Width != 2 * v11)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v24 = _ARLogGeneral();
    v18 = v24;
    if (v23 == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v32 = 0;
        v19 = "Source buffer must have double the width of the source buffer";
        v20 = &v32;
        goto LABEL_27;
      }

LABEL_41:

      return 0;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v31 = 0;
    v19 = "Error: Source buffer must have double the width of the source buffer";
    v20 = &v31;
LABEL_39:
    v25 = v18;
    v26 = OS_LOG_TYPE_INFO;
    goto LABEL_40;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v14 = CVPixelBufferGetBaseAddress(a2);
  if (BytesPerRow == v9)
  {
    if (Height)
    {
      v15 = 0;
      do
      {
        memcpy(&v14[v15], &BaseAddress[v15], BytesPerRow);
        v15 += BytesPerRow;
        --Height;
      }

      while (Height);
    }
  }

  else if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (v12)
      {
        v28 = 0;
        v29 = v12;
        do
        {
          *&v14[v28] = *&BaseAddress[i * BytesPerRow + (v28 & 0xFFFFFFFC)];
          v28 += 4;
          --v29;
        }

        while (v29);
      }

      v14 += v9;
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 1;
}

uint64_t ARWrapDepth32BitsBufferOneComponent16Buffer(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1717855600 || v5 != 1278226742)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v16 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v17 = _ARLogGeneral();
    v18 = v17;
    if (v16 != 1)
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      v35 = 0;
      v19 = "Error: Source buffer must have pixel format kCVPixelFormatType_DepthFloat32 and destination buffer kCVPixelFormatType_OneComponent16";
      v20 = &v35;
      goto LABEL_39;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v36 = 0;
    v19 = "Source buffer must have pixel format kCVPixelFormatType_DepthFloat32 and destination buffer kCVPixelFormatType_OneComponent16";
    v20 = &v36;
LABEL_27:
    v25 = v18;
    v26 = OS_LOG_TYPE_ERROR;
LABEL_40:
    _os_log_impl(&dword_1C241C000, v25, v26, v19, v20, 2u);
    goto LABEL_41;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  v10 = CVPixelBufferGetHeight(a2);
  v11 = CVPixelBufferGetWidth(a2);
  if (Height != v10)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v21 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v22 = _ARLogGeneral();
    v18 = v22;
    if (v21 != 1)
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      v33 = 0;
      v19 = "Error: Source buffer and destination buffer must have the same height";
      v20 = &v33;
      goto LABEL_39;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v34 = 0;
    v19 = "Source buffer and destination buffer must have the same height";
    v20 = &v34;
    goto LABEL_27;
  }

  if (v11 != 2 * Width)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v24 = _ARLogGeneral();
    v18 = v24;
    if (v23 == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v32 = 0;
        v19 = "Destination buffer must have double the width of the source buffer";
        v20 = &v32;
        goto LABEL_27;
      }

LABEL_41:

      return 0;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v31 = 0;
    v19 = "Error: Destination buffer must have double the width of the source buffer";
    v20 = &v31;
LABEL_39:
    v25 = v18;
    v26 = OS_LOG_TYPE_INFO;
    goto LABEL_40;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v13 = CVPixelBufferGetBaseAddress(a2);
  v14 = v13;
  if (v9 == BytesPerRow)
  {
    if (Height)
    {
      v15 = 0;
      do
      {
        memcpy(&v14[v15], &BaseAddress[v15], BytesPerRow);
        v15 += BytesPerRow;
        --Height;
      }

      while (Height);
    }
  }

  else if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        v28 = 0;
        v29 = Width;
        do
        {
          *&v13[i * v9 + (v28 & 0xFFFFFFFC)] = *&BaseAddress[v28];
          v28 += 4;
          --v29;
        }

        while (v29);
      }

      BaseAddress += BytesPerRow;
    }
  }

  CVPixelBufferUnlockBaseAddress(a2, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  return 1;
}

uint64_t ARWrapDepth32BitsBufferOneComponent8BufferWithScale(__CVBuffer *a1, __CVBuffer *a2, float a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1717855600 || v7 != 1278226488)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v22 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v23 = _ARLogGeneral();
    v24 = v23;
    if (v22 != 1)
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v37 = 0;
      v25 = "Error: Source buffer must have pixel format kCVPixelFormatType_DepthFloat32 and destination buffer kCVPixelFormatType_OneComponent8";
      v26 = &v37;
      goto LABEL_33;
    }

    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v38 = 0;
    v25 = "Source buffer must have pixel format kCVPixelFormatType_DepthFloat32 and destination buffer kCVPixelFormatType_OneComponent8";
    v26 = &v38;
LABEL_28:
    v31 = v24;
    v32 = OS_LOG_TYPE_ERROR;
LABEL_34:
    _os_log_impl(&dword_1C241C000, v31, v32, v25, v26, 2u);
    goto LABEL_35;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v11 = CVPixelBufferGetBytesPerRow(a2);
  v12 = CVPixelBufferGetHeight(a2);
  v13 = CVPixelBufferGetWidth(a2);
  if (Height != v12)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v27 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v28 = _ARLogGeneral();
    v24 = v28;
    if (v27 != 1)
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v35 = 0;
      v25 = "Error: Source buffer and destination buffer must have the same height";
      v26 = &v35;
      goto LABEL_33;
    }

    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v36 = 0;
    v25 = "Source buffer and destination buffer must have the same height";
    v26 = &v36;
    goto LABEL_28;
  }

  if (Width != v13)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v29 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v30 = _ARLogGeneral();
    v24 = v30;
    if (v29 == 1)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v34 = 0;
        v25 = "Destination buffer must have the same width as the source buffer";
        v26 = &v34;
        goto LABEL_28;
      }

LABEL_35:

      return 0;
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    v33 = 0;
    v25 = "Error: Destination buffer must have the same width as the source buffer";
    v26 = &v33;
LABEL_33:
    v31 = v24;
    v32 = OS_LOG_TYPE_INFO;
    goto LABEL_34;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v15 = CVPixelBufferGetBaseAddress(a2);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v17 = Width;
      v18 = v15;
      for (j = BaseAddress; v17; --v17)
      {
        v20 = *j++;
        *v18++ = (v20 * a3);
      }

      BaseAddress = (BaseAddress + BytesPerRow);
      v15 += v11;
    }
  }

  CVPixelBufferUnlockBaseAddress(a2, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  return 1;
}

uint64_t ARWrapDepth32BitsBufferOneComponent16BufferWithScale(__CVBuffer *a1, __CVBuffer *a2, float a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1717855600 || v7 != 1278226742 && v7 != 1647392359)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v22 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v23 = _ARLogGeneral();
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v38 = 0;
        v25 = "Source buffer must have pixel format kCVPixelFormatType_DepthFloat32 and destination buffer kCVPixelFormatType_OneComponent16";
        v26 = &v38;
LABEL_17:
        v27 = v24;
        v28 = OS_LOG_TYPE_ERROR;
LABEL_21:
        _os_log_impl(&dword_1C241C000, v27, v28, v25, v26, 2u);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v25 = "Error: Source buffer must have pixel format kCVPixelFormatType_DepthFloat32 and destination buffer kCVPixelFormatType_OneComponent16";
      v26 = buf;
      goto LABEL_20;
    }

LABEL_22:

    return 0;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v11 = CVPixelBufferGetBytesPerRow(a2);
  v12 = CVPixelBufferGetHeight(a2);
  v13 = CVPixelBufferGetWidth(a2);
  if (Height != v12)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v29 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v30 = _ARLogGeneral();
    v24 = v30;
    if (v29 == 1)
    {
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v36 = 0;
      v25 = "Source buffer and destination buffer must have the same height";
      v26 = &v36;
      goto LABEL_17;
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v35 = 0;
    v25 = "Error: Source buffer and destination buffer must have the same height";
    v26 = &v35;
    goto LABEL_20;
  }

  if (Width != v13)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v31 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v32 = _ARLogGeneral();
    v24 = v32;
    if (v31 == 1)
    {
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v34 = 0;
      v25 = "Destination buffer must have the same width as the source buffer";
      v26 = &v34;
      goto LABEL_17;
    }

    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v33 = 0;
    v25 = "Error: Destination buffer must have the same width as the source buffer";
    v26 = &v33;
LABEL_20:
    v27 = v24;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_21;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v15 = CVPixelBufferGetBaseAddress(a2);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v17 = Width;
      v18 = BaseAddress;
      for (j = v15; v17; --v17)
      {
        v20 = *v18++;
        *j++ = (v20 * a3);
      }

      v15 += v11;
      BaseAddress = (BaseAddress + BytesPerRow);
    }
  }

  CVPixelBufferUnlockBaseAddress(a2, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  return 1;
}

uint64_t ARConvertDepthFloatingPointBufferToFixedPointUnsigned13_3Buffer(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1751410032 && PixelFormatType != 1717855600 || v5 != 825437747)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v19 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v20 = _ARLogGeneral();
    v21 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v43 = 0;
        v22 = "Source buffer must have either kCVPixelFormatType_DepthFloat16 or kCVPixelFormatType_DepthFloat32 pixel format, destination buffer should have kCVPixelFormatType_FixedPointUnsigned13_3 pixel format";
LABEL_18:
        v23 = v21;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_1C241C000, v23, v24, v22, v43, 2u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v43 = 0;
      v22 = "Error: Source buffer must have either kCVPixelFormatType_DepthFloat16 or kCVPixelFormatType_DepthFloat32 pixel format, destination buffer should have kCVPixelFormatType_FixedPointUnsigned13_3 pixel format";
      goto LABEL_21;
    }

LABEL_23:

    return 0;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  v10 = CVPixelBufferGetHeight(a2);
  v11 = CVPixelBufferGetWidth(a2);
  if (PixelFormatType != 1717855600)
  {
    if (Height == v10)
    {
      if (Width == v11)
      {
        CVPixelBufferLockBaseAddress(a1, 0);
        CVPixelBufferLockBaseAddress(a2, 0);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v27 = CVPixelBufferGetBaseAddress(a2);
        if (Height)
        {
          for (i = 0; i != Height; ++i)
          {
            v29 = BaseAddress;
            v30 = v27;
            for (j = Width; j; --j)
            {
              v32 = *v29++;
              _H0 = v32;
              __asm { FCVT            S0, H0 }

              *v30++ = (_S0 * 8000.0);
            }

            v27 += v9;
            BaseAddress += BytesPerRow;
          }
        }

        goto LABEL_31;
      }

      if (ARShouldUseLogTypeError(void)::onceToken == -1)
      {
        goto LABEL_43;
      }

LABEL_50:
      ARCorrectCVPixelBufferOrientation_cold_1();
LABEL_43:
      v41 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v42 = _ARLogGeneral();
      v21 = v42;
      if (v41 == 1)
      {
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *v43 = 0;
        v22 = "Destination buffer must have the same width as the source buffer";
        goto LABEL_18;
      }

      if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      *v43 = 0;
      v22 = "Error: Destination buffer must have the same width as the source buffer";
LABEL_21:
      v23 = v21;
      v24 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }

    if (ARShouldUseLogTypeError(void)::onceToken == -1)
    {
LABEL_35:
      v39 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v40 = _ARLogGeneral();
      v21 = v40;
      if (v39 == 1)
      {
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *v43 = 0;
        v22 = "Source buffer and destination buffer must have the same height";
        goto LABEL_18;
      }

      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      *v43 = 0;
      v22 = "Error: Source buffer and destination buffer must have the same height";
      goto LABEL_21;
    }

LABEL_48:
    ARCorrectCVPixelBufferOrientation_cold_1();
    goto LABEL_35;
  }

  if (Height != v10)
  {
    if (ARShouldUseLogTypeError(void)::onceToken == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_48;
  }

  if (Width != v11)
  {
    if (ARShouldUseLogTypeError(void)::onceToken == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_50;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  v12 = CVPixelBufferGetBaseAddress(a1);
  v13 = CVPixelBufferGetBaseAddress(a2);
  if (Height)
  {
    for (k = 0; k != Height; ++k)
    {
      v15 = v12;
      v16 = v13;
      for (m = Width; m; --m)
      {
        v18 = *v15++;
        *v16++ = (v18 * 8000.0);
      }

      v13 += v9;
      v12 = (v12 + BytesPerRow);
    }
  }

LABEL_31:
  CVPixelBufferUnlockBaseAddress(a2, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  return 1;
}

uint64_t ARUnWrapFixedPointUnsigned13_3_OneComponent16Buffer_Depth32BitsBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 825437747 && PixelFormatType != 1647392359 && PixelFormatType != 1278226742 || v5 != 1717855600)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v21 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v22 = _ARLogGeneral();
    v23 = v22;
    if (v21 != 1)
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_37;
      }

      v36 = 0;
      v24 = "Error: Source buffer must have pixel format kCVPixelFormatType_OneComponent16, kCVPixelFormatType_FixedPointUnsigned13_3, or kCVPixelFormatType_16Gray and destination buffer kCVPixelFormatType_DepthFloat32.";
      v25 = &v36;
      goto LABEL_35;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v37 = 0;
    v24 = "Source buffer must have pixel format kCVPixelFormatType_OneComponent16, kCVPixelFormatType_FixedPointUnsigned13_3, or kCVPixelFormatType_16Gray and destination buffer kCVPixelFormatType_DepthFloat32.";
    v25 = &v37;
LABEL_30:
    v30 = v23;
    v31 = OS_LOG_TYPE_ERROR;
LABEL_36:
    _os_log_impl(&dword_1C241C000, v30, v31, v24, v25, 2u);
    goto LABEL_37;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  v10 = CVPixelBufferGetHeight(a2);
  v11 = CVPixelBufferGetWidth(a2);
  if (Height != v10)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v26 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v27 = _ARLogGeneral();
    v23 = v27;
    if (v26 != 1)
    {
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_37;
      }

      v34 = 0;
      v24 = "Error: Source buffer and destination buffer must have the same height";
      v25 = &v34;
      goto LABEL_35;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v35 = 0;
    v24 = "Source buffer and destination buffer must have the same height";
    v25 = &v35;
    goto LABEL_30;
  }

  if (Width != v11)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v28 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v29 = _ARLogGeneral();
    v23 = v29;
    if (v28 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = 0;
        v24 = "Source buffer must have the same width of the source buffer";
        v25 = &v33;
        goto LABEL_30;
      }

LABEL_37:

      return 0;
    }

    if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      goto LABEL_37;
    }

    v32 = 0;
    v24 = "Error: Source buffer must have the same width of the source buffer";
    v25 = &v32;
LABEL_35:
    v30 = v23;
    v31 = OS_LOG_TYPE_INFO;
    goto LABEL_36;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v13 = CVPixelBufferGetBaseAddress(a2);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v15 = Width;
      v16 = BaseAddress;
      for (j = v13; v15; --v15)
      {
        v18 = *v16++;
        v19 = v18 * 0.000125;
        *j++ = v19;
      }

      v13 = (v13 + v9);
      BaseAddress = (BaseAddress + BytesPerRow);
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 1;
}

uint64_t ARConvertFixedPointUnsigned13_3ToDepthFloat32Buffer(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 825437747 || v5 != 1717855600)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v21 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v22 = _ARLogGeneral();
    v23 = v22;
    if (v21 != 1)
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v36 = 0;
      v24 = "Error: Source buffer must have pixel format kCVPixelFormatType_FixedPointUnsigned13_3 and destination buffer kCVPixelFormatType_DepthFloat32.";
      v25 = &v36;
      goto LABEL_33;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v37 = 0;
    v24 = "Source buffer must have pixel format kCVPixelFormatType_FixedPointUnsigned13_3 and destination buffer kCVPixelFormatType_DepthFloat32.";
    v25 = &v37;
LABEL_28:
    v30 = v23;
    v31 = OS_LOG_TYPE_ERROR;
LABEL_34:
    _os_log_impl(&dword_1C241C000, v30, v31, v24, v25, 2u);
    goto LABEL_35;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  v10 = CVPixelBufferGetHeight(a2);
  v11 = CVPixelBufferGetWidth(a2);
  if (Height != v10)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v26 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v27 = _ARLogGeneral();
    v23 = v27;
    if (v26 != 1)
    {
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v34 = 0;
      v24 = "Error: Source buffer and destination buffer must have the same height";
      v25 = &v34;
      goto LABEL_33;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v35 = 0;
    v24 = "Source buffer and destination buffer must have the same height";
    v25 = &v35;
    goto LABEL_28;
  }

  if (Width != v11)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v28 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v29 = _ARLogGeneral();
    v23 = v29;
    if (v28 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = 0;
        v24 = "Source buffer must have the same width of the source buffer";
        v25 = &v33;
        goto LABEL_28;
      }

LABEL_35:

      return 0;
    }

    if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    v32 = 0;
    v24 = "Error: Source buffer must have the same width of the source buffer";
    v25 = &v32;
LABEL_33:
    v30 = v23;
    v31 = OS_LOG_TYPE_INFO;
    goto LABEL_34;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v13 = CVPixelBufferGetBaseAddress(a2);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v15 = Width;
      v16 = BaseAddress;
      for (j = v13; v15; --v15)
      {
        v18 = *v16++;
        v19 = v18 * 0.000125;
        *j++ = v19;
      }

      v13 = (v13 + v9);
      BaseAddress = (BaseAddress + BytesPerRow);
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 1;
}

uint64_t ARDepth32BitsBufferToBGRAWithScaling(__CVBuffer *a1, __CVBuffer *a2, float a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1717855600 || v7 != 1111970369)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v29 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v30 = _ARLogGeneral();
    v31 = v30;
    if (v29 != 1)
    {
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v44 = 0;
      v32 = "Error: Source buffer must have pixel format kCVPixelFormatType_DepthFloat32 and destination buffer kCVPixelFormatType_32BGRA.";
      v33 = &v44;
      goto LABEL_46;
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v45 = 0;
    v32 = "Source buffer must have pixel format kCVPixelFormatType_DepthFloat32 and destination buffer kCVPixelFormatType_32BGRA.";
    v33 = &v45;
LABEL_41:
    v38 = v31;
    v39 = OS_LOG_TYPE_ERROR;
LABEL_47:
    _os_log_impl(&dword_1C241C000, v38, v39, v32, v33, 2u);
    goto LABEL_48;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v11 = CVPixelBufferGetBytesPerRow(a2);
  v12 = CVPixelBufferGetHeight(a2);
  v13 = CVPixelBufferGetWidth(a2);
  if (Height != v12)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v34 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v35 = _ARLogGeneral();
    v31 = v35;
    if (v34 != 1)
    {
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v42 = 0;
      v32 = "Error: Source buffer and destination buffer must have the same height";
      v33 = &v42;
      goto LABEL_46;
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v43 = 0;
    v32 = "Source buffer and destination buffer must have the same height";
    v33 = &v43;
    goto LABEL_41;
  }

  if (Width != v13)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v36 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v37 = _ARLogGeneral();
    v31 = v37;
    if (v36 == 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v41 = 0;
        v32 = "Source buffer must have the same width of the source buffer";
        v33 = &v41;
        goto LABEL_41;
      }

LABEL_48:

      return 0;
    }

    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      goto LABEL_48;
    }

    v40 = 0;
    v32 = "Error: Source buffer must have the same width of the source buffer";
    v33 = &v40;
LABEL_46:
    v38 = v31;
    v39 = OS_LOG_TYPE_INFO;
    goto LABEL_47;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v15 = CVPixelBufferGetBaseAddress(a2);
  if (Height)
  {
    v16 = 0;
    v17 = v15 + 3;
    do
    {
      v18 = v17;
      v19 = Width;
      for (i = BaseAddress; v19; --v19)
      {
        v21 = ((*i * a3) * 0.25);
        v22 = (fabs(v21 + -0.25) * -4.0 + 1.5) * 255.0;
        v23 = v22;
        if (v22 > 255.0)
        {
          LOBYTE(v23) = -1;
        }

        if (v22 < 0.0)
        {
          LOBYTE(v23) = 0;
        }

        *(v18 - 3) = v23;
        v24 = (fabs(v21 + -0.5) * -4.0 + 1.5) * 255.0;
        v25 = v24;
        if (v24 > 255.0)
        {
          LOBYTE(v25) = -1;
        }

        if (v24 < 0.0)
        {
          LOBYTE(v25) = 0;
        }

        *(v18 - 2) = v25;
        v26 = (fabs(v21 + -0.75) * -4.0 + 1.5) * 255.0;
        if (v26 >= 0.0)
        {
          if (v26 <= 255.0)
          {
            v27 = v26;
          }

          else
          {
            LOBYTE(v27) = -1;
          }
        }

        else
        {
          LOBYTE(v27) = 0;
        }

        *(v18 - 1) = v27;
        *v18 = -1;
        v18 += 4;
        ++i;
      }

      ++v16;
      BaseAddress = (BaseAddress + BytesPerRow);
      v17 += v11;
    }

    while (v16 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 1;
}

void ARDepth32ImageAverageDepth(__CVBuffer *a1)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1717855600)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v12 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v13 = _ARLogGeneral();
    v14 = v13;
    if (v12 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = 0;
        v15 = "Source buffer must have pixel format kCVPixelFormatType_DepthFloat32.";
        v16 = &v20;
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_17:
        _os_log_impl(&dword_1C241C000, v17, v18, v15, v16, 2u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v19 = 0;
      v15 = "Error: Source buffer must have pixel format kCVPixelFormatType_DepthFloat32.";
      v16 = &v19;
      v17 = v14;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_17;
    }

    return;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (Height)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0.0;
    do
    {
      if (Width)
      {
        v9 = Width;
        v10 = BaseAddress;
        do
        {
          v11 = *v10++;
          v8 = v8 + v11;
          --v9;
        }

        while (v9);
        v7 += Width;
      }

      ++v6;
      BaseAddress = (BaseAddress + BytesPerRow);
    }

    while (v6 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
}

void ARDepth16ImageAverageDepth(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != 1278226536 && PixelFormatType != 1751410032 && PixelFormatType != 1751411059)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v18 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v19 = _ARLogGeneral();
    v20 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = 0;
        v21 = "Source buffer must have pixel format kCVPixelFormatType_OneComponent16Half, kCVPixelFormatType_DepthFloat16 or kCVPixelFormatType_DisparityFloat16.";
        v22 = &v26;
        v23 = v20;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_1C241C000, v23, v24, v21, v22, 2u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v25 = 0;
      v21 = "Error: Source buffer must have pixel format kCVPixelFormatType_OneComponent16Half, kCVPixelFormatType_DepthFloat16 or kCVPixelFormatType_DisparityFloat16.";
      v22 = &v25;
      v23 = v20;
      v24 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }

    return;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (Height)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0.0;
    do
    {
      if (Width)
      {
        v10 = Width;
        v11 = BaseAddress;
        do
        {
          v11 += 2;
          __asm
          {
            FCMP            H1, #0
            FCVT            S1, H1
          }

          if (_ZF)
          {
            _S1 = 1.0 / _S1;
          }

          v9 = v9 + _S1;
          --v10;
        }

        while (v10);
        v8 += Width;
      }

      ++v7;
      BaseAddress += BytesPerRow;
    }

    while (v7 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
}

id ARDepthRepresentationDictionaryClassList()
{
  if (ARDepthRepresentationDictionaryClassList::onceToken != -1)
  {
    ARDepthRepresentationDictionaryClassList_cold_1();
  }

  v1 = ARDepthRepresentationDictionaryClassList::depthMetadataClasses;

  return v1;
}

void __ARDepthRepresentationDictionaryClassList_block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];
  v6 = ARDepthRepresentationDictionaryClassList::depthMetadataClasses;
  ARDepthRepresentationDictionaryClassList::depthMetadataClasses = v5;
}

id ARDepthRepresentationDictionary(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_opt_new();
    v3 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v1, "depthDataVersionMajor")}];
    [v2 setObject:v3 forKey:*MEMORY[0x1E6991428]];

    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "depthDataQuality")}];
    [v2 setObject:v4 forKey:*MEMORY[0x1E6991420]];

    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "isDepthDataFiltered")}];
    [v2 setObject:v5 forKey:*MEMORY[0x1E69913E8]];

    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "depthDataAccuracy")}];
    [v2 setObject:v6 forKey:*MEMORY[0x1E69913D8]];

    v7 = MEMORY[0x1E696AD98];
    [v1 depthBlurEffectSimulatedAperture];
    v8 = [v7 numberWithFloat:?];
    [v2 setObject:v8 forKey:*MEMORY[0x1E6991310]];

    v9 = [v1 depthBlurEffectRenderingParameters];

    if (v9)
    {
      v10 = [v1 depthBlurEffectRenderingParameters];
      [v2 setObject:v10 forKey:*MEMORY[0x1E6991308]];
    }

    v11 = [v1 cameraCalibrationData];
    v12 = [v11 cameraCalibrationDataDictionary];
    [v2 addEntriesFromDictionary:v12];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CVPixelBufferRef ARCreatePixelBufferFromCGImage(CGImage *a1)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6966028];
  v23[0] = *MEMORY[0x1E6966030];
  v23[1] = v2;
  v24[0] = MEMORY[0x1E695E118];
  v24[1] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  pixelBufferOut = 0;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, 0x20u, v3, &pixelBufferOut))
  {
    v6 = 1;
  }

  else
  {
    v6 = pixelBufferOut == 0;
  }

  if (v6)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogGeneral();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21.a) = 0;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "Operation failed: Could not create a pixel buffer", &v21, 2u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21.a) = 0;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: Operation failed: Could not create a pixel buffer", &v21, 2u);
    }

    v19 = 0;
  }

  else
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    BitsPerComponent = CGImageGetBitsPerComponent(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v14 = CGImageGetWidth(a1);
    v15 = CGImageGetHeight(a1);
    v16 = CGBitmapContextCreate(BaseAddress, v14, v15, BitsPerComponent, BytesPerRow, DeviceRGB, 6u);
    CGAffineTransformMakeRotation(&v21, 0.0);
    CGContextConcatCTM(v16, &v21);
    v17 = CGImageGetWidth(a1);
    v18 = CGImageGetHeight(a1);
    v25.size.width = v17;
    v25.size.height = v18;
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    CGContextDrawImage(v16, v25, a1);
    CGColorSpaceRelease(DeviceRGB);
    CGContextRelease(v16);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v19 = pixelBufferOut;
  }

  return v19;
}

uint64_t ARReadDepthBufferFromFile(void *a1, CVPixelBufferRef *a2, float a3)
{
  v5 = a1;
  v6 = [v5 UTF8String];
  v7 = *MEMORY[0x1E695E480];
  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x8000100u);
  v9 = CFURLCreateWithFileSystemPath(v7, v8, kCFURLPOSIXPathStyle, 0);
  CFRelease(v8);
  v10 = CGImageSourceCreateWithURL(v9, 0);
  CFRelease(v9);
  if (!v10)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v21 = _ARLogGeneral();
    v22 = v21;
    if (v20 != 1)
    {
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      *v50 = 0;
      v23 = "Error: CGImageSourceCreateWithURL() failed!";
      goto LABEL_59;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    *v50 = 0;
    v23 = "CGImageSourceCreateWithURL() failed!";
LABEL_47:
    v41 = v22;
    v42 = OS_LOG_TYPE_ERROR;
LABEL_60:
    _os_log_impl(&dword_1C241C000, v41, v42, v23, v50, 2u);
    goto LABEL_61;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
  CFRelease(v10);
  if (!ImageAtIndex)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v24 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v25 = _ARLogGeneral();
    v22 = v25;
    if (v24 != 1)
    {
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      *v50 = 0;
      v23 = "Error: CGImageSourceCreateImageAtIndex() failed!";
      goto LABEL_59;
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    *v50 = 0;
    v23 = "CGImageSourceCreateImageAtIndex() failed!";
    goto LABEL_47;
  }

  ColorSpace = CGImageGetColorSpace(ImageAtIndex);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model | CGImageGetAlphaInfo(ImageAtIndex))
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v14 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v15 = _ARLogGeneral();
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        v17 = "unexpected image format!";
        v18 = v16;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_33:
        _os_log_impl(&dword_1C241C000, v18, v19, v17, v50, 2u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v50 = 0;
      v17 = "Error: unexpected image format!";
      v18 = v16;
      v19 = OS_LOG_TYPE_INFO;
      goto LABEL_33;
    }

    CGImageRelease(ImageAtIndex);
LABEL_62:
    v48 = 0;
    goto LABEL_63;
  }

  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(ImageAtIndex);
  BitsPerPixel = CGImageGetBitsPerPixel(ImageAtIndex);
  BytesPerRow = CGImageGetBytesPerRow(ImageAtIndex);
  if (BitsPerPixel != 16)
  {
    CGImageRelease(ImageAtIndex);
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v37 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v38 = _ARLogGeneral();
    v22 = v38;
    if (v37 == 1)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        v23 = "expected 16bit format!";
        goto LABEL_47;
      }

      goto LABEL_61;
    }

    if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      goto LABEL_61;
    }

    *v50 = 0;
    v23 = "Error: expected 16bit format!";
LABEL_59:
    v41 = v22;
    v42 = OS_LOG_TYPE_INFO;
    goto LABEL_60;
  }

  v30 = BytesPerRow;
  DataProvider = CGImageGetDataProvider(ImageAtIndex);
  v32 = CGDataProviderCopyData(DataProvider);
  v33 = v32;
  if (!v32)
  {
    CGImageRelease(ImageAtIndex);
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v39 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v40 = _ARLogGeneral();
    v22 = v40;
    if (v39 == 1)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        v23 = "CGDataProviderCopyData() failed!";
        goto LABEL_47;
      }

      goto LABEL_61;
    }

    if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      goto LABEL_61;
    }

    *v50 = 0;
    v23 = "Error: CGDataProviderCopyData() failed!";
    goto LABEL_59;
  }

  BytePtr = CFDataGetBytePtr(v32);
  if (CVPixelBufferCreate(v7, Width, Height, 0x66646570u, 0, a2))
  {
    CFRelease(v33);
    CGImageRelease(ImageAtIndex);
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v35 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v36 = _ARLogGeneral();
    v22 = v36;
    if (v35 == 1)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        v23 = "CVPixelBufferCreate() failed!";
        goto LABEL_47;
      }

LABEL_61:

      goto LABEL_62;
    }

    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      goto LABEL_61;
    }

    *v50 = 0;
    v23 = "Error: CVPixelBufferCreate() failed!";
    goto LABEL_59;
  }

  CVPixelBufferLockBaseAddress(*a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(*a2);
  v44 = CVPixelBufferGetBytesPerRow(*a2);
  if (Height)
  {
    LODWORD(v46) = 0;
    do
    {
      if (Width)
      {
        v47 = 0;
        do
        {
          LOWORD(v45) = *&BytePtr[2 * v47];
          v45 = LODWORD(v45) * a3;
          BaseAddress[v47++] = v45;
        }

        while (Width > v47);
      }

      BytePtr += v30;
      BaseAddress = (BaseAddress + v44);
      v46 = (v46 + 1);
    }

    while (Height > v46);
  }

  CVPixelBufferUnlockBaseAddress(*a2, 0);
  CFRelease(v33);
  CGImageRelease(ImageAtIndex);
  v48 = 1;
LABEL_63:

  return v48;
}

uint64_t ARPixelBufferCopy(__CVBuffer *a1, __CVBuffer *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a1);
  v5 = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a1);
  v7 = CVPixelBufferGetHeight(a2);
  if (Width != v5 || Height != v7)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v13 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v14 = _ARLogGeneral();
    v12 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "ARPixelBufferCopy: Source and destination buffers must have matching dimensions", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "Error: ARPixelBufferCopy: Source and destination buffers must have matching dimensions", buf, 2u);
    }

    goto LABEL_27;
  }

  v8 = CVPixelBufferLockBaseAddress(a1, 0);
  if (!v8)
  {
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v82 = __ARPixelBufferCopy_block_invoke;
    v83 = &__block_descriptor_40_e5_v8__0l;
    v84 = a1;
    v15 = CVPixelBufferLockBaseAddress(a2, 0);
    if (v15)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_2();
      }

      v16 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v17 = _ARLogGeneral();
      v18 = v17;
      if (v16 == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v86) = v15;
          v19 = "ARPixelBufferCopy: Error locking destination buffer: %d";
          v20 = v18;
          v21 = OS_LOG_TYPE_ERROR;
LABEL_44:
          _os_log_impl(&dword_1C241C000, v20, v21, v19, buf, 8u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v86) = v15;
        v19 = "Error: ARPixelBufferCopy: Error locking destination buffer: %d";
        v20 = v18;
        v21 = OS_LOG_TYPE_INFO;
        goto LABEL_44;
      }

      v22 = 0;
LABEL_122:
      v82(v81);
      return v22;
    }

    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v78 = __ARPixelBufferCopy_block_invoke_64;
    v79 = &__block_descriptor_40_e5_v8__0l;
    v80 = a2;
    if (CVPixelBufferIsPlanar(a1))
    {
      if (CVPixelBufferIsPlanar(a2))
      {
        PlaneCount = CVPixelBufferGetPlaneCount(a1);
        if (PlaneCount == CVPixelBufferGetPlaneCount(a2))
        {
          if (PlaneCount)
          {
            v25 = 0;
            while (1)
            {
              WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, v25);
              HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v25);
              v28 = CVPixelBufferGetWidthOfPlane(a2, v25);
              v29 = CVPixelBufferGetHeightOfPlane(a2, v25);
              if (WidthOfPlane != v28 || HeightOfPlane != v29)
              {
                break;
              }

              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v25);
              if (BytesPerRowOfPlane * HeightOfPlane != CVPixelBufferGetBytesPerRowOfPlane(a2, v25) * HeightOfPlane)
              {
                if (ARShouldUseLogTypeError(void)::onceToken != -1)
                {
                  ARCorrectCVPixelBufferOrientation_cold_2();
                }

                v58 = ARShouldUseLogTypeError(void)::internalOSVersion;
                v59 = _ARLogGeneral();
                v57 = v59;
                if (v58 == 1)
                {
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134217984;
                    v86 = v25;
                    _os_log_impl(&dword_1C241C000, v57, OS_LOG_TYPE_ERROR, "ARPixelBufferCopy: Source and destination buffers match resolution and number of planes but plane %lu within each pixel buffer has a different number of bytes per row", buf, 0xCu);
                  }
                }

                else if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  v86 = v25;
                  _os_log_impl(&dword_1C241C000, v57, OS_LOG_TYPE_INFO, "Error: ARPixelBufferCopy: Source and destination buffers match resolution and number of planes but plane %lu within each pixel buffer has a different number of bytes per row", buf, 0xCu);
                }

LABEL_111:

                goto LABEL_120;
              }

              if (BytesPerRowOfPlane % WidthOfPlane)
              {
                BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, v25);
                v32 = CVPixelBufferGetBaseAddressOfPlane(a1, v25);
                memcpy(BaseAddressOfPlane, v32, BytesPerRowOfPlane * HeightOfPlane);
              }

              else
              {
                memset(&src, 0, sizeof(src));
                ARWrapCVPixelBufferPlaneVImage(a1, v25, &src.data);
                memset(&dest, 0, sizeof(dest));
                ARWrapCVPixelBufferPlaneVImage(a2, v25, &dest.data);
                v33 = vImageCopyBuffer(&src, &dest, BytesPerRowOfPlane / WidthOfPlane, 0x10u);
                if (v33)
                {
                  if (ARShouldUseLogTypeError(void)::onceToken != -1)
                  {
                    ARCorrectCVPixelBufferOrientation_cold_2();
                  }

                  v64 = ARShouldUseLogTypeError(void)::internalOSVersion;
                  v65 = _ARLogGeneral();
                  v66 = v65;
                  if (v64 == 1)
                  {
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                    {
                      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
                      v68 = AROSTypeToString(PixelFormatType);
                      v69 = CVPixelBufferGetPixelFormatType(a2);
                      v70 = AROSTypeToString(v69);
                      *buf = 134219778;
                      v86 = v33;
                      v87 = 2048;
                      v88 = v25;
                      v89 = 2114;
                      v90 = v68;
                      v91 = 2048;
                      v92 = WidthOfPlane;
                      v93 = 2048;
                      v94 = HeightOfPlane;
                      v95 = 2114;
                      v96 = v70;
                      v97 = 2048;
                      v98 = WidthOfPlane;
                      v99 = 2048;
                      v100 = HeightOfPlane;
                      _os_log_impl(&dword_1C241C000, v66, OS_LOG_TYPE_ERROR, "ARPixelBufferCopy: vImageCopyBuffer error (%zu) for plane %zu copying pixel buffer (format:%{public}@, plane size:%zux%zu) to pixel buffer (format:%{public}@, plane size:%zux%zu)", buf, 0x52u);
                    }
                  }

                  else if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                  {
                    v71 = CVPixelBufferGetPixelFormatType(a1);
                    v72 = AROSTypeToString(v71);
                    v73 = CVPixelBufferGetPixelFormatType(a2);
                    v74 = AROSTypeToString(v73);
                    *buf = 134219778;
                    v86 = v33;
                    v87 = 2048;
                    v88 = v25;
                    v89 = 2114;
                    v90 = v72;
                    v91 = 2048;
                    v92 = WidthOfPlane;
                    v93 = 2048;
                    v94 = HeightOfPlane;
                    v95 = 2114;
                    v96 = v74;
                    v97 = 2048;
                    v98 = WidthOfPlane;
                    v99 = 2048;
                    v100 = HeightOfPlane;
                    _os_log_impl(&dword_1C241C000, v66, OS_LOG_TYPE_INFO, "Error: ARPixelBufferCopy: vImageCopyBuffer error (%zu) for plane %zu copying pixel buffer (format:%{public}@, plane size:%zux%zu) to pixel buffer (format:%{public}@, plane size:%zux%zu)", buf, 0x52u);
                  }

                  goto LABEL_120;
                }
              }

              if (PlaneCount == ++v25)
              {
                goto LABEL_72;
              }
            }

            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              ARCorrectCVPixelBufferOrientation_cold_2();
            }

            v55 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v56 = _ARLogGeneral();
            v57 = v56;
            if (v55 == 1)
            {
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v86 = v25;
                _os_log_impl(&dword_1C241C000, v57, OS_LOG_TYPE_ERROR, "ARPixelBufferCopy: Source and destination buffers match resolution and number of planes but plane %lu within each pixel buffer are different resolutions", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v86 = v25;
              _os_log_impl(&dword_1C241C000, v57, OS_LOG_TYPE_INFO, "Error: ARPixelBufferCopy: Source and destination buffers match resolution and number of planes but plane %lu within each pixel buffer are different resolutions", buf, 0xCu);
            }

            goto LABEL_111;
          }

          goto LABEL_72;
        }

        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          ARCorrectCVPixelBufferOrientation_cold_2();
        }

        v39 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v40 = _ARLogGeneral();
        v36 = v40;
        if (v39 == 1)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_ERROR, "ARPixelBufferCopy: Source and destination buffers must have the same number of planes", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_INFO, "Error: ARPixelBufferCopy: Source and destination buffers must have the same number of planes", buf, 2u);
        }
      }

      else
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          ARCorrectCVPixelBufferOrientation_cold_2();
        }

        v37 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v38 = _ARLogGeneral();
        v36 = v38;
        if (v37 == 1)
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_ERROR, "ARPixelBufferCopy: Cannot have planar mismatch between source (planar) and destination (non-planar)", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_INFO, "Error: ARPixelBufferCopy: Cannot have planar mismatch between source (planar) and destination (non-planar)", buf, 2u);
        }
      }
    }

    else if (CVPixelBufferIsPlanar(a2))
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_2();
      }

      v34 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v35 = _ARLogGeneral();
      v36 = v35;
      if (v34 == 1)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_ERROR, "ARPixelBufferCopy: Cannot have planar mismatch between source (non-planar) and destination (planar)", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_INFO, "Error: ARPixelBufferCopy: Cannot have planar mismatch between source (non-planar) and destination (planar)", buf, 2u);
      }
    }

    else
    {
      IOSurface = CVPixelBufferGetIOSurface(a1);
      BytesPerElement = IOSurfaceGetBytesPerElement(IOSurface);
      v43 = CVPixelBufferGetIOSurface(a2);
      v44 = IOSurfaceGetBytesPerElement(v43);
      if (BytesPerElement == v44)
      {
        memset(&src, 0, sizeof(src));
        ARWrapCVPixelBufferVImage(a1, &src.data);
        memset(&dest, 0, sizeof(dest));
        ARWrapCVPixelBufferVImage(a2, &dest.data);
        v45 = vImageCopyBuffer(&src, &dest, BytesPerElement, 0x10u);
        if (v45)
        {
          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            ARCorrectCVPixelBufferOrientation_cold_2();
          }

          v46 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v47 = _ARLogGeneral();
          v48 = v47;
          if (v46 == 1)
          {
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v49 = CVPixelBufferGetPixelFormatType(a1);
              v50 = AROSTypeToString(v49);
              v51 = CVPixelBufferGetPixelFormatType(a2);
              v52 = AROSTypeToString(v51);
              *buf = 134219522;
              v86 = v45;
              v87 = 2114;
              v88 = v50;
              v89 = 2048;
              v90 = Width;
              v91 = 2048;
              v92 = Height;
              v93 = 2114;
              v94 = v52;
              v95 = 2048;
              v96 = Width;
              v97 = 2048;
              v98 = Height;
              _os_log_impl(&dword_1C241C000, v48, OS_LOG_TYPE_ERROR, "ARPixelBufferCopy: vImageCopyBuffer error (%zu) copying pixel buffer (format:%{public}@, size:%zux%zu) to pixel buffer (format:%{public}@, size:%zux%zu)", buf, 0x48u);
            }
          }

          else if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v60 = CVPixelBufferGetPixelFormatType(a1);
            v61 = AROSTypeToString(v60);
            v62 = CVPixelBufferGetPixelFormatType(a2);
            v63 = AROSTypeToString(v62);
            *buf = 134219522;
            v86 = v45;
            v87 = 2114;
            v88 = v61;
            v89 = 2048;
            v90 = Width;
            v91 = 2048;
            v92 = Height;
            v93 = 2114;
            v94 = v63;
            v95 = 2048;
            v96 = Width;
            v97 = 2048;
            v98 = Height;
            _os_log_impl(&dword_1C241C000, v48, OS_LOG_TYPE_INFO, "Error: ARPixelBufferCopy: vImageCopyBuffer error (%zu) copying pixel buffer (format:%{public}@, size:%zux%zu) to pixel buffer (format:%{public}@, size:%zux%zu)", buf, 0x48u);
          }

LABEL_120:
          v22 = 0;
          goto LABEL_121;
        }

LABEL_72:
        CVBufferPropagateAttachments(a1, a2);
        v22 = 1;
LABEL_121:
        v78(v77);
        goto LABEL_122;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_2();
      }

      v53 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v54 = _ARLogGeneral();
      v36 = v54;
      if (v53 == 1)
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v86 = BytesPerElement;
          v87 = 2048;
          v88 = v44;
          _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_ERROR, "ARPixelBufferCopy: Cannot have byte-per-element mismatch between source and destination. src: %zu - dst: %zu", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v86 = BytesPerElement;
        v87 = 2048;
        v88 = v44;
        _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_INFO, "Error: ARPixelBufferCopy: Cannot have byte-per-element mismatch between source and destination. src: %zu - dst: %zu", buf, 0x16u);
      }
    }

    goto LABEL_120;
  }

  v9 = v8;
  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARCorrectCVPixelBufferOrientation_cold_1();
  }

  v10 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v11 = _ARLogGeneral();
  v12 = v11;
  if (v10 == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v86) = v9;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "ARPixelBufferCopy: Error locking source buffer: %d", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v86) = v9;
    _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "Error: ARPixelBufferCopy: Error locking source buffer: %d", buf, 8u);
  }

LABEL_27:

  return 0;
}

void sub_1C259CD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void (*a21)(char *), uint64_t a22, uint64_t a23, char a24, uint64_t a25, void (*a26)(char *))
{
  a21(&a19);
  a26(&a24);
  _Unwind_Resume(a1);
}

void __ARPixelBufferCopy_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = CVPixelBufferUnlockBaseAddress(*(a1 + 32), 0);
  if (v1)
  {
    v2 = v1;
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v3 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v4 = _ARLogGeneral();
    v5 = v4;
    if (v3 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v9 = 67109120;
        v10 = v2;
        v6 = "ARPixelBufferCopy: Error unlocking source buffer: %d";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v7, v8, v6, &v9, 8u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 67109120;
      v10 = v2;
      v6 = "Error: ARPixelBufferCopy: Error unlocking source buffer: %d";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }
}

void __ARPixelBufferCopy_block_invoke_64(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = CVPixelBufferUnlockBaseAddress(*(a1 + 32), 0);
  if (v1)
  {
    v2 = v1;
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v3 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v4 = _ARLogGeneral();
    v5 = v4;
    if (v3 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v9 = 67109120;
        v10 = v2;
        v6 = "ARPixelBufferCopy: Error unlocking destination buffer: %d";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v7, v8, v6, &v9, 8u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 67109120;
      v10 = v2;
      v6 = "Error: ARPixelBufferCopy: Error unlocking destination buffer: %d";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }
}

uint64_t ARCGImagePropertyOrientationFromUIDeviceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 1;
  }

  else
  {
    return dword_1C25F40B0[a1 - 1];
  }
}

uint64_t _ARConvertBufferPixelsToBufferPixels(__CVBuffer *a1, __CVBuffer *a2, void *a3)
{
  v5 = a3;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v22 = CVPixelBufferGetBytesPerRow(a2);
  v7 = CVPixelBufferGetHeight(a2);
  v8 = CVPixelBufferGetWidth(a2);
  v9 = Height == v7 && Width == v8;
  v10 = v9;
  if (v9)
  {
    CVPixelBufferLockBaseAddress(a1, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    v18 = v10;
    v19 = a2;
    v20 = CVPixelBufferGetBaseAddress(a2);
    if (Height)
    {
      v11 = 0;
      v12 = BytesPerRow / Width;
      if (Width <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = Width;
      }

      v14 = v22 / Width;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          v5[2](v5, &BaseAddress[v11 * BytesPerRow + v15 * v12], v12, &v20[v11 * v22 + v15 * v14], v14);
          ++v15;
          --v16;
        }

        while (v16);
        ++v11;
      }

      while (v11 != Height);
    }

    CVPixelBufferUnlockBaseAddress(a1, 0);
    v10 = v18;
    CVPixelBufferUnlockBaseAddress(v19, 0);
  }

  return v10;
}

uint64_t ARCreatePixelBufferFromSourceWithPixelConverter(__CVBuffer *a1, OSType a2, CVPixelBufferRef *a3, void *a4)
{
  v7 = a4;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (CVPixelBufferGetWidth(*a3) == Width && CVPixelBufferGetHeight(*a3) == Height)
  {
    IOSurface = CVPixelBufferGetIOSurface(*a3);
    pixelBufferOut = 0;
    if (IOSurface)
    {
      v11 = *a3;
      pixelBufferOut = *a3;
      LOBYTE(v12) = 1;
      goto LABEL_9;
    }
  }

  else
  {
    pixelBufferOut = 0;
  }

  if (*a3)
  {
LABEL_13:
    v12 = 4294960636;
    goto LABEL_14;
  }

  v12 = CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, a2, 0, &pixelBufferOut);
  if (v12)
  {
    goto LABEL_14;
  }

  v11 = pixelBufferOut;
LABEL_9:
  if ((_ARConvertBufferPixelsToBufferPixels(a1, v11, v7) & 1) == 0)
  {
    CVPixelBufferRelease(pixelBufferOut);
    goto LABEL_13;
  }

  if (v12)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    *a3 = pixelBufferOut;
  }

LABEL_14:

  return v12;
}

CVPixelBufferRef ARCreateColorizedOneComponentTo24RGBPixelBuffer(__CVBuffer *a1, void *a2)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v48 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v4 = PixelFormatType;
  if (!v48 && PixelFormatType == 1278226488)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v5 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v6 = _ARLogGeneral();
    v7 = v6;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "Missing color table for kCVPixelFormatType_OneComponent8 input", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: Missing color table for kCVPixelFormatType_OneComponent8 input", buf, 2u);
    }

LABEL_19:

    v16 = 0;
    goto LABEL_61;
  }

  if (PixelFormatType - 1278226488 > 0x30 || ((1 << (PixelFormatType - 56)) & 0x1400000000001) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v36 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v37 = _ARLogGeneral();
    v7 = v37;
    if (v36 == 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "Failed to create the colorized buffer: Unexpected format.", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: Failed to create the colorized buffer: Unexpected format.", buf, 2u);
    }

    goto LABEL_19;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  *buf = 0;
  v57 = *MEMORY[0x1E69660D8];
  v58[0] = MEMORY[0x1E695E0F8];
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
  if (CVPixelBufferCreate(0, Width, Height, 0x18u, v46, buf))
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v10 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v11 = _ARLogGeneral();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v55 = 0;
        v13 = "Could not create pixelbuffer";
        v14 = v12;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_43:
        _os_log_impl(&dword_1C241C000, v14, v15, v13, v55, 2u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v55 = 0;
      v13 = "Error: Could not create pixelbuffer";
      v14 = v12;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_43;
    }

    v16 = 0;
    goto LABEL_60;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(*buf, 0);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v50 = __ARCreateColorizedOneComponentTo24RGBPixelBuffer_block_invoke;
  v51 = &__block_descriptor_48_e5_v8__0l;
  v52 = a1;
  v53 = *buf;
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v18 = CVPixelBufferGetBaseAddress(*buf);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v43 = CVPixelBufferGetBytesPerRow(*buf);
  if (!Height)
  {
    goto LABEL_58;
  }

  v19 = 0;
  v47 = v18 + 2;
  v45 = 1;
  v42 = Height;
  while (!Width)
  {
LABEL_33:
    v45 = v42 > ++v19;
    BaseAddress += BytesPerRow;
    v47 += v43;
    if (v19 == v42)
    {
      goto LABEL_58;
    }
  }

  v20 = 0;
  v21 = v47;
  while (1)
  {
    if (v4 == 1278226536)
    {
      _H0 = *&BaseAddress[2 * v20];
      __asm { FCVT            S0, H0 }

      goto LABEL_31;
    }

    if (v4 == 1278226534)
    {
      _S0 = *&BaseAddress[4 * v20];
LABEL_31:
      v35 = fminf(_S0 * 255.0, 255.0);
      *(v21 - 2) = v35;
      *(v21 - 1) = v35;
      *v21 = v35;
      goto LABEL_32;
    }

    if (v4 == 1278226488)
    {
      break;
    }

LABEL_32:
    ++v20;
    v21 += 3;
    if (Width == v20)
    {
      goto LABEL_33;
    }
  }

  v22 = BaseAddress[v20];
  if ([v48 count] > v22)
  {
    v23 = [v48 objectAtIndexedSubscript:v22];
    [v23 red];
    *(v21 - 2) = (v24 * 255.0);

    v25 = [v48 objectAtIndexedSubscript:v22];
    [v25 green];
    *(v21 - 1) = (v26 * 255.0);

    v27 = [v48 objectAtIndexedSubscript:v22];
    [v27 blue];
    *v21 = (v28 * 255.0);

    goto LABEL_32;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARCorrectCVPixelBufferOrientation_cold_2();
  }

  v38 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v39 = _ARLogGeneral();
  v40 = v39;
  if (v38 == 1)
  {
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *v55 = 67109120;
      v56 = v22;
      _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_ERROR, "Failed to create the colorized buffer: Color is not defined for label=%d", v55, 8u);
    }
  }

  else if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *v55 = 67109120;
    v56 = v22;
    _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_INFO, "Error: Failed to create the colorized buffer: Color is not defined for label=%d", v55, 8u);
  }

  if (v45)
  {
    v16 = 0;
    goto LABEL_59;
  }

LABEL_58:
  v16 = *buf;
LABEL_59:
  v50(v49);
LABEL_60:

LABEL_61:
  return v16;
}

uint64_t __ARCreateColorizedOneComponentTo24RGBPixelBuffer_block_invoke(uint64_t a1)
{
  CVPixelBufferUnlockBaseAddress(*(a1 + 32), 0);
  v2 = *(a1 + 40);

  return CVPixelBufferUnlockBaseAddress(v2, 0);
}

uint64_t ARCreateConcatenatedCVPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  __n = CVPixelBufferGetWidth(a1);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a1);
  v8 = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v10 = CVPixelBufferGetPixelFormatType(a2);
  if (Height != v8)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v15 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v16 = _ARLogGeneral();
    v11 = v16;
    if (v15 == 1)
    {
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      *pixelBufferOut = 134218240;
      *&pixelBufferOut[4] = Height;
      v53 = 2048;
      v54 = v8;
      v17 = "Failed to concatenate buffers: Height does not match (%zu <-> %zu)";
      v18 = v11;
      v19 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      *pixelBufferOut = 134218240;
      *&pixelBufferOut[4] = Height;
      v53 = 2048;
      v54 = v8;
      v17 = "Error: Failed to concatenate buffers: Height does not match (%zu <-> %zu)";
      v18 = v11;
      v19 = OS_LOG_TYPE_INFO;
    }

    v22 = 22;
LABEL_37:
    _os_log_impl(&dword_1C241C000, v18, v19, v17, pixelBufferOut, v22);
    goto LABEL_38;
  }

  if (PixelFormatType != v10)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v21 = _ARLogGeneral();
    v11 = v21;
    if (v20 == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *pixelBufferOut = 0;
        v17 = "Failed to concatenate buffers: format does not match";
LABEL_30:
        v18 = v11;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_36:
        v22 = 2;
        goto LABEL_37;
      }

LABEL_38:
      v25 = 0;
      goto LABEL_39;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    *pixelBufferOut = 0;
    v17 = "Error: Failed to concatenate buffers: format does not match";
LABEL_35:
    v18 = v11;
    v19 = OS_LOG_TYPE_INFO;
    goto LABEL_36;
  }

  if (!CVPixelBufferGetIOSurface(a1) || !CVPixelBufferGetIOSurface(a2))
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v24 = _ARLogGeneral();
    v11 = v24;
    if (v23 == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *pixelBufferOut = 0;
        v17 = "Failed to concatenate buffers: Buffers need to be IOSurface back";
        goto LABEL_30;
      }

      goto LABEL_38;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    *pixelBufferOut = 0;
    v17 = "Error: Failed to concatenate buffers: Buffers need to be IOSurface back";
    goto LABEL_35;
  }

  v45 = Width;
  v50 = *MEMORY[0x1E69660D8];
  v51 = MEMORY[0x1E695E0F8];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  *pixelBufferOut = 0;
  if (CVPixelBufferCreate(0, __n + a3 + Width, Height, PixelFormatType, v11, pixelBufferOut))
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v12 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v13 = _ARLogGeneral();
    v14 = v13;
    if (v12 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_ERROR, "Could not create pixelbuffer", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "Error: Could not create pixelbuffer", buf, 2u);
    }

    goto LABEL_38;
  }

  CVPixelBufferLockBaseAddress(*pixelBufferOut, 0);
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  v44 = v11;
  BytesPerRow = CVPixelBufferGetBytesPerRow(*pixelBufferOut);
  v28 = CVPixelBufferGetBytesPerRow(a1);
  v43 = BytesPerRow;
  v42 = CVPixelBufferGetBytesPerRow(a2);
  BaseAddress = CVPixelBufferGetBaseAddress(*pixelBufferOut);
  v30 = CVPixelBufferGetBaseAddress(a1);
  v31 = CVPixelBufferGetBaseAddress(a2);
  IOSurface = CVPixelBufferGetIOSurface(a1);
  BytesPerElement = IOSurfaceGetBytesPerElement(IOSurface);
  v34 = CVPixelBufferGetIOSurface(a2);
  v35 = IOSurfaceGetBytesPerElement(v34);
  v37 = v42;
  v36 = v43;
  if (Height)
  {
    v38 = v28;
    v46 = v35 * v45;
    __na = BytesPerElement * __n;
    v39 = a3 + __na;
    do
    {
      v40 = v36;
      v41 = v37;
      memcpy(BaseAddress, v30, __na);
      memcpy(&BaseAddress[v39], v31, v46);
      v37 = v41;
      v36 = v40;
      BaseAddress += v40;
      v30 += v38;
      v31 += v41;
      --Height;
    }

    while (Height);
  }

  CVPixelBufferUnlockBaseAddress(*pixelBufferOut, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  v25 = *pixelBufferOut;
  v11 = v44;
LABEL_39:

  return v25;
}

id ARIOSurfaceToPNGData(IOSurfaceRef surface)
{
  pixelBufferOut = 0;
  if (!CVPixelBufferCreateWithIOSurface(0, surface, 0, &pixelBufferOut))
  {
    v8 = ARPixelBufferToPNGData(pixelBufferOut);
    CVPixelBufferRelease(pixelBufferOut);
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARCorrectCVPixelBufferOrientation_cold_2();
  }

  v1 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v2 = _ARLogGeneral();
  v3 = v2;
  if (v1 == 1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v4 = "Could not create pixelbuffer";
      v5 = &v11;
      v6 = v3;
      v7 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v6, v7, v4, v5, 2u);
    }
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v10 = 0;
    v4 = "Error: Could not create pixelbuffer";
    v5 = &v10;
    v6 = v3;
    v7 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

id ARPixelBufferToPNGData(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a1];
  if (v1)
  {
    v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v3 = MEMORY[0x1E695F620];
    v15 = *MEMORY[0x1E695F868];
    v16[0] = v2;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v5 = [v3 contextWithOptions:v4];

    v6 = [v5 workingColorSpace];
    v7 = [v5 PNGRepresentationOfImage:v1 format:*MEMORY[0x1E695F8A8] colorSpace:v6 options:MEMORY[0x1E695E0F8]];
    CGColorSpaceRelease(v2);
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARCorrectCVPixelBufferOrientation_cold_1();
  }

  v8 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v9 = _ARLogGeneral();
  v5 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      v10 = "Failed to create CIImage";
      v11 = v5;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v11, v12, v10, v14, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    v10 = "Error: Failed to create CIImage";
    v11 = v5;
    v12 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

CVPixelBufferRef ARCreateEmptyBufferWithSameFormatFromSource(__CVBuffer *a1)
{
  v1 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(v1);
  LODWORD(v1) = CVPixelBufferGetPixelFormatType(v1);
  v13 = *MEMORY[0x1E69660D8];
  v14[0] = MEMORY[0x1E695E0F8];
  CVPixelBufferCreate(0, Width, Height, v1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1], &pixelBufferOut);
  if (!pixelBufferOut)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v4 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v5 = _ARLogGeneral();
    v6 = v5;
    if (v4 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        v7 = "Failed to create an empty pixelbuffer";
        v8 = v6;
        v9 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v8, v9, v7, v11, 2u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      v7 = "Error: Failed to create an empty pixelbuffer";
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }

  return pixelBufferOut;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_27()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_28()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void ___ZL15_ARLogTechniquev_block_invoke_15()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

id ARKitCoreBuildVersionString()
{
  v0 = ARKitCoreBundle();
  v1 = [v0 infoDictionary];
  v2 = [v1 objectForKeyedSubscript:@"CFBundleVersion"];

  return v2;
}

void ARLogErrorNoClassLongMessage(void *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (ARLogErrorNoClassLongMessage_onceToken != -1)
  {
    ARLogErrorNoClassLongMessage_cold_1();
  }

  v40 = v3;
  v5 = [v3 componentsSeparatedByCharactersInSet:ARLogErrorNoClassLongMessage_newLineCharacterSet];
  v39 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ", v4, v4];
  }

  else
  {
    v6 = &stru_1F4208A80;
  }

  v7 = [(__CFString *)v6 length];
  if ([v5 count] < 2)
  {
    goto LABEL_16;
  }

  if (ARShouldUseLogTypeError_onceToken_54 != -1)
  {
    ARLogErrorNoClassLongMessage_cold_2();
  }

  v8 = ARShouldUseLogTypeError_internalOSVersion_54;
  v9 = _ARLogGeneral_49();
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v49 = v6;
      v11 = "%{public}@START";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_1C241C000, v12, v13, v11, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v49 = v6;
    v11 = "Error: %{public}@START";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

LABEL_16:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v43 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (!v43)
  {
    goto LABEL_44;
  }

  v14 = 1000 - v7;
  v42 = *v45;
  do
  {
    v15 = 0;
    do
    {
      if (*v45 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v44 + 1) + 8 * v15);
      if (v14 < [v16 length])
      {
        v17 = 0;
        LODWORD(v18) = v14;
        while (1)
        {
          if (ARShouldUseLogTypeError_onceToken_54 != -1)
          {
            ARLogErrorNoClassLongMessage_cold_3();
          }

          v19 = ARShouldUseLogTypeError_internalOSVersion_54;
          v20 = _ARLogGeneral_49();
          v21 = v20;
          if (v19 == 1)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v22 = [v16 substringWithRange:{v17, v14}];
              *buf = 138543618;
              v49 = v6;
              v50 = 2114;
              v51 = v22;
              v23 = v21;
              v24 = OS_LOG_TYPE_ERROR;
              v25 = "%{public}@%{public}@";
LABEL_30:
              _os_log_impl(&dword_1C241C000, v23, v24, v25, buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v22 = [v16 substringWithRange:{v17, v14}];
            *buf = 138543618;
            v49 = v6;
            v50 = 2114;
            v51 = v22;
            v23 = v21;
            v24 = OS_LOG_TYPE_INFO;
            v25 = "Error: %{public}@%{public}@";
            goto LABEL_30;
          }

          v17 = v18;
          v18 = v14 + v18;
          if (v18 >= [v16 length])
          {
            goto LABEL_34;
          }
        }
      }

      v17 = 0;
LABEL_34:
      if (ARShouldUseLogTypeError_onceToken_54 != -1)
      {
        ARLogErrorNoClassLongMessage_cold_3();
      }

      v26 = ARShouldUseLogTypeError_internalOSVersion_54;
      v27 = _ARLogGeneral_49();
      v28 = v27;
      if (v26 == 1)
      {
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        v29 = [v16 substringFromIndex:v17];
        *buf = 138543618;
        v49 = v6;
        v50 = 2114;
        v51 = v29;
        v30 = v28;
        v31 = OS_LOG_TYPE_ERROR;
        v32 = "%{public}@%{public}@";
      }

      else
      {
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          goto LABEL_42;
        }

        v29 = [v16 substringFromIndex:v17];
        *buf = 138543618;
        v49 = v6;
        v50 = 2114;
        v51 = v29;
        v30 = v28;
        v31 = OS_LOG_TYPE_INFO;
        v32 = "Error: %{public}@%{public}@";
      }

      _os_log_impl(&dword_1C241C000, v30, v31, v32, buf, 0x16u);

LABEL_42:
      ++v15;
    }

    while (v15 != v43);
    v43 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  }

  while (v43);
LABEL_44:

  if ([obj count] >= 2)
  {
    if (ARShouldUseLogTypeError_onceToken_54 != -1)
    {
      ARLogErrorNoClassLongMessage_cold_3();
    }

    v33 = ARShouldUseLogTypeError_internalOSVersion_54;
    v34 = _ARLogGeneral_49();
    v35 = v34;
    if (v33 == 1)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v49 = v6;
        v36 = "%{public}@END";
        v37 = v35;
        v38 = OS_LOG_TYPE_ERROR;
        goto LABEL_52;
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v49 = v6;
      v36 = "Error: %{public}@END";
      v37 = v35;
      v38 = OS_LOG_TYPE_INFO;
LABEL_52:
      _os_log_impl(&dword_1C241C000, v37, v38, v36, buf, 0xCu);
    }
  }
}

void __ARLogErrorNoClassLongMessage_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v1 = ARLogErrorNoClassLongMessage_newLineCharacterSet;
  ARLogErrorNoClassLongMessage_newLineCharacterSet = v0;
}

id _ARLogGeneral_49()
{
  if (_ARLogGeneral_onceToken_52 != -1)
  {
    _ARLogGeneral_cold_1_49();
  }

  v1 = _ARLogGeneral_logObj_52;

  return v1;
}

void ARLogDebugNoClassLongMessage(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (ARLogDebugNoClassLongMessage_onceToken != -1)
  {
    ARLogDebugNoClassLongMessage_cold_1();
  }

  v20 = v3;
  v5 = [v3 componentsSeparatedByCharactersInSet:ARLogDebugNoClassLongMessage_newLineCharacterSet];
  v19 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ", v4, v4];
  }

  else
  {
    v6 = &stru_1F4208A80;
  }

  v7 = [(__CFString *)v6 length];
  if ([v5 count] >= 2)
  {
    v8 = _ARLogGeneral_49();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v29 = v6;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@START", buf, 0xCu);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v23 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v23)
  {
    v9 = 1000 - v7;
    v22 = *v25;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (v9 >= [v11 length])
        {
          v12 = 0;
        }

        else
        {
          v12 = 0;
          LODWORD(v13) = v9;
          do
          {
            v14 = _ARLogGeneral_49();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = [v11 substringWithRange:{v12, v9}];
              *buf = 138543618;
              v29 = v6;
              v30 = 2114;
              v31 = v15;
              _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@", buf, 0x16u);
            }

            v12 = v13;
            v13 = v9 + v13;
          }

          while (v13 < [v11 length]);
        }

        v16 = _ARLogGeneral_49();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v11 substringFromIndex:v12];
          *buf = 138543618;
          v29 = v6;
          v30 = 2114;
          v31 = v17;
          _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@", buf, 0x16u);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v23);
  }

  if ([obj count] >= 2)
  {
    v18 = _ARLogGeneral_49();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v29 = v6;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_DEBUG, "%{public}@END", buf, 0xCu);
    }
  }
}

void __ARLogDebugNoClassLongMessage_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v1 = ARLogDebugNoClassLongMessage_newLineCharacterSet;
  ARLogDebugNoClassLongMessage_newLineCharacterSet = v0;
}

uint64_t ARAbortWithError(void *a1)
{
  strdup([a1 UTF8String]);
  v1 = abort_with_reason();
  return __ARShouldUseLogTypeError_block_invoke_55(v1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_55()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_54 = result;
  return result;
}

double ARMatrix4x4MakeRowMajorTransform(double *a1)
{
  *&v1 = *a1;
  *&v2 = a1[3];
  return COERCE_DOUBLE(__PAIR64__(v2, v1));
}

double ARMatrix4x4RowMajorRotationAndTranslation(float64x2_t *a1, float64x2_t *a2, int8x16_t a3, int8x16_t a4, __n128 a5, __n128 a6)
{
  v6 = vzip2_s32(*a4.i8, a5.n128_u64[0]);
  a5.n128_u32[1] = a3.u32[1];
  *a1 = vcvtq_f64_f32(vzip1_s32(*a3.i8, *a4.i8));
  a1[1] = vcvtq_f64_f32(a5.n128_u64[0]);
  a1[2] = vcvtq_f64_f32(v6);
  a1[3] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL)));
  a1[4].f64[0] = a5.n128_f32[2];
  *a2 = vcvtq_f64_f32(a6.n128_u64[0]);
  result = a6.n128_f32[2];
  a2[1].f64[0] = a6.n128_f32[2];
  return result;
}

double ARMatrix3x3RowMajorArray(float64x2_t *a1, int8x16_t a2, int8x16_t a3, __n128 a4)
{
  v4 = vzip2_s32(*a3.i8, a4.n128_u64[0]);
  a4.n128_u32[1] = a2.u32[1];
  *a1 = vcvtq_f64_f32(vzip1_s32(*a2.i8, *a3.i8));
  a1[1] = vcvtq_f64_f32(a4.n128_u64[0]);
  a1[2] = vcvtq_f64_f32(v4);
  a1[3] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(a3, a3, 8uLL)));
  result = a4.n128_f32[2];
  a1[4].f64[0] = a4.n128_f32[2];
  return result;
}

double ARRowMajor3x3MatrixArrayToColumnMajor3x3MatrixArray(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 24);
  *(a2 + 16) = *(a1 + 48);
  *(a2 + 24) = *(a1 + 8);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 56);
  *(a2 + 48) = *(a1 + 16);
  *(a2 + 56) = *(a1 + 40);
  result = *(a1 + 64);
  *(a2 + 64) = result;
  return result;
}

float32x2_t ARMatrix3x3MakeRowMajorTransform(float64_t *a1)
{
  v1.f64[0] = *a1;
  v1.f64[1] = a1[3];
  return vcvt_f32_f64(v1);
}

uint64_t ARMatrix3x3IsZero(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3.i64[0] = 0x3400000034000000;
  v3.i64[1] = 0x3400000034000000;
  v4 = vandq_s8(vandq_s8(vcgeq_f32(v3, vabsq_f32(a1)), vcgeq_f32(v3, vabsq_f32(a2))), vcgeq_f32(v3, vabsq_f32(a3)));
  v4.i32[3] = v4.i32[2];
  return vminvq_u32(v4) >> 31;
}

uint64_t ARMatrix4x3IsZero(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4.i64[0] = 0x3400000034000000;
  v4.i64[1] = 0x3400000034000000;
  v5 = vandq_s8(vandq_s8(vcgeq_f32(v4, vabsq_f32(a1)), vcgeq_f32(v4, vabsq_f32(a2))), vandq_s8(vcgeq_f32(v4, vabsq_f32(a3)), vcgeq_f32(v4, vabsq_f32(a4))));
  v5.i32[3] = v5.i32[2];
  return vminvq_u32(v5) >> 31;
}

uint64_t ARMatrix4x4IsZero(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4.i64[0] = 0x3400000034000000;
  v4.i64[1] = 0x3400000034000000;
  return vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v4, vabsq_f32(a1)), vcgeq_f32(v4, vabsq_f32(a2))), vandq_s8(vcgeq_f32(v4, vabsq_f32(a3)), vcgeq_f32(v4, vabsq_f32(a4))))) >> 31;
}

uint64_t ARMatrix3x3IsNAN(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vmvnq_s8(vorrq_s8(vcltzq_f32(a1), vcgezq_f32(a1)));
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) == 0)
  {
    return 0;
  }

  v4 = vmvnq_s8(vorrq_s8(vcltzq_f32(a2), vcgezq_f32(a2)));
  v4.i32[3] = v4.i32[2];
  if ((vminvq_u32(v4) & 0x80000000) == 0)
  {
    return 0;
  }

  v6 = vmvnq_s8(vorrq_s8(vcltzq_f32(a3), vcgezq_f32(a3)));
  v6.i32[3] = v6.i32[2];
  return vminvq_u32(v6) >> 31;
}

uint64_t ARMatrix4x3IsNAN(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vmvnq_s8(vorrq_s8(vcltzq_f32(a1), vcgezq_f32(a1)));
  v4.i32[3] = v4.i32[2];
  if ((vminvq_u32(v4) & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = vmvnq_s8(vorrq_s8(vcltzq_f32(a2), vcgezq_f32(a2)));
  v5.i32[3] = v5.i32[2];
  if ((vminvq_u32(v5) & 0x80000000) == 0)
  {
    return 0;
  }

  v6 = vmvnq_s8(vorrq_s8(vcltzq_f32(a3), vcgezq_f32(a3)));
  v6.i32[3] = v6.i32[2];
  if ((vminvq_u32(v6) & 0x80000000) == 0)
  {
    return 0;
  }

  v8 = vmvnq_s8(vorrq_s8(vcltzq_f32(a4), vcgezq_f32(a4)));
  v8.i32[3] = v8.i32[2];
  return vminvq_u32(v8) >> 31;
}

uint64_t ARMatrix4x4IsNAN(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  if ((vminvq_u32(vmvnq_s8(vceqq_f32(a1, a1))) & 0x80000000) != 0 && (vminvq_u32(vmvnq_s8(vceqq_f32(a2, a2))) & 0x80000000) != 0 && (vminvq_u32(vmvnq_s8(vceqq_f32(a3, a3))) & 0x80000000) != 0)
  {
    return vminvq_u32(vmvnq_s8(vceqq_f32(a4, a4))) >> 31;
  }

  else
  {
    return 0;
  }
}

uint64_t ARMatrix3x3IsIdentity(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3.i64[0] = 0x3400000034000000;
  v3.i64[1] = 0x3400000034000000;
  v4 = vandq_s8(vandq_s8(vcgeq_f32(v3, vabdq_f32(a2, *(MEMORY[0x1E69E9B10] + 16))), vcgeq_f32(v3, vabdq_f32(a1, *MEMORY[0x1E69E9B10]))), vcgeq_f32(v3, vabdq_f32(a3, *(MEMORY[0x1E69E9B10] + 32))));
  v4.i32[3] = v4.i32[2];
  return vminvq_u32(v4) >> 31;
}

double ARMatrix4x4ColumnMajorRotationAndTranslation(float64x2_t *a1, float64x2_t *a2, int8x16_t a3, int8x16_t a4, __n128 a5, __n128 a6)
{
  *a1 = vcvtq_f64_f32(*a3.i8);
  a1[1] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *a4.i8));
  a1[2] = vcvtq_f64_f32(vext_s8(*a4.i8, *&vextq_s8(a4, a4, 8uLL), 4uLL));
  a1[3] = vcvtq_f64_f32(a5.n128_u64[0]);
  a1[4].f64[0] = a5.n128_f32[2];
  *a2 = vcvtq_f64_f32(a6.n128_u64[0]);
  result = a6.n128_f32[2];
  a2[1].f64[0] = a6.n128_f32[2];
  return result;
}

float64x2_t ARMatrix4x4ColumnMajorCopyValues(float64x2_t *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  *a1 = vcvtq_f64_f32(*a2.f32);
  a1[1] = vcvt_hight_f64_f32(a2);
  a1[2] = vcvtq_f64_f32(*a3.f32);
  a1[3] = vcvt_hight_f64_f32(a3);
  a1[4] = vcvtq_f64_f32(*a4.f32);
  a1[5] = vcvt_hight_f64_f32(a4);
  result = vcvtq_f64_f32(*a5.f32);
  a1[6] = result;
  a1[7] = vcvt_hight_f64_f32(a5);
  return result;
}

float64x2_t ARMatrix4x4RowMajorCopyValues4x3(float64x2_t *a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5)
{
  *a1 = vcvtq_f64_f32(vzip1_s32(*a2.i8, *a3.i8));
  a1[1] = vcvtq_f64_f32(vzip1_s32(*a4.i8, *a5.i8));
  a1[2] = vcvtq_f64_f32(vzip2_s32(*a2.i8, *a3.i8));
  a1[3] = vcvtq_f64_f32(vzip2_s32(*a4.i8, *a5.i8));
  result = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(a3, a3, 8uLL)));
  a1[4] = result;
  a1[5] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(a5, a5, 8uLL)));
  return result;
}

uint64_t ARMatrix3x3CopyValues(uint64_t result, __n128 a2, __n128 a3, __n128 a4)
{
  *(result + 8) = a2.n128_u32[2];
  *(result + 20) = a3.n128_u32[2];
  *result = a2.n128_u64[0];
  *(result + 12) = a3.n128_u64[0];
  *(result + 32) = a4.n128_u32[2];
  *(result + 24) = a4.n128_u64[0];
  return result;
}

__n128 *ARMatrix4x4CopyValues(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

double ARMatrix4x4FromCMRotationMatrix(double *a1)
{
  *&v1 = *a1;
  *&v2 = a1[3];
  return COERCE_DOUBLE(__PAIR64__(v2, v1));
}

double ARMatrix4x3Inverse(simd_float4x4 a1)
{
  a1.columns[0].i32[3] = 0;
  a1.columns[1].i32[3] = 0;
  a1.columns[2].i32[3] = 0;
  a1.columns[3].i32[3] = 1.0;
  *&result = __invert_f4(a1);
  return result;
}

double ARAdjustIntrincisForOrientation(uint64_t a1, double result, double a3)
{
  if (a1 == -90)
  {
    *&result = __PAIR64__(HIDWORD(result), HIDWORD(a3));
  }

  else if (a1 == 90)
  {
    *&result = __PAIR64__(HIDWORD(result), HIDWORD(a3));
  }

  return result;
}

float ARAdjustIntrinsicsForViewportSize(float result, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a4 != a6 || a5 != a7)
  {
    v8 = result;
    v9 = a6 / a7 < a4 / a5;
    v10 = a6 / a4;
    if (v9)
    {
      v10 = a7 / a5;
    }

    return v10 * v8;
  }

  return result;
}

float ARMatrixMakeFrustum(float a1, double a2, double a3, float64_t a4, float64_t a5)
{
  ARLinkedOnOrAfterPeace();
  _Q2.f64[0] = a4;
  _Q2.f64[1] = a5;
  v6 = vcvt_f32_f64(_Q2).f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  return (a1 + a1) / v6;
}

double ARMatrixPerspectiveFlipZ(double a1, double a2, __n128 a3, __n128 a4)
{
  v4 = 0;
  v6[2] = a3;
  v6[3] = a4;
  memset(v7, 0, sizeof(v7));
  do
  {
    v7[v4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C8910, COERCE_FLOAT(v6[v4])), xmmword_1C25C8BC0, *&v6[v4], 1), xmmword_1C25C9070, v6[v4], 2), xmmword_1C25F40C0, v6[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  return *v7;
}

double ARMatrixMakePerspective(int a1, int8x16_t a2, float32x2_t a3, float32x4_t a4, float32_t a5, float a6, float32_t a7, float32x4_t a8)
{
  a8.i32[0] = 2139095040;
  if (a7 == 0.0)
  {
    a7 = INFINITY;
  }

  if (a6 == INFINITY)
  {
    a6 = 0.000001;
  }

  if (a6 < 0.000001)
  {
    a6 = 0.000001;
  }

  if (a7 < 0.000001)
  {
    a7 = 0.000001;
  }

  a3.f32[1] = a5;
  a2.i32[1] = a4.i32[0];
  v8 = vsub_f32(a3, *a2.i8);
  v9 = vdup_n_s32(0x358637BDu);
  v10 = vadd_f32(*a2.i8, v9);
  if ((a7 - a6) >= 0.000001)
  {
    a4.f32[0] = a7;
  }

  else
  {
    a4.f32[0] = a6 + 0.000001;
  }

  v11 = vmul_n_f32(vbsl_s8(vcgt_f32(v9, v8), v10, a3), a6);
  v12 = vmul_n_f32(*a2.i8, a6);
  *a2.i8 = vsub_f32(v11, v12);
  __asm { FMOV            V7.4S, #1.0 }

  _Q7.i64[0] = a2.i64[0];
  *&a2.i32[2] = a4.f32[0] - a6;
  v18 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(a4, a8), 0), _Q7, a2);
  v18.i32[3] = 0;
  v19 = vrecpeq_f32(v18);
  v20 = vmulq_f32(v19, vrecpsq_f32(v18, v19));
  v21 = vmulq_f32(v20, vrecpsq_f32(v18, v20));
  v22 = (a6 + a6) * v21.f32[0];
  v23 = vmuls_lane_f32(a6 + a6, *v21.f32, 1);
  v24 = vadd_f32(v12, v11);
  v25 = vmuls_n_f32(v24.f32[0], v21.f32[0]);
  v26 = vmuls_lane_f32(v24.f32[1], *v21.f32, 1);
  if (a4.f32[0] == INFINITY)
  {
    LODWORD(v27) = 0;
    v21.i32[1] = 0;
    v21.f32[0] = (a6 + a6) * v21.f32[0];
    *(&v27 + 1) = v23;
    __asm { FMOV            V2.4S, #-1.0 }

    _Q2.n128_u64[0] = __PAIR64__(LODWORD(v26), LODWORD(v25));
    v29 = -a6;
  }

  else
  {
    v30 = vmuls_lane_f32(-a4.f32[0], v21, 2);
    v29 = a6 * v30;
    LODWORD(v27) = 0;
    v21.i64[0] = LODWORD(v22);
    *(&v27 + 1) = v23;
    __asm { FMOV            V2.4S, #-1.0 }

    _Q2.n128_u64[0] = __PAIR64__(LODWORD(v26), LODWORD(v25));
    _Q2.n128_f32[2] = v30;
  }

  v31.n128_u64[0] = 0;
  v31.n128_u64[1] = LODWORD(v29);
  if (a1)
  {
    *v21.i64 = ARMatrixPerspectiveFlipZ(*v21.i64, v27, _Q2, v31);
  }

  return *v21.i64;
}

float ARIntrinsicsFromTangent(float a1, double a2)
{
  v2 = a1;
  v3 = 1.0 / a1;
  if (v2 < 0.000001)
  {
    v3 = 0.000001;
  }

  v4 = a2 * 0.5;
  __asm
  {
    FMOV            V2.2D, #0.5
    FMOV            V4.2D, #-0.5
    FMOV            V2.4S, #1.0
  }

  return v3 * v4;
}

float ARIntrinsicsFromTangents(int8x16_t a1, float64x2_t a2, float64_t a3, float a4)
{
  v4 = vextq_s8(a1, a1, 8uLL).u64[0];
  v5 = vzip1_s32(*a1.i8, v4);
  a2.f64[1] = a3;
  __asm { FMOV            V2.4S, #1.0 }

  return (-vcvt_f32_f64(vsubq_f64(vdivq_f64(vmulq_f64(a2, vcvtq_f64_f32(v5)), vcvtq_f64_f32(vsub_f32(v5, vzip2_s32(*a1.i8, v4)))), vdupq_lane_s64(COERCE__INT64(a4), 0))).f32[0] - a4) / *a1.i32;
}

float ARIntrinsicsFromDeviceFormat(void *a1)
{
  v1 = a1;
  width = CMVideoFormatDescriptionGetDimensions([v1 formatDescription]).width;
  [v1 videoFieldOfView];
  v4 = v3;

  v5 = tan(v4 * 3.14159265 / 180.0 * 0.5);
  __asm { FMOV            V2.4S, #1.0 }

  return width / (v5 + v5);
}

float32x2_t ARCameraFieldOfViewFromIntrinsics(float a1, double a2, double a3, double a4, double a5)
{
  v9 = *(&a2 + 1);
  v10 = atan(a4 / (a1 + a1));
  v6 = atan(a5 / (v9 + v9));
  v7.f64[0] = v10;
  v7.f64[1] = v6;
  return vcvt_f32_f64(vaddq_f64(v7, v7));
}

double AREulerAnglesFromMatrix(__n128 a1, __n128 a2, __n128 a3)
{
  if (a3.n128_f32[1] >= 1.0)
  {
    atan2f(-a1.n128_f32[2], -a2.n128_f32[2]);
    LODWORD(v3) = -1077342245;
LABEL_6:
    HIDWORD(v3) = 0;
    return v3;
  }

  if (a3.n128_f32[1] <= -1.0)
  {
    atan2f(a1.n128_f32[2], a2.n128_f32[2]);
    LODWORD(v3) = 1070141403;
    goto LABEL_6;
  }

  v6 = a3;
  v7 = a2.n128_f32[1];
  v5 = a1.n128_f32[1];
  v8 = asinf(-a3.n128_f32[1]);
  v6.n128_u32[0] = atan2f(v6.n128_f32[0], v6.n128_f32[2]);
  atan2f(v5, v7);
  return COERCE_DOUBLE(__PAIR64__(v6.n128_u32[0], LODWORD(v8)));
}

float32x2_t ARInnerScaleFromMatrix(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a1);
  v3 = vmulq_f32(a2, a2);
  return vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v3, v3, 8uLL)), vadd_f32(vzip1_s32(*v2.i8, *v3.i8), vzip2_s32(*v2.i8, *v3.i8))));
}

double ARNormalizedTransform(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  *&v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  *v1.f32 = vrsqrte_f32(v2);
  *v1.f32 = vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32)));
  *&result = vmulq_n_f32(a1, vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32))).f32[0]).u64[0];
  return result;
}

double ARMatrixMakeLookAt(double a1, float32x4_t a2)
{
  v2 = vnegq_f32(a2);
  v3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL), xmmword_1C25F40D0), xmmword_1C25F40E0, a2);
  v4 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  v5 = vmulq_f32(v3, v3);
  *&v6 = v5.f32[1] + (v5.f32[2] + v5.f32[0]);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  *&result = vmulq_n_f32(v4, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]).u64[0];
  return result;
}

uint64_t AREqualTransforms(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = vabdq_f32(a1, a5);
  v9 = vdupq_n_s32(0x38FA0000u);
  return vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v9, v8), vcgeq_f32(v9, vabdq_f32(a2, a6))), vandq_s8(vcgeq_f32(v9, vabdq_f32(a3, a7)), vcgeq_f32(v9, vabdq_f32(a4, a8))))) >> 31;
}

double ARRenderingToVisionCoordinateTransform()
{
  v1.columns[0] = _PromotedConst_61;
  v1.columns[1] = unk_1C25F4170;
  v1.columns[2] = xmmword_1C25F4180;
  v1.columns[3] = *(MEMORY[0x1E69E9B18] + 48);
  *&result = __invert_f4(v1);
  return result;
}

double ARMatrix4x4MirrorX(double a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4 = 0;
  v5 = *(MEMORY[0x1E69E9B18] + 16);
  v6 = *(MEMORY[0x1E69E9B18] + 32);
  v7 = *(MEMORY[0x1E69E9B18] + 48);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v18 + v4) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C9080, COERCE_FLOAT(*(&v14 + v4))), v5, *(&v14 + v4), 1), v6, *(&v14 + v4), 2), v7, *(&v14 + v4), 3);
    v4 += 16;
  }

  while (v4 != 64);
  v8 = 0;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v14 = xmmword_1C25C9080;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v18 + v8) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*(&v14 + v8))), v10, *(&v14 + v8), 1), v11, *(&v14 + v8), 2), v12, *(&v14 + v8), 3);
    v8 += 16;
  }

  while (v8 != 64);
  return *v18.i64;
}

double ARCameraToWorldTransformFromCMRotationMatrix(double *a1, uint64_t a2, int a3)
{
  v3 = *(MEMORY[0x1E69E9B18] + 16);
  v4 = a1[4];
  v7.i32[3] = HIDWORD(*MEMORY[0x1E69E9B18]);
  v7.f32[0] = v4;
  v5 = a1[5];
  v7.f32[1] = -v5;
  v6 = a1[3];
  v7.f32[2] = v6;
  v8 = a1[1];
  v12.n128_u32[3] = v3.u32[3];
  v12.n128_f32[0] = -v8;
  v16 = *(MEMORY[0x1E69E9B18] + 32);
  v9 = *(MEMORY[0x1E69E9B18] + 48);
  v10 = a1[2];
  v12.n128_f32[1] = v10;
  v11 = *a1;
  v12.n128_f32[2] = -v11;
  v13 = a1[7];
  v16.n128_f32[0] = -v13;
  v14 = a1[8];
  v16.n128_f32[1] = v14;
  v15 = a1[6];
  v16.n128_f32[2] = -v15;
  if (a2 == 2)
  {
    v17 = 0;
    if (a3)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v19 = vbslq_s8(vdupq_n_s32(v18), *MEMORY[0x1E69E9B18], xmmword_1C25C9080);
    v26 = v7;
    v27 = v12;
    v28 = v16;
    v29 = v9;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    do
    {
      *(&v30 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v26 + v17))), v3, *&v26.f32[v17 / 4], 1), xmmword_1C25C9070, *(&v26 + v17), 2), v9, *(&v26 + v17), 3);
      v17 += 16;
    }

    while (v17 != 64);
    v20 = 0;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v26 = v19;
    v27 = v3;
    v28 = xmmword_1C25C9070;
    v29 = v9;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    do
    {
      *(&v30 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v26 + v20))), v22, *&v26.f32[v20 / 4], 1), v23, *(&v26 + v20), 2), v24, *(&v26 + v20), 3);
      v20 += 16;
    }

    while (v20 != 64);
    v7.i64[0] = v30.i64[0];
  }

  else if (a3)
  {
    *v7.i64 = ARMatrix4x4MirrorX(*v7.i64, v12, v16, v9);
  }

  return *v7.i64;
}

double ARWorldToCameraTransformFromCMRotationMatrix(double *a1, uint64_t a2, int a3)
{
  v3 = *(MEMORY[0x1E69E9B18] + 16);
  v4 = a1[4];
  v7.i32[3] = HIDWORD(*MEMORY[0x1E69E9B18]);
  v7.f32[0] = v4;
  v5 = a1[1];
  v7.f32[1] = -v5;
  v6 = a1[7];
  v7.f32[2] = -v6;
  v8 = a1[5];
  v11.n128_f32[0] = -v8;
  v9 = a1[2];
  v11.n128_f32[1] = v9;
  *&v10 = a1[8];
  v11.n128_u64[1] = __PAIR64__(v3.u32[3], v10);
  v16 = *(MEMORY[0x1E69E9B18] + 32);
  v12 = *(MEMORY[0x1E69E9B18] + 48);
  v13 = a1[3];
  v16.n128_f32[0] = v13;
  v14 = *a1;
  v16.n128_f32[1] = -v14;
  v15 = a1[6];
  v16.n128_f32[2] = -v15;
  if (a2 == 2)
  {
    v17 = 0;
    if (a3)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v19 = vbslq_s8(vdupq_n_s32(v18), *MEMORY[0x1E69E9B18], xmmword_1C25C9080);
    v26 = v7;
    v27 = v11;
    v28 = v16;
    v29 = v12;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    do
    {
      *(&v30 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v26 + v17))), v3, *&v26.f32[v17 / 4], 1), xmmword_1C25C9070, *(&v26 + v17), 2), v12, *(&v26 + v17), 3);
      v17 += 16;
    }

    while (v17 != 64);
    v20 = 0;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v26 = v19;
    v27 = v3;
    v28 = xmmword_1C25C9070;
    v29 = v12;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    do
    {
      *(&v30 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v26 + v20))), v22, *&v26.f32[v20 / 4], 1), v23, *(&v26 + v20), 2), v24, *(&v26 + v20), 3);
      v20 += 16;
    }

    while (v20 != 64);
    v7.i64[0] = v30.i64[0];
  }

  else if (a3)
  {
    *v7.i64 = ARMatrix4x4MirrorX(*v7.i64, v11, v16, v12);
  }

  return *v7.i64;
}

__n128 ARMatrix3x3FromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 objectAtIndexedSubscript:0];
  v8 = ARVector3FromArray(v2);
  v3 = [v1 objectAtIndexedSubscript:1];
  v7 = ARVector3FromArray(v3);
  v4 = [v1 objectAtIndexedSubscript:2];

  v6 = ARVector3FromArray(v4).n128_u32[0];
  result.n128_u64[0] = vzip1q_s32(v8, v7).u64[0];
  result.n128_u32[2] = v6;
  return result;
}

__n128 ARVector3FromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 objectAtIndexedSubscript:0];
  [v2 floatValue];
  v11 = v3;
  v4 = [v1 objectAtIndexedSubscript:1];
  [v4 floatValue];
  v10 = v5;
  v6 = [v1 objectAtIndexedSubscript:2];

  [v6 floatValue];
  v9 = v7;

  result.n128_u32[0] = v11;
  result.n128_u32[1] = v10;
  result.n128_u32[2] = v9;
  return result;
}

__n128 ARMatrix3x3FromRowMajorFlatArray(void *a1)
{
  v1 = a1;
  v2 = [v1 subarrayWithRange:{0, 3}];
  v8 = ARVector3FromArray(v2);
  v3 = [v1 subarrayWithRange:{3, 3}];
  v7 = ARVector3FromArray(v3);
  v4 = [v1 subarrayWithRange:{6, 3}];

  v6 = ARVector3FromArray(v4).n128_u32[0];
  result.n128_u64[0] = vzip1q_s32(v8, v7).u64[0];
  result.n128_u32[2] = v6;
  return result;
}

__n128 ARMatrix3x3FromColumnMajorFlatArray(void *a1)
{
  v1 = a1;
  v2 = [v1 subarrayWithRange:{0, 3}];
  v6 = ARVector3FromArray(v2);
  v3 = [v1 subarrayWithRange:{3, 3}];
  ARVector3FromArray(v3);
  v4 = [v1 subarrayWithRange:{6, 3}];

  ARVector3FromArray(v4);
  return v6;
}

__n128 ARMatrix4x3FromRowMajorFlatArray(void *a1)
{
  v1 = a1;
  v2 = [v1 subarrayWithRange:{0, 4}];
  v8 = ARVector4FromArray(v2);
  v3 = [v1 subarrayWithRange:{4, 4}];
  v7 = ARVector4FromArray(v3);
  v4 = [v1 subarrayWithRange:{8, 4}];

  v6 = ARVector4FromArray(v4).n128_u32[0];
  result.n128_u64[0] = vzip1q_s32(v8, v7).u64[0];
  result.n128_u32[2] = v6;
  return result;
}

__n128 ARVector4FromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 objectAtIndexedSubscript:0];
  [v2 floatValue];
  v14 = v3;
  v4 = [v1 objectAtIndexedSubscript:1];
  [v4 floatValue];
  v13 = v5;
  v6 = [v1 objectAtIndexedSubscript:2];
  [v6 floatValue];
  v12 = v7;
  v8 = [v1 objectAtIndexedSubscript:3];

  [v8 floatValue];
  *&v9 = __PAIR64__(v13, v14);
  *(&v9 + 1) = __PAIR64__(v10, v12);
  v15 = v9;

  return v15;
}

id ARMatrix3x3ToColumnMajorFlatArray(__n128 a1, __n128 a2, __n128 a3)
{
  v20[9] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v20[0] = v3;
  HIDWORD(v4) = a1.n128_u32[1];
  LODWORD(v4) = a1.n128_u32[1];
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v20[1] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v20[2] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:a2.n128_f64[0]];
  v20[3] = v7;
  HIDWORD(v8) = a2.n128_u32[1];
  LODWORD(v8) = a2.n128_u32[1];
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v20[4] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v20[5] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:a3.n128_f64[0]];
  v20[6] = v11;
  HIDWORD(v12) = a3.n128_u32[1];
  LODWORD(v12) = a3.n128_u32[1];
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v20[7] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v20[8] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:9];

  return v15;
}

id ARMatrix4x4ToColumnMajorFlatArray(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v29[16] = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v29[0] = v24;
  HIDWORD(v4) = a1.n128_u32[1];
  LODWORD(v4) = a1.n128_u32[1];
  v23 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v29[1] = v23;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v29[2] = v22;
  a1.n128_u64[0] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3]))}];
  v29[3] = a1.n128_u64[0];
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:a2.n128_f64[0]];
  v29[4] = v21;
  HIDWORD(v5) = a2.n128_u32[1];
  LODWORD(v5) = a2.n128_u32[1];
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v29[5] = v20;
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v29[6] = v19;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  v29[7] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:a3.n128_f64[0]];
  v29[8] = v7;
  HIDWORD(v8) = a3.n128_u32[1];
  LODWORD(v8) = a3.n128_u32[1];
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v29[9] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v29[10] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[3]))}];
  v29[11] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:a4.n128_f64[0]];
  v29[12] = v12;
  HIDWORD(v13) = a4.n128_u32[1];
  LODWORD(v13) = a4.n128_u32[1];
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v29[13] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  v29[14] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  v29[15] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:16];

  return v17;
}

float64x2_t ARMatrix4x4ToColumnMajorFlatCArray(float64x2_t *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  *a1 = vcvtq_f64_f32(*a2.f32);
  a1[1] = vcvt_hight_f64_f32(a2);
  a1[2] = vcvtq_f64_f32(*a3.f32);
  a1[3] = vcvt_hight_f64_f32(a3);
  a1[4] = vcvtq_f64_f32(*a4.f32);
  a1[5] = vcvt_hight_f64_f32(a4);
  result = vcvtq_f64_f32(*a5.f32);
  a1[6] = result;
  a1[7] = vcvt_hight_f64_f32(a5);
  return result;
}

float ARMatrix4x4ToColumnMajor3x4FlatCArray(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 16);
  *(a2 + 16) = *(a1 + 20);
  *(a2 + 20) = *(a1 + 24);
  *(a2 + 24) = *(a1 + 32);
  *(a2 + 28) = *(a1 + 36);
  *(a2 + 32) = *(a1 + 40);
  *(a2 + 36) = *(a1 + 48);
  *(a2 + 40) = *(a1 + 52);
  result = *(a1 + 56);
  *(a2 + 44) = result;
  return result;
}

__n128 ARMatrix4x4FromRowMajorFlatArray(void *a1)
{
  v1 = a1;
  v2 = [v1 subarrayWithRange:{0, 4}];
  v9 = ARVector4FromArray(v2);
  v3 = [v1 subarrayWithRange:{4, 4}];
  v8 = ARVector4FromArray(v3);
  v4 = [v1 subarrayWithRange:{8, 4}];
  v7 = ARVector4FromArray(v4);
  v5 = [v1 subarrayWithRange:{12, 4}];

  v10 = vzip1q_s32(vzip1q_s32(v9, v7), vzip1q_s32(v8, ARVector4FromArray(v5)));
  return v10;
}

__n128 ARMatrix4x4FromColumnMajorFlatArray(void *a1)
{
  v1 = a1;
  v2 = [v1 subarrayWithRange:{0, 4}];
  v7 = ARVector4FromArray(v2);
  v3 = [v1 subarrayWithRange:{4, 4}];
  ARVector4FromArray(v3);
  v4 = [v1 subarrayWithRange:{8, 4}];
  ARVector4FromArray(v4);
  v5 = [v1 subarrayWithRange:{12, 4}];

  ARVector4FromArray(v5);
  return v7;
}

__n128 ARVector3dFromArray@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v13 = v5;
  v6 = [v3 objectAtIndexedSubscript:1];
  [v6 doubleValue];
  v12 = v7;
  v8 = [v3 objectAtIndexedSubscript:2];

  [v8 doubleValue];
  v11 = v9;
  v9.n128_u64[0] = v13;
  v9.n128_u64[1] = v12;
  v14 = v9;

  result = v14;
  *a2 = v14;
  a2[1] = v11;
  return result;
}

void ARVector4dFromArray(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  v16 = [v3 objectAtIndexedSubscript:0];
  [v16 doubleValue];
  v15 = v4;
  v5 = [v3 objectAtIndexedSubscript:1];
  [v5 doubleValue];
  v14 = v6;
  v7 = [v3 objectAtIndexedSubscript:2];
  [v7 doubleValue];
  v13 = v8;
  v9 = [v3 objectAtIndexedSubscript:3];

  [v9 doubleValue];
  *&v10 = v13;
  *(&v10 + 1) = v11;
  *&v12 = v15;
  *(&v12 + 1) = v14;
  *a2 = v12;
  a2[1] = v10;
}

id ARVector3ToArray(__n128 a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v8[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v8[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v5;
}

id ARVector3dToArray(double *a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v1 = a1[2];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*a1];
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v7 + 1)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:v1];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v5;
}

id ARVector4ToArray(__n128 a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v9[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v9[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v9[2] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3]))}];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v6;
}

id ARVector4dToArray(__int128 *a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  *v8 = a1[1];
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*a1];
  v9[0] = v1;
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v7 + 1)];
  v9[1] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:v8[0]];
  v9[2] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:v8[1]];
  v9[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v5;
}

double ARVector2FromNSData(void *a1)
{
  v2 = 0.0;
  [a1 getBytes:&v2 length:8];
  return v2;
}

double ARVector3FromNSData(void *a1)
{
  v3 = 0;
  v2 = 0.0;
  [a1 getBytes:&v2 length:16];
  return v2;
}

double ARVector3dFromNSData@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v6 = 0;
  v5 = 0uLL;
  [a1 getBytes:&v5 length:32];
  result = *&v5;
  v4 = v6;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

double ARMatrix3x3FromNSData(void *a1)
{
  memset(v2, 0, sizeof(v2));
  [a1 getBytes:v2 length:48];
  return *v2;
}

double ARMatrix4x3FromNSData(void *a1)
{
  memset(v2, 0, sizeof(v2));
  [a1 getBytes:v2 length:64];
  return *v2;
}

double ARMatrix4x4FromNSData(void *a1)
{
  memset(v2, 0, sizeof(v2));
  [a1 getBytes:v2 length:64];
  return *v2;
}

__n128 ARMatrix4x4FromDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"translation"];
  objc_opt_class();
  v18 = 0u;
  if (objc_opt_isKindOfClass())
  {
    v18 = ARVector3FromArray(v2);
  }

  v3 = [v1 objectForKeyedSubscript:{@"rotation", *&v18}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = *MEMORY[0x1E69E9B10];
  if (isKindOfClass)
  {
    v5 = ARVector4FromArray(v3);
    if (fabsf(v5.n128_f32[3]) > 0.00000011921)
    {
      v6 = vmulq_f32(v5, v5);
      if (sqrtf(v6.f32[2] + vaddv_f32(*v6.f32)) > 0.00000011921)
      {
        v20 = v5;
        v7 = __sincosf_stret(v5.n128_f32[3] * 0.5);
        v8 = vmulq_n_f32(v20, v7.__sinval);
        v8.i32[3] = LODWORD(v7.__cosval);
        *v9.i64 = simd_matrix4x4(v8);
        v19 = v9;
      }
    }
  }

  v10 = [v1 objectForKeyedSubscript:@"scale"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = ARVector3FromArray(v10);
    v12 = vmulq_f32(v11, v11);
    if (sqrtf(v12.f32[2] + vaddv_f32(*v12.f32)) > 0.00000011921)
    {
      v19 = vmulq_n_f32(v19, v11.n128_f32[0]);
    }

    v10 = 0;
  }

  v13 = [v1 objectForKeyedSubscript:@"perspective"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = ARVector4FromArray(v13).n128_u32[0];
    v15 = v19;
    v15.i32[3] = v14;
    v21 = v15;
  }

  else
  {
    v16 = v19;
    v16.i32[3] = 0;
    v21 = v16;
  }

  return v21;
}

void sub_1C25A37C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int16 buf)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v14 = objc_begin_catch(a1);
  if (ARShouldUseLogTypeError_onceToken_55 != -1)
  {
    ARMatrix4x4FromDictionary_cold_1();
  }

  v15 = ARShouldUseLogTypeError_internalOSVersion_55;
  v16 = _ARLogGeneral_50();
  v17 = v16;
  if (v15 == 1)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *(v13 - 64) = 0;
      v18 = "Error reading matrix from dictionary";
      p_buf = (v13 - 64);
      v20 = v17;
      v21 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_1C241C000, v20, v21, v18, p_buf, 2u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    buf = 0;
    v18 = "Error: Error reading matrix from dictionary";
    p_buf = &buf;
    v20 = v17;
    v21 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

  objc_end_catch();
  JUMPOUT(0x1C25A37A4);
}

id _ARLogGeneral_50()
{
  if (_ARLogGeneral_onceToken_53 != -1)
  {
    _ARLogGeneral_cold_1_50();
  }

  v1 = _ARLogGeneral_logObj_53;

  return v1;
}

id ARMatrix4x4Dictionary(int a1, int a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, __n128 a6)
{
  v93[3] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_new();
  v9 = a4;
  v10 = vmulq_f32(a3, a3);
  *v11.i32 = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
  v12 = vmulq_f32(v9, v9);
  *v13.i32 = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  v14 = vmulq_f32(a5, a5);
  *v15.i32 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
  v84 = *&v13;
  v85 = *&v11;
  v16 = vdivq_f32(a3, vdupq_lane_s32(v11, 0));
  v17 = vdivq_f32(a4, vdupq_lane_s32(v13, 0));
  v83 = *&v15;
  v18 = vdivq_f32(a5, vdupq_lane_s32(v15, 0));
  v19 = v18.f32[2] + (v16.f32[0] + v17.f32[1]);
  if (v19 >= 0.0)
  {
    v26 = sqrtf(v19 + 1.0);
    v27 = v26 + v26;
    v28 = vrecpe_f32(COERCE_UNSIGNED_INT(v26 + v26));
    v29 = vmul_f32(v28, vrecps_f32(COERCE_UNSIGNED_INT(v26 + v26), v28));
    v29.f32[0] = vmul_f32(v29, vrecps_f32(COERCE_UNSIGNED_INT(v26 + v26), v29)).f32[0];
    v9.f32[0] = (v17.f32[2] - v18.f32[1]) * v29.f32[0];
    v36 = (v18.f32[0] - v16.f32[2]) * v29.f32[0];
    v37 = (v16.f32[1] - v17.f32[0]) * v29.f32[0];
    v30 = v27 * 0.25;
  }

  else
  {
    if (v16.f32[0] < v17.f32[1] || v16.f32[0] < v18.f32[2])
    {
      v21 = 1.0 - v16.f32[0];
      if (v17.f32[1] >= v18.f32[2])
      {
        v39 = sqrtf(v17.f32[1] + (v21 - v18.f32[2]));
        *&v40 = v39 + v39;
        v41 = vrecpe_f32(v40);
        v42 = vmul_f32(v41, vrecps_f32(v40, v41));
        v35 = vmul_f32(v42, vrecps_f32(v40, v42)).f32[0];
        v9.f32[0] = (v16.f32[1] + v17.f32[0]) * v35;
        v36 = *&v40 * 0.25;
        v37 = (v17.f32[2] + v18.f32[1]) * v35;
        v38 = v18.f32[0] - v16.f32[2];
      }

      else
      {
        v22 = sqrtf(v18.f32[2] + (v21 - v17.f32[1]));
        v23 = v22 + v22;
        v24 = vrecpe_f32(COERCE_UNSIGNED_INT(v22 + v22));
        v25 = vmul_f32(v24, vrecps_f32(COERCE_UNSIGNED_INT(v22 + v22), v24));
        v35 = vmul_f32(v25, vrecps_f32(COERCE_UNSIGNED_INT(v22 + v22), v25)).f32[0];
        v9.f32[0] = (v16.f32[2] + v18.f32[0]) * v35;
        v36 = (v17.f32[2] + v18.f32[1]) * v35;
        v37 = v23 * 0.25;
        v38 = v16.f32[1] - v17.f32[0];
      }
    }

    else
    {
      v31 = sqrtf(v16.f32[0] + ((1.0 - v17.f32[1]) - v18.f32[2]));
      *&v32 = v31 + v31;
      v33 = vrecpe_f32(v32);
      v34 = vmul_f32(v33, vrecps_f32(v32, v33));
      v35 = vmul_f32(v34, vrecps_f32(v32, v34)).f32[0];
      v9.f32[0] = *&v32 * 0.25;
      v36 = (v16.f32[1] + v17.f32[0]) * v35;
      v37 = (v16.f32[2] + v18.f32[0]) * v35;
      v38 = v17.f32[2] - v18.f32[1];
    }

    v30 = v38 * v35;
  }

  v9.f32[1] = v36;
  v9.f32[2] = v37;
  v43 = vmulq_f32(v9, v9);
  v43.f32[0] = v43.f32[2] + vaddv_f32(*v43.f32);
  v80 = v43.i64[0];
  v81 = v9;
  v44 = atan2f(sqrtf(v43.f32[0]), v30);
  v45 = v44 + v44;
  v46 = [MEMORY[0x1E696AD98] numberWithFloat:a6.n128_f64[0]];
  v93[0] = v46;
  HIDWORD(v47) = a6.n128_u32[1];
  LODWORD(v47) = a6.n128_u32[1];
  v48 = [MEMORY[0x1E696AD98] numberWithFloat:v47];
  v93[1] = v48;
  v49 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a6.n128_u32[1], a6.n128_u32[2]))}];
  v93[2] = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:3];
  [v8 setObject:v50 forKeyedSubscript:@"translation"];

  if (fabsf(v45) <= 0.00000011921)
  {
    [v8 setObject:&unk_1F42593E8 forKeyedSubscript:{@"rotation", v80}];
    if (!a1)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v52.i32[1] = 0;
  v53 = vrsqrte_f32(v80);
  v54 = vmul_f32(v53, vrsqrts_f32(v80, vmul_f32(v53, v53)));
  LODWORD(v55) = vmul_f32(v54, vrsqrts_f32(v80, vmul_f32(v54, v54))).u32[0];
  v56 = v81;
  v57 = vmulq_n_f32(v81, v55);
  v56.f32[0] = v57.f32[2] + vaddv_f32(*v57.f32);
  v51.i64[0] = 0;
  v58 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v51, v56), 0), vnegq_f32(v57), v57);
  if (v56.f32[0] < 0.0)
  {
    v45 = -v45;
  }

  v59 = vmulq_f32(v58, v58);
  v52.f32[0] = v59.f32[2] + vaddv_f32(*v59.f32);
  *v59.f32 = vrsqrte_f32(v52);
  *v59.f32 = vmul_f32(*v59.f32, vrsqrts_f32(v52, vmul_f32(*v59.f32, *v59.f32)));
  v82 = vmulq_n_f32(v58, vmul_f32(*v59.f32, vrsqrts_f32(v52, vmul_f32(*v59.f32, *v59.f32))).f32[0]);
  v60 = [MEMORY[0x1E696AD98] numberWithFloat:v80];
  v92[0] = v60;
  HIDWORD(v61) = v82.i32[1];
  LODWORD(v61) = v82.i32[1];
  v62 = [MEMORY[0x1E696AD98] numberWithFloat:v61];
  v92[1] = v62;
  v63 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(v82.u32[1], v82.u32[2]))}];
  v92[2] = v63;
  *&v64 = v45;
  v65 = [MEMORY[0x1E696AD98] numberWithFloat:v64];
  v92[3] = v65;
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:4];
  [v8 setObject:v66 forKeyedSubscript:@"rotation"];

  if (a1)
  {
LABEL_18:
    if (fabsf(*&v85 + -1.0) > 0.000011921 || fabsf(*&v84 + -1.0) > 0.000011921 || fabsf(*&v83 + -1.0) > 0.000011921)
    {
      v67 = [MEMORY[0x1E696AD98] numberWithFloat:v85];
      v91[0] = v67;
      v68 = [MEMORY[0x1E696AD98] numberWithFloat:v84];
      v91[1] = v68;
      v69 = [MEMORY[0x1E696AD98] numberWithFloat:v83];
      v91[2] = v69;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
      [v8 setObject:v70 forKeyedSubscript:@"scale"];
    }
  }

LABEL_22:
  if (a2 && (fabsf(a3.f32[3]) > 0.00000011921 || fabsf(a4.f32[3]) > 0.00000011921 || fabsf(a5.f32[3]) > 0.00000011921 || fabsf(a6.n128_f32[3] + -1.0) > 0.00000011921))
  {
    v71 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v90[0] = v71;
    LODWORD(v72) = a4.i32[3];
    v73 = [MEMORY[0x1E696AD98] numberWithFloat:v72];
    v90[1] = v73;
    LODWORD(v74) = a5.i32[3];
    v75 = [MEMORY[0x1E696AD98] numberWithFloat:v74];
    v90[2] = v75;
    LODWORD(v76) = a6.n128_u32[3];
    v77 = [MEMORY[0x1E696AD98] numberWithFloat:v76];
    v90[3] = v77;
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:4];
    [v8 setObject:v78 forKeyedSubscript:@"perspective"];
  }

  return v8;
}

float64x2_t ARMatrix4x4FloatToDouble@<Q0>(float64x2_t *a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>, float32x4_t a4@<Q2>, float32x4_t a5@<Q3>)
{
  *a1 = vcvtq_f64_f32(*a2.f32);
  a1[1] = vcvt_hight_f64_f32(a2);
  a1[2] = vcvtq_f64_f32(*a3.f32);
  a1[3] = vcvt_hight_f64_f32(a3);
  a1[4] = vcvtq_f64_f32(*a4.f32);
  a1[5] = vcvt_hight_f64_f32(a4);
  result = vcvt_hight_f64_f32(a5);
  a1[6] = vcvtq_f64_f32(*a5.f32);
  a1[7] = result;
  return result;
}

void ARYawDifference(__n128 a1, __n128 a2, double a3, double a4, __n128 a5, __n128 a6)
{
  v6 = 0;
  v7 = 0;
  v8 = 0.0;
  while (1)
  {
    v25 = a1;
    v9 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
    v24 = a2;
    v10 = sqrtf((*(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) * *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)))) + (v9 * v9));
    v23 = a5;
    v11 = *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
    v22 = a6;
    if (vabds_f32(v10, sqrtf((*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) * *(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)))) + (v11 * v11))) > 0.025)
    {
      break;
    }

    if (v10 > v8)
    {
      v8 = v10;
      v6 = v7;
    }

    if (++v7 == 3)
    {
      v21 = a2;
      v12 = (&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
      v13 = (&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
      v14 = *(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
      v20 = a1;
      atan2f(v14, *(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3))));
      v19 = a6;
      v15 = *v13;
      v18 = a5;
      atan2f(v15, *v12);
      return;
    }
  }
}

id ARMatrix4x4Description(int a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *v6.i64 = AREulerAnglesFromMatrix(a2, a3, a4);
  v7 = vdivq_f32(vmulq_f32(v6, vdupq_n_s32(0x43340000u)), vdupq_n_s32(0x40490FDBu));
  v8 = [MEMORY[0x1E696AD60] stringWithFormat:@"<translation=(%f %f %f) rotation=(%0.2f° %0.2f° %0.2f°)", a5.n128_f32[0], a5.n128_f32[1], a5.n128_f32[2], v7.f32[0], v7.f32[1], v7.f32[2]];
  v9 = v8;
  if (a1)
  {
    [v8 appendFormat:@" matrix=\n(%f, %f, %f, %f)\n(%f, %f, %f, %f)\n(%f, %f, %f, %f)\n(%f, %f, %f, %f)\n", a2.n128_f32[0], a3.n128_f32[0], a4.n128_f32[0], a5.n128_f32[0], a2.n128_f32[1], a3.n128_f32[1], a4.n128_f32[1], a5.n128_f32[1], a2.n128_f32[2], a3.n128_f32[2], a4.n128_f32[2], a5.n128_f32[2], a2.n128_f32[3], a3.n128_f32[3], a4.n128_f32[3], a5.n128_f32[3]];
  }

  [v9 appendString:@">"];

  return v9;
}

void ARCGRectRotate(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  memset(&v15, 0, sizeof(v15));
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&v14.a = *MEMORY[0x1E695EFD0];
  v11 = *&v14.a;
  *&v14.c = v10;
  *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
  v9 = *&v14.tx;
  CGAffineTransformRotate(&v15, &v14, a1 * 3.14159265 / 180.0);
  *&v13.a = v11;
  *&v13.c = v10;
  *&v13.tx = v9;
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformTranslate(&v14, &v13, -0.5, -0.5);
  v12 = v14;
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformInvert(&v13, &v12);
  v12 = v14;
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  v17 = CGRectApplyAffineTransform(v16, &v12);
  v12 = v15;
  v18 = CGRectApplyAffineTransform(v17, &v12);
  v12 = v13;
  CGRectApplyAffineTransform(v18, &v12);
}

double ARWorldTransformFromVisionTransform(simd_float4x4 a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v7 = __invert_f4(a1);
  v5 = v7.columns[3];
  v6 = 0;
  v19.columns[0] = v7.columns[0];
  v7.columns[3] = *(MEMORY[0x1E69E9B18] + 48);
  v19.columns[1] = v7.columns[1];
  v19.columns[2] = v7.columns[2];
  v19.columns[3] = v5;
  memset(&v20, 0, sizeof(v20));
  do
  {
    v20.columns[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C9070, COERCE_FLOAT(*&v19.columns[v6])), xmmword_1C25C9080, *v19.columns[v6].f32, 1), xmmword_1C25C8BC0, v19.columns[v6], 2), v7.columns[3], v19.columns[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v13 = v20.columns[1];
  v14 = v20.columns[0];
  v11 = v20.columns[3];
  v12 = v20.columns[2];
  v7.columns[0] = _PromotedConst_61;
  v7.columns[1] = unk_1C25F4170;
  v7.columns[2] = xmmword_1C25F4180;
  v21 = __invert_f4(v7);
  v8 = 0;
  v19 = v21;
  memset(&v20, 0, sizeof(v20));
  do
  {
    v20.columns[v8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(*&v19.columns[v8])), v13, *v19.columns[v8].f32, 1), v12, v19.columns[v8], 2), v11, v19.columns[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  v9 = 0;
  v19 = v20;
  memset(&v20, 0, sizeof(v20));
  do
  {
    v20.columns[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*&v19.columns[v9])), a3, *v19.columns[v9].f32, 1), a4, v19.columns[v9], 2), a5, v19.columns[v9], 3);
    ++v9;
  }

  while (v9 != 4);
  return *v20.columns[0].i64;
}

double ARTransformFromVisionTransform(simd_float4x4 a1)
{
  v1 = a1.columns[3];
  v2 = 0;
  v9.columns[0] = a1.columns[0];
  a1.columns[3] = *(MEMORY[0x1E69E9B18] + 48);
  v9.columns[1] = a1.columns[1];
  v9.columns[2] = a1.columns[2];
  v9.columns[3] = v1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  do
  {
    *(&v10 + v2 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C9070, COERCE_FLOAT(*&v9.columns[v2])), xmmword_1C25C9080, *v9.columns[v2].f32, 1), xmmword_1C25C8BC0, v9.columns[v2], 2), a1.columns[3], v9.columns[v2], 3);
    ++v2;
  }

  while (v2 != 4);
  v7 = v11;
  v8 = v10;
  v5 = v13;
  v6 = v12;
  a1.columns[0] = _PromotedConst_61;
  a1.columns[1] = unk_1C25F4170;
  a1.columns[2] = xmmword_1C25F4180;
  v14 = __invert_f4(a1);
  v3 = 0;
  v9 = v14;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  do
  {
    *(&v10 + v3 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*&v9.columns[v3])), v7, *v9.columns[v3].f32, 1), v6, v9.columns[v3], 2), v5, v9.columns[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  return *v10.i64;
}

double ARVisionTransformFromARTransform(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v24.columns[3] = *(MEMORY[0x1E69E9B18] + 48);
  v24.columns[0] = _PromotedConst_61;
  v24.columns[1] = unk_1C25F4170;
  v24.columns[2] = xmmword_1C25F4180;
  v15 = v24.columns[3];
  v25 = __invert_f4(v24);
  v4 = 0;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  do
  {
    *(&v20 + v4) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25.columns[0], COERCE_FLOAT(*(&v16 + v4))), v25.columns[1], *(&v16 + v4), 1), v25.columns[2], *(&v16 + v4), 2), v25.columns[3], *(&v16 + v4), 3);
    v4 += 16;
  }

  while (v4 != 64);
  v5 = 0;
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v16 = xmmword_1C25C9070;
  v17 = xmmword_1C25C9080;
  v18 = xmmword_1C25C8BC0;
  v19 = v15;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  do
  {
    *(&v20 + v5) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(*(&v16 + v5))), v7, *(&v16 + v5), 1), v8, *(&v16 + v5), 2), v9, *(&v16 + v5), 3);
    v5 += 16;
  }

  while (v5 != 64);
  return *v20.i64;
}

double ARVisionTransformFromWorldTransform(__n128 a1, __n128 a2, __n128 a3, __n128 a4, simd_float4 a5, simd_float4 a6, simd_float4 a7, simd_float4 a8)
{
  v32.columns[0] = a5;
  v32.columns[1] = a6;
  v32.columns[2] = a7;
  v32.columns[3] = a8;
  v33 = __invert_f4(v32);
  v8 = 0;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  memset(&v30, 0, sizeof(v30));
  do
  {
    v30.columns[v8 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33.columns[0], COERCE_FLOAT(*(&v26 + v8))), v33.columns[1], *(&v26 + v8), 1), v33.columns[2], *(&v26 + v8), 2), v33.columns[3], *(&v26 + v8), 3);
    v8 += 16;
  }

  while (v8 != 64);
  v21 = v30.columns[1];
  v23 = v30.columns[0];
  v17 = v30.columns[3];
  v19 = v30.columns[2];
  v34.columns[3] = *(MEMORY[0x1E69E9B18] + 48);
  v34.columns[0] = _PromotedConst_61;
  v34.columns[1] = unk_1C25F4170;
  v34.columns[2] = xmmword_1C25F4180;
  v25 = v34.columns[3];
  v35 = __invert_f4(v34);
  v9 = 0;
  v26 = v23;
  v27 = v21;
  v28 = v19;
  v29 = v17;
  memset(&v30, 0, sizeof(v30));
  do
  {
    v30.columns[v9 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(&v26 + v9))), v35.columns[1], *(&v26 + v9), 1), v35.columns[2], *(&v26 + v9), 2), v35.columns[3], *(&v26 + v9), 3);
    v9 += 16;
  }

  while (v9 != 64);
  v10 = 0;
  v11 = v30.columns[0];
  v12 = v30.columns[1];
  v13 = v30.columns[2];
  v14 = v30.columns[3];
  v26 = xmmword_1C25C9070;
  v27 = xmmword_1C25C9080;
  v28 = xmmword_1C25C8BC0;
  v29 = v25;
  memset(&v30, 0, sizeof(v30));
  do
  {
    v30.columns[v10 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(*(&v26 + v10))), v12, *(&v26 + v10), 1), v13, *(&v26 + v10), 2), v14, *(&v26 + v10), 3);
    v10 += 16;
  }

  while (v10 != 64);
  v15 = v30;

  *&result = __invert_f4(v15);
  return result;
}

double ARVisionCameraTransformFromWorldTransform(__n128 a1, __n128 a2, __n128 a3, __n128 a4, simd_float4 a5, simd_float4 a6, simd_float4 a7, simd_float4 a8)
{
  v36.columns[0] = a5;
  v36.columns[1] = a6;
  v36.columns[2] = a7;
  v36.columns[3] = a8;
  v37 = __invert_f4(v36);
  v8 = 0;
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  do
  {
    *(&v32 + v8) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], COERCE_FLOAT(*(&v28 + v8))), v37.columns[1], v28.n128_u64[v8 / 8], 1), v37.columns[2], *(&v28 + v8), 2), v37.columns[3], *(&v28 + v8), 3);
    v8 += 16;
  }

  while (v8 != 64);
  v23 = v33;
  v26 = v32;
  v17 = v35;
  v20 = v34;
  v38.columns[0] = _PromotedConst_61;
  v38.columns[1] = unk_1C25F4170;
  v38.columns[2] = xmmword_1C25F4180;
  v38.columns[3] = *(MEMORY[0x1E69E9B18] + 48);
  v39 = __invert_f4(v38);
  v9 = 0;
  v28 = v26;
  v29 = v23;
  v30 = v20;
  v31 = v17;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  do
  {
    *(&v32 + v9) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39.columns[0], COERCE_FLOAT(*(&v28 + v9))), v39.columns[1], v28.n128_u64[v9 / 8], 1), v39.columns[2], *(&v28 + v9), 2), v39.columns[3], *(&v28 + v9), 3);
    v9 += 16;
  }

  while (v9 != 64);
  v24 = v33;
  v27 = v32;
  v18 = v35;
  v21 = v34;
  v10.n128_f64[0] = simd_matrix4x4(_PromotedConst_62);
  v11 = 0;
  v28 = v10;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  do
  {
    *(&v32 + v11) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v28 + v11))), v24, v28.n128_u64[v11 / 8], 1), v21, *(&v28 + v11), 2), v18, *(&v28 + v11), 3);
    v11 += 16;
  }

  while (v11 != 64);
  return *v32.i64;
}

double ARWorldVectorFromVisionVector(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = 0;
  v6 = *(MEMORY[0x1E69E9B18] + 48);
  v9[2] = xmmword_1C25C8BC0;
  v9[3] = v6;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  do
  {
    *(&v10 + v5 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(v9[v5])), a3, *&v9[v5], 1), a4, v9[v5], 2), a5, v9[v5], 3);
    ++v5;
  }

  while (v5 != 4);
  v7 = vaddq_f32(v13, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, a1.f32[0]), v11, *a1.f32, 1), v12, a1, 2));
  *&result = vdivq_f32(v7, vdupq_laneq_s32(v7, 3)).u64[0];
  return result;
}

float ARCameraDirectionFromCMAttitude(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 rotationMatrix];
    v3 = v9;
    [v2 rotationMatrix];
    v4 = v8;
  }

  else
  {
    v4 = 0.0;
    v3 = 0.0;
  }

  if (v4 * v4 + v3 * v3 >= 0.01)
  {
    v6 = atan2(v3, v4) * 0.318309886 * 180.0 + 90.0;
    if (v6 < 0.0)
    {
      v6 = v6 + 360.0;
    }

    if (v6 >= 360.0)
    {
      v5 = v6 + -360.0;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    v5 = NAN;
  }

  return v5;
}

double ARMatrix4x4FromRowMajorFlatBuffer(double *a1)
{
  *&v1 = *a1;
  *&v2 = a1[4];
  result = COERCE_DOUBLE(__PAIR64__(v2, v1));
  __asm { FMOV            V3.4S, #1.0 }

  return result;
}

float64x2_t ARMatrix4x4CopyToRowMajorFlatBuffer(float64x2_t *a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = vcvtq_f64_f32(vzip1_s32(*a2.i8, *a3.i8));
  v6 = vcvtq_f64_f32(vzip2_s32(*a2.i8, *a3.i8));
  result = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(a3, a3, 8uLL)));
  *a1 = v5;
  a1[1] = vcvtq_f64_f32(vzip1_s32(*a4.i8, *a5.i8));
  a1[2] = v6;
  a1[3] = vcvtq_f64_f32(vzip2_s32(*a4.i8, *a5.i8));
  a1[4] = result;
  a1[5] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(a5, a5, 8uLL)));
  return result;
}

uint64_t ARMatrix4x4ContainsNANValues()
{
  for (i = 0; i != 4; ++i)
  {
      ;
    }
  }

  return 0;
}

BOOL ARMatrix4x4ContainsScale(int32x4_t a1, int32x4_t a2, int32x4_t a3, __n128 a4)
{
  if (fabsf(a4.n128_f32[3] + -1.0) > 0.0000011921)
  {
    return 1;
  }

  v5 = 0;
  v6 = a1;
  v6.i32[3] = 0;
  v7 = a2;
  v7.i32[3] = 0;
  v8 = a3;
  v8.i32[3] = 0;
  v9 = vdupq_lane_s32(*a2.i8, 1);
  v10 = vzip1q_s32(a1, a2);
  v10.i32[2] = a3.i32[0];
  v11 = vzip2q_s32(a1, a2);
  v11.i32[2] = a3.i32[2];
  v12 = vzip2q_s32(vzip1q_s32(a1, a3), v9);
  v15[0] = v6;
  v15[1] = v7;
  v15[2] = v8;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  do
  {
    *(&v16 + v5 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v15[v5])), v12, *&v15[v5], 1), v11, v15[v5], 2);
    ++v5;
  }

  while (v5 != 3);
  v13 = vdupq_n_s32(0x35A00000u);
  v14 = vandq_s8(vandq_s8(vcgeq_f32(v13, vabdq_f32(v17, *(MEMORY[0x1E69E9B10] + 16))), vcgeq_f32(v13, vabdq_f32(v16, *MEMORY[0x1E69E9B10]))), vcgeq_f32(v13, vabdq_f32(v18, *(MEMORY[0x1E69E9B10] + 32))));
  v14.i32[3] = v14.i32[2];
  return (vminvq_u32(v14) & 0x80000000) == 0;
}

void ARInterpolateBetweenTransforms(simd_float3x3 a1, double a2, simd_float3 a3, simd_float3 a4, simd_float3 a5, double a6, float a7)
{
  v45.columns[1] = a4;
  v45.columns[2] = a5;
  v45.columns[0] = a3;
  *v14.i64 = simd_quaternion(a1);
  v50 = v14;
  *v15.i64 = simd_quaternion(v45);
  v16 = vmulq_f32(v50, v15);
  v17 = vextq_s8(v16, v16, 8uLL);
  *v16.f32 = vadd_f32(*v16.f32, *v17.f32);
  v16.f32[0] = vaddv_f32(*v16.f32);
  v17.i64[0] = 0;
  v18 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v16, v17)), 0), vnegq_f32(v15), v15);
  v19 = 1.0;
  v20 = 1.0 - a7;
  v21 = vsubq_f32(v50, v18);
  v22 = vmulq_f32(v21, v21);
  v49 = v18;
  v23 = vaddq_f32(v50, v18);
  v24 = vmulq_f32(v23, v23);
  v25 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)))));
  v26 = v25 + v25;
  v27 = (v25 + v25) == 0.0;
  v28 = 1.0;
  if (!v27)
  {
    v28 = sinf(v26) / v26;
  }

  v29 = v28;
  v30 = vrecpe_f32(LODWORD(v28));
  v31 = vmul_f32(v30, vrecps_f32(LODWORD(v29), v30));
  LODWORD(v32) = vmul_f32(v31, vrecps_f32(LODWORD(v29), v31)).u32[0];
  if ((v20 * v26) != 0.0)
  {
    v47 = v32;
    v31.f32[0] = sinf(v20 * v26);
    v32 = v47;
    v19 = v31.f32[0] / (v20 * v26);
  }

  v31.f32[0] = v20 * (v32 * v19);
  v33 = vdupq_lane_s32(v31, 0);
  v34 = a7;
  v35 = v26 * a7;
  v36 = 1.0;
  if (v35 != 0.0)
  {
    v46 = v33;
    v48 = v32;
    v37 = sinf(v35);
    v33 = v46;
    v32 = v48;
    v34 = a7;
    v36 = v37 / v35;
  }

  v38 = vmlaq_f32(vmulq_n_f32(v49, (v32 * v36) * v34), v50, v33);
  v39 = vmulq_f32(v38, v38);
  v40 = vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
  if (vaddv_f32(v40) == 0.0)
  {
    v41 = xmmword_1C25C8560;
  }

  else
  {
    v42 = vadd_f32(v40, vdup_lane_s32(v40, 1)).u32[0];
    v43 = vrsqrte_f32(v42);
    v44 = vmul_f32(v43, vrsqrts_f32(v42, vmul_f32(v43, v43)));
    v41 = vmulq_n_f32(v38, vmul_f32(v44, vrsqrts_f32(v42, vmul_f32(v44, v44))).f32[0]);
  }

  simd_matrix4x4(v41);
}

uint64_t ARMinMax(const float *a1, unsigned int a2, float32x2_t *a3)
{
  if (a1)
  {
    v4 = a2 <= 0;
  }

  else
  {
    v4 = 1;
  }

  result = !v4;
  if (result == 1)
  {
    v6 = vld1_dup_f32(a1);
    *a3 = v6;
    if (a2 >= 2)
    {
      v7 = (a1 + 1);
      v8 = a2 - 1;
      while (1)
      {
        v9 = *v7;
        if (*v7 > v6.f32[1])
        {
          break;
        }

        if (v9 < v6.f32[0])
        {
          v10 = 0;
          goto LABEL_14;
        }

LABEL_15:
        ++v7;
        if (!--v8)
        {
          return result;
        }
      }

      v10 = 1;
LABEL_14:
      v11 = v6;
      *(&v11 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v10 & 1))) = v9;
      v6 = v11;
      *a3 = v11;
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t ARInterpolateSorted(float *a1, uint64_t a2, int a3, float *a4, float a5)
{
  v5 = 0;
  if (a1)
  {
    if (a2)
    {
      v6 = (a3 - 1);
      if (a3 >= 1)
      {
        v7 = *a1;
        if (*a1 > a5 || a1[v6] < a5)
        {
          return 0;
        }

        if (a3 >= 2)
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          while (1)
          {
            v12 = v7;
            v7 = a1[v9 + 1];
            if (v12 > v7)
            {
              return 0;
            }

            if (v11)
            {
              v13 = v10;
            }

            else
            {
              v13 = v9;
            }

            v14 = v9 + 1;
            v11 |= v7 >= a5;
            if (v7 >= a5)
            {
              v10 = v13;
            }

            ++v9;
            if (v6 == v14)
            {
              v7 = a1[v10];
              goto LABEL_19;
            }
          }
        }

        v10 = 0;
LABEL_19:
        *a4 = *(a2 + 4 * v10) + (((a5 - v7) * (*(a2 + 4 * v10 + 4) - *(a2 + 4 * v10))) / (a1[v10 + 1] - v7));
        return 1;
      }
    }
  }

  return v5;
}

uint64_t kVTRotationFromARRotationAngle(uint64_t a1)
{
  result = 0;
  if (a1 > 89)
  {
    if (a1 == 90)
    {
      v3 = MEMORY[0x1E6984000];
    }

    else
    {
      if (a1 != 180)
      {
        return result;
      }

      v3 = MEMORY[0x1E6983FF0];
    }
  }

  else if (a1 == -90)
  {
    v3 = MEMORY[0x1E6983FF8];
  }

  else
  {
    if (a1)
    {
      return result;
    }

    v3 = MEMORY[0x1E6983FE8];
  }

  return *v3;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_56()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_55 = result;
  return result;
}

void sub_1C25A5BE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void (*)(uint64_t *));
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v6(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _ARLogGeneral_51()
{
  if (_ARLogGeneral_onceToken_54 != -1)
  {
    _ARLogGeneral_cold_1_51();
  }

  v1 = _ARLogGeneral_logObj_54;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_57()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_56 = result;
  return result;
}

uint64_t ARKitDaemonLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = ARKitDaemonLibraryCore_frameworkLibrary;
  v5 = ARKitDaemonLibraryCore_frameworkLibrary;
  if (!ARKitDaemonLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E817F120;
    v7 = *off_1E817F130;
    v8 = 0;
    v3[3] = _sl_dlopen();
    ARKitDaemonLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1C25A6088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ARKitDaemonLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ARKitDaemonLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ARKitDaemonLibrary()
{
  v0 = ARKitDaemonLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id getARDaemonClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getARDaemonClass_softClass;
  v7 = getARDaemonClass_softClass;
  if (!getARDaemonClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getARDaemonClass_block_invoke;
    v3[3] = &unk_1E817C268;
    v3[4] = &v4;
    __getARDaemonClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C25A625C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getARDaemonClass_block_invoke(uint64_t a1)
{
  ARKitDaemonLibrary();
  result = objc_getClass("ARDaemon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getARDaemonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getARDaemonClass_block_invoke_cold_1();
    return getARDaemonReplayBlockDelegateClass(v3);
  }

  return result;
}

id getARDaemonReplayBlockDelegateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getARDaemonReplayBlockDelegateClass_softClass;
  v7 = getARDaemonReplayBlockDelegateClass_softClass;
  if (!getARDaemonReplayBlockDelegateClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getARDaemonReplayBlockDelegateClass_block_invoke;
    v3[3] = &unk_1E817C268;
    v3[4] = &v4;
    __getARDaemonReplayBlockDelegateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C25A6394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getARDaemonReplayBlockDelegateClass_block_invoke(uint64_t a1)
{
  ARKitDaemonLibrary();
  result = objc_getClass("ARDaemonReplayBlockDelegate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getARDaemonReplayBlockDelegateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getARDaemonReplayBlockDelegateClass_block_invoke_cold_1();
    return ARDaemonLocalAnonymousListenerDaemon();
  }

  return result;
}

id ARDaemonLocalAnonymousListenerDaemon()
{
  WeakRetained = objc_loadWeakRetained(&sLocalAnonymousListenerDaemon);

  return WeakRetained;
}

id AROSVersionString()
{
  if (AROSVersionString_onceToken != -1)
  {
    AROSVersionString_cold_1();
  }

  v1 = AROSVersionString_buildVersion;

  return v1;
}

void __AROSVersionString_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = AROSVersionString_buildVersion;
  AROSVersionString_buildVersion = v0;
}

uint64_t ARInternalOSBuild()
{
  if (ARInternalOSBuild_onceToken != -1)
  {
    ARInternalOSBuild_cold_1();
  }

  return ARInternalOSBuild_internalVersion;
}

uint64_t __ARInternalOSBuild_block_invoke()
{
  result = os_variant_has_internal_content();
  ARInternalOSBuild_internalVersion = result;
  return result;
}

id ARDeviceString()
{
  if (ARDeviceString_onceToken != -1)
  {
    ARDeviceString_cold_1();
  }

  v1 = ARDeviceString_deviceString;

  return v1;
}

void __ARDeviceString_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = ARDeviceString_deviceString;
  ARDeviceString_deviceString = v0;
}

id ARVersionStringForIdentifier(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (ARVersionStringForIdentifier_onceToken != -1)
  {
    ARVersionStringForIdentifier_cold_1();
  }

  v2 = [ARVersionStringForIdentifier_versionDictionary objectForKeyedSubscript:v1];
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:v1];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 infoDictionary];
      v2 = [v5 objectForKeyedSubscript:@"CFBundleVersion"];

      if (v2)
      {
        [ARVersionStringForIdentifier_versionDictionary setObject:v2 forKeyedSubscript:v1];
      }

      goto LABEL_16;
    }

    if (ARShouldUseLogTypeError_onceToken_57 != -1)
    {
      ARVersionStringForIdentifier_cold_2();
    }

    v6 = ARShouldUseLogTypeError_internalOSVersion_57;
    v7 = _ARLogGeneral_52();
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v1;
        v9 = "Couldn't find bundle for name %@";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v10, v11, v9, &v13, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v1;
      v9 = "Error: Couldn't find bundle for name %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    v2 = 0;
LABEL_16:
  }

  return v2;
}

void __ARVersionStringForIdentifier_block_invoke()
{
  v0 = objc_opt_new();
  v1 = ARVersionStringForIdentifier_versionDictionary;
  ARVersionStringForIdentifier_versionDictionary = v0;
}

id _ARLogGeneral_52()
{
  if (_ARLogGeneral_onceToken_55 != -1)
  {
    _ARLogGeneral_cold_1_52();
  }

  v1 = _ARLogGeneral_logObj_55;

  return v1;
}

uint64_t ARDeviceIsiPad()
{
  if (ARDeviceIsiPad_onceToken != -1)
  {
    ARDeviceIsiPad_cold_1();
  }

  return s_deviceIsiPad;
}

void __ARDeviceIsiPad_block_invoke()
{
  v0 = MGCopyAnswer();
  s_deviceIsiPad = [v0 integerValue] == 3;
}

uint64_t ARDeviceHasBackCamera()
{
  if (ARDeviceHasBackCamera_onceToken != -1)
  {
    ARDeviceHasBackCamera_cold_1();
  }

  return ARDeviceHasBackCamera_s_deviceHasBackCamera;
}

uint64_t __ARDeviceHasBackCamera_block_invoke()
{
  result = MGGetBoolAnswer();
  ARDeviceHasBackCamera_s_deviceHasBackCamera = result;
  return result;
}

uint64_t ARDeviceHasFrontCamera()
{
  if (ARDeviceHasFrontCamera_onceToken != -1)
  {
    ARDeviceHasFrontCamera_cold_1();
  }

  return ARDeviceHasFrontCamera_s_deviceHasFrontCamera;
}

uint64_t __ARDeviceHasFrontCamera_block_invoke()
{
  result = MGGetBoolAnswer();
  ARDeviceHasFrontCamera_s_deviceHasFrontCamera = result;
  return result;
}

uint64_t ARDeviceHasHomeButton()
{
  if (ARDeviceHasHomeButton_onceToken != -1)
  {
    ARDeviceHasHomeButton_cold_1();
  }

  return s_deviceHasHomeButton;
}

uint64_t __ARDeviceHasHomeButton_block_invoke()
{
  result = MGGetSInt32Answer();
  s_deviceHasHomeButton = result != 2;
  return result;
}

uint64_t ARDeviceHasIsland()
{
  if (ARDeviceHasIsland_onceToken != -1)
  {
    ARDeviceHasIsland_cold_1();
  }

  return s_deviceHasIsland;
}

uint64_t __ARDeviceHasIsland_block_invoke()
{
  result = MGGetBoolAnswer();
  s_deviceHasIsland = result;
  return result;
}

id ARDeviceName()
{
  if (ARDeviceName_onceToken != -1)
  {
    ARDeviceName_cold_1();
  }

  v1 = ARDeviceName_deviceName;

  return v1;
}

void __ARDeviceName_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = ARDeviceName_deviceName;
  ARDeviceName_deviceName = v0;
}

id ARMarketingDeviceName()
{
  if (ARMarketingDeviceName_onceToken != -1)
  {
    ARMarketingDeviceName_cold_1();
  }

  v1 = ARMarketingDeviceName_localizedDeviceName;

  return v1;
}

void __ARMarketingDeviceName_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = ARMarketingDeviceName_localizedDeviceName;
  ARMarketingDeviceName_localizedDeviceName = v0;
}

id ARDeviceClass()
{
  if (ARDeviceClass_onceToken != -1)
  {
    ARDeviceClass_cold_1();
  }

  v1 = ARDeviceClass_deviceClass;

  return v1;
}

void __ARDeviceClass_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = ARDeviceClass_deviceClass;
  ARDeviceClass_deviceClass = v0;
}

uint64_t ARPearlCameraSupported()
{
  if (ARPearlCameraSupported_onceToken != -1)
  {
    ARPearlCameraSupported_cold_1();
  }

  return ARPearlCameraSupported_supported;
}

uint64_t __ARPearlCameraSupported_block_invoke()
{
  result = MGGetBoolAnswer();
  ARPearlCameraSupported_supported = result;
  return result;
}

__n128 ARDisplayCenterTransformForCaptureDevicePosition(uint64_t a1)
{
  if (ARDisplayCenterTransformForCaptureDevicePosition_onceToken[0] != -1)
  {
    ARDisplayCenterTransformForCaptureDevicePosition_cold_1();
  }

  if (a1 == 2)
  {
    v2 = &ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_0;
  }

  else
  {
    v2 = &ARDisplayCenterTransformForCaptureDevicePosition_rearCameraFromDisplayCenter;
  }

  return *v2;
}

void __ARDisplayCenterTransformForCaptureDevicePosition_block_invoke()
{
  v65 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer();
  if ([v0 count] < 3)
  {
    v7 = _ARLogGeneral_52();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = ARDeviceString();
      *buf = 138412290;
      v60 = *&v8;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "No front camera offset value found for device: %@", buf, 0xCu);
    }
  }

  else
  {
    v1 = [v0 objectAtIndexedSubscript:0];
    [v1 floatValue];
    v58 = v2 / 1000.0;
    v3 = [v0 objectAtIndexedSubscript:1];
    [v3 floatValue];
    v57 = v4 / -1000.0;
    v5 = [v0 objectAtIndexedSubscript:2];
    [v5 floatValue];
    v56 = v6 / -1000.0;

    v7 = _ARLogGeneral_52();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v60 = v58;
      v61 = 2048;
      v62 = v57;
      v63 = 2048;
      v64 = v56;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "Using front camera offset values (%f, %f, %f).", buf, 0x20u);
    }
  }

  v9 = MGCopyAnswer();
  if ([v9 count] < 2)
  {
    v10 = _ARLogGeneral_52();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v26 = ARDeviceString();
      *buf = 138412290;
      v60 = *&v26;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "No front camera rotation value found in MobileGetStalt for device: %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    [v10 floatValue];
    v12 = v11 * 3.14159265 / 180.0;
    _Q0 = vmulq_n_f32(xmmword_1C25C8BC0, __sincosf_stret(v12 * -0.5).__sinval);
    _S2 = _Q0.i32[1];
    _S4 = _Q0.i32[2];
    __asm
    {
      FMLS            S3, S4, V0.S[2]
      FMLA            S3, S2, V0.S[1]
      FMLA            S5, S4, V0.S[1]
      FMLA            S7, S4, V0.S[1]
      FMLA            S1, S4, V0.S[2]
      FMLS            S1, S2, V0.S[1]
    }
  }

  ARMatrix4x4FromRotationAndTranslation();
  ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_0 = v27;
  ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_1 = v28;
  ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_2 = v29;
  ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_3 = v30;
  v31 = *(MEMORY[0x1E69E9B18] + 16);
  ARDisplayCenterTransformForCaptureDevicePosition_rearCameraFromDisplayCenter = *MEMORY[0x1E69E9B18];
  *algn_1EBF436F0 = v31;
  v32 = *(MEMORY[0x1E69E9B18] + 48);
  xmmword_1EBF43700 = *(MEMORY[0x1E69E9B18] + 32);
  unk_1EBF43710 = v32;
  v33 = MGCopyAnswer();
  if ([v33 count] < 3)
  {
    if (ARShouldUseLogTypeError_onceToken_57 != -1)
    {
      __ARDisplayCenterTransformForCaptureDevicePosition_block_invoke_cold_1();
    }

    v46 = ARShouldUseLogTypeError_internalOSVersion_57;
    v47 = _ARLogGeneral_52();
    v48 = v47;
    if (v46 == 1)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v49 = ARDeviceString();
        *buf = 138412290;
        v60 = *&v49;
        v50 = "No rear camera offset value found for device: %@";
        v51 = v48;
        v52 = OS_LOG_TYPE_ERROR;
LABEL_24:
        _os_log_impl(&dword_1C241C000, v51, v52, v50, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v49 = ARDeviceString();
      *buf = 138412290;
      v60 = *&v49;
      v50 = "Error: No rear camera offset value found for device: %@";
      v51 = v48;
      v52 = OS_LOG_TYPE_INFO;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v34 = [v33 objectAtIndexedSubscript:0];
  [v34 floatValue];
  v55 = v35 / 1000.0;
  v36 = [v33 objectAtIndexedSubscript:1];
  [v36 floatValue];
  v53 = v37 / -1000.0;
  v38 = [v33 objectAtIndexedSubscript:2];
  [v38 floatValue];
  v54 = v39 / 1000.0;

  v40 = _ARLogGeneral_52();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v60 = v55;
    v61 = 2048;
    v62 = v53;
    v63 = 2048;
    v64 = v54;
    _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_DEBUG, "Using rear camera offset values (%f, %f, %f).", buf, 0x20u);
  }

  v41 = _ARLogGeneral_52();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v60 = v55;
    v61 = 2048;
    v62 = v53;
    v63 = 2048;
    v64 = v54;
    _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEBUG, "Using rear camera offset values (%f, %f, %f).", buf, 0x20u);
  }

  ARMatrix4x4FromRotationAndTranslation();
  ARDisplayCenterTransformForCaptureDevicePosition_rearCameraFromDisplayCenter = v42;
  *algn_1EBF436F0 = v43;
  xmmword_1EBF43700 = v44;
  unk_1EBF43710 = v45;
LABEL_26:
}

double ARFrontWideCameraTransformFromBackWideAngleCameraTransform(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  if (ARDisplayCenterTransformForCaptureDevicePosition_onceToken[0] != -1)
  {
    ARDisplayCenterTransformForCaptureDevicePosition_cold_1();
  }

  v13 = *algn_1EBF436F0;
  v15 = ARDisplayCenterTransformForCaptureDevicePosition_rearCameraFromDisplayCenter;
  v9 = xmmword_1EBF43700;
  v11 = unk_1EBF43710;
  v27.columns[2] = ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_2;
  v27.columns[1] = ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_1;
  v27.columns[0] = ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_0;
  v27.columns[3] = ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_3;
  v28 = __invert_f4(v27);
  v4 = 0;
  v25 = v28;
  memset(&v26, 0, sizeof(v26));
  do
  {
    v26.columns[v4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*&v25.columns[v4])), v13, *v25.columns[v4].f32, 1), v9, v25.columns[v4], 2), v11, v25.columns[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v5 = 0;
  v25 = v26;
  memset(&v26, 0, sizeof(v26));
  do
  {
    v26.columns[v5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(*&v25.columns[v5])), a2, *v25.columns[v5].f32, 1), a3, v25.columns[v5], 2), a4, v25.columns[v5], 3);
    ++v5;
  }

  while (v5 != 4);
  v22 = v26.columns[1];
  v24 = v26.columns[0];
  v18 = v26.columns[3];
  v20 = v26.columns[2];
  v29 = **&MEMORY[0x1E69E9B18];
  v14 = v29.columns[1];
  v16 = *MEMORY[0x1E69E9B18];
  v29.columns[2].i32[2] = -1.0;
  v10 = v29.columns[2];
  v12 = v29.columns[3];
  v30 = __invert_f4(*MEMORY[0x1E69E9B18]);
  v6 = 0;
  v25.columns[0] = v16;
  v25.columns[1] = v14;
  v25.columns[2] = v10;
  v25.columns[3] = v12;
  memset(&v26, 0, sizeof(v26));
  do
  {
    v26.columns[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*&v25.columns[v6])), v22, *v25.columns[v6].f32, 1), v20, v25.columns[v6], 2), v18, v25.columns[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v7 = 0;
  v25 = v26;
  memset(&v26, 0, sizeof(v26));
  do
  {
    v26.columns[v7] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30.columns[0], COERCE_FLOAT(*&v25.columns[v7])), v30.columns[1], *v25.columns[v7].f32, 1), v30.columns[2], v25.columns[v7], 2), v30.columns[3], v25.columns[v7], 3);
    ++v7;
  }

  while (v7 != 4);
  return *v26.columns[0].i64;
}

double ARFrontWideCameraTransformFromBackWideAngleCameraTransformWithZFlip(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  if (ARDisplayCenterTransformForCaptureDevicePosition_onceToken[0] != -1)
  {
    ARDisplayCenterTransformForCaptureDevicePosition_cold_1();
  }

  v17 = *algn_1EBF436F0;
  v18 = ARDisplayCenterTransformForCaptureDevicePosition_rearCameraFromDisplayCenter;
  v15 = xmmword_1EBF43700;
  v16 = unk_1EBF43710;
  v25.columns[2] = ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_2;
  v25.columns[1] = ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_1;
  v25.columns[0] = ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_0;
  v25.columns[3] = ARDisplayCenterTransformForCaptureDevicePosition_frontCameraFromDisplayCenter_3;
  v26 = __invert_f4(v25);
  v4 = 0;
  v23 = v26;
  memset(&v24, 0, sizeof(v24));
  do
  {
    v24.columns[v4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*&v23.columns[v4])), v17, *v23.columns[v4].f32, 1), v15, v23.columns[v4], 2), v16, v23.columns[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v5 = 0;
  v23 = v24;
  memset(&v24, 0, sizeof(v24));
  do
  {
    v24.columns[v5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(*&v23.columns[v5])), a2, *v23.columns[v5].f32, 1), a3, v23.columns[v5], 2), a4, v23.columns[v5], 3);
    ++v5;
  }

  while (v5 != 4);
  v6 = 0;
  v7 = v24.columns[0];
  v8 = v24.columns[1];
  v9 = v24.columns[2];
  v10 = v24.columns[3];
  v11 = *(MEMORY[0x1E69E9B18] + 32);
  v12 = *(MEMORY[0x1E69E9B18] + 48);
  v11.i32[2] = -1.0;
  v13 = *(MEMORY[0x1E69E9B18] + 16);
  v23.columns[0] = *MEMORY[0x1E69E9B18];
  v23.columns[1] = v13;
  v23.columns[2] = v11;
  v23.columns[3] = v12;
  memset(&v24, 0, sizeof(v24));
  do
  {
    v24.columns[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*&v23.columns[v6])), v8, *v23.columns[v6].f32, 1), v9, v23.columns[v6], 2), v10, v23.columns[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  return *v24.columns[0].i64;
}

uint64_t ARDeviceHasANE()
{
  if (ARAppleNeuralEngine_onceToken != -1)
  {
    ARAppleNeuralEngine_cold_1();
  }

  return s_deviceSupportsANE;
}

id ARDeviceANEVersion()
{
  if ([MEMORY[0x1E698CD50] hasANE])
  {
    v0 = [MEMORY[0x1E698CD50] aneSubType];
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t ARIsANEVersionEqualOrPriorToH12()
{
  if (ARIsANEVersionEqualOrPriorToH12_onceToken[0] != -1)
  {
    ARIsANEVersionEqualOrPriorToH12_cold_1();
  }

  return ARIsANEVersionEqualOrPriorToH12_s_isANEVersionEqualOrPriorToH12;
}

void __ARIsANEVersionEqualOrPriorToH12_block_invoke()
{
  v5 = ARDeviceANEVersion();
  v0 = [v5 lowercaseString];
  if ([v0 isEqualToString:@"m9"])
  {
    v1 = 1;
  }

  else
  {
    v2 = [v5 lowercaseString];
    if ([v2 isEqualToString:@"h10"])
    {
      v1 = 1;
    }

    else
    {
      v3 = [v5 lowercaseString];
      if ([v3 isEqualToString:@"h11"])
      {
        v1 = 1;
      }

      else
      {
        v4 = [v5 lowercaseString];
        v1 = [v4 isEqualToString:@"h12"];
      }
    }
  }

  ARIsANEVersionEqualOrPriorToH12_s_isANEVersionEqualOrPriorToH12 = v1;
}

uint64_t ARDeviceSupportsJasper()
{
  if (ARDeviceSupportsJasper_onceToken != -1)
  {
    ARDeviceSupportsJasper_cold_1();
  }

  return s_deviceSupportsJasper;
}

BOOL __ARDeviceSupportsJasper_block_invoke()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.jasper.enabled"];
  s_deviceSupportsJasper = result;
  return result;
}

uint64_t ARShouldSupport1440pAndAutofocus()
{
  if (ARShouldSupport1440pAndAutofocus_onceToken != -1)
  {
    ARShouldSupport1440pAndAutofocus_cold_1();
  }

  return ARShouldSupport1440pAndAutofocus_cachedReturn;
}

void __ARShouldSupport1440pAndAutofocus_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    v0 = 1;
  }

  else
  {
    if (ARDeviceSupportsJasper_onceToken != -1)
    {
      ARDeviceSupportsJasper_cold_1();
    }

    v0 = s_deviceSupportsJasper;
  }

  ARShouldSupport1440pAndAutofocus_cachedReturn = v0 & 1;
}

uint64_t ARLinkedOnOrAfterPeace()
{
  if (ARLinkedOnOrAfterPeace_onceToken != -1)
  {
    ARLinkedOnOrAfterPeace_cold_1();
  }

  return ARLinkedOnOrAfterPeace_cachedReturn;
}

uint64_t __ARLinkedOnOrAfterPeace_block_invoke()
{
  result = dyld_program_sdk_at_least();
  ARLinkedOnOrAfterPeace_cachedReturn = result;
  return result;
}

uint64_t ARLinkedOnOrAfterYukon()
{
  if (ARLinkedOnOrAfterYukon_onceToken != -1)
  {
    ARLinkedOnOrAfterYukon_cold_1();
  }

  return ARLinkedOnOrAfterYukon_cachedReturn;
}

uint64_t __ARLinkedOnOrAfterYukon_block_invoke()
{
  result = dyld_program_sdk_at_least();
  ARLinkedOnOrAfterYukon_cachedReturn = result;
  return result;
}

uint64_t ARLinkedOnOrAfterAzul()
{
  if (ARLinkedOnOrAfterAzul_onceToken != -1)
  {
    ARLinkedOnOrAfterAzul_cold_1();
  }

  v1 = ARLinkedOnOrAfterAzul_forceAssumeLinkedOnOrAfterAzul;
  if (!ARLinkedOnOrAfterAzul_forceAssumeLinkedOnOrAfterAzul)
  {
    return ARLinkedOnOrAfterAzul_cachedReturn;
  }

  return [v1 BOOLValue];
}

void __ARLinkedOnOrAfterAzul_block_invoke()
{
  ARLinkedOnOrAfterAzul_cachedReturn = dyld_program_sdk_at_least();
  v0 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.forceLinkedOnOrAfterAzul"];
  v1 = ARLinkedOnOrAfterAzul_forceAssumeLinkedOnOrAfterAzul;
  ARLinkedOnOrAfterAzul_forceAssumeLinkedOnOrAfterAzul = v0;
}

uint64_t ARLinkedOnOrAfterAzulC()
{
  if (ARLinkedOnOrAfterAzulC_onceToken != -1)
  {
    ARLinkedOnOrAfterAzulC_cold_1();
  }

  return ARLinkedOnOrAfterAzulC_cachedReturn;
}

uint64_t __ARLinkedOnOrAfterAzulC_block_invoke()
{
  result = dyld_program_sdk_at_least();
  ARLinkedOnOrAfterAzulC_cachedReturn = result;
  return result;
}

uint64_t ARLinkedOnOrAfterAzulE()
{
  if (ARLinkedOnOrAfterAzulE_onceToken != -1)
  {
    ARLinkedOnOrAfterAzulE_cold_1();
  }

  return ARLinkedOnOrAfterAzulE_cachedReturn;
}

uint64_t __ARLinkedOnOrAfterAzulE_block_invoke()
{
  result = dyld_program_sdk_at_least();
  ARLinkedOnOrAfterAzulE_cachedReturn = result;
  return result;
}

uint64_t ARLinkedOnOrAfterSydney()
{
  if (ARLinkedOnOrAfterSydney_onceToken != -1)
  {
    ARLinkedOnOrAfterSydney_cold_1();
  }

  return ARLinkedOnOrAfterSydney_cachedReturn;
}

uint64_t __ARLinkedOnOrAfterSydney_block_invoke()
{
  result = dyld_program_sdk_at_least();
  ARLinkedOnOrAfterSydney_cachedReturn = result;
  return result;
}

uint64_t ARLinkedOnOrAfterDawn()
{
  if (ARLinkedOnOrAfterDawn_onceToken != -1)
  {
    ARLinkedOnOrAfterDawn_cold_1();
  }

  return ARLinkedOnOrAfterDawn_cachedReturn;
}

uint64_t __ARLinkedOnOrAfterDawn_block_invoke()
{
  result = dyld_program_sdk_at_least();
  ARLinkedOnOrAfterDawn_cachedReturn = result;
  return result;
}

uint64_t ARLinkedOnOrAfterLuck()
{
  if (ARLinkedOnOrAfterLuck_onceToken != -1)
  {
    ARLinkedOnOrAfterLuck_cold_1();
  }

  return ARLinkedOnOrAfterLuck_cachedReturn;
}

uint64_t __ARLinkedOnOrAfterLuck_block_invoke()
{
  result = dyld_program_sdk_at_least();
  ARLinkedOnOrAfterLuck_cachedReturn = result;
  return result;
}

uint64_t ARLinkedOnOrAfterConstellation()
{
  if (ARLinkedOnOrAfterConstellation_onceToken != -1)
  {
    ARLinkedOnOrAfterConstellation_cold_1();
  }

  return ARLinkedOnOrAfterConstellation_cachedReturn;
}

uint64_t __ARLinkedOnOrAfterConstellation_block_invoke()
{
  result = dyld_program_sdk_at_least();
  ARLinkedOnOrAfterConstellation_cachedReturn = result;
  return result;
}

uint64_t ARLinkedOnOrAfterConstellationE()
{
  if (ARLinkedOnOrAfterConstellationE_onceToken != -1)
  {
    ARLinkedOnOrAfterConstellationE_cold_1();
  }

  return ARLinkedOnOrAfterConstellationE_cachedReturn;
}

uint64_t __ARLinkedOnOrAfterConstellationE_block_invoke()
{
  result = dyld_program_sdk_at_least();
  ARLinkedOnOrAfterConstellationE_cachedReturn = result;
  return result;
}

uint64_t ARLinkedOnOrAfterVisionOS_3_0()
{
  if (ARLinkedOnOrAfterVisionOS_3_0_onceToken != -1)
  {
    ARLinkedOnOrAfterVisionOS_3_0_cold_1();
  }

  return ARLinkedOnOrAfterVisionOS_3_0_cachedReturn;
}

uint64_t ARIsIntelMac()
{
  if (ARIsIntelMac_onceToken != -1)
  {
    ARIsIntelMac_cold_1();
  }

  return ARIsIntelMac_cachedReturn;
}

uint64_t __ARIsIntelMac_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  memset(&v3, 0, 512);
  result = uname(&v3);
  v2 = *v3.machine == 1597388920 && *&v3.machine[3] == 3421791;
  ARIsIntelMac_cachedReturn = v2;
  return result;
}

double ARDispatchAfterLeewayForTimeInterval(double a1)
{
  v1 = fmax(a1 * 0.1, 0.001);
  v2 = a1 > 0.0;
  result = 0.0;
  if (v2)
  {
    return v1;
  }

  return result;
}

double ARConvertTicksToSeconds(unint64_t a1)
{
  if (ARConvertTicksToSeconds_onceToken != -1)
  {
    ARConvertTicksToSeconds_cold_1();
  }

  return *&ARConvertTicksToSeconds_ticksToSecond * a1;
}

double __ARConvertTicksToSeconds_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1 / 1000000000.0;
    ARConvertTicksToSeconds_ticksToSecond = *&result;
  }

  return result;
}

unint64_t ARConvertSecondsToTicks(double a1)
{
  if (ARConvertSecondsToTicks_onceToken != -1)
  {
    ARConvertSecondsToTicks_cold_1();
  }

  return (*&ARConvertSecondsToTicks_secondsToTick * a1);
}

double __ARConvertSecondsToTicks_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    LODWORD(result) = info.denom;
    result = *&result / v1 * 1000000000.0;
    ARConvertSecondsToTicks_secondsToTick = *&result;
  }

  return result;
}

uint64_t ARConvertMCTToMAT(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  if (mach_get_times())
  {
    if (ARShouldUseLogTypeError_onceToken_57 != -1)
    {
      __ARDisplayCenterTransformForCaptureDevicePosition_block_invoke_cold_1();
    }

    v2 = ARShouldUseLogTypeError_internalOSVersion_57;
    v3 = _ARLogGeneral_52();
    v4 = v3;
    if (v2 == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        v5 = "mach_get_times is failing for ARConvertMCTToMAT";
        v6 = v4;
        v7 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_1C241C000, v6, v7, v5, v9, 2u);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      v5 = "Error: mach_get_times is failing for ARConvertMCTToMAT";
      v6 = v4;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    return a1;
  }

  return a1 - v10 + v11;
}

uint64_t ARConvertMATToMCT(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  if (mach_get_times())
  {
    if (ARShouldUseLogTypeError_onceToken_57 != -1)
    {
      __ARDisplayCenterTransformForCaptureDevicePosition_block_invoke_cold_1();
    }

    v2 = ARShouldUseLogTypeError_internalOSVersion_57;
    v3 = _ARLogGeneral_52();
    v4 = v3;
    if (v2 == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        v5 = "mach_get_times is failing for ARConvertMATToMCT";
        v6 = v4;
        v7 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_1C241C000, v6, v7, v5, v9, 2u);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      v5 = "Error: mach_get_times is failing for ARConvertMATToMCT";
      v6 = v4;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    return a1;
  }

  return v10 + a1 - v11;
}

dispatch_queue_t ARCreateFixedPriorityDispatchQueueWithQOS(const char *a1)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_workloop_set_qos_class_floor();
  dispatch_activate(inactive);
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create_with_target_V2(a1, v3, inactive);

  return v4;
}

dispatch_queue_t ARCreateFixedPriorityDispatchQueueWithPropagatedQOS(const char *a1, dispatch_qos_class_t a2, int a3)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_workloop_set_qos_class_floor();
  dispatch_activate(inactive);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, a2, a3);

  v9 = dispatch_queue_create_with_target_V2(a1, v8, inactive);

  return v9;
}

dispatch_queue_t ARCreateFixedPriorityDispatchQueueWithPriority(const char *a1)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create_with_target_V2(a1, v3, inactive);

  return v4;
}

dispatch_queue_t ARCreateNonFixedPriorityDispatchQueue(const char *a1)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_workloop_set_qos_class_floor();
  dispatch_activate(inactive);
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create_with_target_V2(a1, v3, inactive);

  return v4;
}

dispatch_queue_t ARCreateNonFixedPriorityConcurrentDispatchQueue(const char *a1)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_workloop_set_qos_class_floor();
  dispatch_activate(inactive);
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create_with_target_V2(a1, v3, inactive);

  return v4;
}

BOOL ARDispatchQueueIsCurrentDispatchQueue(NSObject *a1)
{
  label = dispatch_queue_get_label(a1);
  v2 = dispatch_queue_get_label(0);

  return ARStringIsEqualToString(label, v2);
}

BOOL ARDispatchQueueIsEqualToDispatchQueue(NSObject *a1, NSObject *a2)
{
  label = dispatch_queue_get_label(a1);
  v4 = dispatch_queue_get_label(a2);

  return ARStringIsEqualToString(label, v4);
}

uint64_t ARGetMemoryFootprint(void *a1, void *a2)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *task_info_out = 0u;
  v7 = 0u;
  task_info_outCnt = 93;
  result = task_info(*MEMORY[0x1E69E9A60], 0x16u, task_info_out, &task_info_outCnt);
  if (!result)
  {
    *a1 = v15;
    *a2 = *(&v16 + 1);
  }

  return result;
}

uint64_t ARRGBFaceTrackingEnabled()
{
  if (ARRGBFaceTrackingEnabled_onceToken != -1)
  {
    ARRGBFaceTrackingEnabled_cold_1();
  }

  return ARRGBFaceTrackingEnabled_faceTrackingEnabled;
}

void __ARRGBFaceTrackingEnabled_block_invoke()
{
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.faceTracking.rgbOnly.enabled"])
  {
    if (ARAppleNeuralEngine_onceToken != -1)
    {
      ARAppleNeuralEngine_cold_1();
    }

    v0 = s_deviceSupportsANE;
  }

  else
  {
    v0 = 0;
  }

  ARRGBFaceTrackingEnabled_faceTrackingEnabled = v0 & 1;
}

id ARFaceTrackingDevice()
{
  if (ARFaceTrackingDevice_onceToken != -1)
  {
    ARFaceTrackingDevice_cold_1();
  }

  v1 = ARFaceTrackingDevice_deviceType;

  return v1;
}

void __ARFaceTrackingDevice_block_invoke()
{
  if (ARRGBFaceTrackingEnabled_onceToken != -1)
  {
    ARRGBFaceTrackingEnabled_cold_1();
  }

  if (ARRGBFaceTrackingEnabled_faceTrackingEnabled != 1)
  {
    goto LABEL_7;
  }

  if (ARPearlCameraSupported_onceToken != -1)
  {
    ARPearlCameraSupported_cold_1();
  }

  if (ARPearlCameraSupported_supported != 1)
  {
    v0 = MEMORY[0x1E6986950];
  }

  else
  {
LABEL_7:
    v0 = MEMORY[0x1E6986940];
  }

  v1 = *v0;

  objc_storeStrong(&ARFaceTrackingDevice_deviceType, v1);
}

BOOL ARHasH10()
{
  v0 = MGCopyAnswer();
  v1 = [v0 integerValue] == 32789;

  return v1;
}

uint64_t ARDeviceSupportsMulticamMode()
{
  if ([MEMORY[0x1E69870E0] isMultiCamSupported])
  {
    if (ARLinkedOnOrAfterYukon_onceToken != -1)
    {
      ARLinkedOnOrAfterYukon_cold_1();
    }

    v0 = ARLinkedOnOrAfterYukon_cachedReturn;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t ARDeviceSupportsMulticamSessionWithVideoFormats(void *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (ARDeviceSupportsMulticamMode())
  {
    v31 = [v1 ar_map:&__block_literal_global_152];
    v2 = [MEMORY[0x1E695DFD8] setWithArray:?];
    v3 = MEMORY[0x1E69870A8];
    v30 = v2;
    v4 = [v2 allObjects];
    v5 = [v3 discoverySessionWithDeviceTypes:v4 mediaType:*MEMORY[0x1E6987608] position:0];

    v29 = v5;
    [v5 supportedMultiCamDeviceSets];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v52 = 0u;
    v6 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v50;
      v38 = v1;
      v32 = *v50;
      while (2)
      {
        v9 = 0;
        v33 = v7;
        do
        {
          if (*v50 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v49 + 1) + 8 * v9);
          v11 = [v10 count];
          if (v11 >= [v1 count])
          {
            v35 = v9;
            v37 = objc_opt_new();
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v36 = v10;
            v40 = [v36 countByEnumeratingWithState:&v45 objects:v54 count:16];
            if (v40)
            {
              v39 = *v46;
              do
              {
                for (i = 0; i != v40; ++i)
                {
                  if (*v46 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v13 = *(*(&v45 + 1) + 8 * i);
                  v41 = 0u;
                  v42 = 0u;
                  v43 = 0u;
                  v44 = 0u;
                  v14 = v1;
                  v15 = [v14 countByEnumeratingWithState:&v41 objects:v53 count:16];
                  if (v15)
                  {
                    v16 = v15;
                    v17 = *v42;
                    while (2)
                    {
                      for (j = 0; j != v16; ++j)
                      {
                        if (*v42 != v17)
                        {
                          objc_enumerationMutation(v14);
                        }

                        v19 = *(*(&v41 + 1) + 8 * j);
                        v20 = [v13 position];
                        if (v20 == [v19 captureDevicePosition])
                        {
                          v21 = [v13 deviceType];
                          v22 = [v19 captureDeviceType];
                          v23 = [v21 isEqualToString:v22];

                          if (v23)
                          {
                            [v37 addObject:v19];
                            goto LABEL_24;
                          }
                        }
                      }

                      v16 = [v14 countByEnumeratingWithState:&v41 objects:v53 count:16];
                      if (v16)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_24:

                  v1 = v38;
                }

                v40 = [v36 countByEnumeratingWithState:&v45 objects:v54 count:16];
              }

              while (v40);
            }

            v24 = [v37 count];
            v25 = [v1 count];

            v26 = v24 == v25;
            v8 = v32;
            v7 = v33;
            v9 = v35;
            if (v26)
            {
              v27 = 1;
              goto LABEL_32;
            }
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_32:
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

uint64_t ARDeviceSupportsMulticamWithTripleRGBStreaming()
{
  if (ARDeviceSupportsMulticamWithTripleRGBStreaming_onceToken != -1)
  {
    ARDeviceSupportsMulticamWithTripleRGBStreaming_cold_1();
  }

  return ARDeviceSupportsMulticamWithTripleRGBStreaming_supportsMulticamWithTripleRGBStreaming;
}

void __ARDeviceSupportsMulticamWithTripleRGBStreaming_block_invoke()
{
  v9[3] = *MEMORY[0x1E69E9840];
  v0 = [ARVideoFormat alloc];
  v1 = *MEMORY[0x1E6986950];
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  v4 = [(ARVideoFormat *)v0 initWithImageResolution:1 captureDevicePosition:*MEMORY[0x1E6986950] captureDeviceType:*MEMORY[0x1E695F060], v3];
  v9[0] = v4;
  v5 = [ARVideoFormat alloc];
  v6 = [(ARVideoFormat *)v5 initWithImageResolution:1 captureDevicePosition:*MEMORY[0x1E6986948] captureDeviceType:v2, v3, v4];
  v9[1] = v6;
  v7 = [[ARVideoFormat alloc] initWithImageResolution:2 captureDevicePosition:v1 captureDeviceType:v2, v3];
  v9[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  ARDeviceSupportsMulticamWithTripleRGBStreaming_supportsMulticamWithTripleRGBStreaming = ARDeviceSupportsMulticamSessionWithVideoFormats(v8);
}

uint64_t ARDeviceSupportsUltraWideCamera()
{
  if (ARDeviceSupportsUltraWideCamera_onceToken != -1)
  {
    ARDeviceSupportsUltraWideCamera_cold_1();
  }

  return ARDeviceSupportsUltraWideCamera_ultraWideAvailable;
}