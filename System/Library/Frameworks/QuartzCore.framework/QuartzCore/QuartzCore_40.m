void *std::__split_buffer<objc_object  {objcproto9MTLBuffer}**>::emplace_back<objc_object  {objcproto9MTLBuffer}*&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<objc_object  {objcproto9MTLBuffer}**>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<objc_object  {objcproto9MTLBuffer}**>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

void CA::OGL::MetalContext::issue_cache_drop_hints(CA::OGL::MetalContext *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 10);
  if (v2)
  {
    v3 = -1;
    v4 = *(this + 10);
    do
    {
      v5 = v3;
      v4 = *(v4 + 8);
      ++v3;
    }

    while (v4);
    v6 = 8 * (v5 + 2);
    if (v3 > 0x1FF)
    {
      v7 = malloc_type_malloc(8 * (v5 + 2), 0x80040B8603338uLL);
      v2 = *(this + 10);
      if (!v2)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFF0);
  bzero(v7, v6);
  if (!v2)
  {
    goto LABEL_24;
  }

LABEL_9:
  v9 = 0;
  v10 = &unk_1EA851000;
  v11 = &unk_1EA851000;
  *&v8 = 134219010;
  do
  {
    v12 = *(v2 + 308);
    if ((v12 & 0x40) != 0 && *(v2 + 224) == *(this + 441))
    {
      if (xmmword_1ED4E982C == 1 && (*(v2 + 144) & 1) != 0)
      {
        v13 = v10[252];
        v23 = v8;
        if (v13 != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
          v11 = &unk_1EA851000;
        }

        v22 = *(v11 + 253);
        v14 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        v11 = &unk_1EA851000;
        v10 = &unk_1EA851000;
        v8 = v23;
        if (v14)
        {
          v21 = CA::OGL::MetalContext::metal_pixel_format_name(*(v2 + 192), v15);
          v20 = [*(v2 + 168) width];
          v16 = [*(v2 + 168) height];
          *buf = v23;
          v25 = v2;
          v26 = 1024;
          v27 = 0;
          v28 = 2080;
          v29 = v21;
          v30 = 1024;
          v31 = v20;
          v32 = 1024;
          v33 = v16;
          _os_log_debug_impl(&dword_183AA6000, v22, OS_LOG_TYPE_DEBUG, "> drop surface %p texture %d %s %dx%d\n", buf, 0x28u);
          v8 = v23;
          v10 = &unk_1EA851000;
          v11 = &unk_1EA851000;
        }
      }

      *&v7[8 * v9++] = *(v2 + 216);
      v12 = *(v2 + 308);
    }

    *(v2 + 308) = v12 & 0xFFBF;
    v2 = *(v2 + 8);
  }

  while (v2);
  if (v9 > 0)
  {
    if (xmmword_1ED4E982C == 1)
    {
      if (v10[252] != -1)
      {
        v18 = v11;
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        v11 = v18;
      }

      v17 = *(v11 + 253);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v25) = v9;
        _os_log_debug_impl(&dword_183AA6000, v17, OS_LOG_TYPE_DEBUG, "issuing drop hints for %d surfaces", buf, 8u);
      }
    }

    [*(this + 441) encodeCacheHintFinalize:1 resourceGroups:v7 count:v9];
  }

LABEL_24:
  if (v6 > 0x1000)
  {
    free(v7);
  }
}

void CA::OGL::MetalContext::purge_deferred_surfaces(CA::OGL::MetalContext *this)
{
  for (i = *(this + 491); i; i = *(this + 491))
  {
    *(this + 491) = *(i + 16);
    *(i + 16) = 0;
    *(i + 308) &= ~0x800u;
    CA::OGL::MetalContext::finalize_surface(this, i);
  }
}

const char *CA::OGL::MetalContext::metal_pixel_format_name(CA::OGL::MetalContext *this, MTLPixelFormat a2)
{
  Name = MTLPixelFormatGetName();
  if (!strncmp(Name, "MTLPixelFormat", 0xEuLL))
  {
    v3 = 14;
  }

  else
  {
    v3 = 0;
  }

  return &Name[v3];
}

void CA::OGL::MetalContext::SharedEvent::add_encoded(CA::OGL::MetalContext::SharedEvent *this, uint64_t a2, atomic_uint *a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 26);
  v8 = *(this + 14);
  v9 = *(this + 15);
  while (v8 != v9)
  {
    if (*(v8 + 8) == a3)
    {
      *v8 = a2;
      *(v8 + 16) = a4;
    }

    v8 += 24;
  }

  atomic_fetch_add(a3 + 32, 1u);
  if (a3)
  {
    atomic_fetch_add(a3 + 32, 1u);
    v10 = *(this + 15);
    v11 = *(this + 16);
    if (v10 < v11)
    {
      *v10 = a2;
      atomic_fetch_add(a3 + 32, 1u);
      v12 = a3;
LABEL_11:
      v10[1] = v12;
      v10[2] = a4;
      v13 = v10 + 3;
      *(this + 15) = v10 + 3;
      goto LABEL_35;
    }

    v12 = a3;
  }

  else
  {
    v10 = *(this + 15);
    v11 = *(this + 16);
    if (v10 < v11)
    {
      v12 = 0;
      *v10 = a2;
      goto LABEL_11;
    }

    v12 = 0;
  }

  v14 = *(this + 14);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v14) >> 3);
  v16 = v15 + 1;
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
  if (2 * v17 > v16)
  {
    v16 = 2 * v17;
  }

  if (v17 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v16;
  }

  if (v18)
  {
    if (v18 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  v19 = 24 * v15;
  *(24 * v15) = a2;
  if (v12)
  {
    atomic_fetch_add(v12 + 32, 1u);
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  *(24 * v15 + 8) = v20;
  *(24 * v15 + 0x10) = a4;
  v13 = (v19 + 24);
  v27 = (v19 + 24);
  v21 = *(this + 14);
  v22 = *(this + 15);
  v23 = (v19 + v21 - v22);
  if (v21 != v22)
  {
    v24 = *(this + 14);
    v25 = v23;
    do
    {
      *v25 = *v24;
      *(v24 + 1) = 0;
      *(v25 + 2) = *(v24 + 2);
      v24 += 24;
      v25 += 24;
    }

    while (v24 != v22);
    do
    {
      v26 = *(v21 + 1);
      if (v26)
      {
        CA::CASharedEvent::unref(v26);
      }

      v21 += 24;
    }

    while (v21 != v22);
    v21 = *(this + 14);
  }

  *(this + 14) = v23;
  *(this + 120) = v27;
  if (v21)
  {
    operator delete(v21);
  }

LABEL_35:
  *(this + 15) = v13;
  if (v12)
  {
    CA::CASharedEvent::unref(v12);
  }

  if (a3)
  {
    CA::CASharedEvent::unref(a3);
  }

  os_unfair_lock_unlock(this + 26);
}

void sub_183D0A71C(_Unwind_Exception *a1)
{
  if (v3)
  {
    CA::CASharedEvent::unref(v3);
  }

  if (v2)
  {
    CA::CASharedEvent::unref(v2);
  }

  os_unfair_lock_unlock(v1 + 26);
  _Unwind_Resume(a1);
}

void CA::OGL::MetalContext::mark_cache_drop_hints(CA::OGL::MetalContext *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 10);
  if (v2)
  {
    v3 = -1;
    v4 = *(this + 10);
    do
    {
      v5 = v3;
      v4 = *(v4 + 8);
      ++v3;
    }

    while (v4);
    v6 = 8 * (v5 + 2);
    if (v3 > 0x1FF)
    {
      v7 = malloc_type_malloc(8 * (v5 + 2), 0x80040B8603338uLL);
      v2 = *(this + 10);
      if (!v2)
      {
        goto LABEL_25;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFF0);
  bzero(v7, v6);
  if (!v2)
  {
    goto LABEL_25;
  }

LABEL_9:
  v9 = 0;
  *&v8 = 134219010;
  v19 = v8;
  do
  {
    if (*(v2 + 216) || (v10 = [*(this + 438) newResourceGroupFromResources:v2 + 168 count:*(v2 + 144) & 1], (*(v2 + 216) = v10) != 0))
    {
      if (xmmword_1ED4E982C == 1 && (*(v2 + 144) & 1) != 0)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v18 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEBUG))
        {
          v17 = CA::OGL::MetalContext::metal_pixel_format_name(*(v2 + 192), v12);
          v16 = [*(v2 + 168) width];
          v13 = [*(v2 + 168) height];
          *buf = v19;
          v21 = v2;
          v22 = 1024;
          v23 = 0;
          v24 = 2080;
          v25 = v17;
          v26 = 1024;
          v27 = v16;
          v28 = 1024;
          v29 = v13;
          _os_log_debug_impl(&dword_183AA6000, v18, OS_LOG_TYPE_DEBUG, "> mark surface %p texture %d %s %dx%d\n", buf, 0x28u);
        }
      }

      *&v7[8 * v9++] = *(v2 + 216);
      v11 = *(this + 441);
    }

    else
    {
      v11 = 0;
    }

    *(v2 + 224) = v11;
    *(v2 + 308) &= ~0x40u;
    v2 = *(v2 + 8);
  }

  while (v2);
  if (v9 > 0)
  {
    if (xmmword_1ED4E982C == 1)
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v14 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v21) = v9;
        _os_log_debug_impl(&dword_183AA6000, v14, OS_LOG_TYPE_DEBUG, "marking %d surfaces for cache drop hints", buf, 8u);
      }
    }

    [*(this + 441) encodeCacheHintTag:1 resourceGroups:v7 count:v9];
  }

LABEL_25:
  if (v6 > 0x1000)
  {
    free(v7);
  }
}

void *std::vector<CA::OGL::MetalContext::SharedEvent::Encoded>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  for (i = result[1]; i != v2; i -= 24)
  {
    result = *(i - 16);
    if (result)
    {
      result = CA::CASharedEvent::unref(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t ___ZN2CA3OGLL15layer_flags_strEj_block_invoke()
{
  result = objc_opt_new();
  CA::OGL::layer_flags_str::str_cache = result;
  return result;
}

os_log_t ___Z21x_log_get_metal_tracev_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Metal.Trace");
  x_log_get_metal_trace(void)::log = result;
  return result;
}

void std::deque<objc_object  {objcproto9MTLBuffer}*>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 32) >= 0x400uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }
}

BOOL CA::OGL::MetalContext::backward_dm(uint64_t a1, void *a2, void *a3, double *a4, double *a5, __IOSurface *a6, double *a7, double *a8, float16x4_t *a9, __int128 *a10, uint64_t a11)
{
  v134 = *MEMORY[0x1E69E9840];
  if (CADeviceSupportsHDRProcessing::once != -1)
  {
    dispatch_once(&CADeviceSupportsHDRProcessing::once, &__block_literal_global_199);
  }

  if (CADeviceSupportsHDRProcessing::supports_hdr != 1)
  {
    return 0;
  }

  if (a2 && a2[2])
  {
    __assert_rtn("backward_dm", "ogl-metal.mm", 18342, "!dst || !dst->shared_event ()");
  }

  if (a3 && a3[2])
  {
    __assert_rtn("backward_dm", "ogl-metal.mm", 18343, "!srcVideo || !srcVideo->shared_event ()");
  }

  if (a6)
  {
    if (*(a6 + 2))
    {
      __assert_rtn("backward_dm", "ogl-metal.mm", 18344, "!srcUI || !srcUI->shared_event ()");
    }

    a6 = (*(*a6 + 168))(a6);
  }

  v127 = a7;
  if (a3)
  {
    v19 = (*(*a3 + 168))(a3);
    if (a2)
    {
LABEL_13:
      v20 = (*(*a2 + 168))(a2);
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0;
    if (a2)
    {
      goto LABEL_13;
    }
  }

  v20 = 0;
LABEL_16:
  v21 = CA::OGL::MetalContext::backward_dm(CA::WindowServer::Surface *,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::OGL::ExtendedColor const&,CA::Mat4<float> const*,CA::Render::DisplayAttributes const*)::debug_iosurface;
  if (byte_1ED4E9801 == 1)
  {
    if (!CA::OGL::MetalContext::backward_dm(CA::WindowServer::Surface *,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::OGL::ExtendedColor const&,CA::Mat4<float> const*,CA::Render::DisplayAttributes const*)::debug_iosurface)
    {
      Width = IOSurfaceGetWidth(v20);
      Height = IOSurfaceGetHeight(v20);
      CA::OGL::MetalContext::backward_dm(CA::WindowServer::Surface *,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::OGL::ExtendedColor const&,CA::Mat4<float> const*,CA::Render::DisplayAttributes const*)::debug_iosurface = CA::Render::create_iosurface(0x23, Width, Height, 0, v112, v113);
      CA::OGL::fillB3A8SurfaceWithColor(CA::OGL::MetalContext::backward_dm(CA::WindowServer::Surface *,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::OGL::ExtendedColor const&,CA::Mat4<float> const*,CA::Render::DisplayAttributes const*)::debug_iosurface, v114, v115, v116, v117, v118);
      v21 = CA::OGL::MetalContext::backward_dm(CA::WindowServer::Surface *,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::OGL::ExtendedColor const&,CA::Mat4<float> const*,CA::Render::DisplayAttributes const*)::debug_iosurface;
    }
  }

  else
  {
    if (CA::OGL::MetalContext::backward_dm(CA::WindowServer::Surface *,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::OGL::ExtendedColor const&,CA::Mat4<float> const*,CA::Render::DisplayAttributes const*)::debug_iosurface)
    {
      CFRelease(CA::OGL::MetalContext::backward_dm(CA::WindowServer::Surface *,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::OGL::ExtendedColor const&,CA::Mat4<float> const*,CA::Render::DisplayAttributes const*)::debug_iosurface);
      CA::OGL::MetalContext::backward_dm(CA::WindowServer::Surface *,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::WindowServer::Surface *,CA::Rect &,CA::Rect &,CA::OGL::ExtendedColor const&,CA::Mat4<float> const*,CA::Render::DisplayAttributes const*)::debug_iosurface = 0;
    }

    v21 = a6;
  }

  if (!(v21 | v19) || !v20)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v25 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v25, OS_LOG_TYPE_ERROR, "Backward DM has no inputs\n", buf, 2u);
    }

    return 0;
  }

  v126 = a8;
  v22 = IOSurfaceGetWidth(v20);
  buffer = v20;
  v23 = IOSurfaceGetHeight(v20);
  v24 = v23;
  if (!*(a1 + 3704) && !*(a1 + 3708) && *(a1 + 3712) == v22 && *(a1 + 3716) == v23 && *(a1 + 3724) == *(a11 + 4) && *(a1 + 3788) == *(a11 + 68) && CA::Render::Chromaticity::operator==(a1 + 3796, a11 + 76))
  {
    v124 = (a1 + 3688);
    if (*(a1 + 3688))
    {
      goto LABEL_49;
    }
  }

  else
  {
    v124 = (a1 + 3688);

    *(a1 + 3688) = 0;
    *(a1 + 3704) = 0;
    *(a1 + 3712) = v22;
    *(a1 + 3716) = v24;
  }

  v28 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithPath:{@"/System/Library/PrivateFrameworks/HDRProcessing.framework", "classNamed:", @"HDRBackwardDisplayManagement"}];
  v29 = *(a11 + 68) - 2;
  if (v29 > 2)
  {
    goto LABEL_109;
  }

  v30 = v28;
  v31 = *off_1E6DEDE68[v29];
  v32 = *off_1E6DEDE50[v29];
  v33 = objc_alloc(MEMORY[0x1E695DF90]);
  v34 = [v33 initWithObjectsAndKeys:{v32, _kHDRProcessingDisplayColorFormatKey, v31, _kHDRProcessingDestinationDisplayTypeKey, 0}];
  if (*(a11 + 4) != 0.0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [v34 setObject:v36 forKeyedSubscript:_kHDRProcessingDisplayMaximumBrightnessInNitsKey];
    LODWORD(v37) = *a11;
    v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
    [v34 setObject:v38 forKeyedSubscript:_kHDRProcessingDisplayMinimumBrightnessInNitsKey];
  }

  if (*(a11 + 132) >= 1 && _kHDRProcessingDisplayDolbyVisionDMVersionKey)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v34 setObject:v39 forKeyedSubscript:_kHDRProcessingDisplayDolbyVisionDMVersionKey];
  }

  if (*(a11 + 108) == 1 && _kHDRProcessingDisplayChromaticityBx)
  {
    LODWORD(v35) = *(a11 + 92);
    v40 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
    [v34 setObject:v40 forKeyedSubscript:_kHDRProcessingDisplayChromaticityBx];
    LODWORD(v41) = *(a11 + 96);
    v42 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
    [v34 setObject:v42 forKeyedSubscript:_kHDRProcessingDisplayChromaticityBy];
    LODWORD(v43) = *(a11 + 84);
    v44 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
    [v34 setObject:v44 forKeyedSubscript:_kHDRProcessingDisplayChromaticityGx];
    LODWORD(v45) = *(a11 + 88);
    v46 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
    [v34 setObject:v46 forKeyedSubscript:_kHDRProcessingDisplayChromaticityGy];
    LODWORD(v47) = *(a11 + 76);
    v48 = [MEMORY[0x1E696AD98] numberWithFloat:v47];
    [v34 setObject:v48 forKeyedSubscript:_kHDRProcessingDisplayChromaticityRx];
    LODWORD(v49) = *(a11 + 80);
    v50 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
    [v34 setObject:v50 forKeyedSubscript:_kHDRProcessingDisplayChromaticityRy];
    LODWORD(v51) = *(a11 + 100);
    v52 = [MEMORY[0x1E696AD98] numberWithFloat:v51];
    [v34 setObject:v52 forKeyedSubscript:_kHDRProcessingDisplayChromaticityWx];
    LODWORD(v53) = *(a11 + 104);
    v54 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
    [v34 setObject:v54 forKeyedSubscript:_kHDRProcessingDisplayChromaticityWy];
  }

  if (!v34)
  {
LABEL_109:
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v119 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v120 = "CoreAnimation: Could not create backwardDM display properties!";
LABEL_117:
      _os_log_error_impl(&dword_183AA6000, v119, OS_LOG_TYPE_ERROR, v120, buf, 2u);
    }

LABEL_118:
    abort();
  }

  *(a1 + 3688) = [[v30 alloc] initWithDevice:*(a1 + 3504) displayProperties:v34];
  *(a1 + 3720) = *a11;
  v55 = *(a11 + 64);
  v57 = *(a11 + 16);
  v56 = *(a11 + 32);
  *(a1 + 3768) = *(a11 + 48);
  *(a1 + 3784) = v55;
  *(a1 + 3736) = v57;
  *(a1 + 3752) = v56;
  v59 = *(a11 + 96);
  v58 = *(a11 + 112);
  v60 = *(a11 + 80);
  *(a1 + 3848) = *(a11 + 128);
  *(a1 + 3816) = v59;
  *(a1 + 3832) = v58;
  *(a1 + 3800) = v60;
  CFRelease(v34);
  if (!*(a1 + 3688))
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v119 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v120 = "CoreAnimation: Failed to initialize HDRBackwardDisplayManagement!";
      goto LABEL_117;
    }

    goto LABEL_118;
  }

LABEL_49:
  CA::OGL::MetalContext::stop_encoders(a1);
  if (a2)
  {
    v62 = (*(*a2 + 232))(a2);
  }

  else
  {
    v62 = 0;
  }

  if (!CA::OGL::MetalContext::start_command_buffer(a1, v62, v61))
  {
    return 0;
  }

  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    if (v21)
    {
      IOSurfaceGetID(v21);
    }

    if (v19)
    {
      IOSurfaceGetID(v19);
    }

    IOSurfaceGetID(buffer);
    kdebug_trace();
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v64 = dword_1ED4E96B0;
  if (*&dword_1ED4E96B0 == 0.0)
  {
    v64 = *(a11 + 4);
  }

  if (v19)
  {
    [*(a1 + 3696) setObject:IOSurfaceCopyAllValues(v19) forKeyedSubscript:_kHDRProcessingDolbyVisionBackwardDMDictinary];
  }

  LODWORD(v63) = v64;
  v65 = [MEMORY[0x1E696AD98] numberWithFloat:v63];
  [*(a1 + 3696) setObject:v65 forKeyedSubscript:_kHDRProcessingSDRMaxBrightnessInNits];
  if (a10)
  {
    v67 = *a10;
    v68 = a10[2];
    *v132 = a10[1];
    v133 = v68;
    HIDWORD(v67) = *v132;
    v69.f64[0] = *&v132[4];
    *&v69.f64[1] = v68;
    *buf = v67;
    v130 = v69;
    v131 = DWORD2(v68);
    [*v124 setAccessibilityMatrix:buf];
  }

  v70 = a9;
  if (v19)
  {
    v71 = a4[2];
    v72 = a4[3];
    if (v71 >= v72)
    {
      v73 = a4[3];
    }

    else
    {
      v73 = a4[2];
    }

    if (v73 > 0.0)
    {
      v78 = v71 | (v72 << 32);
      v77 = *a4 & 0xFFFFFFFE;
      v76 = a4[1] << 32;
    }

    else
    {
      v74 = IOSurfaceGetWidth(v19);
      v75 = IOSurfaceGetHeight(v19);
      v76 = 0;
      v77 = 0;
      v78 = v74 | (v75 << 32);
    }

    v90 = a5[2];
    v66 = a5[3];
    if (v90 >= v66)
    {
      v91 = a5[3];
    }

    else
    {
      v91 = a5[2];
    }

    if (v91 > 0.0)
    {
      v96 = v90 | (v66 << 32);
      v81 = *a5 & 0xFFFFFFFE;
      v80 = a5[1] << 32;
    }

    else
    {
      v92 = v76;
      v93 = v77;
      v94 = IOSurfaceGetWidth(buffer);
      v95 = IOSurfaceGetHeight(buffer);
      v77 = v93;
      v76 = v92;
      v80 = 0;
      v81 = 0;
      v96 = v94 | (v95 << 32);
    }

    v82 = v78 & 0xFFFFFFFFFFFFFFFELL;
    v79 = v96 & 0xFFFFFFFFFFFFFFFELL;
    if (v21)
    {
      goto LABEL_78;
    }

LABEL_69:
    v83 = v19;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    goto LABEL_91;
  }

  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v76 = 0;
  v77 = 0;
  if (!v21)
  {
    goto LABEL_69;
  }

LABEL_78:
  v83 = v19;
  v97 = v127[2];
  v98 = v127[3];
  if (v97 >= v98)
  {
    v99 = v127[3];
  }

  else
  {
    v99 = v127[2];
  }

  v123 = v81;
  v125 = v80;
  v121 = v82;
  v122 = v77;
  v100 = v76;
  if (v99 > 0.0)
  {
    v89 = *v127;
    v88 = v127[1];
    v101 = v97;
    v102 = v98;
  }

  else
  {
    v101 = IOSurfaceGetWidth(v21);
    v102 = IOSurfaceGetHeight(v21);
    v88 = 0;
    v89 = 0;
  }

  v87 = v101 | (v102 << 32);
  v103 = v126[2];
  v66 = v126[3];
  if (v103 >= v66)
  {
    v104 = v126[3];
  }

  else
  {
    v104 = v126[2];
  }

  if (v104 > 0.0)
  {
    v86 = *v126;
    v84 = v103 | (v66 << 32);
    v85 = v126[1] << 32;
  }

  else
  {
    v105 = IOSurfaceGetWidth(buffer);
    v106 = IOSurfaceGetHeight(buffer);
    v85 = 0;
    v86 = 0;
    v84 = v105 | (v106 << 32);
  }

  v76 = v100;
  v77 = v122;
  v81 = v123;
  v70 = a9;
  v80 = v125;
  v82 = v121;
LABEL_91:
  LODWORD(v66) = v70->i32[1];
  *buf = vcvtq_f64_f32(*&vcvtq_f32_f16(*v70));
  v130 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&v66));
  v107 = [*(a1 + 3688) encodeToCommandBuffer:*(a1 + 3528) video:v83 videoSrcRegion:v77 | v76 videoDstRegion:v82 ui:v81 | v80 uiSrcRegion:v79 uiDstRegion:v21 backgroundColor:v89 | (v88 << 32) output:v87 frameProperties:{v86 | v85, v84, buf, buffer, *(a1 + 3696)}];
  [*(a1 + 3696) removeObjectForKey:_kHDRProcessingDolbyVisionBackwardDMDictinary];
  v26 = v107 == -17000;
  if (v107 != -17000)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v108 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      if ((v107 + 17008) >= 9)
      {
        v109 = CA::OGL::hdr_processing_error_str(HDRError)::err_buffer;
        snprintf(CA::OGL::hdr_processing_error_str(HDRError)::err_buffer, 0x20uLL, "%d", v107);
      }

      else
      {
        v109 = off_1E6DF5458[v107 + 17008];
      }

      *v132 = 136315138;
      *&v132[4] = v109;
      _os_log_error_impl(&dword_183AA6000, v108, OS_LOG_TYPE_ERROR, "Backward DM failed to convert surface: %s\n", v132, 0xCu);
    }
  }

  return v26;
}

uint64_t CA::OGL::fillB3A8SurfaceWithColor(CA::OGL *this, __IOSurface *a2, float a3, float a4, float a5, float a6)
{
  v16 = *MEMORY[0x1E69E9840];
  IOSurfaceLock(this, 0, 0);
  __pattern4 = -537525888;
  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(this, 0);
  if ((IOSurfaceGetBytesPerRow(this) & 3) != 0)
  {
    __assert_rtn("fillB3A8SurfaceWithColor", "ogl-metal.mm", 18194, "IOSurfaceGetBytesPerRow (surface) % 4 == 0");
  }

  BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(this, 0);
  Height = IOSurfaceGetHeight(this);
  memset_pattern4(BaseAddressOfPlane, &__pattern4, Height * BytesPerRowOfPlane);
  v14 = -2139062144;
  v10 = IOSurfaceGetBaseAddressOfPlane(this, 1uLL);
  v11 = IOSurfaceGetBytesPerRowOfPlane(this, 1uLL);
  v12 = IOSurfaceGetHeight(this);
  memset_pattern4(v10, &v14, v12 * v11);

  return IOSurfaceUnlock(this, 0, 0);
}

void CA::OGL::MetalContext::clear_surface(CA::OGL::MetalContext *this, CA::WindowServer::Surface *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v12 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = objc_autoreleasePoolPush();
    if (CA::OGL::MetalContext::make_buffer_current(v5, v4))
    {
      bzero(v11, 0x3F0uLL);
      CA::OGL::Context::prepare_context(v5, v11);
      *(v5 + 136) = &v10;
      *(v5 + 152) = 128;
      v9[4] = 0x3C003C003C003C00;
      memset(&v9[5], 0, 24);
      v9[9] = 0;
      v9[8] = 1065353216;
      v9[10] = 1025;
      v9[2] = 0;
      v9[3] = &CA::identity_transform;
      v9[0] = 0;
      v9[1] = &CA::Shape::_infinite_shape;
      CA::OGL::MetalContext::begin_rendering(v5, v9);
      CA::OGL::MetalContext::shared_event_submit(v5, *(v4 + 16), 1, 2);
      *(*(v5 + 16) + 497) &= ~1u;
      *(*(v5 + 16) + 16) = 0;
      *(v5 + 144) = 0;
      *(v5 + 112) = v5 + 1386;
      *(v5 + 120) = xmmword_183E20E50;
      CA::OGL::Context::array_rect(v5, 0.0, 0.0, *(v4 + 56), *(v4 + 60));
      v7 = *(v5 + 136) + 48 * *(v5 + 144);
      *(v7 - 160) = 0x3C00000000000000;
      *(v7 - 112) = 0x3C00000000000000;
      *(v7 - 64) = 0x3C00000000000000;
      *(v7 - 16) = 0x3C00000000000000;
      CA::OGL::Context::array_flush(v5);
      CA::OGL::MetalContext::shared_event_submit(v5, *(v4 + 16), 0, 2);
      CA::OGL::MetalContext::end_rendering(v5);
      CA::OGL::MetalContext::make_buffer_current(v5, 0);
      CA::OGL::MetalContext::finish(v5);
      for (i = 504; i != -504; i -= 504)
      {
        if (*&v11[i])
        {
          __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
        }
      }
    }

    objc_autoreleasePoolPop(v6);
  }
}

void CA::OGL::MetalContext::finish(id *this)
{
  CA::OGL::MetalContext::flush(this, 1);
  if ((*(this + 875) & 0x10) == 0)
  {
    [this[440] waitUntilCompleted];
  }

  this[440] = 0;
}

