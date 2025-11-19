uint64_t CA::CG::DrawGlyphs::DrawGlyphs(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, CGColor *a5, _OWORD *a6, unint64_t a7)
{
  *CA::CG::DrawOp::DrawOp(a1, a2, a3, a4, a5, 512) = &unk_1EF203DB0;
  Font = CGGStateGetFont();
  *(a1 + 112) = Font;
  if (Font)
  {
    CFRetain(Font);
  }

  CGGStateGetFontSize();
  *(a1 + 120) = v11;
  FontRenderingStyle = CGGStateGetFontRenderingStyle();
  *(a1 + 128) = CGRenderingStateGetFontRenderingStyle() & FontRenderingStyle;
  *(a1 + 132) = CGGStateGetTextDrawingMode();
  v14 = a6[1];
  v13 = a6[2];
  *(a1 + 136) = *a6;
  *(a1 + 152) = v14;
  *(a1 + 168) = v13;
  *(a1 + 184) = a7;
  if (CGGStateGetShouldDrawBitmapRuns())
  {
    *(a1 + 100) |= 0x1000000u;
  }

  if (a7 >= 2)
  {
    *(a1 + 100) |= 0x1000u;
  }

  return a1;
}

uint64_t CA::CG::ContextDelegate::draw_image_(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, CGImage *AlternateImage)
{
  v21 = *MEMORY[0x1E69E9840];
  *&v18 = a1;
  *(&v18 + 1) = a2;
  v19 = a3;
  v20 = a4;
  Info = CGContextDelegateGetInfo();
  if (CGImageIsMask(AlternateImage))
  {
    FillColor = CGGStateGetFillColor();
  }

  else
  {
    FillColor = 0;
  }

  v13 = (*(*Info + 16))(Info);
  if (v13)
  {
    v14 = v13;
    if (CGImageGetEPSRep())
    {
      AlternateImage = CGImageEPSRepGetAlternateImage();
    }

    v15 = CA::CG::Queue::alloc(v14, 168);
    if (v15)
    {
      v16 = v15;
      CA::CG::DrawImage::DrawImage(v15, Info, a6, a7, FillColor, &v18, AlternateImage);
      CA::CG::ContextDelegate::submit(Info, v14, v16, a6, a7);
    }
  }

  return 0;
}

uint64_t CA::CG::ContextDelegate::draw_path_(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const CGPath *a5)
{
  Info = CGContextDelegateGetInfo();
  v10 = (*(*Info + 16))(Info);
  if (v10)
  {
    v11 = v10;
    if (a4 == 2 || ((FillColor = CGGStateGetFillColor(), a4 != 1) ? (v13 = a4 == 4) : (v13 = 1), !v13 ? (v14 = 0) : (v14 = 1), v15 = CA::CG::ContextDelegate::fill_path(Info, v11, a2, a3, FillColor, a5, v14, 1, 0, 1, 1), CA::CG::ContextDelegate::submit(Info, v11, v15, a2, a3), a4 >= 2))
    {
      StrokeColor = CGGStateGetStrokeColor();
      v17 = CA::CG::ContextDelegate::stroke_path(Info, v11, a2, a3, StrokeColor, a5, 1);
      CA::CG::ContextDelegate::submit(Info, v11, v17, a2, a3);
    }
  }

  return 0;
}

uint64_t CA::CG::ContextDelegate::draw_rects_(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5, unint64_t a6)
{
  if (a6)
  {
    Info = CGContextDelegateGetInfo();
    v12 = (*(*Info + 16))(Info);
    if (v12)
    {
      v13 = v12;
      if (a4 == 2 || (FillColor = CGGStateGetFillColor(), v15 = CA::CG::ContextDelegate::fill_rects(Info, v13, a2, a3, FillColor, a5, a6, 0, 1), CA::CG::ContextDelegate::submit(Info, v13, v15, a2, a3), a4 >= 2))
      {
        StrokeColor = CGGStateGetStrokeColor();
        v17 = CA::CG::ContextDelegate::stroke_rects(Info, v13, a2, a3, StrokeColor, a5, a6, 0);
        CA::CG::ContextDelegate::submit(Info, v13, v17, a2, a3);
      }
    }
  }

  return 0;
}

void CA::CG::ContextDelegate::draw_lines_(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, unint64_t a5)
{
  if (a5)
  {
    Info = CGContextDelegateGetInfo();
    StrokeColor = CGGStateGetStrokeColor();
    v11 = (*(*Info + 16))(Info);
    if (v11)
    {
      v12 = v11;
      v13 = CA::CG::ContextDelegate::draw_lines(Info, v11, a2, a3, StrokeColor, a4, a5, 0);

      CA::CG::ContextDelegate::submit(Info, v12, v13, a2, a3);
    }
  }
}

double CA::CG::ContextDelegate::get_transform_@<D0>(uint64_t a1@<X8>)
{
  Info = CGContextDelegateGetInfo();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0x3FF0000000000000;
  *(a1 + 24) = xmmword_183E20F00;
  result = -*(Info + 28);
  *(a1 + 40) = result;
  return result;
}

int8x16_t CA::CG::ContextDelegate::get_bounds_()
{
  Info = CGContextDelegateGetInfo();
  if (*(Info + 24) <= *(Info + 28))
  {
    v3 = *(Info + 28);
  }

  else
  {
    v3 = *(Info + 24);
  }

  v1.i32[0] = 1073741822;
  v2.i32[0] = v3;
  v4 = vdupq_lane_s32(*&vcgtq_s32(v2, v1), 0);
  v5 = *(Info + 16);
  v6.i64[0] = v5;
  v6.i64[1] = SHIDWORD(v5);
  return vbslq_s8(v4, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v6));
}

uint64_t CA::CG::ContextDelegate::finalize_()
{
  result = CGContextDelegateGetInfo();
  if (result)
  {
    v1 = *(*result + 8);

    return v1();
  }

  return result;
}

void CA::CG::ContextDelegate::device_color(CA::CG::ContextDelegate *this, const double *a2, float64x2_t *a3, float a4, float a5, CGColorSpace *a6)
{
  v8 = a6;
  v47 = *MEMORY[0x1E69E9840];
  if (a4 <= 1.0)
  {
    goto LABEL_13;
  }

  v12 = 0;
  while (colorspaces[v12] != a6)
  {
    if (++v12 == 39)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  v12 = v12;
LABEL_7:
  if (((0xFFFAF57B7uLL >> v12) & 1) == 0)
  {
    v8 = CAGetColorSpace(extended_colorspaces[v12]);
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  if (CGColorSpaceGetModel(a6) != kCGColorSpaceModelRGB)
  {
    goto LABEL_13;
  }

  Extended = CGColorSpaceCreateExtended(v8);
  v14 = Extended;
  if (Extended)
  {
    v8 = Extended;
  }

LABEL_14:
  v46 = 0uLL;
  Model = CGColorSpaceGetModel(v8);
  if (Model)
  {
    if (Model != kCGColorSpaceModelRGB)
    {
      if (Model == kCGColorSpaceModelPattern)
      {
        *this = 1006648320;
        _H0 = COERCE_UNSIGNED_INT(1.0);
        *(this + 2) = COERCE_UNSIGNED_INT(1.0);
        goto LABEL_56;
      }

      v27 = 0;
      goto LABEL_45;
    }

    *v46.f32 = vcvt_f32_f64(*a3);
    v17 = a3[1].f64[0];
    v46.f32[2] = v17;
    v18 = 3;
  }

  else
  {
    v19 = a3->f64[0];
    v46.f32[1] = v19;
    v46.f32[2] = v19;
    v46.f32[0] = v19;
    v18 = 1;
  }

  v20 = a3->f64[v18];
  v46.f32[3] = v20;
  v21 = *(a2 + 38);
  if (!v21)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v22 = malloc_type_zone_malloc(malloc_zone, 0x70uLL, 0x165299FDuLL);
    v21 = v22;
    if (v22)
    {
      CA::ColorProgram::Cache::Cache(v22, *(a2 + 4));
    }

    *(a2 + 38) = v21;
  }

  if (a4 > 1.0 && (a5 == 0.0 || a5 > 1.0))
  {
    v23 = (a2 + 5);
    v24 = *(a2 + 5);
    if (!v24)
    {
      v25 = 0;
      v26 = *(a2 + 4);
      while (colorspaces[v25] != v26)
      {
        if (++v25 == 39)
        {
          v25 = 0;
          goto LABEL_36;
        }
      }

      v25 = v25;
LABEL_36:
      if ((0xFFFAF57B7uLL >> v25))
      {
        if (CGColorSpaceGetModel(v26) == kCGColorSpaceModelRGB)
        {
          v24 = CGColorSpaceCreateExtended(*(a2 + 4));
          v29 = *(a2 + 5);
          if (v29)
          {
            CFRelease(v29);
          }

          *v23 = v24;
          goto LABEL_43;
        }
      }

      else
      {
        v28 = CAGetColorSpace(extended_colorspaces[v25]);
        X::CFRef<CGColorSpace *>::operator=(a2 + 5, v28);
      }

      v24 = *v23;
    }

LABEL_43:
    CA::ColorProgram::Cache::set_colorspace(v21, v24);
    v21 = *(a2 + 38);
  }

  v27 = CA::ColorProgram::Cache::push_whippet_cache(v21, v8, a4, a5, 0, 0);
  if ((CA::ColorProgram::Cache::convert_color(*(a2 + 38), v8, v46.f32, v30) & 1) == 0)
  {
LABEL_45:
    if (CARetainColorTransform(*(a2 + 4)))
    {
      NumberOfComponents = CGColorSpaceGetNumberOfComponents(v8);
      CGColorTransformConvertColorComponents();
      CGColorTransformRelease();
      v32.f64[0] = 0.0;
      v32.f64[1] = a3->f64[NumberOfComponents];
      _Q0 = vcvt_hight_f32_f64(vcvt_f32_f64(0), v32);
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }
    }

    v46 = _Q0;
  }

  v38 = *(a2 + 38);
  if (v38)
  {
    if (v27)
    {
      CA::ColorProgram::Cache::pop_whippet_cache(v38);
      v38 = *(a2 + 38);
    }

    CA::ColorProgram::Cache::set_colorspace(v38, *(a2 + 4));
  }

  v39 = CGColorSpaceGetModel(*(a2 + 4));
  v41 = v46.f32[2];
  v40 = v46.f32[1];
  _S3 = v46.i32[3];
  if (v39 == kCGColorSpaceModelMonochrome)
  {
    v41 = v46.f32[0];
    v40 = v46.f32[0];
  }

  _S0 = v46.f32[3] * v46.f32[0];
  _S1 = v40 * v46.f32[3];
  _S2 = v41 * v46.f32[3];
  __asm { FCVT            H0, S0 }

  *this = LOWORD(_S0);
  __asm { FCVT            H0, S1 }

  *(this + 1) = LOWORD(_S0);
  __asm { FCVT            H0, S2 }

  *(this + 2) = LOWORD(_S0);
  __asm { FCVT            H0, S3 }

LABEL_56:
  *(this + 3) = _H0;
  if (v14)
  {
    CFRelease(v14);
  }
}

CA::Render *CA::WindowServer::IOSurface::reload_edr_factor(CA::WindowServer::IOSurface *this)
{
  result = (*(*this + 168))(this);
  if (result)
  {
    v4.n128_f32[0] = CA::Render::iosurface_get_edr_factor(result, v3);
    v5 = *(*this + 208);

    return v5(this, v4);
  }

  return result;
}

BOOL CA::WindowServer::IOSurface::clear_iosurface(CA::WindowServer::IOSurface *this, CA::WindowServer::Surface *a2, __int16 a3, float64x2_t *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = (*(*a2 + 168))(a2);
  v9 = *(this + 1);
  if (v9)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v12 = v7;
  v13 = a3 & 0x1000;
  v14 = *(this + 2);
  if (byte_1ED4E987C == 1)
  {
    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }

    v40 = x_log_get_sharedevent(void)::log;
    if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v41 = (*(*this + 168))(this);
      ID = IOSurfaceGetID(v41);
      v43 = *(this + 2);
      LODWORD(keys) = 67109376;
      HIDWORD(keys) = ID;
      LOWORD(v55) = 2048;
      *(&v55 + 2) = v43;
      _os_log_debug_impl(&dword_183AA6000, v40, OS_LOG_TYPE_DEBUG, "IOSurfaceID: 0x%x  clear_iosurface (DST) SharedEvent: %p", &keys, 0x12u);
    }
  }

  v15 = 0;
  if (v14)
  {
    v16 = 192;
  }

  else
  {
    v16 = 128;
  }

  while (*(v9 + v15 + 352) != v16)
  {
    v15 += 16;
    if (v15 == 64)
    {
      goto LABEL_15;
    }
  }

  v17 = *(v9 + v15 + 344);
  if (v17)
  {
    goto LABEL_26;
  }

LABEL_15:
  v53 = 0;
  v47 = 0;
  valuePtr = 255;
  v46 = 0;
  v18 = *MEMORY[0x1E69A85D8];
  v57 = 0;
  keys = v18;
  values = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *&v55 = *MEMORY[0x1E69A85F0];
  cf = CFNumberCreate(0, kCFNumberIntType, &v47);
  *(&v55 + 1) = *MEMORY[0x1E69A85E8];
  v51 = CFNumberCreate(0, kCFNumberIntType, &v46 + 4);
  v56 = *MEMORY[0x1E69A85E0];
  v52 = CFNumberCreate(0, kCFNumberIntType, &v46);
  if (v13)
  {
    v19 = 4;
  }

  else
  {
    v57 = *MEMORY[0x1E69A8510];
    v53 = *MEMORY[0x1E695E4D0];
    v19 = 5;
  }

  v20 = CFDictionaryCreate(0, &keys, &values, v19, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = v20;
  if (v14)
  {
    Count = CFDictionaryGetCount(v20);
    MutableCopy = CFDictionaryCreateMutableCopy(0, Count + 3, v17);
    CFRelease(v17);
    v17 = MutableCopy;
  }

  v23 = *(v9 + 392);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = (v9 + 392);
  v25 = -3;
  do
  {
    *v24 = *(v24 - 1);
    --v24;
  }

  while (!__CFADD__(v25++, 1));
  *(v9 + 344) = v17;
  *(v9 + 352) = v16;
  *(v9 + 356) = 0;
  CFRelease(values);
  CFRelease(cf);
  CFRelease(v51);
  CFRelease(v52);
LABEL_26:
  v27 = CA::WindowServer::Display::copy_iosa_manager(v9, v8);
  v28 = *(v27 + 16);
  v29 = (*(*this + 168))(this);
  if (!v28)
  {
    v11 = 0;
LABEL_48:
    CA::IOSAManager::unref(v27);
    return v11;
  }

  v30 = v29;
  v45 = v13;
  if (a4)
  {
    v44 = vmovn_s64(vcvtq_u64_f64(*a4));
    v31 = a4[1].f64[1];
    Width = a4[1].f64[0];
    Height = v31;
  }

  else
  {
    Width = IOSurfaceGetWidth(v29);
    Height = IOSurfaceGetHeight(v30);
    v44 = 0;
  }

  v34 = Width;
  if (IOSurfaceGetWidth(v12) < Width)
  {
    v34 = IOSurfaceGetWidth(v12);
  }

  v35 = Height;
  if (IOSurfaceGetHeight(v12) < Height)
  {
    v35 = IOSurfaceGetHeight(v12);
  }

  if (v14)
  {
    CA::WindowServer::dict_shared_event_set_value(v17, v14, 0, 0);
  }

  keys = 0;
  v55 = __PAIR64__(v35, v34);
  values = v44;
  cf = __PAIR64__(Height, Width);
  v51 = 0;
  v36 = IOSurfaceAcceleratorBlitSurface();
  v11 = v36 == 0;
  if (v36)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v37 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(keys) = 67109120;
      HIDWORD(keys) = v36;
      _os_log_error_impl(&dword_183AA6000, v37, OS_LOG_TYPE_ERROR, "IOSurfaceAcceleratorBlitSurface returned: 0x%x", &keys, 8u);
      if (!v14)
      {
        goto LABEL_47;
      }
    }

    else if (!v14)
    {
      goto LABEL_47;
    }

    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }

    v38 = x_log_get_sharedevent(void)::log;
    if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(keys) = 0;
      _os_log_error_impl(&dword_183AA6000, v38, OS_LOG_TYPE_ERROR, "clear_iosurface error, ensure shared event signal is complete for destination", &keys, 2u);
    }

    CA::CASharedEvent::force_complete(v14, [v14[4] signaledValue] + 1, 0, 1);
  }

LABEL_47:
  if (v36 | v45)
  {
    goto LABEL_48;
  }

  return v11;
}

uint64_t CA::WindowServer::IOSurface::unlock(uint64_t this)
{
  v2 = *(this + 280) - 1;
  *(this + 280) = v2;
  if (!v2)
  {
    v3 = this;
    IOSurfaceUnlock(*(this + 264), 0, 0);
    v4 = *(v3 + 264);

    return MEMORY[0x1EEDC8750](v4);
  }

  return this;
}

uint64_t CA::WindowServer::IOSurface::lock(CA::WindowServer::IOSurface *this, unsigned __int8 **a2, unint64_t *a3)
{
  v6 = *(this + 70);
  *(this + 70) = v6 + 1;
  if (v6 || !IOSurfaceLock(*(this + 33), 0, 0))
  {
    *a2 = IOSurfaceGetBaseAddress(*(this + 33));
    *a3 = IOSurfaceGetBytesPerRow(*(this + 33));
    return 1;
  }

  else
  {
    result = 0;
    --*(this + 70);
  }

  return result;
}

void CA::WindowServer::IOSurface::copy_avd_histogram_info(IOSurfaceRef *this, const CA::WindowServer::Surface *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 && this[33] && (*(*a2 + 168))(a2))
  {
    v4 = (*(*a2 + 168))(a2);
    v5 = IOSurfaceCopyValue(v4, @"kIOSurfacePixelMetadata");
    if (v5)
    {
      v6 = v5;
      IOSurfaceSetValue(this[33], @"kIOSurfacePixelMetadata", v5);

      CFRelease(v6);
      return;
    }

    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v7 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v8 = "Failed to copy avd histogram info, missing histogram";
      v9 = &v10;
LABEL_17:
      _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    }
  }

  else
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v7 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "Failed to copy avd histogram info, invalid buffer";
      v9 = buf;
      goto LABEL_17;
    }
  }
}

void CA::WindowServer::IOSurface::copy_hdr10_plus_metadata(IOSurfaceRef *this, const CA::WindowServer::Surface *a2)
{
  if (a2)
  {
    if (this[33])
    {
      if ((*(*a2 + 168))(a2))
      {
        if ((*(*a2 + 40))(a2) == 16)
        {
          v4 = (*(*a2 + 168))(a2);
          v5 = IOSurfaceCopyValue(v4, @"HDR10PlusData");
          if (v5)
          {
            v6 = v5;
            IOSurfaceSetValue(this[33], @"HDR10PlusData", v5);

            CFRelease(v6);
          }
        }
      }
    }
  }
}

uint64_t CA::WindowServer::IOSurface::set_ycbcr_matrix(uint64_t this, int a2)
{
  if (*(this + 288) != a2)
  {
    *(this + 288) = a2;
    return IOSurfaceSetYCbCrMatrix();
  }

  return this;
}

uint64_t CA::WindowServer::IOSurface::ycbcr_matrix(CA::WindowServer::IOSurface *this)
{
  result = *(this + 72);
  if (result == -1)
  {
    v3 = (this + 288);
    if (IOSurfaceGetYCbCrMatrix())
    {
      result = 0;
      *v3 = 0;
    }

    else
    {
      return *v3;
    }
  }

  return result;
}

CA::WindowServer::Surface *CA::WindowServer::IOSurface::allocate_iosurface(CA::WindowServer::IOSurface *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, const __CFString *theString1)
{
  v31 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  (*(*a1 + 192))(&v28);
  block = v28;
  v26 = v29;
  v27 = v30;
  v18 = CA::SurfaceUtil::CAIOSurfaceCreate(a2, a3, a4, a7, 0, a8, a9, &block, theString1);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  if (BYTE11(xmmword_1ED4E980C) != 1)
  {
    if (!a5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  IOSurfaceGetID(v18);
  IOSurfaceGetProtectionOptions();
  IOSurfaceGetAllocSize(v19);
  kdebug_trace();
  if (a5)
  {
LABEL_4:
    IOSurfaceSetYCbCrMatrix();
  }

LABEL_5:
  v20 = CA::WindowServer::IOSurface::wrap_buffer(a1, v19, 0, 1);
  v21 = v20;
  if (v20)
  {
    *(v20 + 236) |= 0x2000000uLL;
    (*(*v20 + 32))(v20, a5);
    (*(*v21 + 72))(v21, a6, 0);
    *(v21 + 236) = (a8 << 22) & 0x1000000 | (((a8 >> 1) & 1) << 29) | (((a8 >> 5) & 1) << 28) | ((a8 & 1) << 34) | *(v21 + 236) & 0xFFFFFFFBCEFFFFFFLL;
    if (a8)
    {
      IOSurfaceSetValue(v19, @"CAWindowServerSurface", *MEMORY[0x1E695E4D0]);
    }

    if (theString1)
    {
      CFRetain(theString1);
      *(v21 + 32) = theString1;
    }

    if (!*(v21 + 2))
    {
      v22 = *(v21 + 1);
      if (v22)
      {
        v23 = *(v22 + 312);
        if (!v23)
        {
          v23 = CAMetalContextCreate();
          *(v22 + 312) = v23;
        }

        if (CADeviceIsVirtualized::once[0] != -1)
        {
          dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
        }

        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 0x40000000;
        *&v26 = __CADeviceUseSharedEvents_block_invoke;
        *(&v26 + 1) = &__block_descriptor_tmp_401;
        LOBYTE(v27) = CADeviceIsVirtualized::is_virtualized ^ 1;
        if (CADeviceUseSharedEvents::once != -1)
        {
          dispatch_once(&CADeviceUseSharedEvents::once, &block);
        }

        if (CADeviceUseSharedEvents::ca_shared_event_enabled && [v23 supportsFamily:1007])
        {
          operator new();
        }
      }
    }
  }

  else
  {
    CFRelease(v19);
  }

  return v21;
}

uint64_t ___ZN2CA14CAPSEProcessor16needs_processingEv_block_invoke()
{
  result = objc_opt_class();
  CA::CAPSEProcessor::needs_processing(void)::has_class = result != 0;
  return result;
}

atomic_uint *CA::CAPSEProcessor::process_surface(id *this, atomic_uint *a2, double a3, float a4, float a5)
{
  v8 = a2;
  v39[3] = *MEMORY[0x1E69E9840];
  if ([*this canProcessSurface:*(a2 + 16)])
  {
    v10 = 0;
    v11 = (this + 1);
    for (i = 1; i != 4; ++i)
    {
      v13 = this[i];
      if (v13)
      {
        if (v8[4] == *(v13 + 4) && v8[5] == *(v13 + 5) && (v14 = (*(*v8 + 256))(v8), v15 = (*(*this[i] + 256))(), v13 = this[i], v14 == v15))
        {
          if (*(v13 + 2) == 1 && !IOSurfaceIsInUse(*(v13 + 16)))
          {
            v10 = this[i];
          }
        }

        else
        {
          if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v13 + 16))(v13);
          }

          this[i] = 0;
        }
      }
    }

    if (!v10)
    {
      v16 = MEMORY[0xFFFFFC020] >> 9;
      v17 = v8[4];
      v18 = v8[5];
      v19 = (*(*v8 + 256))(v8);
      iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(0x52476841, v17, v18, v16 & 4, v19, @"CA PSE Surface", v20);
      if (!iosurface_with_pixel_format)
      {
        return 0;
      }

      v22 = iosurface_with_pixel_format;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v23 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
      v10 = v23;
      if (v23)
      {
        CA::Render::Surface::Surface(v23, v22, -1, 127, 0, 0, 0);
      }

      *(v10 + 3) |= v8[3] & 0xFFFFFF00;
      CFRelease(v22);
      for (j = 0; j != 3; ++j)
      {
        if (!*&v11[8 * j])
        {
          j = j;
          goto LABEL_30;
        }
      }

      v25 = *v11;
      if (atomic_fetch_add((*v11 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v25 + 16))(v25);
      }

      j = 0;
LABEL_30:
      *&v11[8 * j] = v10;
    }

    if (!IOSurfaceGetBulkAttachments())
    {
      IOSurfaceSetBulkAttachments2();
    }

    v27 = IOSurfaceCopyAllValues(*(v8 + 16));
    if (v27)
    {
      v28 = v27;
      IOSurfaceSetValues(*(v10 + 16), v27);
      CFRelease(v28);
      IOSurfaceSetValue(*(v10 + 16), *MEMORY[0x1E696CF98], @"CA PSE Surface");
    }

    if (a5 <= 1.0)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = 1.0 / a5;
    }

    v30 = *this;
    v31 = *(v8 + 16);
    v32 = *(v10 + 16);
    v38[0] = @"sourceSurfaceEDR";
    v33 = MEMORY[0x1E696AD98];
    (*(*v8 + 168))(v8);
    v39[0] = [v33 numberWithFloat:?];
    v38[1] = @"displayMaxNits";
    *&v34 = a4;
    v39[1] = [MEMORY[0x1E696AD98] numberWithFloat:v34];
    v38[2] = @"displayEDRFactor";
    *&v35 = v29;
    v39[2] = [MEMORY[0x1E696AD98] numberWithFloat:v35];
    [v30 processSourceSurface:v31 withTimestamp:v32 toDestinationSurface:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v39, v38, 3), a3}];
    CA::Render::Surface::reload_iosurface_color_attributes(v10, 0x7E);
    if ((*(*v8 + 176))(v8))
    {
      v36 = 8;
    }

    else
    {
      v36 = 0;
    }

    *(v10 + 184) = *(v10 + 184) & 0xFFF7 | v36;
    if (!atomic_fetch_add(v10 + 2, 1u))
    {
      atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
    }

    return v10;
  }

  else
  {
    v26 = v8 + 2;
    if (!atomic_fetch_add(v8 + 2, 1u))
    {
      v8 = 0;
      atomic_fetch_add(v26, 0xFFFFFFFF);
    }
  }

  return v8;
}

os_log_t ___Z17x_log_get_flattenv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "FlattenCache");
  x_log_get_flatten(void)::log = result;
  return result;
}

BOOL CA::Render::FlattenedSurface::can_reuse_surface(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (byte_1ED4E9874)
  {
    return 0;
  }

  if (*(a2 + 8) == [*a1 width] && *(a2 + 12) == objc_msgSend(*a1, "height") && objc_msgSend(*a1, "protectionOptions") == a3 && *(a1 + 8) == a4)
  {
    return *(a1 + 16) == a5;
  }

  return 0;
}

void CA::Render::FlattenedCacheEntry::~FlattenedCacheEntry(CA::Render::FlattenedCacheEntry *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    if (*v2)
    {
      CFRelease(*v2);
    }

    MEMORY[0x1865EA9A0](v2, 0x10C0C40A700AEF1);
  }

  v3 = *(this + 21);
  if (v3)
  {
    CA::Shape::unref(v3);
  }

  v4 = *(this + 22);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 24);
  if (v5)
  {
    CA::Render::HitTestTree::unref(v5);
  }

  v6 = *(this + 33);
  if (v6)
  {
    CFRelease(v6);
  }
}

void CA::Render::FlattenManager::stage_entry(CA::Render::FlattenManager *this, CA::Render::LayerNode *a2, CA::Render::Update *a3)
{
  if ((*(a2 + 344) & 1) == 0)
  {
    v5 = *(this + 4);
    if (*(v5 + 112) || (v11 = *(v5 + 136)) != 0 && (v12 = *v11) != 0 && (v13 = *(v12 + 12), v13 <= 0x2Au) && ((0x60080000000uLL >> v13) & 1) != 0)
    {
      v6 = CA::Render::FlattenManager::flatten_cache_current_memory;
      if (CA::Render::FlattenManager::flatten_cache_max_memory_size(void)::once != -1)
      {
        dispatch_once(&CA::Render::FlattenManager::flatten_cache_max_memory_size(void)::once, &__block_literal_global_12);
      }

      if (v6 <= CA::Render::FlattenManager::flatten_cache_max_memory_size(void)::max_memory)
      {
        if (!CA::Render::FlattenManager::flattened_cache)
        {
          CA::Render::FlattenManager::flattened_cache = x_hash_table_new_(0, 0, 0, 0, 0, 0);
        }

        v7 = *(*(*(this + 4) + 152) + 72);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v8 = malloc_type_zone_malloc(malloc_zone, 0x118uLL, 0x165299FDuLL);
        v9 = v8;
        if (v8)
        {
          *(v8 + 15) = 0u;
          *(v8 + 16) = 0u;
          *(v8 + 13) = 0u;
          *(v8 + 14) = 0u;
          *(v8 + 11) = 0u;
          *(v8 + 12) = 0u;
          *(v8 + 9) = 0u;
          *(v8 + 10) = 0u;
          *(v8 + 7) = 0u;
          *(v8 + 8) = 0u;
          *(v8 + 5) = 0u;
          *(v8 + 6) = 0u;
          *(v8 + 3) = 0u;
          *(v8 + 4) = 0u;
          *(v8 + 1) = 0u;
          *(v8 + 2) = 0u;
          *v8 = 0u;
          *(v8 + 12) = xmmword_183E20F10;
          *(v8 + 7) = 1065353216;
          *(v8 + 40) = xmmword_183E20F20;
          *(v8 + 7) = 0;
          *(v8 + 63) = 0;
          *(v8 + 68) = 0x100000001;
          *(v8 + 76) = 0u;
          *(v8 + 92) = 0u;
          v8[108] = 0;
          *(v8 + 28) = 1065353216;
          *(v8 + 124) = 0;
          *(v8 + 116) = 0;
          *(v8 + 33) = -1;
          *(v8 + 136) = 0u;
          *(v8 + 152) = 0u;
          *(v8 + 168) = 0u;
          *(v8 + 184) = 0u;
          *(v8 + 200) = 0u;
          *(v8 + 216) = 0u;
          *(v8 + 232) = 0u;
          *(v8 + 31) = 0;
          *(v8 + 64) = 1065353216;
          *(v8 + 33) = 0;
          *(v8 + 34) = 0;
          v10 = 1;
          *(v8 + 270) = 0;
        }

        else
        {
          v10 = MEMORY[0xF0] | 1;
        }

        *(v8 + 60) = v10;
        *(v8 + 23) = this;
        v14 = *(*(this + 4) + 136);
        if (v14)
        {
          v15 = *v14;
          if (v15)
          {
            if (*(v15 + 12) == 63)
            {
              *(v8 + 28) = *(v15 + 16);
            }
          }
        }

        if (x_hash_table_lookup(CA::Render::FlattenManager::flattened_cache, v7, 0))
        {
          __assert_rtn("stage_entry", "render-flatten-cache.cpp", 374, "!flattened_cache->lookup (cache_id)");
        }

        hash_table_modify(CA::Render::FlattenManager::flattened_cache, v7, v9, 0);
        *(*(*(this + 4) + 152) + 12) |= 0x2000u;
        ++*(v9 + 248);
        *(this + 19) = v9;
        v16 = *(a2 + 80);
        atomic_fetch_add(this + 4, 1u);
        *(a2 + 80) = x_list_prepend(v16, this);
        *(this + 3) |= 0x800000000uLL;
      }
    }
  }
}

void CA::Render::FlattenManager::delete_entry(CA::Render::FlattenManager *this, CA::Render::Handle *a2)
{
  v3 = x_hash_table_remove(CA::Render::FlattenManager::flattened_cache, *(this + 18));
  if (v3)
  {
    v4 = v3;
    CA::Render::FlattenManager::send_did_change_flatten(v3, 0);
    if (*(v4 + 62))
    {
      *(v4 + 60) |= 2u;
    }

    else
    {
      CA::Render::FlattenManager::add_free_surface_to_pool(*(v4 + 25));
      CA::Render::FlattenedCacheEntry::~FlattenedCacheEntry(v4);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v4);
    }
  }

  *(this + 3) &= ~0x2000u;
}

void CA::Render::FlattenManager::restage_entry(CA::Render::FlattenManager *this, CA::Render::LayerNode *a2, CA::Render::Update *a3)
{
  v5 = *(this + 4);
  if (*(v5 + 112) || (v14 = *(v5 + 136)) != 0 && (v15 = *v14) != 0 && (v16 = *(v15 + 12), v16 <= 0x2Au) && ((0x60080000000uLL >> v16) & 1) != 0)
  {
    v6 = CA::Render::FlattenManager::flatten_cache_current_memory;
    if (CA::Render::FlattenManager::flatten_cache_max_memory_size(void)::once != -1)
    {
      dispatch_once(&CA::Render::FlattenManager::flatten_cache_max_memory_size(void)::once, &__block_literal_global_12);
    }

    if (v6 <= CA::Render::FlattenManager::flatten_cache_max_memory_size(void)::max_memory)
    {
      v7 = *(this + 4);
      if ((*(v7 + 46) & 0x40) != 0 || (*(a2 + 1382) & 4) == 0)
      {
        v8 = *(*(v7 + 152) + 72);
        v9 = x_hash_table_lookup(CA::Render::FlattenManager::flattened_cache, v8, 0);
        if ((*(a2 + 344) & 1) == 0)
        {
          v10 = v9;
          v11 = *(v9 + 240);
          v12 = *(v9 + 248);
          if (v11)
          {
            v17 = v12 + 1;
          }

          else
          {
            if (v12)
            {
              *(v9 + 240) = v11 | 2;
              x_hash_table_remove(CA::Render::FlattenManager::flattened_cache, v8);
              *(*(*(this + 4) + 152) + 12) &= ~0x2000u;
              CA::Render::FlattenManager::send_did_change_flatten(v10, 0);

              CA::Render::FlattenManager::stage_entry(this, a2, v13);
              return;
            }

            v17 = 1;
          }

          *(v9 + 240) = v11 | 1;
          *(v9 + 184) = this;
          *(v9 + 248) = v17;
          *(this + 19) = v9;
          v18 = *(a2 + 80);
          atomic_fetch_add(this + 4, 1u);
          *(a2 + 80) = x_list_prepend(v18, this);
          *(this + 3) |= 0x800000000uLL;
        }
      }
    }
  }
}

