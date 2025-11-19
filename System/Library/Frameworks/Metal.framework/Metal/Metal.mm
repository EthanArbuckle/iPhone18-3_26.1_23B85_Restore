void *MTLDispatchListAppendBlock(void *result, void **a2, const void *a3)
{
  if (a3)
  {
    v5 = result;
    v6 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    result = _Block_copy(a3);
    *v6 = 0;
    v6[1] = result;
    v7 = *a2;
    if (*a2)
    {
      v8 = a2;
    }

    else
    {
      v7 = a2;
      v8 = v5;
    }

    *v7 = v6;
    *v8 = v6;
  }

  return result;
}

void MTLDeviceArrayInitialize(void)
{
  if (MTLDeviceArrayInitialize(void)::pred != -1)
  {
    MTLDeviceArrayInitialize();
  }

  if (initWrapperType(void)::pred != -1)
  {
    MTLDeviceArrayInitialize();
  }

  os_unfair_lock_lock(&MTLInitializeInterpose(void)::lock);
  if (MTLInitializeInterpose(void)::interposeInitialized)
  {
    goto LABEL_79;
  }

  os_unfair_lock_unlock(&MTLInitializeInterpose(void)::lock);
  v0 = 1;
  if (!MTLGetEnvDefault("METAL_CAPTURE_ENABLED", 0) && !MTLGetEnvDefault("MTL_CAPTURE_ENABLED", 0))
  {
    v13 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v13 BOOLValue] & 1) == 0)
    {
      v14 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v14 BOOLValue] & 1) == 0)
      {
        v0 = 0;
      }
    }
  }

  v1 = getenv("MTL_CAPTURE_PATH");
  if (v1)
  {
    v0 = 1;
  }

  if (MTLGetEnvDefault("METAL_LOAD_INTERPOSER", 0))
  {
    v2 = getenv("DYMTL_TOOLS_DYLIB_PATH");
    if (v1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2 == 0;
    }

    v4 = v3;
    if (!v3)
    {
      v1 = v2;
    }

    if ((v0 | v4 ^ 1))
    {
LABEL_21:
      if (v1)
      {
        v5 = v1;
        v6 = 272;
      }

      else
      {
        if ((_MTLIsInternalBuild() & 1) == 0 && [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")] == 0x7FFFFFFFFFFFFFFFLL)
        {
          MTLReportFailure(2, "LoadCaptureLayer", 350, @"Metal GPU Frame Capture is not allowed for App Store apps, try deploying through TestFlight", v9, v10, v11, v12, v32);
          v8 = 0;
LABEL_35:
          v7 = 1;
          goto LABEL_36;
        }

        v5 = "/System/Library/PrivateFrameworks/GPUToolsCapture.framework/GPUToolsCapture";
        v6 = 4;
      }

      v8 = dlopen(v5, v6);
      goto LABEL_35;
    }
  }

  else if (v0)
  {
    goto LABEL_21;
  }

  v7 = 0;
  v8 = 0;
LABEL_36:
  v15 = MTLGetEnvDefault("MTL_HUD_ENABLED", 0);
  v16 = getenv("MTL_HUD_PATH");
  v17 = (v16 | v15) != 0;
  v18 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v18 BOOLValue];
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v20 BOOLValue];
  }

  else
  {
    v21 = 0;
  }

  if (((v17 | v19) & 1) != 0 || v21)
  {
    if (v16)
    {
      v26 = dlopen(v16, 272);
    }

    else
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = dlopen(off_1E6EEB8E8[v28], 4);
        v26 = v29;
        if (v27)
        {
          break;
        }

        v27 = 1;
        v28 = 1;
      }

      while (!v29);
    }

    os_unfair_lock_lock(&MTLInitializeInterpose(void)::lock);
    if ((MTLInitializeInterpose(void)::interposeInitialized & 1) == 0)
    {
LABEL_56:
      if (v7)
      {
        if (!v8 || (_getWrappedDeviceFn = dlsym(v8, "DYMTLWrapDeviceWithDebugLayer")) == 0)
        {
          MTLReportFailure(2, "MTLInitializeInterpose", 486, @"Metal GPU Frame Capture could not be enabled", v22, v23, v24, v25, v32);
        }

        goto LABEL_74;
      }

      if (wrapperType > 2)
      {
        switch(wrapperType)
        {
          case 3:
            v30 = &OBJC_PROTOCOL___MTLCommandBufferEncoderInfo;
            v31 = MTLWrapWithCountersDevice;
            goto LABEL_73;
          case 4:
            v30 = &OBJC_PROTOCOL___MTLCommandBufferEncoderInfo;
            v31 = MTLWrapWithGPUDebugDevice;
            goto LABEL_73;
          case 5:
            v30 = &OBJC_PROTOCOL___MTLCommandBufferEncoderInfo;
            v31 = MTLWrapWithAllDebugDevice;
            goto LABEL_73;
        }
      }

      else
      {
        switch(wrapperType)
        {
          case 0:
LABEL_74:
            if ((wrapperType & 0xFFFFFFFE) == 4)
            {
              _gpuDebugEnabled = 1;
            }

            if ((wrapperType & 0xFFFFFFFB) == 1)
            {
              _apiDebugEnabled = 1;
            }

            MTLLogAPIValidationType(wrapperType);
            MTLInitializeInterpose(void)::interposeInitialized = 1;
            goto LABEL_79;
          case 1:
            v30 = &OBJC_PROTOCOL___MTLCommandBufferEncoderInfo;
            v31 = MTLWrapWithDebugDevice;
            goto LABEL_73;
          case 2:
            v30 = &OBJC_PROTOCOL___MTLCommandBufferEncoderInfo;
            v31 = MTLWrapWithTelemetryDevice;
LABEL_73:
            v30[38].isa = v31;
            goto LABEL_74;
        }
      }

      MTLReportFailure(0, "MTLInitializeInterpose", 522, @"Unknown Wrapper Type : %d", v22, v23, v24, v25, wrapperType);
      goto LABEL_74;
    }

    if (v26)
    {
      dlclose(v26);
    }
  }

  else
  {
    os_unfair_lock_lock(&MTLInitializeInterpose(void)::lock);
    if ((MTLInitializeInterpose(void)::interposeInitialized & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  if (v8)
  {
    dlclose(v8);
  }

LABEL_79:
  os_unfair_lock_unlock(&MTLInitializeInterpose(void)::lock);

  MTLRegisterDevices();
}

id MTLCreateSystemDefaultDevice(void)
{
  MTLDeviceArrayInitialize();
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__5;
  v7 = __Block_byref_object_dispose__5;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MTLCreateSystemDefaultDevice_block_invoke;
  block[3] = &unk_1E6EEB598;
  block[4] = &v3;
  dispatch_sync(_deviceArrayQueue, block);
  v0 = v4[5];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void MTLRegisterDevices()
{
  v0 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&MTLRegisterDevices_lock);
  if (!_mtlIOAccelServiceGlobalContext)
  {
    os_unfair_lock_unlock(&MTLRegisterDevices_lock);
    v1 = objc_alloc_init(MTLIOAccelServiceGlobalContext);
    os_unfair_lock_lock(&MTLRegisterDevices_lock);
    if (_mtlIOAccelServiceGlobalContext || !v1)
    {
    }

    else
    {
      _mtlIOAccelServiceGlobalContext = v1;
      [(MTLIOAccelServiceGlobalContext *)v1 processPendingCreateIOAccelServiceRequests];
    }
  }

  os_unfair_lock_unlock(&MTLRegisterDevices_lock);

  objc_autoreleasePoolPop(v0);
}

void __MTLCreateSystemDefaultDevice_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ([_deviceArray count])
  {
    if ([_deviceArray count] == 1)
    {
      *(*(*(a1 + 32) + 8) + 40) = [_deviceArray objectAtIndex:0];
    }

    else
    {

      MTLReportFailure(0, "MTLCreateSystemDefaultDevice_block_invoke", 812, @"MTLCreateSystemDefaultDevice doesn't know what to do with more than one device", v10, v11, v12, v13, a9);
    }
  }
}

void MTLDebugValidateMTLPixelFormat(uint64_t a1)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  MTLPixelFormatGetInfoForDevice(0, a1, v9);
  if (a1)
  {
    if ((BYTE8(v9[0]) & 1) == 0)
    {
      MTLDebugValidateMTLPixelFormat_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
    }
  }
}

void MTLPixelFormatGetInfoForDevice(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[0] = a1;
  v3[1] = -1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  MTLPixelFormatGetInfoForFeatureSetQuery(v3, a2, a3);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_185B8FFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPixelFormatGetInfoForFeatureSetQuery(id *this@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  switch(a2)
  {
    case 1:
      a3->i64[0] = "MTLPixelFormatA8Unorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v6 = MTLGPUFamilyApple3;
      }

      else
      {
        v6 = MTLGPUFamilyMac1;
      }

      v7 = MTLPixelFormatQuery::supportsFamily(this, v6);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v8 = MTLGPUFamilyApple3;
      }

      else
      {
        v8 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v8))
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v10 = MTLGPUFamilyApple3;
      }

      else
      {
        v10 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v10))
      {
        v11 = 16;
      }

      else
      {
        v11 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v12 = MTLGPUFamilyApple3;
      }

      else
      {
        v12 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v12))
      {
        v13 = 128;
      }

      else
      {
        v13 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v14 = MTLGPUFamilyApple3;
      }

      else
      {
        v14 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v14))
      {
        v15 = 256;
      }

      else
      {
        v15 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v16 = 0x4000000;
      }

      else
      {
        v16 = 0;
      }

      if (v7)
      {
        v17 = -2041;
      }

      else
      {
        v17 = -2043;
      }

      v18 = v17 | v9 | v11 | v13;
      goto LABEL_1438;
    case 10:
      a3->i64[0] = "MTLPixelFormatR8Unorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v404 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v405 = 0x2000000;
      }

      else
      {
        v405 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v406 = 0x4000000;
      }

      else
      {
        v406 = 0;
      }

      if (v404)
      {
        v407 = 16974239;
      }

      else
      {
        v407 = 197023;
      }

      v408 = v407 | v405;
      goto LABEL_2772;
    case 11:
      v480 = 198656;
      a3->i64[0] = "MTLPixelFormatR8Unorm_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v480 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x30800;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v481 = 2;
        }

        else
        {
          v481 = 0;
        }

        v789 = v481;
      }

      else
      {
        v789 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v723 = 4;
        }

        else
        {
          v723 = 0;
        }

        v783 = v723;
      }

      else
      {
        v783 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v724 = 8;
        }

        else
        {
          v724 = 0;
        }
      }

      else
      {
        v724 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v725 = 16;
        }

        else
        {
          v725 = 0;
        }
      }

      else
      {
        v725 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v726 = 128;
        }

        else
        {
          v726 = 0;
        }
      }

      else
      {
        v726 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v727 = 256;
        }

        else
        {
          v727 = 0;
        }
      }

      else
      {
        v727 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v728 = 0x1000000;
      }

      else
      {
        v728 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v729 = 0x2000000;
      }

      else
      {
        v729 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v730 = 0x4000000;
      }

      else
      {
        v730 = 0;
      }

      v408 = v480 | v789 | v783 | v724 | v725 | v726 | v727 | v728;
      v406 = v729 | v730;
LABEL_2772:
      v30 = v408 | v406;
      goto LABEL_2773;
    case 12:
      a3->i64[0] = "MTLPixelFormatR8Snorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v434 = MTLGPUFamilyApple2;
      }

      else
      {
        v434 = MTLGPUFamilyMac1;
      }

      v435 = MTLPixelFormatQuery::supportsFamily(this, v434);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v436 = MTLGPUFamilyApple1;
      }

      else
      {
        v436 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v436))
      {
        v15 = 256;
      }

      else
      {
        v15 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v16 = 0x4000000;
      }

      else
      {
        v16 = 0;
      }

      if (v435)
      {
        v18 = -1889;
      }

      else
      {
        v18 = -2017;
      }

LABEL_1438:
      v30 = (v18 | v15) + v16 + 198656;
      goto LABEL_2773;
    case 13:
      a3->i64[0] = "MTLPixelFormatR8Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v30 = 69730579;
      }

      else
      {
        v30 = 2621715;
      }

      goto LABEL_2773;
    case 14:
      a3->i64[0] = "MTLPixelFormatR8Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v30 = 68419859;
      }

      else
      {
        v30 = 1310995;
      }

LABEL_2773:
      a3->i32[2] = v30;
      v731 = 1;
      goto LABEL_2809;
    case 20:
      v244 = "MTLPixelFormatR16Unorm";
      goto LABEL_1504;
    case 22:
      v244 = "MTLPixelFormatR16Snorm";
LABEL_1504:
      a3->i64[0] = v244;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v452 = MTLGPUFamilyApple4;
      }

      else
      {
        v452 = MTLGPUFamilyMac1;
      }

      v453 = MTLPixelFormatQuery::supportsFamily(this, v452);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v454 = 0x1000000;
      }

      else
      {
        v454 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v455 = 0x2000000;
      }

      else
      {
        v455 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v456 = 0x4000000;
      }

      else
      {
        v456 = 0;
      }

      if (v453)
      {
        v457 = -1633;
      }

      else
      {
        v457 = -1761;
      }

      v458 = v457 + v454 + v455 + v456 + 198656;
      goto LABEL_1672;
    case 23:
      a3->i64[0] = "MTLPixelFormatR16Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v26 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v27 = 0x2000000;
      }

      else
      {
        v27 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v28 = 0x4000000;
      }

      else
      {
        v28 = 0;
      }

      if (v26)
      {
        v29 = 19398931;
      }

      else
      {
        v29 = 2621715;
      }

      goto LABEL_1601;
    case 24:
      a3->i64[0] = "MTLPixelFormatR16Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v102 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v27 = 0x2000000;
      }

      else
      {
        v27 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v28 = 0x4000000;
      }

      else
      {
        v28 = 0;
      }

      v103 = v102 == 0;
      v29 = 1310995;
      v104 = 18088211;
      goto LABEL_1599;
    case 25:
      a3->i64[0] = "MTLPixelFormatR16Float";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v478 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v27 = 0x2000000;
      }

      else
      {
        v27 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v28 = 0x4000000;
      }

      else
      {
        v28 = 0;
      }

      v29 = 197023;
      v103 = v478 == 0;
      v104 = 16974239;
LABEL_1599:
      if (!v103)
      {
        v29 = v104;
      }

LABEL_1601:
      v458 = v29 | v27 | v28;
      goto LABEL_1672;
    case 26:
      a3->i64[0] = "MTLPixelFormatR16Bfloat";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v41 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8) | 0x30000;
      }

      else
      {
        v41 = 196608;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
        {
          v494 = 2;
        }

        else
        {
          v494 = 0;
        }
      }

      else
      {
        v494 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
        {
          v495 = 16;
        }

        else
        {
          v495 = 0;
        }
      }

      else
      {
        v495 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v458 = v41 | v494 | v495;
LABEL_1672:
      a3->i32[2] = v458;
      v411 = vdupq_n_s64(2uLL);
      goto LABEL_2896;
    case 30:
      a3->i64[0] = "MTLPixelFormatRG8Unorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v484 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v45 = 0x4000000;
      }

      else
      {
        v45 = 0;
      }

      v47 = 197023;
      v46 = v484 == 0;
      v48 = 16974239;
      goto LABEL_1623;
    case 31:
      v482 = 198656;
      a3->i64[0] = "MTLPixelFormatRG8Unorm_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v482 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x30800;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v483 = 2;
        }

        else
        {
          v483 = 0;
        }

        v790 = v483;
      }

      else
      {
        v790 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v732 = 4;
        }

        else
        {
          v732 = 0;
        }
      }

      else
      {
        v732 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v733 = 8;
        }

        else
        {
          v733 = 0;
        }
      }

      else
      {
        v733 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v734 = 16;
        }

        else
        {
          v734 = 0;
        }
      }

      else
      {
        v734 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v735 = 128;
        }

        else
        {
          v735 = 0;
        }
      }

      else
      {
        v735 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v736 = 256;
        }

        else
        {
          v736 = 0;
        }
      }

      else
      {
        v736 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v737 = 0x1000000;
      }

      else
      {
        v737 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v45 = 0x4000000;
      }

      else
      {
        v45 = 0;
      }

      v47 = v482 | v790 | v732 | v733 | v734 | v735 | v736 | v737;
      goto LABEL_2807;
    case 32:
      a3->i64[0] = "MTLPixelFormatRG8Snorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v136 = MTLGPUFamilyApple2;
      }

      else
      {
        v136 = MTLGPUFamilyMac1;
      }

      v137 = MTLPixelFormatQuery::supportsFamily(this, v136);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v138 = MTLGPUFamilyApple1;
      }

      else
      {
        v138 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v138))
      {
        v139 = 256;
      }

      else
      {
        v139 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v140 = 0x1000000;
      }

      else
      {
        v140 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v141 = 0x4000000;
      }

      else
      {
        v141 = 0;
      }

      if (v137)
      {
        v142 = -1889;
      }

      else
      {
        v142 = -2017;
      }

      v143 = (v142 | v139) + v140 + v141 + 198656;
      goto LABEL_2808;
    case 33:
      a3->i64[0] = "MTLPixelFormatRG8Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v402 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v45 = 0x4000000;
      }

      else
      {
        v45 = 0;
      }

      if (v402)
      {
        v47 = 19398931;
      }

      else
      {
        v47 = 2621715;
      }

      goto LABEL_2807;
    case 34:
      a3->i64[0] = "MTLPixelFormatRG8Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v44 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v45 = 0x4000000;
      }

      else
      {
        v45 = 0;
      }

      v46 = v44 == 0;
      v47 = 1310995;
      v48 = 18088211;