void *CA::OGL::MetalContext::compute_surface_apl_dimming_factor(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a2[9];
  external_buffer = CA::OGL::MetalBufferPool::create_external_buffer(*(a1 + 4760), 0x30u, 4uLL, v6);
  if (!external_buffer)
  {
    return external_buffer;
  }

  if (byte_1ED4E9868 == 1)
  {
    CA::OGL::MetalContext::compute_surface_apl_dimming_factor(CA::OGL::Surface *,CA::OGL::APLFilterParams const&)::$_0::operator()(a1, external_buffer);
    return external_buffer;
  }

  if ((*(a3 + 20) & 0x10) != 0 && (*(a1 + 3318) & 4) != 0)
  {
    v9 = 0;
    v8 = 2;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  compute_pipeline = CA::OGL::MetalContext::get_compute_pipeline(a1, v8);
  v11 = CA::OGL::MetalContext::get_compute_pipeline(a1, 1u);
  if ((CA::OGL::MetalContext::start_compute_encoder(a1, *(a1 + 3640)) & 1) == 0)
  {
    goto LABEL_33;
  }

  v51 = v11;
  [*(a1 + 3552) setComputePipelineState:compute_pipeline];
  v12 = [compute_pipeline threadExecutionWidth];
  v13 = [compute_pipeline maxTotalThreadsPerThreadgroup];
  v14 = [compute_pipeline threadExecutionWidth];
  v15.i32[0] = v12;
  v16 = vcvt_f32_s32(a2[7]);
  v17 = vrndp_f32(vmul_f32(v16, 0x3F0000003F000000));
  if (v9)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19 = vbsl_s8(vdup_n_s32(v18), v16, v17);
  v19.i32[0] = ceilf(0.125 * v19.f32[0]);
  v20 = vcvt_u32_f32(v19);
  v15.i32[1] = v13 / v14;
  v21 = vadd_s32(vadd_s32(v15, -1), v20);
  v49 = v13 / v14;
  v50 = v12;
  v22 = v21.i32[1] / (v13 / v14);
  v20.i32[0] = v21.i32[0] / v12;
  v52 = v21.i32[0] / v12;
  v23 = vmul_s32(v20, vdup_n_s32(v22)).u32[0];
  v24 = CA::OGL::MetalBufferPool::create_external_buffer(*(a1 + 4760), 16 * v23, 0x10uLL, v6);
  if (!v24)
  {
    goto LABEL_30;
  }

  v25 = v24;
  v26 = v24[4];
  if (!v26 || (v47 = *(v24 + 10), (CA::OGL::MetalContext::ensure_gamma_lut_buffer(a1) & 1) == 0))
  {
    CA::OGL::MetalBufferPool::release_external_buffer(*(a1 + 4760), v25);
LABEL_30:
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v38 = x_log_get_ogl_metal(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v42 = "Failed to allocate Metal buffer\n";
    goto LABEL_44;
  }

  if (v23 >= 8)
  {
    v27 = 8;
  }

  else
  {
    v27 = v23;
  }

  v28 = (v23 / v27 - 1) | (((v23 / v27) - 1) >> 1);
  v29 = v28 | (v28 >> 2) | ((v28 | (v28 >> 2)) >> 4);
  v30 = v29 | (v29 >> 8) | ((v29 | (v29 >> 8)) >> 16);
  v48 = (v30 | HIDWORD(v30)) + 1;
  if (v48 >= [compute_pipeline maxTotalThreadsPerThreadgroup])
  {
    LODWORD(v48) = [compute_pipeline maxTotalThreadsPerThreadgroup];
  }

  v57 = 0;
  v56 = 0;
  v31 = CA::OGL::MetalBufferPool::alloc_bytes(*(a1 + 4760), 0x30u, 0x10u, &v57, &v56);
  if (v31)
  {
    v32 = v31;
    v53 = __PAIR64__(v22, v52);
    v33 = a2[7].i16[0];
    v31[16] = v33;
    v31[17] = a2[7].i16[2];
    v31[16] = v33;
    if (v9)
    {
      v34 = 1;
    }

    else
    {
      v34 = 4;
    }

    *(v31 + 44) = v34;
    *v31 = *a3;
    *(v31 + 1) = *(a3 + 8);
    *(v31 + 9) = (v23 + v48 - 1) / v48;
    *(v31 + 10) = v23;
    *(v31 + 45) = (*(a3 + 20) & 8) != 0;
    *(v31 + 46) = 0;
    v35 = *(a1 + 600);
    if (v35)
    {
      v36 = (*(*v35 + 16))(v35);
      if (v36)
      {
        if ((*(a3 + 20) & 4) != 0)
        {
          if ((*(*v36 + 880))(v36))
          {
            if ((*(a1 + 1384) & 2) != 0)
            {
              v37 = (*(a3 + 20) >> 1) & 1;
            }

            else
            {
              LOBYTE(v37) = 1;
            }
          }

          else
          {
            LOBYTE(v37) = 0;
          }

          *(v32 + 46) = v37;
        }
      }
    }

    [*(a1 + 3552) setTexture:*&a2[21] atIndex:0];
    [*(a1 + 3552) setBuffer:v57 offset:v56 atIndex:0];
    [*(a1 + 3552) setBuffer:v46 offset:v47 atIndex:2];
    [*(a1 + 3552) setBuffer:*(a1 + 5120) offset:0 atIndex:4];
    [*(a1 + 3552) setThreadgroupMemoryLength:16 * v50 * v49 atIndex:0];
    v43 = *(a1 + 3552);
    *&v44 = v53;
    *(&v44 + 1) = HIDWORD(v53);
    *buf = v44;
    v59 = 1;
    v54 = v50;
    *&v55 = v49;
    *(&v55 + 1) = 1;
    [v43 dispatchThreadgroups:buf threadsPerThreadgroup:&v54];
    [*(a1 + 3552) setComputePipelineState:v51];
    [*(a1 + 3552) setBuffer:v46 offset:v47 atIndex:1];
    [*(a1 + 3552) setBuffer:external_buffer[4] offset:*(external_buffer + 10) atIndex:2];
    [*(a1 + 3552) setThreadgroupMemoryLength:16 * v48 atIndex:0];
    v45 = *(a1 + 3552);
    *buf = vdupq_n_s64(1uLL);
    v59 = 1;
    v54 = v48;
    v55 = *buf;
    [v45 dispatchThreadgroups:buf threadsPerThreadgroup:&v54];
    CA::OGL::MetalBufferPool::release_external_buffer(*(a1 + 4760), v25);
    return external_buffer;
  }

  CA::OGL::MetalBufferPool::release_external_buffer(*(a1 + 4760), v25);
  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v38 = x_log_get_ogl_metal(void)::log;
  if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v42 = "Failed to allocate uniform Metal buffer\n";
LABEL_44:
    _os_log_error_impl(&dword_183AA6000, v38, OS_LOG_TYPE_ERROR, v42, buf, 2u);
  }

LABEL_33:
  v39 = external_buffer[2];
  if (v39)
  {
    if (CA::OGL::MetalContext::start_blit_encoder(a1, v39))
    {
      *buf = 0;
      LODWORD(v54) = 0;
      v40 = CA::OGL::MetalBufferPool::alloc_bytes(*(a1 + 4760), *(external_buffer + 2), 4u, buf, &v54);
      if (v40)
      {
        memset_pattern16(v40, &unk_183E21910, 0x30uLL);
        [*(a1 + 3544) copyFromBuffer:*buf sourceOffset:v54 toBuffer:external_buffer[4] destinationOffset:*(external_buffer + 10) size:external_buffer[1]];
      }
    }
  }

  else
  {
    memset_pattern16(*external_buffer, &unk_183E21910, 0x30uLL);
  }

  return external_buffer;
}

uint64_t CA::OGL::MetalContext::compute_surface_apl_dimming_factor(CA::OGL::Surface *,CA::OGL::APLFilterParams const&)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (v3)
  {
    if (CA::OGL::MetalContext::start_blit_encoder(a1, v3))
    {
      v8[0] = 0;
      v7 = 0;
      v5 = CA::OGL::MetalBufferPool::alloc_bytes(*(a1 + 4760), *(a2 + 8), 4u, v8, &v7);
      if (v5)
      {
        memset_pattern16(v5, &unk_183E21910, 0x30uLL);
        [*(a1 + 3544) copyFromBuffer:v8[0] sourceOffset:v7 toBuffer:*(a2 + 32) destinationOffset:*(a2 + 40) size:*(a2 + 8)];
      }
    }
  }

  else
  {
    memset_pattern16(*a2, &unk_183E21910, 0x30uLL);
  }

  return a2;
}

uint64_t CA::OGL::MetalContext::start_blit_encoder(CA::OGL::MetalContext *this, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 443))
  {
    return 1;
  }

  CA::OGL::MetalContext::stop_encoders(this);
  result = CA::OGL::MetalContext::start_command_buffer(this, a2, v4);
  if (!result)
  {
    return result;
  }

  CA::OGL::MetalContext::SharedEvent::encode_all((this + 2776), this, v6);
  v7 = [*(this + 441) blitCommandEncoder];
  *(this + 443) = v7;
  if (v7)
  {
    if (byte_1ED4E9879 == 1)
    {
      v8 = mach_continuous_time();
    }

    else
    {
      v8 = 0;
    }

    *(this + 457) = v8;
    return 1;
  }

  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v9 = x_log_get_ogl_metal(void)::log;
  result = os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v10 = 0;
    _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "Unable to start blit command encoder\n", v10, 2u);
    return 0;
  }

  return result;
}

int32x2_t *CA::OGL::MetalContext::create_variable_blur_mip_surface(uint64_t a1, int32x2_t *a2, _OWORD *a3, _OWORD *a4, int a5, unsigned int a6, char a7, int a8, float a9, char a10, char a11)
{
  v199 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    return 0;
  }

  v17 = a11;
  if ((a10 & 1) != 0 || (v18 = *a3, v184 = *a3, v19 = *(a1 + 3316), ((byte_1ED4E98AB ^ 1) & (v19 >> 3)) == 0))
  {
LABEL_101:
    *v193 = *a3;
    v154 = a4[1];
    *__dst = *a4;
    *&__dst[16] = v154;
    return CA::OGL::Context::create_variable_blur_mip_surface(a1, a2, v193, __dst, a5, a6, a9, 0, a8, 0, v17);
  }

  v180 = a3;
  v21 = DWORD1(v18);
  v22 = (SHIDWORD(v18) + a9);
  HIDWORD(v184) = v22;
  v181 = a5;
  if (a11)
  {
    v23 = 25167375;
  }

  else
  {
    v23 = 25166351;
  }

  if ((v19 & 0x20) != 0)
  {
    v24 = v23 | 0x2004000;
  }

  else
  {
    v24 = v23;
  }

  v25 = (a5 != 0) & (BYTE9(xmmword_1ED4E98AC) ^ 1);
  v26 = a6;
  if (v25 == 1)
  {
    v26 = a6 - 1;
    v21 = SDWORD1(v18) / 2;
    LODWORD(v184) = v18 / 2;
    DWORD1(v184) = SDWORD1(v18) / 2;
    DWORD2(v184) = SDWORD2(v18) / 2;
    HIDWORD(v184) = v22 / 2;
  }

  v171 = DWORD2(v18);
  v177 = v21;
  v175 = v18;
  v192[1] = 0;
  v192[2] = 0;
  v192[0].i32[1] = v26;
  v192[0].i32[0] = 1;
  v27 = CA::OGL::MetalContext::create_surface_with_properties(a1, 1, &v184, v24, v192, @"compute-variable-blur-mip-surface");
  v28 = v27;
  if (!v27)
  {
LABEL_100:
    v17 = a11;
    a5 = v181;
    a3 = v180;
    goto LABEL_101;
  }

  v179 = a8;
  v182 = v26;
  CA::OGL::MetalContext::extend_surface(v27, v27, v27[5].u32[0], v27[5].u32[1]);
  v168 = v25;
  if (v25)
  {
    v31 = 128;
  }

  else
  {
    v31 = 0;
  }

  *(v28 + 148) = *(v28 + 148) & 0xFF7F | v31;
  v32 = a2[7].i32[0];
  v33 = a2[7].i32[1];
  if (v32 <= v33)
  {
    v34 = a2[7].i32[1];
  }

  else
  {
    v34 = a2[7].i32[0];
  }

  v29.i32[0] = 1073741822;
  v30.i32[0] = v34;
  v169 = vdupq_lane_s32(*&vcgtq_s32(v30, v29), 0);
  v35 = a2[6];
  v36 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v37 = v32;
  *&__dst[496] = 0;
  if (v34 > 1073741822)
  {
    v37 = 1.79769313e308;
  }

  v159 = v37;
  if (v34 <= 1073741822)
  {
    v38 = v33;
  }

  else
  {
    v38 = 1.79769313e308;
  }

  v161 = v38;
  v39.i64[0] = v35.i32[0];
  v39.i64[1] = v35.i32[1];
  v163 = vcvtq_f64_s64(v39);
  v165 = v36;
  memset(__dst, 0, 496);
  v40 = *(a1 + 16);
  memcpy(__dst, v40, sizeof(__dst));
  *__dst = v40;
  *(a1 + 16) = __dst;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v41 = *(a1 + 656);
  *(&v194 + 1) = 0x3C003C003C003C00;
  v195 = 0uLL;
  *&v196 = 0;
  WORD4(v197) = 1;
  memset(v193, 0, sizeof(v193));
  if (v41)
  {
    v42 = *(v41 + 64);
    WORD4(v197) = *(v41 + 80) & 0x100 | 1;
    v43 = WORD4(v197) | *(v41 + 80) & 0x400;
  }

  else
  {
    v43 = 1025;
    v42 = 1.0;
  }

  v166 = vbslq_s8(v169, v165, v163);
  *(&v196 + 2) = v42;
  WORD4(v197) = v43;
  *&v193[16] = 0;
  *&v194 = &CA::identity_transform;
  *&v193[8] = &CA::Shape::_infinite_shape;
  *v193 = CA::OGL::Context::set_gstate(a1, v193);
  v170 = *(v28 + 40);
  v44 = v26;
  if (xmmword_1ED4E98AC & 1) != 0 || (a7 & 1) != 0 || ((v171 | v22))
  {
    *(*(a1 + 16) + 497) &= ~1u;
    *(*(a1 + 16) + 16) = 1;
    CA::OGL::Context::push_surface(a1, v28, 1u, 0, 0);
    CA::OGL::Context::bind_surface(a1, a2, 0, 1u, 1, 0.0);
    v47 = *(*(a1 + 16) + 96);
    v48 = a2[7];
    v49.i64[0] = v48.i32[0];
    v49.i64[1] = v48.i32[1];
    __asm { FMOV            V1.2D, #-0.5 }

    v55 = vmulq_f64(vaddq_f64(vcvtq_f64_s64(v49), _Q1), vcvtq_f64_f32(v47));
    *(a1 + 144) = 0;
    *(a1 + 112) = a1 + 1386;
    *(a1 + 120) = xmmword_183E20E50;
    if (*(a1 + 152) <= 3uLL)
    {
      *(a1 + 1384) |= 0x20u;
      v172 = v55;
      CA::OGL::Context::array_flush(a1);
      v55 = v172;
      *(a1 + 144) = 0;
      *(a1 + 112) = a1 + 1386;
      *(a1 + 120) = xmmword_183E20E50;
    }

    v56 = vmul_f32(v47, 0x3F0000003F000000);
    v57 = vcvt_f32_f64(v55);
    if (v168)
    {
      v59 = *(v28 + 40);
      v58 = *(v28 + 44);
      *(*(a1 + 16) + 16) = 40;
      *(*(a1 + 16) + 19) = 0;
      if ((v179 & 1) == 0)
      {
        __assert_rtn("create_variable_blur_mip_surface_compute", "ogl-metal.mm", 17308, "edge_extend");
      }

      __asm { FMOV            V3.2S, #1.0 }

      v61 = vdiv_f32(_D3, vcvt_f32_s32(a2[5]));
      *(a1 + 160) = 0;
      *(a1 + 164) = v61;
      *(a1 + 172) = 0;
      *(a1 + 240) = v56;
      *(a1 + 248) = v57;
      CA::OGL::Context::array_rect(a1, v184, v177, (v184 + v59), (v177 + v58));
      v62.i64[0] = v175;
      v62.i64[1] = SHIDWORD(v175);
      v63 = vsubq_f64(vcvtq_f64_s64(v62), v166);
      v64 = vcvt_f32_f64(v63);
      v65 = v63.f64[0] + (2 * v59);
      v66 = v63.f64[1] + (2 * v58);
      v44 = v26;
    }

    else
    {
      *(*(a1 + 16) + 16) = 1;
      *(*(a1 + 16) + 19) = 5;
      v67 = *(a1 + 16);
      v67[48] = v56;
      v67[49] = v57;
      if (v179)
      {
        v68 = *(v28 + 40);
        v69 = *(v28 + 44);
        v70 = v184;
        CA::OGL::Context::array_rect(a1, v184, v177, (v184 + v68), (v177 + v69));
        v71 = v70;
        v44 = v182;
        v72.i64[0] = v71;
        v72.i64[1] = v177;
        v73 = vsubq_f64(vcvtq_f64_s64(v72), v166);
        v64 = vcvt_f32_f64(v73);
        v65 = v73.f64[0] + v68;
        v66 = v73.f64[1] + v69;
      }

      else
      {
        v74 = v166.f64[0];
        v75 = v166.f64[1];
        v76 = v159 + v166.f64[0];
        v77 = v161 + v166.f64[1];
        CA::OGL::Context::array_rect(a1, v74, v75, v76, v77);
        v65 = v159;
        v66 = v161;
        v64 = 0;
      }
    }

    v78 = v65;
    v79 = v66;
    v80 = *(a1 + 136) + 48 * *(a1 + 144);
    *(v80 - 176) = v64;
    *(v80 - 128) = v78;
    *(v80 - 124) = v64.i32[1];
    *(v80 - 80) = v78;
    *(v80 - 76) = v79;
    *(v80 - 32) = v64.i32[0];
    *(v80 - 28) = v79;
    CA::OGL::Context::array_flush(a1);
    CA::OGL::Context::unbind_surface(a1, a2, 0);
    CA::OGL::Context::pop_surface(a1);
    *(*(a1 + 16) + 19) = 0;
    v81 = v170.i32[0];
    v82 = v170.i32[1];
    v83 = 1;
    goto LABEL_42;
  }

  CA::OGL::Context::push_surface(a1, v28, 0, 0, 0);
  CA::OGL::Context::bind_surface(a1, a2, 0, 1u, 1, 0.0);
  v45 = *(a1 + 680);
  v46 = *(a1 + 672);
  if (v45 != v46 || (!v45 ? (v92 = 0) : (v92 = (*(v46 + 144) >> 1) & 0x1F), *(a1 + 668) != v92))
  {
    CA::OGL::Context::prepare_destination_(a1);
  }

  if ((*(a1 + 1384) & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(a1);
  }

  CA::OGL::MetalContext::flip_texture_matrices(a1, 1u);
  v178 = *(*(a1 + 16) + 96);
  v94 = a2[7].i32[0];
  v93 = a2[7].i32[1];
  v173 = *(a1 + 3120);
  CA::OGL::Context::marked_destination(a1);
  CA::OGL::Context::unbind_surface(a1, a2, 0);
  CA::OGL::Context::pop_surface(a1);
  if (v168)
  {
    if ((v179 & 1) == 0)
    {
      __assert_rtn("create_variable_blur_mip_surface_compute", "ogl-metal.mm", 17410, "edge_extend");
    }

    _D1 = vcvt_f32_s32(*&v184);
    _D0 = vcvt_f32_s32(vadd_s32(*&v184, v170));
    v97.i64[0] = v175;
    v97.i64[1] = SHIDWORD(v175);
    v98 = vsubq_f64(vcvtq_f64_s64(v97), v166);
    v99 = vcvt_f32_f64(v98);
    v100 = v98.f64[0] + (2 * v170.i32[0]);
    v101 = 2 * v170.i32[1];
  }

  else
  {
    if (!v179)
    {
      v103 = v161;
      v104.f64[0] = v159;
      v104.f64[1] = v161;
      _D1 = vcvt_f32_f64(v166);
      _D0 = vcvt_f32_f64(vaddq_f64(v104, v166));
      v100 = v159;
      v99 = 0;
      goto LABEL_76;
    }

    _D1 = vcvt_f32_s32(*&v184);
    _D0 = vcvt_f32_s32(vadd_s32(*&v184, v170));
    v102.i64[0] = v184;
    v102.i64[1] = SDWORD1(v184);
    v98 = vsubq_f64(vcvtq_f64_s64(v102), v166);
    v99 = vcvt_f32_f64(v98);
    v100 = v98.f64[0] + v170.i32[0];
    v101 = v170.i32[1];
  }

  v103 = v98.f64[1] + v101;
LABEL_76:
  v105 = v173;
  v106 = vmuls_lane_f32(v93, v178, 1);
  v107 = v103;
  v108 = *(a1 + 3048);
  v109 = v108 * _D1.f32[0];
  v110 = (v108 * _D1.f32[0]) + *(a1 + 3096);
  _S19 = *(a1 + 3068);
  __asm { FMLA            S20, S19, V1.S[1] }

  v113.f32[0] = vmuls_n_f32(v99.f32[0], *v173.i32);
  v114 = vmuls_lane_f32(v99.f32[1], *v173.i8, 1);
  v115 = vmuls_n_f32(v100, *v173.i32);
  v116 = v115 + *&v173.i32[2];
  v117 = vmuls_lane_f32(v107, *v173.i8, 1);
  v118 = (v115 - v113.f32[0]);
  __asm { FMLA            S5, S19, V0.S[1] }

  v120 = _S5;
  v121 = (v117 - v114);
  v176 = v110;
  v174 = -(v109 - (v108 * _D0.f32[0]));
  v164 = _S20;
  v113.f32[1] = v114;
  v122 = vadd_f32(v113, *&vextq_s8(v105, v105, 8uLL));
  v123 = v122.f32[0];
  v167 = v122;
  v124 = v122.f32[1];
  v125 = (1.0 - v110) * v118 / v174 + v122.f32[0];
  if (v116 < v125)
  {
    v125 = v116;
  }

  if (v125 >= (v94 * v178.f32[0]))
  {
    v127 = v94 * v178.f32[0];
  }

  else
  {
    v127 = v125;
  }

  v126 = (-1.0 - _S20) * v121 / _S5 + v122.f32[1];
  if ((v117 + *&v173.i32[3]) >= v126)
  {
    v128 = (-1.0 - _S20) * v121 / _S5 + v122.f32[1];
  }

  else
  {
    v128 = v117 + *&v173.i32[3];
  }

  if (v128 >= v106)
  {
    v129 = v106;
  }

  else
  {
    v129 = v128;
  }

  v130 = 0.5;
  if (v127 >= 0.0)
  {
    v131 = 0.5;
  }

  else
  {
    v131 = -0.5;
  }

  v158 = a2[5];
  v160 = v131;
  if (v129 < 0.0)
  {
    v130 = -0.5;
  }

  v162 = v130;
  if ((CA::OGL::MetalContext::start_compute_encoder(a1, *(a1 + 3640)) & 1) == 0)
  {
LABEL_99:
    CA::OGL::Context::release_surface(a1, v28);
    CA::OGL::Context::set_gstate(a1, **(a1 + 656));
    *(a1 + 16) = *__dst;
    a8 = v179;
    goto LABEL_100;
  }

  v191 = 0;
  v190 = 0;
  v132 = CA::OGL::MetalBufferPool::alloc_bytes(*(a1 + 4760), 0x20u, 8u, &v191, &v190);
  v133 = v132;
  v134 = vmul_f32(v178, 0);
  v135.f64[0] = (-1.0 - v176) * v118 / v174 + v123;
  v135.f64[1] = (1.0 - v164) * v121 / v120 + v124;
  *&v135.f64[0] = vcvt_f32_f64(v135);
  v136 = vcvt_f32_s32(v158);
  v137 = vcltz_f32(*&v135.f64[0]);
  v138.i64[0] = v137.i32[0];
  v138.i64[1] = v137.i32[1];
  __asm
  {
    FMOV            V5.2D, #0.5
    FMOV            V6.2D, #-0.5
  }

  v141 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v138, _Q6, _Q5), vcvtq_f64_f32(vmul_f32(*&v135.f64[0], v136)))));
  *&v135.f64[0] = vbsl_s8(vcgt_f32(v167, *&v135.f64[0]), v167, *&v135.f64[0]);
  v142 = vbsl_s8(vcgt_f32(*&v135.f64[0], v134), *&v135.f64[0], v134);
  v143 = vcvtq_f64_f32(vmul_f32(v142, v136));
  v144 = vcltz_f32(v142);
  v138.i64[0] = v144.i32[0];
  v138.i64[1] = v144.i32[1];
  v145 = (v160 + (v127 * v136.f32[0]));
  v146 = (v162 + vmuls_lane_f32(v129, v136, 1));
  v147 = vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v138, _Q6, _Q5), v143))), 0);
  LODWORD(v148) = vuzp1_s16(v147, v147).u32[0];
  HIDWORD(v148) = HIDWORD(v132[1]);
  v132[1] = v148;
  if (v145 >= a2[5].i32[0])
  {
    LOWORD(v145) = a2[5].i32[0];
  }

  WORD2(v148) = v145 - 1;
  v132[1] = v148;
  v149 = a2[5].i32[1];
  if (v146 < v149)
  {
    LOWORD(v149) = v146;
  }

  HIWORD(v148) = v149 - 1;
  v132[1] = v148;
  *(v132 + 1) = v141.i16[2];
  *v132 = v141.i16[0];
  *(v132 + 26) = v168;
  v150 = v170;
  v81 = v170.i32[0];
  if (v168)
  {
    v151 = 0;
    v82 = v170.i32[1];
    v152 = vadd_s32(v170, v170);
    v153 = "-no-base-mip";
  }

  else
  {
    if (v170.i32[0] <= 3)
    {
      v81 = 1;
    }

    else
    {
      v81 = v170.i32[0] / 2;
    }

    if (v170.i32[1] <= 3)
    {
      v82 = 1;
    }

    else
    {
      v82 = v170.i32[1] / 2;
    }

    v152 = v170;
    v150.i16[0] = v81;
    v150.i16[2] = v82;
    v151 = 1;
    v153 = "";
  }

  *(v132 + 9) = v152.i16[2];
  *(v132 + 8) = v152.i16[0];
  *(v132 + 11) = v150.i16[2];
  *(v132 + 10) = v150.i16[0];
  *(v132 + 12) = v151;
  [*(a1 + 3552) setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"com.apple.coreanimation.compute-downsample-blur-cdm-copy%s", v153)}];
  [*(a1 + 3552) setComputePipelineState:{CA::OGL::MetalContext::get_compute_pipeline(a1, 8u)}];
  [*(a1 + 3552) setTexture:*&a2[21] atIndex:0];
  [*(a1 + 3552) setTexture:*(v28 + 168) atIndex:1];
  [*(a1 + 3552) setImageblockWidth:32 height:32];
  [*(a1 + 3552) setBuffer:v191 offset:v190 atIndex:0];
  v156 = *(a1 + 3552);
  v157 = (*(v133 + 9) + 31) >> 5;
  v187 = (*(v133 + 8) + 31) >> 5;
  v188 = v157;
  v189 = 1;
  v185 = vdupq_n_s64(0x14uLL);
  v186 = 1;
  [v156 dispatchThreadgroups:&v187 threadsPerThreadgroup:&v185];
  v83 = v151 + 1;
LABEL_42:
  if ((*(a1 + 3316) & 0x40) != 0)
  {
    v84 = 6;
  }

  else
  {
    v84 = 7;
  }

  compute_pipeline = CA::OGL::MetalContext::get_compute_pipeline(a1, v84);
  v86 = *(a1 + 3552);
  if (v86)
  {
    goto LABEL_48;
  }

  if (!CA::OGL::MetalContext::start_compute_encoder(a1, *(a1 + 3640)))
  {
    goto LABEL_99;
  }

  v86 = *(a1 + 3552);
LABEL_48:
  if (![v86 label])
  {
    [*(a1 + 3552) setLabel:@"com.apple.coreanimation.compute-downsample-blur"];
  }

  [*(a1 + 3552) setComputePipelineState:compute_pipeline];
  [*(a1 + 3552) setTexture:*(v28 + 168) atIndex:0];
  [*(a1 + 3552) setTexture:*(v28 + 168) atIndex:1];
  if ((*(a1 + 3316) & 0x40) != 0)
  {
    v87 = 32;
  }

  else
  {
    v87 = 16;
  }

  [*(a1 + 3552) setImageblockWidth:16 height:32];
  if (v83 < v44)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v183 = _Q0;
    do
    {
      v191 = 0;
      v190 = 0;
      v89 = CA::OGL::MetalBufferPool::alloc_bytes(*(a1 + 4760), 0x10u, 4u, &v191, &v190);
      v89->i16[0] = v83 - 1;
      if (v81 <= 3)
      {
        v81 = 1;
      }

      else
      {
        v81 /= 2;
      }

      if (v82 <= 3)
      {
        v82 = 1;
      }

      else
      {
        v82 /= 2;
      }

      v89->i16[1] = v83;
      v89->i16[2] = v81;
      v89->i16[3] = v82;
      v90.f64[0] = v81;
      v90.f64[1] = v82;
      v89[1] = vcvt_f32_f64(vdivq_f64(v183, v90));
      [*(a1 + 3552) setBuffer:v191 offset:v190 atIndex:0];
      v91 = *(a1 + 3552);
      v187 = (v81 + 15) >> 4;
      v188 = (v82 + 31) >> 5;
      v189 = 1;
      v185.i64[0] = 16;
      v185.i64[1] = v87;
      v186 = 1;
      [v91 dispatchThreadgroups:&v187 threadsPerThreadgroup:&v185];
      ++v83;
    }

    while (v44 != v83);
  }

  CA::OGL::Context::set_gstate(a1, **(a1 + 656));
  *(a1 + 16) = *__dst;
  *(v28 + 148) |= 2u;
  *(v28 + 96) = v44 - 1;
  return v28;
}

void sub_183D0D0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (!a61)
  {
    _Unwind_Resume(a1);
  }

  __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
}

int32x2_t *CA::OGL::MetalContext::create_surface_with_properties(uint64_t a1, int a2, __int128 *a3, int a4, int32x2_t *a5, void *a6)
{
  v160 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 2);
  if (v6 < 1)
  {
    return 0;
  }

  v8 = *(a3 + 3);
  if (v8 < 1)
  {
    return 0;
  }

  v9 = a2;
  if (*(a1 + 3312) < a2)
  {
    return 0;
  }

  v11 = *(a1 + 3288);
  if (v11 < v6 || v11 < v8)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v13 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      v57 = *(a3 + 2);
      v58 = *(a3 + 3);
      *v156 = 67109376;
      *&v156[4] = v57;
      *&v156[8] = 1024;
      *&v156[10] = v58;
      _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "Surface %d x %d is too large\n", v156, 0xEu);
    }

    return 0;
  }

  if ((*(a1 + 3316) & 0x20) != 0)
  {
    v19 = 117432031;
  }

  else
  {
    v19 = 83877599;
  }

  v20 = v19 & 0xFFFFDFFF | (((*(a1 + 3936) >> 4) & 1) << 13);
  if ([*(a1 + 3504) supportsLossyCompression] && (*(a3 + 8) & 7) == 0 && (*(a3 + 12) & 3) == 0)
  {
    v20 |= 0x1000000u;
  }

  v21 = v20 & 0xFEFFFFFF;
  if (BYTE3(xmmword_1ED4E98AC) != 1)
  {
    v21 = v20;
  }

  v22 = v21 & (a4 | 7);
  v23 = *(a1 + 3424);
  if ((a5->i8[0] & 4) != 0)
  {
    v23 = a5[2].i32[0];
  }

  if ((v22 & 0x10) != 0)
  {
    v23 = 115;
  }

  if ((v22 & 0x100000) != 0)
  {
    v23 = 80;
  }

  if ((v22 & 0x200000) != 0)
  {
    v23 = 63;
  }

  if ((v22 & 8) == 0)
  {
    goto LABEL_32;
  }

  v24 = 110;
  if (v23 <= 62)
  {
    switch(v23)
    {
      case 10:
        v24 = 30;
        goto LABEL_33;
      case 20:
        goto LABEL_33;
      case 43:
        v24 = 80;
        goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v23 > 93)
  {
    if (v23 == 94)
    {
      goto LABEL_33;
    }

    if (v23 == 554)
    {
      if (CADeviceIsVirtualized::once[0] != -1)
      {
        dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
      }

      if (CADeviceIsVirtualized::is_virtualized)
      {
        v24 = 115;
      }

      else
      {
        v24 = 550;
      }

      goto LABEL_33;
    }

LABEL_32:
    v24 = v23;
    goto LABEL_33;
  }

  if (v23 == 63)
  {
    v24 = 113;
  }

  else if (v23 != 90)
  {
    goto LABEL_32;
  }

LABEL_33:
  if ((v22 & 0x10000) != 0)
  {
    if ((*(a1 + 3317) & 2) != 0)
    {
      v24 = 43;
    }

    else
    {
      v24 = 80;
    }
  }

  if (CADeviceUseCompression::once[0] != -1)
  {
    dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
  }

  if (CADeviceUseCompression::enable_compression == 1 && ([*(a1 + 3504) supportsExtendedXR10Formats] & (v24 == 550)) != 0)
  {
    v24 = 552;
  }

  v25 = 550;
  if (((v24 == 552) & (v22 >> 22)) == 0)
  {
    v25 = v24;
  }

  if ((v25 - 550) <= 5)
  {
    if ((v22 & 0x240) != 0)
    {
      v24 = 115;
    }

    else
    {
      v24 = v25;
    }

    if ((v22 & 0x240) != 0)
    {
      v22 |= 0x10u;
    }

    else
    {
      v22 |= 0x100u;
    }
  }

  v26 = 1.0;
  if ((v22 & 0x1000) != 0)
  {
    v27 = *(a1 + 3488);
    v26 = v27 == 1.0 ? 1.0 : *(a1 + 3488);
    if (v27 == 1.0)
    {
      v22 &= ~0x1000u;
    }
  }

  v28 = a4 & 0x80000;
  if ((v22 & 0x21930) == 0x20000)
  {
    v29 = 80;
  }

  else
  {
    v29 = v24;
  }

  v159 = 0;
  v157 = 0u;
  v158 = 0u;
  *v156 = 0u;
  MTLPixelFormatGetInfoForDevice();
  if ((v22 & 0x1000000) != 0 && (v22 & 0x80800 | v28 || (v22 & 0x2004000) == 0x4000 || (*&v156[8] & 0x7000000) == 0))
  {
    v22 &= ~0x1000000u;
  }

  if ((v22 & 0x80) != 0)
  {
    v31 = CA::OGL::srgb_pixel_format(v29, v30);
    if (v29 == v31)
    {
      v22 &= ~0x80u;
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v32 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v154 = MTLPixelFormatGetName();
        _os_log_error_impl(&dword_183AA6000, v32, OS_LOG_TYPE_ERROR, "Cannot create sRGB variant of %s", buf, 0xCu);
      }
    }

    else
    {
      v29 = v31;
    }
  }

  if ((v29 - 550) >= 6)
  {
    v33 = v22;
  }

  else
  {
    v33 = v22 | 0x100;
  }

  if (v29 == 125)
  {
    v33 = v22 | 0x20;
  }

  else if (v29 == 115)
  {
    v33 = v22 | 0x10;
  }

  v148 = v28;
  if ((v33 & 0x800) != 0)
  {
    v34 = v33 & 0xFFFFF7FF;
    if ((v33 & 0x2CC240) != 0)
    {
      v33 &= ~0x800u;
    }

    if ((v33 & 0x20) != 0)
    {
      v33 = v34;
    }
  }

  v35 = v33 & 0xFFFFF7FF;
  if ((*(a1 + 3936) & 8) != 0)
  {
    v36 = v33;
  }

  else
  {
    v36 = v33 & 0xFFFFF7FF;
  }

  if ((v36 & 0x800) == 0)
  {
    goto LABEL_117;
  }

  v37 = *(a1 + 680);
  v38 = *(a1 + 672);
  if (v37 != v38 || (!v37 ? (v39 = 0) : (v39 = (*(v38 + 144) >> 1) & 0x1F), *(a1 + 668) != v39))
  {
    CA::OGL::Context::prepare_destination_(a1);
  }

  if (v9 != 1)
  {
    goto LABEL_117;
  }

  v40 = *(a1 + 4712);
  if (!v40)
  {
    goto LABEL_117;
  }

  v41 = *(v40 + 288);
  if (!v41 || ((*(v40 + 92) ^ v36) & 0x80) != 0)
  {
    goto LABEL_117;
  }

  if ((v41 & 2) != 0)
  {
    v61 = -3;
    v62 = 1;
LABEL_142:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v14 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x138uLL, 0x10A004045BE2C27uLL);
    v14->i32[0] = 1;
    v63 = v14[18].i32[0];
    v14[18].i32[0] = v63 | 0x10000000;
    v64 = *a3;
    v14[7] = *(a3 + 8);
    *&v65 = *(*(a1 + 4712) + 40);
    *(&v65 + 1) = v64;
    *v14[5].i8 = v65;
    v14[8] = 0;
    v66 = *(a1 + 4712);
    v14[32] = v66[32];
    v14[11].i32[1] = v66[11].i32[1] | 0x800;
    LOWORD(v66) = v66[38].i16[2] & 0x400;
    v67 = v14[38].i16[2] & 0xFAC0;
    v14[18].i32[0] = v63 & 0x6FFFFFFE | 0x10000001;
    v14[38].i16[2] = v67 | v66 | 0x31;
    v14[38].i16[2] = *(*(a1 + 4712) + 308) & 0x200 | v67 & 0xFDFF | v66 & 0xFDCE | 0x31;
    v14[34] = *(a1 + 4712);
    v14[35].i16[2] = v62;
    v14[18].i16[2] |= 1u;
    v14[21] = *(*(a1 + 4712) + 8 * v62 + 168);
    v14[24] = [*(*(a1 + 4712) + 8 * v62 + 168) pixelFormat];
    *v14[11].i32 = v26;
    *(*(a1 + 4712) + 288) &= v61;
    CA::OGL::Context::track_surface(a1, v14);
    if (byte_1ED4E98C4 == 1 && a6)
    {
      v69 = [@"com.apple.coreanimation.surface" stringByAppendingString:a6];
      v68 = v14[21];
    }

    else
    {
      v68 = v14[21];
      v69 = @"com.apple.coreanimation.surface";
    }

    [v68 setLabel:v69];
    return v14;
  }

  v35 = v36;
  if ((v41 & 4) != 0)
  {
    v61 = -5;
    v62 = 2;
    goto LABEL_142;
  }

