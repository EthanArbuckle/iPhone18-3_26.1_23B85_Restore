void sub_183C47B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *context)
{
  objc_end_catch();
  objc_autoreleasePoolPop(context);
  _Unwind_Resume(a1);
}

CFMutableDataRef CAMLEncodeLayerTreeWithInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  +[CATransaction begin];
  [CATransaction activateBackground:pthread_main_np() == 0];
  Mutable = CFDataCreateMutable(0, 0);
  v8 = [CAMLWriter writerWithData:Mutable];
  v9 = [[CACodingCAMLWriterDelegate alloc] initWithResourceDir:a2];
  [(CACodingCAMLWriterDelegate *)v9 setImageFormat:CACodingImageFormat];
  if (a3)
  {
    v10 = [a3 objectForKeyedSubscript:@"CACodingImageFormat"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CACodingCAMLWriterDelegate *)v9 setImageFormat:v10];
      }
    }

    v11 = [a3 objectForKeyedSubscript:@"CACodingImageOptions"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CACodingCAMLWriterDelegate *)v9 setImageEncodeOptions:v11];
      }
    }

    -[CACodingCAMLWriterDelegate setSkipHiddenLayers:](v9, "setSkipHiddenLayers:", [objc_msgSend(a3 objectForKeyedSubscript:{@"CACodingSkipHiddenLayers", "BOOLValue"}]);
    -[CAMLWriter setEncodingForReverseSerializationTest:](v8, "setEncodingForReverseSerializationTest:", [objc_msgSend(a3 objectForKeyedSubscript:{@"kCAMLWriterOptionsTestingReverseSerialization", "BOOLValue"}]);
  }

  [(CAMLWriter *)v8 setDelegate:v9];
  +[CATransaction lock];
  v12 = CAEncodeBackingStores;
  v13 = CALayerEncodeAllAnimations;
  CAEncodeBackingStores = 1;
  CALayerEncodeAllAnimations = 1;
  [(CAMLWriter *)v8 encodeObject:a1];
  CAEncodeBackingStores = v12;
  CALayerEncodeAllAnimations = v13;
  +[CATransaction unlock];
  +[CATransaction commit];
  objc_autoreleasePoolPop(v6);
  return Mutable;
}

void sub_183C47DC4(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_autoreleasePoolPop(v1);
  _Unwind_Resume(a1);
}

uint64_t CAMLEncodeLayerTreeToPathWithOptions(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [objc_msgSend(v7 "temporaryDirectory")];
  v10 = [v8 stringWithFormat:@"%@/%@", v9, objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/assets", v10];
  v28 = 0;
  [v7 removeItemAtPath:a2 error:0];
  if (([v7 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v28] & 1) == 0)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v19 = x_log_get_utilities::log;
    if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v20 = [v10 UTF8String];
    *buf = 136315138;
    v30 = v20;
    v21 = "CAMLEncodeLayerTreeToPathWithOptions failed to create output dirs at %s";
    v22 = v19;
    v23 = 12;
    goto LABEL_24;
  }

  if (a3)
  {
    v12 = CFGetTypeID(a3);
    if (v12 != CFDictionaryGetTypeID())
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v13 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "CAMLEncodeLayerTreeToPathWithOptions options must be a CFDictionary\n", buf, 2u);
      }
    }
  }

  v14 = CAMLEncodeLayerTreeWithInfo(a1, v10, a3);
  if (!v14)
  {
    goto LABEL_25;
  }

  -[__CFData writeToFile:atomically:](v14, "writeToFile:atomically:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%s", v10, "main.caml"], 0);
  CFRelease(v14);
  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  [v15 setObject:@"main.caml" forKeyedSubscript:@"rootDocument"];
  [v15 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:@"geometryFlipped"];
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"CACodingUserInfo");
    if (Value)
    {
      [v15 setObject:Value forKeyedSubscript:@"userInfo"];
    }
  }

  v17 = [MEMORY[0x1E696AE40] dataWithPropertyList:v15 format:100 options:0 error:0];
  if (v17)
  {
    [v17 writeToFile:objc_msgSend(MEMORY[0x1E696AEC0] atomically:{"stringWithFormat:", @"%@/%s", v10, "index.xml"), 0}];
  }

  if (([v7 moveItemAtPath:v10 toPath:a2 error:&v28] & 1) == 0)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v24 = x_log_get_utilities::log;
    if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v25 = [v10 UTF8String];
    v26 = [a2 UTF8String];
    *buf = 136315394;
    v30 = v25;
    v31 = 2080;
    v32 = v26;
    v21 = "CAMLEncodeLayerTreeToPathWithOptions failed to move %s to %s";
    v22 = v24;
    v23 = 22;
LABEL_24:
    _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

  v18 = 1;
LABEL_26:
  objc_autoreleasePoolPop(v6);
  return v18;
}

void CAMLEncodeLayerTreeToPathWithInfo(uint64_t a1, void *a2, void *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = a3;
  keys[0] = @"CACodingUserInfo";
  if (a3)
  {
    v5 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CAMLEncodeLayerTreeToPathWithOptions(a1, a2, v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {

    CAMLEncodeLayerTreeToPathWithOptions(a1, a2, 0);
  }
}

void CAEncodeLayerTreeToFileWithInfo(objc_class *a1, uint64_t a2, uint64_t a3)
{
  v4 = CAEncodeLayerTreeWithInfo(a1, a3);
  if (v4)
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
    [v5 writeToFile:v6 atomically:0];

    CFRelease(v5);
  }
}

float CA::Render::Image::red_component_at(CA::Render::Image *this, int a2, int a3, float *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(this + 168);
  result = 1.0;
  if (v5 <= 0x15 && ((0x206803u >> v5) & 1) != 0)
  {
    v7 = *(this + 4);
    v8 = *(this + 5);
    v9 = v7 - 1;
    if (v7 <= 0)
    {
      v9 = 0;
    }

    v10 = v7 <= a2;
    v11 = a2 & ~(a2 >> 31);
    if (v10)
    {
      v11 = v9;
    }

    v12 = v8 - 1;
    if (v8 <= 0)
    {
      v12 = 0;
    }

    if (v8 > a3)
    {
      v13 = a3 & ~(a3 >> 31);
    }

    else
    {
      v13 = v12;
    }

    v14 = *(this + 14) + *(this + 22) * v13;
    v15 = (dword_183E22690[v5] * v11);
    *v16 = 1065353216;
    CA::Render::format_red_component_at_value(v5, (v14 + v15), v16, a4, 1.0);
    return *v16;
  }

  return result;
}

float CA::Render::Image::opacity_at(CA::Render::Image *this, int a2, int a3, float *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(this + 168);
  result = 1.0;
  if (v5 <= 0x22 && ((0x419A4EB03uLL >> v5) & 1) != 0)
  {
    v7 = *(this + 4);
    v8 = *(this + 5);
    v9 = v7 - 1;
    if (v7 <= 0)
    {
      v9 = 0;
    }

    v10 = v7 <= a2;
    v11 = a2 & ~(a2 >> 31);
    if (v10)
    {
      v11 = v9;
    }

    v12 = v8 - 1;
    if (v8 <= 0)
    {
      v12 = 0;
    }

    if (v8 > a3)
    {
      v13 = a3 & ~(a3 >> 31);
    }

    else
    {
      v13 = v12;
    }

    v14 = *(this + 14) + *(this + 22) * v13;
    v15 = (dword_183E22690[v5] * v11);
    *v16 = 1065353216;
    CA::Render::format_opacity_at_value(v5, (v14 + v15), v16, a4, 1.0);
    return *v16;
  }

  return result;
}

uint64_t CA::Render::Image::set_data_volatile(CA::Render::Image *this, unsigned int a2)
{
  v3 = *(this + 17);
  if (!v3)
  {
    return a2 ^ 1;
  }

  result = CA::Render::Shmem::set_volatile(*(this + 17), a2, 0);
  if (result)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CA::Render::post_notification(0xBu, v3, 0, 0);
    return 1;
  }

  return result;
}

CGColorSpace *CA::Render::Image::set_default_colorspace(CA::Render::Image *this)
{
  v2 = CA::Render::format_default_colorspace(*(this + 168));

  return CA::Render::Texture::set_colorspace(this, v2);
}

char *CA::Render::Image::show(uint64_t a1, X::Stream *this, uint64_t a3, char a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (a4)
  {
    v24 = *(a1 + 168);
    if (v24 > 0x23)
    {
      v25 = "UNKNOWN";
    }

    else
    {
      v25 = off_1E6DEC8E8[v24];
    }

    X::Stream::printf(this, "<image [%d %d] [%s]", v6, *(a1 + 20), v25);
    v26 = CA::Render::Image::data_size(a1);
    if (v26 >= 0x400)
    {
      v27 = 1.0;
      do
      {
        v27 = v27 * 0.0009765625;
      }

      while (v27 * v26 >= 1024.0);
    }

    return X::Stream::printf(this, " [%.2lf %s]>");
  }

  else
  {
    v7 = *(a1 + 168);
    if (v7 > 0x23)
    {
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = off_1E6DEC8E8[v7];
    }

    X::Stream::printf(this, "(image [%d %d] [%d] %s", v6, *(a1 + 20), *(a1 + 169), v8);
    v9 = CA::Render::Image::data_size(a1);
    v10 = v9;
    if (v9 >= 0x400)
    {
      v12 = 1.0;
      do
      {
        v12 = v12 * 0.0009765625;
        v11 = v12 * v10;
      }

      while (v12 * v10 >= 1024.0);
    }

    else
    {
      v11 = v9;
    }

    v13 = v9 > 0x3FF;
    if ((v9 & 0xFFFFFFFFFFF00000) != 0)
    {
      ++v13;
    }

    if ((v9 & 0xFFFFFFFFC0000000) != 0)
    {
      ++v13;
    }

    if (v9 >> 40)
    {
      ++v13;
    }

    if (v9 >> 50)
    {
      ++v13;
    }

    if (v9 >> 60)
    {
      ++v13;
    }

    X::Stream::printf(this, " (%.2lf %s)", v11, off_1E6DF9988[v13]);
    v14 = *(a1 + 72);
    __asm { FMOV            V1.4S, #1.0 }

    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v14, _Q1)))))
    {
      X::Stream::printf(this, " (tint %.3g %.3g %.3g %.3g %.3g)", v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3], *(a1 + 88));
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buffer = 0u;
    v29 = 0u;
    if (*(a1 + 56))
    {
      if ((*(a1 + 14) & 8) != 0)
      {
        X::Stream::printf(this, " colormatching-disabled");
      }

      v20 = CGColorSpaceCopyICCProfileDescription();
      if (v20)
      {
        v21 = v20;
        CFStringGetCString(v20, buffer, 127, 0x8000100u);
        if (buffer[0])
        {
          X::Stream::printf(this, " (colorspace %s)", buffer);
        }

        CFRelease(v21);
      }
    }

    if ((*(a1 + 14) & 0x40) != 0)
    {
      X::Stream::printf(this, " placeholder");
    }

    v22 = *(a1 + 64);
    if (v22 > 1.0)
    {
      X::Stream::printf(this, " headroom %.3g", v22);
    }

    return X::Stream::printf(this, ")");
  }
}

__IOSurface *CA::Render::Image::retain_iosurface(CA::Render::Image *this)
{
  keys[8] = *MEMORY[0x1E69E9840];
  v20 = 0;
  os_unfair_lock_lock(&CA::Render::image_lock);
  v2 = *(this + 19);
  if (v2)
  {
    if (*(this + 40) != *(this + 9))
    {
      if (!IOSurfaceLock(*(this + 19), 0, 0))
      {
        IOSurfaceUnlock(v2, 0, 0);
      }

      *(this + 40) = *(this + 9);
    }

LABEL_6:
    CFRetain(v2);
    goto LABEL_27;
  }

  switch(*(this + 168))
  {
    case 1:
    case 3:
      v3 = 0;
      v4 = 1111970369;
      goto LABEL_21;
    case 5:
      v3 = 0;
      v4 = 1278555445;
      goto LABEL_21;
    case 6:
      v3 = 0;
      v4 = 846624121;
      goto LABEL_21;
    case 7:
      v3 = 0;
      v4 = 2037741171;
      goto LABEL_21;
    case 8:
    case 9:
      v3 = 0;
      v4 = 1093677112;
      goto LABEL_21;
    case 0xA:
      v3 = 0;
      v4 = 1278226488;
      goto LABEL_21;
    case 0xD:
    case 0x11:
      v3 = 0;
      v4 = 1380411457;
      goto LABEL_21;
    case 0xE:
      v3 = 0;
      v4 = 1380410945;
      goto LABEL_21;
    case 0x12:
      v3 = 0;
      v4 = 1279340600;
      goto LABEL_21;
    case 0x21:
      v3 = 0;
      v4 = 1999843442;
      goto LABEL_21;
    case 0x22:
      v3 = 0;
      v4 = 1999908961;
      goto LABEL_21;
    case 0x23:
      v3 = 0;
      v4 = 1647534392;
LABEL_21:
      v20 = v4;
      break;
    default:
      v20 = 0;
      v3 = 1;
      break;
  }

  v5 = *(this + 14);
  v6 = *(this + 22);
  v19 = v6;
  {
  }

  if (v5 % qword_1ED4E4910 || v6 % qword_1ED4E4918)
  {
    v2 = 0;
    goto LABEL_27;
  }

  if (v3)
  {
    v8 = *(this + 4);
    v17 = *(this + 5);
    valuePtr = v8;
    v9 = *(this + 168);
    if (v9 > 0x25)
    {
      v10 = 0;
    }

    else
    {
      v10 = dword_183E22690[v9];
    }

    v16 = v10;
    v14 = v5;
    v15 = CA::Render::Image::data_size(this);
    v13 = 0;
    keys[0] = *MEMORY[0x1E696D130];
    values[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    keys[1] = *MEMORY[0x1E696CF58];
    values[1] = CFNumberCreate(0, kCFNumberIntType, &v17);
    keys[2] = *MEMORY[0x1E696CFC0];
    values[2] = CFNumberCreate(0, kCFNumberIntType, &v20);
    keys[3] = *MEMORY[0x1E696CE50];
    values[3] = CFNumberCreate(0, kCFNumberIntType, &v16);
    keys[4] = *MEMORY[0x1E696CE58];
    values[4] = CFNumberCreate(0, kCFNumberLongType, &v19);
    keys[5] = *MEMORY[0x1E696CE30];
    values[5] = CFNumberCreate(0, kCFNumberLongType, &v15);
    keys[6] = *MEMORY[0x1E696CEB8];
    values[6] = CFNumberCreate(0, kCFNumberLongType, &v14);
    keys[7] = *MEMORY[0x1E696CFA8];
    values[7] = CFNumberCreate(0, kCFNumberLongType, &v13);
    v11 = CFDictionaryCreate(0, keys, values, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    for (i = 0; i != 8; ++i)
    {
      CFRelease(values[i]);
    }

    *(this + 19) = IOSurfaceCreate(v11);
    CFRelease(v11);
    if (!IOSurfaceLock(*(this + 19), 0, 0))
    {
      IOSurfaceUnlock(*(this + 19), 0, 0);
    }

    v2 = *(this + 19);
  }

  else
  {
    CA::Render::Image::data_size(this);
    v2 = IOSurfaceWrapClientImage();
    *(this + 19) = v2;
  }

  *(this + 40) = *(this + 9);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_27:
  os_unfair_lock_unlock(&CA::Render::image_lock);
  return v2;
}

void CA::Render::Image::update_iosurface(__IOSurface **this, __IOSurface *a2)
{
  if (a2 && this[19] != a2)
  {
    os_unfair_lock_lock(&CA::Render::image_lock);
    goto LABEL_6;
  }

  if (*(this + 40) == *(this + 9))
  {
    return;
  }

  os_unfair_lock_lock(&CA::Render::image_lock);
  if (a2)
  {
LABEL_6:
    v4 = this[19];
    if (v4 != a2)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      v4 = CFRetain(a2);
      this[19] = v4;
      *(this + 40) = 0;
    }

    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v4 = this[19];
  if (v4)
  {
LABEL_11:
    if (*(this + 40) != *(this + 9))
    {
      if (!IOSurfaceLock(v4, 0, 0))
      {
        IOSurfaceUnlock(this[19], 0, 0);
      }

      *(this + 40) = *(this + 9);
    }
  }

LABEL_15:

  os_unfair_lock_unlock(&CA::Render::image_lock);
}

CGImageRef CA::Render::Image::copy_cgimage(CA::Render::Image *this)
{
  os_unfair_lock_lock(&CA::Render::image_lock);
  v2 = CA::Render::cg_image_cache;
  if (!CA::Render::cg_image_cache)
  {
    CA::Render::cg_image_cache = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    CA::Render::add_observer(3u, 0, CA::Render::render_image_deleted, 0, 0);
    v2 = CA::Render::cg_image_cache;
  }

  v3 = x_hash_table_lookup(v2, this, 0);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = *v3;
  if (*(v3 + 8) != *(this + 9))
  {
    CGImageRelease(*v3);
    *v4 = 0;
    goto LABEL_8;
  }

  if (!v5)
  {
LABEL_8:
    v6 = *(this + 22);
    if (is_mul_ok(v6, *(this + 5)))
    {
      v7 = v6 * *(this + 5);
    }

    else
    {
      v7 = 0;
    }

    atomic_fetch_add(this + 41, 1u);
    v8 = CGDataProviderCreateWithData(this, *(this + 14), v7, CA::Render::release_bitmap);
    v9 = *(this + 7);
    if (!v9)
    {
      v10 = *(this + 168);
      if ((v10 - 8) >= 2)
      {
        if (v10 == 10)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        v9 = CAGetColorSpace(v11);
      }

      else
      {
        v9 = 0;
      }
    }

    v12 = *(this + 168);
    if (v12 > 0x23)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v13 = dword_183E22600[v12];
      v14 = dword_183E22728[v12];
      v15 = dword_183E22570[v12];
    }

    v5 = CGImageCreate(*(this + 4), *(this + 5), v14, v13, *(this + 22), v9, v15, v8, 0, 1, kCGRenderingIntentDefault);
    CGDataProviderRelease(v8);
    if (v5)
    {
      if (v4)
      {
        *v4 = v5;
        *(v4 + 8) = *(this + 9);
        goto LABEL_32;
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v16 = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x165299FDuLL);
      if (v16)
      {
        v17 = v16;
        v18 = *(this + 9);
        *v16 = v5;
        *(v16 + 2) = v18;
        hash_table_modify(CA::Render::cg_image_cache, this, v16, 0);
        v5 = *v17;
        goto LABEL_32;
      }

      hash_table_modify(CA::Render::cg_image_cache, this, 0, 0);
    }

    else if (v4)
    {
      x_hash_table_remove(CA::Render::cg_image_cache, this);
      CGImageRelease(*v4);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v4);
    }

    v19 = 0;
    goto LABEL_35;
  }

LABEL_32:
  v19 = CGImageRetain(v5);
LABEL_35:
  os_unfair_lock_unlock(&CA::Render::image_lock);
  return v19;
}

void CA::Render::render_image_deleted(CA::Render *this, CA::Render::Object *a2, void *a3, void *a4)
{
  if (CA::Render::cg_image_cache)
  {
    os_unfair_lock_lock(&CA::Render::image_lock);
    v5 = x_hash_table_remove(CA::Render::cg_image_cache, this);
    os_unfair_lock_unlock(&CA::Render::image_lock);
    if (v5)
    {
      CGImageRelease(*v5);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v6 = malloc_zone;

      malloc_zone_free(v6, v5);
    }
  }
}

void CA::CG::AccelQueue::finish_renderer(CA::CG::AccelQueue *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7)
{
  if (*(this + 201) == 1)
  {
    v8 = *(this + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = CA::CG::AccelRenderer::acquire(*(this + 21), (this + 176), v8, *(this + 6), 1, *(this + 23), a7);
  if (v9)
  {
    v10 = v9;
    if (*(this + 200) == 1)
    {
      *(this + 200) = 0;
      (*(**(this + 21) + 64))(*(this + 21));
    }

    CA::CG::AccelRenderer::unlock_surface(v10);
    CA::CG::Renderer::end_rendering(v10);
    CA::CG::Renderer::end_rendering(v10);
    (*(**(v10 + 8) + 464))();
    v11 = *(v10 + 152);
    *(v10 + 156) = v11;
    v12 = *(v10 + 8);
    *(v12 + 636) = v11;
    *(v12 + 640) = v11;
    CA::CG::Renderer::collect_(v10);
    ++*(v10 + 152);
    v13 = *(v10 + 8);
    *(v10 + 4276) = 0;
    *(v13 + 792) = 0;

    os_unfair_lock_unlock((v10 + 4272));
  }
}

void CA::CG::AccelQueue::flush_all_renderers(uint64_t a1, int a2)
{
  if (a2)
  {
    os_unfair_lock_lock(&CA::CG::AccelRenderer::_list_lock);
    v5 = CA::CG::AccelRenderer::_list;
    if (CA::CG::AccelRenderer::_list)
    {
      do
      {
        v4 = (*(*a1 + 40))(a1, 1, v5);
        v5 = *(v5 + 4320);
      }

      while (v5);
      if (a2 == 3)
      {
        for (i = CA::CG::AccelRenderer::_list; i; i = *(i + 4320))
        {
          v4 = (*(*a1 + 40))(a1, 3, i);
        }
      }
    }

    CA::CG::Renderer::flush_released_objects(v4);

    os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
  }
}

void CA::CG::AccelQueue::flush_renderer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7)
{
  v8 = a2;
  if (*(a1 + 201) == 1)
  {
    v10 = *(a1 + 192);
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  if (!a3)
  {
    v11 = CA::CG::AccelRenderer::acquire(*(a1 + 168), (a1 + 176), v10, *(a1 + 24), 1, *(a1 + 184), a7);
    if (!v11)
    {
      return;
    }
  }

  *(a1 + 200) = 0;
  (*(**(a1 + 168) + 64))(*(a1 + 168), a2, v10);
  CA::CG::AccelRenderer::unlock_surface(v11);
  CA::CG::Renderer::end_rendering(v11);
  CA::CG::Renderer::end_rendering(v11);
  v12 = *(v11 + 8);
  if (!v12)
  {
    v14 = 0;
    if (a3)
    {
      return;
    }

    goto LABEL_13;
  }

  (*(*v12 + 456))(v12, v8 == 3);
  CA::CG::Renderer::collect_(v11);
  v13 = *(v11 + 288);
  v14 = *(v11 + 8);
  v15 = *(v14 + 648);
  if (*(v11 + 160 + 16 * v13) + 0.03125 >= v15)
  {
    v18 = *(v11 + 152);
  }

  else
  {
    if (v13 == 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13 + 1;
    }

    *(v11 + 288) = v16;
    v17 = v11 + 160 + 16 * v16;
    *v17 = v15;
    v18 = *(v11 + 152);
    *(v17 + 8) = v18;
  }

  *(v11 + 296) = 0;
  *(v11 + 152) = v18 + 1;
  if (!a3)
  {
LABEL_13:
    *(v11 + 4276) = 0;
    *(v14 + 792) = 0;

    os_unfair_lock_unlock((v11 + 4272));
  }
}

void CA::CG::AccelQueue::release_renderer(CA::CG::AccelQueue *this, CA::CG::Renderer *a2)
{
  *(a2 + 4276) = 0;
  *(*(a2 + 1) + 792) = 0;
  os_unfair_lock_unlock(a2 + 1068);
  *(this + 200) = 1;
}

uint64_t CA::CG::AccelQueue::acquire_renderer(CA::CG::AccelQueue *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7)
{
  if (*(this + 201) == 1)
  {
    v7 = *(this + 24);
  }

  else
  {
    v7 = 0;
  }

  return CA::CG::AccelRenderer::acquire(*(this + 21), (this + 176), v7, *(this + 6), 0, *(this + 23), a7);
}

void CA::CG::AccelQueue::will_draw(CA::CG::AccelDrawable **this)
{
  CA::CG::AccelDrawable::detach_providers(this[21], 0);
  if (CA::CG::release_queue(void)::once != -1)
  {
    dispatch_once(&CA::CG::release_queue(void)::once, &__block_literal_global_19);
  }

  v1 = CA::CG::release_queue(void)::queue;

  dispatch_sync(v1, &__block_literal_global_13);
}

void CA::CG::AccelQueue::~AccelQueue(CA::CG::AccelQueue *this)
{
  CA::CG::AccelQueue::~AccelQueue(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1F4CE0;
  v2 = (this + 176);
  os_unfair_lock_lock(&CA::CG::AccelRenderer::_list_lock);
  for (i = CA::CG::AccelRenderer::_list; i; i = *(i + 4320))
  {
    if (*(i + 4288) == v2)
    {
      *v2 = 0;
      *(i + 4288) = 0;
    }
  }

  os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
  v4 = *(this + 23);
  if (v4)
  {
    CFRelease(v4);
  }

  *this = &unk_1EF1F3D00;
  v5 = *(this + 1);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (atomic_fetch_add(CA::CG::Queue::_queue_count, 0xFFFFFFFF) == 1 && CA::CG::Queue::_free_slabs != 0)
  {
    os_unfair_lock_lock(&CA::CG::Queue::_free_lock);
    v7 = CA::CG::Queue::_free_slabs;
    CA::CG::Queue::_free_slabs = 0;
    os_unfair_lock_unlock(&CA::CG::Queue::_free_lock);
    if (v7)
    {
      do
      {
        v8 = *v7;
        munmap(v7, v7[1]);
        v7 = v8;
      }

      while (v8);
    }
  }

  pthread_mutex_destroy((this + 56));
  pthread_cond_destroy((this + 120));
  v9 = *(this + 2);
  if (v9)
  {
    CA::CG::TransparencyLayer::unref(v9);
  }
}

uint64_t CA::CG::AccelQueue::AccelQueue(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1EF1F3D00;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  atomic_fetch_add(CA::CG::Queue::_queue_count, 1u);
  if ((CA::CG::Queue::should_disable_async(void)::initialized & 1) == 0)
  {
    v4 = getenv("CA_DISABLE_ASYNC");
    if (v4 && atoi(v4))
    {
      CA::CG::Queue::_disable_async = 1;
    }

    CA::CG::Queue::should_disable_async(void)::initialized = 1;
  }

  if (CA::CG::Queue::Queue(void)::onceToken != -1)
  {
    dispatch_once(&CA::CG::Queue::Queue(void)::onceToken, &__block_literal_global_180);
  }

  pthread_mutex_init((a1 + 56), 0);
  pthread_cond_init((a1 + 120), 0);
  *a1 = &unk_1EF1F4CE0;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  if ((CA::CG::AccelQueue::AccelQueue(CA::CG::AccelDrawable &)::initialized & 1) == 0)
  {
    v5 = getenv("CA_NO_ACCEL");
    if (v5)
    {
      CA::CG::AccelQueue::AccelQueue(CA::CG::AccelDrawable &)::no_accel = atoi(v5) != 0;
    }

    CA::CG::AccelQueue::AccelQueue(CA::CG::AccelDrawable &)::initialized = 1;
  }

  v6 = CA::CG::AccelQueue::AccelQueue(CA::CG::AccelDrawable &)::no_accel;
  *(a1 + 201) = CA::CG::AccelQueue::AccelQueue(CA::CG::AccelDrawable &)::no_accel ^ 1;
  if ((v6 & 1) == 0)
  {
    v7 = *(a2 + 16);
    if (v7 > 0x23 || ((1 << v7) & 0xA0026660ALL) == 0)
    {
      *(a1 + 201) = 0;
    }
  }

  return a1;
}

uint64_t CABackingStoreIsPurged(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 400);
  if (!v1 || (*(v1 + 65) & 1) != 0)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v2 + 12);
    if ((v3 & 0x400) != 0)
    {
      if ((v3 & 0x1000) != 0)
      {
        v8 = 0;
        v4 = 1;
        if (!MEMORY[0x1865EC190](*MEMORY[0x1E69E9A60], *(v2 + 24) & -*MEMORY[0x1E69E9AC8], 1, &v8))
        {
          return v8 == 2;
        }

        return v4;
      }

      return 1;
    }

    return 0;
  }

  v5 = *(v1 + 24);
  if (!v5)
  {
    return 1;
  }

  if (v5[68] != 1)
  {
    return 0;
  }

  v6 = *(*v5 + 96);

  return v6();
}

