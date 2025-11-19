CFDictionaryRef CA::SurfaceUtil::create_htpc_plane_dict(CA::SurfaceUtil *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  keys[18] = *MEMORY[0x1E69E9840];
  v44 = a2;
  valuePtr = this;
  v42 = a4;
  v43 = a3;
  v40 = 1;
  v41 = 1;
  v38 = 0;
  v39 = 1;
  if (a4)
  {
    v7 = 8;
  }

  else
  {
    v7 = 16;
  }

  v36 = 8;
  v37 = v7;
  v8 = 3;
  if (!a4)
  {
    v8 = 4;
  }

  v9 = 6;
  if (!a4)
  {
    v9 = 7;
  }

  v10 = v7 - 1;
  v11 = v7 - 1 + a3 * this;
  v12 = -v7;
  v34 = ((this + v10) & v12) >> v8;
  v35 = v11 & v12;
  v32 = 4;
  v33 = (a2 + 7) >> 3;
  v30 = a4;
  v31 = 4 * v34;
  v13 = (4 * v34 * v33 + 127) & 0x7FFFFFFFFFFFFF80;
  v29 = v13 + a4;
  v14 = (a3 << v9) * v33 * v34;
  if (CADeviceNeeds2kPlaneAlignment::once[0] != -1)
  {
    dispatch_once(CADeviceNeeds2kPlaneAlignment::once, &__block_literal_global_107);
  }

  v15 = -128;
  if (CADeviceNeeds2kPlaneAlignment::needs_2k_alignment)
  {
    v15 = -2048;
  }

  v16 = 128;
  if (CADeviceNeeds2kPlaneAlignment::needs_2k_alignment)
  {
    v16 = 2048;
  }

  *a5 = (v14 + v13 + v16 - 1) & v15;
  v17 = *MEMORY[0x1E696D090];
  keys[0] = *MEMORY[0x1E696D0C8];
  keys[1] = v17;
  v18 = *MEMORY[0x1E696CFE8];
  keys[2] = *MEMORY[0x1E696D0B0];
  keys[3] = v18;
  v19 = *MEMORY[0x1E696CFE0];
  keys[4] = *MEMORY[0x1E696D0B8];
  keys[5] = v19;
  v20 = *MEMORY[0x1E696D048];
  keys[6] = *MEMORY[0x1E696CE28];
  keys[7] = v20;
  v21 = *MEMORY[0x1E696D030];
  keys[8] = *MEMORY[0x1E696D038];
  keys[9] = v21;
  v22 = *MEMORY[0x1E696D098];
  keys[10] = *MEMORY[0x1E696D0D0];
  keys[11] = v22;
  v23 = *MEMORY[0x1E696CFF0];
  keys[12] = *MEMORY[0x1E696CFD8];
  keys[13] = v23;
  v24 = *MEMORY[0x1E696D080];
  keys[14] = *MEMORY[0x1E696D078];
  keys[15] = v24;
  v25 = *MEMORY[0x1E696D020];
  keys[16] = *MEMORY[0x1E696D028];
  keys[17] = v25;
  values[0] = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  values[1] = CFNumberCreate(0, kCFNumberCFIndexType, &v44);
  values[2] = CFNumberCreate(0, kCFNumberCFIndexType, &v42);
  values[3] = CFNumberCreate(0, kCFNumberCFIndexType, &v35);
  values[4] = CFNumberCreate(0, kCFNumberCFIndexType, a5);
  values[5] = CFNumberCreate(0, kCFNumberCFIndexType, &v43);
  values[6] = CFNumberCreate(0, kCFNumberCFIndexType, &v41);
  values[7] = CFNumberCreate(0, kCFNumberCFIndexType, &v40);
  values[8] = CFNumberCreate(0, kCFNumberSInt32Type, &v37);
  values[9] = CFNumberCreate(0, kCFNumberSInt32Type, &v36);
  values[10] = CFNumberCreate(0, kCFNumberCFIndexType, &v34);
  values[11] = CFNumberCreate(0, kCFNumberCFIndexType, &v33);
  values[12] = CFNumberCreate(0, kCFNumberCFIndexType, &v32);
  values[13] = CFNumberCreate(0, kCFNumberCFIndexType, &v31);
  values[14] = CFNumberCreate(0, kCFNumberCFIndexType, &v39);
  values[15] = CFNumberCreate(0, kCFNumberCFIndexType, &v38);
  values[16] = CFNumberCreate(0, kCFNumberCFIndexType, &v30);
  values[17] = CFNumberCreate(0, kCFNumberCFIndexType, &v29);
  v26 = CFDictionaryCreate(0, keys, values, 18, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 18; ++i)
  {
    CFRelease(values[i]);
  }

  return v26;
}

CFDictionaryRef CA::SurfaceUtil::create_plane_dict(CA::SurfaceUtil *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  keys[7] = *MEMORY[0x1E69E9840];
  v18 = a2;
  valuePtr = this;
  v16 = a4;
  v17 = a3;
  v14 = a6;
  v15 = a5;
  v13 = a7;
  v7 = *MEMORY[0x1E696D090];
  keys[0] = *MEMORY[0x1E696D0C8];
  keys[1] = v7;
  v8 = *MEMORY[0x1E696D0B0];
  keys[2] = *MEMORY[0x1E696CFE8];
  keys[3] = v8;
  v9 = *MEMORY[0x1E696D060];
  keys[4] = *MEMORY[0x1E696D0B8];
  keys[5] = v9;
  keys[6] = *MEMORY[0x1E696CFE0];
  values[0] = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  values[1] = CFNumberCreate(0, kCFNumberCFIndexType, &v18);
  values[2] = CFNumberCreate(0, kCFNumberCFIndexType, &v17);
  values[3] = CFNumberCreate(0, kCFNumberCFIndexType, &v16);
  values[4] = CFNumberCreate(0, kCFNumberCFIndexType, &v15);
  values[5] = CFNumberCreate(0, kCFNumberCFIndexType, &v14);
  values[6] = CFNumberCreate(0, kCFNumberCFIndexType, &v13);
  v10 = CFDictionaryCreate(0, keys, values, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 7; ++i)
  {
    CFRelease(values[i]);
  }

  return v10;
}

unint64_t CA::SurfaceUtil::rowbytes_for_packed_format(CA::SurfaceUtil *this, int a2)
{
  v2 = 3;
  v3 = 2;
  if (a2 > 1885746227)
  {
    if ((a2 - 1886676528) <= 4 && ((1 << (a2 - 48)) & 0x15) != 0 || (a2 - 1886680624) <= 4 && ((1 << (a2 - 48)) & 0x15) != 0)
    {
      v6 = 3;
      v2 = 5;
      v3 = 4;
      return ((this + v3) / v2) << v6;
    }

    v4 = 13364;
    goto LABEL_10;
  }

  if (a2 > 1882469427)
  {
    if (a2 != 1882469428 && a2 != 1885745712)
    {
      v4 = 12850;
LABEL_10:
      v5 = v4 | 0x70660000;
      goto LABEL_15;
    }

LABEL_17:
    v6 = 2;
    return ((this + v3) / v2) << v6;
  }

  if (a2 == 1882468912)
  {
    goto LABEL_17;
  }

  v5 = 1882468914;
LABEL_15:
  v6 = 2;
  if (a2 != v5)
  {
    __assert_rtn("rowbytes_for_packed_format", "CASurfaceUtil.mm", 540, "0");
  }

  return ((this + v3) / v2) << v6;
}

uint64_t ___ZN2CA11SurfaceUtil43CASurfaceAsyncWaitAndSignalSharedEventValueEPNS0_24CASurfaceSharedEventRef_EPNS0_29CASurfaceSharedEventListener_Eyy_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (x_log_get_sharedevent(void)::once != -1)
  {
    dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
  }

  v4 = x_log_get_sharedevent(void)::log;
  if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 134218496;
    v9 = a2;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "AsyncWaitAndSignal complete event: %p  wait_value: 0x%llx  signal_value: 0x%llx\n", &v8, 0x20u);
  }

  return [a2 setSignaledValue:*(a1 + 40)];
}

void CA::SurfaceUtil::CASurfaceAppendSharedEvent(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(MEMORY[0x1E696CE10]) initWithSharedEvent:*a2 waitValue:*(a2 + 16) isWrite:*(a2 + 24)];
  IOSurfaceAppendTransaction();
}

id createDictionaryFromBulkAttachments(unsigned int *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19[0] = @"width";
  v3 = a1[1];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:*a1];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v20[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:2];
  v19[1] = @"height";
  v4 = a1[3];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:a1[2]];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v20[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:2];
  v19[2] = @"horizontalOffset";
  v5 = a1[5];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:a1[4]];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v20[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:2];
  v19[3] = @"verticalOffset";
  v6 = a1[7];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:a1[6]];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v20[3] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:2];
  [v2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v20, v19, 4), @"cleanAperture"}];
  v17[0] = @"horizontalSpacing";
  v7 = a1[9];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:a1[8]];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v17[1] = @"verticalSpacing";
  v18[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:2];
  v8 = a1[11];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:a1[10]];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v18[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:2];
  [v2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v18, v17, 2), @"pixelAspectRatio"}];
  v9 = a1[13];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:a1[12]];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v21, 2), @"gammaLevel"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 56)), @"fieldCount"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 57)), @"fieldDetail"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 58)), @"yCbCrMatrixIndex"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 59)), @"colorPrimariesIndex"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 60)), @"transferFunctionIndex"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 61)), @"chromaLocationTopField"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 62)), @"chromaLocationBottomField"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 63)), @"chromaSubsampling"}];
  v15[0] = @"displayPrimariesXG";
  v16[0] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v15[1] = @"displayPrimariesYG";
  v16[1] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 33)];
  v15[2] = @"displayPrimariesXB";
  v16[2] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 34)];
  v15[3] = @"displayPrimariesYB";
  v16[3] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 35)];
  v15[4] = @"displayPrimariesXR";
  v16[4] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 36)];
  v15[5] = @"displayPrimariesYR";
  v16[5] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 37)];
  v15[6] = @"whitePointX";
  v16[6] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 38)];
  v15[7] = @"whitePointY";
  v16[7] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 39)];
  v15[8] = @"maxDisplayMasteringLuminance";
  v16[8] = [MEMORY[0x1E696AD98] numberWithInt:a1[20]];
  v15[9] = @"minDisplayMasteringLuminance";
  v16[9] = [MEMORY[0x1E696AD98] numberWithInt:a1[21]];
  [v2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v16, v15, 10), @"masteringDisplayColorVolume"}];
  v13[0] = @"maxContentLightLevel";
  v10 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 44)];
  v13[1] = @"maxFrameAverageLightLevel";
  v14[0] = v10;
  v14[1] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 45)];
  [v2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v14, v13, 2), @"contentLightLevelInfo"}];
  v11 = a1[24];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:a1[23]];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v21, 2), @"edrFactor"}];
  return v2;
}

uint64_t CA::WindowServer::AppleDisplay::valid_bandwidth_p(CA::WindowServer::AppleDisplay *this, float a2, float a3)
{
  v3 = *(this + 3730);
  v4 = v3 != 0.0;
  if (v3 >= a2)
  {
    v4 = 0;
  }

  v5 = *(this + 3731);
  v6 = v5 != 0.0;
  if (v5 >= a3)
  {
    v6 = 0;
  }

  v7 = *(this + 6856);
  if (v7 == 2)
  {
    v8 = v4 && v6;
    return v8 ^ 1u;
  }

  if (v7 == 1)
  {
    v8 = v4 || v6;
    return v8 ^ 1u;
  }

  return 1;
}

BOOL CA::WindowServer::AppleDisplay::supports_scale_p(CA::WindowServer::AppleDisplay *this, int a2, int a3, int a4, int a5, int a6)
{
  v6 = 29904;
  if (a6)
  {
    v6 = 29864;
  }

  v7 = (this + v6);
  v8 = (a4 / a2);
  v9 = v7[3];
  if (v9 > v8)
  {
    return 0;
  }

  v10 = v7[4];
  if (v10 < v8)
  {
    return 0;
  }

  v12 = (a5 / a3);
  return v10 >= v12 && v9 <= v12;
}

void CA::WindowServer::AppleDisplay::update_display_limits(CA::WindowServer::AppleDisplay *this)
{
  v185 = *MEMORY[0x1E69E9840];
  *(this + 1850) = vdupq_n_s64(0x40uLL);
  *(this + 1851) = xmmword_183E20D80;
  *(this + 1852) = xmmword_183E20D90;
  X::small_vector_base<unsigned long>::resize(this + 3706, 1uLL);
  X::small_vector_base<unsigned long>::resize(this + 3714, 1uLL);
  v2 = *(this + 3706);
  if (*(this + 3707) == v2)
  {
    goto LABEL_361;
  }

  *v2 = 1920;
  v3 = *(this + 3714);
  if (*(this + 3715) == v3)
  {
    goto LABEL_361;
  }

  *v3 = 1200;
  *(this + 1864) = 0u;
  v4 = (this + 29856);
  *(this + 1863) = 0u;
  *(this + 1862) = 0u;
  *(this + 1861) = 0u;
  *(this + 29864) = xmmword_183E20DA0;
  *(this + 3735) = 0;
  *(this + 1868) = xmmword_183E20DB0;
  *(this + 3738) = 32;
  *(this + 29912) = xmmword_183E20DC0;
  *(this + 29928) = xmmword_183E20DD0;
  *(this + 7491) = 0;
  *(this + 29944) = 0u;
  *(this + 14984) = *(this + 14984) & 0xCB61 | 0x240C;
  v5 = MGGetSInt64Answer();
  TypeID = CFNumberGetTypeID();
  v7 = CA::WindowServer::copy_display_property(this, @"PanelLayout", TypeID);
  if (v7)
  {
    v8 = v7;
    CFNumberGetValue(v7, kCFNumberIntType, this + 29960);
    CFRelease(v8);
  }

  CA::WindowServer::DisplayLimits::update_display_scaling((this + 29592), this, 0, 1u);
  v9 = CFDictionaryGetTypeID();
  v10 = CA::WindowServer::copy_display_property(this, @"DisplayPipeStrideRequirements", v9);
  if (v10)
  {
    v11 = v10;
    Value = CFDictionaryGetValue(v10, @"StrideLinearHorizontal");
    if (Value)
    {
      v13 = CA_CFIntValue(Value);
    }

    else
    {
      v13 = 0;
    }

    v14 = CFDictionaryGetValue(v11, @"StrideLinearVertical");
    if (v14)
    {
      LODWORD(v14) = CA_CFIntValue(v14);
    }

    if (v13)
    {
      *(this + 3701) = v13;
    }

    if (v14)
    {
      *(this + 3702) = v14;
    }

    CFRelease(v11);
  }

  v15 = CFDictionaryGetTypeID();
  v16 = CA::WindowServer::copy_display_property(this, @"DisplayPipePlaneBaseAlignment", v15);
  if (v16)
  {
    v17 = v16;
    v18 = CFDictionaryGetValue(v16, @"PlaneBaseAlignmentLinear");
    if (v18)
    {
      v19 = CA_CFIntValue(v18);
      if (v19)
      {
        *(this + 3700) = v19;
      }
    }

    CFRelease(v17);
  }

  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal == 1)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    v20 = CADeviceIsVirtualized::is_virtualized ^ 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = CFDictionaryGetTypeID();
  v22 = CA::WindowServer::copy_display_property(this, @"IOMFBMaxSrcPixels", v21);
  if (v22)
  {
    v23 = v22;
    v24 = CFDictionaryGetValue(v22, @"MaxSrcBufferWidth");
    if (v24)
    {
      v25 = CA_CFIntValue(v24);
    }

    else
    {
      v25 = 0;
    }

    v28 = CFDictionaryGetValue(v23, @"MaxSrcBufferHeight");
    if (v28 && (v29 = CA_CFIntValue(v28), v25 >= 1) && v29 >= 1)
    {
      if (v25 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v25;
      }

      *(this + 3705) = v30;
    }

    else if (v20)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v31 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_183AA6000, v31, OS_LOG_TYPE_FAULT, "kIOMFBSourceSurface(Width/Height)LimitKey missing!", buf, 2u);
      }
    }

    v32 = CFDictionaryGetValue(v23, @"MaxSrcRectWidth");
    if (v32)
    {
      v33 = CA_CFIntValue(v32);
      if (v33 >= 1)
      {
        v34 = *(this + 3706);
        if (*(this + 3707) == v34)
        {
          goto LABEL_361;
        }

        *v34 = v33;
      }
    }

    Array = CA_CFDictionaryGetArray(v23, @"MaxSrcRectWidthForPipe");
    if (Array)
    {
      v36 = Array;
      Count = CFArrayGetCount(Array);
      if (!Count)
      {
        __assert_rtn("update_display_limits", "windowserver-apple-display.cpp", 334, "size >= 1");
      }

      v38 = Count;
      X::small_vector_base<unsigned long>::resize(this + 3706, Count);
      v39 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v36, v39);
        v41 = CA_CFIntValue(ValueAtIndex);
        v42 = *(this + 3706);
        if (v39 >= (*(this + 3707) - v42) >> 3)
        {
          break;
        }

        *(v42 + 8 * v39++) = v41;
        if (v38 == v39)
        {
          goto LABEL_58;
        }
      }

LABEL_361:
      __assert_rtn("operator[]", "x-small-vector.h", 91, "pos < size () && Out of bounds access");
    }

LABEL_58:
    if (v20)
    {
      v43 = *(this + 3706);
      if (*(this + 3707) == v43)
      {
        goto LABEL_361;
      }

      if (!*v43)
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v44 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_183AA6000, v44, OS_LOG_TYPE_FAULT, "kIOMFBSourceRectangleLimitWidthKey and kIOMFBSourceRectangleLimitWidthPerPipeKey missing!", buf, 2u);
        }
      }
    }

    v45 = CFDictionaryGetValue(v23, @"MaxSrcRectTotal");
    if (v45)
    {
      v46 = CA_CFIntValue(v45);
      if (v46 >= 1)
      {
        v47 = *(this + 3706);
        if (*(this + 3707) == v47)
        {
          goto LABEL_361;
        }

        v48 = *(this + 3714);
        if (*(this + 3715) == v48)
        {
          goto LABEL_361;
        }

        *v48 = v46 / *v47;
      }
    }

    v49 = CA_CFDictionaryGetArray(v23, @"MaxSrcRectHeightForPipe");
    if (v49)
    {
      v50 = v49;
      v51 = CFArrayGetCount(v49);
      if (!v51)
      {
        __assert_rtn("update_display_limits", "windowserver-apple-display.cpp", 363, "size >= 1");
      }

      v52 = v51;
      X::small_vector_base<unsigned long>::resize(this + 3714, v51);
      for (i = 0; i != v52; *(v56 + 8 * i++) = v55)
      {
        v54 = CFArrayGetValueAtIndex(v50, i);
        v55 = CA_CFIntValue(v54);
        v56 = *(this + 3714);
        if (i >= (*(this + 3715) - v56) >> 3)
        {
          goto LABEL_361;
        }
      }
    }

    v26 = &unk_1ED4E5000;
    if (v20)
    {
      v57 = *(this + 3714);
      if (*(this + 3715) == v57)
      {
        goto LABEL_361;
      }

      if (!*v57)
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v58 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_183AA6000, v58, OS_LOG_TYPE_FAULT, "kIOMFBSourceRectangleLimitTotalKey and kIOMFBSourceRectangleLimitHeightPerPipeKey missing!", buf, 2u);
        }
      }
    }

    v59 = CFDictionaryGetValue(v23, @"PixelClock");
    if (v59)
    {
      v60 = CA_CFIntValue(v59);
      if (v60 >= 1)
      {
        *(this + 3727) = v60;
      }
    }

    v61 = CFDictionaryGetValue(v23, @"VideoClock");
    if (v61)
    {
      v62 = CA_CFIntValue(v61);
      if (v62 >= 1)
      {
        *(this + 3728) = v62;
      }
    }

    v63 = CFDictionaryGetValue(v23, @"MaxVideoSrcDownscalingWidth");
    if (v63)
    {
      v64 = CA_CFIntValue(v63);
      if (v64 >= 1)
      {
        *(this + 3735) = v64;
      }
    }

    if (CADeviceUseCompression::once[0] != -1)
    {
      dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
    }

    if (CADeviceUseCompression::enable_compression == 1 && (*(this + 29513) & 1) == 0)
    {
      if (CADeviceSupportsUniversalCompression::once != -1)
      {
        dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
      }

      if ((CADeviceSupportsUniversalCompression::universal & 1) == 0)
      {
        v65 = CFDictionaryGetValue(v23, @"IOMFBMaxCompressedSizeInBytes");
        if (v65 && (v66 = CA_CFIntValue(v65)) != 0)
        {
          *(this + 3704) = v66;
        }

        else if (v20)
        {
          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v67 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_183AA6000, v67, OS_LOG_TYPE_FAULT, "kIOMFBMaxCompressedSizeInBytes missing!", buf, 2u);
          }
        }
      }
    }

    v68 = CFDictionaryGetValue(v23, @"IOMFBCompressionSupport");
    if (v68)
    {
      *(this + 14984) = *(this + 14984) & 0xFBFF | ((CA_CFIntValue(v68) != 0) << 10);
    }

    v69 = CFDictionaryGetValue(v23, @"MaxSrcRotRectTotal");
    if (v69)
    {
      *(this + 3729) = CA_CFIntValue(v69);
    }

    CFRelease(v23);
  }

  else
  {
    v26 = &unk_1ED4E5000;
    if (v20)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v27 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_183AA6000, v27, OS_LOG_TYPE_FAULT, "kIOMFBSourceLimitsKey missing!", buf, 2u);
      }
    }
  }

  *(this + 14984) = *(this + 14984) & 0xF5FF | 0x800;
  v70 = CFDictionaryGetTypeID();
  v71 = CA::WindowServer::copy_display_property(this, @"IOMFBNumLayers", v70);
  if (v71)
  {
    v72 = v71;
    v73 = CFDictionaryGetValue(v71, @"MaxNumLayers");
    if (!v73 || CA_CFIntValue(v73) <= 1)
    {
      *(this + 14984) &= ~0x800u;
    }

    v74 = CFDictionaryGetValue(v72, @"FullFrameRequired");
    if (v74)
    {
      v75 = (CA_CFIntValue(v74) != 0) << 9;
    }

    else
    {
      v75 = 0;
    }

    *(this + 14984) = *(this + 14984) & 0xFDFF | v75;
    CFRelease(v72);
  }

  *(this + 1865) = 0u;
  v76 = CFNumberGetTypeID();
  v77 = CA::WindowServer::copy_display_property(this, @"maxAverageBpp", v76);
  if (v77)
  {
    v78 = v77;
    v79 = CA_CFIntValue(v77);
    if (v79)
    {
      *(this + 3730) = ((v79 * 0.000015259) + 0.0001);
    }

    CFRelease(v78);
  }

  v80 = CFNumberGetTypeID();
  v81 = CA::WindowServer::copy_display_property(this, @"maxPeakBpp", v80);
  if (v81)
  {
    v82 = v81;
    v83 = CA_CFIntValue(v81);
    if (v83)
    {
      *(this + 3731) = ((v83 * 0.000015259) + 0.0001);
    }

    CFRelease(v82);
  }

  *v4 = 0;
  v84 = CFDictionaryGetTypeID();
  v85 = CA::WindowServer::copy_display_property(this, @"MaxDisplayBandwidthLimitKey", v84);
  if (v85)
  {
    v86 = v85;
    v87 = CFDictionaryGetValue(v85, @"MaxGPBandwidthLimitKey");
    if (v87)
    {
      LODWORD(v87) = CA_CFIntValue(v87);
    }

    *v4 = v87;
    CFRelease(v86);
  }

  v88 = CFBooleanGetTypeID();
  v89 = CA::WindowServer::copy_display_property(this, @"PCCCabalEnable", v88);
  if (v89)
  {
    v90 = v89;
    if (CA_CFBoolValue(v89))
    {
      v91 = 2;
    }

    else
    {
      v91 = 0;
    }

    *(this + 14984) = *(this + 14984) & 0xFFFD | v91;
    CFRelease(v90);
  }

  v92 = CFBooleanGetTypeID();
  v93 = CA::WindowServer::copy_display_property(this, @"IOMFBRGBMultiPlaneSupportKey", v92);
  if (v93)
  {
    v94 = v93;
    if (CA_CFBoolValue(v93))
    {
      v95 = 4;
    }

    else
    {
      v95 = 0;
    }

    *(this + 14984) = *(this + 14984) & 0xFFFB | v95;
    CFRelease(v94);
  }

  v96 = CFBooleanGetTypeID();
  v97 = CA::WindowServer::copy_display_property(this, @"IOMFBYUVSupportKey", v96);
  if (v97)
  {
    v98 = v97;
    if (CA_CFBoolValue(v97))
    {
      v99 = 8;
    }

    else
    {
      v99 = 0;
    }

    *(this + 14984) = *(this + 14984) & 0xFFF7 | v99;
    CFRelease(v98);
  }

  if (CADeviceDisplayNeedsW40aWorkaround::once != -1)
  {
    dispatch_once(&CADeviceDisplayNeedsW40aWorkaround::once, &__block_literal_global_104_12721);
  }

  if (CADeviceDisplayNeedsW40aWorkaround::workaround == 1)
  {
    v100 = CFNumberGetTypeID();
    v101 = CA::WindowServer::copy_display_property(this, @"W40a_Blending_OK", v100);
    if (v101)
    {
      v102 = v101;
      if (CA_CFBoolValue(v101))
      {
        v103 = 16;
      }

      else
      {
        v103 = 0;
      }

      *(this + 14984) = *(this + 14984) & 0xFFEF | v103;
      CFRelease(v102);
    }
  }

  else
  {
    *(this + 14984) |= 0x10u;
  }

  v104 = CFBooleanGetTypeID();
  v105 = CA::WindowServer::copy_display_property(this, @"IOMFBSupportsICC", v104);
  if (v105)
  {
    v106 = v105;
    if (CA_CFBoolValue(v105))
    {
      v107 = 32;
    }

    else
    {
      v107 = 0;
    }

    *(this + 14984) = *(this + 14984) & 0xFFDF | v107;
    CFRelease(v106);
    v108 = *(this + 14984);
  }

  else
  {
    if (CADeviceDisplaySupportsICC::once != -1)
    {
      dispatch_once(&CADeviceDisplaySupportsICC::once, &__block_literal_global_239);
    }

    v109 = *(this + 14984);
    if (CADeviceDisplaySupportsICC::supports_icc == 1)
    {
      v108 = v109 | 0x20;
    }

    else
    {
      v108 = v109 & 0xFFDF;
    }
  }

  *(this + 14984) = v108 & 0xFFBF;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enable_hdr10plus", @"com.apple.coreanimation", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    *(this + 14984) = *(this + 14984) & 0xFFBF | ((AppBooleanValue != 0) << 6);
  }

  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v111 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v112 = "YES";
    if ((*(this + 14984) & 0x40) == 0)
    {
      v112 = "NO";
    }

    *buf = 136315138;
    *v182 = v112;
    _os_log_impl(&dword_183AA6000, v111, OS_LOG_TYPE_DEFAULT, "Platform supports HDR10Plus: %s", buf, 0xCu);
  }

  v113 = CFDictionaryGetTypeID();
  v114 = CA::WindowServer::copy_display_property(this, @"IOMFBDisplayRefresh", v113);
  if (v114)
  {
    v115 = v114;
    v116 = CFDictionaryGetValue(v114, @"displayMinRefreshInterval");
    if (v116)
    {
      v117 = CA_CFIntValue(v116);
    }

    else
    {
      v117 = 0;
    }

    *(this + 3743) = v117;
    v118 = CFDictionaryGetValue(v115, @"displayRefreshStepMachTime");
    if (v118)
    {
      v118 = CA_CFIntValue(v118);
    }

    *(this + 3744) = CATimeWithHostTime(v118);
    if (CADeviceSupportsAPT::once != -1)
    {
      dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
    }

    if ((CADeviceSupportsAPT::supports_apt & 1) == 0)
    {
      *(this + 3744) = 0;
    }

    CFRelease(v115);
  }

  v119 = CFBooleanGetTypeID();
  v120 = CA::WindowServer::copy_display_property(this, @"IOMFBSupportsRotation", v119);
  if (v120)
  {
    v121 = v120;
    if (CA_CFBoolValue(v120))
    {
      v122 = 4096;
    }

    else
    {
      v122 = 0;
    }

    *(this + 14984) = *(this + 14984) & 0xEFFF | v122;
    CFRelease(v121);
  }

  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v123 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v124 = *(this + 6);
    v125 = "YES";
    if ((*(this + 14984) & 0x1000) == 0)
    {
      v125 = "NO";
    }

    *buf = 67109378;
    *v182 = v124;
    *&v182[4] = 2080;
    *&v182[6] = v125;
    _os_log_impl(&dword_183AA6000, v123, OS_LOG_TYPE_DEFAULT, "CADisplay %d Rotation Support Enabled: %s", buf, 0x12u);
  }

  v126 = CFBooleanGetTypeID();
  v127 = CA::WindowServer::copy_display_property(this, @"IOMFBBlendDisabledKey", v126);
  if (v127)
  {
    v128 = v127;
    if (CA_CFBoolValue(v127))
    {
      v129 = 0;
    }

    else
    {
      v129 = 0x2000;
    }

    *(this + 14984) = *(this + 14984) & 0xDFFF | v129;
    CFRelease(v128);
  }

  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v130 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v131 = *(this + 6);
    v132 = "YES";
    if ((*(this + 14984) & 0x2000) == 0)
    {
      v132 = "NO";
    }

    *buf = 67109378;
    *v182 = v131;
    *&v182[4] = 2080;
    *&v182[6] = v132;
    _os_log_impl(&dword_183AA6000, v130, OS_LOG_TYPE_DEFAULT, "CADisplay %d Supports Blending: %s", buf, 0x12u);
  }

  if ((*(this + 14984) & 0x2800) == 0x800)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v133 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v179 = *(this + 6);
      *buf = 67109120;
      *v182 = v179;
      _os_log_error_impl(&dword_183AA6000, v133, OS_LOG_TYPE_ERROR, "CADisplay %d Supports Detaching but not Blending", buf, 8u);
    }
  }

  *(this + 7398) = 2;
  if (CADeviceSupportsCIF10::once != -1)
  {
    dispatch_once(&CADeviceSupportsCIF10::once, &__block_literal_global_14);
  }

  if (CADeviceSupportsCIF10::supports_cif10 == 1)
  {
    *(this + 7398) |= 4u;
  }

  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if (CADeviceHasHardwareAcceleratedHDR::has_capability)
  {
    goto LABEL_221;
  }

  if (CADeviceIsVirtualized::once[0] != -1)
  {
    dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
  }

  if (CADeviceIsVirtualized::is_virtualized == 1)
  {
LABEL_221:
    *(this + 7398) |= 8u;
  }

  if ((*(this + 336) & 0x1C00) != 0)
  {
    if (v5 != 28672)
    {
      if (v5 == 32800 || v5 == 32785)
      {
        v135 = 0;
      }

      else
      {
        v135 = 256;
      }

      goto LABEL_237;
    }

LABEL_231:
    v135 = 0;
    goto LABEL_237;
  }

  if (v5 == 28672)
  {
    goto LABEL_231;
  }

  v136 = -1;
  v137 = &qword_183E21D08;
  while (v136 != 4)
  {
    v138 = *v137++;
    ++v136;
    if (v138 == v5)
    {
      if (v136 < 5)
      {
        goto LABEL_231;
      }

      break;
    }
  }

  v135 = 256;