LABEL_117:
  v42 = v35 & 0x48000;
  v44 = *(a3 + 2);
  v43 = *(a3 + 3);
  v142 = a6;
  v140 = a3;
  if ((v35 & 0x40000) != 0)
  {
    if ((v44 & (v44 - 1)) != 0)
    {
      v45 = (v44 - 1) | ((v44 - 1) >> 1) | (((v44 - 1) | ((v44 - 1) >> 1)) >> 2);
      v46 = v45 | (v45 >> 4) | ((v45 | (v45 >> 4)) >> 8);
      LODWORD(v44) = (((v46 | (v46 >> 16)) >> 32) | v46 | (v46 >> 16)) + 1;
    }

    if ((v43 & (v43 - 1)) != 0)
    {
      v47 = (v43 - 1) | ((v43 - 1) >> 1) | (((v43 - 1) | ((v43 - 1) >> 1)) >> 2);
      v48 = v47 | (v47 >> 4) | ((v47 | (v47 >> 4)) >> 8);
      v43 = (((v48 | (v48 >> 16)) >> 32) | v48 | (v48 >> 16)) + 1;
    }
  }

  v146 = a5;
  LODWORD(v49) = v43;
  LODWORD(v50) = v44;
  v143 = v44;
  if (!v42)
  {
    if (v44 < 0x40 || (LODWORD(v51) = v43, LODWORD(v52) = v44, v43 <= MTLPixelFormatRG16Uint))
    {
      LODWORD(v51) = v43;
      v53 = CA::OGL::metal_pixel_format_Bpp(v29, v43);
      LODWORD(v43) = v51;
      LODWORD(v44) = v143;
      if (v143 > 0x3F || v51 >= 0x40)
      {
        v54 = *MEMORY[0x1E69E9AC8] / (v53 << 6);
        if (v143 - 17 > 0x2E || v51 > 0x1FF)
        {
          LODWORD(v52) = v143;
          if (v143 <= 0x1FF)
          {
            LODWORD(v52) = v143;
            if ((v51 - 17) <= 0x2E)
            {
              v59 = v54 - 1;
              v60 = v59 + v143;
              if ((v54 & v59) != 0)
              {
                v52 = v60 / v54 * v54;
              }

              else
              {
                v52 = v60 & -v54;
              }

              LODWORD(v51) = 64;
            }
          }
        }

        else
        {
          v55 = v54 - 1;
          v56 = v55 + v51;
          if ((v54 & v55) != 0)
          {
            v51 = v56 / v54 * v54;
          }

          else
          {
            v51 = v56 & -v54;
          }

          LODWORD(v52) = 64;
        }
      }

      else
      {
        LODWORD(v51) = 64;
        LODWORD(v52) = 64;
      }
    }

    if (initialized[0] != -1)
    {
      v137 = v43;
      dispatch_once_f(initialized, 0, init_debug);
      LODWORD(v43) = v137;
      LODWORD(v44) = v143;
    }

    LODWORD(v70) = *&dword_1ED4E97A8;
    if (*&dword_1ED4E97A8)
    {
      v70 = v70;
    }

    else
    {
      v70 = 64;
    }

    v71 = v70 - 1 + v52;
    v72 = v70 - 1 + v51;
    if ((v70 & (v70 - 1)) != 0)
    {
      v50 = v71 / v70 * v70;
      v49 = v72 / v70 * v70;
    }

    else
    {
      v49 = -v70;
      LODWORD(v50) = v71 & v49;
      LODWORD(v49) = v72 & v49;
    }
  }

  v141 = v49;
  v74 = a1 + 80;
  v73 = *(a1 + 80);
  v75 = (a1 + 3640);
  v76 = v146->i32[0];
  if ((v146->i32[0] & 2) != 0)
  {
    v75 = v146 + 1;
  }

  v77 = *v75;
  if (!v73)
  {
    goto LABEL_215;
  }

  v151 = *v75;
  v152 = v9;
  v78 = v146->u32[1];
  if (v44 <= v43)
  {
    v79 = v43;
  }

  else
  {
    v79 = v44;
  }

  v80 = v43;
  v81 = log2f(v79);
  LODWORD(v43) = v80;
  v82 = 0;
  v83 = 0;
  v84 = (floorf(v81) + 1.0);
  v85 = (v143 * v80);
  if (v76)
  {
    v84 = v78;
  }

  v77 = v151;
  v9 = v152;
  do
  {
    v86 = *(v73 + 40);
    if (v42)
    {
      if (v50 != v86)
      {
        goto LABEL_194;
      }

      v87 = v141;
      v86 = v50;
      if (v141 != *(v73 + 44))
      {
        goto LABEL_194;
      }
    }

    else
    {
      if (v143 > v86)
      {
        goto LABEL_194;
      }

      v87 = *(v73 + 44);
      if (v43 > v87)
      {
        goto LABEL_194;
      }
    }

    if (((*(v73 + 92) ^ v35) & 0xFFFFEFFF) == 0 && (*(v73 + 144) & 1) == v152 && *(v73 + 72) == *&v151 && ((v35 & 0x4000) == 0 || *(v73 + 280) != *(a1 + 3496)))
    {
      v88 = 0;
      while (v88 < v152)
      {
        v88 = 1;
        if (*(v73 + 192) != v29)
        {
          goto LABEL_194;
        }
      }

      if ((v35 & 0x200) == 0)
      {
        goto LABEL_184;
      }

      if (!v84)
      {
        __assert_rtn("create_surface_with_properties", "ogl-metal.mm", 14426, "desired_mipmap_levels != 0");
      }

      if (v84 <= *(v73 + 304))
      {
LABEL_184:
        v89 = v87 * v86 - v85;
        if (((v35 & 0x400) == 0 || v89 <= v85 >> 2) && (!v82 || v89 < v83))
        {
          v83 = v89;
          v82 = v74;
        }
      }
    }

LABEL_194:
    v74 = v73 + 8;
    v73 = *(v73 + 8);
  }

  while (v73);
  if (v82)
  {
    v14 = *v82;
    *v82 = (*v82)[1];
    v14[1] = 0;
    v92 = *v140;
    v14->i32[0] = 1;
    *v14[6].i8 = v92;
    v14[8] = 0;
    v93 = v14[18].i16[2];
    v14[12].i8[0] = 0;
    v94 = v14[18].i32[0];
    if ((v94 & 0x40000000) != 0)
    {
      v95 = -251674369;
    }

    else
    {
      v95 = 822067455;
    }

    v96 = v94 & v95;
    v14[18].i32[0] = v96;
    v97 = v93 & 0xFE4D;
    v14[18].i16[2] = v97;
    v98 = vmin_s32(vadd_s32(*(v140 + 8), 0x100000001), v14[5]);
    v14[32] = v98;
    v14[11].i32[1] = v35;
    if ((v96 & 0x40000000) == 0 || v98.i32[0] > v14[33].i32[0] || v98.i32[1] > v14[33].i32[1])
    {
      v14[18].i32[0] = v96 & 0xB0FFC0FF;
    }

    *v14[11].i32 = v26;
    v14[38].i16[2] |= 0x40u;
    if (byte_1ED4E9879 == 1)
    {
      v99 = mach_continuous_time();
      v97 = v14[18].i16[2];
    }

    else
    {
      v99 = 0;
    }

    v14[10] = v99;
    v14[18].i16[2] = v97 | 0x40;
    CA::OGL::Context::track_surface(a1, v14);
    if (byte_1ED4E98C4 == 1 && v152 >= 1)
    {
      v100 = v152;
      v101 = 21;
      do
      {
        v102 = v14[v101];
        if (v102)
        {
          if (v142)
          {
            v103 = [@"com.apple.coreanimation.surface_" stringByAppendingString:v142];
            v102 = v14[v101];
          }

          else
          {
            v103 = @"com.apple.coreanimation.surface";
          }

          [v102 setLabel:v103];
        }

        ++v101;
        --v100;
      }

      while (v100);
    }

    return v14;
  }

LABEL_215:
  v139 = v43;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v104 = v141;
  v14 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x138uLL, 0x10A004045BE2C27uLL);
  v14->i32[0] = 1;
  v105 = v14[18].i32[0] | 0x10000000;
  v14[18].i32[0] = v105;
  *v14[6].i8 = *v140;
  v14[5].i32[0] = v50;
  v14[5].i32[1] = v141;
  v14[8] = 0;
  v14[11].i32[1] = v35;
  v14[38].i16[2] = v9 & 0xF | (((v35 >> 6) & 1) << 8) | v14[38].i16[2] & 0xFCC0;
  *v14[11].i32 = v26;
  v14[18].i32[0] = v105 & 0x7FE0FFFE | v9 & 1 | (CA::OGL::metal_pixel_format_Bpp(v29, v106) << 16);
  v14[9] = v77;
  if (v9 < 1)
  {
LABEL_279:
    v131 = *(v140 + 2);
    if (v131 + 1 < v50)
    {
      v132 = v131 + 1;
    }

    else
    {
      v132 = v50;
    }

    v14[32].i32[0] = v132;
    v133 = *(v140 + 3);
    if (v133 + 1 < v104)
    {
      v134 = v133 + 1;
    }

    else
    {
      v134 = v104;
    }

    v14[32].i32[1] = v134;
    CA::OGL::MetalContext::add_memoryless_textures(a1, v14);
    CA::OGL::MetalContext::add_path_buffer_texture(a1, v14);
    v135 = mach_continuous_time();
    v14[37] = v135;
    if (byte_1ED4E9879 != 1)
    {
      v135 = 0;
    }

    v14[10] = v135;
    CA::OGL::Context::track_surface(a1, v14);
    return v14;
  }

  v150 = (v148 >> 18) ^ 2;
  if (v50 <= v141)
  {
    v107 = v141;
  }

  else
  {
    v107 = v50;
  }

  v108 = 0;
  v109 = 0;
  *&v110 = floorf(log2f(v107));
  v112 = (v35 & 0x4000000) == 0 && *&v77 == 0 && v148 == 0;
  v113 = *&v110 + 1.0;
  v114 = v112;
  v149 = v114;
  v115 = 3888;
  v145 = v113;
  if ((v35 & 0x400) != 0)
  {
    v115 = 3896;
  }

  v144 = v115;
  v147 = 8 * v9;
  *&v110 = 134218240;
  v138 = v110;
  while (2)
  {
    v116 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v29 width:v50 height:v141 mipmapped:HIBYTE(v14[38].u16[2]) & 1, v138];
    [v116 setUsage:5];
    if ((v35 & 0x4000) == 0)
    {
      if ((v35 & 0x800000) == 0)
      {
        goto LABEL_235;
      }

LABEL_260:
      [v116 setUsage:{objc_msgSend(v116, "usage") | 0x10000}];
      if ((v35 & 0x2000000) == 0)
      {
        goto LABEL_237;
      }

LABEL_236:
      [v116 setUsage:{objc_msgSend(v116, "usage") | 0x4000}];
      goto LABEL_237;
    }

    [v116 setUsage:{objc_msgSend(v116, "usage") | 2}];
    if ((v35 & 0x800000) != 0)
    {
      goto LABEL_260;
    }

LABEL_235:
    if ((v35 & 0x2000000) != 0)
    {
      goto LABEL_236;
    }

LABEL_237:
    [v116 setProtectionOptions:*&v14[9]];
    [v116 setStorageMode:v150];
    if ((v35 & 0x1000000) != 0)
    {
      [v116 setCompressionType:1];
    }

    if (v35 & 0x200 | v14[38].i16[2] & 0x100)
    {
      if (v146->i32[0])
      {
        v117 = v146->u32[1];
      }

      else
      {
        v117 = v145;
      }

      if (!v117)
      {
        __assert_rtn("create_surface_with_properties", "ogl-metal.mm", 14556, "mipmap_levels != 0");
      }

      if ((v146->i32[0] & 1) == 0)
      {
        v109 = v145;
      }

      v14[38].i32[0] = v117;
      [v116 setMipmapLevelCount:?];
    }

    if (v149)
    {
      if (*(a1 + 3920) == 1)
      {
        heap_size = CA::OGL::MetalContext::get_heap_size(a1, *(a1 + 3904), 0x55u, 1uLL);
        CA::OGL::MetalContext::update_surface_heap(a1, (a1 + 3888), heap_size, "transient");
        v119 = CA::OGL::MetalContext::get_heap_size(a1, *(a1 + 3912), 0x56u, 0);
        CA::OGL::MetalContext::update_surface_heap(a1, (a1 + 3896), v119, "persistent");
      }

      v120 = *(a1 + v144);
      if (v120)
      {
        if (!v108)
        {
          v14[5].i32[0] = v143;
          v14[5].i32[1] = v139;
          [v116 setWidth:v143];
          [v116 setHeight:v139];
          if (v109)
          {
            v121 = v14[5].u32[0];
            if (v121 <= v14[5].i32[1])
            {
              v121 = v14[5].u32[1];
            }

            v14[38].i32[0] = (floorf(log2f(v121)) + 1.0);
            [v116 setMipmapLevelCount:?];
          }
        }

        v122 = [v120 newTextureWithDescriptor:v116];
        v14[v108 / 8 + 21] = v122;
        if (v122)
        {
          v14[18].i16[2] |= 1u;
          v14[38].i16[2] |= 0x800u;
          if (!v108)
          {
LABEL_263:
            if (!*&v14[v108 / 8 + 21])
            {
              v14[5].i32[0] = v50;
              v14[5].i32[1] = v141;
              [v116 setWidth:v50];
              [v116 setHeight:v141];
              if (v109)
              {
                v14[38].i32[0] = v109;
                [v116 setMipmapLevelCount:v109];
              }
            }
          }
        }

        else
        {
          v142 = [v142 stringByAppendingString:@"_heap-miss"];
          if (!v108)
          {
            goto LABEL_263;
          }
        }
      }
    }

    v123 = &v14[v108 / 8];
    v124 = v14[v108 / 8 + 21];
    if (v124 || (v124 = [*(a1 + 3504) newTextureWithDescriptor:v116], (v123[21] = v124) != 0))
    {
      if (byte_1ED4E98C4 == 1 && v142)
      {
        v125 = [@"com.apple.coreanimation.surface_" stringByAppendingString:v142];
        v124 = v123[21];
      }

      else
      {
        v125 = @"com.apple.coreanimation.surface";
      }

      [v124 setLabel:v125];
      v14[v108 / 8 + 24] = v29;
      v126 = v123[21];
      v127 = [v126 protectionOptions];
      if (v127 != [v116 protectionOptions])
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v128 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v129 = [v116 protectionOptions];
          v130 = [v126 protectionOptions];
          *buf = v138;
          *v154 = v129;
          *&v154[8] = 2048;
          v155 = v130;
          _os_log_error_impl(&dword_183AA6000, v128, OS_LOG_TYPE_ERROR, "Descriptor (0x%llx) and texture (0x%llx) protection mismatch!", buf, 0x16u);
        }
      }

      v108 += 8;
      if (v147 == v108)
      {
        LODWORD(v50) = v14[5].i32[0];
        v104 = v14[5].i32[1];
        goto LABEL_279;
      }

      continue;
    }

    break;
  }

  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v136 = x_log_get_ogl_metal(void)::log;
  if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v154 = v50;
    *&v154[4] = 1024;
    *&v154[6] = v141;
    _os_log_error_impl(&dword_183AA6000, v136, OS_LOG_TYPE_ERROR, "Failed to allocate %dx%d surface texture.\n", buf, 0xEu);
  }

  CA::OGL::MetalContext::finalize_surface(a1, v14);
  return 0;
}

uint64_t CA::OGL::MetalContext::flip_texture_matrices(uint64_t this, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = a2;
    v4 = *(this + 16);
    v5 = v4 + 176;
    v6 = (this + 3132);
    v7 = 96;
    do
    {
      *(v6 - 3) = *(v4 + v7);
      if (((0x42000FFFE00uLL >> *(v4 + v2 + 17)) & 1) == 0)
      {
        this = CA::OGL::state_image_texture_unit(v4, v2);
        if ((*(v5 + 8 * this) & 0xFFFFFFFFFFFFFFFCLL) != 0 && (*((*(v5 + 8 * this) & 0xFFFFFFFFFFFFFFFCLL) + 123) & 0x100) != 0)
        {
          *(v6 - 2) = -*(v6 - 2);
          *v6 = 1.0 - *v6;
        }
      }

      ++v2;
      v7 += 16;
      v6 += 4;
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t CA::OGL::srgb_pixel_format(uint64_t this, MTLPixelFormat a2)
{
  if (this <= 79)
  {
    switch(this)
    {
      case 10:
        return 11;
      case 30:
        return 31;
      case 70:
        return 71;
    }
  }

  else if (this > 551)
  {
    if (this == 552)
    {
      return 553;
    }

    else if (this == 554)
    {
      return 555;
    }
  }

  else if (this == 80)
  {
    return 81;
  }

  else if (this == 550)
  {
    return 551;
  }

  return this;
}

unint64_t CA::OGL::MetalContext::get_heap_size(CA::OGL::MetalContext *this, uint64_t a2, unsigned int a3, unint64_t a4)
{
  if (!a2)
  {
    v4 = *(this + 75);
    if (v4)
    {
      v7 = (*(*v4 + 16))(v4);
      if (v7 && (v8 = v7, CA::WindowServer::Display::is_enabled_for_render(v7)) && (v9 = CAGetDebugValueFloat(a3), v9 >= 0.0))
      {
        v11 = 10.0;
        if (v9 <= 10.0)
        {
          v11 = v9;
        }

        if (v9 == 0.0)
        {
          v12 = a4;
        }

        else
        {
          v12 = v11;
        }

        return (((v12 * 8.0) * *(v8 + 52)) * *(v8 + 53));
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

void CA::OGL::MetalContext::update_surface_heap(uint64_t a1, id *a2, uint64_t a3, const char *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 3318) & 0x20) == 0)
  {
    return;
  }

  v7 = (a3 + 0xFFFFF) & 0xFFFFFFFFFFF00000;
  v8 = [*a2 size];
  v9 = *a2;
  if (v7 == v8)
  {
    v10 = [v9 setPurgeableState:2];
    if (*a2 && (byte_1ED4E98C3 & 1) != 0 && v10 != 2)
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v11 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 8);
        *buf = 67109378;
        v28 = v12;
        v29 = 2080;
        v30 = a4;
        _os_log_debug_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEBUG, "Context %d returned %s heap to non-volatile", buf, 0x12u);
      }
    }

    return;
  }

  if ([v9 usedSize])
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v13 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 8);
      v15 = [*a2 usedSize];
      *buf = 67109634;
      v28 = v14;
      v29 = 2080;
      v30 = a4;
      v31 = 2048;
      v32 = v15;
      v16 = "Context %d cannot change %s surface heap while usedSize=%llu";
      v17 = v13;
      v18 = 28;
LABEL_28:
      _os_log_impl(&dword_183AA6000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
    }
  }

  else
  {

    *a2 = 0;
    if (v7)
    {
      v19 = objc_opt_new();
      [v19 setSize:v7];
      [v19 setHazardTrackingMode:2];
      *a2 = [*(a1 + 3504) newHeapWithDescriptor:v19];

      v20 = *(a1 + 600);
      if (v20 && (v21 = (*(*v20 + 16))(v20)) != 0)
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreanimation.%s-surface-heap-%@", a4, *(v21 + 8)];
      }

      else
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreanimation.%s-surface-heap", a4, v26];
      }

      [*a2 setLabel:v22];
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v23 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 8);
        if (*(a1 + 3888))
        {
          v25 = "allocated";
        }

        else
        {
          v25 = "failed to allocate";
        }

        *buf = 67109890;
        v28 = v24;
        v29 = 2080;
        v30 = v25;
        v31 = 2048;
        v32 = v7;
        v33 = 2080;
        v34 = a4;
        v16 = "Context %d %s %lu-byte %s surface heap";
        v17 = v23;
        v18 = 38;
        goto LABEL_28;
      }
    }
  }
}

void CA::OGL::MetalContext::update_texture_ownership(int a1, uint64_t a2, unsigned int a3, uint64_t a4, CFStringRef theString, CFStringRef a6)
{
  v6 = theString;
  if (byte_1ED4E98C4 != 1)
  {
    goto LABEL_2;
  }

  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (a6 && Length && CFStringGetLength(a6))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v6, a6];
      goto LABEL_2;
    }

    if (CFStringGetLength(v6))
    {
      goto LABEL_2;
    }
  }

  if (!a6)
  {
    if (!a2)
    {
      return;
    }

    v10 = *(a2 + 8 * a3 + 168);
    if (!a4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (CFStringGetLength(a6))
  {
    v6 = a6;
  }

  else
  {
    v6 = 0;
  }

LABEL_2:
  if (a2)
  {
    v10 = *(a2 + 8 * a3 + 168);
    if (v6)
    {
      [v10 setLabel:{objc_msgSend(@"com.apple.coreanimation.", "stringByAppendingString:", v6)}];
    }

    if (a4)
    {
LABEL_6:

      [v10 setResponsibleProcess:a4];
    }
  }
}

uint64_t std::__function::__func<CA::OGL::MetalContext::draw(MTLPrimitiveType,unsigned int,unsigned int,void const*,unsigned long,unsigned long,unsigned int,unsigned int,unsigned short const*,CA::OGL::ClipPlane const*,CA::OGL::MetalBufferPool::MetalBuffer const*)::$_0,std::allocator<CA::OGL::MetalContext::draw(MTLPrimitiveType,unsigned int,unsigned int,void const*,unsigned long,unsigned long,unsigned int,unsigned int,unsigned short const*,CA::OGL::ClipPlane const*,CA::OGL::MetalBufferPool::MetalBuffer const*)::$_0>,BOOL ()(CA::OGL::Vertex *,unsigned int)>::operator()(uint64_t a1, const void **a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v5 = CA::OGL::MetalBufferPool::encode_vertex_arg(*(v4 + 4760), 1, *a2, 48 * v3, 0x10u);
  if (v5)
  {
    (*(v4 + 3592))(*(v4 + 3536), sel_drawPrimitives_vertexStart_vertexCount_instanceCount_, 3, 0, v3, 1);
  }

  return v5;
}

uint64_t std::__function::__func<CA::OGL::MetalContext::draw(MTLPrimitiveType,unsigned int,unsigned int,void const*,unsigned long,unsigned long,unsigned int,unsigned int,unsigned short const*,CA::OGL::ClipPlane const*,CA::OGL::MetalBufferPool::MetalBuffer const*)::$_0,std::allocator<CA::OGL::MetalContext::draw(MTLPrimitiveType,unsigned int,unsigned int,void const*,unsigned long,unsigned long,unsigned int,unsigned int,unsigned short const*,CA::OGL::ClipPlane const*,CA::OGL::MetalBufferPool::MetalBuffer const*)::$_0>,BOOL ()(CA::OGL::Vertex *,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF1FBC80;
  a2[1] = v2;
  return result;
}

uint64_t CA::OGL::MetalContext::encode_lod_bias(CA::OGL::MetalContext *this, const CA::OGL::MetalContext::FragmentShader::Spec *a2)
{
  v4 = CA::OGL::tex_image_count[*(a2 + 14) & 0x7F];
  v5 = this + 4520;
  v6 = 0;
  if (CA::OGL::tex_image_count[*(a2 + 14) & 0x7F])
  {
    v7 = 0;
    v8 = *(this + 2);
    do
    {
      v9 = *(v8 + 176 + 8 * CA::OGL::state_image_texture_unit(v8, v7)) & 0xFFFFFFFFFFFFFFFCLL;
      if (v9)
      {
        v10 = *(v9 + 48);
        if (*&v5[4 * v7] != v10)
        {
          *&v5[4 * v7] = v10;
          v6 = 1;
        }
      }

      ++v7;
    }

    while (v4 != v7);
  }

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  if ((*(a2 + 14) & 0x4000000) != 0)
  {
    v11 = 8;
  }

  else
  {
    v11 = 4 * v4;
  }

  result = CA::OGL::MetalBufferPool::encode_fragment_arg(*(this + 595), 2, v5, v11, 4u);
  if (result)
  {
    if (v4 <= 1)
    {
      *&v5[4 * v4] = 2143289344;
    }

    return 1;
  }

  return result;
}

uint64_t CA::OGL::MetalContext::encode_noise_texture(CA::OGL::MetalContext *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const unsigned __int8 *a6, BOOL a7, const char *a8)
{
  if (*(this + 575))
  {
    return 1;
  }

  v10 = *(this + 431);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    result = CA::OGL::MetalContext::create_texture(this, 80, 1uLL, &noise_data, "noise", a6, a7, a8);
    *(this + 431) = result;
    if (!result)
    {
      return result;
    }

    *(result + 123) &= ~8u;
    *(*(this + 431) + 52) &= 0xFFFFFFFFFF0FFFFFLL;
    *(*(this + 431) + 52) &= 0xFFFFFFFFFFF0FFFFLL;
    v10 = *(this + 431);
    v11 = *(this + 575);
  }

  v12 = *(v10 + 64);
  if (v11 != v12)
  {
    *(this + 575) = v12;
    (*(this + 446))(*(this + 442), sel_setFragmentTexture_atIndex_);
  }

  return 1;
}

uint64_t CA::OGL::MetalContext::create_texture(id *this, uint64_t a2, unint64_t a3, MTLPixelFormat a4, uint64_t a5, const unsigned __int8 *a6, BOOL a7, const char *a8)
{
  v28[6] = *MEMORY[0x1E69E9840];
  if (a4 == MTLPixelFormatInvalid)
  {
    return 0;
  }

  v9 = a4;
  v14 = CA::OGL::MetalContext::new_image(this);
  v15 = v13;
  v16 = a3 > 1;
  *(v13 + 48) = -1098907648;
  v17 = 0x1700110000;
  if (a3 > 1)
  {
    v17 = 0x1700120000;
  }

  v18 = v17 | *(v13 + 52) & 0xFFE7FFC0FF00FFFFLL;
  *(v13 + 52) = v18;
  *(v13 + 123) = *(v13 + 123) & 0xFFEF | (16 * v16);
  switch(a2)
  {
    case 80:
      v19 = v18 & 0xFFE7FFD7C013FFFFLL;
      v20 = 4;
      break;
    case 25:
      v19 = v18 & 0xFFE7FFD7C013FFFFLL | 0x18000000;
      v20 = 2;
      break;
    case 1:
      v19 = v18 & 0xFFE7FFD7C013FFFFLL | 0x19000000;
      v20 = 1;
      break;
    default:
      __assert_rtn("create_texture", "ogl-metal.mm", 11523, "false");
  }

  *(v13 + 52) = v19;
  v21 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a2 width:32 height:32 mipmapped:a3 > 1, v14];
  *(v15 + 88) = v21;
  [v21 setMipmapLevelCount:a3];
  [*(v15 + 88) setUsage:1];
  v22 = [this[438] newTextureWithDescriptor:*(v15 + 88)];
  *(v15 + 64) = v22;
  if (!v22)
  {

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v15);
    return 0;
  }

  [*(v15 + 64) setLabel:{objc_msgSend(@"com.apple.coreanimation.", "stringByAppendingString:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCString:encoding:", a5, 4))}];
  v23 = 0;
  v24 = 32;
  v25 = 32;
  do
  {
    v26 = *(v15 + 64);
    memset(v28, 0, 24);
    v28[3] = v24;
    v28[4] = v25;
    v28[5] = 1;
    [v26 replaceRegion:v28 mipmapLevel:v23++ withBytes:v9 bytesPerRow:v24 * v20];
    v9 += v24 * v20 * v25;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 >>= 1;
    }

    if (v25 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 >>= 1;
    }
  }

  while (a3 != v23);
  *(v15 + 122) = 1;
  *(v15 + 123) = *(v15 + 123) & 0xFFF8 | v16 | 2;
  return v15;
}

os_log_t ___Z31x_log_get_metal_pipelines_stallv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Metal.Pipelines.Stall");
  x_log_get_metal_pipelines_stall(void)::log = result;
  return result;
}

