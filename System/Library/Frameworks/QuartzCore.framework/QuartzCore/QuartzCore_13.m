_BYTE *CAGetCachedCGBitmapContext_(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, size_t a5, CGColorSpaceRef space)
{
  v6 = space;
  v26 = *MEMORY[0x1E69E9840];
  if (a4 <= 0x23 && ((0x1FFFFFF2FuLL >> a4) & 1) == 0)
  {
    return 0;
  }

  if (a4 > 0x23)
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = dword_183E22570[a4];
    v13 = dword_183E22728[a4];
    v14 = dword_183E22600[a4];
    if (((0x7FFD9FFFuLL >> a4) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (CGColorSpaceUsesExtendedRange(space))
  {
    v6 = CAGetColorSpace(36);
  }

LABEL_9:
  if (a4 == 9)
  {
    v6 = 0;
  }

  os_unfair_lock_lock(&context_lock);
  v15 = context_list;
  if (context_list)
  {
    while ((v15[64] & 1) != 0 || *(v15 + 2) || *(v15 + 8) != v12 || *(v15 + 3) != v6 && !CGColorSpaceEqualToColorSpace())
    {
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    if (CGBitmapContextSetData())
    {
      v15[64] = 1;
    }

    else
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v19 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        v21 = v13;
        v22 = 2048;
        v23 = v14;
        v24 = 1024;
        v25 = v12;
        _os_log_error_impl(&dword_183AA6000, v19, OS_LOG_TYPE_ERROR, "CGBitmapContextSetData failed, bpc %zu, bpp %zu, info %u\n", buf, 0x1Cu);
      }

      v15 = 0;
    }

    goto LABEL_22;
  }

LABEL_18:
  os_unfair_lock_unlock(&context_lock);
  v16 = CGBitmapContextCreate(a1, a2, a3, v13, a5, v6, v12);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v15 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x48uLL, 0x1020040FD15FAF7uLL);
  *(v15 + 2) = 0;
  *(v15 + 2) = v17;
  *(v15 + 3) = CGColorSpaceRetain(v6);
  *(v15 + 8) = v12;
  v15[64] = 1;
  os_unfair_lock_lock(&context_lock);
  *v15 = context_list;
  context_list = v15;
LABEL_22:
  os_unfair_lock_unlock(&context_lock);
  return v15;
}

void CAReleaseCachedCGContext(CGContext *a1)
{
  os_unfair_lock_lock(&context_lock);
  v2 = &context_list;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (v2[2] == a1)
    {
      os_unfair_lock_unlock(&context_lock);
      v3 = v2[7];
      if (v3)
      {
        v4 = *(v3 + 344);
        if (v4)
        {
          if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
          {
            (**v4)(v4);
            (*(*v4 + 16))(v4);
          }

          *(v3 + 344) = 0;
        }
      }

      v5 = v2[6];
      if (v5)
      {
        IOSurfaceUnlock(v5, 0, 0);
        CFRelease(v2[6]);
        v2[6] = 0;
      }

      v6 = v2[5];
      if (v6)
      {
        v7 = *(v6 + 72);
        if (v7)
        {
          CA::CG::Queue::flush(v7, 3, 0);
        }

        if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
        {
          (**v6)(v6);
          (*(*v6 + 16))(v6);
        }

        v2[5] = 0;
      }

      CGContextResetState();
      os_unfair_lock_lock(&context_lock);
      *(v2 + 64) = 0;

      os_unfair_lock_unlock(&context_lock);
      return;
    }
  }

  os_unfair_lock_unlock(&context_lock);

  CGContextRelease(a1);
}

uint64_t CABackingStoreCreate()
{
  if (memory_once != -1)
  {
    dispatch_once_f(&memory_once, 0, register_memory_handler);
  }

  if (CABackingStoreGetTypeID::once[0] != -1)
  {
    dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
  }

  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0u;
    *(Instance + 464) = 0u;
    *(Instance + 480) = 0u;
    *(Instance + 432) = 0u;
    *(Instance + 448) = 0u;
    *(Instance + 400) = 0u;
    *(Instance + 416) = 0u;
    *(Instance + 368) = 0u;
    *(Instance + 384) = 0u;
    *(Instance + 336) = 0u;
    *(Instance + 352) = 0u;
    *(Instance + 304) = 0u;
    *(Instance + 320) = 0u;
    *(Instance + 272) = 0u;
    *(Instance + 288) = 0u;
    *(Instance + 240) = 0u;
    *(Instance + 256) = 0u;
    *(Instance + 208) = 0u;
    *(Instance + 224) = 0u;
    *(Instance + 176) = 0u;
    *(Instance + 192) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 160) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 80) = 0u;
    pthread_mutex_init((Instance + 16), 0);
    pthread_cond_init((v1 + 80), 0);
    v2 = CAGetColorSpace(36);
    *(v1 + 160) = CGColorSpaceRetain(v2);
    pthread_mutex_lock(&buffer_list_mutex);
    v3 = buffer_list;
    if (buffer_list)
    {
      *(buffer_list + 176) = v1;
    }

    *(v1 + 168) = v3;
    *(v1 + 184) = *(v1 + 400);
    buffer_list = v1;
    *(v1 + 256) = v1 + 184;
    *(v1 + 328) = v1 + 256;
    *(v1 + 400) = v1 + 328;
    pthread_mutex_unlock(&buffer_list_mutex);
  }

  return v1;
}

uint64_t CABackingStoreSetColorSpace(uint64_t a1, CGColorSpace *a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = *(a1 + 160);
  if (v4 == a2)
  {
    goto LABEL_4;
  }

  if (!v4)
  {
LABEL_6:
    CGColorSpaceRelease(v4);
    *(a1 + 160) = CGColorSpaceRetain(a2);
    *(a1 + 492) |= 0x400u;
    v5 = 1;
    goto LABEL_7;
  }

  if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
  {
    v4 = *(a1 + 160);
    goto LABEL_6;
  }

LABEL_4:
  v5 = 0;
LABEL_7:
  pthread_mutex_unlock((a1 + 16));
  return v5;
}

uint64_t CABackingStoreInvalidate(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 16));
  if (a2)
  {
    if (!*(a1 + 440))
    {
      *(a1 + 440) = CGSBoundingShapeCreate();
    }

    CGSBoundingShapeAddRect();
    v4 = *(a1 + 492) & 0xFDFF;
  }

  else
  {
    v4 = *(a1 + 492) & 0xF9FF | 0x400;
  }

  *(a1 + 492) = v4;

  return pthread_mutex_unlock((a1 + 16));
}

uint64_t CABackingStoreSetDefaultAccelFlags(uint64_t a1)
{
  if (accel_once[0] != -1)
  {
    dispatch_once_f(accel_once, 0, accel_init);
  }

  if (accel_defined == 1)
  {
    if (accel_enabled == 1)
    {
      return a1 | 0x100;
    }

    else
    {
      return a1 & 0xFFFFFEFF;
    }
  }

  return a1;
}

uint64_t CABackingStoreUpdate_(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5, int a6, uint64_t a7, void (*a8)(void, uint64_t), uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v50 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 16));
  v18 = *(a1 + 480);
  if (v18)
  {
    if (v18 == pthread_self())
    {
      return pthread_mutex_unlock((a1 + 16));
    }

    while (*(a1 + 480))
    {
      pthread_cond_wait((a1 + 80), (a1 + 16));
    }
  }

  v19 = a9;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  color = 0;
  if (a4 != 36)
  {
    v21 = 0;
    v23 = 0.0;
    goto LABEL_13;
  }

  v48 = 0u;
  v49 = 0u;
  *cf = 0u;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  CACGContextEvaluator::CACGContextEvaluator(v45, a2, a3, *(a1 + 160));
  *(a1 + 480) = pthread_self();
  pthread_mutex_unlock((a1 + 16));
  a8(*(&v47 + 1), a9);
  pthread_mutex_lock((a1 + 16));
  *(a1 + 480) = 0;
  v20 = CACGContextEvaluator::suggested_format(v45, a5 & 1, &color, a11);
  if (v20 != -1)
  {
    a4 = v20;
    v21 = CFRetain(cf[0]);
    CGContextGetEDRTargetHeadroom();
    if (v22 == 0.0)
    {
      v23 = *(&v49 + 1);
    }

    else
    {
      v23 = v22;
    }

    CACGContextEvaluator::~CACGContextEvaluator(v45);
LABEL_13:
    v24 = a10;
    *(a1 + 128) = a2;
    *(a1 + 136) = a3;
    if ((a11 & 1) != 0 || v23 > 1.0) && a4 <= 0x1C && ((0x17826000u >> a4))
    {
      v25 = *(a1 + 160);
      Extended = CAColorSpaceCreateExtended(v25);
      CGColorSpaceRelease(v25);
      *(a1 + 160) = Extended;
      v24 = a10;
      v19 = a9;
    }

    if (!CABackingStorePrepareUpdates_(a1, a2, a3, a4, a5, a6, a7, v24, &v42))
    {
      goto LABEL_52;
    }

    v39 = v19;
    v27 = *(a1 + 408);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = *(*(v28 + 24) + 32);
      if (!v29)
      {
LABEL_44:
        CGColorRelease(*(v27 + 32));
        v36 = *(a1 + 408);
        *(v36 + 32) = color;
        color = 0;
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
        if (a10)
        {
          v37 = (*(*a10 + 72))(a10) + 1;
        }

        else
        {
          v37 = 0;
        }

        *(v36 + 56) = v37;
        *(v36 + 48) = 0;
        *(a1 + 472) = 0;
        *(a1 + 492) = 6;
        *(a1 + 408) = 0;
LABEL_52:
        pthread_cond_broadcast((a1 + 80));
        CGDisplayListRelease();
        CGColorRelease(color);
        return pthread_mutex_unlock((a1 + 16));
      }
    }

    else
    {
      v29 = 1;
    }

    for (i = 0; i != v29; ++i)
    {
      CABackingStoreBeginUpdate_(a1, a2, a3, v43, SHIDWORD(v43), a6, a7, i, &v42);
      if (*(a1 + 416))
      {
        if (v21)
        {
          CGContextSetEDRTargetHeadroom();
          CGDisplayListDrawInContext();
        }

        else
        {
          *(a1 + 480) = pthread_self();
          pthread_mutex_unlock((a1 + 16));
          a8(*(a1 + 416), v39);
          pthread_mutex_lock((a1 + 16));
          *(a1 + 480) = 0;
        }

        v31 = *(a1 + 400);
        if (v31)
        {
          *(v31 + 60) = v23;
        }

        v32 = *(a1 + 416);
        if (v32)
        {
          v33 = *(a1 + 408);
          v34 = *(v33 + 16);
          if (v34)
          {
            v35 = *(v34 + 24);
            if ((*(a1 + 492) & 0x1000) != 0)
            {
              MEMORY[0x1865EA9A0]();
            }

            else
            {
              CAReleaseCachedCGContext(v32);
            }

            *(a1 + 416) = 0;
            atomic_fetch_add((v35 + 4), 1u);
          }

          else if (*(v33 + 24))
          {
            CAReleaseCachedCGContext(v32);
            *(a1 + 416) = 0;
            *(a1 + 492) |= 0x800u;
          }
        }
      }
    }

    v27 = *(a1 + 408);
    goto LABEL_44;
  }

  if (a5 & 2) != 0 || (BYTE9(v48))
  {
    CABackingStoreReleaseImages(a1);
    CABackingStoreDeleteBuffer(*(a1 + 400));
    *(*(a1 + 400) + 65) = 1;
  }

  CACGContextEvaluator::~CACGContextEvaluator(v45);
  return pthread_mutex_unlock((a1 + 16));
}

uint64_t x_blame_allocations(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    v4 = MEMORY[0x1EEE9AC00](a1);
    v9[0] = backing_blame_callback;
    v9[1] = v5;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 592);
    *(StatusReg + 592) = v9;
    result = (*(v8 + 16))(v8, v4);
    *(StatusReg + 592) = v7;
  }

  else
  {
    v2 = *(a2 + 16);

    return v2(a2);
  }

  return result;
}

void CACGContextEvaluator::CACGContextEvaluator(CACGContextEvaluator *this, uint64_t a2, uint64_t a3, CGColorSpace *a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = CAColorSpaceCreateExtended(a4);
  *(this + 4) = CGDisplayListCreateWithRect();
  *(this + 5) = CGDisplayListContextCreate();
  Delegate = CGContextGetDelegate();
  *(this + 84) = 0;
  *(this + 6) = Delegate;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 40) = 0;
  CGContextDelegateCreate();
  CGContextDelegateSetCallbacks();
  *(this + 7) = CGContextCreateWithDelegate();
  CGContextDelegateRelease();
}

uint64_t backing_callback(CGContext *a1, CA::Layer *this)
{
  v4 = CA::Layer::prepare_context_for_drawing(this, a1, 1);
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(v4);
  }

  v6 = CA::Layer::layer_being_drawn(this, v5, 0x800000);

  return [v6 drawInContext:a1];
}

uint64_t CA::Layer::prepare_context_for_drawing(CA::Layer *this, CGContext *a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  memset(&v14, 0, sizeof(v14));
  CGContextGetBaseCTM();
  if ((*(this + 57) & 2) != 0)
  {
    [v6 contentsScale];
    v8 = v7;
    CGContextScaleCTM(a2, v7, v7);
    t1 = v14;
    CGAffineTransformScale(&transform, &t1, v8, v8);
    v14 = transform;
  }

  if (a3)
  {
    if ((*(this + 1) & 0x400000) == 0)
    {
      v9 = *(this + 15);
      transform.b = 0.0;
      transform.c = 0.0;
      transform.a = 1.0;
      *&transform.d = xmmword_183E20F00;
      transform.ty = v9;
      CGContextConcatCTM(a2, &transform);
      if (dyld_program_sdk_at_least())
      {
        t1.b = 0.0;
        t1.c = 0.0;
        t1.a = 1.0;
        *&t1.d = xmmword_183E20F00;
        t1.ty = v9;
        t2 = v14;
        CGAffineTransformConcat(&transform, &t1, &t2);
        v14 = transform;
      }
    }
  }

  if ((*(this + 56) & 8) != 0)
  {
    CGContextTranslateCTM(a2, -*(this + 12), -*(this + 13));
    if (dyld_program_sdk_at_least())
    {
      t1 = v14;
      CGAffineTransformTranslate(&transform, &t1, -*(this + 12), -*(this + 13));
      v14 = transform;
    }
  }

  if ((*(this + 53) & 4) == 0 && (*(this + 48) & 0x20) == 0)
  {
    CGContextSetEDRTargetHeadroom();
  }

  transform = v14;
  CGContextSetBaseCTM();
  return [v6 _prepareContext:a2];
}

uint64_t get_bounds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CGContextDelegateGetInfo() + 48);

  return MEMORY[0x1EEDB93C8](v5, a2, a3);
}

void CACGContextEvaluator::update_with_color(uint64_t a1, CGColor *a2, unsigned int a3, uint64_t a4)
{
  if (a2)
  {
    if (!a4 || (CGGStateGetEDRTargetHeadroom(), v8 == 0.0))
    {
      CGColorGetContentHeadroom();
    }

    if (v8 > *(a1 + 84))
    {
      *(a1 + 84) = v8;
    }

    Pattern = CGColorGetPattern(a2);
    Alpha = CGColorGetAlpha(a2);
    if (a3 != 2 || Alpha != 0.0 || Pattern)
    {
      *(a1 + 72) = 1;
      if (a3 < 0xB)
      {
        if (*(a1 + 77))
        {
LABEL_18:
          ColorSpace = CGColorGetColorSpace(a2);
          Image = CGPatternGetImage();
          if (Image)
          {
            CACGContextEvaluator::update_with_image(a1, Image, a4);
          }

          else if (CGPatternGetShading())
          {
            *(a1 + 72) = 1;
            *(a1 + 77) = 1;
            v14 = CGShadingGetColorSpace();
            CACGContextEvaluator::update_with_color_space(a1, v14, 1);
          }

          else if (Pattern)
          {
            *(a1 + 72) = 1;
            *(a1 + 79) = 257;
            *(a1 + 81) = 1;
            *(a1 + 74) = 16843009;
          }

          Components = CGColorGetComponents(a2);
          if (CGColorSpaceGetNumberOfComponents(ColorSpace) == 3)
          {
            v16 = Components[1];
            if (*Components == v16 && v16 == Components[2] && (ColorSpace == CAGetColorSpace(36) || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || ColorSpace == CAGetColorSpace(35) || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || ColorSpace == CAGetColorSpace(6) || CGColorSpaceEqualToColorSpaceIgnoringRange()))
            {
              ColorSpace = CAGetColorSpace(3);
            }
          }

          CACGContextEvaluator::update_with_color_space(a1, ColorSpace, 0);

          CACGContextEvaluator::update_with_color_components(a1, ColorSpace, Components);
          return;
        }

        v11 = *(a1 + 64);
        if (v11)
        {
          if (CGColorEqualToColor(v11, a2))
          {
            goto LABEL_18;
          }
        }

        else if (!Pattern)
        {
          *(a1 + 64) = CGColorRetain(a2);
          goto LABEL_18;
        }
      }

      *(a1 + 77) = 1;
      goto LABEL_18;
    }
  }
}

uint64_t CACGContextEvaluator::suggested_format(CACGContextEvaluator *this, int a2, CGColor **a3, int a4)
{
  if (*(this + 72) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 && (*(this + 77) & 1) == 0 && *(this + 8) && (a2 & 1) == 0)
  {
    *a3 = CGColorCreateCopyWithAlpha(*(this + 8), 1.0);
    return 9;
  }

  if (*(this + 76) == 1)
  {
    v5 = *(this + 79) == 0;
    LODWORD(v4) = 21;
LABEL_14:
    v6 = 13;
    goto LABEL_15;
  }

  if (a4 && (*(this + 81) & 1) != 0 || *(this + 80) == 1)
  {
    v5 = *(this + 75) == 0;
    LODWORD(v4) = 18;
    goto LABEL_14;
  }

  if (*(this + 22) >= 0x10u)
  {
    v5 = *(this + 75) == 0;
    LODWORD(v4) = 18;
    v6 = 21;
    goto LABEL_15;
  }

  if (*(this + 79) == 1)
  {
    v5 = a2 == 0;
    LODWORD(v4) = 35;
    v6 = 33;
LABEL_15:
    if (v5)
    {
      return v4;
    }

    else
    {
      return v6;
    }
  }

  if (*(this + 75) == 1)
  {
    if (a2)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (*(this + 74))
    {
      v4 = 10;
    }

    else
    {
      v4 = 0xFFFFFFFFLL;
    }

    if (*(this + 74) && (a2 & 1) == 0)
    {
      if (*(this + 78))
      {
        return 1;
      }

      else
      {
        return 18;
      }
    }
  }

  return v4;
}

uint64_t CABackingStorePrepareUpdates_(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t this, unsigned int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v114 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 144);
  v14 = *(a1 + 152);
  v108 = a3;
  if (v15 == a2)
  {
    if (v14 == a3)
    {
      v16 = 1;
      if ((a5 & 0x10) == 0 && (*(a1 + 492) & 0x400) == 0)
      {
        if ((*(a1 + 492) & 0x200) != 0 || !*(a1 + 440))
        {
          return 0;
        }

        CGSBoundingShapeGetRegion();
        if ((a5 & 0x80) != 0)
        {
          v111 = 0.0;
          buf = 0x3FF0000000000000uLL;
          v112 = xmmword_183E20F00;
          v17 = v108;
          v113 = v108;
          CGSTransformRegion();
          CGSReleaseRegion();
        }

        else
        {
          v17 = v108;
        }

        buf = 0uLL;
        v111 = a2;
        *&v112 = v17;
        v16 = CGSRectInRegion();
        if ((v16 & 1) == 0)
        {
          CGSIntersectRegionWithRect();
          if (CGSRegionIsEmpty())
          {
            CGSReleaseRegion();
          }
        }

        CGSReleaseRegion();
        a3 = v108;
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_21;
    }

    v18 = 0;
  }

  else
  {
    v18 = 0x2000;
  }

  if (v15)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v14 == a3 || v14 == 0;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x4000;
  }

  *(a1 + 492) |= v19 | v21;
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  v16 = 1;
LABEL_21:
  if ((a5 & 0x100) != 0)
  {
    if (a6)
    {
      v23 = 0;
    }

    else
    {
      v23 = a7 == 0;
    }

    v22 = !v23;
  }

  else
  {
    v22 = 0;
  }

  if ((a5 & 0x204) != 0)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v26 = a2 >> 6 < 0x7F && a3 >> 6 < 0x7F;
  {
    a3 = v108;
  }

  {
    v28 = CA::Render::format_rowbytes(this, a2);
    a3 = v108;
    if (v28 > v27)
    {
      v26 = 0;
    }
  }

  v103 = v27;
  v29 = *(a1 + 492);
  if (v26)
  {
    v30 = a2;
    if ((*(a1 + 492) & 0x2000) != 0)
    {
      if (this > 0x25)
      {
        v31 = 0;
      }

      else
      {
        v31 = dword_183E22690[this];
      }

      v32 = CA::Render::format_rowbytes(this, (a2 + ((a1 >> 4) & 0x1F) + 31) & 0xFFFFFFE0);
      a3 = v108;
      if (v32 / v31 >= a2 + 0x7FFF)
      {
        v30 = a2 + 0x7FFF;
      }

      else
      {
        v30 = v32 / v31;
      }

      v29 = *(a1 + 492);
    }
  }

  else
  {
    v30 = a2;
  }

  v20 = (v29 & 0x4000) == 0;
  v33 = !v26;
  if (v20)
  {
    v33 = 1;
  }

  v34 = a3;
  if ((v33 & 1) == 0)
  {
    v34 = (a3 + ((a1 >> 4) & 0x1F) + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  v106 = v34;
  v107 = v30;
  if (v24 && CAIOSurfaceIsAcceleratable(a7, v30, v34, this))
  {
    v35 = 1;
  }

  else
  {
    v35 = 0;
    if (this <= 0x23 && ((0x1FFFFFF2FuLL >> this) & 1) == 0)
    {
      v35 = 0;
      if ((0xC99B4EB03uLL >> this))
      {
        this = 13;
      }

      else
      {
        this = 17;
      }
    }
  }

  v36 = *(a1 + 160);
  if ((this - 8) > 0x16)
  {
    v37 = 3;
  }

  else
  {
    v37 = dword_183E227B8[(this - 8)];
  }

  if (CGColorSpaceGetNumberOfComponents(*(a1 + 160)) != v37)
  {
    v36 = CA::Render::format_default_colorspace(this);
  }

  v104 = v16;
  if (((this < 0x1D) & (0x17826000u >> this)) != 0 || (this - 33) <= 2)
  {
    v39 = CAGetColorSpace(36);
    v38 = v108;
    if (v36 == v39)
    {
      v40 = CAGetColorSpace(35);
      v38 = v108;
      v36 = v40;
    }
  }

  else
  {
    v38 = v108;
  }

  v97 = v36;
  v102 = 0;
  v41 = a1 + 400;
  v101 = a1;
  v100 = a5;
  v42 = (v35 ^ 1) & (a5 >> 2);
  v43 = v38;
  v44 = v38 * a2;
  v105 = *(a1 + 400);
  v45 = v105;
  v99 = (a1 + 400);
  do
  {
    while (1)
    {
      v46 = v41;
      v41 = v45;
      v47 = *(v45 + 16);
      if (v47)
      {
        if ((CA::Render::Shmem::set_volatile(v47, 0, 0) & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      else
      {
        v48 = *(v45 + 24);
        if (!v48)
        {
          goto LABEL_144;
        }

        if ((CA::CG::AccelDrawable::set_volatile(v48, 0) & 1) == 0)
        {
          if (*(v41 + 40))
          {
            CGSReleaseRegion();
            *(v41 + 40) = 0;
          }

          v104 |= v41 == v105;
          v102 = 1;
        }
      }

      v49 = *(v41 + 16);
      if (v49)
      {
        v50 = *(v49 + 24);
        v52 = v50[3];
        v51 = v50[4];
        v53 = v50[5];
        if (v51 <= 1)
        {
          v54 = 1;
        }

        else
        {
          v54 = v50[4];
        }

        v55 = CA::Render::format_rowbytes(v50[3], v54);
        v56 = *(*(v49 + 24) + 32) > 1u;
      }

      else
      {
        v57 = *(v41 + 24);
        if (!v57)
        {
          goto LABEL_144;
        }

        v56 = 0;
        v55 = 0;
        v52 = v57[4];
        v51 = v57[11];
        v53 = v57[12];
      }

      v60 = v52 == this && v51 >= a2 && v53 >= v108 && v56 == v42;
      if (!v60 || (!((v51 - a2) >> 15) ? (v61 = (v53 - v108) >> 15 == 0) : (v61 = 0), !v61))
      {
LABEL_143:
        v104 |= v41 == v105;
        CABackingStoreDeleteBuffer(v41);
        goto LABEL_144;
      }

      v62 = v107 == v51 && v106 == v53;
      v63 = !v62;
      if (!v62 && v26)
      {
        if (v103 && v55 > v103)
        {
          goto LABEL_143;
        }

        if (initialized[0] != -1)
        {
          dispatch_once_f(initialized, 0, init_debug);
        }

        if (*&xmmword_1ED4E96DC * -0.01 + 1.0 > 1.0 || (v65 = 0.0, *&xmmword_1ED4E96DC * 0.01 <= 1.0))
        {
          v65 = 1.0;
          if (*&xmmword_1ED4E96DC * -0.01 + 1.0 <= 1.0)
          {
            v65 = *&xmmword_1ED4E96DC * -0.01 + 1.0;
          }
        }

        if (v44 < v51 * v53 * v65)
        {
          goto LABEL_143;
        }
      }

      else if (v63)
      {
        goto LABEL_143;
      }

      v66 = *(v41 + 16) ? v35 : 0;
      if ((v66 & 1) != 0 || ((*(v41 + 24) != 0) & ~v35) != 0)
      {
        break;
      }

      {
        if (v41 == v105 || !*v41 || (CABackingStoreSynchronize(v101, a8, *(v41 + 56), 0) & 1) != 0)
        {
          goto LABEL_144;
        }

        break;
      }

      v45 = *v41;
      if (!*v41)
      {
        CABackingStoreSynchronize(v101, a8, (*(v41 + 56) + 1), 30);
        {
          goto LABEL_144;
        }

        break;
      }
    }

    v45 = *v41;
  }

  while (*v41);
  v104 |= v41 == v105;
  CABackingStoreDeleteBuffer(v41);
  if (BYTE13(ca_debug_options) == 1)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v76 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v101;
      _os_log_impl(&dword_183AA6000, v76, OS_LOG_TYPE_DEFAULT, "triple buffered backing store %p\n", &buf, 0xCu);
    }
  }

LABEL_144:
  if (v41 != *v99)
  {
    *v46 = *v41;
    *v41 = *v99;
    *v99 = v41;
  }

  if (v35)
  {
    v67 = *(v41 + 16);
  }

  else
  {
    v67 = *(v41 + 24);
  }

  v68 = v100;
  v69 = v104;
  if (v67)
  {
    v69 = (v41 == v105) | v104;
    CABackingStoreDeleteBuffer(v41);
  }

  v71 = *(v41 + 16);
  v70 = *(v41 + 24);
  *(v41 + 64) = (v100 & 0x80) != 0;
  *(v41 + 65) = 0;
  if (v71 | v70)
  {
    v72 = v102;
    goto LABEL_187;
  }

  CABackingStoreDeleteBuffer(v41);
  if ((v100 & 4) != 0 && (v107 > 8 || v106 >= 9))
  {
    v75 = 1;
    v77 = v106;
    v78 = v107;
    do
    {
      do
      {
        v79 = v78;
        v80 = v77;
        ++v75;
        v78 >>= 1;
        v77 >>= 1;
      }

      while (v79 > 0x11);
    }

    while (v80 > 0x11);
  }

  else
  {
    v75 = 1;
  }

  v69 |= v41 == v105;
  if (!v35)
  {
    v82 = v106;
    v81 = v107;
LABEL_181:
    v71 = CA::Render::Shmem::new_bitmap(this, v81, v82, a2, v108, v75);
    v70 = 0;
    *(v41 + 16) = v71;
    v68 = v100 & 0xFFFFFFFD;
    v72 = v102;
    goto LABEL_186;
  }

  v82 = v106;
  v81 = v107;
  iosurface = CA::Render::create_iosurface(this, v107, v106, @"CA Whippet Drawable", v73, v74);
  if (!iosurface)
  {
    if ((0xC99B4EB03uLL >> this))
    {
      v87 = 13;
    }

    else
    {
      v87 = 17;
    }

    if ((0x1FFFFFF2FuLL >> this))
    {
      v87 = this;
    }

    if (this <= 0x23)
    {
      this = v87;
    }

    else
    {
      this = this;
    }

    goto LABEL_181;
  }

  v84 = iosurface;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v85 = malloc_type_zone_malloc(malloc_zone, 0x70uLL, 0x165299FDuLL);
  if (v85)
  {
    if (this > 0x23)
    {
      v86 = 0;
    }

    else
    {
      v86 = dword_183E22570[this];
    }

    v85 = CA::CG::IOSurfaceDrawable::IOSurfaceDrawable(v85, v84, this, v86, v97, 0, 0, a2, v108);
  }

  *(v41 + 24) = v85;
  CFRelease(v84);
  v71 = 0;
  v70 = *(v41 + 24);
  v72 = 1;
LABEL_186:
  if (!(v71 | v70))
  {
    return 0;
  }

LABEL_187:
  v88 = *(v41 + 8);
  if (v88 != v97)
  {
    CGColorSpaceRelease(v88);
    v89 = CGColorSpaceRetain(v97);
    *(v41 + 8) = v89;
    v90 = *(v41 + 24);
    if (v90)
    {
      os_unfair_lock_lock((v90 + 12));
      v91 = *(v90 + 24);
      if (v91 != v97)
      {
        CGColorSpaceRelease(v91);
        *(v90 + 24) = CGColorSpaceRetain(v97);
      }

      os_unfair_lock_unlock((v90 + 12));
      v89 = *(v41 + 8);
    }

    if (v89 != *(v105 + 8) && *(v41 + 40))
    {
      CGSReleaseRegion();
      *(v41 + 40) = 0;
    }
  }

  if (*(v101 + 440))
  {
    CGSBoundingShapeReset();
  }

  *(v101 + 492) = *(v101 + 492) & 0xF8FF | 0x200;
  v92 = *(v41 + 40);
  for (i = *(v101 + 400); i; i = *i)
  {
    if (i == v41)
    {
      CGSNewEmptyRegion();
    }

    else if (i[5])
    {
      if (v69)
      {
        CGSReleaseRegion();
        i[5] = 0;
      }

      else
      {
        *&buf = 0;
        CGSUnionRegion();
        CGSReleaseRegion();
        i[5] = buf;
      }
    }
  }

  if ((v68 & 0x10) != 0)
  {
    buf = 0uLL;
    v111 = a2;
    *&v112 = v43;
    CGSNewRegionWithRect();
  }

  else if (!(v69 & 1 | (v41 == v105)))
  {
    if (v92)
    {
      CGSDiffRegion();
    }

    else
    {
      buf = 0uLL;
      v111 = a2;
      *&v112 = v43;
      CGSNewRegionWithRect();
      CGSDiffRegion();
      CGSReleaseRegion();
    }

    if (CGSRegionIsEmpty())
    {
      CGSReleaseRegion();
    }
  }

  if (v92)
  {
    CGSReleaseRegion();
  }

  if (v71)
  {
    v94 = *(v71 + 24);
    *(v94 + 24) = a2;
    *(v94 + 28) = v108;
    if ((v68 & 2) == 0)
    {
      goto LABEL_220;
    }

    CA::Render::ShmemBitmap::fill_pixels(v94, 0, 0);
    v68 &= ~2u;
    if ((v69 & 1) == 0)
    {
      goto LABEL_223;
    }

LABEL_221:
    *(v101 + 448) = 0;
    CGSReleaseRegion();
    *(v101 + 464) = 0;
    v95 = a9;
  }

  else
  {
    if (v70)
    {
      *(v70 + 52) = a2;
      *(v70 + 56) = v108;
    }

LABEL_220:
    if (v69)
    {
      goto LABEL_221;
    }

LABEL_223:
    *(v101 + 448) = 0;
    if (!*(v101 + 464))
    {
      CGSNewEmptyRegion();
    }

    v95 = a9;
    if ((v68 & 0x80) != 0)
    {
      v111 = 0.0;
      buf = 0x3FF0000000000000uLL;
      v112 = xmmword_183E20F00;
      v113 = v43;
      CGSTransformRegion();
      CGSUnionRegion();
      CGSReleaseRegion();
    }

    else
    {
      CGSUnionRegion();
    }

    CGSReleaseRegion();
    *(v101 + 464) = 0;
  }

  *v95 = v105;
  *(v95 + 8) = this;
  *(v95 + 12) = v68;
  *(v95 + 16) = v72 & 1;
  *(v101 + 456) = 0;
  *(v101 + 408) = v41;
  return 1;
}

void CABackingStoreDeleteBuffer(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CGColorSpaceRelease(v2);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (**v4)(v4);
      (*(*v4 + 16))(v4);
    }

    a1[3] = 0;
  }

  a1[7] = 0;
  if (a1[5])
  {
    CGSReleaseRegion();
    a1[5] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CGColorRelease(v5);
    a1[4] = 0;
  }
}