void CA::Render::FlattenManager::send_did_change_flatten(CA::Render::FlattenManager *this, const CA::Render::FlattenedCacheEntry *a2)
{
  v2 = a2;
  v15 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Context::context_by_id(*(this + 58));
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 260);
    v7 = *(this + 28);
    v10 = *MEMORY[0x1E69E99E0];
    v11 = v7;
    v12 = v2;
    v13 = 0;
    v14 = 0;
    *&msg.msgh_bits = 19;
    msg.msgh_voucher_port = 0;
    msg.msgh_id = 40417;
    msg.msgh_remote_port = v6;
    msg.msgh_local_port = 0;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&msg);
    }

    if ((mach_msg(&msg, 17, 0x2Cu, 0, 0, 0, 0) - 268435459) <= 1)
    {
      if ((msg.msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
      }

      mach_msg_destroy(&msg);
    }

    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      v8 = *(*v5 + 16);

      v8(v5);
    }
  }
}

double ___ZN2CA6Render14FlattenManager29flatten_cache_max_memory_sizeEv_block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v1 = 8;
  v2[0] = 0;
  sysctlbyname("hw.memsize_physical", v2, &v1, 0, 0);
  result = vcvts_n_f32_u64(v2[0], 0x1EuLL) * 50000000.0;
  CA::Render::FlattenManager::flatten_cache_max_memory_size(void)::max_memory = result;
  return result;
}

void **CA::Render::FlattenManager::add_free_surface_to_pool(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (!v2)
    {
      __assert_rtn("add_free_surface_to_pool", "render-flatten-cache.cpp", 1294, "surf->surf");
    }

    v3 = [v2 allocatedSize];
    CA::Render::FlattenManager::flatten_cache_current_memory -= v3;
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (*&dword_1ED4E9768)
    {
      if (*&dword_1ED4E9768 <= 5)
      {
        v4 = *&dword_1ED4E9768;
      }

      else
      {
        v4 = 5;
      }

      v6 = CA::Render::FlattenManager::flattened_free_surface_pool[0];
      v5 = off_1EA84E760[0];
      v7 = off_1EA84E760[0] - CA::Render::FlattenManager::flattened_free_surface_pool[0];
      if (v7 >= v4)
      {
        while (v5 > v6)
        {
          v8 = *(v5 - 1);
          off_1EA84E760[0] = v5 - 1;
          if (!v8)
          {
            __assert_rtn("add_free_surface_to_pool", "render-flatten-cache.cpp", 1308, "oldest_surf");
          }

          if (*v8)
          {
            CFRelease(*v8);
          }

          MEMORY[0x1865EA9A0](v8, 0x10C0C40A700AEF1);
          v6 = CA::Render::FlattenManager::flattened_free_surface_pool[0];
          v5 = off_1EA84E760[0];
          v7 = off_1EA84E760[0] - CA::Render::FlattenManager::flattened_free_surface_pool[0];
          if (v7 < v4)
          {
            goto LABEL_16;
          }
        }

LABEL_24:
        __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
      }
    }

    else
    {
      v6 = CA::Render::FlattenManager::flattened_free_surface_pool[0];
      v5 = off_1EA84E760[0];
      v7 = off_1EA84E760[0] - CA::Render::FlattenManager::flattened_free_surface_pool[0];
      v4 = 5;
    }

LABEL_16:
    if (v7 == v4)
    {
      if (v5 <= v6)
      {
        goto LABEL_24;
      }

      v9 = *(v5 - 1);
      off_1EA84E760[0] = v5 - 1;
      if (!v9)
      {
        __assert_rtn("add_free_surface_to_pool", "render-flatten-cache.cpp", 1319, "oldest_surf");
      }

      if (*v9)
      {
        CFRelease(*v9);
      }

      MEMORY[0x1865EA9A0](v9, 0x10C0C40A700AEF1);
    }

    [*v1 setResponsibleProcess:getpid()];
    operator new();
  }

  return result;
}

void X::small_vector_base<CA::Render::FlattenedSurface *>::grow(unint64_t a1)
{
  v1 = CA::Render::FlattenManager::flattened_free_surface_pool[0];
  v2 = off_1EA84E760[0];
  v3 = off_1EA84E768;
  v4 = (qword_1EA84E770 + 1) | ((qword_1EA84E770 + 1) >> 1) | (((qword_1EA84E770 + 1) | ((qword_1EA84E770 + 1) >> 1)) >> 2);
  v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
  v6 = v5 | (v5 >> 16) | ((v5 | (v5 >> 16)) >> 32);
  if (v6 + 1 > a1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = a1;
  }

  v8 = malloc_type_malloc(8 * v7, 0x2004093837F09uLL);
  v9 = v8;
  v10 = CA::Render::FlattenManager::flattened_free_surface_pool[0];
  v11 = off_1EA84E760[0];
  if (CA::Render::FlattenManager::flattened_free_surface_pool[0] != off_1EA84E760[0])
  {
    v12 = v8;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
    }

    while (v10 != v11);
  }

  if (v1 != v3)
  {
    free(CA::Render::FlattenManager::flattened_free_surface_pool[0]);
  }

  CA::Render::FlattenManager::flattened_free_surface_pool[0] = v9;
  off_1EA84E760[0] = (v9 + v2 - v1);
  qword_1EA84E770 = v7;
}

uint64_t CA::Render::FlattenManager::flattened_cache_retain_surface(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
  v6 = *(a1 + 152);
  v7 = *(v6 + 200);
  if (!v7)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = [*v7 protectionOptions];
  if (v8 > (*(*a2 + 144))(a2))
  {
    if (x_log_get_flatten(void)::once != -1)
    {
      dispatch_once(&x_log_get_flatten(void)::once, &__block_literal_global_10425);
    }

    v9 = x_log_get_flatten(void)::log;
    if (os_log_type_enabled(x_log_get_flatten(void)::log, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "!!! Trying to reuse a protected flatten surface in lower protection level framebuffer. This is okay only if you have always-flatten debug option enabled. Otherwise, it's a bug !! ", &v14, 2u);
    }

    goto LABEL_7;
  }

  v12 = (*(*a2 + 720))(a2, *a3, a3[1], **(v6 + 200), *(*(v6 + 200) + 8));
  v10 = v12;
  if (v12)
  {
    *(v12 + 88) = *(v6 + 256);
    v13 = *(v6 + 264);
    *(v10 + 32) = v13;
    if (v13)
    {
      CFRetain(v13);
    }
  }

LABEL_8:
  os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
  return v10;
}

void CA::Render::FlattenManager::flattened_cache_add_surface(uint64_t a1, id *a2, _OWORD *a3)
{
  os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
  if (!*a2)
  {
    __assert_rtn("flattened_cache_add_surface", "render-flatten-cache.cpp", 1130, "surf->surf");
  }

  v6 = *(a1 + 152);
  v7 = *(v6 + 200);
  if (v7)
  {
    CA::Render::FlattenManager::add_free_surface_to_pool(v7);
    v8 = *(v6 + 200);
    if (v8)
    {
      if (*v8)
      {
        CFRelease(*v8);
      }

      MEMORY[0x1865EA9A0](v8, 0x10C0C40A700AEF1);
    }
  }

  v9 = [*a2 allocatedSize];
  CA::Render::FlattenManager::flatten_cache_current_memory += v9;
  *(v6 + 200) = a2;
  *(v6 + 152) = *a3;

  os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
}

uint64_t std::__function::__value_func<void ()(unsigned int,CA::Render::FlattenedCacheEntry *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t X::HashTable<unsigned int,CA::Render::FlattenedCacheEntry *>::foreach(std::function<void ()(unsigned int,CA::Render::FlattenedCacheEntry *)>)::{lambda(void *,void *,void *)#1}::__invoke(int a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v5 = a2;
  v3 = *(a3 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void std::__function::__func<CA::Render::FlattenManager::flattened_cache_dump_surfaces(CA::OGL::Context &)::$_0,std::allocator<CA::Render::FlattenManager::flattened_cache_dump_surfaces(CA::OGL::Context &)::$_0>,void ()(unsigned int,CA::Render::FlattenedCacheEntry *)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  if (*a3 && (*(v3 + 240) & 1) == 0 && *(v3 + 200))
  {
    bzero(__str, 0x400uLL);
    v5 = *(v3 + 176);
    if (v5)
    {
      v6 = (v5 + 28);
    }

    else
    {
      v6 = "";
    }

    snprintf(__str, 0x400uLL, "ctx-%x_%s(%d)", *(v3 + 232), v6, **(a1 + 8));
    v7 = (*(**(a1 + 16) + 720))();
    CA::OGL::export_surface(*(a1 + 16), v7, __str);
    CA::OGL::Context::release_surface(*(a1 + 16), v7);
  }
}

__n128 std::__function::__func<CA::Render::FlattenManager::flattened_cache_dump_surfaces(CA::OGL::Context &)::$_0,std::allocator<CA::Render::FlattenManager::flattened_cache_dump_surfaces(CA::OGL::Context &)::$_0>,void ()(unsigned int,CA::Render::FlattenedCacheEntry *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF1FD0D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

char *std::__function::__func<CA::Render::FlattenManager::flattened_cache_print_all_flattened_entries(x_stream_struct *)::$_0,std::allocator<CA::Render::FlattenManager::flattened_cache_print_all_flattened_entries(x_stream_struct *)::$_0>,void ()(unsigned int,CA::Render::FlattenedCacheEntry *)>::operator()(char *result, uint64_t a2, uint64_t *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  if (*a3)
  {
    if ((*(v3 + 240) & 1) == 0)
    {
      v4 = *(v3 + 200);
      if (v4)
      {
        v5 = result;
        ++**(result + 1);
        **(result + 2) += [*v4 allocatedSize];
        v6 = *(v3 + 168);
        v11 = 0;
        v12 = 0;
        if (v6)
        {
          CA::Shape::get_bounds(v6, &v11);
          v10 = v11;
          v9 = HIDWORD(v11);
          v8 = v12;
          v7 = HIDWORD(v12);
        }

        else
        {
          v7 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
        }

        return X::Stream::printf(**(v5 + 3), "\x1B[38;5;49m(ctx-%x pid-%x uid-%x)\x1B[0m\n   * \x1B[38;5;121mshapes \x1B[0m[bounds: %d %d %d %d] [opaque: %d %d %d %d] [dod: %d %d %d %d]\n   * \x1B[38;5;121mflags \x1B[0m[prot: %d] [handle: %d] [disable: %d]\n   * \x1B[38;5;121msurface \x1B[0m[%d x %d] [%dMB] [prot: %d] [options: %d]\n\n", *(v3 + 232), *(v3 + 236), *(v3 + 224), *(v3 + 136), *(v3 + 140), *(v3 + 144), *(v3 + 148), v10, v9, v8, v7, *(v3 + 152), *(v3 + 156), *(v3 + 160), *(v3 + 164), *(v3 + 272), *(v3 + 208), *(v3 + 244), [**(v3 + 200) width], objc_msgSend(**(v3 + 200), "height"), objc_msgSend(**(v3 + 200), "allocatedSize") / 0xF4240uLL, objc_msgSend(**(v3 + 200), "protectionOptions"), *(*(v3 + 200) + 16));
      }
    }
  }

  return result;
}

__n128 std::__function::__func<CA::Render::FlattenManager::flattened_cache_print_all_flattened_entries(x_stream_struct *)::$_0,std::allocator<CA::Render::FlattenManager::flattened_cache_print_all_flattened_entries(x_stream_struct *)::$_0>,void ()(unsigned int,CA::Render::FlattenedCacheEntry *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF1FD120;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void CA::CG::FillEllipse::draw_shape(CA::CG::FillEllipse *this, CA::OGL::Context **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(this + 25);
  if (v3)
  {
    v7 = *(this + 14);
    v6 = *(this + 15);
    v17 = v7;
    v18 = v6;
    v9 = *(this + 16);
    v8 = *(this + 17);
    v19 = v9;
    v20 = v8;
    if (v9 < 0.0)
    {
      v7 = v9 + v7;
      v9 = -v9;
      v17 = v7;
      v19 = v9;
    }

    if (v8 < 0.0)
    {
      v6 = v8 + v6;
      v8 = -v8;
      v18 = v6;
      v20 = v8;
    }

    v10 = (v3 & 4) == 0;
    v11 = 11;
    if (v10)
    {
      v11 = 4;
    }

    v12 = &a2[v11];
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    if (v9 != v8)
    {
      v16 = vmlaq_n_f64(vmlaq_n_f64(v15, v13, v7), v14, v6);
      v14 = vmulq_n_f64(v14, v8 / v9);
      v15 = vmlsq_lane_f64(vmlsq_lane_f64(v16, v13, v7, 0), v14, v6, 0);
      v20 = v9;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    v25 = 0;
    CA::Transform::set_affine(v21, v13.f64[0], v13.f64[1], v14.f64[0], v14.f64[1], v15.f64[0], v15.f64[1]);
    *(&v22 + 1) = &v17;
    *&v23 = v21;
    *(&v23 + 1) = 0xFF0020003FLL;
    v25 = 0;
    v24 = 0uLL;
    CA::OGL::fill_round_rect(a2[1], &v22 + 1, 0xF, 0, v9 * 0.5, v9 * 0.5);
  }

  else
  {
    v4 = CA::CG::Renderer::retain_simple_path(a2, (this + 112), 0);
    if (v4)
    {
      v5 = v4;
      CA::CG::fill_path(a2);

      CGPathRelease(v5);
    }
  }
}

void *CA::CG::FillEllipse::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (result)
  {
    result = CA::CG::DrawPathShadow::DrawPathShadow(result, a2, a1, a4, a5, a3, *(a1 + 100) & 4 | 0x80u);
    *result = &unk_1EF1FD2F8;
  }

  return result;
}

CGPathRef CA::CG::FillEllipseShadow::retain_path(uint64_t a1, CA::CG::Renderer *this, CGPoint *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 144);
  v4 = *(v3 + 128);
  v6.origin = *(v3 + 112);
  *a3 = v6.origin;
  v6.origin = 0uLL;
  v6.size = vmulq_f64(vrndaq_f64(vmulq_f64(v4, vdupq_n_s64(0x40F0000000000000uLL))), vdupq_n_s64(0x3EF0000000000000uLL));
  return CA::CG::Renderer::retain_simple_path(this, &v6, 0);
}

void CA::CG::FillEllipseShadow::~FillEllipseShadow(CA::CG::FillEllipseShadow *this)
{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::CG::FillEllipse::compute_dod_corners(uint64_t a1, float64x2_t *a2)
{
  v2 = *(a1 + 128);
  v3 = vcltzq_f64(v2);
  v4 = vbslq_s8(v3, vaddq_f64(v2, *(a1 + 112)), *(a1 + 112));
  v5 = vaddq_f64(vbslq_s8(v3, vnegq_f64(v2), v2), v4);
  v3.i64[0] = *&v5.f64[0];
  v3.i64[1] = *&v4.f64[1];
  *a2 = v4;
  a2[1] = v3;
  v4.f64[1] = v5.f64[1];
  a2[2] = v5;
  a2[3] = v4;
  if ((*(a1 + 100) & 4) == 0)
  {
    v6 = 0;
    v7 = (a1 + 48);
    v8 = (a1 + 32);
    v9 = (a1 + 16);
    v10 = (a1 + 40);
    v11 = (a1 + 24);
    v12 = (a1 + 8);
    v13 = vld1q_dup_f64(v12);
    v14 = vld1q_dup_f64(v11);
    v15 = vld1q_dup_f64(v10);
    v16 = vld1q_dup_f64(v9);
    v17 = vld1q_dup_f64(v8);
    v18 = vld1q_dup_f64(v7);
    do
    {
      f64 = a2[v6].f64;
      v21 = vld2q_f64(f64);
      v22.val[0] = vmlaq_f64(vmlaq_f64(v15, v21.val[0], v13), v21.val[1], v14);
      v22.val[1] = vmlaq_f64(vmlaq_f64(v18, v21.val[0], v16), v21.val[1], v17);
      vst2q_f64(f64, v22);
      v6 += 2;
    }

    while (v6 != 4);
  }

  return 1;
}

double CA::CG::FillEllipse::compute_dod(CA::CG::FillEllipse *this, float64x2_t *a2)
{
  result = CA::Rect::operator=(a2->f64, this + 14);
  if ((*(this + 100) & 4) == 0)
  {

    *&result = *&CA::Rect::apply_transform(a2, (this + 8));
  }

  return result;
}

void CA::CG::FillEllipse::~FillEllipse(CA::CG::FillEllipse *this)
{
  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::CG::StrokeEllipse::draw_shape(CA::CG::StrokeEllipse *this, CA::CG::Renderer *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 20))
  {
    goto LABEL_6;
  }

  v4 = *(this + 16);
  v5 = *(this + 17);
  v6 = v4 - v5;
  if (v4 - v5 < 0.0)
  {
    v6 = v5 - v4;
  }

  if (v6 > 0.001 || (v7 = *(this + 25), CA::CG::DrawOp::shape_line_width(this, a2, *(this + 18)), v8 < 0.0))
  {
LABEL_6:

    CA::CG::StrokeEllipse::draw_shape_as_path(this, a2);
  }

  else
  {
    v10 = v8;
    if (v8 >= 0.001)
    {
      v11 = 88;
      if ((v7 & 4) == 0)
      {
        v11 = 32;
      }

      v13 = *(this + 14);
      v12 = *(this + 15);
      v24.f64[0] = v13;
      v24.f64[1] = v12;
      v25.f64[0] = v4;
      v25.f64[1] = v5;
      if (v4 < 0.0)
      {
        v24.f64[0] = v4 + v13;
        v25.f64[0] = -v4;
      }

      if (v5 < 0.0)
      {
        v24.f64[1] = v5 + v12;
        v25.f64[1] = -v5;
      }

      v14 = v10 * 0.5;
      v15 = v25.f64[1];
      if (v25.f64[0] > v25.f64[1])
      {
        v15 = v25.f64[0];
      }

      if (v15 < 1.79769313e308)
      {
        v9.i64[0] = 0;
        __asm { FMOV            V4.2D, #-2.0 }

        v21 = vmlsq_lane_f64(v25, _Q4, v14, 0);
        v22 = vclezq_f64(v21);
        v24 = vaddq_f64(v24, vdupq_lane_s64(COERCE__INT64(-v14), 0));
        v25 = vandq_s8(v21, vdupq_lane_s64(vmvnq_s8(vcgtq_s64(v9, vorrq_s8(vdupq_laneq_s64(v22, 1), v22))).i64[0], 0));
      }

      v30 = 0;
      v23 = v14 + v4 * 0.5;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      memset(v26, 0, sizeof(v26));
      CA::Transform::set_affine(v26, *(a2 + v11), *(a2 + v11 + 8), *(a2 + v11 + 16), *(a2 + v11 + 24), *(a2 + v11 + 32), *(a2 + v11 + 40));
      *(&v27 + 1) = &v24;
      *&v28 = v26;
      DWORD2(v28) = 2097215;
      HIDWORD(v28) = (v7 << 31 >> 31);
      v30 = 0;
      v29 = 0uLL;
      CA::OGL::stroke_round_rect(*(a2 + 1), &v27 + 1, 0xF, 0, v23, v10);
    }
  }
}

void CA::CG::StrokeEllipse::draw_shape_as_path(CA::CG::StrokeEllipse *this, CA::CG::Renderer *a2)
{
  v4 = CA::CG::Renderer::retain_simple_path(a2, (this + 112), 0);
  if (v4)
  {
    v5 = v4;
    CA::CG::stroke_path(a2, v4, 0, this + 8, this + 144);

    CGPathRelease(v5);
  }
}

void *CA::CG::StrokeEllipse::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (result)
  {
    result = CA::CG::DrawPathShadow::DrawPathShadow(result, a2, a1, a4, a5, a3, *(a1 + 100) & 4 | 0x80u);
    *result = &unk_1EF1FD3E0;
  }

  return result;
}

uint64_t CA::CG::StrokeEllipseShadow::retain_path(uint64_t a1, CA::CG::Renderer *this, CGPoint *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 144);
  v4 = *(v3 + 128);
  v9.origin = *(v3 + 112);
  *a3 = v9.origin;
  v9.origin = 0uLL;
  v9.size = vmulq_f64(vrndaq_f64(vmulq_f64(v4, vdupq_n_s64(0x40F0000000000000uLL))), vdupq_n_s64(0x3EF0000000000000uLL));
  v5 = CA::CG::Renderer::retain_simple_path(this, &v9, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  stroked_path = CA::CG::create_stroked_path(v5, (v3 + 8), v3 + 144, (*(v3 + 100) & 4) != 0);
  CGPathRelease(v6);
  return stroked_path;
}

void CA::CG::StrokeEllipseShadow::~StrokeEllipseShadow(CA::CG::StrokeEllipseShadow *this)
{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

float64x2_t CA::CG::StrokeEllipse::compute_dod(CA::CG::StrokeEllipse *this, float64x2_t *a2)
{
  CA::Rect::operator=(a2->f64, this + 14);
  if ((*(this + 100) & 4) == 0)
  {
    CA::Rect::apply_transform(a2, (this + 8));
  }

  result.f64[0] = a2[1].f64[1];
  if (a2[1].f64[0] > result.f64[0])
  {
    result.f64[0] = a2[1].f64[0];
  }

  if (result.f64[0] < 1.79769313e308)
  {
    v16 = a2[1];
    v5.f64[0] = CA::CG::stroke_radius(this + 144, *(this + 8), *(this + 24));
    v6.i64[0] = 0;
    v5.f64[1] = v7;
    v8 = vsubq_f64(*a2, v5);
    __asm { FMOV            V3.2D, #2.0 }

    v14 = vmlaq_f64(v16, _Q3, v5);
    v15 = vclezq_f64(v14);
    result = vandq_s8(v14, vdupq_lane_s64(vmvnq_s8(vcgtq_s64(v6, vorrq_s8(vdupq_laneq_s64(v15, 1), v15))).i64[0], 0));
    *a2 = v8;
    a2[1] = result;
  }

  return result;
}

void CA::CG::StrokeEllipse::~StrokeEllipse(CA::CG::StrokeEllipse *this)
{
  *this = &unk_1EF1FD230;
  if (*(this + 20))
  {
    CGDashRelease();
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1FD230;
  if (*(this + 20))
  {
    CGDashRelease();
  }

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::OGL::ImagingNode::set_surface_origin(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

float CA::OGL::MaskCorners::corner_contents_texcoord(CA::OGL::MaskCorners *this, unsigned int a2, const float *a3, float *a4)
{
  v4 = 0.0;
  v5 = 0.0;
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    v5 = *(this + 28) + *(this + 26);
  }

  *a4 = v5;
  if (a2 >= 2)
  {
    v4 = *(this + 29) + *(this + 27);
  }

  a4[1] = v4;
  v6 = 1.0;
  v7 = 1.0;
  if ((a2 & 0xFFFFFFFD) == 0)
  {
    v7 = *(this + 26);
  }

  a4[2] = v7;
  if (a2 <= 1)
  {
    v6 = *(this + 27);
  }

  a4[3] = v6;
  *a4 = *a3 + ((a3[2] - *a3) * v5);
  a4[1] = a3[1] + ((a3[3] - a3[1]) * v4);
  a4[2] = *a3 + ((a3[2] - *a3) * v7);
  result = a3[1] + ((a3[3] - a3[1]) * v6);
  a4[3] = result;
  return result;
}

void CA::OGL::LayerNode::prepare_sublayers_sdf_blending(CA::OGL::LayerNode *this, CA::Shape **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  for (i = *(this + 31); i; i = *i)
  {
    CA::OGL::LayerNode::prepare_sublayers_sdf_blending(*(i + 21), a2);
    v5 = *(*(i + 2) + 192);
    v6 = *(*(i + 2) + 200);
    v7 = HIDWORD(v5);
    v15 = v5;
    if (SDWORD2(v5) <= SHIDWORD(v5))
    {
      v8 = HIDWORD(v5);
    }

    else
    {
      v8 = v6;
    }

    if (SDWORD2(v5) >= SHIDWORD(v5))
    {
      v9 = HIDWORD(v5);
    }

    else
    {
      v9 = v6;
    }

    if (v8 <= 1073741822 && v9 >= 1)
    {
      v11 = -i[26];
      *&v15 = vadd_s32(*&v5, vdup_n_s32(v11));
      v6 -= 2 * v11;
      v7 = HIDWORD(v5) - 2 * v11;
      *(&v15 + 1) = __PAIR64__(v7, v6);
      if (v6 < 1 || v7 <= 0)
      {
        v7 = 0;
        v6 = 0;
        *(&v15 + 1) = 0;
      }
    }

    v13 = *a2;
    if (*a2)
    {
      if (v13 != 1)
      {
        goto LABEL_26;
      }
    }

    else if (*(v13 + 1) != 6)
    {
      goto LABEL_26;
    }

    if (v6 < v7)
    {
      v7 = v6;
    }

    if (v7 >= 1)
    {
      v14 = i[10] & 0xFFFFFF3F | 0x80;
LABEL_28:
      *(i + 10) = v14;
      goto LABEL_29;
    }

LABEL_26:
    if (!CA::Shape::intersects(v13, &v15))
    {
      v14 = i[10] & 0xFFFFFFBF;
      goto LABEL_28;
    }

LABEL_29:
    CA::shape_union(a2, &v15, v4);
  }
}

void CA::OGL::LayerNode::merge_sdf_element_layers(uint64_t a1, uint64_t a2)
{
  v175 = *MEMORY[0x1E69E9840];
  v3 = v174;
  memset(v174, 0, sizeof(v174));
  v170 = v174;
  v171 = v174;
  v172 = v174;
  v173 = 5;
  v4 = *(*(a1 + 168) + 248);
  if (v4)
  {
    do
    {
      if ((*(v4 + 36) & 0x80) != 0 && (*(a1 + 33) & 4) != 0)
      {
        v6 = v4[3];
        v7 = *(v6 + 17);
        if (v7)
        {
          v7 = *v7;
        }

        if (!*(v7 + 17) && !*(v7 + 16))
        {
          *v167 = 0u;
          v168 = 0u;
          CA::Render::Layer::frame(v167, v6, *(a1 + 24));
          v152 = v168;
          v155 = *v167;
          X::small_vector_base<CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame>::reserve(&v170, 1 - 0x5555555555555555 * ((v171 - v170) >> 4));
          v8 = v171;
          *v171 = v155;
          *(v8 + 1) = v152;
          *(v8 + 4) = v4;
          *(v8 + 10) = 0;
          v171 = v8 + 48;
        }
      }

      else
      {
        CA::OGL::LayerNode::merge_sdf_element_layers(v4, a2);
      }

      v4 = *v4;
    }

    while (v4);
    v9 = v170;
    v3 = v171;
  }

  else
  {
    v9 = v174;
  }

  memset(v169, 0, sizeof(v169));
  v167[0] = v169;
  v167[1] = v169;
  *&v168 = v169;
  *(&v168 + 1) = 4;
  v164 = 0u;
  *__p = 0u;
  v166 = 1065353216;
  if (v9 == v3)
  {
    v142 = 0;
    goto LABEL_190;
  }

  v10 = 0x9E3779B97F4A7C17;
  v143 = vdup_n_s32(0x38D1B717u);
  do
  {
    v11 = v9[2].n128_u64[0];
    v167[1] = v167[0];
    if (__p[1])
    {
      v12 = __p[0];
      if (__p[0])
      {
        do
        {
          v13 = *v12;
          operator delete(v12);
          v12 = v13;
        }

        while (v13);
      }

      __p[0] = 0;
      v14 = *(&v164 + 1);
      if (*(&v164 + 1))
      {
        v15 = 0;
        do
        {
          *(v164 + 8 * v15++) = 0;
        }

        while (v14 != v15);
      }

      __p[1] = 0;
      v3 = v171;
    }

    if (*(v11 + 37))
    {
      goto LABEL_185;
    }

    v16 = v9[1];
    v156 = v16;
    v159 = *v9;
    v160 = v16;
    v17 = vcvt_f32_f64(v159);
    for (i = v9 + 3; i != v3; i += 3)
    {
      if ((*(i[2].n128_u64[0] + 37) & 1) == 0)
      {
        i[2].n128_f32[2] = vaddv_f32(vabd_f32(vcvt_f32_f64(*i), v17));
        X::small_vector_base<CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame>::reserve(v167, 0xAAAAAAAAAAAAAAABLL * ((v167[1] - v167[0]) >> 4) + 1);
        v19 = v167[1];
        *v167[1] = *i;
        v16 = i[1];
        v19[1] = v16;
        v20 = i[2].n128_u64[0];
        v19[2].n128_u32[2] = i[2].n128_u32[2];
        v19[2].n128_u64[0] = v20;
        v167[1] = &v19[3];
        v3 = v171;
      }
    }

    v21 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v167[1] - v167[0]) >> 4));
    if (v167[1] == v167[0])
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    std::__introsort<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *,false>(v167[0], v167[1], v22, 1, v16);
    v25 = *(*(v11 + 24) + 136);
    v145 = 0.0;
    if (v25)
    {
      v26 = *(v25 + 72);
      v27 = v156;
      if (v26)
      {
        v28 = v26[3];
        v29 = v26[5];
        v150 = v28;
        v151 = v29;
        v30 = v26[7];
        v31 = v26[9];
        v145 = v31;
      }

      else
      {
        v30 = *(v25 + 232);
        v145 = v30;
        v150 = v30;
        v151 = v30;
      }
    }

    else
    {
      v30 = 0.0;
      v150 = 0.0;
      v151 = 0.0;
      v27 = v156;
    }

    v32 = v167[0];
    if (v167[0] == v167[1])
    {
      v118 = 0;
      goto LABEL_142;
    }

    v149 = v30;
    v144 = v17;
    *&v23 = v27.n128_u64[1];
    v33 = v159.f64[1];
    v34 = v159.f64[1];
    v35 = v159.f64[1];
    v36 = 2;
    do
    {
      v37 = *(v32 + 4);
      v38 = *(v32 + 1);
      v39 = *(*(v37 + 24) + 136);
      v40 = 0.0;
      if (!v39)
      {
        goto LABEL_50;
      }

      v41 = *(v39 + 72);
      if (!v41)
      {
        v40 = *(v39 + 232);
LABEL_50:
        v44 = v40;
        v43 = v40;
        v42 = v40;
        goto LABEL_51;
      }

      v42 = v41[3];
      v43 = v41[5];
      v44 = v41[7];
      v40 = v41[9];
      if (v42 == v43 && v43 == v44 && v44 == v40)
      {
        v40 = v41[3];
        v44 = v40;
        v43 = v40;
      }

LABEL_51:
      v47 = *v32;
      v48 = v27.n128_f64[0];
      v49 = v38.f64[0];
      if (vabds_f32(v48, v49) >= 1.0001)
      {
        v52 = 0;
      }

      else
      {
        v50 = v159.f64[0];
        v51 = v47.f64[0];
        v52 = vabds_f32(v50, v51) < 1.0001;
      }

      v53 = *&v23;
      v54 = *(v32 + 3);
      v55 = v38.f64[1];
      if (vabds_f32(v53, v55) >= 1.0001)
      {
        v58 = 0;
      }

      else
      {
        v56 = v35;
        v57 = v47.f64[1];
        v58 = vabds_f32(v56, v57) < 1.0001;
      }

      if (!v52 && !v58)
      {
        goto LABEL_129;
      }

      if (v52)
      {
        *&v24 = v47.f64[0];
        *(&v24 + 1) = v38.f64[0];
        v59 = *(v32 + 1);
        v60 = v34 - (v38.f64[1] + v47.f64[1]);
        v61 = v47.f64[1] - (*&v23 + v34);
        v62 = 0;
        if (fabsf(v60) < fabsf(v61))
        {
          v63 = v145;
          if (v149 > v145)
          {
            v63 = v149;
          }

          v35 = v34;
          v64 = v42;
          v65 = v43;
          goto LABEL_74;
        }

        v63 = v151;
        if (v150 > v151)
        {
          v63 = v150;
        }

        v35 = v34;
        v64 = v44;
LABEL_70:
        v65 = v40;
        goto LABEL_74;
      }

      v59 = *(v32 + 1);
      *&v24 = v47.f64[1];
      *(&v24 + 1) = v38.f64[1];
      v66 = v159.f64[0] - (v38.f64[0] + v47.f64[0]);
      v67 = v47.f64[0] - (v27.n128_f64[0] + v159.f64[0]);
      if (fabsf(v66) < fabsf(v67))
      {
        v63 = v149;
        if (v150 > v149)
        {
          v63 = v150;
        }

        v62 = 1;
        v64 = v43;
        goto LABEL_70;
      }

      v63 = v145;
      if (v151 > v145)
      {
        v63 = v151;
      }

      v62 = 1;
      v64 = v42;
      v65 = v44;
LABEL_74:
      if (v64 <= v65)
      {
        v64 = v65;
      }

      v68 = (*(a2 + 140) * 0.5) + ((v64 + v63) * -0.01 + -0.09) * (v64 + v63);
      v69 = v159.f64[0];
      v70 = v47.f64[0] + v38.f64[0];
      v71 = v68 + 0.0001;
      if (vabds_f32(v69, v70) >= v71)
      {
        v73 = v33;
        v74 = v59 + v38.f64[1];
        v78 = vabds_f32(v73, v74) < v71;
        v75 = v47.f64[0];
        v76 = v159.f64[0] + v27.n128_f64[0];
        v77 = vabds_f32(v75, v76);
        v78 = v78 || v77 < v71;
        if (v78)
        {
          v72 = v33;
          v34 = v33;
          v35 = v33;
        }

        else
        {
          v27.n128_u64[0] = *&v160.f64[0];
          v111 = vclezq_f64(v160);
          if ((vorrq_s8(vdupq_laneq_s64(v111, 1), v111).u64[0] & 0x8000000000000000) != 0 || (v112 = vclezq_f64(v38), (vorrq_s8(vdupq_laneq_s64(v112, 1), v112).u64[0] & 0x8000000000000000) != 0))
          {
            v114 = 0;
            v72 = v33;
          }

          else
          {
            v113 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(v159, v160), vaddq_f64(v47, v38)), vmaxnmq_f64(v159, v47)));
            v114 = vorrq_s8(vdupq_laneq_s64(v113, 1), v113).i64[0] >= 0;
            v72 = v159.f64[1];
          }

          v115 = v59;
          v116 = v33 + *&v23;
          *&v23 = v160.f64[1];
          v117 = vabds_f32(v115, v116) >= v71 && !v114;
          v34 = v72;
          v35 = v72;
          if (v117)
          {
            v33 = v72;
            v34 = v72;
            v35 = v72;
            goto LABEL_129;
          }
        }
      }

      else
      {
        v72 = v33;
      }

      v79 = vdup_n_s32(0x461C4000u);
      v33 = v72;
      if (v36 != 2)
      {
        goto LABEL_87;
      }

      v146 = v24;
      v147 = *v32;
      v148 = *(v32 + 1);
      if (!v52)
      {
        v81.f64[0] = v159.f64[1];
        *&v81.f64[1] = v23;
        v161 = vcvt_s32_f32(vmul_f32(vcvt_f32_f64(v81), v79));
        v162 = v62;
        v163 = 1;
        std::__hash_table<std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,std::__unordered_map_hasher<CA::OGL::BoundsAlignment,std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,CA::OGL::BoundsAlignmentHash,std::equal_to<CA::OGL::BoundsAlignment>,true>,std::__unordered_map_equal<CA::OGL::BoundsAlignment,std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,std::equal_to<CA::OGL::BoundsAlignment>,CA::OGL::BoundsAlignmentHash,true>,std::allocator<std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>>>::__emplace_unique_key_args<CA::OGL::BoundsAlignment,std::pair<CA::OGL::BoundsAlignment const,unsigned long>>(&v164, &v161);
        v35 = v159.f64[1];
        v34 = v159.f64[1];
        v33 = v159.f64[1];
        v47 = v147;
        v38 = v148;
        v24 = v146;
LABEL_90:
        v27.n128_u64[0] = *&v160.f64[0];
        v82 = vclezq_f64(v160);
        v83 = vclezq_f64(v38);
        v84 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v83, v82), vzip2q_s64(v83, v82))));
        *&v23 = v160.f64[1];
        v85 = v84.i8[0];
        if (v84.i8[4])
        {
          v86 = v47;
          v87 = v38;
          if (v85)
          {
LABEL_128:
            v36 = v62;
            goto LABEL_129;
          }

LABEL_95:
          v159 = v86;
          v160 = v87;
          *&v23 = v87.f64[1];
          v27.n128_u64[0] = *&v87.f64[0];
        }

        else if ((v84.i8[0] & 1) == 0)
        {
          v86 = vminnmq_f64(v159, v47);
          v87 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v159, v160), vaddq_f64(v47, v38)), v86);
          goto LABEL_95;
        }

        v33 = v159.f64[1];
        v88 = *&v23 + v159.f64[1];
        v89 = v54 + v47.f64[1];
        if (vabds_f32(v88, v89) < 1.0001)
        {
          v27.n128_u64[0] = *&v160.f64[0];
          v90 = v159.f64[0];
          v91 = v47.f64[0];
          if (vabds_f32(v90, v91) >= 1.0001)
          {
            v92 = v150;
          }

          else
          {
            v92 = v42;
          }

          v93 = v160.f64[0] + v159.f64[0];
          v94 = vaddq_f64(v38, v47).f64[0];
          v78 = vabds_f32(v93, v94) < 1.0001;
          v95 = v151;
          if (v78)
          {
            v95 = v43;
          }

          v150 = v92;
          v151 = v95;
        }

        v96 = v159.f64[1];
        v97 = v47.f64[1];
        if (vabds_f32(v96, v97) < 1.0001)
        {
          v27.n128_u64[0] = *&v160.f64[0];
          v98 = v159.f64[0];
          v99 = v47.f64[0];
          v78 = vabds_f32(v98, v99) < 1.0001;
          v100 = v149;
          if (v78)
          {
            v100 = v44;
          }

          v149 = v100;
          v101 = v160.f64[0] + v159.f64[0];
          v102 = vaddq_f64(v38, v47).f64[0];
          if (vabds_f32(v101, v102) < 1.0001)
          {
            v145 = v40;
          }
        }

        v103 = vcvt_s32_f32(vmul_f32(*&v24, v79));
        if (*(&v164 + 1))
        {
          v104 = (v10 + v103.i32[1] + (v103.i32[0] << 6) + (v103.i32[0] >> 2)) ^ v103.i32[0];
          v105 = (v62 + v10 + (v104 << 6) + (v104 >> 2)) ^ v104;
          v106 = vcnt_s8(*(&v164 + 8));
          v106.i16[0] = vaddlv_u8(v106);
          if (v106.u32[0] > 1uLL)
          {
            v107 = v105;
            if (v105 >= *(&v164 + 1))
            {
              v107 = v105 % *(&v164 + 1);
            }
          }

          else
          {
            v107 = v105 & (*(&v164 + 1) - 1);
          }

          v108 = *(v164 + 8 * v107);
          if (v108)
          {
            for (j = *v108; j; j = *j)
            {
              v110 = j[1];
              if (v110 == v105)
              {
                if (*(j + 6) == v62 && j[2] == *&v103)
                {
                  ++j[4];
                  goto LABEL_127;
                }
              }

              else
              {
                if (v106.u32[0] > 1uLL)
                {
                  if (v110 >= *(&v164 + 1))
                  {
                    v110 %= *(&v164 + 1);
                  }
                }

                else
                {
                  v110 &= *(&v164 + 1) - 1;
                }

                if (v110 != v107)
                {
                  break;
                }
              }
            }
          }
        }

        v161 = v103;
        v162 = v62;
        v163 = 1;
        v154 = v23;
        v158 = v27.n128_u64[0];
        std::__hash_table<std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,std::__unordered_map_hasher<CA::OGL::BoundsAlignment,std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,CA::OGL::BoundsAlignmentHash,std::equal_to<CA::OGL::BoundsAlignment>,true>,std::__unordered_map_equal<CA::OGL::BoundsAlignment,std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,std::equal_to<CA::OGL::BoundsAlignment>,CA::OGL::BoundsAlignmentHash,true>,std::allocator<std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>>>::__emplace_unique_key_args<CA::OGL::BoundsAlignment,std::pair<CA::OGL::BoundsAlignment const,unsigned long>>(&v164, &v161);
        v23 = v154;
        v27.n128_u64[0] = v158;