os_log_t ___Z25x_log_get_metal_pipelinesv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Metal.Pipelines");
  x_log_get_metal_pipelines(void)::log = result;
  return result;
}

uint64_t CA::OGL::MetalContext::FragmentShader::Spec::decode_segment(char const**)::$_12::__invoke(uint64_t result, int a2)
{
  v2 = *(result + 18) & 0xFE;
  if (a2)
  {
    ++v2;
  }

  *(result + 18) = v2;
  return result;
}

uint64_t CA::OGL::MetalContext::Pipeline::Spec::decode_segment(char const**)::$_2::__invoke(uint64_t result, int a2)
{
  v2 = *(result + 23) & 0xFFFFFFFE;
  if (a2)
  {
    ++v2;
  }

  *(result + 23) = v2;
  return result;
}

uint64_t CA::OGL::MetalContext::generate_mipmaps_for_texture(CA::OGL::MetalContext *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (!v3)
  {
    __assert_rtn("generate_mipmaps_for_texture", "ogl-metal.mm", 13201, "tex->textures[0] && nil mtl texture?");
  }

  result = CA::OGL::MetalContext::start_blit_encoder(a1, [v3 protectionOptions]);
  if (result)
  {
    v6 = *(a1 + 443);
    v7 = *(a2 + 64);

    return [v6 generateMipmapsForTexture:v7];
  }

  return result;
}

uint64_t CA::OGL::MetalContext::calculate_average_luma(CA::OGL::Context *this, uint64_t a2, int32x2_t *a3, uint64_t a4)
{
  v119 = *MEMORY[0x1E69E9840];
  if (*(a2 + 72))
  {
    __assert_rtn("calculate_average_luma", "ogl-metal.mm", 17049, "!surf->protection_options");
  }

  v5 = a2;
  if ((byte_1ED4E9859 & 1) == 0)
  {
    compute_pipeline = CA::OGL::MetalContext::get_compute_pipeline(this, 4u);
    if (CA::OGL::MetalContext::start_compute_encoder(this, 0))
    {
      v9 = [compute_pipeline threadExecutionWidth];
      v10 = [compute_pipeline maxTotalThreadsPerThreadgroup];
      v11 = v10 / [compute_pipeline threadExecutionWidth];
      v12 = *(v5 + 96);
      v13 = vcvt_f32_u32(vmax_s32(vshl_s32(a3[1], vneg_s32(vdup_n_s32(v12))), 0x100000001));
      v93 = v13;
      v13.i32[0] = ceilf(0.125 * v13.f32[0]);
      v14 = vcvt_u32_f32(v13);
      v15 = vadd_s32(vadd_s32(__PAIR64__(v11, v9), -1), v14);
      v16 = v15.i32[1] / v11;
      v14.i32[0] = v15.i32[0] / v9;
      v97 = v15.i32[0] / v9;
      v17 = vmul_s32(v14, vdup_n_s32(v15.i32[1] / v11)).u32[0];
      external_buffer = CA::OGL::MetalBufferPool::create_external_buffer(*(this + 595), 16 * v17, 0x10uLL, 0);
      if (external_buffer)
      {
        v95 = a4;
        v98 = __PAIR64__(v16, v97);
        v92 = external_buffer[4];
        v90 = external_buffer;
        v91 = *(external_buffer + 10);
        if (v17 >= 8)
        {
          v19 = 8;
        }

        else
        {
          v19 = v17;
        }

        v20 = (v17 / v19 - 1) | (((v17 / v19) - 1) >> 1);
        v21 = v20 | (v20 >> 2) | ((v20 | (v20 >> 2)) >> 4);
        v22 = v21 | (v21 >> 8) | ((v21 | (v21 >> 8)) >> 16);
        v23 = (v22 | HIDWORD(v22)) + 1;
        if (v23 >= [compute_pipeline maxTotalThreadsPerThreadgroup])
        {
          LODWORD(v23) = [compute_pipeline maxTotalThreadsPerThreadgroup];
        }

        v102[0] = 0;
        LODWORD(v103) = 0;
        v24 = CA::OGL::MetalBufferPool::alloc_bytes(*(this + 595), 0x14u, 4u, v102, &v103);
        v25 = a3->i32[0] >> v12;
        *v24 = v25;
        v26 = a3->i32[1] >> v12;
        *v24 = v25;
        v27.f32[0] = v25;
        v24[1] = v26;
        v27.f32[1] = v26;
        v28 = vcvt_s32_f32(vadd_f32(v27, v93));
        v24[3] = v28.i16[2];
        v24[2] = v28.i16[0];
        *(v24 + 16) = 1;
        *(v24 + 2) = (v17 + v23 - 1) / v23;
        *(v24 + 3) = v17;
        *(v24 + 17) = v12;
        v29 = [*(v5 + 168) newTextureViewWithPixelFormat:objc_msgSend(*(v5 + 168) textureType:"pixelFormat") levels:objc_msgSend(*(v5 + 168) slices:"textureType"), v12, 1, 0, 1];
        [*(this + 444) setComputePipelineState:compute_pipeline];
        [*(this + 444) setTexture:v29 atIndex:0];
        [*(this + 444) setBuffer:v102[0] offset:v103 atIndex:0];
        [*(this + 444) setBuffer:v92 offset:v91 atIndex:2];
        [*(this + 444) setThreadgroupMemoryLength:16 * v9 * v11 atIndex:0];
        v30 = *(this + 444);
        *&v31.f64[0] = v98;
        *&v31.f64[1] = HIDWORD(v98);
        v105 = v31;
        v106 = 1;
        *v118 = v9;
        *&v118[8] = v11;
        *&v118[16] = 1;
        [v30 dispatchThreadgroups:&v105 threadsPerThreadgroup:v118];
        v32 = CA::OGL::MetalContext::get_compute_pipeline(this, 5u);
        v33 = CA::OGL::MetalBufferPool::create_external_buffer(*(this + 595), 0x10u, 4uLL, 0);
        if (v33)
        {
          v34 = v33;
          v35 = v33[4];
          v36 = *(v33 + 10);
          [*(this + 444) setComputePipelineState:v32];
          [*(this + 444) setBuffer:v92 offset:v91 atIndex:1];
          [*(this + 444) setBuffer:v35 offset:v36 atIndex:2];
          [*(this + 444) setThreadgroupMemoryLength:16 * v23 atIndex:0];
          v37 = *(this + 444);
          v105 = vdupq_n_s64(1uLL);
          v106 = 1;
          *v118 = v23;
          *&v118[8] = v105;
          [v37 dispatchThreadgroups:&v105 threadsPerThreadgroup:v118];
          v38 = powf(*(v5 + 88), -1.0 / *(this + 144));
          v109 = MEMORY[0x1E69E9820];
          v110 = 3221225472;
          v111 = ___ZN2CA3OGL12MetalContext30compute_calculate_average_lumaEPNS0_7SurfaceERNS_6BoundsEU13block_pointerFvfE_block_invoke;
          v112 = &unk_1E6DF53E0;
          v115 = v36;
          a4 = v95;
          v113 = v35;
          v114 = v95;
          v116 = v38;
          v39 = *(this + 441);
          *&v105.f64[0] = MEMORY[0x1E69E9820];
          *&v105.f64[1] = 3221225472;
          v106 = ___ZN2CA3OGL12MetalContext22add_completed_callbackEU13block_pointerFvvE_block_invoke;
          v107 = COERCE_DOUBLE(&unk_1E6DF53B8);
          v108 = &v109;
          [v39 addCompletedHandler:&v105];
          if (*(this + 441))
          {
            CA::OGL::MetalBufferPool::release_external_buffer(*(this + 595), v90);
            CA::OGL::MetalBufferPool::release_external_buffer(*(this + 595), v34);

            return 1;
          }
        }

        else
        {
          CA::OGL::MetalBufferPool::release_external_buffer(*(this + 595), v90);

          a4 = v95;
        }
      }
    }
  }

  if (*(this + 455))
  {
    return 0;
  }

  if (*(this + 3318) & 2) == 0 || (byte_1ED4E9858)
  {
    goto LABEL_48;
  }

  v41 = *(v5 + 96);
  CA::OGL::Context::push_surface(this, v5, 0, 64, v41);
  v42 = *(this + 85);
  v43 = *(this + 84);
  if (v42 != v43 || (!v42 ? (v44 = 0) : (v44 = (*(v43 + 144) >> 1) & 0x1F), *(this + 167) != v44))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  v96 = a4;
  if ((*(this + 692) & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(this);
  }

  if (!CA::OGL::MetalContext::start_render_encoder(this))
  {
    goto LABEL_47;
  }

  v45 = *(this + 829);
  v46 = [*(this + 442) tileWidth];
  v47 = [*(this + 442) tileHeight];
  v48 = v47;
  v49 = *(v5 + 256) >> v41;
  if (v49 <= 1)
  {
    v49 = 1;
  }

  v50 = *(v5 + 260) >> v41;
  if (v50 <= 1)
  {
    v50 = 1;
  }

  v51 = (v46 + v49 - 1) / v46;
  v52 = (v47 + v50 - 1) / v47 * v51;
  v53 = (v45 & 0x100000) != 0 ? 3 : 4;
  v54 = v52 << v53;
  v55 = CA::OGL::MetalBufferPool::create_external_buffer(*(this + 595), 8 * (v52 << v53), 8uLL, 0);
  if (!v55)
  {
LABEL_47:
    CA::OGL::Context::pop_surface(this);
    a4 = v96;
    goto LABEL_48;
  }

  v56 = v55;
  v99 = v55[4];
  v94 = *(v55 + 10);
  v57 = *(v5 + 192);
  if ((v45 & 0x100000) != 0)
  {
    v58 = 11;
  }

  else
  {
    v58 = 12;
  }

  v59 = v5;
  if ((v45 & 0x100000) != 0)
  {
    v60 = 11;
  }

  else
  {
    v60 = 12;
  }

  tile_pipeline = CA::OGL::MetalContext::get_tile_pipeline(this, v58, v57);
  v62 = *(&CA::OGL::MetalContext::tile_shader_type_info + 16 * v60 + 8);
  *&v63 = v46 / v62;
  *&v64 = v48 / v62;
  v65 = *(v59 + 56) >> v41;
  if (v65 <= 1)
  {
    LOWORD(v65) = 1;
  }

  v66 = *(v59 + 60) >> v41;
  if (v66 <= 1)
  {
    LOWORD(v66) = 1;
  }

  *v118 = v65;
  *&v118[2] = v66;
  *&v118[4] = v51;
  [*(this + 442) setRenderPipelineState:tile_pipeline];
  [*(this + 442) setTileBuffer:v99 offset:v94 atIndex:2];
  [*(this + 442) setTileBytes:v118 length:8 atIndex:0];
  v67 = *(this + 442);
  v105.f64[0] = v63;
  v105.f64[1] = v64;
  v40 = 1;
  v106 = 1;
  [v67 dispatchThreadsPerTile:&v105];
  *(this + 496) = tile_pipeline;
  v68 = powf(*(v59 + 88), -1.0 / *(this + 144));
  v109 = MEMORY[0x1E69E9820];
  v110 = 3221225472;
  v111 = ___ZN2CA3OGL12MetalContext27tile_calculate_average_lumaEPNS0_7SurfaceEU13block_pointerFvfE_block_invoke;
  v112 = &unk_1E6DF5408;
  v115 = v54;
  v116 = *&v94;
  v117 = v68;
  v113 = v99;
  a4 = v96;
  v114 = v96;
  CA::OGL::MetalBufferPool::release_external_buffer(*(this + 595), v56);
  CA::OGL::Context::pop_surface(this);
  v69 = *(this + 441);
  *&v105.f64[0] = MEMORY[0x1E69E9820];
  *&v105.f64[1] = 3221225472;
  v106 = ___ZN2CA3OGL12MetalContext22add_completed_callbackEU13block_pointerFvvE_block_invoke;
  v107 = COERCE_DOUBLE(&unk_1E6DF53B8);
  v108 = &v109;
  v5 = v59;
  [v69 addCompletedHandler:&v105];
  if (!*(this + 441))
  {
LABEL_48:
    v103 = 0;
    v104 = *(v5 + 56);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v70 = (*(*this + 704))(this, 1, &v103, 1446991, &v109, @"calculate-average-luma");
    if (!v70)
    {
      return 0;
    }

    v73 = v70;
    *(v70 + 148) |= 0x20u;
    if (v104 <= SHIDWORD(v104))
    {
      v74 = HIDWORD(v104);
    }

    else
    {
      v74 = v104;
    }

    v71.i32[0] = 1073741822;
    v72.i32[0] = v74;
    v75.i64[0] = v103;
    v75.i64[1] = SHIDWORD(v103);
    v76 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v72, v71), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v75));
    v77 = v104;
    if (v74 > 1073741822)
    {
      v77 = 1.79769313e308;
    }

    v105 = v76;
    if (v74 <= 1073741822)
    {
      v78 = SHIDWORD(v104);
    }

    else
    {
      v78 = 1.79769313e308;
    }

    v106 = *&v77;
    v107 = v78;
    v79 = 1;
    CA::OGL::MetalContext::copy_surface(this, v70, v5, 1, 0, &v105, &v105);
    v80 = *(v73 + 168);
    if (CA::OGL::MetalContext::start_blit_encoder(this, 0))
    {
      [*(this + 443) generateMipmapsForTexture:v80];
      *v118 = xmmword_183E210F0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v81 = (*(*this + 704))(this, 1, v118, 1971279, &v109, @"calculate-average-luma-blit-surf");
      if (!v81)
      {
LABEL_61:
        v79 = 0;
        goto LABEL_62;
      }

      v82 = v81;
      *(v81 + 148) |= 0x20u;
      v83 = *(this + 443);
      v84 = *(v73 + 168);
      v85 = [v80 mipmapLevelCount];
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v79 = 1;
      *v118 = vdupq_n_s64(1uLL);
      *&v118[16] = 1;
      v86 = *(v82 + 168);
      memset(v102, 0, sizeof(v102));
      [v83 copyFromTexture:v84 sourceSlice:0 sourceLevel:v85 - 1 sourceOrigin:&v109 sourceSize:v118 toTexture:v86 destinationSlice:0 destinationLevel:0 destinationOrigin:v102];
      v87 = powf(*(v82 + 88), -1.0 / *(this + 144));
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = ___ZN2CA3OGL12MetalContext22calculate_average_lumaEPNS0_7SurfaceERNS_6BoundsEU13block_pointerFvfE_block_invoke;
      v100[3] = &unk_1E6DF5430;
      v100[5] = this;
      v100[6] = v82;
      v101 = v87;
      v100[4] = a4;
      v88 = *(this + 441);
      v109 = MEMORY[0x1E69E9820];
      v110 = 3221225472;
      v111 = ___ZN2CA3OGL12MetalContext22add_completed_callbackEU13block_pointerFvvE_block_invoke;
      v112 = &unk_1E6DF53B8;
      v113 = v100;
      [v88 addCompletedHandler:&v109];
      if (!*(this + 441))
      {
        CA::OGL::Context::release_surface(this, v82);
        goto LABEL_61;
      }
    }

LABEL_62:
    CA::OGL::Context::release_surface(this, v73);
    return v79;
  }

  return v40;
}

void CA::OGL::MetalContext::copy_surface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float64x2_t *a6, float64x2_t *a7)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v14 = *(a3 + 40) < *(a2 + 40) || *(a3 + 44) < *(a2 + 44);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 3640) = [*(a2 + 168) protectionOptions];
  if (CA::ScalerUtil::get_io_service(void)::once != -1)
  {
    dispatch_once(&CA::ScalerUtil::get_io_service(void)::once, &__block_literal_global_77);
  }

  if (!CA::ScalerUtil::get_io_service(void)::scaler_service && *(a2 + 192) == 500)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a2 + 40);
    if (*(a3 + 40) == v16)
    {
      v17 = *(a2 + 44);
      v18 = a3;
      if (*(a3 + 44) == v17)
      {
LABEL_29:
        if (CA::OGL::MetalContext::start_compute_encoder(a1, *(a1 + 3640)))
        {
          compute_pipeline = CA::OGL::MetalContext::get_compute_pipeline(a1, 3u);
          v28 = *(a3 + 40);
          v29 = [*(a2 + 168) iosurface];
          v30 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:*(a2 + 40) height:*(a2 + 44) mipmapped:0];
          [v30 setUsage:2];
          v31 = [*(a1 + 3504) newTextureWithDescriptor:v30 iosurface:v29 plane:0];
          v32 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:vcvtpd_u64_f64(vcvtd_n_f64_s32(*(a2 + 40) height:1uLL)) mipmapped:vcvtpd_u64_f64(vcvtd_n_f64_s32(*(a2 + 44), 1uLL)), 0];
          [v32 setUsage:2];
          v33 = [*(a1 + 3504) newTextureWithDescriptor:v32 iosurface:v29 plane:1];
          [*(a1 + 3552) setComputePipelineState:compute_pipeline];
          [*(a1 + 3552) setTexture:*(v18 + 168) atIndex:1];
          [*(a1 + 3552) setTexture:v31 atIndex:2];
          [*(a1 + 3552) setTexture:v33 atIndex:3];
          __asm { FMOV            V1.2D, #0.125 }

          v39 = *(a1 + 3552);
          v43 = vcvtq_u64_f64(vmulq_f64(vcvtq_f64_u64(vaddw_s32(vdupq_n_s64(0xFuLL), v28)), _Q1));
          v44 = 1;
          v41 = vdupq_n_s64(0x10uLL);
          v42 = 1;
          [v39 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
          if (v18 != a3)
          {
            CA::OGL::Context::release_surface(a1, v18);
          }
        }

        goto LABEL_32;
      }
    }

    else
    {
      v17 = *(a2 + 44);
    }

    v41.i64[0] = 0;
    v41.i64[1] = __PAIR64__(v17, v16);
    v43 = 0uLL;
    v44 = 0;
    v18 = (*(*a1 + 704))(a1, 1, &v41, 1048591, &v43, @"copy-rgb-to-ycbcr-rgb-to-scaled");
    if (v18)
    {
      CA::OGL::MetalContext::copy_surface(a1, v18, a3, 0, 0, 0, 0);
      goto LABEL_29;
    }

LABEL_32:
    objc_autoreleasePoolPop(v15);
    return;
  }

  if (a7)
  {
    v19 = 1;
  }

  else
  {
    v19 = v14;
  }

  if ((a5 & 7) == 0 && !a6 && (v19 & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v20 = *(a3 + 192);
    if (v20 == 550)
    {
      v20 = 554;
    }

    if (*(a2 + 192) == v20 && *(a3 + 56) == *(a2 + 56) && *(a3 + 60) == *(a2 + 60))
    {
      v21 = [*(a2 + 168) protectionOptions];
      v22 = *(a3 + 56);
      v23 = *(a3 + 60);
      if (CA::OGL::MetalContext::start_blit_encoder(a1, v21))
      {
        v24 = *(a1 + 3544);
        v25 = *(a3 + 168);
        v43 = 0uLL;
        v44 = 0;
        v41.i64[0] = v22;
        v41.i64[1] = v23;
        v42 = 1;
        v26 = *(a2 + 168);
        memset(v40, 0, sizeof(v40));
        [v24 copyFromTexture:v25 sourceSlice:0 sourceLevel:0 sourceOrigin:&v43 sourceSize:&v41 toTexture:v26 destinationSlice:0 destinationLevel:0 destinationOrigin:v40];
        *(a2 + 88) = *(a3 + 88);
        goto LABEL_32;
      }

      *(a2 + 88) = *(a3 + 88);
    }

    objc_autoreleasePoolPop(v15);
  }

  CA::OGL::Context::copy_surface(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t ___ZN2CA3OGL12MetalContext22calculate_average_lumaEPNS0_7SurfaceERNS_6BoundsEU13block_pointerFvfE_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 168);
  v17 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = vdupq_n_s64(1uLL);
  v16 = 1;
  [v3 getBytes:&v17 bytesPerRow:4 bytesPerImage:4 fromRegion:v14 mipmapLevel:0 slice:0];
  if (HIBYTE(v17))
  {
    LOBYTE(v4) = BYTE2(v17);
    v5 = 1046066128;
    LOBYTE(v5) = BYTE1(v17);
    *&v6 = v5;
    v7 = (v4 * 0.2126) + (*&v6 * 0.7152);
    LOBYTE(v6) = v17;
    v8 = (v7 + (v6 * 0.0722)) / HIBYTE(v17);
    if (v8 <= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }
  }

  else
  {
    v9 = -1.0;
  }

  v10 = *(a1 + 56);
  CA::OGL::Context::release_surface_async(v2, *(a1 + 48));
  v12 = *(*(a1 + 32) + 16);

  v11.n128_f32[0] = v10 * v9;
  return v12(v11);
}

BOOL CA::OGL::MetalContext::add_completed_callback(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 3528);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN2CA3OGL12MetalContext22add_completed_callbackEU13block_pointerFvvE_block_invoke;
  v5[3] = &unk_1E6DF53B8;
  v5[4] = a2;
  [v3 addCompletedHandler:v5];
  return *(a1 + 3528) != 0;
}

uint64_t ___ZN2CA3OGL12MetalContext27tile_calculate_average_lumaEPNS0_7SurfaceEU13block_pointerFvfE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) contents];
  if (v2 < 8)
  {
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  else
  {
    v4 = (v3 + *(a1 + 52));
    v5 = v2 >> 3;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    do
    {
      v11 = v4[2];
      v10 = v4[3];
      v12 = *v4;
      v13 = v4[1];
      v4 += 4;
      v7 = vaddq_f32(v13, v7);
      v6 = vaddq_f32(v12, v6);
      v8 = vaddq_f32(v11, v8);
      v9 = vaddq_f32(v10, v9);
      --v5;
    }

    while (v5);
  }

  v14 = vextq_s8(v7, v7, 8uLL);
  v15 = vaddq_f32(vuzp2q_s32(v6, v14), vrev64q_s32(vuzp2q_s32(v8, v9)));
  v17 = vpaddq_f32(v15, v15);
  v16 = vaddv_f32(v17.n128_u64[0]);
  v17.n128_u32[0] = -1.0;
  if (v16 > 0.0)
  {
    v18 = vaddq_f32(vuzp1q_s32(v6, v14), vrev64q_s32(vuzp1q_s32(v8, v9)));
    v17 = vpaddq_f32(v18, v18);
    v17.n128_f32[0] = (*(a1 + 56) * vaddv_f32(v17.n128_u64[0])) / v16;
  }

  v19 = *(*(a1 + 40) + 16);

  return v19(v17);
}

uint64_t ___ZN2CA3OGL12MetalContext30compute_calculate_average_lumaEPNS0_7SurfaceERNS_6BoundsEU13block_pointerFvfE_block_invoke(uint64_t a1)
{
  v2 = *([*(a1 + 32) contents] + *(a1 + 48));
  v3 = *&v2.i32[3];
  v4.n128_u32[0] = -1.0;
  if (*&v2.i32[3] > 0.0)
  {
    v5 = *&v2.i32[1];
    v6 = vmulq_f64(vcvtq_f64_f32(vzip1_s32(*v2.i8, *&vextq_s8(v2, v2, 8uLL))), xmmword_183E21450);
    v4.n128_f64[0] = (v6.f64[0] + v5 * 0.7152 + v6.f64[1]) * *(a1 + 52) / v3;
    v4.n128_f32[0] = v4.n128_f64[0];
  }

  v7 = *(*(a1 + 40) + 16);

  return v7(v4);
}

_OWORD *CA::OGL::MetalContext::create_null_surface(CA::OGL::MetalContext *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x138uLL, 0x10A004045BE2C27uLL);
  *v2 = 1;
  v2[3] = xmmword_183E210F0;
  *(v2 + 23) = 1039;
  v3 = *(v2 + 154) & 0xFFC0;
  *(v2 + 36) = v2[9] & 0x7FFFC0FE | 0x80001701;
  *(v2 + 154) = v3 | 0x31;
  *(v2 + 74) |= 1u;
  CA::OGL::Context::track_surface(this, v2);
  return v2;
}

uint64_t CA::OGL::MetalContext::compute_copy_texture(CA::OGL::MetalContext *this, void *a2)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (CA::OGL::MetalContext::start_compute_encoder(this, *(this + 455)))
  {
    compute_pipeline = CA::OGL::MetalContext::get_compute_pipeline(this, 9u);
    v6 = [a2 width];
    v7 = [a2 height];
    v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:v6 height:v7 mipmapped:0];
    [v8 setUsage:3];
    v9 = [*(this + 438) newTextureWithDescriptor:v8];
    if (v9)
    {
      [*(this + 444) setComputePipelineState:compute_pipeline];
      [*(this + 444) setTexture:a2 atIndex:0];
      [*(this + 444) setTexture:v9 atIndex:1];
      v10 = *(this + 444);
      v14[0] = (v6 + 15) >> 4;
      v14[1] = (v7 + 15) >> 4;
      v14[2] = 1;
      v12 = vdupq_n_s64(0x10uLL);
      v13 = 1;
      [v10 dispatchThreadgroups:v14 threadsPerThreadgroup:&v12];
      CA::OGL::MetalContext::finish(this);
    }
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

uint64_t CA::OGL::MetalContext::create_reinterpreted_surface(CA::OGL::Context *a1, uint64_t a2, int a3)
{
  v6 = [*(a2 + 168) pixelFormat];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x138uLL, 0x10A004045BE2C27uLL);
  v9 = v7;
  *v7 = 1;
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 7) = *(a2 + 56);
  *(v7 + 9) = *(a2 + 72);
  *(v7 + 22) = *(a2 + 88);
  v10 = *(v7 + 36) & 0xFFFFFFFE | *(a2 + 144) & 1;
  *(v7 + 36) = v10;
  v11 = v10 & 0xF0FFFFFF | ((HIBYTE(*(a2 + 144)) & 0xF) << 24);
  *(v7 + 36) = v11;
  v12 = v11 & 0xEFFFFFFF | (((*(a2 + 144) >> 28) & 1) << 28);
  *(v7 + 36) = v12;
  *(v7 + 74) |= 1u;
  *(v7 + 16) = *(a2 + 256);
  v13 = *(v7 + 154) & 0xFFF0 | *(a2 + 308) & 0xF;
  *(v7 + 154) = *(v7 + 154) & 0xFFF0 | *(a2 + 308) & 0xF;
  v14 = v13 & 0xFFFFFEFF | ((HIBYTE(*(a2 + 308)) & 1) << 8);
  *(v7 + 154) = v14;
  *(v7 + 76) = *(a2 + 304);
  *(v7 + 286) = *(a2 + 286);
  v15 = v14 & 0xFFFFFDFF | (((*(a2 + 308) >> 9) & 1) << 9);
  *(v7 + 154) = v15;
  *(v7 + 154) = v15 & 0xFBFF | *(a2 + 308) & 0x400;
  v16 = v12 & 0xDFFFFFFF | (((*(a2 + 144) >> 29) & 1) << 29);
  *(v7 + 36) = v16;
  v17 = v16 & 0xBFFFFFFF | (((*(a2 + 144) >> 30) & 1) << 30);
  *(v7 + 36) = v17;
  *(v7 + 36) = *(a2 + 144) & 0x80000000 | v17 & 0x7FFFFFFF;
  v18 = *(a2 + 92);
  if (a3)
  {
    *(v7 + 23) = v18 | 0x80;
    v6 = CA::OGL::srgb_pixel_format(v6, v8);
  }

  else
  {
    *(v7 + 23) = v18 & 0xFFFFFF7F;
    if (v6 <= 80)
    {
      switch(v6)
      {
        case 11:
          v6 = 10;
          break;
        case 31:
          v6 = 30;
          break;
        case 71:
          v6 = 70;
          break;
      }
    }

    else if (v6 > 552)
    {
      if (v6 == 553)
      {
        v6 = 552;
      }

      else if (v6 == 555)
      {
        v6 = 554;
      }
    }

    else if (v6 == 81)
    {
      v6 = 80;
    }

    else if (v6 == 551)
    {
      v6 = 550;
    }
  }

  v19 = [*(a2 + 168) newTextureViewWithPixelFormat:v6];
  *(v9 + 168) = v19;
  *(v9 + 192) = v6;
  if (v19)
  {
    [v19 setLabel:@"com.apple.coreanimation.reinterpreted-surface"];
    if ((*(a2 + 308) << 12) > 4096)
    {
      v20 = (v9 + 200);
      v21 = (a2 + 176);
      v22 = 1;
      do
      {
        *(v20 - 3) = *v21;
        v23 = *v21++;
        *v20++ = [v23 pixelFormat];
        ++v22;
      }

      while (v22 < (*(a2 + 308) << 60) >> 60);
    }

    CA::OGL::Context::track_surface(a1, v9);
  }

  else
  {
    CA::OGL::MetalContext::finalize_surface(a1, v9);
    return 0;
  }

  return v9;
}

_DWORD *CA::OGL::MetalContext::create_surface_from_iosurface(CA::OGL::MetalContext *this, int a2, int a3, int a4, IOSurfaceRef buffer)
{
  v50 = *MEMORY[0x1E69E9840];
  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  v12 = 0;
  if (a2 == 1 && Width >= 1)
  {
    v13 = Height;
    if (Height >= 1)
    {
      v14 = *(this + 411);
      if ((Width & 0x7FFFFFFFu) > v14 || (Height & 0x7FFFFFFFu) > v14)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v25 = x_log_get_ogl_metal(void)::log;
        if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v42 = 67109376;
        v43 = Width;
        v44 = 1024;
        v45 = v13;
        v26 = "Surface from iosurface %d x %d is too large\n";
        v27 = v25;
        v28 = 14;
      }

      else
      {
        PixelFormat = IOSurfaceGetPixelFormat(buffer);
        v16 = PixelFormat;
        v17 = CA::OGL::four_cc_to_mtl_format(PixelFormat, *(this + 829));
        if (v17)
        {
          v18 = v17;
          if (!CA::OGL::MetalContext::is_viable_texture_from_iosurface(this, buffer, v17))
          {
            return 0;
          }

          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v12 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x138uLL, 0x10A004045BE2C27uLL);
          *v12 = 1;
          v12[36] |= 0x10000000u;
          v12[12] = a3;
          v12[13] = a4;
          v12[14] = Width;
          v12[15] = v13;
          v12[10] = Width;
          v12[11] = v13;
          *(v12 + 9) = IOSurfaceGetProtectionOptions();
          v12[64] = Width;
          v12[65] = v13;
          v19 = *(v12 + 154);
          v12[36] |= 0x80000001;
          *(v12 + 74) |= 1u;
          *(v12 + 154) = v19 & 0xFDC0 | 0x31;
          *(v12 + 11) = 0x40F3F800000;
          edr_factor = CA::Render::iosurface_get_edr_factor(buffer, v20);
          v22 = 1.0;
          if (edr_factor == 0.0)
          {
            edr_factor = 1.0;
          }

          v23 = edr_factor > 1.0 || edr_factor < 0.0;
          if (edr_factor < 0.0 && edr_factor <= 1.0)
          {
            v22 = 0.0;
          }

          if (v23)
          {
            edr_factor = v22;
          }

          *(v12 + 22) = edr_factor;
          if (v18 - 550 <= 5)
          {
            v12[23] |= 0x100u;
          }

          if (v18 == MTLPixelFormatRGBA16Float)
          {
            v24 = 16;
          }

          else
          {
            if (v18 != MTLPixelFormatRGBA32Float)
            {
LABEL_35:
              v32 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v18 width:Width & 0x7FFFFFFF height:v13 & 0x7FFFFFFF mipmapped:0];
              [v32 setUsage:5];
              [v32 setProtectionOptions:*(v12 + 9)];
              v33 = [*(this + 438) newTextureWithDescriptor:v32 iosurface:buffer plane:0];
              *(v12 + 21) = v33;
              [v33 setLabel:@"com.apple.coreanimation.iosurface"];
              *(v12 + 24) = v18;
              if (*(v12 + 21))
              {
                CA::OGL::MetalContext::add_memoryless_textures(this, v12);
                CA::OGL::Context::track_surface(this, v12);
                return v12;
              }

              CA::OGL::MetalContext::finalize_surface(this, v12);
              return 0;
            }

            v24 = 32;
          }

          v12[23] |= v24;
          goto LABEL_35;
        }

        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v29 = x_log_get_ogl_metal(void)::log;
        if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v30 = HIBYTE(v16);
        if (v16 < 0)
        {
          v31 = __maskrune(v30, 0x40000uLL);
        }

        else
        {
          v31 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000;
        }

        if (v31)
        {
          v34 = v16 >> 24;
        }

        else
        {
          v34 = 32;
        }

        if (BYTE2(v16) <= 0x7Fu)
        {
          v35 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v16) + 60) & 0x40000;
        }

        else
        {
          v35 = __maskrune(BYTE2(v16), 0x40000uLL);
        }

        if (v35)
        {
          v36 = SBYTE2(v16);
        }

        else
        {
          v36 = 32;
        }

        if (BYTE1(v16) <= 0x7Fu)
        {
          v37 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(v16) + 60) & 0x40000;
        }

        else
        {
          v37 = __maskrune(BYTE1(v16), 0x40000uLL);
        }

        if (v37)
        {
          v38 = SBYTE1(v16);
        }

        else
        {
          v38 = 32;
        }

        if (v16 <= 0x7Fu)
        {
          v39 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
        }

        else
        {
          v39 = __maskrune(v16, 0x40000uLL);
        }

        v42 = 67109888;
        v40 = v16;
        v43 = v34;
        v44 = 1024;
        if (!v39)
        {
          v40 = 32;
        }

        v45 = v36;
        v46 = 1024;
        v47 = v38;
        v48 = 1024;
        v49 = v40;
        v26 = "Unsupported IOSurface pixel format: %c%c%c%c";
        v27 = v29;
        v28 = 26;
      }

      _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, v26, &v42, v28);
      return 0;
    }
  }

  return v12;
}