uint64_t CA::Render::format_default_colorspace(CA::Render *this)
{
  v1 = this;
  v8 = *MEMORY[0x1E69E9840];
  if (this <= 0x23)
  {
    if (((1 << this) & 0xF8063F800) != 0)
    {
LABEL_8:
      v2 = 36;
      goto LABEL_9;
    }

    if (((1 << this) & 0x1E0C0400) != 0)
    {
      v2 = 3;
LABEL_9:

      return CAGetColorSpace(v2);
    }

    if (((1 << this) & 0x60000000) != 0)
    {
      v2 = 5;
      goto LABEL_9;
    }
  }

  if (this < 4)
  {
    goto LABEL_8;
  }

  if (this != 9)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v4 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      if (v1 > 0x23)
      {
        v5 = "UNKNOWN";
      }

      else
      {
        v5 = off_1E6DEC8E8[v1];
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "Unsupported image format '%s' for default colorspace\n", &v6, 0xCu);
    }
  }

  return 0;
}

_DWORD *CA::Render::Shmem::new_shmem(CA::Render::Shmem *this)
{
  v27 = *MEMORY[0x1E69E9840];
  address = 0;
  v2 = vm_allocate(*MEMORY[0x1E69E9A60], &address, (this + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 855638019);
  v3 = address;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = address == 0;
  }

  if (v4)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v5 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = this;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "failed to allocate %ld bytes\n", buf, 0xCu);
    }

    return 0;
  }

  else
  {
    if (*MEMORY[0x1E695E0C0] == 1)
    {
      v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 592);
      if (v7)
      {
        v9 = *v7;
        v8 = *(v7 + 8);
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
        *buf = 0u;
        v12 = 0u;
        if (v9(buf, 256, v8))
        {
          __CFSetLastAllocationEventName();
        }
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
    if (result)
    {
      result[2] = 1;
      result[3] = 4404;
      ++dword_1ED4EAB08;
      *result = &unk_1EF1F5090;
      *(result + 2) = this;
      *(result + 3) = v3;
      result[8] = 0;
      *(result + 5) = CA::Render::release_deallocate;
      *(result + 6) = result;
      result[9] = 0;
    }
  }

  return result;
}

void CABackingStoreBeginUpdate_(uint64_t a1, unsigned int a2, unsigned int a3, CA *a4, int a5, int a6, uint64_t a7, unsigned __int32 a8, _BYTE *a9)
{
  v9 = a9;
  if (*(a1 + 416))
  {
    __assert_rtn("CABackingStoreBeginUpdate_", "CABackingStore.cpp", 1032, "!b->update_ctx");
  }

  v10 = a5;
  v14 = *(a1 + 408);
  v15 = *(v14 + 16);
  v16 = *(a1 + 448);
  if (!v15)
  {
    v28 = *(v14 + 24);
    if (!v28)
    {
      goto LABEL_74;
    }

    *(v28 + 69) = (a5 & 0x400) != 0;
    v29 = CAGetCachedCGIOSurfaceContext(v28, a6, a7);
    if (!v29)
    {
      goto LABEL_74;
    }

    v30 = v29;
    if (a9[16] == 1)
    {
      CGContextClearRect(v29, *MEMORY[0x1E695F040]);
    }

    if (!*(a1 + 456))
    {
      goto LABEL_67;
    }

    v31 = *a9;
    v32 = *(*a9 + 24);
    if (v32)
    {
      v33 = CA::CG::IOSurfaceDrawable::copy_cgimage_iosurface(v32);
    }

    else
    {
      v52 = *(v31 + 16);
      if (!v52)
      {
        goto LABEL_58;
      }

      v33 = CA::Render::Shmem::copy_cgimage(v52, *(v31 + 8), 0, 0);
    }

    v53 = v33;
    if (v33)
    {
      CGContextSaveGState(v30);
      CGContextReplacePathWithShapePath();
      CGContextClip(v30);
      if (CGImageIsMask(v53))
      {
        CGContextSetCompositeOperation();
        v63.origin.x = 0.0;
        v63.origin.y = 0.0;
        v63.size.width = a2;
        v63.size.height = a3;
        CGContextFillRect(v30, v63);
      }

      CGContextSetCompositeOperation();
      v64.origin.x = 0.0;
      v64.origin.y = 0.0;
      v64.size.width = a2;
      v64.size.height = a3;
      CGContextDrawImage(v30, v64, v53);
      CGContextRestoreGState(v30);
      CGImageRelease(v53);
LABEL_67:
      if (v16)
      {
        CGContextReplacePathWithShapePath();
        CGContextClip(v30);
      }

LABEL_69:
      if ((v10 & 2) != 0)
      {
        if ((a9[16] & 1) == 0)
        {
          CGContextClearRect(v30, *MEMORY[0x1E695F040]);
        }

        v10 &= ~2u;
      }

      *(a1 + 416) = v30;
      goto LABEL_74;
    }

LABEL_58:
    if (*(a1 + 448))
    {
      CGSReleaseRegion();
      *(a1 + 448) = 0;
    }

    goto LABEL_69;
  }

  v18 = *(v15 + 24);
  if (v18[4].i32[0] <= a8)
  {
LABEL_65:
    atomic_fetch_add(v18 + 1, 1u);
LABEL_74:
    *(v9 + 3) = v10;
    return;
  }

  v19 = a4;
  v20 = v18[3].u32[1];
  if (v18[3].i32[0] >> a8 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v18[3].i32[0] >> a8;
  }

  v22 = v20 >> a8;
  if (v20 >> a8 <= 1)
  {
    v22 = 1;
  }

  v58 = v21;
  v59 = v22;
  v23 = v18[1].u32[1];
  if (a8)
  {
    v56 = a4;
    v24 = 0;
    v25 = v18[2];
    v26 = a8;
    do
    {
      v60 = v25;
      v24 += CA::Render::format_rowbytes(v23, v25.u32[0]) * v25.u32[1];
      v27 = vcgt_u32(v60, 0x100000001);
      v25 = vsub_s32(vand_s8(vshr_n_u32(v60, 1uLL), v27), vmvn_s8(v27));
      --v26;
    }

    while (v26);
    v23 = v18[1].u32[1];
    v9 = a9;
    v19 = v56;
  }

  else
  {
    v24 = 0;
  }

  v57 = v18 + v18[1].i32[0];
  if (v18[2].i32[0] >> a8 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v18[2].i32[0] >> a8;
  }

  v35 = CA::Render::format_rowbytes(v23, v34);
  if (!a8)
  {
    goto LABEL_29;
  }

  v36 = v59;
  if (v58 > v59)
  {
    v36 = v58;
  }

  if ((v10 & 0x208) == 0 && v36 >= 8)
  {
LABEL_29:
    if ((v10 & 0x200) != 0)
    {
      abort();
    }

    v37 = CAGetCachedCGBitmapContext_(&v57[v24], v58, v59, v19, v35, *(v14 + 8));
    if (v37)
    {
      v38 = *(v37 + 2);
      if (v38)
      {
        if (a8)
        {
          if (v16)
          {
            CGSTransformRegion();
            CGContextReplacePathWithShapePath();
            CGSReleaseRegion();
            CGContextClip(v38);
          }

          CGContextScaleCTM(v38, v58 / a2, v59 / a3);
        }

        else if (v16)
        {
          CGContextReplacePathWithShapePath();
          CGContextClip(v38);
        }

        if ((v10 & 2) != 0)
        {
          CGContextClearRect(v38, *MEMORY[0x1E695F040]);
          v10 &= 0xFFFFFDFD;
        }
      }
    }

    else
    {
      v38 = 0;
    }

    *(a1 + 416) = v38;
    *(a1 + 492) &= ~0x1000u;
    goto LABEL_65;
  }

  v39 = v18[3].u32[1];
  v40 = v18[1].u32[1];
  v41 = a8 - 1;
  v42 = v18[3].i32[0] >> (a8 - 1);
  if (v42 <= 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  if (v39 >> v41 <= 1)
  {
    v44 = 1;
  }

  else
  {
    v44 = v39 >> v41;
  }

  v45 = 0;
  if (a8 != 1)
  {
    v46 = v18[2];
    v47 = a8 - 1;
    do
    {
      v61 = v46;
      v45 += CA::Render::format_rowbytes(v40, v46.u32[0]) * v46.u32[1];
      v48 = vcgt_u32(v61, 0x100000001);
      v46 = vsub_s32(vand_s8(vshr_n_u32(v61, 1uLL), v48), vmvn_s8(v48));
      --v47;
    }

    while (v47);
    v40 = v18[1].u32[1];
  }

  v49 = v18[1].i32[0];
  if (v18[2].i32[0] >> v41 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v18[2].i32[0] >> v41;
  }

  v51 = CA::Render::format_rowbytes(v40, v50);

  CA::downsample_image(v19, v18 + v49 + v45, v51, v43, v44, &v57[v24], v35, 0, 0.0, 0.0, v58, v59, a9);
}

void CABackingStoreReleaseImages(CABackingStore *a1)
{
  v2 = *(a1 + 53);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }

    *(a1 + 53) = 0;
  }

  v3 = *(a1 + 54);
  if (v3)
  {
    CGImageRelease(v3);
    *(a1 + 54) = 0;
  }
}

uint64_t CA::Layer::prepare_contents(CA::Layer *this, CALayer *a2, CA::Transaction *a3)
{
  kdebug_trace();
  layer_high = HIDWORD(a2[2]._attr.layer);
  HIDWORD(a2[2]._attr.layer) = layer_high + 1;
  if (!layer_high)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v6 = [(CA::Layer *)this contents];
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
    CA::Transaction::unlock(a2);
    v8 = CFGetTypeID(v7);
    if (v8 == CGImageGetTypeID())
    {
      v9 = [(CA::Layer *)this _renderImageCopyFlags];
      layoutManager = a2->_layoutManager;
      if (layoutManager)
      {
        v12 = *(layoutManager + 14);
      }

      else
      {
        v12 = CAGetColorSpace(36);
      }

      CA::Render::prepare_image(v7, v12, v9, v10);
    }

    else
    {
      [v7 CA_prepareRenderValue];
    }

    CFRelease(v7);
  }

  else
  {
    CA::Transaction::unlock(a2);
  }

  return kdebug_trace();
}

atomic_uint *CA::Render::prepare_image(CA::Render *this, CGImage *a2, CGColorSpace *a3, double a4)
{
  result = CA::Render::copy_image(this, a2, a3, 0.0, 1.0);
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

void *CA::Render::copy_image(CA::Render *this, CGImage *BitsPerPixel, CGColorSpace *a3, double a4, double a5)
{
  v8 = a3;
  v163 = *MEMORY[0x1E69E9840];
  v11 = (a3 | 8);
  ColorSpace = CGImageGetColorSpace(this);
  if (ColorSpace)
  {
    BaseColorSpace = ColorSpace;
    if (!CGColorSpaceUsesITUR_2100TF(ColorSpace))
    {
      CGImageGetHeadroom();
    }

    while (1)
    {
      Model = CGColorSpaceGetModel(BaseColorSpace);
      if (Model != kCGColorSpaceModelIndexed)
      {
        break;
      }

      BaseColorSpace = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
      if (!BaseColorSpace)
      {
        goto LABEL_10;
      }
    }

    if (Model <= kCGColorSpaceModelRGB && CGColorSpaceSupportsOutput(BaseColorSpace))
    {
      BitsPerPixel = BaseColorSpace;
    }
  }

LABEL_10:
  if ((v8 & 0x100) != 0)
  {
    v158 = 0;
    buf[0] = 0uLL;
    if (CGImageIsSubimage() && (Property = CGImageGetProperty()) != 0 && CA_CFBoolValue(Property))
    {
      v17 = CA::Render::copy_image(v158, BitsPerPixel, (v8 | 0x208u), v16, a4, a5);
      if (v17)
      {
        v18 = v17;
        if ((*(v17 + 13) & 0x64) != 0)
        {
          __assert_rtn("copy_image", "render-image-cache.cpp", 1760, "!main_texture->has_display_transform ()");
        }

        Width = CGImageGetWidth(this);
        Height = CGImageGetHeight(this);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v21 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x165299FDuLL);
        image_by_rendering = v21;
        if (v21)
        {
          *&v23 = vmovn_s64(vcvtq_s64_f64(buf[0]));
          *(&v23 + 1) = __PAIR64__(Height, Width);
          *(v21 + 2) = 1;
          *(v21 + 3) = 56;
          ++dword_1ED4EAB18;
          *v21 = &unk_1EF203398;
          v24 = v18;
          if (!atomic_fetch_add(v18 + 2, 1u))
          {
            v24 = 0;
            atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
          }

          *(v21 + 2) = v24;
          *(v21 + 24) = v23;
        }

        if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v18 + 16))(v18);
        }

        return image_by_rendering;
      }
    }

    else
    {
      v11 = (v11 & 0xFFFFFEFF);
    }
  }

  os_unfair_lock_lock(&CA::Render::image_cache_lock);
  v25 = CA::Render::image_cache;
  if (!CA::Render::image_cache)
  {
    CA::Render::image_cache = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    CA::Render::image_cache_list = &CA::Render::image_cache_list;
    qword_1ED4E90C8 = &CA::Render::image_cache_list;
    CGImageNotificationCenter();
    CGNotificationCenterAddCallback();
    v25 = CA::Render::image_cache;
  }

  v26 = x_hash_table_lookup(v25, this, 0);
  v28 = v26;
  if (v26)
  {
    image_by_rendering = *(v26 + 24);
    if (image_by_rendering)
    {
      LODWORD(v27) = *(image_by_rendering + 4);
      BytesPerRow = 0;
      v30 = v27 / CGImageGetWidth(this);
      goto LABEL_32;
    }
  }

  else
  {
    image_by_rendering = 0;
  }

  BytesPerRow = 1;
  v30 = 1.0;
LABEL_32:
  if (CGImageIsSubimage())
  {
    v31 = 1.0;
  }

  else
  {
    v31 = v30;
  }

  if ((BytesPerRow & 1) == 0 && v31 >= a5)
  {
    v32 = *(v28 + 40);
    if ((v11 & 1) == 0 || (v32) && ((v32 ^ v11) & 0x442) == 0)
    {
      if (CARequiresColorMatching(*(image_by_rendering + 7), BitsPerPixel, 1))
      {
        if ((v11 & 0x1000) != 0 || (*(v28 + 40) & 8) == 0)
        {
          goto LABEL_40;
        }
      }

      else if ((v11 & 0x1000) != 0)
      {
        goto LABEL_40;
      }

LABEL_67:
      v46 = 0;
      if ((v11 & 4) != 0)
      {
        goto LABEL_98;
      }

      goto LABEL_68;
    }
  }

LABEL_40:
  os_unfair_lock_unlock(&CA::Render::image_cache_lock);
  v33 = mach_absolute_time();
  v34 = CATimeWithHostTime(v33);
  v35 = &CADisplayTimerGetTypeID::type;
  LODWORD(v36) = BYTE9(ca_debug_options);
  if (a5 < 1.0)
  {
    if (BYTE9(ca_debug_options))
    {
      v37 = CGImageGetWidth(this);
      BytesPerRow = CGImageGetHeight(this);
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v5 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0].f64[0]) = 134218496;
        *(buf[0].f64 + 4) = this;
        WORD2(buf[0].f64[1]) = 2048;
        *(&buf[0].f64[1] + 6) = v37;
        HIWORD(buf[1].f64[0]) = 2048;
        *&buf[1].f64[1] = BytesPerRow;
        _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - image size (%lu x %lu) exceeds max texture size\n", buf, 0x20u);
      }
    }

    v38 = this;
    v39 = BitsPerPixel;
    v40 = v11;
    v41 = a5;
    goto LABEL_55;
  }

  if ((v11 & 0x40) != 0 && CGImageGetMask())
  {
    if (v36)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v42 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0].f64[0]) = 134217984;
        *(buf[0].f64 + 4) = this;
        _os_log_impl(&dword_183AA6000, v42, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - mask size\n", buf, 0xCu);
      }
    }

    v38 = this;
    v39 = BitsPerPixel;
    v40 = v11;
    v41 = a5;
    goto LABEL_55;
  }

  if ((v11 & 0x400) != 0)
  {
    BitmapInfo = CGImageGetBitmapInfo(this);
    v95 = BitmapInfo & 0x1F;
    BytesPerRow = (BitmapInfo & 0x7000) == 0x2000 ? 1 : 2;
    if ((v96 = CGImageGetColorSpace(this)) != 0 && CGColorSpaceGetModel(v96) == kCGColorSpaceModelMonochrome || v95 == BytesPerRow)
    {
      v39 = CAGetColorSpace(35);
      v38 = this;
      v40 = v11;
      v41 = a5;
LABEL_55:
      goto LABEL_56;
    }
  }

  if (CA::Render::create_image(CGImage *,CGColorSpace *,unsigned int,double)::initialized == 1)
  {
    if ((CA::Render::create_image(CGImage *,CGColorSpace *,unsigned int,double)::use_cgtexturedata & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_86;
  }

  v49 = getenv("CA_USE_CGTEXTUREDATA");
  BytesPerRow = &CADisplayTimerGetTypeID::type;
  if (!v49)
  {
    CA::Render::create_image(CGImage *,CGColorSpace *,unsigned int,double)::use_cgtexturedata = 1;
    CA::Render::create_image(CGImage *,CGColorSpace *,unsigned int,double)::initialized = 1;
    goto LABEL_86;
  }

  v50 = atoi(v49);
  CA::Render::create_image(CGImage *,CGColorSpace *,unsigned int,double)::use_cgtexturedata = v50 != 0;
  CA::Render::create_image(CGImage *,CGColorSpace *,unsigned int,double)::initialized = 1;
  if (v50)
  {
LABEL_86:
    ImageProvider = CGImageGetImageProvider();
    if (!ImageProvider)
    {
      goto LABEL_128;
    }

    BytesPerRow = ImageProvider;
    v53 = CGImageProviderCopyImageTextureData();
    if (!v53)
    {
      goto LABEL_128;
    }

    v5 = v53;
    image_by_rendering = CA::Render::CompressedImage::new_image_with_texture_data(v53);
    CGImageTextureDataRelease();
    if (!image_by_rendering)
    {
      goto LABEL_128;
    }

    AlphaInfo = CGImageProviderGetAlphaInfo();
    BytesPerRow = AlphaInfo;
    if (AlphaInfo > 2)
    {
      if (AlphaInfo != 5)
      {
        if (AlphaInfo == 3)
        {
          *(image_by_rendering + 46) = 2;
          v55 = *(image_by_rendering + 3) | 0x800000;
          goto LABEL_272;
        }

        goto LABEL_122;
      }
    }

    else if (AlphaInfo)
    {
      if (AlphaInfo == 1)
      {
        *(image_by_rendering + 46) = 1;
        v55 = *(image_by_rendering + 3) & 0xFF7FFFFF;
        goto LABEL_272;
      }

LABEL_122:
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v5 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].f64[0]) = 67109120;
        HIDWORD(buf[0].f64[0]) = BytesPerRow;
        _os_log_debug_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEBUG, "Unsupported CGImageAlpha '%d' for compressed texture", buf, 8u);
      }

      if (atomic_fetch_add(image_by_rendering + 2, 0xFFFFFFFF) == 1)
      {
        (*(*image_by_rendering + 16))(image_by_rendering);
      }

      goto LABEL_128;
    }

    *(image_by_rendering + 46) = 0;
    v55 = *(image_by_rendering + 3) & 0xFF7FEFFF | 0x1000;
    goto LABEL_272;
  }

