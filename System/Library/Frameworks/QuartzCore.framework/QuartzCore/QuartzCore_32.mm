_DWORD *CA::Render::MediaLayer::copy@<X0>(CA::Render::MediaLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0xDEEC3011uLL);
  if (result)
  {
    *result = &unk_1EF1F6D08;
    result[2] = 1;
    result[3] = *(result + 12) | *(this + 3) & 0xFFFFFF00;
    *result = &unk_1EF1F6940;
  }

  *a2 = result;
  return result;
}

char *CA::Render::MediaLayer::show(uint64_t a1, X::Stream *this, int a3, char a4)
{
  if (a4)
  {
    v9 = "media-layer";
  }

  else
  {
    X::Stream::printf(this, "(media-layer");
    v7 = 2 * a3;
    v8 = 2 * a3 + 2;
    X::Stream::printf(this, "\n%*s", v7 + 2, "");
    if (*(a1 + 13))
    {
      X::Stream::printf(this, "\n%*s", v8, "");
      X::Stream::printf(this, "(allowed-content-hides-sublayers)");
    }

    v9 = ")";
  }

  return X::Stream::printf(this, v9);
}

void *CA::Render::MediaLayer::encode(CA::Render::MediaLayer *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::MediaLayer::~MediaLayer(CA::Render::MediaLayer *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAAC0;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  --dword_1ED4EAAC0;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

CA::Render::MediaLayer *CA::Render::MediaLayer::MediaLayer(CA::Render::MediaLayer *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 34;
  ++dword_1ED4EAAC0;
  *v4 = &unk_1EF1F6940;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-media-layer.cpp", 52);
  return this;
}

_BYTE *x_stream_finish(uint64_t a1)
{
  v2 = malloc_type_realloc(*a1, *(a1 + 8) - *a1 + 1, 0x100004077774924uLL);
  v3 = v2;
  if (v2)
  {
    v2[*(a1 + 8) - *a1] = 0;
  }

  else
  {
    free(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return v3;
}

char *x_stream_write(uint64_t a1, void *__src, size_t __n)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (&v6[__n] < v7)
  {
    goto LABEL_7;
  }

  v9 = v7 - *a1;
  v8 = v9 == 0;
  v10 = 2 * v9;
  v11 = 1024;
  if (!v8)
  {
    v11 = v10;
  }

  do
  {
    v12 = v11;
    v13 = *a1 - v6 + v11;
    v11 *= 2;
  }

  while (v13 < __n);
  result = malloc_type_realloc(*a1, v12, 0x100004077774924uLL);
  if (result)
  {
    v15 = result;
    v6 = &result[*(a1 + 8) - *a1];
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v15[v12];
LABEL_7:
    result = memcpy(v6, __src, __n);
    *(a1 + 8) += __n;
  }

  return result;
}

uint64_t addDependentStates(CAState *a1, __CFSet *a2, NSArray *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  result = CFSetContainsValue(a2, a1);
  if (!result)
  {
    CFSetAddValue(a2, a1);
    v7 = [(CAState *)a1 name];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    result = [(NSArray *)a3 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (result)
    {
      v8 = result;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [(CAState *)v11 basedOn];
          if ([(NSString *)v12 length])
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          if (v13 == v7 || [(NSString *)v13 isEqualToString:v7])
          {
            addDependentStates(v11, a2, a3);
          }

          ++v10;
        }

        while (v8 != v10);
        result = [(NSArray *)a3 countByEnumeratingWithState:&v15 objects:v14 count:16];
        v8 = result;
      }

      while (result);
    }
  }

  return result;
}

void CA::CG::TransparencyLayer::unref(atomic_uint *this)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (this && add == 1)
  {
    v4 = *(this + 29);
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      CA::CG::ClipStack::destroy_clip_stack(v4);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_zone;

    malloc_zone_free(v5, this);
  }
}

void sub_183C94854(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t indicator_id_from_name(NSString *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (MEMORY[0x1EEE91108])
  {
    [(NSString *)a1 UTF8String];
    return SILManagerIndicatorTypeIDFromName();
  }

  else if ([(NSString *)a1 isEqualToString:@"Camera"])
  {
    return 0;
  }

  else if ([(NSString *)a1 isEqualToString:@"Microphone"])
  {
    return 1;
  }

  else if ([(NSString *)a1 isEqualToString:@"MicrophoneAccessibility"])
  {
    return 2;
  }

  else if ([(NSString *)a1 isEqualToString:@"FaceID"])
  {
    return 3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *CASecureIndicatorLayerValidDynamicPositionsForIndicator(NSString *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = indicator_id_from_name(a1);
  scaled_bounding_boxes_for_display = 0;
  if (MEMORY[0x1EEE91118] && v2 != -1)
  {
    if (CASecureIndicatorLayerValidDynamicPositionsForIndicator(NSString *)::once_token != -1)
    {
      dispatch_once(&CASecureIndicatorLayerValidDynamicPositionsForIndicator(NSString *)::once_token, &__block_literal_global_104);
    }

    os_unfair_lock_lock(&CASecureIndicatorLayerValidDynamicPositionsForIndicator(NSString *)::bb_lock);
    scaled_bounding_boxes_for_display = [CASecureIndicatorLayerValidDynamicPositionsForIndicator(NSString *)::indicators_bounding_boxes objectForKeyedSubscript:a1];
    if (!scaled_bounding_boxes_for_display)
    {
      valid = SILManagerIndicatorValidDynamicPositions();
      if (valid)
      {
        scaled_bounding_boxes_for_display = create_scaled_bounding_boxes_for_display(valid);
        [CASecureIndicatorLayerValidDynamicPositionsForIndicator(NSString *)::indicators_bounding_boxes setObject:scaled_bounding_boxes_for_display forKeyedSubscript:a1];
      }

      else
      {
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v5 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          v7 = 136315138;
          v8 = [(NSString *)a1 UTF8String];
          _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "SIL failed to query bounding boxes for valid indicator '%s'", &v7, 0xCu);
        }

        scaled_bounding_boxes_for_display = 0;
      }
    }

    os_unfair_lock_unlock(&CASecureIndicatorLayerValidDynamicPositionsForIndicator(NSString *)::bb_lock);
  }

  return scaled_bounding_boxes_for_display;
}

void *create_scaled_bounding_boxes_for_display(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (create_scaled_bounding_boxes_for_display(NSArray<NSValue *> *)::once_token != -1)
  {
    dispatch_once(&create_scaled_bounding_boxes_for_display(NSArray<NSValue *> *)::once_token, &__block_literal_global_98);
  }

  v2 = objc_opt_new();
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [*(*(&v12 + 1) + 8 * i) getValue:&v9];
        v9 = vmulq_f64(v9, __PAIR128__(create_scaled_bounding_boxes_for_display(NSArray<NSValue *> *)::main_display_native_size, create_scaled_bounding_boxes_for_display(NSArray<NSValue *> *)::main_display_native_size));
        v10 = vmulq_f64(v10, __PAIR128__(create_scaled_bounding_boxes_for_display(NSArray<NSValue *> *)::main_display_native_size, create_scaled_bounding_boxes_for_display(NSArray<NSValue *> *)::main_display_native_size));
        v8[0] = v9;
        v8[1] = v10;
        [v2 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", v8, "{CGRect={CGPoint=dd}{CGSize=dd}}")}];
      }

      v4 = [a1 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v4);
  }

  return v2;
}

void ___ZL40create_scaled_bounding_boxes_for_displayP7NSArrayIP7NSValueE_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  [+[CADisplay mainDisplay](CADisplay "mainDisplay")];
  create_scaled_bounding_boxes_for_display(NSArray<NSValue *> *)::main_display_native_size = *&v1;
  create_scaled_bounding_boxes_for_display(NSArray<NSValue *> *)::main_display_native_size = *&v0;
  if (v1 == 0.0 || v0 == 0.0)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v2 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "SIL failed to query display size from client", v3, 2u);
    }
  }
}

uint64_t ___ZL55CASecureIndicatorLayerValidDynamicPositionsForIndicatorP8NSString_block_invoke()
{
  result = objc_opt_new();
  CASecureIndicatorLayerValidDynamicPositionsForIndicator(NSString *)::indicators_bounding_boxes = result;
  return result;
}

void *CASecureIndicatorLayerValidPositionsForIndicator(NSString *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = indicator_id_from_name(a1);
  scaled_bounding_boxes_for_display = 0;
  if (MEMORY[0x1EEE91120] && v2 != -1)
  {
    if (CASecureIndicatorLayerValidPositionsForIndicator(NSString *)::once_token != -1)
    {
      dispatch_once(&CASecureIndicatorLayerValidPositionsForIndicator(NSString *)::once_token, &__block_literal_global_4294);
    }

    os_unfair_lock_lock(&CASecureIndicatorLayerValidPositionsForIndicator(NSString *)::bb_lock);
    scaled_bounding_boxes_for_display = [CASecureIndicatorLayerValidPositionsForIndicator(NSString *)::indicators_bounding_boxes objectForKeyedSubscript:a1];
    if (!scaled_bounding_boxes_for_display)
    {
      valid = SILManagerIndicatorValidPositions();
      if (valid)
      {
        scaled_bounding_boxes_for_display = create_scaled_bounding_boxes_for_display(valid);
        [CASecureIndicatorLayerValidPositionsForIndicator(NSString *)::indicators_bounding_boxes setObject:scaled_bounding_boxes_for_display forKeyedSubscript:a1];
      }

      else
      {
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v5 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          v7 = 136315138;
          v8 = [(NSString *)a1 UTF8String];
          _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "SIL failed to query bounding boxes for valid indicator '%s'", &v7, 0xCu);
        }

        scaled_bounding_boxes_for_display = 0;
      }
    }

    os_unfair_lock_unlock(&CASecureIndicatorLayerValidPositionsForIndicator(NSString *)::bb_lock);
  }

  return scaled_bounding_boxes_for_display;
}

uint64_t ___ZL48CASecureIndicatorLayerValidPositionsForIndicatorP8NSString_block_invoke()
{
  result = objc_opt_new();
  CASecureIndicatorLayerValidPositionsForIndicator(NSString *)::indicators_bounding_boxes = result;
  return result;
}

uint64_t CARenderRetain(uint64_t result)
{
  if (result)
  {
    v1 = (result + 8);
    if (!atomic_fetch_add((result + 8), 1u))
    {
      result = 0;
      atomic_fetch_add(v1, 0xFFFFFFFF);
    }
  }

  return result;
}

atomic_uint *CARenderRelease(atomic_uint *result)
{
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

CA::Render::Context *CARenderContextNew(const __CFDictionary *a1)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x308uLL, 0xDEEC3011uLL);
  if (result)
  {
    return CA::Render::Context::Context(result, a1, 0, 0, 0);
  }

  return result;
}

uint64_t CARenderContextDestroy(uint64_t a1)
{
  if (!atomic_fetch_add((a1 + 8), 1u))
  {
    atomic_fetch_add((a1 + 8), 0xFFFFFFFF);
  }

  return CA::Render::Server::add_callback(0, CA::Render::Context::schedule_destroy(void)::$_0::__invoke, a1, 0.0);
}

uint64_t CARenderContextGetProcessId(uint64_t a1)
{
  result = atomic_load((a1 + 228));
  if (!result)
  {
    if (*(a1 + 256))
    {
      LODWORD(result) = 0;
    }

    else
    {
      LODWORD(result) = getpid();
    }

    v3 = 0;
    atomic_compare_exchange_strong((a1 + 228), &v3, result);
    if (v3)
    {
      return v3;
    }

    else
    {
      return result;
    }
  }

  return result;
}

__n128 CARenderContextGetAuditToken@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 196);
  v3 = *(a1 + 212);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void CARenderContextInvalidateRect(CA::Shape **a1, uint64_t a2, const CA::Bounds *a3, double a4, double a5, float64x2_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  a6.f64[0] = 0.0;
  v7 = vdupq_lane_s64(vcgtq_f64(a6, v6).i64[0], 0);
  v8.i64[1] = *(a2 + 24);
  *v8.i64 = -v6.f64[0];
  v9 = vbslq_s8(v7, v8, v6);
  v10 = vdupq_lane_s64(vcgtq_f64(a6, vdupq_laneq_s64(v6, 1)).i64[0], 0);
  v11.i64[0] = v9.i64[0];
  v11.i64[1] = *&vnegq_f64(v6).f64[1];
  v12 = vbslq_s8(v10, v11, v9);
  v13 = vceqzq_f64(v12);
  if ((vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) != 0 || (v14 = vceqq_f64(v12, v12), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v14), 1), v14).u64[0] & 0x8000000000000000) != 0))
  {
    v20 = 0uLL;
  }

  else
  {
    v15 = vaddq_f64(v6, *a2);
    v16.i64[0] = vbslq_s8(v7, v15, *a2).u64[0];
    v17.i64[0] = v16.i64[0];
    v17.i64[1] = *(a2 + 8);
    v16.i64[1] = v15.i64[1];
    v18 = vbslq_s8(v10, v16, v17);
    v19 = vcvtmq_s64_f64(vmaxnmq_f64(v18, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v20 = vuzp1q_s32(v19, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v18, v12), vdupq_n_s64(0x41C0000000000000uLL))), v19));
  }

  CA::Render::Context::invalidate(a1, &v20, a3);
}

uint64_t CARenderLayerGetContextId(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (!v1)
  {
    return 0;
  }

  v2 = CA::Render::Handle::retain_context(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (atomic_fetch_add((v2 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return v3;
}

atomic_uint *CARenderContextGetRootLayer(atomic_uint *result)
{
  if (result)
  {
    result = CA::Render::Context::root_layer_handle(result);
    if (result)
    {
      return *(result + 2);
    }
  }

  return result;
}

uint64_t CARenderContextGetInputTime(uint64_t a1)
{
  pthread_mutex_lock((a1 + 72));
  *(a1 + 488) = 0x7FF0000000000000;
  return pthread_mutex_unlock((a1 + 72));
}

uint64_t CARenderContextGetBeginTime(uint64_t a1, double a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 72));
  v6[0] = 0.0;
  CA::Render::Context::get_begin_time(a1, v6, &v5, 0, a2);
  return pthread_mutex_unlock((a1 + 72));
}

uint64_t CARenderContextGetRequestsFrameStallSkip(uint64_t a1)
{
  v1 = *(a1 + 584);
  *(a1 + 584) = v1 & 0xFF7F;
  return (v1 >> 7) & 1;
}

CFStringRef CARenderContextCopyProcessPath(CA::Render::Context *a1)
{
  v1 = (CA::Render::Context::process_path(a1) + 7);

  return CFStringCreateWithCString(0, v1, 0x8000100u);
}

CFTypeRef CARenderContextCopyClientAnnotation(uint64_t a1)
{
  result = *(a1 + 552);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t CARenderContextNeedsDeferUpdate(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  updated = CA::Render::Context::needs_defer_update_locked(a1);
  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
  return updated;
}

CFTypeRef CARenderContextCopyPayload(uint64_t a1)
{
  result = *(a1 + 560);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t CARenderImageBitsPerPixel(unsigned int a1)
{
  if (a1 > 0x23)
  {
    return 0;
  }

  else
  {
    return dword_183E22600[a1];
  }
}

uint64_t CARenderImageBitsPerComponent(unsigned int a1)
{
  if (a1 > 0x23)
  {
    return 0;
  }

  else
  {
    return dword_183E22728[a1];
  }
}

uint64_t CARenderImageCGBitmapInfo(unsigned int a1)
{
  if (a1 > 0x23)
  {
    return 0;
  }

  else
  {
    return dword_183E22570[a1];
  }
}

const char *CARenderImageFormatName(unsigned int a1)
{
  if (a1 > 0x23)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_1E6DEC8E8[a1];
  }
}

void *CARenderImageNew(CA::Render::Image *a1, unsigned int a2, unsigned int a3, CGColorSpace *a4, unint64_t a5, unint64_t *a6, void (*a7)(const void *, void *))
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a5;
  return CA::Render::Image::new_image(a1, a2, a3, 1u, 0, a4, v9, a6, a7, v8);
}

atomic_uint *CARenderImageNewWithCGImage(CA::Render *a1, CGImage *a2, CGColorSpace *a3)
{
  result = CA::Render::copy_image(a1, a2, a3, 0.0, 1.0);
  if (result && *(result + 12) != 23)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      (*(*result + 16))(result);
    }

    return 0;
  }

  return result;
}

void CARenderShow(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  CA::Render::show_object(v4, a1);
  X::Stream::printf(v4, "\n");
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v2 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = x_stream_get(v4);
    *buf = 134218242;
    v6 = a1;
    v7 = 2080;
    v8 = v3;
    _os_log_impl(&dword_183AA6000, v2, OS_LOG_TYPE_DEFAULT, "CARender[%p]:\n%s", buf, 0x16u);
  }

  if (v4[0])
  {
    free(v4[0]);
  }
}

void CARenderShowStatistics()
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v2, 0, sizeof(v2));
  CA::Render::show_statistics(v2);
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v0 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v1 = x_stream_get(v2);
    *buf = 136315138;
    v4 = v1;
    _os_log_impl(&dword_183AA6000, v0, OS_LOG_TYPE_DEFAULT, "CARender statistics:\n%s", buf, 0xCu);
  }

  if (v2[0])
  {
    free(v2[0]);
  }
}

__CFDictionary *CARenderCopyStatistics()
{
  v7 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 64; ++i)
  {
    if (CA::Render::Object::_instance_counts[i])
    {
      if (*CA::Render::type_names[i])
      {
        v2 = CA::Render::type_names[i];
      }

      else
      {
        v2 = "<unknown>";
      }

      v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
      valuePtr = CA::Render::Object::_instance_counts[i];
      v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(Mutable, v3, v4);
      if (v4)
      {
        CFRelease(v4);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  return Mutable;
}

void CARenderShowImages()
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v0 = CA::Render::image_cache;
  if (CA::Render::image_cache)
  {
    v1 = 0;
    v2 = 1 << *CA::Render::image_cache;
    do
    {
      for (i = *(*(v0 + 16) + 8 * v1); i; i = *i)
      {
      }

      ++v1;
    }

    while (v1 != v2);
  }

  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v4 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = mach_absolute_time();
    v6 = CATimeWithHostTime(v5);
    v7 = x_stream_get(v8);
    *buf = 134218242;
    v10 = v6;
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "CG image cache at time %f:\n%s", buf, 0x16u);
  }

  if (v8[0])
  {
    free(v8[0]);
  }
}

void CAFenceBatchWaitLockAcquire()
{
  os_unfair_lock_lock(&_batching_lock);
  if (_batching)
  {
    __assert_rtn("CAFenceBatchWaitLockAcquire", "CARender.cpp", 824, "!_batching");
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v0 = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x165299FDuLL);
  if (v0)
  {
    v0 = CA::Render::Fence::BatchWaitLock::BatchWaitLock(v0);
  }

  _batching = v0;

  os_unfair_lock_unlock(&_batching_lock);
}

void CAFenceBatchWaitLockRelease()
{
  os_unfair_lock_lock(&_batching_lock);
  v0 = _batching;
  if (!_batching)
  {
    __assert_rtn("CAFenceBatchWaitLockRelease", "CARender.cpp", 832, "_batching");
  }

  CA::Render::Fence::BatchWaitLock::invalidate(_batching);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, v0);
  _batching = 0;

  os_unfair_lock_unlock(&_batching_lock);
}

float64x2_t CA::Mat4Impl::mat4_concat(float64x2_t *this, double *a2, const CGAffineTransform *a3, const double *a4)
{
  v4 = *(a2 + 1);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = a2[5];
  v9 = *&a3->c;
  v10 = *&a3->tx;
  v11 = *&a3[1].a;
  v12 = vmlaq_n_f64(vmlaq_n_f64(*&a3[2].a, *&a3->a, *&v6), v10, v8);
  v13 = vmlaq_n_f64(vmulq_n_f64(*&a3->a, *a2), v10, *&v5);
  v14 = vmlaq_n_f64(vmulq_n_f64(*&a3->a, *&v4), v10, *&v7);
  v15 = *&a3[1].c;
  v16 = *&a3[1].tx;
  v17 = vmlaq_n_f64(vmlaq_n_f64(*&a3[2].c, v9, *&v6), v11, v8);
  result = vmlaq_n_f64(vmulq_n_f64(v9, *a2), v11, *&v5);
  *this = v13;
  this[1] = result;
  this[2] = v14;
  this[3] = vmlaq_n_f64(vmulq_n_f64(v9, *&v4), v11, *&v7);
  this[4] = v15;
  this[5] = v16;
  this[6] = v12;
  this[7] = v17;
  return result;
}

float64x2_t CA::Mat4Impl::mat4_translate(float64x2_t *this, double *a2, double a3, double a4, double a5)
{
  v5 = vmlaq_n_f64(vmlaq_n_f64(this[6], *this, a3), this[2], a4);
  v6 = vmlaq_n_f64(vmlaq_n_f64(this[7], this[1], a3), this[3], a4);
  result = this[4];
  v8 = vmlaq_n_f64(v6, this[5], a5);
  this[6] = vmlaq_n_f64(v5, result, a5);
  this[7] = v8;
  return result;
}

float64x2_t CA::Mat4Impl::mat4_translate_right(float64x2_t *this, double *a2, float64x2_t result, float64_t a4, double a5)
{
  result.f64[1] = a4;
  v6 = this[1];
  v7 = this[3];
  v8 = this[5];
  v9 = this[7];
  v10 = vmlaq_laneq_f64(this[2], result, v7, 1);
  v11 = vmlaq_laneq_f64(this[4], result, v8, 1);
  v12 = vmlaq_laneq_f64(this[6], result, v9, 1);
  *this = vmlaq_laneq_f64(*this, result, v6, 1);
  this[1] = vmlaq_laneq_f64(v6, *&a5, v6, 1);
  this[2] = v10;
  this[3] = vmlaq_laneq_f64(v7, *&a5, v7, 1);
  this[4] = v11;
  this[5] = vmlaq_laneq_f64(v8, *&a5, v8, 1);
  this[6] = v12;
  this[7] = vmlaq_laneq_f64(v9, *&a5, v9, 1);
  return result;
}

float64x2_t CA::Mat4Impl::mat4_scale(CA::Mat4Impl *this, float *a2, float a3, float a4, float a5)
{
  v5 = *(this + 2);
  v6 = a5;
  v7 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(this + 16)), a4)), vmulq_n_f64(vcvt_hight_f64_f32(*(this + 1)), a4));
  *this = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*this), a3)), vmulq_n_f64(vcvt_hight_f64_f32(*this), a3));
  *(this + 1) = v7;
  result = vmulq_n_f64(vcvt_hight_f64_f32(v5), v6);
  *(this + 2) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v5.f32), v6)), result);
  return result;
}

BOOL CA::Mat4Impl::mat4_is_front_facing(int8x16_t *this, const double *a2)
{
  v2 = vextq_s8(*this, *this, 8uLL);
  v3 = vextq_s8(this[1], this[1], 8uLL);
  v4 = this[2];
  v5 = this[3];
  v6 = this[4];
  v7 = this[5];
  v8 = this[6];
  v9 = this[7];
  v10 = vmlsq_lane_f64(vmlaq_n_f64(vmulq_n_f64(v8, -(vmuld_lane_f64(v7.f64[0], v5, 1) - *&this[5].i64[1] * v5.f64[0])), v4, -(vmuld_lane_f64(v9.f64[0], v7, 1) - *&this[7].i64[1] * v7.f64[0])), v6, -(vmuld_lane_f64(v9.f64[0], v5, 1) - *&this[7].i64[1] * v5.f64[0]), 0);
  *&v11.f64[0] = this[7].i64[0];
  *&v11.f64[1] = this[6].i64[1];
  v12 = vmulq_f64(v11, vzip2q_s64(v4, v5));
  v13 = vmulq_laneq_f64(v5, v6, 1);
  v14 = vmulq_f64(v5, *this);
  *&v5.f64[1] = this[2].i64[1];
  v15 = vmlaq_f64(vnegq_f64(v12), v5, vzip2q_s64(v8, v9));
  v16 = vmulq_n_f64(v15, v6.f64[0]);
  v17 = vmlaq_n_f64(vmulq_n_f64(vmlaq_laneq_f64(vnegq_f64(v13), v7, v4, 1), v8.f64[0]), vmlaq_laneq_f64(vnegq_f64(vmulq_laneq_f64(v7, v8, 1)), v9, v6, 1), v4.f64[0]);
  v18 = vsubq_f64(v17, v16);
  *&v16.f64[0] = *&vaddq_f64(v17, v16);
  v16.f64[1] = v18.f64[1];
  *&v14.f64[0] = *&vmlsq_laneq_f64(vdupq_laneq_s64(v14, 1), v3, v4, 1);
  v19 = vmulq_f64(vzip2q_s64(v15, v9), vextq_s8(v2, v2, 8uLL));
  *&v14.f64[1] = this[1].i64[1];
  v20 = vmulq_f64(v8, v14);
  v21 = vmlaq_f64(vmulq_f64(v16, v3), v2, v10);
  return vmulq_f64(vsubq_f64(vdupq_laneq_s64(v21, 1), v21), vmlaq_laneq_f64(vaddq_f64(v20, v19), v4, vsubq_f64(v20, v19), 1)).f64[0] >= 0.0;
}

uint64_t CA::Mat4Impl::mat4_transpose(uint64_t this, double *a2, const double *a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  if (this == a2)
  {
    v11 = *(a2 + 2);
    v12 = *(a2 + 3);
    v6 = *(a2 + 4);
    v5 = *(a2 + 5);
    v13 = *(a2 + 6);
    v14 = *(a2 + 7);
    v8 = *(a2 + 8);
    v7 = *(a2 + 9);
    v16 = *(a2 + 10);
    v15 = *(a2 + 11);
    v9 = *(a2 + 12);
    v10 = *(a2 + 13);
  }

  else
  {
    v6 = *(a2 + 4);
    v5 = *(a2 + 5);
    v8 = *(a2 + 8);
    v7 = *(a2 + 9);
    v9 = *(a2 + 12);
    v10 = *(a2 + 13);
    v11 = *(a2 + 2);
    v12 = *(a2 + 3);
    v13 = *(a2 + 6);
    v14 = *(a2 + 7);
    v16 = *(a2 + 10);
    v15 = *(a2 + 11);
  }

  v18 = *(a2 + 14);
  v17 = *(a2 + 15);
  *this = v3;
  *(this + 8) = v6;
  *(this + 16) = v8;
  *(this + 24) = v9;
  *(this + 32) = v4;
  *(this + 40) = v5;
  *(this + 48) = v7;
  *(this + 56) = v10;
  *(this + 64) = v11;
  *(this + 72) = v13;
  *(this + 80) = v16;
  *(this + 88) = v18;
  *(this + 96) = v12;
  *(this + 104) = v14;
  *(this + 112) = v15;
  *(this + 120) = v17;
  return this;
}

double CA::Mat4Impl::mat4_set_transform(CA::Mat4Impl *this, double *a2, const CGAffineTransform *a3)
{
  *this = xmmword_183E20E00;
  *(this + 1) = 0u;
  *(this + 2) = xmmword_183E20E60;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = xmmword_183E20E00;
  *(this + 6) = 0u;
  *(this + 7) = xmmword_183E20E60;
  *this = *a2;
  *(this + 1) = a2[1];
  *(this + 4) = a2[2];
  *(this + 5) = a2[3];
  *(this + 12) = a2[4];
  result = a2[5];
  *(this + 13) = result;
  return result;
}

void CA::mix(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = vmlaq_n_f64(*(a2 + 16), vsubq_f64(*(a3 + 16), *(a2 + 16)), a4);
  *a1 = vmlaq_n_f64(*a2, vsubq_f64(*a3, *a2), a4);
  *(a1 + 16) = v6;
  v7 = vmlaq_n_f64(*(a2 + 48), vsubq_f64(*(a3 + 48), *(a2 + 48)), a4);
  *(a1 + 32) = vmlaq_n_f64(*(a2 + 32), vsubq_f64(*(a3 + 32), *(a2 + 32)), a4);
  *(a1 + 48) = v7;
  v8 = *(a2 + 96) + (*(a3 + 96) - *(a2 + 96)) * a4;
  v9 = vmlaq_n_f64(*(a2 + 64), vsubq_f64(*(a3 + 64), *(a2 + 64)), a4);
  v10 = vmlaq_n_f64(*(a2 + 80), vsubq_f64(*(a3 + 80), *(a2 + 80)), a4);
  *(a1 + 64) = v9;
  *(a1 + 80) = v10;
  *(a1 + 96) = v8;
  v11 = *(a2 + 104);
  v12 = *(a2 + 120);
  v13 = *(a3 + 104);
  v14 = *(a3 + 120);
  v15 = vmlaq_f64(vmulq_f64(v14, v12), v11, v13);
  v15.f64[0] = vaddvq_f64(v15);
  v9.f64[0] = 0.0;
  v16 = vdupq_lane_s64(vcgtq_f64(v9, v15).i64[0], 0);
  v17 = vbslq_s8(v16, vnegq_f64(v12), v12);
  v18 = vbslq_s8(v16, vnegq_f64(v11), v11);
  if (v15.f64[0] >= 0.0)
  {
    v19 = v15.f64[0];
  }

  else
  {
    v19 = -v15.f64[0];
  }

  v20 = fmin(v19, 1.0);
  if (v20 <= 0.9999)
  {
    v31 = a4;
    v34 = *(a3 + 104);
    v35 = v17;
    v36 = *(a3 + 120);
    v32 = v18;
    v33 = v20;
    v26 = acos(v20);
    v27 = __sincos_stret(v26 * v31);
    v28 = vmlsq_lane_f64(v34, v32, v33, 0);
    v29 = vmlsq_lane_f64(v36, v35, v33, 0);
    v30 = v27.__sinval / sqrt(vaddvq_f64(vmlaq_f64(vmulq_f64(v29, v29), v28, v28)));
    v24 = vmlaq_n_f64(vmulq_n_f64(v35, v27.__cosval), v29, v30);
    v25 = vmlaq_n_f64(vmulq_n_f64(v32, v27.__cosval), v28, v30);
  }

  else
  {
    v21 = vmlaq_n_f64(v18, vsubq_f64(v13, v18), a4);
    v22 = vmlaq_n_f64(v17, vsubq_f64(v14, v17), a4);
    v23 = 1.0 / sqrt(vaddvq_f64(vmlaq_f64(vmulq_f64(v22, v22), v21, v21)));
    v24 = vmulq_n_f64(v22, v23);
    v25 = vmulq_n_f64(v21, v23);
  }

  *(a1 + 104) = v25;
  *(a1 + 120) = v24;
  *(a1 + 136) = 1;
}