LABEL_237:
  *(this + 14984) = *(this + 14984) & 0xFEFF | v135;
  if (v5 <= 33024)
  {
    if (v5 == 32800)
    {
      *(this + 1861) = xmmword_183E20DE0;
      *(this + 3726) = 2160;
      *(this + 1862) = xmmword_183E20DF0;
    }

    else
    {
      if (v5 == 32807)
      {
        v150 = 4096;
        if (*(this + 29495))
        {
          v150 = 5120;
        }

        *(this + 3722) = v150;
      }

      else
      {
        if (v5 != 32816)
        {
          goto LABEL_267;
        }

        *(this + 1861) = xmmword_183E20DE0;
        *(this + 3726) = 2160;
      }

      *(this + 3724) = 1;
    }
  }

  else if (v5 > 33039)
  {
    if (v5 == 33040)
    {
      v139 = *(this + 29495) == 0;
      v140 = 2388;
      v141 = 4096;
LABEL_260:
      if (!v139)
      {
        v140 = v141;
      }

      *(this + 3722) = v140;
      goto LABEL_267;
    }

    if (v5 == 33088)
    {
      v142 = 1640;
      *buf = 1640;
      v143 = CFNumberGetTypeID();
      v144 = CA::WindowServer::copy_display_property(this, @"IOMFBCompressedSourceSurfaceWidth", v143);
      if (v144)
      {
        v145 = v144;
        CFNumberGetValue(v144, kCFNumberIntType, buf);
        CFRelease(v145);
        v142 = *buf;
      }

      v146 = 4096;
      if (!*(this + 29495))
      {
        v146 = v142;
      }

      *(this + 3722) = v146;
      v26 = &unk_1ED4E5000;
    }
  }

  else
  {
    if (v5 != 33025)
    {
      if (v5 != 33027)
      {
        goto LABEL_267;
      }

      v139 = *(this + 29495) == 0;
      v140 = 5120;
      v141 = 6144;
      goto LABEL_260;
    }

    v147 = *(this + 29495) == 0;
    v148 = 2388;
    if (*(this + 29495))
    {
      v148 = 4096;
    }

    *(this + 3722) = v148;
    v149 = 2160;
    if (!v147)
    {
      v149 = 4096;
    }

    *(this + 3725) = v149;
  }

LABEL_267:
  v151 = MGGetSInt64Answer();
  v152 = v151;
  *(this + 29512) = 1;
  *(this + 6855) = 2 * (v151 == 28672);
  v153 = *(this + 14984);
  v154 = v153;
  *(this + 29515) = (v153 & 4) != 0;
  *(this + 29516) = (v153 & 8) != 0;
  if ((v153 & 8) != 0)
  {
    if (v151 != 28672)
    {
      *(this + 29517) = 1;
      *(this + 29518) = v151 != 32785;
      goto LABEL_274;
    }

    *(this + 29517) = 0;
LABEL_272:
    v155 = 0;
    *(this + 29519) = 0;
    goto LABEL_280;
  }

  *(this + 29517) = 0;
  if (v151 == 28672)
  {
    goto LABEL_272;
  }

LABEL_274:
  *(this + 29519) = v151 != 32785;
  v156 = -1;
  v157 = &qword_183E21D38;
  while (v156 != 3)
  {
    v158 = *v157++;
    ++v156;
    if (v158 == v151)
    {
      goto LABEL_279;
    }
  }

  v156 = 4;
LABEL_279:
  v155 = v156 > 3;
LABEL_280:
  *(this + 29520) = v155;
  *(this + 29540) = (v154 & 2) != 0;
  *(this + 29514) = (v154 & 0x10) != 0;
  if (v151 == 32785)
  {
    v159 = 2;
  }

  else
  {
    v159 = 3;
  }

  if (v151 == 28672)
  {
    v159 = 1;
  }

  *(this + 6856) = v159;
  if (CADeviceDisplaySupportsEDRFactor::once != -1)
  {
    dispatch_once(&CADeviceDisplaySupportsEDRFactor::once, &__block_literal_global_63);
  }

  *(this + 29535) = CADeviceDisplaySupportsEDRFactor::supports_edr;
  if (CADeviceHasLCDPanel::once != -1)
  {
    dispatch_once(&CADeviceHasLCDPanel::once, &__block_literal_global_110);
  }

  *(this + 29532) = CADeviceHasLCDPanel::has_lcd;
  if (*(this + 29495) != 1)
  {
    goto LABEL_294;
  }

  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if (CADeviceHasHardwareAcceleratedHDR::has_capability)
  {
    v160 = 1;
  }

  else
  {
LABEL_294:
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    v160 = CADeviceIsVirtualized::is_virtualized;
  }

  *(this + 29533) = v160 & 1;
  if (CADeviceDisplaySupportsICC::once != -1)
  {
    dispatch_once(&CADeviceDisplaySupportsICC::once, &__block_literal_global_239);
  }

  if ((*(this + 336) & 0x1C00) == 0 && (CADeviceDisplaySupportsICC::supports_icc & 1) != 0 && (*(this + 14984) & 0x20) != 0)
  {
    *(this + 29566) = 1;
    *(this + 29561) = (*(this + 226) & 0x200) != 0;
    *(this + 29562) = 1;
    *(this + 7398) |= 0x10u;
    if (CADeviceSupportsDisplayToneMap::once != -1)
    {
      dispatch_once(&CADeviceSupportsDisplayToneMap::once, &__block_literal_global_283);
    }

    v161 = CADeviceSupportsDisplayToneMap::display_tonemap == 1 && (*(this + 336) & 0x1C00) == 0;
    keyExistsAndHasValidFormat = 0;
    v162 = CFPreferencesGetAppBooleanValue(@"CAEnableDisplayTonemap", @"com.apple.coreanimation", &keyExistsAndHasValidFormat) != 0;
    if (keyExistsAndHasValidFormat)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v163 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v164 = *(this + 6);
        *buf = 67109120;
        *v182 = v164;
        _os_log_impl(&dword_183AA6000, v163, OS_LOG_TYPE_DEFAULT, "CADisplay %d Display Tonemap Support override", buf, 8u);
      }

      v161 = v162;
    }

    *(this + 29567) = v161;
    if (v161)
    {
      v165 = 128;
    }

    else
    {
      v165 = 0;
    }

    *(this + 14984) = *(this + 14984) & 0xFF7F | v165;
  }

  v166 = ((*(*this + 1888))(this) & 1) == 0 && (*(this + 336) & 0x1800) == 0;
  *(this + 29536) = v166;
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v167 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v168 = *(this + 6);
    if ((*(*this + 1888))(this))
    {
      v169 = "YES";
    }

    else
    {
      v169 = "NO";
    }

    v170 = (*(*this + 1896))(this);
    *buf = 67109634;
    if (v170)
    {
      v171 = "YES";
    }

    else
    {
      v171 = "NO";
    }

    *v182 = v168;
    *&v182[4] = 2080;
    *&v182[6] = v169;
    v183 = 2080;
    v184 = v171;
    _os_log_impl(&dword_183AA6000, v167, OS_LOG_TYPE_DEFAULT, "CADisplay %d ICC Support Enabled: %s; Display Tonemap Support Enabled: %s\n", buf, 0x1Cu);
  }

  v172 = *(this + 14984);
  *(this + 226) = *(this + 226) & 0xFFFFFCFF | (v172 >> 3) & 0x100 | (v172 >> 4) & 0x200;
  *(this + 29534) = (v172 & 0x40) != 0;
  if (CADeviceUseCompression::once[0] != -1)
  {
    dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
  }

  if (v26[344] == 1 && (*(this + 29513) & 1) == 0 && (*(this + 336) & 0x1C00) != 0x1000)
  {
    atomic_fetch_add(CA::WindowServer::IOMFBDisplay::_compressed_display_count, 1u);
  }

  if ((*(this + 29495) & 1) == 0 && (*(this + 336) & 0x1C00) != 0x1000)
  {
    if (v152 == 28672)
    {
      if (*(this + 24) <= *(this + 22) && *(this + 25) <= *(this + 23))
      {
        goto LABEL_344;
      }

      v173 = 1;
    }

    else
    {
      v173 = CA::WindowServer::IOMFBDisplay::service_int_property(*(this + 6422), @"IdleCachingMethod") != 0;
    }

    *(this + 29521) = v173;
LABEL_344:
    if (CADeviceSupportsAPT::once != -1)
    {
      dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
    }

    if (CADeviceSupportsAPT::supports_apt == 1)
    {
      atomic_fetch_or(this + 160, 0x10u);
      if (CAFrameRateArbitrationEnabled(void)::once[0] != -1)
      {
        dispatch_once(CAFrameRateArbitrationEnabled(void)::once, &__block_literal_global_18946);
      }

      if (CAFrameRateArbitrationEnabled(void)::enabled == 1)
      {
        atomic_fetch_or(this + 160, 0x100u);
      }
    }

    if ((*(this + 29495) & 1) == 0)
    {
      v174 = getenv("CA_MAIN_DISPLAY_ORIENTATION");
      if (v174)
      {
        v175 = atoi(v174);
      }

      else
      {
        MGGetFloat32Answer();
        v177 = v176 * -57.2957795 + 360.0;
        v175 = llroundf(v177 * 0.011111);
      }

      if ((v175 - 1) >= 3)
      {
        v178 = 0;
      }

      else
      {
        v178 = v175;
      }

      *(this + 7491) = v178;
    }

    *(this + 226) |= 0x1000u;
  }
}