LABEL_128:
  v67 = CGImageGetProperty();
  if (v67 && (v68 = v67, BytesPerRow = CFGetTypeID(v67), BytesPerRow == IOSurfaceGetTypeID()))
  {
    if (image_by_rendering)
    {
      goto LABEL_56;
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  if (CGImageGetProperty() != *MEMORY[0x1E695E4D0] || !CGImageGetImageProvider() || (Info = CGImageProviderGetInfo()) == 0)
  {
    if ((v11 & 2) != 0)
    {
      v79 = CGImageGetColorSpace(this);
      if (!v79)
      {
        goto LABEL_198;
      }

      goto LABEL_190;
    }

    v157 = v5;
    v71 = CGImageGetImageProvider();
    if (!v71)
    {
      goto LABEL_183;
    }

    v72 = v71;
    v73 = CGImageGetWidth(this);
    v74 = CGImageGetHeight(this);
    if (CA::Render::iosurface_size_supported(v73, v74))
    {
      v75 = CGImageProviderCopyIOSurface();
      if (v75)
      {
        BytesPerRow = v75;
        PixelFormat = IOSurfaceGetPixelFormat(v75);
        if (CA::Render::fourcc_has_alpha(PixelFormat) && (v162 = 0, v160 = 0u, v161 = 0u, memset(buf, 0, sizeof(buf)), v158 = 132, !IOSurfaceGetBulkAttachments()) && BYTE4(v160) == 1)
        {
          CFRelease(BytesPerRow);
        }

        else
        {
          CFRelease(BytesPerRow);
          if (image_by_rendering)
          {
            goto LABEL_149;
          }
        }
      }
    }

    v82 = CGImageGetColorSpace(this);
    if (!v82)
    {
      goto LABEL_183;
    }

    image_by_rendering = v82;
    if (CGColorSpaceGetModel(v82) != kCGColorSpaceModelRGB)
    {
      if (CGColorSpaceGetModel(image_by_rendering))
      {
        goto LABEL_183;
      }
    }

    if (CGImageGetDecode(this) || CGImageGetMask() || CGImageGetMatte() || CGImageGetMaskingColors())
    {
      goto LABEL_183;
    }

    LODWORD(Data) = CGColorSpaceGetModel(image_by_rendering);
    ComponentType = CGImageProviderGetComponentType();
    v84 = ComponentType > 1;
    if (!Data)
    {
      v84 = 1;
    }

    v152 = Data == 0;
    cf = v84;
    v85 = CGImageProviderGetAlphaInfo();
    v151 = ComponentType;
    v86 = ComponentType;
    BytesPerRow = v85;
    v88 = v87;
    v89 = v87 == -1 || v87 == 14;
    v90 = !v89 && cf;
    if (cf && v88 != -1 && v88 != 14 && BytesPerRow <= 4 && ((1 << BytesPerRow) & 0x19) != 0)
    {
      goto LABEL_183;
    }

    if (v151 - 3 < 2)
    {
      goto LABEL_183;
    }

    v91 = CGImageGetWidth(this);
    v92 = CGImageGetHeight(this);
    BytesPerRow = CGImageProviderCopyImageBlockSetWithOptions();
    CFRelease(cfb);
    if (!BytesPerRow)
    {
      goto LABEL_183;
    }

    cfa = BytesPerRow;
    CGImageBlockSetGetRect();
    v165.origin.x = 0.0;
    v165.origin.y = 0.0;
    v165.size.width = v91;
    v165.size.height = v92;
    v93 = CGRectEqualToRect(v164, v165);
    if ((v11 & 0x10) != 0 || v93)
    {
      if (CGImageBlockSetGetCount() == 1)
      {
        ImageBlock = CGImageBlockSetGetImageBlock();
        if (ImageBlock)
        {
          BytesPerRow = ImageBlock;
          LODWORD(Data) = Data == 0;
          CGImageBlockGetRect();
          v133 = v132;
          v135 = v134;
          if (v136 != -1)
          {
            v5 = v136;
            v151 = v133;
            v152 = v135;
            Data = CGImageBlockGetData();
            BytesPerRow = CGImageBlockGetBytesPerRow();
            v158 = BytesPerRow;
            {
            }

            if (v11)
            {
              if (BYTE9(ca_debug_options) == 1)
              {
                if (x_log_get_render(void)::once[0] == -1)
                {
                  goto LABEL_396;
                }

                goto LABEL_407;
              }

              goto LABEL_391;
            }

            if (qword_1ED4E4910)
            {
              if ((qword_1ED4E4910 & (qword_1ED4E4910 - 1)) != 0 ? Data % qword_1ED4E4910 : (qword_1ED4E4910 - 1) & Data)
              {
                if (BYTE9(ca_debug_options) == 1)
                {
                  if (x_log_get_render(void)::once[0] != -1)
                  {
                    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                  }

                  loga = x_log_get_render(void)::log;
                  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf[0].f64[0]) = 134217984;
                    *(buf[0].f64 + 4) = this;
                    _os_log_impl(&dword_183AA6000, loga, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - bad image alignment\n", buf, 0xCu);
                  }
                }

                goto LABEL_391;
              }
            }

            if (qword_1ED4E4918)
            {
              if ((qword_1ED4E4918 & (qword_1ED4E4918 - 1)) != 0 ? BytesPerRow % qword_1ED4E4918 : (qword_1ED4E4918 - 1) & BytesPerRow)
              {
                if (BYTE9(ca_debug_options) == 1)
                {
                  if (x_log_get_render(void)::once[0] != -1)
                  {
                    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                  }

                  logb = x_log_get_render(void)::log;
                  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf[0].f64[0]) = 134217984;
                    *(buf[0].f64 + 4) = this;
                    _os_log_impl(&dword_183AA6000, logb, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - bad row alignment\n", buf, 0xCu);
                  }
                }

                goto LABEL_391;
              }
            }

            if (v146)
            {
              image_by_rendering = v146;
              goto LABEL_149;
            }
          }
        }
      }

      else
      {
        BytesPerRow = &CA::OGL::MetalContext::get_pipeline_queue(void)::once;
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v138 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf[0].f64[0]) = 0;
            _os_log_error_impl(&dword_183AA6000, v138, OS_LOG_TYPE_ERROR, "warning, CGImageProvider returned multiple blocks\n", buf, 2u);
          }
        }
      }
    }

    CGImageBlockSetRelease();
    goto LABEL_183;
  }

  BytesPerRow = Info;
  v81 = X::Allocator0::operator new(0x80uLL);
  image_by_rendering = v81;
  if (v81)
  {
    CA::Render::MetalTexture::MetalTexture(v81, BytesPerRow);
  }

  while (1)
  {
LABEL_56:
    v43 = mach_absolute_time();
    v44 = a4 - v34 + CATimeWithHostTime(v43);
    if (a4 > 0.0)
    {
      a4 = v44;
    }

    if (!image_by_rendering)
    {
      os_unfair_lock_lock(&CA::Render::image_cache_lock);
      os_unfair_lock_unlock(&CA::Render::image_cache_lock);
      return image_by_rendering;
    }

    LODWORD(buf[0].f64[0]) = 0;
    CGImageGetHeadroom();
    *(image_by_rendering + 16) = LODWORD(buf[0].f64[0]);
    if ((byte_1ED4E98A2 & 1) == 0)
    {
      if (initialized[0] != -1)
      {
        dispatch_once_f(initialized, 0, init_debug);
      }

      if (*&dword_1ED4E9770)
      {
        ContentAverageLightLevelNits = truncf(*&dword_1ED4E9770);
      }

      else
      {
        ContentAverageLightLevelNits = CGImageGetContentAverageLightLevelNits();
      }

      *(image_by_rendering + 17) = ContentAverageLightLevelNits;
    }

    os_unfair_lock_lock(&CA::Render::image_cache_lock);
    if (!(*(*image_by_rendering + 240))(image_by_rendering) || (v11 & 0x1000) != 0)
    {
      goto LABEL_67;
    }

    v51 = x_hash_table_lookup(CA::Render::image_cache, this, 0);
    if (v51)
    {
      v28 = v51;
      v46 = *(v51 + 24);
      goto LABEL_97;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v56 = malloc_type_zone_malloc(malloc_zone, 0x30uLL, 0x165299FDuLL);
    if (v56)
    {
      break;
    }

    hash_table_modify(CA::Render::image_cache, this, 0, 0);
    __break(1u);
LABEL_407:
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
LABEL_396:
    log = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].f64[0]) = 134217984;
      *(buf[0].f64 + 4) = this;
      _os_log_impl(&dword_183AA6000, log, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - mipmap generation\n", buf, 0xCu);
    }

LABEL_391:
    CGImageBlockSetRelease();
    if (image_by_rendering)
    {
LABEL_149:
      v5 = v157;
LABEL_267:
      if (image_by_rendering)
      {
        v120 = v5;
      }

      else
      {
        v120 = 1;
      }

      if ((v120 & 1) == 0)
      {
        v55 = *(image_by_rendering + 3) | 0x1000000;
LABEL_272:
        *(image_by_rendering + 3) = v55;
      }
    }

    else
    {
LABEL_183:
      v97 = CGImageGetColorSpace(this);
      v5 = v157;
      if (!v97)
      {
LABEL_198:
        BytesPerRow = BYTE5(v35[250].isa);
        Decode = CGImageGetDecode(this);
        if (!Decode || *Decode != 1.0 || Decode[1] != 0.0)
        {
          if (BytesPerRow)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            BitsPerPixel = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0].f64[0]) = 134217984;
              *(buf[0].f64 + 4) = this;
              _os_log_impl(&dword_183AA6000, BitsPerPixel, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - bad decode array\n", buf, 0xCu);
            }
          }

          v107 = this;
          v108 = 0;
          v109 = v11;
          v110 = a5;
          goto LABEL_265;
        }

        if (CGImageGetMask() || CGImageGetMatte() || CGImageGetMaskingColors())
        {
          if (BytesPerRow)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            BitsPerPixel = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0].f64[0]) = 134217984;
              *(buf[0].f64 + 4) = this;
              _os_log_impl(&dword_183AA6000, BitsPerPixel, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - bad mask\n", buf, 0xCu);
            }
          }

          v107 = this;
          v108 = 0;
          v109 = v11;
          v110 = a5;
          goto LABEL_265;
        }

        BitsPerPixel = CGImageGetBitsPerPixel(this);
        BitsPerComponent = CGImageGetBitsPerComponent(this);
        v122 = BitsPerComponent;
        if (BitsPerPixel == 8 && BitsPerComponent == 8)
        {
          if (CGImageIsMask(this) | ((v11 & 2) >> 1))
          {
            v123 = 9;
          }

          else
          {
            v123 = 8;
          }

          goto LABEL_266;
        }

        if (BytesPerRow)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          BytesPerRow = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0].f64[0]) = 134218496;
            *(buf[0].f64 + 4) = this;
            WORD2(buf[0].f64[1]) = 1024;
            *(&buf[0].f64[1] + 6) = BitsPerPixel;
            WORD1(buf[1].f64[0]) = 1024;
            HIDWORD(buf[1].f64[0]) = v122;
            v114 = "copied CGImageRef %p - bad mask image format (%d bpp, %d bpc)\n";
            v115 = BytesPerRow;
            v116 = 24;
LABEL_229:
            _os_log_impl(&dword_183AA6000, v115, OS_LOG_TYPE_DEFAULT, v114, buf, v116);
          }
        }

LABEL_230:
        v107 = this;
        v108 = 0;
        v109 = v11;
        v110 = a5;
        goto LABEL_265;
      }

      v79 = v97;
      if (CARequiresColorMatching(v97, BitsPerPixel, 1))
      {
        if (v36)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v98 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0].f64[0]) = 134217984;
            *(buf[0].f64 + 4) = this;
            v99 = "copied CGImageRef %p - needs color matching\n";
            goto LABEL_222;
          }
        }

        goto LABEL_223;
      }

LABEL_190:
      v100 = CGColorSpaceGetModel(v79);
      if (v100)
      {
        if (v100 != kCGColorSpaceModelRGB)
        {
          if (v36)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v98 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0].f64[0]) = 134217984;
              *(buf[0].f64 + 4) = this;
              v99 = "copied CGImageRef %p - non-RGB color model\n";
LABEL_222:
              _os_log_impl(&dword_183AA6000, v98, OS_LOG_TYPE_DEFAULT, v99, buf, 0xCu);
            }
          }

LABEL_223:
          v107 = this;
          v108 = BitsPerPixel;
          v109 = v11;
          v110 = a5;
          goto LABEL_265;
        }

        v35 = BYTE5(v35[250].isa);
        if ((v11 & 2) != 0)
        {
          if (v35)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            BitsPerPixel = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0].f64[0]) = 134217984;
              *(buf[0].f64 + 4) = this;
              v114 = "copied CGImageRef %p - RGB mask (bug!)\n";
              v115 = BitsPerPixel;
              v116 = 12;
              goto LABEL_229;
            }
          }

          goto LABEL_230;
        }

        v36 = v5;
        BytesPerRow = CGImageGetBitsPerPixel(this);
        v5 = CGImageGetBitsPerComponent(this);
        v101 = CGImageGetBitmapInfo(this);
        v102 = v101;
        if ((v11 & 0x20) == 0 || v5 != 16)
        {
          if (CGImageGetDecode(this) || CGImageGetMask() || CGImageGetMatte() || CGImageGetMaskingColors())
          {
            v5 = v36;
            if (v35)
            {
              if (x_log_get_render(void)::once[0] != -1)
              {
                dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
              }

              v117 = x_log_get_render(void)::log;
              if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf[0].f64[0]) = 134217984;
                *(buf[0].f64 + 4) = this;
LABEL_249:
                _os_log_impl(&dword_183AA6000, v117, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - decode or mask\n", buf, 0xCu);
              }
            }

            goto LABEL_250;
          }

          if (BytesPerRow != 16)
          {
            if (BytesPerRow != 32)
            {
              if (BytesPerRow == 64 && v5 == 16)
              {
                if ((v102 & 0x701F) == 0x1005)
                {
                  v126 = (v102 & 0x100) == 0;
                  v127 = 17;
                  v128 = 22;
                  goto LABEL_359;
                }

                if ((v102 & 0x701F) == 0x1001)
                {
                  v126 = (v102 & 0x100) == 0;
                  v127 = 13;
                  v128 = 21;
LABEL_359:
                  if (v126)
                  {
                    v105 = v128;
                  }

                  else
                  {
                    v105 = v127;
                  }

                  goto LABEL_333;
                }
              }

              goto LABEL_372;
            }

            if (v5 == 10 && (v102 & 0xF701F) == 0x32006)
            {
              v105 = 31;
              goto LABEL_333;
            }

            if (v5 != 8)
            {
              goto LABEL_372;
            }

            v139 = v102 & 0x1F;
            switch(v139)
            {
              case 2:
                v140 = 0;
                v141 = 0;
                v142 = 0;
                v105 = 0;
                break;
              case 6:
                v141 = 0;
                v142 = 0;
                v105 = 2;
                v140 = 1;
                break;
              case 5:
                v140 = 0;
                v141 = 0;
                v105 = 12;
                v142 = 1;
                break;
              case 1:
                v140 = 0;
                v142 = 0;
                v105 = 11;
                v141 = 1;
                break;
              default:
                goto LABEL_372;
            }

            if ((v102 & 0x7000) != 0x2000)
            {
              goto LABEL_333;
            }

            v89 = v139 == 2;
            v143 = v140 ^ 1;
            if (v89)
            {
              v143 = 0;
            }

            if ((v143 & 1) == 0)
            {
              v105 = (v105 + 1);
              goto LABEL_333;
            }

            v105 = v141 ? 15 : 16;
            if (((v141 | v142) & 1) == 0)
            {
LABEL_372:
              if (v35)
              {
                if (x_log_get_render(void)::once[0] != -1)
                {
                  dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                }

                v35 = x_log_get_render(void)::log;
                if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf[0].f64[0]) = 134218752;
                  *(buf[0].f64 + 4) = this;
                  WORD2(buf[0].f64[1]) = 1024;
                  *(&buf[0].f64[1] + 6) = BytesPerRow;
                  WORD1(buf[1].f64[0]) = 1024;
                  HIDWORD(buf[1].f64[0]) = v5;
                  LOWORD(buf[1].f64[1]) = 1024;
                  *(&buf[1].f64[1] + 2) = v102;
                  v144 = "copied CGImageRef %p - bad RGB image format (%d bpp, %d bpc, %d info)\n";
LABEL_377:
                  _os_log_impl(&dword_183AA6000, v35, OS_LOG_TYPE_DEFAULT, v144, buf, 0x1Eu);
                }
              }

              goto LABEL_378;
            }

LABEL_333:
            v103 = this;
            v104 = BitsPerPixel;
LABEL_215:
LABEL_216:
            image_by_rendering = v113;
            v5 = v36;
            goto LABEL_267;
          }

          if (v5 != 5 || (v102 & 0x1F) != 6)
          {
            goto LABEL_372;
          }

          v124 = (v102 & 0x7000) == 4096;
          v125 = 4;
LABEL_330:
          if (v124)
          {
            v105 = v125 + 1;
          }

          else
          {
            v105 = v125;
          }

          goto LABEL_333;
        }

        if (BytesPerRow == 64 && (v101 & 0x701F) == 0x1001)
        {
          v103 = this;
          v104 = 0;
          v105 = 13;
          goto LABEL_215;
        }

        if (v35)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          BitsPerPixel = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0].f64[0]) = 134218752;
            *(buf[0].f64 + 4) = this;
            WORD2(buf[0].f64[1]) = 1024;
            *(&buf[0].f64[1] + 6) = BytesPerRow;
            WORD1(buf[1].f64[0]) = 1024;
            HIDWORD(buf[1].f64[0]) = 16;
            LOWORD(buf[1].f64[1]) = 1024;
            *(&buf[1].f64[1] + 2) = v102;
            v118 = "ignored CGImageRef %p - bad RGB 16-is-half format (%d bpp, %d bpc, %d info)\n";
            goto LABEL_278;
          }
        }
      }

      else
      {
        v36 = v5;
        v35 = BYTE5(v35[250].isa);
        BytesPerRow = CGImageGetBitsPerPixel(this);
        v5 = CGImageGetBitsPerComponent(this);
        v111 = CGImageGetBitmapInfo(this);
        v112 = v111;
        if ((v11 & 0x20) == 0 || v5 != 16)
        {
          if (CGImageGetDecode(this) || CGImageGetMask() || CGImageGetMatte() || CGImageGetMaskingColors())
          {
            v5 = v36;
            if (v35)
            {
              if (x_log_get_render(void)::once[0] != -1)
              {
                dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
              }

              v117 = x_log_get_render(void)::log;
              if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf[0].f64[0]) = 134217984;
                *(buf[0].f64 + 4) = this;
                goto LABEL_249;
              }
            }

LABEL_250:
            v107 = this;
            v108 = BitsPerPixel;
            v109 = v11;
            v110 = a5;
LABEL_265:
LABEL_266:
            image_by_rendering = image_from_image_data;
            goto LABEL_267;
          }

          if (BytesPerRow == 32)
          {
            if ((v11 & 2) == 0 && v5 == 16 && (v112 & 0x701F) == 0x1001)
            {
              if ((v112 & 0x100) != 0)
              {
                v105 = 28;
              }

              else
              {
                v105 = 27;
              }

              goto LABEL_333;
            }
          }

          else if (BytesPerRow == 16)
          {
            if (v5 == 8)
            {
              v129 = v112 & 0x1F;
              v130 = v112 & 0x7000;
              if ((v11 & 2) == 0 && v129 == 1 && v130 != 4096)
              {
                v105 = 18;
                goto LABEL_333;
              }

              if ((v11 & 2) == 0 && v129 == 5 && v130 != 4096)
              {
                v105 = 19;
                goto LABEL_333;
              }
            }
          }

          else if (BytesPerRow == 8 && v5 == 8 && (v112 & 0x1F) == 0)
          {
            v124 = (v11 & 2) == 0;
            v125 = 9;
            goto LABEL_330;
          }

          if (v35)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v35 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0].f64[0]) = 134218752;
              *(buf[0].f64 + 4) = this;
              WORD2(buf[0].f64[1]) = 1024;
              *(&buf[0].f64[1] + 6) = BytesPerRow;
              WORD1(buf[1].f64[0]) = 1024;
              HIDWORD(buf[1].f64[0]) = v5;
              LOWORD(buf[1].f64[1]) = 1024;
              *(&buf[1].f64[1] + 2) = v112;
              v144 = "copied CGImageRef %p - bad grayscale image format (%d bpp, %d bpc, %d info)\n";
              goto LABEL_377;
            }
          }

LABEL_378:
          goto LABEL_216;
        }

        if (BytesPerRow == 16 && (v111 & 0x7000) == 0x1000)
        {
          if ((v11 & 2) != 0)
          {
            v105 = 23;
          }

          else
          {
            v105 = 25;
          }

          v103 = this;
          v104 = 0;
          goto LABEL_215;
        }

        if (v35)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          BitsPerPixel = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0].f64[0]) = 134218752;
            *(buf[0].f64 + 4) = this;
            WORD2(buf[0].f64[1]) = 1024;
            *(&buf[0].f64[1] + 6) = BytesPerRow;
            WORD1(buf[1].f64[0]) = 1024;
            HIDWORD(buf[1].f64[0]) = 16;
            LOWORD(buf[1].f64[1]) = 1024;
            *(&buf[1].f64[1] + 2) = v112;
            v118 = "ignored CGImageRef %p - bad grayscale 16-is-half format (%d bpp, %d bpc, %d info)\n";
LABEL_278:
            _os_log_impl(&dword_183AA6000, BitsPerPixel, OS_LOG_TYPE_DEFAULT, v118, buf, 0x1Eu);
          }
        }
      }

      image_by_rendering = 0;
    }
  }

  v28 = v56;
  v56[3] = 0;
  v56[4] = 0;
  v56[1] = v56;
  v56[2] = this;
  *v56 = v56;
  hash_table_modify(CA::Render::image_cache, this, v56, 0);
  v46 = 0;
LABEL_97:
  *(v28 + 24) = image_by_rendering;
  *(v28 + 40) = v11;
  if ((v11 & 4) == 0)
  {
LABEL_68:
    if (v28 && *(v28 + 32) >= 0.0)
    {
      v48 = *v28;
      v47 = *(v28 + 8);
      *(v48 + 8) = v47;
      *v47 = v48;
      *v28 = v28;
      *(v28 + 8) = v28;
      *(v28 + 32) = 0xBFF0000000000000;
    }

    goto LABEL_108;
  }

LABEL_98:
  if (v28)
  {
    v57 = *(v28 + 32);
    if (v57 >= 0.0 && a4 > v57)
    {
      if (v57 > 0.0)
      {
        v59 = *v28;
        v58 = *(v28 + 8);
        *(v59 + 8) = v58;
        *v58 = v59;
        *v28 = v28;
        *(v28 + 8) = v28;
      }

      *(v28 + 32) = a4;
      v60 = &CA::Render::image_cache_list;
      while (1)
      {
        v60 = *v60;
        if (v60 == &CA::Render::image_cache_list)
        {
          break;
        }

        if (*(v60 + 4) <= a4)
        {
          v61 = v60[1];
          v62 = *v28;
          v60[1] = v28;
          *v28 = v60;
          *v61 = v62;
          *(v62 + 8) = v61;
          goto LABEL_108;
        }
      }

      v63 = qword_1ED4E90C8;
      v64 = *v28;
      qword_1ED4E90C8 = v28;
      *v28 = &CA::Render::image_cache_list;
      *v63 = v64;
      *(v64 + 8) = v63;
    }
  }

LABEL_108:
  v65 = (*(*image_by_rendering + 240))(image_by_rendering);
  if ((v11 & 0x1000) == 0 && v65 && !atomic_fetch_add(image_by_rendering + 2, 1u))
  {
    atomic_fetch_add(image_by_rendering + 2, 0xFFFFFFFF);
  }

  os_unfair_lock_unlock(&CA::Render::image_cache_lock);
  if (v46 && atomic_fetch_add(v46 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v46 + 16))(v46);
  }

  return image_by_rendering;
}

CA::Render::Texture *CA::Render::CompressedImage::new_image_with_texture_data(void *a1)
{
  v74 = *MEMORY[0x1E69E9840];
  ColorSpace = CGImageTextureDataGetColorSpace();
  CGImageTextureDataGetSize();
  v4 = v3;
  v6 = v5;
  NumberOfMipmaps = CGImageTextureDataGetNumberOfMipmaps();
  PixelFormat = CGImageTextureDataGetPixelFormat();
  v9 = 0;
  if ((PixelFormat - 186) <= 0x20)
  {
    v9 = dword_183E2FEE8[(PixelFormat - 186)];
  }

  if (CADeviceIsVirtualized::once[0] != -1)
  {
    dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
  }

  if (CADeviceIsVirtualized::is_virtualized)
  {
    return 0;
  }

  if (CADeviceSupportsASTC::once != -1)
  {
    dispatch_once(&CADeviceSupportsASTC::once, &__block_literal_global_193);
  }

  v10 = v9 - 1;
  if (v9 - 1 >= 4 && ((v9 > 4) & CADeviceSupportsASTC::supports_astc) == 0)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v11 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
    {
      if (v10 > 0x1B)
      {
        v12 = "UNKNOWN";
      }

      else
      {
        v12 = off_1E6DF6B30[v10];
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_debug_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEBUG, "%s compressed texture not supported on this device, falling back to software\n", buf, 0xCu);
    }

    return 0;
  }

  v13 = CGImageTextureDataSupportsTiledLayout();
  if (NumberOfMipmaps >> 61)
  {
    return 0;
  }

  v47 = PixelFormat;
  v16 = 8 * NumberOfMipmaps;
  v49 = v13;
  LODWORD(v48) = v9;
  if (8 * NumberOfMipmaps > 0x1000)
  {
    v54 = malloc_type_malloc(8 * NumberOfMipmaps, 0xFDFB8B83uLL);
    v52 = malloc_type_malloc(8 * NumberOfMipmaps, 0xBCA9D867uLL);
    v53 = malloc_type_malloc(8 * NumberOfMipmaps, 0x4B5032CBuLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v13);
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v54 = &v44 - v17;
    bzero(&v44 - v17, 8 * NumberOfMipmaps);
    MEMORY[0x1EEE9AC00](v18);
    v52 = &v44 - v17;
    bzero(&v44 - v17, 8 * NumberOfMipmaps);
    MEMORY[0x1EEE9AC00](v19);
    v53 = &v44 - v17;
    bzero(&v44 - v17, 8 * NumberOfMipmaps);
  }

  v50 = v4;
  v51 = v6;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  if (NumberOfMipmaps)
  {
    v45 = (8 * NumberOfMipmaps);
    v46 = ColorSpace;
    v20 = 0;
    v21 = MEMORY[0x1E69E9820];
    do
    {
      v55[1] = v21;
      v55[2] = 3221225472;
      v55[3] = ___ZN2CA6Render15CompressedImage27new_image_with_texture_dataEP18CGImageTextureData_block_invoke;
      v55[4] = &unk_1E6DF6B10;
      v55[9] = v50;
      v55[10] = v51;
      v55[5] = v56;
      v55[6] = &v66;
      v55[11] = v20;
      v55[12] = v54;
      v55[13] = v52;
      v55[14] = v53;
      v55[7] = &v62;
      v55[8] = &v58;
      CGImageTextureDataGetOffsetWithBlock();
      ++v20;
    }

    while (NumberOfMipmaps != v20);
    v22 = v59[3];
    v16 = v45;
    ColorSpace = v46;
  }

  else
  {
    v22 = 0;
  }

  LOBYTE(v23) = v49;
  if (v22 != NumberOfMipmaps)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v26 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v43 = v59[3];
      *buf = 134218240;
      *&buf[4] = v43;
      *&buf[12] = 2048;
      *&buf[14] = NumberOfMipmaps;
      _os_log_debug_impl(&dword_183AA6000, v26, OS_LOG_TYPE_DEBUG, "Compressed image acquired %zu levels, but expected %zu!\n", buf, 0x16u);
    }

    v14 = 0;
    goto LABEL_60;
  }

  if (v48 < 5)
  {
    v24 = 1;
  }

  else
  {
    v24 = v49;
  }

  if (v24)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v25 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC8uLL, 0xDEEC3011uLL);
    v14 = v25;
    if (!v25)
    {
      goto LABEL_60;
    }

    CA::Render::CompressedImage::CompressedImage(v25, v50, v51, v47, v67[3], v63[3], v54, v52, v53, NumberOfMipmaps, CA::Render::release_cgtexturedata, a1);
    CGImageTextureDataRetain();
    *(v14 + 192) &= ~2u;
  }

  else
  {
    v55[0] = 0;
    v27 = objc_autoreleasePoolPush();
    v28 = *(v59 + 6);
    v29 = MTLCreateSystemDefaultDevice();
    v30 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v47 width:v50 height:v51 mipmapped:(v28 & 0xFFFFFFFE) != 0];
    [v30 setMipmapLevelCount:v28];
    v31 = [v29 newTextureLayoutWithDescriptor:v30 isHeapOrBufferBacked:0];

    v32 = [v31 size];
    v33 = CA::Render::aligned_malloc(v32, v55, [v31 alignment]);
    v23 = v33 != 0;
    if (v33)
    {
      v34 = v33;
      [v31 initializeTextureMemory:v33];
      v45 = v32;
      v46 = NumberOfMipmaps;
      v48 = v27;
      v49 = v23;
      if (v59[3])
      {
        v35 = 0;
        v37 = v50;
        v36 = v51;
        do
        {
          v38 = v67[3];
          v39 = *&v54[8 * v35];
          v40 = *&v53[8 * v35];
          memset(buf, 0, sizeof(buf));
          v71 = v37;
          v72 = v36;
          v73 = 1;
          [v31 copyFromLinearBytes:v38 linearOffset:v39 linearBytesPerRow:v40 linearBytesPerImage:0 toTextureMemory:v34 textureSlice:0 textureLevel:v35 textureRegion:buf];
          [v31 finalizeTextureMemory:v34];
          if (v37 <= 1)
          {
            v37 = 1;
          }

          else
          {
            v37 >>= 1;
          }

          if (v36 <= 1)
          {
            v36 = 1;
          }

          else
          {
            v36 >>= 1;
          }

          ++v35;
        }

        while (v35 < v59[3]);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v41 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC8uLL, 0xDEEC3011uLL);
      v14 = v41;
      LOBYTE(v23) = v49;
      v27 = v48;
      if (v41)
      {
        CA::Render::CompressedImage::CompressedImage(v41, v50, v51, v47, v34, v45, v54, v52, v53, v46, CA::Render::aligned_free, v55[0]);
      }

      else
      {
        CA::Render::aligned_free(v34, v55[0], v42);
      }
    }

    else
    {
      v14 = 0;
    }

    objc_autoreleasePoolPop(v27);
    if (!v14)
    {
      goto LABEL_60;
    }
  }

  CA::Render::Texture::set_colorspace(v14, ColorSpace);
  *(v14 + 192) = *(v14 + 192) & 0xFE | !v23;