uint64_t CA::Mat2Impl::mat2_pow(uint64_t this, double *a2)
{
  if (a2)
  {
    v2.f64[0] = *this;
    if ((a2 & 0x80000000) != 0)
    {
      v3 = *(this + 8);
      v4.f64[0] = *(this + 24);
      v5.f64[1] = *(this + 16);
      v5.f64[0] = v4.f64[0];
      v6 = vdupq_lane_s64(*&v3.f64[0], 0);
      v6.f64[0] = *this;
      v7 = vmulq_f64(v5, v6);
      v8 = vsubq_f64(v7, vdupq_laneq_s64(v7, 1)).f64[0];
      if (v8 != 0.0)
      {
        v9 = 1.0 / v8;
        v10 = *(this + 32);
        v11 = vmulq_n_f64(v3, v9);
        v4.f64[1] = *this;
        v2 = vmulq_n_f64(v4, v9);
        *this = v2.f64[0];
        v3 = vnegq_f64(v11);
        *(this + 8) = v3;
        v4.f64[0] = v2.f64[1];
        *(this + 24) = v2.f64[1];
        v12 = vmulq_f64(v10, v11);
        *(this + 32) = vmlsq_f64(vextq_s8(v12, v12, 8uLL), v2, v10);
      }

      LODWORD(a2) = -a2;
    }

    else
    {
      v3.f64[0] = *(this + 8);
      v4.f64[0] = *(this + 24);
    }

    v13.f64[0] = *(this + 16);
    v15 = *this;
    v14 = *(this + 16);
    v16 = *(this + 32);
    v17 = xmmword_183E20E00;
    v18 = 0uLL;
    v19 = xmmword_183E20E60;
    do
    {
      v20 = vdupq_lane_s64(*&v16.f64[0], 0);
      v21 = vdupq_laneq_s64(v16, 1);
      if (a2)
      {
        v24 = vmulq_n_f64(v17, v13.f64[0]);
        v25 = vmlaq_n_f64(v18, v17, v16.f64[0]);
        v22 = vdupq_lane_s64(*&v3.f64[0], 0);
        v17 = vmlaq_n_f64(vmulq_n_f64(v17, v2.f64[0]), v19, v3.f64[0]);
        v3 = vdupq_lane_s64(*&v13.f64[0], 0);
        v23 = vdupq_lane_s64(*&v4.f64[0], 0);
        v18 = vmlaq_laneq_f64(v25, v19, v16, 1);
        v19 = vmlaq_n_f64(v24, v19, v4.f64[0]);
      }

      else
      {
        v22 = vdupq_lane_s64(*&v3.f64[0], 0);
        v3 = vdupq_lane_s64(*&v13.f64[0], 0);
        v23 = vdupq_lane_s64(*&v4.f64[0], 0);
      }

      v2 = vmlaq_f64(vmulq_n_f64(v15, v2.f64[0]), v22, v14);
      v13 = vmlaq_f64(vmulq_f64(v15, v3), v23, v14);
      v16 = vmlaq_f64(vmlaq_f64(v16, v15, v20), v14, v21);
      v3.f64[0] = v2.f64[1];
      v4.f64[0] = v13.f64[1];
      v14 = v13;
      v15 = v2;
      v26 = a2 >= 2;
      LODWORD(a2) = a2 >> 1;
    }

    while (v26);
    *this = v17;
    *(this + 16) = v19;
    *(this + 32) = v18;
  }

  else if (this != &CA::Mat2Impl::mat2_identity_double)
  {
    *this = xmmword_183E20E00;
    *(this + 16) = xmmword_183E20E60;
    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  return this;
}

float64x2_t CA::Mat2Impl::mat2_invert(CA::Mat2Impl *this, double *a2, const double *a3)
{
  result.f64[0] = a2[3];
  v4.f64[1] = a2[2];
  v4.f64[0] = result.f64[0];
  v5 = vmulq_f64(v4, *a2);
  v6 = vsubq_f64(v5, vdupq_laneq_s64(v5, 1)).f64[0];
  if (v6 != 0.0)
  {
    v7 = 1.0 / v6;
    v8 = *(a2 + 4);
    v9 = vmulq_n_f64(*(a2 + 1), v7);
    result.f64[1] = *a2;
    result = vmulq_n_f64(result, v7);
    *this = result.f64[0];
    *(this + 8) = vnegq_f64(v9);
    *(this + 3) = *&result.f64[1];
    v10 = vmulq_f64(v8, v9);
    *(this + 2) = vmlsq_f64(vextq_s8(v10, v10, 8uLL), result, v8);
  }

  return result;
}

double CA::Mat2Impl::mat2_get_scale_2d(CA::Mat2Impl *this, const double *a2)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  result = *this;
  v5 = *(this + 1);
  if (vabdd_f64(*this, trunc(v2)) >= 0.000001 || fabs(v5) >= 0.000001 || fabs(v3) >= 0.000001)
  {
    v6 = result * result + v5 * v5;
    v7 = v2 * v2 + v3 * v3;
    v8 = -(v6 - v7);
    if (v6 - v7 >= 0.0)
    {
      v8 = v6 - v7;
    }

    result = 0.0;
    if (v8 < 1.0e-10)
    {
      return (sqrt(v7) + sqrt(v6)) * 0.5;
    }
  }

  return result;
}

float64x2_t CA::Mat2Impl::mat2_apply_to_rect(float64x2_t *this, float64x2_t *a2, double *a3)
{
  v4 = a2[1].f64[0];
  result.f64[0] = a2[1].f64[1];
  if (v4 <= result.f64[0])
  {
    v5 = a2[1].f64[1];
  }

  else
  {
    v5 = a2[1].f64[0];
  }

  if (v5 < 1.79769313e308)
  {
    v6 = this[1];
    v7 = vmlaq_n_f64(vmulq_n_f64(*this, a2->f64[0]), v6, a2->f64[1]);
    v8 = vmulq_n_f64(*this, v4);
    v9 = vaddq_f64(v7, v8);
    v10 = vminnmq_f64(v7, v9);
    v11 = vmaxnmq_f64(v7, v9);
    v12 = vmlaq_n_f64(v7, v6, result.f64[0]);
    v13 = vaddq_f64(v12, v8);
    v14 = vminnmq_f64(v10, vminnmq_f64(v12, v13));
    result = vsubq_f64(vmaxnmq_f64(v11, vmaxnmq_f64(v12, v13)), v14);
    *a2 = vaddq_f64(v14, this[2]);
    a2[1] = result;
  }

  return result;
}

void CA::Mat2Impl::mat2_apply_to_rect_interior(CA::Mat2Impl *this, float64x2_t *a2, CA::Rect *a3)
{
  v21[8] = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  if ((fabs(*&v3) >= 0.000001 || fabs(*(this + 2)) >= 0.000001) && ((v4 = *this, fabs(*this) >= 0.000001) || fabs(*(this + 3)) >= 0.000001))
  {
    v6 = a2[1].f64[0];
    v5 = a2[1].f64[1];
    if (v6 <= v5)
    {
      v7 = a2[1].f64[1];
    }

    else
    {
      v7 = a2[1].f64[0];
    }

    if (v7 < 1.79769313e308)
    {
      v8 = 0;
      v9 = a2->f64[1];
      v21[0] = a2->f64[0];
      v21[1] = v9;
      v21[2] = v6 + v21[0];
      v21[3] = v9;
      v21[4] = v6 + v21[0];
      v21[5] = v5 + v9;
      v21[6] = v21[0];
      v21[7] = v5 + v9;
      v10 = (this + 40);
      v11 = (this + 16);
      v12 = vld1q_dup_f64(v11);
      v13 = (this + 32);
      v14 = vdupq_lane_s64(v4, 0);
      v15 = vld1q_dup_f64(v13);
      v16 = vdupq_lane_s64(v3, 0);
      v17 = (this + 24);
      v18 = vld1q_dup_f64(v17);
      v19 = vld1q_dup_f64(v10);
      do
      {
        v20 = &v21[v8];
        v23 = vld2q_f64(v20);
        v24.val[0] = vmlaq_f64(vmlaq_f64(v15, v23.val[0], v14), v23.val[1], v12);
        v24.val[1] = vmlaq_f64(vmlaq_f64(v19, v23.val[0], v16), v23.val[1], v18);
        vst2q_f64(v20, v24);
        v8 += 4;
      }

      while (v8 != 8);
      CA::Rect::set_corners_interior(a2, v21);
    }
  }

  else
  {

    CA::Mat2Impl::mat2_apply_to_rect(this, a2, a3);
  }
}

char *CA::Render::DeferredImageSlot::show(char *result, X::Stream *this, int a3, uint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    v7 = result;
    X::Stream::printf(this, "(deferred-image-slot ");
    if (*(v7 + 16))
    {
      v8 = (a3 + 1);
      X::Stream::printf(this, "\n%*s", 2 * v8, "");
      (*(**(v7 + 16) + 40))(*(v7 + 16), this, v8, a4);
    }

    else
    {
      X::Stream::printf(this, "(no texture)");
    }

    return X::Stream::printf(this, ")");
  }

  return result;
}

os_log_t ___Z16x_log_get_zombiev_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Zombie");
  x_log_get_zombie(void)::log = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::Context::Slot>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

void CA::Render::Context::transfer_slot(CA::Render::Context *this, int a2, CA::Render::Context *a3)
{
  if (a2 && CA::Render::Context::_slot_table)
  {
    v5 = *(this + 21);
    v4 = *(this + 22);
    if (v5 != v4)
    {
      while (*v5 != a2)
      {
        if (++v5 == v4)
        {
          return;
        }
      }
    }

    if (v5 != v4)
    {
      v6 = CA::Render::Context::context_by_id(a3);
      if (v6)
      {
        v7 = v6;
        os_unfair_lock_lock(&CA::Render::Context::_context_lock);
        v8 = *v5;
        v9 = *(this + 22);
        v10 = *(v9 - 8);
        *(v5 + 4) = *(v9 - 4);
        *v5 = v10;
        *(this + 22) -= 8;
        v12 = *(v7 + 176);
        v11 = *(v7 + 184);
        if (v12 >= v11)
        {
          v14 = *(v7 + 168);
          v15 = (v12 - v14) >> 3;
          if ((v15 + 1) >> 61)
          {
            std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
          }

          v16 = v11 - v14;
          v17 = v16 >> 2;
          if (v16 >> 2 <= (v15 + 1))
          {
            v17 = v15 + 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::Context::Slot>>(v18);
          }

          *(8 * v15) = v8 & 0xFFFFFF00FFFFFFFFLL | 0x100000000;
          v13 = 8 * v15 + 8;
          v19 = *(v7 + 168);
          v20 = *(v7 + 176) - v19;
          v21 = (8 * v15 - v20);
          memcpy(v21, v19, v20);
          v22 = *(v7 + 168);
          *(v7 + 168) = v21;
          *(v7 + 176) = v13;
          *(v7 + 184) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v12 = v8 & 0xFFFFFF00FFFFFFFFLL | 0x100000000;
          v13 = (v12 + 1);
        }

        *(v7 + 176) = v13;
        os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
        if (atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
        {
          v23 = *(*v7 + 16);

          v23(v7);
        }
      }
    }
  }
}

void CA::Render::Context::get_debug_log(CA::Render::Context *this, CA::Render::Object *a2, int *a3, void *a4)
{
  v182 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v169 = 0u;
  v167 = 0u;
  v168 = 0u;
  *buffer = 0u;
  v6 = *a3;
  if (*a3 <= 0xB)
  {
    v7 = *(a3 + 2);
    if (((1 << v6) & 0xD97) != 0)
    {
      os_unfair_lock_lock(&CA::Render::Context::_context_lock);
      v8 = x_hash_table_values(CA::Render::Context::_context_table);
      if (v8)
      {
        v9 = v8;
        v151 = v8;
        do
        {
          v10 = (*v9 + 8);
          if (!atomic_fetch_add(v10, 1u))
          {
            atomic_fetch_add(v10, 0xFFFFFFFF);
          }

          v9 = v9[1];
        }

        while (v9);
        os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
        v11 = *a3;
        v152 = a3;
        v144 = v5;
        if (*a3 > 6)
        {
          if (v11 <= 10)
          {
            if ((v11 - 7) >= 2)
            {
              v12 = v151;
              if (v11 == 10)
              {
                v13 = 0;
                v14 = v151;
                do
                {
                  v15 = *v14;
                  if ((*(*v14 + 13) & 2) == 0)
                  {
                    if ((v13 & 1) == 0)
                    {
                      x_stream_write(v7, "Unattached contexts:\n", 0x15uLL);
                    }

                    CA::Render::Context::show_hosts(v15, v7);
                    v13 = 1;
                  }

                  v14 = v14[1];
                }

                while (v14);
                goto LABEL_93;
              }

              goto LABEL_94;
            }

            goto LABEL_49;
          }

          if (v11 != 11)
          {
            v12 = v151;
            if (v11 != 13)
            {
              goto LABEL_94;
            }

            goto LABEL_49;
          }

          v77 = 0.0;
          v78 = v151;
          v79 = 0.0;
          v80 = 0.0;
          v81 = 0.0;
          while (1)
          {
            *__p = 0u;
            *v161 = 0u;
            v162 = 1065353216;
            v82 = *v78;
            v83 = *(a3 + 1);
            if (!v83 || v83 == *(v82 + 16))
            {
              break;
            }

LABEL_234:
            v137 = __p[0];
            __p[0] = 0;
            if (v137)
            {
              operator delete(v137);
            }

            v78 = v78[1];
            if (!v78)
            {
              v12 = v151;
              if (v79 != 0.0)
              {
                v138 = (v81 - v80);
                v139 = trunc(v81 - v80);
                if (v138 >= 0x400)
                {
                  v141 = 1.0;
                  do
                  {
                    v141 = v141 * 0.0009765625;
                    v140 = v141 * v139;
                  }

                  while (v141 * v139 >= 1024.0);
                }

                else
                {
                  v140 = v139;
                }

                v142 = v138 > 0x3FF;
                if ((v138 & 0xFFFFFFFFFFF00000) != 0)
                {
                  ++v142;
                }

                if ((v138 & 0xFFFFFFFFC0000000) != 0)
                {
                  ++v142;
                }

                if (v138 >> 40)
                {
                  ++v142;
                }

                if (v138 >> 50)
                {
                  ++v142;
                }

                if (v138 >> 60)
                {
                  v143 = v142 + 1;
                }

                else
                {
                  v143 = v142;
                }

                X::Stream::printf(v7, "Total utilization: %.2f%%, wasted memory: %.2lf %s\n\n", v77 * 100.0 / v79, v140, off_1E6DF9988[v143]);
                goto LABEL_93;
              }

              goto LABEL_94;
            }
          }

          v150 = v78;
          pthread_mutex_lock((v82 + 72));
          v86 = *(v82 + 144);
          v154 = v82;
          if (v86)
          {
            for (i = 0; i < v86; ++i)
            {
              v88 = *(*(v82 + 136) + 8 * i);
              if (v88)
              {
                do
                {
                  v89 = v88[2];
                  if (*(v89 + 12) == 22)
                  {
                    v90 = *(v89 + 16);
                    if (v90)
                    {
                      v91 = *(v90 + 104);
                      if (v91)
                      {
                        if (*(v91 + 12) == 56)
                        {
                          v92 = *(v91 + 16);
                          v93 = 0x9DDFEA08EB382D69 * ((8 * (v92 & 0x1FFFFFFF) + 8) ^ HIDWORD(v92));
                          v94 = 0x9DDFEA08EB382D69 * (HIDWORD(v92) ^ (v93 >> 47) ^ v93);
                          v95 = 0x9DDFEA08EB382D69 * (v94 ^ (v94 >> 47));
                          if (!__p[1])
                          {
                            goto LABEL_173;
                          }

                          v96 = vcnt_s8(__p[1]);
                          v96.i16[0] = vaddlv_u8(v96);
                          if (v96.u32[0] > 1uLL)
                          {
                            v97 = 0x9DDFEA08EB382D69 * (v94 ^ (v94 >> 47));
                            if (v95 >= __p[1])
                            {
                              v97 = v95 % __p[1];
                            }
                          }

                          else
                          {
                            v97 = v95 & (__p[1] - 1);
                          }

                          v98 = *(__p[0] + v97);
                          if (!v98 || (v99 = *v98) == 0)
                          {
LABEL_173:
                            operator new();
                          }

                          while (1)
                          {
                            v100 = v99[1];
                            if (v100 == v95)
                            {
                              if (v99[2] == v92)
                              {
                                v102 = v99[3];
                                v101 = (v99 + 3);
                                if (v102)
                                {
                                  CA::shape_union(v101, (v91 + 24), v85);
                                }

                                else
                                {
                                  *v101 = CA::Shape::new_shape((v91 + 24), v84);
                                }

                                break;
                              }
                            }

                            else
                            {
                              if (v96.u32[0] > 1uLL)
                              {
                                if (v100 >= __p[1])
                                {
                                  v100 %= __p[1];
                                }
                              }

                              else
                              {
                                v100 &= __p[1] - 1;
                              }

                              if (v100 != v97)
                              {
                                goto LABEL_173;
                              }
                            }

                            v99 = *v99;
                            if (!v99)
                            {
                              goto LABEL_173;
                            }
                          }
                        }
                      }
                    }
                  }

                  v88 = *v88;
                }

                while (v88);
                v82 = v154;
                v86 = *(v154 + 144);
              }
            }
          }

          if (!v161[1])
          {
            a3 = v152;
            v78 = v150;
            goto LABEL_232;
          }

          v103 = *(v82 + 16);
          v104 = atomic_load((v82 + 228));
          v105 = v82;
          if (!v104)
          {
            if (*(v82 + 256))
            {
              v106 = 0;
            }

            else
            {
              v106 = getpid();
            }

            v107 = 0;
            v105 = v154;
            atomic_compare_exchange_strong((v154 + 228), &v107, v106);
            if (v107)
            {
              v104 = v107;
            }

            else
            {
              v104 = v106;
            }
          }

          v145 = v81;
          v146 = v80;
          v147 = v79;
          v148 = v77;
          v108 = CA::Render::Context::process_path(v105);
          X::Stream::printf(v7, "\nContext %x (pid %d [%s]):", v103, v104, v108 + 28);
          v109 = v161[0];
          if (v161[0])
          {
            v110 = 0.0;
            v111 = 0.0;
            v112 = 0.0;
            v113 = 0.0;
            do
            {
              v114 = *(v109 + 2);
              if (v114)
              {
                v159 = *(v109 + 3);
                v115 = v159;
                X::Stream::printf(v7, "\n%*s", 2, "");
                X::Stream::printf(v7, "Texture ");
                (*(*v114 + 40))(v114, v7, 1, 0);
                v157 = 0;
                v158 = 0;
                *v163 = v115;
                v164 = 0;
                v165 = 0;
                while (1)
                {
                  v116 = CA::ShapeIterator::iterate(v163, &v157);
                  X::Stream::printf(v7, "\n%*s", 4, "");
                  if (!v116)
                  {
                    break;
                  }

                  X::Stream::printf(v7, "[%d %d %d %d]", v157, HIDWORD(v157), v158, HIDWORD(v158));
                  CA::shape_union(&v159, &v157, v117);
                }

                v118 = (v114[5] * v114[4]);
                v119 = v159;
                v120 = CA::Shape::area(v159);
                v121 = (*(*v114 + 184))(v114);
                v122 = v121 * v120 / v118;
                v123 = (v121 - v122);
                v124 = trunc(v121 - v122);
                if (v123 >= 0x400)
                {
                  v126 = 1.0;
                  do
                  {
                    v126 = v126 * 0.0009765625;
                    v125 = v126 * v124;
                  }

                  while (v126 * v124 >= 1024.0);
                }

                else
                {
                  v125 = v124;
                }

                v127 = v123 > 0x3FF;
                if ((v123 & 0xFFFFFFFFFFF00000) != 0)
                {
                  ++v127;
                }

                if ((v123 & 0xFFFFFFFFC0000000) != 0)
                {
                  ++v127;
                }

                if (v123 >> 40)
                {
                  ++v127;
                }

                if (v123 >> 50)
                {
                  ++v127;
                }

                if (v123 >> 60)
                {
                  v128 = v127 + 1;
                }

                else
                {
                  v128 = v127;
                }

                X::Stream::printf(v7, "Utilization: %.2f%%, wasted memory: %.2lf %s\n", v120 * 100.0 / v118, v125, off_1E6DF9988[v128]);
                CA::Shape::unref(v119);
                v113 = v113 + v121;
                v112 = v122 + v112;
                v111 = v111 + v118;
                v110 = v110 + v120;
              }

              v109 = *v109;
            }

            while (v109);
            a3 = v152;
            v78 = v150;
            if (v111 != 0.0)
            {
              v129 = (v113 - v112);
              v130 = trunc(v113 - v112);
              v82 = v154;
              if (v129 >= 0x400)
              {
                v132 = 1.0;
                do
                {
                  v132 = v132 * 0.0009765625;
                  v131 = v132 * v130;
                }

                while (v132 * v130 >= 1024.0);
              }

              else
              {
                v131 = v130;
              }

              v133 = v129 > 0x3FF;
              if ((v129 & 0xFFFFFFFFFFF00000) != 0)
              {
                ++v133;
              }

              if ((v129 & 0xFFFFFFFFC0000000) != 0)
              {
                ++v133;
              }

              if (v129 >> 40)
              {
                ++v133;
              }

              if (v129 >> 50)
              {
                ++v133;
              }

              if (v129 >> 60)
              {
                v134 = v133 + 1;
              }

              else
              {
                v134 = v133;
              }

              X::Stream::printf(v7, "\n  Context utilization: %.2f%%, wasted memory: %.2lf %s\n", v110 * 100.0 / v111, v131, off_1E6DF9988[v134]);
              goto LABEL_231;
            }
          }

          else
          {
            v110 = 0.0;
            v111 = 0.0;
            v112 = 0.0;
            v113 = 0.0;
            a3 = v152;
            v78 = v150;
          }

          v82 = v154;
LABEL_231:
          v81 = v113 + v145;
          v80 = v112 + v146;
          v79 = v111 + v147;
          v77 = v110 + v148;
          x_stream_write(v7, "\n", 1uLL);
LABEL_232:
          pthread_mutex_unlock((v82 + 72));
          v135 = v161[0];
          if (v161[0])
          {
            do
            {
              v136 = *v135;
              operator delete(v135);
              v135 = v136;
            }

            while (v136);
          }

          goto LABEL_234;
        }

        if (v11 <= 1)
        {
          if (!v11)
          {
            v55 = 0;
            v56 = v151;
            while (1)
            {
              while (1)
              {
                v57 = *v56;
                if ((*(*v56 + 13) & 2) != 0)
                {
                  break;
                }

                if ((v55 & 1) == 0)
                {
                  x_stream_write(v7, "Unattached contexts:\n", 0x15uLL);
                }

                v58 = *(v57 + 16);
                v59 = atomic_load((v57 + 228));
                if (!v59)
                {
                  if (*(v57 + 256))
                  {
                    v60 = 0;
                  }

                  else
                  {
                    v60 = getpid();
                  }

                  v61 = 0;
                  atomic_compare_exchange_strong((v57 + 228), &v61, v60);
                  if (v61)
                  {
                    v59 = v61;
                  }

                  else
                  {
                    v59 = v60;
                  }
                }

                v62 = CA::Render::Context::process_path(v57);
                X::Stream::printf(v7, "  %x: pid %d [%s]", v58, v59, v62 + 28);
                if (!*(v57 + 260))
                {
                  x_stream_write(v7, " (local)", 8uLL);
                }

                if (*(v57 + 352))
                {
                  x_stream_write(v7, " (visible)", 0xAuLL);
                }

                if ((*(v57 + 584) & 4) != 0)
                {
                  x_stream_write(v7, " (secure)", 9uLL);
                }

                v63 = *(v57 + 308);
                if (v63 > 1.0)
                {
                  X::Stream::printf(v7, " (requested headroom: %f)", v63);
                }

                if ((*(v57 + 584) & 0x800) != 0)
                {
                  x_stream_write(v7, " (decode-error)", 0xFuLL);
                }

                v64 = *(v57 + 240);
                if (v64)
                {
                  X::Stream::printf(v7, " %s", (v64 + 28));
                }

                v65 = *(v57 + 552);
                if (v65)
                {
                  CStringPtr = CFStringGetCStringPtr(v65, 0x8000100u);
                  X::Stream::printf(v7, " (client-annotation: %s)", CStringPtr);
                }

                v55 = 1;
                x_stream_write(v7, "\n", 1uLL);
                v56 = v56[1];
                if (!v56)
                {
                  goto LABEL_241;
                }
              }

              v56 = v56[1];
              if (!v56)
              {
                v12 = v151;
                if ((v55 & 1) == 0)
                {
                  goto LABEL_94;
                }

LABEL_241:
                x_stream_write(v7, "\n", 1uLL);
                goto LABEL_93;
              }
            }
          }

          v12 = v151;
          if (v11 != 1)
          {
            goto LABEL_94;
          }

LABEL_49:
          if (v11 == 7)
          {
            v27 = 6;
          }

          else
          {
            v27 = 4;
          }

          if (v11 == 8)
          {
            v27 = 0;
          }

          v153 = *a3;
          if (v11 == 13)
          {
            ++v27;
          }

          v149 = v27;
          v28 = "";
          v29 = v151;
          do
          {
            v30 = *v29;
            if ((*(*v29 + 13) & 2) == 0)
            {
              v31 = *(a3 + 1);
              if (!v31 || v31 == *(v30 + 16))
              {
                pthread_mutex_lock((v30 + 72));
                *buffer = 0u;
                v167 = 0u;
                v168 = 0u;
                v169 = 0u;
                v170 = 0u;
                v171 = 0u;
                v172 = 0u;
                v173 = 0u;
                v174 = 0u;
                v175 = 0u;
                v176 = 0u;
                v177 = 0u;
                v178 = 0u;
                v179 = 0u;
                v180 = 0u;
                v181 = 0u;
                if (*(v30 + 480))
                {
                  v32 = CGColorSpaceCopyICCProfileDescription();
                  if (v32)
                  {
                    v33 = v32;
                    CFStringGetCString(v32, buffer, 255, 0x8000100u);
                    CFRelease(v33);
                  }
                }

                v34 = *(v30 + 16);
                if (buffer[0])
                {
                  v35 = "; colorspace ";
                }

                else
                {
                  v35 = "";
                }

                if (buffer[0])
                {
                  v36 = "";
                }

                else
                {
                  v36 = "";
                }

                v37 = *(v30 + 192);
                v38 = atomic_load((v30 + 228));
                if (!v38)
                {
                  v39 = v36;
                  v40 = *(v30 + 16);
                  if (*(v30 + 256))
                  {
                    v41 = 0;
                  }

                  else
                  {
                    v41 = getpid();
                  }

                  v42 = 0;
                  atomic_compare_exchange_strong((v30 + 228), &v42, v41);
                  if (v42)
                  {
                    v38 = v42;
                  }

                  else
                  {
                    v38 = v41;
                  }

                  v34 = v40;
                  v36 = v39;
                }

                v155 = v34;
                v43 = v37;
                v44 = (CA::Render::Context::process_path(v30) + 7);
                v45 = *(v30 + 584);
                if ((v45 & 4) != 0)
                {
                  v46 = "(secure) ";
                }

                else
                {
                  v46 = "";
                }

                if ((v45 & 0x10) != 0)
                {
                  v47 = "(start security analysis) ";
                }

                else
                {
                  v47 = "";
                }

                if ((v45 & 0x20) != 0)
                {
                  v28 = "(stop security analysis) ";
                }

                v48 = mach_absolute_time();
                v49 = CATimeWithHostTime(v48);
                X::Stream::printf(v7, "== context %x%s%s%s; level %f; pid %d [%s] %s%s%sat time %f ==\n\n", v155, v35, buffer, v36, v43, v38, v44, v46, v47, v28, v49);
                v50 = CA::Render::Context::root_layer_handle(v30);
                if (v50 && (v51 = *(v50 + 2)) != 0)
                {
                  if (v153 == 13)
                  {
                    LODWORD(__p[0]) = 0;
                    v163[0] = 0;
                    CA::Render::Layer::count_layers(v51, __p, v163, 0);
                    X::Stream::printf(v7, "\n*** Total Layers: %d, Hidden/Culled Layers: %d ***\n\n", LODWORD(__p[0]), v163[0]);
                  }

                  (*(*v51 + 40))(v51, v7, 0, v149);
                }

                else
                {
                  x_stream_write(v7, "  <null>\n", 9uLL);
                }

                v28 = "";
                x_stream_write(v7, "\n\n", 2uLL);
                pthread_mutex_unlock((v30 + 72));
                a3 = v152;
              }
            }

            v29 = v29[1];
          }

          while (v29);
          goto LABEL_93;
        }

        v12 = v151;
        if (v11 == 2)
        {
          v67 = v151;
          do
          {
            v68 = *v67;
            if (*(*v67 + 168) != *(*v67 + 176))
            {
              v69 = *(v68 + 16);
              v70 = atomic_load((v68 + 228));
              if (!v70)
              {
                v156 = *(v68 + 16);
                if (*(v68 + 256))
                {
                  v71 = 0;
                }

                else
                {
                  v71 = getpid();
                }

                v72 = 0;
                atomic_compare_exchange_strong((v68 + 228), &v72, v71);
                if (v72)
                {
                  v70 = v72;
                }

                else
                {
                  v70 = v71;
                }

                v69 = v156;
              }

              v73 = CA::Render::Context::process_path(v68);
              X::Stream::printf(v7, "Context %x (pid %d [%s]):\n", v69, v70, v73 + 28);
              v74 = *(v68 + 168);
              for (j = *(v68 + 176); v74 != j; v74 += 2)
              {
                X::Stream::printf(v7, "  slot %u:", *v74);
                X::Stream::printf(v7, "\n%*s", 4, "");
                if (CA::Render::Context::_slot_table)
                {
                  v76 = x_hash_table_lookup(CA::Render::Context::_slot_table, *v74, 0);
                }

                else
                {
                  v76 = 0;
                }

                CA::Render::show_object(v7, v76);
                X::Stream::printf(v7, "\n");
              }
            }

            v67 = v67[1];
          }

          while (v67);
        }

        else
        {
          if (v11 != 4)
          {
            goto LABEL_94;
          }

          v16 = v151;
          do
          {
            v17 = *v16;
            v18 = *(a3 + 1);
            if (!v18 || v18 == *(v17 + 16))
            {
              pthread_mutex_lock((v17 + 72));
              v19 = *(v17 + 16);
              v20 = atomic_load((v17 + 228));
              if (!v20)
              {
                if (*(v17 + 256))
                {
                  v21 = 0;
                }

                else
                {
                  v21 = getpid();
                }

                v22 = 0;
                atomic_compare_exchange_strong((v17 + 228), &v22, v21);
                if (v22)
                {
                  v20 = v22;
                }

                else
                {
                  v20 = v21;
                }
              }

              v23 = CA::Render::Context::process_path(v17);
              X::Stream::printf(v7, "Context %x (pid %d [%s]):\n", v19, v20, v23 + 28);
              v24 = *(v17 + 144);
              if (v24)
              {
                for (k = 0; k < v24; ++k)
                {
                  v26 = *(*(v17 + 136) + 8 * k);
                  if (v26)
                  {
                    do
                    {
                      X::Stream::printf(v7, "  name 0x%lx = object 0x%lx ", v26[1] ^ 0x8000000000000000, v26[2]);
                      (*(*v26[2] + 40))(v26[2], v7, 0, 0);
                      x_stream_write(v7, "\n", 1uLL);
                      v26 = *v26;
                    }

                    while (v26);
                    v24 = *(v17 + 144);
                  }
                }
              }

              x_stream_write(v7, "\n", 1uLL);
              pthread_mutex_unlock((v17 + 72));
            }

            v16 = v16[1];
          }

          while (v16);
        }

LABEL_93:
        v12 = v151;
        do
        {
LABEL_94:
          v52 = *v12;
          if (atomic_fetch_add((*v12 + 8), 0xFFFFFFFF) == 1)
          {
            (*(*v52 + 16))(v52);
          }

          v12 = v12[1];
        }

        while (v12);
        v5 = v144;
        v53 = v151;
        do
        {
          v54 = v53[1];
          free(v53);
          v53 = v54;
        }

        while (v54);
      }

      else
      {
        os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
      }
    }

    else if (v6 == 3)
    {
      CA::Render::show_statistics(*(a3 + 2));
    }
  }

  objc_autoreleasePoolPop(v5);
}

char *CA::Render::Context::copy_all_contexts(CA::Render::Context *this)
{
  v18[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  v2 = CA::Render::Context::_context_table;
  if (!CA::Render::Context::_context_table)
  {
    goto LABEL_17;
  }

  v3 = *(CA::Render::Context::_context_table + 24);
  v4 = 24 * v3;
  if ((24 * v3) <= 0x1000)
  {
    MEMORY[0x1EEE9AC00](v1);
    v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, 24 * v3);
    goto LABEL_6;
  }

  v6 = malloc_type_malloc(24 * v3, 0x93372CA0uLL);
  if (!v6)
  {
LABEL_17:
    v16 = 0;
    goto LABEL_19;
  }

  v5 = v6;
  v2 = CA::Render::Context::_context_table;
LABEL_6:
  v7 = 0;
  v8 = 1 << *v2;
  v9 = v5;
  do
  {
    v10 = *(*(v2 + 16) + 8 * v7);
    if (v10)
    {
      do
      {
        *v9 = v10[2];
        v11 = v9 + 2;
        v9[1] = v10[3];
        v10 = *v10;
        v9 += 2;
      }

      while (v10);
    }

    else
    {
      v11 = v9;
    }

    ++v7;
    v9 = v11;
  }

  while (v7 != v8);
  v12 = &v5[16 * v3];
  if (v3)
  {
    v13 = 16 * v3;
    v14 = 8;
    v15 = v3;
    do
    {
      *&v5[v13] = *&v5[v14];
      v13 += 8;
      v14 += 16;
      v15 = (v15 - 1);
    }

    while (v15);
    v16 = CA::Render::Array::new_array(v3, v12, 1, 0);
    if (v4 > 0x1000)
    {
      free(v5);
    }
  }

  else
  {
    v16 = CA::Render::Array::new_array(0, v12, 1, 0);
  }

LABEL_19:
  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  return v16;
}

uint64_t CA::Render::Context::show_source_layer(uint64_t result, CA::Render::Context *this, CA::Render::Object *a3, uint64_t a4, int a5)
{
  if ((a5 & 4) == 0)
  {
    v8 = result;
    result = CA::Render::Context::context_by_id(this);
    if (result)
    {
      v9 = result;
      pthread_mutex_lock((result + 72));
      v10 = CA::Render::Context::lookup_handle(v9, a3, 0, 0, 0);
      if (v10)
      {
        v11 = *(v10 + 2);
        if (v11)
        {
          X::Stream::printf(v8, "\n%*s", 2 * a4, "");
          X::Stream::printf(v8, "(source ");
          (*(*v11 + 40))(v11, v8, a4, a5 | 4u);
          X::Stream::printf(v8, ")");
        }
      }

      result = pthread_mutex_unlock((v9 + 72));
      if (atomic_fetch_add((v9 + 8), 0xFFFFFFFF) == 1)
      {
        v12 = *(*v9 + 16);

        return v12(v9);
      }
    }
  }

  return result;
}

void CA::Render::Context::run_scheduled_dependence_removals(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 104);
  v3 = *&this[106]._os_unfair_lock_opaque;
  v4 = *&this[108]._os_unfair_lock_opaque;
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      CA::Render::Handle::remove_dependence(*v3, v2);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *&this[106]._os_unfair_lock_opaque;
  }

  *&this[108]._os_unfair_lock_opaque = v3;

  os_unfair_lock_unlock(this + 104);
}