LABEL_1623:
      if (!v46)
      {
        v47 = v48;
      }

LABEL_2807:
      v143 = v47 | v45;
LABEL_2808:
      a3->i32[2] = v143;
      v731 = 2;
LABEL_2809:
      a3[1] = vdupq_n_s64(v731);
      a3[2].i8[0] = v731;
      goto LABEL_3008;
    case 40:
      a3->i64[0] = "MTLPixelFormatB5G6R5Unorm";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v69 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x30000;
      }

      else
      {
        v69 = 196608;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v501 = 4;
        }

        else
        {
          v501 = 0;
        }
      }

      else
      {
        v501 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v502 = 8;
        }

        else
        {
          v502 = 0;
        }
      }

      else
      {
        v502 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v503 = 16;
        }

        else
        {
          v503 = 0;
        }
      }

      else
      {
        v503 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v504 = 128;
        }

        else
        {
          v504 = 0;
        }
      }

      else
      {
        v504 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v505 = 256;
        }

        else
        {
          v505 = 0;
        }
      }

      else
      {
        v505 = 0;
      }

      a3->i32[2] = v69 | v501 | v502 | v503 | v504 | v505;
      v120 = vdupq_n_s64(2uLL);
      goto LABEL_2664;
    case 41:
      v78 = "MTLPixelFormatA1BGR5Unorm";
      goto LABEL_359;
    case 42:
      v78 = "MTLPixelFormatABGR4Unorm";
      goto LABEL_359;
    case 43:
      a3->i64[0] = "MTLPixelFormatBGR5A1Unorm";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v121 = MTLGPUFamilyApple1;
      }

      else
      {
        v121 = MTLGPUFamilyMac1;
      }

      v122 = MTLPixelFormatQuery::supportsFamily(this, v121);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v123 = MTLGPUFamilyApple1;
      }

      else
      {
        v123 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v123))
      {
        v124 = 4;
      }

      else
      {
        v124 = 0;
      }

      v125 = 0;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v125 = 8;
        }

        else
        {
          v125 = 0;
        }
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v126 = 16;
        }

        else
        {
          v126 = 0;
        }
      }

      else
      {
        v126 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v514 = 128;
        }

        else
        {
          v514 = 0;
        }
      }

      else
      {
        v514 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v515 = 256;
        }

        else
        {
          v515 = 0;
        }
      }

      else
      {
        v515 = 0;
      }

      v167 = v124 | v122 | v125 | v126 | v514 | v515 | 0x30000;
      goto LABEL_1780;
    case 44:
      v78 = "MTLPixelFormatBGRA4Unorm";
LABEL_359:
      a3->i64[0] = v78;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v161 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x30000;
      }

      else
      {
        v161 = 196608;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v162 = 4;
        }

        else
        {
          v162 = 0;
        }
      }

      else
      {
        v162 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v163 = 8;
        }

        else
        {
          v163 = 0;
        }
      }

      else
      {
        v163 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v164 = 16;
        }

        else
        {
          v164 = 0;
        }
      }

      else
      {
        v164 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v165 = 128;
        }

        else
        {
          v165 = 0;
        }
      }

      else
      {
        v165 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v166 = 256;
        }

        else
        {
          v166 = 0;
        }
      }

      else
      {
        v166 = 0;
      }

      v167 = v161 | v162 | v163 | v164 | v165 | v166;
LABEL_1780:
      a3->i32[2] = v167;
      v324 = vdupq_n_s64(2uLL);
      goto LABEL_2968;
    case 53:
      a3->i64[0] = "MTLPixelFormatR32Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v378 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_2390;
      }

      if (*this)
      {
        v378 = [*this isMsaa32bSupported];
LABEL_2390:
        v659 = v378;
        goto LABEL_2391;
      }

      v659 = this[1] == -1;
LABEL_2391:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v660 = 0x4000000;
      }

      else
      {
        v660 = 0;
      }

      v661 = 524307;
      goto LABEL_2732;
    case 54:
      a3->i64[0] = "MTLPixelFormatR32Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v479 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_2727;
      }

      if (*this)
      {
        v479 = [*this isMsaa32bSupported];
LABEL_2727:
        v659 = v479;
        goto LABEL_2728;
      }

      v659 = this[1] == -1;
LABEL_2728:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v660 = 0x4000000;
      }

      else
      {
        v660 = 0;
      }

      v661 = 262163;
LABEL_2732:
      if (v659)
      {
        v661 |= 0x100u;
      }

      v722 = v661 | v660;
      goto LABEL_2895;
    case 55:
      a3->i64[0] = "MTLPixelFormatR32Float";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v72 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_1722;
      }

      if (*this)
      {
        v72 = [*this isFloat32FilteringSupported];
LABEL_1722:
        v506 = v72;
        goto LABEL_1723;
      }

      v506 = this[1] == -1;
LABEL_1723:
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v507 = [*this isMsaa32bSupported];
        }

        else
        {
          v507 = this[1] == -1;
        }
      }

      else
      {
        v507 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      if (v507)
      {
        v761 = 128;
      }

      else
      {
        v761 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v762 = 0x4000000;
      }

      else
      {
        v762 = 0;
      }

      if (v506)
      {
        v763 = -1761;
      }

      else
      {
        v763 = -1765;
      }

      v722 = (v763 | v761) + v762 + 198656;
LABEL_2895:
      a3->i32[2] = v722;
      v411 = xmmword_185DD2C80;
      goto LABEL_2896;
    case 60:
      v67 = "MTLPixelFormatRG16Unorm";
      goto LABEL_1627;
    case 62:
      v67 = "MTLPixelFormatRG16Snorm";
LABEL_1627:
      a3->i64[0] = v67;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v485 = MTLGPUFamilyApple4;
      }

      else
      {
        v485 = MTLGPUFamilyMac1;
      }

      v486 = MTLPixelFormatQuery::supportsFamily(this, v485);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v487 = 0x1000000;
      }

      else
      {
        v487 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v488 = 0x2000000;
      }

      else
      {
        v488 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v489 = 0x4000000;
      }

      else
      {
        v489 = 0;
      }

      if (v486)
      {
        v490 = -1633;
      }

      else
      {
        v490 = -1761;
      }

      v315 = v490 + v487 + v488 + v489 + 198656;
      goto LABEL_1659;
    case 63:
      a3->i64[0] = "MTLPixelFormatRG16Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v314 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v20 = 0x2000000;
      }

      else
      {
        v20 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v21 = 0x4000000;
      }

      else
      {
        v21 = 0;
      }

      if (v314)
      {
        v23 = 19398931;
      }

      else
      {
        v23 = 2621715;
      }

      goto LABEL_891;
    case 64:
      a3->i64[0] = "MTLPixelFormatRG16Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v19 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v20 = 0x2000000;
      }

      else
      {
        v20 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v21 = 0x4000000;
      }

      else
      {
        v21 = 0;
      }

      v22 = v19 == 0;
      v23 = 1310995;
      v24 = 18088211;
      goto LABEL_584;
    case 65:
      a3->i64[0] = "MTLPixelFormatRG16Float";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v229 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v20 = 0x2000000;
      }

      else
      {
        v20 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v21 = 0x4000000;
      }

      else
      {
        v21 = 0;
      }

      v23 = 197023;
      v22 = v229 == 0;
      v24 = 16974239;
LABEL_584:
      if (!v22)
      {
        v23 = v24;
      }

LABEL_891:
      v315 = v23 | v20 | v21;
      goto LABEL_1659;
    case 66:
      a3->i64[0] = "MTLPixelFormatRG16Bfloat";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v25 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8) | 0x30000;
      }

      else
      {
        v25 = 196608;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
        {
          v491 = 2;
        }

        else
        {
          v491 = 0;
        }
      }

      else
      {
        v491 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
        {
          v492 = 16;
        }

        else
        {
          v492 = 0;
        }
      }

      else
      {
        v492 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v315 = v25 | v491 | v492;
LABEL_1659:
      a3->i32[2] = v315;
      v493 = xmmword_185DD2C80;
      goto LABEL_2870;
    case 70:
      v317 = "MTLPixelFormatRGBA8Unorm";
      goto LABEL_1485;
    case 71:
      v68 = "MTLPixelFormatRGBA8Unorm_sRGB";
      goto LABEL_1403;
    case 72:
      a3->i64[0] = "MTLPixelFormatRGBA8Snorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v31 = MTLGPUFamilyApple2;
      }

      else
      {
        v31 = MTLGPUFamilyMac1;
      }

      v32 = MTLPixelFormatQuery::supportsFamily(this, v31);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v33 = MTLGPUFamilyApple1;
      }

      else
      {
        v33 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v33))
      {
        v34 = 256;
      }

      else
      {
        v34 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v35 = 0x1000000;
      }

      else
      {
        v35 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v36 = 0x2000000;
      }

      else
      {
        v36 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v37 = 0x4000000;
      }

      else
      {
        v37 = 0;
      }

      if (v32)
      {
        v38 = -1889;
      }

      else
      {
        v38 = -2017;
      }

      v39 = v38 | v34;
      v40 = v35 + v36;
      goto LABEL_1555;
    case 73:
      a3->i64[0] = "MTLPixelFormatRGBA8Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v80 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v59 = 0x2000000;
      }

      else
      {
        v59 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v60 = 0x4000000;
      }

      else
      {
        v60 = 0;
      }

      if (v80)
      {
        v62 = 19398931;
      }

      else
      {
        v62 = 2621715;
      }

      goto LABEL_1494;
    case 74:
      a3->i64[0] = "MTLPixelFormatRGBA8Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v58 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v59 = 0x2000000;
      }

      else
      {
        v59 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v60 = 0x4000000;
      }

      else
      {
        v60 = 0;
      }

      v61 = v58 == 0;
      v62 = 1310995;
      v63 = 18088211;
      goto LABEL_1492;
    case 80:
      v317 = "MTLPixelFormatBGRA8Unorm";
LABEL_1485:
      a3->i64[0] = v317;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v449 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v59 = 0x2000000;
      }

      else
      {
        v59 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v60 = 0x4000000;
      }

      else
      {
        v60 = 0;
      }

      v62 = 197023;
      v61 = v449 == 0;
      v63 = 16974239;
LABEL_1492:
      if (!v61)
      {
        v62 = v63;
      }

LABEL_1494:
      v366 = v62 | v59;
      goto LABEL_2386;
    case 81:
      v68 = "MTLPixelFormatBGRA8Unorm_sRGB";
LABEL_1403:
      a3->i64[0] = v68;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v427 = 415;
        }

        else
        {
          v427 = 413;
        }

        v428 = v427 + 198656;
      }

      else
      {
        v428 = 199069;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v429 = 0x1000000;
      }

      else
      {
        v429 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v430 = 0x2000000;
      }

      else
      {
        v430 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v431 = 0x4000000;
      }

      else
      {
        v431 = 0;
      }

      v366 = v428 | v429;
      v60 = v430 | v431;
      goto LABEL_2386;
    case 84:
      v88 = "MTLPixelFormatARGB8Unorm";
      goto LABEL_473;
    case 85:
      a3->i64[0] = "MTLPixelFormatARGB8Unorm_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v447 = 415;
        }

        else
        {
          v447 = 413;
        }

        v98 = v447 + 198656;
      }

      else
      {
        v98 = 199069;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      goto LABEL_2697;
    case 90:
      a3->i64[0] = "MTLPixelFormatRGB10A2Unorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v42 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) == 0;
      v43 = 2001;
      goto LABEL_1539;
    case 91:
      a3->i64[0] = "MTLPixelFormatRGB10A2Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v474 = MTLGPUFamilyApple3;
      }

      else
      {
        v474 = MTLGPUFamilyMac1;
      }

      v475 = MTLPixelFormatQuery::supportsFamily(this, v474);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v476 = 0x1000000;
      }

      else
      {
        v476 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v477 = 0x2000000;
      }

      else
      {
        v477 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v365 = 0x4000000;
      }

      else
      {
        v365 = 0;
      }

      if (v475)
      {
        v366 = 2621715;
      }

      else
      {
        v366 = 2621713;
      }

      v367 = v476 | v477;
      goto LABEL_1120;
    case 92:
      a3->i64[0] = "MTLPixelFormatRG11B10Float";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v423 = MTLGPUFamilyApple3;
      }

      else
      {
        v423 = MTLGPUFamilyMac1;
      }

      v424 = MTLPixelFormatQuery::supportsFamily(this, v423);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (v424)
      {
        v425 = -1633;
      }

      else
      {
        v425 = -1635;
      }

      v426 = v425 + 198656;
      goto LABEL_2716;
    case 93:
      v459 = 229381;
      a3->i64[0] = "MTLPixelFormatRGB9E5Float";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v459 = 229383;
        }

        else
        {
          v459 = 229381;
        }
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v460 = 8;
        }

        else
        {
          v460 = 0;
        }
      }

      else
      {
        v460 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v718 = 16;
        }

        else
        {
          v718 = 0;
        }
      }

      else
      {
        v718 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v719 = 128;
        }

        else
        {
          v719 = 0;
        }
      }

      else
      {
        v719 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
        {
          v720 = 256;
        }

        else
        {
          v720 = 0;
        }
      }

      else
      {
        v720 = 0;
      }

      v426 = v459 | v460 | v718 | v719 | v720;
LABEL_2716:
      a3->i32[2] = v426;
      v120 = xmmword_185DD2C80;
      goto LABEL_2664;
    case 94:
      a3->i64[0] = "MTLPixelFormatBGR10A2Unorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v42 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) == 0;
      v43 = 2002;
LABEL_1539:
      if (v42)
      {
        v463 = v43;
      }

      else
      {
        v463 = MTLGPUFamilyApple3;
      }

      v464 = MTLPixelFormatQuery::supportsFamily(this, v463);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v465 = 0x1000000;
      }

      else
      {
        v465 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v466 = 0x2000000;
      }

      else
      {
        v466 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v37 = 0x4000000;
      }

      else
      {
        v37 = 0;
      }

      if (v464)
      {
        v39 = -1633;
      }

      else
      {
        v39 = -1635;
      }

      v40 = v465 + v466;
LABEL_1555:
      v200 = v39 + v40 + v37 + 198656;
      goto LABEL_2387;
    case 103:
      a3->i64[0] = "MTLPixelFormatRG32Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v49 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_1674;
      }

      if (*this)
      {
        v49 = [*this isMsaa32bSupported];
LABEL_1674:
        v496 = v49;
        goto LABEL_1675;
      }

      v496 = this[1] == -1;
LABEL_1675:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v497 = 0x4000000;
      }

      else
      {
        v497 = 0;
      }

      v498 = 537395219;
      goto LABEL_2681;
    case 104:
      a3->i64[0] = "MTLPixelFormatRG32Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v420 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_2676;
      }

      if (*this)
      {
        v420 = [*this isMsaa32bSupported];
LABEL_2676:
        v496 = v420;
        goto LABEL_2677;
      }

      v496 = this[1] == -1;
LABEL_2677:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v497 = 0x4000000;
      }

      else
      {
        v497 = 0;
      }

      v498 = 262163;
LABEL_2681:
      if (v496)
      {
        v498 |= 0x100u;
      }

      v717 = v498 | v497;
      goto LABEL_2869;
    case 105:
      a3->i64[0] = "MTLPixelFormatRG32Float";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v50 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_1680;
      }

      if (*this)
      {
        v50 = [*this isFloat32FilteringSupported];
LABEL_1680:
        v499 = v50;
        goto LABEL_1681;
      }

      v499 = this[1] == -1;