void X::small_vector_base<unsigned long>::resize(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = *a1;
  v6 = &v4[-*a1];
  if (v6 >> 3 <= a2)
  {
    if (v6 >> 3 >= a2)
    {
      return;
    }

    v8 = a1[3];
    if (v8 >= a2)
    {
      v14 = *a1;
    }

    else
    {
      v9 = a1[2];
      v10 = (v8 + 1) | ((v8 + 1) >> 1) | (((v8 + 1) | ((v8 + 1) >> 1)) >> 2);
      v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
      v12 = v11 | (v11 >> 16) | ((v11 | (v11 >> 16)) >> 32);
      if (v12 + 1 > a2)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = a2;
      }

      v14 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
      v15 = *a1;
      v16 = a1[1];
      if (*a1 != v16)
      {
        v17 = v14;
        v18 = *a1;
        do
        {
          v19 = *v18++;
          *v17++ = v19;
        }

        while (v18 != v16);
      }

      if (v5 != v9)
      {
        free(v15);
      }

      *a1 = v14;
      v4 = v14 + v6;
      a1[3] = v13;
    }

    v7 = &v14[a2];
    if (v4 != v7)
    {
      bzero(v4, ((&v14[a2] - v4 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    }
  }

  else
  {
    v7 = &v5[a2];
  }

  a1[1] = v7;
}

const void *CA::WindowServer::copy_display_property(CA::WindowServer *this, CFStringRef key, const __CFString *a3)
{
  if (!*(this + 3212) || (v6 = IOMobileFramebufferCopyProperty()) == 0)
  {
    v7 = *(this + 6422);
    if (!v7)
    {
      return 0;
    }

    v6 = IORegistryEntrySearchCFProperty(v7, "IOService", key, 0, 0);
  }

  if (a3 && v6 && CFGetTypeID(v6) != a3)
  {
    CFRelease(v6);
    return 0;
  }

  return v6;
}

void CA::WindowServer::DisplayLimits::update_display_scaling(CA::WindowServer::DisplayLimits *this, const CA::WindowServer::AppleDisplay *a2, unsigned int a3, unsigned int a4)
{
  TypeID = CFDictionaryGetTypeID();
  v9 = CA::WindowServer::copy_display_property(a2, @"IOMFBScalingLimits", TypeID);
  if (v9)
  {
    v10 = v9;
    Value = CFDictionaryGetValue(v9, @"RGBLayer_MinScaleFraction");
    if (Value)
    {
      v12 = CA_CFIntValue(Value);
    }

    else
    {
      v12 = 0;
    }

    v13 = CFDictionaryGetValue(v10, @"RGBLayer_MaxScale");
    if (v13)
    {
      v14 = CA_CFIntValue(v13);
      if (v12)
      {
        if (v14)
        {
          *(this + 42) = 1.0 / v12;
          *(this + 43) = v14;
        }
      }
    }

    v15 = CFDictionaryGetValue(v10, @"YUVLayer_MinScaleFraction");
    if (v15)
    {
      v16 = CA_CFIntValue(v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = CFDictionaryGetValue(v10, @"YUVLayer_MaxScale");
    if (v17)
    {
      v18 = CA_CFIntValue(v17);
      if (v16)
      {
        if (v18)
        {
          *(this + 37) = 1.0 / v16;
          *(this + 38) = v18;
        }
      }
    }

    CFRelease(v10);
  }

  if (a3 > a4)
  {
    *(this + 42) = 0x3FF0000000000000;
    *(this + 37) = 0x3FF0000000000000;
  }
}

uint64_t CA::WindowServer::AppleDisplay::framebuffer_needs_intermediate(CA::WindowServer::AppleDisplay *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (CADeviceUseFramebufferCompression::once != -1)
  {
    dispatch_once(&CADeviceUseFramebufferCompression::once, &__block_literal_global_25);
  }

  if (a2 == a4 && a3 == a5)
  {
    return 0;
  }

  v11 = 29800;
  if (CADeviceUseFramebufferCompression::enable_compression)
  {
    v11 = 29776;
  }

  v12 = *(this + v11);
  if (v12 >= a2 || v12 == 0)
  {
    return (*(*this + 2424))(this, a2, a3, a4, a5, 0) ^ 1;
  }

  else
  {
    return 1;
  }
}

void CA::WindowServer::AppleDisplay::update_scaler_limits(CA::WindowServer::AppleDisplay *this)
{
  if (MGGetSInt64Answer() == 32800)
  {
    v2 = *(this + 164) & 0x3FFF;

    CA::WindowServer::DisplayLimits::update_display_scaling((this + 29592), this, v2, 0x870u);
  }
}

BOOL CA::WindowServer::AppleDisplay::needs_420_transform(CA::WindowServer::AppleDisplay *this, unint64_t a2)
{
  v2 = *(this + 3726);
  if (v2)
  {
    v3 = v2 >= a2;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

void CA::WindowServer::Display::set_power_state(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 189);
  (*(*&a1->_os_unfair_lock_opaque + 2248))(a1, a2, a3);

  os_unfair_lock_unlock(a1 + 189);
}

CA::WindowServer::AccelServer *CA::WindowServer::AppleDisplay::new_server(CA::WindowServer::AppleDisplay *this)
{
  v2 = *(this + 29495);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x5C0uLL, 0xDEEC3011uLL);
  if (result)
  {
    if (v2)
    {
      v4 = @"TVOut";
    }

    else
    {
      v4 = @"LCD";
    }

    return CA::WindowServer::AccelServer::AccelServer(result, this, v4);
  }

  return result;
}

__n128 CA::WindowServer::IOMFBDisplay::set_accessibility_display_bounds(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 27176) = *a2;
  return result;
}

float CA::WindowServer::IOMFBDisplay::set_maximum_reference_luminance(CA::WindowServer::IOMFBDisplay *this, double a2)
{
  result = a2;
  *(this + 6635) = result;
  return result;
}

float CA::WindowServer::IOMFBDisplay::set_minimum_luminance(CA::WindowServer::IOMFBDisplay *this, double a2)
{
  result = a2;
  *(this + 6630) = result;
  return result;
}

float CA::WindowServer::IOMFBDisplay::set_maximum_sdr_luminance(CA::WindowServer::IOMFBDisplay *this, double a2)
{
  result = a2;
  *(this + 6634) = result;
  return result;
}

float CA::WindowServer::IOMFBDisplay::set_maximum_hdr_luminance(CA::WindowServer::IOMFBDisplay *this, double a2)
{
  result = a2;
  *(this + 6631) = result;
  return result;
}

uint64_t CA::WindowServer::AppleDisplay::unconvert_logical_orientation(uint64_t a1, int a2)
{
  v2 = *(a1 + 29964);
  v3 = a2 & 3 ^ 2;
  v4 = (a2 + 1) & 3;
  if (v2 != 1)
  {
    v4 = a2;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (v2 == 3)
  {
    return (a2 - 1) & 3;
  }

  else
  {
    return v3;
  }
}

uint64_t CA::WindowServer::AppleDisplay::convert_logical_orientation(uint64_t a1, int a2)
{
  v2 = *(a1 + 29964);
  v3 = a2 & 3 ^ 2;
  v4 = (a2 - 1) & 3;
  if (v2 != 1)
  {
    v4 = a2;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (v2 == 3)
  {
    return (a2 + 1) & 3;
  }

  else
  {
    return v3;
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::is_detaching(CA::WindowServer::IOMFBDisplay *this)
{
  v1 = *(this + 3287);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 292) ^ 1;
  }

  return v1 & 1;
}

__n128 CA::WindowServer::AppleDisplay::iosurface_alignment@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[1850];
  v3 = this[1851];
  *a2 = result;
  a2[1] = v3;
  a2[2].n128_u64[0] = this[1852].n128_u64[0];
  return result;
}

void CA::WindowServer::AppleDisplay::~AppleDisplay(CA::WindowServer::AppleDisplay *this)
{
  *this = &unk_1EF1F0D28;
  v2 = *(this + 3714);
  if (v2 != *(this + 3716))
  {
    free(v2);
  }

  v3 = *(this + 3706);
  if (v3 != *(this + 3708))
  {
    free(v3);
  }

  CA::WindowServer::IOMFBDisplay::~IOMFBDisplay(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF1F0D28;
  v2 = *(this + 3714);
  if (v2 != *(this + 3716))
  {
    free(v2);
  }

  v3 = *(this + 3706);
  if (v3 != *(this + 3708))
  {
    free(v3);
  }

  CA::WindowServer::IOMFBDisplay::~IOMFBDisplay(this);
}

uint64_t CA::WindowServer::AppleExternalDisplay::detachable_layer_impl(_DWORD *a1, int *a2, float64x2_t *a3, _DWORD *a4, float64x2_t *a5, float64x2_t *a6, int *a7)
{
  if ((*(*a1 + 1576))(a1))
  {
    if ((a1[160] & 4) != 0)
    {
      return 24;
    }

    v14 = (*(*a4 + 168))(a4);
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    PixelFormat = IOSurfaceGetPixelFormat(v14);
    v17 = 0;
    result = 25;
    if (PixelFormat <= 1885745711)
    {
      if (PixelFormat <= 1111970368)
      {
        if (PixelFormat > 875704933)
        {
          v19 = PixelFormat == 875704934;
          v21 = 12918;
        }

        else
        {
          v19 = PixelFormat == 875704422;
          v21 = 12406;
        }

        v20 = v21 | 0x34320000;
LABEL_31:
        if (!v19 && PixelFormat != v20)
        {
          return result;
        }

        goto LABEL_36;
      }

      if (PixelFormat > 1882468911)
      {
        v19 = PixelFormat == 1882468912;
        v20 = 1882468914;
        goto LABEL_31;
      }

      v22 = PixelFormat == 1111970369;
      v23 = 1647534392;
    }

    else
    {
      if (PixelFormat > 1999908960)
      {
        if (PixelFormat > 2016686641)
        {
          v19 = PixelFormat == 2016686642 || PixelFormat == 2019963442;
          v20 = 2019963440;
          goto LABEL_31;
        }

        if (PixelFormat != 1999908961)
        {
          if (PixelFormat != 2016686640)
          {
            return result;
          }

LABEL_36:
          v17 = 2;
        }

LABEL_37:
        *a7 = v17;
        v26 = (*(*a4 + 40))(a4);
        v27 = PixelFormat == 1919365992 || v26 == 16;
        if (!v27 && (*a7 == 2 && (*(*a4 + 24))(a4) != 1 && (*(*a4 + 24))(a4) != 6 || (*(*a4 + 56))(a4) != 1 && (*(*a4 + 56))(a4) != 2 && (byte_1ED4E983E & 1) == 0))
        {
          return 13;
        }

        if (a6 && (a6[1].f64[0] + a6->f64[0] > (a1[164] & 0x3FFF) || a6[1].f64[1] + a6->f64[1] > ((a1[164] >> 14) & 0x3FFF)))
        {
          return 26;
        }

        if (a5)
        {
          v28 = a5[1].f64[0] + a5->f64[0];
          if (v28 > IOSurfaceGetWidth(v15))
          {
            return 27;
          }

          v29 = a5[1].f64[1] + a5->f64[1];
          if (v29 > IOSurfaceGetHeight(v15))
          {
            return 27;
          }
        }

        return 0;
      }

      if (PixelFormat <= 1919365991)
      {
        v19 = PixelFormat == 1885745712;
        v20 = 1885745714;
        goto LABEL_31;
      }

      v22 = PixelFormat == 1919365992;
      v23 = 1999843442;
    }

    if (v22 || PixelFormat == v23)
    {
      goto LABEL_37;
    }
  }

  else
  {

    return CA::WindowServer::AppleDisplay::detachable_layer_impl(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

const void *CA::WindowServer::AppleExternalDisplay::is_update_display_limits_requested(CA::WindowServer::AppleExternalDisplay *this)
{
  TypeID = CFBooleanGetTypeID();
  result = CA::WindowServer::copy_display_property(this, @"IOMFBHotplugKeysChangedKey", TypeID);
  if (result)
  {
    v4 = result;
    v5 = CA_CFBoolValue(result);
    CFRelease(v4);
    return v5;
  }

  return result;
}

void CA::WindowServer::AppleExternalDisplay::~AppleExternalDisplay(CA::WindowServer::AppleExternalDisplay *this)
{
  *this = &unk_1EF1F0D28;
  v2 = *(this + 3714);
  if (v2 != *(this + 3716))
  {
    free(v2);
  }

  v3 = *(this + 3706);
  if (v3 != *(this + 3708))
  {
    free(v3);
  }

  CA::WindowServer::IOMFBDisplay::~IOMFBDisplay(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF1F0D28;
  v2 = *(this + 3714);
  if (v2 != *(this + 3716))
  {
    free(v2);
  }

  v3 = *(this + 3706);
  if (v3 != *(this + 3708))
  {
    free(v3);
  }

  CA::WindowServer::IOMFBDisplay::~IOMFBDisplay(this);
}

BOOL CA::WindowServer::AppleWirelessDisplay::scale_cloned_layer_p(uint64_t a1, int a2, double *a3)
{
  v3 = 29904;
  if (a2 == 2)
  {
    v3 = 29864;
  }

  v4 = *a3;
  if (*a3 < 1.0)
  {
    return 1;
  }

  v5 = a3[1];
  if (v5 < 1.0)
  {
    return 1;
  }

  v6 = a1 + v3;
  v7 = *(v6 + 24);
  if (v4 < v7 || v5 < v7)
  {
    return 1;
  }

  v9 = *(v6 + 32);
  return v4 > v9 || v5 > v9;
}

CA::WindowServer::AccelServer *CA::WindowServer::AppleWirelessDisplay::new_server(CA::WindowServer::AppleWirelessDisplay *this)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, @"Wireless");
  v3 = MutableCopy;
  if (CA::WindowServer::AppleWirelessDisplay::new_server(void)::count)
  {
    CFStringAppendFormat(MutableCopy, 0, @"-%zu", CA::WindowServer::AppleWirelessDisplay::new_server(void)::count);
    v4 = CA::WindowServer::AppleWirelessDisplay::new_server(void)::count + 1;
  }

  else
  {
    v4 = 1;
  }

  CA::WindowServer::AppleWirelessDisplay::new_server(void)::count = v4;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x5C0uLL, 0xDEEC3011uLL);
  v6 = v5;
  if (v5)
  {
    CA::WindowServer::AccelServer::AccelServer(v5, this, v3);
  }

  CFRelease(v3);
  return v6;
}

void CA::WindowServer::AppleWirelessDisplay::~AppleWirelessDisplay(CA::WindowServer::AppleWirelessDisplay *this)
{
  *this = &unk_1EF1F0D28;
  v2 = *(this + 3714);
  if (v2 != *(this + 3716))
  {
    free(v2);
  }

  v3 = *(this + 3706);
  if (v3 != *(this + 3708))
  {
    free(v3);
  }

  CA::WindowServer::IOMFBDisplay::~IOMFBDisplay(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF1F0D28;
  v2 = *(this + 3714);
  if (v2 != *(this + 3716))
  {
    free(v2);
  }

  v3 = *(this + 3706);
  if (v3 != *(this + 3708))
  {
    free(v3);
  }

  CA::WindowServer::IOMFBDisplay::~IOMFBDisplay(this);
}

void CA::WindowServer::AppleInternalDisplay::~AppleInternalDisplay(CA::WindowServer::AppleInternalDisplay *this)
{
  *this = &unk_1EF1F0D28;
  v2 = *(this + 3714);
  if (v2 != *(this + 3716))
  {
    free(v2);
  }

  v3 = *(this + 3706);
  if (v3 != *(this + 3708))
  {
    free(v3);
  }

  CA::WindowServer::IOMFBDisplay::~IOMFBDisplay(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF1F0D28;
  v2 = *(this + 3714);
  if (v2 != *(this + 3716))
  {
    free(v2);
  }

  v3 = *(this + 3706);
  if (v3 != *(this + 3708))
  {
    free(v3);
  }

  CA::WindowServer::IOMFBDisplay::~IOMFBDisplay(this);
}

CA::WindowServer::Display *CA::WindowServer::AppleDisplay::AppleDisplay(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v22 = *MEMORY[0x1E69E9840];
  v7 = v5 + 25672;
  v9 = CA::WindowServer::Display::Display(v5, v8);
  *v9 = &unk_1EF204040;
  *(v9 + 3208) = 0;
  *v7 = 0;
  *(v7 + 4) = 0;
  *(v9 + 3212) = 0;
  v7[32] = 0;
  v7[40] = 0;
  *(v9 + 3215) = 0;
  *&_Q0 = -1;
  *(&_Q0 + 1) = -1;
  *(v9 + 1608) = _Q0;
  *(v9 + 1609) = _Q0;
  *(v9 + 3222) = 0;
  *(v7 + 28) = 0;
  *(v9 + 25912) = 0u;
  *(v9 + 25928) = 0u;
  *(v9 + 25944) = 0u;
  *(v9 + 25960) = 0u;
  *(v9 + 25976) = 0u;
  *(v9 + 25992) = 0u;
  *(v9 + 26008) = 0u;
  *(v9 + 26024) = 0u;
  *(v9 + 26040) = 0u;
  *(v7 + 100) = 0;
  *(v9 + 3262) = 0;
  *(v9 + 1630) = 0u;
  *(v9 + 3263) = v9 + 26136;
  *(v9 + 3264) = v9 + 26136;
  *(v9 + 3265) = v9 + 26136;
  *(v9 + 3266) = 4;
  *(v7 + 152) = 0;
  *(v7 + 158) = 0;
  *(v7 + 352) = 10;
  *&_Q0 = vneg_f32(0x3F0000003FLL);
  *(v9 + 26436) = _Q0;
  *(v7 + 189) = 1065353216;
  v11.i64[0] = 0x3F0000003FLL;
  v11.i64[1] = 0x3F0000003FLL;
  v12 = vnegq_f32(v11);
  *(v9 + 26452) = v12;
  *(v9 + 26468) = v12;
  *(v9 + 26484) = _Q0;
  *(v7 + 410) = 1;
  *(v9 + 1656) = v12;
  __asm { FMOV            V0.2S, #1.0 }

  *(v9 + 3314) = _Q0;
  *(v9 + 26520) = 0u;
  *(v9 + 3317) = 0;
  *(v9 + 26580) = 0;
  *(v9 + 26548) = 0u;
  *(v9 + 26564) = 0u;
  *(v7 + 228) = 1074580685;
  *(v9 + 26601) = 0;
  *(v9 + 26588) = 0u;
  *(v9 + 1665) = 0u;
  *(v9 + 26626) = 0;
  *(v9 + 26612) = 0u;
  *(v9 + 1666) = xmmword_183E20E00;
  *(v7 + 250) = 0;
  *(v9 + 3335) = 0;
  v7[1016] = v4;
  v7[1018] = v4;
  *(v9 + 1669) = 0u;
  *(v9 + 1670) = 0u;
  *(v7 + 266) = 1065353216;
  *(v7 + 268) = 0;
  *(v7 + 283) = 0;
  *(v9 + 3348) = 0;
  *(v9 + 1673) = 0u;
  *(v9 + 3355) = _Q0;
  *(v9 + 26920) = 0u;
  *(v9 + 6742) = 1065353216;
  *(v9 + 26936) = xmmword_183E31CC8;
  *(v9 + 26952) = unk_183E31CD8;
  *(v9 + 6751) = 1065353216;
  *(v9 + 26972) = xmmword_183E31CC8;
  *(v9 + 26988) = unk_183E31CD8;
  *(v9 + 6760) = 1065353216;
  *(v9 + 1689) = unk_183E31CD8;
  *(v9 + 1688) = xmmword_183E31CC8;
  *(v9 + 27044) = _Q0;
  *(v7 + 345) = 1065353216;
  v7[1384] = 1;
  *(v9 + 6773) = 1065353216;
  *(v9 + 27060) = xmmword_183E31CC8;
  *(v9 + 27076) = unk_183E31CD8;
  *(v7 + 356) = 1065353216;
  v7[1428] = 1;
  *(v9 + 1694) = xmmword_183E20E10;
  *(v9 + 1695) = xmmword_183E20E20;
  *(v9 + 1696) = xmmword_183E20E30;
  *(v9 + 1697) = xmmword_183E20E40;
  *(v7 + 374) = 1065353216;
  *(v9 + 27176) = 0u;
  v7[1500] = 1;
  v7[1568] = 0;
  *(v9 + 27264) = 0;
  *(v9 + 1703) = 0u;
  *(v9 + 27265) = 257;
  *(v9 + 3414) = 0;
  *(v9 + 27283) = 0u;
  *(v9 + 27299) = 0u;
  *(v9 + 27267) = 0u;
  *(v9 + 3415) = -1;
  *(v9 + 27368) = 0u;
  *(v9 + 27384) = 0u;
  *(v9 + 1709) = 0u;
  *(v9 + 1708) = 0u;
  *(v7 + 432) = 1065353216;
  *(v9 + 6856) = 0;
  *(v9 + 1713) = 0u;
  *(v9 + 6868) = 0;
  *(v9 + 1716) = 0u;
  *(v9 + 6890) = 0;
  *(v9 + 27528) = 0u;
  *(v9 + 27544) = 0u;
  *(v9 + 27496) = 0u;
  *(v9 + 27512) = 0u;
  *(v9 + 27480) = 0u;
  *(v9 + 27564) = 0xFFFFFFFFLL;
  *(v7 + 656) = 0;
  *(v9 + 1772) = 0u;
  *(v9 + 1771) = 0u;
  *(v9 + 27576) = 0u;
  *(v9 + 27592) = 0u;
  *(v9 + 7067) = 0;
  *(v9 + 28260) = 0;
  *(v9 + 28244) = 0u;
  *(v9 + 7082) = 0;
  *(v9 + 3540) = 0;
  *(v9 + 1769) = 0u;
  *(v7 + 674) = 1065353216;
  *(v9 + 3548) = 0;
  *(v7 + 680) = 0;
  *(v7 + 724) = 0;
  *(v9 + 3572) = v9 + 28608;
  *(v9 + 3573) = v9 + 28608;
  *(v9 + 3574) = v9 + 28608;
  *(v9 + 3575) = 4;
  *(v7 + 774) = 0;
  *(v9 + 7178) = 0;
  *(v9 + 28680) = 0u;
  *(v9 + 28696) = 0u;
  *(v9 + 28746) = 0u;
  *(v9 + 1796) = 0u;
  *(v9 + 1795) = 0u;
  *(v9 + 3597) = v9 + 28808;
  *(v9 + 3598) = v9 + 28808;
  *(v9 + 3599) = v9 + 28808;
  *(v9 + 3600) = 4;
  *(v7 + 808) = 0;
  *(v7 + 810) = 0;
  *(v9 + 28920) = 0u;
  *(v9 + 28936) = 0u;
  *(v7 + 820) = 1065353216;
  *(v9 + 3620) = v9 + 28992;
  *(v9 + 3621) = v9 + 28992;
  *(v9 + 3622) = v9 + 28992;
  *(v9 + 3623) = 4;
  *(v9 + 29068) = 0;
  *(v7 + 851) = 0;
  pthread_mutex_init((v9 + 29136), 0);
  *(v6 + 3650) = v6 + 29232;
  *(v6 + 3651) = v6 + 29232;
  *(v6 + 3652) = v6 + 29232;
  *(v6 + 3653) = 5;
  *(v6 + 29464) = 0u;
  v7[3823] = (v2 - 1) < 2;
  v7[3831] = 1;
  *(v7 + 1917) = 0;
  v7[3836] = 1;
  *(v7 + 1919) = 0;
  v7[3840] = 0;
  v7[3841] = v2 == 2;
  *(v7 + 1921) = 256;
  *(v6 + 29527) = 0;
  v7[3844] = 1;
  *(v6 + 29517) = 0;
  v7[3858] = 1;
  *(v6 + 29539) = 0;
  v7[3869] = 0;
  v7[3874] = 0;
  *(v7 + 1938) = 0;
  v7[3878] = 0;
  *(v6 + 29555) = 0;
  *(v7 + 1954) = 0;
  *(v6 + 29535) = 0;
  *(v6 + 29531) = 0;
  *(v6 + 29585) = 257;
  x_thread_init_mutex((v6 + 25848), 1);
  pthread_mutex_init((v6 + 29352), 0);
  pthread_cond_init((v6 + 29416), 0);
  pthread_mutex_init((v6 + 26168), 0);
  pthread_cond_init((v6 + 26232), 0);
  *(v6 + 226) |= 0x8300u;
  if ((CA::WindowServer::IOMFBDisplay::IOMFBDisplay(__CFString const*,unsigned int,unsigned int,IOMFBDisplayType)::initialized & 1) == 0)
  {
    if (CA::WindowServer::Display::benchmark_mode(0, v17))
    {
      CA::WindowServer::page_flipping_disabled = 1;
    }

    v18 = getenv("CA_CLONE_OVERSCAN_AMOUNT");
    if (v18)
    {
      *&v19 = atof(v18);
      CA::WindowServer::clone_overscan_amounts_y = v19;
      CA::WindowServer::clone_overscan_amounts_x = v19;
    }

    CA::WindowServer::IOMFBDisplay::IOMFBDisplay(__CFString const*,unsigned int,unsigned int,IOMFBDisplayType)::initialized = 1;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 3533) - *(v6 + 3531)) >> 3) <= 0x3F)
  {
    operator new();
  }

  cf = 0;
  if (*(v7 + 4))
  {
    IOMobileFramebufferOpen();
  }

  else
  {
    IOMobileFramebufferOpenByName();
  }

  *v6 = &unk_1EF1F0D28;
  *(v6 + 3706) = v6 + 29680;
  *(v6 + 3707) = v6 + 29680;
  *(v6 + 3708) = v6 + 29680;
  *(v6 + 3709) = 4;
  *(v6 + 3714) = v6 + 29744;
  *(v6 + 3715) = v6 + 29744;
  *(v6 + 3716) = v6 + 29744;
  *(v6 + 3717) = 4;
  CA::WindowServer::AppleDisplay::update_display_limits(v6);
  return v6;
}

void *CA::WindowServer::AppleInternalDisplay::open(CA::WindowServer::AppleInternalDisplay *this)
{
  if (CADeviceUseVirtualMainDisplay::once[0] != -1)
  {
    dispatch_once(CADeviceUseVirtualMainDisplay::once, &__block_literal_global_470);
  }

  if (CADeviceUseVirtualMainDisplay::b)
  {
    return 0;
  }

  if (CA::WindowServer::display_count_of_type(0) < this)
  {
    __assert_rtn("open", "windowserver-apple-display.cpp", 2669, "index <= count ()");
  }

  return CA::WindowServer::create_display_of_type(0, this, &__block_literal_global);
}

uint64_t CA::WindowServer::display_count_of_type(int a1)
{
  DisplayList = IOMobileFramebufferCreateDisplayList();
  if (!DisplayList)
  {
    return 0;
  }

  v3 = DisplayList;
  Count = CFArrayGetCount(DisplayList);
  if (Count)
  {
    v5 = Count;
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (*(CFArrayGetValueAtIndex(v3, i) + 2) == a1)
      {
        ++v6;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

void *CA::WindowServer::create_display_of_type(int a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  DisplayList = IOMobileFramebufferCreateDisplayList();
  if (!DisplayList)
  {
    return 0;
  }

  v6 = DisplayList;
  Count = CFArrayGetCount(DisplayList);
  if (Count)
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
      v11 = ValueAtIndex;
      v12 = ValueAtIndex[2];
      if ((v12 - 1) > 1)
      {
        goto LABEL_15;
      }

      memset(v23, 0, sizeof(v23));
      CString = CA_CFStringGetCString(*ValueAtIndex, v23, 256);
      v14 = strlen(CString);
      v15 = v11[2];
      v16 = "wireless";
      if (v15 != 2)
      {
        v16 = 0;
      }

      v17 = v15 == 1 ? "external" : v16;
      v18 = strlen(v17);
      if (v14 >= v18 && !strncmp(v17, CString, v18) && (!v14 || CString[v14 - 1] - 48 == a2))
      {
        break;
      }

LABEL_20:
      if (v8 == ++v9)
      {
        goto LABEL_21;
      }
    }

    v12 = v11[2];
LABEL_15:
    if (v12 == a1)
    {
      if (*v11)
      {
        v19 = (*(a3 + 16))(a3);
        if (v19)
        {
          v20 = v19;
          if (v19[3212])
          {
            goto LABEL_22;
          }

          (*(*v19 + 8))(v19);
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v20 = 0;
LABEL_22:
  CFRelease(v6);
  return v20;
}

void *___ZN2CA12WindowServer20AppleInternalDisplay4openEm_block_invoke()
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x7520uLL, 0xDEEC3011uLL);
  if (result)
  {
    result = CA::WindowServer::AppleDisplay::AppleDisplay(result);
    *result = &unk_1EF1F2B48;
    result[3747] = 0;
  }

  return result;
}

void *CA::WindowServer::AppleExternalDisplay::open(CA::WindowServer::AppleExternalDisplay *this)
{
  if (CA::WindowServer::display_count_of_type(1) < this)
  {
    __assert_rtn("open", "windowserver-apple-display.cpp", 2862, "index <= count ()");
  }

  return CA::WindowServer::create_display_of_type(1, this, &__block_literal_global_159);
}

void *___ZN2CA12WindowServer20AppleExternalDisplay4openEm_block_invoke()
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v0 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x7518uLL, 0xDEEC3011uLL);
  v1 = v0;
  if (v0)
  {
    v2 = CA::WindowServer::AppleDisplay::AppleDisplay(v0);
    *v1 = &unk_1EF1F1748;
    CA::WindowServer::IOMFBDisplay::set_signal_type(v2, 2);
  }

  return v1;
}

void *CA::WindowServer::AppleWirelessDisplay::open(CA::WindowServer::AppleWirelessDisplay *this)
{
  if (CA::WindowServer::display_count_of_type(2) < this)
  {
    __assert_rtn("open", "windowserver-apple-display.cpp", 3011, "index <= count ()");
  }

  if (CA::WindowServer::AppleWirelessDisplay::open(unsigned long)::once != -1)
  {
    dispatch_once(&CA::WindowServer::AppleWirelessDisplay::open(unsigned long)::once, &__block_literal_global_163);
  }

  return CA::WindowServer::create_display_of_type(2, this, &__block_literal_global_168);
}

uint64_t ___ZN2CA12WindowServer20AppleWirelessDisplay4openEm_block_invoke_2()
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v0 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x7520uLL, 0xDEEC3011uLL);
  v1 = v0;
  if (v0)
  {
    v2 = CA::WindowServer::AppleDisplay::AppleDisplay(v0);
    *v1 = &unk_1EF1F1748;
    CA::WindowServer::IOMFBDisplay::set_signal_type(v2, 2);
    *v1 = &unk_1EF1F2168;
    *(v1 + 29976) = 0;
    *(v1 + 904) |= 0x300u;
    CA::WindowServer::IOMFBDisplay::set_signal_type(v1, 2);
  }

  return v1;
}

void *___ZN2CA12WindowServer20AppleWirelessDisplay4openEm_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Celestial.framework/Celestial", 1);
  if (result)
  {
    result = dlsym(result, "FigInstallVirtualDisplay");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

uint64_t CAML::ObjCType::set_property(CAML::ObjCType *this, CAML::Context *a2, void *a3, unsigned int a4, const void *a5)
{
  String = CAAtomGetString(a4);

  return [a3 setValue:a5 forKey:String];
}

void CAML::ObjCScript::end(CAML::ObjCScript *this, CAML::Context *a2, CAML::State *a3, char *a4, uint64_t a5)
{
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a4 length:a5 encoding:4];
  if ((*(a2 + 112) & 0x20) != 0)
  {
    v10 = *(*(*(a2 + 1) + 56) + 52);
    v11 = *(a2 + 3);
    v12 = objc_autoreleasePoolPush();
    v9 = [*(a2 + 12) CAMLParser:*(a2 + 10) evaluateScriptValue:v8 sourceURL:v11 lineNumber:v10];
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    CAML::Context::error(a2, "Delegate does not support script values.");
    v9 = 0;
  }

  CAML::State::set_value(a3, v9);
  if (v9)
  {

    CFRelease(v9);
  }

  else
  {
  }
}

void CAML::ObjCScript::~ObjCScript(CAML::ObjCScript *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t CAML::ObjCNull::end(CAML::ObjCNull *this, CAML::Context *a2, CAML::State *a3, CAML::Context *a4, uint64_t a5)
{
  CAML::State::set_value(a3, *MEMORY[0x1E695E738]);

  return CAML::check_trailer(a2, a4, (a4 + a5), v8);
}

void CAML::ObjCNull::~ObjCNull(CAML::ObjCNull *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCBool::~ObjCBool(CAML::ObjCBool *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCInteger::~ObjCInteger(CAML::ObjCInteger *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCReal::~ObjCReal(CAML::ObjCReal *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCNSArray::~ObjCNSArray(CAML::ObjCNSArray *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCNSSet::start(CAML::ObjCNSSet *this, CAML::Context *a2, CAML::State *a3, const char **a4)
{
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  CAML::State::set_value(a3, Mutable);
  CFRelease(Mutable);
  *(a3 + 4) = 4;
}

void CAML::ObjCNSSet::~ObjCNSSet(CAML::ObjCNSSet *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCNSDictionary::start(CAML::ObjCNSDictionary *this, CAML::Context *a2, CAML::State *a3, const char **a4)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CAML::State::set_value(a3, Mutable);
  CFRelease(Mutable);
  *(a3 + 4) = 2;
}

void CAML::ObjCNSDictionary::~ObjCNSDictionary(CAML::ObjCNSDictionary *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCString::~ObjCString(CAML::ObjCString *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCNSURL::end(CAML::ObjCNSURL *this, CFURLRef *a2, CAML::State *a3, UInt8 *URLBytes, CFIndex length)
{
  v6 = CFURLCreateWithBytes(0, URLBytes, length, 0x8000100u, a2[2]);
  CAML::State::set_value(a3, v6);
  if (v6)
  {

    CFRelease(v6);
  }
}

void CAML::ObjCNSURL::~ObjCNSURL(CAML::ObjCNSURL *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCNSData::end(CAML::ObjCNSData *this, CAML::Context *a2, CAML::State *a3, char *a4, uint64_t a5)
{
  v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:v6 options:0];
  CAML::State::set_value(a3, v7);
}

void CAML::ObjCNSData::~ObjCNSData(CAML::ObjCNSData *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCGPoint::~ObjCCGPoint(CAML::ObjCCGPoint *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCGSize::end(CAML::ObjCCGSize *this, CAML::Context *a2, CAML::State *a3, CAML *a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  v9 = CAML::parse_length(a4, v14, (a4 + a5), a4);
  v11 = CAML::parse_length(v14[0], v14, (a4 + a5), v10);
  CAML::check_trailer(a2, v14[0], (a4 + a5), v12);
  v13 = objc_autoreleasePoolPush();
  CAML::State::set_value(a3, [MEMORY[0x1E696B098] valueWithSize:{v9, v11}]);
  objc_autoreleasePoolPop(v13);
}

void CAML::ObjCCGSize::~ObjCCGSize(CAML::ObjCCGSize *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCGRect::~ObjCCGRect(CAML::ObjCCGRect *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCGAffineTransform::end(CAML::ObjCCGAffineTransform *this, CGAffineTransform *a2, CAML::State *a3, CAML::Context *a4, const char *a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  *v8 = 0u;
  CAML::parse_affine_matrix(a2, a4, v8, &a5[a4], a5);
  v6 = objc_alloc_init(MEMORY[0x1E696AA98]);
  v7[0] = *v8;
  v7[1] = v9;
  v7[2] = v10;
  [v6 setTransformStruct:v7];
  CAML::State::set_value(a3, v6);
}

void CAML::ObjCCGAffineTransform::~ObjCCGAffineTransform(CAML::ObjCCGAffineTransform *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCATransform3D::~ObjCCATransform3D(CAML::ObjCCATransform3D *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCAPoint3D::end(CAML::ObjCCAPoint3D *this, CAML::Context *a2, CAML::State *a3, CAML *a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  v8 = CAML::parse_length(a4, v14, (a4 + a5), a4);
  v10 = CAML::parse_length(v14[0], v14, (a4 + a5), v9);
  v12 = CAML::parse_length(v14[0], v14, (a4 + a5), v11);
  v13 = objc_autoreleasePoolPush();
  CAML::State::set_value(a3, [MEMORY[0x1E696B098] valueWithCAPoint3D:{v8, v10, v12}]);
  objc_autoreleasePoolPop(v13);
}

void CAML::ObjCCAPoint3D::~ObjCCAPoint3D(CAML::ObjCCAPoint3D *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCACornerRadii::end(CAML::ObjCCACornerRadii *this, CAML::Context *a2, CAML::State *a3, CAML *a4, uint64_t a5)
{
  v8 = 0;
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10[0] = a4;
  do
  {
    *(&v14 + v8) = CAML::parse_length(v10[0], v10, (a4 + a5), a4);
    v8 += 8;
  }

  while (v8 != 64);
  v9 = objc_autoreleasePoolPush();
  *v10 = v14;
  v11 = v15;
  v12 = v16;
  v13 = v17;
  CAML::State::set_value(a3, [MEMORY[0x1E696B098] valueWithCACornerRadii:v10]);
  objc_autoreleasePoolPop(v9);
}

void CAML::ObjCCACornerRadii::~ObjCCACornerRadii(CAML::ObjCCACornerRadii *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCAColorMatrix::end(CAML::ObjCCAColorMatrix *this, CAML::Context *a2, CAML::State *a3, CAML *a4, uint64_t a5)
{
  v41 = *MEMORY[0x1E69E9840];
  *v32 = 1065353216;
  *&v32[72] = 1065353216;
  v8 = (a4 + a5);
  *&v32[4] = 0uLL;
  *&v32[20] = 0x3F80000000000000;
  *&v32[28] = 0uLL;
  *&v32[44] = 0x3F80000000000000uLL;
  *&v32[60] = 0;
  *&v32[68] = 0;
  v9 = CAML::skip_whitespace(a4, (a4 + a5), a3);
  v10 = 0;
  v11 = MEMORY[0x1E69E9830];
  do
  {
    if (v9 < v8)
    {
      v12 = *(v9 + v10);
      if (!*(v9 + v10))
      {
        break;
      }

      if ((v12 & 0x80000000) != 0)
      {
        if (!__maskrune(v12, 0x100uLL))
        {
          break;
        }
      }

      else if ((*(v11 + 4 * v12 + 60) & 0x100) == 0)
      {
        break;
      }
    }

    ++v10;
  }

  while (v10 != 31);
  __dst = 0u;
  v40 = 0u;
  memcpy(&__dst, v9, v10);
  *(&__dst + v10) = 0;
  v14 = CAML::skip_whitespace((v9 + v10), v8, v13);
  v33 = v14;
  if (v14 < v8 && *v14 == 40)
  {
    v14 = CAML::skip_whitespace((v14 + 1), v8, v15);
    v33 = v14;
  }

  v17.i32[1] = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  if (v14 >= v8)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *v14;
      if (!*v14)
      {
        break;
      }

      if (v19 == 41 || v18 > 0x13)
      {
        if (v19 == 41)
        {
          v14 = CAML::skip_whitespace((v14 + 1), v8, v15);
          v33 = v14;
        }

        break;
      }

      v21 = CAML::parse_real(v14, &v33, v8, v16);
      *(&v34 + v18) = v21;
      v14 = CAML::skip_whitespace(v33, v8, v22);
      v33 = v14;
      if (v14 < v8)
      {
        v23 = *v14;
        if (v23 == 59 || v23 == 44)
        {
          v14 = CAML::skip_whitespace((v14 + 1), v8, v15);
          v33 = v14;
        }
      }

      ++v18;
    }

    while (v14 < v8);
  }

  if (v14 < v8)
  {
    v24 = *v14;
    if (v24 == 59 || v24 == 44)
    {
      v14 = CAML::skip_whitespace((v14 + 1), v8, v15);
      v33 = v14;
    }
  }

  if (__dst == 1920229741 && *(&__dst + 3) == 7891314)
  {
    if (v18 == 20)
    {
      *v32 = v34;
      *&v32[16] = v35;
      *&v32[32] = v36;
      *&v32[48] = v37;
      *&v32[64] = v38;
      goto LABEL_54;
    }

LABEL_53:
    CAML::Context::error(a2, "Invalid color matrix: %s (position %ld)", a4, v14 - a4);
    goto LABEL_54;
  }

  if (__dst ^ 0x6574617275746173 | BYTE8(__dst))
  {
    v26 = 0;
  }

  else
  {
    v26 = v18 == 1;
  }

  if (v26)
  {
    v17.f32[0] = fmaxf(*&v34, 0.0);
    *&v32[72] = 1065353216;
    *&v32[12] = 0;
    *&v32[32] = 0;
    memset(&v32[52], 0, 20);
    *v32 = (v17.f32[0] * 0.7873) + 0.2126;
    *&v32[4] = vmls_lane_f32(0x3D93DD983F371759, 0x3D93DD983F371759, v17, 0);
    v28 = vmul_n_f32(0x3E91D14E3E59B3D0, v17.f32[0]);
    v29 = vsub_f32(1046066128, v28);
    v30 = vzip1_s32(v29, *&v32[4]);
    v29.i32[1] = vadd_f32(v28, vdup_n_s32(0x3F371759u)).i32[1];
    *&v32[20] = v29;
    *&v32[28] = *&v32[8];
    *&v32[40] = v30;
    *&v32[48] = (v17.f32[0] * 0.9278) + 0.0722;
    goto LABEL_54;
  }

  v27 = __dst == 0x7461746F52657568 && WORD4(__dst) == 101;
  if (!v27 || v18 != 1)
  {
    if (!(__dst ^ 0x636E616E696D756CLL | *(&__dst + 1) ^ 0x6168706C416F5465 | v40) && !v18)
    {
      *&v32[76] = 0;
      memset(v32, 0, 60);
      *&v32[60] = xmmword_183E20E70;
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  CA::ColorMatrix::set_hue_rotate(v32, *&v34);
LABEL_54:
  v31 = objc_autoreleasePoolPush();
  v36 = *&v32[32];
  v37 = *&v32[48];
  v38 = *&v32[64];
  v34 = *v32;
  v35 = *&v32[16];
  CAML::State::set_value(a3, [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v34]);
  objc_autoreleasePoolPop(v31);
}

void CAML::ObjCCAColorMatrix::~ObjCCAColorMatrix(CAML::ObjCCAColorMatrix *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCGColor::~ObjCCGColor(CAML::ObjCCGColor *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCGImage::start(CAML::ObjCCGImage *this, CAML::Context *a2, CAML::State *a3, const char **a4)
{
  v7 = CAML::Context::parse_src_attribute(a2, a4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = (*(*a2 + 72))(a2, v7);
  if (v9 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CGImageGetTypeID()))
  {
    CAML::State::set_value(a3, v10);
  }

  else
  {
    v12 = CAML::memq_(a4, "loadAsHDR", 1);
    if (v12)
    {
      v13 = *v12 == 49;
    }

    else
    {
      v13 = 0;
    }

    image_from_url = CAML::create_image_from_url(v8, v13);
    v15 = CAML::memq_(a4, "A8asL8", 1);
    if (v15 && *v15 == 49)
    {
      v16 = CA_copyL8CGImageAsA8(image_from_url);
      CGImageRelease(image_from_url);
      image_from_url = v16;
    }

    v17 = *a2;
    if (image_from_url)
    {
      (*(v17 + 80))(a2, v8, image_from_url);
    }

    else
    {
      v18 = (*(v17 + 88))(a2, v8);
      if (!v18 || (image_from_url = v18, v19 = CFGetTypeID(v18), v19 != CGImageGetTypeID()))
      {
        CAML::Context::error(a2, "Failed to load image");
        goto LABEL_18;
      }
    }

    CAML::State::set_value(a3, image_from_url);
    CGImageRelease(image_from_url);
  }

LABEL_18:

  CFRelease(v8);
}

void CAML::ObjCCGImage::~ObjCCGImage(CAML::ObjCCGImage *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCGPath::~ObjCCGPath(CAML::ObjCCGPath *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCGPDFDocument::start(CAML::ObjCCGPDFDocument *this, CAML::Context *a2, CAML::State *a3, const char **a4)
{
  v6 = CAML::Context::parse_src_attribute(a2, a4);
  if (v6)
  {
    v7 = v6;
    v8 = (*(*a2 + 72))(a2, v6);
    if (v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CGPDFDocumentGetTypeID()))
    {
      CAML::State::set_value(a3, v9);
    }

    else
    {
      v11 = CGPDFDocumentCreateWithURL(v7);
      v12 = *a2;
      if (v11)
      {
        v13 = v11;
        (*(v12 + 80))(a2, v7, v11);
      }

      else
      {
        v14 = (*(v12 + 88))(a2, v7);
        if (!v14 || (v13 = v14, v15 = CFGetTypeID(v14), v15 != CGPDFDocumentGetTypeID()))
        {
          CAML::Context::error(a2, "Unable to open pdf document");
          goto LABEL_14;
        }
      }

      CAML::State::set_value(a3, v13);
      CGPDFDocumentRelease(v13);
    }

LABEL_14:

    CFRelease(v7);
    return;
  }

  CAML::Context::error(a2, "pdfDocument element must specify src attribute");
}

void CAML::ObjCCGPDFDocument::~ObjCCGPDFDocument(CAML::ObjCCGPDFDocument *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::ObjCCGFont::end(CAML::ObjCCGFont *this, CAML::Context *a2, CAML::State *a3, char *a4)
{
  v7 = CGFontCreateWithName();
  if (v7)
  {
    v8 = v7;
    CAML::State::set_value(a3, v7);

    CGFontRelease(v8);
  }

  else
  {
    CAML::Context::warning(a2, "cannot create font from name: %s", a4);
  }
}

void CAML::ObjCCGFont::~ObjCCGFont(CAML::ObjCCGFont *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL CA::CG::DeviceColor::Pattern::operator==(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a1 != *a2 || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  *&t1.a = *(a1 + 8);
  *&t1.c = v4;
  *&t1.tx = *(a1 + 40);
  v5 = *(a2 + 24);
  *&v7.a = *(a2 + 8);
  *&v7.c = v5;
  *&v7.tx = *(a2 + 40);
  result = CGAffineTransformEqualToTransform(&t1, &v7);
  if (result)
  {
    result = 0;
    if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
    {
      return *(a1 + 80) == *(a2 + 80);
    }
  }

  return result;
}

void *CA::CG::DeviceColor::DeviceColor(void *a1, CGColor *a2, uint64_t a3, uint64_t a4, const double *a5, uint64_t *a6)
{
  v39[1] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  if (!a2)
  {
    goto LABEL_16;
  }

  Identifier = CGColorGetIdentifier();
  v11 = &a5[4 * (Identifier & 7) + 6];
  if (*v11 == Identifier)
  {
    v12 = *(v11 + 8);
LABEL_17:
    a1[1] = v12;
    return a1;
  }

  v13 = Identifier;
  v14 = (v11 + 16);
  if (*(v11 + 16) != Identifier)
  {
    Pattern = CGColorGetPattern(a2);
    if (!Pattern)
    {
      Components = CGColorGetComponents(a2);
      ColorSpace = CGColorGetColorSpace(a2);
      CGColorGetContentHeadroom();
      v35 = v34;
      CGGStateGetEDRTargetHeadroom();
      CA::CG::ContextDelegate::device_color(v39, a5, Components, v35, v36, ColorSpace);
      a1[1] = v39[0];
      *(v11 + 16) = *v11;
      *(v11 + 24) = *(v11 + 8);
      *v11 = v13;
      *(v11 + 8) = a1[1];
      return a1;
    }

    v19 = Pattern;
    Alpha = CGColorGetAlpha(a2);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v21 = malloc_type_zone_malloc(malloc_zone, 0x58uLL, 0x165299FDuLL);
    if (v21)
    {
      PatternBaseColor = CGColorGetPatternBaseColor();
      *v21 = CFRetain(v19);
      BaseCTM = CGRenderingStateGetBaseCTM();
      v25 = BaseCTM[1];
      v24 = BaseCTM[2];
      *(v21 + 8) = *BaseCTM;
      *(v21 + 24) = v25;
      *(v21 + 40) = v24;
      CGGStateGetPatternPhase();
      *(v21 + 7) = v26;
      *(v21 + 8) = v27;
      CGGStateGetEDRTargetHeadroom();
      *(v21 + 20) = v28;
      if (PatternBaseColor)
      {
        v29 = CGColorGetComponents(PatternBaseColor);
        v30 = CGColorGetColorSpace(PatternBaseColor);
        CGColorGetContentHeadroom();
        CA::CG::ContextDelegate::device_color(v39, a5, v29, v31, *(v21 + 20), v30);
        *(v21 + 9) = v39[0];
      }

      else
      {
        *(v21 + 9) = 0x3C003C003C003C00;
        if (Alpha != 1.0)
        {
          v37 = Alpha;
          *(v21 + 9) = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(0x3C003C003C003C00), v37));
        }
      }
    }

    *a1 = v21;
LABEL_16:
    v12 = *a6;
    goto LABEL_17;
  }

  v15 = *(v11 + 24);
  a1[1] = v15;
  v16 = *v11;
  v17 = *(v11 + 8);
  *v11 = *v14;
  *(v11 + 8) = v15;
  *v14 = v16;
  *(v11 + 24) = v17;
  return a1;
}

dispatch_semaphore_t ___ZN2CA2CG5QueueC2Ev_block_invoke()
{
  result = dispatch_semaphore_create(96);
  CA::CG::Queue::_queue_sema = result;
  return result;
}

dispatch_queue_t CA::CG::Queue::create_queue(CA::CG::Queue *this)
{
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("CA::CG::Queue", v1);
  CA::CG::Queue::_queue = result;
  return result;
}

void CA::CG::Queue::flush_queue(CA::CG::Queue *this)
{
  v2 = (this + 32);
  v1 = *(this + 4);
  if (v1)
  {
    (*(*this + 16))(this);
    *v2 = 0;
    v2[1] = 0;
    if (v1[3] >= (v1[2] - 48))
    {

      CA::CG::Queue::deallocate_slab(v1);
    }

    else
    {
      ++*(this + 12);
      dispatch_semaphore_wait(CA::CG::Queue::_queue_sema, 0xFFFFFFFFFFFFFFFFLL);
      if (BYTE11(xmmword_1ED4E980C) == 1)
      {
        kdebug_trace();
      }

      if (CA::CG::Queue::_disable_async)
      {
        if (CA::CG::Queue::queue(void)::once != -1)
        {
          dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
        }

        v4 = CA::CG::Queue::_queue;

        dispatch_sync_f(v4, v1, CA::CG::Queue::render_callback);
      }

      else
      {
        v5 = *(this + 1);
        if (!v5)
        {
          v5 = dispatch_group_create();
          *(this + 1) = v5;
        }

        if (CA::CG::Queue::queue(void)::once != -1)
        {
          v7 = v5;
          dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
          v5 = v7;
        }

        v6 = CA::CG::Queue::_queue;

        dispatch_group_async_f(v5, v6, v1, CA::CG::Queue::render_callback);
      }
    }
  }
}

void CA::CG::Queue::deallocate_slab(void *a1)
{
  if (a1[4])
  {
    a1[1] = a1[2];
    os_unfair_lock_lock(&CA::CG::Queue::_free_lock);
    *a1 = CA::CG::Queue::_free_slabs;
    CA::CG::Queue::_free_slabs = a1;

    os_unfair_lock_unlock(&CA::CG::Queue::_free_lock);
  }

  else
  {

    free(a1);
  }
}

void CA::CG::Queue::render_callback(CA::CG::Queue *this, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = *this;
  v5 = (*(**this + 24))(*this);
  if (!v5)
  {
    CA::CG::Queue::mark_serial(v4);
    goto LABEL_85;
  }

  *(this + 1) = v5;
  v6 = objc_autoreleasePoolPush();
  v8 = *this;
  v9 = BYTE11(xmmword_1ED4E980C);
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  v10 = *(this + 1);
  if (!v10)
  {
    v44 = 0;
    goto LABEL_75;
  }

  v11 = *(v10 + 8);
  if (!v11)
  {
    v19 = 0;
LABEL_73:
    v44 = 0;
    goto LABEL_74;
  }

  if ((*(v10 + 4224) & 1) == 0)
  {
    if (!(*(*v11 + 256))(v11))
    {
      v19 = 0;
      goto LABEL_71;
    }

    v12 = (*(**(v10 + 8) + 232))(*(v10 + 8), 0);
    if (v12)
    {
      v13 = v12;
      if (x_log_get_cg(void)::once != -1)
      {
        dispatch_once(&x_log_get_cg(void)::once, &__block_literal_global_453);
      }

      v14 = x_log_get_cg(void)::log;
      if (os_log_type_enabled(x_log_get_cg(void)::log, OS_LOG_TYPE_ERROR))
      {
        v50 = (*(**(v10 + 8) + 240))(*(v10 + 8), v13);
        *buf = 136315138;
        *&buf[4] = v50;
        _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "rendering error %s\n", buf, 0xCu);
      }
    }

    *(v10 + 4224) |= 1u;
    memset(buf, 0, sizeof(buf));
    mach_get_times();
    v15 = *&buf[8];
    v16 = *(v10 + 8);
    *(v16 + 648) = CATimeWithHostTime(*buf);
    CA::CG::Renderer::update_finished_seed(v10);
    if (byte_1ED4E985F == 1)
    {
      if (x_log_get_cg_perf(void)::once != -1)
      {
        dispatch_once(&x_log_get_cg_perf(void)::once, &__block_literal_global_5);
      }

      v51 = x_log_get_cg_perf(void)::log;
      v52 = os_signpost_id_generate(x_log_get_cg_perf(void)::log);
      *(v10 + 4216) = v52;
      if (v52 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v53 = v52;
        if (os_signpost_enabled(v51))
        {
          v54 = *(*(v10 + 8) + 8);
          v61 = *(v10 + 152);
          v55 = _MXSignpostMetricsSnapshot();
          *buf = 67240706;
          *&buf[4] = v54;
          *&buf[8] = 1026;
          *&buf[10] = v61;
          *&buf[14] = 2114;
          v63 = v55;
          _os_signpost_emit_with_name_impl(&dword_183AA6000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v53, "Rendering", "context=%{public,name=context}u update=0x%{public,name=update}x\n%{public, signpost:metrics}@", buf, 0x18u);
        }
      }
    }

    (*(**(v10 + 8) + 208))(*(v10 + 8), v15);
    v17 = *(v10 + 8);
    *(v17 + 636) = *(v10 + 152);
    if (*(v10 + 296) == 0.0)
    {
      *(v10 + 296) = *(v17 + 648) + 0.25;
    }

    (*(*v17 + 1088))(v17, v10 + 1328);
  }

  v18 = *(this + 2) - 48;
  v19 = 1;
  if (v18 > *(this + 3))
  {
    v58 = v9;
    v59 = v6;
    v60 = v3;
    v20 = 0;
    v21 = this + 48;
    v56 = vdupq_n_s64(0x41C0000000000000uLL);
    v57 = vdupq_n_s64(0xC1BFFFFFFF000000);
    v22 = 1;
    while (1)
    {
      v23 = *(v21 + 1);
      if (v20 != v23)
      {
        break;
      }

      if (v20)
      {
        CA::CG::TransparencyLayer::unref(*(v21 + 1));
      }

      v24 = (v21 + 16);
      if (v22)
      {
        v23 = v20;
        goto LABEL_50;
      }

      v22 = 0;
LABEL_58:
      (*(*(v21 + 2) + 16))(v24, v10);
      (**(v21 + 2))(v24);
      v18 -= *v21;
      v21 += *v21;
      if (v18 <= *(this + 3))
      {
        if (v20)
        {
          v43 = v22;
        }

        else
        {
          v43 = 0;
        }

        if (v43)
        {
          CA::CG::Renderer::pop_transparency_layer(v10, v20);
          v6 = v59;
          v3 = v60;
          goto LABEL_69;
        }

        v6 = v59;
        v3 = v60;
        if (v20)
        {
LABEL_69:
          CA::CG::TransparencyLayer::unref(v20);
        }

        v19 = 1;
        v9 = v58;
        goto LABEL_71;
      }
    }

    if (v20 == 0 || (v22 & 1) == 0)
    {
      if (!v20)
      {
        goto LABEL_28;
      }
    }

    else
    {
      CA::CG::Renderer::pop_transparency_layer(v10, v20);
      v23 = *(v21 + 1);
    }

    CA::CG::TransparencyLayer::unref(v20);
LABEL_28:
    if (v23)
    {
      v25 = *(v10 + 8);
      if (!v25 || (*(v23 + 246) & 1) != 0)
      {
LABEL_31:
        v22 = 0;
        v24 = (v21 + 16);
LABEL_57:
        v20 = v23;
        goto LABEL_58;
      }

      if (!*(v23 + 9))
      {
        v26 = *(v10 + 80);
        *(v23 + 10) = v26;
        v27 = *(v23 + 8);
        v28 = *(v23 + 24);
        if (v26 != 1.0)
        {
          v7.f64[0] = 1.79769313e308;
          v29 = vdupq_lane_s64(vcgtq_f64(v7, v28).i64[0], 0);
          v30.i64[1] = *(v23 + 2);
          *v30.i64 = v26 * v27.f64[0];
          v27 = vbslq_s8(v29, v30, v27);
          v30.i64[1] = *(v23 + 4);
          *v30.i64 = v26 * v28.f64[0];
          v28 = vbslq_s8(v29, v30, v28);
          if (v28.f64[1] < 1.79769313e308)
          {
            v27.f64[1] = vmuld_lane_f64(v26, v27, 1);
            v28.f64[1] = v28.f64[1] * v26;
          }
        }

        v31 = vceqzq_f64(v28);
        if ((vorrq_s8(vdupq_laneq_s64(v31, 1), v31).u64[0] & 0x8000000000000000) != 0 || (v32 = vceqq_f64(v28, v28), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v32), 1), v32).u64[0] & 0x8000000000000000) != 0))
        {
          memset(buf, 0, sizeof(buf));
        }

        else
        {
          v33 = vmaxnmq_f64(v27, v57);
          v34 = vminnmq_f64(vaddq_f64(v27, v28), v56);
          v35 = vcvtmq_s64_f64(v33);
          *buf = vuzp1q_s32(v35, vsubq_s64(vcvtpq_s64_f64(v34), v35));
        }

        CA::Shape::operator=(v23 + 88, buf);
        v36 = (*(*v25 + 696))(v25, 1, buf, 9231, @"transparency");
        *(v23 + 9) = v36;
        if (!v36)
        {
          goto LABEL_31;
        }

        atomic_fetch_add((v10 + 4228), 1u);
      }

      v37 = (v25[692] >> 12) & 7;
      *(v23 + 224) = (v25[692] >> 12) & 7;
      v38 = v25[692];
      if (v37 == 3)
      {
        v38 = v38 & 0xFFFF8FFF | 0x2000;
        v25[692] = v38;
      }

      v39 = v38 >> 12;
      if ((v39 & 4) != 0)
      {
        v40 = 0;
      }

      else
      {
        v40 = (0x22231800u >> (8 * (v39 & 7)) << 8) & 0xFF00;
      }

      *(*(v23 + 9) + 144) = *(*(v23 + 9) + 144) & 0xFFFFC0FF | v40;
      *(v23 + 247) = (v25[692] & 4) != 0;
      CA::OGL::Context::push_surface(v25, *(v23 + 9), *(v23 + 245), 512, 0);
      v25[692] |= 4u;
      *(v23 + 245) = 0;
      *(v23 + 17) = CA::OGL::Context::set_gstate(v25, v23 + 17);
      *(v23 + 246) = 1;
      *(v10 + 1416) = v23;
    }

    v24 = (v21 + 16);
LABEL_50:
    v41 = *(v21 + 29) & 0x18;
    if (v41 == 8)
    {
      CA::CG::DrawOp::render(v24, v10);
      v42 = *(v21 + 15);
    }

    else
    {
      if (v41)
      {
        CA::CG::DrawOp::render(*(v21 + 15), v10);
        if (v41 != 16)
        {
          goto LABEL_56;
        }
      }

      v42 = v24;
    }

    CA::CG::DrawOp::render(v42, v10);
LABEL_56:
    v22 = 1;
    goto LABEL_57;
  }

LABEL_71:
  v45 = *(v10 + 8);
  if (!v45 || *(v10 + 296) == 0.0)
  {
    goto LABEL_73;
  }

  v49 = mach_absolute_time();
  *(v45 + 648) = CATimeWithHostTime(v49);
  if (*(v10 + 296) >= *(*(v10 + 8) + 648))
  {
    v44 = 0;
  }

  else
  {
    v44 = 3;
  }

LABEL_74:
  (*(*v8 + 32))(v8, v10);
  if ((v19 & 1) == 0)
  {
LABEL_75:
    v46 = *(this + 2) - 48;
    if (v46 > *(this + 3))
    {
      v47 = this + 48;
      do
      {
        v48 = *(v47 + 1);
        if (v48)
        {
          CA::CG::TransparencyLayer::unref(v48);
        }

        (**(v47 + 2))((v47 + 16));
        v46 -= *v47;
        v47 += *v47;
      }

      while (v46 > *(this + 3));
    }
  }

  CA::CG::Queue::deallocate_slab(this);
  dispatch_semaphore_signal(CA::CG::Queue::_queue_sema);
  if (v44)
  {
    (*(*v8 + 40))(v8, v44, 0);
  }

  CA::CG::Queue::mark_serial(v8);
  if (v9)
  {
    kdebug_trace();
  }

  objc_autoreleasePoolPop(v6);
LABEL_85:

  objc_autoreleasePoolPop(v3);
}

uint64_t CA::CG::Queue::mark_serial(CA::CG::Queue *this)
{
  pthread_mutex_lock((this + 56));
  ++*(this + 13);
  pthread_cond_broadcast((this + 120));

  return pthread_mutex_unlock((this + 56));
}

NSObject *CA::CG::Queue::wait_queue(CA::CG::Queue *this, unsigned int a2)
{
  if (a2)
  {
    pthread_mutex_lock((this + 56));
    while (*(this + 13) < a2)
    {
      pthread_cond_wait((this + 120), (this + 56));
    }

    return pthread_mutex_unlock((this + 56));
  }

  else
  {
    result = *(this + 1);
    if (result)
    {

      return dispatch_group_wait(result, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return result;
}

uint64_t *CA::CG::Queue::allocate_slab(CA::CG::Queue *this)
{
  v1 = 0x2000;
  if (this > 0x2000)
  {
    v1 = this;
  }

  v2 = (v1 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  os_unfair_lock_lock(&CA::CG::Queue::_free_lock);
  v3 = 0;
  v4 = &CA::CG::Queue::_free_slabs;
  v5 = &CA::CG::Queue::_free_slabs;
  while (1)
  {
    v6 = v3;
    v3 = *v5;
    if (!*v5)
    {
      break;
    }

    v7 = v3[1];
    v5 = *v5;
    if (v7 >= v2)
    {
      if (v6)
      {
        v4 = v6;
      }

      *v4 = *v3;
      os_unfair_lock_unlock(&CA::CG::Queue::_free_lock);
      v2 = v7;
      goto LABEL_10;
    }
  }

  os_unfair_lock_unlock(&CA::CG::Queue::_free_lock);
  v3 = mmap(0, v2, 3, 4098, 855638016, 0);
  if (v3 == -1)
  {
    abort();
  }

LABEL_10:
  *v3 = 0;
  v3[1] = 0;
  v3[2] = v2;
  v3[3] = v2 - 48;
  v3[4] = (v3 + 6);
  return v3;
}

void CA::CG::Queue::reclaim_slabs(CA::CG::Queue *this)
{
  if (CA::CG::Queue::_free_slabs)
  {
    os_unfair_lock_lock(&CA::CG::Queue::_free_lock);
    v1 = CA::CG::Queue::_free_slabs;
    if (CA::CG::Queue::_free_slabs && *CA::CG::Queue::_free_slabs)
    {
      CA::CG::Queue::_free_slabs = *CA::CG::Queue::_free_slabs;
      os_unfair_lock_unlock(&CA::CG::Queue::_free_lock);
      v2 = v1[1];

      munmap(v1, v2);
    }

    else
    {

      os_unfair_lock_unlock(&CA::CG::Queue::_free_lock);
    }
  }
}

unint64_t *CA::CG::Queue::alloc(CA::CG::Queue *this, uint64_t a2)
{
  v3 = (a2 + 31) & 0xFFFFFFFFFFFFFFF0;
  v4 = *(this + 4);
  if (!v4)
  {
    goto LABEL_12;
  }

  if (!*(this + 2) || v4[3] >= v3)
  {
    goto LABEL_10;
  }

  slab = CA::CG::Queue::allocate_slab((2 * v4[2]));
  v6 = slab + 6;
  v7 = v4[2] - v4[3] - 48;
  memcpy(slab + 6, v4 + 6, v7);
  *slab = *v4;
  v8 = slab[4] + v7;
  v9 = slab[2];
  v10 = slab[3] - v7;
  slab[3] = v10;
  slab[4] = v8;
  v11 = v9 - 48;
  while (v11 > v10)
  {
    v12 = v6[15];
    if (v12)
    {
      (*(*v12 + 40))(v12, v6 + 2);
      v10 = slab[3];
    }

    v11 -= *v6;
    v6 = (v6 + *v6);
  }

  *(this + 4) = slab;
  *(this + 5) = 0;
  CA::CG::Queue::deallocate_slab(v4);
  v4 = *(this + 4);
  if (v4)
  {
LABEL_10:
    v13 = v4[3];
    v14 = v13 - v3;
    if (v13 >= v3)
    {
      v16 = v4[4];
      v4[3] = v14;
      v4[4] = v16 + v3;
      goto LABEL_18;
    }

    CA::CG::Queue::flush_queue(this);
  }

  else
  {
LABEL_12:
    (*(*this + 16))(this);
  }

  if (v3 > 0x1000)
  {
    v17 = malloc_type_malloc(v3 + 48, 0xE1807AA4uLL);
    if (!v17)
    {
      abort();
    }

    v17[1] = 0;
    *(this + 4) = v17;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = v3 + 48;
    v16 = v17 + 6;
    *v17 = this;
  }

  else
  {
    v15 = CA::CG::Queue::allocate_slab(v3);
    *(this + 4) = v15;
    *v15 = this;
    v16 = v15[4];
    v15[3] -= v3;
    v15[4] = v16 + v3;
  }

LABEL_18:
  *v16 = v3;
  v18 = *(this + 2);
  if (v18)
  {
    atomic_fetch_add(v18, 1u);
  }

  v16[1] = v18;
  v19 = *(this + 2);
  if (v19)
  {
    v20 = *(v19 + 244);
    if (v20 < 2)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 2;
    }

    *(v19 + 244) = v21;
  }

  return v16 + 2;
}

void CA::CG::Queue::cancel(CA::CG::Queue *this, CA::CG::DrawOp *a2)
{
  (**a2)(a2);
  v4 = *(this + 4);
  v5 = *(a2 - 1);
  if (v5)
  {
    CA::CG::TransparencyLayer::unref(v5);
    *(a2 - 1) = 0;
  }

  v6 = v4[4];
  if (v6)
  {
    v4[4] = v6 - *(a2 - 2);
    v4[3] += *(a2 - 2);
  }

  else
  {
    CA::CG::Queue::deallocate_slab(v4);
    *(this + 4) = 0;
  }
}

uint64_t CA::CG::Queue::cancel_and_grow(CA::CG::Queue *this, CA::CG::DrawOp *a2, CA::CG::DrawOp *a3, uint64_t a4)
{
  v4 = *(this + 4);
  if (!v4[4])
  {
    return 0;
  }

  if (v4 > a3 || *(this + 5) != a3)
  {
    return 0;
  }

  if (v4 + v4[2] < a3)
  {
    return 0;
  }

  v8 = (a4 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (*(a2 - 2) + v4[3] < v8 || *(a3 - 1) != *(a2 - 1))
  {
    return 0;
  }

  CA::CG::Queue::cancel(this, a2);
  *(a3 - 2) += v8;
  v10 = *(this + 4);
  if (v10)
  {
    v11 = *(v10 + 32) + v8;
    *(v10 + 24) -= v8;
    *(v10 + 32) = v11;
  }

  return 1;
}

uint64_t CA::CG::Queue::synchronize_attributes_callback(CA::CG::Queue *this, void *a2)
{
  result = (*(**this + 24))(*this, a2);
  if (result)
  {
    (*(*result + 16))(result, *(this + 2));
    v4 = *(**this + 32);

    return v4();
  }

  return result;
}

void CA::CG::Queue::flush(uint64_t a1, int a2, char a3)
{
  CA::CG::Queue::flush_queue(a1);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x165299FDuLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    *(v6 + 2) = a2;
  }

  ++*(a1 + 48);
  if (a3 & 1) != 0 || (CA::CG::Queue::_disable_async)
  {
    if (CA::CG::Queue::queue(void)::once != -1)
    {
      dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
    }

    v8 = CA::CG::Queue::_queue;

    dispatch_sync_f(v8, v7, CA::CG::Queue::Flush::callback);
  }

  else
  {
    v9 = *(a1 + 8);
    if (!v9)
    {
      v9 = dispatch_group_create();
      *(a1 + 8) = v9;
    }

    if (CA::CG::Queue::queue(void)::once != -1)
    {
      dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
    }

    v10 = CA::CG::Queue::_queue;

    dispatch_group_async_f(v9, v10, v7, CA::CG::Queue::Flush::callback);
  }
}

void CA::CG::Queue::Flush::callback(CA::CG::Queue::Flush *this, void *a2)
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2CA2CG5Queue5Flush8callbackEPv_block_invoke;
  v3[3] = &__block_descriptor_tmp_3;
  v3[4] = v2;
  v3[5] = this;
  ___ZN2CA2CG5Queue5Flush8callbackEPv_block_invoke(v3);
}

void ___ZN2CA2CG5Queue5Flush8callbackEPv_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 32) + 48))(*(a1 + 32), *(*(a1 + 40) + 8));
  CA::CG::Queue::reclaim_slabs(v2);
  CA::CG::Queue::mark_serial(*(a1 + 32));
  v3 = *(a1 + 40);
  if (v3)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v4 = malloc_zone;

    malloc_zone_free(v4, v3);
  }
}

void CA::CG::Queue::finish_callback(CA::CG::Queue *this, void *a2)
{
  v2 = (*(*this + 56))(this, a2);

  CA::CG::Queue::reclaim_slabs(v2);
}

char *CA::Render::Interpolator::show(uint64_t a1, X::Stream *this, int a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    return X::Stream::printf(this, "(interpolator %g)", *(a1 + 48));
  }

  X::Stream::printf(this, "(interpolator (factor %g)", *(a1 + 48));
  v8 = 0;
  v9 = (a3 + 1);
  v10 = *(a1 + 32);
  v13[0] = *(a1 + 16);
  v13[1] = v10;
  do
  {
    v11 = *(v13 + v8);
    if (v11)
    {
      X::Stream::printf(this, "\n%*s", 2 * v9, "");
      X::Stream::printf(this, "(o%d ", v8);
      (*(*v11 + 40))(v11, this, v9, a4);
      X::Stream::printf(this, ")");
    }

    ++v8;
  }

  while (v8 != 4);

  return X::Stream::printf(this, ")");
}

void CAFrameIntervalRangeLogInvalidRange(CAFrameIntervalRange a1, CAFrameRateRange a2)
{
  preferred = a2.preferred;
  maximum = a2.maximum;
  minimum = a2.minimum;
  var2 = a1.var2;
  v6 = *&a1.var0;
  v19 = *MEMORY[0x1E69E9840];
  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v7 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67110400;
    v8[1] = v6;
    v9 = 1024;
    v10 = HIDWORD(v6);
    v11 = 1024;
    v12 = var2;
    v13 = 2048;
    v14 = minimum;
    v15 = 2048;
    v16 = maximum;
    v17 = 2048;
    v18 = preferred;
    _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "CoreAnimation: Invalid frame interval range %u %u %u from frame rate range %.2f %.2f %.2f", v8, 0x32u);
  }
}

uint64_t ___ZN2CA7Display11DisplayLink22display_force_power_onEPNS0_7DisplayE_block_invoke(uint64_t result, CA::Display::DisplayLink *this)
{
  if (*(this + 1) == *(result + 32))
  {
    return CA::Display::DisplayLink::power_changed(this);
  }

  return result;
}

uint64_t ___ZN2CA7Display11DisplayLink28display_refresh_rate_changedEPNS0_7DisplayE_block_invoke(uint64_t result, CA::Display::DisplayLink *this)
{
  if (*(this + 1) == *(result + 32))
  {
    return CA::Display::DisplayLink::update_timer(this, 1);
  }

  return result;
}

void CA::WindowServer::Display::ModeSet::~ModeSet(CA::WindowServer::Display::ModeSet *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 48);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*(this + 4));
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && v18[2] == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

float CA::Display::Display::auto_luminance_boost(CA::Display::Display *this)
{
  v1 = this;
  v13 = *MEMORY[0x1E69E9840];
  ServerPort = CARenderServerGetServerPort(0);
  if (ServerPort)
  {
    v3 = ServerPort;
    v4 = 1.0;
    if (!v1)
    {
LABEL_29:
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v3);
      return v4;
    }

    memset(&msg_4[16], 0, 28);
    *msg_4 = 0u;
    *&msg_4[20] = *MEMORY[0x1E69E99E0];
    *&msg_4[28] = v1;
    reply_port = mig_get_reply_port();
    *&msg_4[4] = v3;
    *&msg_4[8] = reply_port;
    msg = 5395;
    *&msg_4[12] = 0x9D2B00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&msg);
      v6 = *&msg_4[8];
    }

    else
    {
      v6 = reply_port;
    }

    v7 = mach_msg(&msg, 3, 0x24u, 0x30u, v6, 0, 0);
    if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg_4[8]);
      goto LABEL_29;
    }

    if (v7)
    {
      mig_dealloc_reply_port(*&msg_4[8]);
      goto LABEL_29;
    }

    if (*&msg_4[16] == 71)
    {
      v9 = -308;
      goto LABEL_27;
    }

    if (*&msg_4[16] != 40335)
    {
      v9 = -301;
      goto LABEL_27;
    }

    if ((msg & 0x80000000) == 0)
    {
      if (*msg_4 == 40)
      {
        if (!*&msg_4[4])
        {
          v9 = *&msg_4[28];
          if (!*&msg_4[28])
          {
            v4 = *&msg_4[32];
            goto LABEL_29;
          }

LABEL_27:
          mach_msg_destroy(&msg);
          if (!v9)
          {
            v4 = 0.0;
          }

          goto LABEL_29;
        }
      }

      else if (*msg_4 == 36)
      {
        if (*&msg_4[4])
        {
          v8 = 1;
        }

        else
        {
          v8 = *&msg_4[28] == 0;
        }

        if (v8)
        {
          v9 = -300;
        }

        else
        {
          v9 = *&msg_4[28];
        }

        goto LABEL_27;
      }
    }

    v9 = -300;
    goto LABEL_27;
  }

  return 1.0;
}

void sub_183C3514C(_Unwind_Exception *a1)
{
  mach_port_deallocate(*v2, v1);
  kdebug_trace();
  _Unwind_Resume(a1);
}

uint64_t ___Z37CADisplaySupportedHDRModeWithCriteriaRKN2CA12WindowServer7Display7ModeSetERKNS1_14EDIDAttributesEbb_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a2 isEqualToString:@"Dolby"])
  {
    v4 = 5;
  }

  else if ([a2 isEqualToString:@"HDR10"])
  {
    v4 = 3;
  }

  else
  {
    v4 = [a2 isEqualToString:@"SDR"];
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v11 = v4;
  v12 = *(a1 + 48);
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v5 = *(a1 + 32);
  v17 = *(a1 + 40);
  v6 = CA::WindowServer::Display::ModeSet::preferred_mode_with_criteria(v5, v9);
  if ([(__CFString *)*(&off_1E6DEC100 + CA::WindowServer::Display::Mode::hdr_type(v6) - 1) isEqual:a2]&& (*(a1 + 48) != 1 || (((v6 >> 29) & 0x1FFFFFF) * 0.0000152587891 + 0.5) == 120))
  {
    v7 = *(a1 + 49) ^ 1 | (v6 < 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_183C35AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  CA::WindowServer::Display::ModeSet::~ModeSet(va);
  _Unwind_Resume(a1);
}

void sub_183C36B58(_Unwind_Exception *a1)
{
  if (v2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
  }

  CFRelease(v1);
  _Unwind_Resume(a1);
}

void sub_183C37A24(_Unwind_Exception *a1)
{
  mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
  os_unfair_lock_unlock(v2 + 183);
  _Unwind_Resume(a1);
}

uint64_t ___ZL15ensure_displaysv_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v0 = current_displays();
  result = [v0 countByEnumeratingWithState:&v6 objects:v5 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v7;
    do
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v0);
        }

        [*(*(&v6 + 1) + 8 * v4++) update];
      }

      while (v2 != v4);
      result = [v0 countByEnumeratingWithState:&v6 objects:v5 count:16];
      v2 = result;
    }

    while (result);
  }

  return result;
}

void CA::Display::IOMFBDisplay::~IOMFBDisplay(CFTypeRef *this)
{
  CA::Display::Display::~Display(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

uint64_t ___ZN2CA7Display15DisplayLinkItem8get_linkEP11__CFRunLoopPKN1X4ListIPK10__CFStringEE_block_invoke(CA::Display *a1)
{
  v1 = *(*(a1 + 4) + 312);
  if (v1)
  {
    return CA::Display::MaxEarlyWakeupOffset(a1) + v1;
  }

  else
  {
    return 0;
  }
}

void CA::Display::MetalLinkItem::dispatch_(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 8));
  v4 = *(a1 + 16);
  v5 = *(a1 + 336);
  v6 = *(a1 + 56);
  if (*(v4 + 705))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v7 <= *(v4 + 520))
  {
    v7 = *(v4 + 520);
  }

  if (v7 <= *(v4 + 552))
  {
    v7 = *(v4 + 552);
  }

  if (!((v6 != v7) | byte_1ED4E9882 & 1 | (v5 > 2.0)))
  {
    v5 = 2.0;
  }

  v25 = v5;
  v8 = CATimeWithHostTime(*(a1 + 296));
  v9 = CATimeWithHostTime(*(a1 + 344));
  v10 = CATimeWithHostTime(*(a1 + 280));
  v11 = v10 + v9;
  v12 = v10 + v9 + v9 * -0.01;
  v13 = CATimeWithHostTime(*(a1 + 352));
  v14 = CA::Display::DisplayTimingsControl::server_presentation_latency((v4 + 464));
  if (v14)
  {
    v12 = v12 - CATimeWithHostTime(v14);
  }

  CA::Display::DisplayTimingsControl::server_frame_interval((v4 + 464), 0);
  os_unfair_lock_unlock((a1 + 8));
  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 328);
  v17 = CATimeWithHostTime(*(a1 + 288));
  v18 = *(a1 + 336);
  priv = v16->_priv;
  os_unfair_lock_lock(priv + 2);
  v26[0] = 0;
  CAMetalLayerPrivateNextDrawableLocked(v16, v26, 0);
  v20 = v26[0];
  if (v26[0])
  {
    [v26[0] setTargetTimestamp:v17];
    [v26[0] setTargetSamplingTimestamp:v12];
    [v26[0] setTargetPresentationTimestamp:v11];
    [v26[0] setPresentDeadline:v13 + v10];
    [v26[0] setPreferredLatency:{v8 * (v25 * v6), v8 * v6}];
    [v26[0] setHasExplicitDeadlines:1];
    LODWORD(v21) = v18;
    [v26[0] setClientPreferredLatency:v21];
    v20 = v26[0];
  }

  v22 = [(CAMetalLayer *)v16 shimDrawable:v20];
  os_unfair_lock_unlock(priv + 2);
  if (v22)
  {
    v23 = [CAMetalDisplayLinkUpdate updateWithDrawable:v22 targetTimestamp:CATimeWithHostTime(*(a1 + 288)) targetPresentationTimestamp:v11];
    v24 = [*(a1 + 256) delegate];
    a2[2] = object_getMethodImplementation();
    [v24 metalDisplayLink:*(a1 + 256) needsUpdate:v23];
    objc_autoreleasePoolPop(v15);
    a2[1] = CAHostTimeWithTime(v9);
    a2[3] = CAHostTimeWithTime(v11);
  }

  else
  {
    kdebug_trace();

    objc_autoreleasePoolPop(v15);
  }
}