void CA_ABORT_ON_CLIENT_SERVER_QUARTZCORE_UUID_MISMATCH(uint64_t a1, uint64_t a2)
{
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v4 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = a1;
    v7 = 1040;
    v8 = 16;
    v9 = 2096;
    v10 = a2;
    _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "QuartzCore mismatch: server=%s client=%{uuid_t}.16P", &v5, 0x1Cu);
  }

  abort();
}

uint64_t CA::Render::Context::local_quartzcore_uuid(CA::Render::Context *this, unsigned __int8 *a2)
{
  result = _dyld_get_image_uuid();
  if ((result & 1) == 0)
  {
    __assert_rtn("local_quartzcore_uuid", "render-context.cpp", 1151, "local_uuid_found");
  }

  return result;
}

uint64_t X::HashTable<unsigned int,CA::Render::Context *>::foreach(std::function<void ()(unsigned int,CA::Render::Context *)>)::{lambda(void *,void *,void *)#1}::__invoke(int a1, uint64_t a2, uint64_t a3)
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

void std::__function::__func<CA::Render::Context::secure_mode_violations(void)::$_0,std::allocator<CA::Render::Context::secure_mode_violations(void)::$_0>,void ()(unsigned int,CA::Render::Context*)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if ((*(*a3 + 14) & 4) != 0)
  {
    v4 = *(a1 + 8);
    v5 = (v3 + 8);
    if (!atomic_fetch_add((v3 + 8), 1u))
    {
      v3 = 0;
      atomic_fetch_add(v5, 0xFFFFFFFF);
    }

    v7 = *(v4 + 8);
    v6 = *(v4 + 16);
    if (v7 >= v6)
    {
      v9 = *v4;
      v10 = v7 - *v4;
      v11 = v10 >> 3;
      v12 = (v10 >> 3) + 1;
      if (v12 >> 61)
      {
        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      v13 = v6 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (!(v14 >> 61))
        {
          operator new();
        }

        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      *(8 * v11) = v3;
      v8 = 8 * v11 + 8;
      memcpy(0, v9, v10);
      *v4 = 0;
      *(v4 + 8) = v8;
      *(v4 + 16) = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = v3;
      v8 = (v7 + 1);
    }

    *(v4 + 8) = v8;
  }
}

uint64_t std::__function::__func<CA::Render::Context::secure_mode_violations(void)::$_0,std::allocator<CA::Render::Context::secure_mode_violations(void)::$_0>,void ()(unsigned int,CA::Render::Context*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF1F6BD0;
  a2[1] = v2;
  return result;
}

void CA::Render::collect_insecure_process_ids(CA::Render *this, uint64_t a2, CA::Render::Context *a3, void *a4)
{
  if ((*(a2 + 14) & 4) != 0)
  {
    v6 = atomic_load((a2 + 228));
    if (v6 || (!*(a2 + 256) ? (v7 = getpid()) : (v7 = 0), (v8 = 0, atomic_compare_exchange_strong((a2 + 228), &v8, v7), v8) ? (v6 = v8) : (v6 = v7), v6))
    {
      v10 = *(a3 + 1);
      v9 = *(a3 + 2);
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = v10 - *a3;
        v14 = v13 >> 2;
        v15 = (v13 >> 2) + 1;
        if (v15 >> 62)
        {
          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (!(v17 >> 62))
          {
            operator new();
          }

          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        *(4 * v14) = v6;
        v11 = 4 * v14 + 4;
        memcpy(0, v12, v13);
        *a3 = 0;
        *(a3 + 1) = v11;
        *(a3 + 2) = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v6;
        v11 = (v10 + 1);
      }

      *(a3 + 1) = v11;
    }

    *(a2 + 12) &= ~0x40000u;
  }
}

void *std::__hash_table<CA::Render::String *,std::hash<CA::Render::String *>,std::equal_to<CA::Render::String *>,std::allocator<CA::Render::String *>>::__emplace_unique_key_args<CA::Render::String *,CA::Render::String * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

CFIndex ___ZN2CA6RenderL22sync_hang_report_levelEv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"CASynchronizeHangReport", @"com.apple.coreanimation", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if (result >= 3)
    {
      v1 = 3;
    }

    else
    {
      v1 = result;
    }

    if (result < 0)
    {
      v1 = 0;
    }

    LODWORD(CA::Render::sync_hang_report_level(void)::level) = v1;
  }

  return result;
}

void CA::Render::Context::set_client_annotation(CA::Render::Context *this, CFTypeRef cf)
{
  v4 = *(this + 69);
  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    *(this + 69) = cf;

    CFRetain(cf);
  }

  else
  {
    *(this + 69) = 0;
  }
}

uint64_t CA::Render::Context::hit_test(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v29 = *MEMORY[0x1E69E9840];
  bzero(v23, 0x570uLL);
  v7 = v6[74];
  *&buf = vmovn_s64(vcvtq_s64_f64(*v4));
  *(&buf + 1) = 0x100000001;
  CA::Render::Update::Update(v23, v28, 0x2000uLL, v7, 0, 0, 0, 0, &buf, 0);
  if (!v23[0])
  {
    goto LABEL_30;
  }

  v9 = BYTE4(xmmword_1ED4E982C);
  if (BYTE4(xmmword_1ED4E982C) == 1)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v10 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v26;
      _os_log_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEFAULT, "HitTest: starting (%u)", &buf, 8u);
    }
  }

  v27 |= 0x2005uLL;
  CA::Render::Update::add_context(v23, v6);
  v12 = v25;
  if (v25 == &v24)
  {
LABEL_14:
    v15 = 0;
  }

  else
  {
    v13 = 2 * (v2 & 1u);
    while (1)
    {
      v14 = CA::Render::LayerNode::hit_test_(v12, v4, v13, v11);
      if (v14)
      {
        break;
      }

LABEL_13:
      v12 = v12[1];
      if (v12 == &v24)
      {
        goto LABEL_14;
      }
    }

    v15 = v14;
    while (!*(*(v15 + 32) + 152))
    {
      v15 = *(v15 + 88);
      if (!v15)
      {
        goto LABEL_13;
      }
    }
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  if (v15)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v16 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v17 = *(*(*(*(v15 + 32) + 152) + 16) + 128);
    if (v17)
    {
      v18 = *(v17 + 24);
      v17 += 28;
      if (!v18)
      {
        v17 = 0;
      }
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_DEFAULT, "HitTest: got layer %s", &buf, 0xCu);
  }

  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

LABEL_26:
  v19 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v26;
    _os_log_impl(&dword_183AA6000, v19, OS_LOG_TYPE_DEFAULT, "HitTest: ending (%u)", &buf, 8u);
  }

LABEL_28:
  if (!v15)
  {
LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

  v20 = *(*(*(v15 + 32) + 152) + 16);
LABEL_31:
  CA::Render::Update::~Update(v23, v8);
  return v20;
}

uint64_t CA::Render::Context::hit_test_context(uint64_t a1)
{
  v1 = CA::Render::Context::hit_test(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = CA::Render::Handle::retain_context(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  return v4;
}

uint64_t CA::Render::Context::get_layer_renderer_info(CA::Render::Context *this, CA::Render::Object *a2, int a3, int *a4, unsigned int *a5, unsigned int *a6)
{
  result = CA::Render::Context::lookup_handle(this, a2, a3, 0, 0);
  if (result)
  {
    v10 = *(result + 128);
    if (v10 >= *(result + 132))
    {
      v10 = *(result + 132);
    }

    if (v10 < 1)
    {
      return 0;
    }

    else
    {
      *a4 = *(result + 100) >> 28;
      *a5 = *(result + 100) & 0x1FFFF;
      *a6 = (*(result + 100) >> 17) & 0x7FF;
      return 1;
    }
  }

  return result;
}

void CA::Render::Context::order_relative(CA::Render::Context *this, int a2, int a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v4 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  values = *v4;
  keys[0] = @"above";
  keys[1] = @"siblingId";
  v5 = *MEMORY[0x1E695E490];
  cf = CFNumberCreate(*MEMORY[0x1E695E490], kCFNumberSInt32Type, &valuePtr);
  v6 = CFDictionaryCreate(v5, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(cf);
  CA::Render::post_notification(8u, this, v6, 0);
  CFRelease(v6);
}

void CA::Render::Context::order_level(CA::Render::Context *this, float a2)
{
  if (*(this + 48) != a2)
  {
    v3 = this;
    p_inst_props = &OBJC_PROTOCOL___MTLResource.inst_props;
    {
      v7 = a2;
      p_inst_props = (&OBJC_PROTOCOL___MTLResource + 56);
      a2 = v7;
      v3 = this;
      if (v6)
      {
        CA::Render::Context::order_level(float)::active_blanking_context_level = nextafterf(INFINITY, -INFINITY);
        p_inst_props = (&OBJC_PROTOCOL___MTLResource + 56);
        a2 = v7;
        v3 = this;
      }
    }

    v5 = *(p_inst_props + 593);
    if ((*(v3 + 3) & 0x8000000) != 0)
    {
      v5 = INFINITY;
    }

    if (v5 < a2)
    {
      a2 = v5;
    }

    *(v3 + 48) = a2;

    CA::Render::post_notification(8u, v3, 0, 0);
  }
}

CA::Render::Object *CA::Render::Context::update_layer(CA::Render::Context *this, CA::Render::Object *a2)
{
  result = CA::Render::Context::lookup_handle(this, a2, 0, 0, 0);
  if (result)
  {

    return CA::Render::Handle::set_update_flags(result, 7);
  }

  return result;
}

void CA::Render::Context::remove_all_animations(CA::Render::Context *this, CA::Render::Object *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = CA::Render::Context::lookup_handle(this, a2, 0, 0, 0);
  if (v2)
  {
    v4 = v2;
    v5 = *(v2 + 6);
    if (v5)
    {
      if (BYTE8(xmmword_1ED4E97DC) != 1)
      {
        goto LABEL_31;
      }

      memset(v19, 0, sizeof(v19));
      do
      {
        v9 = *v5;
        X::Stream::printf(v19, "%p (eval %u; frames %u):\n", *v5, *(*v5 + 20), *(*v5 + 21));
        CA::Render::show_object(v19, v9);
        v5 = v5[1];
      }

      while (v5);
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v10 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v11 = mach_absolute_time();
        v12 = CATimeWithHostTime(v11);
        v13 = *(v4 + 3);
        if (v13)
        {
          v14 = *(v13 + 16);
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v4 + 2);
        if (v15)
        {
          v16 = *(v15 + 128);
          if (v16)
          {
            v17 = v16 + 28;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = x_stream_get(v19);
        *buf = 134219010;
        v21 = v12;
        v22 = 1024;
        v23 = v14;
        v24 = 2080;
        v25 = v17;
        v26 = 2048;
        v27 = v4;
        v28 = 2080;
        v29 = v18;
        _os_log_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEFAULT, "%f %x %s (%p): removing all:\n%s", buf, 0x30u);
      }

      if (v19[0])
      {
        free(v19[0]);
      }

      v5 = *(v4 + 6);
      if (v5)
      {
LABEL_31:
        do
        {
          v6 = *v5;
          if (BYTE11(xmmword_1ED4E980C) == 1)
          {
            kdebug_trace();
          }

          CA::Render::invalidate_animation(v4, v6, v3);
          v5 = v5[1];
        }

        while (v5);
        v7 = *(v4 + 6);
        if (v7)
        {
          do
          {
            v8 = v7[1];
            free(v7);
            v7 = v8;
          }

          while (v8);
        }
      }

      *(v4 + 6) = 0;
      *(v4 + 13) |= 0x10080003uLL;
    }
  }
}

void CA::Render::Context::set_glitch_request(CA::Render::Context *this, double a2)
{
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal == 1)
  {
    v4 = *(this + 71);
    if (v4 < a2)
    {
      v4 = a2;
    }

    *(this + 71) = v4;
    v5 = CA::Render::Context::root_layer_handle(this);
    if (v5)
    {

      CA::Render::Context::invalidate(this, v5 + 15, v6);
    }
  }
}

CA::Render::Context *CA::Render::Context::add_remote_input_mach_time(CA::Render::Context *this, unint64_t a2)
{
  result = CA::Render::Context::retain_host_context(this);
  if (result)
  {
    v5 = result;
    result = CA::Render::Context::add_remote_input_mach_time(result, a2);
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      v6 = *(*v5 + 16);

      return v6(v5);
    }
  }

  else
  {
    v7 = *(this + 63);
    if (v7 >= a2)
    {
      v7 = a2;
    }

    *(this + 63) = v7;
  }

  return result;
}

uint64_t CA::OGL::anonymous namespace::PageCurlFilter::render(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v93 = *MEMORY[0x1E69E9840];
  v7 = *a5;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  memset(v89, 0, sizeof(v89));
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  memset(v85, 0, sizeof(v85));
  v8 = *(a4 + 656);
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v9 = *(a3 + 24);
  v10 = *(v8 + 24);
  v11 = *v10;
  v12 = v10[2];
  *(&v85[12] + 8) = vmlaq_n_f64(vmulq_n_f64(*v10, *(&v89[2] + 1)), v12, *&v89[3]);
  v70 = v11;
  v72 = v12;
  v74 = vmlaq_n_f64(vmulq_n_f64(v11, *(&v89[3] + 1)), v12, *&v90);
  *(&v85[13] + 8) = v74;
  CA::Mat4Impl::mat4_invert(&v77, v10, v13);
  *(v85 + 8) = v77;
  *(&v85[1] + 8) = v78;
  *(&v85[2] + 8) = v79;
  *(&v85[3] + 8) = v80;
  *(&v85[4] + 8) = v81;
  *(&v85[5] + 8) = v82;
  *(&v85[6] + 8) = v83;
  *(&v85[7] + 8) = v84;
  v14 = vcgtq_f64(vdupq_n_s64(0x3F50624DE0000000uLL), vabsq_f64(v74));
  v15 = vmovn_s64(v14);
  if ((v15.i32[0] | v15.i32[1]))
  {
    v16 = vaddvq_f64(vmulq_f64(v74, v74));
    *&v16 = v16;
    *&v16 = sqrtf(*&v16);
    *(&v85[13] + 8) = vbicq_s8(vcvtq_f64_f32(vbsl_s8(0x8000000080000000, vdup_lane_s32(*&v16, 0), vcvt_f32_f64(v74))), v14);
    *(&v89[2] + 8) = vmlaq_n_f64(vmulq_n_f64(v77, *(&v85[12] + 1)), v79, *&v85[13]);
    *(&v89[3] + 1) = -*&v89[3];
    *&v90 = *(&v89[2] + 1);
    *(&v85[12] + 8) = vmlaq_n_f64(vmulq_n_f64(v70, *(&v89[2] + 1)), v72, *&v89[3]);
  }

  v17 = *(a2 + 40);
  LOBYTE(v85[0]) = CA::Render::KeyValueArray::get_float_key(v17, 381, 1.0) != 0.0;
  BYTE1(v85[0]) = CA::Render::KeyValueArray::get_float_key(v17, 330, 1.0) != 0.0;
  v19 = *(v9 + 72);
  v20 = *(v9 + 88);
  v73 = v20;
  v75 = v19;
  v21 = *(v7 + 56);
  v22 = *(v7 + 60);
  if (v21 <= v22)
  {
    v23 = *(v7 + 60);
  }

  else
  {
    v23 = *(v7 + 56);
  }

  v20.i32[0] = 1073741822;
  v19.i32[0] = v23;
  v24 = vdupq_lane_s32(*&vcgtq_s32(v19, v20), 0);
  v25 = *(v7 + 48);
  v26.i64[0] = v25;
  v26.i64[1] = SHIDWORD(v25);
  v27 = v21;
  v28 = vbslq_s8(v24, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v26));
  v29 = 1.79769313e308;
  if (v23 > 1073741822)
  {
    v27 = 1.79769313e308;
  }

  v68 = v28;
  v69 = v27;
  if (v23 <= 1073741822)
  {
    v29 = v22;
  }

  v71 = v29;
  *v30.i64 = v27;
  *&v30.i64[1] = v29;
  v76[0] = v28;
  v76[1] = v30;
  CA::Mat4Impl::mat4_apply_to_rect(&v77, v76, v18);
  *(&v85[9] + 8) = v73;
  *(&v85[8] + 8) = v75;
  *(&v85[10] + 8) = v68;
  *(&v85[11] + 1) = v69;
  *&v85[12] = v71;
  _D0 = *v89 * -0.5 + 1.0;
  __asm { FCVT            H0, D0 }

  v36 = 0x100010001 * LODWORD(_D0);
  v37 = v36 | 0x3C00000000000000;
  if (v17)
  {
    v38 = 0x3C00356534743434;
    v39 = 0x3AFF3AFF3AFF3AFFLL;
    v40 = v17[4];
    if (v40)
    {
      v41 = 0;
      while (1)
      {
        v42 = *&v17[2 * v41 + 6];
        if (*(v42 + 16) == 380)
        {
          break;
        }

        if (v40 == ++v41)
        {
          goto LABEL_21;
        }
      }

      if ((v41 & 0x80000000) == 0 && *(v42 + 24))
      {
        v44 = bswap32(CA::Render::KeyValueArray::get_color_key(v17, 380, 0xFFFFFFFFLL));
        v45.i32[0] = v44;
        v45.i32[1] = v44 >> 8;
        v45.i32[2] = HIWORD(v44);
        v46.i64[0] = 0xFF000000FFLL;
        v46.i64[1] = 0xFF000000FFLL;
        v47 = vandq_s8(v45, v46);
        v47.i32[3] = vshrq_n_u32(vdupq_n_s32(v44), 0x18uLL).i32[3];
        v37 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v47), vdupq_n_s32(0x3B808081u)));
      }

LABEL_21:
      *(&v85[14] + 1) = v37;
      v48 = 0;
      while (1)
      {
        v49 = *&v17[2 * v48 + 6];
        if (*(v49 + 16) == 328)
        {
          break;
        }

        if (v40 == ++v48)
        {
          goto LABEL_37;
        }
      }

      if ((v48 & 0x80000000) == 0 && *(v49 + 24))
      {
        v58 = bswap32(CA::Render::KeyValueArray::get_color_key(v17, 328, 0xFFFFFFFFLL));
        v59.i32[0] = v58;
        v59.i32[1] = v58 >> 8;
        v59.i32[2] = HIWORD(v58);
        v60.i64[0] = 0xFF000000FFLL;
        v60.i64[1] = 0xFF000000FFLL;
        v61 = vandq_s8(v59, v60);
        v61.i32[3] = vshrq_n_u32(vdupq_n_s32(v58), 0x18uLL).i32[3];
        v39 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v61), vdupq_n_s32(0x3B808081u)));
      }

LABEL_37:
      *(&v86 + 1) = v39;
      v62 = 0;
      while (1)
      {
        v63 = *&v17[2 * v62 + 6];
        if (*(v63 + 16) == 329)
        {
          break;
        }

        if (v40 == ++v62)
        {
          goto LABEL_25;
        }
      }

      if ((v62 & 0x80000000) == 0 && *(v63 + 24))
      {
        v64 = bswap32(CA::Render::KeyValueArray::get_color_key(v17, 329, 0xFFFFFFFFLL));
        v65.i32[0] = v64;
        v65.i32[1] = v64 >> 8;
        v65.i32[2] = HIWORD(v64);
        v66.i64[0] = 0xFF000000FFLL;
        v66.i64[1] = 0xFF000000FFLL;
        v67 = vandq_s8(v65, v66);
        v67.i32[3] = vshrq_n_u32(vdupq_n_s32(v64), 0x18uLL).i32[3];
        v38 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v67), vdupq_n_s32(0x3B808081u)));
      }
    }

    else
    {
      *(&v85[14] + 1) = v36 | 0x3C00000000000000;
      *(&v86 + 1) = 0x3AFF3AFF3AFF3AFFLL;
    }

LABEL_25:
    v43 = 0x3C002E462A870000;
    *&v87 = v38;
    v50 = v17[4];
    if (v50)
    {
      v51 = 0;
      while (1)
      {
        v52 = *&v17[2 * v51 + 6];
        if (*(v52 + 16) == 420)
        {
          break;
        }

        if (v50 == ++v51)
        {
          goto LABEL_33;
        }
      }

      if ((v51 & 0x80000000) == 0 && *(v52 + 24))
      {
        v53 = bswap32(CA::Render::KeyValueArray::get_color_key(v17, 420, 0xFFFFFFFFLL));
        v54.i32[0] = v53;
        v54.i32[1] = v53 >> 8;
        v54.i32[2] = HIWORD(v53);
        v55.i64[0] = 0xFF000000FFLL;
        v55.i64[1] = 0xFF000000FFLL;
        v56 = vandq_s8(v54, v55);
        v56.i32[3] = vshrq_n_u32(vdupq_n_s32(v53), 0x18uLL).i32[3];
        v43 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v56), vdupq_n_s32(0x3B808081u)));
      }
    }
  }

  else
  {
    v43 = 0x3C002E462A870000;
    *(&v85[14] + 1) = v37;
    *(&v86 + 1) = 0x3AFF3AFF3AFF3AFFLL;
    *&v87 = 0x3C00356534743434;
  }

LABEL_33:
  *&v86 = 0x3C003C003C003C00;
  BYTE8(v87) = 1;
  *&v88 = v43;
  *(&v88 + 1) = 0x3FF0000000000000;
}