LABEL_1681:
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v500 = [*this isMsaa32bSupported];
        }

        else
        {
          v500 = this[1] == -1;
        }
      }

      else
      {
        v500 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      if (v500)
      {
        v754 = 128;
      }

      else
      {
        v754 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v755 = [*this isMsaa32bSupported];
        }

        else
        {
          v755 = this[1] == -1;
        }
      }

      else
      {
        v755 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      if (v755)
      {
        v756 = 256;
      }

      else
      {
        v756 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v757 = 0x4000000;
      }

      else
      {
        v757 = 0;
      }

      if (v499)
      {
        v758 = -2017;
      }

      else
      {
        v758 = -2021;
      }

      v717 = v758 + v754 + v756 + v757 + 198656;
LABEL_2869:
      a3->i32[2] = v717;
      v493 = xmmword_185DD30A0;
      goto LABEL_2870;
    case 110:
      v217 = "MTLPixelFormatRGBA16Unorm";
      goto LABEL_1560;
    case 112:
      v217 = "MTLPixelFormatRGBA16Snorm";
LABEL_1560:
      a3->i64[0] = v217;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v468 = MTLGPUFamilyApple4;
      }

      else
      {
        v468 = MTLGPUFamilyMac1;
      }

      v469 = MTLPixelFormatQuery::supportsFamily(this, v468);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v470 = 0x1000000;
      }

      else
      {
        v470 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v471 = 0x2000000;
      }

      else
      {
        v471 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v472 = 0x4000000;
      }

      else
      {
        v472 = 0;
      }

      if (v469)
      {
        v473 = -1633;
      }

      else
      {
        v473 = -1761;
      }

      v113 = v473 + v470 + v471 + v472 + 198656;
      goto LABEL_2288;
    case 113:
      a3->i64[0] = "MTLPixelFormatRGBA16Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v437 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v53 = 0x2000000;
      }

      else
      {
        v53 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v54 = 0x4000000;
      }

      else
      {
        v54 = 0;
      }

      if (v437)
      {
        v56 = 19398931;
      }

      else
      {
        v56 = 2621715;
      }

      goto LABEL_1448;
    case 114:
      a3->i64[0] = "MTLPixelFormatRGBA16Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v52 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v53 = 0x2000000;
      }

      else
      {
        v53 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v54 = 0x4000000;
      }

      else
      {
        v54 = 0;
      }

      v55 = v52 == 0;
      v56 = 1310995;
      v57 = 18088211;
      goto LABEL_716;
    case 115:
      a3->i64[0] = "MTLPixelFormatRGBA16Float";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v269 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v53 = 0x2000000;
      }

      else
      {
        v53 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v54 = 0x4000000;
      }

      else
      {
        v54 = 0;
      }

      v56 = 197023;
      v55 = v269 == 0;
      v57 = 16974239;
LABEL_716:
      if (!v55)
      {
        v56 = v57;
      }

LABEL_1448:
      v113 = v56 | v53 | v54;
      goto LABEL_2288;
    case 116:
      a3->i64[0] = "MTLPixelFormatRGBA16Bfloat";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v318 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8) | 0x30000;
      }

      else
      {
        v318 = 196608;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
        {
          v636 = 2;
        }

        else
        {
          v636 = 0;
        }
      }

      else
      {
        v636 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
        {
          v637 = 16;
        }

        else
        {
          v637 = 0;
        }
      }

      else
      {
        v637 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v113 = v318 | v636 | v637;
      goto LABEL_2288;
    case 123:
      a3->i64[0] = "MTLPixelFormatRGBA32Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v254 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_2010;
      }

      if (*this)
      {
        v254 = [*this isMsaa32bSupported];
LABEL_2010:
        v576 = v254;
        goto LABEL_2011;
      }

      v576 = this[1] == -1;
LABEL_2011:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v577 = 0x4000000;
      }

      else
      {
        v577 = 0;
      }

      v578 = 524307;
      goto LABEL_2723;
    case 124:
      a3->i64[0] = "MTLPixelFormatRGBA32Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v467 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_2718;
      }

      if (*this)
      {
        v467 = [*this isMsaa32bSupported];
LABEL_2718:
        v576 = v467;
        goto LABEL_2719;
      }

      v576 = this[1] == -1;
LABEL_2719:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v577 = 0x4000000;
      }

      else
      {
        v577 = 0;
      }

      v578 = 262163;
LABEL_2723:
      if (v576)
      {
        v578 |= 0x100u;
      }

      v721 = v578 | v577;
      goto LABEL_2967;
    case 125:
      a3->i64[0] = "MTLPixelFormatRGBA32Float";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v115 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_1763;
      }

      if (*this)
      {
        v115 = [*this isFloat32FilteringSupported];
LABEL_1763:
        v512 = v115;
        goto LABEL_1764;
      }

      v512 = this[1] == -1;
LABEL_1764:
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v513 = [*this isMsaa32bSupported];
        }

        else
        {
          v513 = this[1] == -1;
        }
      }

      else
      {
        v513 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      if (v513)
      {
        v560 = 128;
      }

      else
      {
        v560 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v765 = [*this isMsaa32bSupported];
        }

        else
        {
          v765 = this[1] == -1;
        }
      }

      else
      {
        v765 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      if (v765)
      {
        v766 = 256;
      }

      else
      {
        v766 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v767 = 0x4000000;
      }

      else
      {
        v767 = 0;
      }

      v768 = !v512;
      v769 = -2021;
      v770 = -2017;
      goto LABEL_2964;
    case 130:
      a3->i64[0] = "MTLPixelFormatBC1_RGBA";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v174 = [*this supportsBCTextureCompression];
        }

        else
        {
          v174 = this[1] == -1;
        }
      }

      else
      {
        v174 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      v771 = v174 | 0x430404;
      goto LABEL_3004;
    case 131:
      a3->i64[0] = "MTLPixelFormatBC1_RGBA_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v451 = [*this supportsBCTextureCompression];
        }

        else
        {
          v451 = this[1] == -1;
        }
      }

      else
      {
        v451 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      v771 = v451 | 0x430C04;
LABEL_3004:
      a3->i32[2] = v771;
      v228 = xmmword_185DD3090;
      goto LABEL_3005;
    case 132:
      a3->i64[0] = "MTLPixelFormatBC2_RGBA";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v316 = [*this supportsBCTextureCompression];
        }

        else
        {
          v316 = this[1] == -1;
        }
      }

      else
      {
        v316 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      v764 = v316 | 0x430404;
      goto LABEL_2976;
    case 133:
      a3->i64[0] = "MTLPixelFormatBC2_RGBA_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v89 = [*this supportsBCTextureCompression];
        }

        else
        {
          v89 = this[1] == -1;
        }
      }

      else
      {
        v89 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      v764 = v89 | 0x430C04;
LABEL_2976:
      a3->i32[2] = v764;
      v228 = xmmword_185DD3080;
      goto LABEL_3005;
    case 134:
      a3->i64[0] = "MTLPixelFormatBC3_RGBA";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v64 = [*this supportsBCTextureCompression];
        }

        else
        {
          v64 = this[1] == -1;
        }
      }

      else
      {
        v64 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      v759 = v64 | 0x430404;
      goto LABEL_2875;
    case 135:
      a3->i64[0] = "MTLPixelFormatBC3_RGBA_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v51 = [*this supportsBCTextureCompression];
        }

        else
        {
          v51 = this[1] == -1;
        }
      }

      else
      {
        v51 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      v759 = v51 | 0x430C04;
LABEL_2875:
      a3->i32[2] = v759;
      v228 = xmmword_185DD3070;
      goto LABEL_3005;
    case 140:
      v65 = "MTLPixelFormatBC4_RUnorm";
      goto LABEL_169;
    case 141:
      v65 = "MTLPixelFormatBC4_RSnorm";
LABEL_169:
      a3->i64[0] = v65;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v91 = [*this supportsBCTextureCompression];
        }

        else
        {
          v91 = this[1] == -1;
        }
      }

      else
      {
        v91 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      a3->i32[2] = v91 | 0x430404;
      v228 = xmmword_185DD3060;
      goto LABEL_3005;
    case 142:
      v443 = "MTLPixelFormatBC5_RGUnorm";
      goto LABEL_1529;
    case 143:
      v443 = "MTLPixelFormatBC5_RGSnorm";
LABEL_1529:
      a3->i64[0] = v443;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v461 = [*this supportsBCTextureCompression];
        }

        else
        {
          v461 = this[1] == -1;
        }
      }

      else
      {
        v461 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      a3->i32[2] = v461 | 0x430404;
      v228 = xmmword_185DD3050;
      goto LABEL_3005;
    case 150:
      v255 = "MTLPixelFormatBC6H_RGBFloat";
      goto LABEL_1534;
    case 151:
      v255 = "MTLPixelFormatBC6H_RGBUfloat";
LABEL_1534:
      a3->i64[0] = v255;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v462 = [*this supportsBCTextureCompression];
        }

        else
        {
          v462 = this[1] == -1;
        }
      }

      else
      {
        v462 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      a3->i32[2] = v462 | 0x430404;
      v228 = xmmword_185DD3040;
      goto LABEL_3005;
    case 152:
      a3->i64[0] = "MTLPixelFormatBC7_RGBAUnorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v175 = [*this supportsBCTextureCompression];
        }

        else
        {
          v175 = this[1] == -1;
        }
      }

      else
      {
        v175 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      v772 = v175 | 0x430404;
      goto LABEL_2979;
    case 153:
      a3->i64[0] = "MTLPixelFormatBC7_RGBAUnorm_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v319 = [*this supportsBCTextureCompression];
        }

        else
        {
          v319 = this[1] == -1;
        }
      }

      else
      {
        v319 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      v772 = v319 | 0x430C04;
LABEL_2979:
      a3->i32[2] = v772;
      v228 = xmmword_185DD3030;
      goto LABEL_3005;
    case 160:
      a3->i64[0] = "MTLPixelFormatPVRTC_RGB_2BPP";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v439 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 205828;
      }

      else
      {
        v439 = 205828;
      }

      a3->i32[2] = v439;
      goto LABEL_2694;
    case 161:
      v129 = 207876;
      a3->i64[0] = "MTLPixelFormatPVRTC_RGB_2BPP_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v129 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x32C04;
      }

      a3->i32[2] = v129;
LABEL_2694:
      v228 = xmmword_185DD3020;
      goto LABEL_2879;
    case 162:
      a3->i64[0] = "MTLPixelFormatPVRTC_RGB_4BPP";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v127 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 205828;
      }

      else
      {
        v127 = 205828;
      }

      a3->i32[2] = v127;
      goto LABEL_1783;
    case 163:
      v73 = 207876;
      a3->i64[0] = "MTLPixelFormatPVRTC_RGB_4BPP_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v73 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x32C04;
      }

      a3->i32[2] = v73;
LABEL_1783:
      v228 = xmmword_185DD3010;
      goto LABEL_3005;
    case 164:
      a3->i64[0] = "MTLPixelFormatPVRTC_RGBA_2BPP";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v71 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 205828;
      }

      else
      {
        v71 = 205828;
      }

      a3->i32[2] = v71;
      goto LABEL_1720;
    case 165:
      v446 = 207876;
      a3->i64[0] = "MTLPixelFormatPVRTC_RGBA_2BPP_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v446 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x32C04;
      }

      a3->i32[2] = v446;
LABEL_1720:
      v228 = xmmword_185DD3000;
      goto LABEL_2879;
    case 166:
      a3->i64[0] = "MTLPixelFormatPVRTC_RGBA_4BPP";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v74 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 205828;
      }

      else
      {
        v74 = 205828;
      }

      a3->i32[2] = v74;
      goto LABEL_1729;
    case 167:
      v398 = 207876;
      a3->i64[0] = "MTLPixelFormatPVRTC_RGBA_4BPP_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v398 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x32C04;
      }

      a3->i32[2] = v398;
LABEL_1729:
      v228 = xmmword_185DD2FF0;
      goto LABEL_3005;
    case 170:
      v171 = "MTLPixelFormatEAC_R11Unorm";
      goto LABEL_573;
    case 172:
      v171 = "MTLPixelFormatEAC_R11Snorm";
LABEL_573:
      a3->i64[0] = v171;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v227 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 197636;
      }

      else
      {
        v227 = 197636;
      }

      a3->i32[2] = v227;
      v228 = xmmword_185DD2FE0;
      goto LABEL_3005;
    case 174:
      v76 = "MTLPixelFormatEAC_RG11Unorm";
      goto LABEL_1314;
    case 176:
      v76 = "MTLPixelFormatEAC_RG11Snorm";
LABEL_1314:
      a3->i64[0] = v76;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v403 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 197636;
      }

      else
      {
        v403 = 197636;
      }

      a3->i32[2] = v403;
      v228 = xmmword_185DD2FD0;
      goto LABEL_3005;
    case 178:
      a3->i64[0] = "MTLPixelFormatEAC_RGBA8";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v401 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 197636;
      }

      else
      {
        v401 = 197636;
      }

      goto LABEL_2672;
    case 179:
      a3->i64[0] = "MTLPixelFormatEAC_RGBA8_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v401 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 199684;
      }

      else
      {
        v401 = 199684;
      }

LABEL_2672:
      a3->i32[2] = v401;
      v228 = xmmword_185DD2FC0;
      goto LABEL_3005;
    case 180:
      a3->i64[0] = "MTLPixelFormatETC2_RGB8";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v387 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 197636;
      }

      else
      {
        v387 = 197636;
      }

      goto LABEL_2670;
    case 181:
      a3->i64[0] = "MTLPixelFormatETC2_RGB8_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v387 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 199684;
      }

      else
      {
        v387 = 199684;
      }

LABEL_2670:
      a3->i32[2] = v387;
      v228 = xmmword_185DD2FB0;
      goto LABEL_3005;
    case 182:
      a3->i64[0] = "MTLPixelFormatETC2_RGB8A1";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v256 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 197636;
      }

      else
      {
        v256 = 197636;
      }

      goto LABEL_2668;
    case 183:
      a3->i64[0] = "MTLPixelFormatETC2_RGB8A1_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v256 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) + 199684;
      }

      else
      {
        v256 = 199684;
      }