uint64_t CABackingStoreBeginUpdateWithFormat(unint64_t a1, unint64_t a2, unint64_t a3, CA *a4, unsigned int a5)
{
  v15[3] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 16));
  v10 = *(a1 + 480);
  if (v10)
  {
    if (v10 == pthread_self())
    {
      goto LABEL_17;
    }

    while (*(a1 + 480))
    {
      pthread_cond_wait((a1 + 80), (a1 + 16));
    }
  }

  memset(v15, 0, 24);
  if (*(a1 + 408))
  {
    __assert_rtn("CABackingStoreBeginUpdateWithFormat", "CABackingStore.cpp", 1434, "!CABackStoreIsUpdating_ (b)");
  }

  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  if (CABackingStorePrepareUpdates_(a1, a2, a3, a4, a5, 0, 0, 0, v15))
  {
    v11 = *(*(a1 + 408) + 16);
    if (v11 && *(*(v11 + 24) + 32) != 1)
    {
      __assert_rtn("CABackingStoreBeginUpdateWithFormat", "CABackingStore.cpp", 1444, "levels == 1");
    }

    CABackingStoreBeginUpdate_(a1, a2, a3, a4, a5, 0, 0, 0, v15);
    if (*(a1 + 416))
    {
      *(a1 + 480) = pthread_self();
    }

    else
    {
      v12 = *(a1 + 408);
      if (*(a1 + 448))
      {
        CGSReleaseRegion();
        *(a1 + 448) = 0;
      }

      if (*(a1 + 456))
      {
        CGSReleaseRegion();
      }

      CABackingStoreReleaseImages(a1);
      *(v12 + 56) = 0;
      *(v12 + 48) = 0;
      *(a1 + 472) = 0;
      *(a1 + 492) = 6;
      *(a1 + 408) = 0;
    }
  }

LABEL_17:
  v13 = *(a1 + 416);
  pthread_mutex_unlock((a1 + 16));
  return v13;
}

uint64_t CABackingStoreEndUpdate(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 408);
  if (!v2)
  {
    __assert_rtn("CABackingStoreEndUpdate", "CABackingStore.cpp", 1474, "CABackStoreIsUpdating_ (b)");
  }

  *(a1 + 480) = 0;
  v3 = *(a1 + 416);
  if (v3)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = *(v4 + 24);
      if ((*(a1 + 492) & 0x1000) != 0)
      {
        MEMORY[0x1865EA9A0]();
      }

      else
      {
        CAReleaseCachedCGContext(v3);
      }

      *(a1 + 416) = 0;
      atomic_fetch_add((v5 + 4), 1u);
    }

    else if (*(v2 + 24))
    {
      CAReleaseCachedCGContext(v3);
      *(a1 + 416) = 0;
      *(a1 + 492) |= 0x800u;
    }
  }

  v6 = *(a1 + 408);
  if (*(a1 + 448))
  {
    CGSReleaseRegion();
    *(a1 + 448) = 0;
  }

  if (*(a1 + 456))
  {
    CGSReleaseRegion();
  }

  CABackingStoreReleaseImages(a1);
  *(v6 + 56) = 0;
  *(v6 + 48) = 0;
  *(a1 + 472) = 0;
  *(a1 + 492) = 6;
  *(a1 + 408) = 0;
  pthread_cond_broadcast((a1 + 80));

  return pthread_mutex_unlock((a1 + 16));
}

CA::Shape *CA::Render::Texture::set_dirty_shape(CA::Render::Texture *this, CA::Shape *a2)
{
  result = *(this + 6);
  if (result != a2)
  {
    if (result)
    {
      CA::Shape::unref(result);
    }

    if (a2)
    {
      result = CA::Shape::ref(a2, a2);
    }

    else
    {
      result = 0;
    }

    *(this + 6) = result;
  }

  return result;
}

CGImageRef CABackingStoreCopyCGImage(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 492);
  if ((v2 & 0x100) != 0)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v3 = *(a1 + 432);
  if (!v3)
  {
    v4 = *(a1 + 400);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = CA::Render::Shmem::copy_cgimage(v5, *(v4 + 8), *(a1 + 128), *(a1 + 136));
    }

    else
    {
      v9 = *(v4 + 24);
      if (!v9)
      {
        goto LABEL_6;
      }

      if ((*(a1 + 492) & 0x800) != 0)
      {
        v10 = *(v9 + 72);
        if (v10)
        {
          CA::CG::Queue::flush(v10, 3, 1);
          v2 = *(a1 + 492);
        }

        *(a1 + 492) = v2 & 0xF7FF;
      }

      v11 = *(v9 + 16);
      if (v11 > 0x23 || ((0x1FFFFFF2FuLL >> v11) & 1) != 0)
      {
        v6 = CA::CG::IOSurfaceDrawable::copy_cgimage(v9);
      }

      else
      {
        v6 = CA::CG::IOSurfaceDrawable::copy_cgimage_iosurface(v9);
      }
    }

    *(a1 + 432) = v6;
LABEL_6:
    CGImageSetHeadroom();
    v3 = *(a1 + 432);
  }

  v7 = CGImageRetain(v3);
LABEL_9:
  pthread_mutex_unlock((a1 + 16));
  return v7;
}

CGColorRef CABackingStoreCopyTintColor(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if ((*(a1 + 492) & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = CGColorRetain(*(*(a1 + 400) + 32));
  }

  pthread_mutex_unlock((a1 + 16));
  return v2;
}

CGColorSpaceRef CABackingStoreCopyColorSpace(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if ((*(a1 + 492) & 0x100) != 0)
  {
    v3 = 0;
  }

  else
  {
    v2 = *(*(a1 + 400) + 8);
    if (!v2)
    {
      v2 = *(a1 + 160);
    }

    v3 = CGColorSpaceRetain(v2);
  }

  pthread_mutex_unlock((a1 + 16));
  return v3;
}

void CABackingStoreCollectBlocking()
{
  v0 = mach_absolute_time();
  v1 = CATimeWithHostTime(v0);
  CA::Render::post_notification(0x32u, 0, 0, 0);
  CA::Render::collect(1, v1);
  v2 = v1 + 1.0;
  if (buffer_list)
  {
    v3 = v1 < v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = 0.0166666667;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v6 = CABackingStoreCollect_(v1, 1);
      v7 = *(StatusReg + 576);
      if (!v7)
      {
        v7 = CA::Transaction::create(0);
      }

      if (!**(v7 + 15))
      {
        CA::Transaction::ensure_implicit(v7, 1);
      }

      v8 = *(StatusReg + 576);
      if (v8 && **(v8 + 15))
      {
        CA::Transaction::flush(v8);
      }

      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      for (i = v4 + v1 >= v2 ? v2 : v4 + v1; v1 < i; v1 = CATimeWithHostTime(v10))
      {
        usleep(1000 * ((i - v1) * 1000.0));
        v10 = mach_absolute_time();
      }

      v4 = v4 + v4;
    }

    while (v1 < v2);
  }
}

__CFString *backingStoreCopyDebugDescription(char *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<CABackingStore %p", a1);
  pthread_mutex_lock((a1 + 16));
  for (i = *(a1 + 50); i; i = *i)
  {
    v4 = i[2];
    if (v4)
    {
      v5 = *(v4 + 24);
      v6 = v5[3];
      v7 = "UNKNOWN";
      if (v6 <= 0x23)
      {
        v7 = off_1E6DEC8E8[v6];
      }

      v9 = v5[4];
      v8 = v5[5];
      if ((*(v4 + 12) & 0x400) != 0)
      {
        v10 = " volatile";
      }

      else
      {
        v10 = "";
      }

      CFStringAppendFormat(Mutable, 0, @" (buffer [%d %d] %s%s)", v9, v8, v7, v10, v18);
    }

    else
    {
      v11 = i[3];
      if (v11)
      {
        v12 = (*(*v11 + 24))(i[3]);
        ID = IOSurfaceGetID(v12);
        v14 = *(v11 + 16);
        v15 = "UNKNOWN";
        if (v14 <= 0x23)
        {
          v15 = off_1E6DEC8E8[v14];
        }

        if (*(v11 + 68))
        {
          v16 = " volatile";
        }

        else
        {
          v16 = "";
        }

        CFStringAppendFormat(Mutable, 0, @" (surface 0x%x [%d %d] %s%s)", ID, *(v11 + 44), *(v11 + 48), v15, v16);
      }
    }
  }

  CFStringAppend(Mutable, @">");
  pthread_mutex_unlock((a1 + 16));
  return Mutable;
}

uint64_t ___ZL20backingStoreFinalizePKv_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (**v2)(v2);
    result = (*(*v2 + 16))(v2);
  }

  v3 = *(v1 + 40);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (**v3)(v3);
    result = (*(*v3 + 16))(v3);
  }

  v4 = *(v1 + 48);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (**v4)(v4);
    v5 = *(*v4 + 16);

    return v5(v4);
  }

  return result;
}

void memory_warning(CA::DispatchGroup *this, void (*a2)(void *), void *a3)
{
  if (buffer_list)
  {
    v3 = 0;
    atomic_compare_exchange_strong(pending_async_collect, &v3, 1u);
    if (!v3)
    {
      CA::DispatchGroup::enqueue(this, a2, a3);
    }
  }
}

uint64_t CABackingStoreGetTypeID()
{
  if (CABackingStoreGetTypeID::once[0] != -1)
  {
    dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
  }

  return CABackingStoreGetTypeID::type;
}

void sub_183C4AEF4(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&parser_mutex);
  objc_autoreleasePoolPop(v1);
  _Unwind_Resume(a1);
}

char *CA::Render::ImageQueue::show(uint64_t a1, X::Stream *this, int a3, uint64_t a4)
{
  result = CAShmemImageQueueShow(this, *(*(a1 + 16) + 24), *(a1 + 444), BYTE1(*(a1 + 12)), a3, a4);
  if (a4)
  {
    return result;
  }

  v9 = (a3 + 1);
  result = X::Stream::printf(this, "\n%*s", 2 * v9, "");
  v10 = *(a1 + 24);
  if (v10)
  {
    X::Stream::printf(this, "(currentTexture ");
    (*(*v10 + 40))(v10, this, (a3 + 1), a4);
    result = X::Stream::printf(this, ")");
    v11 = *(a1 + 80);
    if (!v11)
    {
      return result;
    }

    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(currentForwardDMTexture ");
    (*(*v11 + 40))(v11, this, (a3 + 1), a4);
    goto LABEL_12;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 24);
    v14 = *(v12 + 32);
    if (v14 && v13 != 0)
    {
      X::Stream::printf(this, "(blendedTextures");
      X::Stream::printf(this, "\n%*s", 2 * a3 + 4, "");
      (*(*v14 + 40))(v14, this, v9, a4);
      X::Stream::printf(this, "\n%*s", 2 * a3 + 4, "");
      (*(*v13 + 40))(v13, this, v9, a4);
      X::Stream::printf(this, "\n%*s", 2 * v9, "");
LABEL_12:

      return X::Stream::printf(this, ")");
    }
  }

  return result;
}

uint64_t CA::Render::ImageQueue::retain_scaler_stats(CA::Render::ImageQueue *this, uint64_t a2)
{
  if (BYTE1(xmmword_1ED4E980C))
  {
    result = 0;
  }

  else
  {
    result = *(a2 + 432);
    if (!result)
    {
      operator new();
    }

    atomic_fetch_add((result + 8), 1u);
  }

  *this = result;
  return result;
}

uint64_t CA::Render::ImageQueue::flush_cache(CA::Render::ImageQueue *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }

    *(this + 3) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    *(this + 4) = 0;
  }

  *(this + 5) = 0x7FF0000000000000;
  *(this + 6) = 0;
  *(this + 113) = 0;
  v4 = *(this + 8);
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    *(this + 8) = 0;
  }

  v5 = *(this + 10);
  if (v5)
  {
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    *(this + 10) = 0;
  }

  *(this + 404) = 0;
  *(this + 88) = xmmword_183E20F30;
  *(this + 104) = xmmword_183E20F40;
  *(this + 15) = 0;
  *(this + 8) = xmmword_183E20F20;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 156) = 0x100000001;
  *(this + 164) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0x3F80000000000000;
  *(this + 212) = 0;
  *(this + 204) = 0;
  *(this + 55) = -1;
  *(this + 228) = xmmword_183E20E10;
  *(this + 244) = xmmword_183E20F10;
  *(this + 260) = 1065353216;
  *(this + 67) = 0;
  *(this + 17) = xmmword_183E20F20;
  *(this + 74) = 0;
  *(this + 36) = 0;
  *(this + 300) = 0x100000001;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 340) = 0x3F80000000000000;
  *(this + 348) = 0;
  *(this + 356) = 0;
  *(this + 364) = 0x3F800000FFFFFFFFLL;
  v6 = *(this + 62);
  *(this + 62) = 0;
  if (v6)
  {
    CA::CASharedEvent::unref(v6);
  }

  result = *(this + 63);
  *(this + 63) = 0;
  if (result)
  {
    result = CA::CASharedEvent::unref(result);
  }

  *(this + 3) = *(this + 3) & 0xFFFFF1FF | 0x600;
  return result;
}

uint64_t *X::Ref<CA::CASharedEvent>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      CA::CASharedEvent::unref(v3);
      v4 = *a2;
    }

    if (v4)
    {
      atomic_fetch_add((v4 + 128), 1u);
    }

    *a1 = v4;
  }

  return a1;
}

CA::Shape **X::Ref<CA::Shape>::operator=(CA::Shape **a1, CA::Shape *this)
{
  v3 = *a1;
  if (v3 != this)
  {
    if (v3)
    {
      CA::Shape::unref(v3);
    }

    if (this)
    {
      v5 = CA::Shape::ref(this, this);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return a1;
}

uint64_t CA::Render::display_tonemap_supports_pixel_format(CA::Render *this)
{
  v1 = 1;
  if (this > 1111970368)
  {
    if (this <= 1953903151)
    {
      if (this > 1885745711)
      {
        if (this > 1952854575)
        {
          if (this == 1952854576 || this == 1952854578)
          {
            return v1 & 1;
          }

          v4 = 1952855092;
        }

        else
        {
          if (this == 1885745712 || this == 1885745714)
          {
            return v1 & 1;
          }

          v4 = 1885746228;
        }
      }

      else if (this > 1882468911)
      {
        if (this == 1882468912 || this == 1882468914)
        {
          return v1 & 1;
        }

        v4 = 1882469428;
      }

      else
      {
        if (this == 1111970369 || this == 1647534392)
        {
          return v1 & 1;
        }

        v4 = 1815162994;
      }

      goto LABEL_66;
    }

    if (this <= 2016687215)
    {
      if (this > 2016686639)
      {
        if (this == 2016686640 || this == 2016686642)
        {
          return v1 & 1;
        }

        v4 = 2016687156;
      }

      else
      {
        if (this == 1953903152 || this == 1953903154)
        {
          return v1 & 1;
        }

        v4 = 1953903668;
      }

      goto LABEL_66;
    }

    if (this <= 2019963955)
    {
      if (this == 2016687216 || this == 2019963440)
      {
        return v1 & 1;
      }

      v2 = 12850;
    }

    else
    {
      if (this > 2037741157)
      {
        if (this == 2037741158)
        {
          return v1 & 1;
        }

        v4 = 2037741171;
        goto LABEL_66;
      }

      if (this == 2019963956)
      {
        return v1 & 1;
      }

      v2 = 13424;
    }

    v4 = v2 | 0x78660000;
LABEL_66:
    if (this == v4)
    {
      return v1 & 1;
    }

LABEL_68:
    v1 = 0;
    return v1 & 1;
  }

  if (this > 645424687)
  {
    if (this <= 875704421)
    {
      if ((this - 645424688) <= 4 && ((1 << (this - 48)) & 0x15) != 0)
      {
        goto LABEL_52;
      }

      v3 = -645428784;
      goto LABEL_25;
    }

    if (this > 875704949)
    {
      if (this == 875704950 || this == 875836518)
      {
        return v1 & 1;
      }

      v4 = 875836534;
    }

    else
    {
      if (this == 875704422 || this == 875704438)
      {
        return v1 & 1;
      }

      v4 = 875704934;
    }

    goto LABEL_66;
  }

  if (this > 643969847)
  {
    if (((this - 645162544) > 4 || ((1 << (this - 48)) & 0x15) == 0) && ((this - 645166640) > 4 || ((1 << (this - 48)) & 0x15) == 0) && this != 643969848)
    {
      goto LABEL_68;
    }

    goto LABEL_52;
  }

  if ((this - 641230384) <= 4 && ((1 << (this - 48)) & 0x15) != 0)
  {
    goto LABEL_52;
  }

  v3 = -641234480;
LABEL_25:
  v5 = this + v3;
  if (v5 > 4 || ((1 << v5) & 0x15) == 0)
  {
    goto LABEL_68;
  }

LABEL_52:
  if (CADeviceSupportsUniversalCompression::once != -1)
  {
    dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
  }

  v1 = CADeviceSupportsUniversalCompression::universal;
  return v1 & 1;
}

atomic_uint **X::Ref<CA::CAHDRProcessor>::operator=(atomic_uint **a1, atomic_uint *a2)
{
  v3 = *a1;
  if (v3 != a2)
  {
    if (v3 && atomic_fetch_add(v3 + 4, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 8))(v3);
    }

    if (a2)
    {
      atomic_fetch_add(a2 + 4, 1u);
    }

    *a1 = a2;
  }

  return a1;
}

uint64_t CA::Render::OnDemandTonemapCfg::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 != *a2)
  {
    if (v4)
    {
      if (atomic_fetch_add(v4 + 4, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = *a2;
    }

    if (v5)
    {
      atomic_fetch_add(v5 + 4, 1u);
    }

    *a1 = v5;
  }

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v8;
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
  v9 = *(a2 + 88);
  v10 = *(a2 + 104);
  v11 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v11;
  *(a1 + 104) = v10;
  *(a1 + 88) = v9;
  return a1;
}

uint64_t CA::Render::LayerSubclass::copy@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (!atomic_fetch_add((this + 8), 1u))
  {
    atomic_fetch_add((this + 8), 0xFFFFFFFF);
  }

  *a2 = this;
  return this;
}

uint64_t CA::Render::anonymous namespace::create_image_levels(uint64_t this, unsigned int a2, unsigned int a3, CA *a4, unsigned __int16 *a5, char *a6, const unint64_t *a7)
{
  v10 = a3 - 1;
  v11 = (a6 + 8);
  do
  {
    v12 = a2;
    v13 = *(v11 - 1);
    v14 = (a5 + v13 * a2);
    if (this <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = this >> 1;
    }

    if (a2 <= 1)
    {
      a2 = 1;
    }

    else
    {
      a2 >>= 1;
    }

    CA::downsample_image(a4, a5, v13, this, v12, v14, *v11++, 0, 0.0, 0.0, v15, a2, v16);
    this = v15;
    a5 = v14;
    --v10;
  }

  while (v10);
  return this;
}

CFDictionaryRef ___ZN2CA6Render12_GLOBAL__N_123retain_provider_optionsEb_block_invoke()
{
  return result;
}

char *CA::Render::anonymous namespace::show_image_cache_entry(const void *a1, uint64_t a2, X::Stream *this)
{
  v5 = *(a2 + 40);
  v6 = "mipmaps ";
  if ((v5 & 1) == 0)
  {
    v6 = "";
  }

  v7 = "mask ";
  if ((v5 & 2) == 0)
  {
    v7 = "";
  }

  v8 = "transient ";
  if ((v5 & 4) == 0)
  {
    v8 = "";
  }

  v9 = "unmatched ";
  if ((v5 & 8) == 0)
  {
    v9 = "";
  }

  if ((v5 & 0x10) != 0)
  {
    v10 = "partial ";
  }

  else
  {
    v10 = "";
  }

  X::Stream::printf(this, "  %p deadline %f %s%s%s%s%s", a1, *(a2 + 32), v6, v7, v8, v9, v10);
  CA::Render::show_object(this, *(a2 + 24));

  return X::Stream::printf(this, "\n");
}

uint64_t write_attr(uint64_t result, uint64_t *a2, int a3, void *a4)
{
  if (a3 == 2)
  {
    v4 = *a2;
    if (*a2)
    {
      [a4 beginPropertyElement:CAAtomGetString(result)];
      [a4 encodeObject:v4];

      return [a4 endElement];
    }
  }

  return result;
}

{
  if (a3 == 2)
  {
    v4 = *a2;
    if (*a2)
    {
      [a4 beginPropertyElement:CAAtomGetString(result)];
      [a4 encodeObject:v4];

      return [a4 endElement];
    }
  }

  return result;
}

uint64_t copy_dictionary(uint64_t result, uint64_t *a2, int a3, void *a4)
{
  if ((a3 - 1) <= 3)
  {
    v4 = *a2;
    if (*a2)
    {
      String = CAAtomGetString(result);

      return [a4 setObject:v4 forKey:String];
    }
  }

  return result;
}

{
  if ((a3 - 1) <= 3)
  {
    v4 = *a2;
    if (*a2)
    {
      String = CAAtomGetString(result);

      return [a4 setObject:v4 forKey:String];
    }
  }

  return result;
}

_DWORD *set_flag(_DWORD *result, int a2, NSString *a3, int a4)
{
  if (((((result[6] & a2) == 0) ^ a4) & 1) == 0)
  {
    v8 = result;
    [result willChangeValueForKey:?];
    if (a4)
    {
      v9 = v8[6] | a2;
    }

    else
    {
      v9 = v8[6] & ~a2;
    }

    v8[6] = v9;
    v10 = *(v8 + 5);
    if (v10)
    {
      if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v10 + 16))(v10);
      }

      *(v8 + 5) = 0;
    }

    return [v8 didChangeValueForKey:a3];
  }

  return result;
}

void sub_183C4D244(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::CG::MetalContext::get_gpu_registry_id()
{
  Info = CGContextDelegateGetInfo();
  result = (*(*Info + 16))(Info);
  if (result)
  {
    return *(result + 192);
  }

  return result;
}

uint64_t CA::CG::MetalContext::set_gpu_registry_id(uint64_t a1, uint64_t a2)
{
  Info = CGContextDelegateGetInfo();
  result = (*(*Info + 16))(Info);
  if (result)
  {
    *(result + 192) = a2;
  }

  return result;
}

CGImageRef CA::CG::MetalContext::create_image_by_reference()
{
  v0 = *(CGContextDelegateGetInfo() + 344);

  return CA::CG::MetalDrawable::copy_cgimage_mtl(v0);
}

CGImageRef CA::CG::MetalContext::create_image()
{
  v0 = *(CGContextDelegateGetInfo() + 344);
  v1 = *(v0 + 4);
  if (v1 > 0x23 || ((0x1FFFFFF2FuLL >> v1) & 1) != 0)
  {

    return CA::CG::MetalDrawable::copy_cgimage(v0);
  }

  else
  {

    return CA::CG::MetalDrawable::copy_cgimage_mtl(v0);
  }
}

uint64_t CA::CG::MetalContext::create_delegate(uint64_t a1)
{
  if (CAIsAppSuspended::once != -1)
  {
    dispatch_once_f(&CAIsAppSuspended::once, 0, init_suspended);
  }

  atomic_load(is_suspended);
  v2 = [*(a1 + 16) pixelFormat];
  v3 = (v2 - 70) > 0x2D || ((1 << (v2 - 70)) & 0x200000000C03) == 0;
  if (!v3 || (v2 - 550) <= 5 && ((1 << (v2 - 38)) & 0x33) != 0)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      NumberOfComponents = CGColorSpaceGetNumberOfComponents(v4);
    }

    else
    {
      NumberOfComponents = 0;
    }

    v6 = CA::Render::coregraphics_image_format(NumberOfComponents, *(a1 + 32), *(a1 + 24), *(a1 + 48)) - 1;
    if (v6 > 0x14)
    {
      v7 = -1;
    }

    else
    {
      v7 = dword_183E31864[v6];
    }

    PixelFormat = CAMetalTextureGetPixelFormat(*(a1 + 16));
    if (PixelFormat == 1999843442 || PixelFormat == 1647534392)
    {
      v7 = CA::Render::fourcc_to_format(PixelFormat);
    }

    if (v7 != -1)
    {
      operator new();
    }
  }

  CGPostError();
  return 0;
}

CGColorSpace *CA::CG::AccelContextDelegate<CA::CG::MetalDrawable>::set_drawable(CGColorSpace *this, uint64_t a2)
{
  v2 = *(this + 43);
  if (v2 != a2)
  {
    v4 = this;
    if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (**v2)(v2);
      this = (*(*v2 + 16))(v2);
    }

    if (a2)
    {
      while (1)
      {
        v5 = *(a2 + 8);
        if (!v5)
        {
          break;
        }

        v6 = *(a2 + 8);
        atomic_compare_exchange_strong((a2 + 8), &v6, v5 + 1);
        if (v6 == v5)
        {
          v7 = a2;
          goto LABEL_12;
        }
      }

      v7 = 0;
LABEL_12:
      *(v4 + 344) = v7;
      *&v8 = *(a2 + 36);
      *(&v8 + 1) = *(a2 + 52);
      *(v4 + 16) = v8;
      v9 = *(a2 + 24);

      return CA::CG::ContextDelegate::set_colorspace(v4, v9);
    }

    else
    {
      *(v4 + 344) = 0;
    }
  }

  return this;
}

void CA::CG::AccelQueue::set_label(CA::CG::AccelQueue *this, CFTypeRef cf)
{
  v4 = *(this + 23);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 23) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

uint64_t CA::CG::AccelContextDelegate<CA::CG::MetalDrawable>::gpu_registry_id(uint64_t a1)
{
  v1 = *(*(a1 + 344) + 72);
  if (v1)
  {
    return *(v1 + 192);
  }

  else
  {
    return 0;
  }
}

uint64_t CA::CG::AccelContextDelegate<CA::CG::MetalDrawable>::queue(uint64_t a1)
{
  v1 = *(a1 + 344);
  if (!v1)
  {
    return 0;
  }

  result = v1[9];
  if (!result)
  {
    result = (*(*v1 + 80))(v1);
    v1[9] = result;
  }

  return result;
}

void CA::CG::MetalContextDelegate::~MetalContextDelegate(CA::CG::MetalContextDelegate *this)
{
  *this = &unk_1EF1F4ED0;
  v2 = *(this + 43);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (**v2)(v2);
    (*(*v2 + 16))(v2);
  }

  CA::CG::ContextDelegate::~ContextDelegate(this);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF1F4ED0;
  v2 = *(this + 43);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (**v2)(v2);
    (*(*v2 + 16))(v2);
  }

  CA::CG::ContextDelegate::~ContextDelegate(this);
}

void CA::CG::AccelContextDelegate<CA::CG::MetalDrawable>::~AccelContextDelegate(CA::CG::ContextDelegate *this)
{
  *this = &unk_1EF1F4ED0;
  v2 = *(this + 43);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (**v2)(v2);
    (*(*v2 + 16))(v2);
  }

  CA::CG::ContextDelegate::~ContextDelegate(this);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF1F4ED0;
  v2 = *(this + 43);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (**v2)(v2);
    (*(*v2 + 16))(v2);
  }

  CA::CG::ContextDelegate::~ContextDelegate(this);
}

void sub_183C4E998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9)
{
  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*a9 + 16))(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void *interpolatedMeshTransform(CAMeshTransform *a1, atomic_uint *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 12);
  if (v4 == 35)
  {
    v5 = [[CAMeshTransform alloc] _init];
    v5[1] = a2;
    goto LABEL_7;
  }

  if (v4 != 26)
  {
    return 0;
  }

  v5 = [(CAMeshTransform *)[CAMeshInterpolator alloc] _init];
  v5[5] = a2;
LABEL_7:
  if (!atomic_fetch_add(a2 + 2, 1u))
  {
    atomic_fetch_add(a2 + 2, 0xFFFFFFFF);
  }

  impl = a1->_impl;
  if (impl)
  {
    v8 = impl[25];
    v5[2] = impl[24];
    v5[3] = v8;
    *(v5 + 32) = *(impl + 108);
    *(v5 + 33) = *(impl + 109);
  }

  return v5;
}