void CA::OGL::anonymous namespace::curl_filter_get_in_state(CA::Render::KeyValueArray *a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  float_key = CA::Render::KeyValueArray::get_float_key(a1, 434, 0.0);
  v7 = 1.0;
  v8 = float_key > 1.0 || float_key < 0.0;
  if (float_key < 0.0 && float_key <= 1.0)
  {
    v7 = 0.0;
  }

  if (v8)
  {
    float_key = v7;
  }

  *a3 = float_key;
  v9 = CA::Render::KeyValueArray::get_float_key(a1, 326, 0.0);
  *(a3 + 8) = v9;
  *(a3 + 16) = CA::Render::KeyValueArray::get_float_key(a1, 400, 100.0);
  v10 = CA::Render::KeyValueArray::get_float_key(a1, 433, 0.0);
  *(a3 + 24) = v10;
  v11 = CA::Render::KeyValueArray::get_float_key(a1, 372, 3.14159265);
  if (v11 < v10)
  {
    v11 = v10;
  }

  *(a3 + 32) = v11;
  v12 = v9;
  v13 = __sincosf_stret(v12);
  cosval = v13.__cosval;
  if (fabs(v13.__cosval) < 0.001 || (sinval = v13.__sinval, fabs(v13.__sinval) < 0.001))
  {
    cosval = roundf(v13.__cosval);
    sinval = roundf(v13.__sinval);
  }

  v16 = *(a2 + 72);
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  if (v17.f64[0] <= v18)
  {
    v19 = *(a2 + 96);
  }

  else
  {
    v19 = *(a2 + 88);
  }

  if (v19 < 1.79769313e308)
  {
    if (v17.f64[0] < v18)
    {
      v18 = *(a2 + 88);
    }

    if (v18 > 0.0)
    {
      __asm
      {
        FMOV            V4.2D, #1.0
        FMOV            V5.2D, #-2.0
      }

      v26 = vaddq_f64(v17, _Q5);
      *&_Q5.f64[0] = vmovn_s64(vmvnq_s8(vclezq_f64(v26)));
      v16 = vaddq_f64(v16, _Q4);
      *&_Q4.f64[0] = vdup_lane_s32(vand_s8(*&_Q5.f64[0], vdup_lane_s32(*&_Q5.f64[0], 1)), 0);
      v27.i64[0] = SLODWORD(_Q4.f64[0]);
      v27.i64[1] = SHIDWORD(_Q4.f64[0]);
      v17 = vandq_s8(v26, v27);
    }
  }

  *(a3 + 40) = cosval;
  *(a3 + 48) = sinval;
  *(a3 + 56) = -sinval;
  *(a3 + 64) = cosval;
  CA::Render::KeyValueArray::get_rect_key(v29, a1, 0x1A3, v16, v17);
  v28 = v29[1];
  *(a3 + 72) = v29[0];
  *(a3 + 88) = v28;
}