LABEL_2668:
      a3->i32[2] = v256;
      v228 = xmmword_185DD2FA0;
      goto LABEL_3005;
    case 185:
      a3->i64[0] = "MTLPixelFormatASTC_4x2_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v412 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v412 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v412 = this[1] == -1;
      }

      v749 = v412 | 0x31C04;
      goto LABEL_2985;
    case 186:
      a3->i64[0] = "MTLPixelFormatASTC_4x4_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v77 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v77 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v77 = this[1] == -1;
      }

      v753 = v77 | 0x31C04;
      goto LABEL_2899;
    case 187:
      a3->i64[0] = "MTLPixelFormatASTC_5x4_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v433 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v433 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v433 = this[1] == -1;
      }

      v745 = v433 | 0x31C04;
      goto LABEL_2998;
    case 188:
      a3->i64[0] = "MTLPixelFormatASTC_5x5_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v419 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v419 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v419 = this[1] == -1;
      }

      v743 = v419 | 0x31C04;
      goto LABEL_2988;
    case 189:
      a3->i64[0] = "MTLPixelFormatASTC_6x5_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v79 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v79 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v79 = this[1] == -1;
      }

      v738 = v79 | 0x31C04;
      goto LABEL_2902;
    case 190:
      a3->i64[0] = "MTLPixelFormatASTC_6x6_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v168 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v168 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v168 = this[1] == -1;
      }

      v752 = v168 | 0x31C04;
      goto LABEL_2940;
    case 191:
      a3->i64[0] = "MTLPixelFormatASTC_8x4_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v66 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v66 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v66 = this[1] == -1;
      }

      v742 = v66 | 0x31C04;
      goto LABEL_2878;
    case 192:
      a3->i64[0] = "MTLPixelFormatASTC_8x5_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v432 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v432 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v432 = this[1] == -1;
      }

      v747 = v432 | 0x31C04;
      goto LABEL_2995;
    case 193:
      a3->i64[0] = "MTLPixelFormatASTC_8x6_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v438 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v438 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v438 = this[1] == -1;
      }

      v746 = v438 | 0x31C04;
      goto LABEL_3001;
    case 194:
      a3->i64[0] = "MTLPixelFormatASTC_8x8_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v99 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v99 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v99 = this[1] == -1;
      }

      v748 = v99 | 0x31C04;
      goto LABEL_2917;
    case 195:
      a3->i64[0] = "MTLPixelFormatASTC_10x5_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v251 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v251 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v251 = this[1] == -1;
      }

      v744 = v251 | 0x31C04;
      goto LABEL_2972;
    case 196:
      a3->i64[0] = "MTLPixelFormatASTC_10x6_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v90 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v90 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v90 = this[1] == -1;
      }

      v741 = v90 | 0x31C04;
      goto LABEL_2914;
    case 197:
      a3->i64[0] = "MTLPixelFormatASTC_10x8_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v107 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v107 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v107 = this[1] == -1;
      }

      v740 = v107 | 0x31C04;
      goto LABEL_2920;
    case 198:
      a3->i64[0] = "MTLPixelFormatASTC_10x10_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v421 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v421 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v421 = this[1] == -1;
      }

      v739 = v421 | 0x31C04;
      goto LABEL_2992;
    case 199:
      a3->i64[0] = "MTLPixelFormatASTC_12x10_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v85 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v85 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v85 = this[1] == -1;
      }

      v750 = v85 | 0x31C04;
      goto LABEL_2909;
    case 200:
      a3->i64[0] = "MTLPixelFormatASTC_12x12_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v70 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v70 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v70 = this[1] == -1;
      }

      v751 = v70 | 0x31C04;
      goto LABEL_2882;
    case 203:
      v92 = "MTLPixelFormatASTC_4x2_LDR";
      goto LABEL_1480;
    case 204:
      v415 = "MTLPixelFormatASTC_4x4_LDR";
      goto LABEL_1391;
    case 205:
      v169 = "MTLPixelFormatASTC_5x4_LDR";
      goto LABEL_404;
    case 206:
      v108 = "MTLPixelFormatASTC_5x5_LDR";
      goto LABEL_546;
    case 207:
      v81 = "MTLPixelFormatASTC_6x5_LDR";
      goto LABEL_260;
    case 208:
      v388 = "MTLPixelFormatASTC_6x6_LDR";
      goto LABEL_1467;
    case 209:
      v86 = "MTLPixelFormatASTC_8x4_LDR";
      goto LABEL_941;
    case 210:
      v130 = "MTLPixelFormatASTC_8x5_LDR";
      goto LABEL_1349;
    case 211:
      v145 = "MTLPixelFormatASTC_8x6_LDR";
      goto LABEL_902;
    case 212:
      v177 = "MTLPixelFormatASTC_8x8_LDR";
      goto LABEL_1298;
    case 213:
      v105 = "MTLPixelFormatASTC_10x5_LDR";
      goto LABEL_678;
    case 214:
      v146 = "MTLPixelFormatASTC_10x6_LDR";
      goto LABEL_352;
    case 215:
      v112 = "MTLPixelFormatASTC_10x8_LDR";
      goto LABEL_410;
    case 216:
      v75 = "MTLPixelFormatASTC_10x10_LDR";
      goto LABEL_683;
    case 217:
      v93 = "MTLPixelFormatASTC_12x10_LDR";
      goto LABEL_1496;
    case 218:
      v201 = "MTLPixelFormatASTC_12x12_LDR";
      goto LABEL_1462;
    case 221:
      v92 = "MTLPixelFormatASTC_4x2_HDR";
LABEL_1480:
      a3->i64[0] = v92;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v448 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v448 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v448 = this[1] == -1;
      }

      v749 = v448 | 0x31404;
LABEL_2985:
      a3->i32[2] = v749;
      v228 = xmmword_185DD2F80;
      v413 = xmmword_185DD2F90;
      goto LABEL_3007;
    case 222:
      v415 = "MTLPixelFormatASTC_4x4_HDR";
LABEL_1391:
      a3->i64[0] = v415;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v422 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v422 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v422 = this[1] == -1;
      }

      v753 = v422 | 0x31404;
LABEL_2899:
      a3->i32[2] = v753;
      v228 = xmmword_185DD2F70;
LABEL_3005:
      v760 = 4;
      goto LABEL_3006;
    case 223:
      v169 = "MTLPixelFormatASTC_5x4_HDR";
LABEL_404:
      a3->i64[0] = v169;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v176 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v176 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v176 = this[1] == -1;
      }

      v745 = v176 | 0x31404;
LABEL_2998:
      a3->i32[2] = v745;
      v228 = xmmword_185DD2F50;
      v413 = xmmword_185DD2F60;
      goto LABEL_3007;
    case 224:
      v108 = "MTLPixelFormatASTC_5x5_HDR";
LABEL_546:
      a3->i64[0] = v108;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v219 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v219 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v219 = this[1] == -1;
      }

      v743 = v219 | 0x31404;
LABEL_2988:
      a3->i32[2] = v743;
      v228 = xmmword_185DD2F40;
      v760 = 5;
      goto LABEL_3006;
    case 225:
      v81 = "MTLPixelFormatASTC_6x5_HDR";
LABEL_260:
      a3->i64[0] = v81;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v128 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v128 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v128 = this[1] == -1;
      }

      v738 = v128 | 0x31404;
LABEL_2902:
      a3->i32[2] = v738;
      v228 = xmmword_185DD2F20;
      v413 = xmmword_185DD2F30;
      goto LABEL_3007;
    case 226:
      v388 = "MTLPixelFormatASTC_6x6_HDR";
LABEL_1467:
      a3->i64[0] = v388;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v445 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v445 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v445 = this[1] == -1;
      }

      v752 = v445 | 0x31404;
LABEL_2940:
      a3->i32[2] = v752;
      v228 = xmmword_185DD2F10;
      v760 = 6;
      goto LABEL_3006;
    case 227:
      v86 = "MTLPixelFormatASTC_8x4_HDR";
LABEL_941:
      a3->i64[0] = v86;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v327 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v327 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v327 = this[1] == -1;
      }

      v742 = v327 | 0x31404;
LABEL_2878:
      a3->i32[2] = v742;
      v228 = xmmword_185DD2EF0;
LABEL_2879:
      v413 = xmmword_185DD2F00;
      goto LABEL_3007;
    case 228:
      v130 = "MTLPixelFormatASTC_8x5_HDR";
LABEL_1349:
      a3->i64[0] = v130;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v414 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v414 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v414 = this[1] == -1;
      }

      v747 = v414 | 0x31404;
LABEL_2995:
      a3->i32[2] = v747;
      v228 = xmmword_185DD2ED0;
      v413 = xmmword_185DD2EE0;
      goto LABEL_3007;
    case 229:
      v145 = "MTLPixelFormatASTC_8x6_HDR";
LABEL_902:
      a3->i64[0] = v145;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v320 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v320 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v320 = this[1] == -1;
      }

      v746 = v320 | 0x31404;
LABEL_3001:
      a3->i32[2] = v746;
      v228 = xmmword_185DD2EB0;
      v413 = xmmword_185DD2EC0;
      goto LABEL_3007;
    case 230:
      v177 = "MTLPixelFormatASTC_8x8_HDR";
LABEL_1298:
      a3->i64[0] = v177;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v399 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v399 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v399 = this[1] == -1;
      }

      v748 = v399 | 0x31404;
LABEL_2917:
      a3->i32[2] = v748;
      v228 = xmmword_185DD2EA0;
      v760 = 8;
      goto LABEL_3006;
    case 231:
      v105 = "MTLPixelFormatASTC_10x5_HDR";
LABEL_678:
      a3->i64[0] = v105;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v260 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v260 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v260 = this[1] == -1;
      }

      v744 = v260 | 0x31404;
LABEL_2972:
      a3->i32[2] = v744;
      v228 = xmmword_185DD2E80;
      v413 = xmmword_185DD2E90;
      goto LABEL_3007;
    case 232:
      v146 = "MTLPixelFormatASTC_10x6_HDR";
LABEL_352:
      a3->i64[0] = v146;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v159 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v159 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v159 = this[1] == -1;
      }

      v741 = v159 | 0x31404;
LABEL_2914:
      a3->i32[2] = v741;
      v228 = xmmword_185DD2E60;
      v413 = xmmword_185DD2E70;
      goto LABEL_3007;
    case 233:
      v112 = "MTLPixelFormatASTC_10x8_HDR";
LABEL_410:
      a3->i64[0] = v112;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v178 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v178 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v178 = this[1] == -1;
      }

      v740 = v178 | 0x31404;
LABEL_2920:
      a3->i32[2] = v740;
      v228 = xmmword_185DD2E40;
      v413 = xmmword_185DD2E50;
      goto LABEL_3007;
    case 234:
      v75 = "MTLPixelFormatASTC_10x10_HDR";
LABEL_683:
      a3->i64[0] = v75;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v261 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v261 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v261 = this[1] == -1;
      }

      v739 = v261 | 0x31404;
LABEL_2992:
      a3->i32[2] = v739;
      v228 = xmmword_185DD2E30;
      v760 = 10;
      goto LABEL_3006;
    case 235:
      v93 = "MTLPixelFormatASTC_12x10_HDR";
LABEL_1496:
      a3->i64[0] = v93;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v450 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v450 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v450 = this[1] == -1;
      }

      v750 = v450 | 0x31404;
LABEL_2909:
      a3->i32[2] = v750;
      v228 = xmmword_185DD2E10;
      v413 = xmmword_185DD2E20;
      goto LABEL_3007;
    case 236:
      v201 = "MTLPixelFormatASTC_12x12_HDR";
LABEL_1462:
      a3->i64[0] = v201;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v444 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

      else if (*this)
      {
        v444 = [*this supportsASTCTextureCompression];
      }

      else
      {
        v444 = this[1] == -1;
      }

      v751 = v444 | 0x31404;
LABEL_2882:
      a3->i32[2] = v751;
      v228 = xmmword_185DD2E00;
      v760 = 12;
LABEL_3006:
      v413 = vdupq_n_s64(v760);
      goto LABEL_3007;
    case 240:
      v94 = "MTLPixelFormatGBGR422";
      goto LABEL_1343;
    case 241:
      v94 = "MTLPixelFormatBGRG422";
LABEL_1343:
      a3->i64[0] = v94;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      a3->i32[2] = 214021;
      v228 = xmmword_185DD2D20;
      v413 = xmmword_185DC62A0;
LABEL_3007:
      a3[1] = v228;
      a3[2] = v413;
      a3[3].i64[0] = 1;
      goto LABEL_3008;
    case 250:
      a3->i64[0] = "MTLPixelFormatDepth16Unorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v381 = MTLGPUFamilyApple3;
      }

      else
      {
        v381 = MTLGPUFamilyMac1;
      }

      v382 = MTLPixelFormatQuery::supportsFamily(this, v381);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v383 = 0;
      }

      else if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1))
      {
        v383 = 512;
      }

      else
      {
        v383 = 0;
      }

      if (v382)
      {
        v662 = -1627;
      }

      else
      {
        v662 = -1755;
      }

      v313 = v662 + v383 + 198656;
      goto LABEL_2402;
    case 252:
      a3->i64[0] = "MTLPixelFormatDepth32Float";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v328 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_2313;
      }

      if (*this)
      {
        v328 = [*this isFloat32FilteringSupported];
LABEL_2313:
        v643 = v328;
        goto LABEL_2314;
      }

      v643 = this[1] == -1;
LABEL_2314:
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v644 = MTLGPUFamilyApple3;
      }

      else
      {
        v644 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v644))
      {
        v645 = 128;
      }

      else
      {
        v645 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v646 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v647 = 0;
      if ((v646 & 1) == 0)
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1))
        {
          v647 = 512;
        }

        else
        {
          v647 = 0;
        }
      }

      if (v643)
      {
        v648 = -1755;
      }

      else
      {
        v648 = -1759;
      }

      a3->i32[2] = v648 + v647 + 198656 + v645;
      v411 = xmmword_185DD2D20;
LABEL_2896:
      a3[1] = v411;
      v716 = 1;
      goto LABEL_2969;
    case 253:
      a3->i64[0] = "MTLPixelFormatStencil8";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v181 = MTLGPUFamilyApple3;
      }

      else
      {
        v181 = MTLGPUFamilyMac2;
      }

      v182 = MTLPixelFormatQuery::supportsFamily(this, v181);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v183 = 0;
      }

      else if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1))
      {
        v183 = 512;
      }

      else
      {
        v183 = 0;
      }

      if (v182)
      {
        v527 = 174;
      }

      else
      {
        v527 = 46;
      }

      v528 = v527 + v183 + 2621715;
      goto LABEL_2199;
    case 260:
      a3->i64[0] = "MTLPixelFormatDepth32Float_Stencil8";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v392 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_2492;
      }

      if (*this)
      {
        v392 = [*this isFloat32FilteringSupported];
LABEL_2492:
        v681 = v392;
        goto LABEL_2493;
      }

      v681 = this[1] == -1;
LABEL_2493:
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v682 = MTLGPUFamilyApple3;
      }

      else
      {
        v682 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v682))
      {
        v683 = 128;
      }

      else
      {
        v683 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v684 = MTLGPUFamilyApple1;
      }

      else
      {
        v684 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v684))
      {
        v685 = 512;
      }

      else
      {
        v685 = 0;
      }

      if (v681)
      {
        v686 = -1691;
      }

      else
      {
        v686 = -1695;
      }

      a3->i32[2] = (v686 | v683 | v685) + 8587264;
      v493 = xmmword_185DD2DF0;
LABEL_2870:
      a3[1] = v493;
      v716 = 2;
      goto LABEL_2969;
    case 261:
      v410 = 11010369;
      a3->i64[0] = "MTLPixelFormatX32_Stencil8";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if ((MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) & 1) == 0)
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1))
        {
          v410 = 11010881;
        }

        else
        {
          v410 = 11010369;
        }
      }

      a3->i32[2] = v410;
      v411 = xmmword_185DD2DE0;
      goto LABEL_2896;
    case 263:
      a3->i64[0] = "MTLPixelFormatUnspecialized";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v440 = MTLPixelFormatQuery::supportsFamily(this, 5002);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, 5002))
      {
        v441 = 8;
      }

      else
      {
        v441 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, 5002))
      {
        v442 = 16;
      }

      else
      {
        v442 = 0;
      }

      v366 = v441 | v440;
      v60 = v442 | 0x203F0000;
      goto LABEL_2386;
    case 300:
      v88 = "MTLPixelFormatRGBX8Unorm";
LABEL_473:
      a3->i64[0] = v88;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v200 = 197023;
      goto LABEL_2387;
    case 301:
      a3->i64[0] = "MTLPixelFormatRGBX8Unorm_sRGB";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v97 = 399;
        }

        else
        {
          v97 = 397;
        }

        v98 = v97 + 198656;
      }

      else
      {
        v98 = 199053;
      }

LABEL_2697:
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      a3->i32[2] = v98;
      goto LABEL_2388;
    case 302:
      a3->i64[0] = "MTLPixelFormatRGBX8Snorm";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v111 = 196623;
      }

      else
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1))
        {
          v508 = -2017;
        }

        else
        {
          v508 = -2033;
        }

        v111 = v508 + 198656;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v509 = MTLGPUFamilyApple2;
      }

      else
      {
        v509 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v509))
      {
        v510 = 128;
      }

      else
      {
        v510 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v511 = MTLGPUFamilyApple1;
      }

      else
      {
        v511 = MTLGPUFamilyMac1;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, v511))
      {
        v60 = 256;
      }

      else
      {
        v60 = 0;
      }

      v366 = v111 | v510;
      goto LABEL_2386;
    case 303:
      a3->i64[0] = "MTLPixelFormatRGBX8Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v200 = 2621699;
      goto LABEL_2387;
    case 304:
      a3->i64[0] = "MTLPixelFormatRGBX8Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v200 = 1310979;
      goto LABEL_2387;
    case 313:
      a3->i64[0] = "MTLPixelFormatRGBX16Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v113 = 2621699;
      goto LABEL_2288;
    case 314:
      a3->i64[0] = "MTLPixelFormatRGBX16Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v113 = 1310979;
      goto LABEL_2288;
    case 315:
      v87 = "MTLPixelFormatRGBX16Float";
      goto LABEL_218;
    case 323:
      a3->i64[0] = "MTLPixelFormatRGBX32Uint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v82 = [*this isMsaa32bSupported];
        }

        else
        {
          v82 = this[1] == -1;
        }
      }

      else
      {
        v82 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      if (v82)
      {
        v721 = 524547;
      }

      else
      {
        v721 = 524291;
      }

      goto LABEL_2967;
    case 324:
      a3->i64[0] = "MTLPixelFormatRGBX32Sint";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v215 = [*this isMsaa32bSupported];
        }

        else
        {
          v215 = this[1] == -1;
        }
      }

      else
      {
        v215 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      if (v215)
      {
        v773 = 240;
      }

      else
      {
        v773 = -16;
      }

      v721 = v773 + 262163;
      goto LABEL_2967;
    case 325:
      a3->i64[0] = "MTLPixelFormatRGBX32Float";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v230 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
        goto LABEL_1950;
      }

      if (*this)
      {
        v230 = [*this isFloat32FilteringSupported];
LABEL_1950:
        v559 = v230;
        goto LABEL_1951;
      }

      v559 = this[1] == -1;