_DWORD *CA::OGL::MetalContext::create_surface_from_texture(CA::OGL::MetalContext *this, int a2, int a3, void *a4)
{
  v8 = [a4 width];
  v9 = [a4 height];
  v10 = [a4 pixelFormat];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v11 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x138uLL, 0x10A004045BE2C27uLL);
  *v11 = 1;
  v11[36] |= 0x10000000u;
  v11[12] = a2;
  v11[13] = a3;
  v11[14] = v8;
  v11[15] = v9;
  v11[10] = v8;
  v11[11] = v9;
  *(v11 + 9) = [a4 protectionOptions];
  v11[64] = v8;
  v11[65] = v9;
  v12 = *(v11 + 154);
  v11[36] |= 0x80000001;
  *(v11 + 74) |= 1u;
  *(v11 + 154) = v12 & 0xFDC0 | 0x31;
  *(v11 + 11) = 0x40F3F800000;
  if ((v10 - 550) > 5)
  {
    v13 = 1039;
  }

  else
  {
    v13 = 1295;
    v11[23] = 1295;
  }

  if (v10 == 115)
  {
    v14 = 16;
    goto LABEL_10;
  }

  if (v10 == 125)
  {
    v14 = 32;
LABEL_10:
    v11[23] = v13 | v14;
  }

  *(v11 + 21) = a4;
  *(v11 + 24) = v10;
  CA::OGL::MetalContext::add_memoryless_textures(this, v11);
  CA::OGL::Context::track_surface(this, v11);
  return v11;
}

void CA::OGL::MetalContext::SharedEvent::add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 == v6)
  {
LABEL_6:
    v9 = (v6 - v7);
    v10 = ((v6 - v7) >> 4) + 1;
    v11 = *(a1 + 32);
    if (v11 < v10)
    {
      v12 = *(a1 + 24);
      v13 = (v11 + 1) | ((v11 + 1) >> 1) | (((v11 + 1) | ((v11 + 1) >> 1)) >> 2);
      v14 = v13 | (v13 >> 4) | ((v13 | (v13 >> 4)) >> 8);
      v15 = v14 | (v14 >> 16) | ((v14 | (v14 >> 16)) >> 32);
      if (v15 + 1 > v10)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = v10;
      }

      v17 = malloc_type_malloc(16 * v16, 0x1020040EDED9539uLL);
      v18 = v17;
      v19 = *(a1 + 8);
      v20 = *(a1 + 16);
      if (v19 != v20)
      {
        v21 = v17;
        do
        {
          v22 = *v19++;
          *v21++ = v22;
        }

        while (v19 != v20);
      }

      if (v7 != v12)
      {
        free(*(a1 + 8));
      }

      v6 = &v9[v18];
      *(a1 + 8) = v18;
      *(a1 + 16) = &v9[v18];
      *(a1 + 32) = v16;
    }

    *v6 = a2;
    *(v6 + 1) = a3;
    *(a1 + 16) += 16;
  }

  else
  {
    v8 = *(a1 + 8);
    while (*(v8 + 12) != HIDWORD(a3) || *v8 != a2)
    {
      v8 += 16;
      if (v8 == v6)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t CA::OGL::MetalContext::can_render_to_format(CA::OGL::MetalContext *this, CA::Render *a2)
{
  CA::OGL::four_cc_to_mtl_format(a2, *(this + 829));
  MTLPixelFormatGetInfoForDevice();
  return 0;
}

void *CA::OGL::MetalContext::modify_subimage_impl(void *result, unint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v20[6] = *MEMORY[0x1E69E9840];
  if (a2 && *(a3 + 169) == 1 && !*(a3 + 176))
  {
    v15 = result;
    v16 = *(a3 + 168);
    if (v16 > 0x25)
    {
      v17 = 0;
    }

    else
    {
      v17 = dword_183E22690[v16];
    }

    v18 = v17 * a7;
    CA::OGL::MetalContext::update_texture_plane(result, a2, a4, 0, v16, *(a3 + 16), *(a3 + 20));
    v19 = *(a2 + 64);
    v20[0] = a5;
    v20[1] = a6;
    v20[2] = 0;
    v20[3] = a7;
    v20[4] = a8;
    v20[5] = 1;
    result = [v19 replaceRegion:v20 mipmapLevel:0 withBytes:a9 bytesPerRow:v18];
    atomic_fetch_add((a3 + 36), 1u);
    *(a2 + 16) = *(a3 + 36);
    *(a2 + 123) &= ~1u;
    v15[160] += v18 * a8;
  }

  return result;
}

void *CA::OGL::MetalContext::create_mutable_image(CA::OGL::MetalContext *this, CA::Render::Image *a2, unsigned int a3, unsigned int a4, CGColorSpace *a5)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  return CA::Render::Image::new_image(a2, a3, a4, 1u, a5, 0, v7, 0, 0, v6);
}

uint64_t CA::OGL::MetalContext::can_generate_mipmaps_for_format(CA::OGL::MetalContext *this, MTLPixelFormat *a2, BOOL *a3)
{
  v4 = *a2;
  if ((v4 - 550) < 6)
  {
    return 0;
  }

  if (v4 == 1)
  {
    *a2 = MTLPixelFormatR8Unorm;
    *a3 = 1;
  }

  MTLPixelFormatGetInfoForDevice();
  return 0;
}

uint64_t *CA::OGL::MetalContext::bind_lut_texture(os_unfair_lock_s *this, unsigned int a2, CA::Render::Texture *a3)
{
  v6 = CA::OGL::Context::lookup_image(this, a3, 1);
  if (v6)
  {
    CA::OGL::MetalContext::bind_color_cube(this, a2, a3);
    *(*&this[4]._os_unfair_lock_opaque + 324) = a2;
  }

  return v6;
}

void CA::OGL::MetalContext::bind_color_cube(os_unfair_lock_s *this, unsigned int a2, CA::Render::Texture *a3)
{
  v6 = CA::OGL::Context::lookup_image(this, a3, 1);
  if (v6)
  {
    v7 = v6;
    v8 = CA::OGL::MetalContext::retain_image(this, v6, a3, 0);
    v10 = v8;
    if (*(v7 + 122))
    {
      if (*(v7 + 16) == *(v8 + 9))
      {
        v11 = *&this[4]._os_unfair_lock_opaque;
        *(v11 + 2 * a2 + 144) = *(v7 + 52);
        *(v11 + 8 * a2 + 176) = v7;
        return;
      }
    }

    else
    {
      v12 = *(v8 + 4);
      v13 = *(v8 + 5);
      v14 = (*(*v8 + 17))(v8);
      *(v7 + 120) = v14;
      v15 = *(v7 + 123) | 0x400;
      *(v7 + 123) = v15;
      if (v13 >= 2 && v14 == 1)
      {
        if (v13 != v12 * v12)
        {
          v17 = v12 * v12 * v12;
          LOWORD(v12) = v12 * v12;
          if (v13 != v17)
          {
            return;
          }
        }

        *(v7 + 120) = v12;
      }

      *(v7 + 123) = v15 & 0xFFF7;
    }

    CA::OGL::MetalContext::update_texture(this, v7, v10, a2, 0, v9);
  }
}

atomic_uint *CA::OGL::MetalContext::create_lut_texture(CA::OGL::MetalContext *this, const CA::Render::Interpolator *a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 != 3)
  {
    return 0;
  }

  v4 = *(a2 + 3);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    return 0;
  }

  if (*(v5 + 12) != 23 || *(v4 + 12) != 23)
  {
    return 0;
  }

  v10 = *(this + 100);
  if (v10)
  {
    v11 = *v10;
    v12 = v10[1];
    while (v11 != v12)
    {
      if (*v11 == (v4 | (v5 << 32)))
      {
        *(v11 + 26) = *(v11 + 24);
        v7 = *(v11 + 16);
        if (v7)
        {
          return v7;
        }

        break;
      }

      v11 += 32;
    }
  }

  v13 = *(v4 + 16);
  v14 = objc_alloc_init(MEMORY[0x1E69741C0]);
  [v14 setTextureType:7];
  [v14 setWidth:v13];
  [v14 setHeight:v13];
  [v14 setDepth:2 * v13];
  [v14 setPixelFormat:115];
  [v14 setUsage:1];
  v15 = [*(this + 438) newTextureWithDescriptor:v14];
  [(objc_object *)v15 setLabel:@"com.apple.coreanimation.interpolated_3d_lut"];

  v16 = *(v4 + 176);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v13;
  v23 = v13;
  v24 = v13;
  [(objc_object *)v15 replaceRegion:&v19 mipmapLevel:0 slice:0 withBytes:*(v4 + 112) bytesPerRow:v16 bytesPerImage:v16 * v13];
  v17 = *(v5 + 176);
  v19 = 0;
  v20 = 0;
  v21 = v13;
  v22 = v13;
  v23 = v13;
  v24 = v13;
  [(objc_object *)v15 replaceRegion:&v19 mipmapLevel:0 slice:0 withBytes:*(v5 + 112) bytesPerRow:v17 bytesPerImage:v17 * v13];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v18 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x80uLL, 0xDEEC3011uLL);
  if (!v18)
  {

    __assert_rtn("add_transient_render_texture", "ogl-context.cpp", 2784, "key && img && !lookup_transient_render_texture (key, false)");
  }

  v7 = v18;
  CA::Render::MetalTexture::MetalTexture(v18, v15);

  CA::OGL::Context::add_transient_render_texture(this, v4 | (v5 << 32), a2, v7);
  if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 16))(v7);
  }

  return v7;
}

atomic_uint *CA::OGL::MetalContext::create_lut_texture(CA::OGL::MetalContext *this, const CA::Render::Vector *a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a3 != 3)
  {
    return 0;
  }

  v5 = *(a2 + 4);
  v6 = v5 >> 2;
  v7 = cbrt((v5 >> 2));
  if (v5 < 0x20 || ((v8 = v7, v9 = v8 * v8, v7 <= 0x80) ? (_ZF = v9 * v7 == v6) : (_ZF = 0), !_ZF))
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v11 = x_log_get_ogl_metal(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 67109120;
    v39 = v6;
    v32 = "Invalid 3D lut input data with pixel count of %u";
    v33 = v11;
    v34 = 8;
    goto LABEL_35;
  }

  v14 = *(this + 100);
  if (v14)
  {
    v15 = *v14;
    v16 = v14[1];
    while (v15 != v16)
    {
      if (*v15 == a2)
      {
        *(v15 + 26) = *(v15 + 24);
        v12 = *(v15 + 16);
        if (v12)
        {
          return v12;
        }

        break;
      }

      v15 += 32;
    }
  }

  v17 = CA::Render::format_rowbytes(0xD, v7);
  v18 = v17;
  v36 = 0;
  v37 = v17;
  if (is_mul_ok(v17, v9))
  {
    v19 = (v17 * v9);
  }

  else
  {
    v19 = 0;
  }

  v20 = CA::Render::aligned_malloc(v19, &v36, 0);
  if (!v20)
  {
    return 0;
  }

  if (!v8)
  {
    goto LABEL_30;
  }

  v21 = 0;
  v22 = 24;
  do
  {
    v23 = (v20 + 2 * (v18 >> 1) * v21);
    v24 = v22;
    v25 = 4 * v8;
    do
    {
      _D0 = *(a2 + v24);
      __asm { FCVT            H0, D0 }

      *v23++ = _D0;
      v24 += 8;
      --v25;
    }

    while (v25);
    ++v21;
    v22 += 32 * v8;
  }

  while (v21 != v9);
  v30 = CA::Render::Image::new_image(0xD, v8, v8 * v8, 1u, 0, v20, &v37, CA::Render::aligned_free, v36, v35);
  if (!v30)
  {
LABEL_30:
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v31 = x_log_get_ogl_metal(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 67109632;
    v39 = v8;
    v40 = 1024;
    v41 = v8;
    v42 = 1024;
    v43 = v8;
    v32 = "Unable to allocate 3D LUT texture of size %ux%ux%u";
    v33 = v31;
    v34 = 20;
LABEL_35:
    _os_log_error_impl(&dword_183AA6000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
    return 0;
  }

  v12 = v30;
  CA::OGL::Context::add_transient_render_texture(this, a2, a2, v30);
  if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v12 + 16))(v12);
  }

  return v12;
}

void CA::OGL::MetalContext::bind_table_image(os_unfair_lock_s *this, unsigned int a2, atomic_uint *a3)
{
  v6 = CA::OGL::Context::lookup_image(this, a3, 1);
  if (v6)
  {
    if (!v6[1])
    {
      v6[1] = a3;
      atomic_fetch_add(a3 + 41, 1u);
    }

    if (*(v6 + 122))
    {
      if (*(v6 + 4) == a3[9])
      {
        v7 = *&this[4]._os_unfair_lock_opaque;
        *(v7 + 2 * a2 + 144) = *(v6 + 52);
        *(v7 + 8 * a2 + 176) = v6;
        return;
      }
    }

    else
    {
      *(v6 + 123) &= ~8u;
    }

    CA::OGL::MetalContext::update_image(this, v6, a3, a2, 0);
  }
}

void *CA::OGL::MetalContext::bind_luma_boost(void *this, unsigned int a2)
{
  v3 = this;
  v31 = *MEMORY[0x1E69E9840];
  v4 = this[432];
  if (!v4)
  {
    v6 = 0;
    memset(v30, 0, sizeof(v30));
    memset(v29, 0, sizeof(v29));
    v7 = 0;
    do
    {
      v8 = v6 * 0.007874;
      v9.f32[0] = 1.0 - v8;
      v10 = (v9.f32[0] * v9.f32[0]) * v8;
      v9.f32[1] = v8;
      v11 = vcvtq_f64_f32(v9);
      v12 = vmulq_f64(vmulq_f64(v11, v11), xmmword_183E21460);
      *v11.f64 = v10 + ((v8 * v8) * v8) + vmulq_f64(vaddq_f64(v12, vdupq_laneq_s64(v12, 1)), v11).f64[0];
      v13 = (*v11.f64 - v8) * v10;
      *(v30 + v6) = v13;
      if (v13 >= *v7.i32)
      {
        *v7.i32 = v13;
      }

      ++v6;
    }

    while (v6 != 128);
    v14 = 0;
    *v7.i32 = 255.0 / *v7.i32;
    v15 = vdupq_lane_s32(v7, 0);
    v16 = v30;
    do
    {
      v17.i64[0] = 0x3F0000003F000000;
      v17.i64[1] = 0x3F0000003F000000;
      v18.i64[0] = 0x3F0000003F000000;
      v18.i64[1] = 0x3F0000003F000000;
      v19.i64[0] = 0x3F0000003F000000;
      v19.i64[1] = 0x3F0000003F000000;
      v20.i64[0] = 0x3F0000003F000000;
      v20.i64[1] = 0x3F0000003F000000;
      v29[v14++] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(v19, *v16, v15)), vcvtq_s32_f32(vmlaq_f32(v20, v16[1], v15))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(v18, v16[2], v15)), vcvtq_s32_f32(vmlaq_f32(v17, v16[3], v15))));
      v16 += 4;
    }

    while (v14 != 8);
    CA::OGL::MetalContext::new_image(this);
    v4 = v21;
    *(v21 + 48) = -1098907648;
    v22 = *(v21 + 123);
    *(v21 + 52) = *(v21 + 52) & 0xFFE7FFC0C000FFFFLL | 0x1700110000;
    *(v21 + 122) = 1;
    *(v21 + 123) = v22 & 0xFFE0 | 2;
    v23 = objc_alloc_init(MEMORY[0x1E69741C0]);
    [v23 setTextureType:2];
    [v23 setWidth:128];
    [v23 setHeight:1];
    [v23 setPixelFormat:10];
    [v23 setUsage:1];
    *(v4 + 88) = v23;
    v24 = [v3[438] newTextureWithDescriptor:v23];
    *(v4 + 64) = v24;
    [v24 setLabel:@"com.apple.coreanimation.luma-boost-texture"];
    v25 = *(v4 + 64);
    memset(v26, 0, sizeof(v26));
    v27 = xmmword_183E21470;
    v28 = 1;
    this = [v25 replaceRegion:v26 mipmapLevel:0 withBytes:v29 bytesPerRow:128];
    v3[432] = v4;
  }

  v5 = v3[2];
  *(v5 + 2 * a2 + 144) = 0;
  *(v5 + 8 * a2 + 176) = v4;
  return this;
}

double CA::OGL::MetalContext::bind_gaussian(CA::OGL::MetalContext *this, unsigned int a2, float *a3)
{
  v6 = *(this + 2);
  v10 = CA::OGL::state_image_texture_unit(v6, a2);
  texture = *(this + 430);
  if (!texture)
  {
    texture = CA::OGL::MetalContext::create_texture(this, 1, 6uLL, &CA::OGL::gaussian_data, "gaussian_texture", v7, v8, v9);
    *(this + 430) = texture;
    if (!texture)
    {
      return result;
    }

    v6 = *(this + 2);
  }

  *(v6 + 2 * v10 + 144) = *(texture + 52);
  *(v6 + 8 * v10 + 176) = texture;
  *(v6 + a2 + 17) = *(texture + 55) & 0x3F;
  *(*(this + 2) + 16 * a2 + 96) = xmmword_183E21110;
  result = 0.0078125;
  *a3 = 0x3F80000000000000;
  return result;
}

uint64_t CA::OGL::MetalContext::push_group_marker(CA::OGL::MetalContext *this, const char *a2)
{
  v2 = *(this + 442);
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];

  return [v2 pushDebugGroup:v3];
}

uint64_t CA::OGL::MetalContext::insert_event_marker(CA::OGL::MetalContext *this, const char *a2)
{
  v2 = *(this + 442);
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];

  return [v2 insertDebugSignpost:v3];
}

void CA::OGL::MetalContext::detach_surface(CA::OGL::MetalContext *this)
{
  if (!*(*(this + 85) + 272))
  {
    CA::OGL::MetalContext::stop_encoders(this);
  }

  *(this + 85) = 0;
  *(this + 589) = 0;
}

void CA::OGL::MetalContext::draw_apl_dimming_factor(CA::OGL::Context *a1, unsigned int a2, char *a3, uint64_t a4)
{
  if (*(*(a1 + 2) + 16) != 118)
  {
    __assert_rtn("draw_apl_dimming_factor", "ogl-metal.mm", 8945, "get_texture_function () == OGL_TEX_APL_DIMMING");
  }

  CA::OGL::MetalContext::draw(a1, 4, a2, 1u, a3, 0x30uLL, 0x10u, 0, a2, 0, 0, a4);
}

void CA::OGL::MetalContext::draw_image_rects(CA::OGL::Context *a1, unsigned int a2, char *a3)
{
  if (*(*(a1 + 2) + 16) != 112)
  {
    __assert_rtn("draw_image_rects", "ogl-metal.mm", 8936, "get_texture_function () == OGL_TEX_IMAGE_RECT_BLIT");
  }

  CA::OGL::MetalContext::draw(a1, 4, 4u, a2, a3, 0x28uLL, 8u, 0, a2, 0, 0, 0);
}

void CA::OGL::MetalContext::draw_buffer_image_rects(CA::OGL::Context *a1, unsigned int a2, char *a3, uint64_t a4)
{
  if (*(*(a1 + 2) + 16) != 111)
  {
    __assert_rtn("draw_buffer_image_rects", "ogl-metal.mm", 8927, "get_texture_function () == OGL_TEX_BUFFER_IMAGE_BLIT");
  }

  CA::OGL::MetalContext::draw(a1, 4, 4u, a2, a3, 0, 0, 0, a2, 0, 0, a4);
}

void CA::OGL::MetalContext::draw_path_curves(CA::OGL::Context *a1, int a2, int a3, char *a4)
{
  if (*(*(a1 + 2) + 16) != 107)
  {
    __assert_rtn("draw_path_curves", "ogl-metal.mm", 8901, "get_texture_function () == OGL_TEX_PATH_STROKE_CURVE");
  }

  CA::OGL::MetalContext::draw(a1, 4, 4u, 32 * a2 + 2 * a3, a4, 8uLL, 8u, 0, 6 * a2 + 4 * a3, 0, 0, 0);
}

void CA::OGL::MetalContext::draw_path_rects(CA::OGL::Context *a1, unsigned int a2, char *a3)
{
  if (*(*(a1 + 2) + 16) != 106)
  {
    __assert_rtn("draw_path_rects", "ogl-metal.mm", 8892, "get_texture_function () == OGL_TEX_PATH_RECT");
  }

  CA::OGL::MetalContext::draw(a1, 4, 4u, a2, a3, 0x14uLL, 4u, 0, a2, 0, 0, 0);
}

void CA::OGL::MetalContext::draw_path_cubics(CA::OGL::Context *a1, int a2, char *a3)
{
  v3 = *(*(a1 + 2) + 16);
  if ((v3 - 106) <= 0xFFFFFFFD)
  {
    __assert_rtn("draw_path_cubics", "ogl-metal.mm", 8882, "get_texture_function () == OGL_TEX_PATH_CUBIC_0 || get_texture_function () == OGL_TEX_PATH_CUBIC_1");
  }

  if (v3 == 104)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  CA::OGL::MetalContext::draw(a1, 4, 4u, a2 << v4, a3, 0x28uLL, 8u, 0, a2, 0, 0, 0);
}

void CA::OGL::MetalContext::stroke_lines(CA::OGL::Context *a1, unsigned int a2, char *a3)
{
  if (*(*(a1 + 2) + 16) != 102)
  {
    __assert_rtn("stroke_lines", "ogl-metal.mm", 8873, "get_texture_function () == OGL_TEX_STROKE_LINE");
  }

  CA::OGL::MetalContext::draw(a1, 4, 4u, a2 >> 1, a3, 8uLL, 8u, 0, a2, 0, 0, 0);
}

void CA::OGL::MetalContext::draw_points(CA::OGL::Context *a1, int a2, unsigned int a3, char *a4)
{
  if (*(*(a1 + 2) + 16) - 104 <= 6)
  {
    __assert_rtn("draw_points", "ogl-metal.mm", 8865, "get_texture_function() < OGL_TEX_PATH_FIRST || get_texture_function() > OGL_TEX_PATH_LAST");
  }

  CA::OGL::MetalContext::draw(a1, 0, a3, 1u, a4, 0x10uLL, 4u, a2, a3, 0, 0, 0);
}

void CA::OGL::MetalContext::add_shared_event(uint64_t a1, uint64_t a2)
{
  CA::OGL::MetalContext::SharedEvent::add(a1 + 2776, a2, 0x200000010);

  CA::OGL::MetalContext::SharedEvent::add(a1 + 2912, a2, 0x200000010);
}