LABEL_127:
        *(v37 + 32) |= 0x10000000000uLL;
        *(v11 + 32) |= 0x30000000000uLL;
        v34 = v159.f64[1];
        v35 = v159.f64[1];
        goto LABEL_128;
      }

      v80.f64[0] = v159.f64[0];
      v153 = v23;
      v157 = v160.f64[0];
      v80.f64[1] = v160.f64[0];
      v161 = vcvt_s32_f32(vmul_f32(vcvt_f32_f64(v80), v79));
      v162 = 0;
      v163 = 1;
      std::__hash_table<std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,std::__unordered_map_hasher<CA::OGL::BoundsAlignment,std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,CA::OGL::BoundsAlignmentHash,std::equal_to<CA::OGL::BoundsAlignment>,true>,std::__unordered_map_equal<CA::OGL::BoundsAlignment,std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,std::equal_to<CA::OGL::BoundsAlignment>,CA::OGL::BoundsAlignmentHash,true>,std::allocator<std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>>>::__emplace_unique_key_args<CA::OGL::BoundsAlignment,std::pair<CA::OGL::BoundsAlignment const,unsigned long>>(&v164, &v161);
      v23 = v153;
      v27.n128_f64[0] = v157;
      v36 = 0;
      v33 = v159.f64[1];
      v34 = v159.f64[1];
      v35 = v159.f64[1];
      v47 = v147;
      v38 = v148;
      v24 = v146;
LABEL_87:
      if (v36 == v62)
      {
        goto LABEL_90;
      }

LABEL_129:
      v32 += 48;
    }

    while (v32 != v167[1]);
    v118 = v36 == 0;
    v17 = v144;
    v30 = v149;
LABEL_142:
    if (__p[1] < 2)
    {
      goto LABEL_184;
    }

    v119 = __p[0];
    if (!__p[0])
    {
      goto LABEL_184;
    }

    v120 = v10;
    v121 = 0;
    v122 = __p[0];
    while (2)
    {
      v123 = v122[4];
      v124 = v122;
      if (v123 > v121)
      {
        goto LABEL_150;
      }

      if (v123 >= v121)
      {
        v124 = v119;
        v123 = v121;
LABEL_150:
        v128 = *v122;
        v119 = v124;
        v121 = v123;
        goto LABEL_176;
      }

      v125 = *(&v164 + 1);
      v126 = v122[1];
      v127 = vcnt_s8(*(&v164 + 8));
      v127.i16[0] = vaddlv_u8(v127);
      if (v127.u32[0] > 1uLL)
      {
        if (v126 >= *(&v164 + 1))
        {
          v126 %= *(&v164 + 1);
        }
      }

      else
      {
        v126 &= *(&v164 + 1) - 1;
      }

      v128 = *v122;
      v129 = *(v164 + 8 * v126);
      do
      {
        v130 = v129;
        v129 = *v129;
      }

      while (v129 != v122);
      if (v130 == __p)
      {
        goto LABEL_198;
      }

      v131 = v130[1];
      if (v127.u32[0] > 1uLL)
      {
        if (v131 >= *(&v164 + 1))
        {
          v131 %= *(&v164 + 1);
        }
      }

      else
      {
        v131 &= *(&v164 + 1) - 1;
      }

      v132 = *v122;
      if (v131 == v126)
      {
LABEL_168:
        if (v132)
        {
          goto LABEL_169;
        }
      }

      else
      {
LABEL_198:
        if (!v128)
        {
          goto LABEL_167;
        }

        v133 = v128[1];
        if (v127.u32[0] > 1uLL)
        {
          if (v133 >= *(&v164 + 1))
          {
            v133 %= *(&v164 + 1);
          }
        }

        else
        {
          v133 &= *(&v164 + 1) - 1;
        }

        v132 = *v122;
        if (v133 != v126)
        {
LABEL_167:
          *(v164 + 8 * v126) = 0;
          v132 = *v122;
          goto LABEL_168;
        }

LABEL_169:
        v134 = *(*&v132 + 8);
        if (v127.u32[0] > 1uLL)
        {
          if (v134 >= v125)
          {
            v134 %= v125;
          }
        }

        else
        {
          v134 &= v125 - 1;
        }

        if (v134 != v126)
        {
          *(v164 + 8 * v134) = v130;
          v132 = *v122;
        }
      }

      *v130 = v132;
      *v122 = 0;
      --__p[1];
      operator delete(v122);
LABEL_176:
      v122 = v128;
      if (v128)
      {
        continue;
      }

      break;
    }

    v135 = 0;
    v136 = 0;
    do
    {
      v136 = vmla_f32(v136, v143, vcvt_f32_s32(v119[2]));
      ++v135;
      v119 = *v119;
    }

    while (v119);
    v10 = v120;
    if (v135)
    {
      v137 = v135;
      if (v118)
      {
        v159.f64[0] = (v136.f32[0] / v135);
        v138 = &v160;
      }

      else
      {
        v159.f64[1] = (v136.f32[0] / v135);
        v138 = &v160.f64[1];
      }

      v138->f64[0] = (v136.f32[1] / v137);
    }

LABEL_184:
    v139 = v160;
    *(v11 + 112) = vaddq_f64(*(*(v11 + 24) + 72), vcvtq_f64_f32(vsub_f32(vcvt_f32_f64(v159), v17)));
    *(v11 + 128) = v139;
    *(v11 + 144) = v150;
    *(v11 + 148) = v151;
    *(v11 + 152) = v30;
    *(v11 + 156) = v145;
    v3 = v171;
LABEL_185:
    v9 += 3;
  }

  while (v9 != v3);
  v140 = __p[0];
  if (__p[0])
  {
    do
    {
      v141 = *v140;
      operator delete(v140);
      v140 = v141;
    }

    while (v141);
  }

  v142 = v164;
LABEL_190:
  *&v164 = 0;
  if (v142)
  {
    operator delete(v142);
  }

  if (v167[0] != v168)
  {
    free(v167[0]);
  }

  if (v170 != v172)
  {
    free(v170);
  }
}

uint64_t CA::OGL::LayerNode::try_inline_sdf_element_layer(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 168) + 248);
  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    v4 = v2[4];
    if ((v4 & 0x30000000000) != 0x10000000000)
    {
      break;
    }

LABEL_12:
    v2 = *v2;
    if (!v2)
    {
      return 1;
    }
  }

  if ((v4 & 0x8000000000) == 0)
  {
LABEL_11:
    result = CA::OGL::LayerNode::try_inline_sdf_element_layer(a1, v2);
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v5 = *(v2[3] + 136);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 16);
  if (!*(v7 + 200) && !*(v6 + 17) && !*(v6 + 16))
  {
    *(v7 + 200) = v2;
    goto LABEL_11;
  }

  result = 0;
  *(v7 + 200) = 0;
  return result;
}

BOOL CA::OGL::contains_multiple_sdf_elements_helper(uint64_t a1, unsigned int *a2)
{
  v3 = (*(a1 + 168) + 248);
  do
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = v3[4];
    if ((v4 & 0x8000000000) != 0 && (v4 & 0x30000000000) != 0x10000000000)
    {
      v5 = *a2 + 1;
      *a2 = v5;
      if (v5 > 1)
      {
        break;
      }
    }
  }

  while (!CA::OGL::contains_multiple_sdf_elements_helper(v3, a2));
  return v3 != 0;
}