LABEL_1951:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v560 = 0;
      }

      else if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1))
      {
        v560 = 8;
      }

      else
      {
        v560 = 0;
      }

      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v561 = [*this isMsaa32bSupported];
        }

        else
        {
          v561 = this[1] == -1;
        }
      }

      else
      {
        v561 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      if (v561)
      {
        v766 = 128;
      }

      else
      {
        v766 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (*this)
        {
          v774 = [*this isMsaa32bSupported];
        }

        else
        {
          v774 = this[1] == -1;
        }
      }

      else
      {
        v774 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyMac1);
      }

      if (v774)
      {
        v767 = 256;
      }

      else
      {
        v767 = 0;
      }

      v768 = !v559;
      v769 = -2029;
      v770 = -2025;
LABEL_2964:
      if (!v768)
      {
        v769 = v770;
      }

      v721 = v769 + v560 + v766 + v767 + 198656;
LABEL_2967:
      a3->i32[2] = v721;
      v324 = xmmword_185DD30B0;
LABEL_2968:
      a3[1] = v324;
      v716 = 4;
LABEL_2969:
      a3[2].i8[0] = v716;
LABEL_3008:
      v775 = a3->i32[2];
      if (*this)
      {
        v776 = (a3->i32[2] & 1) == 0;
      }

      else
      {
        v776 = 1;
      }

      if (v776)
      {
        a3->i32[2] = v775 & 0xFFFFFC01;
        if ((v775 & 0x400) == 0)
        {
          a3[2].i8[1] = 0;
          a3[2].i64[1] = 0;
          a3[3].i64[0] = 0;
          if (v775)
          {
            return;
          }

          goto LABEL_3019;
        }

        if ((v775 & 1) == 0)
        {
LABEL_3019:
          bzero(a3, 0x38uLL);
          a3->i64[0] = "MTLPixelFormatInvalid";
        }
      }

      else
      {
        if ((v775 & 0x400) == 0)
        {
          v777 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
          v778 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4);
          adjustPixelFormatForiOSDevice(a2, a3, &a3[2].i64[1], &a3[3], &a3[2].i8[1], v777, v778);
          v775 = a3->i32[2];
        }

        if ((v775 & 1) == 0)
        {
          goto LABEL_3019;
        }
      }

      return;
    case 500:
      a3->i64[0] = "MTLPixelFormatYCBCR8_420_2P";
      v224 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v224 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x830000;
      }

      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_961;
      }

      v225 = this;
      v226 = MTLGPUFamilyApple1;
      goto LABEL_958;
    case 501:
      a3->i64[0] = "MTLPixelFormatYCBCR8_422_1P";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v248 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x30000;
      }

      else
      {
        v248 = 196608;
      }

      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_1982;
      }

      v370 = this;
      v371 = MTLGPUFamilyApple1;
      goto LABEL_1979;
    case 502:
      a3->i64[0] = "MTLPixelFormatYCBCR8_422_2P";
      v329 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_949;
      }

      goto LABEL_950;
    case 503:
      a3->i64[0] = "MTLPixelFormatYCBCR8_444_2P";
      v179 = 8585216;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_416;
      }

      goto LABEL_415;
    case 504:
      a3->i64[0] = "MTLPixelFormatYCBCR10_444_1P";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v186 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x30000;
      }

      else
      {
        v186 = 196608;
      }

      goto LABEL_2405;
    case 505:
      a3->i64[0] = "MTLPixelFormatYCBCR10_420_2P";
      v83 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_152;
      }

      goto LABEL_153;
    case 506:
      a3->i64[0] = "MTLPixelFormatYCBCR10_422_2P";
      v100 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_190;
      }

      goto LABEL_191;
    case 507:
      a3->i64[0] = "MTLPixelFormatYCBCR10_444_2P";
      v95 = 8585216;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_178;
      }

      goto LABEL_177;
    case 508:
      a3->i64[0] = "MTLPixelFormatYCBCR10_420_2P_PACKED";
      v109 = 8585216;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_209;
      }

      goto LABEL_208;
    case 509:
      a3->i64[0] = "MTLPixelFormatYCBCR10_422_2P_PACKED";
      v184 = 8585216;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_427;
      }

      goto LABEL_426;
    case 510:
      a3->i64[0] = "MTLPixelFormatYCBCR10_444_2P_PACKED";
      v344 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v344 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3) | 0x830000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4))
        {
          v345 = 2;
        }

        else
        {
          v345 = 0;
        }
      }

      else
      {
        v345 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v651 = 4;
        }

        else
        {
          v651 = 0;
        }
      }

      else
      {
        v651 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v652 = 16;
        }

        else
        {
          v652 = 0;
        }
      }

      else
      {
        v652 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v653 = 0x1000000;
      }

      else
      {
        v653 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v654 = 0x2000000;
      }

      else
      {
        v654 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v655 = 0x4000000;
      }

      else
      {
        v655 = 0;
      }

      v533 = v344 | v345 | v651 | v652 | v653;
      v534 = v654 | v655;
      goto LABEL_2363;
    case 520:
      v224 = 8587264;
      a3->i64[0] = "MTLPixelFormatYCBCR8_420_2P_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v224 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x830800;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v225 = this;
        v226 = MTLGPUFamilyApple2;
LABEL_958:
        if (MTLPixelFormatQuery::supportsFamily(v225, v226))
        {
          v331 = 4;
        }

        else
        {
          v331 = 0;
        }
      }

      else
      {
LABEL_961:
        v331 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v332 = 8;
        }

        else
        {
          v332 = 0;
        }
      }

      else
      {
        v332 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v333 = 16;
        }

        else
        {
          v333 = 0;
        }
      }

      else
      {
        v333 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v334 = 0x1000000;
      }

      else
      {
        v334 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v335 = 0x2000000;
      }

      else
      {
        v335 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v336 = 0x4000000;
      }

      else
      {
        v336 = 0;
      }

      a3->i32[2] = v224 | v331 | v332 | v333 | v334 | v335 | v336;
      v120 = xmmword_185DD2DD0;
      goto LABEL_2664;
    case 521:
      v248 = 198656;
      a3->i64[0] = "MTLPixelFormatYCBCR8_422_1P_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v248 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x30800;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v370 = this;
        v371 = MTLGPUFamilyApple2;
LABEL_1979:
        if (MTLPixelFormatQuery::supportsFamily(v370, v371))
        {
          v568 = 4;
        }

        else
        {
          v568 = 0;
        }
      }

      else
      {
LABEL_1982:
        v568 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v569 = 8;
        }

        else
        {
          v569 = 0;
        }
      }

      else
      {
        v569 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v570 = 16;
        }

        else
        {
          v570 = 0;
        }
      }

      else
      {
        v570 = 0;
      }

      a3->i32[2] = v248 | v568 | v569 | v570;
      v120 = xmmword_185DD2DC0;
      goto LABEL_2664;
    case 522:
      v329 = 8587264;
      a3->i64[0] = "MTLPixelFormatYCBCR8_422_2P_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_949:
        v329 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

LABEL_950:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v330 = 4;
        }

        else
        {
          v330 = 0;
        }
      }

      else
      {
        v330 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v337 = 8;
        }

        else
        {
          v337 = 0;
        }
      }

      else
      {
        v337 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v338 = 16;
        }

        else
        {
          v338 = 0;
        }
      }

      else
      {
        v338 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v339 = 0x1000000;
      }

      else
      {
        v339 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v340 = 0x2000000;
      }

      else
      {
        v340 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v341 = 0x4000000;
      }

      else
      {
        v341 = 0;
      }

      a3->i32[2] = v329 | v330 | v337 | v338 | v339 | v340 | v341;
      v120 = xmmword_185DD2DB0;
      goto LABEL_2664;
    case 523:
      v179 = 8587264;
      a3->i64[0] = "MTLPixelFormatYCBCR8_444_2P_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_415:
        v179 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

LABEL_416:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4))
        {
          v180 = 2;
        }

        else
        {
          v180 = 0;
        }
      }

      else
      {
        v180 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v209 = 4;
        }

        else
        {
          v209 = 0;
        }
      }

      else
      {
        v209 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v210 = 8;
        }

        else
        {
          v210 = 0;
        }
      }

      else
      {
        v210 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v211 = 16;
        }

        else
        {
          v211 = 0;
        }
      }

      else
      {
        v211 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v212 = 0x1000000;
      }

      else
      {
        v212 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v213 = 0x2000000;
      }

      else
      {
        v213 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v214 = 0x4000000;
      }

      else
      {
        v214 = 0;
      }

      a3->i32[2] = v179 | v180 | v209 | v210 | v211 | v212 | v213 | v214;
      v120 = xmmword_185DD2DA0;
      goto LABEL_2664;
    case 524:
      v186 = 198656;
      a3->i64[0] = "MTLPixelFormatYCBCR10_444_1P_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v186 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x30800;
      }

LABEL_2405:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4))
        {
          v663 = 2;
        }

        else
        {
          v663 = 0;
        }
      }

      else
      {
        v663 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v664 = 4;
        }

        else
        {
          v664 = 0;
        }
      }

      else
      {
        v664 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v665 = 8;
        }

        else
        {
          v665 = 0;
        }
      }

      else
      {
        v665 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v666 = 16;
        }

        else
        {
          v666 = 0;
        }
      }

      else
      {
        v666 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v667 = 0x1000000;
      }

      else
      {
        v667 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v668 = 0x2000000;
      }

      else
      {
        v668 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v669 = 0x4000000;
      }

      else
      {
        v669 = 0;
      }

      a3->i32[2] = v186 | v663 | v664 | v665 | v666 | v667 | v668 | v669;
      v120 = xmmword_185DD2D90;
      goto LABEL_2664;
    case 525:
      v83 = 8587264;
      a3->i64[0] = "MTLPixelFormatYCBCR10_420_2P_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_152:
        v83 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

LABEL_153:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v84 = 4;
        }

        else
        {
          v84 = 0;
        }
      }

      else
      {
        v84 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v154 = 8;
        }

        else
        {
          v154 = 0;
        }
      }

      else
      {
        v154 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v155 = 16;
        }

        else
        {
          v155 = 0;
        }
      }

      else
      {
        v155 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v156 = 0x1000000;
      }

      else
      {
        v156 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v157 = 0x2000000;
      }

      else
      {
        v157 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v158 = 0x4000000;
      }

      else
      {
        v158 = 0;
      }

      a3->i32[2] = v83 | v84 | v154 | v155 | v156 | v157 | v158;
      v120 = xmmword_185DD2D80;
      goto LABEL_2664;
    case 526:
      v100 = 8587264;
      a3->i64[0] = "MTLPixelFormatYCBCR10_422_2P_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_190:
        v100 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

LABEL_191:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v101 = 4;
        }

        else
        {
          v101 = 0;
        }
      }

      else
      {
        v101 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v195 = 8;
        }

        else
        {
          v195 = 0;
        }
      }

      else
      {
        v195 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v196 = 16;
        }

        else
        {
          v196 = 0;
        }
      }

      else
      {
        v196 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v197 = 0x1000000;
      }

      else
      {
        v197 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v198 = 0x2000000;
      }

      else
      {
        v198 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v199 = 0x4000000;
      }

      else
      {
        v199 = 0;
      }

      a3->i32[2] = v100 | v101 | v195 | v196 | v197 | v198 | v199;
      v120 = xmmword_185DD2D70;
      goto LABEL_2664;
    case 527:
      v95 = 8587264;
      a3->i64[0] = "MTLPixelFormatYCBCR10_444_2P_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_177:
        v95 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2);
      }

LABEL_178:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4))
        {
          v96 = 2;
        }

        else
        {
          v96 = 0;
        }
      }

      else
      {
        v96 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v148 = 4;
        }

        else
        {
          v148 = 0;
        }
      }

      else
      {
        v148 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v149 = 8;
        }

        else
        {
          v149 = 0;
        }
      }

      else
      {
        v149 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v150 = 16;
        }

        else
        {
          v150 = 0;
        }
      }

      else
      {
        v150 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v151 = 0x1000000;
      }

      else
      {
        v151 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v152 = 0x2000000;
      }

      else
      {
        v152 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v153 = 0x4000000;
      }

      else
      {
        v153 = 0;
      }

      a3->i32[2] = v95 | v96 | v148 | v149 | v150 | v151 | v152 | v153;
      v120 = xmmword_185DD2D60;
      goto LABEL_2664;
    case 528:
      v109 = 8587264;
      a3->i64[0] = "MTLPixelFormatYCBCR10_420_2P_PACKED_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_208:
        v109 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3);
      }

LABEL_209:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v110 = 4;
        }

        else
        {
          v110 = 0;
        }
      }

      else
      {
        v110 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v116 = 16;
        }

        else
        {
          v116 = 0;
        }
      }

      else
      {
        v116 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v117 = 0x1000000;
      }

      else
      {
        v117 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v118 = 0x2000000;
      }

      else
      {
        v118 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v119 = 0x4000000;
      }

      else
      {
        v119 = 0;
      }

      a3->i32[2] = v109 | v110 | v116 | v117 | v118 | v119;
      v120 = xmmword_185DD2D50;
      goto LABEL_2664;
    case 529:
      v184 = 8587264;
      a3->i64[0] = "MTLPixelFormatYCBCR10_422_2P_PACKED_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_426:
        v184 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3);
      }

LABEL_427:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v185 = 4;
        }

        else
        {
          v185 = 0;
        }
      }

      else
      {
        v185 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v220 = 16;
        }

        else
        {
          v220 = 0;
        }
      }

      else
      {
        v220 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v221 = 0x1000000;
      }

      else
      {
        v221 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v222 = 0x2000000;
      }

      else
      {
        v222 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v223 = 0x4000000;
      }

      else
      {
        v223 = 0;
      }

      a3->i32[2] = v184 | v185 | v220 | v221 | v222 | v223;
      v120 = xmmword_185DD2D40;
      goto LABEL_2664;
    case 530:
      v189 = 8587264;
      a3->i64[0] = "MTLPixelFormatYCBCR10_444_2P_PACKED_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v189 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3) | 0x830800;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v190 = 4;
        }

        else
        {
          v190 = 0;
        }
      }

      else
      {
        v190 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v529 = 16;
        }

        else
        {
          v529 = 0;
        }
      }

      else
      {
        v529 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v530 = 0x1000000;
      }

      else
      {
        v530 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v531 = 0x2000000;
      }

      else
      {
        v531 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v532 = 0x4000000;
      }

      else
      {
        v532 = 0;
      }

      v533 = v189 | v190 | v529 | v530;
      v534 = v531 | v532;
LABEL_2363:
      a3->i32[2] = v533 | v534;
      v120 = xmmword_185DD2D30;
      goto LABEL_2664;
    case 540:
      a3->i64[0] = "MTLPixelFormatRGB8_420_2P";
      v114 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v114 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x830000;
      }

      goto LABEL_2637;
    case 541:
      a3->i64[0] = "MTLPixelFormatRGB8_422_2P";
      v114 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v114 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x830000;
      }

      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_2642;
      }

      v134 = this;
      v135 = MTLGPUFamilyApple2;
      goto LABEL_2639;
    case 542:
      a3->i64[0] = "MTLPixelFormatRGB8_444_2P";
      v393 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v393 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x830000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4))
        {
          v394 = 2;
        }

        else
        {
          v394 = 0;
        }
      }

      else
      {
        v394 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v687 = 4;
        }

        else
        {
          v687 = 0;
        }
      }

      else
      {
        v687 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v688 = 8;
        }

        else
        {
          v688 = 0;
        }
      }

      else
      {
        v688 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v689 = 16;
        }

        else
        {
          v689 = 0;
        }
      }

      else
      {
        v689 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v690 = 0x1000000;
      }

      else
      {
        v690 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v691 = 0x2000000;
      }

      else
      {
        v691 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v692 = 0x4000000;
      }

      else
      {
        v692 = 0;
      }

      v417 = v393 | v394 | v687 | v688 | v689 | v690;
      v418 = v691 | v692;
      goto LABEL_2663;
    case 543:
      v173 = "MTLPixelFormatRGB10_420_2P";
      goto LABEL_1256;
    case 544:
      v173 = "MTLPixelFormatRGB10_422_2P";