void CA::Display::MetalLinkItem::get_link(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2CA7Display13MetalLinkItem8get_linkEP11__CFRunLoopPKN1X4ListIPK10__CFStringEE_block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0Q8l;
  v6[4] = a1;
  v4[4] = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN2CA7Display13MetalLinkItem8get_linkEP11__CFRunLoopPKN1X4ListIPK10__CFStringEE_block_invoke_2;
  v5[3] = &__block_descriptor_40_e16_C16__0r____QQI_8l;
  v5[4] = a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN2CA7Display13MetalLinkItem8get_linkEP11__CFRunLoopPKN1X4ListIPK10__CFStringEE_block_invoke_3;
  v4[3] = &__block_descriptor_40_e31_v16__0__CATimingReference_QQQ_8l;
  CA::Display::DisplayLink::get_link(a4, *(a1 + 16), a2, a3, v6, v5, v4, 0);
}

uint64_t ___ZN2CA7Display13MetalLinkItem8get_linkEP11__CFRunLoopPKN1X4ListIPK10__CFStringEE_block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  v4 = a2[1];
  if (mach_absolute_time() - v3 > v4 >> 1)
  {
    return 3;
  }

  if (CAMetalLayerShouldDispatchLink(*(v2 + 328)))
  {
    return 0;
  }

  return 2;
}