uint64_t CA::OGL::anonymous namespace::curl_render(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v512 = v1;
  v515 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v637 = *MEMORY[0x1E69E9840];
  bzero(v636, 0xCC0uLL);
  bzero(v635, 0xCC0uLL);
  bzero(v634, 0xCC0uLL);
  bzero(v633, 0xCC0uLL);
  bzero(v632, 0xCC0uLL);
  bzero(v631, 0xCC0uLL);
  bzero(v630, 0x4A40uLL);
  bzero(v629, 0x4A40uLL);
  bzero(v626, 0x240uLL);
  bzero(v625, 0x8700uLL);
  v624[0] = 0;
  v624[1] = 0;
  bzero(v623, 0x26A0uLL);
  bzero(v622, 0x26A0uLL);
  bzero(v621, 0x26A0uLL);
  v11 = *(v8 + 656);
  memset(v620, 0, sizeof(v620));
  memset(v619, 0, sizeof(v619));
  v511 = v11;
  v12 = vcvtq_f32_f16(v11[4]);
  v13 = vmulq_f32(v12, vcvtq_f32_f16(*(v4 + 232)));
  v14 = vmulq_f32(v12, vcvtq_f32_f16(*(v4 + 240)));
  v15 = vmulq_f32(v12, vcvtq_f32_f16(*(v4 + 256)));
  v16 = vmulq_f32(v12, vcvtq_f32_f16(*(v4 + 248)));
  _Q18 = vmulq_f32(v12, vcvtq_f32_f16(*(v4 + 272)));
  v19 = *(v6 + 16);
  v18 = *(v6 + 24);
  v20 = fmax(v18, 1.57079633);
  v21 = *(v6 + 56);
  v22 = *(v6 + 64);
  v24 = *(v4 + 216);
  v23 = *(v4 + 224);
  v25 = v23 <= 0.0;
  v26 = 0.449999988;
  v586 = v23;
  if (v23 != 0.0)
  {
    v23 = 0.449999988;
  }

  if (v25)
  {
    v23 = -v23;
  }

  v583 = v23;
  v27 = *(v4 + 176);
  v28 = *(v4 + 168);
  v30 = *(v4 + 184) + v28;
  if (v25)
  {
    v31 = *(v4 + 184) + v28;
  }

  else
  {
    v31 = *(v4 + 168);
  }

  if (v25)
  {
    v32 = *(v4 + 168);
  }

  else
  {
    v32 = *(v4 + 184) + v28;
  }

  _NF = v24 < 0.0;
  v567 = *(v4 + 216);
  if (v24 == 0.0)
  {
    v26 = *(v4 + 216);
  }

  if (v24 < 0.0)
  {
    v26 = -v26;
  }

  v558 = v26;
  v34 = *(v4 + 192) + v27;
  if (v24 < 0.0)
  {
    v35 = *(v4 + 176);
  }

  else
  {
    v35 = *(v4 + 192) + v27;
  }

  if (v24 < 0.0)
  {
    v36 = *(v4 + 192) + v27;
  }

  else
  {
    v36 = *(v4 + 176);
  }

  if (_NF)
  {
    v37 = *(v4 + 184) + v28;
  }

  else
  {
    v37 = *(v4 + 168);
  }

  if (_NF)
  {
    v30 = *(v4 + 168);
  }

  v554 = v30;
  v556 = v37;
  v10.i64[0] = *(v4 + 144);
  v29 = *(v4 + 160);
  if (v21 < 0.0)
  {
    v38 = *(v4 + 144);
  }

  else
  {
    v38 = v29 + *v10.i64;
  }

  if (v21 < 0.0)
  {
    *v10.i64 = v29 + *v10.i64;
  }

  v563 = v31;
  v581 = v35;
  v39 = *(v4 + 128) + *(v4 + 32) * v31 + *(v4 + 64) * v35;
  _Q30 = *(v6 + 40);
  if (fabs(v39 + -1.0) >= 0.000001)
  {
    if (v39 <= 0.0)
    {
      v39 = INFINITY;
    }

    else
    {
      v39 = 1.0 / v39;
    }
  }

  v41 = 0;
  v542 = *(v4 + 264);
  v42 = vcvt_f16_f32(v13);
  v509 = vcvt_f16_f32(v14);
  v43 = vcvt_f16_f32(v15);
  v516 = vcvt_f16_f32(v16);
  v501 = vcvt_f16_f32(_Q18);
  v44 = *(v6 + 32);
  v549 = *(v4 + 200);
  v547 = *(v4 + 208);
  v545 = 1.0 / v567;
  v541 = v563 - v28;
  v618 = 0uLL;
  memset(v617, 0, sizeof(v617));
  v45 = *(v4 + 40);
  v46 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*(v4 + 104), *(v4 + 8), v563), v45, v35), v39);
  v47 = *&v46.i64[1];
  _D17 = v38 - *&v46.i64[1];
  v513 = (1.57079633 - v18) * v19;
  __asm { FMLA            D7, D17, V30.D[1] }

  v577 = v46;
  *_Q18.i64 = *v10.i64 - *&v46.i64[1];
  *v46.i32 = v20;
  v52 = v18;
  *v46.i64 = (v18 + ((((((*v46.i32 * *v46.i32) * 0.0054654) + -0.15346) * (*v46.i32 * *v46.i32)) + 0.98442) * *v46.i32) - (((((((v52 * v52) * 0.0054654) + -0.15346) * (v52 * v52)) + 0.98442) * v52) + 1.57079633)) * v19;
  __asm { FMLA            D17, D18, V30.D[1] }

  v54 = v32 - v563;
  v55 = v36 - v35;
  *_Q18.i32 = v558;
  *v46.i32 = v54;
  v56.i64[0] = 0x8000000080000000;
  v56.i64[1] = 0x8000000080000000;
  v57 = *vbslq_s8(v56, _Q18, v46).i32;
  v46.i32[1] = HIDWORD(v583);
  *v46.i32 = v583;
  *v10.i32 = v55;
  *v46.i64 = *vbslq_s8(v56, v46, v10).i32;
  v616[0] = v54 + v57;
  v616[1] = v55 + *v46.i64;
  v616[4] = -v57;
  v616[5] = v55 + *v46.i64;
  v539 = v37 + v558;
  v616[2] = v54 - v57;
  v616[3] = v55 - *v46.i64;
  v616[6] = v57;
  v616[7] = v55 - *v46.i64;
  v616[10] = v54 - v57;
  v514 = _Q30.f64[1];
  v616[12] = v57;
  v616[8] = v54 + v57;
  v58 = *v6;
  v59 = _D17 - _D7;
  v616[9] = -*v46.i64;
  v616[11] = *v46.i64;
  v616[13] = *v46.i64;
  v616[14] = -v57;
  v616[15] = -*v46.i64;
  v60 = vmulq_f64(v45, _Q30);
  v61 = *(v4 + 8) * _Q30.f64[0];
  v62 = vdupq_lane_s64(COERCE__INT64(*(v4 + 40) * _Q30.f64[0]), 0);
  v63 = vdupq_lane_s64(COERCE__INT64(vmuld_lane_f64(*(v4 + 16), _Q30, 1)), 0);
  v64 = vdupq_laneq_s64(v60, 1);
  v65 = v616;
  do
  {
    v638 = vld2q_f64(v65);
    v65 += 4;
    v617[v41++] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v638.val[0], v61), v62, v638.val[1]), v63, v638.val[0]), v64, v638.val[1]);
  }

  while (v41 != 4);
  v66 = v59 * v58;
  if (v586 > 0.0)
  {
    v67 = v27;
  }

  else
  {
    v67 = v34;
  }

  v533 = v67 + v583;
  v535 = v67;
  v68 = *&v618;
  v69 = *(v617 + 1);
  for (i = 1; i != 8; ++i)
  {
    v71 = *(v617 + i);
    v72 = i;
    while (1)
    {
      v73 = v72 - 1;
      v74 = *(v617 + (v72 - 1));
      if (v71 <= v74)
      {
        break;
      }

      *(v617 + v72--) = v74;
      if (v73 + 1 <= 1)
      {
        LODWORD(v72) = 0;
        break;
      }
    }

    *(v617 + v72) = v71;
  }

  if (v586 <= 0.0)
  {
    v34 = v27;
  }

  v552 = v34;
  v76 = v66 + _D7;
  v75 = 1.57079633 - v20;
  v77 = v66 + _D7 + (1.57079633 - v20) * v19;
  v78 = v20 - v18;
  v79 = v44 - v20;
  v504 = v78;
  v498 = v79;
  if (v78 > v79)
  {
    v79 = v78;
  }

  v80 = v19 * 0.0833333333 * v79;
  if (v80 == 0.0)
  {
    *(v619 + 1) = v66 + _D7 + v75 * v19;
    *v619 = *(v619 + 1);
    v81 = 2;
  }

  else
  {
    v82 = v76 + v513;
    if (v69 < v76 + v513)
    {
      v82 = v69;
    }

    v83 = v76 + (1.57079633 - v44) * v19;
    if (v68 > v83)
    {
      v83 = v68;
    }

    v84 = (v77 - v82) / v80;
    v85 = fmaxf(floorf(v84), -12.0);
    v86 = (v77 - v83) / v80;
    v87 = fminf(ceilf(v86), 12.0);
    if (v85 <= v87)
    {
      v81 = 0;
      v88 = v87 + 1;
      do
      {
        v89 = v77 - v80 * v85;
        if (v82 < v89)
        {
          v89 = v82;
        }

        if (v83 > v89)
        {
          v89 = v83;
        }

        if (v85 > 0 || (*(v619 + v81) = v89, ++v81, (v85 & 0x80000000) == 0))
        {
          *(v619 + v81++) = v89;
        }

        ++v85;
      }

      while (v88 != v85);
    }

    else
    {
      v81 = 0;
    }
  }

  v497 = 0.98442;
  v574 = v18;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 1.0 / v586;
  v531 = v35 - v27;
  v94 = v81 > 0;
  do
  {
    if (v91 == 8)
    {
      v95 = *(v619 + v92);
    }

    else
    {
      if (!v94)
      {
        v96 = *(v617 + v91);
LABEL_75:
        ++v91;
        v95 = v96;
        goto LABEL_76;
      }

      v95 = *(v619 + v92);
      v96 = *(v617 + v91);
      if (v95 <= v96)
      {
        goto LABEL_75;
      }
    }

    ++v92;
LABEL_76:
    *(v620 + v90++) = v95;
    v94 = v92 < v81;
  }

  while (v92 < v81 || v91 < 8);
  v97 = 0;
  v98 = 0;
  do
  {
    v99 = *(v620 + v97++);
    v98 -= 96;
  }

  while (v99 > v77 && v97 < v90);
  v101 = 0;
  v102 = &v633[v98 / 0xFFFFFFFFFFFFFFF0 + 5];
  do
  {
    v103 = v101;
    v104 = *(v620 + v101++);
  }

  while (v104 > v69);
  LODWORD(v105) = v81 + 7;
  if (v103 <= v105)
  {
    v106 = v105;
  }

  else
  {
    v106 = v103;
  }

  if (v101 - 1 <= v105)
  {
    v105 = v105;
  }

  else
  {
    v105 = (v101 - 1);
  }

  v107 = v105 + 1;
  v522 = v4;
  v575 = v19;
  v521 = v47;
  *&v579 = v76;
  v580 = _Q30;
  v502 = v58;
  v517 = v103;
  v569 = v44;
  v520 = 1.0 / v21;
  v499 = v77;
  v500 = 1.0 / v22;
  v510 = v6;
  v507 = &v631[v98 / 0xFFFFFFFFFFFFFFF0 + 2];
  v508 = &v632[v98 / 0xFFFFFFFFFFFFFFF0 + 5];
  while (v107 != v101)
  {
    v108 = v101;
    v109 = *(v620 + v101++);
    if (v109 < v68)
    {
      v106 = v108 - 1;
      break;
    }
  }

  v518 = v90;
  v519 = v97;
  v505 = v106;
  v110 = v106 - v97;
  v503 = v106 - v97;
  if (v106 < v97)
  {
    v110 = -1;
  }

  v506 = v110 + 1;
  v571 = v22;
  v572 = v21;
  if (v90 >= 1)
  {
    v111 = 0;
    v525 = vcvtq_f32_f16(v43);
    v527 = vcvtq_f32_f16(v516);
    v112 = v42;
    v113 = (v90 - 1);
    v523 = 1.0 / (fabs(v549 / v547) + 1.0);
    do
    {
      v114 = COERCE_UNSIGNED_INT64(fabs(1.0 / v567)) < 0x7FF0000000000000;
      v115 = COERCE_UNSIGNED_INT64(fabs(1.0 / v586)) > 0x7FEFFFFFFFFFFFFFLL;
      v590[0] = 0.0;
      v116 = *(v620 + v111);
      v117 = v116 * v549 + v563;
      v118 = v116 * v547 + v581;
      v119 = (v533 - v118) * v93 <= (v539 - v117) * v545 || COERCE_UNSIGNED_INT64(fabs(1.0 / v586)) > 0x7FEFFFFFFFFFFFFFLL;
      if (v119 && v114)
      {
        v120 = (v539 - v117) * v545;
      }

      else
      {
        v120 = (v533 - v118) * v93;
      }

      v121 = (v552 - (v583 + v118)) * v93 >= (v554 - (v558 + v117)) * v545 || COERCE_UNSIGNED_INT64(fabs(1.0 / v586)) > 0x7FEFFFFFFFFFFFFFLL;
      if (v121 && v114)
      {
        v122 = (v554 - (v558 + v117)) * v545;
      }

      else
      {
        v122 = (v552 - (v583 + v118)) * v93;
      }

      v123 = (v556 - (v558 + v117)) * v545;
      v124 = (v554 + v558 - v117) * v545;
      v125 = (v535 - (v583 + v118)) * v93 <= v123 || COERCE_UNSIGNED_INT64(fabs(1.0 / v586)) > 0x7FEFFFFFFFFFFFFFLL;
      if (v125 && v114)
      {
        v126 = v123;
      }

      else
      {
        v126 = (v535 - (v583 + v118)) * v93;
      }

      v127 = (v552 + v583 - v118) * v93;
      if (v127 >= v124)
      {
        v115 = 1;
      }

      if (v115 && v114)
      {
        v128 = v124;
      }

      else
      {
        v128 = v127;
      }

      v130.f64[0] = v590[0];
      if (v542)
      {
        v131 = v590[0] * 2.5 + -1.50000006;
        if (v131 > 1.0)
        {
          v131 = 1.0;
        }

        if (v131 < 0.0)
        {
          v131 = 0.0;
        }

        v132 = v577;
        if (v131 <= 0.754999995)
        {
          v130.f64[0] = (v131 * 0.375 + 0.349999994) * v131;
        }

        else
        {
          v130.f64[0] = (v131 + -0.819999993) * (v131 + -0.819999993) * 15.0 + 0.400000006;
        }
      }

      else
      {
        v132 = v577;
      }

      v133 = vmlaq_n_f64(v132, v580, v116 + v129);
      v134 = v130.f64[0];
      v135 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v527, 1.0 - v134), v525, v134));
      v137 = v111 < v517 || v111 > v505;
      v138 = v126 + (v128 - v126) * v523;
      if (v137)
      {
        v139 = v126 + (v128 - v126) * v523;
      }

      else
      {
        v139 = v120;
      }

      if (!v137)
      {
        v138 = v122;
      }

      if (v111)
      {
        _ZF = v113 == v111;
      }

      else
      {
        _ZF = 1;
      }

      v141 = v135;
      if (_ZF)
      {
        v141 = 0;
        v142 = 0;
      }

      else
      {
        v142 = v112;
      }

      if (v111 < v519)
      {
        v141 = v142;
      }

      v593 = v141;
      v143 = v126;
      *v130.f64 = v128;
      v144 = v139;
      v145 = v138;
      v495 = *v130.f64;
      v22 = v571;
      v21 = v572;
      v130.f64[0] = v572;
    }

    while (v518 != v111);
  }

  v146 = v522;
  v147 = v522[1];
  v148 = v575;
  v149 = v521;
  v150 = v518;
  v152 = v507;
  v151 = v508;
  if (v147)
  {
    memcpy(&v633[6 * (v519 & 0x7FFFFFFF)], &v636[6 * (v519 & 0x7FFFFFFF)], 48 * (2 * v506));
    if ((v503 & 0x80000000) == 0)
    {
      LODWORD(v153) = v505 - v519;
      if ((v505 - v519) < 0)
      {
        v153 = 0xFFFFFFFFLL;
      }

      else
      {
        v153 = v153;
      }

      v154 = v153 + 1;
      do
      {
        v102[-6] = v509;
        *v102 = v509;
        v102 += 12;
        --v154;
      }

      while (v154);
    }

    __asm { FCMP            H0, #0 }

    if (_ZF)
    {
      memcpy(&v632[6 * (v519 & 0x7FFFFFFF)], &v635[6 * (v519 & 0x7FFFFFFF)], 48 * (2 * (v518 - v519)));
      memcpy(&v631[6 * (v519 & 0x7FFFFFFF)], &v634[6 * (v519 & 0x7FFFFFFF)], 48 * (2 * (v518 - v519)));
      if (v518 > v519)
      {
        v156 = v519;
        do
        {
          *v151 = v509;
          v151 += 12;
          *v152 = v509;
          v152 += 12;
          ++v156;
        }

        while (v156 < v518);
      }
    }
  }

  v157 = v510[9];
  v158 = v510[10];
  v159 = v510[11] + v157;
  if (v21 < 0.0)
  {
    v160 = v510[10];
  }

  else
  {
    v160 = v510[12] + v158;
  }

  if (v21 < 0.0)
  {
    v161 = v510[12] + v158;
  }

  else
  {
    v161 = v510[10];
  }

  if (v21 >= 0.0)
  {
    v162 = v510[9];
  }

  else
  {
    v162 = v510[11] + v157;
  }

  if (v21 >= 0.0)
  {
    v163 = v510[11] + v157;
  }

  else
  {
    v163 = v510[9];
  }

  if (v22 > 0.0)
  {
    v164 = v510[9];
  }

  else
  {
    v164 = v510[11] + v157;
  }

  if (v22 > 0.0)
  {
    v165 = v510[10];
  }

  else
  {
    v159 = v510[9];
    v165 = v510[12] + v158;
  }

  if (v22 > 0.0)
  {
    v166 = v510[12] + v158;
  }

  else
  {
    v166 = v510[10];
  }

  v167 = v577.f64[0];
  v168 = v164 - v577.f64[0];
  v169 = v160 - v521;
  v568 = 2 * v506;
  if (!v147)
  {
    v584 = 0;
    v582 = 0;
    v587 = 0;
    v564 = 1;
    v171 = *&v579;
    v170 = v580.f64[0];
    v172 = v514;
    v181 = v519;
    v174 = v517;
    goto LABEL_360;
  }

  v171 = *&v579;
  v170 = v580.f64[0];
  v172 = v514;
  v173 = v168 * v580.f64[0] + v169 * v514;
  v174 = v517;
  if (*&v579 <= v173)
  {
    v584 = 0;
    v582 = 0;
    v587 = 0;
    v564 = 1;
    v181 = v519;
    goto LABEL_360;
  }

  v526 = v169;
  v528 = v168;
  v529 = v159;
  v530 = v161;
  v615[1] = 0;
  v615[0] = 0;
  v614[1] = 0;
  v614[0] = 0;
  v613 = 0u;
  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v609 = 0u;
  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  memset(v601, 0, sizeof(v601));
  bzero(v590, 0x210uLL);
  bzero(&v593, 0x210uLL);
  bzero(&v599, 0x210uLL);
  v177 = 0;
  v598 = 0;
  memset(v597, 0, sizeof(v597));
  if (v173 <= *&v579 + (1.57079633 - v569) * v575)
  {
    v178 = *&v579 + (1.57079633 - v569) * v575;
  }

  else
  {
    v178 = v173;
  }

  while (1)
  {
    v179 = v499 - v575 * 0.02 * v498 * v177;
    if (v179 <= v178)
    {
      break;
    }

    *(v597 + v177++) = v179;
    if (v177 == 50)
    {
      v180 = 50;
      v178 = v179;
      goto LABEL_195;
    }
  }

  v180 = v177 + 1;
  *(v597 + v177) = v178;
LABEL_195:
  v182 = (v178 - v173) * 0.1;
  if (v182 <= 0.0)
  {
    v185 = v178;
  }

  else
  {
    v183 = v180;
    v184 = 1;
    while (1)
    {
      v185 = v178 - v182 * v184;
      if (v185 <= v173)
      {
        break;
      }

      v180 = v183 + 1;
      *(v597 + v183) = v185;
      ++v184;
      ++v183;
      if (v184 == 11)
      {
        goto LABEL_202;
      }
    }

    v180 = v183 + 1;
    *(v597 + v183) = v173;
    v185 = v173;
  }

LABEL_202:
  *(v597 + v180) = v185;
  v596 = 0.0;
  v595 = 0.0;
  v186 = (v162 - v577.f64[0]) * v580.f64[0] + (v165 - v521) * v514;
  v187 = v186 < v499 && v186 > v173;
  if (v187)
  {
    v595 = (v162 - v577.f64[0]) * v580.f64[0] + (v165 - v521) * v514;
    v188 = 1;
  }

  else
  {
    v188 = 0;
  }

  v189 = (v163 - v577.f64[0]) * v580.f64[0] + (v166 - v521) * v514;
  if (v189 > v173 && v189 < v499)
  {
    *(&v595 + v188) = v189;
    if (v188 == 1 && v596 > v595)
    {
      v596 = v595;
      v595 = (v163 - v577.f64[0]) * v580.f64[0] + (v166 - v521) * v514;
    }

    v191 = v180 >= 0;
    ++v188;
LABEL_220:
    v192 = 0;
    v193 = 0;
    v194 = 0;
    while (v193 != v188)
    {
      if (v191)
      {
        v195 = *(v597 + v194);
        v196 = *(&v595 + v193);
        if (v195 > v196)
        {
          goto LABEL_223;
        }
      }

      else
      {
        v196 = *(&v595 + v193);
      }

      ++v193;
      v195 = v196;
LABEL_229:
      *(&v599 + v192++) = v195;
      v191 = v194 <= v180;
      if (v194 > v180 && v193 >= v188)
      {
        goto LABEL_233;
      }
    }

    v195 = *(v597 + v194);
LABEL_223:
    ++v194;
    goto LABEL_229;
  }

  if (v180 >= 0)
  {
    v187 = 1;
  }

  if (v187)
  {
    v191 = v180 >= 0;
    goto LABEL_220;
  }

  v188 = 0;
  LODWORD(v192) = 0;
LABEL_233:
  v197 = v192 > 0;
  if (v192 > 0 || v188 >= 1)
  {
    v198 = 0;
    v199 = 0;
    v200 = 0;
    while (v199 != v188)
    {
      if (v197)
      {
        v201 = *(&v599 + v200);
        v202 = *(&v595 + v199);
        if (v201 > v202)
        {
          goto LABEL_239;
        }

        v203 = v199;
      }

      else
      {
        v203 = v199;
        v202 = *(&v595 + v199);
      }

      *(v615 + v203) = v198;
      ++v199;
      v201 = v202;
LABEL_245:
      *(&v593 + v198++) = v201;
      v197 = v200 < v192;
      if (v200 >= v192 && v199 >= v188)
      {
        goto LABEL_247;
      }
    }

    v201 = *(&v599 + v200);
LABEL_239:
    ++v200;
    goto LABEL_245;
  }

  LODWORD(v198) = 0;
LABEL_247:
  v204 = 0;
  v205 = (v198 - 2);
  *(v615 + v188) = v205;
  v206 = v188;
  do
  {
    v207 = *(&v593 + *(v615 + v204));
    if (v207 == v185)
    {
      *(v614 + v204) = 1;
    }

    else if (v207 == v186)
    {
      *(v614 + v204) = 0;
    }

    else if (v207 == v189)
    {
      *(v614 + v204) = 2;
    }

    else
    {
      *(v614 + v204) = 4;
    }

    v204 += 4;
  }

  while (4 * v188 + 4 != v204);
  v524 = (v188 + 1);
  v532 = v198 - 2;
  v585 = v188 + 1;
  v208 = v502 * 1.35000002 > 1.0 || v502 * 1.35000002 < 0.400000006;
  v209 = 170.0;
  if (v502 * 1.35000002 < 0.400000006 && v502 * 1.35000002 <= 1.0)
  {
    v209 = 68.000001;
  }

  if (!v208)
  {
    v209 = v502 * 229.500004;
  }

  v588 = v209;
  v534 = v198;
  if (v198 <= 0)
  {
    LODWORD(v624[0]) = 0;
    v587 = 1;
    v248 = v580;
  }

  else
  {
    v210 = 0;
    v211 = 180.0;
    if (v502 * 1.35000002 < 0.400000006 && v502 * 1.35000002 <= 1.0)
    {
      v211 = 72.0000011;
    }

    if (!v208)
    {
      v211 = v502 * 243.000004;
    }

    v565 = v211 - v588;
    v536 = v198;
    v559 = vcvtq_f32_f16(v501);
    v212 = &v593;
    v213 = v590;
    v543 = 96 * v198;
    v550 = v163;
    do
    {
      v214 = (*&v520 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v215 = *v212++;
      v216 = v215;
      v217 = v577.f64[0] + v215 * v580.f64[0];
      v218 = v521 + v215 * v514;
      v175.f64[0] = (v162 - v217) * v520;
      v220 = (v550 - v217) * v520;
      v221 = (v165 - v218) * v500 <= v175.f64[0] || (*&v500 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
      if (!v221 || !v214)
      {
        v175.f64[0] = (v165 - v218) * v500;
      }

      v222 = (v166 - v218) * v500 >= v220 || (*&v500 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
      if (!v222 || !v214)
      {
        v220 = (v166 - v218) * v500;
      }

      v223 = (*&v579 - v216) * (1.0 / v575);
      if (v223 > 1.57079633)
      {
        v223 = 1.57079633;
      }

      v224 = v223;
      v225 = v219;
      v226 = v217 + v580.f64[0] * v225;
      v227 = v218 + v514 * v225;
      v228 = (v575 * 0.300000012 + 30.0) * v575 / (v575 + 50.0) * ((v497 + ((((v224 * v224) * 0.0054654) + -0.15346) * (v224 * v224))) * v224);
      *v213++ = v228;
      *&v228 = (v588 - (v228 * (1.0 / ((v575 * 0.300000012 + 30.0) * v575 / (v575 + 50.0))) + -1.0) * v565) * 0.00392156863;
      v229 = v226 + v175.f64[0] * v572;
      v230 = v227 + v175.f64[0] * v571;
      v231 = v226 + v220 * v572;
      v232 = v227 + v220 * v571;
      v233 = v229;
      v234 = &v630[v210];
      *&v230 = v230;
      *(v234 + 12) = v233;
      *(v234 + 13) = LODWORD(v230);
      v235 = vcvt_f16_f32(vmulq_n_f32(v559, *&v228));
      *(v234 + 56) = xmmword_183E20E20;
      *&v230 = v231;
      v236 = &v629[v210];
      *&v232 = v232;
      *(v234 + 10) = v235;
      *v236 = LODWORD(v230);
      *(v236 + 1) = LODWORD(v232);
      *(v236 + 8) = xmmword_183E20E20;
      *(v236 + 4) = v235;
      v210 += 96;
    }

    while (v543 != v210);
    v237 = 0;
    v238 = 0;
    LODWORD(v624[0]) = 0;
    v239 = LODWORD(v615[0]);
    v240 = 0.0;
    v241 = 0.0;
    v242 = 0.0;
    v243 = 0.0;
    v244 = v629;
    v245 = 0.0;
    v246 = v630;
    v247 = 0.0;
    v587 = 1;
    v148 = v575;
    v248 = v580;
    v149 = v521;
    v163 = v550;
    v249 = v536;
    do
    {
      ++*(v624 + v587 - 1);
      if (v238 == v239)
      {
        v250 = 0;
        v251 = 1;
LABEL_289:
        v254 = *(v614 + v250);
        *(v624 + v587++) = 0;
      }

      else
      {
        v252 = 0;
        while (v206 != v252)
        {
          v250 = v252 + 1;
          v253 = *(v615 + ++v252);
          if (v238 == v253)
          {
            v251 = v250 - 1 < v206;
            goto LABEL_289;
          }
        }

        v251 = 0;
        v254 = 4;
      }

      if (v238 < (v534 - 1))
      {
        if (!v251 || v254 == 2)
        {
          v255 = v254 == 2 && v251;
          v256 = v255 && v238 < v532 ? 5 : 3;
          v257 = &v630[48 * (v256 + 2 * v238)];
          v258 = v257[1];
          v259 = *v257;
          v260 = &v630[48 * ((2 * v238) | 1)];
          v261 = v258 - v260[1];
          v262 = *v260 - v259;
          v263 = 1.0 / sqrt(v261 * v261 + v262 * v262);
          v264 = v263 * v261;
          v265 = v263 * v262;
          v249 = v536;
          if ((*&v264 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v265 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            v247 = v264;
            v245 = v265;
          }
        }

        if (v254)
        {
          v266 = !v251;
        }

        else
        {
          v266 = 1;
        }

        if (v266 == 1)
        {
          v267 = !v254 && v251;
          v268 = v267 && v238 < v532 ? 4 : 2;
          v269 = &v629[48 * (v268 + 2 * v238)];
          v270 = v269[1];
          v271 = *v269;
          v272 = &v629[48 * (2 * v238)];
          v273 = v271 - *v272;
          v274 = v272[1] - v270;
          v275 = 1.0 / sqrt(v274 * v274 + v273 * v273);
          v276 = v275 * v274;
          v277 = v275 * v273;
          if ((*&v276 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v277 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            v243 = v276;
            v242 = v277;
          }
        }
      }

      v278 = 0;
      v279 = 0;
      v280 = &v630[48 * ((2 * (v238 & 0x3FFFFFFFFFFFFFFFLL)) | 1)];
      v281 = *v280;
      v282 = *(v280 + 1);
      v283 = v590[v238];
      v284 = vcvtq_f32_f16(*(v280 + 32));
      do
      {
        if (v279)
        {
          v285 = v241;
          v286 = &v246[v279];
          v287 = v240;
          v286[12] = v285;
          v286[13] = v287;
          *(v286 + 7) = 0x3F80000000000000;
          *(v286 + 10) = v237;
        }

        v288 = *&top_shadow_rim_interp_colors[v278];
        v289 = *&top_shadow_rim_interp_values[v278];
        v241 = v281 + v289 * (v247 * v283);
        v240 = v282 + v289 * (v245 * v283);
        v290 = v241;
        v291 = &v246[v279];
        v292 = v240;
        *v291 = v290;
        v291[1] = v292;
        *(v291 + 1) = 0x3F80000000000000;
        *&v288 = v288;
        v293 = vcvt_f16_f32(vmulq_n_f32(v284, *&v288));
        *(v291 + 4) = v293;
        v237 = v293;
        v279 += 6336;
        ++v278;
      }

      while (v278 != 3);
      v294 = 0;
      v295 = 0;
      v296 = &v629[96 * v238];
      v297 = *v296;
      v298 = *(v296 + 1);
      v299 = v243 * v283;
      v300 = v242 * v283;
      v301 = vcvtq_f32_f16(*(v296 + 32));
      do
      {
        if (v295)
        {
          v302 = v241;
          v303 = &v244[v295];
          v304 = v240;
          *v303 = v302;
          v303[1] = v304;
          *(v303 + 1) = 0x3F80000000000000;
          *(v303 + 4) = v237;
        }

        v305 = *&top_shadow_rim_interp_colors[v294];
        v306 = *&top_shadow_rim_interp_values[v294];
        v241 = v297 + v306 * v299;
        v240 = v298 + v306 * v300;
        v307 = v241;
        v308 = &v244[v295];
        v309 = v240;
        v308[12] = v307;
        v308[13] = v309;
        *(v308 + 7) = 0x3F80000000000000;
        *&v305 = v305;
        v310 = vcvt_f16_f32(vmulq_n_f32(v301, *&v305));
        *(v308 + 10) = v310;
        v237 = v310;
        v295 += 6336;
        ++v294;
      }

      while (v294 != 3);
      ++v238;
      v246 += 96;
      v244 += 96;
    }

    while (v238 != v249);
  }

  v311 = fabs(v248.f64[0]) == 1.0;
  if (v248.f64[0] == 0.0)
  {
    v311 = 1;
  }

  v582 = v311;
  if (v311)
  {
    v312 = v165;
    v313 = v163;
    v314 = 0;
    v175.f64[0] = v590[v534 - 1];
    v315 = 2 * v534;
    v316 = v315 - 1;
    v317 = &v630[48 * v315 - 48];
    v318 = vcvtq_f64_f32(*v317);
    v319 = v315 - 2;
    v320 = &v629[48 * v319];
    v321 = vcvtq_f64_f32(*v320);
    v322 = v317[4];
    v323 = v322;
    v324 = v320[4];
    v325 = v324;
    v326 = vcvtq_f32_f16(v322);
    v327 = vcvtq_f32_f16(v324);
    v328 = top_shadow_rim_interp_colors;
    v329 = top_shadow_rim_interp_values;
    v330 = v318;
    v331 = v321;
    do
    {
      v332 = *v328++;
      v333 = v332;
      v334 = *v329++;
      v176.f64[0] = v334;
      v335 = &v626[v314];
      v335[4] = v323;
      *&v333 = v333;
      v323 = vcvt_f16_f32(vmulq_n_f32(v326, *&v333));
      *v335 = vcvt_f32_f64(v330);
      v335[1] = 0x3F80000000000000;
      v176 = vmulq_n_f64(v248, vmulq_f64(v176, v175).f64[0]);
      v330 = vaddq_f64(v176, v318);
      v335[6] = vcvt_f32_f64(v330);
      v335[7] = 0x3F80000000000000;
      v335[10] = v323;
      v335[16] = v325;
      v325 = vcvt_f16_f32(vmulq_n_f32(v327, *&v333));
      v335[12] = vcvt_f32_f64(v331);
      v335[13] = 0x3F80000000000000;
      v331 = vaddq_f64(v176, v321);
      v335[18] = vcvt_f32_f64(v331);
      v335[19] = 0x3F80000000000000;
      v335[22] = v325;
      v314 += 192;
    }

    while (v314 != 576);
    v336 = v166;
    v337 = vcvtq_f64_f32(*&v630[48 * v319 + 12672]);
    v610 = vcvtq_f64_f32(*v317);
    v611 = v321;
    *&v601[0] = v322;
    *(&v601[0] + 1) = v324;
    v606 = v337;
    v607 = vcvtq_f64_f32(v628);
    v338 = vcvtq_f64_f32(*&v629[48 * v316 + 12672]);
    v602 = vcvtq_f64_f32(v627);
    v603 = v338;
    v339 = 2;
    goto LABEL_353;
  }

  v340 = v601;
  v341 = &v602;
  v342 = &v606;
  v343 = &v610;
  v344 = v614;
  v345 = v615;
  v339 = v585;
  v346 = v524;
  while (2)
  {
    v348 = *v345++;
    v347 = v348;
    v350 = *v344++;
    v349 = v350;
    v343->f64[0] = 0.0;
    v343->f64[1] = 0.0;
    v342->f64[0] = 0.0;
    v342->f64[1] = 0.0;
    v341->f64[0] = 0.0;
    v341->f64[1] = 0.0;
    if (v350)
    {
      v351 = 1;
    }

    else
    {
      v351 = v347 < 1;
    }

    if (!v351 && v347 < v532)
    {
      v357 = 2 * v347;
      v358 = &v630[48 * ((2 * v347) | 1)];
      *v343 = vcvtq_f64_f32(*v358);
      *v340 = v358[4];
      *v342 = vcvtq_f64_f32(*&v630[48 * v357 + 12672]);
      v356 = &v630[48 * (v357 + 2) + 12672];
LABEL_350:
      *v341 = vcvtq_f64_f32(*v356);
      goto LABEL_351;
    }

    if (v349 == 2 && v347 >= 1 && v347 < v532)
    {
      v359 = &v629[96 * v347];
      *v343 = vcvtq_f64_f32(*v359);
      v360 = *&v629[48 * (2 * v347 + 3) + 12672];
      *v340 = v359[4];
      *v342 = vcvtq_f64_f32(v360);
      v356 = &v629[48 * ((2 * v347) | 1) + 12672];
      goto LABEL_350;
    }

    if (v349 == 1)
    {
      v355 = &v630[48 * ((2 * v347) | 1)];
      *v343 = vcvtq_f64_f32(*v355);
      *v340 = v355[4];
      *v342 = vcvtq_f64_f32(*&v630[96 * v347 + 12672]);
      v356 = &v629[48 * ((2 * v347) | 1) + 12672];
      goto LABEL_350;
    }

LABEL_351:
    ++v340;
    ++v341;
    ++v342;
    ++v343;
    if (--v346)
    {
      continue;
    }

    break;
  }

  v312 = v165;
  v313 = v163;
  v336 = v166;
LABEL_353:
  v361 = 0;
  v584 = v339;
  v362 = v339;
  v363 = v625;
  do
  {
    v364 = *(&v610 + v361);
    v560 = vsubq_f64(*(&v606 + v361), v364);
    v566 = v364;
    v365 = vsubq_f64(*(&v602 + v361), v364);
    v366 = v560.f64[1];
    v367 = vzip1q_s64(v560, v365);
    v368 = vzip2q_s64(v560, v365);
    v369 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v367, v367), v368, v368));
    v370 = vmulq_f64(v365, v560);
    *v370.f64 = vdivq_f64(vaddq_f64(vdupq_laneq_s64(v370, 1), v370), vmulq_laneq_f64(v369, v369, 1)).f64[0];
    v371 = acosf(*v370.f64);
    memset(&v589, 0, sizeof(v589));
    CGAffineTransformMakeRotation(&v589, v371 * 0.0344827586);
    v372 = v560.f64[0];
    v373 = 0;
    v374 = *(v601 + 8 * v361);
    v375 = vcvtq_f32_f16(v374);
    a = v589.a;
    b = v589.b;
    c = v589.c;
    d = v589.d;
    tx = v589.tx;
    ty = v589.ty;
    v382 = v363;
    do
    {
      v383 = -8640;
      v384 = top_shadow_rim_interp_values;
      v385 = top_shadow_rim_interp_colors;
      v386 = v374;
      v387 = v566.f64[1];
      v388 = v566.f64[0];
      do
      {
        v389 = *v385++;
        v390 = v389;
        v391 = *v384++;
        v392 = v388;
        v393 = v387;
        *&v390 = v390;
        v394 = &v382[v383];
        *(v394 + 1084) = v386;
        v395 = vcvt_f16_f32(vmulq_n_f32(v375, *&v390));
        *(v394 + 2160) = v392;
        *(v394 + 8648) = xmmword_183E20E20;
        *(v394 + 2161) = v393;
        *(v394 + 1090) = v395;
        v386 = v395;
        v396 = v566.f64[0] + v391 * v372;
        *(v394 + 2172) = v396;
        v397 = v566.f64[1] + v391 * v366;
        *(v394 + 2173) = v397;
        *(v394 + 8696) = xmmword_183E20E20;
        v387 = v566.f64[1] + v391 * v366;
        v388 = v566.f64[0] + v391 * v372;
        v383 += 2880;
      }

      while (v383);
      v398 = tx + a * v372 + c * v366;
      v366 = ty + b * v372 + d * v366;
      ++v373;
      v382 += 96;
      v372 = v398;
    }

    while (v373 != 30);
    ++v361;
    v363 += 8640;
  }

  while (v361 != v362);
  v564 = v534 == 0;
  v146 = v522;
  v171 = *&v579;
  v170 = v580.f64[0];
  v167 = v577.f64[0];
  v150 = v518;
  v181 = v519;
  v174 = v517;
  v166 = v336;
  v163 = v313;
  v165 = v312;
  v172 = v514;
  v159 = v529;
  v161 = v530;
  v168 = v528;
  v169 = v526;
LABEL_360:
  v399 = v181 - v174;
  if (*v146 != 1)
  {
    v578 = 0;
    goto LABEL_433;
  }

  v400 = v162;
  v557 = v166;
  v401 = v172;
  v402 = (v159 - v167) * v170 + (v161 - v149) * v172;
  v403 = v148 * 0.01;
  if (v168 * v170 + v169 * v172 <= v171)
  {
    v404 = v171;
  }

  else
  {
    v404 = v168 * v170 + v169 * v172;
  }

  v548 = v171 + v513;
  if (v402 >= v171 + v513)
  {
    v405 = v171 + v513;
  }

  else
  {
    v405 = v402;
  }

  *&v561 = v405;
  bzero(&v593, 0x328uLL);
  v600 = 0.0;
  v599 = 0.0;
  bzero(v590, 0x338uLL);
  v407 = fmax(*&v561 - *&v579, 0.0) / -(v403 * v504);
  v408 = fmaxf(floorf(v407), -100.0);
  if (v408 <= 0)
  {
    v409 = (1 - v408);
    v413 = (v409 + 1) & 0x1FFFFFFFELL;
    v414 = vdupq_n_s64(v409 - 1);
    v415 = vdupq_lane_s64(COERCE__INT64(v403 * v504), 0);
    v416 = vadd_s32(vdup_n_s32(v408), 0x100000000);
    v417 = vdupq_lane_s64(v579, 0);
    v418 = vdupq_lane_s64(v561, 0);
    v419 = xmmword_183E20FF0;
    v420 = &v594;
    v421 = vdupq_n_s64(2uLL);
    v410 = v574;
    v411 = v580.f64[0];
    v412 = v401;
    do
    {
      v422 = vmovn_s64(vcgeq_u64(v414, v419));
      v423 = vmlsq_f64(v417, vcvtq_f64_f32(vcvt_f32_s32(v416)), v415);
      v424 = vbslq_s8(vcgtq_f64(v423, v418), v418, v423);
      if (v422.i8[0])
      {
        if (v404 <= *v424.i64)
        {
          v425 = *v424.i64;
        }

        else
        {
          v425 = v404;
        }

        *(v420 - 1) = v425;
      }

      if (v422.i8[4])
      {
        v426 = *&v424.i64[1];
        if (v404 > *&v424.i64[1])
        {
          v426 = v404;
        }

        *v420 = v426;
      }

      v419 = vaddq_s64(v419, v421);
      v416 = vadd_s32(v416, 0x200000002);
      v420 += 2;
      v413 -= 2;
    }

    while (v413);
  }

  else
  {
    LODWORD(v409) = 0;
    v410 = v574;
    v411 = v580.f64[0];
    v412 = v401;
  }

  v427 = (v400 - v577.f64[0]) * v411 + (v165 - v149) * v412;
  v428 = v427 < *&v561 && v427 > v404;
  if (v428)
  {
    v599 = (v400 - v577.f64[0]) * v411 + (v165 - v149) * v412;
    v429 = 1;
  }

  else
  {
    v429 = 0;
  }

  v430 = (v163 - v577.f64[0]) * v411 + (v557 - v149) * v412;
  if (v430 > v404 && v430 < *&v561)
  {
    *(&v599 + v429) = v430;
    if (v429 == 1 && v600 > v599)
    {
      v600 = v599;
      v599 = (v163 - v577.f64[0]) * v411 + (v557 - v149) * v412;
    }

    v432 = v409 > 0;
    ++v429;
  }

  else
  {
    v432 = v409 > 0;
    if (v409 > 0)
    {
      LOBYTE(v428) = 1;
    }

    if (!v428)
    {
      LODWORD(v433) = 0;
      goto LABEL_432;
    }
  }

  v433 = 0;
  v434 = 0;
  v435 = 0;
  v436 = 1;
  while (2)
  {
    v437 = v436;
    if (v434 == v429)
    {
      v438 = *(&v593 + v435);
      goto LABEL_402;
    }

    if (!v432)
    {
      v439 = *(&v599 + v434);
      goto LABEL_407;
    }

    v438 = *(&v593 + v435);
    v439 = *(&v599 + v434);
    if (v438 > v439)
    {
LABEL_402:
      ++v435;
    }

    else
    {
LABEL_407:
      ++v434;
      v438 = v439;
    }

    v590[v433++] = v438;
    ++v436;
    v432 = v435 < v409;
    if (v435 < v409 || v434 < v429)
    {
      continue;
    }

    break;
  }

  if (v433 < 1)
  {
    v146 = v522;
    v174 = v517;
    v150 = v518;
  }

  else
  {
    v546 = v148 * 0.400000006;
    v544 = 1.0 / v148;
    v441 = fmax((v513 + v148 * 0.399745986 - v440) * (1.0 / v148) + -0.949999988, 0.0);
    *&v441 = v441 * v441 * -9.0;
    v443 = expf(*&v441);
    v444 = 0;
    v540 = -(v443 + v443 * v443 * (v443 * v443));
    v538 = fmin(v502 * 15.0, 1.0) * 76.5;
    v537 = vcvtq_f32_f16(v501);
    v445 = v437 & 0x7FFFFFFF;
    v553 = v165;
    v555 = v400;
    v551 = v163;
    do
    {
      v446 = (*&v520 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v447 = v590[v444];
      v448 = v577.f64[0] + v447 * v580.f64[0];
      v449 = v149 + v447 * v401;
      v451 = v450;
      v452 = (v553 - v449) * v500 <= (v555 - v448) * v520 || (*&v500 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
      if (v452 && v446)
      {
        v453 = (v555 - v448) * v520;
      }

      else
      {
        v453 = (v553 - v449) * v500;
      }

      v454 = (v557 - v449) * v500 >= (v551 - v448) * v520 || (*&v500 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
      if (v454 && v446)
      {
        v455 = (v551 - v448) * v520;
      }

      else
      {
        v455 = (v557 - v449) * v500;
      }

      v456 = (*&v579 - v447) * v544 + 1.57079633;
      v457 = v546 * ((((((((v456 * v456) * 0.00096967) + -0.039228) * (v456 * v456)) + 0.49535) * (v456 * v456)) + -0.99861) + 1.0);
      v458.f64[0] = v448 + (v451 - v457) * v580.f64[0];
      v458.f64[1] = v449 + (v451 - v457) * v401;
      v562 = v458;
      v459 = v453 - v457;
      v460 = v457 + v455;
      v461 = fmax((v548 - (v447 + v451) + v457) * v544 + -0.949999988, 0.0);
      *&v461 = v461 * v461 * -9.0;
      v462 = expf(*&v461);
      v463 = v538 * (v540 + v462 + v462 * v462 * (v462 * v462));
      v464 = (v455 - v453) * 0.5;
      if (v464 < v457)
      {
        v463 = v463 * ((v455 - v453) * 0.25 / v457 + 0.5);
      }

      if (v457 >= v464)
      {
        v465 = (v455 - v453) * 0.5;
      }

      else
      {
        v465 = v457;
      }

      v149 = v521;
      v466 = v465 + v453;
      v467 = v455 - v465;
      v410 = v574;
      v148 = v575;
      v468 = v463 * 0.00392156863;
      *&v469.f64[1] = v537.i64[1];
      *&v597[0] = vcvt_f16_f32(vmulq_n_f32(v537, v468));
      v470 = v459;
      v471 = v460;
      v472 = v466;
      *&v467 = v467;
      v496 = v472;
      v469.f64[0] = v572;
    }

    while (v445 != v444);
    v146 = v522;
    v174 = v517;
    v150 = v518;
  }

LABEL_432:
  v578 = 2 * v433;
  v181 = v519;
LABEL_433:
  *(*(v8 + 16) + 497) |= 1u;
  v473 = *(v8 + 16);
  *(v473 + 496) = 3;
  *(v8 + 1368) = v511[3];
  ++*(v8 + 664);
  *(v473 + 16) = 3;
  CA::OGL::Context::bind_surface(v8, v515, 0, 1u, 1, 0.0);
  if (v512)
  {
    if ((*(v512 + 144) & 0x10) != 0)
    {
      v475 = vaddvq_f64(vmulq_f64(*v512, *v512));
      v476 = vaddvq_f64(vmulq_f64(*(v512 + 32), *(v512 + 32)));
      v477 = *(v512 + 120);
      v474 = 1.0;
      if (v477 != 1.0)
      {
        v478 = 1.0 / (v477 * v477);
        v475 = v478 * v475;
        v476 = v478 * v476;
      }

      v479 = v476 == 1.0 && v475 == 1.0;
      v480 = (sqrt(v476) + sqrt(v475)) * 0.5;
      if (!v479)
      {
        v474 = v480;
      }
    }

    else
    {
      v474 = *(v512 + 128);
    }

    v481 = 1.0 / v474;
    *(*(v8 + 16) + 96) = vmulq_n_f32(*(*(v8 + 16) + 96), v481);
  }

  v592 = 0u;
  v482 = *(*(v8 + 656) + 8);
  *&v590[0] = v8;
  v590[1] = v482;
  v591 = 0u;
  v590[2] = 0.0;
  WORD4(v591) = 0;
  CA::OGL::Context::ClippedArray::start(v590);
  v576 = 2 * (v399 & ~(v399 >> 31));
  v594 = 0;
  v593 = 0;
  v573 = 2 * v181;
  v570 = 2 * (v150 - v181);
  while (CA::OGL::Context::ClippedArray::next_rect(v590, &v593))
  {
    if (*v146 == 1)
    {
      *(*(v8 + 16) + 16) = 0;
      v483 = v578;
      (*(*v8 + 344))(v8, 2, v578, 0, v623, 0, v578, 0);
      (*(*v8 + 344))(v8, 2, v483, 0, v622, 0, v483, 0);
      (*(*v8 + 344))(v8, 2, v483, 0, v621, 0, v483, 0);
      *(*(v8 + 16) + 16) = 3;
      (*(*v8 + 344))(v8, 2, v576, 0, &v636[6 * v174], 0, v576, 0);
      (*(*v8 + 344))(v8, 2, v573, 0, v635, 0, v573, 0);
      (*(*v8 + 344))(v8, 2, v573, 0, v634, 0, v573, 0);
    }

    if (v146[1] == 1)
    {
      if (!v564)
      {
        v484 = 0;
        *(*(v8 + 16) + 16) = 0;
        v485 = v625;
        do
        {
          if (v587 >= 1)
          {
            v486 = &v629[6336 * v484];
            v487 = &v630[6336 * v484];
            v488 = v624;
            v489 = v587;
            do
            {
              v490 = *v488++;
              (*(*v8 + 344))(v8, 2, (2 * v490), 0, v487, 0, (2 * v490), 0);
              (*(*v8 + 344))(v8, 2, (2 * v490), 0, v486, 0, (2 * v490), 0);
              v487 += 96 * v490;
              v486 += 96 * v490;
              --v489;
            }

            while (v489);
          }

          if (v582)
          {
            (*(*v8 + 344))(v8, 2, 4, 0, &v626[192 * v484], 0, 4, 0);
          }

          v491 = v485;
          v492 = v584;
          if (v584 >= 1)
          {
            do
            {
              (*(*v8 + 344))(v8, 2, 60, 0, v491, 0, 60, 0);
              v491 += 8640;
              --v492;
            }

            while (v492);
          }

          ++v484;
          v485 += 2880;
        }

        while (v484 != 3);
      }

      *(*(v8 + 16) + 16) = 3;
      (*(*v8 + 344))(v8, 2, v568, 0, &v633[6 * v181], 0, v568, 0);
      __asm { FCMP            H8, #0 }

      if (_ZF)
      {
        (*(*v8 + 344))(v8, 2, v570, 0, &v632[6 * v181], 0, v570, 0);
        (*(*v8 + 344))(v8, 2, v570, 0, &v631[6 * v181], 0, v570, 0);
      }

      *(*(v8 + 16) + 16) = 11;
      (*(*v8 + 344))(v8, 2, v568, 0, &v636[6 * v181], 0, v568, 0);
      (*(*v8 + 344))(v8, 2, v570, 0, &v635[6 * v181], 0, v570, 0);
      (*(*v8 + 344))(v8, 2, v570, 0, &v634[6 * v181], 0, v570, 0);
      v146 = v522;
    }
  }

  result = CA::OGL::Context::unbind_surface(v8, v515, 0);
  *(v8 + 1368) = 0;
  ++*(v8 + 664);
  *(*(v8 + 16) + 16) = 0;
  *(*(v8 + 16) + 497) &= ~1u;
  return result;
}

double *CA::OGL::anonymous namespace::curl_displace(double *this, double a2, double a3, double a4, double *a5, double a6, double a7)
{
  v7 = (a3 - a2) / a4;
  if (v7 + 1.57079633 <= a7)
  {
    v8 = v7 + 1.57079633;
  }

  else
  {
    v8 = a7;
  }

  if (v8 < a6)
  {
    v8 = a6;
  }

  v9 = v8;
  if (this)
  {
    *this = ((((((v9 * v9) * 0.0054654) + -0.15346) * (v9 * v9)) + 0.98442) * v9);
  }

  return this;
}

float32x2_t CA::OGL::anonymous namespace::curl_strip_emit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, float64x2_t a6, double a7, double a8, float64x2_t a9, float64_t a10, double a11, double a12, float a13, float a14, float a15, float a16)
{
  v19 = a7 + a11 * a15;
  v20 = a7 + a11 * a16;
  v21 = a8 + a12 * a16;
  v22 = (a2 + 96 * a4);
  a9.f64[1] = a10;
  *v22 = vcvt_f32_f64(vmlaq_n_f64(a6, a9, a13));
  v22[1] = 0x3F80000000000000;
  v23 = v19;
  *&v19 = a8 + a12 * a15;
  v22[2].f32[0] = v23;
  v22[2].i32[1] = LODWORD(v19);
  v22[4] = 0;
  v24 = *a5;
  v25 = a6.f64[0] + a9.f64[0] * a15;
  v26 = a2 + 48 * ((2 * a4) | 1);
  v27 = a6.f64[1] + a10 * a15;
  *v26 = v25;
  *(v26 + 4) = v27;
  *(v26 + 8) = 0x3F80000000000000;
  *(v26 + 16) = v23;
  *(v26 + 20) = LODWORD(v19);
  *(v26 + 32) = v24;
  v28 = *a5;
  v29 = a1 + 96 * a4;
  *v29 = v25;
  *(v29 + 4) = v27;
  *(v29 + 8) = 0x3F80000000000000;
  *(v29 + 16) = v23;
  *(v29 + 20) = LODWORD(v19);
  *(v29 + 32) = v28;
  v30 = *a5;
  v31 = a6.f64[0] + a9.f64[0] * a16;
  v32 = a1 + 48 * ((2 * a4) | 1);
  v33 = a6.f64[1] + a10 * a16;
  *v32 = v31;
  *(v32 + 4) = v33;
  *(v32 + 8) = 0x3F80000000000000;
  *&v20 = v20;
  *&v21 = v21;
  *(v32 + 16) = LODWORD(v20);
  *(v32 + 20) = LODWORD(v21);
  *(v32 + 32) = v30;
  v34 = *a5;
  v35 = a3 + 96 * a4;
  *v35 = v31;
  *(v35 + 4) = v33;
  *(v35 + 8) = 0x3F80000000000000;
  *(v35 + 16) = LODWORD(v20);
  *(v35 + 20) = LODWORD(v21);
  *(v35 + 32) = v34;
  v36 = (a3 + 48 * ((2 * a4) | 1));
  result = vcvt_f32_f64(vmlaq_n_f64(a6, a9, a14));
  *v36 = result;
  v36[1] = 0x3F80000000000000;
  v36[2].i32[0] = LODWORD(v20);
  v36[2].i32[1] = LODWORD(v21);
  v36[4] = 0;
  return result;
}

__n128 CA::OGL::anonymous namespace::PageCurlFilter::ROI(CA::OGL::_anonymous_namespace_::PageCurlFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, __n128 *a4)
{
  *a4 = *(a3 + 72);
  result = *(a3 + 88);
  a4[1] = result;
  return result;
}

double *CA::OGL::anonymous namespace::PageCurlFilter::DOD(CA::OGL::_anonymous_namespace_::PageCurlFilter *this, CA::Render::KeyValueArray **a2, const CA::Render::Layer *a3, CA::Rect *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 88);
  v8[0] = *(a3 + 72);
  v8[1] = v4;
  v5 = *(a4 + 2);
  if (v5 >= *(a4 + 3))
  {
    v5 = *(a4 + 3);
  }

  if (v5 > 0.0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  return result;
}

double *CA::OGL::anonymous namespace::curl_bounds(double *a1, double *a2, double *a3)
{
  v214 = *MEMORY[0x1E69E9840];
  v5 = &v211;
  v7 = a1[7];
  v6 = a1[8];
  v9 = a3[2];
  v8 = a3[3];
  v10 = v9 + *a3;
  if (v7 < 0.0)
  {
    v11 = a3[1];
  }

  else
  {
    v11 = v8 + a3[1];
  }

  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = a2[3] + v12;
  if (v7 < 0.0)
  {
    v16 = a2[1];
  }

  else
  {
    v16 = a2[3] + v12;
  }

  if (v7 < 0.0)
  {
    v17 = a2[3] + v12;
  }

  else
  {
    v17 = a2[1];
  }

  v18 = a1[9];
  v19 = a1[10];
  v20 = a1[12];
  v21 = a1[11] + v18;
  v22 = v20 + v19;
  if (v7 < 0.0)
  {
    v23 = a1[10];
  }

  else
  {
    v23 = v20 + v19;
  }

  if (v7 < 0.0)
  {
    v24 = v22;
  }

  else
  {
    v24 = a1[10];
  }

  v25 = a1[2];
  v26 = a1[3];
  v27 = a1[5];
  v28 = a1[6];
  v29.f64[0] = v26;
  v29.f64[1] = fmax(v26, 1.57079633);
  v30 = vcvt_f32_f64(v29);
  v31 = vmul_f32(v30, v30);
  v32 = vmla_f32(vdup_n_s32(0x3F7C02BDu), v31, vmla_f32(vdup_n_s32(0xBE1D2553), vdup_n_s32(0x3BB31712u), v31));
  v190 = 1.57079633 - v26;
  v33 = fabs(v28) * v8 - (-(v25 * (1.57079633 - v26)) - fabs(v27) * v9);
  if (v7 >= 0.0)
  {
    v34 = a1[9];
  }

  else
  {
    v34 = a1[11] + v18;
  }

  if (v7 >= 0.0)
  {
    v35 = a1[11] + v18;
  }

  else
  {
    v35 = a1[9];
  }

  v177 = v34;
  v178 = v35;
  if (v6 > 0.0)
  {
    v36 = *a3;
  }

  else
  {
    v36 = v10;
  }

  memset(v213, 0, sizeof(v213));
  v211 = 0u;
  v212 = 0u;
  v37 = v14 + v13;
  v38 = vmul_f32(v32, v30);
  if (v6 > 0.0)
  {
    v39 = v13;
  }

  else
  {
    v39 = v14 + v13;
  }

  v40 = vaddq_f64(vextq_s8(v29, v29, 8uLL), vcvtq_f64_f32(v38));
  *&v41 = *&vsubq_f64(vdupq_laneq_s64(v40, 1), v40);
  if (v6 > 0.0)
  {
    v42 = v37;
  }

  else
  {
    v42 = v13;
  }

  v43 = (v33 + v41 * v25) * *a1 - v25 * (1.57079633 - v26);
  if (v6 > 0.0)
  {
    v44 = v18;
  }

  else
  {
    v44 = v21;
  }

  v181 = v22;
  v182 = v18;
  v179 = v19;
  v180 = v21;
  if (v6 > 0.0)
  {
    v45 = v21;
  }

  else
  {
    v45 = v18;
  }

  v46 = v27 * (v39 - v36) + v28 * (v16 - v11);
  if (v6 > 0.0)
  {
    v47 = v19;
  }

  else
  {
    v47 = v22;
  }

  v48 = v27 * (v42 - v36) + v28 * (v17 - v11);
  if (v6 > 0.0)
  {
    v49 = v22;
  }

  else
  {
    v49 = v19;
  }

  v175 = v47;
  v176 = v49;
  v50 = v43 > v46 && v43 < v48;
  v51 = 1.0 / v7;
  v52 = 1.0 / v6;
  v53 = v23 - v11;
  v54 = v27 * (v44 - v36);
  v55 = v24 - v11;
  v203 = v13;
  v204 = v12;
  v205 = v37;
  v206 = v12;
  v207 = v37;
  v208 = v15;
  v56 = v27 * (v45 - v36);
  v209 = v13;
  v210 = v15;
  v185 = v7;
  v186 = v6;
  v173 = 1.0 / v7;
  v174 = 1.0 / v6;
  v187 = v27;
  if (v50)
  {
    if (v6 > 0.0)
    {
      v58 = v15;
    }

    else
    {
      v58 = v12;
    }

    if (v6 <= 0.0)
    {
      v12 = v15;
    }

    if (v7 >= 0.0)
    {
      v59 = v37;
    }

    else
    {
      v59 = v13;
    }

    if (v7 < 0.0)
    {
      v13 = v37;
    }

    v60 = v36 + v43 * v27;
    v61 = v11 + v43 * v28;
    v62 = (v13 - v60) * v51;
    v63 = (v59 - v60) * v51;
    v64 = (v12 - v61) * v52;
    v65 = COERCE_UNSIGNED_INT64(fabs(1.0 / v6)) > 0x7FEFFFFFFFFFFFFFLL;
    v66 = v64 <= v62 || v65;
    v67 = COERCE_UNSIGNED_INT64(fabs(1.0 / v7)) < 0x7FF0000000000000;
    if ((v66 & v67) != 0)
    {
      v64 = v62;
    }

    v68 = (v58 - v61) * v52;
    if (v68 >= v63)
    {
      v65 = 1;
    }

    if (v65 && v67)
    {
      v68 = v63;
    }

    *&v211 = v60 + v64 * v7;
    *(&v211 + 1) = v61 + v64 * v6;
    *&v212 = v60 + v68 * v7;
    *(&v212 + 1) = v61 + v68 * v6;
    v57 = 6;
  }

  else
  {
    v57 = 4;
  }

  v193 = v26;
  v69 = 0;
  v188 = v54 + v28 * v53;
  v184 = v56 + v28 * v55;
  memset(v202, 0, sizeof(v202));
  v70 = a1[4];
  v71 = v36;
  v195 = v43;
  v72 = v11;
  v73 = v25;
  do
  {
    v74 = *(&v203 + v69 * 16);
    v75 = *(&v203 + v69 * 16 + 8);
    v77 = v76;
    v78 = &v202[v69];
    *v78 = v74 + v187 * v77;
    v78[1] = v75 + v28 * v77;
    ++v69;
  }

  while (v57 != v69);
  v194 = v71;
  v200 = 0u;
  v201 = 0u;
  result = CA::BoundsImpl::set_points(v200.f64, v202, v57);
  v81 = v201;
  v171 = v201;
  v172 = v200;
  *a2 = v200;
  *(a2 + 1) = v81;
  v82 = v195;
  v83 = v195 + v190 * v73;
  v203 = v182;
  v204 = v179;
  v205 = v180;
  v206 = v179;
  v207 = v180;
  v208 = v181;
  v84 = 4;
  v209 = v182;
  v210 = v181;
  if (v195 <= v188)
  {
    v85 = v185;
    v87 = v186;
    v88 = v71;
    v86 = v184;
    v90 = v173;
    v89 = v174;
    v91 = v72;
  }

  else
  {
    v86 = v184;
    v85 = v185;
    v87 = v186;
    v88 = v71;
    v90 = v173;
    v89 = v174;
    v91 = v72;
    if (v195 < v184)
    {
      v92 = v71 + v195 * v187;
      v93 = v72 + v195 * v28;
      v94 = (v177 - v92) * v173;
      v95 = (v178 - v92) * v173;
      v96 = (*&v174 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
      v97 = (v175 - v93) * v174 <= v94 || (*&v174 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
      v98 = (*&v173 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      if (!v97 || !v98)
      {
        v94 = (v175 - v93) * v174;
      }

      if ((v176 - v93) * v174 >= v95)
      {
        v96 = 1;
      }

      if (!v96 || !v98)
      {
        v95 = (v176 - v93) * v174;
      }

      *&v211 = v92 + v94 * v185;
      *(&v211 + 1) = v93 + v94 * v186;
      *&v212 = v92 + v95 * v185;
      *(&v212 + 1) = v93 + v95 * v186;
      v84 = 6;
      v5 = v213;
    }
  }

  v183 = v73;
  v99 = v83 > v188 && v83 < v86;
  v191 = v195 + v190 * v73;
  if (v99)
  {
    v101 = v187;
    v102 = v88 + v83 * v187;
    v100 = v91;
    v103 = v91 + v83 * v28;
    v104 = (v177 - v102) * v90;
    v105 = (v178 - v102) * v90;
    v106 = (*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
    v107 = (v175 - v103) * v89 <= v104 || (*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
    v108 = (*&v90 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    if (!v107 || !v108)
    {
      v104 = (v175 - v103) * v89;
    }

    if ((v176 - v103) * v89 >= v105)
    {
      v106 = 1;
    }

    if (!v106 || !v108)
    {
      v105 = (v176 - v103) * v89;
    }

    *v5 = v102 + v104 * v85;
    v5[1] = v103 + v104 * v87;
    v109 = &v203 + 2 * v84;
    v84 += 2;
    v109[2] = v102 + v105 * v85;
    v109[3] = v103 + v105 * v87;
  }

  else
  {
    v100 = v91;
    v101 = v187;
  }

  v110 = 0;
  v111 = 0;
  v112 = a1[2];
  v113 = a1[3];
  v114 = a1[4];
  v115 = &v204;
  do
  {
    v117 = *(v115 - 1);
    v116 = *v115;
    v118 = (v117 - v88) * v101 + (*v115 - v100) * v28;
    if (v110 > 3 || (v118 > v82 ? (v119 = v118 < v191) : (v119 = 0), v119))
    {
      v82 = v195;
      v88 = v194;
      v121 = v120;
      v122 = &v202[v111];
      v111 = (v111 + 1);
      *v122 = v117 + v101 * v121;
      v122[1] = v116 + v28 * v121;
    }

    ++v110;
    v115 += 2;
  }

  while (v84 != v110);
  if (!v111)
  {
    v129 = v100;
    v134 = v183;
    v125 = v184;
    v124 = v185;
    v123 = v186;
    goto LABEL_134;
  }

  v198 = 0u;
  v199 = 0u;
  result = CA::BoundsImpl::set_points(v198.f64, v202, v111);
  v124 = v185;
  v123 = v186;
  v125 = v184;
  v126 = v183 * -0.400000006 * (v101 + v185);
  v127 = (v185 - v101) * (v183 * 0.400000006);
  if (v126 >= v127)
  {
    v128 = (v185 - v101) * (v183 * 0.400000006);
  }

  else
  {
    v128 = v183 * -0.400000006 * (v101 + v185);
  }

  v129 = v100;
  if (v128 < 0.0)
  {
    v198.f64[0] = v198.f64[0] + v128;
    v199.f64[0] = v199.f64[0] - v128;
  }

  v130 = v183 * -0.400000006 * (v186 + v28);
  v131 = (v186 - v28) * (v183 * 0.400000006);
  if (v126 <= v127)
  {
    v132 = (v185 - v101) * (v183 * 0.400000006);
  }

  else
  {
    v132 = v183 * -0.400000006 * (v101 + v185);
  }

  if (v132 > 0.0)
  {
    v199.f64[0] = v199.f64[0] + v132;
  }

  if (v130 >= v131)
  {
    v133 = (v186 - v28) * (v183 * 0.400000006);
  }

  else
  {
    v133 = v183 * -0.400000006 * (v186 + v28);
  }

  v134 = v183;
  v88 = v194;
  v82 = v195;
  if (v133 < 0.0)
  {
    v198.f64[1] = v198.f64[1] + v133;
    v199.f64[1] = v199.f64[1] - v133;
  }

  if (v130 <= v131)
  {
    v130 = (v186 - v28) * (v183 * 0.400000006);
  }

  if (v130 > 0.0)
  {
    v199.f64[1] = v199.f64[1] + v130;
  }

  v135 = v199;
  v136 = vclezq_f64(v171);
  v137 = vclezq_f64(v199);
  v138 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v137, v136), vzip2q_s64(v137, v136))));
  if (v138.i8[4])
  {
    if (v138.i8[0])
    {
      goto LABEL_134;
    }

    v139 = v198;
  }

  else
  {
    if (v138.i8[0])
    {
      goto LABEL_134;
    }

    v139 = vminnmq_f64(v172, v198);
    v135 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v172, v171), vaddq_f64(v198, v199)), v139);
  }

  v172 = v139;
  *a2 = v139;
  *(a2 + 1) = v135;
LABEL_134:
  if (v82 <= v188)
  {
    return result;
  }

  v140 = 0;
  v141 = 0;
  v203 = v182;
  v204 = v179;
  v205 = v180;
  v206 = v179;
  v142 = v88 + v82 * v101;
  v143 = v129 + v82 * v28;
  v144 = (v177 - v142) * v173;
  v145 = (*&v174 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  v146 = (v175 - v143) * v174 <= v144 || (*&v174 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  v147 = (*&v173 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v148 = &v204;
  v207 = v180;
  v208 = v181;
  v209 = v182;
  v210 = v181;
  if (!v146 || !v147)
  {
    v144 = (v175 - v143) * v174;
  }

  v149 = (v176 - v143) * v174;
  if (v149 >= (v178 - v142) * v173)
  {
    v145 = 1;
  }

  if (v145 && v147)
  {
    v149 = (v178 - v142) * v173;
  }

  *&v211 = v142 + v144 * v124;
  *(&v211 + 1) = v143 + v144 * v123;
  *&v212 = v142 + v149 * v124;
  *(&v212 + 1) = v143 + v149 * v123;
  v189 = a1[3];
  v192 = a1[2];
  v150 = a1[4];
  do
  {
    v151 = *(v148 - 1);
    v152 = *v148;
    v153 = (v151 - v88) * v101 + (*v148 - v129) * v28;
    v154 = v82 > v153;
    if (v82 >= v125)
    {
      v154 = 0;
    }

    if (v140 > 3 || v154)
    {
      v82 = v195;
      v88 = v194;
      v156 = v155;
      v157 = &v202[v141];
      v141 = (v141 + 1);
      *v157 = v151 + v101 * v156;
      v157[1] = v152 + v28 * v156;
    }

    ++v140;
    v148 += 2;
  }

  while (v140 != 6);
  v196 = 0u;
  v197 = 0u;
  result = CA::BoundsImpl::set_points(v196.f64, v202, v141);
  v158 = v197.f64[0];
  if (v197.f64[0] <= v197.f64[1])
  {
    v159 = v197.f64[1];
  }

  else
  {
    v159 = v197.f64[0];
  }

  if (v159 < 1.79769313e308)
  {
    if (v197.f64[0] >= v197.f64[1])
    {
      v160 = v197.f64[1];
    }

    else
    {
      v160 = v197.f64[0];
    }

    if (v160 > 0.0)
    {
      *&v161 = (v134 * -0.300000012 + -30.0) * v134 / (v134 + 50.0);
      v196 = vaddq_f64(v196, vdupq_lane_s64(v161, 0));
      v162 = *&v161 * -2.0;
      v163 = v162 + v197.f64[1];
      v197.f64[0] = v162 + v197.f64[0];
      v197.f64[1] = v162 + v197.f64[1];
      if (v162 + v158 <= 0.0 || v163 <= 0.0)
      {
        v197 = 0uLL;
      }
    }
  }

  v164 = *(a2 + 2);
  v165 = v197;
  v166 = vclezq_f64(v164);
  v167 = vclezq_f64(v197);
  v168 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v167, v166), vzip2q_s64(v167, v166))));
  if (v168.i8[4])
  {
    if (v168.i8[0])
    {
      return result;
    }

    v169 = v196;
  }

  else
  {
    if (v168.i8[0])
    {
      return result;
    }

    v170 = vaddq_f64(v172, v164);
    v169 = vminnmq_f64(v172, v196);
    v165 = vsubq_f64(vmaxnmq_f64(v170, vaddq_f64(v196, v197)), v169);
  }

  *a2 = v169;
  *(a2 + 1) = v165;
  return result;
}

uint64_t CA::OGL::anonymous namespace::PageCurlTransition::render(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, uint64_t a6, uint64_t a7, double a8, int32x4_t a9)
{
  v13 = result;
  v98 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 656);
  v15.i64[1] = 0;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  if (*(result + 8))
  {
    v16 = a6;
  }

  else
  {
    v16 = a7;
  }

  if (*(result + 8))
  {
    v17 = a7;
  }

  else
  {
    v17 = a6;
  }

  *(*(a3 + 16) + 497) |= 1u;
  *(a3 + 1368) = *(v14 + 24);
  ++*(a3 + 664);
  *(*(a3 + 16) + 16) = 1;
  if (v16)
  {
    v18 = *a4;
    v19 = *(a4 + 8);
    v15.i64[0] = *(a4 + 16);
    a9.i64[0] = *(a4 + 24);
    v20 = *v15.i64 + *a4;
    v21 = *a9.i64 + v19;
    v22 = *(v16 + 56);
    v23 = *(v16 + 60);
    if (v22 <= v23)
    {
      v24 = *(v16 + 60);
    }

    else
    {
      v24 = *(v16 + 56);
    }

    v15.i32[0] = 1073741822;
    a9.i32[0] = v24;
    v25 = vdupq_lane_s32(*&vcgtq_s32(a9, v15), 0);
    v26 = *(v16 + 48);
    v27.i64[0] = v26;
    v27.i64[1] = SHIDWORD(v26);
    v28 = vbslq_s8(v25, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v27));
    v29 = v22;
    v30 = v23;
    if (v24 > 1073741822)
    {
      v29 = 1.79769313e308;
      v30 = 1.79769313e308;
    }

    v81 = v28;
    *&v82 = v29;
    *(&v82 + 1) = v30;
    CA::Rect::apply_transform(&v81, a5, a3);
    *&v31 = v18;
    *&v32 = v19;
    *&v84 = __PAIR64__(v32, v31);
    v33 = *(a4 + 16);
    v34 = vsubq_f64(*a4, v81);
    v35 = vcvt_f32_f64(v34);
    *(&v84 + 1) = 0x3F80000000000000;
    *&v85 = v35;
    *&v86 = 0x3C003C003C003C00;
    *&v36 = v21;
    *&v87 = __PAIR64__(v36, v31);
    *&v89 = 0x3C003C003C003C00;
    *&v37 = v20;
    *&v90 = __PAIR64__(v32, v37);
    *&v92 = 0x3C003C003C003C00;
    *&v93 = __PAIR64__(v36, v37);
    v38 = vcvt_f32_f64(vaddq_f64(v33, v34));
    v39 = __PAIR64__(v35.u32[1], v38.u32[0]);
    v35.i32[1] = v38.i32[1];
    *(&v87 + 1) = 0x3F80000000000000;
    *&v88 = v35;
    *(&v90 + 1) = 0x3F80000000000000;
    *&v91 = v39;
    *(&v93 + 1) = 0x3F80000000000000;
    *&v94 = v38;
    *&v95 = 0x3C003C003C003C00;
    CA::OGL::Context::bind_surface(a3, v16, 0, 1u, 1, 0.0);
    if ((LOBYTE(a5[9].f64[0]) & 0x10) != 0)
    {
      v41 = vaddvq_f64(vmulq_f64(*a5, *a5));
      v42 = vaddvq_f64(vmulq_f64(a5[2], a5[2]));
      v43 = a5[7].f64[1];
      v40 = 1.0;
      if (v43 != 1.0)
      {
        v44 = 1.0 / (v43 * v43);
        v41 = v44 * v41;
        v42 = v44 * v42;
      }

      _ZF = v42 == 1.0 && v41 == 1.0;
      v46 = (sqrt(v42) + sqrt(v41)) * 0.5;
      if (!_ZF)
      {
        v40 = v46;
      }
    }

    else
    {
      v40 = a5[8].f64[0];
    }

    v47 = 1.0 / v40;
    *(*(a3 + 16) + 96) = vmulq_n_f32(*(*(a3 + 16) + 96), v47);
    v48 = *(*(a3 + 656) + 8);
    *&v96[0] = a3;
    *(&v96[0] + 1) = v48;
    memset(&v96[1], 0, 40);
    LOWORD(v96[2]) = 0;
    CA::OGL::Context::ClippedArray::start(v96);
    v80[0] = 0;
    v80[1] = 0;
    while (CA::OGL::Context::ClippedArray::next_rect(v96, v80))
    {
      (*(*a3 + 344))(a3, 2, 4, 0, &v84, 0, 4, 0);
    }

    result = CA::OGL::Context::unbind_surface(a3, v16, 0);
  }

  if (v17)
  {
    memset(v83, 0, 72);
    v81 = 0u;
    v82 = 0u;
    memset(v96, 0, sizeof(v96));
    v97 = 0u;
    LOWORD(v96[0]) = 257;
    *(&v96[12] + 8) = *(v83 + 8);
    *(&v96[13] + 8) = *(&v83[1] + 8);
    *(v96 + 8) = xmmword_183E20E00;
    *(&v96[1] + 8) = 0u;
    *(&v96[2] + 8) = xmmword_183E20E60;
    memset(&v96[3] + 8, 0, 32);
    *(&v96[5] + 8) = xmmword_183E20E00;
    *(&v96[6] + 8) = 0u;
    *(&v96[7] + 8) = xmmword_183E20E60;
    v50 = *a4;
    v78 = *(a4 + 16);
    v51 = v78;
    v79 = *a4;
    *(&v96[8] + 8) = *a4;
    *(&v96[9] + 8) = v78;
    v52 = *(v17 + 56);
    v53 = *(v17 + 60);
    if (v52 <= v53)
    {
      v54 = *(v17 + 60);
    }

    else
    {
      v54 = *(v17 + 56);
    }

    v50.i32[0] = 1073741822;
    v51.i32[0] = v54;
    v55 = vdupq_lane_s32(*&vcgtq_s32(v51, v50), 0);
    v56 = *(v17 + 48);
    v57.i64[0] = v56;
    v57.i64[1] = SHIDWORD(v56);
    v58 = vbslq_s8(v55, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v57));
    v59 = v52;
    v60 = v53;
    if (v54 > 1073741822)
    {
      v59 = 1.79769313e308;
      v60 = 1.79769313e308;
    }

    *(&v96[10] + 8) = v58;
    *(&v96[11] + 1) = v59;
    *&v96[12] = v60;
    CA::Rect::apply_transform((&v96[10] + 8), a5, v49);
    *(&v83[2] + 8) = v79;
    *(&v83[3] + 8) = v78;
    v61 = *(a2 + 32);
    if (!v61)
    {
      goto LABEL_43;
    }

    v62 = *(v61 + 40);
    if (!v62)
    {
      goto LABEL_43;
    }

    v63 = v62[4];
    if (!v63)
    {
      goto LABEL_43;
    }

    v64 = 0;
    while (1)
    {
      v65 = *&v62[2 * v64 + 6];
      if (*(v65 + 16) == 360)
      {
        break;
      }

      if (v63 == ++v64)
      {
        goto LABEL_43;
      }
    }

    if ((v64 & 0x80000000) == 0 && *(v65 + 24))
    {
      BYTE8(v96[16]) = 0;
      v66 = bswap32(CA::Render::KeyValueArray::get_color_key(v62, 360, 0));
      v67.i32[0] = v66;
      v67.i32[1] = v66 >> 8;
      v67.i32[2] = HIWORD(v66);
      v68.i64[0] = 0xFF000000FFLL;
      v68.i64[1] = 0xFF000000FFLL;
      v69 = vandq_s8(v67, v68);
      v69.i32[3] = vshrq_n_u32(vdupq_n_s32(v66), 0x18uLL).i32[3];
      v70 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v69), vdupq_n_s32(0x3B808081u)));
      v71 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(0x3C003A063A063A06), vcvtq_f32_f16(v70)));
      *(&v96[15] + 1) = v70;
      *&v96[16] = v71;
    }

    else
    {
LABEL_43:
      BYTE8(v96[16]) = 1;
      *(&v96[15] + 8) = xmmword_183E21180;
      v71 = 0x3C00356534743434;
      v70 = 0xC500C500C500C500;
    }

    *&v72 = 0x3C003C003C003C00;
    *(&v72 + 1) = 0x3C003C003C003C00;
    *(&v96[14] + 8) = v72;
    *&v97 = 0x3C002E462A870000;
    *(&v97 + 1) = 0x4014000000000000;
    if (v81.f64[0] > 0.850000024)
    {
      _D3 = v81.f64[0] * -1699.99993 + 1699.99998;
      *&_D3 = _D3 * 0.0039216;
      __asm { FCVT            H3, S3 }

      v77 = vcvtq_f32_f16(vdup_lane_s16(*&_D3, 0));
      *(&v96[14] + 1) = vcvt_f16_f32(vmulq_f32(v77, vcvtq_f32_f16(0x3C003C003C003C00)));
      *&v96[15] = *(&v96[14] + 1);
      *&v96[16] = vcvt_f16_f32(vmulq_f32(v77, vcvtq_f32_f16(v71)));
      *(&v96[15] + 1) = vcvt_f16_f32(vmulq_f32(v77, vcvtq_f32_f16(v70)));
      *&v97 = vcvt_f16_f32(vmulq_f32(v77, vcvtq_f32_f16(0x3C002E462A870000)));
    }
  }

  else
  {
    *(a3 + 1368) = 0;
    ++*(a3 + 664);
    *(*(a3 + 16) + 16) = 0;
    *(*(a3 + 16) + 497) &= ~1u;
  }

  return result;
}