LABEL_1256:
      a3->i64[0] = v173;
      v354 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v354 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x830000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v355 = 4;
        }

        else
        {
          v355 = 0;
        }
      }

      else
      {
        v355 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v356 = 8;
        }

        else
        {
          v356 = 0;
        }
      }

      else
      {
        v356 = 0;
      }

      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_1270;
      }

      v379 = this;
      v380 = MTLGPUFamilyApple3;
      goto LABEL_1252;
    case 545:
      a3->i64[0] = "MTLPixelFormatRGB10_444_2P";
      v170 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v170 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x830000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4))
        {
          v279 = 2;
        }

        else
        {
          v279 = 0;
        }
      }

      else
      {
        v279 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v280 = 4;
        }

        else
        {
          v280 = 0;
        }
      }

      else
      {
        v280 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v281 = 8;
        }

        else
        {
          v281 = 0;
        }
      }

      else
      {
        v281 = 0;
      }

      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_2548;
      }

      v389 = this;
      v390 = MTLGPUFamilyApple3;
      goto LABEL_1218;
    case 546:
      v275 = "MTLPixelFormatRGB10_420_2P_PACKED";
      goto LABEL_1358;
    case 547:
      v275 = "MTLPixelFormatRGB10_422_2P_PACKED";
      goto LABEL_1358;
    case 548:
      v275 = "MTLPixelFormatRGB10_444_2P_PACKED";
LABEL_1358:
      a3->i64[0] = v275;
      v231 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v231 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3) | 0x830000;
      }

      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_1365;
      }

      v232 = this;
      v233 = MTLGPUFamilyApple3;
      goto LABEL_1362;
    case 550:
      a3->i64[0] = "MTLPixelFormatRGB10A8_2P_XR10";
      v132 = 8585216;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_273;
      }

      goto LABEL_272;
    case 551:
      v132 = 8587264;
      a3->i64[0] = "MTLPixelFormatRGB10A8_2P_XR10_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_272:
        v132 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3);
      }

LABEL_273:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v133 = 2;
        }

        else
        {
          v133 = 0;
        }
      }

      else
      {
        v133 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v202 = 4;
        }

        else
        {
          v202 = 0;
        }
      }

      else
      {
        v202 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v203 = 8;
        }

        else
        {
          v203 = 0;
        }
      }

      else
      {
        v203 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v204 = 16;
        }

        else
        {
          v204 = 0;
        }
      }

      else
      {
        v204 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v205 = 0x1000000;
      }

      else
      {
        v205 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v206 = 0x2000000;
      }

      else
      {
        v206 = 0;
      }

      v207 = this;
      v208 = MTLGPUFamilyApple8;
      goto LABEL_929;
    case 552:
      a3->i64[0] = "MTLPixelFormatBGRA10_XR";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v400 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x30000;
      }

      else
      {
        v400 = 196608;
      }

      v793 = v400;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v694 = 2;
        }

        else
        {
          v694 = 0;
        }

        v782 = v694;
      }

      else
      {
        v782 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v695 = 4;
        }

        else
        {
          v695 = 0;
        }
      }

      else
      {
        v695 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v696 = 8;
        }

        else
        {
          v696 = 0;
        }
      }

      else
      {
        v696 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v697 = 16;
        }

        else
        {
          v697 = 0;
        }
      }

      else
      {
        v697 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v698 = 128;
        }

        else
        {
          v698 = 0;
        }
      }

      else
      {
        v698 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v699 = 256;
        }

        else
        {
          v699 = 0;
        }
      }

      else
      {
        v699 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v700 = 0x1000000;
      }

      else
      {
        v700 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v701 = 0x2000000;
      }

      else
      {
        v701 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v702 = 0x4000000;
      }

      else
      {
        v702 = 0;
      }

      v243 = v793 | v782 | v695 | v696 | v697 | v698 | v699 | v700;
      v242 = v701 | v702;
      goto LABEL_2603;
    case 553:
      v277 = 198656;
      a3->i64[0] = "MTLPixelFormatBGRA10_XR_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v277 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x30800;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v278 = 2;
        }

        else
        {
          v278 = 0;
        }

        v786 = v278;
      }

      else
      {
        v786 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v610 = 4;
        }

        else
        {
          v610 = 0;
        }

        v781 = v610;
      }

      else
      {
        v781 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v611 = 8;
        }

        else
        {
          v611 = 0;
        }
      }

      else
      {
        v611 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v612 = 16;
        }

        else
        {
          v612 = 0;
        }
      }

      else
      {
        v612 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v613 = 128;
        }

        else
        {
          v613 = 0;
        }
      }

      else
      {
        v613 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v614 = 256;
        }

        else
        {
          v614 = 0;
        }
      }

      else
      {
        v614 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v615 = 0x1000000;
      }

      else
      {
        v615 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v616 = 0x2000000;
      }

      else
      {
        v616 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v617 = 0x4000000;
      }

      else
      {
        v617 = 0;
      }

      v243 = v277 | v786 | v781 | v611 | v612 | v613 | v614 | v615;
      v242 = v616 | v617;
      goto LABEL_2603;
    case 554:
      a3->i64[0] = "MTLPixelFormatBGR10_XR";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v160 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x30000;
      }

      else
      {
        v160 = 196608;
      }

      v791 = v160;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v516 = 2;
        }

        else
        {
          v516 = 0;
        }

        v779 = v516;
      }

      else
      {
        v779 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v517 = 4;
        }

        else
        {
          v517 = 0;
        }
      }

      else
      {
        v517 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v518 = 8;
        }

        else
        {
          v518 = 0;
        }
      }

      else
      {
        v518 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v519 = 16;
        }

        else
        {
          v519 = 0;
        }
      }

      else
      {
        v519 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v520 = 128;
        }

        else
        {
          v520 = 0;
        }
      }

      else
      {
        v520 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v521 = 256;
        }

        else
        {
          v521 = 0;
        }
      }

      else
      {
        v521 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v522 = 0x1000000;
      }

      else
      {
        v522 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v523 = 0x2000000;
      }

      else
      {
        v523 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v524 = 0x4000000;
      }

      else
      {
        v524 = 0;
      }

      v525 = v791 | v779 | v517 | v518 | v519 | v520 | v521 | v522;
      v526 = v523 | v524;
      goto LABEL_2142;
    case 555:
      v273 = 198656;
      a3->i64[0] = "MTLPixelFormatBGR10_XR_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v273 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2) | 0x30800;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v274 = 2;
        }

        else
        {
          v274 = 0;
        }

        v785 = v274;
      }

      else
      {
        v785 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v602 = 4;
        }

        else
        {
          v602 = 0;
        }

        v780 = v602;
      }

      else
      {
        v780 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v603 = 8;
        }

        else
        {
          v603 = 0;
        }
      }

      else
      {
        v603 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v604 = 16;
        }

        else
        {
          v604 = 0;
        }
      }

      else
      {
        v604 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v605 = 128;
        }

        else
        {
          v605 = 0;
        }
      }

      else
      {
        v605 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple2))
        {
          v606 = 256;
        }

        else
        {
          v606 = 0;
        }
      }

      else
      {
        v606 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v607 = 0x1000000;
      }

      else
      {
        v607 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v608 = 0x2000000;
      }

      else
      {
        v608 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v609 = 0x4000000;
      }

      else
      {
        v609 = 0;
      }

      v525 = v273 | v785 | v780 | v603 | v604 | v605 | v606 | v607;
      v526 = v608 | v609;
LABEL_2142:
      a3->i32[2] = v525 | v526;
      v120 = xmmword_185DD2D10;
      goto LABEL_2664;
    case 556:
      v87 = "MTLPixelFormatRGBA16Float_XR";
LABEL_218:
      a3->i64[0] = v87;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v113 = 197023;
LABEL_2288:
      a3->i32[2] = v113;
      v324 = xmmword_185DD30A0;
      goto LABEL_2968;
    case 560:
      a3->i64[0] = "MTLPixelFormatYCBCRA8_444_1P";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v409 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4) | 0x30000;
      }

      else
      {
        v409 = 196608;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4))
        {
          v703 = 2;
        }

        else
        {
          v703 = 0;
        }
      }

      else
      {
        v703 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4))
        {
          v704 = 4;
        }

        else
        {
          v704 = 0;
        }
      }

      else
      {
        v704 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4))
        {
          v705 = 8;
        }

        else
        {
          v705 = 0;
        }
      }

      else
      {
        v705 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple4))
        {
          v706 = 16;
        }

        else
        {
          v706 = 0;
        }
      }

      else
      {
        v706 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v707 = 0x1000000;
      }

      else
      {
        v707 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v708 = 0x2000000;
      }

      else
      {
        v708 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v709 = 0x4000000;
      }

      else
      {
        v709 = 0;
      }

      a3->i32[2] = v409 | v703 | v704 | v705 | v706 | v707 | v708 | v709;
      v324 = xmmword_185DD2D20;
      goto LABEL_2968;
    case 562:
      a3->i64[0] = "MTLPixelFormatYCBCR8_422_1P_REV";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v114 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1) | 0x30000;
      }

      else
      {
        v114 = 196608;
      }

LABEL_2637:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v134 = this;
        v135 = MTLGPUFamilyApple1;
LABEL_2639:
        if (MTLPixelFormatQuery::supportsFamily(v134, v135))
        {
          v710 = 4;
        }

        else
        {
          v710 = 0;
        }
      }

      else
      {
LABEL_2642:
        v710 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v711 = 8;
        }

        else
        {
          v711 = 0;
        }
      }

      else
      {
        v711 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v712 = 16;
        }

        else
        {
          v712 = 0;
        }
      }

      else
      {
        v712 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v713 = 0x1000000;
      }

      else
      {
        v713 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v714 = 0x2000000;
      }

      else
      {
        v714 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v715 = 0x4000000;
      }

      else
      {
        v715 = 0;
      }

      v417 = v114 | v710 | v711 | v712 | v713;
      v418 = v714 | v715;
      goto LABEL_2663;
    case 563:
      a3->i64[0] = "MTLPixelFormatYCBCR10_444_1P_PQ";
      v170 = 134414336;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_1201;
      }

      goto LABEL_1200;
    case 564:
      v147 = "MTLPixelFormatYCBCR10_420_2P_PQ";
      goto LABEL_1283;
    case 565:
      v147 = "MTLPixelFormatYCBCR10_422_2P_PQ";
      goto LABEL_1283;
    case 566:
      v287 = "MTLPixelFormatYCBCR10_444_2P_PQ";
      goto LABEL_1004;
    case 567:
      v106 = "MTLPixelFormatYCBCR10_420_2P_PACKED_PQ";
      goto LABEL_592;
    case 568:
      v106 = "MTLPixelFormatYCBCR10_422_2P_PACKED_PQ";
      goto LABEL_592;
    case 569:
      v106 = "MTLPixelFormatYCBCR10_444_2P_PACKED_PQ";
LABEL_592:
      a3->i64[0] = v106;
      v231 = 142802944;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v231 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6) | 0x8830000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v232 = this;
        v233 = MTLGPUFamilyApple6;
LABEL_1362:
        if (MTLPixelFormatQuery::supportsFamily(v232, v233))
        {
          v372 = 4;
        }

        else
        {
          v372 = 0;
        }
      }

      else
      {
LABEL_1365:
        v372 = 0;
      }

      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_1371;
      }

      v385 = this;
      v386 = MTLGPUFamilyApple7;
      goto LABEL_1368;
    case 570:
      v188 = "MTLPixelFormatYCBCR12_420_2P";
      goto LABEL_1159;
    case 571:
      v188 = "MTLPixelFormatYCBCR12_422_2P";
      goto LABEL_1159;
    case 572:
      v131 = "MTLPixelFormatYCBCR12_444_2P";
      goto LABEL_1199;
    case 573:
      v147 = "MTLPixelFormatYCBCR12_420_2P_PQ";
      goto LABEL_1283;
    case 574:
      v147 = "MTLPixelFormatYCBCR12_422_2P_PQ";
LABEL_1283:
      a3->i64[0] = v147;
      v354 = 142802944;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_1161;
      }

      goto LABEL_1160;
    case 575:
      v287 = "MTLPixelFormatYCBCR12_444_2P_PQ";
LABEL_1004:
      a3->i64[0] = v287;
      v170 = 142802944;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_1201;
      }

      goto LABEL_1200;
    case 576:
      a3->i64[0] = "MTLPixelFormatR10Unorm_X6";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v193 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5) | 0x30000;
      }

      else
      {
        v193 = 196608;
      }

      goto LABEL_1854;
    case 577:
      v193 = 198656;
      a3->i64[0] = "MTLPixelFormatR10Unorm_X6_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v193 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5) | 0x30800;
      }

LABEL_1854:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5))
        {
          v535 = 2;
        }

        else
        {
          v535 = 0;
        }
      }

      else
      {
        v535 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5))
        {
          v536 = 4;
        }

        else
        {
          v536 = 0;
        }
      }

      else
      {
        v536 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5))
        {
          v537 = 8;
        }

        else
        {
          v537 = 0;
        }
      }

      else
      {
        v537 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5))
        {
          v538 = 16;
        }

        else
        {
          v538 = 0;
        }
      }

      else
      {
        v538 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v539 = 0x1000000;
      }

      else
      {
        v539 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v540 = 0x2000000;
      }

      else
      {
        v540 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v541 = 0x4000000;
      }

      else
      {
        v541 = 0;
      }

      v542 = v193 | v535 | v536 | v537 | v538 | v539;
      v543 = v540 | v541;
      goto LABEL_2311;
    case 578:
      a3->i64[0] = "MTLPixelFormatRG10Unorm_X12";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v384 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5) | 0x30000;
      }

      else
      {
        v384 = 196608;
      }

      goto LABEL_2463;
    case 579:
      v384 = 198656;
      a3->i64[0] = "MTLPixelFormatRG10Unorm_X12_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v384 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5) | 0x30800;
      }

LABEL_2463:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5))
        {
          v676 = 2;
        }

        else
        {
          v676 = 0;
        }
      }

      else
      {
        v676 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5))
        {
          v677 = 4;
        }

        else
        {
          v677 = 0;
        }
      }

      else
      {
        v677 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5))
        {
          v678 = 8;
        }

        else
        {
          v678 = 0;
        }
      }

      else
      {
        v678 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple5))
        {
          v679 = 16;
        }

        else
        {
          v679 = 0;
        }
      }

      else
      {
        v679 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v680 = 0x1000000;
      }

      else
      {
        v680 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v634 = 0x2000000;
      }

      else
      {
        v634 = 0;
      }

      v635 = v384 | v676 | v677 | v678 | v679 | v680;
      goto LABEL_2490;
    case 580:
      v144 = "MTLPixelFormatYCBCR12_420_2P_PACKED";
      goto LABEL_1238;
    case 581:
      v144 = "MTLPixelFormatYCBCR12_422_2P_PACKED";
      goto LABEL_1238;
    case 582:
      v144 = "MTLPixelFormatYCBCR12_444_2P_PACKED";
      goto LABEL_1238;
    case 583:
      v187 = "MTLPixelFormatYCBCR12_420_2P_PACKED_PQ";
      goto LABEL_1295;
    case 584:
      v187 = "MTLPixelFormatYCBCR12_422_2P_PACKED_PQ";
      goto LABEL_1295;
    case 585:
      v187 = "MTLPixelFormatYCBCR12_444_2P_PACKED_PQ";
LABEL_1295:
      a3->i64[0] = v187;
      v354 = 142802944;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_1240;
      }

      goto LABEL_1239;
    case 586:
      v257 = "MTLPixelFormatRGB10A2Unorm_sRGB";
      goto LABEL_784;
    case 587:
      v249 = 134414337;
      v250 = "MTLPixelFormatRGB10A2Unorm_PQ";
      goto LABEL_1095;
    case 588:
      a3->i64[0] = "MTLPixelFormatR10Unorm_PACKED";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v264 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3) | 0x30000;
      }

      else
      {
        v264 = 196608;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v585 = 2;
        }

        else
        {
          v585 = 0;
        }
      }

      else
      {
        v585 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v586 = 4;
        }

        else
        {
          v586 = 0;
        }
      }

      else
      {
        v586 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v587 = 8;
        }

        else
        {
          v587 = 0;
        }
      }

      else
      {
        v587 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v588 = 16;
        }

        else
        {
          v588 = 0;
        }
      }

      else
      {
        v588 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v589 = 0x1000000;
      }

      else
      {
        v589 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v590 = 0x2000000;
      }

      else
      {
        v590 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v591 = 0x4000000;
      }

      else
      {
        v591 = 0;
      }

      v592 = v264 | v585 | v586 | v587 | v588 | v589;
      v593 = v590 | v591;
      goto LABEL_2198;
    case 589:
      a3->i64[0] = "MTLPixelFormatRG10Unorm_PACKED";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v289 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3) | 0x30000;
      }

      else
      {
        v289 = 196608;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v619 = 2;
        }

        else
        {
          v619 = 0;
        }
      }

      else
      {
        v619 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple3))
        {
          v620 = 4;
        }

        else
        {
          v620 = 0;
        }
      }

      else
      {
        v620 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v621 = 8;
        }

        else
        {
          v621 = 0;
        }
      }

      else
      {
        v621 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v622 = 16;
        }

        else
        {
          v622 = 0;
        }
      }

      else
      {
        v622 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v623 = 0x1000000;
      }

      else
      {
        v623 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v599 = 0x2000000;
      }

      else
      {
        v599 = 0;
      }

      v598 = v289 | v619 | v620 | v621 | v622 | v623;
      goto LABEL_2228;
    case 590:
      a3->i64[0] = "MTLPixelFormatYCBCR10_444_1P_XR";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v170 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6) | 0x30000;
      }

      else
      {
        v170 = 196608;
      }

      goto LABEL_1201;
    case 591:
      v188 = "MTLPixelFormatYCBCR10_420_2P_XR";
      goto LABEL_1159;
    case 592:
      v188 = "MTLPixelFormatYCBCR10_422_2P_XR";
      goto LABEL_1159;
    case 593:
      v131 = "MTLPixelFormatYCBCR10_444_2P_XR";
      goto LABEL_1199;
    case 594:
      v192 = "MTLPixelFormatYCBCR10_420_2P_PACKED_XR";
      goto LABEL_1184;
    case 595:
      v192 = "MTLPixelFormatYCBCR10_422_2P_PACKED_XR";
      goto LABEL_1184;
    case 596:
      v192 = "MTLPixelFormatYCBCR10_444_2P_PACKED_XR";