LABEL_60:
  if (v16 > 0x1000)
  {
    free(v54);
    free(v52);
    free(v53);
  }

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
  return v14;
}

void sub_183B5D708(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 + 208), 8);
  _Block_object_dispose((v1 + 240), 8);
  _Block_object_dispose((v2 - 240), 8);
  _Block_object_dispose((v2 - 208), 8);
  _Unwind_Resume(a1);
}

void ___ZN2CA6Render15CompressedImage27new_image_with_texture_dataEP18CGImageTextureData_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1[8] || !a1[9])
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v14 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v18 = a1[8];
      v19 = a1[9];
      v20 = 134218240;
      v21 = v18;
      v22 = 2048;
      v23 = v19;
      _os_log_debug_impl(&dword_183AA6000, v14, OS_LOG_TYPE_DEBUG, "Compressed texture has bogus dimensions %zu x %zu!\n", &v20, 0x16u);
    }

    *(*(a1[4] + 8) + 24) = 1;
  }

  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v15 = a1[10];
    v16 = *(a1[5] + 8);
    if (v15)
    {
      if (*(v16 + 24) != a5)
      {
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v17 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v20) = 0;
          _os_log_debug_impl(&dword_183AA6000, v17, OS_LOG_TYPE_DEBUG, "Compressed texture data base address is not consistent, bailing.", &v20, 2u);
        }

        *(*(a1[4] + 8) + 24) = 1;
        return;
      }
    }

    else
    {
      *(v16 + 24) = a5;
      *(*(a1[6] + 8) + 24) = a6;
      v15 = a1[10];
    }

    *(a1[11] + 8 * v15) = a7;
    *(a1[12] + 8 * a1[10]) = a8;
    *(a1[13] + 8 * a1[10]) = a4;
    ++*(*(a1[7] + 8) + 24);
  }
}

CA::Render::Texture *CA::Render::Texture::Texture(CA::Render::Texture *this, int a2, int a3)
{
  *(this + 2) = 1;
  *(this + 3) = *(this + 12);
  *(this + 4) = a2;
  *this = &unk_1EF203270;
  *(this + 5) = a3;
  *(this + 8) = 1065353216;
  *(this + 10) = 0;
  *(this + 13) = 0;
  *(this + 3) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 9) = 1;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 72) = _Q0;
  *(this + 22) = 0;
  if (CADeviceSupportsASTC::once != -1)
  {
    dispatch_once(&CADeviceSupportsASTC::once, &__block_literal_global_193);
  }

  if ((CADeviceSupportsASTC::supports_astc & 1) == 0)
  {
    *(this + 3) |= 0x80000u;
  }

  return this;
}

CGColorSpace *CA::Render::Texture::set_colorspace(CA::Render::Texture *this, CGColorSpace *a2)
{
  result = *(this + 7);
  if (result != a2)
  {
    CGColorSpaceRelease(result);
    result = CGColorSpaceRetain(a2);
    *(this + 7) = result;
  }

  return result;
}

void CA::Render::CompressedImage::finalize(atomic_uint *this)
{
  CA::Render::post_notification(3u, this, 0, 1);
  add = atomic_fetch_add(this + 45, 0xFFFFFFFF);
  if (this && add == 1)
  {
    v3 = *(*this + 8);

    v3(this);
  }
}

void CA::Render::CompressedImage::~CompressedImage(CA::Render::CompressedImage *this)
{
  CA::Render::CompressedImage::~CompressedImage(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1FF910;
  v2 = *(this + 47);
  if (v2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    v3(*(this + 14), *(this + 17));
  }

  v4 = *(this + 18);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, v4);
  v5 = *(this + 19);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, v5);
  v6 = *(this + 20);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, v6);
  --dword_1ED4EAA5C;

  CA::Render::Texture::~Texture(this);
}

void *CA::Render::Fence::applyTransaction(void *a1)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!CA::Render::Server::_thread || (byte_1ED4E987D & 1) != 0)
  {
    return 0;
  }

  if (CA::Render::Fence::fence_info_once != -1)
  {
    dispatch_once_f(&CA::Render::Fence::fence_info_once, 0, CA::Render::Fence::fence_info_init);
  }

  os_unfair_lock_lock(&CA::Render::Fence::_lock);
  v71 = 0;
  v68 = 0u;
  v69 = 0u;
  v70 = 1065353216;
  v59 = a1;
  v2 = *a1;
  if (*a1)
  {
    v3 = 0;
    do
    {
      v4 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::fences_by_port, *(v2 + 2));
      if (v4)
      {
        v5 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(CA::Render::Fence::cleared_f_names, *v4[3]);
        if (!v5)
        {
          for (i = v2[3]; i; i = *i)
          {
            v7 = i[2];
            if (v7 && (*(v7 + 13) & 4) == 0)
            {
              *buf = *(v7 + 16);
              CA::Render::Fence::_createTransactionInfo(v5);
            }
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v65 = 0u;
  v66 = 0u;
  v67 = 1065353216;
  v9 = a1[1];
  if (!v9)
  {
    goto LABEL_61;
  }

  v10 = byte_1ED4E987E;
  do
  {
    v11 = v3;
    v12 = v9[2];
    if (v12 && (*(v12 + 13) & 4) == 0)
    {
      v61 = *(v12 + 16);
      *buf = &v61;
      std::__hash_table<std::__hash_value_type<unsigned int,CA::Render::Context *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Context *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Context *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Render::Context *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v65, v61)[3] = v12;
      v10 = (v10 & 1) != 0 || std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::fcontexts_by_id, v61) != 0;
    }

    v3 = v11;
    v9 = *v9;
  }

  while (v9);
  if (*(&v66 + 1) <= 1uLL)
  {
    if (*(&v66 + 1) != 1)
    {
      goto LABEL_61;
    }

    if ((*(v59 + 25) & v10 & 1) == 0)
    {
      if (!*(v59 + 25))
      {
        goto LABEL_61;
      }

LABEL_29:
      batch = CA::Render::Fence::create_batch(((byte_1ED4E987F & 1) == 0));
      if (batch)
      {
        v14 = batch;
        v15 = (batch + 40);
        if (*(batch + 44) == 1)
        {
          v57 = *batch;
        }

        else
        {
          v57 = 0;
        }

        v51 = v66;
        v60 = *(batch + 40);
        if (v66)
        {
          v52 = 0;
          do
          {
            v61 = *(v51 + 4);
            v53 = v51[3];
            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(*(v14 + 24), v61);
            if (*(v14 + 44) == 1)
            {
              kdebug_trace();
            }

            CA::Render::Context::add_fence_batch_port(v53, *v15);
            v54 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::bcontexts_by_id, v61);
            if (!v54)
            {
              if (!atomic_fetch_add(&v53[2], 1u))
              {
                atomic_fetch_add(&v53[2], 0xFFFFFFFF);
              }

              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              *malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x20040960023A9uLL) = v53;
              operator new();
            }

            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(*(v54[3] + 16), *v15);
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v55 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x102004014030ADEuLL);
            *v55 = v52;
            v56 = v61;
            v55[2] = 0;
            v55[3] = v56;
            *(v55 + 2) = 0;
            v51 = *v51;
            v52 = v55;
          }

          while (v51);
          v58 = v55;
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v28 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v29 = "Failed to create batch in applyTransaction.";
LABEL_109:
        _os_log_error_impl(&dword_183AA6000, v28, OS_LOG_TYPE_ERROR, v29, buf, 2u);
      }

LABEL_61:
      v60 = 0;
      v57 = 0;
LABEL_62:
      v58 = 0;
      goto LABEL_63;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_29;
  }

  v16 = v66;
  v17 = std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(v68, *(&v68 + 1), *(v66 + 16));
  if (!v17)
  {
    goto LABEL_52;
  }

  v64 = 0;
  *buf = 0u;
  v63 = 0u;
  std::unordered_set<unsigned long long>::unordered_set(buf, v17 + 24);
  v18 = *v16;
  while (v18)
  {
    v19 = std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(v68, *(&v68 + 1), *(v18 + 4));
    v18 = *v18;
    if (v19)
    {
      v20 = v63;
      if (v63)
      {
        v21 = v19;
        do
        {
          if (std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(v21 + 3, *(v20 + 16)))
          {
            v20 = *v20;
          }

          else
          {
            v20 = std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::erase(buf, v20);
          }
        }

        while (v20);
      }
    }

    else
    {
      std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(buf);
    }

    if (!*(&v63 + 1))
    {
      v17 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(buf);
      goto LABEL_52;
    }
  }

  v22 = *(&v63 + 1);
  v17 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(buf);
  if (!v22)
  {
LABEL_52:
    fence = CA::Render::Fence::_create_fence(v17);
    if (fence)
    {
      v24 = fence;
      *(fence + 20) = 1;
      kdebug_trace();
      v25 = mach_absolute_time();
      v26 = CATimeWithHostTime(v25) + 0.5;
      v24[1] = v26;
      v27 = CA::Render::Server::add_callback(3, CA::Render::Fence::ftimeout_callback, 0, v26);
      CA::Render::Fence::_createTransactionInfo(v27);
    }

    v3 = v11;
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v28 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    *buf = 0;
    v29 = "Failed to create batch fence in applyTransaction.";
    goto LABEL_109;
  }

  v60 = 0;
  v57 = 0;
  v58 = 0;
  v3 = v11;
LABEL_63:
  for (j = v69; j; j = *j)
  {
    v31 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::fcontexts_by_id, *(j + 4));
    if (!v31)
    {
      abort();
    }

    v32 = *(v31[3] + 8);
    v33 = v32[1];
    v34 = v32[2];
    if (v33 >= v34)
    {
      v36 = v3;
      v37 = 0xCCCCCCCCCCCCCCCDLL * ((v33 - *v32) >> 3);
      v38 = v37 + 1;
      if (v37 + 1 > 0x666666666666666)
      {
        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      v39 = 0xCCCCCCCCCCCCCCCDLL * ((v34 - *v32) >> 3);
      if (2 * v39 > v38)
      {
        v38 = 2 * v39;
      }

      if (v39 >= 0x333333333333333)
      {
        v40 = 0x666666666666666;
      }

      else
      {
        v40 = v38;
      }

      if (v40)
      {
        if (v40 <= 0x666666666666666)
        {
          operator new();
        }

        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      v41 = 8 * ((v33 - *v32) >> 3);
      std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(v41, j + 3);
      v43 = *v32;
      v42 = v32[1];
      v44 = *v32 - v42;
      v45 = 40 * v37 + v44;
      if (v42 != *v32)
      {
        v46 = *v32;
        v47 = v41 + v44;
        do
        {
          v48 = std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(v47, v46);
          v46 += 5;
          v47 = v48 + 40;
        }

        while (v46 != v42);
        do
        {
          std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v43);
          v43 += 40;
        }

        while (v43 != v42);
      }

      v49 = *v32;
      v35 = v41 + 40;
      *v32 = v45;
      v32[1] = v41 + 40;
      v32[2] = 0;
      if (v49)
      {
        operator delete(v49);
      }

      v3 = v36;
    }

    else
    {
      v35 = std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(v33, j + 3) + 40;
    }

    v32[1] = v35;
  }

  if ((v60 - 1) < 0xFFFFFFFE)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v8 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x102004064794061uLL);
    *v8 = 0;
    v8[1] = v58;
    *(v8 + 4) = 0;
    *(v8 + 5) = v60;
    *(v8 + 24) = 0;
    v8[4] = v57;
  }

  else
  {
    v8 = 0;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v65);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>>>::~__hash_table(&v68);
  os_unfair_lock_unlock(&CA::Render::Fence::_lock);
  return v8;
}

void CA::Render::Context::add_fence_batch_port(os_unfair_lock_s *this, unsigned int a2)
{
  if (a2 - 1 <= 0xFFFFFFFD)
  {
    os_unfair_lock_lock(this + 166);
    v4 = *&this[174]._os_unfair_lock_opaque;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&this[168]._os_unfair_lock_opaque, a2);
    os_unfair_lock_unlock(this + 166);
    if (!v4)
    {

      CA::Render::post_notification(6u, this, 0, 0);
    }
  }
}

CA::Render *CA::Render::key_path_set(CA::Render *this, CFStringRef theString, const __CFString *a3)
{
  v3 = this;
  v15 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    memset(v13, 0, sizeof(v13));
    if (CFStringGetCString(theString, buffer, 1024, 0x8000100u))
    {
      v6 = 0;
      v7 = buffer;
      while (2)
      {
        v8 = v7;
        do
        {
          v10 = *v7++;
          v9 = v10;
          if (!v10)
          {
            if (v7 <= v8)
            {
              return CA::Render::key_path_set_atoms(v3, v6, v13, v5);
            }

            v12 = CA::Render::parse_index(v8, v7, v4);
            if (v12 || (v12 = CAInternAtomWithCString(v8)) != 0)
            {
              *(v13 + v6) = v12;
              v6 = (v6 + 1);
              return CA::Render::key_path_set_atoms(v3, v6, v13, v5);
            }

            goto LABEL_16;
          }
        }

        while (v9 != 46);
        *(v7 - 1) = 0;
        v11 = CA::Render::parse_index(v8, v7, v4);
        if (!v11)
        {
          v11 = CAInternAtomWithCString(v8);
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        *(v13 + v6) = v11;
        v6 = (v6 + 1);
        if (v6 != 16)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_16:
      v6 = 0;
    }

    return CA::Render::key_path_set_atoms(v3, v6, v13, v5);
  }

  else
  {
    *this = 0;
  }

  return this;
}

uint64_t CA::Render::parse_index(CA::Render *this, const char *a2, const char *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a2 - this < 9)
  {
    return 0;
  }

  if (*this != 64)
  {
    return 0;
  }

  v4 = (a2 - 2);
  if (*(a2 - 2) != 41 || strncmp(this, "@index(", 7uLL))
  {
    return 0;
  }

  v8[0] = 0;
  v6 = strtol(this + 7, v8, 10);
  if (v6 >> 30)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8[0] == v4;
  }

  if (v7)
  {
    return v6 | 0x40000000;
  }

  else
  {
    return 0;
  }
}

void CA::Render::key_path_free(CA::Render *this, void **a2)
{
  if (this && (this & 1) == 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v3 = malloc_zone;

    malloc_zone_free(v3, this);
  }
}

uint64_t CA::Render::key_path_set_atoms(CA::Render *this, void **a2, int *a3, const unsigned int *a4)
{
  if (a2)
  {
    v5 = a3;
    v6 = a2;
    if (a2 == 2)
    {
      result = (2 * *a3) | (a3[1] << 32) | 1;
    }

    else if (a2 == 1)
    {
      result = (2 * *a3) | 1u;
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      result = malloc_type_zone_malloc(malloc_zone, 4 * v6 + 4, 0x100004052888210uLL);
      *result = v6;
      v8 = (result + 4);
      do
      {
        v9 = *v5++;
        *v8++ = v9;
        v6 = (v6 - 1);
      }

      while (v6);
    }
  }

  else
  {
    result = 0;
  }

  *this = result;
  return result;
}

uint64_t CA::Render::Fence::create_batch(CA::Render::Fence *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (CA::Render::Fence::fence_info_once != -1)
  {
    dispatch_once_f(&CA::Render::Fence::fence_info_once, 0, CA::Render::Fence::fence_info_init);
  }

  if ((CA::Render::Fence::_batch_counter + 1) > 1)
  {
    v1 = CA::Render::Fence::_batch_counter + 1;
  }

  else
  {
    v1 = 1;
  }

  CA::Render::Fence::_batch_counter = v1;
  v2 = v1 | (getpid() << 32);
  name = 0;
  *&options.flags = xmmword_183E31BB0;
  options.reserved[1] = 0;
  if (!mach_port_construct(*MEMORY[0x1E69E9A60], &options, v2, &name))
  {
    v3 = mach_absolute_time();
    v4 = CATimeWithHostTime(v3) + 0.5;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_malloc(malloc_zone, 0x30uLL, 0x1020040FF0D5982uLL);
    *v5 = v2;
    *(v5 + 10) = name;
    v5[1] = v4;
    v5[2] = 0.0;
    operator new();
  }

  return 0;
}

double CATransform3DSetDecomposition_(double *a1, __int128 *a2, uint64_t a3, __int128 *a4, double *a5, CA::Mat4Impl *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  if (a1)
  {
    _Q0 = *a1;
    v7 = a1[2];
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    v7 = 1.0;
  }

  v14 = _Q0;
  v15 = v7;
  if (a2)
  {
    v20 = *a2;
    *&v21 = *(a2 + 2);
  }

  if (a3)
  {
    *(v17 + 8) = *a3;
    *(&v17[1] + 1) = *(a3 + 16);
  }

  if (a4)
  {
    v16 = *a4;
    *&v17[0] = *(a4 + 2);
  }

  if (a5)
  {
    v18 = *a5;
    v12 = a5[3];
    *&v19 = a5[2];
  }

  else
  {
    v12 = 1.0;
  }

  *(&v19 + 1) = v12;
  *&result = *&CA::Mat4Impl::mat4_set_unmatrix(this, &v14, a3, a4);
  return result;
}

float64x2_t CA::Mat4Impl::mat4_set_unmatrix(CA::Mat4Impl *this, uint64_t a2, uint64_t a3, const double *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  *this = xmmword_183E20E00;
  *(this + 1) = 0u;
  *(this + 2) = xmmword_183E20E60;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = xmmword_183E20E00;
  *(this + 6) = 0u;
  *(this + 7) = xmmword_183E20E60;
  *(this + 3) = *(a2 + 72);
  *(this + 7) = *(a2 + 80);
  *(this + 11) = *(a2 + 88);
  *(this + 15) = *(a2 + 96);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  v8 = *(a2 + 56);
  v9 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*(this + 7), *(this + 1), *&v6), *(this + 3), *&v8), *(this + 5), *&v7);
  *(this + 6) = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_183E20E00, *&v6), xmmword_183E20E60, *&v8), 0, *&v7);
  *(this + 7) = v9;
  if (*(a2 + 136))
  {
    v10 = *(a2 + 104);
    v11 = *(a2 + 112);
    v12 = v10 * v10;
    v13 = v11 * v10;
    v14 = *(a2 + 120);
    v15 = *(a2 + 128);
    v16 = v14 * v10;
    v17 = v15 * v10;
    v18 = v11 * v11;
    v19 = v14 * v11;
    v20 = v15 * v11;
    v21 = v14 * v14;
    v22 = v15 * v14;
    *&v53 = 1.0 - (v21 + v18) * 2.0;
    *(&v53 + 1) = v13 - v22 + v13 - v22;
    *&v54 = v20 + v16 + v20 + v16;
    *(&v54 + 1) = 0;
    *&v55 = v22 + v13 + v22 + v13;
    *(&v55 + 1) = 1.0 - (v21 + v12) * 2.0;
    *&v56 = v19 - v17 + v19 - v17;
    *(&v56 + 1) = 0;
    *&v57 = v16 - v20 + v16 - v20;
    *(&v57 + 1) = v17 + v19 + v17 + v19;
    *v58 = 1.0 - (v18 + v12) * 2.0;
    memset(&v58[8], 0, 32);
    *&v58[40] = 0x3FF0000000000000;
LABEL_21:
    CA::Mat4Impl::mat4_concat(this, &v53, this, a4);
    goto LABEL_22;
  }

  v23 = *(a2 + 120);
  if (v23 != 0.0)
  {
    v54 = 0u;
    v56 = 0u;
    v57 = 0u;
    *v58 = xmmword_183E20E00;
    *&v58[16] = 0u;
    *&v58[32] = xmmword_183E20E60;
    v27 = __sincos_stret(v23);
    *v26.i64 = v27.__cosval;
    *v25.i64 = v27.__sinval;
    if (fabs(v27.__sinval) >= 0.0000001)
    {
      if (fabs(v27.__cosval) < 0.0000001)
      {
        v26.i64[0] = 1.0;
        v29.f64[0] = NAN;
        v29.f64[1] = NAN;
        v25.i64[0] = vbslq_s8(vnegq_f64(v29), v26, v25).u64[0];
        v26.i64[0] = 0;
      }
    }

    else
    {
      v25.i64[0] = 1.0;
      v28.f64[0] = NAN;
      v28.f64[1] = NAN;
      v26.i64[0] = vbslq_s8(vnegq_f64(v28), v25, v26).u64[0];
      v25.i64[0] = 0;
    }

    *&v53 = v26.i64[0];
    *(&v53 + 1) = v25.i64[0];
    *&v55 = -*v25.i64;
    *(&v55 + 1) = v26.i64[0];
    CA::Mat4Impl::mat4_concat(this, &v53, this, v24);
  }

  v30 = *(a2 + 112);
  if (v30 != 0.0)
  {
    v53 = xmmword_183E20E00;
    v54 = 0u;
    v55 = xmmword_183E20E60;
    v56 = 0u;
    v57 = 0u;
    *v58 = xmmword_183E20E00;
    *&v58[16] = 0u;
    *&v58[32] = xmmword_183E20E60;
    v34 = __sincos_stret(v30);
    *v33.i64 = v34.__cosval;
    *v32.i64 = v34.__sinval;
    if (fabs(v34.__sinval) >= 0.0000001)
    {
      if (fabs(v34.__cosval) < 0.0000001)
      {
        v33.i64[0] = 1.0;
        v36.f64[0] = NAN;
        v36.f64[1] = NAN;
        v32.i64[0] = vbslq_s8(vnegq_f64(v36), v33, v32).u64[0];
        v33.i64[0] = 0;
      }
    }

    else
    {
      v32.i64[0] = 1.0;
      v35.f64[0] = NAN;
      v35.f64[1] = NAN;
      v33.i64[0] = vbslq_s8(vnegq_f64(v35), v32, v33).u64[0];
      v32.i64[0] = 0;
    }

    *&v53 = v33.i64[0];
    *&v54 = -*v32.i64;
    *&v57 = v32.i64[0];
    *v58 = v33.i64[0];
    CA::Mat4Impl::mat4_concat(this, &v53, this, v31);
  }

  v37 = *(a2 + 104);
  if (v37 != 0.0)
  {
    v53 = xmmword_183E20E00;
    v54 = 0u;
    v55 = xmmword_183E20E60;
    *(&v56 + 1) = 0;
    *&v57 = 0;
    *v58 = xmmword_183E20E00;
    *&v58[16] = 0u;
    *&v58[32] = xmmword_183E20E60;
    v40 = __sincos_stret(v37);
    *v39.i64 = v40.__cosval;
    *v38.i64 = v40.__sinval;
    if (fabs(v40.__sinval) >= 0.0000001)
    {
      if (fabs(v40.__cosval) < 0.0000001)
      {
        v39.i64[0] = 1.0;
        v42.f64[0] = NAN;
        v42.f64[1] = NAN;
        v38.i64[0] = vbslq_s8(vnegq_f64(v42), v39, v38).u64[0];
        v39.i64[0] = 0;
      }
    }

    else
    {
      v38.i64[0] = 1.0;
      v41.f64[0] = NAN;
      v41.f64[1] = NAN;
      v39.i64[0] = vbslq_s8(vnegq_f64(v41), v38, v39).u64[0];
      v38.i64[0] = 0;
    }

    *(&v55 + 1) = v39.i64[0];
    *&v56 = v38.i64[0];
    *(&v57 + 1) = -*v38.i64;
    *v58 = v39.i64[0];
    goto LABEL_21;
  }

LABEL_22:
  v43 = *(a2 + 40);
  if (v43 != 0.0)
  {
    v53 = xmmword_183E20E00;
    v54 = 0u;
    v55 = xmmword_183E20E60;
    *&v57 = 0;
    v56 = 0uLL;
    *v58 = xmmword_183E20E00;
    *&v58[16] = 0u;
    *&v58[32] = xmmword_183E20E60;
    *(&v57 + 1) = v43;
    CA::Mat4Impl::mat4_concat(this, &v53, this, a4);
  }

  v44 = *(a2 + 32);
  if (v44 != 0.0)
  {
    v53 = xmmword_183E20E00;
    v54 = 0u;
    v55 = xmmword_183E20E60;
    v56 = 0u;
    *v58 = xmmword_183E20E00;
    *&v58[16] = 0u;
    *&v58[32] = xmmword_183E20E60;
    v57 = *&v44;
    CA::Mat4Impl::mat4_concat(this, &v53, this, a4);
  }

  v45 = *(a2 + 24);
  if (v45 != 0.0)
  {
    v53 = xmmword_183E20E00;
    v54 = 0u;
    *(&v55 + 1) = 0x3FF0000000000000;
    v56 = 0u;
    v57 = 0u;
    *v58 = xmmword_183E20E00;
    *&v58[16] = 0u;
    *&v58[32] = xmmword_183E20E60;
    *&v55 = v45;
    CA::Mat4Impl::mat4_concat(this, &v53, this, a4);
  }

  v46 = *(a2 + 16);
  v47 = *(a2 + 8);
  result = vmulq_n_f64(*(this + 1), *a2);
  v49 = vmulq_n_f64(*(this + 2), *&v47);
  v50 = vmulq_n_f64(*(this + 3), *&v47);
  v51 = vmulq_n_f64(*(this + 4), *&v46);
  v52 = vmulq_n_f64(*(this + 5), *&v46);
  *this = vmulq_n_f64(*this, *a2);
  *(this + 1) = result;
  *(this + 2) = v49;
  *(this + 3) = v50;
  *(this + 4) = v51;
  *(this + 5) = v52;
  return result;
}