void X::small_vector_base<CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame>::reserve(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 < a2)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a1;
    v7 = (v2 + 1) | ((v2 + 1) >> 1) | (((v2 + 1) | ((v2 + 1) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v9 = v8 | (v8 >> 16) | ((v8 | (v8 >> 16)) >> 32);
    if (v9 + 1 > a2)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = a2;
    }

    v11 = malloc_type_malloc(48 * v10, 0x102004095A10554uLL);
    v12 = v11;
    v13 = *a1;
    v14 = *(a1 + 8);
    if (*a1 != v14)
    {
      v15 = v11;
      do
      {
        *v15 = *v13;
        *(v15 + 1) = v13[1];
        v16 = *(v13 + 4);
        *(v15 + 10) = *(v13 + 10);
        *(v15 + 4) = v16;
        v15 += 48;
        v13 += 3;
      }

      while (v13 != v14);
    }

    if (v6 != v5)
    {
      free(*a1);
    }

    *a1 = v12;
    *(a1 + 8) = &v12[v4 - v6];
    *(a1 + 24) = v10;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = (a2 - 16);
  v10 = (a2 - 64);
  v11 = (a2 - 112);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 4);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        if (*(a2 - 8) >= *(v12 + 40))
        {
          return;
        }

        v162 = *v12;
        v163 = *(v12 + 16);
        v273 = *(v12 + 32);
        v303 = *(v12 + 40);
        *v12 = *(a2 - 48);
        *(v12 + 16) = *(a2 - 32);
        v164 = *v9;
        *(v12 + 40) = *(a2 - 8);
        *(v12 + 32) = v164;
        *(a2 - 48) = v162;
        *(a2 - 32) = v163;
LABEL_181:
        *(a2 - 8) = v303;
        *v9 = v273;
        return;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *,0>(v12, (v12 + 48), (v12 + 96), (a2 - 48), a5);
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *,0>(v12, (v12 + 48), (v12 + 96), (v12 + 144), a5);
      if (*(a2 - 8) < *(v12 + 184))
      {
        v271 = *(v12 + 176);
        v301 = *(v12 + 184);
        v147 = *(v12 + 144);
        v148 = *(v12 + 160);
        *(v12 + 144) = *(a2 - 48);
        *(v12 + 160) = *(a2 - 32);
        v149 = *v9;
        *(v12 + 184) = *(a2 - 8);
        *(v12 + 176) = v149;
        *(a2 - 48) = v147;
        *(a2 - 32) = v148;
        *(a2 - 8) = v301;
        *v9 = v271;
        if (*(v12 + 184) < *(v12 + 136))
        {
          v150 = *(v12 + 128);
          v151 = *(v12 + 136);
          v152 = *(v12 + 144);
          v153 = *(v12 + 160);
          v154 = *(v12 + 96);
          v155 = *(v12 + 112);
          *(v12 + 96) = v152;
          *(v12 + 112) = v153;
          *(v12 + 128) = *(v12 + 176);
          *(v12 + 136) = *(v12 + 184);
          *(v12 + 144) = v154;
          *(v12 + 160) = v155;
          *(v12 + 184) = v151;
          *(v12 + 176) = v150;
          if (*(v12 + 136) < *(v12 + 88))
          {
            v156 = *(v12 + 88);
            v157 = *(v12 + 80);
            v158 = *(v12 + 48);
            v159 = *(v12 + 64);
            *(v12 + 48) = v152;
            *(v12 + 64) = v153;
            *(v12 + 80) = *(v12 + 128);
            *(v12 + 88) = *(v12 + 136);
            *(v12 + 96) = v158;
            *(v12 + 112) = v159;
            *(v12 + 128) = v157;
            *(v12 + 136) = v156;
            if (*(v12 + 88) < *(v12 + 40))
            {
              v272 = *(v12 + 32);
              v302 = *(v12 + 40);
              v160 = *v12;
              v161 = *(v12 + 16);
              *v12 = v152;
              *(v12 + 16) = v153;
              *(v12 + 32) = *(v12 + 80);
              *(v12 + 40) = *(v12 + 88);
              *(v12 + 48) = v160;
              *(v12 + 64) = v161;
              *(v12 + 80) = v272;
              *(v12 + 88) = v302;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v13 <= 1151)
    {
      v170 = (v12 + 48);
      v172 = v12 == a2 || v170 == a2;
      if (a4)
      {
        if (!v172)
        {
          v173 = 0;
          v174 = v12;
          do
          {
            v175 = v170;
            v176 = *(v174 + 88);
            if (v176 < *(v174 + 40))
            {
              v177 = *v170;
              v178 = *(v174 + 64);
              v179 = v173;
              v180 = *(v174 + 80);
              while (1)
              {
                v181 = v179;
                v182 = v12 + v179;
                v183 = *(v182 + 16);
                *(v182 + 48) = *v182;
                *(v182 + 64) = v183;
                *(v182 + 80) = *(v182 + 32);
                *(v182 + 88) = *(v182 + 40);
                if (!v181)
                {
                  break;
                }

                v184 = *(v182 - 8);
                v179 = v181 - 48;
                if (v176 >= v184)
                {
                  v185 = v12 + v181;
                  v186 = (v12 + v181 + 32);
                  goto LABEL_132;
                }
              }

              v186 = (v182 + 32);
              v185 = v12;
LABEL_132:
              *v185 = v177;
              *(v185 + 16) = v178;
              *v186 = v180;
              *(v185 + 40) = v176;
            }

            v170 = v175 + 3;
            v173 += 48;
            v174 = v175;
          }

          while (v175 + 3 != a2);
        }
      }

      else if (!v172)
      {
        do
        {
          v233 = v170;
          v234 = *(a1 + 88);
          if (v234 < *(a1 + 40))
          {
            v235 = *v170;
            v236 = *(a1 + 64);
            v237 = v170;
            v238 = *(a1 + 80);
            do
            {
              v239 = v237;
              v240 = *(v237 - 3);
              v237 -= 3;
              v241 = *(v239 - 2);
              *v239 = v240;
              v239[1] = v241;
              *(v239 + 4) = *(v239 - 2);
              *(v239 + 10) = *(v239 - 2);
            }

            while (v234 < *(v239 - 14));
            *v237 = v235;
            v237[1] = v236;
            *(v237 + 4) = v238;
            *(v237 + 10) = v234;
          }

          v170 = v233 + 3;
          a1 = v233;
        }

        while (v233 + 3 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v187 = (v14 - 2) >> 1;
        v188 = v187;
        do
        {
          v189 = v188;
          if (v187 >= v188)
          {
            v190 = (2 * v188) | 1;
            v191 = v12 + 48 * v190;
            if (2 * v189 + 2 < v14 && *(v191 + 40) < *(v191 + 88))
            {
              v191 += 48;
              v190 = 2 * v189 + 2;
            }

            v192 = v12 + 48 * v189;
            v193 = *(v192 + 40);
            if (*(v191 + 40) >= v193)
            {
              v194 = *v192;
              v195 = *(v192 + 16);
              v196 = *(v192 + 32);
              do
              {
                v197 = v192;
                v192 = v191;
                *v197 = *v191;
                *(v197 + 16) = *(v191 + 16);
                v198 = *(v191 + 32);
                *(v197 + 40) = *(v192 + 40);
                *(v197 + 32) = v198;
                if (v187 < v190)
                {
                  break;
                }

                v199 = 2 * v190;
                v190 = (2 * v190) | 1;
                v191 = v12 + 48 * v190;
                v200 = v199 + 2;
                if (v200 < v14 && *(v191 + 40) < *(v191 + 88))
                {
                  v191 += 48;
                  v190 = v200;
                }
              }

              while (*(v191 + 40) >= v193);
              *v192 = v194;
              *(v192 + 16) = v195;
              *(v192 + 32) = v196;
              *(v192 + 40) = v193;
            }
          }

          v188 = v189 - 1;
        }

        while (v189);
        v201 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
        do
        {
          v202 = 0;
          v204 = *v12;
          v203 = *(v12 + 8);
          v206 = *(v12 + 16);
          v205 = *(v12 + 24);
          v274 = *(v12 + 32);
          v304 = *(v12 + 40);
          v207 = v12;
          do
          {
            v208 = v207 + 48 * v202;
            v209 = v208 + 48;
            v210 = (2 * v202) | 1;
            v202 = 2 * v202 + 2;
            if (v202 >= v201)
            {
              v202 = v210;
            }

            else
            {
              v211 = *(v208 + 88);
              v212 = *(v208 + 136);
              v213 = v208 + 96;
              if (v211 >= v212)
              {
                v202 = v210;
              }

              else
              {
                v209 = v213;
              }
            }

            *v207 = *v209;
            *(v207 + 16) = *(v209 + 16);
            v214 = (v209 + 32);
            v215 = *(v209 + 32);
            *(v207 + 40) = *(v209 + 40);
            *(v207 + 32) = v215;
            v207 = v209;
          }

          while (v202 <= ((v201 - 2) >> 1));
          if (v209 == a2 - 48)
          {
            *v209 = v204;
            *(v209 + 8) = v203;
            *(v209 + 16) = v206;
            *(v209 + 24) = v205;
            *v214 = v274;
            *(v209 + 40) = v304;
          }

          else
          {
            *v209 = *(a2 - 48);
            *(v209 + 16) = *(a2 - 32);
            v216 = *(a2 - 16);
            *(v209 + 40) = *(a2 - 8);
            *v214 = v216;
            *(a2 - 48) = v204;
            *(a2 - 40) = v203;
            *(a2 - 32) = v206;
            *(a2 - 24) = v205;
            *(a2 - 8) = v304;
            *(a2 - 16) = v274;
            v217 = v209 - v12 + 48;
            if (v217 >= 49)
            {
              v218 = (-2 - 0x5555555555555555 * (v217 >> 4)) >> 1;
              v219 = v12 + 48 * v218;
              v220 = *(v209 + 40);
              if (*(v219 + 40) < v220)
              {
                v221 = *v209;
                v222 = *(v209 + 16);
                v223 = *(v209 + 32);
                do
                {
                  v224 = v209;
                  v209 = v219;
                  *v224 = *v219;
                  *(v224 + 16) = *(v219 + 16);
                  v225 = *(v219 + 32);
                  *(v224 + 40) = *(v209 + 40);
                  *(v224 + 32) = v225;
                  if (!v218)
                  {
                    break;
                  }

                  v218 = (v218 - 1) >> 1;
                  v219 = v12 + 48 * v218;
                }

                while (*(v219 + 40) < v220);
                *v209 = v221;
                *(v209 + 16) = v222;
                *(v209 + 32) = v223;
                *(v209 + 40) = v220;
              }
            }
          }

          a2 -= 48;
        }

        while (v201-- > 2);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v12 + 48 * (v14 >> 1);
    v17 = *(a2 - 8);
    if (v13 >= 0x1801)
    {
      v18 = *(v16 + 40);
      if (v18 >= *(v12 + 40))
      {
        if (v17 < v18)
        {
          v280 = *(v16 + 40);
          v250 = *(v16 + 32);
          v26 = *v16;
          v27 = *(v16 + 16);
          *v16 = *(a2 - 48);
          *(v16 + 16) = *(a2 - 32);
          v28 = *v9;
          *(v16 + 40) = *(a2 - 8);
          *(v16 + 32) = v28;
          *(a2 - 48) = v26;
          *(a2 - 32) = v27;
          *(a2 - 8) = v280;
          *v9 = v250;
          if (*(v16 + 40) < *(v12 + 40))
          {
            v281 = *(v12 + 40);
            v251 = *(v12 + 32);
            v29 = *(v16 + 16);
            v30 = *v12;
            v31 = *(v12 + 16);
            *v12 = *v16;
            *(v12 + 16) = v29;
            v32 = *(v16 + 40);
            *(v12 + 32) = *(v16 + 32);
            *(v12 + 40) = v32;
            *v16 = v30;
            *(v16 + 16) = v31;
            *(v16 + 40) = v281;
            *(v16 + 32) = v251;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v248 = *(v12 + 32);
          v278 = *(v12 + 40);
          v19 = *v12;
          v20 = *(v12 + 16);
          *v12 = *(a2 - 48);
          *(v12 + 16) = *(a2 - 32);
          v21 = *v9;
          *(v12 + 40) = *(a2 - 8);
          *(v12 + 32) = v21;
          *(a2 - 48) = v19;
          *(a2 - 32) = v20;
          goto LABEL_26;
        }

        v40 = *v12;
        v41 = *(v12 + 8);
        v42 = *(v12 + 16);
        v43 = *(v12 + 24);
        v254 = *(v12 + 32);
        v284 = *(v12 + 40);
        v44 = *(v16 + 16);
        *v12 = *v16;
        *(v12 + 16) = v44;
        v45 = *(v16 + 40);
        *(v12 + 32) = *(v16 + 32);
        *(v12 + 40) = v45;
        *v16 = v40;
        *(v16 + 8) = v41;
        *(v16 + 16) = v42;
        *(v16 + 24) = v43;
        *(v16 + 40) = v284;
        *(v16 + 32) = v254;
        if (*(a2 - 8) < *(v16 + 40))
        {
          v278 = *(v16 + 40);
          v248 = *(v16 + 32);
          *v16 = *(a2 - 48);
          *(v16 + 16) = *(a2 - 32);
          v46 = *v9;
          *(v16 + 40) = *(a2 - 8);
          *(v16 + 32) = v46;
          *(a2 - 48) = v40;
          *(a2 - 40) = v41;
          *(a2 - 32) = v42;
          *(a2 - 24) = v43;
LABEL_26:
          *(a2 - 8) = v278;
          *v9 = v248;
        }
      }

      v47 = v12 + 48 * v15;
      v48 = v47 - 48;
      v49 = v47 - 16;
      v50 = *(v47 - 8);
      v51 = *(a2 - 56);
      if (v50 >= *(v12 + 88))
      {
        if (v51 < v50)
        {
          v286 = *(v47 - 8);
          v256 = *v49;
          v55 = *v48;
          v56 = *(v47 - 32);
          *v48 = *(a2 - 96);
          *(v47 - 32) = *(a2 - 80);
          v57 = *v10;
          *(v49 + 8) = *(a2 - 56);
          *v49 = v57;
          *(a2 - 96) = v55;
          *(a2 - 80) = v56;
          *(a2 - 56) = v286;
          *v10 = v256;
          if (*(v48 + 40) < *(v12 + 88))
          {
            v257 = *(v12 + 80);
            v287 = *(v12 + 88);
            v58 = *(v12 + 48);
            v59 = *(v12 + 64);
            *(v12 + 48) = *v48;
            *(v12 + 64) = *(v48 + 16);
            v60 = *v49;
            *(v12 + 88) = *(v49 + 8);
            *(v12 + 80) = v60;
            *v48 = v58;
            *(v48 + 16) = v59;
            *(v49 + 8) = v287;
            *v49 = v257;
          }
        }
      }

      else
      {
        if (v51 < v50)
        {
          v255 = *(v12 + 80);
          v285 = *(v12 + 88);
          v52 = *(v12 + 48);
          v53 = *(v12 + 64);
          *(v12 + 48) = *(a2 - 96);
          *(v12 + 64) = *(a2 - 80);
          v54 = *v10;
          *(v12 + 88) = *(a2 - 56);
          *(v12 + 80) = v54;
          *(a2 - 96) = v52;
          *(a2 - 80) = v53;
          goto LABEL_38;
        }

        v67 = *(v12 + 48);
        v68 = *(v12 + 56);
        v69 = *(v12 + 64);
        v70 = *(v12 + 72);
        v259 = *(v12 + 80);
        v289 = *(v12 + 88);
        *(v12 + 48) = *v48;
        *(v12 + 64) = *(v47 - 32);
        v71 = *(v47 - 8);
        *(v12 + 80) = *v49;
        *(v12 + 88) = v71;
        *v48 = v67;
        *(v48 + 8) = v68;
        *(v48 + 16) = v69;
        *(v48 + 24) = v70;
        *(v49 + 8) = v289;
        *v49 = v259;
        if (*(a2 - 56) < *(v48 + 40))
        {
          v285 = *(v49 + 8);
          v255 = *v49;
          *v48 = *(a2 - 96);
          *(v48 + 16) = *(a2 - 80);
          v72 = *v10;
          *(v49 + 8) = *(a2 - 56);
          *v49 = v72;
          *(a2 - 96) = v67;
          *(a2 - 88) = v68;
          *(a2 - 80) = v69;
          *(a2 - 72) = v70;
LABEL_38:
          *(a2 - 56) = v285;
          *v10 = v255;
        }
      }

      v73 = v12 + 48 * v15;
      v74 = (v73 + 48);
      v75 = *(v73 + 88);
      v76 = *(a2 - 104);
      if (v75 >= *(v12 + 136))
      {
        if (v76 < v75)
        {
          v291 = *(v73 + 88);
          v261 = *(v73 + 80);
          v80 = *v74;
          v81 = *(v73 + 64);
          *v74 = *(a2 - 144);
          *(v73 + 64) = *(a2 - 128);
          v82 = *v11;
          *(v73 + 88) = *(a2 - 104);
          *(v73 + 80) = v82;
          *(a2 - 144) = v80;
          *(a2 - 128) = v81;
          *(a2 - 104) = v291;
          *v11 = v261;
          if (*(v73 + 88) < *(v12 + 136))
          {
            v262 = *(v12 + 128);
            v292 = *(v12 + 136);
            v83 = *(v12 + 96);
            v84 = *(v12 + 112);
            *(v12 + 96) = *v74;
            *(v12 + 112) = *(v73 + 64);
            v85 = *(v73 + 80);
            *(v12 + 136) = *(v73 + 88);
            *(v12 + 128) = v85;
            *v74 = v83;
            *(v73 + 64) = v84;
            *(v73 + 88) = v292;
            *(v73 + 80) = v262;
          }
        }
      }

      else
      {
        if (v76 < v75)
        {
          v260 = *(v12 + 128);
          v290 = *(v12 + 136);
          v77 = *(v12 + 96);
          v78 = *(v12 + 112);
          *(v12 + 96) = *(a2 - 144);
          *(v12 + 112) = *(a2 - 128);
          v79 = *v11;
          *(v12 + 136) = *(a2 - 104);
          *(v12 + 128) = v79;
          *(a2 - 144) = v77;
          *(a2 - 128) = v78;
          goto LABEL_47;
        }

        v86 = *(v12 + 96);
        v87 = *(v12 + 104);
        v88 = *(v12 + 112);
        v89 = *(v12 + 120);
        v263 = *(v12 + 128);
        v293 = *(v12 + 136);
        *(v12 + 96) = *v74;
        *(v12 + 112) = *(v73 + 64);
        v90 = *(v73 + 88);
        *(v12 + 128) = *(v73 + 80);
        *(v12 + 136) = v90;
        v74->n128_u64[0] = v86;
        *(v73 + 56) = v87;
        *(v73 + 64) = v88;
        *(v73 + 72) = v89;
        *(v73 + 88) = v293;
        *(v73 + 80) = v263;
        if (*(a2 - 104) < *(v73 + 88))
        {
          v290 = *(v73 + 88);
          v260 = *(v73 + 80);
          *v74 = *(a2 - 144);
          *(v73 + 64) = *(a2 - 128);
          v91 = *v11;
          *(v73 + 88) = *(a2 - 104);
          *(v73 + 80) = v91;
          *(a2 - 144) = v86;
          *(a2 - 136) = v87;
          *(a2 - 128) = v88;
          *(a2 - 120) = v89;
LABEL_47:
          *(a2 - 104) = v290;
          *v11 = v260;
        }
      }

      v92 = *(v16 + 40);
      v93 = *(v73 + 88);
      if (v92 >= *(v48 + 40))
      {
        if (v93 < v92)
        {
          v295 = *(v16 + 40);
          v265 = *(v16 + 32);
          v97 = *(v73 + 64);
          v98 = *v16;
          v99 = *(v16 + 16);
          *v16 = *v74;
          *(v16 + 16) = v97;
          *(v16 + 32) = *(v73 + 80);
          *(v16 + 40) = *(v73 + 88);
          *v74 = v98;
          *(v73 + 64) = v99;
          *(v73 + 88) = v295;
          *(v73 + 80) = v265;
          if (*(v16 + 40) < *(v48 + 40))
          {
            v296 = *(v49 + 8);
            v266 = *v49;
            v100 = *(v16 + 16);
            v101 = *v48;
            v102 = *(v48 + 16);
            *v48 = *v16;
            *(v48 + 16) = v100;
            *v49 = *(v16 + 32);
            *(v49 + 8) = *(v16 + 40);
            *v16 = v101;
            *(v16 + 16) = v102;
            *(v16 + 40) = v296;
            *(v16 + 32) = v266;
          }
        }
      }

      else
      {
        if (v93 < v92)
        {
          v294 = *(v49 + 8);
          v264 = *v49;
          v94 = *(v73 + 64);
          v95 = *v48;
          v96 = *(v48 + 16);
          *v48 = *v74;
          *(v48 + 16) = v94;
          *v49 = *(v73 + 80);
          *(v49 + 8) = *(v73 + 88);
          *v74 = v95;
          *(v73 + 64) = v96;
          goto LABEL_56;
        }

        v103 = *v48;
        v104 = *(v48 + 8);
        v105 = *(v48 + 16);
        v106 = *(v48 + 24);
        v297 = *(v49 + 8);
        v267 = *v49;
        v107 = *(v16 + 16);
        *v48 = *v16;
        *(v48 + 16) = v107;
        *v49 = *(v16 + 32);
        *(v49 + 8) = *(v16 + 40);
        *v16 = v103;
        *(v16 + 8) = v104;
        *(v16 + 16) = v105;
        *(v16 + 24) = v106;
        *(v16 + 40) = v297;
        *(v16 + 32) = v267;
        if (*(v73 + 88) < *(v16 + 40))
        {
          v294 = *(v16 + 40);
          v264 = *(v16 + 32);
          v108 = *(v73 + 64);
          *v16 = *v74;
          *(v16 + 16) = v108;
          *(v16 + 32) = *(v73 + 80);
          *(v16 + 40) = *(v73 + 88);
          v74->n128_u64[0] = v103;
          *(v73 + 56) = v104;
          *(v73 + 64) = v105;
          *(v73 + 72) = v106;
LABEL_56:
          *(v73 + 88) = v294;
          *(v73 + 80) = v264;
        }
      }

      a5 = *v12;
      v109 = *(v12 + 16);
      v268 = *(v12 + 32);
      v298 = *(v12 + 40);
      v110 = *(v16 + 16);
      *v12 = *v16;
      *(v12 + 16) = v110;
      v111 = *(v16 + 40);
      *(v12 + 32) = *(v16 + 32);
      *(v12 + 40) = v111;
      *v16 = a5;
      *(v16 + 16) = v109;
      *(v16 + 40) = v298;
      *(v16 + 32) = v268;
      goto LABEL_58;
    }

    v22 = *(v12 + 40);
    if (v22 >= *(v16 + 40))
    {
      if (v17 < v22)
      {
        v252 = *(v12 + 32);
        v282 = *(v12 + 40);
        v33 = *v12;
        v34 = *(v12 + 16);
        *v12 = *(a2 - 48);
        a5 = *(a2 - 32);
        *(v12 + 16) = a5;
        v35 = *v9;
        *(v12 + 40) = *(a2 - 8);
        *(v12 + 32) = v35;
        *(a2 - 48) = v33;
        *(a2 - 32) = v34;
        *(a2 - 8) = v282;
        *v9 = v252;
        if (*(v12 + 40) < *(v16 + 40))
        {
          v283 = *(v16 + 40);
          v253 = *(v16 + 32);
          a5 = *v12;
          v36 = *(v12 + 16);
          v37 = *v16;
          v38 = *(v16 + 16);
          *v16 = *v12;
          *(v16 + 16) = v36;
          v39 = *(v12 + 32);
          *(v16 + 40) = *(v12 + 40);
          *(v16 + 32) = v39;
          *v12 = v37;
          *(v12 + 16) = v38;
          *(v12 + 32) = v253;
          *(v12 + 40) = v283;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v22)
    {
      v279 = *(v16 + 40);
      v249 = *(v16 + 32);
      v23 = *v16;
      v24 = *(v16 + 16);
      *v16 = *(a2 - 48);
      a5 = *(a2 - 32);
      *(v16 + 16) = a5;
      v25 = *v9;
      *(v16 + 40) = *(a2 - 8);
      *(v16 + 32) = v25;
      *(a2 - 48) = v23;
      *(a2 - 32) = v24;
LABEL_35:
      *(a2 - 8) = v279;
      *v9 = v249;
      goto LABEL_58;
    }

    a5.n128_u64[0] = *v16;
    v61 = *(v16 + 8);
    v62 = *(v16 + 16);
    v63 = *(v16 + 24);
    v288 = *(v16 + 40);
    v258 = *(v16 + 32);
    v64 = *(v12 + 16);
    *v16 = *v12;
    *(v16 + 16) = v64;
    v65 = *(v12 + 32);
    *(v16 + 40) = *(v12 + 40);
    *(v16 + 32) = v65;
    *v12 = a5.n128_u64[0];
    *(v12 + 8) = v61;
    *(v12 + 16) = v62;
    *(v12 + 24) = v63;
    *(v12 + 32) = v258;
    *(v12 + 40) = v288;
    if (*(a2 - 8) < *(v12 + 40))
    {
      v249 = *(v12 + 32);
      v279 = *(v12 + 40);
      *v12 = *(a2 - 48);
      *(v12 + 16) = *(a2 - 32);
      v66 = *v9;
      *(v12 + 40) = *(a2 - 8);
      *(v12 + 32) = v66;
      *(a2 - 48) = a5.n128_u64[0];
      *(a2 - 40) = v61;
      *(a2 - 32) = v62;
      *(a2 - 24) = v63;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      a5.n128_u32[0] = *(v12 + 40);
LABEL_61:
      v112 = *v12;
      v113 = *(v12 + 16);
      v114 = *(v12 + 32);
      v115 = v12;
      do
      {
        v116 = v115;
        v115 += 48;
      }

      while (*(v116 + 88) < a5.n128_f32[0]);
      v117 = a2;
      if (v116 == v12)
      {
        v120 = a2;
        while (v115 < v120)
        {
          v118 = v120 - 48;
          v121 = *(v120 - 8);
          v120 -= 48;
          if (v121 < a5.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v118 = v120;
      }

      else
      {
        do
        {
          v118 = v117 - 48;
          v119 = *(v117 - 8);
          v117 -= 48;
        }

        while (v119 >= a5.n128_f32[0]);
      }

LABEL_71:
      v12 = v115;
      if (v115 < v118)
      {
        v122 = v118;
        do
        {
          v269 = *(v12 + 32);
          v299 = *(v12 + 40);
          v123 = *v12;
          v124 = *(v12 + 16);
          *v12 = *v122;
          *(v12 + 16) = *(v122 + 16);
          v125 = *(v122 + 32);
          *(v12 + 40) = *(v122 + 40);
          *(v12 + 32) = v125;
          *v122 = v123;
          *(v122 + 16) = v124;
          *(v122 + 32) = v269;
          *(v122 + 40) = v299;
          do
          {
            v126 = *(v12 + 88);
            v12 += 48;
          }

          while (v126 < a5.n128_f32[0]);
          do
          {
            v127 = *(v122 - 8);
            v122 -= 48;
          }

          while (v127 >= a5.n128_f32[0]);
        }

        while (v12 < v122);
      }

      if (v12 - 48 != a1)
      {
        *a1 = *(v12 - 48);
        *(a1 + 16) = *(v12 - 32);
        v128 = *(v12 - 16);
        *(a1 + 40) = *(v12 - 8);
        *(a1 + 32) = v128;
      }

      *(v12 - 48) = v112;
      *(v12 - 32) = v113;
      *(v12 - 16) = v114;
      *(v12 - 8) = a5.n128_u32[0];
      if (v115 < v118)
      {
        goto LABEL_82;
      }

      v129 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *>(a1, v12 - 48, a5);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *>(v12, a2, v130))
      {
        a2 = v12 - 48;
        if (!v129)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v129)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *,false>(a1, v12 - 48, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      a5.n128_u32[0] = *(v12 + 40);
      if (*(v12 - 8) < a5.n128_f32[0])
      {
        goto LABEL_61;
      }

      if (a5.n128_f32[0] >= *(a2 - 8))
      {
        v133 = v12 + 48;
        do
        {
          v12 = v133;
          if (v133 >= a2)
          {
            break;
          }

          v134 = *(v133 + 40);
          v133 += 48;
        }

        while (a5.n128_f32[0] >= v134);
      }

      else
      {
        v131 = v12;
        do
        {
          v12 = v131 + 48;
          v132 = *(v131 + 88);
          v131 += 48;
        }

        while (a5.n128_f32[0] >= v132);
      }

      v135 = a2;
      if (v12 < a2)
      {
        v136 = a2;
        do
        {
          v135 = v136 - 48;
          v137 = *(v136 - 8);
          v136 -= 48;
        }

        while (a5.n128_f32[0] < v137);
      }

      v138 = *(a1 + 32);
      v139 = *a1;
      v140 = *(a1 + 16);
      while (v12 < v135)
      {
        v141 = *v12;
        v142 = *(v12 + 16);
        v270 = *(v12 + 32);
        v300 = *(v12 + 40);
        *v12 = *v135;
        *(v12 + 16) = *(v135 + 16);
        v143 = *(v135 + 32);
        *(v12 + 40) = *(v135 + 40);
        *(v12 + 32) = v143;
        *v135 = v141;
        *(v135 + 16) = v142;
        *(v135 + 32) = v270;
        *(v135 + 40) = v300;
        do
        {
          v144 = *(v12 + 88);
          v12 += 48;
        }

        while (a5.n128_f32[0] >= v144);
        do
        {
          v145 = *(v135 - 8);
          v135 -= 48;
        }

        while (a5.n128_f32[0] < v145);
      }

      if (v12 - 48 != a1)
      {
        *a1 = *(v12 - 48);
        *(a1 + 16) = *(v12 - 32);
        v146 = *(v12 - 16);
        *(a1 + 40) = *(v12 - 8);
        *(a1 + 32) = v146;
      }

      a4 = 0;
      *(v12 - 48) = v139;
      *(v12 - 32) = v140;
      *(v12 - 16) = v138;
      *(v12 - 8) = a5.n128_u32[0];
    }
  }

  v165 = *(v12 + 88);
  v166 = *(a2 - 8);
  if (v165 < *(v12 + 40))
  {
    if (v166 >= v165)
    {
      v242 = *v12;
      v243 = *(v12 + 8);
      v244 = *(v12 + 16);
      v245 = *(v12 + 24);
      v277 = *(v12 + 32);
      v307 = *(v12 + 40);
      v246 = *(v12 + 64);
      *v12 = *(v12 + 48);
      *(v12 + 16) = v246;
      *(v12 + 32) = *(v12 + 80);
      *(v12 + 40) = *(v12 + 88);
      *(v12 + 48) = v242;
      *(v12 + 56) = v243;
      *(v12 + 64) = v244;
      *(v12 + 72) = v245;
      *(v12 + 88) = v307;
      *(v12 + 80) = v277;
      if (*(a2 - 8) >= *(v12 + 88))
      {
        return;
      }

      v273 = *(v12 + 80);
      v303 = *(v12 + 88);
      *(v12 + 48) = *(a2 - 48);
      *(v12 + 64) = *(a2 - 32);
      v247 = *v9;
      *(v12 + 88) = *(a2 - 8);
      *(v12 + 80) = v247;
      *(a2 - 48) = v242;
      *(a2 - 40) = v243;
      *(a2 - 32) = v244;
      *(a2 - 24) = v245;
    }

    else
    {
      v273 = *(v12 + 32);
      v303 = *(v12 + 40);
      v167 = *v12;
      v168 = *(v12 + 16);
      *v12 = *(a2 - 48);
      *(v12 + 16) = *(a2 - 32);
      v169 = *v9;
      *(v12 + 40) = *(a2 - 8);
      *(v12 + 32) = v169;
      *(a2 - 48) = v167;
      *(a2 - 32) = v168;
    }

    goto LABEL_181;
  }

  if (v166 < v165)
  {
    v275 = *(v12 + 80);
    v305 = *(v12 + 88);
    v227 = *(v12 + 48);
    v228 = *(v12 + 64);
    *(v12 + 48) = *(a2 - 48);
    *(v12 + 64) = *(a2 - 32);
    v229 = *v9;
    *(v12 + 88) = *(a2 - 8);
    *(v12 + 80) = v229;
    *(a2 - 48) = v227;
    *(a2 - 32) = v228;
    *(a2 - 8) = v305;
    *v9 = v275;
    if (*(v12 + 88) < *(v12 + 40))
    {
      v276 = *(v12 + 32);
      v306 = *(v12 + 40);
      v230 = *(v12 + 64);
      v231 = *v12;
      v232 = *(v12 + 16);
      *v12 = *(v12 + 48);
      *(v12 + 16) = v230;
      *(v12 + 32) = *(v12 + 80);
      *(v12 + 40) = *(v12 + 88);
      *(v12 + 48) = v231;
      *(v12 + 64) = v232;
      *(v12 + 88) = v306;
      *(v12 + 80) = v276;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,std::__unordered_map_hasher<CA::OGL::BoundsAlignment,std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,CA::OGL::BoundsAlignmentHash,std::equal_to<CA::OGL::BoundsAlignment>,true>,std::__unordered_map_equal<CA::OGL::BoundsAlignment,std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>,std::equal_to<CA::OGL::BoundsAlignment>,CA::OGL::BoundsAlignmentHash,true>,std::allocator<std::__hash_value_type<CA::OGL::BoundsAlignment,unsigned long>>>::__emplace_unique_key_args<CA::OGL::BoundsAlignment,std::pair<CA::OGL::BoundsAlignment const,unsigned long>>(void *result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v5 = a2[2];
  v6 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v7 = result[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*result + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (*(v11 + 6) != v5 || v11[2] != __PAIR64__(v3, v2))
  {
    goto LABEL_18;
  }

  return result;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *,0>(__int128 *a1, float *a2, __int128 *a3, __int128 *a4, __n128 result)
{
  v5 = a2[10];
  if (v5 >= *(a1 + 10))
  {
    if (*(a3 + 10) < v5)
    {
      v32 = *(a2 + 4);
      v39 = *(a2 + 10);
      v10 = *a2;
      v11 = *(a2 + 1);
      *a2 = *a3;
      result = a3[1];
      *(a2 + 1) = result;
      v12 = *(a3 + 4);
      a2[10] = *(a3 + 10);
      *(a2 + 4) = v12;
      *a3 = v10;
      a3[1] = v11;
      *(a3 + 4) = v32;
      *(a3 + 10) = v39;
      if (a2[10] < *(a1 + 10))
      {
        v33 = *(a1 + 4);
        v40 = *(a1 + 10);
        v13 = *a1;
        v14 = a1[1];
        *a1 = *a2;
        result = *(a2 + 4);
        a1[1] = result;
        v15 = *(a2 + 4);
        *(a1 + 10) = a2[10];
        *(a1 + 4) = v15;
        *a2 = v13;
        *(a2 + 1) = v14;
        *(a2 + 4) = v33;
        *(a2 + 10) = v40;
      }
    }
  }

  else
  {
    if (*(a3 + 10) < v5)
    {
      v31 = *(a1 + 4);
      v38 = *(a1 + 10);
      v6 = *a1;
      v7 = a1[1];
      *a1 = *a3;
      result = a3[1];
      a1[1] = result;
      v8 = *(a3 + 4);
      *(a1 + 10) = *(a3 + 10);
      *(a1 + 4) = v8;
      *a3 = v6;
      a3[1] = v7;
      *(a3 + 4) = v31;
      v9 = v38;
LABEL_9:
      *(a3 + 10) = v9;
      goto LABEL_10;
    }

    result.n128_u64[0] = *a1;
    v16 = *(a1 + 1);
    v17 = *(a1 + 2);
    v18 = *(a1 + 3);
    v34 = *(a1 + 4);
    v41 = *(a1 + 10);
    *a1 = *a2;
    a1[1] = *(a2 + 1);
    v19 = *(a2 + 4);
    *(a1 + 10) = a2[10];
    *(a1 + 4) = v19;
    *a2 = result.n128_u64[0];
    *(a2 + 1) = v16;
    *(a2 + 2) = v17;
    *(a2 + 3) = v18;
    *(a2 + 4) = v34;
    *(a2 + 10) = v41;
    if (*(a3 + 10) < a2[10])
    {
      v9 = *(a2 + 10);
      v20 = *(a2 + 4);
      *a2 = *a3;
      *(a2 + 1) = a3[1];
      v21 = *(a3 + 4);
      a2[10] = *(a3 + 10);
      *(a2 + 4) = v21;
      *a3 = result.n128_u64[0];
      *(a3 + 1) = v16;
      *(a3 + 2) = v17;
      *(a3 + 3) = v18;
      *(a3 + 4) = v20;
      goto LABEL_9;
    }
  }

LABEL_10:
  result.n128_u32[0] = *(a4 + 10);
  if (result.n128_f32[0] < *(a3 + 10))
  {
    v35 = *(a3 + 4);
    v42 = *(a3 + 10);
    v22 = *a3;
    v23 = a3[1];
    *a3 = *a4;
    result = a4[1];
    a3[1] = result;
    v24 = *(a4 + 4);
    *(a3 + 10) = *(a4 + 10);
    *(a3 + 4) = v24;
    *a4 = v22;
    a4[1] = v23;
    *(a4 + 4) = v35;
    *(a4 + 10) = v42;
    result.n128_u32[0] = *(a3 + 10);
    if (result.n128_f32[0] < a2[10])
    {
      v36 = *(a2 + 4);
      v43 = *(a2 + 10);
      v25 = *a2;
      v26 = *(a2 + 1);
      *a2 = *a3;
      result = a3[1];
      *(a2 + 1) = result;
      v27 = *(a3 + 4);
      a2[10] = *(a3 + 10);
      *(a2 + 4) = v27;
      *a3 = v25;
      a3[1] = v26;
      *(a3 + 4) = v36;
      *(a3 + 10) = v43;
      result.n128_f32[0] = a2[10];
      if (result.n128_f32[0] < *(a1 + 10))
      {
        v37 = *(a1 + 4);
        v44 = *(a1 + 10);
        v28 = *a1;
        v29 = a1[1];
        *a1 = *a2;
        result = *(a2 + 4);
        a1[1] = result;
        v30 = *(a2 + 4);
        *(a1 + 10) = a2[10];
        *(a1 + 4) = v30;
        *a2 = v28;
        *(a2 + 1) = v29;
        *(a2 + 4) = v37;
        *(a2 + 10) = v44;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v27 = *(a1 + 88);
      if (v27 >= *(a1 + 40))
      {
        if (*(a2 - 8) < v27)
        {
          v92 = *(a1 + 80);
          v98 = *(a1 + 88);
          v41 = *(a1 + 48);
          v42 = *(a1 + 64);
          *(a1 + 48) = *(a2 - 48);
          *(a1 + 64) = *(a2 - 32);
          v43 = *(a2 - 16);
          *(a1 + 88) = *(a2 - 8);
          *(a1 + 80) = v43;
          *(a2 - 48) = v41;
          *(a2 - 32) = v42;
          *(a2 - 16) = v92;
          *(a2 - 8) = v98;
          if (*(a1 + 88) < *(a1 + 40))
          {
            v44 = *(a1 + 32);
            v45 = *(a1 + 40);
            v46 = *(a1 + 64);
            v47 = *a1;
            v48 = *(a1 + 16);
            *a1 = *(a1 + 48);
            *(a1 + 16) = v46;
            *(a1 + 32) = *(a1 + 80);
            *(a1 + 40) = *(a1 + 88);
            *(a1 + 48) = v47;
            *(a1 + 64) = v48;
            *(a1 + 88) = v45;
            result = 1;
            *(a1 + 80) = v44;
            return result;
          }
        }

        return 1;
      }

      v28 = (a2 - 16);
      if (*(a2 - 8) >= v27)
      {
        v59 = *a1;
        v60 = *(a1 + 8);
        v61 = *(a1 + 16);
        v62 = *(a1 + 24);
        v93 = *(a1 + 32);
        v99 = *(a1 + 40);
        v63 = *(a1 + 64);
        *a1 = *(a1 + 48);
        *(a1 + 16) = v63;
        *(a1 + 32) = *(a1 + 80);
        *(a1 + 40) = *(a1 + 88);
        *(a1 + 48) = v59;
        *(a1 + 56) = v60;
        *(a1 + 64) = v61;
        *(a1 + 72) = v62;
        *(a1 + 88) = v99;
        *(a1 + 80) = v93;
        if (*(a2 - 8) >= *(a1 + 88))
        {
          return 1;
        }

        v32 = *(a1 + 88);
        v64 = *(a1 + 80);
        *(a1 + 48) = *(a2 - 48);
        *(a1 + 64) = *(a2 - 32);
        v65 = *v28;
        *(a1 + 88) = *(a2 - 8);
        *(a1 + 80) = v65;
        *(a2 - 48) = v59;
        *(a2 - 40) = v60;
        *(a2 - 32) = v61;
        *(a2 - 24) = v62;
        *v28 = v64;
      }

      else
      {
        v91 = *(a1 + 32);
        v97 = *(a1 + 40);
        v29 = *a1;
        v30 = *(a1 + 16);
        *a1 = *(a2 - 48);
        *(a1 + 16) = *(a2 - 32);
        v31 = *v28;
        *(a1 + 40) = *(a2 - 8);
        *(a1 + 32) = v31;
        *(a2 - 48) = v29;
        *(a2 - 32) = v30;
        *v28 = v91;
        v32 = v97;
      }

      *(a2 - 8) = v32;
      return 1;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), a3);
        if (*(a2 - 8) < *(a1 + 184))
        {
          v90 = *(a1 + 176);
          v96 = *(a1 + 184);
          v9 = *(a1 + 144);
          v10 = *(a1 + 160);
          *(a1 + 144) = *(a2 - 48);
          *(a1 + 160) = *(a2 - 32);
          v11 = *(a2 - 16);
          *(a1 + 184) = *(a2 - 8);
          *(a1 + 176) = v11;
          *(a2 - 48) = v9;
          *(a2 - 32) = v10;
          *(a2 - 16) = v90;
          *(a2 - 8) = v96;
          if (*(a1 + 184) < *(a1 + 136))
          {
            v12 = *(a1 + 128);
            v13 = *(a1 + 136);
            v14 = *(a1 + 144);
            v15 = *(a1 + 160);
            v16 = *(a1 + 96);
            v17 = *(a1 + 112);
            *(a1 + 96) = v14;
            *(a1 + 112) = v15;
            *(a1 + 128) = *(a1 + 176);
            *(a1 + 136) = *(a1 + 184);
            *(a1 + 144) = v16;
            *(a1 + 160) = v17;
            *(a1 + 184) = v13;
            *(a1 + 176) = v12;
            if (*(a1 + 136) < *(a1 + 88))
            {
              v18 = *(a1 + 88);
              v19 = *(a1 + 80);
              v20 = *(a1 + 48);
              v21 = *(a1 + 64);
              *(a1 + 48) = v14;
              *(a1 + 64) = v15;
              *(a1 + 80) = *(a1 + 128);
              *(a1 + 88) = *(a1 + 136);
              *(a1 + 96) = v20;
              *(a1 + 112) = v21;
              *(a1 + 128) = v19;
              *(a1 + 136) = v18;
              if (*(a1 + 88) < *(a1 + 40))
              {
                v22 = *(a1 + 40);
                v23 = *(a1 + 32);
                v24 = *a1;
                v25 = *(a1 + 16);
                *a1 = v14;
                *(a1 + 16) = v15;
                *(a1 + 32) = *(a1 + 80);
                *(a1 + 40) = *(a1 + 88);
                *(a1 + 48) = v24;
                *(a1 + 64) = v25;
                *(a1 + 80) = v23;
                result = 1;
                *(a1 + 88) = v22;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::$_0 &,CA::OGL::LayerNode::merge_sdf_element_layers(CA::OGL::Layer *,CA::Render::SDFLayer const*)::SublayerFrame *,0>(a1, (a1 + 48), (a1 + 96), (a2 - 48), a3);
    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    if (*(a2 - 8) < *(a1 + 40))
    {
      v89 = *(a1 + 32);
      v95 = *(a1 + 40);
      v6 = *a1;
      v7 = *(a1 + 16);
      *a1 = *(a2 - 48);
      *(a1 + 16) = *(a2 - 32);
      v8 = *(a2 - 16);
      *(a1 + 40) = *(a2 - 8);
      *(a1 + 32) = v8;
      *(a2 - 48) = v6;
      *(a2 - 32) = v7;
      *(a2 - 16) = v89;
      *(a2 - 8) = v95;
    }

    return 1;
  }

LABEL_17:
  v33 = *(a1 + 88);
  v34 = *(a1 + 40);
  if (v33 >= v34)
  {
    if (*(a1 + 136) < v33)
    {
      v49 = *(a1 + 80);
      v50 = *(a1 + 88);
      v51 = *(a1 + 96);
      v52 = *(a1 + 112);
      v53 = *(a1 + 48);
      v54 = *(a1 + 64);
      *(a1 + 48) = v51;
      *(a1 + 64) = v52;
      *(a1 + 80) = *(a1 + 128);
      *(a1 + 88) = *(a1 + 136);
      *(a1 + 96) = v53;
      *(a1 + 112) = v54;
      *(a1 + 136) = v50;
      *(a1 + 128) = v49;
      if (*(a1 + 88) < v34)
      {
        v55 = *(a1 + 40);
        v56 = *(a1 + 32);
        v57 = *a1;
        v58 = *(a1 + 16);
        *a1 = v51;
        *(a1 + 16) = v52;
        *(a1 + 32) = *(a1 + 80);
        *(a1 + 40) = *(a1 + 88);
        *(a1 + 48) = v57;
        *(a1 + 64) = v58;
        *(a1 + 80) = v56;
        *(a1 + 88) = v55;
      }
    }
  }

  else
  {
    v35 = *(a1 + 136);
    if (v35 >= v33)
    {
      v66 = *a1;
      v67 = *(a1 + 8);
      v68 = *(a1 + 16);
      v69 = *(a1 + 24);
      v94 = *(a1 + 32);
      v100 = *(a1 + 40);
      v70 = *(a1 + 64);
      *a1 = *(a1 + 48);
      *(a1 + 16) = v70;
      *(a1 + 32) = *(a1 + 80);
      *(a1 + 40) = *(a1 + 88);
      *(a1 + 48) = v66;
      *(a1 + 56) = v67;
      *(a1 + 64) = v68;
      *(a1 + 72) = v69;
      *(a1 + 88) = v100;
      *(a1 + 80) = v94;
      if (v35 < *(a1 + 88))
      {
        v71 = *(a1 + 88);
        v72 = *(a1 + 80);
        v73 = *(a1 + 112);
        *(a1 + 48) = *(a1 + 96);
        *(a1 + 64) = v73;
        *(a1 + 80) = *(a1 + 128);
        *(a1 + 88) = *(a1 + 136);
        *(a1 + 96) = v66;
        *(a1 + 104) = v67;
        *(a1 + 112) = v68;
        *(a1 + 120) = v69;
        *(a1 + 128) = v72;
        *(a1 + 136) = v71;
      }
    }

    else
    {
      v36 = *(a1 + 32);
      v37 = *(a1 + 40);
      v38 = *(a1 + 112);
      v39 = *a1;
      v40 = *(a1 + 16);
      *a1 = *(a1 + 96);
      *(a1 + 16) = v38;
      *(a1 + 32) = *(a1 + 128);
      *(a1 + 40) = *(a1 + 136);
      *(a1 + 96) = v39;
      *(a1 + 112) = v40;
      *(a1 + 136) = v37;
      *(a1 + 128) = v36;
    }
  }

  v74 = a1 + 144;
  if (a1 + 144 == a2)
  {
    return 1;
  }

  v75 = 0;
  v76 = 0;
  v77 = a1 + 96;
  while (1)
  {
    v78 = *(v74 + 40);
    if (v78 < *(v77 + 40))
    {
      v79 = *v74;
      v80 = *(v74 + 16);
      v81 = v75;
      v82 = *(v74 + 32);
      while (1)
      {
        v83 = v81;
        v84 = a1 + v81;
        v85 = *(v84 + 112);
        *(v84 + 144) = *(v84 + 96);
        *(v84 + 160) = v85;
        *(v84 + 176) = *(v84 + 128);
        *(v84 + 184) = *(v84 + 136);
        if (v83 == -96)
        {
          break;
        }

        v86 = *(v84 + 88);
        v81 = v83 - 48;
        if (v78 >= v86)
        {
          v87 = a1 + v81 + 144;
          v88 = (a1 + v83 + 128);
          goto LABEL_40;
        }
      }

      v88 = (v84 + 128);
      v87 = a1;
LABEL_40:
      *v87 = v79;
      *(v87 + 16) = v80;
      *v88 = v82;
      *(v87 + 40) = v78;
      if (++v76 == 8)
      {
        return v74 + 48 == a2;
      }
    }

    v77 = v74;
    v75 += 48;
    v74 += 48;
    if (v74 == a2)
    {
      return 1;
    }
  }
}

uint64_t CA::OGL::FlattenNode::retain_surface(CA::OGL::FlattenNode *this, float *a2, unsigned int a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *(this + 1);
  v7 = *v6;
  v8 = *(this + 38);
  if (v8 < 0)
  {
    (*(*this + 40))(this, this + 144);
    v8 = *(this + 38);
  }

  v9 = *(this + 39);
  v10 = *(*(this + 2) + 16);
  v11 = byte_1ED4E9876;
  if ((*(v10 + 28) & 4) != 0)
  {
    *buf = *(this + 18);
    *&buf[8] = v8;
    *&buf[12] = v9;
    v14 = CA::Render::FlattenManager::flattened_cache_retain_surface(v10, v7, buf);
    if (v11)
    {
      *(*(*(this + 2) + 176) + 236) = *(*(*(this + 2) + 176) + 236) & 0xFFE1FFFF | 0x40000;
      v38 = *(this + 2);
      v39 = *(*(v38 + 24) + 136);
      if (v39)
      {
        v40 = *v39;
        if (v40)
        {
          if (*(v40 + 12) == 63 && *(v40 + 48) == 1)
          {
            *(*(v38 + 176) + 236) = *(*(v38 + 176) + 236) & 0xFFE1FFFF | 0xA0000;
          }
        }
      }
    }

    *a2 = 1.0;
    return v14;
  }

  v45 = *(this + 18);
  if (CA::Render::FlattenManager::is_stager(v10))
  {
    v12 = *(v7 + 84);
    v42 = v11;
    v43 = a3;
    if (v12 && (*(v12 + 92) & 0x30) != 0)
    {
      v13 = 1380411457;
    }

    else
    {
      if (CADeviceUseCIF10::once != -1)
      {
        dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
      }

      if (CADeviceUseCIF10::enable_cif10)
      {
        v13 = 1647534392;
      }

      else
      {
        v13 = 1111970369;
      }
    }

    v44 = (*(*v7 + 144))(v7);
    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    v17 = *(*(v10 + 152) + 272);
    os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
    if ((v17 & 1) == 0 && (*(*(v6 + 8) + 1382) & 4) == 0)
    {
      (*(*v7 + 136))(v7, 0);
    }

    if (v8 >= v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = v8;
    }

    if (v18 < 1)
    {
      goto LABEL_48;
    }

    v41 = a2;
    *&v19 = v45;
    *(&v19 + 1) = __PAIR64__(v9, v8);
    v46 = v19;
    v20 = *(*(this + 3) + 232) & 0x7FFFFFF;
    v21 = (*(*v7 + 144))(v7);
    v22 = (*(*v7 + 1120))(v7);
    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    *(*(v10 + 152) + 256) = v22;
    os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
    v23 = *(v7 + 70);
    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    X::CFRef<CGColorSpace *>::operator=((*(v10 + 152) + 264), v23);
    os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    v24 = *(*(v10 + 152) + 200);
    if (v24)
    {
      *buf = v46;
      can_reuse_surface = CA::Render::FlattenedSurface::can_reuse_surface(v24, buf, v21, v13, v20);
      os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
      if (can_reuse_surface)
      {
LABEL_39:
        *buf = v46;
        v14 = CA::Render::FlattenManager::flattened_cache_retain_surface(v10, v7, buf);
        a2 = v41;
        if (v14)
        {
          if (v42)
          {
            *(*(*(this + 2) + 176) + 236) = *(*(*(this + 2) + 176) + 236) & 0xFFE1FFFF | 0x80000;
          }

          if ((*(*(v6 + 8) + 1382) & 4) == 0)
          {
            *(v14 + 148) |= 0xCu;
          }

          CA::OGL::Context::push_surface(v7, v14, 1u, 0, 0);
          CA::OGL::ImagingNode::render(*(this + 3), 0, 0);
          CA::OGL::Context::pop_surface(v7);
          os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
          v29 = *(v10 + 152);
          if (*(v29 + 184) == v10)
          {
            *(v29 + 184) = 0;
          }

          *(v29 + 240) &= ~1u;
          CA::Render::FlattenManager::send_did_change_flatten(v29, 0xFF);
          os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
          v31 = *(*(this + 2) + 24);
          if (v31)
          {
            layer_resource_text = CA::Render::create_layer_resource_text(v31, v30);
          }

          else
          {
            layer_resource_text = 0;
          }

          os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
          v33 = *(*(v10 + 152) + 236);
          os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
          (*(*v7 + 880))(v7, v14, 0, v33, @"flatten-surface");
          if (*(v10 + 104) != v10 + 96)
          {
            v35 = CA::Render::Update::build_hit_test_tree(*(*(this + 1) + 8), v10, v34, 1.0);
            os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
            v36 = *(v10 + 152);
            v37 = *(v36 + 192);
            if (v37)
            {
              CA::Render::HitTestTree::unref(v37);
            }

            *(v36 + 192) = v35;
            os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
          }

          *v41 = 1.0;
          (*(*v7 + 136))(v7, v44);
          if (layer_resource_text)
          {
            CFRelease(layer_resource_text);
          }

          return v14;
        }

LABEL_48:
        (*(*v7 + 136))(v7, v44);
        return (*(**(this + 3) + 80))(*(this + 3), a2, v43);
      }
    }

    else
    {
      os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
    }

    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    v26 = CA::Render::FlattenManager::flattened_free_surface_pool[0];
    if (CA::Render::FlattenManager::flattened_free_surface_pool[0] == off_1EA84E760[0])
    {
LABEL_32:
      os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
    }

    else
    {
      while (1)
      {
        v27 = *v26;
        *buf = v46;
        if (CA::Render::FlattenedSurface::can_reuse_surface(v27, buf, v21, v13, v20))
        {
          break;
        }

        if (++v26 == off_1EA84E760[0])
        {
          goto LABEL_32;
        }
      }

      v28 = off_1EA84E760[0];
      if (off_1EA84E760[0] != v26 + 1)
      {
        memmove(v26, v26 + 1, off_1EA84E760[0] - (v26 + 1));
        v28 = off_1EA84E760[0];
      }

      if (v28 <= CA::Render::FlattenManager::flattened_free_surface_pool[0])
      {
        __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
      }

      off_1EA84E760[0] = v28 - 1;
      os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
      if (v27)
      {
        *buf = v46;
        CA::Render::FlattenManager::flattened_cache_add_surface(v10, v27, buf);
        goto LABEL_39;
      }
    }

    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    operator new();
  }

  v15 = *(**(this + 3) + 80);

  return v15();
}

uint64_t CA::OGL::FlattenNode::propagate_roi(CA::OGL::FlattenNode *this, const CA::Bounds *a2)
{
  result = (*(**(this + 3) + 56))(*(this + 3), a2);
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xF8000000FFFFFFFFLL | ((HIDWORD(*(this + 228)) & 0x7FFFFFFLL) << 32);
  *(*(this + 3) + 228) |= 0x40000000000uLL;
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xFFFFFFFFFFFFFDFFLL | (((*(this + 228) >> 9) & 1) << 9);
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xFFFFFFFFFFFFC3FFLL | (((*(this + 228) >> 10) & 0xFLL) << 10);
  *(*(this + 3) + 228) |= 0x100000000000uLL;
  return result;
}

uint64_t CA::OGL::FlattenNode::grow_roi(int32x2_t *this, int32x2_t *a2)
{
  if (this[19].i32[0] < 0)
  {
    (*(*this + 40))(this, this + 18);
  }

  v4 = this[18];
  v5 = this[19];

  return CA::BoundsImpl::Union(a2, v4, v5);
}

void CA::OGL::FlattenNode::compute_dod(CA::OGL::FlattenNode *this, CA::Bounds *a2)
{
  v4 = *(*(this + 2) + 16);
  if ((*(v4 + 28) & 8) != 0 || ((os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock), v9 = *(*(v4 + 152) + 152), os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock), v5 = HIDWORD(v9), SDWORD2(v9) >= SHIDWORD(v9)) ? (v6 = HIDWORD(v9)) : (v6 = DWORD2(v9)), v6 < 1))
  {
    v7 = *(this + 3);
    v8 = *(v7 + 152);
    if (v8 < 0)
    {
      (*(*v7 + 40))(v7, v7 + 144);
      v8 = *(v7 + 152);
    }

    *a2 = *(v7 + 144);
    *(a2 + 2) = v8;
    v5 = *(v7 + 156);
  }

  else
  {
    *a2 = v9;
    *(a2 + 2) = DWORD2(v9);
  }

  *(a2 + 3) = v5;
}

_DWORD *CA::OGL::AsynchronousNode::retain_surface(CA::OGL::AsynchronousNode *this, float *a2, CA::Render::LayerNode *a3, float a4, double a5, double a6, double a7, float64x2_t a8)
{
  v93 = *MEMORY[0x1E69E9840];
  v8 = *(this + 1);
  v9 = *v8;
  v10 = *(this + 30);
  if (v10)
  {
    v11 = a2;
    v13 = *(this + 2);
    v14 = *(v10 + 24);
    v15 = *(v9 + 84);
    if (v15)
    {
      v16 = (*(v15 + 92) & 0x30) != 0;
    }

    else
    {
      v16 = 0;
    }

    v18 = *(v10 + 21);
    v74 = *(this + 2);
    if (v14)
    {
      buffer = 0;
      goto LABEL_51;
    }

    v19 = *(v13 + 24);
    v20 = *(v19 + 136);
    if (v20)
    {
      v21 = *(v20 + 308);
    }

    else
    {
      LOBYTE(a4) = *(v19 + 39);
      v21 = LODWORD(a4);
    }

    v22 = *(v19 + 72);
    v23 = *(v19 + 88);
    if (v21 != 1.0)
    {
      v24 = v21;
      a8.f64[0] = 1.79769313e308;
      v25 = vdupq_lane_s64(vcgtq_f64(a8, v23).i64[0], 0);
      v26.i64[1] = *(v19 + 80);
      *v26.i64 = v21 * v22.f64[0];
      v22 = vbslq_s8(v25, v26, v22);
      v26.i64[1] = *(v19 + 96);
      *v26.i64 = v21 * v23.f64[0];
      v23 = vbslq_s8(v25, v26, v23);
      if (v23.f64[1] < 1.79769313e308)
      {
        v22.f64[1] = vmuld_lane_f64(v24, v22, 1);
        v23.f64[1] = v23.f64[1] * v24;
      }
    }

    v27 = vceqzq_f64(v23);
    v28 = 0uLL;
    if ((vorrq_s8(vdupq_laneq_s64(v27, 1), v27).u64[0] & 0x8000000000000000) == 0)
    {
      v29 = vceqq_f64(v23, v23);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v29), 1), v29).u64[0] & 0x8000000000000000) == 0)
      {
        v30 = vmaxnmq_f64(v22, vdupq_n_s64(0xC1BFFFFFFF000000));
        v31 = vminnmq_f64(vaddq_f64(v22, v23), vdupq_n_s64(0x41C0000000000000uLL));
        v32 = vcvtmq_s64_f64(v30);
        v28 = vuzp1q_s32(v32, vsubq_s64(vcvtpq_s64_f64(v31), v32));
      }
    }

    v73 = v28;
    v33 = *(v10 + 32);
    v34 = *(v13 + 16);
    v35 = *(v34 + 104);
    if (v35 == (v34 + 96))
    {
      v36 = 0;
    }

    else
    {
      v36 = CA::Render::Update::build_hit_test_tree(v8[1], v35, a3, 1.0);
    }

    v37 = *(v8[1] + 296);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v38 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x250uLL, 0xDEEC3011uLL);
    v14 = v38;
    if (v38)
    {
      v72 = v11;
      v39 = 0;
      *(v38 + 3) = *(*(this + 30) + 16);
      *(v38 + 24) = xmmword_183E20F30;
      *(v38 + 40) = xmmword_183E20F40;
      *(v38 + 4) = xmmword_183E20F20;
      *(v38 + 92) = 0x100000001;
      *(v38 + 100) = 0u;
      *(v38 + 116) = 0u;
      *(v38 + 34) = 1065353216;
      *(v38 + 39) = -1;
      *(v38 + 10) = xmmword_183E211A0;
      v40 = v38 + 440;
      *(v38 + 14) = 0;
      *(v38 + 10) = 0;
      *(v38 + 87) = 0;
      v38[132] = 0;
      *(v38 + 148) = 0;
      *(v38 + 140) = 0;
      *(v38 + 44) = 0;
      *(v38 + 23) = 0;
      *(v38 + 24) = 0;
      *(v38 + 25) = 1065353216;
      v38[208] = 0;
      *(v38 + 53) = 0;
      *(v38 + 27) = v36;
      *(v38 + 2) = 1;
      *v38 = &unk_1EF1F4F28;
      *(v38 + 60) = 0;
      do
      {
        v41 = &v14[v39];
        *&v14[v39 + 256] = 0;
        *(v41 + 34) = dispatch_semaphore_create(1);
        *(v41 + 35) = dispatch_semaphore_create(1);
        v39 += 64;
      }

      while (v39 != 128);
      *(v14 + 24) = v73;
      *(v14 + 100) = v21;
      *(v14 + 106) = 0;
      v14[576] = v16;
      v14[577] = v18;
      *v40 = xmmword_183E20E00;
      *(v14 + 456) = 0u;
      *(v14 + 472) = xmmword_183E20E60;
      *(v14 + 488) = 0u;
      *(v14 + 504) = 0u;
      *(v14 + 520) = xmmword_183E20E00;
      *(v14 + 536) = 0u;
      *(v14 + 552) = xmmword_183E20E60;
      *(v14 + 51) = v37;
      buffer = CA::OGL::AsynchronousItem::first_buffer(v14, v9, v33);
      v11 = v72;
      if (!buffer)
      {
        goto LABEL_36;
      }
    }

    else
    {
      buffer = CA::OGL::AsynchronousItem::first_buffer(0, v9, v33);
      if (!buffer)
      {
LABEL_36:
        *(v14 + 2) = v33;
        CA::Render::AsynchronousState::set_item(*(this + 30), v14);
        *(*(this + 30) + 20) = 1;
        if (CA::OGL::AsynchronousDispatcher::dispatcher(void)::once[0] != -1)
        {
          dispatch_once(CA::OGL::AsynchronousDispatcher::dispatcher(void)::once, &__block_literal_global_1819);
        }

        v44 = CA::OGL::AsynchronousDispatcher::dispatcher(void)::dispatcher;
        v45 = *(v9 + 75);
        if (v45)
        {
          v46 = (*(*v45 + 16))(v45);
          if (v46)
          {
            v47 = (*(*v46 + 760))(v46);
            v48 = 0.0166666667;
            if (v47 > 0.0 && v47 * 0.95 <= 0.0166666667)
            {
              v48 = round(0.0166666667 / v47) * v47;
            }

            if (v48 > v47)
            {
              v47 = v48;
            }

            *(v44 + 48) = CAHostTimeWithTime(v47);
          }
        }

        os_unfair_lock_lock((v44 + 4));
        atomic_fetch_add(v14 + 2, 1u);
        *(v14 + 29) = v44;
        *(v14 + 28) = *(v44 + 8);
        *(v44 + 8) = v14;
        ++*(v44 + 16);
        if (*v44)
        {
          v49 = *(v44 + 32);
          v50 = *MEMORY[0x1E695E8E0];
          *&block = MEMORY[0x1E69E9820];
          *(&block + 1) = 0x40000000;
          *&v85 = ___ZN2CA3OGL22AsynchronousDispatcher13schedule_itemEPNS0_16AsynchronousItemE_block_invoke;
          *(&v85 + 1) = &__block_descriptor_tmp_1;
          *&v86 = v44;
          CFRunLoopPerformBlock(v49, v50, &block);
          CFRunLoopWakeUp(*(v44 + 32));
        }

        os_unfair_lock_unlock((v44 + 4));
        add = atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
        if (v14 && add == 1)
        {
          (*(*v14 + 8))(v14);
        }

LABEL_51:
        os_unfair_lock_lock(v14 + 106);
        v14[576] = v16;
        os_unfair_lock_unlock(v14 + 106);
        os_unfair_lock_lock(v14 + 106);
        v14[577] = v18;
        os_unfair_lock_unlock(v14 + 106);
        v52 = *(this + 30);
        v53 = v52 + 40;
        v54 = *(v52 + 64);
        os_unfair_lock_lock(v14 + 106);
        *(v14 + 54) = v53;
        *(v14 + 71) = CAHostTimeWithTime(v54);
        os_unfair_lock_unlock(v14 + 106);
        v76 = xmmword_183E20E00;
        v77 = 0u;
        v78 = xmmword_183E20E60;
        v79 = 0u;
        v80 = 0u;
        v81 = xmmword_183E20E00;
        v82 = 0u;
        v83 = xmmword_183E20E60;
        v75[0] = &unk_1EF204020;
        v75[1] = &v76;
        CA::Render::LayerNode::MapGeometry::map(v75, 0, *(*(this + 2) + 16));
        os_unfair_lock_lock(v14 + 106);
        v55 = v77;
        v56 = v78;
        v57 = v79;
        *(v14 + 440) = v76;
        *(v14 + 456) = v55;
        *(v14 + 472) = v56;
        *(v14 + 488) = v57;
        v58 = v81;
        v59 = v82;
        v60 = v83;
        *(v14 + 504) = v80;
        *(v14 + 520) = v58;
        *(v14 + 536) = v59;
        *(v14 + 552) = v60;
        os_unfair_lock_unlock(v14 + 106);
        v61 = *(v9 + 75);
        if (v61)
        {
          v62 = (*(*v61 + 16))(v61);
          if (v62)
          {
            v63 = v62;
            v92 = 0;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            block = 0u;
            v85 = 0u;
            CA::WindowServer::Display::reconciled_display_attributes(&block, v62);
            *(v14 + 104) = v89;
            *(v14 + 120) = v90;
            *(v14 + 136) = v91;
            v64 = v92;
            v65 = block;
            *(v14 + 40) = v85;
            *(v14 + 56) = v86;
            *(v14 + 72) = v87;
            *(v14 + 88) = v88;
            *(v14 + 19) = v64;
            *(v14 + 24) = v65;
            *(v14 + 24) = (*(*v63 + 1416))(v63);
            *(v14 + 10) = *(v63 + 872);
          }
        }

        *v11 = 1.0;
        if (buffer)
        {
          goto LABEL_63;
        }

        v66 = *(*(v74 + 16) + 24);
        os_unfair_lock_lock(v14 + 60);
        v67 = *(v14 + 47);
        if (v67 && *v67 && ((v68 = v66 & 0x4000000) != 0 || !dispatch_semaphore_wait(*(v67 + 24), 0)))
        {
          *&block = MEMORY[0x1E69E9820];
          *(&block + 1) = 0x40000000;
          *&v85 = ___ZN2CA3OGL16AsynchronousItem20retain_latest_bufferERNS0_7ContextEb_block_invoke;
          *(&v85 + 1) = &__block_descriptor_tmp_9_1834;
          LOBYTE(v87) = v68 >> 26;
          *&v86 = v14;
          *(&v86 + 1) = v67;
          atomic_fetch_add(v14 + 2, 1u);
          if (((*(*v9 + 192))(v9, &block) & 1) == 0)
          {
            (v85)(&block);
          }

          v70 = CFRetain(*v67);
          os_unfair_lock_unlock(v14 + 60);
          if (v70)
          {
            buffer = (*(*v9 + 728))(v9, 1, 0, 0, v70);
            CFRelease(v70);
            if (buffer)
            {
              goto LABEL_63;
            }
          }
        }

        else
        {
          os_unfair_lock_unlock(v14 + 60);
        }

        buffer = *(v9 + 86);
        if (buffer || (buffer = (*(*v9 + 792))(v9), (*(v9 + 86) = buffer) != 0))
        {
          ++*buffer;
        }

LABEL_63:
        if (byte_1ED4E980A == 1)
        {
          v71 = *(*(this + 2) + 176);
          if (v71)
          {
            *(v71 + 236) = *(v71 + 236) & 0xFFE1FFFF | 0x20000;
          }
        }

        return buffer;
      }
    }

    v42 = 1.0;
    if (!v16)
    {
      CA::Render::Update::render_edr_factor();
    }

    v43 = vcvts_n_s32_f32(v42, 0x14uLL);
    if (v42 == 0.0)
    {
      v43 = 0;
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    block = 0u;
    v85 = 0u;
    HIDWORD(v89) = v43;
    LODWORD(v92) = 0;
    LODWORD(v90) = (v42 != 0.0) << 20;
    IOSurfaceSetBulkAttachments2();
    buffer = (*(*v9 + 728))(v9, 1, 0, 0, buffer);
    if (buffer)
    {
      CA::OGL::Context::push_surface(v9, buffer, 1u, 0, 0);
      CA::OGL::ImagingNode::render(*(this + 3), 0, 0);
      CA::OGL::Context::pop_surface(v9);
    }

    goto LABEL_36;
  }

  buffer = *(v9 + 86);
  if (buffer || (buffer = (*(*v9 + 792))(*v8, a2), (*(v9 + 86) = buffer) != 0))
  {
    ++*buffer;
  }

  return buffer;
}

uint64_t CA::OGL::AsynchronousNode::propagate_roi(CA::OGL::AsynchronousNode *this, const CA::Bounds *a2, float a3, double a4, double a5, double a6, float64x2_t a7)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = *(*(this + 2) + 24);
  v9 = *(v8 + 136);
  if (v9)
  {
    v10 = *(v9 + 308);
  }

  else
  {
    LOBYTE(a3) = *(v8 + 39);
    v10 = LODWORD(a3);
  }

  v11 = *(v8 + 72);
  v12 = *(v8 + 88);
  if (v10 != 1.0)
  {
    v13 = v10;
    a7.f64[0] = 1.79769313e308;
    v14 = vdupq_lane_s64(vcgtq_f64(a7, v12).i64[0], 0);
    v15.i64[1] = *(v8 + 80);
    *v15.i64 = v13 * v11.f64[0];
    v11 = vbslq_s8(v14, v15, v11);
    v15.i64[1] = *(v8 + 96);
    *v15.i64 = v13 * v12.f64[0];
    v12 = vbslq_s8(v14, v15, v12);
    if (v12.f64[1] < 1.79769313e308)
    {
      v11.f64[1] = vmuld_lane_f64(v13, v11, 1);
      v12.f64[1] = v12.f64[1] * v13;
    }
  }

  v16 = *(this + 3);
  v17 = vceqzq_f64(v12);
  if ((vorrq_s8(vdupq_laneq_s64(v17, 1), v17).u64[0] & 0x8000000000000000) != 0 || (v18 = vceqq_f64(v12, v12), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v18), 1), v18).u64[0] & 0x8000000000000000) != 0))
  {
    v23 = 0uLL;
  }

  else
  {
    v19 = vmaxnmq_f64(v11, vdupq_n_s64(0xC1BFFFFFFF000000));
    v20 = vminnmq_f64(vaddq_f64(v11, v12), vdupq_n_s64(0x41C0000000000000uLL));
    v21 = vcvtmq_s64_f64(v19);
    v23 = vuzp1q_s32(v21, vsubq_s64(vcvtpq_s64_f64(v20), v21));
  }

  result = (*(*v16 + 56))(v16, &v23);
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xF8000000FFFFFFFFLL | ((HIDWORD(*(this + 228)) & 0x7FFFFFFLL) << 32);
  *(*(this + 3) + 228) |= 0x100000000000uLL;
  return result;
}

uint64_t CA::OGL::AsynchronousNode::compute_dod(uint64_t this, int32x2_t *a2, double *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 16) + 24);
  v4 = *(v3 + 88);
  v12 = *(v3 + 72);
  v13 = v4;
  if (v4.f64[0] != 0.0)
  {
    CA::Rect::apply_transform(&v12, *(this + 80), a3);
    v6 = vceqzq_f64(v13);
    v7 = vorrq_s8(vdupq_laneq_s64(v6, 1), v6).u64[0];
    v8 = 0uLL;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = vceqq_f64(v13, v13);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v9), 1), v9).u64[0] & 0x8000000000000000) == 0)
      {
        v10 = vcvtmq_s64_f64(vmaxnmq_f64(v12, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v8 = vuzp1q_s32(v10, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v12, v13), vdupq_n_s64(0x41C0000000000000uLL))), v10));
      }
    }

    v11 = vextq_s8(v8, v8, 8uLL).u64[0];

    return CA::BoundsImpl::Union(a2, *v8.i8, v11);
  }

  return this;
}