BOOL setDepthNormalization(CAMeshTransform *a1, NSString *a2)
{
  result = [(NSString *)a2 isEqualToString:@"width"];
  if (result)
  {
    LODWORD(v5) = 2;
    a1->_normalization = 2;
  }

  else
  {
    result = [(NSString *)a2 isEqualToString:@"height"];
    if (result)
    {
      v5 = 3;
    }

    else
    {
      result = [(NSString *)a2 isEqualToString:@"min"];
      if (result)
      {
        v5 = 4;
      }

      else
      {
        result = [(NSString *)a2 isEqualToString:@"max"];
        if (result)
        {
          v5 = 5;
        }

        else
        {
          result = [(NSString *)a2 isEqualToString:@"average"];
          if (result)
          {
            v5 = 6;
          }

          else
          {
            v5 = 1;
          }
        }
      }
    }

    a1->_normalization = v5;
  }

  impl = a1->_impl;
  if (impl)
  {
    subdivisionSteps = a1->_subdivisionSteps;
    impl[24] = v5;
    impl[25] = subdivisionSteps;
    *(impl + 108) = a1->_replicatesEdges;
    *(impl + 109) = a1->_preallocatesBounds;
  }

  return result;
}

void sub_183C4F144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*a10 + 16))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_183C4F648(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::MeshVertex>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::MeshFace>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

char *x_dtostr_(char *a1, unint64_t a2, char a3, double a4, double a5)
{
  v5 = a4;
  v40 = *MEMORY[0x1E69E9840];
  if (a5 <= 0.0)
  {
    v6 = 0.000001;
  }

  else
  {
    v6 = a5;
  }

  if (a2 < 8)
  {
    return 0;
  }

  if (a4 >= 0.0)
  {
    v11 = a1;
  }

  else
  {
    *a1 = 45;
    v11 = a1 + 1;
    v5 = -a4;
  }

  if (v5 == 0.0)
  {
    goto LABEL_10;
  }

  v16 = fabs(v5);
  if (v16 == INFINITY)
  {
    v17 = "Inf";
  }

  else
  {
    if (v16 >= 2.22507386e-308)
    {
LABEL_10:
      __e = 0;
      if (v5 <= 0.0)
      {
        goto LABEL_34;
      }

      if (v5 >= 0.01 && v5 <= 100.0)
      {
        v13 = 0;
        v15 = v5;
        v14 = v6;
      }

      else
      {
        frexp(v5, &__e);
        v13 = llround(__e * 0.301029996);
        v14 = pow_10(v13) * v6;
        v15 = pow_10(-v13) * v5;
      }

      v18 = v6 * 0.5;
      v19 = v15 + v6 * 0.5;
      if (v19 >= 10.0)
      {
        do
        {
          ++v13;
          v15 = v15 * 0.1;
          v14 = v14 * 10.0;
          v19 = v15 + v18;
        }

        while (v15 + v18 >= 10.0);
      }

      if (v19 < 1.0)
      {
        do
        {
          --v13;
          v15 = v15 * 10.0;
          v14 = v14 * 0.1;
        }

        while (v15 + v18 < 1.0);
      }

      __e = v13;
      if (v13 >= 0)
      {
        v20 = v13;
      }

      else
      {
        v20 = -v13;
      }

      if (v20 > 3)
      {
        v14 = v6;
        v5 = v15;
        goto LABEL_35;
      }

      __e = 0;
      if (v14 >= v6)
      {
LABEL_34:
        v14 = v6;
      }

LABEL_35:
      v21 = &a1[a2];
      v22 = v5 + v14 * 0.5;
      v23 = floor(v22);
      if (v23 > v14)
      {
        v24 = 1;
        v25 = v23;
        result = v11;
        while (result != v21)
        {
          v26 = v24;
          v27 = v25 * 0.1 + 0.05;
          v25 = floor(v27);
          *result++ = ((v27 - v25) * 10.0) + 48;
          ++v24;
          if (v25 <= v14)
          {
            if (result - v11 >= 2)
            {
              v28 = -1;
              do
              {
                v29 = result[v28];
                result[v28] = *v11;
                *v11++ = v29;
                v26 -= 2;
                --v28;
              }

              while (v26 > 1);
            }

            goto LABEL_44;
          }
        }

        return 0;
      }

      *v11 = 48;
      result = v11 + 1;
LABEL_44:
      v30 = v22 - v23;
      if (v30 > v14)
      {
        if (result != v21)
        {
          *result++ = 46;
          while (result != v21)
          {
            v31 = v30 * 10.0;
            *result++ = vcvtmd_s64_f64(v31) + 48;
            v30 = v31 - floor(v31);
            v14 = v14 * 10.0;
            if (v30 <= v14)
            {
              goto LABEL_53;
            }
          }
        }

        return 0;
      }

      v32 = __e;
      if (!(__e | a3 & 1))
      {
        if (v21 - result < 2)
        {
          return 0;
        }

        *result = 12334;
        result += 2;
LABEL_53:
        v32 = __e;
      }

      if (v32)
      {
        if (v21 - result < 3)
        {
          return 0;
        }

        *result = 101;
        v33 = result + 1;
        v34 = __e;
        if (__e < 0)
        {
          v33 = result + 2;
          result[1] = 45;
          v34 = -__e;
          __e = -__e;
        }

        result = v33;
        if (v34 >= 1)
        {
          result = v33;
          while (result != v21)
          {
            *result++ = (v34 % 0xAu) | 0x30;
            v35 = __e;
            v34 = __e / 10;
            __e /= 10;
            if (v35 <= 9)
            {
              goto LABEL_62;
            }
          }

          return 0;
        }

LABEL_62:
        v36 = result - v33;
        if (result - v33 >= 2)
        {
          v37 = -1;
          do
          {
            v38 = result[v37];
            result[v37] = *v33;
            *v33++ = v38;
            v36 -= 2;
            --v37;
          }

          while (v36 > 1);
        }
      }

      if (result != v21)
      {
        *result = 0;
        return result;
      }

      return 0;
    }

    v17 = "0";
  }

  return stpcpy(v11, v17);
}

uint64_t CA::Render::coregraphics_image_format(CA::Render *this, int a2, int a3, int a4)
{
  if (!this && a2 == 8 && a3 == 8)
  {
    if (a4 == 7)
    {
      return 9;
    }

    return 0xFFFFFFFFLL;
  }

  if (this == 1 && a2 == 8 && a3 == 8)
  {
    if (!a4)
    {
      return 10;
    }

    return 0xFFFFFFFFLL;
  }

  if (this == 1 && a2 == 16 && a3 == 8)
  {
    if (a4 == 1)
    {
      return 18;
    }

    return 0xFFFFFFFFLL;
  }

  if (this == 3 && a2 == 32 && a3 == 8)
  {
    result = 0;
    if (a4 > 8196)
    {
      if (a4 <= 16385)
      {
        if (a4 == 8197)
        {
          return 16;
        }

        if (a4 == 8198)
        {
          return 3;
        }

        if (a4 != 16385)
        {
          return 0xFFFFFFFFLL;
        }

        return 11;
      }

      if (a4 == 16386)
      {
        return result;
      }

      if (a4 == 16389)
      {
        return 12;
      }

      if (a4 != 16390)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (a4 <= 5)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            return result;
          }

          if (a4 != 5)
          {
            return 0xFFFFFFFFLL;
          }

          return 12;
        }

        return 11;
      }

      if (a4 != 6)
      {
        if (a4 == 8193)
        {
          return 15;
        }

        if (a4 == 8194)
        {
          return 1;
        }

        return 0xFFFFFFFFLL;
      }
    }

    return 2;
  }

  if (this == 3 && a2 == 64 && a3 == 16)
  {
    if (a4 > 4352)
    {
      if (a4 == 4353)
      {
        return 13;
      }

      if (a4 == 4357)
      {
        return 17;
      }
    }

    else
    {
      if (a4 == 4097)
      {
        return 21;
      }

      if (a4 == 4101)
      {
        return 22;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (this == 3 && a2 == 128 && a3 == 32)
  {
    if (a4 == 8449)
    {
      return 14;
    }

    return 0xFFFFFFFFLL;
  }

  if (this != 3 || a2 != 16 || a3 != 5)
  {
    if (this == 4 && a2 == 32 && a3 == 8)
    {
      return 29;
    }

    return 0xFFFFFFFFLL;
  }

  result = 4;
  if (a4 != 6 && a4 != 12294)
  {
    if (a4 == 4102)
    {
      return 5;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CA::Render::format_opaque_format(uint64_t this)
{
  if (this <= 12)
  {
    switch(this)
    {
      case 0:
        return 2;
      case 1:
        return 3;
      case 0xB:
        return 12;
    }

    return 0xFFFFFFFFLL;
  }

  if (this > 17)
  {
    if (this == 18)
    {
      return 19;
    }

    if (this == 21)
    {
      return 22;
    }

    return 0xFFFFFFFFLL;
  }

  if (this == 13)
  {
    return 17;
  }

  if (this != 16)
  {
    return 0xFFFFFFFFLL;
  }

  return this;
}

uint64_t CA::Render::format_opacity_at_value(CA::Render *this, __int16 *a2, float *a3, float *a4, float a5)
{
  v5 = this;
  result = 0;
  switch(v5)
  {
    case 0:
    case 8:
    case 9:
    case 15:
      LOBYTE(a5) = *a2;
      goto LABEL_11;
    case 1:
    case 11:
      LOBYTE(a5) = *(a2 + 3);
      goto LABEL_11;
    case 13:
      _H0 = a2[3];
      goto LABEL_16;
    case 14:
      _S0 = *(a2 + 3);
      goto LABEL_17;
    case 18:
      LOBYTE(a5) = *(a2 + 1);
LABEL_11:
      v9 = LODWORD(a5);
      v10 = 0.0039216;
      goto LABEL_12;
    case 21:
      LOWORD(a5) = a2[3];
      goto LABEL_9;
    case 23:
      _H0 = *a2;
      goto LABEL_16;
    case 24:
      _S0 = *a2;
      goto LABEL_17;
    case 27:
      LOWORD(a5) = a2[1];
LABEL_9:
      v9 = LODWORD(a5);
      v10 = 0.000015259;
LABEL_12:
      _S0 = v9 * v10;
      goto LABEL_17;
    case 28:
      _H0 = a2[1];
LABEL_16:
      __asm { FCVT            S0, H0 }

      goto LABEL_17;
    case 34:
      _S0 = ((a2[3] >> 6) - 384) * 0.00196078431;
LABEL_17:
      *a3 = _S0;
      result = 1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CA::Render::format_red_component_at_value(CA::Render *this, _BYTE *a2, float *a3, float *a4, float a5)
{
  v5 = this;
  result = 0;
  if (v5 <= 12)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        LOBYTE(a5) = a2[2];
      }

      else
      {
        if (v5 != 11)
        {
          return result;
        }

        LOBYTE(a5) = *a2;
      }
    }

    else
    {
      LOBYTE(a5) = a2[1];
    }

    v7 = LODWORD(a5);
    v8 = 0.0039216;
LABEL_14:
    _S0 = v7 * v8;
    goto LABEL_15;
  }

  if (v5 != 13)
  {
    if (v5 == 14)
    {
      _S0 = *a2;
      goto LABEL_15;
    }

    if (v5 != 21)
    {
      return result;
    }

    LOWORD(a5) = *a2;
    v7 = LODWORD(a5);
    v8 = 0.000015259;
    goto LABEL_14;
  }

  _H0 = *a2;
  __asm { FCVT            S0, H0 }

LABEL_15:
  *a3 = _S0;
  return 1;
}

uint64_t CA::Render::fourcc_packed_from_unpacked(CA::Render *this)
{
  v1 = this;
  if (this > 2016686639)
  {
    result = 1882468912;
    if (v1 > 2019963439)
    {
      switch(v1)
      {
        case 2019963440:
          return 1885745712;
        case 2019963442:
          return 1885745714;
        case 2019963956:
          return 1885746228;
      }
    }

    else
    {
      switch(v1)
      {
        case 2016686640:
          return result;
        case 2016686642:
          return 1882468914;
        case 2016687156:
          return 1882469428;
      }
    }
  }

  else
  {
    if (this <= 1953903151)
    {
      if (this != 1952854576)
      {
        if (this == 1952854578)
        {
          return 1886676530;
        }

        if (this == 1952855092)
        {
          return 1886676532;
        }

        return 0;
      }

      v3 = 26160;
      return v3 | 0x70740000u;
    }

    switch(this)
    {
      case 0x74763230:
        return 1886680624;
      case 0x74763232:
        v3 = 30258;
        return v3 | 0x70740000u;
      case 0x74763434:
        return 1886680628;
    }
  }

  return 0;
}

uint64_t CA::Render::fourcc_unpacked_from_packed(CA::Render *this)
{
  v1 = this;
  if (this <= 1886676527)
  {
    result = 2016686640;
    if (v1 <= 1885745711)
    {
      switch(v1)
      {
        case 1882468912:
          return result;
        case 1882468914:
          return 2016686642;
        case 1882469428:
          return 2016687156;
      }

      return 0;
    }

    if (v1 == 1885745712)
    {
      return 2019963440;
    }

    if (v1 == 1885745714)
    {
      return 2019963442;
    }

    if (v1 != 1885746228)
    {
      return 0;
    }

    v3 = 2019963442;
    return (v3 + 514);
  }

  if (this <= 1886680623)
  {
    switch(this)
    {
      case 0x70746630:
        return 1952854576;
      case 0x70746632:
        return 1952854578;
      case 0x70746634:
        return 1952855092;
    }

    return 0;
  }

  switch(this)
  {
    case 0x70747630:
      return 1953903152;
    case 0x70747632:
      return 1953903154;
    case 0x70747634:
      v3 = 1953903154;
      return (v3 + 514);
  }

  return 0;
}

uint64_t CA::Render::fourcc_is_422(CA::Render *this)
{
  v1 = this;
  result = 1;
  if (v1 > 875704949)
  {
    if (v1 > 1952854577)
    {
      if (v1 > 2084070961)
      {
        if (v1 > 2088003121)
        {
          if (v1 > 2088265265)
          {
            if (v1 == 2088265266)
            {
              return result;
            }

            v3 = 2088269362;
          }

          else
          {
            if (v1 == 2088003122)
            {
              return result;
            }

            v3 = 2088007218;
          }
        }

        else if (v1 > 2087937585)
        {
          if (v1 == 2087937586)
          {
            return result;
          }

          v3 = 2087941682;
        }

        else
        {
          if (v1 == 2084070962)
          {
            return result;
          }

          v3 = 2084075058;
        }

        goto LABEL_90;
      }

      if (v1 > 2016567607)
      {
        if (v1 > 2016686641)
        {
          if (v1 == 2016686642)
          {
            return result;
          }

          v3 = 2019963442;
        }

        else
        {
          if (v1 == 2016567608)
          {
            return result;
          }

          v3 = 2016567667;
        }

        goto LABEL_90;
      }

      if (v1 != 1952854578 && v1 != 1953903154)
      {
        v3 = 1983013176;
        goto LABEL_90;
      }
    }

    else
    {
      if (v1 > 1882468913)
      {
        if (v1 > 1932681586)
        {
          if (v1 > 1937125937)
          {
            if (v1 == 1937125938)
            {
              return result;
            }

            v3 = 1949458803;
          }

          else
          {
            if (v1 == 1932681587)
            {
              return result;
            }

            v3 = 1936077362;
          }
        }

        else if (v1 > 1886676529)
        {
          if (v1 == 1886676530)
          {
            return result;
          }

          v3 = 1886680626;
        }

        else
        {
          if (v1 == 1882468914)
          {
            return result;
          }

          v3 = 1885745714;
        }

        goto LABEL_90;
      }

      if (v1 > 1534354993)
      {
        if (v1 > 1534617137)
        {
          if (v1 == 1534617138)
          {
            return result;
          }

          v3 = 1534621234;
        }

        else
        {
          if (v1 == 1534354994)
          {
            return result;
          }

          v3 = 1534359090;
        }

        goto LABEL_90;
      }

      if (v1 != 875704950 && v1 != 1530422834)
      {
        v3 = 1530426930;
        goto LABEL_90;
      }
    }
  }

  else if (v1 > 762537521)
  {
    if (v1 > 792229425)
    {
      if (v1 > 796161585)
      {
        if (v1 > 796423729)
        {
          if (v1 == 796423730)
          {
            return result;
          }

          v3 = 875704934;
        }

        else
        {
          if (v1 == 796161586)
          {
            return result;
          }

          v3 = 796419634;
        }
      }

      else if (v1 > 796096049)
      {
        if (v1 == 796096050)
        {
          return result;
        }

        v3 = 796157490;
      }

      else
      {
        if (v1 == 792229426)
        {
          return result;
        }

        v3 = 796091954;
      }

      goto LABEL_90;
    }

    if (v1 > 762607153)
    {
      if (v1 > 762869297)
      {
        if (v1 == 762869298)
        {
          return result;
        }

        v3 = 792225330;
      }

      else
      {
        if (v1 == 762607154)
        {
          return result;
        }

        v3 = 762865202;
      }

      goto LABEL_90;
    }

    if (v1 != 762537522 && v1 != 762541618)
    {
      v3 = 762603058;
      goto LABEL_90;
    }
  }

  else
  {
    if (v1 > 645166641)
    {
      if (v1 > 645424689)
      {
        if (v1 > 758670897)
        {
          if (v1 == 758670898)
          {
            return result;
          }

          v3 = 758674994;
          goto LABEL_90;
        }

        if (v1 == 645424690)
        {
          return result;
        }

        v5 = 30258;
      }

      else
      {
        if (v1 <= 645411383)
        {
          if (v1 == 645166642)
          {
            return result;
          }

          v3 = 645280312;
          goto LABEL_90;
        }

        if (v1 == 645411384)
        {
          return result;
        }

        v5 = 12915;
      }

      v3 = v5 | 0x26780000;
LABEL_90:
      if (v1 != v3)
      {
        return 0;
      }

      return result;
    }

    if (v1 > 645097009)
    {
      if (v1 > 645149298)
      {
        if (v1 == 645149299)
        {
          return result;
        }

        v3 = 645162546;
        goto LABEL_90;
      }

      if (v1 == 645097010)
      {
        return result;
      }

      v4 = 30258;
      goto LABEL_55;
    }

    if (v1 != 641230386 && v1 != 641234482)
    {
      v4 = 12915;
LABEL_55:
      v3 = v4 | 0x26730000;
      goto LABEL_90;
    }
  }

  return result;
}

uint64_t CA::Render::fourcc_422_from_420(CA::Render *this)
{
  if (this <= 1949327730)
  {
    if (this <= 1885745711)
    {
      v1 = 875704934;
      switch(this)
      {
        case 0x34323066:
          return v1;
        case 0x34323076:
          return 875704950;
        case 0x70343230:
          return 1882468914;
      }

      return 0;
    }

    if (this > 1936077359)
    {
      if (this == 1936077360)
      {
        return 1936077362;
      }

      if (this != 1937125936)
      {
        return 0;
      }

      v3 = 1936077362;
      return v3 | 0x100000u;
    }

    if (this != 1885745712)
    {
      v2 = 1932550515;
      goto LABEL_14;
    }

    v4 = 1882468914;
    return (v4 + 3276800);
  }

  if (this > 2016436535)
  {
    if (this <= 2016686639)
    {
      if (this == 2016436536)
      {
        return 2016567608;
      }

      v2 = 2016436595;
LABEL_14:
      if (this != v2)
      {
        return 0;
      }

      return 2016567667;
    }

    if (this == 2016686640)
    {
      return 2016686642;
    }

    if (this != 2019963440)
    {
      return 0;
    }

    v4 = 2016686642;
    return (v4 + 3276800);
  }

  if (this > 1953903151)
  {
    if (this != 1953903152)
    {
      if (this == 1982882104)
      {
        return 1983013176;
      }

      return 0;
    }

    v3 = 1952854578;
    return v3 | 0x100000u;
  }

  if (this == 1949327731)
  {
    return 2016567667;
  }

  if (this != 1952854576)
  {
    return 0;
  }

  return 1952854578;
}

uint64_t CA::Render::fourcc_is_lossy_compressed(CA::Render *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 796161583)
  {
    if (v1 <= 762865199)
    {
      if (v1 <= 759318336)
      {
        if ((v1 - 758670896) > 4 || ((1 << (v1 - 48)) & 0x15) == 0)
        {
          v3 = -758674992;
          goto LABEL_34;
        }

        return result;
      }

      if ((v1 - 762603056) <= 4 && ((1 << (v1 - 48)) & 0x15) != 0 || (v1 - 762607152) <= 4 && ((1 << (v1 - 48)) & 0x15) != 0)
      {
        return result;
      }

      v4 = 759318337;
    }

    else
    {
      if (v1 <= 792229423)
      {
        if (((v1 - 762865200) > 4 || ((1 << (v1 - 48)) & 0x15) == 0) && ((v1 - 762869296) > 4 || ((1 << (v1 - 48)) & 0x15) == 0))
        {
          v3 = -792225328;
LABEL_34:
          v5 = v1 + v3;
          if (v5 <= 4 && ((1 << v5) & 0x15) != 0)
          {
            return result;
          }

          return 0;
        }

        return result;
      }

      if ((v1 - 792229424) <= 4 && ((1 << (v1 - 48)) & 0x15) != 0 || (v1 - 796157488) <= 4 && ((1 << (v1 - 48)) & 0x15) != 0)
      {
        return result;
      }

      v4 = 792872769;
    }

LABEL_26:
    if (v1 == v4)
    {
      return result;
    }

    return 0;
  }

  if (v1 > 2084718400)
  {
    if (v1 > 2088265263)
    {
      if ((v1 - 2088265264) > 4 || ((1 << (v1 - 48)) & 0x15) == 0)
      {
        v3 = -2088269360;
        goto LABEL_34;
      }

      return result;
    }

    if ((v1 - 2088003120) <= 4 && ((1 << (v1 - 48)) & 0x15) != 0 || (v1 - 2088007216) <= 4 && ((1 << (v1 - 48)) & 0x15) != 0)
    {
      return result;
    }

    v4 = 2084718401;
    goto LABEL_26;
  }

  if (v1 <= 796423727)
  {
    if ((v1 - 796161584) > 4 || ((1 << (v1 - 48)) & 0x15) == 0)
    {
      v3 = -796419632;
      goto LABEL_34;
    }
  }

  else if (((v1 - 796423728) > 4 || ((1 << (v1 - 48)) & 0x15) == 0) && ((v1 - 2084070960) > 4 || ((1 << (v1 - 48)) & 0x15) == 0))
  {
    v3 = -2084075056;
    goto LABEL_34;
  }

  return result;
}

void CA::OGL::AsynchronousItem::unschedule(CA::OGL::AsynchronousItem *this)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 29);
  if (v2)
  {
    os_unfair_lock_lock((v2 + 4));
    v3 = *(v2 + 8);
    if (v3)
    {
      if (v3 == this)
      {
        v5 = (v2 + 8);
LABEL_8:
        *v5 = *(v3 + 28);
        --*(v2 + 16);
      }

      else
      {
        while (1)
        {
          v4 = v3;
          v3 = *(v3 + 28);
          if (!v3)
          {
            break;
          }

          if (v3 == this)
          {
            v5 = (v4 + 224);
            goto LABEL_8;
          }
        }
      }
    }

    *(this + 29) = 0;
    add = atomic_fetch_add(this + 2, 0xFFFFFFFF);
    if (this && add == 1)
    {
      (*(*this + 8))(this);
    }

    if (!*(v2 + 8) && *v2)
    {
      v7 = *(v2 + 32);
      v8 = *MEMORY[0x1E695E8E0];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 0x40000000;
      v9[2] = ___ZN2CA3OGL22AsynchronousDispatcher15unschedule_itemEPNS0_16AsynchronousItemE_block_invoke;
      v9[3] = &__block_descriptor_tmp_2;
      v9[4] = v2;
      CFRunLoopPerformBlock(v7, v8, v9);
      CFRunLoopWakeUp(*(v2 + 32));
    }

    os_unfair_lock_unlock((v2 + 4));
  }

  os_unfair_lock_lock(this + 106);
  *(this + 54) = 0;
  *(this + 71) = CAHostTimeWithTime(0.0);

  os_unfair_lock_unlock(this + 106);
}

void CA::OGL::AsynchronousDispatcher::stop_timer(CFTypeRef *this)
{
  v2 = CA::OGL::AsynchronousDispatcher::renderer(this);
  if (v2)
  {
    (*(**v2 + 272))(*v2, 0);
  }

  v3 = this[5];
  if (v3)
  {
    CADisplayTimerInvalidate(v3);
    CFRelease(this[5]);
    this[5] = 0;
  }
}

uint64_t CA::OGL::AsynchronousDispatcher::renderer(CA::OGL::AsynchronousDispatcher *this)
{
  result = *(this + 7);
  if (result)
  {
    goto LABEL_10;
  }

  v3 = CAMetalContextCreate();
  if (v3)
  {
    v4 = v3;
    v5 = CA::OGL::new_metal_context(v3, 0, 0, 0x22413, 2, @"com.apple.coreanimation.async");
    if (!v5)
    {
      __assert_rtn("renderer", "ogl-asynchronous.cpp", 325, "metal_context != nullptr");
    }

    v6 = v5;
    *(this + 8) = v5;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_type_zone_malloc(malloc_zone, 0x68uLL, 0x165299FDuLL);
    v8 = v7;
    if (v7)
    {
      v9 = *(this + 8);
      v7[1] = 0;
      v7[2] = 0;
      *v7 = v9;
      v7[6] = malloc_type_malloc(0x40000uLL, 0x369E734BuLL);
      v8[7] = 0;
      *(v8 + 24) = 1;
      *(v8 + 50) = 0;
    }

    *(this + 7) = v8;
    *(v6 + 1384) |= 1u;
    *(v6 + 880) = 2;
  }

  result = *(this + 7);
  if (result)
  {
LABEL_10:
    v10 = *(this + 8);
    v11 = *(v10 + 632);
    *(v10 + 632) = 140307;
    *(v10 + 872) = global_feature_flags | 0x22413;
    if ((v11 & 0x2000200) != 0)
    {
      CA::OGL::Context::update_color_program_cache(v10);
      return *(this + 7);
    }
  }

  return result;
}

void CA::OGL::AsynchronousItem::unlatch(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 60);
  v2 = *&this[94]._os_unfair_lock_opaque;
  *&this[94]._os_unfair_lock_opaque = 0;
  os_unfair_lock_unlock(this + 60);
  if (v2)
  {
    v3 = *(v2 + 32);

    dispatch_semaphore_signal(v3);
  }
}

BOOL CA::OGL::AsynchronousItem::latch(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 60);
  v2 = 0;
  v3 = this + 62;
  v4 = 128;
  do
  {
    if ((v3[5]._os_unfair_lock_opaque & 0xFFFFFFFE) == 2)
    {
      if (!v2 || v3[4]._os_unfair_lock_opaque > v2[4]._os_unfair_lock_opaque)
      {
        v2 = v3;
      }

      v3[5]._os_unfair_lock_opaque = 0;
    }

    v3 += 16;
    v4 -= 64;
  }

  while (v4);
  os_unfair_lock_unlock(this + 60);
  if (v2)
  {
    dispatch_semaphore_wait(*&v2[8]._os_unfair_lock_opaque, 0xFFFFFFFFFFFFFFFFLL);
    os_unfair_lock_lock(this + 60);
    v2[5]._os_unfair_lock_opaque = 3;
    *&this[94]._os_unfair_lock_opaque = v2;
    LOWORD(this[44]._os_unfair_lock_opaque) = v2[14]._os_unfair_lock_opaque;
    *&this[46]._os_unfair_lock_opaque = *&v2[10]._os_unfair_lock_opaque;
    *&this[50]._os_unfair_lock_opaque = *&v2[12]._os_unfair_lock_opaque;
    BYTE2(this[44]._os_unfair_lock_opaque) = v2[15]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(this + 60);
  }

  return v2 != 0;
}