CA::Display::DisplayLink *CA::Display::DisplayLinkItem::set_reasons(CA::Display::DisplayLinkItem *this, const unsigned int *a2, unsigned int a3)
{
  __s2[2] = *MEMORY[0x1E69E9840];
  if (a3 >= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = a3;
  }

  v5 = (4 * v4);
  __s2[0] = 0;
  __s2[1] = 0;
  if (a3)
  {
    v6 = 0;
    do
    {
      v8 = *a2++;
      v7 = v8;
      if (v8)
      {
        *(__s2 + v6++) = v7;
      }

      --v4;
    }

    while (v4);
  }

  pthread_mutex_lock((this + 136));
  if (!memcmp(this + 88, __s2, v5) || (memcpy(this + 88, __s2, v5), (*(this + 324) & 1) != 0))
  {

    return pthread_mutex_unlock((this + 136));
  }

  else
  {
    os_unfair_lock_lock(this + 2);
    CA::Display::DisplayTimingsControl::register_frame_interval_reasons((*(this + 2) + 464), this, this + 22, 4u);
    os_unfair_lock_unlock(this + 2);
    pthread_mutex_unlock((this + 136));
    v10 = *(this + 19);
    v11 = *(this + 20);
    v12 = *(this + 21);

    return CA::Display::DisplayLinkItem::set_preferred_fps_range(this, *&v10, 1, 1);
  }
}

uint64_t CASRegisterFrameIntervalReasons(uint64_t a1, int a2, unsigned int a3, mach_vm_address_t a4, unsigned int a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v6 = 4 * a5;
  v9[1] = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  CA::Render::post_notification(0x37u, 0, v9, 0);
  if (LOBYTE(v9[0]))
  {
    v7 = 0;
  }

  else
  {
    v7 = 5;
  }

  mach_vm_deallocate(*MEMORY[0x1E69E9A60], a4, v6);
  return v7;
}

uint64_t _XRegisterFrameIntervalReasons(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 64)
  {
    if (*(a1 + 39) == 1 && (v3 = *(a1 + 40) >> 2, v3 == *(a1 + 60)))
    {
      if (*(a1 + 64) || *(a1 + 68) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        result = CASRegisterFrameIntervalReasons(*(a1 + 12), *(a1 + 52), *(a1 + 56), *(a1 + 28), v3);
      }
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void CA::WindowServer::IOMFBServer::register_frame_interval_reasons(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, _DWORD *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 12);
  if ((*(v4 + 640) & 0x100) != 0)
  {
    v6 = a3[1];
    if ((!v6 || *(v4 + 24) == v6) && (*(v4 + 672) & 0x1C00) == 0)
    {
      v7 = a3[2];
      v8 = *(a3 + 2);
      v9 = *(a3 + 3);
      os_unfair_lock_lock((v4 + 28296));
      v10 = *(v4 + 28304);
      v11 = *(v4 + 28312);
      v12 = v10;
      if (v10 != v11)
      {
        while (*v12 != v7)
        {
          v12 += 28;
          if (v12 == v11)
          {
            goto LABEL_12;
          }
        }
      }

      if (v12 != v11)
      {
        if (!v9)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      }

LABEL_12:
      if ((0x6DB6DB6DB6DB6DB7 * ((v11 - v10) >> 2)) < 0x40)
      {
        if (v9)
        {
          if (v7)
          {
            os_unfair_lock_lock((v4 + 28244));
            [(CAProcessMonitor *)CA::WindowServer::IOMFBDisplay::process_monitor(v4) addMonitoringProcess:v7];
            os_unfair_lock_unlock((v4 + 28244));
            v11 = *(v4 + 28312);
          }

          v14 = *(v4 + 28320);
          if (v11 >= v14)
          {
            v16 = *(v4 + 28304);
            v17 = v11 - v16;
            v18 = 0x6DB6DB6DB6DB6DB7 * ((v11 - v16) >> 2);
            v19 = v18 + 1;
            if ((v18 + 1) > 0x924924924924924)
            {
              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            v20 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v16) >> 2);
            if (2 * v20 > v19)
            {
              v19 = 2 * v20;
            }

            if (v20 >= 0x492492492492492)
            {
              v21 = 0x924924924924924;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              if (v21 <= 0x924924924924924)
              {
                operator new();
              }

              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            v22 = 28 * v18;
            *v22 = v7;
            *(v22 + 4) = 0;
            v15 = 28 * v18 + 28;
            *(v22 + 20) = 0;
            *(v22 + 12) = 0;
            v23 = (28 * v18 - v17);
            memcpy(v23, v16, v17);
            *(v4 + 28304) = v23;
            *(v4 + 28312) = v15;
            *(v4 + 28320) = 0;
            if (v16)
            {
              operator delete(v16);
            }
          }

          else
          {
            *v11 = v7;
            v15 = v11 + 28;
            *(v11 + 4) = 0;
            *(v11 + 20) = 0;
            *(v11 + 12) = 0;
          }

          *(v4 + 28312) = v15;
          v12 = v15 - 28;
LABEL_34:
          if (*v8)
          {
            v24 = 0;
            *(v12 + 8) = 0;
            *(v12 + 16) = 0;
            v25 = v12 + 8;
            v26 = 4;
            if (v9 < 4)
            {
              v26 = v9;
            }

            do
            {
              v28 = *v8++;
              v27 = v28;
              if (v28)
              {
                *(v25 + 4 * v24++) = v27;
              }

              --v26;
            }

            while (v26);
LABEL_44:
            if (byte_1ED4E9846 == 1)
            {
              *buf = 0;
              v38 = 0;
              v39 = 0;
              X::Stream::printf(buf, "  Reasons: %ld", 0x6DB6DB6DB6DB6DB7 * ((*(v4 + 28312) - *(v4 + 28304)) >> 2));
              v31 = *(v4 + 28304);
              for (i = *(v4 + 28312); v31 != i; v31 += 7)
              {
                X::Stream::printf(buf, "    %d: ", *v31);
                for (j = 2; j != 6; ++j)
                {
                  X::Stream::printf(buf, "%u %u, ", HIWORD(v31[j]), v31[j]);
                }
              }

              v34 = x_stream_finish(buf);
              if (v34)
              {
                v35 = v34;
                if (x_log_get_frame_rate(void)::once != -1)
                {
                  dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
                }

                v36 = x_log_get_frame_rate(void)::log;
                if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
                {
                  *v40 = 136315138;
                  v41 = v35;
                  _os_log_impl(&dword_183AA6000, v36, OS_LOG_TYPE_DEFAULT, "CAFrameRateServer: %s\n", v40, 0xCu);
                }

                free(v35);
              }
            }

            goto LABEL_45;
          }

LABEL_41:
          os_unfair_lock_lock((v4 + 28244));
          v29 = *(v4 + 28312);
          v30 = v29 - (v12 + 28);
          if (v29 != v12 + 28)
          {
            memmove(v12, (v12 + 28), v29 - (v12 + 28));
          }

          *(v4 + 28312) = v12 + v30;
          os_unfair_lock_unlock((v4 + 28244));
          goto LABEL_44;
        }
      }

      else
      {
        if (x_log_get_frame_rate(void)::once != -1)
        {
          dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
        }

        v13 = x_log_get_frame_rate(void)::log;
        if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_183AA6000, v13, OS_LOG_TYPE_DEFAULT, "CAFrameRateServer too many reasons.", buf, 2u);
        }
      }

LABEL_45:
      os_unfair_lock_unlock((v4 + 28296));
      *a3 = 1;
    }
  }
}

void CA::Render::Encoder::set_object_cache(CA::Render::Encoder *this, atomic_uint *a2, int a3)
{
  v6 = *(this + 9);
  if (v6 != a2)
  {
    if (v6)
    {
      CA::Render::Encoder::ObjectCache::unref(v6);
    }

    if (a2)
    {
      atomic_fetch_add(a2, 1u);
    }

    *(this + 9) = a2;
  }

  if (a2 && a3)
  {
    os_unfair_lock_lock(&CA::Render::Encoder::ObjectCache::_lock);
    v8 = *(a2 + 2);
    if (v8)
    {
      v9 = 0;
      v10 = 1 << *v8;
      do
      {
        for (i = *(*(v8 + 16) + 8 * v9); i; i = *i)
        {
          CA::Render::encode_invalidation(i[2], i[3], this, v7);
        }

        ++v9;
      }

      while (v9 != v10);
      x_hash_table_remove_all(*(a2 + 2));
    }

    v12 = *(a2 + 4);
    if (v12)
    {
      v13 = 0;
      v14 = 1 << *v12;
      do
      {
        for (j = *(*(v12 + 16) + 8 * v13); j; j = *j)
        {
          CA::Render::encode_volatile(j[2], j[3], this, v7);
        }

        ++v13;
      }

      while (v13 != v14);
      x_hash_table_remove_all(*(a2 + 4));
    }

    os_unfair_lock_unlock(&CA::Render::Encoder::ObjectCache::_lock);
  }
}

uint64_t CA::Render::Encoder::Encoder(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v9 = CA::Render::Coder::Coder(a1, a2);
  *v9 = &unk_1EF1FFE78;
  *(v9 + 68) = a4;
  *(v9 + 72) = 0;
  *(v9 + 104) = 0;
  *(v9 + 112) = 0;
  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
  {
    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
  }

  *(a1 + 64) = a3 | 1;
  if (CADeviceHasInternalDiagnostics::once[0] != -1)
  {
    dispatch_once(CADeviceHasInternalDiagnostics::once, &__block_literal_global_175);
  }

  if (CADeviceHasInternalDiagnostics::internal == 1)
  {
    *(a1 + 64) |= 8u;
  }

  v10 = *(a1 + 8);
  v11 = *(v10 + 16);
  if (v11 >= 8704)
  {
    v12 = v11 - 0x2000;
  }

  else
  {
    v12 = 512;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v11 >= v13;
  v15 = v11 - v13;
  if (v14)
  {
    v16 = *(v10 + 8);
    *(v10 + 8) = v16 + v13;
    *(v10 + 16) = v15;
  }

  else
  {
    v16 = x_heap_malloc_small_(*(a1 + 8), v13);
  }

  *(a1 + 24) = v16;
  *(a1 + 32) = v16;
  *(a1 + 40) = v16 + v12;
  v17 = *(a1 + 64);
  if (v12 <= 3)
  {
    CA::Render::Encoder::grow(a1, 4);
    v16 = *(a1 + 32);
  }

  *v16 = v17;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = (v18 + 4);
  *(a1 + 32) = v18 + 4;
  if (v18 + 8 > v19)
  {
    CA::Render::Encoder::grow(a1, 4);
    v20 = *(a1 + 32);
  }

  *v20 = a4;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = (v21 + 4);
  *(a1 + 32) = v21 + 4;
  if (v21 + 12 > v22)
  {
    CA::Render::Encoder::grow(a1, 8);
    v23 = *(a1 + 32);
  }

  *v23 = a5;
  v24 = *(a1 + 24);
  v25 = *(a1 + 32) + 8;
  *(a1 + 32) = v25;
  *(a1 + 96) = v25 - v24;
  return a1;
}

uint64_t CA::foreach_callback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16))
  {
    return (*(a3 + 16))(a3, result);
  }

  return result;
}

uint64_t ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke_2(uint64_t result, uint64_t a2)
{
  if (*(a2 + 268) == *(result + 48))
  {
    return CA::Layer::commit_if_needed(a2, *(result + 40), *(result + 32));
  }

  return result;
}

BOOL CA::Render::encode_sync_request(CA::Render *this, CA::Render::Encoder *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  if ((v4 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 1);
    v4 = *(this + 4);
  }

  *(this + 4) = v4 + 1;
  *v4 = 33;
  v15 = 0;
  v5 = MEMORY[0x1865EB2D0](*MEMORY[0x1E69E9A60], a2, 21, &v15 + 4, &v15);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v15 == 18;
  }

  if (!v6 || (HIDWORD(v15) - 1) >= 0xFFFFFFFE)
  {
    v8 = v5;
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v9 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v17 = v8;
      v18 = 1024;
      v19 = HIDWORD(v15);
      v20 = 1024;
      v21 = v15;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "failed encode_port_make_once : r=%i so=%x t=%x", buf, 0x14u);
    }
  }

  v10 = x_heap_malloc_small_(*(this + 1), 0x30uLL);
  *(v10 + 8) = 2;
  v11 = HIDWORD(v15);
  *(v10 + 16) = HIDWORD(v15);
  *(v10 + 20) = 18;
  *(v10 + 24) = 1;
  v12 = *(this + 7);
  *v10 = *(this + 6);
  *(this + 6) = v10;
  *(this + 7) = v12 + 1;
  v13 = (v11 - 1) < 0xFFFFFFFE;
  CA::Render::Encoder::encode_sanity_check(this);
  return v13;
}

void CA::Render::Encoder::~Encoder(CA::Render::Encoder *this)
{
  *this = &unk_1EF1FFE78;
  for (i = *(this + 14); i; i = i[1])
  {
    v3 = *i;
    if (atomic_fetch_add((*i + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }
  }

  v4 = *(this + 9);
  if (v4)
  {
    CA::Render::Encoder::ObjectCache::unref(v4);
  }

  CA::Render::Coder::~Coder(this);
}

{
  CA::Render::Encoder::~Encoder(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

uint64_t CA::Render::Encoder::send_message(CA::Render::Encoder *this, mach_port_t a2, mach_port_name_t a3, unsigned int *a4, uint64_t a5)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v9 = this;
  v10 = *(this + 4);
  if ((v10 + 1) > *(this + 5))
  {
    this = CA::Render::Encoder::grow(this, 1);
    v10 = *(v9 + 4);
  }

  *(v9 + 4) = v10 + 1;
  *v10 = 0;
  v12 = *(v9 + 3);
  v11 = *(v9 + 4);
  v13 = v11 - v12;
  if (v11 == v12)
  {
    return 0;
  }

  v53 = a4;
  v14 = *(v9 + 7);
  v15 = 8 * v14;
  v16 = a5 == 1;
  v56 = 8 * v14;
  v57 = a5;
  if (v14)
  {
    if (v15 > 0x1000)
    {
      this = malloc_type_malloc(8 * v14, 0xD900F16BuLL);
      v17 = this;
    }

    else
    {
      MEMORY[0x1EEE9AC00](this);
      v17 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v17, 8 * v14);
    }

    v20 = *(v9 + 6);
    if (v20)
    {
      v19 = 0;
      v21 = v15 - 8;
      do
      {
        *(v17 + v21) = v20;
        v22 = *(v20 + 2);
        if (v22 == 1)
        {
          v23 = v19 + 1;
        }

        else
        {
          v23 = v19;
        }

        if (v22 == 2)
        {
          ++v16;
        }

        else
        {
          v19 = v23;
        }

        v20 = *v20;
        v21 -= 8;
      }

      while (v20);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0;
  }

  v52 = 12 * v16;
  v24 = 12 * v16 + 28;
  v55 = v13;
  v25 = ((v24 + v13 + 16 * v19) + 3) & 0x1FFFFFFFCLL;
  v26 = *MEMORY[0x1E69E9AC8];
  v27 = (v24 + 16 * (v19 + 1));
  v28 = v25 >= *MEMORY[0x1E69E9AC8];
  if (v25 >= *MEMORY[0x1E69E9AC8])
  {
    ++v19;
  }

  v54 = v19;
  if (v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = v25;
  }

  if (v29 > 0x1000)
  {
    v30 = malloc_type_malloc(v29, 0x5764F5FBuLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](this);
    v30 = (&v51 - ((v29 + 15) & 0x3FFFFFFF0));
    bzero(v30, v29);
  }

  bzero(v30, v29);
  v31 = 0;
  if (!a3 && (*(v9 + 104) & 1) != 0)
  {
    *&options[16] = 0;
    *options = xmmword_183E30880;
    name = 0;
    v32 = mach_port_construct(*MEMORY[0x1E69E9A60], options, 0, &name);
    if (v32)
    {
      v33 = v32;
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v51 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        v50 = mach_error_string(v33);
        *buf = 136315394;
        v60 = v50;
        v61 = 1024;
        v62 = v33;
        _os_log_error_impl(&dword_183AA6000, v51, OS_LOG_TYPE_ERROR, "Failed to create mach reply port: %s (%#x)", buf, 0x12u);
      }
    }

    a3 = name;
    v31 = name != 0;
  }

  if (v57)
  {
    v34 = 40004;
  }

  else
  {
    v34 = 40002;
  }

  if (v57)
  {
    v35 = 40005;
  }

  else
  {
    v35 = 40003;
  }

  if (v25 < v26)
  {
    v35 = v34;
  }

  if (a3)
  {
    v36 = 5395;
  }

  else
  {
    v36 = 19;
  }

  v30->msgh_bits = v36;
  v30->msgh_size = v29;
  v30->msgh_remote_port = a2;
  v30->msgh_local_port = a3;
  v30->msgh_voucher_port = 0;
  v30->msgh_id = v35;
  v37 = v54;
  v38 = v16 + v54;
  if (v16 + v54)
  {
    v30->msgh_bits = v36 | 0x80000000;
    v30[1].msgh_bits = v38;
  }

  if (v25 >= v26)
  {
    v39 = v31;
    *&v30[1].msgh_size = *(v9 + 3);
    msgh_local_port = v30[1].msgh_local_port;
    v42 = v55;
    v30[1].msgh_local_port = msgh_local_port & 0xFFFFFF00;
    v30[1].msgh_voucher_port = v42;
    v30[1].msgh_local_port = msgh_local_port & 0xFF0000 | *(v9 + 4) & 0x100 | 0x1000000;
    p_msgh_id = &v30[1].msgh_id;
  }

  else
  {
    v39 = v31;
    p_msgh_id = &v30[1].msgh_size;
    memcpy(&v30[1].msgh_size + 16 * v37 + v52, *(v9 + 3), v55);
  }

  if (v57 == 1)
  {
    *p_msgh_id = *v53;
    *(p_msgh_id + 5) = 19;
    p_msgh_id += 3;
  }

  if (v14)
  {
    v43 = v17;
    do
    {
      v44 = *v43;
      v45 = *(*v43 + 8);
      if (v45 == 2)
      {
        *p_msgh_id = *(v44 + 16);
        *(p_msgh_id + 5) = *(v44 + 20);
        v47 = *v43;
        if (*(*v43 + 20) == 18 && *(v47 + 24) == 1)
        {
          *(v47 + 24) = 0;
        }

        p_msgh_id += 3;
      }

      else if (v45 == 1)
      {
        *p_msgh_id = *(v44 + 16);
        v46 = *(*v43 + 24);
        p_msgh_id[2] = (*(p_msgh_id + 10) << 16) | 0x1000100;
        p_msgh_id[3] = v46;
        p_msgh_id += 4;
      }

      v43 = (v43 + 8);
      --v14;
    }

    while (v14);
  }

  if (BYTE11(xmmword_1ED4E980C))
  {
    kdebug_trace();
    v18 = CA::Render::Message::send_message(v30);
    kdebug_trace();
  }

  else
  {
    v18 = CA::Render::Message::send_message(v30);
  }

  v48 = v56;
  if (v39)
  {
    if (!v18)
    {
      v65 = 0u;
      memset(v66, 0, sizeof(v66));
      v64 = 0u;
      memset(options, 0, sizeof(options));
      v18 = mach_msg(options, 2, 0, 0x5Cu, a3, 0, 0);
    }

    mach_port_destruct(*MEMORY[0x1E69E9A60], a3, 0, 0);
  }

  if (v29 > 0x1000)
  {
    free(v30);
  }

  if (v48 > 0x1000)
  {
    free(v17);
  }

  return v18;
}

uint64_t CA_CLIENT_MACH_PORT_ALLOCATE_FAILED(uint64_t result, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) >= 0xFFFFFFFE)
  {
    v2 = result;
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v3 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109378;
      v4[1] = v2;
      v5 = 2080;
      v6 = mach_error_string(v2);
      _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "CoreAnimation: Client mach port creation failed 0x%x : %s", v4, 0x12u);
    }

    abort();
  }

  return result;
}

uint64_t CA::Render::Message::send_message(mach_msg_header_t *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = voucher_mach_msg_set(this);
  v3 = mach_msg(this, 1, this->msgh_size, 0, 0, 0, 0);
  if (v2)
  {
    voucher_mach_msg_clear(this);
  }

  if (v3)
  {
    if (v3 == 268435459)
    {
      goto LABEL_16;
    }

    if (CA::Render::should_abort_on_send_failures(void)::once[0] != -1)
    {
      dispatch_once(CA::Render::should_abort_on_send_failures(void)::once, &__block_literal_global_38_14273);
    }

    if ((CA::Render::should_abort_on_send_failures(void)::ignore_mach_send_errors & 1) == 0)
    {
      if (CADeviceHasInternalBuild::once != -1)
      {
        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
      }

      if (CADeviceHasInternalBuild::internal == 1)
      {
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v6 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          msgh_size = this->msgh_size;
          msgh_bits = this[1].msgh_bits;
          v9 = 67109632;
          v10 = v3;
          v11 = 2048;
          v12 = msgh_size;
          v13 = 2048;
          v14 = msgh_bits;
          _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "CoreAnimation: Message::send_message() returned 0x%x - size %zu, # descriptors %zu", &v9, 0x1Cu);
        }

        abort();
      }
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v4 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v9 = 67109120;
      v10 = v3;
      _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "Message::send_message() returned 0x%x\n", &v9, 8u);
    }

    if ((v3 - 268435459) <= 1)
    {
LABEL_16:
      mach_msg_destroy(this);
    }
  }

  return v3;
}

void CA::Render::Encoder::ObjectCache::unref(CA::Render::Encoder::ObjectCache *this)
{
  if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
  {
    os_unfair_lock_lock(&CA::Render::Encoder::ObjectCache::_lock);
    v3 = CA::Render::Encoder::ObjectCache::_cache_list;
    x_list_remove(CA::Render::Encoder::ObjectCache::_cache_list, this);
    CA::Render::Encoder::ObjectCache::_cache_list = v3;
    os_unfair_lock_unlock(&CA::Render::Encoder::ObjectCache::_lock);
    x_hash_table_free(*(this + 1));
    v4 = *(this + 2);
    if (v4)
    {
      x_hash_table_free(v4);
    }

    v5 = *(this + 3);
    if (v5)
    {
      x_hash_table_free(v5);
    }

    v6 = *(this + 4);
    if (v6)
    {
      x_hash_table_free(v6);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_zone;

    malloc_zone_free(v7, this);
  }
}

uint64_t ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke(void *a1, id *a2, int a3, const __CFString *a4, CALayer *a5, CA::Render::TimingList *(*a6)(CA::Layer *, void *), void *a7)
{
  v7 = a4;
  v11 = a1[6];
  v12 = *v11;
  v13 = *(*(*v11 + 15) + 204);
  if ((v13 & 0x20) == 0)
  {
    kdebug_trace();
    v12 = *v11;
  }

  if ((a3 & 0x200000) != 0)
  {
    v11[6] = 0xBFF0000000000000;
    CA::Layer::commit_animations(a2, v12, v11, a4, a5, a6, a7);
  }

  v14 = [a2[2] _copyRenderLayer:? layerFlags:? commitFlags:?];
  if (v14)
  {
    v15 = v11[4];
    if (v15)
    {
      if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
      {
        dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
      }

      if (a2)
      {
        v16 = (a2 + CA::Render::_render_id_slide);
      }

      else
      {
        v16 = 0;
      }

      CA::Render::encode_set_object(v15, v16, v7, v14, 0);
    }

    v17 = v11[5];
    if (v17)
    {
      if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
      {
        dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
      }

      if (a2)
      {
        v18 = a2 + CA::Render::_render_id_slide;
      }

      else
      {
        v18 = 0;
      }

      CA::Render::Context::set_object(v17, v18, v7, v14);
    }

    else if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v14 + 16))(v14);
    }
  }

  result = [a2[2] _didCommitLayer:*v11];
  *(v11 + 56) = 1;
  if ((v13 & 0x20) == 0)
  {
    result = kdebug_trace();
  }

  ++*(*(a1[4] + 8) + 24);
  *(*(a1[5] + 8) + 24) = 1;
  return result;
}

void sub_183B61508(_Unwind_Exception *exception_object)
{
  if ((v1 & 0x20) == 0)
  {
    kdebug_trace();
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::Context::current_colorspace(CA::Context *this, CA::Transaction *a2)
{
  if ((this || (this = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576)) != 0) && (v2 = *(this + 5)) != 0)
  {
    return *(v2 + 112);
  }

  else
  {
    return CAGetColorSpace(36);
  }
}

char *CA::Render::copy_render_array(const __CFArray *a1, int a2)
{
  result = CA::Render::copy_render_object(a1, a2);
  if (result && result[12] != 1)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      (*(*result + 16))(result);
    }

    return 0;
  }

  return result;
}

char *CA::Render::copy_render_object(const __CFArray *a1, int a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v5 = Count;
  v6 = 8 * Count;
  if ((8 * Count) > 0x1000)
  {
    v7 = malloc_type_malloc(8 * Count, 0x6572E50BuLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](Count);
    v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
  }

  v21.location = 0;
  v21.length = v5;
  CFArrayGetValues(a1, v21, v7);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
    v10 = v7;
    v11 = v5;
    do
    {
      v10 += 8;
      objc_opt_class();
      v9 += objc_opt_isKindOfClass() & 1;
      --v11;
    }

    while (v11);
    v8 = CA::Render::Vector::new_vector((4 * v9), 0, v12);
    v13 = v8 + 24;
    v14 = v7;
    do
    {
      v15 = *v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 _getPoints:v13];
      }

      v13 += 32;
      ++v14;
      --v5;
    }

    while (v5);
  }

  else
  {
    v16 = 0;
    for (i = 0; i != v5; ++i)
    {
      v18 = [*&v7[8 * i] CA_copyRenderValue];
      if (v18)
      {
        if (a2 && *(v18 + 12) != a2)
        {
          if (atomic_fetch_add((v18 + 8), 0xFFFFFFFF) == 1)
          {
            (*(*v18 + 16))(v18);
          }
        }

        else
        {
          *&v7[8 * v16] = v18;
          v16 = (v16 + 1);
        }
      }
    }

    v8 = CA::Render::Array::new_array(v16, v7, 0, 0);
  }

  if (v6 > 0x1000)
  {
    free(v7);
  }

  return v8;
}