void *CA::OGL::LayerNode::filter_source_layer(CA::OGL::LayerNode *this, CA::Render::String *a2)
{
  if (!a2)
  {
    return 0;
  }

  for (i = *(this + 32); i; i = *i)
  {
    v4 = *(i[3] + 128);
    if (v4)
    {
      v5 = *(v4 + 24);
      if (v5 == *(a2 + 6) && !memcmp((v4 + 28), a2 + 28, v5))
      {
        break;
      }
    }
  }

  return i;
}

uint64_t CA::OGL::LayerNode::retain_filter_source_surface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int32x2_t *a5)
{
  if (a3)
  {
    v8 = *(a3 + 16);
    if (v8 && (*(v8 + 24) - 283) <= 1 && *(a2 + 200))
    {
      if (BYTE8(xmmword_1ED4E98AC) == 1)
      {
        *(*(*(a1 + 16) + 176) + 236) = *(*(*(a1 + 16) + 176) + 236) & 0xFFE1FFFF | 0x100000;
      }

      return 0;
    }

    v10 = *(a2 + 176);
    CA::OGL::ImagingNode::clip_roi(v10, a5);
    if ((CA::OGL::filter_flags(a3, *(a1 + 16)) & 2) != 0)
    {
      *(v10 + 59) |= 0x2000000u;
    }
  }

  else
  {
    v10 = *(a2 + 176);
    CA::OGL::ImagingNode::clip_roi(v10, a5);
  }

  v11 = *(*v10 + 80);

  return v11(v10, a4, 64);
}

uint64_t CA::OGL::ImagingNode::clip_roi(CA::OGL::ImagingNode *this, int32x2_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *v11[0].i8 = 0uLL;
  CA::Shape::get_bounds(this + 160, v11);
  v4 = vclez_s32(v11[1]);
  if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) == 0)
  {
    v5 = a2[1];
    v6 = vclez_s32(v5);
    if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) != 0 || (*&v7 = vmax_s32(v11[0], *a2), v8 = vsub_s32(vmin_s32(vadd_s32(v11[0], v11[1]), vadd_s32(*a2, v5)), *&v7), v9 = vclez_s32(v8), (vpmax_u32(v9, v9).u32[0] & 0x80000000) != 0))
    {
      v11[1] = 0;
    }

    else
    {
      *(&v7 + 1) = v8;
      *v11[0].i8 = v7;
    }
  }

  return CA::Shape::operator=(this + 160, v11);
}

float64_t *CA::OGL::SDFNode::map_shadow_bounds(float64_t *result, int32x4_t *a2, int a3, float32_t a4, float32x2_t a5)
{
  v5 = a2->i64[1];
  v6 = HIDWORD(v5);
  v7.i64[0] = v5;
  v7.i64[1] = SHIDWORD(v5);
  v8 = v7;
  if (v5 > SHIDWORD(v5))
  {
    v6 = a2->i64[1];
  }

  v9 = vcvtq_f64_s64(v8);
  v10 = vdup_n_s32(v6 > 1073741822);
  v11.i64[0] = v10.u32[0];
  v11.i64[1] = v10.u32[1];
  v12 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v11, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v9);
  v13 = vceqzq_f64(v12);
  v14 = vdupq_laneq_s64(v13, 1);
  v15 = vorrq_s8(v14, v13);
  if (v15.i64[0] < 0)
  {
    a2->i64[0] = 0;
    a2->i64[1] = 0;
  }

  else
  {
    v15.i32[0] = 1073741822;
    v14.i32[0] = v6;
    v16.i64[0] = a2->i64[0];
    v16.i64[1] = HIDWORD(a2->i64[0]);
    v17 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v14, v15), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v16));
    a5.f32[1] = a4;
    v18.f64[0] = *result;
    v19.f64[0] = result[1];
    v18.f64[1] = result[5];
    v19.f64[1] = result[4];
    v20 = vmla_f32(vmul_f32(a5, vcvt_f32_f64(v19)), vcvt_f32_f64(v18), vrev64_s32(a5));
    v21 = -1.0;
    if (a3)
    {
      v21 = 1.0;
    }

    v22 = vaddq_f64(v17, vcvtq_f64_f32(vmul_n_f32(v20, v21)));
    v23 = vcvtmq_s64_f64(vmaxnmq_f64(v22, vdupq_n_s64(0xC1BFFFFFFF000000)));
    *a2 = vuzp1q_s32(v23, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v22, v12), vdupq_n_s64(0x41C0000000000000uLL))), v23));
  }

  return result;
}

uint64_t CA::OGL::SDFGaussianNode::apply(uint64_t result, uint64_t *a2, float *a3, float a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2)
  {
    v6 = result;
    v7 = **(result + 8);
    v8 = *(result + 80);
    if ((*(v8 + 144) & 0x10) != 0)
    {
      v11 = vaddvq_f64(vmulq_f64(*v8, *v8));
      v10 = vaddvq_f64(vmulq_f64(*(v8 + 32), *(v8 + 32)));
      v12 = *(v8 + 120);
      if (v12 != 1.0)
      {
        v13 = 1.0 / (v12 * v12);
        v11 = v13 * v11;
        v10 = v13 * v10;
      }

      v14 = v11 != 1.0;
      if (v10 != 1.0)
      {
        v14 = 1;
      }

      v9.f64[0] = sqrt(v11);
      v15 = sqrt(v10);
      if (v14)
      {
        v10 = v15;
      }

      else
      {
        v9.f64[0] = v11;
      }
    }

    else
    {
      v9.f64[0] = *(v8 + 128);
      v10 = v9.f64[0];
    }

    v16 = *a3;
    v30 = 0;
    v32 = 0u;
    v33 = 132;
    v28 = 0u;
    v29 = 0u;
    v31 = 0x1000000001;
    v17 = *(result + 152);
    if ((v17 & 0x80000000) != 0)
    {
      v24 = v10;
      v25 = v9.f64[0];
      (*(*result + 40))(result, result + 144);
      v10 = v24;
      v9.f64[0] = v25;
      v17 = *(v6 + 152);
    }

    v9.f64[1] = v10;
    v18 = vmul_n_f32(vcvt_f32_f64(v9), *(*(v6 + 240) + 144) * v16);
    *&v32 = *(v6 + 144);
    *(&v32 + 1) = __PAIR64__(*(v6 + 156), v17);
    *(v7[2] + 8) = *(v7[82] + 32);
    v19 = v7[2];
    v20 = *(v19 + 16);
    v21 = *(v19 + 8) == 0x3C003C003C003C00;
    v27 = v18;
    v22 = v20 & 0xFFFFFF00FF00FF00;
    if (v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = 3;
    }

    *(v19 + 16) = v23 | v22;
    *(v19 + 20) = HIDWORD(v22);
    v26 = 0;
    result = (*(*v7 + 928))(v7, v4, &v27, &v26, a4, v16);
    *(v7[2] + 16) = 0;
  }

  return result;
}

uint64_t CA::OGL::SDFGaussianNode::propagate_roi(CA::OGL::SDFGaussianNode *this, const CA::Bounds *a2)
{
  *(this + 228) = *(this + 228) & 0xFEFFF7EFFFFFFFFFLL | 0x100001000000000;
  result = (*(**(this + 3) + 56))(*(this + 3), &CA::RectTraits<int>::infinity);
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xF8000000FFFFFFFFLL | ((HIDWORD(*(this + 228)) & 0x7FFFFFFLL) << 32);
  *(*(this + 3) + 228) |= 0x200uLL;
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xFFFFFFFFFFFFC3FFLL | (((*(this + 228) >> 10) & 0xFLL) << 10);
  return result;
}

uint64_t CA::OGL::SDFGaussianNode::add_roi(int32x2_t *this, const CA::Bounds *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *v15[0].i8 = v3;
  v4 = *(&v3 + 8);
  if (this[19].i32[0] < 0)
  {
    v14 = v3;
    (*(*this + 40))(this, this + 18);
    *&v3 = v14;
  }

  v5 = vclez_s32(v4);
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) == 0)
  {
    v6 = this[19];
    v7 = vclez_s32(v6);
    if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0 || (v8 = this[18], v9 = vadd_s32(v8, v6), *&v10 = vmax_s32(*&v3, v8), v11 = vsub_s32(vmin_s32(vadd_s32(*&v3, v4), v9), *&v10), v12 = vclez_s32(v11), (vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0))
    {
      v15[1] = 0;
    }

    else
    {
      *(&v10 + 1) = v11;
      *v15[0].i8 = v10;
    }
  }

  return CA::OGL::ImagingNode::add_roi(this, v15);
}