void ___ZN2CA7Display13MetalLinkItem8get_linkEP11__CFRunLoopPKN1X4ListIPK10__CFStringEE_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((present_on_finish_enabled(*(*(*(*(v3 + 328) + 48) + 16) + 48)) & 1) == 0)
  {
    os_unfair_lock_lock((v3 + 8));
    v4 = *(v3 + 16);
    v5 = (v4 + 464);
    v6 = (*(v4 + 705) & 8) == 0;
    v7 = 16;
    if (v6)
    {
      v7 = 8;
    }

    v8 = CAHostTimeWithTime(*&v5[v7]._os_unfair_lock_opaque);
    *(a2 + 8) += CA::Display::DisplayTimingsControl::server_presentation_latency(v5) + v8;

    os_unfair_lock_unlock((v3 + 8));
  }
}

uint64_t CA::Display::MetalLinkItem::needs_update_link(CA::Display::MetalLinkItem *this)
{
  v1 = *(this + 41);
  if (v1)
  {
    v2 = *(*(*(v1 + 48) + 16) + 48);
    if (v2)
    {
      result = *(*(v2 + 24) + 24);
      if (!result)
      {
        return result;
      }

      if (result != *(*(this + 2) + 104))
      {
        v5 = *(CADisplayLookupFromDisplayId(result) + 1);
        os_unfair_lock_lock(this + 2);
        CA::Display::DisplayLinkItem::hot_swap_display(this, v5);
        os_unfair_lock_unlock(this + 2);
        CA::Display::DisplayLinkItem::set_preferred_fps_range_locked(this, *(this + 76), 0);
        return 1;
      }
    }
  }

  return 0;
}

void *CADisplayLookupFromDisplayId(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[CADisplay displays];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      if ([v7 displayId] == a1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (CADisplayGetDummyDisplay(void)::once[0] != -1)
    {
      dispatch_once(CADisplayGetDummyDisplay(void)::once, &__block_literal_global_950);
    }

    return CADisplayGetDummyDisplay(void)::dummy_display;
  }

  return v7;
}

id CA::Display::DisplayLinkItem::hot_swap_display(id this, id *a2)
{
  v2 = *(this + 2);
  if (v2 != a2)
  {
    v4 = this;

    this = a2[10];
    v4[2] = a2;
  }

  return this;
}

CALocalDisplay *___ZL24CADisplayGetDummyDisplayv_block_invoke()
{
  result = [CALocalDisplay displayWithDisplayId:0 name:@"Dummy" deviceName:@"Dummy" update:&__block_literal_global_957 timings:&__block_literal_global_960];
  CADisplayGetDummyDisplay(void)::dummy_display = result;
  return result;
}

uint64_t ___ZL24CADisplayGetDummyDisplayv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = CAHostTimeWithTime(0.0166666667);
  return 1;
}

uint64_t ___ZL24CADisplayGetDummyDisplayv_block_invoke_2(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  a3[6].i64[0] = 0x3F91111111111111;
  a3[5] = vdupq_n_s64(0x3F91111111111111uLL);
  a3[6].i64[1] = 0x100000001;
  return 1;
}

void ___ZL21local_display_enabledv_block_invoke()
{
  local_display_enabled(void)::enabled = +[CAWindowServer serverIfRunning]== 0;
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal == 1)
  {
    v0 = getenv("CA_ENABLE_LOCAL_DISPLAY");
    if (v0)
    {
      local_display_enabled(void)::enabled = atoi(v0) == 1;
    }
  }
}

void CA::Display::LocalDisplay::~LocalDisplay(CFTypeRef *this)
{
  CA::Display::Display::~Display(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

unint64_t CA::Display::MetalLinkItem::compute_target_timestamp_delta(CA::Display::MetalLinkItem *this)
{
  v2 = *(this + 14);
  v3 = *(this + 37) * v2;
  v4 = *(this + 2);
  if (*(v4 + 705))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5 <= *(v4 + 520))
  {
    v5 = *(v4 + 520);
  }

  if (v5 <= *(v4 + 552))
  {
    v5 = *(v4 + 552);
  }

  if ((v2 != v5) | byte_1ED4E9882 & 1 | (*(this + 84) > 2.0))
  {
    v6 = *(this + 84);
  }

  else
  {
    v6 = 2.0;
  }

  v7 = v3;
  v8 = (v4 + 464);
  v9 = 16;
  if ((*(v4 + 705) & 8) == 0)
  {
    v9 = 8;
  }

  v10 = CAHostTimeWithTime(*&v8[v9]._os_unfair_lock_opaque);
  v11 = CA::Display::DisplayTimingsControl::server_presentation_latency(v8) + v10;
  for (i = (v6 * v7); v6 < 3.0; i = (v6 * v7))
  {
    if (v11 <= i >> 1)
    {
      break;
    }

    if (v11 - (i >> 1) <= i >> 6)
    {
      break;
    }

    v6 = v6 + 1.0;
  }

  *(this + 43) = i;
  if (present_on_finish_enabled(*(*(*(*(this + 41) + 48) + 16) + 48)))
  {
    v6 = v6 + 1.0;
    v13 = *(this + 2);
    v14 = (v13 + 464);
    v15 = (*(v13 + 705) & 8) == 0;
    v16 = 16;
    if (v15)
    {
      v16 = 8;
    }

    v17 = CAHostTimeWithTime(*&v14[v16]._os_unfair_lock_opaque);
    *(this + 43) += CA::Display::DisplayTimingsControl::server_presentation_latency(v14) + v17;
  }

  v18 = *(this + 41);
  v19 = (v6 + 1.0);
  v20 = *(v18 + 48);
  os_unfair_lock_lock(v20 + 2);
  v21 = *(v18 + 48);
  *(v21 + 136) = v19;
  v22 = *(*(v21 + 16) + 48);
  if (v22)
  {
    *(*(v22 + 24) + 95) = 6 - v19;
  }

  os_unfair_lock_unlock(v20 + 2);
  *(this + 44) = i - v11;
  if (i - v11 >= v3)
  {
    return v3;
  }

  else
  {
    return i - v11;
  }
}

void CA::Display::MetalLinkItem::invalidate(CA::Display::MetalLinkItem *this)
{
  CA::Display::DisplayLinkItem::invalidate(this);
  pthread_mutex_lock((this + 136));
  CAMetalLayerSetMetalLinkToken(*(this + 41), 0);
  CFRelease(*(this + 41));
  *(this + 41) = 0;
  pthread_mutex_unlock((this + 136));
  os_unfair_lock_lock(&CA::Display::MetalLinkItem::_list_lock);
  v3 = CA::Display::MetalLinkItem::_list;
  v2 = qword_1EA84E840;
  if (CA::Display::MetalLinkItem::_list != qword_1EA84E840)
  {
    v4 = CA::Display::MetalLinkItem::_list;
    while (*v4 != this)
    {
      if (++v4 == qword_1EA84E840)
      {
        goto LABEL_10;
      }
    }

    if (qword_1EA84E840 != v4 + 1)
    {
      memmove(v4, v4 + 1, qword_1EA84E840 - (v4 + 1));
      v3 = CA::Display::MetalLinkItem::_list;
      v2 = qword_1EA84E840;
    }

    if (v2 <= v3)
    {
      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
    }

    qword_1EA84E840 = v2 - 8;
  }

LABEL_10:

  os_unfair_lock_unlock(&CA::Display::MetalLinkItem::_list_lock);
}

void sub_183C398D4(_Unwind_Exception *a1)
{
  v3 = (v1 + 136);
  v4 = a1;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(v4);
}

void CA::Display::MetalLinkItem::~MetalLinkItem(CA::Display::MetalLinkItem *this)
{
  CA::Display::DisplayLinkItem::~DisplayLinkItem(this);

  JUMPOUT(0x1865EA9A0);
}

void sub_183C39CE8(_Unwind_Exception *a1)
{
  pthread_mutex_unlock((v2 + 56));
  pthread_mutex_unlock((v1 + 136));
  _Unwind_Resume(a1);
}

void sub_183C3A3AC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&CA::Display::MetalLinkItem::_list_lock);
  CA::Display::DisplayLinkItem::~DisplayLinkItem(v1);
  _Unwind_Resume(a1);
}

void CA_ABORT_ON_NON_MAIN_THREAD_DEFERRED_DISPLAY_LINK_ACTION(void)
{
  v2 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v0 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "CoreAnimation: Unsupported use of CADisplayLink SPI off the main thread.", v1, 2u);
  }
}

CFArrayRef CA::Display::anonymous namespace::copy_mode_list_to_array(void *a1)
{
  v1 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = 0;
    v2 = 0;
    goto LABEL_8;
  }

  v2 = 0;
  v3 = a1;
  do
  {
    ++v2;
    v3 = v3[1];
  }

  while (v3);
  v4 = 8 * v2;
  if ((8 * v2) <= 0x1000)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](a1);
    v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = v4 > 0x1000;
    if (!v2)
    {
      return CFArrayCreate(0, v5, 0, MEMORY[0x1E695E9C0]);
    }

    goto LABEL_9;
  }

  v5 = malloc_type_malloc(8 * v2, 0x2D82C532uLL);
  v6 = 1;
  if (!v2)
  {
    return CFArrayCreate(0, v5, 0, MEMORY[0x1E695E9C0]);
  }

LABEL_9:
  for (i = 0; i != v2; ++i)
  {
    *&v5[8 * i] = *v1;
    v1 = v1[1];
  }

  v7 = CFArrayCreate(0, v5, v2, MEMORY[0x1E695E9C0]);
  if (v6)
  {
    free(v5);
  }

  return v7;
}

void ___ZN2CA7Display11DisplayLink30dispatch_deferred_display_linkEy_block_invoke(uint64_t a1)
{
  CA::Display::DisplayLink::callback(*(*(a1 + 32) + 208), *(*(a1 + 32) + 216), *(*(a1 + 32) + 224), 0, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CA::Display::DisplayLink::unref(v2);
  }
}

float CADisplayGetCurrentHeadroom(uint32_t a1)
{
  pthread_mutex_lock(&_edr_states_lock);
  v2 = edr_state_for_display(a1);
  v3 = v2;
  if (v2)
  {
    os_unfair_lock_lock(v2 + 1);
    v4 = *&v3[4]._os_unfair_lock_opaque;
    if (v4)
    {
      v5 = atomic_load(v4);
      v6 = *&v5;
    }

    else
    {
      v6 = 1.0;
    }

    os_unfair_lock_unlock(v3 + 1);
  }

  else
  {
    v6 = 1.0;
  }

  pthread_mutex_unlock(&_edr_states_lock);
  return v6;
}

float CADisplayGetReferenceHeadroom(uint32_t a1)
{
  pthread_mutex_lock(&_edr_states_lock);
  v2 = edr_state_for_display(a1);
  v3 = v2;
  if (v2)
  {
    os_unfair_lock_lock(v2 + 1);
    v4 = *&v3[4]._os_unfair_lock_opaque;
    if (v4)
    {
      v5 = atomic_load((v4 + 8));
      v6 = *&v5;
    }

    else
    {
      v6 = 1.0;
    }

    os_unfair_lock_unlock(v3 + 1);
  }

  else
  {
    v6 = 1.0;
  }

  pthread_mutex_unlock(&_edr_states_lock);
  return v6;
}