uint64_t CA::Render::Layer::image_filter_from_string(const __CFString *this, const __CFString *a2)
{
  if (this == @"linear")
  {
    return 1;
  }

  v2 = a2;
  v3 = CAInternAtom(this, 0);
  v4 = v3;
  if (v3 <= 168)
  {
    if (v3 <= 82)
    {
      if (v3 == 47)
      {
        v5 = v2 == 0;
        v6 = 9;
      }

      else
      {
        if (v3 != 48)
        {
          return 1;
        }

        v5 = v2 == 0;
        v6 = 10;
      }
    }

    else
    {
      switch(v3)
      {
        case 'S':
          v5 = v2 == 0;
          v6 = 5;
          break;
        case 'T':
          v5 = v2 == 0;
          v6 = 7;
          break;
        case 'U':
          v5 = v2 == 0;
          v6 = 6;
          break;
        default:
          return 1;
      }
    }

LABEL_27:
    if (v5)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }

  if (v3 <= 487)
  {
    if (v3 == 169)
    {
      return 3;
    }

    if (v3 != 466)
    {
      return 1;
    }

    v5 = v2 == 0;
    v6 = 4;
    goto LABEL_27;
  }

  if (v3 == 488)
  {
    return 8;
  }

  result = 0;
  if (v4 != 528)
  {
    if (v4 != 722)
    {
      return 1;
    }

    if (v2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void CA::Render::Texture::~Texture(CGColorSpaceRef *this)
{
  *this = &unk_1EF203270;
  CGColorSpaceRelease(this[7]);
  v3 = this[6];
  if (v3)
  {
    CA::Shape::unref(v3);
  }

  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v2);
  }
}

{
  CA::Render::Texture::~Texture(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

uint64_t CA::Context::retain_render_ctx(CA::Context *this)
{
  os_unfair_lock_lock(&CA::Context::_lock);
  v2 = *(this + 13);
  if (v2)
  {
    v3 = (v2 + 8);
    if (!atomic_fetch_add((v2 + 8), 1u))
    {
      v2 = 0;
      atomic_fetch_add(v3, 0xFFFFFFFF);
    }
  }

  os_unfair_lock_unlock(&CA::Context::_lock);
  return v2;
}

unint64_t CA::Display::DisplayTimingsControl::fps_range_to_frame_interval_range(CA::Display::DisplayTimingsControl *this, CAFrameRateRange a2, int a3)
{
  preferred = a2.preferred;
  maximum = a2.maximum;
  minimum = a2.minimum;
  v8 = CA::Display::DisplayTimingsControl::compat_quanta_mode(this);
  v9 = 64;
  if ((*(this + 241) & 8) == 0)
  {
    v9 = 48;
  }

  if (*(this + 241))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10 <= *(this + 14))
  {
    v10 = *(this + 14);
  }

  if (v10 <= *(this + 22))
  {
    LOBYTE(v10) = *(this + 22);
  }

  v12.minimum = minimum;
  v12.maximum = maximum;
  v12.preferred = preferred;
  return CAFrameRateRangeToFrameIntervalRange(v12, *(this + v9), v10, *(this + 241) & 1, v8, a3);
}

uint64_t CAFrameIntervalRangeAdaptToFrameInterval(CAFrameIntervalRange a1, uint64_t a2, int a3)
{
  v3 = a2;
  var2 = a1.var2;
  var0 = a1.var0;
  v37 = *MEMORY[0x1E69E9840];
  var1 = a1.var1;
  if (!a1.var1 && !a1.var0 && !a1.var2)
  {
    return a2;
  }

  if (a2 && a3 && a1.var2 != a2)
  {
    if (!a1.var2 && a1.var0 <= a2 && a1.var1 >= a2)
    {
      return a2;
    }

    if (!a1.var0 || (!a1.var2 ? (v7 = a1.var0 > a1.var1) : (v7 = 1), v7 ? (v8 = 0) : (v8 = 1), a1.var2 <= a1.var1 ? (v9 = a1.var0 > a1.var2) : (v9 = 1), v9 && (v8 & 1) == 0))
    {
      __assert_rtn("CAFrameIntervalRangeAdaptToFrameInterval", "CATimingReference.cpp", 269, "CAFrameIntervalRangeIsValid (range)");
    }

    if (a2 > 5)
    {
      __assert_rtn("CAFrameIntervalRangeAdaptToFrameInterval", "CATimingReference.cpp", 270, "target_interval <= CAFrameIntervalServerIntervalMax");
    }

    v10 = 0;
    while (1)
    {
      v11 = frame_interval_table[v10];
      if (v11 >= a1.var0)
      {
        break;
      }

      if (++v10 == 21)
      {
        LODWORD(v10) = -1;
        goto LABEL_28;
      }
    }

    if (v11 != a1.var0)
    {
      LODWORD(v10) = -1;
    }

LABEL_28:
    v12 = 0;
    while (1)
    {
      v13 = frame_interval_table[v12];
      if (v13 >= a1.var1)
      {
        break;
      }

      if (++v12 == 21)
      {
        LODWORD(v12) = -1;
        goto LABEL_34;
      }
    }

    if (v13 != a1.var1)
    {
      LODWORD(v12) = -1;
    }

LABEL_34:
    v14 = 0;
    while (1)
    {
      v15 = frame_interval_table[v14];
      if (v15 >= a1.var2)
      {
        break;
      }

      if (++v14 == 21)
      {
        LODWORD(v14) = -1;
        goto LABEL_40;
      }
    }

    if (v15 != a1.var2)
    {
      LODWORD(v14) = -1;
    }

LABEL_40:
    v16 = 0;
    while (1)
    {
      v17 = frame_interval_table[v16];
      if (v17 >= a2)
      {
        break;
      }

      if (++v16 == 21)
      {
        LODWORD(v16) = -1;
        goto LABEL_46;
      }
    }

    if (v17 != a2)
    {
      LODWORD(v16) = -1;
    }

LABEL_46:
    if (v10 == -1 || v12 == -1 || (v14 == -1 ? (v18 = a1.var2 == 0) : (v18 = 1), !v18 || v16 == -1))
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v20 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        v29 = 67109888;
        v30 = var0;
        v31 = 1024;
        v32 = var1;
        v33 = 1024;
        v34 = var2;
        v35 = 1024;
        v36 = v3;
        _os_log_error_impl(&dword_183AA6000, v20, OS_LOG_TYPE_ERROR, "CoreAnimation: Invalid frame interval range (%d %d %d) or target interval (%d)", &v29, 0x1Au);
      }
    }

    else
    {
      if (a1.var2)
      {
        if (v14 - v10 <= v12 - v14)
        {
          v19 = v12 - v14;
        }

        else
        {
          v19 = v14 - v10;
        }
      }

      else if (a1.var1 <= a2)
      {
        v19 = v12 - v10;
        LODWORD(v14) = v12;
      }

      else if (a1.var0 >= a2)
      {
        v19 = v12 - v10;
        LODWORD(v14) = v10;
      }

      else
      {
        if (v16 - v10 <= v12 - v16)
        {
          v19 = v12 - v16;
        }

        else
        {
          v19 = v16 - v10;
        }

        LODWORD(v14) = v16;
      }

      v22 = 0;
      v23 = 0;
      result = 0;
      if (v19 <= 3)
      {
        v19 = 3;
      }

      do
      {
        if (v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = -v23;
        }

        v25 = v24 + v14;
        if ((v24 + v14) <= 0x13)
        {
          v26 = frame_interval_table[v25];
          v27 = a2 % v26;
          if (v26 > a2)
          {
            v27 = v26 % a2;
          }

          if (!v27)
          {
            if (v10 <= v25 && v25 <= v12)
            {
              return frame_interval_table[v25];
            }

            if (!result)
            {
              if (v26 >= var0)
              {
                result = v26;
              }

              else
              {
                result = 0;
              }
            }
          }
        }

        v22 ^= 1u;
        v23 += v22;
      }

      while (v23 <= v19);
      if (result)
      {
        return result;
      }

      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v28 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 67109888;
        v30 = var0;
        v31 = 1024;
        v32 = var1;
        v33 = 1024;
        v34 = var2;
        v35 = 1024;
        v36 = v3;
        _os_log_impl(&dword_183AA6000, v28, OS_LOG_TYPE_DEFAULT, "Unable to adapt interval range (%u %u %u) to %u.", &v29, 0x1Au);
      }
    }
  }

  if (var2)
  {
    return var2;
  }

  else
  {
    return var0;
  }
}

CA::Display::DisplayLink *CA::Display::DisplayLinkItem::set_preferred_fps_range(CA::Display::DisplayLinkItem *this, CAFrameRateRange a2, int a3, int a4)
{
  preferred = a2.preferred;
  maximum = a2.maximum;
  minimum = a2.minimum;
  pthread_mutex_lock((this + 136));
  v14.minimum = minimum;
  v14.maximum = maximum;
  v14.preferred = preferred;
  v10 = CA::Display::DisplayLinkItem::set_preferred_fps_range_locked(this, v14, a4);
  pthread_mutex_unlock((this + 136));
  result = *(this + 33);
  if (result)
  {
    v12 = (v10 & a3) == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {

    return CA::Display::DisplayLink::item_properties_changed(result);
  }

  return result;
}

uint64_t CA::Display::DisplayLinkItem::set_preferred_fps_range_locked(CA::Display::DisplayLinkItem *this, CAFrameRateRange a2, int a3)
{
  preferred = a2.preferred;
  maximum = a2.maximum;
  minimum = a2.minimum;
  v42 = *MEMORY[0x1E69E9840];
  v8 = CA::Display::DisplayTimingsControl::server_compat_quanta_mode((*(this + 2) + 464), 0);
  *(this + 128) = v8;
  v47.minimum = minimum;
  v47.maximum = maximum;
  v47.preferred = preferred;
  v9 = CA::Display::DisplayTimingsControl::fps_range_to_frame_interval_range((*(this + 2) + 464), v47, v8);
  v10 = v9;
  v12 = v11;
  v13 = HIDWORD(v9);
  if ((*(*(this + 2) + 705) & 2) != 0)
  {
    if (CAHighFrameRateRestrictionEnabled(void)::once != -1)
    {
      dispatch_once(&CAHighFrameRateRestrictionEnabled(void)::once, &__block_literal_global_6_18959);
    }

    if (CAHighFrameRateRestrictionEnabled(void)::enabled == 1 && !*(this + 22))
    {
      if (CADeviceDisableMinimumFrameDurationOnPhone::once != -1)
      {
        dispatch_once(&CADeviceDisableMinimumFrameDurationOnPhone::once, &__block_literal_global_165);
      }

      if (v10 <= 3)
      {
        v14 = 3;
      }

      else
      {
        v14 = v10;
      }

      if (v13 <= 4)
      {
        v15 = 4;
      }

      else
      {
        v15 = v13;
      }

      if (v12 <= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v12;
      }

      if (!v12)
      {
        v16 = 0;
      }

      if (CADeviceDisableMinimumFrameDurationOnPhone::disabled)
      {
        v13 = v13;
      }

      else
      {
        v12 = v16;
        v13 = v15;
      }

      if ((CADeviceDisableMinimumFrameDurationOnPhone::disabled & 1) == 0)
      {
        v10 = v14;
      }
    }
  }

  if (byte_1ED4E9848)
  {
    v17 = 0x200000002;
    v18 = 2;
    v10 = 2;
    LODWORD(v13) = 2;
    v12 = 2;
  }

  else
  {
    v17 = v10 | (v13 << 32);
    v18 = v12;
    if (!v10)
    {
LABEL_59:
      *&v44.var0 = v17;
      v44.var2 = v18;
      v48.minimum = minimum;
      v48.maximum = maximum;
      v48.preferred = preferred;
      CAFrameIntervalRangeLogInvalidRange(v44, v48);
      return 0;
    }
  }

  if ((v10 > v12 || v12 > v13) && (v10 > v13 || v12))
  {
    goto LABEL_59;
  }

  if (!*(this + 33) || (*(this + 324) & 1) != 0)
  {
    goto LABEL_48;
  }

  if ((*(this + 324) & 4) != 0)
  {
    if (*(this + 16) != v10 || *(this + 17) != v13 || *(this + 18) != v12)
    {
      if ((*(*(this + 2) + 705) & 2) == 0)
      {
        goto LABEL_49;
      }

      if ((*(this + 324) & 4) != 0 && *(this + 129) == 1)
      {
        __assert_rtn("update_frame_interval_range", "CADisplay.mm", 6858, "!_registered || !_has_deferred_unregister_frame_interval_range");
      }

      goto LABEL_41;
    }

LABEL_48:
    *(this + 8) = v17;
    *(this + 18) = v12;
    goto LABEL_49;
  }

  if ((*(*(this + 2) + 705) & 2) != 0)
  {
LABEL_41:
    if (byte_1ED4E9846 == 1)
    {
      if (x_log_get_frame_rate(void)::once != -1)
      {
        dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
      }

      v27 = x_log_get_frame_rate(void)::log;
      if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(this + 16);
        v29 = *(this + 17);
        v30 = *(this + 18);
        v31[0] = 67110400;
        v31[1] = v28;
        v32 = 1024;
        v33 = v29;
        v34 = 1024;
        v35 = v30;
        v36 = 1024;
        v37 = v10;
        v38 = 1024;
        v39 = v13;
        v40 = 1024;
        v41 = v12;
        _os_log_impl(&dword_183AA6000, v27, OS_LOG_TYPE_DEFAULT, "CAFrameRateClient: update %u %u %u to %u %u %u", v31, 0x26u);
      }
    }

    if (*(this + 129) == 1)
    {
      CA::Display::DisplayLinkItem::run_deferred_unregister_frame_interval_range(this);
    }

    v19 = *(this + 2);
    if ((*(this + 324) & 4) != 0)
    {
      *&v46.var0 = v17;
      v46.var2 = v18;
      CA::Display::DisplayTimingsControl::update_frame_interval_range(v19 + 116, *(this + 64), v46);
    }

    else
    {
      *&v45.var0 = v17;
      v45.var2 = v18;
      CA::Display::DisplayTimingsControl::register_frame_interval_range(v19 + 116, v45);
    }

    *(this + 324) |= 4u;
    goto LABEL_48;
  }

LABEL_49:
  v20 = *(this + 14);
  v21 = CA::Display::DisplayTimingsControl::server_frame_interval((*(this + 2) + 464), 0);
  *&v43.var0 = v17;
  v43.var2 = v18;
  v22 = CAFrameIntervalRangeAdaptToFrameInterval(v43, v21, (*(*(this + 2) + 705) >> 1) & 1);
  *(this + 28) = v21;
  v23 = mach_absolute_time();
  if (!a3 || v20 == v22)
  {
    goto LABEL_56;
  }

  v24 = CA::Display::DisplayTimingsControl::server_timing_expiry((*(this + 2) + 464));
  if (v24 > v23)
  {
    v25 = v24;
    result = 0;
    *(this + 13) = v25;
    *(this + 19) = minimum;
    *(this + 20) = maximum;
    *(this + 21) = preferred;
    return result;
  }

  if ((*(this + 324) & 1) != 0 || v20 >= v22)
  {
LABEL_56:
    if (*(this + 13) - 1 < v23)
    {
      *(this + 13) = 0;
    }

    *(this + 14) = v22;
    *(this + 19) = minimum;
    *(this + 20) = maximum;
    *(this + 21) = preferred;
    return (v20 != v22) & ~*(this + 324);
  }

  else
  {
    result = 0;
    *(this + 13) = 1;
    *(this + 19) = minimum;
    *(this + 20) = maximum;
    *(this + 21) = preferred;
    *(this + 15) = *(this + 14);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t CA::work_around_59853502(CA *this)
{
  v3 = *MEMORY[0x1E69E9840];
  memset(v2, 0, sizeof(v2));
  return memset_s(v2, 0x100uLL, 0, 0x100uLL);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t _XApplyFenceTransaction(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 84)
  {
    v3 = -304;
    goto LABEL_12;
  }

  if (*(result + 38) != 529 || *(result + 55) != 1 || *(result + 40) != *(result + 72) || *(result + 76) != *(result + 56) >> 2)
  {
    v3 = -300;
    goto LABEL_12;
  }

  if (*(result + 84) || *(result + 88) <= 0x1Fu)
  {
    v3 = -309;
LABEL_12:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 36) = 16777473;
  *(a2 + 52) = 16777473;
  *(a2 + 64) = 0x10000000000000;
  *(a2 + 76) = 0x11000000000000;
  result = CASApplyFenceTransaction(*(result + 68), *(result + 28), *(result + 40), *(result + 44), *(result + 56) >> 2, *(result + 80), (a2 + 28), (a2 + 92), (a2 + 44), (a2 + 96), (a2 + 60), (a2 + 72), (a2 + 100), (a2 + 104));
  v4 = *(a2 + 96);
  *(a2 + 40) = 8 * *(a2 + 92);
  *(a2 + 56) = 4 * v4;
  *(a2 + 84) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 112;
  *(a2 + 24) = 4;
  return result;
}

uint64_t CASApplyFenceTransaction(unsigned int a1, mach_vm_address_t a2, unsigned int a3, vm_address_t a4, unsigned int a5, int a6, vm_address_t *a7, _DWORD *a8, vm_address_t *a9, unsigned int *a10, _DWORD *a11, _DWORD *a12, _BYTE *a13, void *a14)
{
  v81 = *MEMORY[0x1E69E9840];
  v76 = a4;
  v74 = a3;
  v16 = a5;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v17 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x102004064794061uLL);
  v18 = 0;
  v17[1] = 0;
  v17[2] = 0;
  *v17 = 0;
  *(v17 + 24) = 0;
  *(v17 + 25) = a6 != 0;
  v17[4] = 0;
  v80 = 1065353216;
  v19 = a1;
  v78 = 0u;
  v79 = 0u;
  if (a1 < a3)
  {
    v20 = 0;
    v18 = v74 - a1;
    do
    {
      if (v20 < v16)
      {
        v75 = *(v76 + 4 * v20);
        if (!std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(v78, *(&v78 + 1), v75))
        {
          v21 = CA::Render::Context::context_by_server_port(*(a2 + 4 * a1 + 4 * v20));
          if (v21)
          {
            address = &v75;
            std::__hash_table<std::__hash_value_type<unsigned int,CA::Render::Context *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Context *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Context *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Render::Context *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v78, v75)[3] = v21;
          }
        }
      }

      ++v20;
    }

    while (v18 != v20);
  }

  if (a1)
  {
    v22 = 0;
    do
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v23 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x10200403C432F0CuLL);
      v24 = v23;
      *v23 = *v17;
      if (v22 >= v74)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(a2 + 4 * v22);
      }

      v23[2] = v25;
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      *v17 = v23;
      if (v18 < v16)
      {
        while (1)
        {
          v26 = *(v76 + 4 * v18);
          if (!v26)
          {
            break;
          }

          v27 = std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(v78, *(&v78 + 1), v26);
          if (v27)
          {
            v28 = v27;
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v29 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x102004014030ADEuLL);
            *v29 = *(v24 + 3);
            v29[1] = 0;
            v29[2] = v28[3];
            *(v24 + 3) = v29;
          }

          if (v16 == ++v18)
          {
            v18 = v16;
            break;
          }
        }
      }

      ++v18;
      ++v22;
    }

    while (v22 != v19);
  }

  if (v18 < v16)
  {
    do
    {
      v30 = std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(v78, *(&v78 + 1), *(v76 + 4 * v18));
      if (v30)
      {
        v31 = v30;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v32 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x102004014030ADEuLL);
        *v32 = v17[1];
        v32[1] = 0;
        v32[2] = v31[3];
        v17[1] = v32;
      }

      ++v18;
    }

    while (v16 != v18);
  }

  v33 = CA::Render::Fence::applyTransaction(v17);
  for (i = *v17; *v17; i = *v17)
  {
    v35 = i[3];
    if (v35)
    {
      do
      {
        v36 = *v35;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v35);
        v35 = v36;
      }

      while (v36);
      i = *v17;
    }

    *v17 = *i;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, i);
  }

  for (j = v17[1]; j; j = v17[1])
  {
    v17[1] = *j;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, j);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v38 = 4 * a5;
  malloc_zone_free(malloc_zone, v17);
  for (k = v79; k; k = *k)
  {
    v40 = k[3];
    if (v40 && atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v40 + 16))(v40);
    }
  }

  m = MEMORY[0x1E69E9A60];
  if (!v33)
  {
    *a7 = 0;
    *a8 = 0;
    v76 = 0;
    *a9 = 0;
    *a10 = 0;
    *a11 = 0;
    *a12 = 0;
    *a13 = 0;
    *a14 = 0;
    goto LABEL_105;
  }

  v42 = *v33;
  if (*v33)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = v42 + 3;
      do
      {
        v45 = *v45;
        ++v43;
      }

      while (v45);
      ++v44;
      v42 = *v42;
    }

    while (v42);
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v46 = (v33 + 1);
  v47 = v43 - 1;
  v48 = v33 + 1;
  do
  {
    v48 = *v48;
    ++v47;
  }

  while (v48);
  address = 0;
  v49 = MEMORY[0x1E69E9AC8];
  if (v44)
  {
    vm_allocate(*MEMORY[0x1E69E9A60], &address, (*MEMORY[0x1E69E9AC8] + 8 * v44 - 1) & -*MEMORY[0x1E69E9AC8], 1);
    v50 = address;
    if (!address)
    {
      v44 = 0;
    }
  }

  else
  {
    v50 = 0;
  }

  *a7 = v50;
  *a8 = v44;
  v76 = 0;
  if (v47)
  {
    vm_allocate(*MEMORY[0x1E69E9A60], &v76, (*v49 + 4 * v47 - 1) & -*v49, 1);
    v51 = v76;
    if (v76)
    {
      v52 = v47;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  *a9 = v51;
  *a10 = v52;
  *a11 = 0;
  *a12 = 0;
  *a13 = 0;
  *a14 = 0;
  v53 = *v33;
  v70 = v52;
  if (*(v33 + 24) == 1)
  {
    if (!v53)
    {
      goto LABEL_95;
    }

    v54 = *v33;
    do
    {
      v55 = v54;
      v54 = *v54;
    }

    while (v54);
    if (v53 != v55)
    {
      *v55 = v53;
      v56 = *v53;
      *v33 = *v53;
      *v53 = 0;
      v53 = v56;
    }
  }

  if (v53)
  {
    v57 = 0;
    v58 = 0;
    v59 = v52;
    do
    {
      if (v58 < v44)
      {
        *(address + 8 * v58++) = v53[2];
      }

      while (1)
      {
        v60 = v53[3];
        if (!v60)
        {
          break;
        }

        if (v57 < v59)
        {
          *(v76 + 4 * v57++) = v60[3];
        }

        v53[3] = *v60;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v60);
      }

      if (v57 < v59)
      {
        *(v76 + 4 * v57++) = 0;
      }

      *v33 = *v53;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v53);
      v53 = *v33;
    }

    while (*v33);
    goto LABEL_96;
  }

LABEL_95:
  v57 = 0;
LABEL_96:
  v61 = *v46;
  v38 = 4 * a5;
  for (m = MEMORY[0x1E69E9A60]; *v46; v61 = *v46)
  {
    if (v57 < v70)
    {
      *(v76 + 4 * v57++) = v61[3];
    }

    *v46 = *v61;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v61);
  }

  *a11 = *(v33 + 4);
  *a12 = *(v33 + 5);
  *a13 = *(v33 + 24);
  *a14 = v33[4];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, v33);