void CA::OGL::AsynchronousItem::~AsynchronousItem(CA::OGL::AsynchronousItem *this, __IOSurface *a2)
{
  CA::OGL::AsynchronousItem::~AsynchronousItem(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  v11[5] = *MEMORY[0x1E69E9840];
  *this = &unk_1EF1F4F28;
  for (i = 248; i != 376; i += 64)
  {
    v4 = *(this + i);
    if (v4)
    {
      if (CA::OGL::cache_io_surfaces == 1)
      {
        os_unfair_lock_lock(&CA::OGL::surface_cache_lock);
        v6 = 16;
        v7 = &CA::OGL::surface_cache;
        while (*v7)
        {
          ++v7;
          v6 -= 8;
          if (!v6)
          {
            CA::OGL::release_iosurface(CA::OGL::surface_cache, v5);
            v7 = &qword_1EA850750;
            CA::OGL::surface_cache = qword_1EA850750;
            break;
          }
        }

        *v7 = v4;
        os_unfair_lock_unlock(&CA::OGL::surface_cache_lock);
      }

      else
      {
        CA::OGL::release_iosurface(*(this + i), a2);
      }
    }
  }

  for (j = 0; j != -128; j -= 64)
  {
    dispatch_release(*(this + j + 336));
    dispatch_release(*(this + j + 344));
    v9 = *(this + j + 320);
    if (v9)
    {
      CA::Shape::unref(v9);
    }
  }

  *this = &unk_1EF1F77D0;
  v10 = *(this + 27);
  if (v10)
  {
    if (CA::Render::AsynchronousItem::~AsynchronousItem()::once != -1)
    {
      dispatch_once(&CA::Render::AsynchronousItem::~AsynchronousItem()::once, &__block_literal_global_5407);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN2CA6Render16AsynchronousItemD2Ev_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_2_5408;
    v11[4] = v10;
    dispatch_async(CA::Render::AsynchronousItem::~AsynchronousItem()::queue, v11);
  }
}

void CA::OGL::release_iosurface(CA::OGL *this, __IOSurface *a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (CA::OGL::AsynchronousDispatcher::dispatcher(void)::once[0] != -1)
  {
    dispatch_once(CA::OGL::AsynchronousDispatcher::dispatcher(void)::once, &__block_literal_global_1819);
  }

  v3 = CA::OGL::AsynchronousDispatcher::renderer(CA::OGL::AsynchronousDispatcher::dispatcher(void)::dispatcher);
  if (v3)
  {
    (*(**v3 + 48))(*v3, this);
  }

  if (CA::OGL::release_iosurface(__IOSurface *)::once != -1)
  {
    dispatch_once(&CA::OGL::release_iosurface(__IOSurface *)::once, &__block_literal_global_13_1820);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN2CA3OGLL17release_iosurfaceEP11__IOSurface_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_15;
  v5[4] = this;
  v4 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v5);
  dispatch_async(CA::OGL::release_iosurface(__IOSurface *)::queue, v4);
  _Block_release(v4);
}

dispatch_queue_t ___ZN2CA3OGLL17release_iosurfaceEP11__IOSurface_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("com.apple.coreanimation.async_dealloc", v0);
  CA::OGL::release_iosurface(__IOSurface *)::queue = result;
  return result;
}

void *___ZN2CA3OGL22AsynchronousDispatcher10dispatcherEv_block_invoke()
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x60uLL, 0xDEEC3011uLL);
  v1 = result;
  if (result)
  {
    *result = 0;
    CA::Render::add_observer(0x18u, 0, CA::OGL::AsynchronousDispatcher::AsynchronousDispatcher(void)::$_0::__invoke, 0, 0);
    v2 = x_thread_create(CA::OGL::AsynchronousDispatcher::thread_body, v1, 1);
    *(v1 + 24) = v2;
    CA::Render::Server::set_thread_priority(v2, 0xFFFFFFF1);
    result = CAHostTimeWithTime(0.0166666667);
    *(v1 + 48) = result;
    *(v1 + 16) = 0;
  }

  CA::OGL::AsynchronousDispatcher::dispatcher(void)::dispatcher = v1;
  return result;
}

void CA::OGL::AsynchronousDispatcher::thread_body(CA::OGL::AsynchronousDispatcher *this, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = pthread_setname_np("com.apple.coreanimation.asynchronous");
  if (v3)
  {
    v4 = v3;
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v5 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "com.apple.coreanimation.asynchronous";
      v11 = 1024;
      v12 = v4;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "pthread_setname_np(%s) returned %d\n", &v9, 0x12u);
    }
  }

  *(this + 4) = CFRunLoopGetCurrent();
  Current = CFAbsoluteTimeGetCurrent();
  v7 = CFRunLoopTimerCreate(0, Current + 3153600000.0, 3153600000.0, 0, 0, CA::OGL::AsynchronousDispatcher::thread_body(void *)::$_0::__invoke, 0);
  v8 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddTimer(*(this + 4), v7, *MEMORY[0x1E695E8E0]);
  CA::OGL::AsynchronousDispatcher::start_timer(this);
  *this = 1;
  CFRunLoopRun();
  CFRunLoopRemoveTimer(*(this + 4), v7, v8);
  CFRelease(v7);
  *(this + 3) = 0;
  *(this + 4) = 0;
}

unint64_t CA::OGL::AsynchronousDispatcher::start_timer(unint64_t this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*(this + 40))
  {
    v1 = this;
    v7 = 0;
    v8 = 0;
    v6 = this;
    v2 = mach_absolute_time();
    v3 = CATimeWithHostTime(v2);
    v4 = CATimeWithHostTime(*(v1 + 48));
    v5 = CADisplayTimerCreate(CA::OGL::AsynchronousDispatcher::timer_callback, &v6, 0, v3, v4);
    *(v1 + 40) = v5;
    v9 = *(v1 + 72);
    v10 = *(v1 + 88);
    CADisplayTimerAlignPhase(v5, &v9, 0);
    return CADisplayTimerAddToRunLoop(*(v1 + 40), *(v1 + 32), *MEMORY[0x1E695E8E0]);
  }

  return this;
}

void CA::OGL::AsynchronousDispatcher::tick(CA::OGL::AsynchronousDispatcher *this)
{
  MEMORY[0x1EEE9AC00](this);
  v2 = v1;
  v164 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 40);
  v162 = *(v2 + 72);
  v163 = *(v2 + 88);
  CADisplayTimerAlignPhase(v3, &v162, 0);
  v4 = *(v2 + 48);
  if (v4 >= *(v2 + 88) >> 1)
  {
    v5 = v4 - (*(v2 + 88) >> 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = mach_absolute_time();
  v7 = CATimeWithHostTime(v6);
  v8 = CATimeWithHostTime(v5);
  v9 = mach_continuous_time();
  os_unfair_lock_lock((v2 + 4));
  v11 = *(v2 + 8);
  if (!v11)
  {
    CA::OGL::AsynchronousDispatcher::stop_timer(v2);
    goto LABEL_8;
  }

  v12 = v8 + v7;
  v13 = *(v2 + 16);
  v116 = v13;
  if (v13 <= 0x55)
  {
    MEMORY[0x1EEE9AC00](v10);
    v123 = &v114 - ((v14 + 15) & 0x7FFFFFFFF0);
    bzero(v123, v14);
    goto LABEL_13;
  }

  v123 = malloc_type_malloc(48 * v13, 0x10200401CD0EA8FuLL);
  if (!v123)
  {
LABEL_8:

    os_unfair_lock_unlock((v2 + 4));
    return;
  }

  v11 = *(v2 + 8);
  if (!v11)
  {
    LODWORD(v15) = 0;
    goto LABEL_37;
  }

LABEL_13:
  v15 = 0;
  v16 = v9 + v5;
  do
  {
    while (1)
    {
      v17 = v11;
      v11 = *(v11 + 224);
      if (*(v17 + 16))
      {
        break;
      }

LABEL_31:
      if (!v11)
      {
        goto LABEL_36;
      }
    }

    v18 = v15;
    if (v12 >= *(v17 + 416))
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v17 + 404) ^ 1;
    }

    os_unfair_lock_lock((v17 + 424));
    v20 = *(v17 + 432);
    if (!v20 || (v21 = *v20, v22 = v20[1], *v20 == v22))
    {
      v31 = *(v17 + 584);
      v30 = v16;
      if (v31)
      {
        v30 = *(v17 + 568) + v31;
      }
    }

    else
    {
      v23 = v22 - v21;
      v24 = (v22 - v21) >> 3;
      v25 = v24 & (v24 >> 31);
      v26 = (v21 + (v23 & 0x7FFFFFFF8) - 8);
      v27 = v24;
      while (1)
      {
        _VF = __OFSUB__(v27--, 1);
        if (v27 < 0 != _VF)
        {
          break;
        }

        v29 = *v26--;
        if (v29 > v16)
        {
          v25 = v27 + 1;
          break;
        }
      }

      if (v25 >= v24)
      {
        v30 = -1;
      }

      else
      {
        v30 = *(v21 + 8 * v25);
        std::vector<unsigned long long>::resize(v20, v25);
      }
    }

    os_unfair_lock_unlock((v17 + 424));
    if (v19 & 1 | (v16 < v30))
    {
      v15 = v18;
      goto LABEL_31;
    }

    atomic_fetch_add((v17 + 8), 1u);
    v32 = &v123[48 * v18];
    *v32 = v17;
    v33 = *(v17 + 16);
    v34 = (v33 + 8);
    if (!atomic_fetch_add((v33 + 8), 1u))
    {
      v33 = 0;
      atomic_fetch_add(v34, 0xFFFFFFFF);
    }

    *(v32 + 1) = v33;
    *(v17 + 584) = v30;
    v15 = (v18 + 1);
    *(v32 + 2) = v30;
  }

  while (v11);
LABEL_36:
  if (v15 > v116)
  {
    __assert_rtn("tick", "ogl-asynchronous.cpp", 488, "valid_item_count <= item_count");
  }

LABEL_37:
  os_unfair_lock_unlock((v2 + 4));
  v35 = &v123[48 * v15];
  v36 = CA::OGL::AsynchronousDispatcher::renderer(v2);
  if (v36)
  {
    v37 = v36;
    v115 = v15;
    if (v15)
    {
      v122 = v160;
      v121 = xmmword_183E20E60;
      v120 = xmmword_183E20E00;
      __asm { FMOV            V0.2D, #1.0 }

      v114 = _Q0;
      v41 = v123;
      v117 = v36;
      while (1)
      {
        v42 = *v41;
        v43 = CA::Render::Context::context_by_id(*(*v41 + 12));
        if (v43)
        {
          break;
        }

        v66 = 0;
        v67 = 0;
        v68 = 0;
LABEL_89:
        *(v41 + 3) = v68;
        *(v41 + 4) = v66;
        *(v41 + 10) = v67;
        *(v41 + 11) = 0;
        v41 += 48;
        if (v41 >= v35)
        {
          goto LABEL_90;
        }
      }

      v44 = v43;
      bzero(v151, 0x570uLL);
      CA::Render::Update::Update(v151, &v162, 0x2000uLL, v12, 0, 0, *(v42 + 408), *(v42 + 408), (v42 + 384), 0);
      if (!v151[0])
      {
        v68 = 0;
LABEL_87:
        v66 = CA::Shape::ref(v152[0], v45);
        v67 = v153;
        CA::Render::Update::~Update(v151, v95);
        if (atomic_fetch_add((v44 + 8), 0xFFFFFFFF) == 1)
        {
          (*(*v44 + 16))(v44);
        }

        goto LABEL_89;
      }

      v161 &= ~0x80000uLL;
      if (CADeviceNeedsP3ShapeTracking::once != -1)
      {
        dispatch_once(&CADeviceNeedsP3ShapeTracking::once, &__block_literal_global_53);
      }

      v46 = 0x4000000;
      if (CADeviceNeedsP3ShapeTracking::p3_tracking)
      {
        v46 = 75497472;
      }

      v161 = v46 | v161 & 0xFFFFFFFFFB7FFFFFLL;
      CA::Render::Update::set_display_attributes(v159, v42 + 24);
      v157 = *(v42 + 192);
      v47 = *(v42 + 172);
      v48 = __sincosf_stret(*(v42 + 160));
      v49 = *(v42 + 164);
      v160[2] = LODWORD(v48.__cosval);
      v160[3] = LODWORD(v48.__sinval);
      v50 = v122;
      v122[2] = v49;
      v160[6] = v47;
      v51 = 0x800000000000;
      if (!*(v42 + 179))
      {
        v51 = 0;
      }

      v161 = v161 & 0xFFFF7FFFFFFFFFFFLL | v51;
      *v50 = *(v42 + 200);
      os_unfair_lock_lock((v42 + 424));
      v52 = *(v42 + 456);
      v53 = *(v42 + 472);
      v54 = *(v42 + 488);
      v133 = *(v42 + 440);
      v134 = v52;
      v135 = v53;
      v136 = v54;
      v55 = *(v42 + 520);
      v56 = *(v42 + 536);
      v57 = *(v42 + 552);
      v137 = *(v42 + 504);
      v138 = v55;
      v139 = v56;
      v140 = v57;
      os_unfair_lock_unlock((v42 + 424));
      v131 = 0u;
      v132 = v121;
      v58 = *(v42 + 400);
      v125 = vmulq_n_f64(v120, v58);
      v126 = vmulq_n_f64(0, v58);
      v127 = vmulq_n_f64(v121, v58);
      v128 = v126;
      v129 = 0u;
      v130 = v120;
      CA::Mat4Impl::mat4_concat(&v133, v133.f64, v125.f64, v59);
      v159[17] = v133;
      v159[18] = v134;
      v159[19] = v135;
      v159[20] = v136;
      v159[21] = v137;
      v159[22] = v138;
      v159[23] = v139;
      v159[24] = v140;
      v150 = 0;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      memset(v142, 0, sizeof(v142));
      v60 = *(v42 + 400);
      v144 = 0u;
      v145 = 0u;
      *&v149 = v60;
      *(&v149 + 1) = 1.0 / v60;
      v142[1] = v120.f64[1];
      *&v143 = v121.f64[0];
      *(&v146 + 1) = *&v120.f64[1];
      v148 = v121;
      v142[0] = v60;
      *(&v143 + 1) = v60;
      *&v146 = 0x3FF0000000000000;
      v150 = (8 * (v60 != 1.0));
      pthread_mutex_lock((v44 + 72));
      if (*(v42 + 416) == 0.0)
      {
        v61 = CA::Render::Context::root_layer_handle(v44);
        if (v61)
        {
          *(v61 + 13) |= 8uLL;
        }
      }

      v62 = CA::Render::Context::root_layer_handle(v44);
      if (v62 && (v63 = *(v62 + 2)) != 0)
      {
        memset(v124, 0, sizeof(v124));
        CA::Render::Layer::compute_frame_transform(v63, 0, v124, 0);
        CA::Transform::set(v141, v124, 1);
        CA::Transform::concat_left(v142, v141, v64, v65);
        CA::Render::Update::add_context(v151, v44, v63, v142);
        v118 = 0;
      }

      else
      {
        CA::Render::Update::add_context(v151, v44, 0, v142);
        v118 = 1;
      }

      pthread_mutex_unlock((v44 + 72));
      CA::Render::Update::added_all_contexts(v151, v69, v70);
      v119 = objc_autoreleasePoolPush();
      v71 = *v37;
      CA::Render::Update::render_edr_factor();
      v73 = v72;
      os_unfair_lock_lock((v42 + 424));
      v74 = *(v42 + 576);
      os_unfair_lock_unlock((v42 + 424));
      if (v74)
      {
        v73 = 1.0;
      }

      (*(*v71 + 1128))(v71, v73);
      *(v71 + 38) = *(v42 + 384);
      *(v71 + 692) |= 2u;
      v75 = v158;
      os_unfair_lock_lock((v42 + 240));
      v68 = v42 + 248;
      if (*(v42 + 268))
      {
        if (*(v42 + 332))
        {
          if (*(v42 + 328) < *(v42 + 264))
          {
            v68 = v42 + 312;
          }
        }

        else
        {
          v68 = v42 + 312;
        }
      }

      *(v68 + 20) = 1;
      os_unfair_lock_unlock((v42 + 240));
      os_unfair_lock_lock((v42 + 424));
      v76 = *(v42 + 576);
      os_unfair_lock_unlock((v42 + 424));
      os_unfair_lock_lock((v42 + 424));
      v77 = *(v42 + 577);
      os_unfair_lock_unlock((v42 + 424));
      dispatch_semaphore_wait(*(v68 + 32), 0xFFFFFFFFFFFFFFFFLL);
      dispatch_semaphore_wait(*(v68 + 24), 0xFFFFFFFFFFFFFFFFLL);
      if (*v68)
      {
        if (IOSurfaceGetProtectionOptions() == v75 && *(v68 + 58) == v76 && *(v68 + 59) == v77)
        {
          v80 = *(v68 + 8);
          if (v80)
          {
LABEL_77:
            *(v68 + 40) = v75;
            v83 = v156;
            v84 = v155;
            *(v68 + 56) = (v155 & 0x8000) != 0;
            *(v68 + 57) = (v84 & 0x80000) != 0;
            *(v68 + 48) = *v122;
            *(v68 + 58) = v76;
            *(v68 + 59) = v77;
            *(v68 + 60) = v83 & 1;
            CA::shape_union(v152, v80, v79);
            v37 = v117;
            CA::OGL::Renderer::prepare_clip_shape(v117, v152[0]);
            (*(*v71 + 40))(v71, *v68, 0, 0);
            if (CADeviceHasBacklight::once != -1)
            {
              dispatch_once(&CADeviceHasBacklight::once, &__block_literal_global_132);
            }

            if (CADeviceHasBacklight::has_backlight == 1)
            {
              CA::Render::iosurface_set_edr_factor(*v68, v85, v73);
            }

            CA::OGL::Renderer::render(v37, v151, 0, v86);
            (*(*v71 + 456))(v71, 0);
            (*(*v71 + 40))(v71, 0, 0, 0);
            v87 = *(v37 + 2);
            if (v87)
            {
              CA::Shape::unref(v87);
              *(v37 + 2) = 0;
            }

            v88 = v152[8];
            v89 = *v37;
            v90 = v154;
            *(v89 + 159) = v153;
            *(v89 + 160) = v90;
            CA::Render::Update::release_objects(v151);
            v91 = *v37;
            v91[81] = v88;
            (*(*v91 + 264))(v91, 0);
            *(v42 + 408) = v153;
            *(v42 + 416) = v152[9];
            *(v42 + 404) = 0;
            *(v42 + 179) = 0;
            if ((v118 & 1) == 0)
            {
              v93 = CA::Render::Update::build_hit_test_tree(v151, 0, v92, (1.0 / *(v42 + 400)));
              os_unfair_lock_lock((v42 + 212));
              v94 = *(v42 + 216);
              *(v42 + 216) = v93;
              os_unfair_lock_unlock((v42 + 212));
              if (v94)
              {
                CA::Render::HitTestTree::unref(v94);
              }
            }

            objc_autoreleasePoolPop(v119);
            goto LABEL_87;
          }

LABEL_75:
          v80 = CA::Shape::new_shape((v42 + 384), v80);
          v82 = *(v68 + 8);
          *(v68 + 8) = v80;
          if (v82)
          {
            CA::Shape::unref(v82);
            v80 = *(v68 + 8);
          }

          goto LABEL_77;
        }

        if (*v68)
        {
          CA::OGL::release_iosurface(*v68, v78);
        }
      }

      *v68 = CA::OGL::create_iosurface(*(v42 + 392), *(v42 + 396), v75, v76, v77);
      v81 = *(v68 + 8);
      if (v81)
      {
        CA::Shape::unref(v81);
        *(v68 + 8) = 0;
      }

      goto LABEL_75;
    }

LABEL_90:
    (*(**v37 + 464))(*v37);
    LODWORD(v15) = v115;
  }

  if (!v15)
  {
    goto LABEL_124;
  }

  v96 = v123;
  do
  {
    v97 = *(v96 + 3);
    if (v97)
    {
      v98 = *(v96 + 4);
      if (v98)
      {
        v99 = *v96;
        dispatch_semaphore_signal(*(v97 + 24));
        dispatch_semaphore_signal(*(v97 + 32));
        os_unfair_lock_lock(v99 + 60);
        *(v97 + 20) = 2;
        *(v97 + 16) = *(v96 + 10);
        v100 = v99 + 62;
        v101 = 128;
        while (1)
        {
          v102 = *&v100[2]._os_unfair_lock_opaque;
          if (v100 == v97)
          {
            *&v100[2]._os_unfair_lock_opaque = 1;
            if (!v102)
            {
              goto LABEL_100;
            }
          }

          else
          {
            if (!v102)
            {
              goto LABEL_100;
            }

            v103 = CA::Shape::Union(v102, v98);
            v102 = *&v100[2]._os_unfair_lock_opaque;
            *&v100[2]._os_unfair_lock_opaque = v103;
            if (!v102)
            {
              goto LABEL_100;
            }
          }

          CA::Shape::unref(v102);
LABEL_100:
          v100 += 16;
          v101 -= 64;
          if (!v101)
          {
            os_unfair_lock_unlock(v99 + 60);
            break;
          }
        }
      }
    }

    v96 += 48;
  }

  while (v96 < v35);
  v104 = v123;
  do
  {
    if (*(v104 + 3))
    {
      if (*(v104 + 4))
      {
        v105 = *(v104 + 1);
        v106 = CA::Render::Handle::retain_context(v105);
        if (v106)
        {
          v107 = v106;
          CA::Render::Context::will_commit(v106);
          CA::Render::Handle::set_update_flags(v105, 7);
          CA::Render::Context::did_commit(v107, 1, 0, 1, 0, 0);
          if (atomic_fetch_add(v107 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v107 + 16))(v107);
          }
        }
      }
    }

    v104 += 48;
  }

  while (v104 < v35);
  v108 = v123;
  do
  {
    v109 = *(v108 + 4);
    if (v109)
    {
      CA::Shape::unref(v109);
    }

    v110 = *(v108 + 1);
    if (atomic_fetch_add(v110 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v110 + 16))(v110);
    }

    v111 = *v108;
    add = atomic_fetch_add((*v108 + 8), 0xFFFFFFFF);
    if (v111)
    {
      _ZF = add == 1;
    }

    else
    {
      _ZF = 0;
    }

    if (_ZF)
    {
      (*(*v111 + 8))(v111);
    }

    v108 += 48;
  }

  while (v108 < v35);
LABEL_124:
  if (v116 > 0x55)
  {
    free(v123);
  }
}

IOSurfaceRef CA::OGL::create_iosurface(CA::OGL *this, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = 1380411457;
  os_unfair_lock_lock(&CA::OGL::surface_cache_lock);
  if (a5)
  {
    v11 = 1999843442;
  }

  else
  {
    v11 = 1647534392;
  }

  v12 = CA::OGL::surface_cache;
  v13 = 16;
  do
  {
    if (*v12)
    {
      if (IOSurfaceGetWidth(*v12) == this && IOSurfaceGetHeight(*v12) == a2 && IOSurfaceGetProtectionOptions() == a3)
      {
        PixelFormat = IOSurfaceGetPixelFormat(*v12);
        v16 = 1380411457;
        if ((a4 & 1) == 0)
        {
          if (CADeviceUseCIF10::once != -1)
          {
            dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
          }

          if (CADeviceUseCIF10::enable_cif10)
          {
            v16 = v11;
          }

          else
          {
            v16 = 1111970369;
          }
        }

        if (PixelFormat == v16)
        {
          iosurface_with_pixel_format = *v12;
          *v12 = 0;
          os_unfair_lock_unlock(&CA::OGL::surface_cache_lock);
          return iosurface_with_pixel_format;
        }
      }

      CA::OGL::release_iosurface(*v12, v14);
      *v12 = 0;
    }

    ++v12;
    v13 -= 8;
  }

  while (v13);
  os_unfair_lock_unlock(&CA::OGL::surface_cache_lock);
  if ((a4 & 1) == 0)
  {
    if (CADeviceUseCIF10::once != -1)
    {
      dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
    }

    if (CADeviceUseCIF10::enable_cif10)
    {
      v10 = v11;
    }

    else
    {
      v10 = 1111970369;
    }
  }

  iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(v10, this, a2, 0xAu, a3, @"CA Asynchronous Page", v17);
  if (!iosurface_with_pixel_format)
  {
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v19 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
    {
      v21 = 134218240;
      v22 = this;
      v23 = 2048;
      v24 = a2;
      _os_log_error_impl(&dword_183AA6000, v19, OS_LOG_TYPE_ERROR, "Failed to allocate async IOSurface [%zu x %zu]\n", &v21, 0x16u);
    }

    return 0;
  }

  return iosurface_with_pixel_format;
}

uint64_t CA::OGL::AsynchronousItem::first_buffer(CA::OGL::AsynchronousItem *this, CA::OGL::Context *a2, CA::Render::Handle *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 60);
  *(this + 67) = 3;
  v6 = *(this + 98);
  v7 = *(this + 99);
  v8 = (*(*a2 + 144))(a2);
  os_unfair_lock_lock(this + 106);
  v9 = *(this + 576);
  os_unfair_lock_unlock(this + 106);
  os_unfair_lock_lock(this + 106);
  v10 = *(this + 577);
  os_unfair_lock_unlock(this + 106);
  *(this + 31) = CA::OGL::create_iosurface(v6, v7, v8, v9, v10);
  *(this + 36) = (*(*a2 + 144))(a2);
  *(this + 66) = *(a2 + 159);
  v11 = *(a3 + 13);
  *(this + 304) = (v11 & 0x1800000000) != 0;
  *(this + 308) = (v11 & 0x2000000) != 0;
  *(this + 305) = (v11 & 0x18000000000) != 0;
  *(this + 75) = *(this + 51);
  os_unfair_lock_lock(this + 106);
  LOBYTE(a3) = *(this + 576);
  os_unfair_lock_unlock(this + 106);
  *(this + 306) = a3;
  os_unfair_lock_lock(this + 106);
  LOBYTE(a3) = *(this + 577);
  os_unfair_lock_unlock(this + 106);
  *(this + 307) = a3;
  dispatch_semaphore_wait(*(this + 34), 0xFFFFFFFFFFFFFFFFLL);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v15 = ___ZN2CA3OGL16AsynchronousItem12first_bufferERNS0_7ContextEPNS_6Render6HandleE_block_invoke;
  v16 = &__block_descriptor_tmp_8_1833;
  v17 = this;
  v18 = this + 248;
  atomic_fetch_add(this + 2, 1u);
  if (((*(*a2 + 192))(a2, v14) & 1) == 0)
  {
    v15(v14);
  }

  v12 = *(this + 31);
  os_unfair_lock_unlock(this + 60);
  return v12;
}

intptr_t ___ZN2CA3OGL16AsynchronousItem12first_bufferERNS0_7ContextEPNS_6Render6HandleE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = dispatch_semaphore_signal(*(*(a1 + 40) + 24));
  add = atomic_fetch_add(v1 + 2, 0xFFFFFFFF);
  if (v1)
  {
    v4 = add == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(*v1 + 8);

    return v5(v1);
  }

  return result;
}

intptr_t ___ZN2CA3OGL16AsynchronousItem20retain_latest_bufferERNS0_7ContextEb_block_invoke(intptr_t result)
{
  v1 = *(result + 32);
  if ((*(result + 48) & 1) == 0)
  {
    result = dispatch_semaphore_signal(*(*(result + 40) + 24));
  }

  add = atomic_fetch_add(v1 + 2, 0xFFFFFFFF);
  if (v1)
  {
    v3 = add == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(*v1 + 8);

    return v4(v1);
  }

  return result;
}

void CA::OGL::Renderer::~Renderer(CA::OGL::Renderer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CA::Shape::unref(v2);
  }

  free(*(this + 6));
}

CA::Shape *CA::OGL::Renderer::set_clip_shape(CA::OGL::Renderer *this, CA::Shape *a2)
{
  result = *(this + 2);
  if (result != a2)
  {
    if (result)
    {
      CA::Shape::unref(result);
    }

    if (a2)
    {
      result = CA::Shape::ref(a2, a2);
    }

    else
    {
      result = 0;
    }

    *(this + 2) = result;
  }

  return result;
}