_BYTE *CADisplayPrintDisplays(int a1)
{
  v169 = *MEMORY[0x1E69E9840];
  v128 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  memset(v139, 0, sizeof(v139));
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = +[CADisplay displays];
  v132 = [obj countByEnumeratingWithState:&v165 objects:v164 count:16];
  if (v132)
  {
    v131 = *v166;
    do
    {
      for (i = 0; i != v132; ++i)
      {
        if (*v166 != v131)
        {
          objc_enumerationMutation(obj);
        }

        v135 = *(*(&v165 + 1) + 8 * i);
        v133 = [v135 displayId];
        X::Stream::printf(v139, "%d: %s (%s)\n", v133, [objc_msgSend(v135 "name")], objc_msgSend(objc_msgSend(v135, "deviceName"), "UTF8String"));
        if ([objc_msgSend(v135 "availableModes")])
        {
          X::Stream::printf(v139, "\tseed: %u\n", [v135 seed]);
          X::Stream::printf(v139, "\tconnectionSeed: %u\n", [v135 connectionSeed]);
          [v135 bounds];
          X::Stream::printf(v139, "\tbounds: [%g %g %g %g]\n", v1, v2, v3, v4);
          [v135 frame];
          X::Stream::printf(v139, "\tframe: [%g %g %g %g]\n", v5, v6, v7, v8);
          [v135 physicalSize];
          X::Stream::printf(v139, "\tphysicalSize: %g in x %g in\n", v9, v10);
          [v135 nativeSize];
          X::Stream::printf(v139, "\tnativeSize: %d x %d pixels\n", v11, v12);
          [v135 logicalScale];
          v14 = v13;
          v16 = v15;
          [v135 minimumLogicalScale];
          v18 = v17;
          [v135 maximumLogicalScale];
          X::Stream::printf(v139, "\tlogicalScale: %g x %g (min %g, max %g)\n", v14, v16, v18, v19);
          X::Stream::printf(v139, "\tpointScale: %u\n", [v135 pointScale]);
          v20 = [v135 stateControl];
          v21 = v20;
          if (v20)
          {
            v22 = [v20 _copyStateInfo];
            v23 = v22;
            if (v22)
            {
              X::Stream::printf(v139, "%s", v22);
              free(v23);
            }

            v24 = [v21 _copyAllPowerAssertionInfo];
            v25 = v24;
            if (v24)
            {
              X::Stream::printf(v139, "\tpowerAssertions:\n%s", v24);
              free(v25);
            }
          }

          v26 = [v135 transportType];
          if (v26)
          {
            X::Stream::printf(v139, "\ttransportType: %s\n", [v26 UTF8String]);
          }

          v27 = [v135 nativeOrientation];
          if (v27 == @"rot0")
          {
            v28 = 0;
          }

          else if (v27 == @"rot90")
          {
            v28 = 90;
          }

          else if (v27 == @"rot180")
          {
            v28 = 180;
          }

          else
          {
            v28 = 270;
          }

          X::Stream::printf(v139, "\tnativeOrientation: %d\n", v28);
          v35 = [v135 currentOrientation];
          if (v35 == @"rot0")
          {
            v36 = 0;
          }

          else if (v35 == @"rot90")
          {
            v36 = 90;
          }

          else if (v35 == @"rot180")
          {
            v36 = 180;
          }

          else
          {
            v36 = 270;
          }

          X::Stream::printf(v139, "\tcurrentOrientation: %d\n", v36);
          v37 = [objc_msgSend(v135 "currentMode")];
          v38 = [objc_msgSend(v135 "currentMode")];
          [objc_msgSend(v135 "currentMode")];
          v40 = v39;
          if ([objc_msgSend(v135 "currentMode")])
          {
            v41 = " virtual,";
          }

          else
          {
            v41 = "";
          }

          if ([objc_msgSend(v135 "currentMode")])
          {
            v42 = " VRR,";
          }

          else
          {
            v42 = "";
          }

          v43 = [objc_msgSend(objc_msgSend(v135 "currentMode")];
          v44 = [objc_msgSend(v135 "currentMode")];
          if ([objc_msgSend(v135 "currentMode")])
          {
            v45 = ", high bandwidth";
          }

          else
          {
            v45 = "";
          }

          X::Stream::printf(v139, "\tcurrentMode: %d x %d, %g hz,%s%s %s, %u-bit%s, %lux\n", v37, v38, v40, v41, v42, v43, v44, v45, [objc_msgSend(v135 "currentMode")]);
          [v135 refreshRate];
          X::Stream::printf(v139, "\trefreshRate: %g Hz\n", 1.0 / v46);
          [v135 heartbeatRate];
          X::Stream::printf(v139, "\theartbeatRate: %g Hz\n", 1.0 / v47);
          X::Stream::printf(v139, "\tminimumFrameDuration: %d\n", [v135 minimumFrameDuration]);
          v48 = [objc_msgSend(v135 "preferredMode")];
          v49 = [objc_msgSend(v135 "preferredMode")];
          [objc_msgSend(v135 "preferredMode")];
          v51 = v50;
          if ([objc_msgSend(v135 "preferredMode")])
          {
            v52 = " virtual,";
          }

          else
          {
            v52 = "";
          }

          if ([objc_msgSend(v135 "preferredMode")])
          {
            v53 = " VRR,";
          }

          else
          {
            v53 = "";
          }

          v54 = [objc_msgSend(objc_msgSend(v135 "preferredMode")];
          v55 = [objc_msgSend(v135 "preferredMode")];
          if ([objc_msgSend(v135 "preferredMode")])
          {
            v56 = ", high bandwidth";
          }

          else
          {
            v56 = "";
          }

          X::Stream::printf(v139, "\tpreferredMode: %d x %d, %g hz,%s%s %s, %u-bit%s, %lux\n", v48, v49, v51, v52, v53, v54, v55, v56, [objc_msgSend(v135 "preferredMode")]);
          X::Stream::printf(v139, "\tavailable modes:\n");
          v162 = 0u;
          v163 = 0u;
          v160 = 0u;
          v161 = 0u;
          v136 = [v135 availableModes];
          v138 = [v136 countByEnumeratingWithState:&v160 objects:v159 count:16];
          if (v138)
          {
            v57 = 0;
            v137 = *v161;
            do
            {
              for (j = 0; j != v138; ++j)
              {
                if (*v161 != v137)
                {
                  objc_enumerationMutation(v136);
                }

                v59 = *(*(&v160 + 1) + 8 * j);
                v60 = [v59 width];
                v61 = [v59 height];
                [v59 refreshRate];
                v63 = v62;
                if ([v59 isVirtual])
                {
                  v64 = " virtual,";
                }

                else
                {
                  v64 = "";
                }

                if ([v59 isVRR])
                {
                  v65 = " VRR,";
                }

                else
                {
                  v65 = "";
                }

                v66 = [objc_msgSend(v59 "colorMode")];
                v67 = [v59 bitDepth];
                if ([v59 isHighBandwidth])
                {
                  v68 = ", high bandwidth";
                }

                else
                {
                  v68 = "";
                }

                X::Stream::printf(v139, "\t\t%d: %d x %d, %g Hz,%s%s %s, %u-bit%s, %lux", v57, v60, v61, v63, v64, v65, v66, v67, v68, [v59 preferredScale]);
                if ([v59 maximumSourceWidth])
                {
                  X::Stream::printf(v139, ", maxWidth:%d", [v59 maximumSourceWidth]);
                }

                if ([v59 maximumSourceHeight])
                {
                  X::Stream::printf(v139, ", maxHeight:%d", [v59 maximumSourceHeight]);
                }

                if ([v59 maximumSourceBandwidth])
                {
                  X::Stream::printf(v139, ", maxBandwidth:%d", [v59 maximumSourceBandwidth]);
                }

                X::Stream::printf(v139, "\n");
                ++v57;
              }

              v138 = [v136 countByEnumeratingWithState:&v160 objects:v159 count:16];
            }

            while (v138);
          }

          if (a1)
          {
            v142 = 0u;
            memset(v143, 0, sizeof(v143));
            *__p = 0u;
            v141 = 0u;
            if (v135)
            {
              [v135 _availableModesInternal];
              if (__p[1] != __p[0])
              {
                X::Stream::printf(v139, "\tinternal modes:\n");
                v69 = __p[0];
                v70 = __p[1];
                while (v69 != v70)
                {
                  v71 = *v69;
                  if ((*v69 & 0x10000000) != 0)
                  {
                    v72 = "true";
                  }

                  else
                  {
                    v72 = "false";
                  }

                  if ((v71 & 0x40000000000000) != 0)
                  {
                    v73 = "true";
                  }

                  else
                  {
                    v73 = "false";
                  }

                  v74 = (v71 >> 55) & 0x1F;
                  v75 = "UNKNOWN";
                  if (v74 <= 0x1C)
                  {
                    v75 = mode_pixel_format_to_string(CA::WindowServer::Display::ColorPixelFormat)::names[v74];
                  }

                  v76 = "UNKNOWN";
                  if ((~v71 & 0x3000000000000000) != 0)
                  {
                    v76 = mode_range_to_string(CA::WindowServer::Display::ColorRange)::names[(v71 >> 60) & 3];
                  }

                  v77 = (v71 >> 14) & 0x3FFF;
                  v78 = (v71 >> 29) & 0x1FFFFFF;
                  if ((v71 & 0x4000000000000000) != 0)
                  {
                    v79 = "true";
                  }

                  else
                  {
                    v79 = "false";
                  }

                  if ((v71 & 0x8000000000000000) == 0)
                  {
                    v80 = "false";
                  }

                  else
                  {
                    v80 = "true";
                  }

                  X::Stream::printf(v139, "\t\t%d, %d, %s, %d, %s, Display::%s, Display::%s, %s, %s\n", *v69++ & 0x3FFF, v77, v72, v78, v73, v75, v76, v79, v80);
                }
              }
            }

            std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v143);
            std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v142);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          v81 = [v135 uniqueId];
          if (v81)
          {
            X::Stream::printf(v139, "\tUUID: %s\n", [v81 UTF8String]);
          }

          v82 = [v135 containerId];
          if (v82)
          {
            X::Stream::printf(v139, "\tcontainerID: %s\n", [v82 UTF8String]);
          }

          [v135 latency];
          if (v83 != 0.0)
          {
            [v135 latency];
            X::Stream::printf(v139, "\tlatency: %g\n", v84);
          }

          v85 = [v135 displayType];
          v86 = "unknown";
          if (v85 <= 4)
          {
            v86 = off_1E6DEBFE0[v85];
          }

          X::Stream::printf(v139, "\tdisplayType: %s\n", v86);
          if ([v135 supportsExtendedColors])
          {
            X::Stream::printf(v139, "\tsupportsExtendedColors: YES\n");
          }

          if ([v135 isOverscanned])
          {
            X::Stream::printf(v139, "\toverscanned: YES\n");
            [v135 safeBounds];
            X::Stream::printf(v139, "\tsafeBounds: [%g %g %g %g]\n", v87, v88, v89, v90);
            [v135 overscanAmounts];
            X::Stream::printf(v139, "\toverscanAmounts: [%g %g]\n", v91, v92);
            X::Stream::printf(v139, "\toverscanAdjustment: %s\n", [objc_msgSend(v135 "overscanAdjustment")]);
          }

          if ([v135 isCloned])
          {
            X::Stream::printf(v139, "\tcloned: YES\n");
          }

          if ([v135 isCloning])
          {
            X::Stream::printf(v139, "\tcloning: YES\n");
          }

          if ([v135 isCloningSupported])
          {
            X::Stream::printf(v139, "\tcloningSupported: YES\n");
          }

          if (![v135 displayType])
          {
            [v135 autoLuminanceBoost];
            X::Stream::printf(v139, "\tautoLuminanceBoost: %f\n", v93);
          }

          if ([v135 displayType] == 1 && objc_msgSend(objc_msgSend(v135, "currentMode"), "width"))
          {
            v94 = [v135 preferences];
            v95 = v94;
            if (v94)
            {
              v96 = [v94 preferredHdrMode];
              if (v96)
              {
                v97 = [v96 UTF8String];
              }

              else
              {
                v97 = "Unspecified";
              }

              v98 = [v95 matchContent];
              v99 = "NO";
              if (v98)
              {
                v99 = "YES";
              }

              X::Stream::printf(v139, "\tpreferences: preferredHdrMode - %s, contentMatch - %s\n", v97, v99);
            }

            v100 = [v135 supportedHDRModes];
            if (v100)
            {
              X::Stream::printf(v139, "\tsupportedHDRModes: ");
              v157 = 0u;
              v158 = 0u;
              v155 = 0u;
              v156 = 0u;
              v101 = [v100 countByEnumeratingWithState:&v155 objects:v154 count:16];
              if (v101)
              {
                v102 = *v156;
                do
                {
                  for (k = 0; k != v101; ++k)
                  {
                    if (*v156 != v102)
                    {
                      objc_enumerationMutation(v100);
                    }

                    X::Stream::printf(v139, "%s ", [*(*(&v155 + 1) + 8 * k) UTF8String]);
                  }

                  v101 = [v100 countByEnumeratingWithState:&v155 objects:v154 count:16];
                }

                while (v101);
              }

              X::Stream::printf(v139, "\n");
            }

            v104 = [v135 preferredHDRModes];
            if (v104)
            {
              X::Stream::printf(v139, "\tpreferredHDRModes: ");
              v152 = 0u;
              v153 = 0u;
              v150 = 0u;
              v151 = 0u;
              v105 = [v104 countByEnumeratingWithState:&v150 objects:v149 count:16];
              if (v105)
              {
                v106 = *v151;
                do
                {
                  for (m = 0; m != v105; ++m)
                  {
                    if (*v151 != v106)
                    {
                      objc_enumerationMutation(v104);
                    }

                    X::Stream::printf(v139, "%s ", [*(*(&v150 + 1) + 8 * m) UTF8String]);
                  }

                  v105 = [v104 countByEnumeratingWithState:&v150 objects:v149 count:16];
                }

                while (v105);
              }

              X::Stream::printf(v139, "\n");
            }

            v108 = [v135 allowedHDRModes];
            if (v108)
            {
              X::Stream::printf(v139, "\tallowedHDRModes: ");
              v147 = 0u;
              v148 = 0u;
              v145 = 0u;
              v146 = 0u;
              v109 = [v108 countByEnumeratingWithState:&v145 objects:v144 count:16];
              if (v109)
              {
                v110 = *v146;
                do
                {
                  for (n = 0; n != v109; ++n)
                  {
                    if (*v146 != v110)
                    {
                      objc_enumerationMutation(v108);
                    }

                    X::Stream::printf(v139, "%s ", [*(*(&v145 + 1) + 8 * n) UTF8String]);
                  }

                  v109 = [v108 countByEnumeratingWithState:&v145 objects:v144 count:16];
                }

                while (v109);
              }

              X::Stream::printf(v139, "\n");
            }

            v112 = [v135 productName];
            if (v112)
            {
              X::Stream::printf(v139, "\tproductName: %s\n", [v112 UTF8String]);
            }

            if ([v135 isForceFixedRateLinksEnabled])
            {
              X::Stream::printf(v139, "\tfixedRateLinksEnabled: YES\n");
            }

            v113 = [v135 externalDisplayAttributes];
            if (v113)
            {
              X::Stream::printf(v139, "\tdisplay attributes:\n");
              v114 = [v113 dolbyVision] - 1;
              v115 = "\t\tDolbyVision: none\n";
              if (v114 <= 2)
              {
                v115 = off_1E6DEC008[v114];
              }

              X::Stream::printf(v139, v115);
              v116 = [v113 pqEOTF];
              v117 = "unknown";
              if (v116 == 2)
              {
                v117 = "supported";
              }

              if (v116 == 1)
              {
                v117 = "unsupported";
              }

              X::Stream::printf(v139, "\t\tPQ: %s\n", v117);
              v118 = [v113 hdrStaticMetadataType1];
              v119 = "unknown";
              if (v118 == 2)
              {
                v119 = "supported";
              }

              if (v118 == 1)
              {
                v119 = "unsupported";
              }

              X::Stream::printf(v139, "\t\tHDR Static Metadata: %s\n", v119);
              v120 = [v113 bt2020YCC];
              v121 = "unknown";
              if (v120 == 2)
              {
                v121 = "supported";
              }

              if (v120 == 1)
              {
                v121 = "unsupported";
              }

              X::Stream::printf(v139, "\t\tBT2020 YCC: %s\n", v121);
              X::Stream::printf(v139, "\t\tLegacy HDMI EDID: %d\n", [v113 legacyHDMIEDID]);
            }
          }

          v122 = [v135 odLUTVersion];
          if (v122)
          {
            X::Stream::printf(v139, "\todLUTVersion: %d\n", v122);
          }

          if (![v135 displayType])
          {
            v123 = [v135 _copyDebugProperties];
            v124 = v123;
            if (v123)
            {
              *&v141 = 1;
              __p[0] = CADisplayPrintDisplays::$_0::__invoke;
              __p[1] = v139;
              CFDictionaryApplyFunction(v123, CADisplayPrintDisplays::$_0::__invoke, __p);
              CFRelease(v124);
            }
          }

          PotentialHeadroom = CADisplayGetPotentialHeadroom(v133);
          if (PotentialHeadroom > 1.0)
          {
            CurrentHeadroom = CADisplayGetCurrentHeadroom(v133);
            X::Stream::printf(v139, "\tcurrent EDR: %g, potential EDR: %g\n", CurrentHeadroom, PotentialHeadroom);
          }
        }

        else
        {
          X::Stream::printf(v139, "\toffline\n");
          v29 = [v135 stateControl];
          v30 = v29;
          if (v29)
          {
            v31 = [v29 _copyStateInfo];
            v32 = v31;
            if (v31)
            {
              X::Stream::printf(v139, "%s", v31);
              free(v32);
            }

            v33 = [v30 _copyAllPowerAssertionInfo];
            v34 = v33;
            if (v33)
            {
              X::Stream::printf(v139, "\tpowerAssertions:\n%s", v33);
              free(v34);
            }
          }
        }
      }

      v132 = [obj countByEnumeratingWithState:&v165 objects:v164 count:16];
    }

    while (v132);
  }

  return x_stream_finish(v139);
}

void CADisplayPrintDisplays::$_0::__invoke(const __CFString *this, const __CFString *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3[1];
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  CString = CA_CFStringGetCString(this, v12, 32);
  if (*(a3 + 4) == 1)
  {
    X::Stream::printf(v6, "\t");
  }

  else
  {
    X::Stream::printf(v6, "\t\t");
  }

  v8 = CFGetTypeID(a2);
  if (v8 == CFBooleanGetTypeID())
  {
    if (*MEMORY[0x1E695E4D0] == a2)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    X::Stream::printf(v6, "%s: %s\n", CString, v9);
  }

  else if (v8 == CFStringGetTypeID())
  {
    v10 = CA_CFStringGetCString(a2, v11, 32);
    X::Stream::printf(v6, "%s: %s\n", CString, v10);
  }

  else if (v8 == CFDictionaryGetTypeID())
  {
    X::Stream::printf(v6, "%s:\n", CString);
    ++*(a3 + 4);
    CFDictionaryApplyFunction(a2, *a3, a3);
    --*(a3 + 4);
  }
}

void CA::CG::Renderer::~Renderer(CA::CG::Renderer *this)
{
  CA::CG::Renderer::~Renderer(this);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF1F4098;
  if (*(this + 1))
  {
    __assert_rtn("~Renderer", "cg-renderer.cpp", 131, "!_ctx");
  }

  if (*(this + 178))
  {
    CGGlyphLockRelease();
  }

  for (i = 2720; i != 4256; i += 64)
  {
    v3 = *(this + i);
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }
  }

  v4 = *(this + 165);
  if (v4)
  {
    MEMORY[0x1865EA980](v4, 0x1000C803C748740);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 4232);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 2632);
  for (j = 2400; j != 1248; j -= 192)
  {
    CA::OGL::Mosaic::purge((this + j));
  }

  if (*(this + 101) || *(this + 38))
  {
    __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
  }
}

os_log_t ___Z12x_log_get_cgv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "CG");
  x_log_get_cg(void)::log = result;
  return result;
}

os_log_t ___Z17x_log_get_cg_perfv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "CG.Performance");
  x_log_get_cg_perf(void)::log = result;
  return result;
}

void CA::CG::Renderer::end_rendering(CA::CG::Renderer *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 4224))
  {
    *(this + 4224) &= ~1u;
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 1096))(v2, this + 1328);
      if (byte_1ED4E985F == 1)
      {
        if (x_log_get_cg_perf(void)::once != -1)
        {
          dispatch_once(&x_log_get_cg_perf(void)::once, &__block_literal_global_5);
        }

        v7 = *(this + 527);
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v8 = x_log_get_cg_perf(void)::log;
          if (os_signpost_enabled(x_log_get_cg_perf(void)::log))
          {
            v9 = 138543362;
            v10 = _MXSignpostMetricsSnapshot();
            _os_signpost_emit_with_name_impl(&dword_183AA6000, v8, OS_SIGNPOST_INTERVAL_END, v7, "Rendering", "\n%{public, signpost:metrics}@", &v9, 0xCu);
          }
        }
      }

      v3 = (*(**(this + 1) + 232))(*(this + 1), 0);
      if (v3)
      {
        v4 = v3;
        if (x_log_get_cg(void)::once != -1)
        {
          dispatch_once(&x_log_get_cg(void)::once, &__block_literal_global_453);
        }

        v5 = x_log_get_cg(void)::log;
        if (os_log_type_enabled(x_log_get_cg(void)::log, OS_LOG_TYPE_ERROR))
        {
          v6 = (*(**(this + 1) + 240))(*(this + 1), v4);
          v9 = 136315138;
          v10 = v6;
          _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "rendering error %s\n", &v9, 0xCu);
        }
      }
    }
  }
}

uint64_t CA::CG::Renderer::update_finished_seed(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 && *(this + 156) < (*(this + 152) - 1))
  {
    v2 = *(v1 + 648) + -0.25;
    v3 = this + 160;
    v4 = *(this + 288);
    v5 = -7;
    do
    {
      v6 = (v4 + 8 * (v4 >> 31));
      if (!v5)
      {
        break;
      }

      ++v5;
      --v4;
    }

    while (*(v3 + 16 * v6) > v2);
    *(this + 156) = *(v3 + 16 * v6 + 8);
  }

  return this;
}

void CA::CG::Renderer::release_object(CA::CG::Renderer *this, const void *a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (this)
  {
    os_unfair_lock_lock(&CA::CG::_released_objects_lock);
    v3 = CA::CG::_released_objects;
    if (!CA::CG::_released_objects)
    {
      v3 = malloc_type_malloc(0x400uLL, 0xC0040B8AA526DuLL);
      CA::CG::_released_objects = v3;
    }

    v4 = CA::CG::_released_objects_count++;
    v5 = CA::CG::_released_objects_count;
    v3[v4] = this;
    if (v5 == 128)
    {
      CA::CG::_released_objects = 0;
      CA::CG::_released_objects_count = 0;
      os_unfair_lock_unlock(&CA::CG::_released_objects_lock);
      if (CA::CG::release_queue(void)::once != -1)
      {
        dispatch_once(&CA::CG::release_queue(void)::once, &__block_literal_global_19);
      }

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = ___ZN2CA2CG8Renderer14release_objectEPKv_block_invoke;
      v6[3] = &__block_descriptor_tmp_9;
      v6[4] = v3;
      dispatch_async(CA::CG::release_queue(void)::queue, v6);
    }

    else
    {

      os_unfair_lock_unlock(&CA::CG::_released_objects_lock);
    }
  }
}

void ___ZN2CA2CG8Renderer14release_objectEPKv_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  for (i = 0; i != 1024; i += 8)
  {
    CFRelease(*(*(a1 + 32) + i));
  }

  free(*(a1 + 32));

  objc_autoreleasePoolPop(v2);
}

dispatch_queue_t ___ZN2CA2CGL13release_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("CA::CG::DeallocQueue", v0);
  CA::CG::release_queue(void)::queue = result;
  return result;
}

void ___ZN2CA2CG8Renderer22flush_released_objectsEv_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 40))
  {
    v3 = 0;
    do
    {
      CFRelease(*(*(a1 + 32) + 8 * v3++));
    }

    while (v3 < *(a1 + 40));
  }

  free(*(a1 + 32));

  objc_autoreleasePoolPop(v2);
}

void CA::CG::Renderer::pop_transparency_layer(CA::CG::Renderer *this, CA::CG::TransparencyLayer *a2)
{
  if (*(this + 177) == a2)
  {
    if (*(a2 + 246) == 1)
    {
      v4 = *(this + 1);
      CA::OGL::Context::set_gstate(v4, **(v4 + 656));
      CA::OGL::Context::pop_surface(v4);
      v5 = *(v4 + 1384) & 0x8FFF | ((*(a2 + 224) & 7) << 12);
      *(v4 + 1384) = v5;
      if (*(a2 + 247))
      {
        v6 = 4;
      }

      else
      {
        v6 = 0;
      }

      *(v4 + 1384) = v5 & 0xFFFB | v6;
      *(a2 + 246) = 0;
    }

    *(this + 177) = 0;
  }
}

uint64_t CA::CG::Renderer::collect_(CA::CG::Renderer *this)
{
  CA::Render::collect(0, *(*(this + 1) + 648));
  v2 = 0;
  v3 = this + 1440;
  do
  {
    v4 = &v3[192 * v2];
    if (*(v4 + 88))
    {
      v5 = *(v4 + 96);
      if (v5 != (v4 + 96))
      {
        v6 = *(*(this + 1) + 640);
        v7 = 256;
        do
        {
          v8 = *v5;
          if (*(v5 + 14) + v7 < v6)
          {
            v9 = v5[1];
            v8[1] = v9;
            *v9 = v8;
            *v5 = v5;
            v5[1] = v5;
            v10 = *(v4 + 56);
LABEL_7:
            while (v10 != v4 + 48)
            {
              v11 = v10;
              v10 = *(v10 + 8);
              v12 = v11 + 10;
              while (1)
              {
                v12 = *v12;
                if (!v12)
                {
                  break;
                }

                if (v12[1] == v5)
                {
                  CA::OGL::Mosaic::delete_image(v4, v11);
                  goto LABEL_7;
                }
              }
            }

            --*(v4 + 88);
            v13 = v5[2];
            if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v13 + 16))(v13);
            }

            v14 = v5[3];
            if (v14)
            {
              MEMORY[0x1865EA980](v14, 0x1020C8062D53EE8);
            }

            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            malloc_zone_free(malloc_zone, v5);
          }

          v7 >>= 1;
          v5 = v8;
        }

        while (v8 != (v4 + 96));
        v3 = this + 1440;
        if (!*(v4 + 88) && !*(v4 + 80))
        {
          v15 = *(v4 + 72);
          if (v15)
          {
            MEMORY[0x1865EA980](v15, 0x20C8093837F09);
          }

          *(v4 + 64) = 0;
          *(v4 + 72) = 0;
        }
      }
    }

    ++v2;
  }

  while (v2 != 6);
  result = (*(**(this + 1) + 264))(*(this + 1), 0);
  *(this + 4224) &= ~2u;
  return result;
}

CGPathRef CA::CG::Renderer::retain_simple_path(CA::CG::Renderer *this, const CGRect *a2, const CGSize *a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a3 == 0;
  v10 = this + 2672;
  v11 = -1;
  while (1)
  {
    v12 = this + v6;
    if (*(this + v6 + 2732) < v11)
    {
      v7 = v8;
      v11 = *(this + v6 + 2732);
    }

    if (!*(v12 + 340))
    {
      goto LABEL_12;
    }

    if (v12[2728] != v9)
    {
      goto LABEL_12;
    }

    v38.origin.x = *(v12 + 334);
    v38.origin.y = *(this + v6 + 2680);
    v38.size.width = *(this + v6 + 2688);
    v38.size.height = *(this + v6 + 2696);
    if (!CGRectEqualToRect(v38, *a2))
    {
      goto LABEL_12;
    }

    if (!a3)
    {
      break;
    }

    v13 = this + v6;
    if (*(this + v6 + 2704) == a3->width && *(this + v6 + 2712) == a3->height)
    {
      goto LABEL_33;
    }

LABEL_12:
    ++v8;
    v6 += 64;
    if (v6 == 1536)
    {
      Mutable = CGPathCreateMutable();
      v16 = Mutable;
      if (Mutable)
      {
        x = a2->origin.x;
        y = a2->origin.y;
        v19 = &v10[64 * v7];
        width = a2->size.width;
        height = a2->size.height;
        if (a3)
        {
          v22 = a3->width;
          if (a3->width <= 0.0)
          {
            goto LABEL_24;
          }

          v23 = a3->height;
          if (v23 <= 0.0)
          {
            goto LABEL_24;
          }

          v24 = CGRectGetWidth(*a2);
          v39.origin.x = x;
          v39.origin.y = y;
          v39.size.width = width;
          v39.size.height = height;
          v25 = CGRectGetHeight(v39);
          v26 = 0.0;
          v27 = 0.0;
          if (v22 >= 0.0)
          {
            v27 = v22;
            if (v22 + v22 > v24)
            {
              v27 = v24 * 0.5 + -0.0001;
            }
          }

          if (v23 >= 0.0)
          {
            v26 = v23;
            if (v23 + v23 > v25)
            {
              v26 = v25 * 0.5 + -0.0001;
            }
          }

          if (v27 < 0.0 || v27 + v27 > v24 || v26 < 0.0 || v26 + v26 > v25)
          {
LABEL_24:
            v40.origin.x = x;
            v40.origin.y = y;
            v40.size.width = width;
            v40.size.height = height;
            CGPathAddRect(v16, 0, v40);
          }

          else
          {
            v41.origin.x = x;
            v41.origin.y = y;
            v41.size.width = width;
            v41.size.height = height;
            CGPathAddRoundedRect(v16, 0, v41, v27, v26);
          }

          size = a2->size;
          *v19 = a2->origin;
          *(v19 + 1) = size;
          *(v19 + 2) = *a3;
        }

        else
        {
          CGPathAddEllipseInRect(Mutable, 0, *a2);
          v30 = a2->size;
          *v19 = a2->origin;
          *(v19 + 1) = v30;
        }

        v31 = *(v19 + 6);
        if (v31)
        {
          if (atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v31 + 16))(v31);
          }
        }

        *(v19 + 6) = CA::Render::Path::new_path(v16, v28);
        v19[56] = v9;
        v32 = *(this + 1052) + 1;
        *(this + 1052) = v32;
        *(v19 + 15) = v32;
      }

      return v16;
    }
  }

  v13 = this + v6;
LABEL_33:
  v34 = v13 + 2672;
  v35 = *(this + 1052) + 1;
  *(this + 1052) = v35;
  *(v34 + 15) = v35;
  v36 = CA::Render::Path::cg_path(*(v34 + 6));

  return CGPathRetain(v36);
}

uint64_t CA::CG::Renderer::prepare_destination(uint64_t this)
{
  if ((*(this + 4224) & 2) == 0)
  {
    v1 = *(this + 8);
    if (v1)
    {
      *(this + 4224) |= 2u;
      return (*(*v1 + 824))(v1);
    }
  }

  return this;
}