__n128 CA::OGL::anonymous namespace::curl_transition_get_in_state(int a1, __n128 *a2, uint64_t a3, int a4, float a5)
{
  if (a4)
  {
    a5 = 1.0 - a5;
  }

  v8 = a5;
  *a3 = v8;
  *(a3 + 16) = 0x4062C00000000000;
  v9 = CA::Render::TimingFunction::evaluate(&unk_183E24128, a2->n128_f64, v8, 0.00001) * 0.523598776;
  v10 = v9 + 3.92699082;
  *(a3 + 8) = v9 + 3.92699082;
  *(a3 + 24) = xmmword_183E21190;
  if (a1 == 272)
  {
    v11 = 5.49778714;
    goto LABEL_7;
  }

  if (a1 == 273)
  {
    v11 = 2.35619449;
LABEL_7:
    v10 = v9 + v11;
    *(a3 + 8) = v10;
  }

  v12 = v10;
  v13 = __sincosf_stret(v12);
  cosval = v13.__cosval;
  if (fabs(v13.__cosval) < 0.001 || (sinval = v13.__sinval, fabs(v13.__sinval) < 0.001))
  {
    cosval = roundf(v13.__cosval);
    sinval = roundf(v13.__sinval);
  }

  *(a3 + 40) = cosval;
  *(a3 + 48) = sinval;
  *(a3 + 56) = -sinval;
  *(a3 + 64) = cosval;
  *(a3 + 72) = *a2;
  result = a2[1];
  *(a3 + 88) = result;
  return result;
}

double CA::OGL::anonymous namespace::PageCurlTransition::ROI(CA::OGL::_anonymous_namespace_::PageCurlTransition *this, const Transition *a2, const CA::Rect *a3, const CA::Transform *a4, const CA::Rect *a5, CA::Rect *a6, CA::Rect *a7)
{
  result = *a3;
  v8 = *(a3 + 1);
  *a6 = *a3;
  *(a6 + 1) = v8;
  v9 = *(a3 + 2);
  v10 = *(a3 + 3);
  *(a6 + 2) = v9;
  *(a6 + 3) = v10;
  *a7 = result;
  *(a7 + 1) = v8;
  *(a7 + 2) = v9;
  *(a7 + 3) = v10;
  return result;
}

double CA::OGL::anonymous namespace::PageCurlTransition::DOD@<D0>(CA::OGL::_anonymous_namespace_::PageCurlTransition *this@<X0>, const CA::Render::Transition *a2@<X1>, __n128 *a3@<X2>, const CA::Transform *a4@<X3>, uint64_t a5@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v10 = a3->n128_u64[0];
  v11 = a3->n128_u64[1];
  *a5 = a3->n128_u64[0];
  *(a5 + 8) = v11;
  v12 = a3[1].n128_u64[0];
  v13 = a3[1].n128_u64[1];
  *(a5 + 16) = v12;
  *(a5 + 24) = v13;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v15 = *(a5 + 16);
  v16 = a3[1];
  v17 = vclezq_f64(v15);
  v18 = vclezq_f64(v16);
  v19 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v18, v17), vzip2q_s64(v18, v17))));
  if (v19.i8[4])
  {
    if (v19.i8[0])
    {
      goto LABEL_7;
    }

    v20 = *a3;
  }

  else
  {
    if (v19.i8[0])
    {
      goto LABEL_7;
    }

    v21 = vaddq_f64(*a5, v15);
    v20 = vminnmq_f64(*a5, *a3);
    v16 = vsubq_f64(vmaxnmq_f64(v21, vaddq_f64(*a3, v16)), v20);
  }

  *a5 = v20;
  *(a5 + 16) = v16;
LABEL_7:

  return CA::Rect::apply_transform(a5, a4, v14);
}

char *CA::Render::Object::show(uint64_t a1, X::Stream *this)
{
  v2 = *(a1 + 12);
  if (v2 > 0x3F || (v3 = CA::Render::type_names[v2], !*v3))
  {
    v3 = "<unknown>";
  }

  return X::Stream::printf(this, "(%s)", v3);
}