void CA::OGL::render(CA::OGL *this, CA::OGL::Renderer *a2, CA::Render::Update *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *this;
  v8 = *(*this + 616);
  v9 = *(*this + 620);
  if (v8 <= v9)
  {
    v10 = *(*this + 620);
  }

  else
  {
    v10 = *(*this + 616);
  }

  if (v10 < 0x3FFFFFFF)
  {
    CA::OGL::Renderer::render(this, a2, 0, v5);
    ++*(a2 + 72);
    CA::Render::Update::mark_composited(a2);
  }

  else
  {
    v11 = *(a2 + 200);
    v12 = *(v7 + 608);
    *(v7 + 608) = v11.i64[0];
    *(v7 + 616) = vextq_s8(v11, v11, 8uLL).u64[0];
    CA::OGL::Renderer::render(this, a2, 0, v5);
    ++*(a2 + 72);
    CA::Render::Update::mark_composited(a2);
    *(v7 + 608) = v12;
    *(v7 + 616) = v8;
    *(v7 + 620) = v9;
  }

  objc_autoreleasePoolPop(v6);
}

char *CA::Render::ReplicatorLayer::show(int a1, X::Stream *this, uint64_t a3, char a4)
{
  if (a4)
  {
    return X::Stream::printf(this, "replicatorLayer %d");
  }

  else
  {
    return X::Stream::printf(this, "(replicatorLayer %d)");
  }
}

double param_fun(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  if (a3 == 1)
  {
    String = CAAtomGetString(*a2);
    v8 = 0;
  }

  else
  {
    String = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (a3)
    {
      v10 = 0;
      do
      {
        if (v10)
        {
          [(__CFString *)String appendString:@"."];
        }

        [(__CFString *)String appendString:CAAtomGetString(a2[v10++])];
      }

      while (a3 != v10);
    }

    v8 = String;
  }

  v11 = (*a4)(a1, String, a4[1]);
  if (v8)
  {
  }

  return v11;
}

char *CA::Render::Shmem::show(int a1, X::Stream *this, uint64_t a3, char a4)
{
  if (a4)
  {
    return X::Stream::printf(this, "(shmem %lu)");
  }

  else
  {
    return X::Stream::printf(this, "(shmem %lu bytes)");
  }
}

CGImageRef CA::Render::Shmem::copy_cgimage(CA::Render::Shmem *this, CGColorSpace *a2, unint64_t a3, size_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4 >= 0x24)
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v9 = *(this + 3);
    v10 = v9[3];
    if (a3)
    {
      if (a4)
      {
LABEL_4:
        if (v6 <= v9[6] && v5 <= v9[7])
        {
          v25 = v4 - v9[2];
          if (v9[4] <= 1)
          {
            v26 = 1;
          }

          else
          {
            v26 = v9[4];
          }

          v12 = CA::Render::format_rowbytes(v9[3], v26);
          v23 = CGDataProviderCreateWithData(this, v9 + v9[2], v25, CA::Render::release_provider);
          atomic_fetch_add(v9, 1u);
          if (!atomic_fetch_add(this + 2, 1u))
          {
            atomic_fetch_add(this + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v32 = v9[3];
          v11 = CA::Render::format_rowbytes(v10, v6);
          v12 = v11;
          v34 = v5;
          if (is_mul_ok(v11, v5))
          {
            v13 = v11 * v5;
          }

          else
          {
            v13 = 0;
          }

          if (v9[4] <= 1)
          {
            v14 = 1;
          }

          else
          {
            v14 = v9[4];
          }

          v15 = CA::Render::format_rowbytes(v9[3], v14);
          v16 = malloc_type_calloc(1uLL, v13, 0x926CB19AuLL);
          v17 = v16;
          v18 = v9[7];
          if (v12 >= v15)
          {
            v19 = v15;
          }

          else
          {
            v19 = v12;
          }

          if (v18)
          {
            v20 = 0;
            v21 = &v16[(v34 - v18) * v12];
            v22 = v9 + v9[2];
            do
            {
              memcpy(v21, v22, v19);
              v22 += v15;
              v21 += v12;
              ++v20;
            }

            while (v20 < v9[7]);
          }

          v23 = CGDataProviderCreateWithData(0, v17, v13, CA::Render::Shmem::copy_cgimage(CGColorSpace *,unsigned long,unsigned long)::$_0::__invoke);
          v7 = a2;
          v5 = v34;
          v10 = v32;
        }

        if (v10 > 0x23)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
        }

        else
        {
          if ((v10 & 0x3E) == 8)
          {
            *decode = xmmword_183E20E00;
            v27 = CGImageMaskCreate(v6, v5, dword_183E22728[v10], dword_183E22600[v10], v12, v23, decode, 1);
LABEL_33:
            v24 = v27;
            CGDataProviderRelease(v23);
            return v24;
          }

          v29 = dword_183E22728[v10];
          v28 = dword_183E22600[v10];
          v30 = dword_183E22570[v10];
        }

        v27 = CGImageCreate(v6, v5, v29, v28, v12, v7, v30, v23, 0, 1, kCGRenderingIntentDefault);
        goto LABEL_33;
      }
    }

    else
    {
      v6 = v9[6];
      if (a4)
      {
        goto LABEL_4;
      }
    }

    v5 = v9[7];
    goto LABEL_4;
  }

  return 0;
}

uint64_t CA::Render::release_provider(uint64_t this, void *a2, const void *a3)
{
  atomic_fetch_add(*(this + 24), 0xFFFFFFFF);
  if (atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
  {
    return (*(*this + 16))();
  }

  return this;
}

void CA::OGL::anonymous namespace::CubeTransition::render(uint64_t a1, uint64_t a2, CA::OGL::Context *a3, float64x2_t *a4, float64x2_t *a5, uint64_t a6, uint64_t a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  if (BYTE8(v50))
  {
    v13 = a6;
  }

  else
  {
    v13 = a7;
  }

  if (!BYTE8(v50))
  {
    a7 = a6;
  }

  *(*(a3 + 2) + 497) |= 1u;
  if (a7 && CA::Mat4Impl::mat4_is_front_facing(&v34, v12))
  {
    _S0 = v50;
    __asm { FCVT            H0, S0 }

    v19 = *(a3 + 2);
    v19[4] = _S0;
    v19[5] = _S0;
    v19[6] = _S0;
    v19[7] = 15360;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    __asm { FMOV            V0.2D, #1.0 }

    v32 = _Q0;
    v33 = 16;
    CA::OGL::fill_surface_rect(a3, a7, a5, &v24, *a4, a4[1]);
  }

  if (v13 && CA::Mat4Impl::mat4_is_front_facing(&v42, v12))
  {
    _S0 = DWORD1(v50);
    __asm { FCVT            H0, S0 }

    v22 = *(a3 + 2);
    v22[4] = _S0;
    v22[5] = _S0;
    v22[6] = _S0;
    v22[7] = 15360;
    v24 = v42;
    v25 = v43;
    v26 = v44;
    v27 = v45;
    v28 = v46;
    v29 = v47;
    v30 = v48;
    v31 = v49;
    __asm { FMOV            V0.2D, #1.0 }

    v32 = _Q0;
    v33 = 16;
    CA::OGL::fill_surface_rect(a3, v13, a5, &v24, *a4, a4[1]);
  }

  *(*(a3 + 2) + 497) &= ~1u;
}

void CA::OGL::anonymous namespace::CubeTransition::set_state(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, float64x2_t *a5)
{
  v54[16] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 48);
  v8 = *(a3 + 20);
  if (!v8)
  {
    v8 = 274;
  }

  if ((v8 | 2) == 0x112)
  {
    *(a2 + 264) = 1;
    v7 = 1.0 - v7;
  }

  else
  {
    *(a2 + 264) = 0;
  }

  v9 = a4[2];
  v10 = a4[3];
  v11 = 0.0;
  v12 = 1.0;
  v13 = v10;
  if (v8 != 271 && v8 != 274)
  {
    v11 = 1.0;
    v12 = 0.0;
    v13 = a4[2];
  }

  v14 = *a4;
  v15 = a4[1];
  v16 = *(a3 + 32);
  if (v16)
  {
    v17 = (v16 + 40);
  }

  else
  {
    v17 = (a3 + 24);
  }

  v18 = *v17;
  v45 = v12;
  v46 = v11;
  if (CA::Render::KeyValueArray::get_int_key(*v17, 5, *(a1 + 8)))
  {
    v19 = v9 * v12 + v10 * v11;
    v20 = v7;
    v21 = v19 * (cos(v7 * -1.57079633 + 0.785398163) * 0.707106781 + -0.5);
  }

  else
  {
    v20 = v7;
    v21 = 0.0;
  }

  v48 = v15 + v10 * 0.5;
  v47 = v14 + v9 * 0.5;
  v49[0] = xmmword_183E20E00;
  v49[1] = 0u;
  v49[2] = xmmword_183E20E60;
  memset(&v49[3], 0, 32);
  v50 = 0x3FF0000000000000;
  v52 = 0u;
  v53 = xmmword_183E20E60;
  v51 = -1.0 / (CA::Render::KeyValueArray::get_float_key(v18, 325, 3.0) * (0.5 * (v10 + v9)));
  v22 = *a5;
  v23 = a5[1];
  v24 = a5[2];
  v25 = a5[3];
  *a2 = *a5;
  *(a2 + 16) = v23;
  *(a2 + 32) = v24;
  *(a2 + 48) = v25;
  v26 = a5[4];
  v27 = a5[5];
  v28 = a5[6];
  v29 = a5[7];
  *(a2 + 64) = v26;
  *(a2 + 80) = v27;
  *(a2 + 96) = vmlaq_f64(vmlaq_n_f64(vmlaq_n_f64(v28, v22, v47), v24, v48), 0, v26);
  *(a2 + 112) = vmlaq_f64(vmlaq_n_f64(vmlaq_n_f64(v29, v23, v47), v25, v48), 0, v27);
  CA::Mat4Impl::mat4_concat(a2, v49, a2, v30);
  v31 = *a2;
  v32 = *(a2 + 16);
  v33 = *(a2 + 32);
  v34 = *(a2 + 48);
  v35 = *(a2 + 64);
  v36 = *(a2 + 80);
  v37 = vmlaq_n_f64(vmlaq_f64(vmlaq_f64(*(a2 + 96), 0, *a2), 0, v33), v35, v13 * -0.5 - v21);
  v38 = vmlaq_n_f64(vmlaq_f64(vmlaq_f64(*(a2 + 112), 0, v32), 0, v34), v36, v13 * -0.5 - v21);
  *(a2 + 96) = v37;
  *(a2 + 112) = v38;
  *(a2 + 128) = v31;
  *(a2 + 144) = v32;
  *(a2 + 160) = v33;
  *(a2 + 176) = v34;
  *(a2 + 192) = v35;
  *(a2 + 208) = v36;
  *(a2 + 224) = v37;
  *(a2 + 240) = v38;
  CA::Mat4Impl::mat4_set_rotation(v54, v39, v20 * -1.57079633, v45, v46, 0.0);
  CA::Mat4Impl::mat4_concat(a2, v54, a2, v40);
  v41 = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(*(a2 + 112), *(a2 + 16), v47, 0), *(a2 + 48), v48, 0), *(a2 + 80), v13 * -0.5, 0);
  *(a2 + 96) = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(*(a2 + 96), *a2, v47, 0), *(a2 + 32), v48, 0), *(a2 + 64), v13 * -0.5, 0);
  *(a2 + 112) = v41;
  CA::Mat4Impl::mat4_set_rotation(v54, v42, (v7 + -1.0) * -1.57079633, v45, v46, 0.0);
  CA::Mat4Impl::mat4_concat((a2 + 128), v54, (a2 + 128), v43);
  v44 = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(*(a2 + 240), *(a2 + 144), v47, 0), *(a2 + 176), v48, 0), *(a2 + 208), v13 * -0.5, 0);
  *(a2 + 224) = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(*(a2 + 224), *(a2 + 128), v47, 0), *(a2 + 160), v48, 0), *(a2 + 192), v13 * -0.5, 0);
  *(a2 + 240) = v44;
  *(a2 + 256) = 1.0 - (v7 * 0.75);
  *(a2 + 260) = (v7 * 0.75) + 0.25;
}

double CA::OGL::anonymous namespace::CubeTransition::ROI(CA::OGL::_anonymous_namespace_::CubeTransition *this, const Transition *a2, const CA::Rect *a3, const CA::Transform *a4, const CA::Rect *a5, CA::Rect *a6, CA::Rect *a7)
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

void CA::OGL::anonymous namespace::CubeTransition::DOD(CA::OGL::_anonymous_namespace_::CubeTransition *this@<X0>, const Transition *a2@<X1>, const CA::Rect *a3@<X2>, float64x2_t *a4@<X3>, const CA::Rect *a5@<X4>, float64x2_t *a6@<X5>, uint64_t a7@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v11 = *(a5 + 1);
  *a7 = *a5;
  *(a7 + 16) = v11;
  v12 = a6[1];
  v23 = *a6;
  v24 = v12;
  if (BYTE8(v27))
  {
    v13 = v26;
  }

  else
  {
    v13 = v25;
  }

  if (BYTE8(v27))
  {
    v14 = v25;
  }

  else
  {
    v14 = v26;
  }

  CA::Mat4Impl::mat4_apply_to_rect(v13, a7, v10);
  CA::Mat4Impl::mat4_apply_to_rect(v14, &v23, v15);
  v16 = *(a7 + 16);
  v17 = v24;
  v18 = vclezq_f64(v16);
  v19 = vclezq_f64(v24);
  v20 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v19, v18), vzip2q_s64(v19, v18))));
  if (v20.i8[4])
  {
    if (v20.i8[0])
    {
      return;
    }

    v21 = v23;
  }

  else
  {
    if (v20.i8[0])
    {
      return;
    }

    v22 = vaddq_f64(*a7, v16);
    v21 = vminnmq_f64(*a7, v23);
    v17 = vsubq_f64(vmaxnmq_f64(v22, vaddq_f64(v23, v24)), v21);
  }

  *a7 = v21;
  *(a7 + 16) = v17;
}

uint64_t CA::WindowServer::VirtualServer::purge_resources(uint64_t this)
{
  v1 = *(this + 1008);
  if (v1)
  {
    return (*(**v1 + 272))(*v1, 1);
  }

  return this;
}

uint64_t CA::WindowServer::VirtualServer::release_resources(uint64_t this)
{
  v1 = *(this + 1008);
  if (v1)
  {
    return (*(**v1 + 272))(*v1, 0);
  }

  return this;
}

uint64_t CA::WindowServer::Server::current_surface(CA::WindowServer::Server *this)
{
  return 0;
}

{
  return (*(**(this + 12) + 440))();
}

CA::Shape **CA::WindowServer::VirtualServer::render_surface(CA::WindowServer::Display **this, CA::Render::Update *a2, CA::WindowServer::Surface *a3, const CA::Bounds *a4, uint64_t a5, int a6)
{
  if ((*(*a3 + 168))(a3) && (v12 = (*(*this + 54))(this)) != 0)
  {
    v13 = v12;
    v14 = CA::WindowServer::Display::render_surface(this[12], v12, a3, a2, a4, a5, a6);
    CA::OGL::Renderer::collect(v13, a2, *(a2 + 10));
    return v14;
  }

  else
  {

    return CA::WindowServer::Server::render_surface(this, a2, a3, a4, a5, a6);
  }
}

CA::Shape **CA::WindowServer::VirtualServer::render_update(CA::WindowServer::Display **this, CA::Render::Update *a2, unsigned int *a3)
{
  v6 = (*(*this + 54))(this);
  if (v6)
  {
    v8 = v6;
    if (CA::WindowServer::Display::render_display(this[12], v6, a2))
    {
      *a3 |= 3u;
    }

    if (BYTE5(xmmword_1ED4E97EC) == 1)
    {
      (*(**v8 + 472))(*v8, "com.apple.GL.event.frameboundary.end");
    }

    if ((*a3 & 2) != 0)
    {
      v9 = this[125];
      if (v9)
      {
        (*(*v9 + 456))(v9, 1);
      }
    }

    v10 = *(a2 + 10);

    return CA::OGL::Renderer::collect(v8, a2, v10);
  }

  else
  {

    return CA::WindowServer::Server::render_update(this, a2, v7);
  }
}

uint64_t CA::WindowServer::VirtualServer::renderer(CA::WindowServer::VirtualServer *this)
{
  v2 = *(this + 46);
  v3 = v2 | 0x20010;
  result = *(this + 126);
  if (result)
  {
    goto LABEL_9;
  }

  v5 = *(this + 12);
  v6 = *(v5 + 312);
  if (!v6)
  {
    v6 = CAMetalContextCreate();
    *(v5 + 312) = v6;
    if (!v6)
    {
      result = *(this + 126);
      if (!result)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  *(this + 125) = CA::OGL::new_metal_context(v6, 0, 0, (v2 | 0x20010u), 4, @"com.apple.coreanimation.VirtualServer");
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_type_zone_malloc(malloc_zone, 0x68uLL, 0x165299FDuLL);
  v8 = v7;
  if (v7)
  {
    v9 = *(this + 125);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = v9;
    v7[6] = malloc_type_malloc(0x40000uLL, 0x369E734BuLL);
    v8[7] = 0;
    *(v8 + 24) = 1;
    *(v8 + 50) = 0;
  }

  *(this + 126) = v8;
  (*(**(this + 125) + 224))(*(this + 125), 0);
  result = *(this + 126);
  *(*(this + 12) + 328) = result;
  if (result)
  {
LABEL_9:
    v10 = *(this + 125);
    v11 = *(v10 + 632);
    *(v10 + 632) = v3;
    *(v10 + 872) = global_feature_flags | v3;
    if (((v11 ^ v2) & 0x2000200) != 0)
    {
      CA::OGL::Context::update_color_program_cache(v10);
      return *(this + 126);
    }
  }

  return result;
}

uint64_t CA::WindowServer::VirtualServer::copy_display_timings(CA::WindowServer::VirtualServer *this, CA::WindowServer::Server *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(this + 12);
  if (v2)
  {
    os_unfair_lock_lock((v2 + 25856));
    if ((*(v2 + 25860) & 1) == 0)
    {
      if (!*(v2 + 25864))
      {
        operator new();
      }

      v4 = (*(*v2 + 760))(v2);
      if (((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 <= 0xFFFFFFFFFFFFELL)
      {
        atomic_store(CAHostTimeWithTime(v4), (*(v2 + 25864) + 16));
        *(v2 + 25860) = 1;
      }
    }

    if (!*(v2 + 25864) || (v6 = *(a2 + 12), (v6[336] & 0x1C00) == 0xC00))
    {
      v7 = 0;
LABEL_38:
      os_unfair_lock_unlock((v2 + 25856));
      return v7;
    }

    v8 = (*(*v6 + 128))();
    if (v8)
    {
      v10 = *(v8 + 24);
      v11 = atomic_load(v10);
      if (v11)
      {
        v12 = atomic_load((v10 + 16));
        v13 = atomic_load((*(v2 + 25864) + 16));
        if (v12 && v13 != 0)
        {
          v15 = *(v2 + 25872);
          if (v15 && fabsf(v12 / v15) + -1.0 < 0.02)
          {
            *(v2 + 25872) = v12;
            v16 = *(v2 + 25876);
            goto LABEL_23;
          }

          if (v13 <= v12)
          {
            v26 = v12;
          }

          else
          {
            v26 = v13;
          }

          v27 = v12;
          v28 = v13;
          if (v13 < v12)
          {
            v12 = v13;
          }

          v29 = v26 % v12;
          v30 = v12 - v26 % v12;
          if (v29 >= v30)
          {
            v29 = v30;
          }

          if (v29 <= v12 >> 5)
          {
            *(v2 + 25872) = v27;
            v32 = v28 / v27;
            if (v32 >= 1.0)
            {
              v16 = roundf(v32);
              v33 = 1.0 / v32;
            }

            else
            {
              v33 = 1.0 / v32;
              v16 = 1.0 / roundf(v33);
            }

            *(v2 + 25876) = v16;
            *(v2 + 25880) = v33;
            v12 = v27;
            v13 = v28;
LABEL_23:
            if (v16 <= 0.0)
            {
              v36 = v13;
              v37 = v12;
              v34 = v8;
              if (x_log_get_windowserver(void)::once != -1)
              {
                dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
              }

              v35 = x_log_get_windowserver(void)::log;
              if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                v39 = v36;
                v40 = 1024;
                v41 = v37;
                _os_log_error_impl(&dword_183AA6000, v35, OS_LOG_TYPE_ERROR, "copy_display_timings: unexpected state (source: %x, this: %x)", buf, 0xEu);
              }

              v9 = 0;
              v8 = v34;
            }

            else
            {
              atomic_store((v16 * v12), (*(v2 + 25864) + 16));
              v17 = *(v10 + 64);
              v18 = *(v10 + 80);
              v19 = *(v2 + 25876);
              if (v19 > 1.0)
              {
                v18 -= v17 % v19 * *(v2 + 25872);
              }

              v20 = (*(v2 + 25880) * v17);
              v21 = *(v2 + 25864);
              v22 = (v21 + 28);
              v23 = (v21 + 64);
              v24 = (v21 + 80);
              v9 = 1;
              add = atomic_fetch_add(v22, 1u);
              atomic_store(v20, v23);
              atomic_store(v18, v24);
              atomic_store(add + 2, v22);
            }

            goto LABEL_37;
          }
        }
      }

      v9 = 0;
    }

LABEL_37:
    v7 = (v8 != 0) & v9;
    goto LABEL_38;
  }

  return 0;
}

uint64_t CA::WindowServer::VirtualServer::set_digital_modes(CA::WindowServer::VirtualServer *this, const __CFArray *a2)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 2360))(result, a2);
  }

  return result;
}

uint64_t CA::WindowServer::VirtualServer::set_digital_modes(CA::WindowServer::VirtualServer *this, const __CFArray *a2, const __CFArray *a3)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 2352))(result, a2, a3);
  }

  return result;
}

uint64_t CA::WindowServer::VirtualServer::complete_display_state_transition(uint64_t a1, int a2, int a3)
{
  pthread_mutex_lock((a1 + 848));
  v6 = *(*(a1 + 96) + 768);
  if (a2 == 1 && (v7 = atomic_load(v6 + 5), !a3) && v7 == 1)
  {
    (*(**(a1 + 96) + 224))(*(a1 + 96), 1, 0);
  }

  else
  {
    CA::WindowServer::VirtualServer::remove_vsync_source(a1);
    CA::WindowServer::Server::complete_display_state_transition(a1, a2);
  }

  v9 = atomic_load(v6);
  if (v9 == 1)
  {
    v10 = atomic_load(v6 + 5);
    if (v10 == 1 && !atomic_load(v6 + 3))
    {
      CA::WindowServer::VirtualServer::add_vsync_source(a1, v8);
    }
  }

  return pthread_mutex_unlock((a1 + 848));
}

void CA::WindowServer::VirtualServer::remove_vsync_source(CA::WindowServer::VirtualServer *this)
{
  v1 = *(this + 121);
  if (v1)
  {
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
      v1 = *(this + 121);
    }

    v3 = (*(*this + 424))(this);
    CADisplayTimerRemoveFromRunLoop(v1, v3, *MEMORY[0x1E695E8E0]);
    CADisplayTimerInvalidate(*(this + 121));
    CFRelease(*(this + 121));
    *(this + 121) = 0;
  }
}

uint64_t CA::WindowServer::VirtualServer::add_vsync_source(uint64_t this, __CFRunLoopSource *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(this + 968))
  {
    v2 = this;
    CA::WindowServer::VirtualServer::add_runloop_source(this, a2);
    v10 = 0;
    v11 = 0;
    v9 = v2;
    v3 = mach_absolute_time();
    v4 = CATimeWithHostTime(v3);
    v5 = (*(**(v2 + 96) + 760))();
    v6 = CADisplayTimerCreate(CA::WindowServer::VirtualServer::timer_callback, &v9, 0, v4, v5);
    *(v2 + 968) = v6;
    pthread_mutex_lock((v6 + 16));
    *(v6 + 201) = 1;
    pthread_mutex_unlock((v6 + 16));
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    v7 = *(v2 + 968);
    v8 = (*(*v2 + 424))(v2);
    return CADisplayTimerAddToRunLoop(v7, v8, *MEMORY[0x1E695E8E0]);
  }

  return this;
}

uint64_t CA::WindowServer::VirtualServer::add_runloop_source(uint64_t this, __CFRunLoopSource *a2)
{
  v2 = this;
  if (!*(this + 840))
  {
    v3 = x_thread_create(CA::WindowServer::VirtualServer::thread_body, this, 1);
    *(v2 + 840) = v3;
    this = CA::Render::Server::set_thread_priority(v3, 0xFFFFFFFFLL);
  }

  while (!*(v2 + 960))
  {
    this = pthread_cond_wait((v2 + 912), (v2 + 848));
  }

  return this;
}

void CA::WindowServer::VirtualServer::timer_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = *(a5 + 96);
    os_unfair_lock_lock((v8 + 25856));
    v9 = *(v8 + 25864);
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if (v9)
    {
      v10 = *(v9 + 80);
      v19 = *(v9 + 64);
      v20 = v10;
      v11 = atomic_load((v9 + 16));
      v21 = v11;
    }

    os_unfair_lock_unlock((v8 + 25856));
    CADisplayTimerAlignPhase(a1, &v19, 0);
  }

  v12 = (*(**(a5 + 96) + 776))(*(a5 + 96));
  v13 = CAHostTimeWithTime(v12);
  v17 = v13 * (*(**(a5 + 96) + 784))(*(a5 + 96), v14, v15, v16);
  kdebug_trace();
  *(a5 + 984) = a2;
  v18 = CATimeWithHostTime(v17 + a2);
  *(a5 + 976) = v18;
  *(a5 + 992) = v17;

  CA::Render::collect(0, v18);
}

uint64_t CA::WindowServer::VirtualServer::thread_body(CA::WindowServer::VirtualServer *this, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  CString = CA_CFStringGetCString(*(*(this + 12) + 8), v18, 256);
  if (CString)
  {
    v16 = 0u;
    v17 = 0u;
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x40uLL, "com.apple.coreanimation.display.%s", CString);
    v4 = pthread_setname_np(__str);
    if (v4)
    {
      v5 = v4;
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v6 = x_log_get_utilities::log;
      v4 = os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        v19 = 136315394;
        v20 = __str;
        v21 = 1024;
        v22 = v5;
        v7 = &v19;
        v8 = v6;
LABEL_13:
        _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "pthread_setname_np(%s) returned %d\n", v7, 0x12u);
      }
    }
  }

  else
  {
    v4 = pthread_setname_np("com.apple.coreanimation.display");
    if (v4)
    {
      v9 = v4;
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v10 = x_log_get_utilities::log;
      v4 = os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        *__str = 136315394;
        *&__str[4] = "com.apple.coreanimation.display";
        *&__str[12] = 1024;
        *&__str[14] = v9;
        v7 = __str;
        v8 = v10;
        goto LABEL_13;
      }
    }
  }

  CA::WindowServer::Server::set_server_thread_policy(v4);
  pthread_mutex_lock((this + 848));
  *(this + 120) = CFRunLoopGetCurrent();
  Current = CFAbsoluteTimeGetCurrent();
  v12 = CFRunLoopTimerCreate(0, Current + 3153600000.0, 3153600000.0, 0, 0, CA::WindowServer::null_timer, 0);
  v13 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddTimer(*(this + 120), v12, *MEMORY[0x1E695E8E0]);
  pthread_cond_signal(this + 19);
  pthread_mutex_unlock((this + 848));
  CFRunLoopRun();
  pthread_mutex_lock((this + 848));
  CFRunLoopRemoveTimer(*(this + 120), v12, v13);
  CFRelease(v12);
  *(this + 120) = 0;
  *(this + 105) = 0;
  pthread_cond_signal(this + 19);
  return pthread_mutex_unlock((this + 848));
}

_DWORD *CA::WindowServer::VirtualServer::set_edr_properties(_DWORD *this, float a2, float a3, float a4)
{
  if (a2 >= 1.0)
  {
    v5 = this;
    (*(**(this + 12) + 960))(*(this + 12), a3 / a2);
    v6 = *(v5 + 96);
    this = CA::WindowServer::Display::initialize_edr_state(v6);
    v7 = *(v6 + 704);
    if (v7)
    {
      atomic_store(LODWORD(a2), v7);
    }
  }

  return this;
}