uint64_t CA::OGL::MetalContext::purge_shaders(CA::OGL::MetalContext *this)
{
  if (*(this + 416))
  {
    for (i = 0; i != 2048; i += 8)
    {
    }

    free(*(this + 416));
    *(this + 416) = 0;
  }

  CA::OGL::MetalContext::stop_pipeline_queue(this);
  pthread_mutex_lock(this + 39);
  for (j = *(this + 309); j; j = *j)
  {
    v4 = j[5];
    if (v4)
    {

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v4);
    }
  }

  if (*(this + 310))
  {
    v5 = *(this + 309);
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    *(this + 309) = 0;
    v7 = *(this + 308);
    if (v7)
    {
      for (k = 0; k != v7; ++k)
      {
        *(*(this + 307) + 8 * k) = 0;
      }
    }

    *(this + 310) = 0;
  }

  pthread_mutex_unlock(this + 39);
  pthread_mutex_lock((this + 2608));
  for (m = *(this + 323); m; m = *m)
  {
    v10 = m[3];
    if (v10)
    {

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v10);
    }
  }

  if (*(this + 324))
  {
    v11 = *(this + 323);
    if (v11)
    {
      do
      {
        v12 = *v11;
        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    *(this + 323) = 0;
    v13 = *(this + 322);
    if (v13)
    {
      for (n = 0; n != v13; ++n)
      {
        *(*(this + 321) + 8 * n) = 0;
      }
    }

    *(this + 324) = 0;
  }

  return pthread_mutex_unlock((this + 2608));
}

void CA::OGL::MetalContext::stop_pipeline_queue(CA::OGL::MetalContext *this)
{
  v2 = this + 2744;
  atomic_store(1u, this + 2744);
  dispatch_barrier_sync(*(this + 342), &__block_literal_global_75);
  atomic_store(0, v2);
  for (i = *(this + 337); i; i = *i)
  {
    v4 = i[6];
    if (v4)
    {
      v5 = atomic_load(v4);

      v6 = v4[1];
      if (v6)
      {
        _Block_release(v6);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v4);
    }
  }

  if (*(this + 338))
  {
    v7 = *(this + 337);
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

    *(this + 337) = 0;
    v9 = *(this + 336);
    if (v9)
    {
      for (j = 0; j != v9; ++j)
      {
        *(*(this + 335) + 8 * j) = 0;
      }
    }

    *(this + 338) = 0;
  }

  *(this + 680) = 0;
}

unint64_t CA::OGL::MetalContext::subimage_max_rowbytes(CA::OGL::MetalContext *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if ((*(this + 829) & 1) == 0)
  {
    return *(this + 413);
  }

  if (a2 == -1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  result = CA::Render::format_rowbytes(v6, a3);
  if (result)
  {
    v8 = result + 16;
    if (a4 >= 0x100)
    {
      v8 = result;
    }

    if (a4 <= 0x7F)
    {
      v8 = result + 32;
    }

    if (a4 <= 0x3F)
    {
      v8 = result + 64;
    }

    v9 = *(this + 413);
    if (v8 >= v9)
    {
      v10 = *(this + 413);
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

void CA::OGL::MetalContext::warmup_shaders(CA::OGL::MetalContext *this)
{
  v84 = *MEMORY[0x1E69E9840];
  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v1 = os_signpost_id_generate(x_log_get_ogl_metal(void)::log);
  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = x_log_get_ogl_metal(void)::log;
    if (os_signpost_enabled(x_log_get_ogl_metal(void)::log))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v1, "WarmupShaders", "", buf, 2u);
    }
  }

  v3 = mach_absolute_time();
  v4 = CATimeWithHostTime(v3);
  v82 = 0u;
  v83 = 0u;
  *buf = 0u;
  v81 = 0u;
  if (CADeviceUseCIF10::once != -1)
  {
    dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
  }

  v5 = this;
  if (CADeviceUseCIF10::enable_cif10 == 1)
  {
    if (CADeviceUseCompression::once[0] != -1)
    {
      dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
    }

    if (CADeviceUseCompression::enable_compression == 1)
    {
      buf[0] = 552;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v8 = v6 + 1;
    *(buf | (8 * v6)) = 115;
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    if ((CADeviceIsVirtualized::is_virtualized & 1) == 0)
    {
      buf[v8] = 550;
      v8 = v6 | 2;
    }

    v5 = this;
    v7 = v8 + 1;
    buf[v8] = 554;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7 + 1;
  buf[v7] = 80;
  v54 = v1;
  if ((*(v5 + 3317) & 2) != 0)
  {
    buf[v9] = 43;
    v9 = v7 + 2;
  }

  v56 = (v9 + 2);
  *&buf[v9] = xmmword_183E21480;
  v53 = objc_autoreleasePoolPush();
  v10 = [objc_msgSend(*(v5 + 438) "newCommandQueue")];
  v11 = [MEMORY[0x1E6974128] renderPassDescriptor];
  [v11 setFineGrainedBackgroundVisibilityEnabled:1];
  v55 = [*(v5 + 438) newBufferWithLength:1024 options:0];
  v12 = 0;
  v65 = vdupq_n_s64(8uLL);
  v63 = vdupq_n_s64(0x20uLL);
  do
  {
    context = objc_autoreleasePoolPush();
    v62 = v12;
    v70 = buf[v12];
    v69 = 0;
    can_generate_mipmaps_for_format = CA::OGL::MetalContext::can_generate_mipmaps_for_format(v5, &v70, &v69);
    v14 = v70;
    v60 = can_generate_mipmaps_for_format;
    v15 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v70 width:776 height:24 mipmapped:?];
    [v15 setUsage:5];
    [v15 setStorageMode:2];
    v16 = [*(v5 + 438) newTextureWithDescriptor:v15];
    [v15 setAllowGPUOptimizedContents:0];
    v58 = [*(v5 + 438) newTextureWithDescriptor:v15];
    [v15 setAllowGPUOptimizedContents:1];
    v59 = v16;
    [objc_msgSend(objc_msgSend(v11 "colorAttachments")];
    if ((*(v5 + 1968) & 8) != 0)
    {
      v17 = 1;
      do
      {
        v18 = v17;
        if (v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = 2;
        }

        [v15 setPixelFormat:115];
        [v15 setStorageMode:3];
        [objc_msgSend(objc_msgSend(v11 "colorAttachments")];
        [objc_msgSend(objc_msgSend(v11 "colorAttachments")];
        [objc_msgSend(objc_msgSend(v11 "colorAttachments")];
        for (i = 0; i != 3; ++i)
        {
          v21 = qword_183E248A8[i];
          v22 = objc_autoreleasePoolPush();
          [objc_msgSend(objc_msgSend(v11 "colorAttachments")];
          [objc_msgSend(v10 renderCommandEncoderWithDescriptor:{v11), "endEncoding"}];
          objc_autoreleasePoolPop(v22);
        }

        v17 = 0;
      }

      while ((v18 & 1) != 0);
    }

    if ((*(v5 + 3318) & 2) != 0)
    {
      [objc_msgSend(objc_msgSend(v11 "colorAttachments")];
      v23 = [v10 renderCommandEncoderWithDescriptor:v11];
      [v15 setUsage:7];
      [v15 setStorageMode:2];
      v64 = [*(v5 + 438) newTextureWithDescriptor:v15];
      v24 = 0;
      v25 = v14;
      v26 = v5;
      do
      {
        v27 = byte_183E248C0[v24];
        v28 = *(&CA::OGL::MetalContext::tile_shader_type_info + 16 * byte_183E248C0[v24] + 8);
        v77.i32[0] = 0;
        v29 = [v23 tileWidth] / v28;
        v30 = [v23 tileHeight];
        v67.i16[0] = COERCE_UNSIGNED_INT(1.0);
        v31 = v30 / v28;
        [v23 setRenderPipelineState:{CA::OGL::MetalContext::get_tile_pipeline(v26, v27, v25)}];
        [v23 setTileTexture:v64 atIndex:0];
        [v23 setTileBytes:&v77 length:4 atIndex:9];
        [v23 setTileBytes:&v67 length:2 atIndex:6];
        v79[0] = v29;
        v79[1] = v31;
        v79[2] = 1;
        [v23 dispatchThreadsPerTile:v79];
        ++v24;
      }

      while (v24 != 3);
      v32 = *(v26 + 3316);
      if ((v32 & 0x80000) != 0)
      {
        for (j = 0; j != 7; ++j)
        {
          v34 = byte_183E248C3[j];
          v67.i32[2] = 0;
          v67.i64[0] = 0;
          [v23 setRenderPipelineState:{CA::OGL::MetalContext::get_tile_pipeline(v26, v34, v25)}];
          [v23 setTileTexture:v64 atIndex:0];
          [v23 setTileBytes:&v67 length:12 atIndex:0];
          [v23 setTileBytes:v79 length:54 atIndex:1];
          v77 = v63;
          v78 = 1;
          [v23 dispatchThreadsPerTile:&v77];
        }

        v32 = *(v26 + 3316);
      }

      v35 = v26;
      v14 = v25;
      if ((v32 & 0x100000) != 0)
      {
        tile_pipeline = CA::OGL::MetalContext::get_tile_pipeline(v35, 0xBu, v25);
        v37 = [v23 tileWidth] >> 1;
        v38 = [v23 tileHeight] >> 1;
      }

      else
      {
        tile_pipeline = CA::OGL::MetalContext::get_tile_pipeline(v35, 0xCu, v25);
        v37 = [v23 tileWidth] >> 2;
        v38 = [v23 tileHeight] >> 2;
      }

      v77.i64[0] = 2097184;
      [v23 setRenderPipelineState:tile_pipeline];
      [v23 setTileBuffer:v55 offset:0 atIndex:2];
      [v23 setTileBytes:&v77 length:8 atIndex:0];
      v79[0] = v37;
      v79[1] = v38;
      v79[2] = 1;
      [v23 dispatchThreadsPerTile:v79];
      [v23 endEncoding];
    }

    v39 = [v10 blitCommandEncoder];
    v40 = v65;
    if (v14 != 550)
    {
      for (k = 0; k != 4; ++k)
      {
        if (k)
        {
          v42 = v58;
        }

        else
        {
          v42 = v59;
        }

        memset(v79, 0, 24);
        v77 = v40;
        v78 = 1;
        if (k >= 2)
        {
          v43 = v58;
        }

        else
        {
          v43 = v59;
        }

        v67 = v40;
        v68 = 0;
        [v39 copyFromTexture:v42 sourceSlice:0 sourceLevel:0 sourceOrigin:v79 sourceSize:&v77 toTexture:v43 destinationSlice:0 destinationLevel:0 destinationOrigin:&v67];
        v40 = v65;
      }
    }

    if (v60)
    {
      [v39 generateMipmapsForTexture:{v59, *v40.i64}];
    }

    [v39 endEncoding];
    objc_autoreleasePoolPop(context);
    v12 = v62 + 1;
    v5 = this;
  }

  while (v62 + 1 != v56);
  objc_autoreleasePoolPop(v53);
  if ((*(this + 1968) & 0x400) != 0)
  {
    v45 = &qword_1E6DEE0D0;
    for (m = 20880; m; m -= 40)
    {
      if ((*(v45 - 8) != 1 || [*(this + 438) supportsFamily:*v45]) && (*(v45 + 8) != 1 || (objc_msgSend(*(this + 438), "supportsFamily:", v45[2]) & 1) == 0))
      {
        memset(v79, 0, 32);
        CA::OGL::MetalContext::Pipeline::Spec::decode_name(v79, *(v45 - 2));
        if ((v79[3] & 0x20000) == 0)
        {
          if ((*(&v79[1] + 6) & 0x4000000) != 0)
          {
            if ((byte_1ED4E9827 & 1) == 0)
            {
LABEL_72:
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              v47 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
              v48 = v47;
              if (v47)
              {
                *(v47 + 12) = 0;
                *v47 = 0;
                *(v47 + 1) = 0;
                *(v47 + 2) = 0;
                *(v47 + 26) = 1;
                *(v47 + 24) = 1;
                v49 = this;
                v50 = this;
                v51 = v48;
              }

              else
              {
                MEMORY[0x18] = 1;
                v49 = this;
                v50 = this;
                v51 = 0;
              }

              CA::OGL::MetalContext::dispatch_async_pipeline(v50, v79, v51, 1, 0);
              v77.i64[0] = v79;
              std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::__emplace_unique_key_args<CA::OGL::MetalContext::Pipeline::Spec,std::piecewise_construct_t const&,std::tuple<CA::OGL::MetalContext::Pipeline::Spec const&>,std::tuple<>>(v49 + 335, v79)[6] = v48;
              v52 = *(v49 + 341);
              *(v49 + 341) = v52 + 1;
              *(v48 + 2) = v52;
              *(v48 + 25) = (*(&v79[1] + 6) & 0x4000000) == 0;
              ++*(v49 + 680);
            }
          }

          else if ((CA::OGL::MetalContext::texture_function_info[8 * (BYTE6(v79[1]) & 0x7F)] & 0x3F) != 0)
          {
            goto LABEL_72;
          }
        }
      }

      v45 += 5;
    }
  }

  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if ((CADeviceHasHardwareAcceleratedHDR::has_capability & 1) == 0)
  {
    v44 = *(this + 342);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2CA3OGL12MetalContext14warmup_shadersEb_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_async(v44, block);
  }

  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = ___ZN2CA3OGL12MetalContext14warmup_shadersEb_block_invoke_2;
  v71[3] = &__block_descriptor_124_e5_v8__0l;
  v71[4] = this;
  v71[5] = v54;
  *&v71[6] = v4;
  v76 = v56;
  v72 = *buf;
  v73 = v81;
  v74 = v82;
  v75 = v83;
  dispatch_barrier_sync(*(this + 342), v71);
}

void ___ZN2CA3OGL12MetalContext14warmup_shadersEb_block_invoke(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = atomic_load((v1 + 2744));
  if ((v2 & 1) == 0)
  {
    v3 = *(v1 + 3504);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___ZN2CA14CAHDRProcessor14warmup_shadersEPv_block_invoke;
    v4[3] = &unk_1E6DFA588;
    v4[4] = v3;
    if (CA::CAHDRProcessor::warmup_shaders(void *)::once[0] != -1)
    {
      dispatch_once(CA::CAHDRProcessor::warmup_shaders(void *)::once, v4);
    }
  }
}

void ___ZN2CA3OGL12MetalContext14warmup_shadersEb_block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v3 = *(a1 + 40);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = x_log_get_ogl_metal(void)::log;
    if (os_signpost_enabled(x_log_get_ogl_metal(void)::log))
    {
      v5 = atomic_load((v2 + 2744));
      v34 = 67240192;
      LODWORD(v35) = v5 & 1;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v4, OS_SIGNPOST_INTERVAL_END, v3, "WarmupShaders", "cancelled=%{public, name=cancelled}u", &v34, 8u);
    }
  }

  v6 = mach_absolute_time();
  v7 = CATimeWithHostTime(v6);
  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v8 = x_log_get_ogl_metal(void)::log;
  if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_INFO))
  {
    v9 = v7 - *(a1 + 48);
    if (*(a1 + 120) < 1)
    {
      v27 = "N/A";
      v21 = "N/A";
      v15 = "N/A";
      v12 = "N/A";
    }

    else
    {
      Name = MTLPixelFormatGetName();
      if (!strncmp(Name, "MTLPixelFormat", 0xEuLL))
      {
        v11 = 14;
      }

      else
      {
        v11 = 0;
      }

      v12 = &Name[v11];
      if (*(a1 + 120) < 2)
      {
        v27 = "N/A";
        v21 = "N/A";
        v15 = "N/A";
      }

      else
      {
        v13 = MTLPixelFormatGetName();
        if (!strncmp(v13, "MTLPixelFormat", 0xEuLL))
        {
          v14 = 14;
        }

        else
        {
          v14 = 0;
        }

        v15 = &v13[v14];
        if (*(a1 + 120) >= 3)
        {
          v16 = MTLPixelFormatGetName();
          if (!strncmp(v16, "MTLPixelFormat", 0xEuLL))
          {
            v17 = 14;
          }

          else
          {
            v17 = 0;
          }

          v18 = &v16[v17];
          if (*(a1 + 120) < 4)
          {
            v27 = "N/A";
            v21 = "N/A";
          }

          else
          {
            v19 = MTLPixelFormatGetName();
            if (!strncmp(v19, "MTLPixelFormat", 0xEuLL))
            {
              v20 = 14;
            }

            else
            {
              v20 = 0;
            }

            v21 = &v19[v20];
            if (*(a1 + 120) >= 5)
            {
              v22 = MTLPixelFormatGetName();
              if (!strncmp(v22, "MTLPixelFormat", 0xEuLL))
              {
                v23 = 14;
              }

              else
              {
                v23 = 0;
              }

              v24 = &v22[v23];
              if (*(a1 + 120) >= 6)
              {
                v25 = MTLPixelFormatGetName();
                if (!strncmp(v25, "MTLPixelFormat", 0xEuLL))
                {
                  v26 = 14;
                }

                else
                {
                  v26 = 0;
                }

                v27 = &v25[v26];
                if (*(a1 + 120) < 7)
                {
                  v30 = "N/A";
                  v33 = "N/A";
                }

                else
                {
                  v28 = MTLPixelFormatGetName();
                  if (!strncmp(v28, "MTLPixelFormat", 0xEuLL))
                  {
                    v29 = 14;
                  }

                  else
                  {
                    v29 = 0;
                  }

                  v30 = &v28[v29];
                  if (*(a1 + 120) < 8)
                  {
                    v33 = "N/A";
                  }

                  else
                  {
                    v31 = MTLPixelFormatGetName();
                    if (!strncmp(v31, "MTLPixelFormat", 0xEuLL))
                    {
                      v32 = 14;
                    }

                    else
                    {
                      v32 = 0;
                    }

                    v33 = &v31[v32];
                  }
                }

                goto LABEL_48;
              }

              v27 = "N/A";
LABEL_47:
              v30 = "N/A";
              v33 = "N/A";
LABEL_48:
              v34 = 134220034;
              v35 = v9;
              v36 = 2080;
              v37 = v12;
              v38 = 2080;
              v39 = v15;
              v40 = 2080;
              v41 = v18;
              v42 = 2080;
              v43 = v21;
              v44 = 2080;
              v45 = v24;
              v46 = 2080;
              v47 = v27;
              v48 = 2080;
              v49 = v30;
              v50 = 2080;
              v51 = v33;
              _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_INFO, "Render pipeline warmup took %0.2fs, MTLPixelFormats: {%s, %s, %s, %s, %s, %s, %s, %s}\n", &v34, 0x5Cu);
              return;
            }

            v27 = "N/A";
          }

LABEL_46:
          v24 = "N/A";
          goto LABEL_47;
        }

        v27 = "N/A";
        v21 = "N/A";
      }
    }

    v18 = "N/A";
    goto LABEL_46;
  }
}

BOOL CA::OGL::MetalContext::add_submitted_callback(void *a1, void *aBlock)
{
  if (!a1[441])
  {
    return 0;
  }

  v3 = _Block_copy(aBlock);
  v4 = a1[453];
  v5 = a1[454];
  if (v4 >= v5)
  {
    v8 = a1[452];
    v9 = v4 - v8;
    v10 = (v4 - v8) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 61))
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v14 = (v4 - v8) >> 3;
    v15 = (8 * v10);
    v16 = (8 * v10 - 8 * v14);
    *v15 = v3;
    v6 = v15 + 1;
    memcpy(v16, v8, v9);
    a1[452] = v16;
    a1[453] = v6;
    a1[454] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v4 = v3;
    v6 = v4 + 8;
  }

  a1[453] = v6;
  return a1[441] != 0;
}

uint64_t CA::OGL::MetalContext::load_pipeline(id *this, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v11 = &qword_1E6DEE0D0;
    v12 = 20880;
    while (1)
    {
      v13 = objc_autoreleasePoolPush();
      if ((*(v11 - 8) != 1 || [this[438] supportsFamily:*v11]) && (*(v11 + 8) != 1 || (objc_msgSend(this[438], "supportsFamily:", v11[2]) & 1) == 0))
      {
        v19 = 0u;
        v20 = 0u;
        v14 = *(v11 - 2);
        CA::OGL::MetalContext::Pipeline::Spec::decode_name(&v19, v14);
        if ((BYTE7(v20) & 1) == 0)
        {
          pipeline_state = CA::OGL::MetalContext::load_pipeline_state(this, [MEMORY[0x1E696AEC0] stringWithUTF8String:v14]);
          if (!pipeline_state)
          {
            printf("Failed to load precompiled pipeline: %s\n", v14);
            objc_autoreleasePoolPop(v13);
            return 0;
          }
        }
      }

      objc_autoreleasePoolPop(v13);
      v11 += 5;
      v12 -= 40;
      if (!v12)
      {
        return 1;
      }
    }
  }

  v4 = [&unk_1EF22FB60 objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a2)}];
  if (!v4)
  {
    printf("Pipeline %s does not exist in offline compilation manifest\n");
    return 0;
  }

  v5 = &(&CA::OGL::MetalContext::offline_compilation_manifest)[5 * [v4 intValue]];
  v6 = *(v5 + 24);
  v7 = v5[4];
  if (v5[1])
  {
    v8 = v5[2];
    if (([this[438] supportsFamily:v8] & 1) == 0)
    {
      [(__CFString *)CA::OGL::mtl_gpu_family_name(v8 UTF8String];
      printf("Pipeline %s requires %s\n");
      return 0;
    }
  }

  if ((v6 & 1) != 0 && [this[438] supportsFamily:v7])
  {
    [(__CFString *)CA::OGL::mtl_gpu_family_name(v7 UTF8String];
    printf("Pipeline %s excludes %s\n");
    return 0;
  }

  v16 = CA::OGL::MetalContext::load_pipeline_state(this, [MEMORY[0x1E696AEC0] stringWithUTF8String:a2]);
  if (v16)
  {
    v17 = v16;
    printf("Pipeline %s loaded successfully\n", a2);

    return 1;
  }

  else
  {
    printf("Failed to load precompiled pipeline: %s\n");
    return 0;
  }
}

__CFString *CA::OGL::mtl_gpu_family_name(CA::OGL *this, MTLGPUFamily a2)
{
  if (this <= 1007)
  {
    if (this <= 1003)
    {
      if (this == 1001)
      {
        return @"apple1";
      }

      if (this == 1002)
      {
        return @"apple2";
      }

      if (this == 1003)
      {
        return @"apple3";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown:%u", this];
    }

    if (this > 1005)
    {
      if (this == 1006)
      {
        return @"apple6";
      }

      else
      {
        return @"apple7";
      }
    }

    else if (this == 1004)
    {
      return @"apple4";
    }

    else
    {
      return @"apple5";
    }
  }

  else
  {
    if (this <= 3000)
    {
      if (this <= 1009)
      {
        if (this == 1008)
        {
          return @"apple8";
        }

        else
        {
          return @"apple9";
        }
      }

      if (this == 1010)
      {
        return @"apple10";
      }

      if (this == 2002)
      {
        return @"mac2";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown:%u", this];
    }

    if (this > 3002)
    {
      if (this == 3003)
      {
        return @"common3";
      }

      if (this == 5001)
      {
        return @"metal3";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown:%u", this];
    }

    if (this == 3001)
    {
      return @"common1";
    }

    else
    {
      return @"common2";
    }
  }
}

BOOL CA::OGL::MetalContext::compile_shader(void **this, char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = *a2;
  if ((v5 - 85) < 2)
  {
    v15[1] = 0;
    *&v16[0] = a2;
    CA::OGL::MetalContext::decode_segment(v16, &v15[1], byte_1EF1FB7F8, 8u);
    v11 = [CA::OGL::MetalContext::VertexShader::Spec::encode_segment(&v15[1]) UTF8String];
    printf("Compiling vertex shader: %s\n", v11);
    vertex_shader = CA::OGL::MetalContext::create_vertex_shader(this, &v15[1], 0);
    printf("Resulting function: %p\n", vertex_shader);
    if (!vertex_shader)
    {
      goto LABEL_11;
    }

    if (x_malloc_get_zone::once == -1)
    {
LABEL_10:
      malloc_zone_free(malloc_zone, vertex_shader);
      goto LABEL_11;
    }

LABEL_14:
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    goto LABEL_10;
  }

  if (v5 == 84)
  {
    memset(v16, 0, 19);
    CA::OGL::MetalContext::FragmentShader::Spec::decode_name(v16, a2);
    v12 = [CA::OGL::MetalContext::FragmentShader::Spec::name(v16) UTF8String];
    printf("Compiling fragment shader: %s\n", v12);
    vertex_shader = CA::OGL::MetalContext::create_fragment_shader(this, v16, 0);
    printf("Resulting function: %p\n", vertex_shader);
    if (!vertex_shader)
    {
      goto LABEL_11;
    }

    if (x_malloc_get_zone::once == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v5 != 80)
  {
    printf("Unrecognized shader spec: %s\n", a2);
    v13 = 0;
    goto LABEL_12;
  }

  memset(v16, 0, sizeof(v16));
  CA::OGL::MetalContext::Pipeline::Spec::decode_name(v16, a2);
  v6 = MEMORY[0x1E696AEC0];
  v7 = CA::OGL::MetalContext::Pipeline::Spec::encode_segment(v16);
  v8 = [objc_msgSend(v6 stringWithFormat:@"%@_%@", v7, CA::OGL::MetalContext::FragmentShader::Spec::name(v16)), "UTF8String"];
  printf("Compiling render pipeline: %s\n", v8);
  v15[0] = 32;
  vertex_shader = CA::OGL::MetalContext::create_pipeline_state(this, v16, v15, 0);
  *&v15[1] = 0;
  CA::OGL::MetalContext::format_new_pipeline_flags_string(v15[0], &v15[1], v10);
  printf("Resulting pipeline state: %p (flags=%s)\n", vertex_shader, &v15[1]);

LABEL_11:
  v13 = vertex_shader != 0;
LABEL_12:
  objc_autoreleasePoolPop(v4);
  return v13;
}

double CA::OGL::MetalContext::get_metal_state(CA::OGL::MetalContext *this, uint64_t a2)
{
  v4 = *(this + 451);
  if (v4)
  {

    *(this + 451) = 0;
  }

  v5 = *(this + 85);
  if (v5 && (*(v5 + 286) && (*(this + 1968) & 2) == 0 || (byte_1ED4E9841 & 1) != 0 || *(this + 485) != v5))
  {
    CA::OGL::MetalContext::stop_encoders(this);
  }

  v6 = *(this + 3528);
  *a2 = v6;
  *(a2 + 16) = *(this + 964);
  v7 = v6;
  if (v6)
  {
    v8 = *(this + 440);
    if (v6 != v8)
    {

      *(this + 440) = *(this + 441);
      v7 = *(this + 441);
    }

    *(a2 + 24) = CA::OGL::MetalContext_FlushSharedState;
    *(a2 + 32) = this;
  }

  else
  {
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }

  CA::OGL::MetalContext::copy_submitted_callbacks(this, v7);
  *(this + 1968) &= ~1u;
  *(this + 441) = 0;
  *(this + 442) = 0;
  result = 0.0;
  *(this + 3560) = 0u;
  *(this + 3576) = 0u;
  *(this + 449) = 0;
  *(this + 483) = 0;
  *(this + 485) = 0;
  *(this + 484) = 0;
  return result;
}

uint64_t CA::OGL::MetalContext::set_metal_state(uint64_t a1, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  if (*(a1 + 3528))
  {
    __assert_rtn("set_metal_state", "ogl-metal.mm", 10998, "_command_buffer == nil");
  }

  if (*(a1 + 3536))
  {
    __assert_rtn("set_metal_state", "ogl-metal.mm", 10999, "_encoder == nil");
  }

  v4 = *(a1 + 3608);
  if (v4)
  {

    *(a1 + 3608) = 0;
  }

  v5 = *(a1 + 672);
  *(a1 + 3880) = v5;
  if (*a2)
  {
    *(a1 + 3528) = *a2;
    v6 = *(a2 + 32);
    if (v6 != a1)
    {
      *(a1 + 3864) = *(a2 + 24);
      *(a1 + 3872) = v6;
    }

    if ((*(a2 + 16) & 1) == 0)
    {
      v7 = *(a1 + 4760);
      *(v7 + 16) = atomic_fetch_add((a1 + 4744), 1uLL) + 1;
      *(v7 + 40) = 0;
      v8 = *(a1 + 3528);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = ___ZN2CA3OGL12MetalContext26prepare_new_command_bufferEv_block_invoke;
      v14[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
      v14[4] = a1;
      [v8 addCompletedHandler:v14];
    }

    v9 = *(a2 + 8);
    if (v9)
    {
      if ((*(v5 + 147) & 0x20) != 0)
      {
        __assert_rtn("set_metal_state", "ogl-metal.mm", 11023, "!surf->needs_clear");
      }

      *(a1 + 3536) = v9;
      *(a1 + 3560) = [v9 methodForSelector:sel_setRenderPipelineState_];
      *(a1 + 3568) = [*(a1 + 3536) methodForSelector:sel_setFragmentTexture_atIndex_];
      *(a1 + 3576) = [*(a1 + 3536) methodForSelector:sel_setFragmentSamplerState_atIndex_];
      *(a1 + 3584) = [*(a1 + 3536) methodForSelector:sel_setScissorRect_];
      *(a1 + 3592) = [*(a1 + 3536) methodForSelector:sel_drawPrimitives_vertexStart_vertexCount_instanceCount_];
      if (*(v5 + 286))
      {
        v12 = *(a1 + 3936);
        if (v12 & 2) == 0 || (byte_1ED4E9841)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (byte_1ED4E9841)
        {
LABEL_15:
          CA::OGL::MetalContext::stop_encoders(a1);
          return CA::OGL::MetalBufferPool::set_encoder(*(a1 + 4760), *(a1 + 3536));
        }

        v12 = *(a1 + 3936);
      }

      *(a1 + 3936) = v12 | 1;
      *(a1 + 3856) = 0;
      CA::OGL::MetalContext::update_encoder_state(a1, v5, *(a2 + 16), v10, v11);
    }
  }

  return CA::OGL::MetalBufferPool::set_encoder(*(a1 + 4760), *(a1 + 3536));
}

void CA::OGL::MetalContext::set_destination_offset(CA::OGL::MetalContext *this, int a2, int a3)
{
  *(this + 858) = a2;
  *(this + 859) = a3;
  v3 = *(this + 427);
  if (v3)
  {
    *(v3 + 48) = -a2;
    *(v3 + 52) = -a3;
    CA::OGL::MetalContext::update_projection_matrix(this);
    ++*(this + 166);
  }
}

void CA::OGL::MetalContext::set_async_compile_queue(dispatch_object_t *this, NSObject *a2)
{
  if (this[342] != a2)
  {
    CA::OGL::MetalContext::stop_pipeline_queue(this);
    dispatch_release(this[342]);
    this[342] = a2;

    dispatch_retain(a2);
  }
}

void CA::OGL::MetalContext::free_destination_textures(CA::OGL::MetalContext *this, unsigned int a2, void **a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v5 = *a3++;

      --v4;
    }

    while (v4);
  }
}

void *CA::OGL::MetalContext::alloc_destination_texture(CA::OGL::MetalContext *this, IOSurfaceRef buffer)
{
  v37 = *MEMORY[0x1E69E9840];
  if (buffer)
  {
    PixelFormat = IOSurfaceGetPixelFormat(buffer);
    ProtectionOptions = IOSurfaceGetProtectionOptions();
  }

  else
  {
    PixelFormat = 0;
    ProtectionOptions = 0;
  }

  *(this + 455) = ProtectionOptions;
  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  v8 = Height;
  v9 = *(this + 411);
  if (Width > v9 || Height > v9)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v11 = x_log_get_ogl_metal(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v33 = 134218240;
    *v34 = Width;
    *&v34[8] = 2048;
    v35 = v8;
    v12 = "%zu by %zu iosurface is too large for GPU\n";
    v13 = v11;
    v14 = 22;
    goto LABEL_52;
  }

  v15 = CA::OGL::four_cc_to_mtl_format(PixelFormat, *(this + 829));
  if (v15 == 1)
  {
    v16 = 10;
  }

  else
  {
    v16 = v15;
  }

  if (!v16)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v20 = x_log_get_ogl_metal(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v23 = PixelFormat >> 24;
    v24 = MEMORY[0x1E69E9830];
    if ((PixelFormat & 0x80000000) != 0)
    {
      v25 = __maskrune(v23, 0x40000uLL);
    }

    else
    {
      v25 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000;
    }

    if (v25)
    {
      v26 = PixelFormat >> 24;
    }

    else
    {
      v26 = 32;
    }

    if (BYTE2(PixelFormat) <= 0x7Fu)
    {
      v27 = *(v24 + 4 * BYTE2(PixelFormat) + 60) & 0x40000;
    }

    else
    {
      v27 = __maskrune(BYTE2(PixelFormat), 0x40000uLL);
    }

    if (v27)
    {
      v28 = SBYTE2(PixelFormat);
    }

    else
    {
      v28 = 32;
    }

    if (BYTE1(PixelFormat) <= 0x7Fu)
    {
      v29 = *(v24 + 4 * BYTE1(PixelFormat) + 60) & 0x40000;
    }

    else
    {
      v29 = __maskrune(BYTE1(PixelFormat), 0x40000uLL);
    }

    if (v29)
    {
      v30 = SBYTE1(PixelFormat);
    }

    else
    {
      v30 = 32;
    }

    if (PixelFormat <= 0x7Fu)
    {
      v31 = *(v24 + 4 * PixelFormat + 60) & 0x40000;
    }

    else
    {
      v31 = __maskrune(PixelFormat, 0x40000uLL);
    }

    v33 = 67109888;
    v32 = PixelFormat;
    *v34 = v26;
    *&v34[4] = 1024;
    if (!v31)
    {
      v32 = 32;
    }

    *&v34[6] = v28;
    LOWORD(v35) = 1024;
    *(&v35 + 2) = v30;
    HIWORD(v35) = 1024;
    v36 = v32;
    v12 = "Unsupported IOSurface pixel format: %c%c%c%c";
    v13 = v20;
    v14 = 26;
LABEL_52:
    _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, v12, &v33, v14);
    return 0;
  }

  v17 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v16 width:Width height:v8 mipmapped:0];
  [v17 setUsage:5];
  [v17 setProtectionOptions:*(this + 455)];
  v18 = [*(this + 438) newTextureWithDescriptor:v17 iosurface:buffer plane:0];
  v19 = v18;
  if (v18)
  {
    [v18 setLabel:@"com.apple.coreanimation.iosurface-destination"];
  }

  else
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v22 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33) = 0;
      _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, "Unable to create MTLTexture for destination IOSurface\n", &v33, 2u);
    }
  }

  return v19;
}

void CA::OGL::MetalContext::purge_iosurface_cache(os_unfair_lock_s *this, __IOSurface *a2)
{
  if (a2)
  {
    os_unfair_lock_lock(this + 850);
    v4 = *&this[852]._os_unfair_lock_opaque;
    if (v4)
    {
      x_hash_table_remove(v4, a2);
    }

    os_unfair_lock_unlock(this + 850);
  }
}

BOOL CA::OGL::MetalContext::set_destination_iosurface(os_unfair_lock_s *this, __IOSurface *a2, int a3, int a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24[0] = 0;
  if (a2)
  {
    os_unfair_lock_lock(this + 850);
    v8 = *&this[852]._os_unfair_lock_opaque;
    if (v8)
    {
      v9 = x_hash_table_lookup(v8, a2, 0);
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
    v11 = 0;
    v12 = &v23;
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = v12;
      while (!v9)
      {
        v16 = v13;
        v13 = 0;
        *v15 = 0;
        v15 = v24;
        if ((v16 & 1) == 0)
        {
          os_unfair_lock_unlock(this + 850);
          v23 = CA::OGL::MetalContext::alloc_destination_texture(this, a2);
          operator new[]();
        }
      }

      v17 = *(v9 + 8 * v11);
      v13 = 0;
      *v12 = v17;
      if (v17)
      {
        ++v10;
      }

      v12 = v24;
      v11 = 1;
    }

    while ((v14 & 1) != 0);
    os_unfair_lock_unlock(this + 850);
  }

  else
  {
    v10 = 0;
  }

  *&this[910]._os_unfair_lock_opaque = 0;
  CA::OGL::MetalContext::set_destination_textures(this, 0, &v23, v10, a3, a4);
  if (v10)
  {
    v18 = &v23;
    v19 = v10;
    do
    {
      v20 = *v18++;

      --v19;
    }

    while (v19);
  }

  if (a2)
  {
    v21 = v10 == 0;
  }

  else
  {
    v21 = 0;
  }

  return !v21;
}

void CA::OGL::MetalContext::set_destination_textures(CA::OGL::MetalContext *this, uint64_t a2, id *a3, unint64_t a4, int a5, int a6)
{
  v12 = *(this + 84);
  if (v12)
  {
    *(this + 1968) |= 0x100u;
    CA::OGL::Context::pop_surface(this);
    CA::OGL::Context::release_surface(this, v12);
    *(this + 1968) &= ~0x100u;
    if (*(this + 84))
    {
      __assert_rtn("set_destination_textures", "ogl-metal.mm", 10664, "current_surface () == nullptr");
    }
  }

  *(this + 3416) = 0u;
  if (a4)
  {
    v13 = *a3;
    v14 = [*a3 pixelFormat];
    has_alpha_plane = CA::OGL::metal_pixel_format_has_alpha_plane(v14, v15);
    *(this + 455) = [v13 protectionOptions];
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v17 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x138uLL, 0x10A004045BE2C27uLL);
    v18 = v17;
    v17->i32[0] = 1;
    if (has_alpha_plane)
    {
      v19 = 1039;
    }

    else
    {
      v19 = 1031;
    }

    v17[11].i32[1] = v19;
    v20 = v17[38].i16[2] & 0xFD40 | a4 & 0xF;
    v17[18].i32[0] = v17[18].i32[0] & 0xFFFFFFE | 0x90000000;
    v17[18].i16[2] |= 1u;
    v17[20] = this;
    if (a5)
    {
      v21 = 640;
    }

    else
    {
      v21 = 128;
    }

    v17[38].i16[2] = v21 | v20;
    v17[5].i32[0] = [v13 width];
    v18[5].i32[1] = [v13 height];
    v18[9] = [v13 protectionOptions];
    v22 = v18[5].i32[0];
    v23 = v18[5].i32[1];
    v18[32].i32[0] = v22;
    v18[32].i32[1] = v23;
    v18[6] = vneg_s32(*(this + 3432));
    v18[7].i32[0] = v22;
    v18[7].i32[1] = v23;
    v18[11].i32[0] = *(this + 872);
    if (a4 > 3)
    {
      __assert_rtn("set_destination_textures", "ogl-metal.mm", 10708, "count <= MAX_COLOR_ATTACHMENTS");
    }

    v33 = a6;
    v24 = 0;
    do
    {
      v25 = a3[v24];
      v26 = &v18[v24];
      v26[21] = v25;
      v26[24] = [v25 pixelFormat];
      if ([v25 storageMode] == 3)
      {
        v18[35].i16[3] |= 1 << v24;
      }

      else
      {
        v18[18].i32[0] ^= 1u;
      }

      ++v24;
    }

    while (a4 != v24);
    if (!a2 || a4 == 1)
    {
      CA::OGL::MetalContext::add_memoryless_textures(this, v18);
      v27 = v33;
    }

    else
    {
      v27 = v33;
      if ((*(this + 1968) & 8) != 0)
      {
        v28 = v18[35].i16[3] != 0;
        v18[36].i16[0] = v18[35].i16[3];
        *(this + 1968) = *(this + 1968) & 0xFFFD | (2 * v28);
      }
    }

    if (v27 && (*(this + 1968) & 0x10) != 0)
    {
      v18[11].i32[1] |= 0x2000u;
      CA::OGL::MetalContext::add_path_buffer_texture(this, v18);
    }

    v29 = [v13 pixelFormat];
    v30 = v29;
    if ((v29 - 550) >= 6)
    {
      v31 = v18[11].i32[1];
    }

    else
    {
      v31 = v18[11].i32[1] | 0x100;
    }

    v32 = v31 | 0x20;
    if (v29 == 115)
    {
      v31 |= 0x10u;
    }

    if (v29 == 125)
    {
      v31 = v32;
    }

    v18[11].i32[1] = v31 | 0x400;
    CA::OGL::Context::track_surface(this, v18);
    CA::OGL::Context::push_surface(this, v18, 0, 0, 0);
    *(this + 427) = v18;
    *(this + 428) = v30;
  }

  else
  {
    *(this + 455) = 0;
  }
}