LABEL_1184:
      a3->i64[0] = v192;
      v231 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v231 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6) | 0x830000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v372 = 4;
        }

        else
        {
          v372 = 0;
        }
      }

      else
      {
        v372 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v385 = this;
        v386 = MTLGPUFamilyApple6;
LABEL_1368:
        if (MTLPixelFormatQuery::supportsFamily(v385, v386))
        {
          v373 = 16;
        }

        else
        {
          v373 = 0;
        }
      }

      else
      {
LABEL_1371:
        v373 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v374 = 0x1000000;
      }

      else
      {
        v374 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v375 = 0x2000000;
      }

      else
      {
        v375 = 0;
      }

      v376 = this;
      v377 = MTLGPUFamilyApple8;
      goto LABEL_1379;
    case 597:
      v188 = "MTLPixelFormatYCBCR12_420_2P_XR";
      goto LABEL_1159;
    case 598:
      v188 = "MTLPixelFormatYCBCR12_422_2P_XR";
LABEL_1159:
      a3->i64[0] = v188;
      v354 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_1160:
        v354 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6);
      }

LABEL_1161:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v355 = 4;
        }

        else
        {
          v355 = 0;
        }
      }

      else
      {
        v355 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v356 = 8;
        }

        else
        {
          v356 = 0;
        }
      }

      else
      {
        v356 = 0;
      }

      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_1270;
      }

      v379 = this;
      v380 = MTLGPUFamilyApple6;
      goto LABEL_1252;
    case 599:
      v131 = "MTLPixelFormatYCBCR12_444_2P_XR";
LABEL_1199:
      a3->i64[0] = v131;
      v170 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_1200:
        v170 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6);
      }

LABEL_1201:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v279 = 2;
        }

        else
        {
          v279 = 0;
        }
      }

      else
      {
        v279 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v280 = 4;
        }

        else
        {
          v280 = 0;
        }
      }

      else
      {
        v280 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v281 = 8;
        }

        else
        {
          v281 = 0;
        }
      }

      else
      {
        v281 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v389 = this;
        v390 = MTLGPUFamilyApple6;
LABEL_1218:
        if (MTLPixelFormatQuery::supportsFamily(v389, v390))
        {
          v282 = 16;
        }

        else
        {
          v282 = 0;
        }
      }

      else
      {
LABEL_2548:
        v282 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v283 = 0x1000000;
      }

      else
      {
        v283 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v284 = 0x2000000;
      }

      else
      {
        v284 = 0;
      }

      v285 = this;
      v286 = MTLGPUFamilyApple8;
      goto LABEL_2556;
    case 600:
      v144 = "MTLPixelFormatYCBCR12_420_2P_PACKED_XR";
      goto LABEL_1238;
    case 601:
      v144 = "MTLPixelFormatYCBCR12_422_2P_PACKED_XR";
      goto LABEL_1238;
    case 602:
      v144 = "MTLPixelFormatYCBCR12_444_2P_PACKED_XR";
LABEL_1238:
      a3->i64[0] = v144;
      v354 = 8585216;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_1239:
        v354 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7);
      }

LABEL_1240:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v355 = 4;
        }

        else
        {
          v355 = 0;
        }
      }

      else
      {
        v355 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v356 = 8;
        }

        else
        {
          v356 = 0;
        }
      }

      else
      {
        v356 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v379 = this;
        v380 = MTLGPUFamilyApple7;
LABEL_1252:
        if (MTLPixelFormatQuery::supportsFamily(v379, v380))
        {
          v357 = 16;
        }

        else
        {
          v357 = 0;
        }
      }

      else
      {
LABEL_1270:
        v357 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v358 = 0x1000000;
      }

      else
      {
        v358 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v359 = 0x2000000;
      }

      else
      {
        v359 = 0;
      }

      v360 = this;
      v361 = MTLGPUFamilyApple8;
      goto LABEL_1278;
    case 603:
      a3->i64[0] = "MTLPixelFormatR12Unorm_X4";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v191 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6) | 0x30000;
      }

      else
      {
        v191 = 196608;
      }

      goto LABEL_1924;
    case 604:
      a3->i64[0] = "MTLPixelFormatR12Unorm_X4_PQ";
      v191 = 134414336;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v191 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6) | 0x8030000;
      }

LABEL_1924:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v551 = 4;
        }

        else
        {
          v551 = 0;
        }
      }

      else
      {
        v551 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v552 = 8;
        }

        else
        {
          v552 = 0;
        }
      }

      else
      {
        v552 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v553 = 16;
        }

        else
        {
          v553 = 0;
        }
      }

      else
      {
        v553 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v554 = 0x1000000;
      }

      else
      {
        v554 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v555 = 0x2000000;
      }

      else
      {
        v555 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v556 = 0x4000000;
      }

      else
      {
        v556 = 0;
      }

      v557 = v191 | v551 | v552 | v553 | v554;
      v558 = v555 | v556;
      goto LABEL_2245;
    case 605:
      a3->i64[0] = "MTLPixelFormatRG12Unorm_X8";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v391 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6) | 0x30000;
      }

      else
      {
        v391 = 196608;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v670 = 4;
        }

        else
        {
          v670 = 0;
        }
      }

      else
      {
        v670 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v671 = 8;
        }

        else
        {
          v671 = 0;
        }
      }

      else
      {
        v671 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v672 = 16;
        }

        else
        {
          v672 = 0;
        }
      }

      else
      {
        v672 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v673 = 0x1000000;
      }

      else
      {
        v673 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v674 = 0x2000000;
      }

      else
      {
        v674 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v675 = 0x4000000;
      }

      else
      {
        v675 = 0;
      }

      v566 = v391 | v670 | v671 | v672 | v673;
      v567 = v674 | v675;
      goto LABEL_2461;
    case 606:
      a3->i64[0] = "MTLPixelFormatR10Unorm_X6_PQ";
      v325 = 134414336;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v325 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6) | 0x8030000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v326 = 4;
        }

        else
        {
          v326 = 0;
        }
      }

      else
      {
        v326 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v638 = 8;
        }

        else
        {
          v638 = 0;
        }
      }

      else
      {
        v638 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple6))
        {
          v639 = 16;
        }

        else
        {
          v639 = 0;
        }
      }

      else
      {
        v639 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v640 = 0x1000000;
      }

      else
      {
        v640 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v641 = 0x2000000;
      }

      else
      {
        v641 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8))
      {
        v642 = 0x4000000;
      }

      else
      {
        v642 = 0;
      }

      v542 = v325 | v326 | v638 | v639 | v640;
      v543 = v641 | v642;
      goto LABEL_2311;
    case 607:
      a3->i64[0] = "MTLPixelFormatYCBCR10_444_1P_HLG";
      v170 = 268632064;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_746;
      }

      goto LABEL_745;
    case 608:
      v172 = "MTLPixelFormatYCBCR10_420_2P_HLG";
      goto LABEL_1069;
    case 609:
      v172 = "MTLPixelFormatYCBCR10_422_2P_HLG";
      goto LABEL_1069;
    case 610:
      v194 = "MTLPixelFormatYCBCR10_444_2P_HLG";
      goto LABEL_744;
    case 611:
      v247 = "MTLPixelFormatYCBCR10_420_2P_PACKED_HLG";
      goto LABEL_1134;
    case 612:
      v247 = "MTLPixelFormatYCBCR10_422_2P_PACKED_HLG";
      goto LABEL_1134;
    case 613:
      v247 = "MTLPixelFormatYCBCR10_444_2P_PACKED_HLG";
LABEL_1134:
      a3->i64[0] = v247;
      v231 = 277020672;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v231 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9) | 0x10830000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v372 = 4;
        }

        else
        {
          v372 = 0;
        }
      }

      else
      {
        v372 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v373 = 16;
        }

        else
        {
          v373 = 0;
        }
      }

      else
      {
        v373 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v374 = 0x1000000;
      }

      else
      {
        v374 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v375 = 0x2000000;
      }

      else
      {
        v375 = 0;
      }

      v376 = this;
      v377 = MTLGPUFamilyApple9;
LABEL_1379:
      if (MTLPixelFormatQuery::supportsFamily(v376, v377))
      {
        v416 = 0x4000000;
      }

      else
      {
        v416 = 0;
      }

      v417 = v231 | v372 | v373 | v374;
      v418 = v375 | v416;
LABEL_2663:
      a3->i32[2] = v417 | v418;
      v120 = xmmword_185DB7AF0;
      goto LABEL_2664;
    case 615:
      v172 = "MTLPixelFormatYCBCR12_420_2P_HLG";
      goto LABEL_1069;
    case 616:
      v172 = "MTLPixelFormatYCBCR12_422_2P_HLG";
      goto LABEL_1069;
    case 617:
      v194 = "MTLPixelFormatYCBCR12_444_2P_HLG";
LABEL_744:
      a3->i64[0] = v194;
      v170 = 277020672;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_745:
        v170 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9);
      }

LABEL_746:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v279 = 2;
        }

        else
        {
          v279 = 0;
        }
      }

      else
      {
        v279 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v280 = 4;
        }

        else
        {
          v280 = 0;
        }
      }

      else
      {
        v280 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v281 = 8;
        }

        else
        {
          v281 = 0;
        }
      }

      else
      {
        v281 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v282 = 16;
        }

        else
        {
          v282 = 0;
        }
      }

      else
      {
        v282 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v283 = 0x1000000;
      }

      else
      {
        v283 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v284 = 0x2000000;
      }

      else
      {
        v284 = 0;
      }

      v285 = this;
      v286 = MTLGPUFamilyApple9;
LABEL_2556:
      if (MTLPixelFormatQuery::supportsFamily(v285, v286))
      {
        v693 = 0x4000000;
      }

      else
      {
        v693 = 0;
      }

      v396 = v170 | v279 | v280 | v281 | v282 | v283;
      v397 = v284 | v693;
      goto LABEL_2560;
    case 618:
      v172 = "MTLPixelFormatYCBCR12_420_2P_PACKED_HLG";
      goto LABEL_1069;
    case 619:
      v172 = "MTLPixelFormatYCBCR12_422_2P_PACKED_HLG";
      goto LABEL_1069;
    case 620:
      v172 = "MTLPixelFormatYCBCR12_444_2P_PACKED_HLG";
LABEL_1069:
      a3->i64[0] = v172;
      v354 = 277020672;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v354 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9) | 0x10830000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v355 = 4;
        }

        else
        {
          v355 = 0;
        }
      }

      else
      {
        v355 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v356 = 8;
        }

        else
        {
          v356 = 0;
        }
      }

      else
      {
        v356 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v357 = 16;
        }

        else
        {
          v357 = 0;
        }
      }

      else
      {
        v357 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v358 = 0x1000000;
      }

      else
      {
        v358 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v359 = 0x2000000;
      }

      else
      {
        v359 = 0;
      }

      v360 = this;
      v361 = MTLGPUFamilyApple9;
LABEL_1278:
      if (MTLPixelFormatQuery::supportsFamily(v360, v361))
      {
        v395 = 0x4000000;
      }

      else
      {
        v395 = 0;
      }

      v396 = v354 | v355 | v356 | v357 | v358;
      v397 = v359 | v395;
LABEL_2560:
      a3->i32[2] = v396 | v397;
      v120 = xmmword_185DD2CA0;
LABEL_2664:
      a3[1] = v120;
      v716 = 3;
      goto LABEL_2969;
    case 621:
      v276 = "MTLPixelFormatR10Unorm_X6_HLG";
      goto LABEL_854;
    case 622:
      v276 = "MTLPixelFormatR12Unorm_X4_HLG";
LABEL_854:
      a3->i64[0] = v276;
      v306 = 268632064;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v306 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9) | 0x10030000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v307 = 4;
        }

        else
        {
          v307 = 0;
        }
      }

      else
      {
        v307 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v308 = 8;
        }

        else
        {
          v308 = 0;
        }
      }

      else
      {
        v308 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v309 = 16;
        }

        else
        {
          v309 = 0;
        }
      }

      else
      {
        v309 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v310 = 0x1000000;
      }

      else
      {
        v310 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v311 = 0x2000000;
      }

      else
      {
        v311 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v312 = 0x4000000;
      }

      else
      {
        v312 = 0;
      }

      v313 = v306 | v307 | v308 | v309 | v310 | v311 | v312;
LABEL_2402:
      a3->i32[2] = v313;
      v411 = xmmword_185DD2CA0;
      goto LABEL_2896;
    case 623:
      a3->i64[0] = "MTLPixelFormatRGB10A2Unorm_HLG";
      v368 = 268632064;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v368 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9) | 0x10030000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v369 = 4;
        }

        else
        {
          v369 = 0;
        }
      }

      else
      {
        v369 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v656 = 8;
        }

        else
        {
          v656 = 0;
        }
      }

      else
      {
        v656 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v657 = 16;
        }

        else
        {
          v657 = 0;
        }
      }

      else
      {
        v657 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v658 = 128;
        }

        else
        {
          v658 = 0;
        }
      }

      else
      {
        v658 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v60 = 256;
        }

        else
        {
          v60 = 0;
        }
      }

      else
      {
        v60 = 0;
      }

      v366 = v368 | v369 | v656 | v657 | v658;
      goto LABEL_2386;
    case 624:
      a3->i64[0] = "MTLPixelFormatRGB10A8_2P";
      v132 = 8585216;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_478;
      }

      goto LABEL_477;
    case 625:
      v132 = 8587264;
      a3->i64[0] = "MTLPixelFormatRGB10A8_2P_sRGB";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_477;
      }

      goto LABEL_478;
    case 626:
      a3->i64[0] = "MTLPixelFormatRGB10A8_2P_PQ";
      v132 = 142802944;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_478;
      }

      goto LABEL_477;
    case 627:
      a3->i64[0] = "MTLPixelFormatRGB10A8_2P_HLG";
      v132 = 277020672;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_478;
      }

LABEL_477:
      v132 |= MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9);
LABEL_478:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v133 = 2;
        }

        else
        {
          v133 = 0;
        }
      }

      else
      {
        v133 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v202 = 4;
        }

        else
        {
          v202 = 0;
        }
      }

      else
      {
        v202 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v203 = 8;
        }

        else
        {
          v203 = 0;
        }
      }

      else
      {
        v203 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
        {
          v204 = 16;
        }

        else
        {
          v204 = 0;
        }
      }

      else
      {
        v204 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v205 = 0x1000000;
      }

      else
      {
        v205 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple9))
      {
        v206 = 0x2000000;
      }

      else
      {
        v206 = 0;
      }

      v207 = this;
      v208 = MTLGPUFamilyApple9;
LABEL_929:
      if (MTLPixelFormatQuery::supportsFamily(v207, v208))
      {
        v321 = 0x4000000;
      }

      else
      {
        v321 = 0;
      }

      v322 = v132 | v133 | v202 | v203 | v204 | v205;
      v323 = v206 | v321;
      goto LABEL_933;
    case 628:
      v257 = "MTLPixelFormatBGR10A2Unorm_sRGB";
LABEL_784:
      a3->i64[0] = v257;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v249 = 198661;
        }

        else
        {
          v249 = 198657;
        }
      }

      else
      {
        v249 = 198657;
      }

      goto LABEL_1099;
    case 629:
      v249 = 134414337;
      v250 = "MTLPixelFormatBGR10A2Unorm_PQ";