_DWORD *CA::OGL::SDFGaussianNode::compute_dod(CA::OGL::SDFGaussianNode *this, CA::Bounds *a2)
{
  v4 = *(this + 3);
  v5 = *(v4 + 152);
  if (v5 < 0)
  {
    (*(*v4 + 40))(*(this + 3), v4 + 144);
    v5 = *(v4 + 152);
  }

  *a2 = *(v4 + 144);
  v6 = *(v4 + 156);
  *(a2 + 2) = v5;
  *(a2 + 3) = v6;
  v7 = *(this + 10);
  if ((*(v7 + 144) & 0x10) != 0)
  {
    v10 = vaddvq_f64(vmulq_f64(*v7, *v7));
    v11 = vaddvq_f64(vmulq_f64(*(v7 + 32), *(v7 + 32)));
    v12 = *(v7 + 120);
    if (v12 != 1.0)
    {
      v13 = 1.0 / (v12 * v12);
      v10 = v13 * v10;
      v11 = v13 * v11;
    }

    v14 = v10 != 1.0;
    if (v11 != 1.0)
    {
      v14 = 1;
    }

    v15 = sqrt(v10);
    v16 = sqrt(v11);
    if (v14)
    {
      v9 = v16;
    }

    else
    {
      v9 = v11;
    }

    if (v14)
    {
      v8 = v15;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v8 = *(v7 + 128);
    v9 = v8;
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v17 = (*(*(this + 30) + 144) * *&dword_1ED4E9794);

  return CA::BoundsImpl::inset(a2, (v8 * v17), (v9 * v17));
}

int32x2_t CA::OGL::SDFElementGroupNode::set_surface_origin(int32x2_t *a1, int32x2_t *a2)
{
  result = vadd_s32(a2[8], a1[31]);
  a2[6] = result;
  return result;
}

uint64_t CA::OGL::SDFElementGroupNode::retain_surface(CA::OGL::SDFElementGroupNode *this, float *a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = *(this + 1);
  v7 = *v6;
  v8 = CA::OGL::Context::cache_fetch(*v6, this + 60);
  v10 = &CADisplayTimerGetTypeID::type;
  if (!v8)
  {
LABEL_42:
    v35 = (*(**(this + 3) + 80))(*(this + 3), a2, a3);
    if (*(v10 + 2225) == 1)
    {
      CA::OGL::Context::record_sdf_debug_update(v7, *(this + 60), 2, *(v6[1] + 272));
    }

    goto LABEL_44;
  }

  v11 = v8;
  v12 = *(v8 + 48) != 0;
  v13 = *(this + 10);
  v14 = *(*(this + 2) + 24);
  v15 = *(v14 + 88);
  v53[0] = *(v14 + 72);
  v53[1] = v15;
  CA::Rect::apply_transform(v53, v13, v9);
  *(this + 31) = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v53[0])));
  if ((*(this + 38) & 0x80000000) != 0)
  {
    (*(*this + 40))(this, this + 144);
  }

  v16 = *(this + 16);
  v52 = v16;
  v17 = v16.i32[2];
  if (v16.i32[2] <= v16.i32[3])
  {
    v18 = v16.i32[3];
  }

  else
  {
    v18 = v16.i32[2];
  }

  if (v16.i32[2] >= v16.i32[3])
  {
    v17 = v16.i32[3];
  }

  if (v18 <= 1073741822 && v17 >= 1)
  {
    v52 = vaddq_s32(v16, xmmword_183E20FD0);
    v20 = vclez_s32(*&vextq_s8(v52, v52, 8uLL));
    if (vorr_s8(v20, vdup_lane_s32(v20, 1)).u8[0])
    {
      v52.i64[1] = 0;
    }
  }

  v21 = *(**(*(*(*(this + 2) + 192) + 24) + 136) + 160);
  if (v21)
  {
    if (*(v21 + 16))
    {
      v21 = *(v21 + 16);
    }

    if ((*(v13 + 144) & 0x10) != 0)
    {
      v22.f64[0] = vaddvq_f64(vmulq_f64(*v13, *v13));
      v23 = vaddvq_f64(vmulq_f64(*(v13 + 32), *(v13 + 32)));
      v26 = *(v13 + 120);
      if (v26 != 1.0)
      {
        v27 = 1.0 / (v26 * v26);
        v22.f64[0] = v27 * v22.f64[0];
        v23 = v27 * v23;
      }

      v28 = v22.f64[0] != 1.0;
      if (v23 != 1.0)
      {
        v28 = 1;
      }

      v29 = sqrt(v22.f64[0]);
      v30 = sqrt(v23);
      if (v28)
      {
        v23 = v30;
        v22.f64[0] = v29;
      }
    }

    else
    {
      v22.f64[0] = *(v13 + 128);
      v23 = v22.f64[0];
    }

    v24 = v52.u64[1];
    v25 = *v52.i8;
    v31 = vclez_s32(v52.u64[1]);
    if ((vpmax_u32(v31, v31).u32[0] & 0x80000000) == 0)
    {
      v22.f64[1] = v23;
      v32 = vadd_s32(*v52.i8, vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vmulq_f64(v22, *(v21 + 208))))));
      v25 = vmin_s32(*v52.i8, v32);
      v24 = vsub_s32(vmax_s32(vadd_s32(*v52.i8, v52.u64[1]), vadd_s32(v32, v52.u64[1])), v25);
      *v52.i8 = v25;
      v52.u64[1] = v24;
    }

    v33 = *(v21 + 379);
    *(v21 + 379) = 0;
    v50 = v25;
    v51 = *&vadd_s32(v24, 0x3F0000003FLL) & 0xFFFFFFC0FFFFFFC0;
    if ((v33 & 1) == 0)
    {
      surface = CA::OGL::Context::cache_get_surface(v7, v11, &v52, v13);
      if (surface)
      {
        v35 = surface;
        v36 = v12;
        v37 = *(surface + 72);
        v38 = v37 == ((*v7)[18])(v7);
        v12 = v36;
        v10 = &CADisplayTimerGetTypeID::type;
        if (v38)
        {
          if ((*(v35 + 148) & 0x100) != 0)
          {
            (*(*this + 88))(this, v35);
          }

          ++*v35;
          goto LABEL_44;
        }
      }
    }
  }

  else
  {
    v24 = v52.u64[1];
    v25 = *v52.i8;
    v50 = v52.i64[0];
    v51 = *&vadd_s32(v52.u64[1], 0x3F0000003FLL) & 0xFFFFFFC0FFFFFFC0;
  }

  v39 = ((*v7)[87])(v7, 1, &v50, *(this + 58) & 0x6FF7BFF | 0x1008400u, @"sdf-node-retain-surface");
  v35 = v39;
  if (v39)
  {
    v39[18].i16[2] |= 0x120u;
    v39[8] = vsub_s32(v39[6], *(this + 248));
    v57 = 0;
    *&v55[16] = 0u;
    v56 = 0u;
    *&v54[16] = 0u;
    *v55 = 0u;
    *v54 = 0u;
    v40 = v7[82];
    *&v54[8] = *(v40 + 1);
    v41 = v40[4];
    *&v54[24] = v40[3];
    *v55 = v41;
    *&v55[8] = *(v40 + 5);
    *&v55[24] = v40[7];
    v42 = *(v40 + 40);
    LODWORD(v56) = *(v40 + 16);
    v57 = v42 & 0x5FF;
    *(&v56 + 1) = v40[9];
    *v54 = CA::OGL::Context::set_gstate(v7, v54);
    CA::OGL::Context::push_surface(v7, v35, 1u, a3, 0);
    CA::OGL::ImagingNode::render(*(this + 3), 0, a3);
    CA::OGL::Context::pop_surface(v7);
    CA::OGL::Context::set_gstate(v7, *v7[82]);
    if (*(v10 + 2225) == 1)
    {
      CA::OGL::Context::record_sdf_debug_update(v7, *(this + 60), v12, *(v6[1] + 272));
    }

    v43 = v7;
    v44 = v11;
    v45 = v35;
  }

  else
  {
    v43 = v7;
    v44 = v11;
    v45 = 0;
  }

  CA::OGL::Context::cache_set_surface(v43, v44, v45);
  CA::Transform::operator=(v11 + 64, v13);
  v46.i64[0] = v25.i32[0];
  v46.i64[1] = v25.i32[1];
  *(v11 + 28) = vmovn_s64(vcvtq_s64_f64(vsubq_f64(vcvtq_f64_s64(v46), *(v13 + 96))));
  *(v11 + 36) = v24;
  if (!v35)
  {
    goto LABEL_42;
  }

LABEL_44:
  if (*(v10 + 2225) == 1)
  {
    v48 = CA::OGL::Context::sdf_debug_color(v7, *(this + 60), *(v6[1] + 272));
    if (v48)
    {
      v49 = *(*(this + 2) + 176);
      if (v49)
      {
        *(v49 + 236) = *(v49 + 236) & 0xFFE1FFFF | (v48 << 17);
      }
    }
  }

  return v35;
}

uint64_t CA::OGL::SDFElementGroupNode::propagate_roi(CA::OGL::SDFElementGroupNode *this, const CA::Bounds *a2)
{
  *(this + 228) &= ~0x80000000000uLL;
  result = (*(**(this + 3) + 56))(*(this + 3), &CA::RectTraits<int>::infinity);
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xF8000000FFFFFFFFLL | ((HIDWORD(*(this + 228)) & 0x7FFFFFFLL) << 32);
  *(*(this + 3) + 228) |= 0x40000000000uLL;
  *(*(this + 3) + 228) |= 0x1000000000uLL;
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xFFFFFFFFFFFFFDFFLL | (((*(this + 228) >> 9) & 1) << 9);
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xFFFFFFFFFFFFC3FFLL | (((*(this + 228) >> 10) & 0xFLL) << 10);
  return result;
}

_DWORD *CA::OGL::SDFElementGroupNode::compute_dod(CA::OGL::SDFElementGroupNode *this, CA::Bounds *a2)
{
  v4 = *(this + 3);
  v5 = v4[38];
  if (v5 < 0)
  {
    (*(*v4 + 40))(*(this + 3), v4 + 36);
    v5 = v4[38];
  }

  v6 = v4[36];
  v7 = v4[37];
  *(this + 64) = v6;
  *(this + 65) = v7;
  *(this + 66) = v5;
  v8 = v4[39];
  *(this + 67) = v8;
  *a2 = v6;
  *(a2 + 1) = v7;
  *(a2 + 2) = v5;
  *(a2 + 3) = v8;
  v9 = *(this + 10);
  if ((*(v9 + 144) & 0x10) != 0)
  {
    v12 = vaddvq_f64(vmulq_f64(*v9, *v9));
    v13 = vaddvq_f64(vmulq_f64(*(v9 + 32), *(v9 + 32)));
    v14 = *(v9 + 120);
    if (v14 != 1.0)
    {
      v15 = 1.0 / (v14 * v14);
      v12 = v15 * v12;
      v13 = v15 * v13;
    }

    v16 = v12 != 1.0;
    if (v13 != 1.0)
    {
      v16 = 1;
    }

    v17 = sqrt(v12);
    v18 = sqrt(v13);
    if (v16)
    {
      v11 = v18;
    }

    else
    {
      v11 = v13;
    }

    if (v16)
    {
      v10 = v17;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v10 = *(v9 + 128);
    v11 = v10;
  }

  v19 = *(*(this + 2) + 192);
  if (v19 && (v20 = *(*(v19 + 24) + 136)) != 0)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  CA::Render::SDFLayer::sdf_padding(v21);
  v23 = (*(*(this + 2) + 104) - v22);

  return CA::BoundsImpl::inset(a2, (v10 * v23), (v11 * v23));
}

_DWORD *CA::OGL::BackdropNode::retain_surface(CA::OGL::BackdropNode *this, float *a2)
{
  *a2 = 1.0;
  result = *(this + 30);
  if (result)
  {
    ++*result;
  }

  return result;
}

double CA::OGL::BackdropNode::compute_dod(CA::OGL::BackdropNode *this, CA::Bounds *a2)
{
  result = -2.68156638e154;
  *a2 = xmmword_183E21120;
  return result;
}

void CA::OGL::BlendNode::apply(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = **(a1 + 8);
  v5 = *a2;
  v6 = *(a1 + 64);
  v20 = 0;
  v21 = 0;
  CA::OGL::emit_combine(v4, 1u, v5, 0, v6, &v20);
  if (*(a1 + 136) != 2)
  {
    v8 = *(a1 + 88);
    if (v8 == 0x3C003C003C003C00)
    {
      v9 = 1;
    }

    else
    {
      *(*(v4 + 16) + 8) = v8;
      v9 = 3;
    }

    v10 = *(v4 + 16);
    if (*(v10 + 496) >= 2u)
    {
      *(v10 + 497) |= 1u;
    }

    v11 = *(a2 + 8);
    v12 = *(a1 + 64);
    v20 = 0;
    v21 = 0;
    CA::OGL::emit_combine(v4, v9, v11, 0, v12, &v20);
    *(*(v4 + 16) + 497) &= ~1u;
  }

  if ((*(a1 + 238) & 0x1E) != 0)
  {
    v13 = *(v4 + 16);
    *(v13 + 496) = 3;
    *(v13 + 497) |= 1u;
    v14 = ((*(a1 + 236) >> 17) & 0xF) - 1;
    if (v14 > 0xB)
    {
      v15 = 0;
    }

    else
    {
      v15 = dword_183E2D698[v14];
    }

    v16 = bswap32(v15);
    v7.i32[0] = v16;
    v7.i32[1] = v16 >> 8;
    v7.i32[2] = HIWORD(v16);
    v17.i64[0] = 0xFF000000FFLL;
    v17.i64[1] = 0xFF000000FFLL;
    v18 = vandq_s8(v7, v17);
    v18.i32[3] = vshrq_n_u32(vdupq_n_s32(v16), 0x18uLL).i32[3];
    *(*(v4 + 16) + 8) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v18), vdupq_n_s32(0x3B808081u)));
    v19 = *(a1 + 64);
    v20 = 0;
    v21 = 0;
    CA::OGL::emit_combine(v4, 0, 0, 0, v19, &v20);
    *(*(v4 + 16) + 497) &= ~1u;
    *(*(v4 + 16) + 496) = *(a1 + 136);
  }
}

uint64_t CA::OGL::BlendNode::propagate_roi(CA::OGL::BlendNode *this, const CA::Bounds *a2)
{
  (*(**(this + 3) + 56))(*(this + 3));
  v3 = *(**(this + 4) + 56);

  return v3();
}

uint64_t CA::OGL::BlendNode::compute_dod(CA::OGL::BlendNode *this, int32x2_t *a2)
{
  v4 = *(this + 3);
  v5 = v4[19].i32[0];
  if (v5 < 0)
  {
    (*(*v4 + 40))(*(this + 3), v4 + 18);
    v5 = v4[19].i32[0];
  }

  *a2 = v4[18];
  v6 = v4[19].i32[1];
  a2[1].i32[0] = v5;
  a2[1].i32[1] = v6;
  v7 = *(this + 4);
  if (v7[19].i32[0] < 0)
  {
    (*(*v7 + 40))(v7, v7 + 18);
  }

  v8 = v7[18];
  v9 = v7[19];

  return CA::BoundsImpl::Union(a2, v8, v9);
}

uint64_t CA::OGL::CompositeNode::propagate_roi(CA::OGL::CompositeNode *this, const CA::Bounds *a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  (*(**(this + 3) + 56))(*(this + 3), v5);
  return (*(**(this + 4) + 56))(*(this + 4), v4);
}

uint64_t CA::OGL::CompositeNode::compute_dod(CA::OGL::CompositeNode *this, int32x2_t *a2)
{
  v4 = *(this + 3);
  v5 = v4[19].i32[0];
  if (v5 < 0)
  {
    (*(*v4 + 40))(*(this + 3), v4 + 18);
    v5 = v4[19].i32[0];
  }

  *a2 = v4[18];
  v6 = v4[19].i32[1];
  a2[1].i32[0] = v5;
  a2[1].i32[1] = v6;
  v7 = *(this + 4);
  if (v7[19].i32[0] < 0)
  {
    (*(*v7 + 40))(v7, v7 + 18);
  }

  v8 = v7[18];
  v9 = v7[19];

  return CA::BoundsImpl::Union(a2, v8, v9);
}

uint64_t (***CA::OGL::TransitionNode::apply(uint64_t a1, void *a2, double *a3))(CA::Render::BuiltinTransition *__hidden this, const CA::Render::TransitionAnimation *, CA::Render::Layer *, unsigned int, float)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v6 = **(a1 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(v8 + 72);
  v10 = *(v8 + 88);
  v14[0] = v9;
  v14[1] = v10;
  v11 = *(v7 + 56);
  if (v11)
  {
    CA::Mat4Impl::mat4_apply_to_rect(v11, v14, a3);
  }

  else
  {
    v14[0] = vaddq_f64(*(v7 + 64), v9);
  }

  result = CA::Render::Transition::subclass(*(a1 + 240), a2, a3);
  if (result)
  {
    v13 = result;
    result = ((*result)[4])(result);
    if (result)
    {
      return ((*v13)[5])(v13, *(a1 + 240), v6, v14, *(a1 + 248), *a2, a2[1]);
    }
  }

  return result;
}

uint64_t CA::OGL::TransitionNode::propagate_roi(CA::OGL::TransitionNode *this, const CA::Bounds *a2, double *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = *(this + 2);
  v6 = *(v5 + 24);
  v7 = *(v6 + 72);
  v8 = *(v6 + 88);
  v38[0] = v7;
  v38[1] = v8;
  v9 = *(v5 + 16);
  v10 = *(v9 + 56);
  if (v10)
  {
    CA::Mat4Impl::mat4_apply_to_rect(v10, v38, a3);
  }

  else
  {
    v38[0] = vaddq_f64(*(v9 + 64), v7);
  }

  v11 = CA::Render::Transition::subclass(*(this + 30), a2, a3);
  if (v11)
  {
    v14 = *(a2 + 2);
    v15 = *(a2 + 3);
    if (v14 <= v15)
    {
      v16 = *(a2 + 3);
    }

    else
    {
      v16 = *(a2 + 2);
    }

    v12.i32[0] = 1073741822;
    v13.i32[0] = v16;
    v17 = *(this + 30);
    v18.i64[0] = *a2;
    v18.i64[1] = HIDWORD(*a2);
    v19 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v13, v12), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v18));
    v20 = v14;
    v21 = v15;
    v22 = *(this + 10);
    if (v16 > 1073741822)
    {
      v20 = 1.79769313e308;
      v21 = 1.79769313e308;
    }

    v35 = v19;
    v36 = v20;
    v37 = v21;
    ((*v11)[3])(v11, v17, v38, v22, &v35, &v42, &v40);
    v23 = *(this + 31);
    CA::Rect::unapply_transform(&v42, v23, v24);
    CA::Rect::unapply_transform(&v40, v23, v25);
    v26 = vceqzq_f64(v43);
    if ((vorrq_s8(vdupq_laneq_s64(v26, 1), v26).u64[0] & 0x8000000000000000) != 0 || (v27 = vceqq_f64(v43, v43), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v27), 1), v27).u64[0] & 0x8000000000000000) != 0))
    {
      v35 = 0uLL;
    }

    else
    {
      v28 = vcvtmq_s64_f64(vmaxnmq_f64(v42, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v35 = vuzp1q_s32(v28, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v42, v43), vdupq_n_s64(0x41C0000000000000uLL))), v28));
    }

    v29 = vceqzq_f64(v41);
    if ((vorrq_s8(vdupq_laneq_s64(v29, 1), v29).u64[0] & 0x8000000000000000) != 0 || (v30 = vceqq_f64(v41, v41), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v30), 1), v30).u64[0] & 0x8000000000000000) != 0))
    {
      v39 = 0uLL;
    }

    else
    {
      v31 = vcvtmq_s64_f64(vmaxnmq_f64(v40, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v39 = vuzp1q_s32(v31, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v40, v41), vdupq_n_s64(0x41C0000000000000uLL))), v31));
    }
  }

  else
  {
    v32 = *(a2 + 1);
    v35.i32[0] = *a2;
    v35.i32[1] = v32;
    v33 = *(a2 + 3);
    v35.i32[2] = *(a2 + 2);
    v35.i32[3] = v33;
    v39.i32[0] = v35.i32[0];
    *(v39.i64 + 4) = __PAIR64__(v35.u32[2], v32);
    v39.i32[3] = v33;
  }

  (*(**(this + 3) + 56))(*(this + 3), &v35);
  return (*(**(this + 4) + 56))(*(this + 4), &v39);
}

double CA::OGL::TransitionNode::compute_dod(CA::OGL::TransitionNode *this, CA::Bounds *a2)
{
  result = -2.68156638e154;
  *a2 = xmmword_183E21120;
  return result;
}

void CA::OGL::TransitionNode::~TransitionNode(CA::OGL::TransitionNode *this)
{
  CA::OGL::TransitionNode::~TransitionNode(this);
  abort();
}

{
  *this = &unk_1EF1FDD60;
  v1 = *(this + 31);
  if (v1)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v1);
  }
}

void CA::OGL::MeshNode::apply(uint64_t a1, int32x2_t **a2, __n128 a3)
{
  v3 = *(a1 + 16);
  v4 = **(a1 + 8);
  if (*(v3 + 192) && (*(v3 + 35) & 0x4020) == 0)
  {
    v8 = *(v4 + 16);
    v6 = *(v8 + 496);
    v5 = *(v8 + 497);
    *(v8 + 497) = v5 | 1;
    v9 = *(v4 + 16);
    v9[31].n128_u8[0] = 57;
    v10 = *(a1 + 8);
    v3 = *(a1 + 16);
    a3.n128_f32[0] = fmaxf(*(**(*(*(v3 + 192) + 24) + 136) + 140), 0.0001);
    a3 = vdupq_lane_s32(a3.n128_u64[0], 0);
    v9[18] = a3;
    v7 = *v10;
  }

  else
  {
    v5 = 0;
    v6 = 63;
    v7 = **(a1 + 8);
  }

  a3.n128_u32[0] = *(a1 + 256);
  CA::OGL::fill_surface_mesh(v7, *(a1 + 248), (*(v3 + 24) + 72), *a2, *(a1 + 240) & 0xF, *(a1 + 240) >> 4, 0, a3, *(a1 + 260));
  if (v6 != 63)
  {
    if ((v5 & 1) == 0)
    {
      *(*(v4 + 16) + 497) &= ~1u;
    }

    *(*(v4 + 16) + 496) = v6;
  }
}

uint64_t CA::OGL::MeshNode::propagate_soft_roi(CA::OGL::MeshNode *this, const CA::Bounds *a2, int32x4_t a3, int32x4_t a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (*(*(this + 31) + 109) == 1)
  {
    v4 = *(*(this + 2) + 24);
    v5 = *(this + 64);
    v6 = vmulq_n_f64(*(v4 + 88), v5);
    v7 = vceqzq_f64(v6);
    v8 = vorrq_s8(vdupq_laneq_s64(v7, 1), v7).u64[0];
    v9 = 0uLL;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = vceqq_f64(v6, v6);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v10), 1), v10).u64[0] & 0x8000000000000000) == 0)
      {
        v11 = vmulq_n_f64(*(v4 + 72), v5);
        v12 = vmaxnmq_f64(v11, vdupq_n_s64(0xC1BFFFFFFF000000));
        v13 = vminnmq_f64(vaddq_f64(v11, v6), vdupq_n_s64(0x41C0000000000000uLL));
        v14 = vcvtmq_s64_f64(v12);
        v9 = vuzp1q_s32(v14, vsubq_s64(vcvtpq_s64_f64(v13), v14));
      }
    }

    v15 = vextq_s8(v9, v9, 8uLL).u64[0];
    v16 = (*(this + 3) + 208);
  }

  else
  {
    v17 = *(this + 3);
    CA::OGL::MeshNode::unmap_bounds(v19, this, a2, a3, a4);
    v9.i64[0] = v19[0];
    v15 = v19[1];
    v16 = v17 + 26;
  }

  return CA::BoundsImpl::Union(v16, *v9.i8, v15);
}

void CA::OGL::MeshNode::unmap_bounds(CA::OGL::MeshNode *this, const CA::Bounds *a2, uint64_t a3, int32x4_t a4, int32x4_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 8);
  v8 = *(a3 + 12);
  if (v7 <= v8)
  {
    v9 = *(a3 + 12);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v9;
  v10.i64[0] = *a3;
  v10.i64[1] = HIDWORD(*a3);
  v11 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v10));
  v12 = v7;
  v13 = v8;
  if (v9 > 1073741822)
  {
    v12 = 1.79769313e308;
    v13 = 1.79769313e308;
  }

  v23 = v11;
  v24.f64[0] = v12;
  v24.f64[1] = v13;
  CA::Rect::unapply_transform(&v23, *(a2 + 10), a3);
  CA::Render::MeshTransform::unapply_rect(v22, *(a2 + 31), v14, *(*(*(a2 + 2) + 24) + 72), *(*(*(a2 + 2) + 24) + 88), v23, v24);
  v15 = *(a2 + 64);
  v16 = vmulq_n_f64(v22[1], v15);
  v17 = vceqzq_f64(v16);
  if ((vorrq_s8(vdupq_laneq_s64(v17, 1), v17).u64[0] & 0x8000000000000000) != 0 || (v18 = vceqq_f64(v16, v16), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v18), 1), v18).u64[0] & 0x8000000000000000) != 0))
  {
    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    v19 = vmulq_n_f64(v22[0], v15);
    v20 = vminnmq_f64(vaddq_f64(v19, v16), vdupq_n_s64(0x41C0000000000000uLL));
    v21 = vcvtmq_s64_f64(vmaxnmq_f64(v19, vdupq_n_s64(0xC1BFFFFFFF000000)));
    *this = vuzp1q_s32(v21, vsubq_s64(vcvtpq_s64_f64(v20), v21));
  }
}

uint64_t CA::OGL::MeshNode::propagate_roi(CA::OGL::MeshNode *this, const CA::Bounds *a2, int32x4_t a3, int32x4_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = *(this + 3);
  CA::OGL::MeshNode::unmap_bounds(v7, this, a2, a3, a4);
  result = (*(*v5 + 56))(v5, v7);
  if (*(*(this + 31) + 109) == 1)
  {
    *(*(this + 3) + 236) |= 0x8000000u;
  }

  if ((*(this + 240) & 0xF) == 2)
  {
    *(*(this + 3) + 228) |= 0x804000000000uLL;
  }

  if ((*(*(this + 31) + 108) & 1) == 0)
  {
    *(*(this + 3) + 228) |= 0x200uLL;
  }

  return result;
}

void CA::OGL::MeshNode::compute_dod(CA::OGL::MeshNode *this, CA::Bounds *a2, const CA::Rect *a3, int32x4_t a4, int32x4_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = *(this + 3);
  v8 = *(v7 + 152);
  if (v8 < 0)
  {
    (*(*v7 + 40))(*(this + 3), v7 + 144);
    v8 = *(v7 + 152);
  }

  v9 = *(v7 + 156);
  if (v8 <= v9)
  {
    v10 = *(v7 + 156);
  }

  else
  {
    v10 = v8;
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v10;
  v11 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
  v12 = *(v7 + 144);
  v13.i64[0] = v12;
  v13.i64[1] = SHIDWORD(v12);
  v28 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v14 = vbslq_s8(v11, v28, vcvtq_f64_s64(v13));
  v15 = v9;
  if (v10 <= 1073741822)
  {
    v16.f64[0] = v8;
  }

  else
  {
    v16.f64[0] = 1.79769313e308;
  }

  if (v10 > 1073741822)
  {
    v15 = 1.79769313e308;
  }

  v16.f64[1] = v15;
  v17 = (1.0 / *(this + 64));
  memset(v29, 0, sizeof(v29));
  CA::Render::MeshTransform::apply_volume(v29, *(this + 31), a3, *(*(*(this + 2) + 24) + 72), *(*(*(this + 2) + 24) + 88), vmulq_n_f64(v14, v17), vmulq_n_f64(v16, v17));
  CA::Volume::apply_transform(v29, *(this + 10), v18);
  v19 = 0uLL;
  v20 = vsubq_f64(*(&v29[1] + 8), v29[0]);
  if (v20.f64[0] >= v20.f64[1])
  {
    v21 = v20.f64[1];
  }

  else
  {
    v21 = v20.f64[0];
  }

  v22 = v21 <= 0.0;
  v23 = 0uLL;
  if (!v22)
  {
    if (v20.f64[0] <= v20.f64[1])
    {
      v24 = v20.f64[1];
    }

    else
    {
      v24 = v20.f64[0];
    }

    if (v24 >= 1.79769313e308)
    {
      v19 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v23 = v28;
    }

    else
    {
      v19 = v20;
      v23 = v29[0];
    }
  }

  v25 = vceqzq_f64(v19);
  if ((vorrq_s8(vdupq_laneq_s64(v25, 1), v25).u64[0] & 0x8000000000000000) != 0 || (v26 = vceqq_f64(v19, v19), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v26), 1), v26).u64[0] & 0x8000000000000000) != 0))
  {
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  else
  {
    v27 = vcvtmq_s64_f64(vmaxnmq_f64(v23, vdupq_n_s64(0xC1BFFFFFFF000000)));
    *a2 = vuzp1q_s32(v27, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v23, v19), vdupq_n_s64(0x41C0000000000000uLL))), v27));
  }
}

uint64_t CA::OGL::ImagingNode::ImagingNode(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = &unk_1EF1FD4C8;
  *(result + 8) = a2;
  *(result + 48) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  v5 = *(result + 228) & 0xF8000000FFFFC000;
  *(result + 228) = v5 | 0xF00000001;
  *(result + 236) &= 0xF0000000;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 152) = -1;
  if (*(a3 + 192))
  {
    if ((*(a3 + 36) & 0x40) == 0)
    {
      *(result + 228) = v5 | 0x1F00000001;
    }
  }

  return result;
}

uint64_t CA::OGL::emit_sdf_bounds_internal(uint64_t result, uint64_t a2, double *a3, int a4, float a5, double a6, float64x2_t a7, float a8, float a9, float a10, float a11)
{
  v17 = *a7.f64;
  v20 = result;
  v185 = *MEMORY[0x1E69E9840];
  v22 = *(a2 + 24);
  v21 = *(a2 + 32);
  v23 = v22[9];
  v24 = v22[10];
  v25 = v22[11];
  v26 = v22[12];
  v27 = *(result + 656);
  v160.f64[0] = v23;
  v160.f64[1] = v24;
  v161.f64[0] = v25;
  v161.f64[1] = v26;
  if ((v21 & 0x20000000000) != 0)
  {
    v23 = *(a2 + 112);
    v24 = *(a2 + 120);
    v160.f64[0] = v23;
    v160.f64[1] = v24;
    v25 = *(a2 + 128);
    v26 = *(a2 + 136);
    v161.f64[0] = v25;
    v161.f64[1] = v26;
  }

  else if ((v21 & 0x10000000000) != 0)
  {
    return result;
  }

  v28 = *(*(a2 + 16) + 56);
  if (v28)
  {
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[4];
    v32 = v28[5];
    v33 = 1.0 / fmaxf(sqrtf((v30 * v30) + (v32 * v32)), sqrtf((v29 * v29) + (v31 * v31)));
    v34 = v33 * -((v31 * v30) - (v32 * v29));
    v151 = v33 * v29;
    v153 = v33 * v32;
    v35 = -(v33 * v30);
    v36 = -(v33 * v31);
  }

  else
  {
    v36 = 0.0;
    v151 = 1.0;
    v35 = 0.0;
    v153 = 1.0;
    v34 = 1.0;
  }

  v37.f64[0] = v25;
  v37.f64[1] = v26;
  v38.f64[0] = v23 + a8;
  v38.f64[1] = v24 + a9;
  if (v25 <= v26)
  {
    v39 = v26;
  }

  else
  {
    v39 = v25;
  }

  if (v39 < 1.79769313e308)
  {
    if (v25 >= v26)
    {
      v40 = v26;
    }

    else
    {
      v40 = v25;
    }

    if (v40 > 0.0)
    {
      *&v41 = (-*&a6 / v34);
      v160 = vaddq_f64(v160, vdupq_lane_s64(v41, 0));
      v42 = *&v41 * -2.0;
      v43 = v42 + v25;
      v44 = v42 + v26;
      v161.f64[0] = v43;
      v161.f64[1] = v44;
      if (v43 <= 0.0 || v44 <= 0.0)
      {
        v161 = 0uLL;
      }
    }

    if (v25 >= v26)
    {
      v45 = v26;
    }

    else
    {
      v45 = v25;
    }

    if (v45 > 0.0)
    {
      a7.f64[0] = (-v17 / v34);
      v46 = vdupq_lane_s64(*&a7.f64[0], 0);
      v38 = vaddq_f64(v38, v46);
      a7.f64[0] = a7.f64[0] * -2.0;
      *v47.i64 = a7.f64[0] + v25;
      v46.f64[0] = a7.f64[0] + v26;
      a7.f64[0] = fmin(*v47.i64, a7.f64[0] + v26);
      v47.i64[1] = *&v46.f64[0];
      v46.f64[0] = 0.0;
      v37 = vandq_s8(v47, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v46, a7)).i64[0], 0));
    }
  }

  v158 = v160;
  v159 = v161;
  v48 = vclezq_f64(v161);
  v49 = vclezq_f64(v37);
  v50 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v49, v48), vzip2q_s64(v49, v48))));
  v51 = v50.i8[0];
  v147 = v34;
  if ((v50.i8[4] & 1) == 0)
  {
    if (v50.i8[0])
    {
      goto LABEL_30;
    }

    v52 = vminnmq_f64(v160, v38);
    v53 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v160, v161), vaddq_f64(v38, v37)), v52);
    goto LABEL_29;
  }

  v52 = v38;
  v53 = v37;
  if ((v51 & 1) == 0)
  {
LABEL_29:
    v158 = v52;
    v159 = v53;
  }

LABEL_30:
  v146 = v161;
  v143 = v37;
  v144 = v38;
  v149 = v160;
  CA::Rect::apply_transform(&v158, *(v27 + 24), a3);
  result = CA::OGL::rect_intersects_clip_p(*(v27 + 8), v158, v159);
  if (!result)
  {
    return result;
  }

  v54 = *(a2 + 24);
  v55 = *(v54 + 44) & 3;
  v56 = *(v27 + 24);
  v154 = &v160;
  v155 = v56;
  v156 = 0u;
  v157 = 0u;
  v57 = v147;
  v58 = vcvt_f32_f64(vmulq_n_f64(v146, v147));
  v59 = vmul_f32(v58, 0x3F0000003F000000);
  v60 = vsub_f32(v59, vdup_lane_s32(*&a6, 0));
  v61 = *(v54 + 136);
  v145 = a11;
  if (!v61)
  {
    v63 = v149;
    if ((*(a2 + 37) & 2) == 0)
    {
      v65 = a5;
      v66 = a10;
      v64 = 0.00999999978;
LABEL_61:
      v78 = v64 * v57;
      v79 = v64 * v57;
      v80 = 4.0;
      v81 = 0.0;
      if (v55)
      {
        v78 = v78 * 1.528665;
        v82 = vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(vadd_f32(v60, v60)), vdupq_n_s64(0xBFF721E8A7A4B61BLL)), vdupq_lane_s64(*&v78, 0)), vdupq_n_s64(0x400721E8A7A4B61BuLL));
        __asm { FMOV            V4.2D, #1.0 }

        v87 = vbslq_s8(vcgtq_f64(v82, _Q4), _Q4, v82);
        _D22 = vcvt_f32_f64(vbicq_s8(v87, vcltzq_f64(v87)));
      }

      else
      {
        __asm { FMOV            V22.2S, #1.0 }
      }

      v91 = 21;
      goto LABEL_75;
    }

LABEL_52:
    v77 = vdup_n_s32(0x3C23D70Au);
    v70 = vbsl_s8(vcgt_f32(v77, *(a2 + 144)), v77, *(a2 + 144));
    v74 = 0.01;
    v73 = *(a2 + 152);
    if (v73 < 0.01)
    {
      v73 = 0.01;
    }

    if (*(a2 + 156) >= 0.01)
    {
      v74 = *(a2 + 156);
    }

    if (v70.f32[0] != v70.f32[1] || v70.f32[1] != v73 || v73 != v74)
    {
      goto LABEL_63;
    }

    v65 = a5;
    v66 = a10;
    goto LABEL_60;
  }

  v62 = *(v61 + 232);
  v63 = v149;
  if (v62 >= 0.01)
  {
    v64 = v62;
  }

  else
  {
    v64 = 0.00999999978;
  }

  if ((*(a2 + 37) & 2) != 0)
  {
    goto LABEL_52;
  }

  v65 = a5;
  v66 = a10;
  v67 = *(v61 + 72);
  if (!v67)
  {
    goto LABEL_61;
  }

  v68.f64[0] = v67[3];
  v68.f64[1] = v67[5];
  v69 = vdupq_n_s64(0x3F847AE140000000uLL);
  v70 = vcvt_f32_f64(vbslq_s8(vcgeq_f64(v69, v68), v69, v68));
  v71 = v67[7];
  v72 = 0.00999999978;
  if (v71 <= 0.00999999978)
  {
    v71 = 0.00999999978;
  }

  v73 = v71;
  if (v67[9] > 0.00999999978)
  {
    v72 = v67[9];
  }

  v74 = v72;
  if (v70.f32[0] == v70.f32[1] && v70.f32[1] == v73 && v73 == v74)
  {
LABEL_60:
    v64 = v70.f32[0];
    goto LABEL_61;
  }