void CA::Render::Object::~Object(CA::Render::Object *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

atomic_uint **CA::Render::mix_objects(atomic_uint **this, unint64_t a2, atomic_uint *a3, atomic_uint *a4, unint64_t a5, const CA::Render::ValueInterpolator *a6)
{
  if (!a3 || !a4)
  {
    goto LABEL_25;
  }

  if (*a6 <= 0.0)
  {
    v13 = a3 + 2;
    if (!atomic_fetch_add(a3 + 2, 1u))
    {
      a3 = 0;
      atomic_fetch_add(v13, 0xFFFFFFFF);
    }

    *this = a3;
  }

  else if (*a6 >= 1.0)
  {
    v14 = a4 + 2;
    if (!atomic_fetch_add(a4 + 2, 1u))
    {
      a4 = 0;
      atomic_fetch_add(v14, 0xFFFFFFFF);
    }

    *this = a4;
  }

  else
  {
    if (*(a6 + 112) == 1 && a2 | a5)
    {
      v6 = *(a3 + 12);
      if (v6 == 26)
      {
        a3 = *(a3 + 4);
        if (!a3)
        {
          goto LABEL_25;
        }

        v6 = *(a3 + 12);
      }

      v7 = *(a4 + 12);
      if (v7 == 26)
      {
        v8 = *(a4 + 4);
        if (!v8)
        {
          goto LABEL_25;
        }

        v7 = *(v8 + 12);
      }

      if (v6 == v7)
      {
        if (a2)
        {
          v9 = *(a2 + 12);
          if (v9 == 26)
          {
            v10 = *(a2 + 32);
            if (!v10)
            {
              goto LABEL_25;
            }

            v9 = *(v10 + 12);
          }

          if (v9 != v6)
          {
            goto LABEL_25;
          }
        }

        if (!a5)
        {
          return (*(*a3 + 64))(a3);
        }

        v11 = *(a5 + 12);
        if (v11 != 26)
        {
          goto LABEL_23;
        }

        v12 = *(a5 + 32);
        if (v12)
        {
          v11 = *(v12 + 12);
LABEL_23:
          if (v11 == v6)
          {
            return (*(*a3 + 64))(a3);
          }
        }
      }

LABEL_25:
      *this = 0;
      return this;
    }

    return (*(*a3 + 56))(a3, a4, a6);
  }

  return this;
}

char *CA::Render::show_cfstring(char *result, CFStringRef theString)
{
  v35 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    v2 = result;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
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
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    *buffer = 0u;
    v4 = 0u;
    result = CFStringGetCString(theString, buffer, 512, 0x8000100u);
    if (result)
    {
      return X::Stream::printf(v2, "%s", buffer);
    }
  }

  return result;
}

char *CA::Render::show_statistics(X::Stream *a1)
{
  v2 = mach_absolute_time();
  v3 = CATimeWithHostTime(v2);
  X::Stream::printf(a1, "\n** Render objects at time %f **\n\n", v3);
  result = X::Stream::printf(a1, "%20s %s\n", "TYPE", "COUNT");
  for (i = 0; i != 64; ++i)
  {
    v6 = CA::Render::Object::_instance_counts[i];
    if (v6)
    {
      v7 = CA::Render::type_names[i];
      if (!*v7)
      {
        v7 = "<unknown>";
      }

      result = X::Stream::printf(a1, "%20s %d\n", v7, v6);
    }
  }

  return result;
}

uint64_t CA::WindowServer::Display::idle(os_unfair_lock_s *this)
{
  CA::WindowServer::Display::purge_surfaces(this, 1);
  result = *&this[76]._os_unfair_lock_opaque;
  if (result)
  {
    result = CA::IOSAManager::unref(result);
    *&this[76]._os_unfair_lock_opaque = 0;
  }

  return result;
}

uint64_t CA::WindowServer::Display::release_resources(os_unfair_lock_s *this)
{
  CA::WindowServer::Display::purge_surfaces(this, 1);
  result = *&this[76]._os_unfair_lock_opaque;
  if (result)
  {
    result = CA::IOSAManager::unref(result);
    *&this[76]._os_unfair_lock_opaque = 0;
  }

  return result;
}

void CA::WindowServer::Display::emit_mode_set_signpost(CA::WindowServer::Display *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (x_log_get_display_perf(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_perf(void)::once, &__block_literal_global_9);
  }

  v2 = *(this + 6);
  if (v2)
  {
    v3 = x_log_get_display_perf(void)::log;
    if (os_signpost_enabled(x_log_get_display_perf(void)::log))
    {
      v4 = *(this + 85);
      v5[0] = 67240448;
      v5[1] = v2;
      v6 = 2050;
      v7 = v4;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v3, OS_SIGNPOST_EVENT, v2, "ModeSet", "displayId=%{public, name=displayId}u begin=%{public,signpost.description:begin_time}llu", v5, 0x12u);
    }
  }
}

os_log_t ___Z22x_log_get_display_perfv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Display.Performance");
  x_log_get_display_perf(void)::log = result;
  return result;
}

uint64_t CA::WindowServer::Display::set_mode(uint64_t this, const CA::WindowServer::Display::Mode *a2)
{
  if (*(this + 656) != *a2)
  {
    v2.i64[0] = *(this + 656);
    v2.i64[1] = *a2;
    v3 = vshrn_n_s64(v2, 0x1DuLL);
    v4.i64[0] = v3.i32[0] & 0x1FFFFFF;
    v4.i64[1] = v3.i32[1] & 0x1FFFFFF;
    v5 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v4), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v2);
    if ((vmovn_s64(vceqq_s64(v5, vdupq_laneq_s64(v5, 1))).u32[0] & 1) == 0)
    {
      *(this + 656) = *a2;
      return CA::WindowServer::Display::post_display_changed(this);
    }
  }

  return this;
}

uint64_t CA::WindowServer::Display::post_display_changed(uint64_t this)
{
  v1 = this;
  if (*(this + 688))
  {
    *(this + 904) |= 0x40000u;
  }

  else
  {
    ++*(this + 28);
    v2 = mach_absolute_time();
    v3 = CATimeWithHostTime(v2) + 0.01;

    return CA::Render::Server::add_callback(1, CA::WindowServer::Display::post_display_changed_callback, v1, v3);
  }

  return this;
}

uint64_t CA::WindowServer::Display::post_display_changed_callback(CA::WindowServer::Display *this, double a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v4 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Posting display changed notification", v6, 2u);
  }

  CA::Render::post_notification(0x2Eu, 0, this, 0);
  return notify_post("com.apple.CoreAnimation.CAWindowServer.DisplayChanged");
}

uint64_t CA::WindowServer::Display::color_flush_shape(CA::WindowServer::Display *this, const CA::Render::Update *a2)
{
  if (ca_debug_options == 1)
  {
    return *(a2 + 2);
  }

  else
  {
    return 0;
  }
}

void CA::WindowServer::Display::iosurface_alignment(void *a1@<X8>)
{
  *a1 = 64;
  {
  }

  a1[1] = qword_1ED4E4918;
  a1[2] = 1;
  a1[3] = *MEMORY[0x1E69E9AC8];
  a1[4] = 0;
}

os_log_t ___Z17x_log_get_displayv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "WindowServer.Display");
  x_log_get_display(void)::log = result;
  return result;
}

os_log_t ___Z23x_log_get_display_statev_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "DisplayState");
  x_log_get_display_state(void)::log = result;
  return result;
}

os_log_t ___Z23x_log_get_display_tracev_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Display.Trace");
  x_log_get_display_trace(void)::log = result;
  return result;
}

os_log_t ___Z18x_log_get_flipbookv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "FlipBook");
  x_log_get_flipbook(void)::log = result;
  return result;
}

CA::WindowServer::Display::Mode *CA::WindowServer::Display::Mode::Mode(CA::WindowServer::Display::Mode *this, CFDictionaryRef theDict)
{
  *this = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"width");
    if (Value)
    {
      v5 = CA_CFIntValue(Value) & 0x3FFF;
    }

    else
    {
      v5 = 0;
    }

    *this = *this & 0xFFFFFFFFFFFFC000 | v5;
    v6 = CFDictionaryGetValue(theDict, @"height");
    if (v6)
    {
      v7 = (CA_CFIntValue(v6) & 0x3FFF) << 14;
    }

    else
    {
      v7 = 0;
    }

    *this = *this & 0xFFFFFFFFF0003FFFLL | v7;
    v8 = CFDictionaryGetValue(theDict, @"refreshRate");
    if (v8)
    {
      v9 = (CA_CFIntValue(v8) & 0x1FFFFFF) << 29;
    }

    else
    {
      v9 = 0;
    }

    *this = v9 | *this & 0xFFC000001FFFFFFFLL;
    v10 = CFDictionaryGetValue(theDict, @"isVirtual");
    if (v10)
    {
      v11 = CA_CFBoolValue(v10);
      v12 = 0x40000000000000;
      if (!v11)
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    *this = *this & 0xFFBFFFFFFFFFFFFFLL | v12;
    v13 = CFDictionaryGetValue(theDict, @"pixelFormat");
    if (v13)
    {
      v14 = (CA_CFIntValue(v13) & 0x1F) << 55;
    }

    else
    {
      v14 = 0;
    }

    *this = v14 | *this & 0xF07FFFFFFFFFFFFFLL;
    v15 = CFDictionaryGetValue(theDict, @"colorRange");
    if (v15)
    {
      v16 = (CA_CFIntValue(v15) & 3) << 60;
    }

    else
    {
      v16 = 0;
    }

    *this = v16 | *this & 0xCFFFFFFFFFFFFFFFLL;
    v17 = CFDictionaryGetValue(theDict, @"isUnsafe");
    if (v17)
    {
      v18 = CA_CFBoolValue(v17);
      v19 = 0x4000000000000000;
      if (!v18)
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    *this = *this & 0xBFFFFFFFFFFFFFFFLL | v19;
  }

  return this;
}

BOOL CA::WindowServer::Display::Mode::operator<(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = ((v3 >> 14) & 0x3FFF) * (v3 & 0x3FFF) * (((v3 >> 29) >> 16) & 0x1FF);
  v5 = ((*a2 >> 14) & 0x3FFF) * (*a2 & 0x3FFF) * (((*a2 >> 29) >> 16) & 0x1FF);
  if (v4 < v5)
  {
    return 1;
  }

  if (v4 > v5)
  {
    return 0;
  }

  v7 = (v3 >> 29) & 0x1FFFFFF;
  v8 = (*a2 >> 29) & 0x1FFFFFF;
  if (v7 < v8)
  {
    return 1;
  }

  if (v7 > v8)
  {
    return 0;
  }

  v10 = CA::WindowServer::Display::Mode::hdr_type(v3);
  if (v10 < CA::WindowServer::Display::Mode::hdr_type(*a2))
  {
    return 1;
  }

  v11 = CA::WindowServer::Display::Mode::hdr_type(*a1);
  if (v11 > CA::WindowServer::Display::Mode::hdr_type(*a2))
  {
    return 0;
  }

  v12 = *a1;
  v13 = (*a1 >> 52) & 0xF8 | (*a1 >> 60) & 3;
  v14 = *a2;
  v15 = (*a2 >> 52) & 0xF8 | (*a2 >> 60) & 3;
  if (v13 < v15)
  {
    return 1;
  }

  if (v13 > v15)
  {
    return 0;
  }

  if ((v12 & 0x40000000000000) == 0)
  {
    if ((v14 & 0x40000000000000) == 0)
    {
      return v12 < 0 && v14 >= 0;
    }

    return 0;
  }

  if ((v14 & 0x40000000000000) == 0)
  {
    return 1;
  }

  return v12 < 0 && v14 >= 0;
}

uint64_t CA::WindowServer::Display::ModeSet::sort(CA::WindowServer::Display::ModeSet *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = 126 - 2 * __clz((v3 - v2) >> 3);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *,false>(v2, v3, v5, 1);
  v7 = *this;
  v8 = *(this + 1);
  v9 = (v8 - 8);
  if (*this != v8 && v9 > v7)
  {
    v11 = v7 + 8;
    do
    {
      v12 = *(v11 - 8);
      *(v11 - 8) = *v9;
      *v9-- = v12;
      v13 = v11 >= v9;
      v11 += 8;
    }

    while (!v13);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *,false>(uint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  v98[1] = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a2 - 1;
  v96 = a2 - 3;
  v97 = a2 - 2;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      break;
    }

    switch(v10)
    {
      case 3uLL:
        v59 = CA::WindowServer::Display::Mode::operator<(v9 + 1, v9);
        result = CA::WindowServer::Display::Mode::operator<(a2 - 1, v9 + 1);
        if (v59)
        {
          v58 = *v9;
          if (result)
          {
LABEL_110:
            *v9 = *v8;
          }

          else
          {
            *v9 = v9[1];
            v9[1] = v58;
            result = CA::WindowServer::Display::Mode::operator<(a2 - 1, v9 + 1);
            if (!result)
            {
              return result;
            }

            v58 = v9[1];
            v9[1] = *v8;
          }

          *v8 = v58;
          return result;
        }

        if (!result)
        {
          return result;
        }

        v91 = v9[1];
        v9[1] = *v8;
        *v8 = v91;
LABEL_166:
        result = CA::WindowServer::Display::Mode::operator<(v9 + 1, v9);
        if (result)
        {
          *v9 = vextq_s8(*v9, *v9, 8uLL);
        }

        return result;
      case 4uLL:

        return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *,0>(v9, v9 + 1, v9 + 2, a2 - 1);
      case 5uLL:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *,0>(v9, v9 + 1, v9 + 2, v9 + 3);
        result = CA::WindowServer::Display::Mode::operator<(a2 - 1, v9 + 3);
        if (!result)
        {
          return result;
        }

        v57 = v9[3];
        v9[3] = *v8;
        *v8 = v57;
        result = CA::WindowServer::Display::Mode::operator<(v9 + 3, v9 + 2);
        if (!result)
        {
          return result;
        }

        *(v9 + 1) = vextq_s8(*(v9 + 1), *(v9 + 1), 8uLL);
        result = CA::WindowServer::Display::Mode::operator<(v9 + 2, v9 + 1);
        if (!result)
        {
          return result;
        }

        *(v9 + 1) = vextq_s8(*(v9 + 1), *(v9 + 1), 8uLL);
        goto LABEL_166;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v60 = v9 + 1;
      v62 = v9 == a2 || v60 == a2;
      if (a4)
      {
        if (!v62)
        {
          v63 = 0;
          v64 = v9;
          do
          {
            v65 = v64;
            v64 = v60;
            result = CA::WindowServer::Display::Mode::operator<(v60, v65);
            if (result)
            {
              v98[0] = *v64;
              v66 = v63;
              while (1)
              {
                *(v9 + v66 + 8) = *(v9 + v66);
                if (!v66)
                {
                  break;
                }

                v66 -= 8;
                result = CA::WindowServer::Display::Mode::operator<(v98, (v9 + v66));
                if ((result & 1) == 0)
                {
                  v67 = (v9 + v66 + 8);
                  goto LABEL_130;
                }
              }

              v67 = v9;
LABEL_130:
              *v67 = v98[0];
            }

            v60 = v64 + 1;
            v63 += 8;
          }

          while (v64 + 1 != a2);
        }
      }

      else if (!v62)
      {
        do
        {
          v92 = v7;
          v7 = v60;
          result = CA::WindowServer::Display::Mode::operator<(v60, v92);
          if (result)
          {
            v98[0] = *v7;
            v93 = v7;
            do
            {
              v94 = v93;
              v95 = *--v93;
              *v94 = v95;
              result = CA::WindowServer::Display::Mode::operator<(v98, v94 - 2);
            }

            while ((result & 1) != 0);
            *v93 = v98[0];
          }

          v60 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v68 = v11 >> 1;
        v69 = v11 >> 1;
        do
        {
          v70 = v69;
          if (v68 >= v69)
          {
            v71 = (2 * v69) | 1;
            v72 = &v7[v71];
            if (2 * v69 + 2 < v10 && CA::WindowServer::Display::Mode::operator<(&v7[v71], v72 + 1))
            {
              ++v72;
              v71 = 2 * v70 + 2;
            }

            v73 = &v7[v70];
            result = CA::WindowServer::Display::Mode::operator<(v72, v73);
            if ((result & 1) == 0)
            {
              v98[0] = *v73;
              do
              {
                v74 = v72;
                *v73 = *v72;
                if (v68 < v71)
                {
                  break;
                }

                v75 = (2 * v71) | 1;
                v72 = &v7[v75];
                v76 = 2 * v71 + 2;
                if (v76 < v10 && CA::WindowServer::Display::Mode::operator<(&v7[v75], v72 + 1))
                {
                  ++v72;
                  v75 = v76;
                }

                result = CA::WindowServer::Display::Mode::operator<(v72, v98);
                v73 = v74;
                v71 = v75;
              }

              while (!result);
              *v74 = v98[0];
            }
          }

          v69 = v70 - 1;
        }

        while (v70);
        do
        {
          v77 = 0;
          v78 = *v7;
          v79 = v7;
          do
          {
            v80 = &v79[v77];
            v81 = v80 + 1;
            v82 = (2 * v77) | 1;
            v83 = 2 * v77 + 2;
            if (v83 < v10)
            {
              v84 = v80 + 2;
              result = CA::WindowServer::Display::Mode::operator<(v80 + 1, v80 + 2);
              if (result)
              {
                v81 = v84;
                v82 = v83;
              }
            }

            *v79 = *v81;
            v79 = v81;
            v77 = v82;
          }

          while (v82 <= (v10 - 2) / 2);
          if (v81 == --a2)
          {
            *v81 = v78;
          }

          else
          {
            *v81 = *a2;
            *a2 = v78;
            v85 = (v81 - v7 + 8) >> 3;
            v86 = v85 < 2;
            v87 = v85 - 2;
            if (!v86)
            {
              v88 = v87 >> 1;
              v89 = &v7[v87 >> 1];
              result = CA::WindowServer::Display::Mode::operator<(v89, v81);
              if (result)
              {
                v98[0] = *v81;
                do
                {
                  v90 = v89;
                  *v81 = *v89;
                  if (!v88)
                  {
                    break;
                  }

                  v88 = (v88 - 1) >> 1;
                  v89 = &v7[v88];
                  result = CA::WindowServer::Display::Mode::operator<(v89, v98);
                  v81 = v90;
                }

                while ((result & 1) != 0);
                *v90 = v98[0];
              }
            }
          }

          v86 = v10-- <= 2;
        }

        while (!v86);
      }

      return result;
    }

    v12 = &v9[v10 >> 1];
    if (v10 >= 0x81)
    {
      v13 = CA::WindowServer::Display::Mode::operator<(&v9[v10 >> 1], v9);
      v14 = CA::WindowServer::Display::Mode::operator<(a2 - 1, &v9[v10 >> 1]);
      if (v13)
      {
        v15 = *v9;
        if (v14)
        {
          *v9 = *v8;
          goto LABEL_27;
        }

        *v9 = *v12;
        *v12 = v15;
        if (CA::WindowServer::Display::Mode::operator<(a2 - 1, &v9[v10 >> 1]))
        {
          v15 = *v12;
          *v12 = *v8;
LABEL_27:
          *v8 = v15;
        }
      }

      else if (v14)
      {
        v19 = *v12;
        *v12 = *v8;
        *v8 = v19;
        if (CA::WindowServer::Display::Mode::operator<(&v9[v10 >> 1], v9))
        {
          v20 = *v9;
          *v9 = *v12;
          *v12 = v20;
        }
      }

      v23 = v12 - 1;
      v24 = CA::WindowServer::Display::Mode::operator<(v12 - 1, v7 + 1);
      v25 = CA::WindowServer::Display::Mode::operator<(v97, v12 - 1);
      if (v24)
      {
        v26 = v7[1];
        if (v25)
        {
          v27 = a2 - 2;
          v7[1] = *v97;
          goto LABEL_39;
        }

        v7[1] = *v23;
        *v23 = v26;
        if (CA::WindowServer::Display::Mode::operator<(v97, v12 - 1))
        {
          v26 = *v23;
          v27 = a2 - 2;
          *v23 = *v97;
LABEL_39:
          *v27 = v26;
        }
      }

      else if (v25)
      {
        v28 = *v23;
        *v23 = *v97;
        *v97 = v28;
        if (CA::WindowServer::Display::Mode::operator<(v12 - 1, v7 + 1))
        {
          v29 = v7[1];
          v7[1] = *v23;
          *v23 = v29;
        }
      }

      v30 = CA::WindowServer::Display::Mode::operator<(v12 + 1, v7 + 2);
      v31 = CA::WindowServer::Display::Mode::operator<(v96, v12 + 1);
      if (v30)
      {
        v32 = v7[2];
        if (v31)
        {
          v33 = a2 - 3;
          v7[2] = *v96;
          goto LABEL_48;
        }

        v7[2] = v12[1];
        v12[1] = v32;
        if (CA::WindowServer::Display::Mode::operator<(v96, v12 + 1))
        {
          v32 = v12[1];
          v33 = a2 - 3;
          v12[1] = *v96;
LABEL_48:
          *v33 = v32;
        }
      }

      else if (v31)
      {
        v34 = v12[1];
        v12[1] = *v96;
        *v96 = v34;
        if (CA::WindowServer::Display::Mode::operator<(v12 + 1, v7 + 2))
        {
          v35 = v7[2];
          v7[2] = v12[1];
          v12[1] = v35;
        }
      }

      v36 = CA::WindowServer::Display::Mode::operator<(&v7[v10 >> 1], v12 - 1);
      v37 = CA::WindowServer::Display::Mode::operator<(v12 + 1, &v7[v10 >> 1]);
      if (v36)
      {
        v38 = *v23;
        if (v37)
        {
          v39 = *v12;
          *v23 = v12[1];
          v12[1] = v38;
LABEL_58:
          v43 = *v7;
          *v7 = v39;
          *v12 = v43;
          goto LABEL_59;
        }

        *v23 = *v12;
        *v12 = v38;
        v42 = CA::WindowServer::Display::Mode::operator<(v12 + 1, &v7[v10 >> 1]);
        v39 = *v12;
        if (!v42)
        {
          goto LABEL_58;
        }

        v41 = v12[1];
        *v12 = v41;
        v12[1] = v39;
      }

      else
      {
        v39 = *v12;
        if (!v37)
        {
          goto LABEL_58;
        }

        *v12 = v12[1];
        v12[1] = v39;
        v40 = CA::WindowServer::Display::Mode::operator<(&v7[v10 >> 1], v12 - 1);
        v39 = *v12;
        if (!v40)
        {
          goto LABEL_58;
        }

        v41 = *v23;
        *v23 = v39;
        *v12 = v41;
      }

      v39 = v41;
      goto LABEL_58;
    }

    v16 = CA::WindowServer::Display::Mode::operator<(v9, &v9[v10 >> 1]);
    v17 = CA::WindowServer::Display::Mode::operator<(a2 - 1, v9);
    if (!v16)
    {
      if (v17)
      {
        v21 = *v9;
        *v9 = *v8;
        *v8 = v21;
        if (CA::WindowServer::Display::Mode::operator<(v9, &v9[v10 >> 1]))
        {
          v22 = *v12;
          *v12 = *v9;
          *v9 = v22;
        }
      }

      goto LABEL_59;
    }

    v18 = *v12;
    if (v17)
    {
      *v12 = *v8;
LABEL_36:
      *v8 = v18;
      goto LABEL_59;
    }

    *v12 = *v9;
    *v9 = v18;
    if (CA::WindowServer::Display::Mode::operator<(a2 - 1, v9))
    {
      v18 = *v9;
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v44 = *v7;
LABEL_62:
      v98[0] = v44;
      v46 = v7;
      do
      {
        v47 = v46++;
      }

      while (CA::WindowServer::Display::Mode::operator<(v46, v98));
      v48 = a2;
      if (v47 == v7)
      {
        v48 = a2;
        do
        {
          if (v46 >= v48)
          {
            break;
          }

          --v48;
        }

        while (!CA::WindowServer::Display::Mode::operator<(v48, v98));
      }

      else
      {
        do
        {
          --v48;
        }

        while (!CA::WindowServer::Display::Mode::operator<(v48, v98));
      }

      if (v46 < v48)
      {
        v49 = v46;
        v50 = v48;
        do
        {
          v51 = *v49;
          *v49 = *v50;
          *v50 = v51;
          do
          {
            v47 = v49++;
          }

          while (CA::WindowServer::Display::Mode::operator<(v49, v98));
          do
          {
            --v50;
          }

          while (!CA::WindowServer::Display::Mode::operator<(v50, v98));
        }

        while (v49 < v50);
      }

      if (v47 != v7)
      {
        *v7 = *v47;
      }

      *v47 = v98[0];
      if (v46 < v48)
      {
        goto LABEL_81;
      }

      v52 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *>(v7, v47);
      v9 = v47 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *>(v47 + 1, a2);
      if (result)
      {
        a2 = v47;
        if (!v52)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v52)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *,false>(v7, v47, a3, a4 & 1);
        a4 = 0;
        v9 = v47 + 1;
      }
    }

    else
    {
      v45 = CA::WindowServer::Display::Mode::operator<(v7 - 1, v7);
      v44 = *v7;
      if (v45)
      {
        goto LABEL_62;
      }

      v98[0] = *v7;
      result = CA::WindowServer::Display::Mode::operator<(v98, a2 - 1);
      if (result)
      {
        v9 = v7;
        do
        {
          result = CA::WindowServer::Display::Mode::operator<(v98, ++v9);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v53 = v7 + 1;
        do
        {
          v9 = v53;
          if (v53 >= a2)
          {
            break;
          }

          result = CA::WindowServer::Display::Mode::operator<(v98, v53);
          v53 = v9 + 1;
        }

        while (!result);
      }

      v54 = a2;
      if (v9 < a2)
      {
        v54 = a2;
        do
        {
          result = CA::WindowServer::Display::Mode::operator<(v98, --v54);
        }

        while ((result & 1) != 0);
      }

      while (v9 < v54)
      {
        v55 = *v9;
        *v9 = *v54;
        *v54 = v55;
        do
        {
          ++v9;
        }

        while (!CA::WindowServer::Display::Mode::operator<(v98, v9));
        do
        {
          result = CA::WindowServer::Display::Mode::operator<(v98, --v54);
        }

        while ((result & 1) != 0);
      }

      v56 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v56;
      }

      a4 = 0;
      *v56 = v98[0];
    }
  }

  if (v10 < 2)
  {
    return result;
  }

  if (v10 != 2)
  {
    goto LABEL_10;
  }

  result = CA::WindowServer::Display::Mode::operator<(a2 - 1, v9);
  if (result)
  {
    v58 = *v9;
    goto LABEL_110;
  }

  return result;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = CA::WindowServer::Display::Mode::operator<(a2, a1);
  v9 = CA::WindowServer::Display::Mode::operator<(a3, a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v10;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v10;
    if (CA::WindowServer::Display::Mode::operator<(a3, a2))
    {
      v10 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (CA::WindowServer::Display::Mode::operator<(a2, a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

LABEL_10:
  result = CA::WindowServer::Display::Mode::operator<(a4, a3);
  if (result)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    result = CA::WindowServer::Display::Mode::operator<(a3, a2);
    if (result)
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      result = CA::WindowServer::Display::Mode::operator<(a2, a1);
      if (result)
      {
        v16 = *a1;
        *a1 = *a2;
        *a2 = v16;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *>(unint64_t *a1, unint64_t *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 1;
        v9 = CA::WindowServer::Display::Mode::operator<(a1 + 1, a1);
        v10 = CA::WindowServer::Display::Mode::operator<(v5, a1 + 1);
        if (v9)
        {
          v6 = *a1;
          if (!v10)
          {
            *a1 = a1[1];
            a1[1] = v6;
            if (!CA::WindowServer::Display::Mode::operator<(v5, a1 + 1))
            {
              return 1;
            }

            v6 = a1[1];
            a1[1] = *v5;
            goto LABEL_16;
          }

LABEL_15:
          *a1 = *v5;
LABEL_16:
          *v5 = v6;
          return 1;
        }

        if (!v10)
        {
          return 1;
        }

        v15 = a1[1];
        a1[1] = *v5;
        *v5 = v15;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        v7 = a2 - 1;
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::WindowServer::Display::Mode *,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        if (!CA::WindowServer::Display::Mode::operator<(v7, a1 + 3))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *v7;
        *v7 = v8;
        if (!CA::WindowServer::Display::Mode::operator<(a1 + 3, a1 + 2))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        if (!CA::WindowServer::Display::Mode::operator<(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      default:
        goto LABEL_17;
    }

    if (CA::WindowServer::Display::Mode::operator<(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 1;
    if (CA::WindowServer::Display::Mode::operator<(a2 - 1, a1))
    {
      v6 = *a1;
      goto LABEL_15;
    }

    return 1;
  }

LABEL_17:
  v11 = a1 + 2;
  v12 = CA::WindowServer::Display::Mode::operator<(a1 + 1, a1);
  v13 = CA::WindowServer::Display::Mode::operator<(a1 + 2, a1 + 1);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = a1[2];
      a1[2] = v14;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v14;
      if (CA::WindowServer::Display::Mode::operator<(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v13)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if (CA::WindowServer::Display::Mode::operator<(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v16 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    if (CA::WindowServer::Display::Mode::operator<(v16, v11))
    {
      v23[0] = *v16;
      v19 = v17;
      while (1)
      {
        v20 = a1 + v19;
        *(a1 + v19 + 24) = *(a1 + v19 + 16);
        if (v19 == -16)
        {
          break;
        }

        v19 -= 8;
        if (!CA::WindowServer::Display::Mode::operator<(v23, (v20 + 8)))
        {
          v21 = (a1 + v19 + 24);
          goto LABEL_40;
        }
      }

      v21 = a1;
LABEL_40:
      *v21 = v23[0];
      if (++v18 == 8)
      {
        return v16 + 1 == a2;
      }
    }

    v11 = v16;
    v17 += 8;
    if (++v16 == a2)
    {
      return 1;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *CA::WindowServer::Display::ModeSet::remove_mode(void *this, const CA::WindowServer::Display::Mode *a2)
{
  v2 = this;
  v4 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    v5 = *a2;
    v6 = vdupq_n_s64(0x3F59000000000000uLL);
    v7 = vdupq_n_s64(0x40847AE147AE147BuLL);
    v8 = vdupq_n_s64(0x3FFFFFE0000000uLL);
    while (*v4 != v5)
    {
      v9.i64[0] = *v4;
      v9.i64[1] = *a2;
      v10 = vshrn_n_s64(v9, 0x1DuLL);
      v11.i64[0] = v10.i32[0] & 0x1FFFFFF;
      v11.i64[1] = v10.i32[1] & 0x1FFFFFF;
      v12 = vbslq_s8(v8, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v11), v6)), v7)), 0x1DuLL), v9);
      if (vmovn_s64(vceqq_s64(v12, vdupq_laneq_s64(v12, 1))).u8[0])
      {
        break;
      }

      if (++v4 == v3)
      {
        return this;
      }
    }

    if (v4 != v3)
    {
      v13 = v4 + 1;
      if (v4 + 1 != v3)
      {
        v14 = vdupq_n_s64(0x3F59000000000000uLL);
        v15 = vdupq_n_s64(0x3FFFFFE0000000uLL);
        do
        {
          if (*v13 != v5)
          {
            v16.i64[0] = *v13;
            v16.i64[1] = v5;
            v17 = vshrn_n_s64(v16, 0x1DuLL);
            v18.i64[0] = v17.i32[0] & 0x1FFFFFF;
            v18.i64[1] = v17.i32[1] & 0x1FFFFFF;
            v19 = vbslq_s8(v15, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v18), v14)), v7)), 0x1DuLL), v16);
            if ((vmovn_s64(vceqq_s64(v19, vdupq_laneq_s64(v19, 1))).u8[0] & 1) == 0)
            {
              *v4++ = *v13;
              v5 = *a2;
            }
          }

          ++v13;
        }

        while (v13 != v3);
        v3 = this[1];
      }
    }
  }

  if (v3 != v4)
  {
    v20 = v3 - (v4 + 1);
    if (v3 != v4 + 1)
    {
      this = memmove(v4, v4 + 1, v3 - (v4 + 1));
    }

    v2[1] = v4 + v20;
  }

  return this;
}