LABEL_1095:
      a3->i64[0] = v250;
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v249 = 134414341;
        }

        else
        {
          v249 = 134414337;
        }
      }

LABEL_1099:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v362 = 8;
        }

        else
        {
          v362 = 0;
        }
      }

      else
      {
        v362 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v363 = 16;
        }

        else
        {
          v363 = 0;
        }
      }

      else
      {
        v363 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v364 = 128;
        }

        else
        {
          v364 = 0;
        }
      }

      else
      {
        v364 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple7))
        {
          v365 = 256;
        }

        else
        {
          v365 = 0;
        }
      }

      else
      {
        v365 = 0;
      }

      v366 = v249 | v362;
      v367 = v363 | v364;
LABEL_1120:
      v60 = v367 | v365;
LABEL_2386:
      v200 = v366 | v60;
LABEL_2387:
      a3->i32[2] = v200;
LABEL_2388:
      v324 = xmmword_185DD2C80;
      goto LABEL_2968;
    case 630:
      a3->i64[0] = "MTLPixelFormatBGRA10Uint_PACKED";
      v342 = 2621440;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v342 = MTLPixelFormatQuery::supportsFamily(this, -1009) | 0x280000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v343 = 2;
        }

        else
        {
          v343 = 0;
        }
      }

      else
      {
        v343 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v649 = 16;
        }

        else
        {
          v649 = 0;
        }
      }

      else
      {
        v649 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v650 = 0x1000000;
      }

      else
      {
        v650 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v300 = 0x2000000;
      }

      else
      {
        v300 = 0;
      }

      v301 = v342 | v343 | v649 | v650;
      goto LABEL_2341;
    case 631:
      v290 = "MTLPixelFormatBGRA10_XR_PACKED";
      goto LABEL_1027;
    case 632:
      v216 = 198656;
      v288 = "MTLPixelFormatBGRA10_XR_PACKED_sRGB";
      goto LABEL_801;
    case 633:
      v290 = "MTLPixelFormatBGRA10Unorm_PACKED";
LABEL_1027:
      a3->i64[0] = v290;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v346 = MTLPixelFormatQuery::supportsFamily(this, -1009) | 0x30000;
      }

      else
      {
        v346 = 196608;
      }

      v788 = v346;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v347 = 2;
        }

        else
        {
          v347 = 0;
        }
      }

      else
      {
        v347 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v348 = 4;
        }

        else
        {
          v348 = 0;
        }
      }

      else
      {
        v348 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v349 = 8;
        }

        else
        {
          v349 = 0;
        }
      }

      else
      {
        v349 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v350 = 16;
        }

        else
        {
          v350 = 0;
        }
      }

      else
      {
        v350 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v351 = 128;
        }

        else
        {
          v351 = 0;
        }
      }

      else
      {
        v351 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v352 = 256;
        }

        else
        {
          v352 = 0;
        }
      }

      else
      {
        v352 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v353 = 0x1000000;
      }

      else
      {
        v353 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v300 = 0x2000000;
      }

      else
      {
        v300 = 0;
      }

      v301 = v788 | v347 | v348 | v349 | v350 | v351 | v352 | v353;
      goto LABEL_2341;
    case 634:
      v216 = 198656;
      v288 = "MTLPixelFormatBGRA10Unorm_PACKED_sRGB";
LABEL_801:
      a3->i64[0] = v288;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_802;
      }

      goto LABEL_803;
    case 635:
      a3->i64[0] = "MTLPixelFormatBGRA10Unorm_PACKED_HLG";
      v216 = 268632064;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_803;
      }

      goto LABEL_802;
    case 636:
      a3->i64[0] = "MTLPixelFormatBGRA10Unorm_PACKED_PQ";
      v216 = 134414336;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_803;
      }

LABEL_802:
      v216 |= MTLPixelFormatQuery::supportsFamily(this, -1009);
LABEL_803:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v293 = 2;
        }

        else
        {
          v293 = 0;
        }

        v787 = v293;
      }

      else
      {
        v787 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v294 = 4;
        }

        else
        {
          v294 = 0;
        }
      }

      else
      {
        v294 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v295 = 8;
        }

        else
        {
          v295 = 0;
        }
      }

      else
      {
        v295 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v296 = 16;
        }

        else
        {
          v296 = 0;
        }
      }

      else
      {
        v296 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v297 = 128;
        }

        else
        {
          v297 = 0;
        }
      }

      else
      {
        v297 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v298 = 256;
        }

        else
        {
          v298 = 0;
        }
      }

      else
      {
        v298 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v299 = 0x1000000;
      }

      else
      {
        v299 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v300 = 0x2000000;
      }

      else
      {
        v300 = 0;
      }

      v301 = v216 | v787 | v294 | v295 | v296 | v297 | v298 | v299;
LABEL_2341:
      a3->i32[2] = v301 | v300;
      v324 = xmmword_185DD2D00;
      goto LABEL_2968;
    case 637:
      a3->i64[0] = "MTLPixelFormatBGRA10Uint";
      v262 = 2621440;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v262 = MTLPixelFormatQuery::supportsFamily(this, -1009) | 0x280000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v263 = 2;
        }

        else
        {
          v263 = 0;
        }
      }

      else
      {
        v263 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v583 = 16;
        }

        else
        {
          v583 = 0;
        }
      }

      else
      {
        v583 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v584 = 0x1000000;
      }

      else
      {
        v584 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v242 = 0x2000000;
      }

      else
      {
        v242 = 0;
      }

      v243 = v262 | v263 | v583 | v584;
      goto LABEL_2603;
    case 638:
      a3->i64[0] = "MTLPixelFormatBGRA10Unorm";
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v218 = MTLPixelFormatQuery::supportsFamily(this, -1009) | 0x30000;
      }

      else
      {
        v218 = 196608;
      }

      v792 = v218;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v544 = 2;
        }

        else
        {
          v544 = 0;
        }
      }

      else
      {
        v544 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v545 = 4;
        }

        else
        {
          v545 = 0;
        }
      }

      else
      {
        v545 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v546 = 8;
        }

        else
        {
          v546 = 0;
        }
      }

      else
      {
        v546 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v547 = 16;
        }

        else
        {
          v547 = 0;
        }
      }

      else
      {
        v547 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v548 = 128;
        }

        else
        {
          v548 = 0;
        }
      }

      else
      {
        v548 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v549 = 256;
        }

        else
        {
          v549 = 0;
        }
      }

      else
      {
        v549 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v550 = 0x1000000;
      }

      else
      {
        v550 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v242 = 0x2000000;
      }

      else
      {
        v242 = 0;
      }

      v243 = v792 | v544 | v545 | v546 | v547 | v548 | v549 | v550;
      goto LABEL_2603;
    case 639:
      v234 = 198656;
      a3->i64[0] = "MTLPixelFormatBGRA10Unorm_sRGB";
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_598;
      }

      goto LABEL_597;
    case 640:
      a3->i64[0] = "MTLPixelFormatBGRA10Unorm_HLG";
      v234 = 268632064;
      if (!MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        goto LABEL_598;
      }

      goto LABEL_597;
    case 641:
      a3->i64[0] = "MTLPixelFormatBGRA10Unorm_PQ";
      v234 = 134414336;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
LABEL_597:
        v234 |= MTLPixelFormatQuery::supportsFamily(this, -1009);
      }

LABEL_598:
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v235 = 2;
        }

        else
        {
          v235 = 0;
        }

        v784 = v235;
      }

      else
      {
        v784 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v236 = 4;
        }

        else
        {
          v236 = 0;
        }
      }

      else
      {
        v236 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v237 = 8;
        }

        else
        {
          v237 = 0;
        }
      }

      else
      {
        v237 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v238 = 16;
        }

        else
        {
          v238 = 0;
        }
      }

      else
      {
        v238 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v239 = 128;
        }

        else
        {
          v239 = 0;
        }
      }

      else
      {
        v239 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v240 = 256;
        }

        else
        {
          v240 = 0;
        }
      }

      else
      {
        v240 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v241 = 0x1000000;
      }

      else
      {
        v241 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v242 = 0x2000000;
      }

      else
      {
        v242 = 0;
      }

      v243 = v234 | v784 | v236 | v237 | v238 | v239 | v240 | v241;
LABEL_2603:
      a3->i32[2] = v243 | v242;
      v324 = xmmword_185DD2CF0;
      goto LABEL_2968;
    case 642:
      a3->i64[0] = "MTLPixelFormatR10Uint_X6";
      v302 = 2621440;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v302 = MTLPixelFormatQuery::supportsFamily(this, -1009) | 0x280000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v303 = 2;
        }

        else
        {
          v303 = 0;
        }
      }

      else
      {
        v303 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v628 = 16;
        }

        else
        {
          v628 = 0;
        }
      }

      else
      {
        v628 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v629 = 0x1000000;
      }

      else
      {
        v629 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v630 = 0x2000000;
      }

      else
      {
        v630 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v631 = 0x4000000;
      }

      else
      {
        v631 = 0;
      }

      v542 = v302 | v303 | v628 | v629;
      v543 = v630 | v631;
LABEL_2311:
      a3->i32[2] = v542 | v543;
      v411 = xmmword_185DD2CD0;
      goto LABEL_2896;
    case 643:
      a3->i64[0] = "MTLPixelFormatR10Uint_PACKED";
      v252 = 2621440;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v252 = MTLPixelFormatQuery::supportsFamily(this, -1009) | 0x280000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v253 = 2;
        }

        else
        {
          v253 = 0;
        }
      }

      else
      {
        v253 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v571 = 16;
        }

        else
        {
          v571 = 0;
        }
      }

      else
      {
        v571 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v572 = 0x1000000;
      }

      else
      {
        v572 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v573 = 0x2000000;
      }

      else
      {
        v573 = 0;
      }

      v574 = this;
      v575 = -1009;
      goto LABEL_2194;
    case 644:
      a3->i64[0] = "MTLPixelFormatRG10Uint_X12";
      v304 = 2621440;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v304 = MTLPixelFormatQuery::supportsFamily(this, -1009) | 0x280000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v305 = 2;
        }

        else
        {
          v305 = 0;
        }
      }

      else
      {
        v305 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v632 = 16;
        }

        else
        {
          v632 = 0;
        }
      }

      else
      {
        v632 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v633 = 0x1000000;
      }

      else
      {
        v633 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v634 = 0x2000000;
      }

      else
      {
        v634 = 0;
      }

      v635 = v304 | v305 | v632 | v633;
LABEL_2490:
      a3->i32[2] = v635 | v634;
      v493 = xmmword_185DD2CE0;
      goto LABEL_2870;
    case 645:
      a3->i64[0] = "MTLPixelFormatRG10Uint_PACKED";
      v267 = 2621440;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v267 = MTLPixelFormatQuery::supportsFamily(this, -1009) | 0x280000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v268 = 2;
        }

        else
        {
          v268 = 0;
        }
      }

      else
      {
        v268 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, -1009))
        {
          v600 = 16;
        }

        else
        {
          v600 = 0;
        }
      }

      else
      {
        v600 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v601 = 0x1000000;
      }

      else
      {
        v601 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, -1009))
      {
        v599 = 0x2000000;
      }

      else
      {
        v599 = 0;
      }

      v598 = v267 | v268 | v600 | v601;
      goto LABEL_2228;
    case 646:
      a3->i64[0] = "MTLPixelFormatR12Uint_X4";
      v291 = 2621440;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v291 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2) | 0x280000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
        {
          v292 = 2;
        }

        else
        {
          v292 = 0;
        }
      }

      else
      {
        v292 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
        {
          v624 = 16;
        }

        else
        {
          v624 = 0;
        }
      }

      else
      {
        v624 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v625 = 0x1000000;
      }

      else
      {
        v625 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v626 = 0x2000000;
      }

      else
      {
        v626 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v627 = 0x4000000;
      }

      else
      {
        v627 = 0;
      }

      v557 = v291 | v292 | v624 | v625;
      v558 = v626 | v627;
LABEL_2245:
      a3->i32[2] = v557 | v558;
      v411 = xmmword_185DD2CC0;
      goto LABEL_2896;
    case 647:
      a3->i64[0] = "MTLPixelFormatR12Uint_PACKED";
      v252 = 2621440;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v252 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2) | 0x280000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
        {
          v253 = 2;
        }

        else
        {
          v253 = 0;
        }
      }

      else
      {
        v253 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
        {
          v571 = 16;
        }

        else
        {
          v571 = 0;
        }
      }

      else
      {
        v571 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v572 = 0x1000000;
      }

      else
      {
        v572 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v573 = 0x2000000;
      }

      else
      {
        v573 = 0;
      }

      v574 = this;
      v575 = MTLGPUFamilyApple8|0x2;
LABEL_2194:
      if (MTLPixelFormatQuery::supportsFamily(v574, v575))
      {
        v618 = 0x4000000;
      }

      else
      {
        v618 = 0;
      }

      v592 = v252 | v253 | v571 | v572;
      v593 = v573 | v618;
LABEL_2198:
      v528 = v592 | v593;
LABEL_2199:
      a3->i32[2] = v528;
      v411 = xmmword_185DB7AF0;
      goto LABEL_2896;
    case 648:
      a3->i64[0] = "MTLPixelFormatRG12Uint_X8";
      v245 = 2621440;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v245 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2) | 0x280000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
        {
          v246 = 2;
        }

        else
        {
          v246 = 0;
        }
      }

      else
      {
        v246 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
        {
          v562 = 16;
        }

        else
        {
          v562 = 0;
        }
      }

      else
      {
        v562 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v563 = 0x1000000;
      }

      else
      {
        v563 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v564 = 0x2000000;
      }

      else
      {
        v564 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v565 = 0x4000000;
      }

      else
      {
        v565 = 0;
      }

      v566 = v245 | v246 | v562 | v563;
      v567 = v564 | v565;
LABEL_2461:
      a3->i32[2] = v566 | v567;
      v493 = xmmword_185DD2CB0;
      goto LABEL_2870;
    case 649:
      a3->i64[0] = "MTLPixelFormatRG12Uint_PACKED";
      v265 = 2621440;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v265 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2) | 0x280000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
        {
          v266 = 2;
        }

        else
        {
          v266 = 0;
        }
      }

      else
      {
        v266 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
        {
          v594 = 16;
        }

        else
        {
          v594 = 0;
        }
      }

      else
      {
        v594 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v595 = 0x1000000;
      }

      else
      {
        v595 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v596 = 0x2000000;
      }

      else
      {
        v596 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v597 = 0x4000000;
      }

      else
      {
        v597 = 0;
      }

      v598 = v265 | v266 | v594 | v595;
      v599 = v596 | v597;
LABEL_2228:
      a3->i32[2] = v598 | v599;
      v493 = xmmword_185DD2CA0;
      goto LABEL_2870;
    case 650:
      a3->i64[0] = "MTLPixelFormatRGB10A8Uint_2P";
      v258 = 11010048;
      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        v258 = MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2) | 0xA80000;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
        {
          v259 = 2;
        }

        else
        {
          v259 = 0;
        }
      }

      else
      {
        v259 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1))
      {
        if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
        {
          v579 = 16;
        }

        else
        {
          v579 = 0;
        }
      }

      else
      {
        v579 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v580 = 0x1000000;
      }

      else
      {
        v580 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v581 = 0x2000000;
      }

      else
      {
        v581 = 0;
      }

      if (MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple8|0x2))
      {
        v582 = 0x4000000;
      }

      else
      {
        v582 = 0;
      }

      v322 = v258 | v259 | v579 | v580;
      v323 = v581 | v582;
LABEL_933:
      a3->i32[2] = v322 | v323;
      v324 = xmmword_185DD2C90;
      goto LABEL_2968;
    case 651:
      a3->i64[0] = "MTLPixelFormatAnyDepth";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v270 = MTLPixelFormatQuery::supportsFamily(this, 5002);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v271 = MTLPixelFormatQuery::supportsFamily(this, 5002) == 0;
      v272 = 32;
      goto LABEL_721;
    case 652:
      a3->i64[0] = "MTLPixelFormatAnyStencil";
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v270 = MTLPixelFormatQuery::supportsFamily(this, 5002);
      MTLPixelFormatQuery::supportsFamily(this, MTLGPUFamilyApple1);
      v271 = MTLPixelFormatQuery::supportsFamily(this, 5002) == 0;
      v272 = 64;
LABEL_721:
      if (v271)
      {
        v272 = 0;
      }

      a3->i32[2] = v272 | v270;
      a3[1].i64[0] = 0;
      a3[1].i64[1] = 0;
      a3[2].i8[0] = 0;
      goto LABEL_3008;
    default:
      a3->i32[2] = 0;
      goto LABEL_3008;
  }
}