void ___ZN2CA10ScalerUtil12ScalerLimits6limitsEv_block_invoke()
{
  *CA::ScalerUtil::ScalerLimits::limits(void)::limits = xmmword_183E20EC0;
  *&dword_1EA84FD80 = xmmword_183E20ED0;
  xmmword_1EA84FD90 = xmmword_183E20EE0;
  *&dword_1EA84FDA0 = xmmword_183E20EF0;
  dword_1EA84FDCC = 0;
  if (CA::ScalerUtil::get_io_service(void)::once != -1)
  {
    dispatch_once(&CA::ScalerUtil::get_io_service(void)::once, &__block_literal_global_77);
  }

  if (CA::ScalerUtil::get_io_service(void)::scaler_service)
  {
    v0 = IORegistryEntrySearchCFProperty(CA::ScalerUtil::get_io_service(void)::scaler_service, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
    if (v0)
    {
      v1 = v0;
      v2 = CFGetTypeID(v0);
      if (v2 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMinSourceWidth");
        if (Value)
        {
          v4 = CA_CFIntValue(Value);
        }

        else
        {
          v4 = 0;
        }

        v5 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMinSourceHeight");
        if (v5)
        {
          LODWORD(v5) = CA_CFIntValue(v5);
        }

        if (v4 >= 1)
        {
          CA::ScalerUtil::ScalerLimits::limits(void)::limits[0] = v4;
        }

        if (v5 >= 1)
        {
          dword_1EA84FD74 = v5;
        }

        v6 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMaxSourceWidth");
        if (v6)
        {
          v7 = CA_CFIntValue(v6);
        }

        else
        {
          v7 = 0;
        }

        v8 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMaxSourceHeight");
        if (v8)
        {
          LODWORD(v8) = CA_CFIntValue(v8);
        }

        if (v7)
        {
          dword_1EA84FD78 = v7;
        }

        if (v8 >= 1)
        {
          dword_1EA84FD7C = v8;
        }

        v9 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMinDestWidth");
        if (v9)
        {
          v10 = CA_CFIntValue(v9);
        }

        else
        {
          v10 = 0;
        }

        v11 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMinDestHeight");
        if (v11)
        {
          LODWORD(v11) = CA_CFIntValue(v11);
        }

        if (v10 >= 1)
        {
          dword_1EA84FD80 = v10;
        }

        if (v11 >= 1)
        {
          dword_1EA84FD84 = v11;
        }

        v12 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMaxDestWidth");
        if (v12)
        {
          v13 = CA_CFIntValue(v12);
        }

        else
        {
          v13 = 0;
        }

        v14 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMaxDestHeight");
        if (v14)
        {
          LODWORD(v14) = CA_CFIntValue(v14);
        }

        if (v13 >= 1)
        {
          dword_1EA84FD88 = v13;
        }

        if (v14 >= 1)
        {
          dword_1EA84FD8C = v14;
        }

        v15 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMaxHUpscale");
        if (v15)
        {
          v16 = CA_CFIntValue(v15);
        }

        else
        {
          v16 = 0;
        }

        v17 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMaxVUpscale");
        if (v17)
        {
          LODWORD(v17) = CA_CFIntValue(v17);
        }

        if (v16 >= 1)
        {
          *(&xmmword_1EA84FD90 + 2) = v16;
        }

        if (v17 >= 1)
        {
          *(&xmmword_1EA84FD90 + 3) = v17;
        }

        v18 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMaxHDownscale");
        if (v18)
        {
          v19 = CA_CFIntValue(v18);
        }

        else
        {
          v19 = 0;
        }

        v20 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesMaxVDownscale");
        if (v20)
        {
          LODWORD(v20) = CA_CFIntValue(v20);
        }

        if (v19 >= 1)
        {
          *&xmmword_1EA84FD90 = 1.0 / v19;
        }

        if (v20 >= 1)
        {
          *(&xmmword_1EA84FD90 + 1) = 1.0 / v20;
        }

        v21 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorFilterVerticalTapsCount");
        if (v21)
        {
          LODWORD(v21) = CA_CFIntValue(v21);
        }

        dword_1EA84FDB0 = v21;
        v22 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorFilterVerticalPhasesCount");
        if (v22)
        {
          LODWORD(v22) = CA_CFIntValue(v22);
        }

        dword_1EA84FDB4 = v22;
        v23 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorFilterHorizontalTapsCount");
        if (v23)
        {
          LODWORD(v23) = CA_CFIntValue(v23);
        }

        dword_1EA84FDB8 = v23;
        v24 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorFilterHorizontalPhasesCount");
        if (v24)
        {
          LODWORD(v24) = CA_CFIntValue(v24);
        }

        dword_1EA84FDBC = v24;
        v25 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorFilterCoefficientsPrePointBits");
        if (v25)
        {
          LODWORD(v25) = CA_CFIntValue(v25);
        }

        dword_1EA84FDC0 = v25;
        v26 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorFilterCoefficientsPostPointBits");
        if (v26)
        {
          LODWORD(v26) = CA_CFIntValue(v26);
        }

        dword_1EA84FDC4 = v26;
        unk_1EA84FDC8 = dword_1EA84FDC0 + v26;
        v27 = CFDictionaryGetValue(v1, @"kSurfaceAcceleratorCapabilitiesAccessibility");
        if (v27)
        {
          v28 = CA_CFIntValue(v27) != 0;
        }

        else
        {
          v28 = 0;
        }

        LOBYTE(dword_1EA84FDCC) = v28;
        v29 = CFDictionaryGetValue(v1, @"kSurfaceAcceleratorCapabilitiesColorManager");
        if (v29)
        {
          v30 = CA_CFIntValue(v29) != 0;
        }

        else
        {
          v30 = 0;
        }

        BYTE1(dword_1EA84FDCC) = v30;
        v31 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesDirectionalScaling");
        if (v31)
        {
          LOBYTE(v31) = CA_CFBoolValue(v31);
        }

        BYTE2(dword_1EA84FDCC) = v31;
        v32 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesASEPolyMaxHRatio");
        v33 = 0.0;
        v34 = 0.0;
        if (v32)
        {
          v34 = (2 * CA_CFIntValue(v32));
        }

        v35 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesASEPolyMaxVRatio");
        if (v35)
        {
          v33 = (2 * CA_CFIntValue(v35));
        }

        dword_1EA84FDA8 = LODWORD(v34);
        dword_1EA84FDAC = LODWORD(v33);
        v36 = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesASEMinRatio");
        if (v36)
        {
          v37 = CA_CFIntValue(v36);
        }

        else
        {
          v37 = 0.0;
        }

        dword_1EA84FDA0 = LODWORD(v37);
        *algn_1EA84FDA4 = v37;
      }

      CFRelease(v1);
    }
  }
}

uint64_t CA::WindowServer::VirtualDisplay::set_digital_modes(CA::WindowServer::VirtualDisplay *this, const __CFArray *a2, CFArrayRef theArray)
{
  v3 = this;
  v134 = *MEMORY[0x1E69E9840];
  v117 = 0u;
  *__p = 0u;
  v113 = 0;
  v115 = 0u;
  memset(v116, 0, sizeof(v116));
  v114 = &v115;
  LODWORD(v117) = 1065353216;
  v4 = *(this + 82);
  if (theArray && (v5 = theArray, CFArrayGetCount(theArray) >= 1))
  {
    if (*(v3 + 3226))
    {
      v7 = *(v3 + 3225);
      if (v7)
      {
        do
        {
          v8 = *v7;
          operator delete(v7);
          v7 = v8;
        }

        while (v8);
      }

      *(v3 + 3225) = 0;
      v9 = *(v3 + 3224);
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          *(*(v3 + 3223) + 8 * i) = 0;
        }
      }

      *(v3 + 3226) = 0;
    }

    Count = CFArrayGetCount(v5);
    if (Count)
    {
      v96 = v4;
      *(&v99 + 1) = 0;
      v100 = 0;
      v98 = 0;
      v11 = 0;
      DWORD1(v99) = 0;
      v102 = v3 + 24576;
      v103 = v3;
      v105 = vdupq_n_s64(0x40847AE147AE147BuLL);
      v106 = vdupq_n_s64(0x3F59000000000000uLL);
      v104 = vdupq_n_s64(0x3FFFFFE0000000uLL);
      v12 = vdup_n_s32(0x3EC99326u);
      v107 = v5;
      do
      {
        Dictionary = CA_CFArrayGetDictionary(v5, v11);
        v109 = v11;
        if (Dictionary)
        {
          v14 = Dictionary;
          v15 = CA_CFDictionaryGetDictionary(Dictionary, @"DisplayAttributes");
          if (v15)
          {
            v16 = v15;
            v17 = CA_CFDictionaryGetDictionary(v15, @"ProductAttributes");
            if (v17)
            {
              v18 = v17;
              v19 = *(v103 + 3228);
              if (v19)
              {
                free(v19);
                *(v103 + 3228) = 0;
              }

              String = CA_CFDictionaryGetString(v18, @"ProductName");
              if (String)
              {
                v21 = String;
                v22 = CFGetTypeID(String);
                if (v22 == CFStringGetTypeID())
                {
                  v132 = 0u;
                  v133 = 0u;
                  v130 = 0u;
                  v131 = 0u;
                  v128 = 0u;
                  v129 = 0u;
                  v126 = 0u;
                  v127 = 0u;
                  v124 = 0u;
                  v125 = 0u;
                  v122 = 0u;
                  v123 = 0u;
                  v120 = 0u;
                  v121 = 0u;
                  *buffer = 0u;
                  v119 = 0u;
                  if (CFStringGetCString(v21, buffer, 256, 0x8000100u))
                  {
                    *(v103 + 3228) = strdup(buffer);
                  }
                }
              }

              Value = CFDictionaryGetValue(v18, @"ProductID");
              if (Value)
              {
                LODWORD(Value) = CA_CFIntValue(Value);
              }

              *(v102 + 315) = Value;
              v24 = CFDictionaryGetValue(v18, @"ManufacturerID");
              if (v24)
              {
                LODWORD(v24) = CA_CFIntValue(v24);
              }

              *(v102 + 314) = v24;
            }

            v25 = CFDictionaryGetValue(v16, @"MaxHorizontalImageSize");
            if (v25)
            {
              v26 = CA_CFIntValue(v25);
            }

            else
            {
              v26 = 0;
            }

            v31 = CFDictionaryGetValue(v16, @"MaxVerticalImageSize");
            if (v31)
            {
              LODWORD(v31) = CA_CFIntValue(v31);
            }

            *(v103 + 1615) = vcvtq_f64_f32(vmul_f32(vcvt_f32_u32(__PAIR64__(v31, v26)), v12));
          }

          else
          {
            v27 = CA_CFDictionaryGetDictionary(v14, @"HorizontalAttributes");
            v28 = CA_CFDictionaryGetDictionary(v14, @"VerticalAttributes");
            if (v27)
            {
              v29 = v28;
              if (v28)
              {
                v30 = CFDictionaryGetValue(v14, @"IsVirtual");
                if (v30)
                {
                  LODWORD(v99) = CA_CFBoolValue(v30);
                }

                else
                {
                  LODWORD(v99) = 0;
                }

                v32 = CFDictionaryGetValue(v14, @"Score");
                if (v32)
                {
                  v101 = CA_CFIntValue(v32);
                }

                else
                {
                  v101 = 0;
                }

                v33 = CFDictionaryGetValue(v29, @"PreciseSyncRate");
                if (v33)
                {
                  v34 = CA_CFIntValue(v33);
                }

                else
                {
                  v34 = 0;
                }

                v35 = CFDictionaryGetValue(v27, @"Active");
                if (v35)
                {
                  v36 = CA_CFIntValue(v35) & 0x3FFF;
                }

                else
                {
                  v36 = 0;
                }

                v37 = CFDictionaryGetValue(v29, @"Active");
                if (v37)
                {
                  v38 = (CA_CFIntValue(v37) & 0x3FFF) << 14;
                  if (!a2)
                  {
                    goto LABEL_53;
                  }
                }

                else
                {
                  v38 = 0;
                  if (!a2)
                  {
LABEL_53:
                    v110 = 1;
LABEL_54:
                    v39 = 0;
                    LODWORD(v40) = v34 & 0x1FFFFFF;
                    if (v34)
                    {
                      v40 = v40;
                    }

                    else
                    {
                      v40 = 3932160;
                    }

                    v97 = v38 | v36 | (v40 << 29);
                    while (2)
                    {
                      v41 = v14;
                      if (a2)
                      {
                        v41 = CA_CFArrayGetDictionary(a2, v39);
                      }

                      Int = CA_CFDictionaryGetInt(v41, @"ID");
                      Bool = CA_CFDictionaryGetBool(v41, @"IsVirtual");
                      v44 = CA_CFDictionaryGetInt(v41, @"PixelEncoding");
                      v45 = CA_CFDictionaryGetInt(v41, @"Depth");
                      v46 = CA_CFDictionaryGetInt(v41, @"Colorimetry");
                      v47 = CA_CFDictionaryGetInt(v41, @"EOTF");
                      v48 = CA_CFDictionaryGetInt(v41, @"DynamicRange");
                      if (v44)
                      {
                        goto LABEL_61;
                      }

                      _ZF = v45 == 12 || v45 == 10;
                      if (!_ZF || v48)
                      {
                        if (v45 > 8)
                        {
                          goto LABEL_61;
                        }

                        v52 = 0;
                        v50 = 0x80000000000000;
                        if (v46 == 16)
                        {
                          v50 = 0x680000000000000;
                        }

                        if (v47)
                        {
                          goto LABEL_61;
                        }
                      }

                      else if (v46 == 16)
                      {
                        v50 = 0xC80000000000000;
                        if (v45 == 10)
                        {
                          v50 = 0xC00000000000000;
                        }

                        v51 = 0x780000000000000;
                        if (v45 == 10)
                        {
                          v51 = 0x700000000000000;
                        }

                        if (v47 == 2)
                        {
                          v52 = 32;
                          goto LABEL_91;
                        }

LABEL_87:
                        v52 = 16;
                        v50 = v51;
                        if (v47)
                        {
                          goto LABEL_61;
                        }
                      }

                      else
                      {
                        v50 = 0xB80000000000000;
                        if (v45 == 10)
                        {
                          v50 = 0xB00000000000000;
                        }

                        v51 = 0x180000000000000;
                        if (v45 == 10)
                        {
                          v51 = 0x100000000000000;
                        }

                        if (v47 != 2)
                        {
                          goto LABEL_87;
                        }

                        v52 = 32;
                      }

                      if (v46 != 1 && v46 != 10)
                      {
                        if (v46 != 16)
                        {
                          goto LABEL_61;
                        }

LABEL_91:
                        v52 |= 2u;
                      }

                      if (v48)
                      {
                        goto LABEL_61;
                      }

                      v53 = 0x40000000000000;
                      if (((v99 | Bool) & 1) == 0)
                      {
                        v53 = 0;
                      }

                      v54 = v50 & 0xF80000000000000 | v53 | v97 | 0x1000000000000000;
                      v111 = v54;
                      v55 = __p[0];
                      if (__p[0] != __p[1])
                      {
                        while (*v55 != v54)
                        {
                          v56.i64[0] = *v55;
                          v56.i64[1] = v54;
                          v57 = vshrn_n_s64(v56, 0x1DuLL);
                          v58.i64[0] = v57.i32[0] & 0x1FFFFFF;
                          v58.i64[1] = v57.i32[1] & 0x1FFFFFF;
                          v59 = vbslq_s8(v104, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v58), v106)), v105)), 0x1DuLL), v56);
                          if (vmovn_s64(vceqq_s64(v59, vdupq_laneq_s64(v59, 1))).u8[0])
                          {
                            break;
                          }

                          if (++v55 == __p[1])
                          {
                            goto LABEL_103;
                          }
                        }
                      }

                      if (v55 == __p[1])
                      {
LABEL_103:
                        CA::WindowServer::Display::ModeSet::add_mode(__p, &v111);
                      }

                      else
                      {
                        *buffer = &v111;
                        if (*(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>,CA::WindowServer::VirtualDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::VirtualDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(v103 + 3223, v54) + 8) >= v101)
                        {
                          goto LABEL_61;
                        }
                      }

                      v60 = CFDictionaryGetValue(v14, @"ID");
                      if (v60)
                      {
                        v61 = CA_CFIntValue(v60);
                      }

                      else
                      {
                        v61 = 0;
                      }

                      v62 = v52 + v101;
                      *buffer = &v111;
                      v63 = std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>,CA::WindowServer::VirtualDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::VirtualDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(v103 + 3223, v111);
                      v63[6] = Int;
                      v63[7] = v61;
                      v63[8] = v101;
                      v63[9] = 0;
                      v64 = v98;
                      v65 = v100;
                      if (v62 > v98)
                      {
                        v65 = v111;
                      }

                      v100 = v65;
                      if (v62 > v98)
                      {
                        v64 = v62;
                      }

                      v98 = v64;
                      v66 = v111 & 0x3FFF;
                      v67 = (v111 >> 14) & 0x3FFF;
                      v68 = DWORD1(v99);
                      if (v67 <= SDWORD2(v99))
                      {
                        v69 = DWORD1(v99);
                      }

                      else
                      {
                        v69 = v111 & 0x3FFF;
                      }

                      if (v67 <= SDWORD2(v99))
                      {
                        v67 = DWORD2(v99);
                      }

                      v70 = v66 <= SDWORD1(v99);
                      if (v66 > SDWORD1(v99))
                      {
                        v68 = v69;
                      }

                      DWORD1(v99) = v68;
                      if (v70)
                      {
                        v71 = DWORD2(v99);
                      }

                      else
                      {
                        v71 = v67;
                      }

                      *(&v99 + 1) = v71;
LABEL_61:
                      if (++v39 == v110)
                      {
                        goto LABEL_36;
                      }

                      continue;
                    }
                  }
                }

                v110 = CFArrayGetCount(a2);
                if (v110)
                {
                  goto LABEL_54;
                }
              }
            }
          }
        }

LABEL_36:
        v11 = v109 + 1;
        v5 = v107;
      }

      while (v109 + 1 != Count);
      v72 = v100;
      v73 = v99 >> 32;
      v3 = v103;
      v4 = v96;
    }

    else
    {
      v72 = 0;
      v73 = 0;
    }

    *(v3 + 9) = v73;
    CA::WindowServer::Display::ModeSet::sort(__p);
    if (!v4)
    {
      goto LABEL_133;
    }
  }

  else
  {
    *buffer = -1;
    CA::WindowServer::Display::ModeSet::add_mode(__p, buffer);
    v72 = 0;
    if (!v4)
    {
LABEL_133:
      v4 = v72;
      goto LABEL_134;
    }
  }

  v74 = __p[0];
  if (__p[0] != __p[1])
  {
    v75 = vdupq_n_s64(0x3F59000000000000uLL);
    v76 = vdupq_n_s64(0x40847AE147AE147BuLL);
    v77 = vdupq_n_s64(0x3FFFFFE0000000uLL);
    while (*v74 != v4)
    {
      v78.i64[0] = *v74;
      v78.i64[1] = v4;
      v79 = vshrn_n_s64(v78, 0x1DuLL);
      v80.i64[0] = v79.i32[0] & 0x1FFFFFF;
      v80.i64[1] = v79.i32[1] & 0x1FFFFFF;
      v81 = vbslq_s8(v77, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v80), v75)), v76)), 0x1DuLL), v78);
      if (vmovn_s64(vceqq_s64(v81, vdupq_laneq_s64(v81, 1))).u8[0])
      {
        break;
      }

      if (++v74 == __p[1])
      {
        goto LABEL_133;
      }
    }
  }

  if (v74 == __p[1])
  {
    goto LABEL_133;
  }

LABEL_134:
  v82 = CA::WindowServer::Display::set_all_modes(v3, __p, v4, v72);
  if (v82)
  {
    LODWORD(v111) = v4 & 0x3FFF;
    HIDWORD(v111) = (v4 >> 14) & 0x3FFF;
    __asm { FMOV            V0.2D, #1.0 }

    *buffer = _Q0;
    CA::WindowServer::Display::set_size(v3, &v111, &v111, buffer, *&_Q0, v83, v84, v85, v86, v87, v88, v89);
  }

  v94 = (*(*v3 + 664))(v3);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v116);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v115);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v82 | v94;
}

void *std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>,CA::WindowServer::VirtualDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::VirtualDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::VirtualDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  v4 = v3.u32[0];
  if (v3.u32[0] > 1uLL)
  {
    v5 = a2;
    if (a2 >= v2)
    {
      v5 = a2 % v2;
    }
  }

  else
  {
    v5 = (v2 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_20:
    operator new();
  }

  v8 = vdupq_n_s64(0x3F59000000000000uLL);
  v9 = vdupq_n_s64(0x40847AE147AE147BuLL);
  v10 = vdupq_n_s64(0x3FFFFFE0000000uLL);
  while (1)
  {
    v11 = v7[1];
    if (v11 == a2)
    {
      break;
    }

    if (v4 > 1)
    {
      if (v11 >= v2)
      {
        v11 %= v2;
      }
    }

    else
    {
      v11 &= v2 - 1;
    }

    if (v11 != v5)
    {
      goto LABEL_20;
    }

LABEL_19:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  if (v7[2] != a2)
  {
    v12.i64[0] = v7[2];
    v12.i64[1] = a2;
    v13 = vshrn_n_s64(v12, 0x1DuLL);
    v14.i64[0] = v13.i32[0] & 0x1FFFFFF;
    v14.i64[1] = v13.i32[1] & 0x1FFFFFF;
    v15 = vbslq_s8(v10, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v14), v8)), v9)), 0x1DuLL), v12);
    if ((vmovn_s64(vceqq_s64(v15, vdupq_laneq_s64(v15, 1))).u8[0] & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  return v7;
}

uint64_t CA::WindowServer::VirtualDisplay::release_resources(CA::WindowServer::VirtualDisplay *this)
{
  CA::WindowServer::VirtualDisplay::release_everything(this);

  return CA::WindowServer::Display::release_resources(this);
}

void *CA::WindowServer::VirtualDisplay::release_everything(CA::WindowServer::VirtualDisplay *this)
{
  result = (*(*this + 2336))(this);
  v3 = *(this + 3214);
  if (v3)
  {
    do
    {
      *(v3 + 2) = 0;
      v4 = v3[2];
      if (v4)
      {
        CA::Shape::unref(v4);
        v3[2] = 0;
      }

      v5 = v3[3];
      if (v5)
      {
        CA::WindowServer::Surface::unref(v5);
        v3[3] = 0;
      }

      v3 = *v3;
    }

    while (v3);
    result = *(this + 3214);
    if (result)
    {
      do
      {
        v6 = *result;
        free(result);
        result = v6;
      }

      while (v6);
    }
  }

  *(this + 3214) = 0;
  return result;
}

uint64_t CA::WindowServer::VirtualDisplay::set_display_state_locked(CA::WindowServer::VirtualDisplay *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(this + 96);
  v3 = atomic_load(v2 + 1);
  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v4 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 6);
    v6 = atomic_load(v2);
    v7 = v6 - 1;
    if (v7 > 0xAu)
    {
      v8 = "off";
    }

    else
    {
      v8 = off_1E6DED748[v7];
    }

    if ((v3 - 1) > 0xA)
    {
      v9 = "off";
    }

    else
    {
      v9 = off_1E6DED748[(v3 - 1)];
    }

    v11[0] = 67109634;
    v11[1] = v5;
    v12 = 2080;
    v13 = v8;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "VirtualDisplay::set_display_state display_id=%u current_state=%s target_state=%s", v11, 0x1Cu);
  }

  return 255;
}

uint64_t CA::WindowServer::VirtualDisplay::new_server(const __CFString **this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x3F8uLL, 0xDEEC3011uLL);
  v3 = v2;
  if (v2)
  {
    CA::WindowServer::Server::Server(v2, this, this[1]);
    *v3 = &unk_1EF1F5148;
    *(v3 + 960) = 0u;
    *(v3 + 976) = 0u;
    *(v3 + 992) = 0;
    pthread_mutex_init((v3 + 848), 0);
    pthread_cond_init((v3 + 912), 0);
    pthread_mutex_lock((v3 + 848));
    CA::WindowServer::VirtualServer::add_runloop_source(v3, v4);
    if (CA::WindowServer::Display::is_enabled_for_vsync_render(*(v3 + 96)))
    {
      CA::WindowServer::VirtualServer::add_vsync_source(v3, v5);
    }

    pthread_mutex_unlock((v3 + 848));
  }

  return v3;
}

double CA::WindowServer::Display::preset_properties@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = 1.0;
  *(a1 + 24) = xmmword_183E20E00;
  return result;
}

double CA::WindowServer::Display::edid_attributes@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 28) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double CA::WindowServer::Display::chromaticity@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void CA::WindowServer::Display::luminance(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t CA::WindowServer::VirtualDisplay::copy_string(uint64_t a1, int a2, char *a3, size_t a4)
{
  if (a2)
  {
    return 0;
  }

  v5 = *(a1 + 25760);
  if (!v5 || strlen(*(a1 + 25760)) + 1 > a4)
  {
    return 0;
  }

  strcpy(a3, v5);
  return 1;
}

double CA::WindowServer::VirtualDisplay::heartbeat_rate(CA::WindowServer::VirtualDisplay *this)
{
  if (*(this + 82) == -1)
  {
    return *(this + 3218);
  }

  v2 = (*(*this + 760))(this);
  LODWORD(v3) = *(this + 6434);
  return v2 / v3;
}

double CA::WindowServer::VirtualDisplay::refresh_rate(CA::WindowServer::VirtualDisplay *this)
{
  v1 = *(this + 82);
  if (v1 == -1)
  {
    return *(this + 3216);
  }

  v2 = (v1 >> 29) & 0x1FFFFFF;
  if (v2)
  {
    return 65536.0 / v2;
  }

  else
  {
    return 0.0;
  }
}

uint64_t CA::WindowServer::VirtualDisplay::set_mode(uint64_t this, const CA::WindowServer::Display::Mode *a2)
{
  if (*(this + 656) != *a2)
  {
    v3.i64[0] = *(this + 656);
    v3.i64[1] = *a2;
    v4 = vshrn_n_s64(v3, 0x1DuLL);
    v5.i64[0] = v4.i32[0] & 0x1FFFFFF;
    v5.i64[1] = v4.i32[1] & 0x1FFFFFF;
    v6 = vdupq_n_s64(0x40847AE147AE147BuLL);
    v7 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v5), vdupq_n_s64(0x3F59000000000000uLL))), v6)), 0x1DuLL), v3);
    if ((vmovn_s64(vceqq_s64(v7, vdupq_laneq_s64(v7, 1))).u32[0] & 1) == 0)
    {
      v9 = this;
      v30 = v6;
      pthread_mutex_lock((this + 576));
      v17 = v30;
      v18 = *(v9 + 656);
      if (v18 != *a2)
      {
        v19.i64[0] = *(v9 + 656);
        v19.i64[1] = *a2;
        v20 = vshrn_n_s64(v19, 0x1DuLL);
        v21.i64[0] = v20.i32[0] & 0x1FFFFFF;
        v21.i64[1] = v20.i32[1] & 0x1FFFFFF;
        v12 = vdupq_n_s64(0x3FFFFFE0000000uLL);
        v22 = vbslq_s8(v12, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v21), vdupq_n_s64(0x3F59000000000000uLL))), v30)), 0x1DuLL), v19);
        v11 = vdupq_laneq_s64(v22, 1);
        v10 = vmovn_s64(vceqq_s64(v22, v11));
        if ((v10.i8[0] & 1) == 0)
        {
          *(v9 + 656) = *a2;
          CA::WindowServer::Display::post_display_changed(v9);
          v17 = v30;
        }

        v18 = *a2;
      }

      if (*(v9 + 25776) == v18 || (v23.i64[0] = *(v9 + 25776), v23.i64[1] = v18, v24 = vshrn_n_s64(v23, 0x1DuLL), v25.i64[0] = v24.i32[0] & 0x1FFFFFF, v25.i64[1] = v24.i32[1] & 0x1FFFFFF, v12 = vdupq_n_s64(0x3FFFFFE0000000uLL), v26 = vbslq_s8(v12, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v25), vdupq_n_s64(0x3F59000000000000uLL))), v17)), 0x1DuLL), v23), v11 = vdupq_laneq_s64(v26, 1), v10 = vmovn_s64(vceqq_s64(v26, v11)), (v10.i8[0] & 1) != 0))
      {
        v27 = 0x80;
      }

      else
      {
        *(v9 + 25776) = v18;
        v27 = -124;
      }

      CA::WindowServer::VirtualDisplay::update_framebuffer(v9, v27, *&v10, v11, v12, v17.f64[0], v13, v14, v15, v16);
      os_unfair_lock_lock((v9 + 25856));
      if (*(v9 + 25864))
      {
        v28 = (*(*v9 + 760))(v9);
        if (((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) - 1 <= 0xFFFFFFFFFFFFELL)
        {
          atomic_store(CAHostTimeWithTime(v28), (*(v9 + 25864) + 16));
        }
      }

      os_unfair_lock_unlock((v9 + 25856));

      return pthread_mutex_unlock((v9 + 576));
    }
  }

  return this;
}