uint64_t CA::WindowServer::Display::ModePrefs::unpack(CA::WindowServer::Display::ModePrefs *this, const void *a2, BOOL *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  *buffer = 0;
  v8[0] = 0;
  v4 = CFGetTypeID(this);
  if (v4 == CFNumberGetTypeID())
  {
    return CA_CFInt64Value(this);
  }

  v5 = CFGetTypeID(this);
  if (v5 == CFDataGetTypeID())
  {
    v9.location = 0;
    v9.length = 1;
    CFDataGetBytes(this, v9, buffer);
    if (!buffer[0])
    {
      v10.location = 8;
      v10.length = 8;
      CFDataGetBytes(this, v10, v8);
    }
  }

  return v8[0];
}

__CFDictionary *CA::WindowServer::Display::Mode::create_dictionary_representation(CA::WindowServer::Display::Mode *this)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CA_CFDictionarySetInt(Mutable, @"width", *this & 0x3FFF);
  CA_CFDictionarySetInt(Mutable, @"height", (*this >> 14) & 0x3FFF);
  CA_CFDictionarySetInt(Mutable, @"refreshRate", (*this >> 29) & 0x1FFFFFF);
  v3 = *MEMORY[0x1E695E4D0];
  v4 = *MEMORY[0x1E695E4C0];
  if ((*this & 0x40000000000000) != 0)
  {
    v5 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v5 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"isVirtual", v5);
  CA_CFDictionarySetInt(Mutable, @"pixelFormat", (*this >> 55) & 0x1F);
  CA_CFDictionarySetInt(Mutable, @"colorRange", (*this >> 60) & 3);
  if ((*this & 0x4000000000000000) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  CFDictionarySetValue(Mutable, @"isUnsafe", v6);
  return Mutable;
}

CA::WindowServer::Display *CA::WindowServer::Display::Display(CA::WindowServer::Display *this, const __CFString *a2)
{
  *this = &unk_1EF1F6E18;
  *(this + 1) = a2;
  *(this + 6) = atomic_fetch_add(CA::WindowServer::Display::_id_generator, 1u) + 1;
  *(this + 28) = 0x100000001;
  *(this + 60) = vdup_n_s32(0x3F666666u);
  *(this + 9) = 0;
  *(this + 17) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 8) = _Q0;
  *(this + 144) = 0;
  *(this + 37) = 1;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 1;
  *(this + 56) = 0;
  *(this + 102) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 52) = 0;
  *(this + 232) = 0u;
  v8 = (this + 232);
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 37) = 0;
  *(this + 55) = this + 448;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 124) = 1065353216;
  pthread_mutex_init(this + 9, 0);
  v8[102]._os_unfair_lock_opaque = 0;
  LOBYTE(v8[105]._os_unfair_lock_opaque) = 1;
  *&v8[106]._os_unfair_lock_opaque = -1;
  *&v8[108]._os_unfair_lock_opaque = -1;
  LOWORD(v8[110]._os_unfair_lock_opaque) = v8[110]._os_unfair_lock_opaque & 0xE000 | 0x100;
  __asm { FMOV            V0.2S, #-1.0 }

  *&v8[124]._os_unfair_lock_opaque = _D0;
  v8[126]._os_unfair_lock_opaque = 1065353216;
  v8[131]._os_unfair_lock_opaque = 0;
  v10 = *(this + 6);
  v8[136]._os_unfair_lock_opaque = v10;
  *&v8[138]._os_unfair_lock_opaque = "state";
  *&v8[140]._os_unfair_lock_opaque = CA::WindowServer::display_state_to_string;
  *&v8[142]._os_unfair_lock_opaque = _CACDisplayStateDidChange;
  v8[148]._os_unfair_lock_opaque = v10;
  *&v8[150]._os_unfair_lock_opaque = "cloning state";
  *&v8[152]._os_unfair_lock_opaque = CA::WindowServer::display_cloning_state_to_string;
  *&v8[154]._os_unfair_lock_opaque = _CACDisplayCloningStateDidChange;
  *&v8[160]._os_unfair_lock_opaque = xmmword_183E211A0;
  *&v8[164]._os_unfair_lock_opaque = xmmword_183E211A0;
  *&v8[6314]._os_unfair_lock_opaque = 0;
  os_unfair_lock_lock(this + 102);
  CA::WindowServer::Display::ModeSet::add_mode((this + 416), &v8[106]);
  os_unfair_lock_unlock(this + 102);
  os_unfair_lock_lock(v8 + 131);
  if (!*&v8[132]._os_unfair_lock_opaque)
  {
    v11 = CA::Render::Shmem::new_shmem(6);
    *(this + 95) = v11;
    *(this + 96) = *(v11 + 3);
  }

  os_unfair_lock_unlock(v8 + 131);
  pthread_mutex_init(this + 8, 0);
  CFRetain(*(this + 1));
  v12 = malloc_type_malloc(0x788uLL, 0x100004000313F17uLL);
  *(this + 3196) = v12;
  bzero(v12, 0x788uLL);
  return this;
}

const char *CA::WindowServer::display_cloning_state_to_string(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "off";
  }

  else
  {
    return off_1E6DED7A0[(a1 - 1)];
  }
}

void CA::WindowServer::Display::~Display(CA::WindowServer::Display *this)
{
  *this = &unk_1EF1F6E18;
  pthread_mutex_destroy(this + 8);
  CFRelease(*(this + 1));
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  CA::Shape::unref(*(this + 27));
  os_unfair_lock_lock(this + 56);
  v3 = *(this + 29);
  v4 = *(this + 30);
  if (v3 != v4)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *(this + 29);
  }

  *(this + 30) = v3;
  v5 = *(this + 32);
  v6 = *(this + 33);
  if (v5 != v6)
  {
    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *(this + 32);
  }

  *(this + 33) = v5;
  v7 = *(this + 35);
  v8 = *(this + 36);
  if (v7 != v8)
  {
    v9 = *(this + 35);
    do
    {
      if (*(*v9 + 8) == this)
      {
        *(*v9 + 8) = 0;
      }

      v9 += 8;
    }

    while (v9 != v8);
  }

  *(this + 36) = v7;
  os_unfair_lock_unlock(this + 56);
  v10 = *(this + 38);
  if (v10)
  {
    CA::IOSAManager::unref(v10);
    *(this + 38) = 0;
  }

  os_unfair_lock_lock(this + 189);
  v11 = *(this + 95);
  if (v11)
  {
    *(this + 96) = 0;
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
    }
  }

  os_unfair_lock_unlock(this + 189);
  v12 = *(this + 87);
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v12 + 16))(v12);
  }

  v13 = *(this + 39);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 40);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 42);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 5);
  if (v16)
  {
    do
    {
      v17 = v16[1];
      free(v16);
      v16 = v17;
    }

    while (v17);
  }

  free(*(this + 3196));
  for (i = 344; i != 408; i += 16)
  {
    v19 = *(this + i);
    if (v19)
    {
      CFRelease(v19);
    }
  }

  v20 = *(this + 215);
  v21 = MEMORY[0x1E69E9A60];
  if (v20)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v20);
  }

  v22 = *(this + 203);
  if (v22)
  {
    mach_port_deallocate(*v21, v22);
  }

  pthread_mutex_destroy(this + 9);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 464);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*(this + 56));
  v23 = *(this + 52);
  if (v23)
  {
    *(this + 53) = v23;
    operator delete(v23);
  }

  v24 = *(this + 35);
  if (v24)
  {
    *(this + 36) = v24;
    operator delete(v24);
  }

  v25 = *(this + 32);
  if (v25)
  {
    *(this + 33) = v25;
    operator delete(v25);
  }

  v26 = *(this + 29);
  if (v26)
  {
    *(this + 30) = v26;
    operator delete(v26);
  }
}

uint64_t CA::WindowServer::Display::set_size(uint64_t result, uint64_t a2, uint64_t a3, double *a4, double a5, double a6, double a7, double a8, int32x4_t a9, double a10, double a11, int32x4_t a12)
{
  if (*(result + 88) != *a2 || *(result + 92) != *(a2 + 4) || *(result + 96) != *a3 || *(result + 100) != *(a3 + 4) || (a6 = *a4, *(result + 112) != *a4) || (a6 = a4[1], *(result + 120) != a6))
  {
    *(result + 88) = *a2;
    *(result + 96) = *a3;
    v12 = *a4;
    *(result + 112) = *a4;
    return CA::WindowServer::Display::update_geometry(result, *&v12, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

uint64_t CA::WindowServer::Display::update_geometry(uint64_t this, double a2, double a3, double a4, double a5, int32x4_t a6, double a7, double a8, int32x4_t a9)
{
  v9 = this;
  a6.i64[0] = *(this + 88);
  v10 = *(this + 96);
  v11 = v10.i32[1];
  v12.i64[0] = 0;
  v14 = *(this + 128);
  v13 = *(this + 136);
  if (v14 == 1.0 && v13 == 1.0)
  {
    v13 = 1.0;
    v31 = 0;
  }

  else
  {
    v16 = v10.i32[0];
    if (v10.i32[0] <= v10.i32[1])
    {
      v16 = HIDWORD(*(this + 96));
    }

    v17.i64[0] = v10.i32[0];
    v17.i64[1] = v10.i32[1];
    v18 = vcvtq_f64_s64(v17);
    v19 = vdup_n_s32(v16 > 1073741822);
    v17.i64[0] = v19.u32[0];
    v17.i64[1] = v19.u32[1];
    v20 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v21 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)), v20, v18);
    v22 = *v21.i64 >= 1.79769313e308 || v14 == 1.0;
    v20.i32[0] = v16;
    a9.i32[0] = 1073741822;
    v23 = vandq_s8(vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vdupq_lane_s32(*&vcgtq_s32(v20, a9), 0));
    v24.i64[1] = v23.i64[1];
    v25.i64[1] = v21.i64[1];
    if (v22)
    {
      v26 = 0;
    }

    else
    {
      v26 = -1;
    }

    v27 = vdupq_n_s64(v26);
    *v25.i64 = v14 * *v21.i64;
    v28 = vbslq_s8(v27, v25, v21);
    *v24.i64 = v14 * *v23.i64;
    v29 = vbslq_s8(v27, v24, v23);
    if (v13 != 1.0 && v28.f64[1] < 1.79769313e308)
    {
      v29.f64[1] = vmuld_lane_f64(v13, v29, 1);
      v28.f64[1] = v28.f64[1] * v13;
    }

    v30 = v28.f64[1];
    if (v28.f64[0] > v28.f64[1])
    {
      v30 = v28.f64[0];
    }

    if (v30 < 1073741820.0)
    {
      v32.f64[0] = NAN;
      v32.f64[1] = NAN;
      v33 = vnegq_f64(v32);
      __asm { FMOV            V16.2D, #0.5 }

      v31 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v33, _Q16, v29), v29)));
      v37 = vaddq_f64(v29, v28);
      v10 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v33, _Q16, v37), v37))), v31);
    }

    else
    {
      v31 = vdup_n_s32(0xE0000001);
      v10 = 0xC0000000C0000000;
    }
  }

  v12.i64[1] = *(this + 88);
  if (*(this + 144) == 1)
  {
    v38.i64[0] = a6.i32[0];
    v38.i64[1] = a6.i32[1];
    v39 = vcvtq_f64_s64(v38);
    v40 = vdupq_lane_s64(v39.i64[0], 0);
    v40.f64[0] = v10.i32[0];
    *&v41.f64[1] = v39.i64[1];
    v41.f64[0] = v10.i32[1];
    *&v40.f64[0] = vcvt_f32_f64(vdivq_f64(v40, v41));
    v42 = vcgt_f32(vdup_lane_s32(*&v40.f64[0], 1), *&v40.f64[0]).u8[0];
    if (a6.i32[0] <= a6.i32[1])
    {
      v43 = HIDWORD(*(this + 88));
    }

    else
    {
      v43 = *(this + 88);
    }

    if (a6.i32[0] >= a6.i32[1])
    {
      v44 = HIDWORD(*(this + 88));
    }

    else
    {
      v44 = *(this + 88);
    }

    v46 = v43 > 1073741822 || v44 < 1;
    if (v42)
    {
      if (!v46)
      {
        v47 = *v39.i64 - v10.i32[0] / v13;
        v39.i64[0] = 0.5;
        v12.i32[0] = (v47 * 0.5);
        v48 = a6.i32[0] - 2 * v12.i32[0];
        v49.i64[0] = v12.i64[0];
        v49.i64[1] = __PAIR64__(a6.u32[1], v48);
LABEL_40:
        a6.i32[0] = 1;
        v39.i32[0] = v48;
        v12 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a6, v39), 0), v12.u64[0], v49);
      }
    }

    else if (!v46)
    {
      v39.i64[0] = 0.5;
      v12.i32[1] = ((*&v39.i64[1] - v10.i32[1] / v14) * 0.5);
      v49.i64[0] = v12.i64[0];
      v49.i32[2] = *(this + 88);
      v48 = a6.i32[1] - 2 * v12.i32[1];
      v49.i32[3] = v48;
      goto LABEL_40;
    }
  }

  if (*(this + 640))
  {
    v50 = *(this + 672);
    if ((v50 & 0x200) != 0)
    {
      v51 = v10.i32[0];
      if (v10.i32[0] >= v10.i32[1])
      {
        v51 = v10.i32[1];
      }

      if (v51 >= 1)
      {
        v52 = *(this + 60);
        _NF = v52.f32[0] > 0.0 && v52.f32[0] < 1.0;
        if (_NF || (v52.f32[1] > 0.0 ? (v54 = v52.f32[1] < 1.0) : (v54 = 0), v54))
        {
          v55 = vextq_s8(v12, v12, 8uLL).u64[0];
          v56 = vcvt_s32_f32(vmla_f32(0x3F0000003F000000, vcvt_f32_s32(v55), vmls_f32(0x3F0000003F000000, 0x3F0000003F000000, v52)));
          v57 = vand_s8(v56, vcgt_s32(v55, vadd_s32(v56, v56)));
          v58 = v12.i32[2];
          if (v12.i32[2] <= v12.i32[3])
          {
            v59 = v12.i32[3];
          }

          else
          {
            v59 = v12.i32[2];
          }

          if (v12.i32[2] >= v12.i32[3])
          {
            v58 = v12.i32[3];
          }

          v60 = v59 > 1073741822 || v58 < 1;
          v61 = vadd_s32(v57, v57);
          if (!v60)
          {
            *v12.i8 = vadd_s32(*v12.i8, v57);
            v62.i64[0] = v12.i64[0];
            v62.u64[1] = vsub_s32(v55, v61);
            v63 = vclez_s32(v62.u64[1]);
            v12 = vbslq_s8(vmovl_s16(vdup_lane_s16(vorr_s8(v63, vdup_lane_s32(v63, 1)), 0)), v12, v62);
          }

          if ((~v50 & 0x300) == 0)
          {
            v64.i64[0] = v61.i32[0];
            v64.i64[1] = v61.i32[1];
            v65 = vcvtq_f64_s64(v64);
            v64.i64[0] = v10.i32[0];
            v64.i64[1] = v10.i32[1];
            v10 = vmovn_s64(vcvtq_s64_f64(vmlsq_f64(vcvtq_f64_s64(v64), v65, *(this + 128))));
            v13 = *(this + 136);
          }
        }
      }
    }
  }

  v66 = *(this + 68);
  if (v66 >= 1 && v66 > v12.i32[1])
  {
    v68 = llround(v13 * v12.i32[3] / *(this + 128));
    v69 = v66 - v12.i32[1];
    v70 = v66 - v11 + v68;
    if (v70 <= 0)
    {
      v72.f32[0] = v12.i32[2];
      v73 = 1.0;
      v74.i32[0] = 0;
    }

    else
    {
      v71 = v70 / v68;
      v72.f32[0] = v12.i32[2];
      v73 = 1.0 - v71;
      v74.f32[0] = truncf(v71 * (0.5 * v12.i32[2]));
    }

    v72.f32[1] = v68;
    v74.f32[1] = v69;
    *v75.f32 = vadd_f32(v74, vcvt_f32_s32(*v12.i8));
    *&v75.u32[2] = vrnda_f32(vmul_n_f32(v72, v73));
    v12 = vcvtq_s32_f32(v75);
  }

  if (*(this + 168) == v31.i32[0])
  {
    v76 = v10.i32[0];
    if (*(this + 172) == v31.i32[1] && *(this + 176) == *&v10 && *(this + 152) == v12.i32[0] && *(this + 156) == *(v12.i64 + 4) && *(this + 164) == v12.i32[3])
    {
      return this;
    }
  }

  else
  {
    v76 = v10.i32[0];
  }

  *(this + 168) = v31;
  *(this + 176) = v76;
  *(this + 180) = v10.i32[1];
  *(this + 152) = v12;
  CA::WindowServer::Display::update_actual_bounds(this);

  return CA::WindowServer::Display::post_display_changed(v9);
}

uint64_t CA::WindowServer::Display::update_actual_bounds(CA::WindowServer::Display *this)
{
  (*(*this + 248))(this);
  v3 = *(this + 226);
  v4 = 184;
  if ((v3 & 8) == 0)
  {
    v4 = 168;
  }

  v5 = (this + v4);
  v6 = v5[2];
  if (*(this + 40) == v6 && *(this + 41) == v5[3])
  {
    if (*(this + 38) == *v5)
    {
      v7 = 0;
      v8 = *(this + 39) != v5[1];
      goto LABEL_9;
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = 1;
LABEL_9:
  if (((v3 >> 4) & 1) == v8)
  {
    v9 = *v5;
    if (((*(this + 226) & 0x20) == 0) != v7 && *(this + 50) == v9 && *(this + 51) == v5[1] && *(this + 52) == v6 && *(this + 53) == v5[3])
    {
      return 0;
    }
  }

  else
  {
    v9 = *v5;
  }

  v11 = v3 & 0xFFFFFFCF | (16 * v8);
  if (v7)
  {
    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  *(this + 50) = v9;
  *(this + 226) = v11 | v12;
  *(this + 51) = v5[1];
  *(this + 52) = v6;
  *(this + 53) = v5[3];
  v13 = *(this + 27);
  if (v13)
  {
    CA::Shape::unref(v13);
  }

  *(this + 27) = CA::Shape::new_shape((this + 200), v2);
  return 1;
}

uint64_t CA::WindowServer::Display::set_logical_bounds(CA::WindowServer::Display *this, const CA::Bounds *a2, int a3)
{
  v3 = *a2;
  if (*a2 != *(this + 42) || *(a2 + 1) != *(this + 43) || *(a2 + 2) != *(this + 44) || *(a2 + 3) != *(this + 45))
  {
    v6 = *(this + 226);
    if ((v6 & 8) == 0 || *(this + 46) != v3 || *(this + 47) != *(a2 + 1) || *(this + 48) != *(a2 + 2) || *(this + 49) != *(a2 + 3) || ((((*(this + 226) & 0x40) == 0) ^ a3) & 1) == 0)
    {
      *(this + 46) = v3;
      *(this + 188) = *(a2 + 4);
      *(this + 49) = *(a2 + 3);
      v8 = v6 & 0xFFFFFFB7;
      if (a3)
      {
        v9 = 72;
      }

      else
      {
        v9 = 8;
      }

      v5 = v9 | v8;
      goto LABEL_18;
    }

    return 0;
  }

  v4 = *(this + 226);
  if ((v4 & 8) == 0)
  {
    return 0;
  }

  v5 = v4 & 0xFFFFFFB7;
  *(this + 23) = 0;
  *(this + 24) = 0;
LABEL_18:
  *(this + 226) = v5;
  return CA::WindowServer::Display::update_actual_bounds(this);
}

uint64_t CA::WindowServer::Display::all_clones_support_edr_fixup(CA::WindowServer::Display *this)
{
  if ((*(this + 160) & 4) == 0)
  {
    return 1;
  }

  v2 = *(this + 5);
  if (!v2)
  {
    return 1;
  }

  do
  {
    result = (*(**(*v2 + 96) + 1568))(*(*v2 + 96));
    if ((result & 1) == 0)
    {
      break;
    }

    v2 = v2[1];
  }

  while (v2);
  return result;
}

uint64_t CA::WindowServer::Display::all_clones_support_hlg(CA::WindowServer::Display *this)
{
  if (!this)
  {
    return 1;
  }

  v1 = this;
  do
  {
    result = (*(**(*v1 + 96) + 184))(*(*v1 + 96));
    if ((result & 1) == 0)
    {
      break;
    }

    v1 = *(v1 + 1);
  }

  while (v1);
  return result;
}

uint64_t CA::WindowServer::Display::set_all_modes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v7 = a4;
    v9 = *a2;
    v8 = *(a2 + 8);
    v10 = *a2;
    if (*a2 != v8)
    {
      v11 = vdupq_n_s64(0x3F59000000000000uLL);
      v12 = vdupq_n_s64(0x40847AE147AE147BuLL);
      v13 = vdupq_n_s64(0x3FFFFFE0000000uLL);
      v10 = *a2;
      while (*v10 != a4)
      {
        v14.i64[0] = *v10;
        v14.i64[1] = a4;
        v15 = vshrn_n_s64(v14, 0x1DuLL);
        v16.i64[0] = v15.i32[0] & 0x1FFFFFF;
        v16.i64[1] = v15.i32[1] & 0x1FFFFFF;
        v17 = vbslq_s8(v13, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v16), v11)), v12)), 0x1DuLL), v14);
        if (vmovn_s64(vceqq_s64(v17, vdupq_laneq_s64(v17, 1))).u8[0])
        {
          break;
        }

        if (++v10 == v8)
        {
          goto LABEL_11;
        }
      }
    }

    if (v10 != v8)
    {
LABEL_13:
      if (!a3)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = *a2;
    v8 = *(a2 + 8);
  }

LABEL_11:
  if (v8 != v9)
  {
    v7 = *v9;
    goto LABEL_13;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_23:
    v4 = v7;
    goto LABEL_24;
  }

LABEL_16:
  if (v9 == v8)
  {
    goto LABEL_23;
  }

  v18 = vdupq_n_s64(0x3F59000000000000uLL);
  v19 = vdupq_n_s64(0x40847AE147AE147BuLL);
  v20 = vdupq_n_s64(0x3FFFFFE0000000uLL);
  while (*v9 != a3)
  {
    v21.i64[0] = *v9;
    v21.i64[1] = a3;
    v22 = vshrn_n_s64(v21, 0x1DuLL);
    v23.i64[0] = v22.i32[0] & 0x1FFFFFF;
    v23.i64[1] = v22.i32[1] & 0x1FFFFFF;
    v24 = vbslq_s8(v20, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v23), v18)), v19)), 0x1DuLL), v21);
    if (vmovn_s64(vceqq_s64(v24, vdupq_laneq_s64(v24, 1))).u8[0])
    {
      break;
    }

    v9 += 8;
    if (v9 == v8)
    {
      goto LABEL_23;
    }
  }

  if (v9 == v8)
  {
    goto LABEL_23;
  }

LABEL_24:
  os_unfair_lock_lock((a1 + 408));
  v26 = *(a1 + 416);
  v25 = *(a1 + 424);
  v27 = *(a2 + 8);
  if (v25 - v26 == v27 - *a2)
  {
    if (v26 == v25)
    {
LABEL_30:
      if (*(a1 + 456) == *(a2 + 40))
      {
        v37 = *(a1 + 440);
        if (v37 == (a1 + 448))
        {
LABEL_49:
          if (*(a1 + 656) == v4 || (v44.i64[0] = *(a1 + 656), v44.i64[1] = v4, v45 = vshrn_n_s64(v44, 0x1DuLL), v46.i64[0] = v45.i32[0] & 0x1FFFFFF, v46.i64[1] = v45.i32[1] & 0x1FFFFFF, v47 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v46), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v44), (vmovn_s64(vceqq_s64(v47, vdupq_laneq_s64(v47, 1))).u8[0] & 1) != 0))
          {
            if (*(a1 + 664) == v7 || (v48.i64[0] = *(a1 + 664), v48.i64[1] = v7, v49 = vshrn_n_s64(v48, 0x1DuLL), v50.i64[0] = v49.i32[0] & 0x1FFFFFF, v50.i64[1] = v49.i32[1] & 0x1FFFFFF, v51 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v50), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v48), (vmovn_s64(vceqq_s64(v51, vdupq_laneq_s64(v51, 1))).u8[0] & 1) != 0))
            {
              v52 = 0;
              goto LABEL_59;
            }
          }
        }

        else
        {
          v38 = *(a2 + 24);
          while (1)
          {
            v39 = *(v37 + 13) == *(v38 + 13) && *(v37 + 14) == *(v38 + 14);
            if (!v39)
            {
              break;
            }

            v40 = v37[1];
            v41 = v37;
            if (v40)
            {
              do
              {
                v37 = v40;
                v40 = *v40;
              }

              while (v40);
            }

            else
            {
              do
              {
                v37 = v41[2];
                v39 = *v37 == v41;
                v41 = v37;
              }

              while (!v39);
            }

            v42 = v38[1];
            if (v42)
            {
              do
              {
                v43 = v42;
                v42 = *v42;
              }

              while (v42);
            }

            else
            {
              do
              {
                v43 = v38[2];
                v39 = *v43 == v38;
                v38 = v43;
              }

              while (!v39);
            }

            v38 = v43;
            if (v37 == (a1 + 448))
            {
              goto LABEL_49;
            }
          }
        }
      }
    }

    else
    {
      v28 = vdupq_n_s64(0x3F59000000000000uLL);
      v29 = vdupq_n_s64(0x40847AE147AE147BuLL);
      v30 = vdupq_n_s64(0x3FFFFFE0000000uLL);
      v31 = *a2;
      v32 = *(a1 + 416);
      while (1)
      {
        if (*v32 != *v31)
        {
          v33.i64[0] = *v32;
          v33.i64[1] = *v31;
          v34 = vshrn_n_s64(v33, 0x1DuLL);
          v35.i64[0] = v34.i32[0] & 0x1FFFFFF;
          v35.i64[1] = v34.i32[1] & 0x1FFFFFF;
          v36 = vbslq_s8(v30, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v35), v28)), v29)), 0x1DuLL), v33);
          if ((vmovn_s64(vceqq_s64(v36, vdupq_laneq_s64(v36, 1))).u8[0] & 1) == 0)
          {
            break;
          }
        }

        ++v32;
        ++v31;
        if (v32 == v25)
        {
          goto LABEL_30;
        }
      }
    }
  }

  if ((v25 == v26) != (v27 == *a2))
  {
    ++*(a1 + 32);
  }

  CA::WindowServer::Display::ModeSet::operator=(a1 + 416, a2);
  *(a1 + 656) = v4;
  *(a1 + 664) = v7;
  if (v7)
  {
    *(a1 + 104) = v7 & 0x3FFF | (((v7 >> 14) & 0x3FFF) << 32);
  }

  v52 = 1;
LABEL_59:
  os_unfair_lock_unlock((a1 + 408));
  return v52;
}