void CA::OGL::iosurface_textures_destroy_value(id *a1)
{

  JUMPOUT(0x1865EA980);
}

void CA::OGL::MetalContext::~MetalContext(CA::OGL::MetalContext *this)
{
  CA::OGL::MetalContext::~MetalContext(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  CA::OGL::MetalContext::finish(this);
  CA::OGL::MetalContext::stop_idle_collect_timer(this);
  os_unfair_lock_lock(this + 850);
  v2 = *(this + 426);
  if (v2)
  {
    x_hash_table_free(v2);
    *(this + 426) = 0;
  }

  os_unfair_lock_unlock(this + 850);

  v3 = *(this + 430);
  if (v3)
  {
    CA::OGL::MetalContext::delete_image(this, v3);
    v4 = *(this + 430);
    if (v4)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v4);
    }
  }

  v5 = *(this + 431);
  if (v5)
  {
    CA::OGL::MetalContext::delete_image(this, v5);
    v6 = *(this + 431);
    if (v6)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v6);
    }
  }

  dispatch_sync(*(this + 590), &__block_literal_global_55);

  *(this + 486) = 0;
  *(this + 487) = 0;
  CA::OGL::MetalContext::purge_shaders(this);
  dispatch_release(*(this + 342));
  for (i = 2752; i != 2776; i += 8)
  {
  }

  for (j = 3192; j != 3272; j += 8)
  {
  }

  for (k = 5136; k != 5168; k += 16)
  {
    v10 = 0;
    v11 = this + k;
    do
    {

      v10 += 8;
    }

    while (v10 != 16);
  }

  for (m = (this + 3168); ; m[3])
  {
    m = *m;
    if (!m)
    {
      break;
    }
  }

  v13 = *(this + 595);
  if (v13)
  {
    if (*(v13 + 48))
    {
      CA::OGL::MetalBufferPool::retire_metal_buffer(*(this + 595));
    }

    v14 = *(v13 + 248);
    if (*(v13 + 256) != v14)
    {
      v15 = *(v13 + 272);
      v16 = (v14 + 8 * (v15 >> 9));
      v17 = (*v16 + 8 * (v15 & 0x1FF));
      v18 = *(v14 + (((*(v13 + 280) + v15) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v13 + 280) + v15) & 0x1FF);
      while (v17 != v18)
      {

        if ((v17 - *v16) == 4096)
        {
          v19 = v16[1];
          ++v16;
          v17 = v19;
        }
      }
    }

    v20 = *(v13 + 296);
    if (*(v13 + 304) != v20)
    {
      v21 = *(v13 + 320);
      v22 = (v20 + 8 * (v21 >> 9));
      v23 = (*v22 + 8 * (v21 & 0x1FF));
      v24 = *(v20 + (((*(v13 + 328) + v21) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v13 + 328) + v21) & 0x1FF);
      while (v23 != v24)
      {

        if ((v23 - *v22) == 4096)
        {
          v25 = v22[1];
          ++v22;
          v23 = v25;
        }
      }
    }

    v26 = *(v13 + 336);
    if (v26 != (v13 + 344))
    {
      do
      {

        v27 = v26[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v26[2];
            v29 = *v28 == v26;
            v26 = v28;
          }

          while (!v29);
        }

        v26 = v28;
      }

      while (v28 != (v13 + 344));
    }

    std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*(v13 + 344));
    std::deque<objc_object  {objcproto9MTLBuffer}*>::~deque[abi:nn200100](v13 + 288);
    std::deque<objc_object  {objcproto9MTLBuffer}*>::~deque[abi:nn200100](v13 + 240);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v13);
  }

  dispatch_release(*(this + 590));
  if (atomic_fetch_add(CA::OGL::MetalContext::_context_count, 0xFFFFFFFF) == 1)
  {
    pthread_mutex_lock(&CA::OGL::MetalContext::_library_lock);
    v30 = CA::OGL::MetalContext::_libraries;
    v31 = qword_1EA84E950;
    if (CA::OGL::MetalContext::_libraries != qword_1EA84E950)
    {
      do
      {
      }

      while (v30 != v31);
      v30 = CA::OGL::MetalContext::_libraries;
    }

    qword_1EA84E950 = v30;
    pthread_mutex_unlock(&CA::OGL::MetalContext::_library_lock);
    pthread_mutex_lock(&CA::OGL::MetalContext::_library_lock);
    v32 = CA::OGL::MetalContext::_binary_archives;
    v33 = qword_1EA84E920;
    if (CA::OGL::MetalContext::_binary_archives != qword_1EA84E920)
    {
      do
      {
      }

      while (v32 != v33);
      v32 = CA::OGL::MetalContext::_binary_archives;
    }

    qword_1EA84E920 = v32;
    pthread_mutex_unlock(&CA::OGL::MetalContext::_library_lock);
  }

  v34 = *(this + 632);
  if (v34 != *(this + 634))
  {
    free(v34);
  }

  v35 = *(this + 604);
  if (v35 != *(this + 606))
  {
    free(v35);
  }

  pthread_mutex_destroy((this + 4768));
  if (*(this + 491))
  {
    __assert_rtn("~IntrusiveList", "x-list-template.h", 181, "empty ()");
  }

  v36 = *(this + 452);
  if (v36)
  {
    *(this + 453) = v36;
    operator delete(v36);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 3336);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 3152);
  CA::OGL::MetalContext::SharedEvent::~SharedEvent((this + 2912));
  CA::OGL::MetalContext::SharedEvent::~SharedEvent((this + 2776));
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 2680);
  pthread_mutex_destroy((this + 2608));
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 2568);
  pthread_mutex_destroy(this + 39);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 2456);

  CA::OGL::Context::~Context(this);
}

void CA::OGL::MetalContext::SharedEvent::~SharedEvent(CA::OGL::MetalContext::SharedEvent *this)
{
  v2 = (this + 112);
  if (*(this + 14))
  {
    std::vector<CA::OGL::MetalContext::SharedEvent::Encoded>::clear[abi:nn200100](this + 14);
    operator delete(*v2);
  }

  v3 = *(this + 1);
  if (v3 != *(this + 3))
  {
    free(v3);
  }
}

uint64_t std::deque<objc_object  {objcproto9MTLBuffer}*>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t CA::OGL::new_metal_context(void *a1, void *a2, int a3, void **p_vtable, int a5, __CFString *a6)
{
  v141 = *MEMORY[0x1E69E9840];
  v12 = objc_autoreleasePoolPush();
  v13 = objc_autoreleasePoolPush();
  if (CA::_root_queue_once != -1)
  {
    dispatch_once(&CA::_root_queue_once, &__block_literal_global_24520);
  }

  v14 = CA::_root_queue;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v16 = [a1 newCommandQueue];
    v15 = v16;
    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = @"com.apple.coreanimation.command-queue";
    }

    [v16 setLabel:v17];
    if (v14)
    {
      v18 = a1;
      v19 = a5;
      v20 = dispatch_queue_create_with_target_V2("com.apple.coreanimation.mtl_submission", 0, v14);
      v21 = dispatch_queue_create_with_target_V2("com.apple.coreanimation.mtl_completion", 0, v14);
      [v15 setSubmissionQueue:v20];
      [v15 setCompletionQueue:v21];
      dispatch_release(v20);
      dispatch_release(v21);
      a5 = v19;
      a1 = v18;
    }
  }

  if (!v15)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v23 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "Failed to create MTLCommandQueue\n", buf, 2u);
    }

    goto LABEL_21;
  }

  if ([v15 device] != a1)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v22 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, "Mismatched MTLCommandQueue and MTLDevice\n", buf, 2u);
    }

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

  v134 = v12;
  v136 = v13;
  v26 = a5;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v27 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x1450uLL, 0xDEEC3011uLL);
  v24 = v27;
  if (v27)
  {
    v135 = a1;
    v28 = (v27 + 3720);
    CA::OGL::Context::Context(v27);
    *v24 = &unk_1EF1FAB00;
    *(v24 + 2456) = 0u;
    *(v24 + 2472) = 0u;
    *(v24 + 2488) = 1065353216;
    pthread_mutex_init((v24 + 2496), 0);
    *(v24 + 2568) = 0u;
    *(v24 + 2584) = 0u;
    *(v24 + 2600) = 1065353216;
    pthread_mutex_init((v24 + 2608), 0);
    *(v24 + 2680) = 0u;
    *(v24 + 2696) = 0u;
    *(v24 + 2712) = 1065353216;
    *(v24 + 2736) = 0;
    *(v24 + 2744) = 0;
    *(v24 + 2776) = 1;
    *(v24 + 2784) = v24 + 2816;
    *(v24 + 2792) = v24 + 2816;
    *(v24 + 2800) = v24 + 2816;
    *(v24 + 2808) = 4;
    *(v24 + 2880) = 0;
    *(v24 + 2888) = 0;
    *(v24 + 2896) = 0u;
    *(v24 + 2912) = 0;
    *(v24 + 2920) = v24 + 2952;
    *(v24 + 2928) = v24 + 2952;
    *(v24 + 2936) = v24 + 2952;
    *(v24 + 2944) = 4;
    *(v24 + 3016) = 0;
    *(v24 + 3040) = 0;
    *(v24 + 3024) = 0u;
    *(v24 + 3152) = 0u;
    *(v24 + 3168) = 0u;
    *(v24 + 3184) = 1065353216;
    *(v24 + 3272) = 0;
    *(v24 + 3336) = 0u;
    *(v24 + 3352) = 0u;
    *(v24 + 3368) = 1065353216;
    *(v24 + 3384) = 0;
    *(v24 + 3400) = 0;
    *(v24 + 3424) = 0;
    *(v24 + 3480) = 0;
    *(v24 + 3464) = 0u;
    *(v24 + 3488) = 1065353216;
    *(v24 + 3492) = a3 | 8;
    *(v24 + 3616) = 0u;
    *(v24 + 3632) = 0;
    *v28 = xmmword_183E20F30;
    *(v24 + 3736) = xmmword_183E20F40;
    *(v24 + 3752) = 0;
    *(v24 + 3760) = xmmword_183E20F20;
    *(v24 + 3776) = 0;
    *(v24 + 3783) = 0;
    *(v24 + 3788) = 0x100000001;
    *(v24 + 3828) = 0;
    *(v24 + 3796) = 0u;
    *(v24 + 3812) = 0u;
    *(v24 + 3832) = 1065353216;
    *(v24 + 3836) = 0u;
    *(v24 + 3852) = -1;
    *(v24 + 3928) = 0;
    *(v24 + 4744) = 0u;
    pthread_mutex_init((v24 + 4768), 0);
    *(v24 + 4832) = v24 + 4864;
    *(v24 + 4840) = v24 + 4864;
    *(v24 + 4848) = v24 + 4864;
    *(v24 + 4856) = 8;
    *(v24 + 5056) = v24 + 5088;
    *(v24 + 5064) = v24 + 5088;
    *(v24 + 5072) = v24 + 5088;
    *(v24 + 5080) = 8;
    context = objc_autoreleasePoolPush();
    atomic_fetch_add(CA::OGL::MetalContext::_context_count, 1u);
    v29 = *(v24 + 632);
    *(v24 + 632) = p_vtable;
    *(v24 + 872) = global_feature_flags | p_vtable;
    if (((v29 ^ p_vtable) & 0x2000200) != 0)
    {
      CA::OGL::Context::update_color_program_cache(v24);
    }

    a5 = v26;
    *(v24 + 3504) = a1;
    *(v24 + 4672) = [MEMORY[0x1E6974128] renderPassDescriptor];
    for (i = 585; i != 588; ++i)
    {
      v31 = [objc_msgSend(*(v24 + 4672) "colorAttachments")];
      *(v24 + 8 * i) = v31;
      [v31 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    }

    *(v24 + 4704) = [v135 newDepthStencilStateWithDescriptor:objc_opt_new()];
    if (v14)
    {
      v32 = dispatch_queue_create_with_target_V2("com.apple.coreanimation.mtl_dealloc", 0, v14);
    }

    else
    {
      v33 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v32 = dispatch_queue_create("com.apple.coreanimation.mtl_dealloc", v33);
    }

    *(v24 + 4720) = v32;
    *(v24 + 3512) = v15;
    if (a3)
    {
      [v15 setBackgroundGPUPriority:2];
    }

    if ((a3 & 2) == 0 && [*(v24 + 3504) supportsMemorylessRenderTargets])
    {
      v34 = getenv("CA_ENABLE_MEMORYLESS");
      if (v34)
      {
        v35 = 8 * (atoi(v34) != 0);
      }

      else
      {
        v35 = 8;
      }

      *(v24 + 3936) = *(v24 + 3936) & 0xFFF7 | v35;
    }

    v36 = [*(v24 + 3504) supportsMemorylessRenderTargets];
    v37 = *(v24 + 3936);
    v38 = (2 * v37) & 0x10;
    if (!v36)
    {
      v38 = 0;
    }

    *(v24 + 3936) = v37 & 0xFFEF | v38;
    *(v24 + 3600) = [MEMORY[0x1E6974000] sharedCaptureManager];
    if (CADeviceHasInternalBuild::once != -1)
    {
      dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
    }

    if (CADeviceHasInternalBuild::internal == 1)
    {
      v39 = [*(v24 + 3600) newCaptureScopeWithCommandQueue:*(v24 + 3512)];
      *(v24 + 3608) = v39;
      [v39 setLabel:@"CoreAnimation Renderer"];
      *(v24 + 3936) &= ~4u;
    }

    v40 = [v135 minConstantBufferAlignmentBytes];
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v41 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x168uLL, 0xDEEC3011uLL);
    if (v41)
    {
      *v41 = v135;
      *(v41 + 8) = 0u;
      *(v41 + 24) = 0u;
      *(v41 + 10) = 0;
      *(v41 + 11) = v40;
      *(v41 + 14) = 0;
      *(v41 + 43) = 0;
      *(v41 + 44) = 0;
      *(v41 + 12) = 0u;
      *(v41 + 13) = 0u;
      *(v41 + 14) = 0u;
      *(v41 + 15) = 0u;
      *(v41 + 16) = 0u;
      *(v41 + 17) = 0u;
      *(v41 + 18) = 0u;
      *(v41 + 19) = 0u;
      *(v41 + 20) = 0u;
      *(v41 + 42) = v41 + 344;
    }

    *(v24 + 4760) = v41;
    v42 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (!v42)
    {
      __assert_rtn("MetalContext", "ogl-metal.mm", 3749, "quartzcore_bundle != nil");
    }

    v43 = [v42 URLForResource:@"default" withExtension:@"metallib"];
    if (!v43)
    {
      __assert_rtn("MetalContext", "ogl-metal.mm", 3752, "metallib_url != nil");
    }

    pthread_mutex_lock(&CA::OGL::MetalContext::_library_lock);
    v44 = CA::OGL::MetalContext::_libraries;
    v45 = qword_1EA84E950;
    if (CA::OGL::MetalContext::_libraries == qword_1EA84E950)
    {
      v47 = *(v24 + 3504);
    }

    else
    {
      do
      {
        v46 = [*v44 device];
        v47 = *(v24 + 3504);
        if (v46 == v47)
        {
          break;
        }

        ++v44;
      }

      while (v44 != v45);
      if (v44 != qword_1EA84E950)
      {
        v48 = v12;
        v49 = *v44;
        v13 = v136;
        goto LABEL_75;
      }
    }

    v137 = 0;
    v50 = [v47 newLibraryWithURL:v43 error:&v137];
    v49 = v50;
    if (!v50)
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v90 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
      {
        v91 = [objc_msgSend(v137 "localizedDescription")];
        *buf = 136315138;
        v139 = v91;
        _os_log_error_impl(&dword_183AA6000, v90, OS_LOG_TYPE_ERROR, "Metal failed to load library\n%s", buf, 0xCu);
      }

      bzero(buf, 0x7FFuLL);
      snprintf(buf, 0x800uLL, "%s", [objc_msgSend(v137 "localizedDescription")]);
      v140 = 0;
      strlen(buf);
      abort_with_payload();
      __break(1u);
      goto LABEL_223;
    }

    [v50 setLabel:@"com.apple.coreanimation.metal-library"];
    v51 = v43;
    v52 = v49;
    v54 = CA::OGL::MetalContext::_libraries;
    v53 = qword_1EA84E950;
    v55 = qword_1EA84E950 - CA::OGL::MetalContext::_libraries;
    v56 = ((qword_1EA84E950 - CA::OGL::MetalContext::_libraries) >> 3) + 1;
    if (qword_1EA84E960 < v56)
    {
      v132 = qword_1EA84E958;
      v57 = (qword_1EA84E960 + 1) | ((qword_1EA84E960 + 1) >> 1) | (((qword_1EA84E960 + 1) | ((qword_1EA84E960 + 1) >> 1)) >> 2);
      v58 = v57 | (v57 >> 4) | ((v57 | (v57 >> 4)) >> 8);
      v59 = v58 | (v58 >> 16) | ((v58 | (v58 >> 16)) >> 32);
      if (v59 + 1 > v56)
      {
        v60 = v59 + 1;
      }

      else
      {
        v60 = (v55 >> 3) + 1;
      }

      v61 = malloc_type_malloc(8 * v60, 0x80040B8603338uLL);
      v62 = v61;
      v63 = CA::OGL::MetalContext::_libraries;
      v64 = qword_1EA84E950;
      if (CA::OGL::MetalContext::_libraries != qword_1EA84E950)
      {
        v65 = v61;
        do
        {
          v66 = *v63++;
          *v65 = v66;
          v65 += 8;
        }

        while (v63 != v64);
      }

      if (v54 != v132)
      {
        free(CA::OGL::MetalContext::_libraries);
      }

      v53 = &v62[v55];
      CA::OGL::MetalContext::_libraries = v62;
      qword_1EA84E950 = &v62[v55];
      qword_1EA84E960 = v60;
    }

    *v53 = v52;
    qword_1EA84E950 += 8;
    v48 = v134;
    v13 = v136;
    a5 = v26;
    v43 = v51;
LABEL_75:
    pthread_mutex_unlock(&CA::OGL::MetalContext::_library_lock);
    *(v24 + 3944) = v49;
    p_vtable = CAFilter.vtable;
    if (byte_1ED4E9829 != 1)
    {
      v12 = v48;
      if ((*(v24 + 874) & 0x20) != 0)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v67 = x_log_get_ogl_metal(void)::log;
        if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_126;
        }

        *buf = 0;
        v68 = "Precompiled pipelines disabled via renderer feature flag.";
      }

      else if ([*(v24 + 3600) supportsDestination:2])
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v67 = x_log_get_ogl_metal(void)::log;
        if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_126;
        }

        *buf = 0;
        v68 = "Precompiled pipelines disabled for GPU frame capture.";
      }

      else
      {
        if (CADeviceIsVirtualized::once[0] != -1)
        {
          dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
        }

        if (CADeviceIsVirtualized::is_virtualized != 1)
        {
          pthread_mutex_lock(&CA::OGL::MetalContext::_library_lock);
          v69 = CA::OGL::MetalContext::_binary_archives;
          v70 = qword_1EA84E920;
          if (CA::OGL::MetalContext::_binary_archives == qword_1EA84E920)
          {
            goto LABEL_99;
          }

          do
          {
            if ([*v69 device] == *(v24 + 3504))
            {
              break;
            }

            ++v69;
          }

          while (v69 != v70);
          if (v69 == qword_1EA84E920)
          {
LABEL_99:
            v137 = 0;
            v72 = objc_opt_new();
            [v72 setUrl:v43];
            [v72 setOptions:{objc_msgSend(v72, "options") | 0x20}];
            v13 = v136;
            v71 = [*(v24 + 3504) newBinaryArchiveWithDescriptor:v72 error:&v137];

            if (v71)
            {
              [v71 setLabel:@"com.apple.coreanimation.binary-archive"];
              v73 = a5;
              v74 = v71;
              v76 = CA::OGL::MetalContext::_binary_archives;
              v75 = qword_1EA84E920;
              v77 = qword_1EA84E920 - CA::OGL::MetalContext::_binary_archives;
              v78 = ((qword_1EA84E920 - CA::OGL::MetalContext::_binary_archives) >> 3) + 1;
              if (qword_1EA84E930 < v78)
              {
                v79 = qword_1EA84E928;
                v80 = (qword_1EA84E930 + 1) | ((qword_1EA84E930 + 1) >> 1) | (((qword_1EA84E930 + 1) | ((qword_1EA84E930 + 1) >> 1)) >> 2);
                v81 = v80 | (v80 >> 4) | ((v80 | (v80 >> 4)) >> 8);
                v82 = v81 | (v81 >> 16) | ((v81 | (v81 >> 16)) >> 32);
                if (v82 + 1 > v78)
                {
                  v83 = v82 + 1;
                }

                else
                {
                  v83 = (v77 >> 3) + 1;
                }

                v84 = malloc_type_malloc(8 * v83, 0x80040B8603338uLL);
                v85 = v84;
                v86 = CA::OGL::MetalContext::_binary_archives;
                v87 = qword_1EA84E920;
                if (CA::OGL::MetalContext::_binary_archives != qword_1EA84E920)
                {
                  v88 = v84;
                  do
                  {
                    v89 = *v86++;
                    *v88 = v89;
                    v88 += 8;
                  }

                  while (v86 != v87);
                }

                if (v76 != v79)
                {
                  free(CA::OGL::MetalContext::_binary_archives);
                }

                v75 = &v85[v77];
                CA::OGL::MetalContext::_binary_archives = v85;
                qword_1EA84E920 = &v85[v77];
                qword_1EA84E930 = v83;
              }

              *v75 = v74;
              qword_1EA84E920 += 8;
              *(v24 + 3936) |= 0x400u;
              v12 = v134;
              v13 = v136;
              a5 = v73;
              p_vtable = (CAFilter + 24);
            }

            else if (dyld_shared_cache_some_image_overridden())
            {
              if (x_log_get_ogl_metal(void)::once != -1)
              {
                dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
              }

              v92 = x_log_get_ogl_metal(void)::log;
              if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
              {
                v93 = [objc_msgSend(v137 "localizedDescription")];
                *buf = 136315138;
                v139 = v93;
                _os_log_error_impl(&dword_183AA6000, v92, OS_LOG_TYPE_ERROR, "Metal failed to load binary archive\n%s", buf, 0xCu);
              }
            }

            else
            {
              if (x_log_get_ogl_metal(void)::once != -1)
              {
                dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
              }

              v94 = x_log_get_ogl_metal(void)::log;
              if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_FAULT))
              {
                v131 = [objc_msgSend(v137 "localizedDescription")];
                *buf = 136315138;
                v139 = v131;
                _os_log_fault_impl(&dword_183AA6000, v94, OS_LOG_TYPE_FAULT, "Metal failed to load binary archive\n%s", buf, 0xCu);
              }
            }
          }

          else
          {
            v71 = *v69;
            v13 = v136;
          }

          pthread_mutex_unlock(&CA::OGL::MetalContext::_library_lock);
          *(v24 + 3952) = v71;
          goto LABEL_126;
        }

        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v67 = x_log_get_ogl_metal(void)::log;
        if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
        {
LABEL_126:
          v95 = *(v24 + 3504);
          if (*(v24 + 592) != v95)
          {
            (*(*v24 + 1192))(v24);
            *(v24 + 592) = v95;
          }

          *(v24 + 72) = 0x4110000000000000;
          v96 = *(v24 + 2688);
          if (v96)
          {
            v97 = *(v24 + 2704) / v96;
          }

          else
          {
            v97 = 0.0;
          }

          *(v24 + 2712) = fmaxf(v97, 0.5);
          *(v24 + 3696) = objc_alloc_init(MEMORY[0x1E695DF90]);
          v98 = [objc_msgSend(*(v24 + 3504) "vendorName")];
          *(v24 + 3316) = *(v24 + 3316) & 0xFFFFFFFE | [*(v24 + 3504) supportsFamily:1001];
          if ([*(v24 + 3504) supportsFamily:1002])
          {
            v99 = 2;
          }

          else
          {
            v99 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFFFFFD | v99;
          if ([*(v24 + 3504) supportsFamily:1003])
          {
            v100 = 4;
          }

          else
          {
            v100 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFFFFFB | v100;
          if ([*(v24 + 3504) supportsFamily:1004])
          {
            v101 = 8;
          }

          else
          {
            v101 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFFFFF7 | v101;
          if ([*(v24 + 3504) supportsFamily:1005])
          {
            v102 = 16;
          }

          else
          {
            v102 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFFFFEF | v102;
          if ([*(v24 + 3504) supportsFamily:1007])
          {
            v103 = 32;
          }

          else
          {
            v103 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFFFFDF | v103;
          if ([*(v24 + 3504) supportsFamily:1009])
          {
            v104 = 64;
          }

          else
          {
            v104 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFFFFBF | v104;
          v105 = [*(v24 + 3504) maxFragmentTextures];
          v106 = [*(v24 + 3504) maxFragmentSamplers];
          v107 = *(v24 + 3504);
          if (v105 >= v106)
          {
            v108 = [v107 maxFragmentSamplers];
          }

          else
          {
            v108 = [v107 maxFragmentTextures];
          }

          *(v24 + 3280) = v108;
          *(v24 + 3296) = [*(v24 + 3504) maxTextureWidth2D];
          *(v24 + 3288) = [*(v24 + 3504) maxTextureWidth2D];
          if ([*(v24 + 3504) maxColorAttachments] > 2)
          {
            v109 = 3;
          }

          else
          {
            v109 = [*(v24 + 3504) maxColorAttachments];
          }

          *(v24 + 3312) = v109;
          v110 = *(v24 + 3288);
          if (v110 >= 0x2000)
          {
            v110 = 0x2000;
          }

          *(v24 + 3288) = v110;
          v111 = *(v24 + 3316);
          v112 = v111 | 0x400;
          *(v24 + 3316) = v111 | 0x400;
          if ((v111 & 2) != 0)
          {
            if (CADeviceIsVirtualized::once[0] != -1)
            {
              dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
            }

            if (*(p_vtable + 2985))
            {
              v113 = 0;
            }

            else
            {
              v113 = 512;
            }

            v112 = *(v24 + 3316);
          }

          else
          {
            v113 = 0;
          }

          v114 = v112 & 0xFFFFFDFF | v113;
          *(v24 + 3316) = v114;
          if (v112)
          {
            if ([*(v24 + 3504) supportsRasterOrderGroups])
            {
              v115 = 2048;
            }

            else
            {
              v115 = 0;
            }

            v114 = *(v24 + 3316);
          }

          else
          {
            v115 = 0;
          }

          *(v24 + 3316) = v114 & 0xFFFFF7FF | v115;
          if ([*(v24 + 3504) supportsYCBCRFormats12])
          {
            v116 = 128;
          }

          else
          {
            v116 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFFFF7F | v116;
          if ([*(v24 + 3504) supportsYCBCRPackedFormats12])
          {
            v117 = 256;
          }

          else
          {
            v117 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFFFEFF | v117;
          v118 = MEMORY[0x1865EA1D0](*MEMORY[0x1E696CE58]);
          v119 = 16 * [*(v24 + 3504) maxTextureWidth2D];
          if (v118 > v119)
          {
            v119 = v118;
          }

          *(v24 + 3304) = v119;
          *(v24 + 3316) &= ~0x2000u;
          if (CADeviceVertexCoordinateSubpixelBits::once != -1)
          {
            dispatch_once(&CADeviceVertexCoordinateSubpixelBits::once, &__block_literal_global_141);
          }

          v120 = 0.5;
          if ((CADeviceVertexCoordinateSubpixelBits::bits - 1) <= 0x1D)
          {
            v120 = 0.5 - COERCE_FLOAT(1056964608 - (CADeviceVertexCoordinateSubpixelBits::bits << 23));
          }

          *(v24 + 1364) = v120;
          *(v24 + 3316) = *(v24 + 3316) & 0xFFFF2FFF | (HIBYTE(xmmword_1ED4E980C) << 12) | 0x8000;
          if ([*(v24 + 3504) supportsNativeHardwareFP16] & 1) != 0 || (*(v24 + 3316))
          {
            v121 = 0x10000;
          }

          else if ([v98 containsString:@"intel"])
          {
            if ([*(v24 + 3504) supportsFamily:2002])
            {
              v121 = 0x10000;
            }

            else
            {
              v121 = 0;
            }
          }

          else
          {
            v121 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFEFFFF | v121;
          if ([*(v24 + 3504) supportsTileShaders])
          {
            v122 = 0x20000;
          }

          else
          {
            v122 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFDFFFF | v122;
          if ([*(v24 + 3504) supportsSIMDGroup])
          {
            v123 = 0x40000;
          }

          else
          {
            v123 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFFBFFFF | v123;
          if ([*(v24 + 3504) supportsSIMDShuffleAndFill])
          {
            v124 = 0x80000;
          }

          else
          {
            v124 = 0;
          }

          *(v24 + 3316) = *(v24 + 3316) & 0xFFF7FFFF | v124;
          v125 = [*(v24 + 3504) supportsSIMDReduction];
          v126 = *(v24 + 3316);
          if (v125)
          {
            v127 = 0x100000;
          }

          else
          {
            v127 = 0;
          }

          *(v24 + 3316) = v126 & 0xFFEFFFFF | v127;
          if (*(v24 + 3648) <= 3 && (v126 & 4) == 0)
          {
            *(v24 + 3320) = 128;
          }

          if (CADeviceIsVirtualized::once[0] != -1)
          {
            dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
          }

          if (*(p_vtable + 2985) == 1)
          {
            if (objc_opt_respondsToSelector())
            {
              if ([*(v24 + 3504) supportsCorrectTextureUsageBits])
              {
                v128 = 0x200000;
              }

              else
              {
                v128 = 0;
              }
            }

            else
            {
              v128 = 0;
            }

            v129 = *(v24 + 3316) & 0xFFDFFFFF | v128;
          }

          else
          {
            v129 = *(v24 + 3316) | 0x200000;
          }

          *(v24 + 3316) = v129;
          CADeviceSetMinimumAlignment([v135 iosurfaceReadOnlyTextureAlignmentBytes]);
          CADeviceSetMaxRenderableIOSurfaceSize([v135 maxTextureWidth2D], objc_msgSend(v135, "maxTextureHeight2D"), *(v24 + 3304));
          if (CA::OGL::MetalContext::get_pipeline_queue(void)::once[0] != -1)
          {
            dispatch_once(CA::OGL::MetalContext::get_pipeline_queue(void)::once, &__block_literal_global_309);
          }

          v130 = CA::OGL::MetalContext::get_pipeline_queue(void)::queue;
          *(v24 + 2736) = CA::OGL::MetalContext::get_pipeline_queue(void)::queue;
          dispatch_retain(v130);
          *(v24 + 3936) &= ~0x200u;
          if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
          {
            BMEnrollIntoBlockMonitoring();
            *(v24 + 3936) |= 0x200u;
          }

          objc_autoreleasePoolPop(context);
          goto LABEL_22;
        }

        *buf = 0;
        v68 = "Precompiled pipelines disabled on unsupported hardware.";
      }

LABEL_86:
      _os_log_impl(&dword_183AA6000, v67, OS_LOG_TYPE_DEFAULT, v68, buf, 2u);
      goto LABEL_126;
    }

LABEL_223:
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v67 = x_log_get_ogl_metal(void)::log;
    v12 = v134;
    v13 = v136;
    if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_126;
    }

    *buf = 0;
    v68 = "Precompiled pipelines disabled via debug option.";
    goto LABEL_86;
  }

LABEL_22:
  objc_autoreleasePoolPop(v13);
  if (a5 && v24)
  {
    [*(v24 + 3512) setGPUPriority:qword_183E264C0[a5 - 1]];
    *(v24 + 3648) = a5;
  }

  objc_autoreleasePoolPop(v12);
  return v24;
}

void sub_183D16CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *context, void *a17, uint64_t a18, void *a19)
{
  pthread_mutex_unlock(&CA::OGL::MetalContext::_library_lock);
  objc_autoreleasePoolPop(context);
  v21 = *(v19 + 5056);
  if (v21 != *(v19 + 5072))
  {
    free(v21);
  }

  v22 = *(v19 + 4832);
  if (v22 != *(v19 + 4848))
  {
    free(v22);
  }

  pthread_mutex_destroy((v19 + 4768));
  if (!*(v19 + 3928))
  {
    v23 = *(v19 + 3616);
    if (v23)
    {
      *(v19 + 3624) = v23;
      operator delete(v23);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(a12);
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v19 + 3152);
    CA::OGL::MetalContext::SharedEvent::~SharedEvent((v19 + 2912));
    CA::OGL::MetalContext::SharedEvent::~SharedEvent((v19 + 2776));
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(a13);
    pthread_mutex_destroy((v19 + 2608));
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(a14);
    pthread_mutex_destroy((v19 + 2496));
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(a15);
    CA::OGL::Context::~Context(v19);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v19);
    objc_autoreleasePoolPop(a19);
    objc_autoreleasePoolPop(a17);
    _Unwind_Resume(a1);
  }

  __assert_rtn("~IntrusiveList", "x-list-template.h", 181, "empty ()");
}

dispatch_queue_t ___ZN2CA3OGL12MetalContext18get_pipeline_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("com.apple.coreanimation.pipelines", v0);
  CA::OGL::MetalContext::get_pipeline_queue(void)::queue = result;
  return result;
}

void CAML::Context::did_load_resource(CAML::Context *this, const __CFURL *key, const void *value)
{
  Mutable = *(this + 9);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(this + 9) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
}

const __CFDictionary *CAML::Context::will_load_resource(CAML::Context *this, const __CFURL *a2)
{
  result = *(this + 9);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

void CAML::Context::errorv(CAML::Context *this, const char *a2, va_list a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(this + 4))
  {
    v6 = __str;
    bzero(__str, 0x400uLL);
    v7 = vsnprintf(__str, 0x400uLL, a2, a3);
    v8 = v7 + 1;
    if (v8 >= 0x401)
    {
      v9 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
      if (!v9)
      {
        return;
      }

      v6 = v9;
      vsnprintf(v9, v8, a2, a3);
    }

    keys = @"message";
    values = CFStringCreateWithCString(0, v6, 0x8000100u);
    if (values)
    {
      v10 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRelease(values);
      *(this + 4) = CFErrorCreate(0, @"CAML", 1, v10);
      CFRelease(v10);
    }

    if (v6 != __str)
    {
      free(v6);
    }
  }
}

void CAML::anonymous namespace::entity_free(void **this, void *a2)
{
  free(this[2]);
  free(this[12]);
  free(this[13]);
  free(this[10]);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void CAML::anonymous namespace::object_attribute(CAML::_anonymous_namespace_ *this, CAML::Context *a2, const CAML::Type *cStr, const char *a4, uint64_t a5, void (*a6)(CAML::Context *, CAML::State *))
{
  v7 = a4;
  v10 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v11 = *(this + 8);
  if (!v11 || (Value = CFDictionaryGetValue(v11, v10)) == 0)
  {
    CFRelease(v10);
    goto LABEL_8;
  }

  v14 = *Value;
  v13 = Value[1];
  CFRelease(v10);
  if (!v13)
  {
LABEL_8:
    goto LABEL_9;
  }

  if (!a2)
  {
    v15 = this;
    v16 = v7;
    v17 = 0;
    goto LABEL_13;
  }

  if ((*(*this + 40))(this, a2, v14))
  {
    v15 = this;
    v16 = v7;
    v17 = a2;
LABEL_13:
    v18 = CAML::Context::push_state(v15, 0, v16, v17, a5);

    CAML::State::set_value(v18, v13);
    return;
  }

LABEL_9:

  CAML::Context::push_state(this, 0, 0, 0, 0);
}

void CAML::anonymous namespace::set_set(CAML::_anonymous_namespace_ *this, CAML::Context *a2, CAML::State *a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    CFSetAddValue(*(*(this + 6) + 64), v3);
  }
}

uint64_t CAML::anonymous namespace::sax_entity_decl(CAML::_anonymous_namespace_ *this, const char *a2, const unsigned __int8 *a3, const char *a4, const char *a5, const char *a6, unsigned __int8 *a7)
{
  v10 = a3;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v13 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x88uLL, 0x10F0040F0AD96BFuLL);
  v13[2] = 17;
  v13[23] = v10;
  v14 = strdup(a2);
  *(v13 + 2) = v14;
  if (a4)
  {
    *(v13 + 12) = strdup(a4);
  }

  if (a5)
  {
    *(v13 + 13) = strdup(a5);
  }

  *(v13 + 10) = strdup(a6);
  v13[22] = strlen(a6);
  v15 = *(this + 7);
  if (!v15)
  {
    *(this + 7) = v15;
  }

  return hash_table_modify(v15, v14, v13, 1);
}

xmlEntityPtr CAML::anonymous namespace::sax_get_entity(CAML::_anonymous_namespace_ *this, xmlChar *name, const unsigned __int8 *a3)
{
  v4 = *(this + 7);
  if (!v4 || (result = x_hash_table_lookup(v4, name, 0)) == 0)
  {

    return xmlGetPredefinedEntity(name);
  }

  return result;
}

CFTypeRef CAML::Context::set_error(CAML::Context *this, CFTypeRef cf)
{
  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
    *(this + 4) = 0;
  }

  result = CFRetain(cf);
  *(this + 4) = result;
  return result;
}

void CA::FrameRateRangeGroup::remove(int8x8_t *this, CAFrameRateRange a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v3 = CA::FrameRateRangeGroup::fps_range_to_frame_interval_range(this, a2);
  v5 = v4;
  v6 = std::__hash_table<std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>,std::__unordered_map_hasher<CAFrameRateRange,std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>,CAFrameRateRangeHasher,std::equal_to<CAFrameRateRange>,true>,std::__unordered_map_equal<CAFrameRateRange,std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>,std::equal_to<CAFrameRateRange>,CAFrameRateRangeHasher,true>,std::allocator<std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>>>::find<CAFrameRateRange>(&this[7], &v24.minimum);
  if (v6)
  {
    v7 = *(v6 + 6);
    if (!v7 || *(v6 + 8) != v3 || *(v6 + 9) != __PAIR64__(v5, HIDWORD(v3)))
    {
      __assert_rtn("remove", "CAFrameRateRangeGroup.mm", 178, "info.count > 0 && info.range == range");
    }

    v8 = v7 - 1;
    if (v8)
    {
      *(v6 + 6) = v8;
    }

    else
    {
      v10 = this[12];
      v9 = this[13];
      if (*&v10 != *&v9)
      {
        while (**&v10 != v3 || *(*&v10 + 4) != __PAIR64__(v5, HIDWORD(v3)))
        {
          *&v10 += 12;
          if (*&v10 == *&v9)
          {
            v10 = this[13];
            break;
          }
        }
      }

      if (*&v9 == *&v10)
      {
        __assert_rtn("remove", "CAFrameRateRangeGroup.mm", 183, "it != _ranges.end ()");
      }

      v11 = *&v9 - (*&v10 + 12);
      if (*&v9 != *&v10 + 12)
      {
        memmove(*&v10, (*&v10 + 12), *&v9 - (*&v10 + 12));
      }

      this[13] = (*&v10 + v11);
      v12 = std::__hash_table<std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>,std::__unordered_map_hasher<CAFrameRateRange,std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>,CAFrameRateRangeHasher,std::equal_to<CAFrameRateRange>,true>,std::__unordered_map_equal<CAFrameRateRange,std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>,std::equal_to<CAFrameRateRange>,CAFrameRateRangeHasher,true>,std::allocator<std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>>>::find<CAFrameRateRange>(&this[7], &v24.minimum);
      if (v12)
      {
        v13 = this[8];
        v14 = *(v12 + 1);
        v15 = vcnt_s8(v13);
        v15.i16[0] = vaddlv_u8(v15);
        if (v15.u32[0] > 1uLL)
        {
          if (v14 >= *&v13)
          {
            v14 %= *&v13;
          }
        }

        else
        {
          v14 &= *&v13 - 1;
        }

        v17 = this[7];
        v18 = *(*&v17 + 8 * v14);
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18 != v12);
        if (v19 == &this[9])
        {
          goto LABEL_38;
        }

        v20 = *(v19 + 1);
        if (v15.u32[0] > 1uLL)
        {
          if (v20 >= *&v13)
          {
            v20 %= *&v13;
          }
        }

        else
        {
          v20 &= *&v13 - 1;
        }

        if (v20 != v14)
        {
LABEL_38:
          if (!*v12)
          {
            goto LABEL_39;
          }

          v21 = *(*v12 + 8);
          if (v15.u32[0] > 1uLL)
          {
            if (v21 >= *&v13)
            {
              v21 %= *&v13;
            }
          }

          else
          {
            v21 &= *&v13 - 1;
          }

          if (v21 != v14)
          {
LABEL_39:
            *(*&v17 + 8 * v14) = 0;
          }
        }

        v22 = *v12;
        if (*v12)
        {
          v23 = *(v22 + 8);
          if (v15.u32[0] > 1uLL)
          {
            if (v23 >= *&v13)
            {
              v23 %= *&v13;
            }
          }

          else
          {
            v23 &= *&v13 - 1;
          }

          if (v23 != v14)
          {
            *(*&this[7] + 8 * v23) = v19;
            v22 = *v12;
          }
        }

        *v19 = v22;
        *v12 = 0;
        --*&this[10];

        operator delete(v12);
      }
    }
  }

  else
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v16 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v16, OS_LOG_TYPE_ERROR, "Unmatched FrameRateRangeGroup remove.", buf, 2u);
    }
  }
}