void CA::WindowServer::VirtualServer::~VirtualServer(CA::WindowServer::VirtualServer *this)
{
  CA::WindowServer::VirtualServer::~VirtualServer(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1F5148;
  v2 = *(this + 12);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 12) = 0;
  v3 = *(this + 126);
  if (v3)
  {
    CA::OGL::Renderer::~Renderer(*(this + 126));
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v3);
    *(this + 126) = 0;
    v4 = *(this + 125);
    (*(*v4 + 272))(v4, 1);
    (*(*v4 + 8))(v4);
    *(this + 125) = 0;
  }

  pthread_mutex_destroy((this + 848));
  pthread_cond_destroy(this + 19);

  CA::WindowServer::Server::~Server(this);
}

void CA::WindowServer::Server::print_display_trace_log(uint64_t a1, X::Stream *this)
{
  v2 = *(a1 + 96);
  if (this)
  {
    X::Stream::printf(this, "\nCA Display Trace Display ID:%d\n", *(v2 + 24));
    CA::WindowServer::Display::print_display_trace_log_in_range(v2, this, *(v2 + 25488), 0x200uLL);
    CA::WindowServer::Display::print_display_trace_log_in_range(v2, this, 0, *(v2 + 25488));
    v4 = v2;
    v5 = this;
  }

  else
  {
    CA::WindowServer::Display::print_display_trace_log_in_range(*(a1 + 96), 0, *(v2 + 25488), 0x200uLL);
    CA::WindowServer::Display::print_display_trace_log_in_range(v2, 0, 0, *(v2 + 25488));
    v4 = v2;
    v5 = 0;
  }

  CA::WindowServer::Display::print_display_trace_shared_event(v4, v5);
}

uint64_t CA::WindowServer::VirtualServer::shutdown(CA::WindowServer::VirtualServer *this)
{
  CA::WindowServer::Server::shutdown(this);
  pthread_mutex_lock((this + 848));
  CA::WindowServer::VirtualServer::remove_vsync_source(this);
  if (*(this + 105))
  {
    CFRunLoopStop(*(this + 120));
    while (*(this + 120))
    {
      pthread_cond_wait(this + 19, (this + 848));
    }
  }

  return pthread_mutex_unlock((this + 848));
}

void sub_183C58100(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

char *CA::Render::Layer::show(char *result, X::Stream *this, unsigned int a3, uint64_t a4)
{
  v7 = result;
  v167 = *MEMORY[0x1E69E9840];
  if (a3 == 386)
  {
    X::Stream::printf(this, "(~~~~ Truncated layers ~~~~)");
    if ((a4 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (a3 > 0x242)
    {
      return result;
    }

    if ((a4 & 1) == 0)
    {
LABEL_4:
      v8 = "transform-";
      v9 = *(v7 + 12);
      if ((v9 & 0x100) == 0)
      {
        v8 = "";
      }

      if ((v9 & 0x800) != 0)
      {
        v10 = "container ";
      }

      else
      {
        v10 = "";
      }

      v11 = *(v7 + 136);
      if (v11)
      {
        v13 = v11[21];
        v12 = v11[22];
        v15 = v11[23];
        v14 = v11[24];
      }

      else
      {
        v14 = 0.0;
        v12 = 0.5;
        if ((*(v7 + 50) & 0x40) != 0)
        {
          v12 = 0.0;
        }

        v13 = v12;
        v15 = 0.0;
      }

      X::Stream::printf(this, "(%slayer %s[%.10g %.10g %.10g] [%.10g %.10g %.10g %.10g] [%g %g %g]", v8, v10, *(v7 + 56), *(v7 + 64), v14, *(v7 + 72), *(v7 + 80), *(v7 + 88), *(v7 + 96), v13, v12, v15);
      v17 = *(v7 + 152);
      v18 = 2 * a3;
      if (v17)
      {
        if (*(v17 + 100))
        {
          X::Stream::printf(this, "\n%*s", v18 + 2, "");
          v19 = "es";
          if (*(v17 + 100) >> 28 == 1)
          {
            v19 = "";
          }

          X::Stream::printf(this, "[%d pass%s", *(v17 + 100) >> 28, v19);
          v20 = *(v17 + 100);
          if ((v20 & 0x1FFFF) != 0)
          {
            CA::Render::print_offscreen_flags(this, v20 & 0x1FFFF);
            v20 = *(v17 + 100);
          }

          v21 = (v20 >> 17) & 0x7FF;
          if (v21)
          {
            CA::Render::print_group_flags(this, v21);
          }

          X::Stream::printf(this, "]");
        }

        if (*(v17 + 104))
        {
          X::Stream::printf(this, "\n%*s", v18 + 2, "");
          X::Stream::printf(this, "[");
          CA::Render::print_flags(this, *(v17 + 104), 0, CA::Render::handle_flag_names, 0x40uLL);
          X::Stream::printf(this, "]");
          v22 = *(v17 + 132);
          if (*(v17 + 128) >= v22)
          {
            v23 = *(v17 + 132);
          }

          else
          {
            v23 = *(v17 + 128);
          }

          if (v23 >= 1)
          {
            X::Stream::printf(this, " [%d %d %d %d]", *(v17 + 120), *(v17 + 124), *(v17 + 128), v22);
          }

          X::Stream::printf(this, " image seed %d", *(v17 + 76));
        }
      }

      if ((a4 & 2) == 0 && *(v7 + 128))
      {
        X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
        X::Stream::printf(this, "(name ");
        (*(**(v7 + 128) + 40))(*(v7 + 128), this, a3 + 1, a4);
        X::Stream::printf(this, ")");
      }

      v24 = *(v7 + 40);
      if ((v24 & 0x40000000000) != 0)
      {
        X::Stream::printf(this, "\n%*s", v18 + 2, "");
        X::Stream::printf(this, "(hidden true)");
        v24 = *(v7 + 40);
        if ((v24 & 0x10000000000) == 0)
        {
LABEL_35:
          if ((v24 & 0x80000000000) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      else if ((v24 & 0x10000000000) == 0)
      {
        goto LABEL_35;
      }

      X::Stream::printf(this, "\n%*s", v18 + 2, "");
      X::Stream::printf(this, "(masksToBounds true)");
      v24 = *(v7 + 40);
      if ((v24 & 0x80000000000) == 0)
      {
LABEL_37:
        v25 = (v24 >> 8) & 0xF;
        if (v25 != 15)
        {
          X::Stream::printf(this, "\n%*s", v18 + 2, "");
          v26 = " left";
          if ((v24 & 0x100) == 0)
          {
            v26 = "";
          }

          v27 = " right";
          if ((v24 & 0x200) == 0)
          {
            v27 = "";
          }

          v28 = " bottom";
          if ((v24 & 0x400) == 0)
          {
            v28 = "";
          }

          v29 = " top";
          if ((v24 & 0x800) == 0)
          {
            v29 = "";
          }

          v30 = " none";
          if (v25)
          {
            v30 = "";
          }

          X::Stream::printf(this, "(edgeAntialiasingMask%s%s%s%s%s)", v26, v27, v28, v29, v30);
          v24 = *(v7 + 40);
        }

        if ((v24 & 0x7FF00000) != 0)
        {
          X::Stream::printf(this, "\n%*s", v18 + 2, "");
          v31 = " display";
          if ((v24 & 0x100000) == 0)
          {
            v31 = "";
          }

          v32 = " snapshot";
          if ((v24 & 0x200000) == 0)
          {
            v32 = "";
          }

          v33 = " unprotected";
          if ((v24 & 0x400000) == 0)
          {
            v33 = "";
          }

          v34 = " protected";
          if ((v24 & 0x800000) == 0)
          {
            v34 = "";
          }

          v35 = " inhibit-cloning";
          if ((v24 & 0x1000000) == 0)
          {
            v35 = "";
          }

          v36 = " occlusion-detection";
          if ((v24 & 0x2000000) == 0)
          {
            v36 = "";
          }

          v37 = " secure";
          if ((v24 & 0x4000000) == 0)
          {
            v37 = "";
          }

          v38 = " display-stream";
          if ((v24 & 0x8000000) == 0)
          {
            v38 = "";
          }

          v39 = " never-clone";
          if ((v24 & 0x10000000) == 0)
          {
            v39 = "";
          }

          v40 = " contextual-assistance";
          if ((v24 & 0x20000000) == 0)
          {
            v40 = "";
          }

          v41 = " allowed-remote-control";
          if ((v24 & 0x40000000) == 0)
          {
            v41 = "";
          }

          X::Stream::printf(this, "(disableUpdateMask%s%s%s%s%s%s%s%s%s%s%s)", v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
          v24 = *(v7 + 40);
        }

        if ((v24 & 0xF000) == 0x9000)
        {
          if ((v24 & 0x8000000000000) == 0)
          {
            goto LABEL_75;
          }
        }

        else
        {
          X::Stream::printf(this, "\n%*s", v18 + 2, "");
          if ((*(v7 + 40) >> 12) > 0xBu)
          {
            v54 = 0;
          }

          else
          {
            v54 = [(__CFString *)CAAtomGetString(CA::Render::gravity_atoms[*(v7 + 40) >> 12]) cStringUsingEncoding:4];
          }

          if (v54)
          {
            v55 = v54;
          }

          else
          {
            v55 = "<unknown>";
          }

          X::Stream::printf(this, "(contentsGravity %s)", v55);
          v24 = *(v7 + 40);
          if ((v24 & 0x8000000000000) == 0)
          {
LABEL_75:
            if ((v24 & 0x1000000000000) != 0)
            {
              goto LABEL_76;
            }

            goto LABEL_93;
          }
        }

        X::Stream::printf(this, "\n%*s", v18 + 2, "");
        X::Stream::printf(this, "(contentsOpaque true)");
        v24 = *(v7 + 40);
        if ((v24 & 0x1000000000000) != 0)
        {
LABEL_76:
          if ((v24 & 0x4000000000000) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        }

LABEL_93:
        X::Stream::printf(this, "\n%*s", v18 + 2, "");
        X::Stream::printf(this, "(contentsDither false)");
        if ((*(v7 + 40) & 0x4000000000000) == 0)
        {
LABEL_78:
          v42 = *(v7 + 136);
          if (v42)
          {
            __asm { FMOV            V1.4S, #1.0 }

            v16 = vmovn_s32(vmvnq_s8(vceqq_f32(*(v42 + 284), _Q1)));
            v16.i16[0] = vmaxv_u16(v16);
            if ((v16.i8[0] & 1) == 0 || ((X::Stream::printf(this, "\n%*s", v18 + 2, ""), (v48 = *(v7 + 136)) == 0) ? (v53 = 0.0, v52 = 1.0, v50 = 1.0, v49 = 1.0, v51 = 1.0) : (v49 = v48[71], v50 = v48[72], v51 = v48[73], v52 = v48[74], v53 = v48[75]), X::Stream::printf(this, "(contentsMultiplyColor %.3g %.3g %.3g %.3g %.3g)", v49, v50, v51, v52, v53), (v42 = *(v7 + 136)) != 0))
            {
              if ((*(v42 + 348) & 1) == 0)
              {
                goto LABEL_101;
              }

              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              v56 = *(v7 + 136);
              if (v56)
              {
                v56 = *(v56 + 348) & 1;
              }

              X::Stream::printf(this, "(contentsSwizzle %s)", CA::Render::Layer::show(x_stream_struct *,unsigned int,unsigned int)const::names[v56]);
              v42 = *(v7 + 136);
              if (v42)
              {
LABEL_101:
                v57 = *(v42 + 16);
                if (!v57 || ((v58 = *(v57 + 16), v59 = (v57 + 24), v58 >= 0x10) ? (v60 = v59) : (v60 = &CA::Mat4Impl::mat4_identity_double), CA::Render::show_transform(this, "transform", v60, a3), (v42 = *(v7 + 136)) != 0))
                {
                  v61 = *(v42 + 24);
                  if (v61)
                  {
                    v62 = *(v61 + 16);
                    v63 = (v61 + 24);
                    if (v62 >= 0x10)
                    {
                      v64 = v63;
                    }

                    else
                    {
                      v64 = &CA::Mat4Impl::mat4_identity_double;
                    }

                    CA::Render::show_transform(this, "sublayerTransform", v64, a3);
                  }
                }
              }
            }
          }

          v65 = *(v7 + 40);
          if ((v65 & 0x100000000000) != 0)
          {
            if ((v65 & 0x200000000000) != 0)
            {
              goto LABEL_113;
            }
          }

          else
          {
            X::Stream::printf(this, "\n%*s", v18 + 2, "");
            X::Stream::printf(this, "(doubleSided false)");
            v65 = *(v7 + 40);
            if ((v65 & 0x200000000000) != 0)
            {
LABEL_113:
              if ((v65 & 0x400000000000) == 0)
              {
                goto LABEL_114;
              }

              goto LABEL_135;
            }
          }

          X::Stream::printf(this, "\n%*s", v18 + 2, "");
          X::Stream::printf(this, "(sortsSublayers false)");
          v65 = *(v7 + 40);
          if ((v65 & 0x400000000000) == 0)
          {
LABEL_114:
            if ((v65 & 0x800000000000) == 0)
            {
              goto LABEL_116;
            }

            goto LABEL_115;
          }

LABEL_135:
          X::Stream::printf(this, "\n%*s", v18 + 2, "");
          X::Stream::printf(this, "(usesWebKitBehavior true)");
          if ((*(v7 + 40) & 0x800000000000) == 0)
          {
LABEL_116:
            v16.i8[0] = *(v7 + 36);
            *v16.i32 = v16.u32[0] * 0.0039216;
            if (*v16.i32 != 1.0)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              LOBYTE(v66) = *(v7 + 36);
              X::Stream::printf(this, "(opacity %g)", (v66 * 0.0039216));
            }

            v67 = *(v7 + 136);
            if (!v67)
            {
              goto LABEL_127;
            }

            v68 = *(v67 + 72);
            if (v68)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(cornerRadii (%g %g) (%g %g) (%g %g) (%g %g))", v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10]);
              v67 = *(v7 + 136);
              if (!v67)
              {
                goto LABEL_127;
              }
            }

            v16.i32[0] = *(v67 + 232);
            if (*v16.i32 != 0.0)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              v69 = *(v7 + 136);
              v70 = 0.0;
              if (v69)
              {
                v70 = *(v69 + 232);
              }

              X::Stream::printf(this, "(cornerRadius %g)", v70);
              v67 = *(v7 + 136);
              if (!v67)
              {
                goto LABEL_127;
              }
            }

            if (*(v67 + 80))
            {
              X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
              X::Stream::printf(this, "(backgroundColor ");
              (*(**(*(v7 + 136) + 80) + 40))(*(*(v7 + 136) + 80), this, a3 + 1, a4);
              X::Stream::printf(this, ")");
            }

            else
            {
LABEL_127:
              if ((*(v7 + 50) & 2) != 0)
              {
                X::Stream::printf(this, "\n%*s", v18 + 2, "");
                X::Stream::printf(this, "(backgroundColor (%.3g %.3g %.3g %.0g %.3g))");
              }
            }

            v71 = *(v7 + 136);
            if (v71)
            {
              if (*(v71 + 236) == 0.0 || ((X::Stream::printf(this, "\n%*s", v18 + 2, ""), (v72 = *(v7 + 136)) == 0) ? (v73 = 0.0) : (v73 = *(v72 + 236)), X::Stream::printf(this, "(borderOffset %g)", v73), (v71 = *(v7 + 136)) != 0))
              {
                if (*(v71 + 240) == 0.0 || ((X::Stream::printf(this, "\n%*s", v18 + 2, ""), (v74 = *(v7 + 136)) == 0) ? (v75 = 0.0) : (v75 = *(v74 + 240)), X::Stream::printf(this, "(borderWidth %g)", v75), (v71 = *(v7 + 136)) != 0))
                {
                  if (*(v71 + 128))
                  {
                    X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
                    X::Stream::printf(this, "(borderColor ");
                    (*(**(*(v7 + 136) + 128) + 40))(*(*(v7 + 136) + 128), this, a3 + 1, a4);
                    X::Stream::printf(this, ")");
                  }

                  else
                  {
                    v16 = vmovn_s32(vmvnq_s8(vceqq_f32(*(v71 + 244), xmmword_183E20E40)));
                    v16.i16[0] = vmaxv_u16(v16);
                    if (v16.i8[0])
                    {
                      X::Stream::printf(this, "\n%*s", v18 + 2, "");
                      X::Stream::printf(this, "(borderColor (%.3g %.3g %.3g %.0g %.3g))");
                    }
                  }
                }
              }
            }

            if ((*(v7 + 49) & 0x10) == 0)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(borderPathIsBounds false)");
            }

            v76 = *(v7 + 136);
            if (v76)
            {
              if (*(v76 + 344) == 0.0 || ((X::Stream::printf(this, "\n%*s", v18 + 2, ""), (v77 = *(v7 + 136)) == 0) ? (v78 = 0.0) : (v78 = *(v77 + 344)), X::Stream::printf(this, "(rimOpacity %g)", v78), (v76 = *(v7 + 136)) != 0))
              {
                if (*(v76 + 320) == 0.0 || ((X::Stream::printf(this, "\n%*s", v18 + 2, ""), (v79 = *(v7 + 136)) == 0) ? (v80 = 0.0) : (v80 = *(v79 + 320)), X::Stream::printf(this, "(rimWidth %g)", v80), (v76 = *(v7 + 136)) != 0))
                {
                  v16 = vmovn_s32(vmvnq_s8(vceqq_f32(*(v76 + 324), xmmword_183E20E40)));
                  v16.i16[0] = vmaxv_u16(v16);
                  if (v16.i8[0])
                  {
                    X::Stream::printf(this, "\n%*s", v18 + 2, "");
                    v81 = *(v7 + 136);
                    if (v81)
                    {
                      v82 = v81[81];
                      v83 = v81[82];
                      v84 = v81[83];
                      v85 = v81[84];
                      v86 = v81[85];
                    }

                    else
                    {
                      v83 = 0.0;
                      v85 = 1.0;
                      v82 = 0.0;
                      v84 = 0.0;
                      v86 = 0.0;
                    }

                    X::Stream::printf(this, "(rimColor (%.3g %.3g %.3g %.0g %.3g))", v82, v83, v84, v85, v86);
                  }
                }
              }
            }

            if ((*(v7 + 49) & 8) == 0)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(rimPathIsBounds false)");
            }

            v87 = *(v7 + 136);
            if (v87)
            {
              if (!*(v87 + 8) || (X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), ""), (*(**(*(v7 + 136) + 8) + 40))(*(*(v7 + 136) + 8), this, a3 + 1, a4), (v87 = *(v7 + 136)) != 0))
              {
                if (*(v87 + 56))
                {
                  X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
                  X::Stream::printf(this, "(cornerContents ");
                  (*(**(*(v7 + 136) + 56) + 40))(*(*(v7 + 136) + 56), this, a3 + 1, a4);
                  X::Stream::printf(this, ")");
                }
              }
            }

            if ((*(v7 + 44) & 3) != 0)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              v88 = *(v7 + 44) & 3;
              if (v88 > 1)
              {
                if (v88 == 3)
                {
                  X::Stream::printf(this, "(cornerCurve ID1)");
                }

                else
                {
                  X::Stream::printf(this, "(cornerCurve ID0)");
                }
              }

              else if (v88)
              {
                X::Stream::printf(this, "(cornerCurve continuous)");
              }
            }

            if (*(v7 + 50))
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(cornerContentsMasksEdges true)");
            }

            v89 = *(v7 + 40);
            v90 = HIWORD(v89) & 0xF;
            if (v90 != 15)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              v91 = " minX-minY";
              if ((v89 & 0x10000) == 0)
              {
                v91 = "";
              }

              v92 = " maxX-minY";
              if ((v89 & 0x20000) == 0)
              {
                v92 = "";
              }

              v93 = " minX-maxY";
              if ((v89 & 0x40000) == 0)
              {
                v93 = "";
              }

              v94 = " maxX-maxY";
              if ((v89 & 0x80000) == 0)
              {
                v94 = "";
              }

              v95 = " none";
              if (v90)
              {
                v95 = "";
              }

              X::Stream::printf(this, "(maskedCorners%s%s%s%s%s)", v91, v92, v93, v94, v95);
            }

            if (*(v7 + 104))
            {
              X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
              v96 = (*(**(v7 + 104) + 80))(*(v7 + 104));
              if (v96)
              {
                if ((*(v96 + 14) & 0x10) != 0)
                {
                  v97 = "backingStore ";
                }

                else
                {
                  v97 = "";
                }
              }

              else
              {
                v97 = "";
              }

              X::Stream::printf(this, "(contents ");
              X::Stream::printf(this, "%s", v97);
              (*(**(v7 + 104) + 40))(*(v7 + 104), this, a3 + 1, a4);
              X::Stream::printf(this, ")");
            }

            v98 = *(v7 + 40);
            if ((v98 & 0x2000000000000) != 0)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(contentsScaling repeat)");
              v98 = *(v7 + 40);
            }

            if ((v98 & 0xF0) != 0x10)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              if ((*(v7 + 40) >> 4) > 0xAu)
              {
                v99 = 0;
              }

              else
              {
                v99 = [(__CFString *)CAAtomGetString(CA::Render::image_filter_atoms[*(v7 + 40) >> 4]) cStringUsingEncoding:4];
              }

              if (v99)
              {
                v100 = v99;
              }

              else
              {
                v100 = "<unknown>";
              }

              X::Stream::printf(this, "(magnificationFilter %s)", v100);
              v98 = *(v7 + 40);
            }

            if ((v98 & 0xF) != 1)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              v101 = *(v7 + 40) & 0xFLL;
              if (v101 > 0xA)
              {
                v102 = 0;
              }

              else
              {
                v102 = [(__CFString *)CAAtomGetString(CA::Render::image_filter_atoms[v101]) cStringUsingEncoding:4];
              }

              if (v102)
              {
                v103 = v102;
              }

              else
              {
                v103 = "<unknown>";
              }

              X::Stream::printf(this, "(minificationFilter %s)", v103);
            }

            v104 = *(v7 + 136);
            if (v104)
            {
              v16.i32[0] = *(v104 + 316);
              if (*v16.i32 != 1.0)
              {
                X::Stream::printf(this, "\n%*s", v18 + 2, "");
                v105 = *(v7 + 136);
                if (v105)
                {
                  v106 = *(v105 + 316);
                }

                else
                {
                  v106 = 1.0;
                }

                X::Stream::printf(this, "(gain %g)", v106);
              }
            }

            if ((*(v7 + 47) & 0x40) != 0)
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(allowsLimitedHeadroom true)");
            }

            v107 = *(v7 + 136);
            if (v107)
            {
              v16.i32[0] = *(v107 + 312);
              if (*v16.i32 != 0.0)
              {
                X::Stream::printf(this, "\n%*s", v18 + 2, "");
                v108 = *(v7 + 136);
                if (v108)
                {
                  v109 = *(v108 + 312);
                }

                else
                {
                  v109 = 0.0;
                }

                X::Stream::printf(this, "(lodBias %g)", v109);
              }
            }

            v110 = *(v7 + 48);
            if ((v110 & 0x100000) != 0)
            {
              if ((v110 & 0x200000) == 0)
              {
                goto LABEL_235;
              }
            }

            else
            {
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(inheritsTiming false)");
              v110 = *(v7 + 48);
              if ((v110 & 0x200000) == 0)
              {
LABEL_235:
                if ((v110 & 0x40000) == 0)
                {
                  goto LABEL_236;
                }

                goto LABEL_244;
              }
            }

            X::Stream::printf(this, "\n%*s", v18 + 2, "");
            X::Stream::printf(this, "(definesDisplayRegionOfInterest true)");
            v110 = *(v7 + 48);
            if ((v110 & 0x40000) == 0)
            {
LABEL_236:
              if ((v110 & 0x80000) == 0)
              {
                goto LABEL_238;
              }

              goto LABEL_237;
            }

LABEL_244:
            X::Stream::printf(this, "\n%*s", v18 + 2, "");
            X::Stream::printf(this, "(contentsContainsSubtitles true)");
            if ((*(v7 + 48) & 0x80000) == 0)
            {
LABEL_238:
              v111 = *(v7 + 136);
              if (v111)
              {
                v112 = v111[4];
                if (!v112 || (*(v112 + 16) > 5u ? (v115 = *(v112 + 40), v164 = *(v112 + 24), v165 = v115, v114 = *(v112 + 56)) : (v113 = *(MEMORY[0x1E695EFD0] + 16), v164 = *MEMORY[0x1E695EFD0], v165 = v113, v114 = *(MEMORY[0x1E695EFD0] + 32)), v166 = v114, CA::Render::show_affine_transform(this, "contentsTransform", &v164, a3), (v111 = *(v7 + 136)) != 0))
                {
                  if (!v111[5] || (X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), ""), X::Stream::printf(this, "(contentsRect "), (*(**(*(v7 + 136) + 40) + 40))(*(*(v7 + 136) + 40), this, a3 + 1, a4), X::Stream::printf(this, ")"), (v111 = *(v7 + 136)) != 0))
                  {
                    if (!v111[6] || (X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), ""), X::Stream::printf(this, "(contentsCenter "), (*(**(*(v7 + 136) + 48) + 40))(*(*(v7 + 136) + 48), this, a3 + 1, a4), X::Stream::printf(this, ")"), (v111 = *(v7 + 136)) != 0))
                    {
                      if (v111[8])
                      {
                        X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
                        X::Stream::printf(this, "(cornerContentsCenter ");
                        (*(**(*(v7 + 136) + 64) + 40))(*(*(v7 + 136) + 64), this, a3 + 1, a4);
                        X::Stream::printf(this, ")");
                      }
                    }
                  }
                }
              }

              if ((*(v7 + 49) & 0x80) != 0)
              {
                X::Stream::printf(this, "\n%*s", v18 + 2, "");
                X::Stream::printf(this, "(literalContentsCenter true)");
              }

              v116 = *(v7 + 136);
              if (v116)
              {
                v16.i32[0] = *(v116 + 304);
              }

              else
              {
                v16.i8[0] = *(v7 + 38);
                *v16.i32 = v16.u32[0];
              }

              if (*v16.i32 != 1.0)
              {
                X::Stream::printf(this, "\n%*s", v18 + 2, "");
                v118 = *(v7 + 136);
                if (v118)
                {
                  v119 = *(v118 + 304);
                }

                else
                {
                  LOBYTE(v117) = *(v7 + 38);
                  v119 = v117;
                }

                X::Stream::printf(this, "(contentsScale %g)", v119);
              }

              v120 = *(v7 + 40);
              if ((v120 & 0x10000000000000) != 0)
              {
                X::Stream::printf(this, "\n%*s", v18 + 2, "");
                X::Stream::printf(this, "(shouldRasterize true)");
                v120 = *(v7 + 40);
                if ((v120 & 0x20000000000000) == 0)
                {
LABEL_266:
                  if ((v120 & 0x40000000000000) == 0)
                  {
                    goto LABEL_267;
                  }

                  goto LABEL_275;
                }
              }

              else if ((v120 & 0x20000000000000) == 0)
              {
                goto LABEL_266;
              }

              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(shouldFlatten true)");
              v120 = *(v7 + 40);
              if ((v120 & 0x40000000000000) == 0)
              {
LABEL_267:
                if ((v120 & 0x80000000000000) == 0)
                {
                  goto LABEL_268;
                }

                goto LABEL_276;
              }

LABEL_275:
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(shouldReflatten true)");
              v120 = *(v7 + 40);
              if ((v120 & 0x80000000000000) == 0)
              {
LABEL_268:
                if ((v120 & 0x100000000000000) == 0)
                {
                  goto LABEL_269;
                }

                goto LABEL_277;
              }

LABEL_276:
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(rasterizeInParentSpace true)");
              v120 = *(v7 + 40);
              if ((v120 & 0x100000000000000) == 0)
              {
LABEL_269:
                if ((v120 & 0x200000000000000) == 0)
                {
                  goto LABEL_271;
                }

                goto LABEL_270;
              }