LABEL_63:
  v65 = a5;
  v66 = a10;
  _D22 = vmul_n_f32(v70, v147);
  v79 = v73 * v147;
  v81 = v74 * v147;
  v89 = _D22.f32[1];
  if (_D22.f32[0] > _D22.f32[1])
  {
    v89 = _D22.f32[0];
  }

  if (v79 <= v81)
  {
    v90 = v74 * v147;
  }

  else
  {
    v90 = v73 * v147;
  }

  if (v89 <= v90)
  {
    v89 = v90;
  }

  v78 = v89;
  v80 = 5.0;
  if (v55)
  {
    _D22 = vneg_f32(_D22);
    v79 = -v79;
    v81 = -v81;
    v78 = v78 * 1.528665;
  }

  v91 = 22;
LABEL_75:
  v92 = v78 + *&a6;
  v93 = *(v20 + 16);
  *(v93 + 96) = xmmword_183E21110;
  v94 = fmaxf(fmaxf(v17, a8), a9) > 0.0;
  v95 = vmul_f32(v58, 0xBF000000BF000000);
  v162[0] = v95;
  v162[1] = v59;
  if (a4)
  {
    *(v93 + 17) = v91;
    v96 = *(v20 + 16);
    v96[50] = v60;
    v96[51].f32[0] = v80;
    v96[51].f32[1] = v145;
    v96[52].f32[0] = v153;
    v97 = v35;
    v96[52].f32[1] = v35;
    v96[53].f32[0] = v36;
    v98 = v151;
    v96[53].f32[1] = v151;
    v96[54] = _D22;
    v96[55].f32[0] = v79;
    v99 = &v96[55] + 1;
  }

  else
  {
    *(v20 + 160) = v60;
    *(v20 + 168) = v80;
    *(v20 + 172) = v145;
    *(v20 + 176) = v153;
    *(v20 + 180) = v35;
    v97 = v35;
    v98 = v151;
    *(v20 + 184) = v36;
    *(v20 + 188) = v151;
    *(v20 + 192) = _D22;
    v99 = (v20 + 204);
    *(v20 + 200) = v79;
  }

  *v99 = v81;
  if (v59.f32[0] <= v59.f32[1])
  {
    v100 = v59.f32[1];
  }

  else
  {
    v100 = v59.f32[0];
  }

  if (v92 < v100)
  {
    v101 = v60;
    if (v92 >= v59.f32[0])
    {
      v102 = v59.f32[0];
    }

    else
    {
      v102 = v92;
    }

    if (v92 >= v59.f32[1])
    {
      v103 = v59.f32[1];
    }

    else
    {
      v103 = v92;
    }

    v104 = v102 / v147;
    v105 = v103 / v147;
    if (v94)
    {
      v106 = v144.f64[1];
      if (vmovn_s64(vcgtq_f64(v144, v63)).u8[0])
      {
        v107 = v63.f64[0];
      }

      else
      {
        v107 = v144.f64[0];
      }

      v108 = v107;
      if (v63.f64[1] < v144.f64[1])
      {
        v106 = v63.f64[1];
      }

      v109 = v106;
      v110 = vaddq_f64(v143, v144);
      v111 = v161.f64[0] + v63.f64[0];
      if (v110.f64[0] <= v161.f64[0] + v63.f64[0])
      {
        v112 = v161.f64[0] + v63.f64[0];
      }

      else
      {
        v112 = v110.f64[0];
      }

      v110.f64[0] = v161.f64[1] + v63.f64[1];
      if (v110.f64[1] <= v161.f64[1] + v63.f64[1])
      {
        v113 = v161.f64[1] + v63.f64[1];
      }

      else
      {
        v113 = v110.f64[1];
      }

      v114 = v112;
      v115 = v113;
      v179 = v108;
      v180 = v63.f64[0];
      v116 = v104;
      v181 = v63.f64[0] + v116;
      v182 = v111 - v116;
      v183 = v161.f64[0] + v63.f64[0];
      v184 = v114;
      v173 = v109;
      v174 = v63.f64[1];
      v117 = v105;
      v175 = v63.f64[1] + v117;
      v176 = v110.f64[0] - v117;
      v177 = v161.f64[1] + v63.f64[1];
      v178 = v115;
      v118 = *v95.i32 + (v108 - v63.f64[0]) * v57;
      v168 = v118;
      v169 = *v95.i32;
      *&v170 = *v95.i32 + v102;
      *(&v170 + 1) = v59.f32[0] - v102;
      v119 = v59.f32[0] + (v114 - v111) * v57;
      v171 = v59.i32[0];
      v172 = v119;
      *&v120 = *&v95.i32[1] + (v109 - v63.f64[1]) * v57;
      v163 = __PAIR64__(v95.u32[1], v120);
      v164 = *&v95.i32[1] + v103;
      v165 = v59.f32[1] - v103;
      v166 = v59.i32[1];
      v121 = v59.f32[1] + (v115 - v110.f64[0]) * v57;
      *&v121 = v121;
      v167 = LODWORD(v121);
      *&v121 = v66;
      CA::OGL::generate_sdf_vertex_grid(*(v20 + 136), v155, 6u, &v179, &v173, &v168, &v163, a3, *&v121);
      v122 = *(&v157 + 1);
      CA::OGL::emit_quad_indices(v20, *(&v157 + 1), word_183E2D740, 0x10uLL, 0x24u);
      *(v20 + 160) = v101;
      *(v20 + 168) = -v80;
      *(v20 + 172) = v145;
      CA::OGL::emit_quad_indices(v20, v122, &word_183E2D740[16], 0x40uLL, 0x24u);
      *(v20 + 160) = v101;
      *(v20 + 168) = v80 + -4.0;
      *(v20 + 172) = v145;
      v123 = v20;
      v124 = v122;
      v125 = &CA::OGL::emit_nine_part_sdf_bounds_with_shadow(CA::OGL::Context &,CA::OGL::RectState const&,CA::Rect,CA::Vec2<float>,CA::Vec2<float>,float *,float,CA::Vec4<float>,CA::OGL::Surface const*,float)::indices;
      v126 = 20;
      v127 = 36;
LABEL_125:
      result = CA::OGL::emit_quad_indices(v123, v124, v125, v126, v127);
      if (!a4)
      {
        return result;
      }

      goto LABEL_126;
    }

    v150 = _D22;
    v152 = v78;
    v179 = v63.f64[0];
    v180 = v63.f64[0] + v104;
    v140 = v65;
    v181 = v161.f64[0] + v63.f64[0] - v104;
    v182 = v161.f64[0] + v63.f64[0];
    v173 = v63.f64[1];
    v174 = v63.f64[1] + v105;
    v175 = v161.f64[1] + v63.f64[1] - v105;
    v176 = v161.f64[1] + v63.f64[1];
    v168 = *v95.i32;
    v169 = *v95.i32 + v102;
    *&v170 = v59.f32[0] - v102;
    HIDWORD(v170) = v59.i32[0];
    LODWORD(v163) = v95.i32[1];
    *(&v163 + 1) = *&v95.i32[1] + v103;
    v164 = v59.f32[1] - v103;
    v165 = v59.f32[1];
    v59.f32[0] = v66;
    CA::OGL::generate_sdf_vertex_grid(*(v20 + 136), v56, 4u, &v179, &v173, &v168, &v163, a3, v59);
    CA::OGL::emit_quad_indices(v20, 0, CA::OGL::nine_part_indices, 0x10uLL, 0x10u);
    if (a4)
    {
      *(*(v20 + 16) + 17) = 20;
      v141 = *(v20 + 16);
      v141[50] = v101;
      v141[51].f32[0] = v80;
      v141[51].f32[1] = v145;
      v141[52].f32[0] = v153;
      v141[52].f32[1] = v97;
      v141[53].f32[0] = v36;
      v141[53].f32[1] = v98;
      v141[54] = v150;
      v141[55].f32[0] = v79;
      v141[55].f32[1] = v81;
    }

    else
    {
      *(v20 + 160) = v101;
      *(v20 + 168) = 0;
      *(v20 + 172) = v145;
    }

    if (v152 < v140)
    {
      v126 = 20;
    }

    else
    {
      v126 = 16;
    }

    v125 = &unk_183E2D6E8;
    v123 = v20;
    v124 = 0;
LABEL_124:
    v127 = 16;
    goto LABEL_125;
  }

  if (a3)
  {
    if (!v94)
    {
      v179 = v63.f64[0];
      v180 = v161.f64[0] + v63.f64[0];
      v173 = v63.f64[1];
      v174 = v161.f64[1] + v63.f64[1];
      v168 = *v95.i32;
      v169 = v59.f32[0];
      v142 = vzip2_s32(v95, v59);
      v163 = v142;
      *v142.i32 = v66;
      CA::OGL::generate_sdf_vertex_grid(*(v20 + 136), v56, 2u, &v179, &v173, &v168, &v163, a3, v142);
      v125 = &CA::OGL::emit_one_part_sdf_bounds(CA::OGL::Context &,CA::OGL::RectState const&,float *,CA::OGL::Surface const*,float)::indices;
      v123 = v20;
      v124 = 0;
      v126 = 4;
      v127 = 4;
      goto LABEL_125;
    }

    v128 = v144.f64[1];
    if (vmovn_s64(vcgtq_f64(v144, v63)).u8[0])
    {
      v129 = v63.f64[0];
    }

    else
    {
      v129 = v144.f64[0];
    }

    v130 = v129;
    if (v63.f64[1] < v144.f64[1])
    {
      v128 = v63.f64[1];
    }

    v131 = v128;
    v132 = v60;
    v133 = vaddq_f64(v143, v144);
    if (v133.f64[0] <= v161.f64[0] + v63.f64[0])
    {
      v134 = v161.f64[0] + v63.f64[0];
    }

    else
    {
      v134 = v133.f64[0];
    }

    v133.f64[0] = v133.f64[1];
    if (v133.f64[1] <= v161.f64[1] + v63.f64[1])
    {
      v133.f64[0] = v161.f64[1] + v63.f64[1];
    }

    v135 = v134;
    v136 = v133.f64[0];
    v179 = v130;
    v180 = v63.f64[0];
    v181 = v161.f64[0] + v63.f64[0];
    v182 = v135;
    v173 = v131;
    v174 = v63.f64[1];
    v175 = v161.f64[1] + v63.f64[1];
    v176 = v136;
    v137 = *v95.i32 + (v130 - v63.f64[0]) * v57;
    v168 = v137;
    v169 = *v95.i32;
    *&v138 = v59.f32[0] + (v135 - (v161.f64[0] + v63.f64[0])) * v57;
    v170 = __PAIR64__(v138, v59.u32[0]);
    v59.f32[0] = *&v95.i32[1] + (v131 - v63.f64[1]) * v57;
    v164 = v59.f32[1];
    v163 = __PAIR64__(v95.u32[1], v59.u32[0]);
    v139 = v59.f32[1] + (v136 - (v161.f64[1] + v63.f64[1])) * v57;
    *&v139 = v139;
    v165 = *&v139;
    *&v139 = v66;
    CA::OGL::generate_sdf_vertex_grid(*(v20 + 136), v56, 4u, &v179, &v173, &v168, &v163, a3, *&v139);
    CA::OGL::emit_quad_indices(v20, 0, word_183E2D708, 4uLL, 0x10u);
    *(v20 + 160) = v132;
    *(v20 + 168) = -v80;
    *(v20 + 172) = v145;
    v123 = v20;
    v124 = 0;
    v125 = CA::OGL::nine_part_indices;
    v126 = 32;
    goto LABEL_124;
  }

  result = CA::OGL::emit_one_part_rect(v20, &v154, v162, 0, 0);
  if (a4)
  {
LABEL_126:
    *(*(v20 + 16) + 17) = 0;
  }

  return result;
}

float64x2_t *CA::OGL::generate_sdf_vertex_grid(uint64_t a1, float64x2_t *this, unsigned int a3, uint64_t *a4, uint64_t a5, _DWORD *a6, uint64_t a7, int32x2_t *a8, int32x2_t a9)
{
  v11 = a1;
  v12 = 0;
  v37[143] = *MEMORY[0x1E69E9840];
  v13 = (a1 + 20);
  v14 = v37;
  do
  {
    v15 = *(a5 + 8 * v12);
    v16 = a4;
    v17 = v14;
    v18 = v13;
    v19 = a6;
    v20 = a3;
    do
    {
      v21 = *v16++;
      *(v17 - 2) = v21;
      *(v17 - 1) = v15;
      *v17 = xmmword_183E20E60;
      v17 += 2;
      LODWORD(v21) = *v19++;
      *(v18 - 1) = v21;
      *v18 = *(a7 + 4 * v12);
      v18 += 12;
      --v20;
    }

    while (v20);
    ++v12;
    v13 += 12 * a3;
    v14 += 4 * a3;
  }

  while (v12 != a3);
  v22 = a3 * a3;
  result = CA::OGL::transform_vertices(&v36, v11, (a3 * a3), this);
  if (a8)
  {
    v24 = vcvt_f32_s32(a8[6]);
    v25 = vcvt_f32_s32(a8[5]);
    if (v22 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v22;
    }

    v27 = vdup_lane_s32(a9, 0);
    __asm { FMOV            V3.2S, #1.0 }

    v33 = vdiv_f32(_D3, v25);
    v34 = vneg_f32(v24);
    do
    {
      *(v11 + 24) = vmul_f32(vmla_f32(v34, v27, *v11), v33);
      v11 += 48;
      --v26;
    }

    while (v26);
  }

  return result;
}

float16x4_t *CA::OGL::emit_sdf_bounds(uint64_t a1, uint64_t a2, double *a3, int a4, float a5, float a6, float a7, float a8, float a9)
{
  v30 = *MEMORY[0x1E69E9840];
  v29 = 0;
  *&v27[16] = 0u;
  v28 = 0u;
  *&v26[16] = 0u;
  *v27 = 0u;
  *v26 = 0u;
  v18 = *(a1 + 656);
  *&v26[8] = *(v18 + 8);
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);
  *&v27[24] = *(v18 + 56);
  v21 = *(v18 + 80) & 0x5FF;
  *&v27[8] = v20;
  LODWORD(v28) = *(v18 + 64);
  LOWORD(v29) = v21;
  *(&v28 + 1) = *(v18 + 72);
  *&v26[24] = a2 + 232;
  *v27 = v19;
  *v26 = CA::OGL::Context::set_gstate(a1, v26);
  LODWORD(v24) = *(a2 + 104);
  v23 = *(a2 + 108);
  if (v23 > 4096.0)
  {
    v23 = 4096.0;
  }

  if (*&v24 > a5)
  {
    *&v24 = a5;
  }

  *v22.f64 = a7;
  CA::OGL::emit_sdf_bounds_internal(a1, a2, a3, a4, v23, v24, v22, a8, a9, a6, *(**(*(a2 + 24) + 136) + 28));
  return CA::OGL::Context::set_gstate(a1, **(a1 + 656));
}

void *CA::CG::MetalDrawable::create_queue(CA::CG::MetalDrawable *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xD0uLL, 0x165299FDuLL);
  if (result)
  {
    result = CA::CG::AccelQueue::AccelQueue(result, this);
    *result = &unk_1EF2027D0;
  }

  return result;
}

void CA::CG::MetalDrawable::mark_texture(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 3);
  v2 = *&this[26]._os_unfair_lock_opaque;
  if (v2)
  {
    atomic_fetch_add((v2 + 36), 1u);
  }

  os_unfair_lock_unlock(this + 3);
}

void CA::CG::MetalDrawable::retain_shared_texture(CA::CG::MetalDrawable *this@<X0>, CA::Render::MetalTexture **a2@<X8>)
{
  os_unfair_lock_lock(this + 3);
  if (*(this + 68))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 13);
    if (v4)
    {
      goto LABEL_12;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x80uLL, 0xDEEC3011uLL);
    v4 = v5;
    if (v5)
    {
      v5 = CA::Render::MetalTexture::MetalTexture(v5, *(this + 12));
    }

    CA::Render::Texture::set_colorspace(v5, *(this + 3));
    v6 = *(this + 13);
    *(this + 13) = v4;
    if (v6)
    {
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      v4 = *(this + 13);
    }

    if (v4)
    {
LABEL_12:
      v7 = (v4 + 8);
      if (!atomic_fetch_add(v4 + 2, 1u))
      {
        v4 = 0;
        atomic_fetch_add(v7, 0xFFFFFFFF);
      }
    }
  }

  *a2 = v4;

  os_unfair_lock_unlock(this + 3);
}

uint64_t CA::CG::MetalDrawable::set_as_destination(CA::CG::MetalDrawable *this, CA::OGL::Context *a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *(this + 12);
  (*(*a2 + 24))(a2, 0, v4, 1, 1, a3);
  return 1;
}

void CA::CG::MetalDrawable::~MetalDrawable(CA::CG::MetalDrawable *this)
{
  *this = &unk_1EF1FDF10;
  v2 = *(this + 13);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &unk_1EF2030C8;
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("~AccelDrawable", "cg-accel-drawable.cpp", 62, "_destroyed");
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FDF10;
  v2 = *(this + 13);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &unk_1EF2030C8;
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("~AccelDrawable", "cg-accel-drawable.cpp", 62, "_destroyed");
  }
}

void CA::CG::MetalDrawable::destroy(CGColorSpaceRef *this)
{
  CA::CG::AccelDrawable::destroy(this);
  v2 = this[12];

  CFRelease(v2);
}

CGImageRef CA::CG::MetalDrawable::copy_cgimage(CA::CG::MetalDrawable *this)
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 3);
  if ((*(this + 68) & 1) == 0)
  {
    if (!*(this + 10))
    {
      v3 = *(this + 4);
      os_unfair_lock_unlock(this + 3);
      v4 = *(this + 9);
      if (v4)
      {
        CA::CG::Queue::flush(v4, 3, 0);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v5 = malloc_type_zone_malloc(malloc_zone, 0x40uLL, 0x165299FDuLL);
      if (v5)
      {
        v6 = *(this + 9);
        if (v6 || (v6 = (*(*this + 80))(this), (*(this + 9) = v6) != 0))
        {
          v7 = *(v6 + 48);
        }

        else
        {
          v7 = 0;
        }

        CA::CG::AccelDataProvider::AccelDataProvider(v5, this, v7);
        *&v5->_os_unfair_lock_opaque = &unk_1EF1FFA40;
      }

      v8 = *(this + 12);
      BytesPerRow = CAMetalTextureGetBytesPerRow(v8);
      Direct = CGDataProviderCreateDirect(v5, [v8 height] * BytesPerRow, &CA::CG::AccelDataProvider::callbacks(void)::vtable);
      v11 = *(this + 13);
      v12 = *(this + 14);
      if (v3 == 9)
      {
        v13 = CAMetalTextureGetBytesPerRow(*(this + 12));
        *decode = xmmword_183E20E00;
        v14 = CGImageMaskCreate(v11, v12, 8uLL, 8uLL, v13, Direct, decode, 1);
      }

      else
      {
        if (v3 > 0x23)
        {
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v15 = dword_183E22728[v3];
          v16 = dword_183E22600[v3];
        }

        v17 = CAMetalTextureGetBytesPerRow(*(this + 12));
        v14 = CGImageCreate(v11, v12, v15, v16, v17, *(this + 3), *(this + 8), Direct, 0, 1, kCGRenderingIntentDefault);
      }

      v18 = v14;
      CGDataProviderRelease(Direct);
      if (v18)
      {
        CA::CG::AccelDataProvider::set_image(v5, v18);
        os_unfair_lock_lock(this + 3);
        if (!*(this + 10))
        {
          *(this + 10) = v18;
          goto LABEL_24;
        }

        os_unfair_lock_unlock(this + 3);
        CGImageRelease(v18);
      }

      os_unfair_lock_lock(this + 3);
    }

LABEL_24:
    v2 = CGImageRetain(*(this + 10));
    goto LABEL_25;
  }

  v2 = 0;
LABEL_25:
  os_unfair_lock_unlock(this + 3);
  return v2;
}

CGImageRef CA::CG::MetalDrawable::copy_cgimage_mtl(CA::CG::MetalDrawable *this)
{
  if (*(this + 4) == 9)
  {

    return CA::CG::MetalDrawable::copy_cgimage(this);
  }

  else
  {
    v3 = *(this + 9);
    if (v3)
    {
      CA::CG::Queue::flush(v3, 3, 1);
    }

    os_unfair_lock_lock(this + 3);
    if (*(this + 68))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(this + 12);
      if (v4)
      {
        v5 = *(this + 3);
        CFRetain(*(this + 12));
        v6 = CFDictionaryCreate(0, MEMORY[0x1E695F2C8], MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v5)
        {
          CAGetColorSpace(36);
        }

        CGImageProviderCreate();
        CFRelease(v6);
        v4 = CGImageCreateWithImageProvider();
        CGImageProviderRelease();
      }

      CGImageSetProperty();
    }

    os_unfair_lock_unlock(this + 3);
    return v4;
  }
}

uint64_t CA::Render::String::unsafe_cf_string(CA::Render::String *this)
{
  result = *(this + 2);
  if (!result)
  {
    v3 = CFStringCreateWithCStringNoCopy(0, this + 28, 0x8000100u, *MEMORY[0x1E695E498]);
    v4 = 0;
    atomic_compare_exchange_strong(this + 2, &v4, v3);
    if (v4)
    {
      CFRelease(v3);
    }

    return *(this + 2);
  }

  return result;
}

void release_sample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = pthread_getspecific(collect_slot);
  if (release_key)
  {
    v5 = pthread_getspecific(release_key);
    v6 = v5 + 56;
    if (!v5)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = (*(a3 + 129) >> 1) & 8 | *(a3 + 129) & 0xFE77;
  *(a3 + 129) = (*(a3 + 129) >> 1) & 8 | *(a3 + 129) & 0xFE77;
  if (v4)
  {
    v8 = v4[2];
    if (v8)
    {
      v8 = *(v8 + 48);
      if (v8)
      {
        v7 = atomic_load((*(v8 + 24) + 8));
        v8 = (v7 >> 55) & 0x10;
        LOWORD(v7) = *(a3 + 129);
      }
    }

    v9 = v7 & 0xFFEF | v8;
    *(a3 + 129) = v9;
    if (!v6)
    {
      if (atomic_fetch_add(a3, 0xFFFFFFFF) != 1)
      {
        return;
      }

      goto LABEL_18;
    }

    if (*v6)
    {
      v4[34] = *(v6 + 5);
      v9 = *(a3 + 129);
    }
  }

  else
  {
    v9 = v7 & 0xFE6F;
    *(a3 + 129) = v9;
    if (!v6)
    {
      if (atomic_fetch_add(a3, 0xFFFFFFFF) != 1)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  *(a3 + 129) = v9 & 0xFF7F | ((v6[18] & 1) << 7);
  if (atomic_fetch_add(a3, 0xFFFFFFFF) != 1)
  {
    return;
  }

  if (!v4)
  {
LABEL_21:
    v14 = *(a3 + 64);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(a3 + 72);
    if (v15)
    {
      v16 = *(*(a3 + 56) + 224);
      if (v16)
      {
        [v16 removeAllocation:?];
        [*(*(a3 + 56) + 224) commit];
        v15 = *(a3 + 72);
      }

      *(a3 + 72) = 0;
    }

    *(a3 + 88) = 0;
    v17 = *(a3 + 104);
    if (v17)
    {
      CGColorSpaceRelease(v17);
      *(a3 + 104) = 0;
    }

    free(a3);
    return;
  }

LABEL_18:
  v10 = v4[25];
  v11 = CAHostTimeWithTime(0.2) + v10;
  v12 = mach_absolute_time();
  if (v4[4])
  {
    v13 = 136;
  }

  else
  {
    v13 = 136;
    if ((v4[37] & 0x10) == 0)
    {
      v13 = 132;
    }
  }

  v18 = *(v4 + v13);
  if (v12 > v11)
  {
    ++v18;
  }

  if (v18 >= *(v4 + 32))
  {
    v4[7] = x_list_prepend(v4[7], a3);
  }

  else
  {
    delete_drawable_private(a3, v4[2]);
    --*(v4 + 32);
  }
}

void layer_collectable_signal(uint64_t a1, _CAMetalLayerPrivate *a2)
{
  if (atomic_exchange(a2 + 38, 2u) == 1)
  {
    dispatch_semaphore_signal(*(a2 + 18));
  }

  if (a1)
  {
    v4 = *(a1 + 48);
    if (!v4 || !*(*(v4 + 24) + 32))
    {
      layer_private_cleanup_callbacks(a2);
    }
  }

  if (*(a2 + 4) && CAMetalLayerShouldDispatchLink(*(a2 + 3)))
  {
    v5 = *(a2 + 4);

    [CADisplayLink dispatchDeferredDisplayLink:v5];
  }
}

BOOL CAMetalLayerShouldDispatchLink(CAMetalLayer *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  priv = a1->_priv;
  os_unfair_lock_lock(priv + 2);
  if (*(priv + 9))
  {
    v8[0] = 0;
    v3 = priv[34];
    v4 = priv[35];
    CAMetalLayerPrivateNextDrawableLocked(a1, 0, v8);
    if (v8[0] >= 6 - v3)
    {
      v8[0] -= 6 - v3;
    }

    os_unfair_lock_lock(priv + 52);
    os_unfair_lock_lock(priv + 46);
    [*(priv + 27) count];
    [*(priv + 24) count];
    os_unfair_lock_unlock(priv + 46);
    os_unfair_lock_unlock(priv + 52);
    v5 = v8[0];
    kdebug_trace();
    v6 = v5 != v4;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(priv + 2);
  return v6;
}

void update_shared_event_value_wait(_CAMetalDrawablePrivate *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  bzero(&v16, 0x3E0uLL);
  CA::SurfaceUtil::CASurfaceQuerySharedEvent(&v16, a1->var10);
  v2 = v17;
  if (v16 == v17)
  {
    if (byte_1ED4E987C == 1)
    {
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v9 = x_log_get_sharedevent(void)::log;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_INFO, "Shared Event transaction list empty", &v13, 2u);
      }
    }
  }

  else
  {
    v3 = [*(v17 - 4) eventPort];
    v4 = [a1->var13 eventPort];
    if (v3 == v4)
    {
      v5 = *(v2 - 2);
      if (v5 <= a1->var14)
      {
        if (byte_1ED4E987C == 1)
        {
          if (x_log_get_sharedevent(void)::once != -1)
          {
            dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
          }

          v10 = x_log_get_sharedevent(void)::log;
          if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG))
          {
            v11 = *(v2 - 2);
            var14 = a1->var14;
            v13 = 134218240;
            *v14 = v11;
            *&v14[8] = 2048;
            v15 = var14;
            _os_log_debug_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEBUG, "Shared Event transaction value: %lld <= Shared Event value: %lld", &v13, 0x16u);
          }
        }
      }

      else
      {
        a1->var14 = v5;
      }
    }

    else
    {
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v6 = x_log_get_sharedevent(void)::log;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
      {
        v13 = 67109376;
        *v14 = v3;
        *&v14[4] = 1024;
        *&v14[6] = v4;
        _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "Shared Event transaction port: %d != Shared Event port: %d", &v13, 0xEu);
      }
    }

    v7 = v16;
    v8 = v17;
    while (v7 != v8)
    {

      v7 += 4;
    }
  }

  if (v16 != v18)
  {
    free(v16);
  }
}

void sub_183D37AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  if (a12 != a14)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

os_log_t ___Z21x_log_get_metal_layerv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "CAMetalLayer");
  x_log_get_metal_layer(void)::log = result;
  return result;
}

os_log_t ___Z28x_log_get_metal_layer_stallsv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "CAMetalLayer.Stalls");
  x_log_get_metal_layer_stalls(void)::log = result;
  return result;
}

void ___ZL21warn_multiple_presentv_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (x_log_get_api::once[0] != -1)
  {
    dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
  }

  v0 = x_log_get_api::log;
  if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "Each CAMetalLayerDrawable can only be presented once!", v1, 2u);
  }
}

void sub_183D380B4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);
  os_unfair_lock_unlock(v1 + 33);
  _Unwind_Resume(a1);
}

void sub_183D382E4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 52);
  os_unfair_lock_unlock(v1 + 33);
  _Unwind_Resume(a1);
}

void drawable_purgeable_callback(CA::Render::Object *a1, void *a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a2 + 2);
  pthread_setspecific(collect_slot, a2);
  CAImageQueueCollect_(*(a2 + 2), 0, 0);
  pthread_setspecific(collect_slot, 0);
  for (i = *(a2 + 7); i; i = i[1])
  {
    v5 = *i;
    *(v5 + 129) = *(*i + 129) | 0x400;
    v6 = *(v5 + 64);
    oldState = 0;
    IOSurfaceSetPurgeable(v6, 1u, &oldState);
  }

  os_unfair_lock_unlock(a2 + 2);
}

void layer_private_memory_warning(CA::Render::Object *a1, os_unfair_lock_s *a2, void *a3)
{
  if (a2)
  {
    layer_private_flush_backbuffers(a2);
  }
}

void layer_private_flush_backbuffers(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 2);
  layer_private_flush_async(a1);

  os_unfair_lock_unlock(a1 + 2);
}

void CAMetalLayerSetMetalLinkToken(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  os_unfair_lock_lock((v3 + 8));
  *(v3 + 32) = a2;
  if (a2)
  {
    v4 = v3 + 16;
    CAImageQueueSetFlagsInternal(*(v3 + 16), 0x60000000050000, 0x20000000050000);
    v5 = 6 - *(v3 + 136);
  }

  else
  {
    v4 = v3 + 16;
    CAImageQueueSetFlagsInternal(*(v3 + 16), 0x60000000050000, (*(v3 + 132) == 2) << 54);
    v5 = 3;
  }

  v6 = *(*v4 + 48);
  if (v6)
  {
    *(*(v6 + 24) + 95) = v5;
  }

  os_unfair_lock_unlock((v3 + 8));
}

double CA::Rect::operator=(double *a1, double *a2)
{
  v3 = *a2;
  result = a2[1];
  *a1 = *a2;
  a1[1] = result;
  v5 = a2[2];
  v4 = a2[3];
  a1[2] = v5;
  a1[3] = v4;
  if (v5 < 0.0)
  {
    *a1 = v5 + v3;
    a1[2] = -v5;
  }

  if (v4 < 0.0)
  {
    a1[1] = v4 + result;
    result = -v4;
    a1[3] = -v4;
  }

  return result;
}

float64x2_t CA::Rect::apply_transform(float64x2_t *this, const CGAffineTransform *a2)
{
  v3 = this[1].f64[0];
  result.f64[0] = this[1].f64[1];
  if (v3 <= result.f64[0])
  {
    v4 = this[1].f64[1];
  }

  else
  {
    v4 = this[1].f64[0];
  }

  if (v4 < 1.79769313e308)
  {
    v5 = *&a2->c;
    v6 = vmlaq_n_f64(vmulq_n_f64(*&a2->a, this->f64[0]), v5, this->f64[1]);
    v7 = vmulq_n_f64(*&a2->a, v3);
    v8 = vaddq_f64(v6, v7);
    v9 = vminnmq_f64(v6, v8);
    v10 = vmaxnmq_f64(v6, v8);
    v11 = vmlaq_n_f64(v6, v5, result.f64[0]);
    v12 = vaddq_f64(v11, v7);
    v13 = vminnmq_f64(v9, vminnmq_f64(v11, v12));
    result = vsubq_f64(vmaxnmq_f64(v10, vmaxnmq_f64(v11, v12)), v13);
    *this = vaddq_f64(v13, *&a2->tx);
    this[1] = result;
  }

  return result;
}

double CA::Rect::unapply_inverse_transform(int8x16_t *this, const CA::Transform *a2, double *a3)
{
  if ((*(a2 + 144) & 0x10) == 0)
  {
    return CA::Rect::apply_transform(this, a2, a3);
  }

  *&result = CA::Mat4Impl::mat4_unapply_inverse_to_rect(a2, this, a3).u64[0];
  return result;
}

uint64_t CA::BoundsImpl::Union(float64x2_t *a1, float64x2_t a2, float64x2_t a3)
{
  v3 = a1[1];
  v4 = vclezq_f64(v3);
  v5 = vclezq_f64(a3);
  v6 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v5, v4), vzip2q_s64(v5, v4))));
  if (v6.i8[4])
  {
    if (v6.i8[0])
    {
      return 0;
    }

    goto LABEL_6;
  }

  if ((v6.i8[0] & 1) == 0)
  {
    v8 = vaddq_f64(a2, a3);
    a2 = vminnmq_f64(*a1, a2);
    a3 = vsubq_f64(vmaxnmq_f64(vaddq_f64(*a1, v3), v8), a2);
LABEL_6:
    *a1 = a2;
    a1[1] = a3;
  }

  return 1;
}