float *std::__hash_table<std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>,std::__unordered_map_hasher<CAFrameRateRange,std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>,CAFrameRateRangeHasher,std::equal_to<CAFrameRateRange>,true>,std::__unordered_map_equal<CAFrameRateRange,std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>,std::equal_to<CAFrameRateRange>,CAFrameRateRangeHasher,true>,std::allocator<std::__hash_value_type<CAFrameRateRange,CA::FrameRateRangeGroup::RangeInfo>>>::find<CAFrameRateRange>(void *a1, float *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  v5 = (v3 << 16) | (*a2 << 32) | v4;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 << 16) | (*a2 << 32) | v4;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = *(result + 1);
    if (v10 == v5)
    {
      if (result[4] == *a2 && result[5] == v3 && result[6] == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void CA::Render::LayerNode::MapRects::apply(uint64_t a1, float64x2_t *this, double *a3)
{
  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CA::Mat4Impl::mat4_apply_to_rect(this, (*(a1 + 16) + v5), a3);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 8));
  }
}

char *___ZN2CA6Render18LayerNodeAllocator10alloc_nodeEv_block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!vm_allocate(*MEMORY[0x1E69E9A60], v5, (*MEMORY[0x1E69E9AC8] + 1179647) & -*MEMORY[0x1E69E9AC8], 1))
  {
    CA::Render::LayerNodeAllocator::_data = v5[0];
  }

  result = malloc_type_malloc(0x2000uLL, 0x1000040BDFB0063uLL);
  v1 = 0;
  CA::Render::LayerNodeAllocator::_free_offsets = result;
  v2 = xmmword_183E21490;
  v3.i64[0] = 0xF000F000F000F000;
  v3.i64[1] = 0xF000F000F000F000;
  v4.i64[0] = 0x8000800080008;
  v4.i64[1] = 0x8000800080008;
  do
  {
    *&result[v1] = vsubq_s16(v3, v2);
    v2 = vaddq_s16(v2, v4);
    v1 += 16;
  }

  while (v1 != 0x2000);
  CA::Render::LayerNodeAllocator::_free_offsets_count = 4096;
  return result;
}

void *CA::Render::LayerNode::copy_node(CA::Render::LayerNode *this)
{
  v2 = CA::Render::LayerNodeAllocator::alloc_node(this);
  v4 = v2;
  v5 = *(this + 4);
  v2[3] = *(this + 3);
  if (v5)
  {
    v6 = (v5 + 8);
    if (!atomic_fetch_add((v5 + 8), 1u))
    {
      v5 = 0;
      atomic_fetch_add(v6, 0xFFFFFFFF);
    }
  }

  v2[4] = v5;
  v7 = *(this + 15);
  if (v7)
  {
    v8 = (v7 + 8);
    if (!atomic_fetch_add((v7 + 8), 1u))
    {
      v7 = 0;
      atomic_fetch_add(v8, 0xFFFFFFFF);
    }
  }

  v2[15] = v7;
  v2[5] = 0;
  v2[11] = *(this + 11);
  v9 = *(this + 6);
  if (v9)
  {
    v10 = (v9 + 8);
    if (!atomic_fetch_add((v9 + 8), 1u))
    {
      v9 = 0;
      atomic_fetch_add(v10, 0xFFFFFFFF);
    }

    v2[6] = v9;
  }

  v11 = *(this + 13);
  if (v11 != (this + 96))
  {
    v12 = v2 + 12;
    do
    {
      v13 = CA::Render::LayerNode::copy_node(v11);
      v14 = *(v13 + 8);
      v15 = *v12;
      *(v13 + 8) = v12;
      *v12 = v13;
      *v14 = v15;
      *(v15 + 8) = v14;
      v11 = *(v11 + 1);
    }

    while (v11 != (this + 96));
  }

  *(v4 + 11) = *(this + 11);
  v16 = *(this + 16);
  if (v16)
  {
    atomic_fetch_add((v16 + 16), 1u);
  }

  v4[16] = v16;
  v17 = *(this + 17);
  if (v17)
  {
    atomic_fetch_add((v17 + 16), 1u);
  }

  v4[17] = v17;
  if (*(this + 7))
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v18 = malloc_type_zone_malloc(malloc_zone, 0x80uLL, 0x1000040AE2C30F4uLL);
    v4[7] = v18;
    v19 = *(this + 7);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    *v18 = *v19;
    v18[1] = v20;
    v18[2] = v21;
    v18[3] = v22;
    v23 = v19[5];
    v24 = v19[6];
    v25 = v19[7];
    v18[4] = v19[4];
    v18[5] = v23;
    v18[6] = v24;
    v18[7] = v25;
  }

  else
  {
    v4[7] = 0;
    v26 = *(this + 4);
    v4[10] = *(this + 10);
    *(v4 + 4) = v26;
  }

  v27 = *(this + 26);
  if (v27)
  {
    v4[26] = CA::Shape::ref(v27, v3);
  }

  v28 = *(this + 27);
  if (v28)
  {
    v4[27] = CA::Shape::ref(v28, v3);
  }

  v29 = *(this + 28);
  if (v29)
  {
    v4[28] = CA::Shape::ref(v29, v3);
  }

  v30 = *(this + 29);
  if (v30)
  {
    v4[29] = CA::Shape::ref(v30, v3);
  }

  v31 = *(this + 15);
  v4[18] = 0;
  v32 = v4 + 18;
  *(v4 + 15) = v31;
  *(v4 + 29) = *(this + 29);
  for (i = *(this + 18); i; v32 = v34)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v34 = malloc_type_zone_malloc(malloc_zone, 0x30uLL, 0x102004031CE6520uLL);
    *v34 = 0;
    *(v34 + 2) = *(i + 2);
    v34[2] = i[2];
    v34[3] = i[3];
    v34[4] = i[4];
    v34[5] = i[5];
    *v32 = v34;
    i = *i;
  }

  *(v4 + 28) = *(this + 28);
  v35 = *(this + 32);
  if (v35)
  {
    v36 = (v35 + 8);
    if (!atomic_fetch_add((v35 + 8), 1u))
    {
      v35 = 0;
      atomic_fetch_add(v36, 0xFFFFFFFF);
    }
  }

  v4[32] = v35;
  v37 = *(this + 33);
  if (v37)
  {
    v38 = (v37 + 8);
    if (!atomic_fetch_add((v37 + 8), 1u))
    {
      v37 = 0;
      atomic_fetch_add(v38, 0xFFFFFFFF);
    }
  }

  v4[33] = v37;
  v4[34] = *(this + 34);
  return v4;
}

double CA::Render::LayerNode::clip_node(CA::Render::LayerNode *this, double *a2)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_type_zone_malloc(malloc_zone, 0x30uLL, 0x102004031CE6520uLL);
  v5 = *(this + 18);
  if (v5)
  {
    v6 = *(v5 + 8) + 1;
  }

  else
  {
    v6 = 1;
  }

  *(v4 + 2) = v6;
  *v4 = v5;
  v4[2] = *a2;
  v4[3] = a2[1];
  v4[4] = a2[2];
  result = a2[3];
  v4[5] = result;
  *(this + 18) = v4;
  *(this + 3) |= 4uLL;
  return result;
}

CA::Render::LayerNode *CA::Render::LayerNode::split_node(CA::Render::LayerNode *this, double *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(this + 26);
  if (v4)
  {
    CA::Shape::unref(v4);
    *(this + 26) = 0;
  }

  v5 = CA::Render::LayerNode::copy_node(this);
  CA::Render::LayerNode::clip_node(this, a2);
  v6 = vnegq_f64(*(a2 + 2));
  v8[0] = vnegq_f64(*a2);
  v8[1] = v6;
  CA::Render::LayerNode::clip_node(v5, v8);
  return v5;
}

xpc_object_t encode_batch_handle_port(unint64_t a1, uint64_t a2, int a3)
{
  do
  {
    add = atomic_fetch_add(next_batch_encode_count(void)::last_encode_count, 1u);
  }

  while (add == -1);
  v6 = (add + 1) | (getpid() << 32);
  kdebug_trace();
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "e", v6);
  if (a2)
  {
    xpc_dictionary_set_uint64(v7, "f", a2);
  }

  if ((a3 - 1) <= 0xFFFFFFFD)
  {
    xpc_dictionary_set_mach_send();
  }

  return v7;
}

CFStringRef CA::Render::key_path_copy_string(const __CFString *this, void *const *a2)
{
  v2 = this;
  v19[1] = *MEMORY[0x1E69E9840];
  if (!this)
  {
    return v2;
  }

  if ((this & 1) == 0)
  {
    isa_low = LODWORD(this->isa);
    MEMORY[0x1EEE9AC00](this);
    v5 = (v19 - ((v4 + 15) & 0xFFFFFFFF0));
    bzero(v5, v4);
    if (isa_low)
    {
      v6 = &v2->isa + 1;
      v7 = isa_low;
      v8 = v5;
      do
      {
        v10 = *v6++;
        v9 = v10;
        if ((v10 & 0x40000000) != 0)
        {
          v12 = CFStringCreateWithFormat(0, 0, @"@index(%d)", v9 & 0xBFFFFFFF);
        }

        else
        {
          String = CAAtomGetString(v9);
          v12 = CFRetain(String);
        }

        *v8++ = v12;
        --v7;
      }

      while (v7);
    }

    v13 = CFArrayCreate(*MEMORY[0x1E695E490], v5, isa_low, 0);
    v2 = CFStringCreateByCombiningStrings(0, v13, @".");
    CFRelease(v13);
    if (isa_low)
    {
      do
      {
        v14 = *v5++;
        CFRelease(v14);
        --isa_low;
      }

      while (isa_low);
    }

    return v2;
  }

  v15 = (this >> 1);
  if (v2 >> 32)
  {
    v17 = CA::Render::copy_atom_string(v15);
    v18 = CA::Render::copy_atom_string((v2 >> 32));
    v2 = CFStringCreateWithFormat(0, 0, @"%@.%@", v17, v18);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    return v2;
  }

  return CA::Render::copy_atom_string(v15);
}

CFStringRef CA::Render::copy_atom_string(CA::Render *this)
{
  if ((this & 0x40000000) != 0)
  {
    return CFStringCreateWithFormat(0, 0, @"@index(%d)", this & 0xBFFFFFFF);
  }

  String = CAAtomGetString(this);

  return CFRetain(String);
}

char *CA::Render::Path::show(char *result, X::Stream *this, int a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v6 = result;
    X::Stream::printf(this, "(path");
    v7 = *(v6 + 40);
    if (*v7 != 5)
    {
      v8 = 2 * a3 + 2;
      v9 = *(v6 + 32);
      v10 = v7 + 1;
      while (1)
      {
        X::Stream::printf(this, "\n%*s", v8, "");
        v11 = *(v10 - 1);
        if (v11 > 1)
        {
          break;
        }

        if (!*(v10 - 1))
        {
          X::Stream::printf(this, "h");
          goto LABEL_16;
        }

        if (v11 == 1)
        {
          X::Stream::printf(this, "%g %g m");
LABEL_13:
          v9 += 2;
        }

LABEL_16:
        v12 = *v10++;
        if (v12 == 5)
        {
          goto LABEL_17;
        }
      }

      if (v11 != 2)
      {
        if (v11 == 3)
        {
          X::Stream::printf(this, "%g %g %g %g q", *v9, v9[1], v9[2], v9[3]);
          v9 += 4;
        }

        else if (v11 == 4)
        {
          X::Stream::printf(this, "%g %g %g %g %g %g c", *v9, v9[1], v9[2], v9[3], v9[4], v9[5]);
          v9 += 6;
        }

        goto LABEL_16;
      }

      X::Stream::printf(this, "%g %g l");
      goto LABEL_13;
    }

LABEL_17:

    return X::Stream::printf(this, ")");
  }

  return result;
}

float64x2_t CA::Render::point_interpolate(float64x2_t *this, double *a2, const double *a3, const double *a4, float64x2_t a5, float64x2_t a6, double a7, double a8, double a9)
{
  v9 = a8;
  if (fabsf(v9) > 3.1416)
  {
    v9 = ((((v9 * 0.15915) + 0.5) - floorf((v9 * 0.15915) + 0.5)) * 6.2832) + -3.1416;
  }

  v10 = a9;
  if (fabsf(v10) > 3.1416)
  {
    v10 = ((((v10 * 0.15915) + 0.5) - floorf((v10 * 0.15915) + 0.5)) * 6.2832) + -3.1416;
  }

  v11 = vcvt_f32_f64(a6);
  v12 = vcvt_f32_f64(a5);
  v13 = ((((0.039228 - ((v9 * v9) * 0.00096967)) * (v9 * v9)) + -0.49535) * (v9 * v9)) + 0.99861;
  v14 = (((((v9 * v9) * 0.0054654) + -0.15346) * (v9 * v9)) + 0.98442) * v9;
  v15 = ((((0.039228 - ((v10 * v10) * 0.00096967)) * (v10 * v10)) + -0.49535) * (v10 * v10)) + 0.99861;
  v16 = (((((v10 * v10) * 0.0054654) + -0.15346) * (v10 * v10)) + 0.98442) * v10;
  v17 = 1.0 - a7;
  v18 = v17 * v17;
  v19 = a7 * (v17 + v17);
  v20 = vsub_f32(v11, v12);
  v21 = vrev64_s32(vmul_n_f32(v20, v14));
  v22 = vmul_n_f32(v20, v15);
  v23 = vsub_f32(v22, v21);
  v24 = vdup_lane_s32(v23, 0);
  v23.i32[1] = vadd_f32(v22, v21).i32[1];
  v25 = vsub_f32(v12, v11);
  v26 = vrev64_s32(vmul_n_f32(v25, v16));
  v27 = vmul_n_f32(v25, v13);
  v28.i32[0] = vsub_f32(v27, v26).u32[0];
  v28.i32[1] = vadd_f32(v27, v26).i32[1];
  v29 = a7 * a7;
  v24.i32[0] = v25.i32[1];
  v25.i32[1] = v23.i32[1];
  v30 = vmla_f32(vneg_f32(vmul_f32(v25, vrev64_s32(v28))), v28, v24);
  result = vcvtq_f64_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v12, v18), v11, v29), vmla_n_f32(v12, v23, vdiv_f32(v30, vdup_lane_s32(v30, 1)).f32[0]), v19));
  *this = result;
  return result;
}

BOOL CA::Render::NamedFunction::apply(CA::Render::NamedFunction *this, double *a2, double *a3, uint64_t a4, double *a5, uint64_t a6, double (*a7)(unsigned int, const unsigned int *, unint64_t, void *), void *a8)
{
  if (a2)
  {
    v13 = 0;
    v14 = a5 + 14;
    v15 = 1;
    v16 = xmmword_183E20E00;
    v17 = 0uLL;
    v18 = xmmword_183E20E60;
    v19 = a2;
    while (2)
    {
      switch(*(this + 4))
      {
        case 0:
          v20 = *a3;
          v21 = 1.0;
          v22 = 0.0;
          goto LABEL_14;
        case 1:
          v20 = *a3;
          v21 = 0.0;
          v22 = 1.0;
LABEL_14:
          v27 = 0.0;
          goto LABEL_15;
        case 2:
          v20 = *a3;
          v21 = 0.0;
          v22 = 0.0;
          v27 = 1.0;
LABEL_15:
          CA::Mat4Impl::mat4_set_rotation((v14 - 14), a2, v20, v21, v22, v27);
          v18 = xmmword_183E20E60;
          v16 = xmmword_183E20E00;
          v17 = 0uLL;
          goto LABEL_23;
        case 3:
          v28 = *a3;
          v29 = *(a3 + 1);
          v30 = *(a3 + 2);
          *(v14 - 7) = v16;
          *(v14 - 6) = v17;
          *(v14 - 5) = v18;
          *(v14 - 4) = v17;
          *(v14 - 3) = v17;
          *(v14 - 2) = v16;
          *(v14 - 1) = v17;
          *v14 = v18;
          *(v14 - 14) = v28;
          *(v14 - 9) = v29;
          *(v14 - 4) = v30;
          goto LABEL_23;
        case 4:
          v24 = *a3;
          *(v14 - 7) = v16;
          *(v14 - 6) = v17;
          *(v14 - 5) = v18;
          *(v14 - 4) = v17;
          *(v14 - 3) = v17;
          *(v14 - 2) = v16;
          *(v14 - 1) = v17;
          *v14 = v18;
          *(v14 - 14) = v24;
          *(v14 - 9) = 1.0;
          goto LABEL_18;
        case 5:
          v31 = *a3;
          *(v14 - 7) = v16;
          *(v14 - 6) = v17;
          *(v14 - 5) = v18;
          *(v14 - 4) = v17;
          *(v14 - 3) = v17;
          *(v14 - 2) = v16;
          *(v14 - 1) = v17;
          *v14 = v18;
          *(v14 - 14) = 1.0;
          goto LABEL_17;
        case 6:
          v32 = *a3;
          *(v14 - 7) = v16;
          *(v14 - 6) = v17;
          *(v14 - 5) = v18;
          *(v14 - 4) = v17;
          *(v14 - 3) = v17;
          *(v14 - 2) = v16;
          *(v14 - 1) = v17;
          *v14 = v18;
          *(v14 - 14) = 1.0;
          *(v14 - 9) = 1.0;
          goto LABEL_22;
        case 7:
          v31 = *a3;
          *(v14 - 7) = v16;
          *(v14 - 6) = v17;
          *(v14 - 5) = v18;
          *(v14 - 4) = v17;
          *(v14 - 3) = v17;
          *(v14 - 2) = v16;
          *(v14 - 1) = v17;
          *v14 = v18;
          *(v14 - 14) = v31;
LABEL_17:
          *(v14 - 9) = v31;
LABEL_18:
          *(v14 - 4) = 1.0;
          goto LABEL_23;
        case 8:
          v32 = *a3;
          *(v14 - 7) = v16;
          *(v14 - 6) = v17;
          *(v14 - 5) = v18;
          *(v14 - 4) = v17;
          *(v14 - 3) = v17;
          *(v14 - 2) = v16;
          *(v14 - 1) = v17;
          *v14 = v18;
          *(v14 - 14) = v32;
          *(v14 - 9) = v32;
LABEL_22:
          *(v14 - 4) = v32;
          goto LABEL_23;
        case 9:
          v25 = *(a3 + 2);
          v26 = *a3;
          *(v14 - 7) = v16;
          *(v14 - 12) = 0.0;
          *(v14 - 11) = 0.0;
          *(v14 - 5) = v18;
          *(v14 - 4) = v17;
          *(v14 - 3) = v17;
          *(v14 - 2) = v16;
          *(v14 - 1) = v26;
          *v14 = v18;
          goto LABEL_9;
        case 0xA:
          v33 = *a3;
          *(v14 - 7) = v16;
          *(v14 - 12) = 0.0;
          *(v14 - 11) = 0.0;
          *(v14 - 5) = v18;
          *(v14 - 4) = v17;
          *(v14 - 3) = v17;
          *(v14 - 2) = v16;
          *v14 = v18;
          *(v14 - 2) = v33;
          *(v14 - 1) = 0.0;
          *v14 = 0.0;
          goto LABEL_23;
        case 0xB:
          v23 = *a3;
          *(v14 - 7) = v16;
          *(v14 - 12) = 0.0;
          *(v14 - 11) = 0.0;
          *(v14 - 5) = v18;
          *(v14 - 4) = v17;
          *(v14 - 3) = v17;
          *(v14 - 2) = v16;
          *v14 = v18;
          *(v14 - 2) = 0.0;
          *(v14 - 1) = v23;
          *v14 = 0.0;
          goto LABEL_23;
        case 0xC:
          v25 = *a3;
          *(v14 - 7) = v16;
          *(v14 - 12) = 0.0;
          *(v14 - 11) = 0.0;
          *(v14 - 5) = v18;
          *(v14 - 4) = v17;
          *(v14 - 3) = v17;
          *(v14 - 2) = v16;
          *v14 = v18;
          *(v14 - 2) = 0.0;
          *(v14 - 1) = 0.0;
LABEL_9:
          *v14 = v25;
LABEL_23:
          a3 = (a3 + a4);
          v13 = v15++ >= a2;
          v14 = (v14 + a6);
          v19 = (v19 - 1);
          if (!v19)
          {
            return v13;
          }

          continue;
        default:
          return v13;
      }
    }
  }

  return 1;
}