LABEL_277:
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(rasterizationPrefersDisplayCompositing true)");
              if ((*(v7 + 40) & 0x200000000000000) == 0)
              {
LABEL_271:
                v121 = *(v7 + 136);
                if (v121)
                {
                  v16.i32[0] = *(v121 + 308);
                }

                else
                {
                  v16.i8[0] = *(v7 + 39);
                  *v16.i32 = v16.u32[0];
                }

                if (*v16.i32 != 1.0)
                {
                  X::Stream::printf(this, "\n%*s", v18 + 2, "");
                  v123 = *(v7 + 136);
                  if (v123)
                  {
                    v124 = *(v123 + 308);
                  }

                  else
                  {
                    LOBYTE(v122) = *(v7 + 39);
                    v124 = v122;
                  }

                  X::Stream::printf(this, "(rasterizationScale %g)", v124);
                }

                v125 = *(v7 + 40);
                if ((v125 & 0x400000000000000) != 0)
                {
                  X::Stream::printf(this, "\n%*s", v18 + 2, "");
                  X::Stream::printf(this, "(preloadsCache true)");
                  v125 = *(v7 + 40);
                  if ((v125 & 0x800000000000000) == 0)
                  {
LABEL_287:
                    if ((v125 & 0x1000000000000000) == 0)
                    {
                      goto LABEL_288;
                    }

                    goto LABEL_297;
                  }
                }

                else if ((v125 & 0x800000000000000) == 0)
                {
                  goto LABEL_287;
                }

                X::Stream::printf(this, "\n%*s", v18 + 2, "");
                X::Stream::printf(this, "(createsCompositingGroup true)");
                v125 = *(v7 + 40);
                if ((v125 & 0x1000000000000000) == 0)
                {
LABEL_288:
                  if ((v125 & 0x2000000000000000) == 0)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_298;
                }

LABEL_297:
                X::Stream::printf(this, "\n%*s", v18 + 2, "");
                X::Stream::printf(this, "(allowsDisplayCompositing true)");
                v125 = *(v7 + 40);
                if ((v125 & 0x2000000000000000) == 0)
                {
LABEL_289:
                  if ((v125 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_290;
                  }

LABEL_299:
                  X::Stream::printf(this, "\n%*s", v18 + 2, "");
                  X::Stream::printf(this, "(wantsExtendedDynamicRangeContent true)");
LABEL_290:
                  if ((*(v7 + 48) & 2) != 0)
                  {
                    X::Stream::printf(this, "\n%*s", v18 + 2, "");
                    X::Stream::printf(this, "(toneMapToStandardDynamicRange true)");
                  }

                  v126 = *(v7 + 40);
                  if ((v126 & 0x3000000000) != 0)
                  {
                    X::Stream::printf(this, "\n%*s", v18 + 2, "");
                    v127 = *(v7 + 40);
                    if ((~v127 & 0x3000000000) != 0)
                    {
                      v128 = [(__CFString *)CAAtomGetString(CA::Render::tone_map_mode_atoms[(v127 >> 36) & 3]) cStringUsingEncoding:4];
                    }

                    else
                    {
                      v128 = 0;
                    }

                    if (v128)
                    {
                      v129 = v128;
                    }

                    else
                    {
                      v129 = "<unknown>";
                    }

                    X::Stream::printf(this, "(toneMapMode %s)", v129);
                    v126 = *(v7 + 40);
                  }

                  if ((v126 & 0xC000000000) != 0)
                  {
                    X::Stream::printf(this, "\n%*s", v18 + 2, "");
                    v130 = [(__CFString *)CAAtomGetString(CA::Render::dynamic_range_atoms[(*(v7 + 40) >> 38) & 3]) cStringUsingEncoding:4];
                    if (v130)
                    {
                      v131 = v130;
                    }

                    else
                    {
                      v131 = "<unknown>";
                    }

                    X::Stream::printf(this, "(preferredDynamicRange %s)", v131);
                  }

                  if (*(v7 + 48))
                  {
                    X::Stream::printf(this, "\n%*s", v18 + 2, "");
                    X::Stream::printf(this, "(preferredDynamicRangeExplicit true)");
                  }

                  v132 = *(v7 + 136);
                  if (v132)
                  {
                    if (*(v132 + 264) == 0.0 || ((X::Stream::printf(this, "\n%*s", v18 + 2, ""), (v133 = *(v7 + 136)) == 0) ? (v134 = 0.0) : (v134 = *(v133 + 264)), X::Stream::printf(this, "(contentsCDRStrength %g)", v134), (v132 = *(v7 + 136)) != 0))
                    {
                      if (*(v132 + 268) == 1.0 || ((X::Stream::printf(this, "\n%*s", v18 + 2, ""), (v135 = *(v7 + 136)) == 0) ? (v136 = 1.0) : (v136 = *(v135 + 268)), X::Stream::printf(this, "(contentsEDRStrength %g)", v136), (v132 = *(v7 + 136)) != 0))
                      {
                        if (*(v132 + 272) == 0.0 || ((X::Stream::printf(this, "\n%*s", v18 + 2, ""), (v137 = *(v7 + 136)) == 0) ? (v138 = 0.0) : (v138 = *(v137 + 272)), X::Stream::printf(this, "(contentsHeadroom %g)", v138), (v132 = *(v7 + 136)) != 0))
                        {
                          if (*(v132 + 276) == 0.0 || ((X::Stream::printf(this, "\n%*s", v18 + 2, ""), (v139 = *(v7 + 136)) == 0) ? (v140 = 0.0) : (v140 = *(v139 + 276)), X::Stream::printf(this, "(contentsMaximumDesiredEDR %g)", v140), (v132 = *(v7 + 136)) != 0))
                          {
                            v16.i32[0] = *(v132 + 280);
                            if (*v16.i32 != 0.0)
                            {
                              X::Stream::printf(this, "\n%*s", v18 + 2, "");
                              v141 = *(v7 + 136);
                              if (v141)
                              {
                                v142 = *(v141 + 280);
                              }

                              else
                              {
                                v142 = 0.0;
                              }

                              X::Stream::printf(this, "(displayMaximumDesiredEDR %g)", v142);
                            }
                          }
                        }
                      }
                    }
                  }

                  v143 = *(v7 + 48);
                  if ((v143 & 4) != 0)
                  {
                    X::Stream::printf(this, "\n%*s", v18 + 2, "");
                    X::Stream::printf(this, "(allowsGroupOpacity true)");
                    v143 = *(v7 + 48);
                    if ((v143 & 8) != 0)
                    {
LABEL_340:
                      if ((v143 & 0x10) != 0)
                      {
                        goto LABEL_341;
                      }

                      goto LABEL_351;
                    }
                  }

                  else if ((v143 & 8) != 0)
                  {
                    goto LABEL_340;
                  }

                  X::Stream::printf(this, "\n%*s", v18 + 2, "");
                  X::Stream::printf(this, "(allowsGroupBlending false)");
                  v143 = *(v7 + 48);
                  if ((v143 & 0x10) != 0)
                  {
LABEL_341:
                    if ((v143 & 0x20) == 0)
                    {
                      goto LABEL_342;
                    }

                    goto LABEL_352;
                  }

LABEL_351:
                  X::Stream::printf(this, "\n%*s", v18 + 2, "");
                  X::Stream::printf(this, "(allowsHitTesting false)");
                  v143 = *(v7 + 48);
                  if ((v143 & 0x20) == 0)
                  {
LABEL_342:
                    if ((v143 & 0x40) == 0)
                    {
                      goto LABEL_343;
                    }

                    goto LABEL_353;
                  }

LABEL_352:
                  X::Stream::printf(this, "\n%*s", v18 + 2, "");
                  X::Stream::printf(this, "(skipHitTesting true)");
                  v143 = *(v7 + 48);
                  if ((v143 & 0x40) == 0)
                  {
LABEL_343:
                    if ((v143 & 0x4000) == 0)
                    {
                      goto LABEL_345;
                    }

                    goto LABEL_344;
                  }

LABEL_353:
                  X::Stream::printf(this, "\n%*s", v18 + 2, "");
                  X::Stream::printf(this, "(hitTestsContentsAlphaChannel true)");
                  if ((*(v7 + 48) & 0x4000) == 0)
                  {
LABEL_345:
                    v144 = (*(v7 + 40) >> 34) & 3;
                    if (v144)
                    {
                      X::Stream::printf(this, "\n%*s", v18 + 2, "");
                      if (v144 == 2)
                      {
                        X::Stream::printf(this, "(securityMode unrestricted)");
                      }

                      else if (v144 == 1)
                      {
                        X::Stream::printf(this, "(securityMode insecure)");
                      }
                    }

                    v145 = *(v7 + 136);
                    if (v145)
                    {
                      v16 = vmovn_s32(vmvnq_s8(vceqq_f32(*(v145 + 200), xmmword_183E20E40)));
                      v16.i16[0] = vmaxv_u16(v16);
                      if (v16.i8[0])
                      {
                        X::Stream::printf(this, "\n%*s", v18 + 2, "");
                        v146 = *(v7 + 136);
                        if (v146)
                        {
                          v147 = v146[50];
                          v148 = v146[51];
                          v149 = v146[52];
                          v150 = v146[53];
                          v151 = v146[54];
                        }

                        else
                        {
                          v148 = 0.0;
                          v150 = 1.0;
                          v147 = 0.0;
                          v149 = 0.0;
                          v151 = 0.0;
                        }

                        X::Stream::printf(this, "(shadowColor (%.3g %.3g %.3g %.0g %.3g))", v147, v148, v149, v150, v151);
                      }
                    }

                    v16.i8[0] = *(v7 + 37);
                    if ((v16.u32[0] * 0.0039216) != 0.0)
                    {
                      X::Stream::printf(this, "\n%*s", v18 + 2, "");
                      LOBYTE(v152) = *(v7 + 37);
                      X::Stream::printf(this, "(shadowOpacity %g)", (v152 * 0.0039216));
                    }

                    v153 = *(v7 + 136);
                    v154 = -3.0;
                    v155 = 0.0;
                    if (v153)
                    {
                      if (*(v153 + 228) == 3.0 || ((X::Stream::printf(this, "\n%*s", v18 + 2, ""), (v156 = *(v7 + 136)) == 0) ? (v157 = 3.0) : (v157 = *(v156 + 228)), X::Stream::printf(this, "(shadowRadius %g)", v157), (v153 = *(v7 + 136)) != 0))
                      {
                        v155 = *(v153 + 220);
                        v154 = *(v153 + 224);
                      }
                    }

                    if (v155 != 0.0 || v154 != -3.0)
                    {
                      X::Stream::printf(this, "\n%*s", v18 + 2, "");
                      X::Stream::printf(this, "(shadowOffset [%g %g])", v155, v154);
                      v153 = *(v7 + 136);
                    }

                    if (v153 && *(v153 + 120))
                    {
                      X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
                      X::Stream::printf(this, "(shadowPath ");
                      (*(**(*(v7 + 136) + 120) + 40))(*(*(v7 + 136) + 120), this, a3 + 1, a4);
                      X::Stream::printf(this, ")");
                    }

                    v158 = *(v7 + 48);
                    if ((v158 & 0x80) != 0)
                    {
                      X::Stream::printf(this, "\n%*s", v18 + 2, "");
                      X::Stream::printf(this, "(invertsShadow true)");
                      v158 = *(v7 + 48);
                      if ((v158 & 0x100) == 0)
                      {
LABEL_379:
                        if ((v158 & 0x200) == 0)
                        {
                          goto LABEL_380;
                        }

                        goto LABEL_409;
                      }
                    }

                    else if ((v158 & 0x100) == 0)
                    {
                      goto LABEL_379;
                    }

                    X::Stream::printf(this, "\n%*s", v18 + 2, "");
                    X::Stream::printf(this, "(shadowPathIsBounds true)");
                    v158 = *(v7 + 48);
                    if ((v158 & 0x200) == 0)
                    {
LABEL_380:
                      if ((v158 & 0x400) == 0)
                      {
                        goto LABEL_382;
                      }

                      goto LABEL_381;
                    }

LABEL_409:
                    X::Stream::printf(this, "\n%*s", v18 + 2, "");
                    X::Stream::printf(this, "(allowsCornerContentsEdgeEffects true)");
                    if ((*(v7 + 48) & 0x400) == 0)
                    {
LABEL_382:
                      if (*(v7 + 120))
                      {
                        X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
                        X::Stream::printf(this, "(mask ");
                        (*(**(v7 + 120) + 40))(*(v7 + 120), this, a3 + 1, a4);
                        X::Stream::printf(this, ")");
                      }

                      if ((*(v7 + 45) & 2) != 0)
                      {
                        X::Stream::printf(this, "\n%*s", v18 + 2, "");
                        X::Stream::printf(this, "(invertsMask true)");
                      }

                      if ((*(v7 + 50) & 0x80) == 0)
                      {
                        X::Stream::printf(this, "\n%*s", v18 + 2, "");
                        X::Stream::printf(this, "(allowsColorMatching false)");
                      }

                      v159 = *(v7 + 136);
                      if (v159)
                      {
                        if (!v159[12] || (X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), ""), X::Stream::printf(this, "(filters "), (*(**(*(v7 + 136) + 96) + 40))(*(*(v7 + 136) + 96), this, a3 + 1, a4), X::Stream::printf(this, ")"), (v159 = *(v7 + 136)) != 0))
                        {
                          if (!v159[13] || (X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), ""), X::Stream::printf(this, "(backgroundFilters "), (*(**(*(v7 + 136) + 104) + 40))(*(*(v7 + 136) + 104), this, a3 + 1, a4), X::Stream::printf(this, ")"), (v159 = *(v7 + 136)) != 0))
                          {
                            if (!v159[11] || (X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), ""), X::Stream::printf(this, "(compositingFilter "), (*(**(*(v7 + 136) + 88) + 40))(*(*(v7 + 136) + 88), this, a3 + 1, a4), X::Stream::printf(this, ")"), (v159 = *(v7 + 136)) != 0))
                            {
                              if (v159[14])
                              {
                                X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
                                X::Stream::printf(this, "(meshTransform ");
                                (*(**(*(v7 + 136) + 112) + 40))(*(*(v7 + 136) + 112), this, a3 + 1, a4);
                                X::Stream::printf(this, ")");
                              }
                            }
                          }
                        }
                      }

                      if (*(v7 + 144))
                      {
                        X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
                        X::Stream::printf(this, "(animations ");
                        (*(**(v7 + 144) + 40))(*(v7 + 144), this, a3 + 1, a4);
                        X::Stream::printf(this, ")");
                      }

                      v160 = *(v7 + 136);
                      if (v160)
                      {
                        if (!v160[17] || (X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), ""), X::Stream::printf(this, "(modifiers "), (*(**(*(v7 + 136) + 136) + 40))(*(*(v7 + 136) + 136), this, a3 + 1, a4), X::Stream::printf(this, ")"), (v160 = *(v7 + 136)) != 0))
                        {
                          if (*v160)
                          {
                            X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
                            X::Stream::printf(this, "(subclass ");
                            (*(***(v7 + 136) + 40))(**(v7 + 136), this, a3 + 1, a4);
                            X::Stream::printf(this, ")");
                          }
                        }
                      }

                      v161 = *(v7 + 112);
                      if ((*(v7 + 13) & 0x20) != 0)
                      {
                        if (v161)
                        {
                          X::Stream::printf(this, "\n%*s", v18 + 2, "");
                          X::Stream::printf(this, "(sublayers (array");
                          v162 = a3 + 2;
                          X::Stream::printf(this, "\n%*s", 2 * v162, "");
                          v163 = "))";
                          goto LABEL_413;
                        }
                      }

                      else if (v161)
                      {
                        v162 = a3 + 1;
                        X::Stream::printf(this, "\n%*s", 2 * v162, "");
                        X::Stream::printf(this, "(sublayers ");
                        v163 = ")";
LABEL_413:
                        (*(**(v7 + 112) + 40))(*(v7 + 112), this, v162, a4);
                        X::Stream::printf(this, v163);
                      }

                      return X::Stream::printf(this, ")");
                    }

LABEL_381:
                    X::Stream::printf(this, "\n%*s", v18 + 2, "");
                    X::Stream::printf(this, "(punchoutShadow true)");
                    goto LABEL_382;
                  }

LABEL_344:
                  X::Stream::printf(this, "\n%*s", v18 + 2, "");
                  X::Stream::printf(this, "(hitTestsAsOpaque true)");
                  goto LABEL_345;
                }

LABEL_298:
                X::Stream::printf(this, "\n%*s", v18 + 2, "");
                X::Stream::printf(this, "(allowsEdgeAntialiasing true)");
                if ((*(v7 + 40) & 0x8000000000000000) == 0)
                {
                  goto LABEL_290;
                }

                goto LABEL_299;
              }

LABEL_270:
              X::Stream::printf(this, "\n%*s", v18 + 2, "");
              X::Stream::printf(this, "(rasterizationPrefersWindowServerAwareBackdrops true)");
              goto LABEL_271;
            }

LABEL_237:
            X::Stream::printf(this, "\n%*s", v18 + 2, "");
            X::Stream::printf(this, "(allowedContentsHideSublayers true)");
            goto LABEL_238;
          }

LABEL_115:
          X::Stream::printf(this, "\n%*s", v18 + 2, "");
          X::Stream::printf(this, "(flipsHorizontalAxis true)");
          goto LABEL_116;
        }

LABEL_77:
        X::Stream::printf(this, "\n%*s", v18 + 2, "");
        X::Stream::printf(this, "(contentsAlignsToPixels true)");
        goto LABEL_78;
      }

LABEL_36:
      X::Stream::printf(this, "\n%*s", v18 + 2, "");
      X::Stream::printf(this, "(geometryFlipped true)");
      v24 = *(v7 + 40);
      goto LABEL_37;
    }
  }

  return CA::Render::Layer::show_compressed(v7, this, a3, a4);
}