void CA::WindowServer::VirtualDisplay::update_framebuffer(CA::WindowServer::VirtualDisplay *this, char a2, double a3, int64x2_t a4, int8x16_t a5, double a6, int32x4_t a7, double a8, double a9, int32x4_t a10)
{
  v45[7] = *MEMORY[0x1E69E9840];
  __asm { FMOV            V0.2D, #1.0 }

  v41 = _Q0;
  if (!*(this + 3222))
  {
    goto LABEL_14;
  }

  os_unfair_lock_lock(this + 102);
  CA::WindowServer::Display::ModeSet::ModeSet(__p, (this + 416));
  os_unfair_lock_unlock(this + 102);
  v17 = __p[0];
  if (__p[0] == __p[1])
  {
    v25 = 1;
  }

  else
  {
    v18 = vdupq_n_s64(0x3F59000000000000uLL);
    v19 = vdupq_n_s64(0x40847AE147AE147BuLL);
    v20 = vdupq_n_s64(0x3FFFFFE0000000uLL);
    while (*v17 != *(this + 3222))
    {
      v21.i64[0] = *v17;
      v21.i64[1] = *(this + 3222);
      v22 = vshrn_n_s64(v21, 0x1DuLL);
      v23.i64[0] = v22.i32[0] & 0x1FFFFFF;
      v23.i64[1] = v22.i32[1] & 0x1FFFFFF;
      v24 = vbslq_s8(v20, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v23), v18)), v19)), 0x1DuLL), v21);
      if (vmovn_s64(vceqq_s64(v24, vdupq_laneq_s64(v24, 1))).u8[0])
      {
        break;
      }

      if (++v17 == __p[1])
      {
        v17 = __p[1];
        break;
      }
    }

    v25 = v17 == __p[1];
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v45);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v25)
  {
    v26 = 0;
    *(this + 3222) = 0;
  }

  else
  {
LABEL_14:
    v26 = (a2 & 4) == 0;
    if ((a2 & 4) == 0)
    {
      goto LABEL_18;
    }
  }

  (*(*this + 2336))(this);
  v27 = *(this + 6444);
  LODWORD(v42) = v27 & 0x3FFF;
  HIDWORD(v42) = (v27 >> 14) & 0x3FFF;
  *__p = v41;
  CA::WindowServer::Display::set_size(this, &v42, &v42, __p, *&v41, v28, v29, v30, v31, v32, v33, v34);
  v35 = *(this + 3222);
  if (*(this + 82) != v35)
  {
    v36.i64[0] = *(this + 82);
    v36.i64[1] = *(this + 3222);
    v37 = vshrn_n_s64(v36, 0x1DuLL);
    v38.i64[0] = v37.i32[0] & 0x1FFFFFF;
    v38.i64[1] = v37.i32[1] & 0x1FFFFFF;
    a5 = vdupq_n_s64(0x3FFFFFE0000000uLL);
    v39 = vbslq_s8(a5, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v38), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v36);
    a4 = vdupq_laneq_s64(v39, 1);
    if ((vmovn_s64(vceqq_s64(v39, a4)).u32[0] & 1) == 0)
    {
      *(this + 82) = v35;
      CA::WindowServer::Display::post_display_changed(this);
    }
  }

LABEL_18:
  if (*(this + 652) && (v40 = *(this + 82)) != 0)
  {
    if (*(this + 652) != 2)
    {
      goto LABEL_24;
    }

    LODWORD(v42) = v40 & 0x3FFF;
    HIDWORD(v42) = (v40 >> 14) & 0x3FFF;
  }

  else
  {
    v42 = 0;
  }

  *__p = v41;
  CA::WindowServer::Display::set_size(this, &v42, &v42, __p, *&v41, *a4.i64, *a5.i64, a6, a7, a8, a9, a10);
LABEL_24:
  if (!v26)
  {
    CA::WindowServer::Display::post_display_changed(this);
  }
}

uint64_t CA::WindowServer::VirtualDisplay::clone_update(os_unfair_lock_s *this, CA::WindowServer::Server *a2, CA::WindowServer::Display *a3, CA::Render::Update *a4, unsigned int *a5, BOOL *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    buffer = CA::WindowServer::VirtualDisplay::allocate_buffer(this, &this[4 * LOBYTE(this[6438]._os_unfair_lock_opaque) + 6416], *(a4 + 40));
    v11 = *(buffer + 3);
    if (!v11)
    {
      v13 = buffer;
      v14 = (*(*a3 + 1416))(a3);
      v11 = (*(*&this->_os_unfair_lock_opaque + 472))(this, 1, 0, v14, 0, 0);
      *(v13 + 3) = v11;
    }

    v15 = (*(*a3 + 464))(a3, 1);
    if (v11)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16 || ((*(*v11 + 184))(v11, v15, 0x8000, 0, 0, 0, 0, 1.0) & 1) == 0)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v17 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&dword_183AA6000, v17, OS_LOG_TYPE_ERROR, "VirtualDisplay::clone_update failed to copy surface\n", v19, 2u);
      }
    }

    if (CA::WindowServer::VirtualDisplay::finish_update_(this, a4, *a5))
    {
      return -7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -19;
  }
}

_DWORD *CA::WindowServer::VirtualDisplay::allocate_buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    v6 = *(a1 + 25712);
    if (!v6)
    {
      goto LABEL_16;
    }

    v3 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v9 = v6[3];
      if ((!v9 || (*(*v9 + 232))(v9) == a3) && !*(v6 + 2) && !v6[3])
      {
        v10 = v6[2];
        if (v10)
        {
          v11 = CA::Shape::area(v10);
          if (v11 < v8)
          {
            v3 = v6;
            v8 = v11;
          }
        }

        else
        {
          v8 = 0;
          v3 = v6;
        }
      }

      v6 = *v6;
    }

    while (v6);
    if (v3)
    {
      ++v3[2];
    }

    else
    {
LABEL_16:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v3 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0x10200404161829EuLL);
      *v3 = *(a1 + 25712);
      *(a1 + 25712) = v3;
      v3[2] = 1;
    }

    *(a2 + 8) = v3;
  }

  return v3;
}

uint64_t CA::WindowServer::VirtualDisplay::finish_update_(os_unfair_lock_s *this, CA::Render::Update *a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  os_unfair_lock_opaque_low = LOBYTE(this[6438]._os_unfair_lock_opaque);
  this[4 * LOBYTE(this[6438]._os_unfair_lock_opaque) + 6416] = *(a2 + 272);
  BYTE1(this[6438]._os_unfair_lock_opaque) = os_unfair_lock_opaque_low;
  LOBYTE(this[6438]._os_unfair_lock_opaque) = os_unfair_lock_opaque_low + 1 - 3 * ((21846 * (os_unfair_lock_opaque_low + 1)) >> 16);
  os_unfair_lock_opaque = this[4 * (os_unfair_lock_opaque_low + 1 - 3 * ((21846 * (os_unfair_lock_opaque_low + 1)) >> 16)) + 6416]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    this[6430]._os_unfair_lock_opaque = os_unfair_lock_opaque;
  }

  updated = CA::WindowServer::Display::update_clones(this, a2, &v8);
  CA::WindowServer::Display::purge_surfaces(this, 0);
  return updated;
}

double CA::WindowServer::Display::detaching_rect@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

_DWORD *CA::WindowServer::VirtualDisplay::update_surface(CA::WindowServer::VirtualDisplay *this, int a2, char a3, uint64_t a4, BOOL a5, int a6)
{
  v6 = *(this + 2 * *(this + 25752) + 3209);
  if (!v6)
  {
    return 0;
  }

  v12 = *(this + 52);
  v13 = *(this + 53);
  surface = *(v6 + 24);
  v15 = (*(*this + 208))(this);
  if ((byte_1ED4E984A & 1) != 0 || (v16 = v15, CA::WindowServer::Display::Mode::is_hdr((this + 25776))) || a6)
  {
    v16 = 1380411457;
  }

  if (CADeviceUseFramebufferCompression::once != -1)
  {
    dispatch_once(&CADeviceUseFramebufferCompression::once, &__block_literal_global_25);
  }

  if (CADeviceUseFramebufferCompression::enable_compression == 1)
  {
    if (CADeviceSupportsUniversalCompression::once != -1)
    {
      dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
    }

    if (CADeviceSupportsUniversalCompression::universal == 1 && (BYTE3(xmmword_1ED4E980C) & 1) == 0 && (a3 & 1) == 0)
    {
      v16 = CA::Render::fourcc_compressed_of_type(v16, 3, 0);
    }
  }

  if (surface)
  {
    if (surface[14] == v12 && surface[15] == v13 && (*(*surface + 232))(surface) == a4 && surface[16] == v16)
    {
      return surface;
    }

    goto LABEL_22;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_22:
  v17 = CFStringCreateWithFormat(0, 0, @"%@ Framebuffer", *(this + 1));
  surface = CA::WindowServer::Display::allocate_surface(this, v12, v13, v16, 0, 2u, 0, a4, v17, 0);
  CFRelease(v17);
  if (surface)
  {
    if (*(v6 + 16))
    {
      CA::shape_union((v6 + 16), this + 25, v18);
    }

    v19 = *(v6 + 24);
    if (v19)
    {
      CA::WindowServer::Surface::unref(v19);
    }

    *(v6 + 24) = surface;
  }

  return surface;
}

uint64_t CA::WindowServer::VirtualDisplay::displayed_surface(CA::WindowServer::VirtualDisplay *this)
{
  v1 = *(this + 2 * *(this + 25753) + 3209);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t CA::WindowServer::VirtualDisplay::finish_update(CA::WindowServer::VirtualDisplay *this, CA::Render::Update *a2, unsigned int a3)
{
  if ((*(a2 + 1378) & 4) == 0)
  {
    if (!*(this + 82) || !CA::WindowServer::Display::is_enabled_for_vsync_render(this))
    {
      return 0;
    }

    if ((*(a2 + 1378) & 4) == 0)
    {
      goto LABEL_6;
    }
  }

  if (!CA::WindowServer::Display::is_enabled_for_replay_render_with_mode(this))
  {
    return 0;
  }

LABEL_6:
  v6 = *(this + 2 * *(this + 25752) + 3209);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_13:
    *(v6 + 16) = 1;
    goto LABEL_14;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (*(v7 + 1) != 6)
  {
LABEL_12:
    CA::Shape::unref(v7);
    goto LABEL_13;
  }

LABEL_14:
  *(a2 + 17) = mach_absolute_time();
  if (CA::WindowServer::VirtualDisplay::finish_update_(this, a2, a3))
  {
    return 0x80000;
  }

  else
  {
    return 0;
  }
}

CA::Shape *CA::WindowServer::VirtualDisplay::begin_update(CA::Shape *this, CA::Render::Update *a2)
{
  v3 = this;
  if ((*(a2 + 1378) & 4) != 0)
  {
    goto LABEL_5;
  }

  if (!*(this + 82))
  {
    return this;
  }

  this = CA::WindowServer::Display::is_enabled_for_vsync_render(this);
  if (!this)
  {
    return this;
  }

  if ((*(a2 + 1378) & 4) != 0)
  {
LABEL_5:
    this = CA::WindowServer::Display::is_enabled_for_replay_render_with_mode(v3);
    if (!this)
    {
      return this;
    }
  }

  v5 = v3 + 16 * *(v3 + 25752);
  v6 = *(v3 + 25712);
  if (v6)
  {
    v7 = *(a2 + 2);
    do
    {
      if (v6[2])
      {
        CA::shape_union(v6 + 2, v7, v4);
      }

      v6 = *v6;
    }

    while (v6);
  }

  buffer = CA::WindowServer::VirtualDisplay::allocate_buffer(v3, v5 + 25664, *(a2 + 40));
  v9 = *(buffer + 2);
  if (!v9 || !*(buffer + 3))
  {
    v9 = *(v3 + 216);
  }

  return CA::Render::Update::set_shape(a2, v9);
}

void CA::WindowServer::VirtualDisplay::complete_display_state_transition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = atomic_load(*(a1 + 768));
  if (v6 != a2 || (v7 = atomic_load((*(a1 + 768) + 2)), v7 != a3))
  {
    os_unfair_lock_lock((a1 + 756));
    v8 = *(a1 + 768);
    v9 = atomic_load(v8);
    if (v9 != a2)
    {
      atomic_store(a2, v8);
      if (x_log_get_display_state(void)::once != -1)
      {
        dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
      }

      v10 = x_log_get_display_state(void)::log;
      if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 24);
        if ((a2 - 1) > 0xA)
        {
          v12 = "off";
        }

        else
        {
          v12 = off_1E6DED748[(a2 - 1)];
        }

        v17 = 67109378;
        v18 = v11;
        v19 = 2080;
        v20 = v12;
        _os_log_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEFAULT, "VirtualDisplay::complete_display_state_transition display_id=%u, current_state=%s", &v17, 0x12u);
      }

      CA::WindowServer::Display::DisplayStateTransitionReply::_send((a1 + 776), "send", a2, *(a1 + 808) != a2);
    }

    v13 = atomic_load(v8 + 2);
    if (v13 != a3)
    {
      atomic_store(a3, v8 + 2);
      if (x_log_get_display_state(void)::once != -1)
      {
        dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
      }

      v14 = x_log_get_display_state(void)::log;
      if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 24);
        if ((a3 - 1) > 2)
        {
          v16 = "off";
        }

        else
        {
          v16 = off_1E6DED7A0[(a3 - 1)];
        }

        v17 = 67109378;
        v18 = v15;
        v19 = 2080;
        v20 = v16;
        _os_log_impl(&dword_183AA6000, v14, OS_LOG_TYPE_DEFAULT, "VirtualDisplay::complete_display_state_transition display_id=%u, current_cloning_state=%s", &v17, 0x12u);
      }

      CA::WindowServer::Display::DisplayStateTransitionReply::_send((a1 + 824), "send", a3, *(a1 + 856) != a3);
    }

    os_unfair_lock_unlock((a1 + 756));
  }
}

uint64_t CA::WindowServer::VirtualDisplay::framebuffer_format(CA::WindowServer::VirtualDisplay *this)
{
  v1 = this + 24576;
  if ((*(this + 25768) & 1) != 0 && CA::WindowServer::Display::Mode::is_hdr((this + 656)))
  {
    return 1380411457;
  }

  else
  {
    return *(v1 + 295);
  }
}

void CA::WindowServer::VirtualDisplay::~VirtualDisplay(CA::WindowServer::VirtualDisplay *this)
{
  CA::WindowServer::VirtualDisplay::~VirtualDisplay(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1F4150;
  CA::WindowServer::VirtualDisplay::release_everything(this);
  os_unfair_lock_lock(this + 6464);
  v2 = *(this + 3233);
  if (v2)
  {
    MEMORY[0x1865EA9A0](v2, 0x1000C40521E4379);
  }

  os_unfair_lock_unlock(this + 6464);
  free(*(this + 3220));
  v3 = *(this + 3228);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 3225);
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(this + 3223);
  *(this + 3223) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  CA::WindowServer::Display::~Display(this);
}

CATintedImage *CACodingCreateProxy(NSCoder *a1, objc_object *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  AssociatedObject = objc_getAssociatedObject(a1, CACodingCreateProxy);
  if (!AssociatedObject)
  {
    memset(&keyCallBacks.copyDescription, 0, 24);
    keyCallBacks.version = 0;
    v17.version = 0;
    v17.copyDescription = 0;
    v17.equal = 0;
    keyCallBacks.retain = cache_retain;
    keyCallBacks.release = cache_release;
    v17.retain = cache_retain;
    v17.release = cache_release;
    AssociatedObject = CFDictionaryCreateMutable(0, 0, &keyCallBacks, &v17);
    objc_setAssociatedObject(a1, CACodingCreateProxy, AssociatedObject, 0x301);
    CFRelease(AssociatedObject);
  }

  Value = CFDictionaryGetValue(AssociatedObject, a2);
  if (Value)
  {
    v7 = Value;
    goto LABEL_44;
  }

  if (coding_once[0] == -1)
  {
    if (!a2)
    {
      goto LABEL_43;
    }
  }

  else
  {
    dispatch_once_f(coding_once, 0, coding_init);
    if (!a2)
    {
      goto LABEL_43;
    }
  }

  v8 = CFGetTypeID(a2);
  v9 = objc_opt_class();
  if (([(objc_object *)v9 isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_object *)v9 isSubclassOfClass:objc_opt_class()]& 1) != 0 || v8 == CGColorGetTypeID() || v8 == CGImageGetTypeID() || v8 == CGPatternGetTypeID() || v8 == CGPathGetTypeID() || v8 == CFArrayGetTypeID() || v8 == CFDictionaryGetTypeID())
  {
    goto LABEL_33;
  }

  if (CAEncodeBackingStores == 1)
  {
    if (CABackingStoreGetTypeID::once[0] != -1)
    {
      dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
    }

    if (v8 == CABackingStoreGetTypeID::type)
    {
      v10 = [CATintedImage tintedImageWithCABackingStore:a2];
      v11 = [(CATintedImage *)v10 image];
      v12 = *MEMORY[0x1E695E738];
      if (v11)
      {
        v12 = v10;
      }

      CodingProxy = v12;
      goto LABEL_35;
    }
  }

  if (v8 == IOSurfaceGetTypeID() || v8 == CVPixelBufferGetTypeID())
  {
    goto LABEL_33;
  }

  if (CAMachPortGetTypeID::once[0] != -1)
  {
    dispatch_once(CAMachPortGetTypeID::once, &__block_literal_global_6212);
  }

  if (v8 == CAMachPortGetTypeID::type)
  {
    goto LABEL_33;
  }

  if (CAImageQueueGetTypeID::once[0] != -1)
  {
    dispatch_once(CAImageQueueGetTypeID::once, &__block_literal_global_44_15357);
  }

  if (v8 == CAImageQueueGetTypeID::type)
  {
    goto LABEL_33;
  }

  if (CAIOSurfaceGetTypeID::once != -1)
  {
    dispatch_once(&CAIOSurfaceGetTypeID::once, &__block_literal_global_2576);
  }

  if (v8 == CAIOSurfaceGetTypeID::type)
  {
LABEL_33:
    v14 = objc_opt_class();
    if (v14)
    {
      CodingProxy = [[v14 alloc] initWithObject:a2];
      goto LABEL_35;
    }

LABEL_43:
    v7 = 0;
    goto LABEL_44;
  }

  if ([(objc_object *)v9 isSubclassOfClass:objc_opt_class()]&& debugging_coder(a1))
  {
    CodingProxy = CALayerCreateCodingProxy(v9, a2, v15);
  }

  else
  {
    if (([(objc_object *)a2 conformsToProtocol:&unk_1EF230D10]& 1) != 0)
    {
      goto LABEL_43;
    }

    CodingProxy = *MEMORY[0x1E695E738];
  }

LABEL_35:
  v7 = CodingProxy;
  if (CodingProxy)
  {
    CFDictionarySetValue(AssociatedObject, a2, CodingProxy);
  }

LABEL_44:
  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t debugging_coder(NSCoder *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSCoder *)a1 delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t CALayerCreateCodingProxy(objc_object *a1, objc_class *a2, CALayer *a3)
{
  if (coding_once[0] != -1)
  {
    dispatch_once_f(coding_once, 0, coding_init);
  }

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  if (v5 == self_bundle)
  {
    return 0;
  }

  do
  {
    a1 = [(objc_object *)a1 superclass];
    if (!a1)
    {
      break;
    }

    v6 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  }

  while (v6 != self_bundle);
  v7 = [a1 alloc];

  return [v7 _initWithReference:a2];
}

void encodePathSegment(void *a1, const CGPathElement *a2)
{
  v3 = [[CACGPathCodingSegment alloc] initWithCGPathElement:a2];
  [a1 addObject:v3];
}

void pattern_draw(CGImage *a1, CGContext *a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v6 = 0;
  v7 = 0;
  v8 = Width;

  CGContextDrawImage(a2, *&v6, a1);
}

uint64_t ___ZL26iosurface_property_classesv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  iosurface_property_classes(void)::classes = result;
  return result;
}

uint64_t ___ZL31iosurface_plane_keys_allow_listv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  result = [v0 initWithObjects:{*MEMORY[0x1E696D0B0], *MEMORY[0x1E696D0C8], *MEMORY[0x1E696D090], *MEMORY[0x1E696CFE8], *MEMORY[0x1E696CFE0], *MEMORY[0x1E696D060], *MEMORY[0x1E696D058], *MEMORY[0x1E696CE28], *MEMORY[0x1E696D048], *MEMORY[0x1E696D038], *MEMORY[0x1E696D030], *MEMORY[0x1E696CFF8], *MEMORY[0x1E696D000], *MEMORY[0x1E696CFD8], *MEMORY[0x1E696D0D0], *MEMORY[0x1E696D098], *MEMORY[0x1E696CFF0], *MEMORY[0x1E696D080], *MEMORY[0x1E696D020], *MEMORY[0x1E696D028], *MEMORY[0x1E696D040], 0}];
  iosurface_plane_keys_allow_list(void)::keys = result;
  return result;
}

uint64_t ___ZL25iosurface_keys_allow_listv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  result = [v0 initWithObjects:{*MEMORY[0x1E696CE30], *MEMORY[0x1E696D130], *MEMORY[0x1E696CF58], *MEMORY[0x1E696CFC0], *MEMORY[0x1E696CE58], *MEMORY[0x1E696CE50], *MEMORY[0x1E696CF10], *MEMORY[0x1E696CF08], 0}];
  iosurface_keys_allow_list(void)::keys = result;
  return result;
}

uint64_t ___ZL22iosurface_info_classesv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  iosurface_info_classes(void)::classes = result;
  return result;
}

uint64_t ___ZL24iosurface_property_namesv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  result = [v0 initWithObjects:{*MEMORY[0x1E696CEE0], *MEMORY[0x1E696CF28], *MEMORY[0x1E696CF60], *MEMORY[0x1E696D138], *MEMORY[0x1E696CEC0], *MEMORY[0x1E696D118], *MEMORY[0x1E696CEB0], *MEMORY[0x1E696CF18], *MEMORY[0x1E696CF20], *MEMORY[0x1E696CFB0], *MEMORY[0x1E696CE70], *MEMORY[0x1E696CE68], *MEMORY[0x1E696CEA8], 0}];
  iosurface_property_names(void)::names = result;
  return result;
}

uint64_t create_cgimage_from_iosurface(__IOSurface *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  if (PixelFormat > 1647534391)
  {
    if (PixelFormat != 1647534392)
    {
      v5 = 1999843442;
LABEL_6:
      if (PixelFormat == v5)
      {
        goto LABEL_7;
      }

      v7 = *MEMORY[0x1E69E9AC8];
      v8 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0);
      v9 = v8;
      if (v8 <= 1647534391)
      {
        if (v8 != 1111970369 && v8 != 1380411457)
        {
LABEL_17:
          v9 = 1380411457;
        }
      }

      else if (v8 != 1647534392 && v8 != 1999843442)
      {
        if (v8 == 1999908961)
        {
          v9 = 1647534392;
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_18:
      v16 = xmmword_183E20D70;
      v17 = 1;
      v18 = v7;
      v19 = 0;
      v10 = CA::SurfaceUtil::CAIOSurfaceCreate(Width, Height, v9, 0, 0, 0, 0, &v16, @"CAEncodeIOSurfacesAsCGImages");
      if (!v10)
      {
        return 0;
      }

      v11 = v10;
      if (create_cgimage_from_iosurface(__IOSurface *)::once != -1)
      {
        dispatch_once(&create_cgimage_from_iosurface(__IOSurface *)::once, &__block_literal_global_504);
      }

      v12 = (*(*create_cgimage_from_iosurface(__IOSurface *)::ctx + 728))(create_cgimage_from_iosurface(__IOSurface *)::ctx, 1, 0, 0, v11);
      v13 = (*(*create_cgimage_from_iosurface(__IOSurface *)::ctx + 728))();
      if (v13)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        if (!v12)
        {
          goto LABEL_30;
        }
      }

      else
      {
        (*(*create_cgimage_from_iosurface(__IOSurface *)::ctx + 776))(create_cgimage_from_iosurface(__IOSurface *)::ctx, v12, v13, 1, 0, 0, 0);
        (*(*create_cgimage_from_iosurface(__IOSurface *)::ctx + 456))();
      }

      CA::OGL::Context::release_surface(create_cgimage_from_iosurface(__IOSurface *)::ctx, v12);
LABEL_30:
      if (v13)
      {
        CA::OGL::Context::release_surface(create_cgimage_from_iosurface(__IOSurface *)::ctx, v13);
      }

      v15 = CGImageCreateFromIOSurface();
      if (v11 != a1)
      {
        CFRelease(v11);
      }

      return v15;
    }
  }

  else if (PixelFormat != 1111970369)
  {
    v5 = 1380411457;
    goto LABEL_6;
  }

LABEL_7:

  return CGImageCreateFromIOSurface();
}

void ___Z29create_cgimage_from_iosurfaceP11__IOSurface_block_invoke()
{
  v0 = CAMetalContextCreate();
  create_cgimage_from_iosurface(__IOSurface *)::ctx = CA::OGL::new_metal_context(v0, 0, 0, 0, 0, @"com.apple.coreanimation.CACoding");
}

uint64_t coding_init(void)
{
  result = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  self_bundle = result;
  return result;
}

void cache_release(const __CFAllocator *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef cache_retain(const __CFAllocator *a1, CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  else
  {
    return 0;
  }
}

IMP ___ZL28class_supports_secure_codingP10objc_class_block_invoke(objc_class *a1, const char *a2)
{
  result = class_getMethodImplementation(a1, a2);
  if (result)
  {
    v5 = result;
    Superclass = class_getSuperclass(a1);
    if (Superclass)
    {
      return (class_getMethodImplementation(Superclass, a2) != v5);
    }

    else
    {
      return IMP_BOOSTED;
    }
  }

  return result;
}

void save_iosurface_as_png(__IOSurface *a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  cgimage_from_iosurface = create_cgimage_from_iosurface(a1);
  v5 = cgimage_from_iosurface;
  if (a3)
  {
    Width = CGImageGetWidth(cgimage_from_iosurface);
    Height = CGImageGetHeight(v5);
    ColorSpace = CGImageGetColorSpace(v5);
    v9 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * Width, ColorSpace, 0x2002u);
    transform.b = 0.0;
    transform.c = 0.0;
    transform.a = 1.0;
    *&transform.d = xmmword_183E20F00;
    transform.ty = Height;
    CGContextConcatCTM(v9, &transform);
    v13.size.width = Width;
    v13.origin.x = 0.0;
    v13.origin.y = 0.0;
    v13.size.height = Height;
    CGContextDrawImage(v9, v13, v5);
    Image = CGBitmapContextCreateImage(v9);
    CGImageRelease(v5);
    CGContextRelease(v9);
    v5 = Image;
  }

  CGImageWriteToFile();
  CGImageRelease(v5);
}

id CAEncodeLayerTreeWithInfo(objc_class *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  +[CATransaction begin];
  [CATransaction activateBackground:pthread_main_np() == 0];
  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  +[CATransaction lock];
  v5 = objc_opt_new();
  [v4 setDelegate:v5];
  v6 = objc_opt_class();
  CodingProxy = CALayerCreateCodingProxy(v6, a1, v7);
  v9 = CodingProxy;
  if (CodingProxy)
  {
    v10 = CodingProxy;
  }

  else
  {
    v10 = a1;
  }

  v18[0] = @"rootLayer";
  v18[1] = @"geometryFlipped";
  v19[0] = v10;
  v19[1] = [MEMORY[0x1E696AD98] numberWithBool:{-[objc_class contentsAreFlipped](a1, "contentsAreFlipped")}];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = CAEncodeBackingStores;
  v13 = CAEncodeIOSurfacesAsCGImages;
  v14 = CALayerEncodeAllAnimations;
  CAEncodeBackingStores = 1;
  CAEncodeIOSurfacesAsCGImages = (CAEncodeIOSurfacesAsCGImages | byte_1ED4E9853) & 1;
  CALayerEncodeAllAnimations = 1;
  [v4 encodeObject:v11 forKey:@"root"];
  if (a2)
  {
    [v4 encodeObject:a2 forKey:@"userInfo"];
  }

  v15 = [v4 encodedData];
  +[CATransaction unlock];

  CAEncodeBackingStores = v12;
  CAEncodeIOSurfacesAsCGImages = v13;
  CALayerEncodeAllAnimations = v14;
  +[CATransaction commit];
  objc_autoreleasePoolPop(context);
  return v15;
}