LABEL_105:
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v78);
  result = mach_vm_deallocate(*m, a4, v38);
  if (a2 && a3)
  {
    v63 = a2;
    v64 = v74;
    do
    {
      v66 = *v63++;
      v65 = v66;
      if (v66)
      {
        mach_port_deallocate(*m, v65);
      }

      --v64;
    }

    while (v64);
    return mach_vm_deallocate(*m, a2, 4 * v74);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,CA::Render::Context *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Context *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Context *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Render::Context *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t CA::Layer::commit_if_needed(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2[28];
  if ((v6 & 0x80000000) != 0 || (v7 = a1 + 4 * v6, (v8 = *(v7 + 272)) == 0))
  {
    v9 = CA::Layer::thread_flags_(a1, a2);
    v8 = *v9;
  }

  else
  {
    v9 = (v7 + 272);
  }

  if ((*(a1 + 4) & 0x2000000) != 0)
  {
    v8 |= 0x200018u;
    *v9 = v8;
  }

  if ((*(a1 + 4) & 0x2200418) != 0)
  {
    atomic_fetch_and((a1 + 4), ~(v8 & 0x2200418));
    v8 = *v9;
  }

  if ((v8 & 0x18) == 0 && *(a1 + 264))
  {
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = v10 + 1;
    v12 = v10[2];
    if (v12 == 1)
    {
      if (!v10[3])
      {
LABEL_18:
        v13 = 0;
        do
        {
          v14 = *v11++;
          v13 |= CA::Layer::commit_if_needed(*(v14 + 16), a2, a3);
          --v12;
        }

        while (v12);
        goto LABEL_22;
      }

LABEL_17:
      v11 = *v11;
      goto LABEL_18;
    }

    if (v12)
    {
      goto LABEL_17;
    }
  }

  LOBYTE(v13) = 0;
LABEL_22:
  v15 = *(a1 + 32);
  if (v15)
  {
    LOBYTE(v13) = CA::Layer::commit_if_needed(*(v15 + 16), a2, a3) | v13;
  }

  if (!*(a1 + 264))
  {
    do
    {
      add = atomic_fetch_add(CA::Render::next_sequence(void)::sequence, 1u);
    }

    while (add == -1);
    *(a1 + 264) = add + 1;
  }

  (*(a3 + 16))(a3, a1, *v9);
  v17 = *v9;
  if ((*(a1 + 41) & 0x10) != 0)
  {
    v17 |= 0x80000u;
    *v9 = v17;
    LOBYTE(v13) = 1;
  }

  if ((v17 & 8) != 0)
  {
    *(a1 + 40) = 0;
    v17 = *v9;
  }

  v18 = v17 & 0xFDDFBBE7;
  if (v13)
  {
    v19 = 18432;
  }

  else
  {
    v19 = 0x4000;
  }

  *v9 = v18 | v19;
  return v13 & 1;
}

void CA::Render::String::finalize(CA::Render::String *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  (**this)(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void CA::Render::Array::finalize(CA::Render::Array *this)
{
  (**this)(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::Vector::~Vector(CA::Render::Vector *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAB30;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

{
  --dword_1ED4EAB30;
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

void CA::Display::DisplayLinkItem::dispatch_(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = object_getMethodImplementation();
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 24) *(a1 + 32)];

  objc_autoreleasePoolPop(v3);
}

double CA::Transaction::finish_frame(CA::Transaction *this)
{
  v1 = *(this + 15);
  v2 = *(v1 + 160);
  if (!v2)
  {
    __assert_rtn("finish_frame", "CATransactionInternal.mm", 2065, "s->_frame_depth");
  }

  v4 = v2 - 1;
  *(v1 + 160) = v2 - 1;
  if ((*(v1 + 204) & 0x20) == 0)
  {
    CAHostTimeWithTime(*(v1 + 176));
    CAHostTimeWithTime(*(v1 + 168));
    kdebug_trace();
  }

  if (!v4)
  {
    if (*(v1 + 160))
    {
      __assert_rtn("finish_frame", "CATransactionInternal.mm", 2075, "!s->_frame_depth");
    }

    *(v1 + 164) = 0;
    if (!**(this + 15))
    {
      result = 0.0;
      *(v1 + 184) = 0u;
      *(v1 + 168) = 0u;
    }
  }

  return result;
}

void CA::Render::Vector::finalize(CA::Render::Vector *this)
{
  (**this)(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::String::~String(CA::Render::String *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAB10;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

{
  --dword_1ED4EAB10;
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

void CA::Render::Filter::~Filter(CA::Render::Filter *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1F5438;
  v3 = *(this + 5);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 4);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  --dword_1ED4EAA7C;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

{
  CA::Render::Filter::~Filter(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void CA::Render::KeyValue::~KeyValue(CA::Render::KeyValue *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF203140;
  v3 = *(this + 3);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAAAC;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF203140;
  v3 = *(this + 3);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAAAC;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

CA::Render::CompressedImage *CA::Render::CompressedImage::CompressedImage(CA::Render::CompressedImage *this, int a2, int a3, int a4, const void *a5, uint64_t a6, unint64_t *a7, unint64_t *a8, unint64_t *a9, int a10, void (*a11)(const void *, void *), void *a12)
{
  v18 = CA::Render::Texture::Texture(this, a2, a3);
  v19 = *(v18 + 3) & 0xFFFFFF00;
  ++dword_1ED4EAA5C;
  *v18 = &unk_1EF1FF910;
  *(v18 + 14) = a5;
  *(v18 + 15) = a6;
  *(v18 + 16) = a11;
  *(v18 + 17) = a12;
  *(v18 + 18) = 0;
  v20 = (v18 + 144);
  *(v18 + 152) = 0u;
  *(v18 + 42) = a10;
  *(v18 + 43) = 0;
  *(v18 + 44) = a4;
  *(v18 + 180) = 0x200000000;
  *(v18 + 47) = 0;
  *(v18 + 192) |= 3u;
  *(v18 + 3) = v19 | 0x800009;
  if (a3 <= 4096 && a2 <= 4096 && a10 == 1)
  {
    v21 = a9;
    if (*a9 <= 0x8000)
    {
      *(this + 3) = v19 | 0x840009;
    }

    if ((a4 - 186) > 0x20)
    {
      v22 = 0;
    }

    else
    {
      v22 = dword_183E2FEE8[a4 - 186];
    }

    *(this + 43) = v22;
    v24 = 1;
  }

  else
  {
    if ((a4 - 186) > 0x20)
    {
      v23 = 0;
    }

    else
    {
      v23 = dword_183E2FEE8[a4 - 186];
    }

    v21 = a9;
    *(this + 43) = v23;
    v24 = a10;
    if (a10 < 0)
    {
      v25 = 8 * a10;
      *v20 = 0;
      *(v18 + 19) = 0;
      memcpy(0, a8, v25);
      v28 = 0;
      goto LABEL_21;
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v25 = 8 * v24;
  v26 = malloc_type_zone_malloc(malloc_zone, v25, 0x100004000313F17uLL);
  *v20 = v26;
  memcpy(v26, a7, v25);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v27 = malloc_type_zone_malloc(malloc_zone, v25, 0x100004000313F17uLL);
  *(this + 19) = v27;
  memcpy(v27, a8, v25);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v28 = malloc_type_zone_malloc(malloc_zone, v25, 0x100004000313F17uLL);
LABEL_21:
  *(this + 20) = v28;
  memcpy(v28, v21, v25);
  *(this + 45) = 1;
  if (a11 == CA::Render::release_deallocate && !a12)
  {
    *(this + 17) = this;
  }

  return this;
}

void sub_183B64CD4(_Unwind_Exception *a1)
{
  --*(v2 + 2652);
  CA::Render::Texture::~Texture(v1);
  _Unwind_Resume(a1);
}

void sub_183B64E5C(_Unwind_Exception *a1)
{
  --dword_1ED4EAA5C;
  CA::Render::Texture::~Texture(v1);
  _Unwind_Resume(a1);
}

CA::Display::DisplayLinkItem *CA::Display::DisplayLinkItem::DisplayLinkItem(CA::Display::DisplayLinkItem *this, id *a2, const void *a3, objc_selector *a4)
{
  *this = &unk_1EF1F3EB8;
  *(this + 2) = 0;
  v8 = a2[10];
  *(this + 2) = a2;
  if (a3)
  {
    v9 = CFRetain(a3);
  }

  else
  {
    v9 = 0;
  }

  *(this + 248) = 0u;
  *(this + 3) = v9;
  *(this + 4) = a4;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 39) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 114) = 0u;
  *(this + 324) &= 0xE8u;
  *(this + 80) = 0;
  pthread_mutex_init((this + 136), 0);
  pthread_cond_init((this + 200), 0);
  *(this + 324) &= ~8u;
  v10 = CADeviceDisableMinimumFrameDuration();
  v11 = 60.0;
  if (v10)
  {
    v11 = 0.0;
  }

  v12 = v11;
  v13 = v11;
  CA::Display::DisplayLinkItem::set_preferred_fps_range(this, *&v11, 1, 0);
  return this;
}

void sub_183B64FA0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 264);
  if (v3)
  {
    CA::Display::DisplayLink::unref(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADeviceDisableMinimumFrameDuration()
{
  if (dyld_program_sdk_at_least())
  {
    v0 = 1;
  }

  else
  {
    if (CADeviceDisableMinimumFrameDuration::once != -1)
    {
      dispatch_once(&CADeviceDisableMinimumFrameDuration::once, &__block_literal_global_159_12763);
    }

    v0 = CADeviceDisableMinimumFrameDuration::disabled;
  }

  return v0 & 1;
}

CAProcessMonitor *CA::WindowServer::IOMFBDisplay::process_monitor(CA::WindowServer::IOMFBDisplay *this)
{
  v3[5] = *MEMORY[0x1E69E9840];
  result = *(this + 3536);
  if (!result)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = ___ZN2CA12WindowServer12IOMFBDisplay15process_monitorEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_517;
    v3[4] = this;
    result = [[CAProcessMonitor alloc] initWithCallback:v3];
    *(this + 3536) = result;
  }

  return result;
}

void CA::Display::DisplayLinkItem::schedule(CA::Display::DisplayLinkItem *this, __CFRunLoop *a2, const __CFString *a3)
{
  v6 = *(this + 33);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7 != a2)
    {
      [MEMORY[0x1E695DF30] raise:@"CADisplayLink" format:{@"%@: already added to runloop %p, cannot also be added to %p", *(this + 32), v7, a2}];
    }
  }

  pthread_mutex_lock((this + 136));
  v8 = *(this + 34);
  if (v8)
  {
    while (!CFEqual(*v8, a3))
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    pthread_mutex_unlock((this + 136));
  }

  else
  {
LABEL_7:
    Copy = CFStringCreateCopy(0, a3);
    *(this + 34) = x_list_prepend(*(this + 34), Copy);
    pthread_mutex_unlock((this + 136));

    CA::Display::DisplayLinkItem::update_link(this, a2);
  }
}

uint64_t CA::Render::get_list_property<CA::Render::Filter>(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, double *a5)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 < 2)
  {
    return 0;
  }

  named_object = CA::Render::TypedArray<CA::Render::Filter>::find_named_object(a1, *a3);
  if ((named_object & 0x80000000) != 0)
  {
    return 0;
  }

  v11 = *(a1 + 8 * named_object + 24);
  if (!v11)
  {
    return 0;
  }

  return CA::Render::Filter::get_property(v11, a2 - 1, (a3 + 4), a4, a5);
}

BOOL CA::Render::String::equal(CA::Render::String *this, unsigned int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  String = CAAtomGetString(a2);
  CString = CA_CFStringGetCString(String, v6, 1024);
  return strcmp(this + 28, CString) == 0;
}

unint64_t CA::Render::TypedArray<CA::Render::Filter>::find_named_object(uint64_t a1, unsigned int a2)
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
      v7 = *(*(v6 + 8 * v5) + 32);
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

uint64_t CA::Render::Filter::get_property(CA::Render::Filter *this, uint64_t a2, const unsigned int *a3, unint64_t a4, double *a5)
{
  if (a2 != 1)
  {
    return 0;
  }

  if (*a3 == 234)
  {
    v6 = 1.0;
    if ((*(this + 3) & 0x100) == 0)
    {
      v6 = 0.0;
    }

    *a5 = v6;
    return 1;
  }

  else
  {
    v8 = *(this + 5);
    if (v8 && (named_object = CA::Render::KeyValueArray::find_named_object_(*(this + 5), *a3), (named_object & 0x80000000) == 0) && (v11 = *(*(v8 + 8 * named_object + 24) + 24)) != 0 && *(v11 + 12) == 62 && (v12 = *(v11 + 16), v12 <= a4))
    {
      memcpy(a5, (v11 + 24), 8 * v12);
      return *(v11 + 16);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t CA::Render::set_list_property<CA::Render::Filter>(uint64_t a1, unint64_t a2, uint64_t a3, int a4, CA::Render::Vector *a5, double *a6)
{
  v6 = a1;
  if (a1)
  {
    if (a2 >= 2)
    {
      named_object = CA::Render::TypedArray<CA::Render::Filter>::find_named_object(a1, *a3);
      if ((named_object & 0x80000000) == 0)
      {
        v13 = named_object;
        v14 = *(v6 + 24 + 8 * named_object);
        v15 = CA::Render::set_object_property<CA::Render::Filter>(v14, a2 - 1, (a3 + 4), a4, a5, a6);
        if (v15 && v15 != v14)
        {
          v17 = v15;
          v18 = CA::Render::Array::new_array(*(v6 + 16), (v6 + 24), 1, 0);
          v6 = v18;
          if (v18)
          {
            v19 = *&v18[8 * v13 + 24];
            if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v19 + 16))(v19);
            }

            *(v6 + 24 + 8 * v13) = v17;
          }
        }
      }
    }
  }

  return v6;
}

CA::Render::Filter *CA::Render::set_object_property<CA::Render::Filter>(uint64_t a1, uint64_t a2, const double *a3, int a4, CA::Render::Vector *this, double *a6)
{
  if (!a1)
  {
    return 0;
  }

  v12 = *(a1 + 12);
  if ((v12 & 0x8000) != 0)
  {
    v16 = a1;
  }

  else
  {
    if (*(a1 + 16))
    {
      v13 = 1;
    }

    else
    {
      v13 = (*(a1 + 12) & 0x200) == 0;
    }

    if (!v13)
    {
      *(a1 + 16) = atomic_fetch_add(CA::Render::next_cache_id(void)::cache_id, 1u) + 1;
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = CA::Render::Array::new_array(v14[4], v14 + 6, 1, v14[3] >> 8);
    }

    else
    {
      v15 = 0;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v17 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
    v16 = v17;
    if (v17)
    {
      CA::Render::Filter::Filter(v17, *(a1 + 24), *(a1 + 32), v15);
    }

    *(v16 + 3) |= *(a1 + 12) & 0xFFFFFF00;
    *(v16 + 2) = *(a1 + 16);
    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15);
    }

    v12 = *(v16 + 3) | 0x8000;
    *(v16 + 3) = v12;
  }

  if (a2 == 1)
  {
    if (this == 1 && *a3 == 234)
    {
      if (*a6 <= 0.5)
      {
        v18 = v12 & 0xFFFFFEFF;
      }

      else
      {
        v18 = v12 | 0x100;
      }

      *(v16 + 3) = v18;
    }

    else if (*(v16 + 5))
    {
      v19 = CA::Render::Vector::new_vector(this, a6, a3);
      v20 = v19;
      v21 = *(v16 + 5);
      v22 = *a3;
      if (a4)
      {
        if (v19)
        {
          named_object = CA::Render::KeyValueArray::find_named_object_(*(v16 + 5), v22);
          if ((named_object & 0x80000000) == 0)
          {
            v25 = *(*(v21 + named_object + 3) + 24);
            if (v25)
            {
              if (*(v25 + 12) == 62)
              {
                LODWORD(v24) = *(v25 + 16);
                v26 = fmin(this, v24);
                if (v26)
                {
                  v27 = (v25 + 24);
                  v28 = (v20 + 6);
                  do
                  {
                    v29 = *v27++;
                    *v28 = *v28 + v29;
                    ++v28;
                    --v26;
                  }

                  while (v26);
                }
              }
            }
          }
        }
      }

      CA::Render::KeyValueArray::set_key(v21, v22, v20);
      if (CA::Render::Filter::evaluate_identity(v16))
      {
        v30 = 0x40000;
      }

      else
      {
        v30 = 0;
      }

      *(v16 + 3) = *(v16 + 3) & 0xFFFBFFFF | v30;
      if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v20 + 16))(v20);
      }
    }
  }

  return v16;
}

uint64_t CA::Render::KeyValueArray::set_key(CA::Render::KeyValueArray *this, int a2, atomic_uint *a3)
{
  result = CA::Render::KeyValueArray::find_named_object_(this, a2);
  if ((result & 0x80000000) == 0)
  {
    v7 = result;
    v8 = this + 24;
    v9 = *&v8[8 * result];
    if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v9 + 16))(v9);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
    if (result)
    {
      *(result + 8) = 1;
      *(result + 12) = 29;
      ++dword_1ED4EAAAC;
      *result = &unk_1EF203140;
      *(result + 16) = a2;
      if (a3)
      {
        v10 = a3 + 2;
        if (!atomic_fetch_add(a3 + 2, 1u))
        {
          a3 = 0;
          atomic_fetch_add(v10, 0xFFFFFFFF);
        }
      }

      *(result + 24) = a3;
    }

    *&v8[8 * v7] = result;
  }

  return result;
}

void *x_new<CA::Mat4<double>>()
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v1 = malloc_zone;

  return malloc_type_zone_malloc(v1, 0x80uLL, 0x1000040AE2C30F4uLL);
}

void CA::Render::Update::invalidate_backdrops(uint64_t a1, CA::Shape *this, uint64_t *a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (this)
  {
    if (this == 1)
    {
      return;
    }
  }

  else if (*(this + 1) == 6)
  {
    return;
  }

  v7 = (a1 + 544);
  if (a3)
  {
    v7 = a3;
  }

  v8 = *v7;
  if (*v7)
  {
    while (1)
    {
      v9 = *(v8 + 104);
      if ((v9 & 0x20000000) != 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = 1;
      }

      if ((v9 & 0x8000000) != 0 || !v10)
      {
        goto LABEL_39;
      }

      v11 = *(*(v8 + 8) + 256);
      v12 = CA::Shape::intersect(this, (v11 + 80));
      v15 = v12;
      if ((v12 & 1) == 0)
      {
        break;
      }

      if (v12 != 1)
      {
        goto LABEL_17;
      }

LABEL_38:
      CA::Shape::unref(v15);
LABEL_39:
      v8 = *v8;
      if (!v8)
      {
        return;
      }
    }

    if (*(v12 + 4) == 6)
    {
      goto LABEL_38;
    }

LABEL_17:
    if (*(v11 + 116) != *(a1 + 272))
    {
      *(v11 + 120) = 1;
      v22 = *(v11 + 128);
      v23 = v22 + *(v8 + 112);
      v24 = *(a1 + 88);
      if (v23 >= v24)
      {
        v25 = *(a1 + 88);
      }

      else
      {
        v25 = v22 + *(v8 + 112);
      }

      *(a1 + 104) |= 0x400000000000uLL;
      if (v24 >= v25)
      {
        if (v25 != 0.0 && v23 < v24)
        {
          v27 = 0x400000000000;
        }

        else
        {
          v27 = *(a1 + 96) | 0x400000000000;
        }

        *(a1 + 96) = v27;
        *(a1 + 88) = v25;
      }

      goto LABEL_38;
    }

    if ((*(v8 + 107) & 0x10) != 0)
    {
      v28 = 0;
      v29 = 0;
      CA::Shape::get_bounds(v12, &v28);
      CA::BoundsImpl::Union((v8 + 24), v28, v29);
    }

    v16 = *(v8 + 16);
    v18 = *(v16 + 16);
    v17 = (v16 + 16);
    if (v18)
    {
      CA::shape_union(v17, v15, v14);
      v19 = *v17;
      if ((*v17 & 1) != 0 || *(v19 + 1) < 65)
      {
        goto LABEL_35;
      }

      v28 = 0;
      v29 = 0;
      CA::Shape::get_bounds(v19, &v28);
      CA::Shape::unref(*v17);
      v21 = CA::Shape::new_shape(&v28, v20);
    }

    else
    {
      v21 = CA::Shape::ref(v15, v13);
    }

    *v17 = v21;
LABEL_35:
    goto LABEL_38;
  }
}

uint64_t CA::Render::anonymous namespace::invalidate_rasterized_backdrops(uint64_t result, uint64_t a2, int a3)
{
  if ((*(result + 107) & 0x10) != 0)
  {
    if (*(a2 + 112) == a3)
    {
      v3 = *(result + 16);
      v4 = *(v3 + 40);
      if (*(a2 + 108) == v4)
      {
        return result;
      }
    }

    else
    {
      v3 = *(result + 16);
      v4 = *(v3 + 40);
    }

    *(a2 + 108) = v4;
    *(a2 + 112) = a3;
    v5 = *(result + 8);
    if (v5)
    {
      v6 = *(v3 + 32);
      do
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          *(v7 + 76) = a3;
        }

        if (v5 == v6)
        {
          break;
        }

        v5 = *(v5 + 88);
      }

      while (v5);
    }
  }

  return result;
}

void CA::Render::LayerNode::MapRects::unapply(uint64_t a1, float64x2_t *this, double *a3)
{
  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CA::Mat4Impl::mat4_unapply_inverse_to_rect(this, (*(a1 + 16) + v5), a3);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 8));
  }
}

float64x2_t CA::Render::KeyValueArray::get_rect_key(float64x2_t *this, uint64_t a2, const Rect *a3, float64x2_t a4, float64x2_t a5)
{
  named_object = CA::Render::KeyValueArray::find_named_object_(a2, a3);
  if ((named_object & 0x80000000) == 0 && (v8 = *(*(a2 + 8 * named_object + 24) + 24)) != 0 && *(v8 + 12) == 62 && *(v8 + 16) >= 4u)
  {
    result = *(v8 + 24);
    v10 = vsubq_f64(*(v8 + 40), result);
    *this = result;
    this[1] = v10;
  }

  else
  {
    result = a5;
    *this = a4;
    this[1] = a5;
  }

  return result;
}

uint64_t CA::OGL::MetalContext::add_memoryless_textures(uint64_t result, uint64_t a2)
{
  if ((*(result + 3936) & 8) != 0)
  {
    v3 = result;
    v5 = a2 + 168;
    v4 = *(a2 + 168);
    [v4 pixelFormat];
    v6 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:objc_msgSend(v4 height:"width") mipmapped:objc_msgSend(v4, "height"), 0];
    [v6 setUsage:5];
    if ((BYTE2(xmmword_1ED4E97EC) & 1) == 0)
    {
      [v6 setStorageMode:3];
    }

    result = [v6 setProtectionOptions:*(v3 + 3640)];
    v7 = *(a2 + 308);
    if (((v7 << 28) >> 28) <= 2)
    {
      v8 = v7 << 60 >> 60;
      v9 = [*(v3 + 3504) newTextureWithDescriptor:v6];
      *(v5 + 8 * v8) = v9;
      result = [v9 setLabel:@"com.apple.coreanimation.memoryless-texture"];
      if (*(v5 + 8 * v8))
      {
        *(a2 + 8 * v8 + 192) = 115;
        *(a2 + 308) = v8 + (*(a2 + 308) & 0xFFF0) + 1;
        *(a2 + 286) |= 1 << v8;
      }
    }

    *(a2 + 288) = *(a2 + 286);
  }

  return result;
}

uint64_t CA::OGL::MetalContext::add_path_buffer_texture(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 92);
  if ((v2 & 0x2000) != 0)
  {
    v4 = a2 + 192;
    if (*(a2 + 192) == 125)
    {
      *(a2 + 92) = v2 & 0xFFFFDFFF;
    }

    else
    {
      v5 = result;
      v6 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:*(a2 + 40) height:*(a2 + 44) mipmapped:0];
      [v6 setStorageMode:3];
      [v6 setUsage:5];
      [v6 setProtectionOptions:*(v5 + 3640)];
      v7 = [*(v5 + 3504) newTextureWithDescriptor:v6];
      *(a2 + 8 * ((*(a2 + 308) << 60) >> 60) + 168) = v7;
      result = [v7 setLabel:@"com.apple.coreanimation.path-buffer"];
      v8 = *(a2 + 308);
      *(v4 + 8 * (v8 << 60 >> 60)) = 55;
      *(a2 + 308) = v8 & 0xFFF0 | (v8 + 1) & 0xF;
    }
  }

  return result;
}

void ___ZN2CA3OGL12MetalContext26prepare_new_command_bufferEv_block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  add = atomic_fetch_add((v3 + 4752), 1uLL);
  v5 = [a2 protectionOptions];
  if ([a2 error])
  {
    os_unfair_lock_lock((v3 + 3016));
    v6 = *(v3 + 3024);
    v7 = *(v3 + 3032);
    while (v6 != v7)
    {
      CA::CASharedEvent::force_complete(*(v6 + 8), *(v6 + 16), 1, 1);
      v6 += 24;
    }

    std::vector<CA::OGL::MetalContext::SharedEvent::Encoded>::clear[abi:nn200100]((v3 + 3024));
    os_unfair_lock_unlock((v3 + 3016));
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v8 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218754;
      v18 = a2;
      v19 = 2048;
      v20 = v5;
      v21 = 2080;
      v22 = [objc_msgSend(a2 "label")];
      v23 = 2080;
      v24 = [objc_msgSend(objc_msgSend(a2 "error")];
      _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "MTLCommandBuffer %p, protection 0x%llx, label %s, error = %s\n", &v17, 0x2Au);
    }
  }

  os_unfair_lock_lock((v3 + 3016));
  v9 = *(v3 + 3024);
  v10 = *(v3 + 3032);
  if (v9 != v10)
  {
    v11 = add + 1;
    while (*v9 > v11)
    {
      v9 += 3;
      if (v9 == v10)
      {
        goto LABEL_29;
      }
    }

    if (v9 != v10)
    {
      v12 = v9 + 3;
      if (v9 + 3 != v10)
      {
        do
        {
          v13 = *v12;
          if (*v12 > v11)
          {
            v14 = v12[1];
            v12[1] = 0;
            v15 = v9[1];
            *v9 = v13;
            v9[1] = v14;
            if (v15)
            {
              CA::CASharedEvent::unref(v15);
            }

            v9[2] = v12[2];
            v9 += 3;
          }

          v12 += 3;
        }

        while (v12 != v10);
        v10 = *(v3 + 3032);
      }
    }

    if (v9 != v10)
    {
      while (v10 != v9)
      {
        v16 = *(v10 - 2);
        if (v16)
        {
          CA::CASharedEvent::unref(v16);
        }

        v10 -= 3;
      }

      *(v3 + 3032) = v9;
    }
  }

LABEL_29:
  os_unfair_lock_unlock((v3 + 3016));
}

uint64_t ___ZN2CA3OGL12MetalContext5flushEb_block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [a2 GPUStartTime];
  v7 = CAHostTimeWithTime(v6) + v5;
  v8 = *(a1 + 48);
  [a2 GPUEndTime];
  v10 = CAHostTimeWithTime(v9) + v8;
  if (byte_1ED4E985F == 1)
  {
    v36 = *(a1 + 32);
    if (os_signpost_enabled(v36))
    {
      v37 = *(v4 + 8);
      v38 = *(a1 + 72);
      v39 = *(a1 + 76);
      v40 = *(a1 + 56);
      v46 = 67241472;
      v47 = v37;
      v48 = 1026;
      v49 = v38;
      v50 = 1026;
      *v51 = v39;
      *&v51[4] = 2050;
      *&v51[6] = v40;
      *&v51[14] = 2050;
      *&v51[16] = v7;
      *&v51[24] = 2050;
      *&v51[26] = v10;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Executing", "context=%{public,name=context}u update=0x%{public,name=update}x cmdbuf=%{public,name=cmdbuf}u thread=%{public,name=thread}llx begin=%{public,signpost.description:begin_time}llu end=%{public,signpost.description:end_time}llu", &v46, 0x32u);
    }

    v41 = *(a1 + 64);
    if (v41)
    {
      v42 = *(a1 + 32);
      if (os_signpost_enabled(v42))
      {
        v43 = *(v4 + 8);
        v44 = *(a1 + 72);
        v45 = *(a1 + 56);
        v46 = 67241216;
        v47 = v43;
        v48 = 1026;
        v49 = v44;
        v50 = 2050;
        *v51 = v45;
        *&v51[8] = 2050;
        *&v51[10] = v41;
        *&v51[18] = 2050;
        *&v51[20] = v10;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RenderToCompletion", "context=%{public,name=context}u update=0x%{public,name=update}x thread=%{public,name=thread}llx begin=%{public,signpost.description:begin_time}llu end=%{public,signpost.description:end_time}llu", &v46, 0x2Cu);
      }
    }
  }

  pthread_mutex_lock((v4 + 4768));
  v11 = *(a1 + 72);
  v12 = *(v4 + 5056);
  v13 = *(v4 + 5064);
  if (v12 != v13)
  {
    while (*v12 != v11)
    {
      if (++v12 == v13)
      {
        v12 = *(v4 + 5064);
        break;
      }
    }
  }

  v14 = (v12 != v13) | (v11 << 32);
  v15 = *(v4 + 4832);
  v16 = *(v4 + 4840);
  v17 = v15;
  if (v15 != v16)
  {
    v17 = *(v4 + 4832);
    do
    {
      if (*(v17 + 2) == v14)
      {
        break;
      }

      v17 += 24;
    }

    while (v17 != v16);
  }

  if (v17 == v16)
  {
    v20 = (v16 - v15);
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3);
    v22 = *(v4 + 4856);
    if (v21 == v22)
    {
      X::small_vector_base<CA::OGL::MetalContext::ExecutionInterval>::erase((v4 + 4832), *(v4 + 4832));
      v16 = *(v4 + 4840);
      v15 = *(v4 + 4832);
      v22 = *(v4 + 4856);
      v20 = (v16 - v15);
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3);
    }

    v23 = v21 + 1;
    if (v22 < v23)
    {
      v24 = *(v4 + 4848);
      v25 = (v22 + 1) | ((v22 + 1) >> 1) | (((v22 + 1) | ((v22 + 1) >> 1)) >> 2);
      v26 = v25 | (v25 >> 4) | ((v25 | (v25 >> 4)) >> 8);
      v27 = v26 | (v26 >> 16) | ((v26 | (v26 >> 16)) >> 32);
      if (v27 + 1 > v23)
      {
        v28 = v27 + 1;
      }

      else
      {
        v28 = v23;
      }

      v29 = malloc_type_malloc(24 * v28, 0x1000040504FFAC1uLL);
      v30 = v29;
      v31 = *(v4 + 4832);
      v32 = *(v4 + 4840);
      if (v31 != v32)
      {
        v33 = v29;
        do
        {
          v34 = *v31;
          v33[2] = *(v31 + 2);
          *v33 = v34;
          v33 += 3;
          v31 = (v31 + 24);
        }

        while (v31 != v32);
      }

      if (v15 != v24)
      {
        free(*(v4 + 4832));
      }

      *(v4 + 4832) = v30;
      v16 = &v20[v30];
      *(v4 + 4840) = &v20[v30];
      *(v4 + 4856) = v28;
    }

    *v16 = v7;
    *(v16 + 1) = v10;
    *(v16 + 2) = v14;
    *(v4 + 4840) = v16 + 24;
  }

  else
  {
    v18 = *v17;
    v19 = *(v17 + 1);
    if (v7 < *v17)
    {
      v18 = v7;
    }

    if (v19 <= v10)
    {
      v19 = v10;
    }

    *v17 = v18;
    *(v17 + 1) = v19;
  }

  return pthread_mutex_unlock((v4 + 4768));
}