uint64_t CA::Render::Layer::show_compressed(uint64_t result, X::Stream *this, int a3, uint64_t a4)
{
  if ((*(result + 45) & 4) != 0)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 152);
  if (v8)
  {
    if ((*(v8 + 104) & 0x300000000000) == 0x200000000000)
    {
      return result;
    }
  }

  v9 = a3 + 1;
  X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
  v10 = *(v7 + 12);
  v11 = "transform-";
  if ((v10 & 0x100) == 0)
  {
    v11 = "";
  }

  if ((v10 & 0x800) != 0)
  {
    v12 = "container ";
  }

  else
  {
    v12 = "";
  }

  X::Stream::printf(this, "*%slayer %s[%.10g %.10g %.10g %.10g]", v11, v12, *(v7 + 72), *(v7 + 80), *(v7 + 88), *(v7 + 96));
  v13 = *(v7 + 152);
  if (v13)
  {
    v14 = v13[32];
    v15 = v13[33];
    v16 = v14 >= v15 ? v13[33] : v13[32];
    if (v16 >= 1)
    {
      X::Stream::printf(this, " [%d %d %d %d]", v13[30], v13[31], v14, v15);
    }
  }

  if ((a4 & 2) == 0 && *(v7 + 128))
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(name ");
    (*(**(v7 + 128) + 40))(*(v7 + 128), this, (a3 + 1), a4);
    X::Stream::printf(this, ")");
  }

  v17 = *(v7 + 152);
  if (v17 && *(v17 + 100))
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "[%d passes", *(v17 + 100) >> 28);
    v18 = *(v17 + 100);
    if ((v18 & 0x1FFFF) != 0)
    {
      CA::Render::print_offscreen_flags(this, v18 & 0x1FFFF);
      v18 = *(v17 + 100);
    }

    v19 = (v18 >> 17) & 0x7FF;
    if (v19)
    {
      CA::Render::print_group_flags(this, v19);
    }

    X::Stream::printf(this, "]");
  }

  v20 = *(v7 + 136);
  if (v20)
  {
    if ((*(v20 + 348) & 1) == 0)
    {
      goto LABEL_30;
    }

    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    v21 = *(v7 + 136);
    if (v21)
    {
      v21 = *(v21 + 348) & 1;
    }

    X::Stream::printf(this, "(contentsSwizzle %s)", CA::Render::Layer::show(x_stream_struct *,unsigned int,unsigned int)const::names[v21]);
    v20 = *(v7 + 136);
    if (v20)
    {
LABEL_30:
      v22 = *(v20 + 72);
      if (!v22 || (X::Stream::printf(this, "\n%*s", 2 * v9, ""), X::Stream::printf(this, "(cornerRadii [%g %g] [%g %g] [%g %g] [%g %g])", v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10]), (v20 = *(v7 + 136)) != 0))
      {
        if (*(v20 + 232) == 0.0)
        {
          goto LABEL_41;
        }

        X::Stream::printf(this, "\n%*s", 2 * v9, "");
        v23 = *(v7 + 136);
        v24 = 0.0;
        if (v23)
        {
          v24 = *(v23 + 232);
        }

        X::Stream::printf(this, "(cornerRadius %g)", v24);
        v20 = *(v7 + 136);
        if (v20)
        {
LABEL_41:
          if (*(v20 + 236) == 0.0 || ((X::Stream::printf(this, "\n%*s", 2 * v9, ""), (v25 = *(v7 + 136)) == 0) ? (v26 = 0.0) : (v26 = *(v25 + 236)), X::Stream::printf(this, "(borderOffset %g)", v26), (v20 = *(v7 + 136)) != 0))
          {
            if (*(v20 + 240) != 0.0)
            {
              X::Stream::printf(this, "\n%*s", 2 * v9, "");
              v27 = *(v7 + 136);
              if (v27)
              {
                v28 = *(v27 + 240);
              }

              else
              {
                v28 = 0.0;
              }

              X::Stream::printf(this, "(borderWidth %g)", v28);
            }
          }
        }
      }
    }
  }

  if ((*(v7 + 49) & 0x10) == 0)
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(borderPathIsBounds false)");
  }

  v29 = *(v7 + 136);
  if (v29 && *(v29 + 320) != 0.0)
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    v30 = *(v7 + 136);
    if (v30)
    {
      v31 = *(v30 + 320);
    }

    else
    {
      v31 = 0.0;
    }

    X::Stream::printf(this, "(rimWidth %g)", v31);
  }

  if ((*(v7 + 49) & 8) == 0)
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(rimPathIsBounds false)");
  }

  v32 = *(v7 + 136);
  if (v32 && *(v32 + 56))
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(cornerContents ");
    (*(**(*(v7 + 136) + 56) + 40))(*(*(v7 + 136) + 56), this, (a3 + 1), a4);
    X::Stream::printf(this, ")");
  }

  if ((*(v7 + 40) & 0x300000000) != 0x100000000)
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    v33 = *(v7 + 44) & 3;
    if (v33 > 1)
    {
      if (v33 == 3)
      {
        X::Stream::printf(this, "(cornerCurve ID1)");
      }

      else
      {
        X::Stream::printf(this, "(cornerCurve ID0)");
      }
    }

    else if (v33)
    {
      X::Stream::printf(this, "(cornerCurve continuous)");
    }
  }

  if (*(v7 + 50))
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(cornerContentsMasksEdges true)");
  }

  v34 = *(v7 + 40);
  v35 = HIWORD(v34) & 0xF;
  if (v35 && v35 != 15)
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    v36 = "minX-minY";
    if ((v34 & 0x10000) == 0)
    {
      v36 = "";
    }

    v37 = "maxX-minY";
    if ((v34 & 0x20000) == 0)
    {
      v37 = "";
    }

    v38 = "minX-maxY";
    if ((v34 & 0x40000) == 0)
    {
      v38 = "";
    }

    v39 = "maxX-maxY";
    if ((v34 & 0x80000) == 0)
    {
      v39 = "";
    }

    X::Stream::printf(this, "(maskedCorners %s%s%s%s%s)", v36, v37, v38, v39, "");
  }

  if (*(v7 + 104))
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    v40 = (*(**(v7 + 104) + 80))(*(v7 + 104));
    v41 = " ";
    if (v40 && (*(v40 + 14) & 0x10) != 0)
    {
      v41 = "-backingStore ";
    }

    X::Stream::printf(this, "|contents");
    X::Stream::printf(this, "%s", v41);
    (*(**(v7 + 104) + 40))(*(v7 + 104), this, (a3 + 1), a4);
    X::Stream::printf(this, "|");
  }

  v42 = *(v7 + 40);
  if ((v42 & 0xF0) != 0x10)
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    if ((*(v7 + 40) >> 4) > 0xAu)
    {
      v43 = 0;
    }

    else
    {
      v43 = [(__CFString *)CAAtomGetString(CA::Render::image_filter_atoms[*(v7 + 40) >> 4]) cStringUsingEncoding:4];
    }

    if (v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = "<unknown>";
    }

    X::Stream::printf(this, "(magnificationFilter %s)", v44);
    v42 = *(v7 + 40);
  }

  if ((v42 & 0xF) != 1)
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    v45 = *(v7 + 40) & 0xFLL;
    if (v45 > 0xA)
    {
      v46 = 0;
    }

    else
    {
      v46 = [(__CFString *)CAAtomGetString(CA::Render::image_filter_atoms[v45]) cStringUsingEncoding:4];
    }

    if (v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = "<unknown>";
    }

    X::Stream::printf(this, "(minificationFilter %s)", v47);
  }

  if ((*(v7 + 50) & 4) != 0)
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(contentsContainsSubtitles true)");
  }

  v48 = *(v7 + 40);
  if ((v48 & 0x10000000000000) != 0)
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(shouldRasterize true)");
    v48 = *(v7 + 40);
    if ((v48 & 0x20000000000000) == 0)
    {
LABEL_104:
      if ((v48 & 0x40000000000000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_114;
    }
  }

  else if ((v48 & 0x20000000000000) == 0)
  {
    goto LABEL_104;
  }

  X::Stream::printf(this, "\n%*s", 2 * v9, "");
  X::Stream::printf(this, "(shouldFlatten true)");
  v48 = *(v7 + 40);
  if ((v48 & 0x40000000000000) == 0)
  {
LABEL_105:
    if ((v48 & 0x400000000000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_115;
  }

LABEL_114:
  X::Stream::printf(this, "\n%*s", 2 * v9, "");
  X::Stream::printf(this, "(shouldReflatten true)");
  v48 = *(v7 + 40);
  if ((v48 & 0x400000000000000) == 0)
  {
LABEL_106:
    if ((v48 & 0x800000000000000) == 0)
    {
      goto LABEL_107;
    }

LABEL_116:
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(createsCompositingGroup true)");
    if ((*(v7 + 40) & 0x8000000000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_117;
  }

LABEL_115:
  X::Stream::printf(this, "\n%*s", 2 * v9, "");
  X::Stream::printf(this, "(preloadsCache true)");
  v48 = *(v7 + 40);
  if ((v48 & 0x800000000000000) != 0)
  {
    goto LABEL_116;
  }

LABEL_107:
  if ((v48 & 0x8000000000000000) == 0)
  {
    goto LABEL_108;
  }

LABEL_117:
  X::Stream::printf(this, "\n%*s", 2 * v9, "");
  X::Stream::printf(this, "(wantsExtendedDynamicRangeContent true)");
LABEL_108:
  v49 = *(v7 + 136);
  if (v49)
  {
    if (*(v49 + 228) == 3.0 || ((X::Stream::printf(this, "\n%*s", 2 * v9, ""), (v50 = *(v7 + 136)) == 0) ? (v51 = 3.0) : (v51 = *(v50 + 228)), X::Stream::printf(this, "(shadowRadius %g)", v51), (v49 = *(v7 + 136)) != 0))
    {
      if (*(v49 + 120))
      {
        X::Stream::printf(this, "\n%*s", 2 * v9, "");
        X::Stream::printf(this, "(shadowPath ");
        (*(**(*(v7 + 136) + 120) + 40))(*(*(v7 + 136) + 120), this, (a3 + 1), a4);
        X::Stream::printf(this, ")");
      }
    }
  }

  v52 = *(v7 + 48);
  if ((v52 & 0x100) == 0)
  {
    if ((v52 & 0x200) == 0)
    {
      goto LABEL_124;
    }

LABEL_149:
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(allowsCornerContentsEdgeEffects true)");
    if ((*(v7 + 48) & 0x400) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  X::Stream::printf(this, "\n%*s", 2 * v9, "");
  X::Stream::printf(this, "(shadowPathIsBounds true)");
  v52 = *(v7 + 48);
  if ((v52 & 0x200) != 0)
  {
    goto LABEL_149;
  }

LABEL_124:
  if ((v52 & 0x400) != 0)
  {
LABEL_125:
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(punchoutShadow true)");
  }

LABEL_126:
  v53 = *(v7 + 136);
  if (v53)
  {
    if (!v53[12] || (X::Stream::printf(this, "\n%*s", 2 * v9, ""), X::Stream::printf(this, "(filters: "), (*(**(*(v7 + 136) + 96) + 40))(*(*(v7 + 136) + 96), this, (a3 + 1), a4), X::Stream::printf(this, ")"), (v53 = *(v7 + 136)) != 0))
    {
      if (!v53[13] || (X::Stream::printf(this, "\n%*s", 2 * v9, ""), X::Stream::printf(this, "(backgroundFilters: "), (*(**(*(v7 + 136) + 104) + 40))(*(*(v7 + 136) + 104), this, (a3 + 1), a4), X::Stream::printf(this, ")"), (v53 = *(v7 + 136)) != 0))
      {
        if (!v53[11] || (X::Stream::printf(this, "\n%*s", 2 * v9, ""), X::Stream::printf(this, "(compositingFilter: "), (*(**(*(v7 + 136) + 88) + 40))(*(*(v7 + 136) + 88), this, (a3 + 1), a4), X::Stream::printf(this, ")"), (v53 = *(v7 + 136)) != 0))
        {
          if (v53[14])
          {
            X::Stream::printf(this, "\n%*s", 2 * v9, "");
            X::Stream::printf(this, "(meshTransform ");
            (*(**(*(v7 + 136) + 112) + 40))(*(*(v7 + 136) + 112), this, (a3 + 1), a4);
            X::Stream::printf(this, ")");
          }
        }
      }
    }
  }

  if (*(v7 + 144))
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(animations: ");
    (*(**(v7 + 144) + 40))(*(v7 + 144), this, (a3 + 1), a4);
    X::Stream::printf(this, ")");
  }

  v54 = *(v7 + 136);
  if (v54 && *(v54 + 136))
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(modifiers: ");
    (*(**(*(v7 + 136) + 136) + 40))(*(*(v7 + 136) + 136), this, (a3 + 1), a4);
    X::Stream::printf(this, ")");
  }

  if (*(v7 + 120))
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "{mask ");
    (*(**(v7 + 120) + 40))(*(v7 + 120), this, (a3 + 1), a4);
    X::Stream::printf(this, "}");
  }

  v55 = *(v7 + 136);
  if (v55 && *v55)
  {
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "{subclass ");
    (*(***(v7 + 136) + 40))(**(v7 + 136), this, (a3 + 1), a4);
    X::Stream::printf(this, "}");
  }

  result = *(v7 + 112);
  if ((*(v7 + 13) & 0x20) != 0)
  {
    if (!result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  v56 = *(*result + 40);

  return v56();
}

char *CA::Render::print_offscreen_flags(X::Stream *a1, unsigned int a2)
{
  X::Stream::printf(a1, " (offscreen-flags%s", " [");
  CA::Render::print_flags(a1, a2, 0, CA::Render::offscreen_flag_names, 0x11uLL);
  return X::Stream::printf(a1, "%s)", "]");
}

char *CA::Render::print_group_flags(X::Stream *a1, unsigned int a2)
{
  X::Stream::printf(a1, " (group-flags%s", " [");
  CA::Render::print_flags(a1, a2, 0, CA::Render::group_flag_names, 0xBuLL);
  return X::Stream::printf(a1, "%s)", "]");
}

char *CA::Render::print_flags(char *this, unint64_t a2, unint64_t a3, const char **a4, unint64_t a5)
{
  if (a2 | a3)
  {
    v7 = a3;
    v8 = a2;
    v9 = this;
    v10 = 1;
    v11 = 1;
    do
    {
      if (v8)
      {
        if (v11)
        {
          v12 = "";
        }

        else
        {
          v12 = " ";
        }

        this = X::Stream::printf(v9, "%s%s", v12, *a4);
        v11 = 0;
      }

      if (v10 >= a5)
      {
        break;
      }

      v13 = v8 <= 1;
      *(&v14 + 1) = v7;
      *&v14 = v8;
      v8 = v14 >> 1;
      v7 >>= 1;
      ++v10;
      ++a4;
    }

    while (!v13);
  }

  return this;
}

uint64_t CA::Render::Layer::evaluate_container(uint64_t this, const double *a2)
{
  v2 = this;
  v3 = *(this + 12);
  if ((v3 & 0x1000) != 0 || (this = CA::Render::Layer::is_containerable(this, a2), !this))
  {
    v4 = v3 & 0xFFFFF7FF;
  }

  else
  {
    v4 = v3 | 0x800;
  }

  *(v2 + 12) = v4;
  return this;
}

float64_t CA::Render::Layer::frame(CA::Render::Layer *this, const CA::Render::Layer *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 9);
  *this = v11;
  v10 = *(a2 + 5);
  *(this + 8) = v10;
  *(this + 3) = *(a2 + 12);
  v13 = 0uLL;
  v14 = 0;
  if (CA::Render::Layer::compute_frame_offset(a2, a3, &v13))
  {
    v6 = vdupq_lane_s64(v10, 0);
    v6.f64[0] = v11;
    v7 = vaddq_f64(v13, v6);
    *this = v7;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    CA::Render::Layer::compute_frame_transform(a2, a3, v12, 0);
    *&v7.f64[0] = CA::Mat4Impl::mat4_apply_to_rect(v12, this, v8).u64[0];
  }

  return v7.f64[0];
}

uint64_t CA::Render::Layer::get_valid_occlusion(float32x4_t *this, float a2, float a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = this[8].i64[1];
  if (!v4)
  {
    goto LABEL_56;
  }

  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_56;
  }

  v6 = *(v5 + 12);
  if (v6 != 3)
  {
LABEL_28:
    switch(v6)
    {
      case 7u:
        if (this[2].i8[13])
        {
          LOBYTE(a2) = this[2].i8[4];
          a2 = LODWORD(a2) * 0.0039216;
          if (a2 < 0.102)
          {
            return 7;
          }
        }

        break;
      case 0x2Au:
        v25 = this[8].i64[1];
        if (v25)
        {
          v26 = *(v25 + 88);
          if (v26)
          {
            if (*(v26 + 24) == 186)
            {
              return 9;
            }
          }
        }

        break;
      case 0x30u:
        v23 = this[8].i64[1];
        if (v23)
        {
          v24 = *(v23 + 88);
          if (v24 && *(v24 + 24) == 186)
          {
            return 2;
          }

          v23 = *v23;
          if (v23 && *(v23 + 12) != 48)
          {
            v23 = 0;
          }
        }

        v27 = *(v23 + 136);
        if (v27 > 5)
        {
          if (v27 == 6)
          {
            a2 = *(v23 + 24);
          }

          else
          {
            if (v27 != 8)
            {
              break;
            }

            a2 = *(v23 + 112);
          }

          if (a2 <= 2.0)
          {
            return 3;
          }
        }

        else
        {
          if (v27 == 3)
          {
            return 4;
          }

          if (v27 == 5)
          {
            LOBYTE(a3) = this[2].i8[4];
            a2 = (*(v23 + 48) * 0.0039216) * LODWORD(a3);
            if (a2 <= 0.15)
            {
              return 1;
            }
          }
        }

        break;
    }

LABEL_56:
    LOBYTE(a2) = this[2].i8[4];
    v28 = LODWORD(a2) * 0.0039216;
    if (v28 < 0.05)
    {
      if (this[6].i64[1])
      {
        return 10;
      }

      if ((this->i8[13] & 0x20) != 0)
      {
        v29 = this[7].i64[0];
        if (v29)
        {
          if (*(v29 + 104))
          {
            return 10;
          }
        }
      }
    }

    if (v28 <= 0.9 || v28 >= 0.905 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(this[1], xmmword_183E20E40)))) & 1) != 0)
    {
      if (this[2].i8[13])
      {
        v30 = this[8].i64[0];
        if (v30)
        {
          if (!strcmp((v30 + 28), "fill"))
          {
            v31 = this[1].f32[0];
            if ((v31 < 0.12 || v31 > 0.99) && this[1].f32[3] == 1.0)
            {
              return 8;
            }
          }
        }
      }

      if (v28 >= 0.851 || v28 <= 0.85)
      {
        return 0;
      }

      return 12;
    }

    return 7;
  }

  if ((v6 & 0x40400) != 0)
  {
    return 5;
  }

  v8 = v4[12];
  if (!v8 || (v9 = *(v8 + 16), !v9))
  {
LABEL_24:
    LOBYTE(a2) = this[2].i8[4];
    a2 = LODWORD(a2) * 0.0039216;
    a3 = 0.9;
    if (a2 > 0.9)
    {
      a3 = 0.905;
      if (a2 < 0.905)
      {
        return 7;
      }
    }

    v6 = *(v5 + 12);
    if (v6 & 0x1000) != 0 && (this[2].i8[13])
    {
      return 11;
    }

    goto LABEL_28;
  }

  v10 = v8 + 8 * v9 + 24;
  v11 = (v8 + 24);
  while (1)
  {
    v12 = *v11;
    v13 = *(*v11 + 24);
    if (v13 == 283)
    {
      v14 = *(v12 + 40);
      float_key = CA::Render::KeyValueArray::get_float_key(v14, 428, 1.0);
      v33 = 0uLL;
      CA::Render::KeyValueArray::get_float_color_key(v14, 422, &v33);
      LOBYTE(v16) = this[2].i8[4];
      a2 = float_key * ((0.0039216 * v33.f32[3]) * v16);
      if (a2 <= 0.15)
      {
        return 1;
      }

      v13 = *(v12 + 24);
    }

    if (v13 == 737)
    {
      v17 = *(v12 + 40);
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = 0;
          v20 = v17 + 24;
          while (1)
          {
            v21 = *(v20 + 8 * v19);
            if (*(v21 + 16) == 431)
            {
              break;
            }

            if (v18 == ++v19)
            {
              goto LABEL_23;
            }
          }

          if ((v19 & 0x80000000) == 0)
          {
            v22 = *(v21 + 24);
            if (v22)
            {
              if (!strcmp((v22 + 28), "blurMask") || !strcmp((v22 + 28), "PocketBlurMask"))
              {
                return 6;
              }
            }
          }
        }
      }
    }

LABEL_23:
    if (++v11 == v10)
    {
      goto LABEL_24;
    }
  }
}

CA::Render::Layer *CA::Render::Layer::set_contents_swizzle(CA::Render::Layer *result, int a2)
{
  v2 = a2;
  if (a2 || *(result + 17))
  {
    result = CA::Render::Layer::ensure_ext(result);
    *(result + 348) = *(result + 348) & 0xFE | v2 & 1;
  }

  return result;
}

uint64_t CA::Render::get_transform_property(CA::Render *this, CA::Render::Vector *a2, int *a3, unsigned int *a4, double *a5)
{
  v7 = a2;
  v30 = *MEMORY[0x1E69E9840];
  v9 = &CA::Mat4Impl::mat4_identity_double;
  if (this)
  {
    v10 = *(this + 4);
    v11 = (this + 24);
    if (v10 > 0xF)
    {
      v9 = v11;
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  CA::Mat4Impl::mat4_get_unmatrix(v9, &v21, 0);
  if (v7 != 2)
  {
    if (v7 == 1)
    {
      v12 = *a3;
      if (*a3 == 720)
      {
        *a4 = v24;
        *(a4 + 2) = v25;
        return 3;
      }

      if (v12 != 621)
      {
        if (v12 == 616)
        {
LABEL_9:
          v13 = *(&v28 + 1);
LABEL_19:
          *a4 = v13;
          return 1;
        }

        return 0;
      }

      v17 = *(&v21 + 1) + *&v21 + *&v22;
      v18 = 0.333333333;
LABEL_18:
      v13 = v17 * v18;
      goto LABEL_19;
    }

    return 0;
  }

  v14 = *a3;
  if (*a3 == 616)
  {
    v20 = a3[1];
    switch(v20)
    {
      case 762:
        goto LABEL_9;
      case 760:
        v13 = *&v28;
        goto LABEL_19;
      case 756:
        v13 = *(&v27 + 1);
        goto LABEL_19;
    }

    return 0;
  }

  if (v14 == 720)
  {
    v19 = a3[1];
    switch(v19)
    {
      case 762:
        v13 = *&v25;
        goto LABEL_19;
      case 760:
        v13 = *(&v24 + 1);
        goto LABEL_19;
      case 756:
        v13 = *&v24;
        goto LABEL_19;
    }

    return 0;
  }

  if (v14 != 621)
  {
    return 0;
  }

  result = 0;
  v16 = a3[1];
  if (v16 > 759)
  {
    if (v16 == 760)
    {
      v13 = *(&v21 + 1);
      goto LABEL_19;
    }

    if (v16 == 762)
    {
      v13 = *&v22;
      goto LABEL_19;
    }
  }

  else
  {
    if (v16 == 756)
    {
      v13 = *&v21;
      goto LABEL_19;
    }

    if (v16 == 759)
    {
      v17 = *(&v21 + 1) + *&v21;
      v18 = 0.5;
      goto LABEL_18;
    }
  }

  return result;
}

unint64_t CA::Render::TypedArray<CA::Render::Layer>::find_named_object(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if ((a2 & 0x40000000) == 0)
  {
    v5 = 0;
    v6 = a1 + 24;
    do
    {
      v7 = *(*(v6 + 8 * v5) + 128);
      if (v7)
      {
        if (CA::Render::String::equal(v7, a2))
        {
          return v5;
        }

        v2 = *(a1 + 16);
      }

      ++v5;
    }

    while (v5 < v2);
    return 0xFFFFFFFFLL;
  }

  if ((a2 & 0xBFFFFFFF) >= v2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2 & 0xBFFFFFFF;
  }
}

BOOL CA::Render::atom_is_single_sublayer(CA::Render *this, uint64_t a2, CA::Render::Layer *a3)
{
  v3 = this;
  if ((this & 0x40000000) != 0)
  {
    return (this & 0xBFFFFFFF) == 0;
  }

  v4 = *(a2 + 128);
  return v4 && CA::Render::String::equal(v4, v3);
}

BOOL CA::Render::Layer::has_hit_test_insecure_properties(CA::Render::Layer *this, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 && (*(this + 17) || *(this + 14) || *(this + 15)))
  {
    return 1;
  }

  v4 = 0u;
  v5 = 0u;
  BYTE4(v5) = *(this + 36);
  WORD3(v5) = *(this + 19);
  *(&v5 + 1) = *(this + 5) & 0x200004030000FF00 | 0x13000000F0011;
  v6 = 0;
  v3 = *(this + 12) & 0x100000 | 0x801810;
  if (a2)
  {
    v3 = 9443344;
  }

  LODWORD(v6) = v3 | *(this + 12) & 0xC;
  v8 = *(this + 72);
  v9 = *(this + 88);
  v7 = *(this + 56);
  return memcmp(&v4, this + 16, 0x58uLL) != 0;
}

uint64_t CA::Render::Layer::count_layers(uint64_t this, int *a2, int *a3, char a4)
{
  LOBYTE(v4) = a4;
  v7 = this;
  while (1)
  {
    if (v4 || (*(v7 + 45) & 4) != 0 || (v8 = *(v7 + 152)) != 0 && (*(v8 + 104) & 0x300000000000) == 0x200000000000)
    {
      ++*a3;
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    ++*a2;
    v9 = *(v7 + 136);
    if (v9)
    {
      this = *v9;
      if (*v9)
      {
        this = (*(*this + 240))(this, a2, a3, v4);
      }
    }

    v10 = *(v7 + 112);
    if ((*(v7 + 13) & 0x20) == 0)
    {
      break;
    }

    v7 = *(v7 + 112);
    if (!v10)
    {
      return this;
    }
  }

  if (v10 && *(v10 + 16))
  {
    v11 = 0;
    do
    {
      this = CA::Render::Layer::count_layers(*(v10 + 24 + 8 * v11++), a2, a3, v4);
    }

    while (v11 < *(v10 + 16));
  }

  return this;
}

__CFString *CA::Render::create_layer_resource_text(CA::Render *this, const CA::Render::Layer *a2)
{
  if (byte_1ED4E98C4 != 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(0, 0);
  v5 = *(this + 16);
  if (v5)
  {
    v6 = CFStringCreateWithCString(0, (v5 + 28), 0x8000100u);
    CFStringAppend(Mutable, @"_");
    CFStringAppend(Mutable, v6);
    CFRelease(v6);
  }

  return Mutable;
}

void *CA::OGL::GlyphCache::reallocate(CA::OGL::GlyphCache *this)
{
  if (*(this + 1))
  {
    (*(**this + 912))();
  }

  *(this + 1) = (*(**this + 904))(*this, *(this + 2), 16);
  *(this + 3) = 0;
  *(this + 4) = 0;

  return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(this + 5);
}

uint64_t CA::OGL::GlyphCache::flush(float32x4_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v6 = a2;
  result = (*((*a1)->i64[0] + 904))(*a1, 24 * a2, 16);
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = 0;
  v11 = *result;
  v12 = (a4 + 4);
  do
  {
    v13 = *a3;
    if (*(*a3 + 20) && v13[6])
    {
      v14 = v11 + 24 * v10;
      *&v15 = (v13[3] + *(v12 - 1));
      *v14 = v15;
      *(&v15 + 1) = (v13[4] + *v12);
      *v14 = v15;
      *&v15 = v13[5];
      *(v14 + 8) = v15;
      *(&v15 + 1) = v13[6];
      ++v10;
      *(v14 + 8) = v15;
      v16 = v13[9];
      v24[0] = v13 + 9;
      *(v14 + 16) = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 5, v16) + 5);
      *(v14 + 20) = v13[5];
    }

    v12 += 2;
    a3 += 8;
    --v6;
  }

  while (v6);
  if (v10)
  {
    (*((*a1)->i64[0] + 920))(*a1, v9, 24 * v10, 0);
    v18 = a1[3];
    v17 = a1[4];
    if (v18 > v17)
    {
      (*((*a1)->i64[0] + 920))(*a1, a1[1], v18 - v17);
      a1[4] = a1[3];
    }

    *((*a1)[1].i64[0] + 16) = 111;
    v19 = *((*a1)[1].i64[0] + 8);
    v20 = ((*a1)[86].u16[4] >> 12) & 7;
    v21 = HIWORD(v19);
    if (v20 != 2)
    {
      if (v20 != 1)
      {
        goto LABEL_15;
      }

      v19 = v19 & 0xFFFFFFFFFFFF0000 | v21;
    }

    v19 = v19 & 0xFFFF00000000FFFFLL | (v21 << 16) | (v21 << 32);
LABEL_15:
    (*a1)[10] = vmulq_f32(vcvtq_f32_f16(v19), vdupq_n_s32(0x3B808081u));
    v23 = 0u;
    v26 = 0u;
    v22 = *((*a1)[41].i64[0] + 8);
    v24[0] = *a1;
    v24[1] = v22;
    v25 = 0u;
    v24[2] = 0;
    WORD4(v25) = 0;
    CA::OGL::Context::ClippedArray::start(v24);
    while (CA::OGL::Context::ClippedArray::next_rect(v24, &v23))
    {
      (*((*a1)->i64[0] + 416))(*a1, v10, v9, a1[1]);
    }
  }

  (*((*a1)->i64[0] + 912))(*a1, v9);
  return 1;
}

uint64_t CA::OGL::GlyphCache::emit_glyphs(CA::OGL::GlyphCache *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(this + 1);
  if (!v8)
  {
    CA::OGL::GlyphCache::reallocate(this);
    v8 = *(this + 1);
    if (!v8)
    {
      return 0;
    }
  }

  if (a2)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = *(a3 + 8 * v9);
      v13 = v11[5];
      v12 = v11[6];
      if (v13)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14 && (*(this + 2) < (v13 * v12) || v11[7] != 8))
      {
        return 0;
      }

      v9 = v10++;
    }

    while (v9 < a2);
    v15 = 0;
    v16 = 0;
    v28 = a4;
    while (1)
    {
      v17 = *(a3 + 8 * v15);
      v18 = v17[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      v19 = v17[6];
      if (!v19)
      {
        goto LABEL_25;
      }

      v31 = v17[9];
      if (std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(this + 5, v31))
      {
        goto LABEL_25;
      }

      v20 = v18 * v19;
      v21 = *(this + 3);
      v30 = v20;
      if ((v21 + v20) <= v8[1])
      {
        break;
      }

      result = CA::OGL::GlyphCache::flush(this, v15 - v16, a3 + 8 * v16, a4 + 8 * v16);
      if (!result)
      {
        return result;
      }

      CA::OGL::GlyphCache::reallocate(this);
      v21 = *(this + 3);
      if (v17[6])
      {
        v8 = *(this + 1);
        v18 = v17[5];
        v29 = v15;
        goto LABEL_21;
      }

      v16 = v15;
LABEL_24:
      v32 = &v31;
      *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 5, v31) + 5) = v21;
      v27 = *(this + 3) + v30;
      *(this + 3) = v27;
      v8 = *(this + 1);
      if (v27 > v8[1])
      {
        __assert_rtn("emit_glyphs", "ogl-glyph-cache.cpp", 177, "_buffer_end <= _buffer->size");
      }

LABEL_25:
      v15 = (v15 + 1);
      if (v15 >= a2)
      {
        return CA::OGL::GlyphCache::flush(this, a2 - v16, a3 + 8 * v16, a4 + 8 * v16);
      }
    }

    v29 = v16;
LABEL_21:
    v23 = v17[8];
    v24 = 0;
    v25 = (*v8 + v21);
    v26 = (v17 + 10);
    do
    {
      memcpy(v25, v26, v18);
      v26 += v23;
      v25 += v18;
      ++v24;
    }

    while (v24 < v17[6]);
    v21 = *(this + 3);
    a4 = v28;
    v16 = v29;
    goto LABEL_24;
  }

  v16 = 0;
  return CA::OGL::GlyphCache::flush(this, a2 - v16, a3 + 8 * v16, a4 + 8 * v16);
}

char *CA::Render::Filter::show(uint64_t a1, X::Stream *a2, int a3, char a4)
{
  v8 = [(__CFString *)CAAtomGetString(*(a1 + 24)) cStringUsingEncoding:4];
  if (a4)
  {
    return X::Stream::printf(a2, "%s;", v8);
  }

  X::Stream::printf(a2, "(filter %s", v8);
  if ((*(a1 + 13) & 1) == 0)
  {
    X::Stream::printf(a2, "\n%*s", 2 * a3 + 2, "");
    X::Stream::printf(a2, "(enabled false)");
  }

  if (*(a1 + 40))
  {
    X::Stream::printf(a2, "\n%*s", 2 * (a3 + 1), "");
    X::Stream::printf(a2, "(inputs ");
    CA::Render::show_object(a2, *(a1 + 40));
    X::Stream::printf(a2, ")");
  }

  return X::Stream::printf(a2, ")");
}

CA::Render::Filter *CA::Render::Filter::copy_with_inputs(CA::Render::Filter *this, atomic_uint *a2)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
  if (result)
  {
    result = CA::Render::Filter::Filter(result, *(this + 6), *(this + 4), a2);
  }

  *(result + 3) |= *(this + 3) & 0xFFFFFD00;
  return result;
}

double CA::Render::get_glass_filter_bleed_blur_radius(CA::Render *this, const CA::Render::KeyValueArray *a2)
{
  float_key = CA::Render::KeyValueArray::get_float_key(this, 343, 1.0);
  result = 0.0;
  if (float_key > 0.0)
  {
    return CA::Render::KeyValueArray::get_float_key(this, 334, 100.0) * 0.5;
  }

  return result;
}

double CA::Render::get_glass_filter_shadow_blur_radius(CA::Render *this, const CA::Render::KeyValueArray *a2)
{
  float_key = CA::Render::KeyValueArray::get_float_key(this, 428, 1.0);
  result = 0.0;
  if (float_key > 0.0)
  {
    return CA::Render::KeyValueArray::get_float_key(this, 418, 25.0) * 0.5;
  }

  return result;
}

void *non-virtual thunk toCA::WindowServer::AccelServer::delete_fence(void *this, uint64_t a2)
{
  if (a2)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 320))();
    }
  }

  return this;
}

uint64_t non-virtual thunk toCA::WindowServer::AccelServer::test_fence(CA::WindowServer::AccelServer *this, uint64_t a2)
{
  if (a2 && (v2 = *(this + 1)) != 0)
  {
    return (*(*v2 + 312))();
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toCA::WindowServer::AccelServer::set_fence(CA::WindowServer::AccelServer *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 304))();
  }

  return result;
}

uint64_t non-virtual thunk toCA::WindowServer::AccelServer::supports_fences(CA::WindowServer::AccelServer *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 296))();
  }

  return result;
}

uint64_t non-virtual thunk toCA::WindowServer::AccelServer::flush_command_stream(CA::WindowServer::AccelServer *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 456))(result, 1);
  }

  return result;
}

void *CA::WindowServer::AccelServer::delete_fence(void *this, uint64_t a2)
{
  if (a2)
  {
    this = this[182];
    if (this)
    {
      return (*(*this + 320))();
    }
  }

  return this;
}

uint64_t CA::WindowServer::AccelServer::test_fence(CA::WindowServer::AccelServer *this, uint64_t a2)
{
  if (a2 && (v2 = *(this + 182)) != 0)
  {
    return (*(*v2 + 312))();
  }

  else
  {
    return 0;
  }
}

uint64_t CA::WindowServer::AccelServer::set_fence(CA::WindowServer::AccelServer *this)
{
  result = *(this + 182);
  if (result)
  {
    return (*(*result + 304))();
  }

  return result;
}

uint64_t CA::WindowServer::AccelServer::supports_fences(CA::WindowServer::AccelServer *this)
{
  result = *(this + 182);
  if (result)
  {
    return (*(*result + 296))();
  }

  return result;
}

uint64_t CA::WindowServer::AccelServer::flush_command_stream(CA::WindowServer::AccelServer *this)
{
  result = *(this + 182);
  if (result)
  {
    return (*(*result + 456))(result, 1);
  }

  return result;
}

uint64_t CA::WindowServer::AccelServer::purge_resources(uint64_t this)
{
  v1 = *(this + 1464);
  if (v1)
  {
    return (*(**v1 + 272))(*v1, 1);
  }

  return this;
}

void CA::WindowServer::IOMFBServer::adjust_display_timings(CA::WindowServer::IOMFBServer *this, uint64_t a2)
{
  v3 = *(this + 12);
  os_unfair_lock_lock((v3 + 26304));
  CA::WindowServer::IOMFBDisplay::initialize_timings(v3);
  v4 = *(v3 + 26320);
  if (v4)
  {
    v5 = atomic_load(v4);
    if (a2)
    {
      if ((v5 & 1) != 0 && !*(v3 + 26368))
      {
        v6 = *(v3 + 26352) + a2;
        *(v3 + 26352) = v6;
        *(v3 + 26368) = 8;
        v7 = atomic_load((*(v3 + 26320) + 64));
        v8 = v6 - v7;
        v9 = atomic_load((*(v3 + 26320) + 72));
        v10 = v8 + v9;
        v11 = *(v3 + 26320);
        add = atomic_fetch_add((v11 + 28), 1u);
        atomic_store(*(v3 + 26352), (v11 + 64));
        atomic_store(v10, (v11 + 72));
        atomic_store(*(v3 + 26360), (v11 + 80));
        atomic_store(add + 2, (v11 + 28));
        __dmb(0xBu);
      }
    }
  }

  os_unfair_lock_unlock((v3 + 26304));
}

uint64_t CA::WindowServer::IOMFBServer::copy_brightness_capabilities(CA::WindowServer::IOMFBServer *this)
{
  v1 = *(this + 12);
  os_unfair_lock_lock((v1 + 27472));
  v2 = *(v1 + 27480);
  if (v2)
  {
    CFRetain(v2);
    v3 = *(v1 + 27480);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((v1 + 27472));
  return v3;
}