double *CA::BoundsImpl::set_points(double *this, double *a2, const double *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (a3 >= 2)
  {
    v5 = a3 - 1;
    v6 = a2 + 3;
    v7 = a2[1];
    v8 = *a2;
    while (1)
    {
      v10 = *(v6 - 1);
      v9 = *v6;
      v11 = v10 > v3 ? *(v6 - 1) : v3;
      if (v10 >= v8)
      {
        v3 = v11;
      }

      else
      {
        v8 = *(v6 - 1);
      }

      if (v9 < v7)
      {
        break;
      }

      if (v9 <= v4)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 2;
      v4 = v9;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }

    v7 = *v6;
LABEL_12:
    v9 = v4;
    goto LABEL_13;
  }

  v8 = *a2;
  v7 = a2[1];
  v9 = v7;
LABEL_16:
  v12 = v3 - v8;
  v13 = v9 - v7;
  if (COERCE_UNSIGNED_INT64(fabs(v9 - v7 + v12)) >= 0x7FF0000000000000)
  {
    v12 = 1.79769313e308;
    v8 = -8.98846567e307;
    v7 = -8.98846567e307;
    v13 = 1.79769313e308;
  }

  *this = v8;
  this[1] = v7;
  this[2] = v12;
  this[3] = v13;
  return this;
}

void CA::CG::ClipPath::draw(CA::CG::ClipPath *this, CA::CG::Renderer *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 1);
  v43 = 0u;
  v44 = 0u;
  v41 = 0.0;
  v42 = 0.0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v38 = v3;
  v39 = v4;
  v40 = v5;
  if (CGPathIsRectWithTransform())
  {
    v7.i64[0] = *&v43.f64[0];
    v36 = v43;
    v37 = v44;
    if (v44.f64[0] < 0.0)
    {
      *v7.i64 = v44.f64[0] + v43.f64[0];
      v36.f64[0] = v44.f64[0] + v43.f64[0];
      v37.f64[0] = -v44.f64[0];
    }

    if (v44.f64[1] < 0.0)
    {
      v36.f64[1] = v44.f64[1] + v43.f64[1];
      v37.f64[1] = -v44.f64[1];
    }

    v32 = v38;
    v58 = v38;
    v59 = v39;
    v33 = v40;
    v34 = v39;
    v60 = v40;
    v8 = CA::CG::mat2_filter_bits(&v58, v40, v39, v7);
    v9 = CA::CG::rect_filter_bits(v36.f64, &v58, v8);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v57 = 0;
    CA::Transform::set_affine(&v45, v32.f64[0], v32.f64[1], *v34.i64, *&v34.i64[1], *v33.i64, *&v33.i64[1]);
    *(&v54 + 1) = &v36;
    *&v55 = &v45;
    *(&v55 + 1) = v9 | 0xFF00000000;
    v57 = 0;
    v56 = 0uLL;
    CA::OGL::fill_rect(v6, &v54 + 8, v10);
    return;
  }

  if (CGPathIsEllipseWithTransform())
  {
    v11 = v39;
    v12 = v40;
    v13 = v43.f64[1];
    v14 = v43.f64[0];
    v58 = v43;
    v15 = v44.f64[1];
    v59 = v44;
    if (v44.f64[0] < 0.0)
    {
      v14 = v44.f64[0] + v43.f64[0];
      v58.f64[0] = v44.f64[0] + v43.f64[0];
      v59.f64[0] = -v44.f64[0];
    }

    if (v44.f64[1] < 0.0)
    {
      v13 = v44.f64[1] + v43.f64[1];
      v15 = -v44.f64[1];
      v58.f64[1] = v44.f64[1] + v43.f64[1];
      v59.f64[1] = -v44.f64[1];
    }

    __asm { FMOV            V7.2D, #0.5 }

    v21 = vmulq_f64(v44, _Q7);
    v22 = v21.f64[0] - v21.f64[1];
    if (v21.f64[0] - v21.f64[1] < 0.0)
    {
      v22 = -(v21.f64[0] - v21.f64[1]);
    }

    v35 = v21.f64[0];
    if (v22 > 0.001)
    {
      v11 = vmulq_n_f64(v39, v21.f64[1] / v21.f64[0]);
      v12 = vmlsq_lane_f64(vmlsq_lane_f64(vmlaq_n_f64(vmlaq_n_f64(v40, v38, v14), v39, v13), v38, v14, 0), v11, v13, 0);
      v59.f64[1] = v15 / (v21.f64[1] / v21.f64[0]);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v57 = 0;
    CA::Transform::set_affine(&v45, v38.f64[0], v38.f64[1], v11.f64[0], v11.f64[1], v12.f64[0], v12.f64[1]);
    *(&v54 + 1) = &v58;
    *&v55 = &v45;
    *(&v55 + 1) = 0xFF0020003FLL;
    v57 = 0;
    v56 = 0uLL;
    v23 = v6;
    v24 = v35;
    v25 = v35;
LABEL_27:
    CA::OGL::fill_round_rect(v23, &v54 + 1, 0xF, 0, v24, v25);
    return;
  }

  if (CGPathIsRoundedRectWithTransform())
  {
    v26 = v39;
    v27 = v40;
    v28 = v43.f64[1];
    v29 = v43.f64[0];
    v58 = v43;
    v30 = v44.f64[1];
    v59 = v44;
    if (v44.f64[0] < 0.0)
    {
      v29 = v44.f64[0] + v43.f64[0];
      v58.f64[0] = v44.f64[0] + v43.f64[0];
      v59.f64[0] = -v44.f64[0];
    }

    if (v44.f64[1] < 0.0)
    {
      v28 = v44.f64[1] + v43.f64[1];
      v30 = -v44.f64[1];
      v58.f64[1] = v44.f64[1] + v43.f64[1];
      v59.f64[1] = -v44.f64[1];
    }

    v31 = v41 - v42;
    if (v41 - v42 < 0.0)
    {
      v31 = -(v41 - v42);
    }

    if (v31 > 0.001)
    {
      v26 = vmulq_n_f64(v39, v42 / v41);
      v27 = vmlsq_lane_f64(vmlsq_lane_f64(vmlaq_n_f64(vmlaq_n_f64(v40, v38, v29), v39, v28), v38, v29, 0), v26, v28, 0);
      v59.f64[1] = v30 / (v42 / v41);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v57 = 0;
    CA::Transform::set_affine(&v45, v38.f64[0], v38.f64[1], v26.f64[0], v26.f64[1], v27.f64[0], v27.f64[1]);
    *(&v54 + 1) = &v58;
    *&v55 = &v45;
    *(&v55 + 1) = 0xFF0020003FLL;
    v57 = 0;
    v56 = 0uLL;
    v23 = v6;
    v24 = v41;
    v25 = v41;
    goto LABEL_27;
  }

  if (CGPathIsUnevenCornersRoundedRectWithTransform() && (*(*v6 + 232))(v6, 31))
  {
    v36 = v43;
    v37 = v44;
    if (v44.f64[0] < 0.0)
    {
      v36.f64[0] = v44.f64[0] + v43.f64[0];
      v37.f64[0] = -v44.f64[0];
    }

    if (v44.f64[1] < 0.0)
    {
      v36.f64[1] = v44.f64[1] + v43.f64[1];
      v37.f64[1] = -v44.f64[1];
    }

    v58 = v62;
    v59 = v63;
    v60 = v64;
    v61 = v65;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v57 = 0;
    CA::Transform::set_affine(&v45, v38.f64[0], v38.f64[1], *v39.i64, *&v39.i64[1], *v40.i64, *&v40.i64[1]);
    *(&v54 + 1) = &v36;
    *&v55 = &v45;
    *(&v55 + 1) = 0xFF0020003FLL;
    v57 = 0;
    v56 = 0uLL;
    CA::OGL::fill_uneven_round_rect(v6, &v54 + 8, v58.f64, 0);
  }

  else
  {
    CA::CG::fill_path(a2);
  }
}

uint64_t CA::CG::ClipPath::prepare(CA::CG::ClipPath *this, CA::CG::Renderer *a2, const CA::CG::DrawOp *a3, CA::CG::ClipOp *a4)
{
  v116 = *MEMORY[0x1E69E9840];
  if (*(this + 17))
  {
    v8 = 8;
  }

  else
  {
    v8 = 1;
  }

  if (*(this + 16))
  {
    v9 = v8 | 0x10;
  }

  else
  {
    v9 = v8;
  }

  v10 = CA::Shape::new_shape(*(this + 1), a2 + 11, v9);
  if (v10)
  {
    v11 = v10;
    v12 = *(a4 + 2);
    if (v12)
    {
      v13 = CA::Shape::intersect(v12, v11);
    }

    else
    {
      v13 = CA::Shape::intersect(v11, a4);
    }

    v39 = *(a4 + 2);
    *(a4 + 2) = v13;
    if (v13)
    {
      if (v13 != 1)
      {
        *a4 = v13 >> 48;
        *(a4 + 1) = (v13 >> 16) >> 16;
        *(a4 + 2) = v13 >> 17;
        *(a4 + 3) = (v13 >> 2) & 0x7FFF;
        if (!v13)
        {
LABEL_39:
          v40 = *(a4 + 2);
          if (v40 >= *(a4 + 3))
          {
            v40 = *(a4 + 3);
          }

          v41 = v40 < 1;
          if (v39)
          {
            CA::Shape::unref(v39);
          }

          CA::Shape::unref(v11);
          return v41;
        }

LABEL_37:
        CA::Shape::unref(v13);
        *(a4 + 2) = 0;
        goto LABEL_39;
      }
    }

    else if (*(v13 + 4) == 12)
    {
      *a4 = *(v13 + 28);
      *(a4 + 1) = *(v13 + 20);
      *(a4 + 2) = *(v13 + 32) - *(v13 + 28);
      *(a4 + 3) = *(v13 + 36) - *(v13 + 20);
      goto LABEL_37;
    }

    CA::Shape::get_bounds(v13, a4);
    goto LABEL_39;
  }

  v14 = *(a4 + 2);
  v15 = *(a4 + 3);
  if (v14 <= v15)
  {
    v16 = *(a4 + 3);
  }

  else
  {
    v16 = *(a4 + 2);
  }

  v17 = *a4;
  if (v16 <= 1073741822)
  {
    v18.f64[0] = v14;
  }

  else
  {
    v18.f64[0] = 1.79769313e308;
  }

  if (v16 <= 1073741822)
  {
    v19 = v15;
  }

  else
  {
    v19 = 1.79769313e308;
  }

  v105 = v18.f64[0];
  v106 = v19;
  v18.f64[1] = v19;
  v107 = v18;
  BoundingBox = CGPathGetBoundingBox(*(this + 1));
  v20.i64[0] = *&BoundingBox.origin.x;
  v20.i64[1] = *&BoundingBox.origin.y;
  v21 = BoundingBox.size.width + BoundingBox.origin.x;
  v22.f64[0] = 0.0;
  v23.i64[0] = *&BoundingBox.size.width;
  v23.i64[1] = *&BoundingBox.size.height;
  v24 = vdupq_lane_s64(vcgtq_f64(v22, BoundingBox.size).i64[0], 0);
  v22.f64[1] = BoundingBox.size.height;
  v22.f64[0] = -BoundingBox.size.width;
  v25 = vbslq_s8(v24, v22, v23);
  v26.i64[1] = *&BoundingBox.origin.y;
  *v26.i64 = v21;
  v27 = vbslq_s8(v24, v26, v20);
  if (BoundingBox.size.height < 0.0)
  {
    v27.f64[1] = BoundingBox.size.height + BoundingBox.origin.y;
    v25.f64[1] = -BoundingBox.size.height;
  }

  v28 = vclezq_f64(v107);
  if ((vorrq_s8(vdupq_laneq_s64(v28, 1), v28).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v29 = vclezq_f64(v25);
  v30 = vdupq_laneq_s64(v29, 1);
  v31 = vorrq_s8(v30, v29);
  if (v31.i64[0] < 0)
  {
    return 1;
  }

  v31.i32[0] = 1073741822;
  v30.i32[0] = v16;
  v32.i64[0] = v17;
  v32.i64[1] = SHIDWORD(v17);
  v33 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v30, v31), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v32));
  v34 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(v33, v107), vaddq_f64(v27, v25)), vmaxnmq_f64(v33, v27)));
  if ((vorrq_s8(vdupq_laneq_s64(v34, 1), v34).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v108 = v33;
  if (CGPathIsRectWithTransform())
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    if (fabs(0.0) >= 0.000001 && (*(*a3 + 32))(a3, &v112))
    {
      v35 = *(a2 + 10);
      if (v35 != 1.0)
      {
        for (i = 0; i != 64; i += 32)
        {
          v37 = (&v112 + i);
          v38 = vmulq_n_f64(*(&v112 + i + 16), v35);
          *v37 = vmulq_n_f64(*(&v112 + i), v35);
          v37[1] = v38;
        }
      }
    }

    else
    {
      v112 = v108;
      *(&v113 + 1) = *&v108.f64[1];
      *&v113 = v105 + v108.f64[0];
      *&v114 = v105 + v108.f64[0];
      *(&v114 + 1) = v106 + v108.f64[1];
      *&v115 = v108.f64[0];
      *(&v115 + 1) = v106 + v108.f64[1];
    }

    v75 = *(a2 + 88);
    v69 = *(a2 + 104);
    v70 = vmlaq_n_f64(vmulq_n_f64(v75, 0.0), v69, 0.0);
    v71 = v70;
    v72 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*(a2 + 120), v75, 0.0), v69, 0.0), v70, 0.0);
    v73 = vmulq_n_f64(v70, 0.0);
    v111.f64[0] = v73.f64[1];
    v74 = v73.f64[1];
    v75.f64[0] = v73.f64[1];
    *&v69.f64[0] = *&v73 >> 64;
    *&v111.f64[1] = v73;
    v69.f64[1] = v73.f64[0];
    v76 = vdupq_lane_s64(*&v73.f64[1], 0);
    v76.f64[0] = v73.f64[0];
    v77 = vmlaq_n_f64(v72, v71, 0.0);
    v78 = vmulq_f64(v69, v76);
    v79 = vsubq_f64(v78, vdupq_laneq_s64(v78, 1)).f64[0];
    if (v79 == 0.0)
    {
      v84 = v73.f64[1];
      v85 = v73.f64[0];
    }

    else
    {
      v80 = 1.0 / v79;
      v75.f64[1] = v73.f64[0];
      v81 = vmulq_n_f64(v111, 1.0 / v79);
      v82 = vmulq_n_f64(v75, v80);
      v74 = -v81.f64[0];
      v73.f64[0] = -v81.f64[1];
      v83 = vmulq_f64(v77, v81);
      v84 = v82.f64[1];
      v85 = v82.f64[0];
      v77 = vmlsq_f64(vextq_s8(v83, v83, 8uLL), v82, v77);
    }

    v86 = v84;
    v87 = *&v77.f64[1];
    v88 = &v112;
    v117 = vld2q_f64(v88);
    v88 += 4;
    v89 = vdupq_lane_s64(*&v77.f64[0], 0);
    v118 = vld2q_f64(v88);
    v90 = vdupq_lane_s64(v87, 0);
    v91 = vmlaq_n_f64(vmlaq_n_f64(v89, v117.val[0], v85), v117.val[1], v73.f64[0]);
    v92 = vmlaq_n_f64(vmlaq_n_f64(v89, v118.val[0], v85), v118.val[1], v73.f64[0]);
    v93 = vmlaq_n_f64(vmlaq_n_f64(v90, v117.val[0], v74), v117.val[1], v86);
    v94 = vmlaq_n_f64(vmlaq_n_f64(v90, v118.val[0], v74), v118.val[1], v86);
    v95 = vdupq_n_s64(0xBD3C25C268497682);
    v96.i64[0] = 0x200000002;
    v96.i64[1] = 0x200000002;
    v97 = vandq_s8(vuzp1q_s32(vcgtq_f64(v91, v95), vcgtq_f64(v92, v95)), v96);
    v98 = vdupq_n_s64(0x3FF00000000001C2uLL);
    *&v117.val[0].f64[0] = 0x800000008;
    *&v117.val[0].f64[1] = 0x800000008;
    v99 = vorrq_s8(v97, vandq_s8(vuzp1q_s32(vcgtq_f64(v98, v91), vcgtq_f64(v98, v92)), v117.val[0]));
    v97.i64[0] = 0x400000004;
    v97.i64[1] = 0x400000004;
    v100 = vsubq_s32(vorrq_s8(v99, vandq_s8(vuzp1q_s32(vcgtq_f64(v93, v95), vcgtq_f64(v94, v95)), v97)), vuzp1q_s32(vcgtq_f64(v98, v93), vcgtq_f64(v98, v94)));
    v101 = vmvnq_s8(v100);
    v102 = vand_s8(vand_s8(*v101.i8, 0xFFFFFFFF0000000FLL), *&vextq_s8(v101, v101, 8uLL));
    if ((v102.i32[0] & v102.i32[1]) != 0)
    {
      return 1;
    }

    v104 = vand_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
    if ((v104.i32[0] & v104.i32[1]) == 15)
    {
      return 0;
    }

    return 2;
  }

  if (!CGPathIsEllipseWithTransform())
  {
    return 2;
  }

  v112 = v108;
  *(&v113 + 1) = *&v108.f64[1];
  *&v113 = v105 + v108.f64[0];
  *&v114 = v105 + v108.f64[0];
  *(&v114 + 1) = v106 + v108.f64[1];
  *&v115 = v108.f64[0];
  *(&v115 + 1) = v106 + v108.f64[1];
  v42 = *(a2 + 88);
  v43 = *(a2 + 104);
  v44 = vmlaq_n_f64(vmulq_n_f64(v42, 0.0), v43, 0.0);
  v45 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*(a2 + 120), v42, 0.0), v43, 0.0), v44, 0.0), v44, 0.0);
  v46 = vmulq_n_f64(v44, 0.0);
  v47 = v46;
  v110.f64[0] = v46.f64[1];
  v110.f64[1] = v46.f64[0];
  __asm { FMOV            V5.2D, #0.5 }

  v43.f64[0] = v46.f64[1];
  v43.f64[1] = v46.f64[0];
  v53 = vdupq_lane_s64(*&v46.f64[1], 0);
  v53.f64[0] = v46.f64[0];
  v54 = vmlaq_f64(v45, _Q5, vaddq_f64(v46, v46));
  v55 = vmulq_f64(v43, v53);
  v56 = vsubq_f64(v55, vdupq_laneq_s64(v55, 1)).f64[0];
  if (v56 != 0.0)
  {
    v57 = 1.0 / v56;
    v58 = vmulq_n_f64(v110, v57);
    v59 = vmulq_n_f64(vextq_s8(v46, v46, 8uLL), v57);
    *v109 = v59.f64[0];
    *&v109[8] = vnegq_f64(v58);
    *&v109[24] = v59.f64[1];
    v60 = vmulq_f64(v54, v58);
    v61 = vmlsq_f64(vextq_s8(v60, v60, 8uLL), v59, v54);
    v46 = *v109;
    v47 = *&v109[16];
    v54 = v61;
  }

  v62 = 0;
  v63 = 15;
  v64 = 1;
  do
  {
    _Q16 = vmlaq_n_f64(vmlaq_n_f64(v54, v46, v112.f64[v62]), v47, v112.f64[v62 + 1]);
    *(&v112 + v62 * 8) = _Q16;
    _D6 = _Q16.f64[1];
    v67 = (8 * (_Q16.f64[0] > 0.5)) | (2 * (_Q16.f64[0] < -0.5)) | (4 * (_Q16.f64[1] < -0.5));
    if (_Q16.f64[1] > 0.5)
    {
      ++v67;
    }

    v63 &= v67;
    __asm { FMLA            D7, D6, V16.D[1] }

    v64 &= _D7 < 0.25;
    v62 += 2;
  }

  while (v62 != 8);
  v41 = v63 != 0;
  if (!((v63 != 0) | v64 & 1))
  {
    return 2;
  }

  return v41;
}

void CA::CG::ClipPath::~ClipPath(CA::CG::Renderer **this, const void *a2)
{
  *this = &unk_1EF1FE0C0;
  CA::CG::Renderer::release_object(this[1], a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FE0C0;
  CA::CG::Renderer::release_object(this[1], a2);
}

__n128 CA::CG::ClipImage::draw(CA::CG::ClipImage *this, CA::CG::Renderer *a2, int64x2_t a3, double a4, int64x2_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  a3.i64[0] = v13;
  a5.i64[0] = a2 + 88;
  v5 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a5, a3)).i64[0], 0);
  v6 = vandq_s8(*(a2 + 120), v5);
  v7 = vandq_s8(*(a2 + 104), v5);
  v8 = vandq_s8(*(a2 + 88), v5);
  v9 = *(this + 6);
  v10 = *(this + 7);
  v11 = vmlaq_n_f64(vmulq_n_f64(v8, *(this + 4)), v7, *(this + 5));
  v13[0] = vmlaq_n_f64(vmulq_n_f64(v8, *(this + 2)), v7, *(this + 3));
  v13[1] = v11;
  v13[2] = vmlaq_n_f64(vmlaq_n_f64(v6, v8, v9), v7, v10);
  CA::CG::fill_image(a2, *(this + 1), this + 64, v13, *(this + 96), 1, 2, 0, 0, 0);
  return result;
}

void CA::CG::ClipImage::~ClipImage(CA::CG::Renderer **this, const void *a2)
{
  *this = &unk_1EF1FE0F8;
  CA::CG::Renderer::release_object(this[1], a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FE0F8;
  CA::CG::Renderer::release_object(this[1], a2);
}

uint64_t CA::CG::ClipRectFill::draw(CA::CG::ClipRectFill *this, CA::CG::Renderer *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 1);
  v7 = (this + 8);
  v8 = CA::CG::mat2_filter_bits(a2 + 88, a3, a4, a5);
  v9 = CA::CG::rect_filter_bits(v7, a2 + 88, v8);
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  CA::Transform::set_affine(v12, *(a2 + 11), *(a2 + 12), *(a2 + 13), *(a2 + 14), *(a2 + 15), *(a2 + 16));
  *(&v13 + 1) = v7;
  *&v14 = v12;
  *(&v14 + 1) = v9 | 0xFF00000000;
  v16 = 0;
  v15 = 0uLL;
  return CA::OGL::fill_rect(v6, &v13 + 8, v10);
}

uint64_t CA::CG::ClipRectFill::prepare(CA::CG::ClipRectFill *this, CA::CG::Renderer *a2, const CA::CG::DrawOp *a3, int32x2_t *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  *v36 = 0u;
  v4 = *(a2 + 10);
  if (v4 == 1.0)
  {
    v5 = (this + 8);
  }

  else
  {
    v6 = *(this + 8);
    v7 = *(this + 24);
    v35 = v6;
    *v36 = v7;
    if (*&v7 < 1.79769313e308)
    {
      *&v35 = v4 * *&v6;
      v36[0] = *&v7 * v4;
    }

    if (*(&v7 + 1) < 1.79769313e308)
    {
      *(&v35 + 1) = *(&v6 + 1) * v4;
      v36[1] = *(&v7 + 1) * v4;
    }

    v5 = &v35;
  }

  v8 = v5[1];
  if (*(this + 40))
  {
    v9 = v5[1].f64[1];
    if (v8.f64[0] > v8.f64[1])
    {
      v9 = v5[1].f64[0];
    }

    if (v9 < 1073741820.0)
    {
      v17 = -1;
      v10.f64[1] = NAN;
      v18 = vnegq_f64(v10);
      __asm { FMOV            V4.2D, #0.5 }

      *&v10.f64[0] = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v18, _Q4, *v5), *v5)));
      v24 = vaddq_f64(*v5, v8);
      v11 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v18, _Q4, v24), v24))), *&v10.f64[0]);
    }

    else
    {
      *&v10.f64[0] = vdup_n_s32(0xE0000001);
      v11 = 0xC0000000C0000000;
    }

    *&v10.f64[1] = v11;
  }

  else
  {
    v12 = vceqzq_f64(v8);
    v13 = vorrq_s8(vdupq_laneq_s64(v12, 1), v12).u64[0];
    v10 = 0uLL;
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = vceqq_f64(v8, v8);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v14), 1), v14).u64[0] & 0x8000000000000000) == 0)
      {
        v15 = vminnmq_f64(vaddq_f64(*v5, v8), vdupq_n_s64(0x41C0000000000000uLL));
        v16 = vcvtmq_s64_f64(vmaxnmq_f64(*v5, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v10 = vuzp1q_s32(v16, vsubq_s64(vcvtpq_s64_f64(v15), v16));
      }
    }
  }

  v25 = vextq_s8(v10, v10, 8uLL).u64[0];
  v26 = a4[1];
  v27 = vclez_s32(v25);
  v28 = vorr_s8(vcltz_s32(v26), v27);
  if ((vpmax_u32(v28, v28).u32[0] & 0x80000000) == 0)
  {
    v29 = vand_s8(vcge_s32(vadd_s32(*&v10.f64[0], v25), vadd_s32(*a4, v26)), vcge_s32(*a4, *&v10.f64[0]));
    if ((vpmin_u32(v29, v29).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v30 = vclez_s32(v26);
  if ((vpmax_u32(v30, v30).u32[0] & 0x80000000) == 0)
  {
    if ((vpmax_u32(v27, v27).u32[0] & 0x80000000) == 0)
    {
      v31 = vadd_s32(*&v10.f64[0], v25);
      *&v10.f64[0] = vmax_s32(*a4, *&v10.f64[0]);
      v32 = vsub_s32(vmin_s32(vadd_s32(*a4, v26), v31), *&v10.f64[0]);
      v33 = vclez_s32(v32);
      if ((vpmax_u32(v33, v33).u32[0] & 0x80000000) == 0)
      {
        *&v10.f64[1] = v32;
        *a4->i8 = v10;
        return 2 * ((*&a4[6] | *&a4[2]) != 0);
      }
    }

    a4[1] = 0;
  }

  return 1;
}

void CA::CG::ClipRectFill::~ClipRectFill(CA::CG::ClipRectFill *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

unint64_t CA::CG::ClipRectStroke::draw(CA::CG::ClipRectStroke *this, CA::CG::Renderer *a2, double a3, double a4, int8x16_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 1);
  v8 = *(this + 8);
  v9 = *(this + 24);
  v19 = v8;
  v20 = v9;
  v10 = *(this + 5);
  a5.i64[0] = v9.i64[1];
  if (*v9.i64 <= *&v9.i64[1])
  {
    v11 = *&v9.i64[1];
  }

  else
  {
    v11 = *v9.i64;
  }

  if (v11 < 1.79769313e308)
  {
    v12 = *v9.i64 >= *&v9.i64[1] ? *&v9.i64[1] : *v9.i64;
    if (v12 > 0.0)
    {
      v8 = vaddq_f64(v8, vdupq_lane_s64(COERCE__INT64(v10 * -0.5), 0));
      v19 = v8;
      *v9.i64 = v10 + *v9.i64;
      v8.f64[0] = v10 + *&v9.i64[1];
      v20.i64[0] = v9.i64[0];
      *&v20.i64[1] = v10 + *&v9.i64[1];
      if (*v9.i64 <= 0.0 || v8.f64[0] <= 0.0)
      {
        v20 = 0uLL;
      }
    }
  }

  v13 = CA::CG::mat2_filter_bits(a2 + 88, v8, v9, a5);
  v14 = CA::CG::rect_filter_bits(v19.f64, a2 + 88, v13);
  v15 = *(this + 48) == 0;
  v25 = 0;
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 255;
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  CA::Transform::set_affine(v21, *(a2 + 11), *(a2 + 12), *(a2 + 13), *(a2 + 14), *(a2 + 15), *(a2 + 16));
  *(&v22 + 1) = &v19;
  *&v23 = v21;
  *(&v23 + 1) = __PAIR64__(v16, v14);
  v25 = 0;
  v24 = 0uLL;
  return CA::OGL::stroke_rect(v7, &v22 + 1, v17, v10);
}

void CA::CG::ClipRectStroke::~ClipRectStroke(CA::CG::ClipRectStroke *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

CA::OGL::Context *CA::CG::ClipEllipseFill::draw(CA::CG::ClipEllipseFill *this, CA::CG::Renderer *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v3 = *(this + 2);
  *v12 = v4;
  *&v12[1] = v3;
  v6 = *(this + 3);
  v5 = *(this + 4);
  *&v12[2] = v6;
  v13 = v5;
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  if (v6 != v5)
  {
    v10 = vmlaq_n_f64(vmlaq_n_f64(v9, v7, v4), v8, v3);
    v8 = vmulq_n_f64(v8, v5 / v6);
    v9 = vmlsq_lane_f64(vmlsq_lane_f64(v10, v7, v4, 0), v8, v3, 0);
    v13 = v6;
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v18 = 0;
  CA::Transform::set_affine(v14, v7.f64[0], v7.f64[1], v8.f64[0], v8.f64[1], v9.f64[0], v9.f64[1]);
  *(&v15 + 1) = v12;
  *&v16 = v14;
  *(&v16 + 1) = 0xFF0020003FLL;
  v18 = 0;
  v17 = 0uLL;
  return CA::OGL::fill_round_rect(*(a2 + 1), &v15 + 1, 0xF, 0, v6 * 0.5, v6 * 0.5);
}

uint64_t CA::CG::ClipEllipseFill::prepare(CA::CG::ClipEllipseFill *this, CA::CG::Renderer *a2, const CA::CG::DrawOp *a3, CA::CG::ClipOp *a4, double a5, double a6, double a7, double a8, float64x2_t a9, int32x4_t a10)
{
  v54 = *MEMORY[0x1E69E9840];
  v10 = *(this + 8);
  v11 = *(this + 24);
  v12 = *(a2 + 10);
  if (v12 != 1.0)
  {
    a9.f64[0] = 1.79769313e308;
    v13 = vdupq_lane_s64(vcgtq_f64(a9, v11).i64[0], 0);
    v14.i64[1] = *(this + 2);
    *v14.i64 = v12 * v10.f64[0];
    v10 = vbslq_s8(v13, v14, v10);
    *a10.i64 = v12 * v11.f64[0];
    v14.i64[1] = *(this + 4);
    *v14.i64 = v12 * v11.f64[0];
    v11 = vbslq_s8(v13, v14, v11);
    if (v11.f64[1] < 1.79769313e308)
    {
      v10.f64[1] = vmuld_lane_f64(v12, v10, 1);
      v11.f64[1] = v11.f64[1] * v12;
    }
  }

  v15 = *(a4 + 1);
  v16 = HIDWORD(v15);
  v17.i64[0] = v15;
  v17.i64[1] = SHIDWORD(v15);
  v18 = v17;
  if (v15 > SHIDWORD(v15))
  {
    v16 = *(a4 + 1);
  }

  v19 = vcvtq_f64_s64(v18);
  v20 = vdup_n_s32(v16 > 1073741822);
  v21.i64[0] = v20.u32[0];
  v21.i64[1] = v20.u32[1];
  v22 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v21, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v19);
  v23 = vclezq_f64(v22);
  if ((vorrq_s8(vdupq_laneq_s64(v23, 1), v23).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v24 = vclezq_f64(v11);
  v25 = vdupq_laneq_s64(v24, 1);
  if ((vorrq_s8(v25, v24).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v26.i64[0] = *a4;
  v26.i64[1] = HIDWORD(*a4);
  v25.i32[0] = v16;
  a10.i32[0] = 1073741822;
  v27 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v25, a10), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v26));
  v28 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(v27, v22), vaddq_f64(v10, v11)), vmaxnmq_f64(v27, v10)));
  if ((vorrq_s8(vdupq_laneq_s64(v28, 1), v28).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  __asm { FMOV            V2.2D, #0.5 }

  v33 = vsubq_f64(v27, vmlaq_f64(v10, _Q2, v11));
  v34 = 2.0 / v11.f64[0];
  v35 = 2.0 / v11.f64[1];
  _ZF = v22.f64[0] >= 1.79769313e308 || v34 == 1.0;
  v37.i64[1] = v33.i64[1];
  *v37.i64 = v34 * *v33.i64;
  v38.i64[1] = *&v22.f64[1];
  *v38.i64 = v34 * v22.f64[0];
  if (_ZF)
  {
    v39 = 0;
  }

  else
  {
    v39 = -1;
  }

  v40 = vdupq_n_s64(v39);
  v41 = vbslq_s8(v40, v38, v22);
  v42 = vbslq_s8(v40, v37, v33);
  if (v35 != 1.0 && v41.f64[1] < 1.79769313e308)
  {
    v42.f64[1] = vmuld_lane_f64(v35, v42, 1);
    v41.f64[1] = v41.f64[1] * v35;
  }

  v43 = 0;
  v44 = vaddq_f64(v41, v42);
  *&v45 = v42.f64[0];
  *(&v45 + 1) = *&v44.f64[1];
  *&v46 = v44.f64[0];
  *(&v46 + 1) = *&v42.f64[1];
  v53[0] = v42;
  v53[1] = v46;
  v53[2] = v44;
  v53[3] = v45;
  do
  {
    v47 = vaddvq_f64(vmulq_f64(v53[v43], v53[v43]));
    if (v43 > 2)
    {
      break;
    }

    ++v43;
  }

  while (v47 < 1.0);
  if (v47 < 1.0)
  {
    return 0;
  }

  v49 = vmulq_f64(v41, _Q2);
  v50 = vabsq_f64(vaddq_f64(v42, v49));
  v51 = vsubq_f64(v50, v49);
  v52 = vmovn_s64(vcgtq_f64(v50, v49));
  if ((v52.i8[4] & v52.i8[0] & (vaddvq_f64(vmulq_f64(v51, v51)) > 1.0)) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}