BOOL CA::WindowServer::IOMFBDisplay::detached_edr_layers_valid_p(CA::WindowServer::IOMFBDisplay *this, const CA::Render::Update *a2)
{
  v2 = *(this + 3287);
  if (!v2)
  {
    return 1;
  }

  if (!*(v2 + 16) || ((*(*this + 1552))(this, a2) & 1) != 0)
  {
    return 1;
  }

  v5 = (*(**(*(this + 3287) + 16) + 200))(*(*(this + 3287) + 16));
  v6 = 1.0 / CA::WindowServer::Display::edr_headroom(this);
  if (v5 == 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v5;
  }

  if (v6 == 0.0)
  {
    v6 = 1.0;
  }

  return (vabds_f32(v7, v6) / v7) <= 0.05;
}

double std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(CAFrameIntervalRequest const&,CAFrameIntervalRequest const&),CAFrameIntervalRequest*,false>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  v201 = *MEMORY[0x1E69E9840];
  while (2)
  {
    v10 = (a2 - 24);
    v192 = (a2 - 72);
    v193 = a2 - 3;
    v11 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v11;
          v12 = a2 - v11;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
          if (v13 <= 2)
          {
            if (v13 < 2)
            {
              return a6.n128_f64[0];
            }

            if (v13 == 2)
            {
              if (!(*a3)((a2 - 24), v11))
              {
                return a6.n128_f64[0];
              }

LABEL_106:
              v123 = *v11;
              v200 = v11[1].n128_u64[0];
              v199 = v123;
              v124 = *v10;
              v11[1].n128_u64[0] = a2[-1].n128_u64[1];
              *v11 = v124;
              a6 = v199;
              v125 = v200;
              goto LABEL_107;
            }

            goto LABEL_10;
          }

          switch(v13)
          {
            case 3:
              v121 = (*a3)((v11 + 24), v11);
              v122 = (*a3)((a2 - 24), (v11 + 24));
              if (v121)
              {
                if (v122)
                {
                  goto LABEL_106;
                }

                v182 = *v11;
                v200 = v11[1].n128_u64[0];
                v199 = v182;
                *v11 = *(v11 + 24);
                v11[1].n128_u64[0] = v11[2].n128_u64[1];
                *(v11 + 24) = v199;
                v11[2].n128_u64[1] = v200;
                if (!(*a3)((a2 - 24), (v11 + 24)))
                {
                  return a6.n128_f64[0];
                }

                a6 = *(v11 + 24);
                v199 = a6;
                v125 = v11[2].n128_u64[1];
                v200 = v125;
                v183 = a2[-1].n128_u64[1];
                *(v11 + 24) = *v10;
                v11[2].n128_u64[1] = v183;
LABEL_107:
                a2[-1].n128_u64[1] = v125;
                *v10 = a6;
                return a6.n128_f64[0];
              }

              if (!v122)
              {
                return a6.n128_f64[0];
              }

              v199 = *(v11 + 24);
              v171 = v199;
              v200 = v11[2].n128_u64[1];
              v172 = v200;
              v173 = a2[-1].n128_u64[1];
              *(v11 + 24) = *v10;
              v11[2].n128_u64[1] = v173;
              a2[-1].n128_u64[1] = v172;
              *v10 = v171;
LABEL_181:
              if ((*a3)((v11 + 24), v11))
              {
                a6 = *v11;
                v200 = v11[1].n128_u64[0];
                v199 = a6;
                *v11 = *(v11 + 24);
                v11[1].n128_u64[0] = v11[2].n128_u64[1];
                a6.n128_u64[0] = v199.n128_u64[0];
                *(v11 + 24) = v199;
                v11[2].n128_u64[1] = v200;
              }

              return a6.n128_f64[0];
            case 4:
              v126 = (*a3)((v11 + 24), v11);
              v127 = (*a3)(v11 + 3, (v11 + 24));
              if ((v126 & 1) == 0)
              {
                if (v127)
                {
                  v174 = v11[2].n128_i64[1];
                  v175 = *(v11 + 24);
                  *(v11 + 24) = v11[3];
                  v11[2].n128_u64[1] = v11[4].n128_u64[0];
                  v11[3] = v175;
                  v11[4].n128_u64[0] = v174;
                  if ((*a3)((v11 + 24), v11))
                  {
                    v176 = *v11;
                    v200 = v11[1].n128_u64[0];
                    v199 = v176;
                    *v11 = *(v11 + 24);
                    v11[1].n128_u64[0] = v11[2].n128_u64[1];
                    *(v11 + 24) = v199;
                    v11[2].n128_u64[1] = v200;
                  }
                }

                goto LABEL_178;
              }

              if (v127)
              {
                v128 = *v11;
                v200 = v11[1].n128_u64[0];
                v199 = v128;
                *v11 = v11[3];
                v11[1].n128_u64[0] = v11[4].n128_u64[0];
                v11[3] = v199;
                v129 = v200;
              }

              else
              {
                v184 = *v11;
                v200 = v11[1].n128_u64[0];
                v199 = v184;
                *v11 = *(v11 + 24);
                v11[1].n128_u64[0] = v11[2].n128_u64[1];
                *(v11 + 24) = v199;
                v11[2].n128_u64[1] = v200;
                if (!(*a3)(v11 + 3, (v11 + 24)))
                {
                  goto LABEL_178;
                }

                v129 = v11[2].n128_u64[1];
                v185 = *(v11 + 24);
                *(v11 + 24) = v11[3];
                v11[2].n128_u64[1] = v11[4].n128_u64[0];
                v11[3] = v185;
              }

              v11[4].n128_u64[0] = v129;
LABEL_178:
              if (!(*a3)((a2 - 24), v11 + 3))
              {
                return a6.n128_f64[0];
              }

              v199 = v11[3];
              v186 = v199;
              v200 = v11[4].n128_u64[0];
              v187 = v200;
              v188 = a2[-1].n128_u64[1];
              v11[3] = *v10;
              v11[4].n128_u64[0] = v188;
              a2[-1].n128_u64[1] = v187;
              *v10 = v186;
              if (!(*a3)(v11 + 3, (v11 + 24)))
              {
                return a6.n128_f64[0];
              }

              v189 = v11[2].n128_i64[1];
              v190 = *(v11 + 24);
              *(v11 + 24) = v11[3];
              v11[2].n128_u64[1] = v11[4].n128_u64[0];
              v11[3] = v190;
              v11[4].n128_u64[0] = v189;
              goto LABEL_181;
            case 5:

              a6.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(CAFrameIntervalRequest const&,CAFrameIntervalRequest const&),CAFrameIntervalRequest*,0>(v11, (v11 + 24), v11 + 3, (v11 + 72), (a2 - 24), a3).n128_u64[0];
              return a6.n128_f64[0];
          }

LABEL_10:
          if (v12 <= 575)
          {
            v130 = (v11 + 24);
            v132 = v11 == a2 || v130 == a2;
            if (a5)
            {
              if (!v132)
              {
                v133 = 0;
                v134 = v11;
                do
                {
                  v135 = v134;
                  v134 = v130;
                  if ((*a3)(v130, v135))
                  {
                    v136 = *v134;
                    v200 = v134[1].n128_u64[0];
                    v199 = v136;
                    v137 = v133;
                    while (1)
                    {
                      v138 = v11 + v137;
                      *(v138 + 24) = *(v11 + v137);
                      *(v138 + 5) = *(v11[1].n128_u64 + v137);
                      if (!v137)
                      {
                        break;
                      }

                      v137 -= 24;
                      if (((*a3)(&v199, (v11 + v137)) & 1) == 0)
                      {
                        v139 = (v11 + v137 + 24);
                        goto LABEL_126;
                      }
                    }

                    v139 = v11;
LABEL_126:
                    a6 = v199;
                    v139[1].n128_u64[0] = v200;
                    *v139 = a6;
                  }

                  v130 = (v134 + 24);
                  v133 += 24;
                }

                while (&v134[1].n128_i8[8] != a2);
              }
            }

            else if (!v132)
            {
              do
              {
                v177 = a1;
                a1 = v130;
                if ((*a3)(v130, v177))
                {
                  v178 = *a1;
                  v200 = *(a1 + 16);
                  v199 = v178;
                  v179 = a1;
                  do
                  {
                    v180 = (v179 - 24);
                    *v179 = *(v179 - 24);
                    *(v179 + 16) = *(v179 - 8);
                    v181 = (*a3)(&v199, (v179 - 48));
                    v179 = v180;
                  }

                  while ((v181 & 1) != 0);
                  a6 = v199;
                  v180[1].n128_u64[0] = v200;
                  *v180 = a6;
                }

                v130 = (a1 + 24);
              }

              while ((a1 + 24) != a2);
            }

            return a6.n128_f64[0];
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v140 = (v13 - 2) >> 1;
              v194 = a2;
              v196 = v140;
              do
              {
                v141 = v140;
                if (v196 >= v140)
                {
                  v142 = (2 * v140) | 1;
                  v143 = a1 + 24 * v142;
                  if (2 * v140 + 2 < v13 && (*a3)((a1 + 24 * v142), (v143 + 24)))
                  {
                    v143 += 24;
                    v142 = 2 * v141 + 2;
                  }

                  v144 = (a1 + 24 * v141);
                  if (((*a3)(v143, v144) & 1) == 0)
                  {
                    v145 = *v144;
                    v200 = v144[1].n128_u64[0];
                    v199 = v145;
                    do
                    {
                      v146 = v143;
                      v147 = *v143;
                      v144[1].n128_u64[0] = *(v143 + 16);
                      *v144 = v147;
                      if (v196 < v142)
                      {
                        break;
                      }

                      v148 = (2 * v142) | 1;
                      v143 = a1 + 24 * v148;
                      v149 = 2 * v142 + 2;
                      if (v149 < v13 && (*a3)((a1 + 24 * v148), (v143 + 24)))
                      {
                        v143 += 24;
                        v148 = v149;
                      }

                      v144 = v146;
                      v142 = v148;
                    }

                    while (!(*a3)(v143, &v199));
                    v150 = v199;
                    v146[1].n128_u64[0] = v200;
                    *v146 = v150;
                    a2 = v194;
                  }
                }

                v140 = v141 - 1;
              }

              while (v141);
              v151 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
              do
              {
                v152 = 0;
                v153 = *a1;
                v198 = *(a1 + 16);
                v197 = v153;
                v154 = a1;
                do
                {
                  v155 = v154 + 24 * v152;
                  v156 = (v155 + 24);
                  v157 = (2 * v152) | 1;
                  v158 = 2 * v152 + 2;
                  if (v158 < v151)
                  {
                    v159 = (v155 + 48);
                    if ((*a3)((v155 + 24), v155 + 3))
                    {
                      v156 = v159;
                      v157 = v158;
                    }
                  }

                  v160 = *v156;
                  v154[1].n128_u64[0] = v156[1].n128_u64[0];
                  *v154 = v160;
                  v154 = v156;
                  v152 = v157;
                }

                while (v157 <= ((v151 - 2) >> 1));
                v161 = (a2 - 24);
                if (v156 == &a2[-2].n128_i8[8])
                {
                  v163 = (a2 - 24);
                  a6 = v197;
                  v156[1].n128_u64[0] = v198;
                  *v156 = a6;
                }

                else
                {
                  v162 = *v161;
                  v156[1].n128_u64[0] = a2[-1].n128_u64[1];
                  *v156 = v162;
                  a6 = v197;
                  a2[-1].n128_u64[1] = v198;
                  v163 = (a2 - 24);
                  *v161 = a6;
                  v164 = &v156[1].n128_i64[1] - a1;
                  if (v164 >= 25)
                  {
                    v165 = (-2 - 0x5555555555555555 * (v164 >> 3)) >> 1;
                    v166 = (a1 + 24 * v165);
                    if ((*a3)(v166, v156))
                    {
                      v167 = *v156;
                      v200 = v156[1].n128_u64[0];
                      v199 = v167;
                      do
                      {
                        v168 = v166;
                        v169 = *v166;
                        v156[1].n128_u64[0] = v166[1].n128_u64[0];
                        *v156 = v169;
                        if (!v165)
                        {
                          break;
                        }

                        v165 = (v165 - 1) >> 1;
                        v166 = (a1 + 24 * v165);
                        v156 = v168;
                      }

                      while (((*a3)(v166, &v199) & 1) != 0);
                      a6 = v199;
                      v168[1].n128_u64[0] = v200;
                      *v168 = a6;
                    }
                  }
                }

                v170 = v151-- <= 2;
                a2 = v163;
              }

              while (!v170);
            }

            return a6.n128_f64[0];
          }

          v14 = v13 >> 1;
          v15 = (v11 + 24 * (v13 >> 1));
          v16 = *a3;
          if (v12 >= 0xC01)
          {
            v17 = v16(v15, v11);
            v18 = (*a3)((a2 - 24), v15);
            if (v17)
            {
              if (v18)
              {
                v19 = *v11;
                v200 = v11[1].n128_u64[0];
                v199 = v19;
                v20 = *v10;
                v11[1].n128_u64[0] = a2[-1].n128_u64[1];
                *v11 = v20;
                goto LABEL_27;
              }

              v37 = *v11;
              v200 = v11[1].n128_u64[0];
              v199 = v37;
              v38 = *v15;
              v11[1].n128_u64[0] = v15[1].n128_u64[0];
              *v11 = v38;
              v39 = v199;
              v15[1].n128_u64[0] = v200;
              *v15 = v39;
              if ((*a3)((a2 - 24), v15))
              {
                v40 = *v15;
                v200 = v15[1].n128_u64[0];
                v199 = v40;
                v41 = *v10;
                v15[1].n128_u64[0] = a2[-1].n128_u64[1];
                *v15 = v41;
LABEL_27:
                v42 = v199;
                a2[-1].n128_u64[1] = v200;
                *v10 = v42;
              }
            }

            else if (v18)
            {
              v25 = *v15;
              v200 = v15[1].n128_u64[0];
              v199 = v25;
              v26 = *v10;
              v15[1].n128_u64[0] = a2[-1].n128_u64[1];
              *v15 = v26;
              v27 = v199;
              a2[-1].n128_u64[1] = v200;
              *v10 = v27;
              if ((*a3)(v15, v11))
              {
                v28 = *v11;
                v200 = v11[1].n128_u64[0];
                v199 = v28;
                v29 = *v15;
                v11[1].n128_u64[0] = v15[1].n128_u64[0];
                *v11 = v29;
                v30 = v199;
                v15[1].n128_u64[0] = v200;
                *v15 = v30;
              }
            }

            v43 = &v11[-1] + 24 * v14 - 8;
            v44 = (*a3)((a1 + 24 * v14 - 24), (a1 + 24));
            v45 = (*a3)(v193, (a1 + 24 * v14 - 24));
            if (v44)
            {
              if (v45)
              {
                v199 = *(a1 + 24);
                v46 = v199;
                v200 = *(a1 + 40);
                v47 = v200;
                v48 = a2[-2].n128_u64[0];
                *(a1 + 24) = *v193;
                *(a1 + 40) = v48;
                a2[-2].n128_u64[0] = v47;
                *v193 = v46;
              }

              else
              {
                v199 = *(a1 + 24);
                v61 = v199;
                v200 = *(a1 + 40);
                v62 = v200;
                v63 = *(a1 + 24 * v14 - 8);
                *(a1 + 24) = *v43;
                *(a1 + 40) = v63;
                *(a1 + 24 * v14 - 8) = v62;
                *v43 = v61;
                if ((*a3)(v193, (a1 + 24 * v14 - 24)))
                {
                  v64 = *v43;
                  v200 = *(a1 + 24 * v14 - 8);
                  v199 = v64;
                  v65 = *v193;
                  *(a1 + 24 * v14 - 8) = a2[-2].n128_u64[0];
                  *v43 = v65;
                  v66 = v199;
                  a2[-2].n128_u64[0] = v200;
                  *v193 = v66;
                }
              }
            }

            else if (v45)
            {
              v49 = *v43;
              v200 = *(a1 + 24 * v14 - 8);
              v199 = v49;
              v50 = *v193;
              *(a1 + 24 * v14 - 8) = a2[-2].n128_u64[0];
              *v43 = v50;
              v51 = v199;
              a2[-2].n128_u64[0] = v200;
              *v193 = v51;
              if ((*a3)((a1 + 24 * v14 - 24), (a1 + 24)))
              {
                v199 = *(a1 + 24);
                v52 = v199;
                v200 = *(a1 + 40);
                v53 = v200;
                v54 = *(a1 + 24 * v14 - 8);
                *(a1 + 24) = *v43;
                *(a1 + 40) = v54;
                *(a1 + 24 * v14 - 8) = v53;
                *v43 = v52;
              }
            }

            v67 = a1 + 24 * v14;
            v68 = (*a3)((v67 + 24), (a1 + 48));
            v69 = (*a3)(v192, (v67 + 24));
            if (v68)
            {
              if (v69)
              {
                v199 = *(a1 + 48);
                v70 = v199;
                v200 = *(a1 + 64);
                v71 = v200;
                v72 = a2[-4].n128_u64[1];
                *(a1 + 48) = *v192;
                *(a1 + 64) = v72;
                a2[-4].n128_u64[1] = v71;
                *v192 = v70;
              }

              else
              {
                v199 = *(a1 + 48);
                v79 = v199;
                v200 = *(a1 + 64);
                v80 = v200;
                v81 = *(v67 + 40);
                *(a1 + 48) = *(v67 + 24);
                *(a1 + 64) = v81;
                *(v67 + 40) = v80;
                *(v67 + 24) = v79;
                if ((*a3)(v192, (v67 + 24)))
                {
                  v82 = *(v67 + 24);
                  v200 = *(v67 + 40);
                  v199 = v82;
                  v83 = *v192;
                  *(v67 + 40) = a2[-4].n128_u64[1];
                  *(v67 + 24) = v83;
                  v84 = v199;
                  a2[-4].n128_u64[1] = v200;
                  *v192 = v84;
                }
              }
            }

            else if (v69)
            {
              v73 = *(v67 + 24);
              v200 = *(v67 + 40);
              v199 = v73;
              v74 = *v192;
              *(v67 + 40) = a2[-4].n128_u64[1];
              *(v67 + 24) = v74;
              v75 = v199;
              a2[-4].n128_u64[1] = v200;
              *v192 = v75;
              if ((*a3)((v67 + 24), (a1 + 48)))
              {
                v199 = *(a1 + 48);
                v76 = v199;
                v200 = *(a1 + 64);
                v77 = v200;
                v78 = *(v67 + 40);
                *(a1 + 48) = *(v67 + 24);
                *(a1 + 64) = v78;
                *(v67 + 40) = v77;
                *(v67 + 24) = v76;
              }
            }

            v85 = (*a3)(v15, v43);
            v86 = (*a3)((v67 + 24), v15);
            if (v85)
            {
              if (v86)
              {
                v87 = *v43;
                v200 = *(v43 + 16);
                v199 = v87;
                *v43 = *(v67 + 24);
                *(v43 + 16) = *(v67 + 40);
                goto LABEL_55;
              }

              v92 = *v43;
              v200 = *(v43 + 16);
              v199 = v92;
              *v43 = *v15;
              *(v43 + 16) = v15[1].n128_u64[0];
              v93 = v199;
              v15[1].n128_u64[0] = v200;
              *v15 = v93;
              if ((*a3)((v67 + 24), v15))
              {
                v94 = *v15;
                v200 = v15[1].n128_u64[0];
                v199 = v94;
                *v15 = *(v67 + 24);
                v15[1].n128_u64[0] = *(v67 + 40);
LABEL_55:
                v95 = v199;
                *(v67 + 40) = v200;
                *(v67 + 24) = v95;
              }
            }

            else if (v86)
            {
              v88 = *v15;
              v200 = v15[1].n128_u64[0];
              v199 = v88;
              *v15 = *(v67 + 24);
              v15[1].n128_u64[0] = *(v67 + 40);
              v89 = v199;
              *(v67 + 40) = v200;
              *(v67 + 24) = v89;
              if ((*a3)(v15, v43))
              {
                v90 = *v43;
                v200 = *(v43 + 16);
                v199 = v90;
                *v43 = *v15;
                *(v43 + 16) = v15[1].n128_u64[0];
                v91 = v199;
                v15[1].n128_u64[0] = v200;
                *v15 = v91;
              }
            }

            v96 = *a1;
            v200 = *(a1 + 16);
            v199 = v96;
            v97 = *v15;
            *(a1 + 16) = v15[1].n128_u64[0];
            *a1 = v97;
            v98 = v199;
            v15[1].n128_u64[0] = v200;
            *v15 = v98;
            goto LABEL_57;
          }

          v21 = v16(v11, v15);
          v22 = (*a3)((a2 - 24), v11);
          if (v21)
          {
            if (v22)
            {
              v23 = *v15;
              v200 = v15[1].n128_u64[0];
              v199 = v23;
              v24 = *v10;
              v15[1].n128_u64[0] = a2[-1].n128_u64[1];
              *v15 = v24;
LABEL_36:
              v60 = v199;
              a2[-1].n128_u64[1] = v200;
              *v10 = v60;
              goto LABEL_57;
            }

            v55 = *v15;
            v200 = v15[1].n128_u64[0];
            v199 = v55;
            v56 = *v11;
            v15[1].n128_u64[0] = v11[1].n128_u64[0];
            *v15 = v56;
            v57 = v199;
            v11[1].n128_u64[0] = v200;
            *v11 = v57;
            if ((*a3)((a2 - 24), v11))
            {
              v58 = *v11;
              v200 = v11[1].n128_u64[0];
              v199 = v58;
              v59 = *v10;
              v11[1].n128_u64[0] = a2[-1].n128_u64[1];
              *v11 = v59;
              goto LABEL_36;
            }
          }

          else if (v22)
          {
            v31 = *v11;
            v200 = v11[1].n128_u64[0];
            v199 = v31;
            v32 = *v10;
            v11[1].n128_u64[0] = a2[-1].n128_u64[1];
            *v11 = v32;
            v33 = v199;
            a2[-1].n128_u64[1] = v200;
            *v10 = v33;
            if ((*a3)(v11, v15))
            {
              v34 = *v15;
              v200 = v15[1].n128_u64[0];
              v199 = v34;
              v35 = *v11;
              v15[1].n128_u64[0] = v11[1].n128_u64[0];
              *v15 = v35;
              v36 = v199;
              v11[1].n128_u64[0] = v200;
              *v11 = v36;
            }
          }

LABEL_57:
          --a4;
          if (a5 & 1) != 0 || ((*a3)((a1 - 24), a1))
          {
            break;
          }

          v111 = *a1;
          v198 = *(a1 + 16);
          v197 = v111;
          if ((*a3)(&v197, (a2 - 24)))
          {
            v11 = a1;
            do
            {
              v11 = (v11 + 24);
            }

            while (((*a3)(&v197, v11) & 1) == 0);
          }

          else
          {
            v112 = (a1 + 24);
            do
            {
              v11 = v112;
              if (v112 >= a2)
              {
                break;
              }

              v113 = (*a3)(&v197, v112);
              v112 = (v11 + 24);
            }

            while (!v113);
          }

          v114 = a2;
          if (v11 < a2)
          {
            v114 = a2;
            do
            {
              v114 = (v114 - 24);
            }

            while (((*a3)(&v197, v114) & 1) != 0);
          }

          while (v11 < v114)
          {
            v115 = *v11;
            v200 = v11[1].n128_u64[0];
            v199 = v115;
            v116 = *v114;
            v11[1].n128_u64[0] = v114[1].n128_u64[0];
            *v11 = v116;
            v117 = v199;
            v114[1].n128_u64[0] = v200;
            *v114 = v117;
            do
            {
              v11 = (v11 + 24);
            }

            while (!(*a3)(&v197, v11));
            do
            {
              v114 = (v114 - 24);
            }

            while (((*a3)(&v197, v114) & 1) != 0);
          }

          v118 = (v11 - 24);
          if (&v11[-2].n128_i8[8] != a1)
          {
            v119 = *v118;
            *(a1 + 16) = v11[-1].n128_u64[1];
            *a1 = v119;
          }

          a5 = 0;
          a6 = v197;
          v11[-1].n128_u64[1] = v198;
          *v118 = a6;
        }

        v99 = *a1;
        v198 = *(a1 + 16);
        v197 = v99;
        v100 = a1;
        do
        {
          v101 = v100;
          v100 = (v100 + 24);
        }

        while (((*a3)(v100, &v197) & 1) != 0);
        v102 = a2;
        if (v101 == a1)
        {
          v102 = a2;
          do
          {
            if (v100 >= v102)
            {
              break;
            }

            v102 = (v102 - 24);
          }

          while (((*a3)(v102, &v197) & 1) == 0);
        }

        else
        {
          do
          {
            v102 = (v102 - 24);
          }

          while (!(*a3)(v102, &v197));
        }

        if (v100 < v102)
        {
          v103 = v100;
          v104 = v102;
          do
          {
            v199 = *v103;
            v105 = v199;
            v200 = v103[1].n128_u64[0];
            v106 = v200;
            v107 = v104[1].n128_u64[0];
            *v103 = *v104;
            v103[1].n128_u64[0] = v107;
            v104[1].n128_u64[0] = v106;
            *v104 = v105;
            do
            {
              v101 = v103;
              v103 = (v103 + 24);
            }

            while (((*a3)(v103, &v197) & 1) != 0);
            do
            {
              v104 = (v104 - 24);
            }

            while (!(*a3)(v104, &v197));
          }

          while (v103 < v104);
        }

        if (v101 != a1)
        {
          v108 = *v101;
          *(a1 + 16) = v101[1].n128_u64[0];
          *a1 = v108;
        }

        v109 = v197;
        v101[1].n128_u64[0] = v198;
        *v101 = v109;
        if (v100 >= v102)
        {
          break;
        }

LABEL_78:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(CAFrameIntervalRequest const&,CAFrameIntervalRequest const&),CAFrameIntervalRequest*,false>(a1, v101, a3, a4, a5 & 1);
        a5 = 0;
        v11 = (v101 + 24);
      }

      v110 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(CAFrameIntervalRequest const&,CAFrameIntervalRequest const&),CAFrameIntervalRequest*>(a1, v101, a3);
      v11 = (v101 + 24);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(CAFrameIntervalRequest const&,CAFrameIntervalRequest const&),CAFrameIntervalRequest*>(&v101[1].n128_i64[1], a2, a3))
      {
        break;
      }

      if (!v110)
      {
        goto LABEL_78;
      }
    }

    a2 = v101;
    if (!v110)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}