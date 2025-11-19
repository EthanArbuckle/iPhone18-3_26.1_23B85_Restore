CGMutablePathRef CGFontCreateGlyphPath(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = (*(*(a1 + 16) + 408))(*(a1 + 112), 0);
  v4 = v3;
  if (v3 && a2 && (*a2 != 1.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 8)), vceqq_f64(*(a2 + 24), xmmword_18439C630))))) & 1) != 0 || *(a2 + 40) != 0.0))
  {
    MutableCopyByTransformingPath = CGPathCreateMutableCopyByTransformingPath(v3, a2);
    CFRelease(v4);
    return MutableCopyByTransformingPath;
  }

  return v4;
}

_DWORD *create_glyph_bitmap(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2)
  {
    return 0;
  }

  v6 = FPFontCopyGlyphBitmap();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  BytePtr = CFDataGetBytePtr(v6);
  v9 = CGGlyphBitmapCreate(a5, 1, 0.0, (0.0 + 0.0), 0.0, 0.0, 0, BytePtr);
  CFRelease(v7);
  return v9;
}

double *CGFontAutohinterCreateAutohintTransform(uint64_t *a1, double *a2, int a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 <= 0.0 || v6 != a2[3] || a2[1] != 0.0 || a2[2] != 0.0)
  {
    return 0;
  }

  v7 = v6;
  if (v6 != v6)
  {
    v7 = 0;
  }

  if (v7 - 19 < 0xFFFFFFF4)
  {
    return 0;
  }

  v12 = 13;
  if (a3)
  {
    v12 = 1;
  }

  v13 = &a1[v12 - 7 + v7];
  explicit = atomic_load_explicit(v13, memory_order_acquire);
  if (!explicit)
  {
    v15 = CGFontAutohintTransformCreate(*a1, a2, a3, a4);
    if (!v15)
    {
      return 0;
    }

    explicit = 0;
    atomic_compare_exchange_strong(v13, &explicit, v15);
    if (explicit)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v15);
      }
    }

    else
    {
      explicit = v15;
    }
  }

  if (*(explicit + 16) == a4)
  {
    atomic_fetch_add_explicit(explicit, 1u, memory_order_relaxed);
    return explicit;
  }

  v14 = *a1;

  return CGFontAutohintTransformCreate(v14, a2, a3, a4);
}

atomic_ullong *CGFontGetAutohinter(atomic_ullong *result)
{
  if (result)
  {
    v1 = result;
    v2 = result + 8;
    result = atomic_load_explicit(result + 8, memory_order_acquire);
    if (!result)
    {
      result = malloc_type_calloc(1uLL, 0xC8uLL, 0x20040E6F86433uLL);
      v3 = 0;
      *result = v1;
      atomic_compare_exchange_strong(v2, &v3, result);
      if (v3)
      {
        CGFontAutohinterRelease(result);
        return v3;
      }
    }
  }

  return result;
}

uint64_t aa_quadto(uint64_t result, float32x2_t a2, float32_t a3, float64x2_t a4, float a5)
{
  v5 = result;
  v54[4] = *MEMORY[0x1E69E9840];
  v48 = *(result + 128);
  v6.f64[1] = *(result + 136);
  v7 = *(result + 96);
  v46 = *(result + 160);
  v6.f64[0] = *(result + 168);
  v8 = *(result + 176);
  v9 = *(result + 32);
  a2.f32[1] = a3;
  v10 = vcvtq_f64_f32(a2);
  *(a4.f64 + 1) = a5;
  v11 = vcvtq_f64_f32(*&a4.f64[0]);
  a4.f64[0] = 0.0;
  v12 = vdupq_lane_s64(vmvnq_s8(vceqq_f64(v6, a4)).i64[0], 0);
  v13 = BYTE1(v8);
  v14 = vbslq_s8(v12, vmulq_n_f64(v10, v6.f64[0]), v10);
  v15 = vbslq_s8(v12, vmulq_n_f64(v11, v6.f64[0]), v11);
  if ((v8 & 0x30000) == 0)
  {
    v16 = v15.f64[1];
    v28 = 1;
    v19 = v15.f64[1];
    v17 = v15.f64[0];
    v18 = v15.f64[0];
    goto LABEL_14;
  }

  v17 = *(result + 64);
  v16 = *(result + 72);
  v18 = *(result + 80);
  v19 = *(result + 88);
  v20 = vabsq_f64(v14);
  v21 = vcgtzq_f64(v14);
  v22 = vdupq_n_s64(0x430C6BF526340000uLL);
  v23 = vdupq_n_s64(0xC30C6BF526340000);
  v15 = vbslq_s8(vcgtq_f64(v22, vabsq_f64(v15)), v15, vbslq_s8(vcgtzq_f64(v15), v22, v23));
  v24 = (v15.f64[0] > v18) | (4 * (v15.f64[0] < v17));
  v25 = (8 * (v15.f64[1] < v16)) | (2 * (v15.f64[1] > v19));
  if (v25)
  {
    _ZF = v24 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v27 = 0;
  }

  else
  {
    v27 = 16;
  }

  v14 = vbslq_s8(vcgtq_f64(v22, v20), v14, vbslq_s8(v21, v22, v23));
  if (BYTE1(v8) != (v24 | v25 | v27) || ((v8 >> 8) & 0xF) != ((v14.f64[0] > v18) | (4 * (v14.f64[0] < v17)) | (8 * (v14.f64[1] < v16)) | (2 * (v14.f64[1] > v19))))
  {
    v28 = 0;
    goto LABEL_14;
  }

  if (!BYTE1(v8))
  {
    v28 = 1;
LABEL_14:
    v29 = 0;
    v47 = vdupq_lane_s64(v46, 0);
    v30 = &v53;
    __asm
    {
      FMOV            V4.2D, #0.25
      FMOV            V5.2D, #0.5
    }

    v50 = _Q4;
    v51 = v7;
    v49 = _Q5;
    while (1)
    {
      v36 = vaddq_f64(v14, v14);
      v37 = vaddq_f64(v9, v15);
      if (v29 <= 22)
      {
        v39 = vsubq_f64(v37, v36);
        *&v39.f64[0] = vmovn_s64(vmvnq_s8(vcgtq_f64(vmulq_f64(v39, v39), v7)));
        v38 = LOBYTE(v39.f64[0]) & BYTE4(v39.f64[0]);
        if (v28)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v28)
        {
          goto LABEL_34;
        }

        v38 = 1;
      }

      v40 = (v15.f64[0] > v18) | (4 * (v15.f64[0] < v17));
      v41 = (2 * (v15.f64[1] > v19)) | (8 * (v15.f64[1] < v16));
      if (v41)
      {
        v42 = v40 == 0;
      }

      else
      {
        v42 = 1;
      }

      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = 16;
      }

      v44 = v40 | v41 | v43;
      if (!(v44 | v13))
      {
LABEL_30:
        if (v38)
        {
LABEL_34:
          v54[0] = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(v47, v15, v48)));
          LODWORD(result) = 1;
LABEL_35:
          v52 = v15;
          result = aa_add_edges(v5, v54, result);
          _Q5 = v49;
          _Q4 = v50;
          v7 = v51;
          v15 = v52;
          goto LABEL_36;
        }

        goto LABEL_33;
      }

      if (v44 == v13)
      {
        if ((v38 & 1) != 0 || (v13 & 0xF) == ((v14.f64[0] > v18) | (4 * (v14.f64[0] < v17)) | (2 * (v14.f64[1] > v19)) | (8 * (v14.f64[1] < v16))))
        {
          goto LABEL_36;
        }

LABEL_33:
        v45 = vmulq_f64(vaddq_f64(v36, v37), _Q4);
        *v30 = v45;
        v30[1] = vmulq_f64(vaddq_f64(v14, v15), _Q5);
        v30[2] = v15;
        v30 += 3;
        ++v29;
        v14 = vmulq_f64(vaddq_f64(v9, v14), _Q5);
        v15 = v45;
      }

      else
      {
        if ((v38 & 1) == 0)
        {
          goto LABEL_33;
        }

        v52 = v15;
        result = aa_clip_edge(v54, v13, v44, v17, v16, v18, v19, v48.f64[0], v48.f64[1], *&v46, v9.f64[0], v9.f64[1], v15.f64[0], v15.f64[1]);
        _Q5 = v49;
        _Q4 = v50;
        v7 = v51;
        v15 = v52;
        v13 = v44;
        if (result)
        {
          goto LABEL_35;
        }

LABEL_36:
        if (!v29)
        {
          v8 = *(v5 + 176);
          break;
        }

        v9 = v30[-3];
        v14 = v30[-2];
        v30 -= 3;
        --v29;
        v15 = v30[2];
      }
    }
  }

  *(v5 + 32) = v15;
  *(v5 + 176) = v8 & 0xFFFF00FF | (v13 << 8);
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  v8 = 0.0;
  if (path && ((CGPathDisableTypeValidation & 1) != 0 || (v10 = CFGetTypeID(path), v10 == CGPathGetTypeID())))
  {
    v11 = CG::Path::bounding_box((path + 16), v1, v2, v3, v4, v5, v6, v7);
    v8 = v14;
  }

  else
  {
    v12 = INFINITY;
    v11 = INFINITY;
    v13 = 0.0;
  }

  v15 = v8;
  result.size.height = v13;
  result.size.width = v15;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

float64_t CG::Path::bounding_box(CG::Path *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *this;
  if (*this > 4)
  {
    if (v8 <= 6)
    {
      if (v8 == 5)
      {
        if (*(this + 3) >= *(this + 1))
        {
          v11.f64[0] = *(this + 1);
        }

        else
        {
          v11.f64[0] = *(this + 3);
        }
      }

      else
      {
        if (v8 != 6)
        {
          goto LABEL_64;
        }

        v15 = *(this + 1);
        v16 = *(this + 2);
        v18 = *(this + 3);
        v17 = *(this + 4);
        v19 = *(this + 7);
        v20 = *(this + 8);
        v21 = *(this + 9);
        if (v19 >= 1.57079633)
        {
          v25 = *(this + 2);
          v24 = *(this + 1);
          v26 = v25;
          v27 = v24;
          do
          {
            v22 = v18;
            v28 = v17;
            v23 = v21;
            v29 = v27 + v18 * 0.55228475;
            if (v24 <= v29)
            {
              v30 = v24;
            }

            else
            {
              v30 = v27 + v18 * 0.55228475;
            }

            if (v15 < v29)
            {
              v15 = v27 + v18 * 0.55228475;
            }

            v31 = v26 + v28 * 0.55228475;
            if (v25 > v31)
            {
              v25 = v26 + v28 * 0.55228475;
            }

            if (v16 < v31)
            {
              v16 = v26 + v28 * 0.55228475;
            }

            v32 = v18 + v27 * 0.55228475;
            if (v30 > v32)
            {
              v30 = v18 + v27 * 0.55228475;
            }

            if (v15 < v32)
            {
              v15 = v18 + v27 * 0.55228475;
            }

            v33 = v28 + v26 * 0.55228475;
            if (v25 > v33)
            {
              v25 = v28 + v26 * 0.55228475;
            }

            if (v16 < v33)
            {
              v16 = v28 + v26 * 0.55228475;
            }

            if (v30 <= v18)
            {
              v24 = v30;
            }

            else
            {
              v24 = v18;
            }

            if (v15 < v18)
            {
              v15 = v18;
            }

            if (v25 > v28)
            {
              v25 = v28;
            }

            if (v16 < v28)
            {
              v16 = v28;
            }

            v18 = -v27;
            v17 = -v26;
            v21 = -v20;
            v19 = v19 + -1.57079633;
            v20 = v23;
            v26 = v28;
            v27 = v22;
          }

          while (v19 >= 1.57079633);
        }

        else
        {
          v22 = *(this + 1);
          v23 = *(this + 8);
          v24 = v22;
        }

        if (v19 > 0.00000001)
        {
          v34 = *(this + 10);
          v35 = v23 + v34 * v21;
          v36 = v21 - v34 * v23;
          v37 = v22 + v34 * v18;
          if (v24 > v37)
          {
            v24 = v22 + v34 * v18;
          }

          if (v24 > v18 * v36 + v35 * v22)
          {
            v24 = v18 * v36 + v35 * v22;
          }

          v38 = v18 * v21 + v23 * v22;
          if (v24 > v38)
          {
            v24 = v38;
          }
        }

        v11.f64[0] = v24 + *(this + 5);
      }
    }

    else
    {
      switch(v8)
      {
        case 7:
          v11.f64[0] = CGRegionGetBoundingBox(*(this + 1));
          break;
        case 9:
          v11.f64[0] = *(this + 5);
          break;
        case 8:
          v9 = *(this + 4);
          v10 = vdupq_n_s64(0xFFF0000000000000);
          v11 = vdupq_n_s64(0x7FF0000000000000uLL);
          if (*(this + 4))
          {
            v12 = (this + 16);
            do
            {
              v13 = *v12++;
              v10 = vbslq_s8(vcgtq_f64(v13, v10), v13, v10);
              v11 = vbslq_s8(vcgtq_f64(v11, v13), v13, v11);
              --v9;
            }

            while (v9);
          }

          break;
        default:
          goto LABEL_64;
      }
    }
  }

  else
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        v11.f64[0] = INFINITY;
        return v11.f64[0];
      }

      if (v8 != 1)
      {
        goto LABEL_64;
      }
    }

    else if (v8 != 2 && v8 != 3 && v8 != 4)
    {
LABEL_64:
      _CGHandleAssert("bounding_box", 1633, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Paths/path.cc", "false", "unhandled path type %d", a6, a7, a8, v8);
    }

    v14 = *(this + 24);
    *&v40.a = *(this + 8);
    *&v40.c = v14;
    *&v40.tx = *(this + 40);
    v11.f64[0] = transform_unit_rect(&v40);
  }

  return v11.f64[0];
}

void CGPathAddQuadCurveToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat cpx, CGFloat cpy, CGFloat x, CGFloat y)
{
  if (path)
  {
    v15 = path;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v16 = CFGetTypeID(path), path = CGPathGetTypeID(), v16 == path))
    {
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError(path, m, v6, v7, v8, v9, v10, v11, v31);
      }

      {
        v25 = *(v15 + 4);
        v24 = (v15 + 16);
        if ((v25 - 10) > 0xFFFFFFF6)
        {
          v26.f64[0] = cpx;
          v26.f64[1] = cpy;
          v29.x = x;
          v29.y = y;
          CG::Path::add_quad_curve_to_point(v24, &v29, m, v19, v26);
        }

        else
        {
          CGPostError("%s: no current point.", v17, v18, v19, v20, v21, v22, v23, "CGPathAddQuadCurveToPoint");
        }
      }
    }
  }
}

float64x2_t CG::Path::add_quad_curve_to_point(CG::Path *this, float64x2_t *a2, float64x2_t *a3, const CGAffineTransform *a4, float64x2_t result)
{
  if (a3)
  {
    v6 = a3[1];
    v7 = a3[2];
    result = vaddq_f64(v7, vmlaq_n_f64(vmulq_laneq_f64(v6, result, 1), *a3, result.f64[0]));
    v8 = vaddq_f64(v7, vmlaq_n_f64(vmulq_n_f64(v6, a2->f64[1]), *a3, a2->f64[0]));
  }

  else
  {
    v8 = *a2;
  }

  v9 = *this;
  v18 = v8;
  v19 = result;
  if (*this == 9)
  {
    goto LABEL_11;
  }

  if (v9 == 8)
  {
    goto LABEL_8;
  }

  if (!v9)
  {
    *this = 8;
LABEL_8:
    v10 = *(this + 4);
    if (v10 <= 5)
    {
      *(this + v10 + 1) = result;
      *(this + 4) = v10 + 2;
      *(this + v10 + 2) = v8;
      v11 = *(this + 5);
      *(this + 3) |= 2 << (3 * v11);
      *(this + 5) = v11 + 1;
      return result;
    }
  }

  CG::Path::convert_to_huge_(this);
  v8 = v18;
  result = v19;
LABEL_11:
  v12 = vbslq_s8(vcgtq_f64(*(this + 40), result), result, *(this + 40));
  *(this + 40) = vbslq_s8(vcgtq_f64(v12, v8), v8, v12);
  v13 = vbslq_s8(vcgtq_f64(result, *(this + 56)), result, *(this + 56));
  *(this + 56) = vbslq_s8(vcgtq_f64(v8, v13), v8, v13);
  CG::Path::reserve_space(this, 2, 1);
  v15 = *(this + 3);
  v14 = *(this + 4);
  v16 = vaddq_s64(*(this + 8), xmmword_18439CD10);
  v17 = (v14 + 16 * *(this + 1));
  result = v18;
  *v17 = v19;
  v17[1] = v18;
  *(this + 8) = v16;
  *(v14 + v15 - v16.i64[1]) = 2;
  return result;
}

void *__CGFontCacheGetLocalCache_block_invoke()
{
  result = CGFontCacheCreate();
  CGFontCacheGetLocalCache_local_font_cache = result;
  return result;
}

void *CGFontCacheCreate()
{
  if (CGFontCacheCreate_once != -1)
  {
    dispatch_once_f(&CGFontCacheCreate_once, 0, setup);
  }

  if (enable_caching != 1)
  {
    return 0;
  }

  v0 = malloc_type_calloc(1uLL, 0x30uLL, 0x102004002AA219BuLL);
  *v0 = 1;
  v0[1] = cache_max_size;
  v0[2] = 0;
  *(v0 + 6) = 0;
  pthread_mutex_lock(&font_caches_mutex);
  v1 = font_caches;
  v2 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
  if (v2)
  {
    *v2 = v0;
    v2[1] = v1;
    v1 = v2;
  }

  font_caches = v1;
  pthread_mutex_unlock(&font_caches_mutex);
  return v0;
}

void setup()
{
  v5 = *MEMORY[0x1E69E9840];
  get_BOOLean_property("CGFontCacheShouldEnable", copy_local_domain_value, &enable_caching);
  get_integer_property("CGFontCacheMaxSize", copy_local_domain_value, &cache_max_size);
  get_BOOLean_property("CGFontCacheShouldReportSize", copy_local_domain_value, &report_cache_size);
  get_integer_property("CGFontCacheReportingFrequency", copy_local_domain_value, &reporting_frequency);
  if (report_cache_size == 1 && reporting_frequency >= 1)
  {
    memset(&v4, 0, sizeof(v4));
    v3 = 0;
    v1 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
    *v1 = print_cache_size;
    v1[1] = 0;
    pthread_attr_init(&v4);
    pthread_attr_setscope(&v4, 1);
    pthread_attr_setdetachstate(&v4, 2);
    pthread_create(&v3, &v4, thread_fun, v1);
    pthread_attr_destroy(&v4);
  }

  setup_source = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 2uLL, MEMORY[0x1E69E96A0]);
  dispatch_source_set_event_handler(setup_source, &__block_literal_global_11_6636);
  v2 = setup_source;

  dispatch_resume(v2);
}

uint64_t __CGDisplayListGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGDisplayListGetTypeID::dl2_class);
  CGDisplayListGetTypeID::display_list2_type_id = result;
  return result;
}

uint64_t CGSNewEmptyRegion(void *a1)
{
  if (!a1)
  {
    return 1001;
  }

  if (CGRegionGetTypeID_initOnce != -1)
  {
    dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
  }

  result = 0;
  *a1 = &__kCGRegionEmptyRegion;
  return result;
}

uint64_t __CGRegionGetTypeID_block_invoke()
{
  __kCGRegionTypeID = _CFRuntimeRegisterClass();
  result = _CFRuntimeInitStaticInstance();
  qword_1ED4E03F8 = &the_empty_shape;
  return result;
}

uint64_t __CGNotificationCenterGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGNotificationCenterGetTypeID_runtime_class);
  CGNotificationCenterGetTypeID_notification_center_type_id = result;
  return result;
}

uint64_t CGNotificationCenterCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (_block_invoke_once != -1)
  {
    dispatch_once(&_block_invoke_once, &__block_literal_global_9);
  }

  Instance = CGTypeCreateInstance(CGNotificationCenterGetTypeID_notification_center_type_id, 72, a3, a4, a5, a6, a7, a8);
  *(Instance + 80) = 0;
  pthread_mutex_init((Instance + 16), 0);
  return Instance;
}

uint64_t __get_notification_center_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = CGNotificationCenterCreate(a1, a2, a3, a4, a5, a6, a7, a8);
  get_notification_center_image_notification_center = result;
  return result;
}

float CGColorFunctionGetOutputRange(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (CGColorTRCGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorTRCGetTypeID_cglibrarypredicate, &__block_literal_global_770);
  }

  if (v2 == CGColorTRCGetTypeID_f())
  {
    if (trc_get_output_range_cglibrarypredicate != -1)
    {
      dispatch_once(&trc_get_output_range_cglibrarypredicate, &__block_literal_global_93);
    }

    output_range_f = trc_get_output_range_f(a1);
    if (trc_get_output_range_cglibrarypredicate_96 != -1)
    {
      dispatch_once(&trc_get_output_range_cglibrarypredicate_96, &__block_literal_global_99);
    }

    v4 = &trc_get_output_range_f_95;
LABEL_25:
    (*v4)(a1);
    return output_range_f;
  }

  if (CGColorMatrixGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorMatrixGetTypeID_cglibrarypredicate, &__block_literal_global_16);
  }

  if (v2 == CGColorMatrixGetTypeID_f())
  {
    if (matrix_get_output_range_cglibrarypredicate != -1)
    {
      dispatch_once(&matrix_get_output_range_cglibrarypredicate, &__block_literal_global_102);
    }

    output_range_f = matrix_get_output_range_f(a1);
    if (matrix_get_output_range_cglibrarypredicate_105 != -1)
    {
      dispatch_once(&matrix_get_output_range_cglibrarypredicate_105, &__block_literal_global_108);
    }

    v4 = &matrix_get_output_range_f_104;
    goto LABEL_25;
  }

  if (CGColorNxMTransformGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorNxMTransformGetTypeID_cglibrarypredicate, &__block_literal_global_24);
  }

  output_range_f = 0.0;
  if (v2 == CGColorNxMTransformGetTypeID_f())
  {
    if (nxm_get_output_range_cglibrarypredicate != -1)
    {
      dispatch_once(&nxm_get_output_range_cglibrarypredicate, &__block_literal_global_111);
    }

    output_range_f = nxm_get_output_range_f(a1);
    if (nxm_get_output_range_cglibrarypredicate_114 != -1)
    {
      dispatch_once(&nxm_get_output_range_cglibrarypredicate_114, &__block_literal_global_117);
    }

    v4 = &nxm_get_output_range_f_113;
    goto LABEL_25;
  }

  return output_range_f;
}

uint64_t CGNotificationCenterAddCallback(uint64_t result, uint64_t a2, uint64_t a3, __CFString *a4, __CFString *a5)
{
  if (a2)
  {
    v9 = result;
    v10 = malloc_type_malloc(0x28uLL, 0x10E004082DC3CFBuLL);
    *v10 = 1;
    v10[1] = a3;
    if (a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = @"kCGNotificationAnyName";
    }

    v12 = CFRetain(v11);
    v13 = @"kCGNotificationAnyObject";
    if (a5)
    {
      v13 = a5;
    }

    v10[2] = v12;
    v10[3] = v13;
    v10[4] = a2;
    pthread_mutex_lock((v9 + 16));
    v14 = *(v9 + 80);
    v15 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
    if (v15)
    {
      *v15 = v10;
      v15[1] = v14;
      v14 = v15;
    }

    *(v9 + 80) = v14;

    return pthread_mutex_unlock((v9 + 16));
  }

  return result;
}

uint64_t CGImageProviderCopyImageBlockSetWithOptions(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (v2 > 1)
  {
    if (v2 != 2 && v2 != 3)
    {
      return 0;
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (a2)
  {
    return 0;
  }

  return (*(a1 + 72))(*(a1 + 56));
}

CGFloat *CGImageBlockCreate(CGFloat *result, uint64_t a2, uint64_t a3, _DWORD *a4, double a5, double a6, double a7, double a8)
{
  if (result)
  {
    v11 = result;
    if (a4 && *a4)
    {
      return 0;
    }

    v16 = CGRectStandardize(*&a5);
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    if (v16.size.width < 0.0 || v16.size.height < 0.0)
    {
      v17 = CGRectStandardize(v16);
      if (v17.size.width == 0.0)
      {
        return 0;
      }

      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v16 = CGRectStandardize(v18);
    }

    else if (v16.size.width == 0.0)
    {
      return 0;
    }

    if (v16.size.height != 0.0)
    {
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v21 = CGRectIntegral(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      if (CGRectEqualToRect(v20, v21))
      {
        result = malloc_type_malloc(0x50uLL, 0x10C0040D55A6A2BuLL);
        *result = v11;
        result[1] = x;
        result[2] = y;
        result[3] = width;
        result[4] = height;
        *(result + 5) = a2;
        *(result + 7) = a3;
        if (a4)
        {
          *(result + 4) = *a4;
        }

        else
        {
          result[8] = 0.0;
          result[9] = 0.0;
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

char *CGImageBlockSetCreateWithBitmapInfo(uint64_t a1, int a2, int a3, uint64_t a4, void *ColorSpace, uint64_t a6, uint64_t *a7, uint64_t a8, double a9, double a10, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14, _DWORD *a15)
{
  v15 = 0;
  if (a6)
  {
    if (a1)
    {
      v17 = a7;
      if (a7)
      {
        v19 = a6;
        if (a15 && *a15)
        {
          return 0;
        }

        v15 = 0;
        if (a9 <= 0.0 || a10 <= 0.0)
        {
          return v15;
        }

        if (a9 != a9)
        {
          return 0;
        }

        if (a10 != a10)
        {
          return 0;
        }

        v33.origin.x = a11;
        v33.origin.y = a12;
        v33.size.width = a13;
        v33.size.height = a14;
        v35 = CGRectIntegral(v33);
        v34.origin.x = a11;
        v34.origin.y = a12;
        v34.size.width = a13;
        v34.size.height = a14;
        if (!CGRectEqualToRect(v34, v35))
        {
          return 0;
        }

        v15 = malloc_type_malloc(8 * v19 + 128, 0x10A004035D209C3uLL);
        *v15 = 1;
        CFRetain(a1);
        *(v15 + 1) = a1;
        *(v15 + 2) = a9;
        *(v15 + 3) = a10;
        *(v15 + 4) = a11;
        *(v15 + 5) = a12;
        *(v15 + 6) = a13;
        *(v15 + 7) = a14;
        if (!a2)
        {
          a2 = *(a1 + 32);
        }

        *(v15 + 16) = a2;
        if (!a4)
        {
          a4 = *(a1 + 48);
        }

        *(v15 + 9) = a4;
        if (ColorSpace || (ColorSpace = CGImageProviderGetColorSpace(a1)) != 0)
        {
          CFRetain(ColorSpace);
        }

        *(v15 + 10) = ColorSpace;
        *(v15 + 11) = 0;
        *(v15 + 12) = a8;
        if (a15)
        {
          *(v15 + 104) = *a15;
        }

        else
        {
          *(v15 + 13) = 0;
          *(v15 + 14) = 0;
        }

        *(v15 + 15) = v19;
        v31 = v15 + 128;
        do
        {
          v32 = *v17;
          if (*v17)
          {
            *(v32 + 48) = a3;
          }

          *v31++ = v32;
          ++v17;
          --v19;
        }

        while (v19);
      }
    }
  }

  return v15;
}

char *CGImageBlockSetCreate(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, double a6, double a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  if (a1)
  {
    v12 = *(a1 + 36);
  }

  else
  {
    v12 = 0;
  }

  return CGImageBlockSetCreateWithBitmapInfo(a1, 0, v12, 0, 0, a2, a3, a4, a6, a7, a8, a9, a10, a11, a5);
}

void CGImageBlockSetRelease(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    CGPropertiesRelease(*(a1 + 88));
    CGColorSpaceRelease(*(a1 + 80));
    v2 = *(a1 + 120);
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(a1 + 128 + 8 * i);
        if (v4)
        {
          v5 = v4[9];
          if (v5)
          {
            v5(v4[7], *(a1 + 128 + 8 * i));
          }

          free(v4);
          v2 = *(a1 + 120);
        }
      }
    }

    v6 = *(a1 + 112);
    if (v6)
    {
      v6(*(a1 + 96));
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      CFRelease(v7);
    }

    free(a1);
  }
}

CGColorRef CGColorGetConstantColor(CFStringRef colorName)
{
  if (CGColorGetConstantColor_predicate != -1)
  {
    dispatch_once(&CGColorGetConstantColor_predicate, &__block_literal_global_22);
  }

  pthread_mutex_lock(&CGColorGetConstantColor_mutex);
  Value = CFDictionaryGetValue(CGColorGetConstantColor_constant_colors, colorName);
  if (!Value)
  {
    if (CFEqual(colorName, @"kCGColorWhite"))
    {
      v3 = 1.0;
    }

    else
    {
      if (!CFEqual(colorName, @"kCGColorBlack"))
      {
        if (!CFEqual(colorName, @"kCGColorClear"))
        {
          Value = 0;
          goto LABEL_11;
        }

        v3 = 0.0;
        v4 = 0.0;
        goto LABEL_9;
      }

      v3 = 0.0;
    }

    v4 = 1.0;
LABEL_9:
    Value = CGColorCreateGenericGrayGamma2_2(v3, v4);
    if (Value)
    {
      CFDictionarySetValue(CGColorGetConstantColor_constant_colors, colorName, Value);
      CFRelease(Value);
    }
  }

LABEL_11:
  pthread_mutex_unlock(&CGColorGetConstantColor_mutex);
  return Value;
}

BOOL RIPLayerInitialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *a1 = RIPLayer_ripl_class;
    *(a1 + 8) = -1;
    *(a1 + 20) = 0;
    *(a1 + 12) = 0;
    *(a1 + 28) = 0;
    *(a1 + 32) = RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    pthread_mutex_init((a1 + 80), 0);
  }

  return a1 != 0;
}

uint64_t CGColorTransformGetMD5(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v4 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v4 == CGColorTransformGetTypeID_type_id)
  {
    Cache = CGColorTransformGetCache(a1);
    if (Cache)
    {
      v6 = *(Cache + 3);
    }

    else
    {
      v6 = 0uLL;
    }

    *a2 = v6;
    return 1;
  }

  else
  {
LABEL_7:
    result = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void CGContextSaveGState(CGContextRef c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(c + 12) = CGGStackSave(*(c + 13));
      return;
    }

    v7 = c;
  }

  else
  {
    v7 = 0;
  }

  handle_invalid_context("CGContextSaveGState", v7, v1, v2, v3, v4, v5, v6);
}

void CGContextSetBlendMode(CGContextRef c, CGBlendMode mode)
{
  if (!c)
  {
    v8 = 0;
LABEL_6:
    handle_invalid_context("CGContextSetBlendMode", v8, v2, v3, v4, v5, v6, v7);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v8 = c;
    goto LABEL_6;
  }

  if (mode <= kCGBlendModePlusLighter)
  {
    CGGStateSetCompositeOperation(*(c + 12), CGContextSetBlendMode_op[mode]);
  }
}

void CGPathApply(CGPathRef path, void *info, CGPathApplierFunction function)
{
  if (path)
  {
    if (CGPathDisableTypeValidation)
    {
      v6 = 1;
      if (!function)
      {
        return;
      }
    }

    else
    {
      v7 = CFGetTypeID(path);
      v6 = v7 == CGPathGetTypeID();
      if (!function)
      {
        return;
      }
    }

    if (v6)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = __CGPathApply_block_invoke;
      v8[3] = &__block_descriptor_tmp_5_18167;
      v8[4] = function;
      v8[5] = info;
      CG::Path::apply(path + 16, v8);
    }
  }
}

uint64_t __CGPathApply_block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a2;
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2 == 4;
  }

  v4 = &CGPathApply::for_dummies;
  if (!v3)
  {
    v4 = a3;
  }

  v7 = v4;
  return (*(a1 + 32))(*(a1 + 40), &v6);
}

double aa_create()
{
  v0 = malloc_type_malloc(0x1000uLL, 0x10200406A317BF6uLL);
  if (v0)
  {
    *(v0 + 29) = 0;
    *(v0 + 24) = v0 + 232;
    *(v0 + 30) = 40;
    *(v0 + 180) = 0;
    *v0 = xmmword_18439CD90;
    *(v0 + 6) = vdupq_n_s64(0x3FE47AE147AE147CuLL);
    *(v0 + 7) = vdupq_n_s64(0x3FB23456789ABCDFuLL);
    *(v0 + 47) = 0;
    *(v0 + 8) = vdupq_n_s64(0x40B0000000000000uLL);
    *(v0 + 9) = vdupq_n_s64(0x3F30000000000000uLL);
    *(v0 + 10) = xmmword_18439CDA0;
    v2 = *(v0 + 44);
    *(v0 + 4) = vdupq_n_s64(0xC10FFFF800000000);
    *(v0 + 5) = vdupq_n_s64(0x410FFFF800000000uLL);
    result = 0.0;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 44) = v2 & 0xFC000000;
    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
  }

  return result;
}

CGColorSpaceRef colorspace_from_properties(CGColorSpace *cf, const void *a2)
{
  v2 = cf;
  if (!cf)
  {
    return v2;
  }

  v4 = CFGetTypeID(cf);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v4 != CGColorSpaceGetTypeID_type_id)
  {
    return 0;
  }

  pthread_mutex_lock((v2 + 32));
  v5 = *(*(v2 + 3) + 88);
  if (!v5)
  {
    pthread_mutex_unlock((v2 + 32));
    return 0;
  }

  v6 = CGPropertiesCopyProperty(v5, a2);
  pthread_mutex_unlock((v2 + 32));
  if (!v6)
  {
    return 0;
  }

  v7 = CFGetTypeID(v6);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v7 == CGColorSpaceGetTypeID_type_id)
  {
    CFRetain(v6);
    v2 = v6;
  }

  else
  {
    v9 = CFGetTypeID(v6);
    if (v9 == CFStringGetTypeID())
    {
      v2 = CGColorSpaceCreateWithName(v6);
    }

    else
    {
      v2 = 0;
    }
  }

  CFRelease(v6);
  return v2;
}

CGColorSpaceRef CGColorSpaceCreateExtended(CGColorSpaceRef space)
{
  v2 = colorspace_from_properties(space, @"kCGColorSpaceExtendedDerivative");
  if (!v2)
  {
    if (!CGColorSpaceIsMatrixBased(space) || CGColorSpaceUsesITUR_2100TF(space))
    {
      return 0;
    }

    if (!space)
    {
      goto LABEL_12;
    }

    CFRetain(space);
    if (CGColorSpaceUsesExtendedRange(space))
    {
      CFRetain(space);
      v2 = space;
LABEL_26:
      CGColorSpaceRelease(space);
      return v2;
    }

    v3 = CGColorSpaceCopyICCData(space);
    if (!v3)
    {
LABEL_12:
      v2 = 0;
      goto LABEL_26;
    }

    v4 = v3;
    if (CGColorSpaceGetType(space) == 6)
    {
      v5 = *(*(*(space + 3) + 96) + 8);
      if (!v5)
      {
        goto LABEL_22;
      }

      Extended_f = CFRetain(v5);
    }

    else
    {
      if (CGColorSpaceCreateExtended_cglibrarypredicate != -1)
      {
        dispatch_once(&CGColorSpaceCreateExtended_cglibrarypredicate, &__block_literal_global_42_23411);
      }

      Extended_f = CGColorSpaceCreateExtended_f(v4, 0);
    }

    v13 = Extended_f;
    if (Extended_f)
    {
      icc_with_profile = color_space_state_create_icc_with_profile(Extended_f, 1, v7, v8, v9, v10, v11, v12);
      v2 = CGColorSpaceCreateWithState(icc_with_profile, v15, v16, v17, v18, v19, v20, v21);
      if (icc_with_profile && atomic_fetch_add_explicit(icc_with_profile, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        color_space_state_dealloc(icc_with_profile);
      }

      if (v2)
      {
        *(v2 + 3) = color_space_state_register(*(v2 + 3));
        v22 = space;
        v23 = v2;
      }

      else
      {
        v22 = space;
        v23 = 0;
      }

      CGColorSpaceSetProperty(v22, @"kCGColorSpaceExtendedDerivative", v23);
      CFRelease(v13);
      goto LABEL_25;
    }

LABEL_22:
    v2 = 0;
LABEL_25:
    CFRelease(v4);
    goto LABEL_26;
  }

  return v2;
}

const void *CGPropertiesCopyProperty(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 4));
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  os_unfair_lock_unlock((a1 + 4));
  return v5;
}

void CGContextAddPath(CGContextRef c, CGPathRef path)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (path)
      {
        if ((CGPathDisableTypeValidation & 1) != 0 || (v10 = CFGetTypeID(path), v10 == CGPathGetTypeID()))
        {
          v11 = *(c + 12);
          v12 = *(c + 21);
          if (v12)
          {

            CGPathAddPath(v12, (v11 + 24), path);
          }

          else
          {
            *(c + 21) = CGPathCreateMutableCopyByTransformingPath(path, (v11 + 24));
          }
        }
      }

      return;
    }

    v13 = c;
  }

  else
  {
    v13 = 0;
  }

  handle_invalid_context("CGContextAddPath", v13, v2, v3, v4, v5, v6, v7);
}

void CGContextDrawPath(CGContextRef c, CGPathDrawingMode mode)
{
  if (!c)
  {
    v14 = 0;
LABEL_14:

    handle_invalid_context("CGContextDrawPath", v14, v2, v3, v4, v5, v6, v7);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v14 = c;
    goto LABEL_14;
  }

  v9 = *(c + 21);
  if (v9 && !CGPathIsEmpty(v9))
  {
    v11 = path_coordinates_are_safe(*(c + 21));
    v12 = *(c + 21);
    if (v11)
    {
      *(c + 21) = 0;
      v13 = *(*(*(c + 12) + 128) + 8);
      if (v13 > 0.0 || v13 == -1.0905473e16)
      {
        if (mode == -1)
        {
LABEL_27:
          if (v12)
          {
            CFRelease(v12);
          }

          return;
        }
      }

      else if (mode > kCGPathStroke)
      {
        if (mode == kCGPathFillStroke)
        {
          mode = kCGPathFill;
        }

        else if (mode == kCGPathEOFillStroke)
        {
          mode = kCGPathEOFill;
        }
      }

      else if (mode == -1 || mode == kCGPathStroke)
      {
        goto LABEL_27;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __CGContextDrawPath_block_invoke;
      v15[3] = &__block_descriptor_tmp_14811;
      v15[4] = c;
      v16 = mode;
      draw_path(mode, v12, v15);
      goto LABEL_27;
    }

    if (v12)
    {
      CFRelease(*(c + 21));
    }

    *(c + 21) = 0;
  }
}

BOOL CGPathIsEmpty(CGPathRef path)
{
  if (!path)
  {
    return 1;
  }

  if (CGPathDisableTypeValidation)
  {
    return (*(path + 4) - 10) < 0xFFFFFFF7;
  }

  v2 = CFGetTypeID(path);
  if (v2 == CGPathGetTypeID())
  {
    return (*(path + 4) - 10) < 0xFFFFFFF7;
  }

  return 1;
}

uint64_t draw_path(int a1, void *cf, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1 == 2 && CGPathGetNumberOfElements(cf) >= 0x101)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2000000000;
    v37 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2000000000;
    v33 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2800000000;
    v23[3] = 0;
    v23[4] = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2000000000;
    v22[3] = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = __draw_path_block_invoke;
    v21[3] = &unk_1E6E31A60;
    v21[4] = &v34;
    v21[5] = v23;
    v21[6] = v32;
    v21[7] = &v28;
    v21[8] = &v24;
    v21[9] = v22;
    CGPathApplyWithBlock2(cf, v21);
    if (*(v35 + 6) == 1 && v29[6] <= 1 && !*(v25 + 6))
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2000000000;
      v20 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2000000000;
      Mutable = CGPathCreateMutable();
      MEMORY[0x1EEE9AC00](Mutable, v8);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __draw_path_block_invoke_2;
      v12[3] = &unk_1E6E31A88;
      v12[6] = &v17;
      v12[7] = &v13;
      v12[8] = &v38;
      v12[9] = v11;
      v12[4] = a3;
      v12[5] = v23;
      CGPathApplyWithBlock2(cf, v12);
      v9 = v18[3];
      if (v9)
      {
        CGPathAddLines(v14[3], 0, v11, v9);
        (*(a3 + 16))(a3, v14[3]);
      }

      v10 = v14[3];
      if (v10)
      {
        CFRelease(v10);
      }

      v5 = *(v39 + 6);
      _Block_object_dispose(&v13, 8);
      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v5 = (*(a3 + 16))(a3, cf);
    }

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v23, 8);
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    return v5;
  }

  else
  {
    v7 = *(a3 + 16);

    return v7(a3, cf);
  }
}

uint64_t CGContextDelegateDrawPath(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef cf)
{
  if (result)
  {
    if (cf && ((v9 = result, (CGPathDisableTypeValidation & 1) != 0) || (v10 = CFGetTypeID(cf), v10 == CGPathGetTypeID())))
    {
      v11 = *(v9 + 72);
      if (v11)
      {

        return v11(v9, a2, a3, a4, cf);
      }

      else
      {
        return 1006;
      }
    }

    else
    {
      return 1001;
    }
  }

  return result;
}

uint64_t ripc_DrawPath(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const CGPath *a5)
{
  if (a1)
  {
    v8 = *(a1 + 288);
  }

  else
  {
    v8 = 0;
  }

  result = 1000;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      v10 = 0;
      v11 = 4;
    }

    else
    {
      v10 = 0;
      v11 = 2;
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        v10 = 1;
        v11 = 1;
        break;
      case 3:
        v10 = 0;
        v11 = 3;
        break;
      case 4:
        v10 = 0;
        v11 = 5;
        break;
      default:
        return result;
    }
  }

  memset(v25, 0, sizeof(v25));
  v23 = 0;
  result = ripc_GetRenderingState(v8, a2, a3, v25);
  if (result)
  {
    v15.n128_u64[0] = *(*(a3 + 144) + 8);
    v22 = *(v8 + 24);
    v16 = *(v8 + 40);
    v21[0] = v15.n128_u64[0];
    v21[1] = v16;
    if (*(a2 + 81) == 1)
    {
      v17 = *(*(a3 + 120) + 7) & 1;
    }

    else
    {
      v17 = 0;
    }

    LOBYTE(v23) = v17;
    v24 = &v25[1] + 8;
    if ((v10 & 1) == 0)
    {
      v18 = *(v8 + 56);
      if (!v18)
      {
        v18 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
        *v18 = RIPRenderCreate_ripr_class;
        v18[2] = 1;
        *(v18 + 2) = 0;
        *(v8 + 56) = v18;
      }

      RIPRenderPath(v18, v21, a5, 0);
    }

    if (v11)
    {
      memset(v20, 0, sizeof(v20));
      ripc_GetRenderStroke(a3, v20, (a3 + 24));
      v19 = *(v8 + 64);
      if (!v19)
      {
        v19 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
        *v19 = RIPRenderCreate_ripr_class;
        v19[2] = 1;
        *(v19 + 2) = 0;
        *(v8 + 64) = v19;
      }

      RIPRenderPath(v19, v21, a5, v20);
    }

    ripc_Render(v8, a2, a3, v25, v11, v12, v13, v14, v15);
    return 0;
  }

  return result;
}

char *RIPRenderPath(char *result, uint64_t a2, const CGPath *a3, uint64_t a4)
{
  if (result)
  {
    if (a3)
    {
      if (a2)
      {
        if (*result)
        {
          result = ripr_Acquire(result, a2);
          if (result)
          {
            if (a4)
            {
              v11 = 0;
              memset(v10, 0, sizeof(v10));
              ripr_stroke_acquire(result, v10, a4, 0.0, v6, v7, v8);
            }

            v9 = *(result + 3);
            CGPathApply(a3, v9, ripr_path_fill);

            return aa_close(v9);
          }
        }
      }
    }
  }

  return result;
}

char *ripr_Acquire(uint64_t a1, uint64_t a2)
{
  if (ripr_Acquire_once != -1)
  {
    dispatch_once(&ripr_Acquire_once, &__block_literal_global_18083);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    _ZF = v4 == (a1 + 168);
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v4 = malloc_type_calloc(1uLL, 0x108uLL, 0x10E00409173D0FEuLL);
    aa_create();
    *(v4 + 3) = v13;
    if (should_use_aaline == 1)
    {
      v14 = malloc_type_calloc(1uLL, 0xFE8uLL, 0xF317D86FuLL);
      *(v14 + 31) = 0;
      *(v14 + 22) = v14 + 248;
      *(v14 + 23) = v14 + 248;
      *(v14 + 16) = xmmword_18439CE80;
      *(v14 + 42) = 0;
      *(v14 + 17) = vdup_n_s32(0x3D23D70Au);
      *(v14 + 36) = 0;
      *(v14 + 59) = 1065353216;
      *(v14 + 52) = xmmword_18439CE70;
      *(v14 + 104) = xmmword_18439CE90;
      *(v14 + 27) = 0;
      *v14 = 0u;
      *(v14 + 1) = 0u;
      *(v14 + 2) = 0u;
      v15 = malloc_type_malloc(0x1008uLL, 0x1020040EF3C788CuLL);
      if (v15)
      {
        *v15 = 0;
        *(v14 + 25) = v15 + 1;
        *(v14 + 26) = v15 + 513;
        *(v14 + 28) = v15;
LABEL_15:
        *(v4 + 4) = v14;
        RIPLayerInitialize((v4 + 120), v6, v7, v8, v9, v10, v11, v12);
        *(a1 + 16) = v4;
        goto LABEL_16;
      }

      free(v14);
    }

    v14 = 0;
    goto LABEL_15;
  }

  aa_free_edges(*(v4 + 3));
  v16 = *(v4 + 4);
  if (v16)
  {
    aal_free_edges(*(v4 + 4));
    *(v16 + 52) = xmmword_18439CE70;
  }

LABEL_16:
  v17 = *(v4 + 3);
  v18 = *(v4 + 4);
  v4[112] = 0;
  v4[113] = *(a2 + 32);
  v19 = *(a2 + 40);
  if (v19)
  {
    v20 = *(v4 + 9);
    v22 = *v19;
    v21 = v19[1];
    v23 = v19[2];
    v24 = v19[3];
    if (!v20 || *v20 != v22 || v20[1] != v21 || v20[2] != v23 || v20[3] != v24)
    {
      *(v4 + 14) = v22;
      *(v4 + 9) = v4 + 56;
      v25 = v22;
      v26 = v21;
      *(v4 + 10) = v22;
      *(v4 + 11) = v21;
      *(v4 + 16) = v23;
      *(v4 + 17) = v24;
      v27 = (v23 + v22);
      *(v4 + 15) = v21;
      v28 = (v24 + v21);
      *(v4 + 12) = v27;
      *(v4 + 13) = v28;
      aa_clipping(v17, 7, v22, v21, v27, v28);
      if (v18)
      {
        v29 = -262140.0;
        if (v25 >= -262140.0)
        {
          v30 = v25;
        }

        else
        {
          v30 = -262140.0;
        }

        if (v26 >= -262140.0)
        {
          v29 = v26;
        }

        v31 = 262140.0;
        if (v28 <= 262140.0)
        {
          v32 = v28;
        }

        else
        {
          v32 = 262140.0;
        }

        if (v27 <= 262140.0)
        {
          v31 = v27;
        }

        if (v30 > v31)
        {
          v30 = 0.0;
          v31 = 0.0;
        }

        v33 = v29 > v32;
        if (v29 > v32)
        {
          v29 = 0.0;
        }

        v18[13].f32[0] = v30;
        v18[13].f32[1] = v29;
        if (v33)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = v32;
        }

        v18[14].f32[0] = v31;
        v18[14].f32[1] = v34;
      }
    }
  }

  else
  {
    aa_clipping(v17, 4, 0.0, 0.0, 0.0, 0.0);
    if (v18)
    {
      v18[14].i32[1] = 1216348096;
      *(&v18[13] + 4) = 0x487FFFC0C87FFFC0;
    }

    *(v4 + 9) = 0;
  }

  v35 = vcvt_f32_f64(*a2);
  v36 = vcvt_f32_f64(*(a2 + 16));
  v37 = *&v35.i32[1];
  if (*(v4 + 13) != *&v35.i32[1] || *(v4 + 12) != *v35.i32 || *(v4 + 10) != v36.f32[0] || *(v4 + 11) != v36.f32[1])
  {
    v38 = fabsf(*v35.i32);
    *(v4 + 5) = v36;
    *(v4 + 6) = v35;
    v35.i32[0] = 1015021568;
    if (v38 >= 0.015625)
    {
      *v35.i32 = v38;
    }

    v39 = vmul_f32(vabs_f32(v36), vdup_n_s32(0x3C638E39u));
    __asm { FMOV            V3.2S, #1.0 }

    v44 = vbsl_s8(vcgt_f32(_D3, v39), vdup_lane_s32(v35, 0), vmul_n_f32(v39, *v35.i32));
    v45 = vmul_f32(v44, vdup_n_s32(0x3E4CCCCDu));
    v46 = vdup_n_s32(0x3D4CCCCDu);
    v47 = vbsl_s8(vcge_f32(v46, v45), v46, v45);
    v48 = vcvtq_f64_f32(vmul_f32(v47, v47));
    __asm { FMOV            V4.2D, #16.0 }

    v50 = vdupq_n_s64(0x3F70000000000000uLL);
    v51 = vmulq_f64(v48, _Q4);
    v52 = vdupq_n_s64(0x4110000000000000uLL);
    v53 = vmulq_f64(v48, vdupq_n_s64(0x3FFC71C71C71C71CuLL));
    *(v17 + 96) = vbslq_s8(vcgtq_f64(v50, v51), v50, vbslq_s8(vcgtq_f64(v51, v52), v52, v51));
    *(v17 + 112) = vbslq_s8(vcgtq_f64(v50, v53), v50, vbslq_s8(vcgtq_f64(v53, v52), v52, v53));
    if (v37 <= 1.0)
    {
      v37 = 0.0;
    }

    *(v17 + 168) = v37;
    if (v18)
    {
      __asm { FMOV            V3.2S, #5.0 }

      v55 = vdiv_f32(v44, _D3);
      v56 = vbsl_s8(vcge_f32(v46, v55), v46, v55);
      v18[17] = vmul_f32(v56, v56);
      v18[18].f32[0] = v37;
    }
  }

  return v4;
}

double aa_clipping(uint64_t a1, char a2, float a3, float a4, float a5, float a6)
{
  v6 = *(a1 + 176) & 0xFFFCFFFF | 0x10000;
  *(a1 + 176) = v6;
  if ((a2 & 2) != 0)
  {
    if (a4 < -262140.0)
    {
      a4 = -262140.0;
    }

    if (a6 > 262140.0)
    {
      a6 = 262140.0;
    }

    if (a4 <= a6)
    {
      v7 = a4;
      *(a1 + 72) = v7;
      v8 = a6;
    }

    else
    {
      *(a1 + 72) = 0;
      v8 = 0.0;
      v7 = 0.0;
    }
  }

  else
  {
    *(a1 + 72) = 0xC10FFFF800000000;
    v7 = -262143.0;
    v8 = 262143.0;
  }

  *(a1 + 88) = v8;
  if (a2)
  {
    if (a3 < -262140.0)
    {
      a3 = -262140.0;
    }

    if (a5 > 262140.0)
    {
      a5 = 262140.0;
    }

    if (a3 <= a5)
    {
      result = a3;
      *(a1 + 64) = result;
      v10 = a5;
    }

    else
    {
      *(a1 + 64) = 0;
      v10 = 0.0;
      result = 0.0;
    }
  }

  else
  {
    *(a1 + 64) = 0xC10FFFF800000000;
    result = -262143.0;
    v10 = 262143.0;
  }

  *(a1 + 80) = v10;
  if (*(a1 + 180))
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    if (v14 <= v10)
    {
      v15 = *(a1 + 48);
    }

    else
    {
      v15 = v10;
    }

    v16 = v13 > v8;
    if (v13 > v8)
    {
      v17 = v8;
    }

    else
    {
      v17 = *(a1 + 56);
    }

    v18 = v13 < v7;
    if (v13 < v7)
    {
      v19 = v7;
    }

    else
    {
      v19 = v17;
    }

    v20 = (v14 > v10) | (4 * (v14 < result));
    v21 = (2 * v16) | (8 * v18);
    if (v14 < result)
    {
      v22 = result;
    }

    else
    {
      v22 = v15;
    }

    if (v21)
    {
      v23 = v20 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = 16;
    }

    v25 = v12 > v10;
    if (v12 <= v10)
    {
      v10 = *(a1 + 32);
    }

    v26 = v11 > v8;
    if (v11 <= v8)
    {
      v8 = *(a1 + 40);
    }

    v27 = v11 < v7;
    if (v11 >= v7)
    {
      v7 = v8;
    }

    v28 = v25 | (4 * (v12 < result));
    v29 = (2 * v26) | (8 * v27);
    if (v12 >= result)
    {
      result = v10;
    }

    if (v29)
    {
      v30 = v28 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = 16;
    }

    v32 = *(a1 + 160);
    v33 = *(a1 + 128);
    v34 = *(a1 + 136);
    v35 = v28 | v29 | v31;
    *(a1 + 24) = (v32 + v33 * v22);
    *(a1 + 28) = (v32 + v34 * v19);
    v36 = (v32 + v33 * result);
    result = v32 + v34 * v7;
    *(a1 + 16) = v36;
    *(a1 + 20) = result;
    *(a1 + 176) = v24 | v6 & 0xFFFD0000 | (v35 << 8) | v20 | v21;
  }

  return result;
}

double ripr_path_fill(uint64_t result, uint64_t a2, double a3, double a4, float64x2_t a5, float64x2_t a6)
{
  v6 = *(a2 + 8);
  v7 = *a2;
  if (*a2 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v9 = *v6;
        *&v9 = *v6;
        v10 = v6[1];
        aa_lineto(result, *&v9, v10);
      }
    }

    else
    {
      v19 = *v6;
      v20 = v6[1];
      return aa_moveto(result, v19, v20);
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        v11 = *v6;
        v11.f32[0] = *v6;
        v12 = v6[1];
        a5.f64[0] = v6[2];
        *a5.f64 = a5.f64[0];
        v13 = v6[3];
        aa_quadto(result, v11, v12, a5, v13);
        break;
      case 3:
        v14 = *v6;
        v14.f32[0] = *v6;
        v15 = v6[1];
        v16 = v6[2];
        a6.f64[0] = v6[3];
        *&v16 = v16;
        *a6.f64 = a6.f64[0];
        v17 = v6[4];
        *&v17 = v17;
        v18 = v6[5];
        aa_cubeto(result, v14, v15, *&v16, a6, *&v17, v18);
        break;
      case 4:
        aa_close(result);
        break;
    }
  }

  return v8;
}

CFDataRef CGFontCopyTableForTag(CFDataRef font, uint32_t tag)
{
  if (font)
  {
    return (*(*(font + 2) + 432))(*(font + 14), *&tag);
  }

  return font;
}

size_t CGFontGetNumberOfGlyphs(CGFontRef font)
{
  result = get_font_info(font);
  if (result)
  {
    return *result;
  }

  return result;
}

void CGFontSetEncodingVector(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!atomic_load_explicit((a1 + 32), memory_order_acquire))
    {
      v4 = malloc_type_malloc(0x200uLL, 0x1000040BDFB0063uLL);
      for (i = 0; i != 512; i += 2)
      {
        *&v4[i] = *(a2 + i);
      }

      v6 = 0;
      atomic_compare_exchange_strong((a1 + 32), &v6, v4);
      if (v6)
      {

        free(v4);
      }
    }
  }
}

void *create_private_data_with_variations()
{
  result = FPFontCreateCopyWithVariation();
  if (result)
  {
    v1 = result;
    result = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040D8C947D5uLL);
    *result = 1;
    result[1] = v1;
  }

  return result;
}

uint64_t CGImageCopyHeadroomFromOriginal(uint64_t *a1, CGImage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    if (!a2)
    {
      CGPostError("%s no original image to copy headroom from", 0, a3, a4, a5, a6, a7, a8, "CGImageCopyHeadroomFromOriginal");
    }

    return 0;
  }

  v18 = 0;
  HeadroomInfo = CGImageGetHeadroomInfo(a2, &v18);
  result = 0;
  if (v18 && HeadroomInfo != 0.0)
  {
    if (CGImageSetHeadroom(a1, v18, HeadroomInfo))
    {
      return 1;
    }

    CGPostError("%s failed to copy headroom", v11, v12, v13, v14, v15, v16, v17, "CGImageCopyHeadroomFromOriginal");
    return 0;
  }

  return result;
}

void *CGFontCreateWithVariations(void *cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = cf;
  if (cf)
  {
    if (!a2 || !a3)
    {
      CFRetain(cf);
      return v8;
    }

    v11 = CGFontCreate(cf, a2, a3, a4, a5, a6, a7, a8);
    if (v11)
    {
      v19 = v11;
      VTable = CGFontGetVTable(v11, v12, v13, v14, v15, v16, v17, v18);
      v21 = (*(VTable + 48))(v8[14], a2, a3);
      v19[14] = v21;
      if (v21)
      {
        v22 = atomic_load(v8 + 4);
        CGFontSetEncodingVector(v19, v22);
        return v19;
      }

      CFRelease(v19);
    }

    return 0;
  }

  return v8;
}

void CG::Path::apply(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1)
  {
    return;
  }

  v33 = 0;
  if (v2 <= 5)
  {
    if (v2 == 1)
    {
      v16 = *(a1 + 48);
      v34.f64[0] = *(a1 + 40);
      v34.f64[1] = v16;
      v17 = *(a1 + 8);
      v18 = *(a1 + 16);
      v32[0] = v34.f64[0] + v17;
      v32[1] = v16 + v18;
      v19 = *(a1 + 24);
      v20 = *(a1 + 32);
      v31[0] = v34.f64[0] + v17 + v19;
      v31[1] = v16 + v18 + v20;
      v30[0] = v34.f64[0] + v19;
      v30[1] = v16 + v20;
      (*(a2 + 16))(a2, 0, &v34, &v33);
      if ((v33 & 1) == 0)
      {
        (*(a2 + 16))(a2, 1, v32, &v33);
        if ((v33 & 1) == 0)
        {
          (*(a2 + 16))(a2, 1, v31, &v33);
          if ((v33 & 1) == 0)
          {
            (*(a2 + 16))(a2, 1, v30, &v33);
            if ((v33 & 1) == 0)
            {
              (*(a2 + 16))(a2, 4, 0, &v33);
            }
          }
        }
      }
    }

    else
    {
      if (v2 != 5)
      {
LABEL_28:
        CG::Path::Path(&v34, a1);
        if (LODWORD(v34.f64[0]) != 9)
        {
          CG::Path::convert_to_huge_(&v34);
        }

        CG::Path::apply(&v34, a2);
        CG::Path::~Path(&v34);
        return;
      }

      (*(a2 + 16))(a2, 0, a1 + 8, &v33);
      if ((v33 & 1) == 0)
      {
        (*(a2 + 16))(a2, 1, a1 + 24, &v33);
      }
    }
  }

  else
  {
    switch(v2)
    {
      case 6:
        v10 = *(a1 + 56);
        LOBYTE(v32[0]) = 0;
        v25 = *(a1 + 24);
        v26 = *(a1 + 40);
        v27 = *(a1 + 8);
        v34 = vaddq_f64(v26, vaddq_f64(v27, vmulq_f64(v25, 0)));
        (*(a2 + 16))(a2, 0, &v34, v32);
        if ((LOBYTE(v32[0]) & 1) == 0)
        {
          if (v10 >= 1.57079633)
          {
            v21 = 0.0;
            v11 = 1.0;
            while (1)
            {
              v34 = vaddq_f64(v26, vmlaq_n_f64(vmulq_n_f64(v25, v21 + v11 * 0.55228475), v27, v11 + v21 * -0.55228475));
              v35 = vaddq_f64(v26, vmlaq_n_f64(vmulq_n_f64(v25, v11 + v21 * 0.55228475), v27, -(v21 - v11 * 0.55228475)));
              v28 = v21;
              v29 = v11;
              v36 = vaddq_f64(v26, vmlsq_lane_f64(vmulq_n_f64(v25, v11), v27, v21, 0));
              (*(a2 + 16))(a2, 3, &v34, v32);
              v12 = v29;
              if (LOBYTE(v32[0]))
              {
                break;
              }

              v11 = -v28;
              v10 = v10 + -1.57079633;
              v21 = v29;
              if (v10 < 1.57079633)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            v11 = 1.0;
            v12 = 0.0;
LABEL_35:
            if (v10 > 0.00000001)
            {
              v23 = *(a1 + 72);
              v22 = *(a1 + 80);
              v24 = *(a1 + 64);
              v34 = vaddq_f64(v26, vmlaq_n_f64(vmulq_n_f64(v25, v12 + v22 * v11), v27, v11 - v22 * v12));
              v35 = vaddq_f64(v26, vmlaq_n_f64(vmulq_n_f64(v25, v23 - v22 * v24), v27, v24 + v22 * v23));
              v36 = vaddq_f64(v26, vmlaq_n_f64(vmulq_n_f64(v25, v23), v27, v24));
              (*(a2 + 16))(a2, 3, &v34, v32);
            }
          }
        }

        break;
      case 8:
        if (*(a1 + 10))
        {
          v13 = 0;
          v14 = 0;
          v15 = *(a1 + 12);
          do
          {
            (*(a2 + 16))(a2, v15 & 7, a1 + 16 + 16 * v13, &v33);
            if (v33)
            {
              break;
            }

            v13 += point_counts[v15 & 7];
            v15 >>= 3;
            ++v14;
          }

          while (v14 < *(a1 + 10));
        }

        break;
      case 9:
        if (*(a1 + 16))
        {
          v5 = 0;
          v6 = 0;
          v7 = -1;
          do
          {
            v8 = *(a1 + 32);
            v9 = *(v8 + *(a1 + 24) + v7);
            (*(a2 + 16))(a2, v9, v8 + 16 * v6, &v33);
            if (v33)
            {
              break;
            }

            v6 += point_counts[v9];
            ++v5;
            --v7;
          }

          while (v5 < *(a1 + 16));
        }

        return;
      default:
        goto LABEL_28;
    }
  }
}

void CGPathAddPath(CGMutablePathRef path1, const CGAffineTransform *m, CGPathRef path2)
{
  if (path1)
  {
    if (CGPathDisableTypeValidation)
    {
      if (!path2)
      {
        return;
      }
    }

    else
    {
      v11 = CFGetTypeID(path1);
      TypeID = CGPathGetTypeID();
      if (!path2)
      {
        return;
      }

      if (v11 != TypeID)
      {
        return;
      }

      if ((CGPathDisableTypeValidation & 1) == 0)
      {
        v13 = CFGetTypeID(path2);
        if (v13 != CGPathGetTypeID())
        {
          return;
        }
      }
    }

    {

      CG::Path::append((path1 + 16), (path2 + 16), m, v14, v15, v16, v17, v18);
    }
  }
}

float64x2_t CG::Path::add_line_to_point(CG::Path *this, float64x2_t *a2, const CGAffineTransform *a3, float64x2_t result)
{
  if (a2)
  {
    result = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_laneq_f64(a2[1], result, 1), *a2, result.f64[0]));
  }

  v5 = *this;
  v11 = result;
  if (*this == 9)
  {
    goto LABEL_10;
  }

  if (v5 == 8)
  {
    goto LABEL_7;
  }

  if (!v5)
  {
    *this = 8;
LABEL_7:
    v6 = *(this + 4);
    if (v6 <= 6)
    {
      *(this + 4) = v6 + 1;
      *(this + v6 + 1) = result;
      v7 = *(this + 5);
      *(this + 3) |= 1 << (3 * v7);
      *(this + 5) = v7 + 1;
      return result;
    }
  }

  CG::Path::convert_to_huge_(this);
  result = v11;
LABEL_10:
  *(this + 40) = vbslq_s8(vcgtq_f64(*(this + 40), result), result, *(this + 40));
  *(this + 56) = vbslq_s8(vcgtq_f64(result, *(this + 56)), result, *(this + 56));
  CG::Path::reserve_space(this, 1, 1);
  v9 = *(this + 3);
  v8 = *(this + 4);
  v10 = vaddq_s64(*(this + 8), vdupq_n_s64(1uLL));
  result = v11;
  *(v8 + 16 * *(this + 1)) = v11;
  *(this + 8) = v10;
  *(v8 + v9 - v10.i64[1]) = 1;
  return result;
}

CGMutablePathRef CGPathCreateMutableCopy(CGPathRef path)
{
  if (!path)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v2 = CFGetTypeID(path);
    if (v2 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 128, v4, v5, v6, v7, v8, v9);
  v11 = Instance;
  if (Instance)
  {
    CG::Path::Path(Instance + 16, path + 16);
  }

  return v11;
}

void CG::Path::apply_transform(CG::Path *this, const CGAffineTransform *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (1)
  {
    v10 = *this;
    if (*this != 7)
    {
      break;
    }

    if (fabs(a2->a) == 1.0 && fabs(a2->d) == 1.0 && a2->b == 0.0 && a2->c == 0.0)
    {
      ty = a2->ty;
      v12 = floor(ty);
      if (floor(a2->tx) == a2->tx && v12 == ty)
      {
        v30 = *(this + 1);
        v31 = *&a2->c;
        v34[0] = *&a2->a;
        v34[1] = v31;
        v34[2] = *&a2->tx;
        v32 = CGRegionCreateByTransformingRegion(v30, v34, 1, a4, a5, a6, a7, a8);
        v33 = *(this + 1);
        if (v33)
        {
          CFRelease(v33);
        }

        *(this + 1) = v32;
        return;
      }
    }

    CG::Path::convert_to_huge_(this);
  }

  if (v10 <= 4)
  {
    if (v10 <= 2 && v10 != 1 && v10 != 2)
    {
      return;
    }

LABEL_19:
    v14 = *&a2->c;
    v15 = vmlaq_n_f64(vmulq_n_f64(v14, *(this + 4)), *&a2->a, *(this + 3));
    v16 = vaddq_f64(*&a2->tx, vmlaq_n_f64(vmulq_n_f64(v14, *(this + 6)), *&a2->a, *(this + 5)));
    *(this + 8) = vmlaq_n_f64(vmulq_n_f64(v14, *(this + 2)), *&a2->a, *(this + 1));
    *(this + 24) = v15;
    *(this + 40) = v16;
    return;
  }

  if (v10 <= 7)
  {
    if (v10 == 5)
    {
      *(this + 8) = vaddq_f64(*&a2->tx, vmlaq_n_f64(vmulq_n_f64(*&a2->c, *(this + 2)), *&a2->a, *(this + 1)));
      *(this + 24) = vaddq_f64(*&a2->tx, vmlaq_n_f64(vmulq_n_f64(*&a2->c, *(this + 4)), *&a2->a, *(this + 3)));
      return;
    }

    if (v10 != 6)
    {
      return;
    }

    goto LABEL_19;
  }

  if (v10 == 8)
  {
    v25 = *(this + 4);
    if (*(this + 4))
    {
      v26 = *&a2->a;
      v27 = *&a2->c;
      v28 = (this + 16);
      v29 = *&a2->tx;
      do
      {
        *v28 = vaddq_f64(v29, vmlaq_n_f64(vmulq_n_f64(v27, v28[1]), v26, *v28));
        v28 += 2;
        --v25;
      }

      while (v25);
    }
  }

  else if (v10 == 9)
  {
    v17 = *(this + 1);
    if (v17)
    {
      v18 = *(this + 4);
      v19 = *&a2->a;
      v20 = *&a2->c;
      v21 = *&a2->tx;
      v22 = vdupq_n_s64(0xFFF0000000000000);
      v23 = vdupq_n_s64(0x7FF0000000000000uLL);
      do
      {
        v24 = vaddq_f64(v21, vmlaq_n_f64(vmulq_n_f64(v20, v18[1]), v19, *v18));
        *v18 = v24;
        v18 += 2;
        v23 = vbslq_s8(vcgtq_f64(v23, v24), v24, v23);
        v22 = vbslq_s8(vcgtq_f64(v24, v22), v24, v22);
        --v17;
      }

      while (v17);
    }

    else
    {
      v22 = vdupq_n_s64(0xFFF0000000000000);
      v23 = vdupq_n_s64(0x7FF0000000000000uLL);
    }

    *(this + 40) = v23;
    *(this + 56) = v22;
  }
}

void CG::Path::close_subpath(CG::Path *this)
{
  v2 = *this;
  if (*this <= 3)
  {
    if ((v2 - 1) < 3)
    {
      return;
    }

    if (!v2)
    {
      *this = 8;
LABEL_12:
      v3 = *(this + 5);
      if (!v3)
      {
        return;
      }

      v4 = *(this + 3);
      v5 = 3 * v3 - 3;
      if ((v4 >> v5) == 4)
      {
        return;
      }

      v6 = *(this + 4);
      if (v6 <= 6)
      {
        v7 = v6 - 1;
        v8 = *(this + 5);
        do
        {
          if (((v4 >> v5) & 7) == 0)
          {
            break;
          }

          v7 -= point_counts[(v4 >> v5) & 7];
          v5 -= 3;
          v9 = __OFSUB__(v8--, 1);
        }

        while (!((v8 < 0) ^ v9 | (v8 == 0)));
        *(this + 4) = v6 + 1;
        *(this + v6 + 1) = *(this + v7 + 1);
        *(this + 3) = v4 | (4 << (3 * v3));
        *(this + 5) = v3 + 1;
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (v2 <= 7)
  {
    if (v2 == 4)
    {
      *(this + 57) = 1;
      return;
    }

    if (v2 == 7)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v2 == 8)
  {
    goto LABEL_12;
  }

  if (v2 != 9)
  {
LABEL_20:
    CG::Path::convert_to_huge_(this);
  }

  v10 = *(this + 2);
  if (v10 && *(*(this + 4) + *(this + 3) - v10) != 4)
  {
    CG::Path::reserve_space(this, 1, 1);
    v12 = *(this + 3);
    v11 = *(this + 4);
    v13 = vaddq_s64(*(this + 8), vdupq_n_s64(1uLL));
    *(v11 + 16 * *(this + 1)) = *(v11 + 16 * *(this + 9));
    *(this + 8) = v13;
    *(v11 + v12 - v13.i64[1]) = 4;
    ++*(this + 10);
  }
}

void CGPathCloseSubpath(CGMutablePathRef path)
{
  if (path)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v9 = CFGetTypeID(path), v9 == CGPathGetTypeID()))
    {
      v11 = *(path + 4);
      v10 = (path + 16);
      if ((v11 - 10) > 0xFFFFFFF6)
      {

        CG::Path::close_subpath(v10);
      }

      else
      {
        CGPostError("%s: no current point.", v1, v2, v3, v4, v5, v6, v7, "CGPathCloseSubpath");
      }
    }
  }
}

void CGPathAddLineToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x, CGFloat y)
{
  if (path)
  {
    v11 = path;
    v24 = y;
    v25 = x;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v12 = CFGetTypeID(path), path = CGPathGetTypeID(), y = v24, x = v25, v12 == path))
    {
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError(path, m, v4, v5, v6, v7, v8, v9, v27);
      }

      else
      {
        v21.f64[0] = v25;
        if (is_valid)
        {
          v23 = *(v11 + 4);
          v22 = (v11 + 16);
          if ((v23 - 10) > 0xFFFFFFF6)
          {
            v21.f64[1] = v24;

            CG::Path::add_line_to_point(v22, m, v15, v21);
          }

          else
          {
            CGPostError("%s: no current point.", v14, v15, v16, v17, v18, v19, v20, "CGPathAddLineToPoint");
          }
        }
      }
    }
  }
}

CGColorRef CGColorCreateSRGB(CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha)
{
  v17 = *MEMORY[0x1E69E9840];
  components[0] = red;
  components[1] = green;
  v15 = blue;
  v16 = alpha;
  v4 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  v5 = CGColorCreate(v4, components);
  CGColorSpaceRelease(v4);
  if (!v5)
  {
    CGPostError("Color creation failed for SRGB colorspace %p, {%f, %f, %f %f}", v6, v7, v8, v9, v10, v11, v12, v4);
  }

  return v5;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  if (path && ((CGPathDisableTypeValidation & 1) != 0 || (v9 = CFGetTypeID(path), v9 == CGPathGetTypeID())) && (v11 = *(path + 4), v10 = (path + 16), (v11 - 10) > 0xFFFFFFF6))
  {
    *&v12 = *&CG::Path::current_point(v10, v1, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    CGPostError("%s: no current point.", v1, v2, v3, v4, v5, v6, v7, "CGPathGetCurrentPoint");
    v12 = 0.0;
    v13 = 0.0;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

float64x2_t CG::Path::current_point(CG::Path *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *this;
  if (*this > 4)
  {
    if (v8 <= 6)
    {
      if (v8 == 5)
      {
        return *(this + 24);
      }

      else
      {
        if (v8 != 6)
        {
          goto LABEL_31;
        }

        return vaddq_f64(*(this + 40), vmlaq_n_f64(vmulq_n_f64(*(this + 24), *(this + 9)), *(this + 8), *(this + 8)));
      }
    }

    else if (v8 == 7)
    {
      v17 = CGSRegionPathEnumerator(*(this + 1));
      for (i = 0; ; i |= v20)
      {
        v19 = CGSNextPoint(v17, v26.i64);
        if (!v19)
        {
          break;
        }

        v20 = v19 < 0;
        v21 = vdup_n_s32(v20);
        v22.i64[0] = v21.u32[0];
        v22.i64[1] = v21.u32[1];
        v25 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL)), v26, v25);
      }

      CGSReleaseRegionEnumerator(v17);
      v23 = vdup_n_s32(i);
      v24.i64[0] = v23.u32[0];
      v24.i64[1] = v23.u32[1];
      return vbslq_s8(vcltzq_s64(vshlq_n_s64(v24, 0x3FuLL)), v25, v26);
    }

    else
    {
      if (v8 == 8)
      {
        if (*(this + 4))
        {
          v16 = (this + 16 * *(this + 4));
        }

        else
        {
          v16 = &CGPointZero;
        }
      }

      else
      {
        if (v8 != 9)
        {
          goto LABEL_31;
        }

        v15 = *(this + 1);
        if (v15)
        {
          v16 = (*(this + 4) + 16 * v15 - 16);
        }

        else
        {
          v16 = &CGPointZero;
        }
      }

      return *v16;
    }
  }

  else if (v8 <= 1)
  {
    result = 0uLL;
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_31;
      }

      return *(this + 40);
    }
  }

  else
  {
    if (v8 == 2)
    {
LABEL_6:
      __asm { FMOV            V3.2D, #0.5 }

      return vaddq_f64(*(this + 40), vaddq_f64(*(this + 8), vmulq_f64(*(this + 24), _Q3)));
    }

    if (v8 != 3)
    {
      if (v8 == 4)
      {
        goto LABEL_6;
      }

LABEL_31:
      _CGHandleAssert("current_point", 1593, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Paths/path.cc", "0", "unhandled type %u", a6, a7, a8, v8);
    }

    return vaddq_f64(*(this + 40), vaddq_f64(*(this + 8), vmulq_n_f64(*(this + 24), (1.0 - *(this + 10) + *(this + 12)) * 0.5)));
  }

  return result;
}

CGFloat CGRectGetWidth(CGRect rect)
{
  if (rect.size.width < 0.0 || rect.size.height < 0.0)
  {
    rect = CGRectStandardize(rect);
  }

  return rect.size.width;
}

CFMutableDictionaryRef __CGColorGetConstantColor_block_invoke()
{
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CGColorGetConstantColor_constant_colors = result;
  return result;
}

CGColorRef CGColorCreateGenericGrayGamma2_2(CGFloat gray, CGFloat alpha)
{
  components[2] = *MEMORY[0x1E69E9840];
  components[0] = gray;
  components[1] = alpha;
  v2 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  v3 = CGColorCreate(v2, components);
  CGColorSpaceRelease(v2);
  if (!v3)
  {
    CGPostError("Color creation failed for gray 2.2 colorspace %p, {%f, %f}", v4, v5, v6, v7, v8, v9, v10, v2);
  }

  return v3;
}

void CG::Path::append(CG::Path *this, const CG::Path *a2, const CGAffineTransform *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a2;
  if (*this)
  {
    if (v11)
    {
      if (*this != 9)
      {
        CG::Path::convert_to_huge_(this);
        v11 = *a2;
      }

      v12 = *(this + 1);
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
          if (v11 == 3)
          {
            CG::Path::append_uneven_rounded_rect(this, &unit_rect, (a2 + 56), (a2 + 8));
          }

          else
          {
            CG::Path::append_ellipse(this, &unit_rect, *(a2 + 57), *(a2 + 56), (a2 + 8));
          }
        }

        else if (v11 == 1)
        {
          CG::Path::append_rect(this, &unit_rect, (a2 + 8));
        }

        else if (v11 == 2)
        {
          CG::Path::append_rounded_rect(this, &unit_rect, *(a2 + 56), (a2 + 8));
        }
      }

      else if (v11 <= 6)
      {
        if (v11 == 5)
        {
          CG::Path::append_line_segment(this, (a2 + 8), (a2 + 24), 0);
        }

        else
        {
          CG::Path::add_arc_relative(this, &CGPointZero, 1.0, 0.0, *(a2 + 7), (a2 + 8), 1);
        }
      }

      else
      {
        switch(v11)
        {
          case 7:
            CG::Path::append_region(this, *(this + 1), 0, a4, a5, a6, a7, a8);
            break;
          case 8:
            CG::Path::append_tiny(this, a2 + 1, *(a2 + 4), *(a2 + 3), *(a2 + 5));
            break;
          case 9:
            CG::Path::reserve_space(this, *(a2 + 1), *(a2 + 2));
            memcpy((*(this + 4) + 16 * *(this + 1)), *(a2 + 4), 16 * *(a2 + 1));
            memcpy((*(this + 4) + *(this + 3) - *(this + 2) - *(a2 + 2)), (*(a2 + 4) + *(a2 + 3) - *(a2 + 2)), *(a2 + 2));
            v13 = *(this + 2);
            *(this + 1) += *(a2 + 1);
            *(this + 2) = v13 + *(a2 + 2);
            break;
        }
      }

      v23 = *(this + 1);
      if (!a3)
      {
        goto LABEL_46;
      }

      if (v12 < v23)
      {
        v24 = 16 * v12;
        do
        {
          *(*(this + 4) + v24) = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, *(*(this + 4) + v24 + 8)), *&a3->a, *(*(this + 4) + v24)));
          ++v12;
          v23 = *(this + 1);
          v24 += 16;
        }

        while (v12 < v23);
      }

      if (a3->a != 1.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&a3->b), vceqq_f64(*&a3->d, xmmword_18439C630))))) & 1) != 0 || a3->ty != 0.0)
      {
        v33 = vdupq_n_s64(0x7FF0000000000000uLL);
        *(this + 40) = v33;
        v34 = vdupq_n_s64(0xFFF0000000000000);
        *(this + 56) = v34;
        if (v23)
        {
          v35 = *(this + 4);
          do
          {
            v36 = *v35++;
            v33 = vbslq_s8(vcgtq_f64(v33, v36), v36, v33);
            *(this + 40) = v33;
            v34 = vbslq_s8(vcgtq_f64(v36, v34), v36, v34);
            *(this + 56) = v34;
            --v23;
          }

          while (v23);
        }
      }

      else
      {
LABEL_46:
        if (v23)
        {
          v25.f64[0] = CG::Path::path_bounding_box(a2, a2, a3, a4, a5, a6, a7, a8);
          v25.f64[1] = v26;
          v27 = vbslq_s8(vcgtq_f64(*(this + 40), v25), v25, *(this + 40));
          v29.f64[1] = v28;
          v30 = vaddq_f64(v25, v29);
          *(this + 40) = vbslq_s8(vcgtq_f64(v27, v30), v30, v27);
          v31 = vbslq_s8(vcgtq_f64(v25, *(this + 56)), v25, *(this + 56));
          v32 = vbslq_s8(vcgtq_f64(v30, v31), v30, v31);
        }

        else
        {
          *(this + 40) = vdupq_n_s64(0x7FF0000000000000uLL);
          v32 = vdupq_n_s64(0xFFF0000000000000);
        }

        *(this + 56) = v32;
      }
    }

    return;
  }

  *this = v11;
  if (v11 <= 4)
  {
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v37 = *(a2 + 8);
        v38 = *(a2 + 24);
        *(this + 40) = *(a2 + 40);
        *(this + 24) = v38;
        *(this + 8) = v37;
        v16 = *(a2 + 56);
        v39 = *(a2 + 72);
        v40 = *(a2 + 88);
        *(this + 104) = *(a2 + 104);
        *(this + 88) = v40;
        *(this + 72) = v39;
LABEL_59:
        *(this + 56) = v16;
        if (!a3)
        {
          return;
        }

        goto LABEL_65;
      }

      v17 = *(a2 + 8);
      v18 = *(a2 + 24);
      v19 = *(a2 + 40);
      *(this + 7) = *(a2 + 7);
    }

    else if (v11 == 1)
    {
      v17 = *(a2 + 8);
      v18 = *(a2 + 24);
      v19 = *(a2 + 40);
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_64;
      }

      v17 = *(a2 + 8);
      v18 = *(a2 + 24);
      v19 = *(a2 + 40);
      *(this + 56) = *(a2 + 56);
    }

    *(this + 40) = v19;
LABEL_56:
    *(this + 24) = v18;
    *(this + 8) = v17;
    if (!a3)
    {
      return;
    }

    goto LABEL_65;
  }

  if (v11 <= 6)
  {
    if (v11 != 5)
    {
      *(this + 8) = *(a2 + 8);
      v20 = *(a2 + 24);
      v21 = *(a2 + 40);
      v22 = *(a2 + 56);
      *(this + 72) = *(a2 + 72);
      *(this + 56) = v22;
      *(this + 40) = v21;
      *(this + 24) = v20;
    }

    v17 = *(a2 + 8);
    v18 = *(a2 + 24);
    goto LABEL_56;
  }

  if (v11 == 7)
  {
    v41 = *(a2 + 1);
    if (v41)
    {
      v41 = CFRetain(v41);
    }

    *(this + 1) = v41;
LABEL_64:
    if (!a3)
    {
      return;
    }

    goto LABEL_65;
  }

  if (v11 != 8)
  {
    if (v11 == 9)
    {
      *(this + 9) = *(a2 + 9);
      *(this + 10) = *(a2 + 10);
      v14 = *(a2 + 3);
      *(this + 3) = v14;
      *(this + 1) = *(a2 + 1);
      *(this + 2) = *(a2 + 2);
      v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
      *(this + 4) = v15;
      memcpy(v15, *(a2 + 4), 16 * *(this + 1));
      memcpy((*(this + 4) + *(this + 3) - *(this + 2)), (*(a2 + 4) + *(this + 3) - *(this + 2)), *(this + 2));
      *(this + 40) = *(a2 + 40);
      v16 = *(a2 + 56);
      goto LABEL_59;
    }

    goto LABEL_64;
  }

  v42 = *(a2 + 8);
  v43 = *(a2 + 24);
  v44 = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 40) = v44;
  *(this + 24) = v43;
  *(this + 8) = v42;
  v45 = *(a2 + 72);
  v46 = *(a2 + 88);
  v47 = *(a2 + 104);
  *(this + 15) = *(a2 + 15);
  *(this + 104) = v47;
  *(this + 88) = v46;
  *(this + 72) = v45;
  if (!a3)
  {
    return;
  }

LABEL_65:

  CG::Path::apply_transform(this, a3, a3, a4, a5, a6, a7, a8);
}

void CGPathApplyWithBlock(CGPathRef path, CGPathApplyBlock block)
{
  if (path)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v4 = CFGetTypeID(path), v4 == CGPathGetTypeID()))
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = __CGPathApplyWithBlock_block_invoke;
      v5[3] = &unk_1E6E32A90;
      v5[4] = block;
      CG::Path::apply(path + 16, v5);
    }
  }
}

uint64_t __CGPathApplyWithBlock_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), &v4);
}

void td_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  CGColorSpaceRelease(*(a1 + 96));
  CGPropertiesRelease(*(a1 + 64));
  v3 = *(a1 + 56);
  if (v3 && *(a1 + 24))
  {

    v3();
  }
}

void CGPathAddEllipseInRect(CGMutablePathRef path, const CGAffineTransform *m, CGRect rect)
{
  if (path)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v15 = CFGetTypeID(path), v15 == CGPathGetTypeID()))
    {
      {
        v17.origin.x = x;
        v17.origin.y = y;
        v17.size.width = width;
        v17.size.height = height;
        v16 = CGRectStandardize(v17);
        CG::Path::append_ellipse((path + 16), &v16, 1, 0, m);
      }
    }
  }
}

uint64_t CGContextDelegateDrawRects(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 64);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t validate_gray_bitmap_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  v9 = v8 & 0x1F;
  if ((v8 & 0x1F) != 0)
  {
    v10 = v9 == 5 || v9 == 1;
    if (!v10 || *(a1 + 80) != 8 || *(a1 + 72) != 16)
    {
      goto LABEL_28;
    }

    v11 = 2;
LABEL_10:
    if ((v8 & 0x7000) == 0)
    {
      v12 = 8;
      goto LABEL_12;
    }

LABEL_28:
    v16 = "Valid parameters for Gray color space model are:\n\t8  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaOnly\n\t8  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNone\n\t16 bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t16 bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t16 bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone\n\t16 bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder16Little\n\t32 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents";
    goto LABEL_29;
  }

  v14 = *(a1 + 72);
  if (v14 != *(a1 + 80))
  {
    goto LABEL_28;
  }

  switch(v14)
  {
    case 32:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_28;
      }

      v11 = 4;
      v12 = 32;
      v17 = v8 & 0x7000;
      if ((v8 & 0x7000) != 0 && v17 != 0x2000 && v17 != 0x4000)
      {
        v16 = "Valid parameters for Gray color space model are:\n\t8  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaOnly\n\t8  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNone\n\t16 bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t16 bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t16 bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone\n\t16 bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder16Little\n\t32 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\nvalid byte order flags are kCGBitmapByteOrderDefault, kCGBitmapByteOrder32Big, kCGBitmapByteOrder32Little";
        goto LABEL_29;
      }

      break;
    case 16:
      v15 = v8 & 0x7000;
      if ((v8 & 0x100) != 0)
      {
        if (v15 != 4096)
        {
          v16 = "Valid parameters for Gray color space model are:\n\t8  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaOnly\n\t8  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNone\n\t16 bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t16 bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t16 bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone\n\t16 bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder16Little\n\t32 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\nrequired byte order flag is kCGBitmapByteOrder16Little";
          goto LABEL_29;
        }

        v11 = 2;
        v12 = 16;
      }

      else
      {
        v11 = 2;
        v12 = 16;
        if ((v8 & 0x7000) != 0 && v15 != 4096 && v15 != 12288)
        {
          v16 = "Valid parameters for Gray color space model are:\n\t8  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaOnly\n\t8  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNone\n\t16 bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t16 bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t16 bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone\n\t16 bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder16Little\n\t32 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\nvalid byte order flags are kCGBitmapByteOrderDefault, kCGBitmapByteOrder16Big, kCGBitmapByteOrder16Little";
LABEL_29:
          unsupported(a1, v16, a3, a4, a5, a6, a7, a8);
          return 0;
        }
      }

      break;
    case 8:
      v11 = 1;
      goto LABEL_10;
    default:
      goto LABEL_28;
  }

LABEL_12:
  if ((*(a1 + 88) & (v11 - 1)) != 0 || (v8 & 0xF0000) != 0)
  {
    goto LABEL_28;
  }

  return check_sizes(a1, v12, a3, a4, a5, a6, a7, a8);
}

CGDataProviderRef CGDataProviderCreateWithURL(CGDataProviderRef url)
{
  v13 = *MEMORY[0x1E69E9840];
  if (url)
  {
    v1 = url;
    v2 = CGCFURLGetType(url);
    if ((v2 - 1) >= 2)
    {
      if (!v2 && CFURLGetFileSystemRepresentation(v1, 1u, buffer, 1025))
      {
        return CGDataProviderCreateWithFilename(buffer);
      }

      return 0;
    }

    v3 = CFGetTypeID(v1);
    if (v3 == CFURLGetTypeID())
    {
      v4 = CGCFURLGetType(v1);
      if (v4 == 2)
      {
        url = CFHTTPMessageCreateRequest(0, @"GET", v1, *MEMORY[0x1E695ADB0]);
        if (!url)
        {
          return url;
        }

        v5 = url;
        v8 = http_message_send_request(url);
        if (v8)
        {
          v9 = v8;
          i = CFHTTPMessageCopyBody(v8);
          CFRelease(v9);
          CFRelease(v5);
          if (i)
          {
LABEL_22:
            v11 = CGDataProviderCreateWithCFData(i);
            CFRelease(i);
            return v11;
          }

          return 0;
        }

        goto LABEL_18;
      }

      if (v4 == 1)
      {
        url = CFReadStreamCreateWithFTPURL(0, v1);
        if (!url)
        {
          return url;
        }

        v5 = url;
        if (CFReadStreamOpen(url))
        {
          for (i = CFDataCreateMutable(0, 0); ; CFDataAppendBytes(i, buffer, v7))
          {
            v7 = CFReadStreamRead(v5, buffer, 1024);
            if (v7 < 1)
            {
              break;
            }
          }

          CFReadStreamClose(v5);
          CFRelease(v5);
          if (!i)
          {
            return 0;
          }

          if (CFDataGetLength(i))
          {
            goto LABEL_22;
          }

          v10 = i;
          goto LABEL_19;
        }

LABEL_18:
        v10 = v5;
LABEL_19:
        CFRelease(v10);
      }
    }

    return 0;
  }

  return url;
}

uint64_t CGCFURLGetType(const __CFURL *a1)
{
  v1 = CFURLCopyScheme(a1);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = CFStringCompare(v1, @"file", 1uLL);
  v4 = CFStringCompare(v2, @"ftp", 1uLL);
  if (CFStringCompare(v2, @"http", 1uLL) == kCFCompareEqualTo || (v3 == kCFCompareEqualTo ? (v5 = 0) : (v5 = -1), v4 == kCFCompareEqualTo ? (v6 = 1) : (v6 = v5), CFStringCompare(v2, @"https", 1uLL) == kCFCompareEqualTo))
  {
    v6 = 2;
  }

  CFRelease(v2);
  return v6;
}

CGDataProviderRef CGDataProviderCreateWithFilename(const char *filename)
{
  if (!filename)
  {
    return 0;
  }

  v56 = 45;
  v55 = 78;
  v2 = CFCopySearchPathForDirectoriesInDomains();
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count < 1)
    {
      LOBYTE(v7) = 45;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      v7 = 45;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        v9 = CFURLCopyAbsoluteURL(ValueAtIndex);
        if (v9)
        {
          v10 = v9;
          v11 = CFURLCopyPath(v9);
          if (v11)
          {
            v12 = v11;
            CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
            if (CStringPtr)
            {
              v14 = CStringPtr;
              v15 = strlen(CStringPtr);
              v16 = strncasecmp(v14, filename, v15);
              v17 = 0x554C53u >> (8 * v6);
              if (v6 > 2)
              {
                v17 = v7;
              }

              if (!v16)
              {
                v7 = v17;
              }
            }

            CFRelease(v12);
          }

          CFRelease(v10);
        }

        ++v6;
      }

      while (v5 != v6);
    }

    LOBYTE(v56) = v7;
    CFRelease(v3);
  }

  v18 = CFCopyHomeDirectoryURLForUser();
  if (v18)
  {
    v19 = v18;
    v20 = CFURLCopyAbsoluteURL(v18);
    if (v20)
    {
      v21 = v20;
      v22 = CFURLCopyPath(v20);
      if (v22)
      {
        v23 = v22;
        v24 = CFStringGetCStringPtr(v22, 0x8000100u);
        if (v24)
        {
          v25 = v24;
          v26 = strlen(v24);
          if (!strncasecmp(v25, filename, v26))
          {
            LOBYTE(v55) = 89;
          }
        }

        CFRelease(v23);
      }

      CFRelease(v21);
    }

    CFRelease(v19);
  }

  v27 = open(filename, 0, 0);
  if (v27 < 0)
  {
    return 0;
  }

  v28 = v27;
  memset(&v54, 0, sizeof(v54));
  if (fstat(v27, &v54) < 0 || (v54.st_mode & 0xF000) != 0x8000 || !v54.st_size)
  {
    close(v28);
    return 0;
  }

  v29 = mmap(0, v54.st_size, 1, 16386, v28, 0);
  if (v29 != -1)
  {
    v30 = v29;
    ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
    ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
    if (v30)
    {
      st_size = v54.st_size;
      v32 = fstat(v28, &v54);
      v33 = v54.st_size;
      close(v28);
      Direct = 0;
      if (v32 < 0 || st_size != v33)
      {
        return Direct;
      }

      v35 = CFStringCreateWithFormat(0, 0, @"mapped file: Library domain: [%s] home: [%s] original data pointer passed to provider: %p", &v56, &v55, v30);
      Direct = CGDataProviderCreateWithDataInternal(0, v30, v54.st_size, unmap_file, v35);
      if (v35)
      {
        v36 = v35;
LABEL_51:
        CFRelease(v36);
        goto LABEL_52;
      }

      goto LABEL_52;
    }
  }

  v38 = v54.st_size;
  if (v54.st_size > 10485760)
  {
LABEL_46:
    Direct = CGDataProviderCreateDirect(v28, v38, &file_callbacks);
    goto LABEL_52;
  }

  v39 = malloc_type_malloc(v54.st_size, 0x58E7D1A8uLL);
  if (!v39)
  {
    v38 = v54.st_size;
    goto LABEL_46;
  }

  v40 = v39;
  v41 = read(v28, v39, v38);
  if (v41 == -1)
  {
    v49 = 0;
    goto LABEL_48;
  }

  v49 = v41;
  if (v41 < v38)
  {
LABEL_48:
    CGPostError("%s: warning: failed to read entire file.", v42, v43, v44, v45, v46, v47, v48, "read_file");
    bzero((v40 + v49), v38 - v49);
  }

  close(v28);
  v50 = CFStringCreateWithFormat(0, 0, @"data read from file: Library domain: [%s] home: [%s] original data pointer passed to provider: %p", &v56, &v55, v40);
  Direct = CGDataProviderCreateWithDataInternal(0, v40, v54.st_size, free_data_10183, v50);
  if (v50)
  {
    v36 = v50;
    goto LABEL_51;
  }

LABEL_52:
  if (Direct)
  {
    valuePtr = rootless_trusted_by_self_token();
    v51 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v51)
    {
      v52 = v51;
      CGDataProviderSetProperty(Direct, @"CGDataProviderTrustToken", v51);
      CFRelease(v52);
    }
  }

  return Direct;
}

void CGDataProviderSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    if (!*(a1 + 272))
    {
      v6 = CGPropertiesCreate();
      v7 = 0;
      atomic_compare_exchange_strong_explicit((a1 + 272), &v7, v6, memory_order_relaxed, memory_order_relaxed);
      if (v7)
      {
        CGPropertiesRelease(v6);
      }
    }

    v8 = *(a1 + 272);

    CGPropertiesSetProperty(v8, a2, a3);
  }
}

CGImageRef CGImageCreateWithPNGDataProvider(CGDataProviderRef source, const CGFloat *decode, BOOL shouldInterpolate, CGColorRenderingIntent intent)
{
  v4 = intent;
  v5 = shouldInterpolate;
  if (CGImageCreateWithPNGDataProvider_predicate != -1)
  {
    dispatch_once(&CGImageCreateWithPNGDataProvider_predicate, &__block_literal_global_13764);
  }

  v8 = CGImageCreateWithPNGDataProvider_f(source, 0);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (CGImageCreateWithPNGDataProvider_predicate_3 != -1)
  {
    dispatch_once(&CGImageCreateWithPNGDataProvider_predicate_3, &__block_literal_global_6_13765);
  }

  v10 = CGImageCreateWithPNGDataProvider_f_2(v9);
  if (!v10 || !CFEqual(v10, @"public.png"))
  {
    CFRelease(v9);
    return 0;
  }

  if (CGImageCreateWithPNGDataProvider_predicate_10[0] != -1)
  {
    dispatch_once(CGImageCreateWithPNGDataProvider_predicate_10, &__block_literal_global_13_13767);
  }

  v11 = CGImageCreateWithPNGDataProvider_f_9(v9, 0, 0);
  CFRelease(v9);
  if (v11)
  {
    v12 = v5 ? 0x1000000 : 0;
    *(v11 + 36) = v12 & 0xFFFF00FF | (v4 << 8) | *(v11 + 36) & 0xFEFF00FF;
    if (decode)
    {
      ColorSpace = CGImageGetColorSpace(v11);
      if (ColorSpace)
      {
        v14 = *(*(ColorSpace + 3) + 48);
      }

      else
      {
        v14 = 0;
      }

      v16 = v14 + ((*(v11 + 36) >> 26) & 1);
      v17 = 2 * v16;
      v18 = malloc_type_malloc(16 * v16, 0x100004000313F17uLL);
      for (*(v11 + 160) = v18; v17; --v17)
      {
        v19 = *decode++;
        *v18++ = v19;
      }
    }
  }

  return v11;
}

void *__CGImageCreateWithPNGDataProvider_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateWithDataProvider");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithDataProvider");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateWithDataProvider");
  }

  CGImageCreateWithPNGDataProvider_f = result;
  return result;
}

void __CGLibraryLoadImageIODYLD_block_invoke()
{
  CGLibraryLoadImageIODYLD_handle = dlopen("/System/Library/Frameworks/ImageIO.framework/ImageIO", 5);
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    CGPostError("Failed to load %s", v0, v1, v2, v3, v4, v5, v6, "/System/Library/Frameworks/ImageIO.framework/ImageIO");
  }
}

void *__CGImageCreateWithPNGDataProvider_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateImageAtIndex");
  }

  CGImageCreateWithPNGDataProvider_f_9 = result;
  return result;
}

__CFDictionary *CGFontCreateFontsWithURL(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyAbsoluteURL(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v4 = Mutable;
  v5 = CFURLCopyScheme(v2);
  if (!v5)
  {
    v23 = "scheme";
LABEL_12:
    CGPostError("missing or invalid %s.", v6, v7, v8, v9, v10, v11, v12, v23);
LABEL_15:
    Count = 0;
    v22 = v4;
LABEL_16:
    CFRelease(v22);
    v22 = Count;
    goto LABEL_17;
  }

  v13 = v5;
  if (!CFEqual(v5, @"file"))
  {
    v21 = "scheme";
    goto LABEL_14;
  }

  CFRelease(v13);
  v20 = CFURLCopyFragment(v2, &stru_1EF244DC0);
  if (v20)
  {
    v13 = v20;
    if (!expand_parameters(v4, v20))
    {
      v21 = "fragment string";
LABEL_14:
      url_error(v21, v13, v14, v15, v16, v17, v18, v19);
      CFRelease(v13);
      goto LABEL_15;
    }
  }

  else
  {
    v26 = CFURLCopyParameterString(v2, &stru_1EF244DC0);
    if (!v26)
    {
      goto LABEL_22;
    }

    v13 = v26;
    CGPostError("font parameters must be specified as URI fragments.", v27, v28, v29, v30, v31, v32, v33, v67);
    if (!expand_parameters(v4, v13))
    {
      v21 = "parameter string";
      goto LABEL_14;
    }
  }

  CFRelease(v13);
LABEL_22:
  v34 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);
  if (!v34)
  {
    v23 = "path";
    goto LABEL_12;
  }

  v35 = v34;
  CFDictionarySetValue(v4, @"path", v34);
  CFRelease(v35);
  CFRelease(v2);
  Value = CFDictionaryGetValue(v4, @"path");
  v37 = CFDictionaryGetValue(v4, @"postscript-name");
  v44 = CGFontCreateWithPathAndName(Value, v37, v38, v39, v40, v41, v42, v43);
  if (v44)
  {
    v22 = v44;
    v52 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v52, v22);
    goto LABEL_25;
  }

  FontsWithPath = CGFontCreateFontsWithPath(Value, v45, v46, v47, v48, v49, v50, v51);
  v22 = FontsWithPath;
  if (!FontsWithPath)
  {
    goto LABEL_47;
  }

  if (!CFArrayGetCount(FontsWithPath))
  {
LABEL_45:
    Count = 0;
    goto LABEL_46;
  }

  if (!v37)
  {
    goto LABEL_26;
  }

  Count = CFArrayGetCount(v22);
  if (!Count)
  {
LABEL_46:
    v2 = v4;
    goto LABEL_16;
  }

  v62 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v22, v62);
    if (!ValueAtIndex)
    {
      goto LABEL_44;
    }

    v64 = ValueAtIndex;
    v65 = (*(*(ValueAtIndex + 2) + 160))(*(ValueAtIndex + 14));
    if (!v65)
    {
      goto LABEL_44;
    }

    v66 = v65;
    if (CFEqual(v37, v65))
    {
      break;
    }

    CFRelease(v66);
LABEL_44:
    if (Count == ++v62)
    {
      goto LABEL_45;
    }
  }

  v52 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(v52, v64);
  CFRelease(v66);
LABEL_25:
  CFRelease(v22);
  v22 = v52;
  if (v52)
  {
LABEL_26:
    v53 = CFDictionaryGetValue(v4, @"variations");
    if (v53)
    {
      v54 = v53;
      Count = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (Count)
      {
        v55 = CFArrayGetCount(v22);
        if (v55)
        {
          v56 = v55;
          for (i = 0; i != v56; ++i)
          {
            v58 = CFArrayGetValueAtIndex(v22, i);
            CopyWithVariations = CGFontCreateCopyWithVariations(v58, v54);
            if (CopyWithVariations)
            {
              v60 = CopyWithVariations;
              CFArrayAppendValue(Count, CopyWithVariations);
              CFRelease(v60);
            }
          }
        }
      }

      goto LABEL_46;
    }
  }

LABEL_47:
  v2 = v4;
LABEL_17:
  CFRelease(v2);
  return v22;
}

__CFArray *CGFontCreateFontsWithPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  VTable = CGFontGetVTable(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = (*(VTable + 56))(a1);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  fonts_with_private_data_array = create_fonts_with_private_data_array(v10, 0);
  CFRelease(v11);
  return fonts_with_private_data_array;
}

const __CFArray *create_private_data_array_with_path()
{
  result = FPFontCreateFontsWithPath();
  if (result)
  {
    v1 = result;
    private_data_array_with_parser_fonts = create_private_data_array_with_parser_fonts(result);
    CFRelease(v1);
    return private_data_array_with_parser_fonts;
  }

  return result;
}

CGColorRef CGColorCreateGenericRGB(CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha)
{
  v17 = *MEMORY[0x1E69E9840];
  components[0] = red;
  components[1] = green;
  v15 = blue;
  v16 = alpha;
  v4 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericRGB");
  v5 = CGColorCreate(v4, components);
  CGColorSpaceRelease(v4);
  if (!v5)
  {
    CGPostError("Color creation failed for RGB colorspace %p, {%f, %f, %f %f}", v6, v7, v8, v9, v10, v11, v12, v4);
  }

  return v5;
}

CGFloat CGRectGetMidX(CGRect rect)
{
  if (rect.size.width < 0.0 || rect.size.height < 0.0)
  {
    rect = CGRectStandardize(rect);
  }

  return rect.origin.x + rect.size.width * 0.5;
}

CFDictionaryRef CGFontCopyVariations(CGFontRef font)
{
  if (!font)
  {
    return 0;
  }

  v11 = 0;
  v2 = (*(*(font + 2) + 216))(*(font + 14), &v11);
  if (!v2 || v11 == 0)
  {
    return 0;
  }

  v5 = v2;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v11)
  {
    v6 = 0;
    v7 = (v5 + 8);
    do
    {
      v8 = copy_name_for_identifier(font, *(v7 - 2));
      if (v8)
      {
        v9 = v8;
        CGCFDictionarySetFloat(Mutable, v8, *v7);
        CFRelease(v9);
      }

      ++v6;
      v7 += 2;
    }

    while (v6 < v11);
  }

  return Mutable;
}

CFStringRef copy_name_for_identifier(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  result = (*(*(a1 + 16) + 416))(*(a1 + 112), &v6);
  if (result)
  {
    v4 = v6;
    if (v6)
    {
      while (LODWORD(result->info) != a2)
      {
        result = (result + 40);
        if (!--v4)
        {
          return 0;
        }
      }

      isa = result->isa;
      if (isa)
      {
        return CFRetain(isa);
      }

      else
      {
        *cStr = bswap32(a2);
        v8 = 0;
        return CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CGCFDictionarySetFloat(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a1, a2, v5);
      CFRelease(v6);
    }
  }
}

void font_finalize(uint64_t a1)
{
  if (*(a1 + 112))
  {
    if (CGFontCacheGetLocalCache_predicate != -1)
    {
      dispatch_once(&CGFontCacheGetLocalCache_predicate, &__block_literal_global_6640);
    }

    CGFontCacheRemoveFont(CGFontCacheGetLocalCache_local_font_cache, a1);
    (*(*(a1 + 16) + 96))(*(a1 + 112));
  }

  free(*(a1 + 32));
  free(*(a1 + 40));
  free(*(a1 + 48));
  free(*(a1 + 56));
  CGFontAutohinterRelease(*(a1 + 64));
  CGFontUnimapRelease(*(a1 + 72));
  CGFontNameTableRelease(*(a1 + 80));
  CGPropertiesRelease(*(a1 + 88));
  v2 = *(a1 + 96);

  CGCIDInfoRelease(v2);
}

void CGFontIndexMapRelease(char *a1)
{
  if ((a1 + 1) >= 2)
  {
    for (i = 8; i != 520; i += 8)
    {
      free(atomic_load_explicit(&a1[i], memory_order_acquire));
    }

    free(a1);
  }
}

void CGFontCacheRemoveFont(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  v5 = (a1 + 40);
  for (i = *(a1 + 40); i; i = i[1])
  {
    while (1)
    {
      v6 = *i;
      v7 = *i ? (*i + 8) : 0;
      if (a2)
      {
        v8 = *(a2 + 24);
        if (!v8)
        {
          atomic_compare_exchange_strong_explicit((a2 + 24), &v8, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed);
          v8 = *(a2 + 24);
        }
      }

      else
      {
        v8 = 0;
      }

      if (v8 != *v7)
      {
        break;
      }

      CFDictionaryRemoveValue(*(a1 + 32), v7);
      CGFontStrikeRelease(v6);
      *v5 = i[1];
      free(i);
      i = *v5;
      if (!*v5)
      {
        goto LABEL_13;
      }
    }

    v5 = i + 1;
  }

LABEL_13:

  os_unfair_lock_unlock((a1 + 4));
}

CFStringRef CGFontCopyPostScriptName(CFStringRef font)
{
  if (font)
  {
    return (*(font->data + 20))(font[3].data);
  }

  return font;
}

void xt_font_release(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
  {
    __dmb(9u);
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(v2 + 80);
      if (v3)
      {
        CFRelease(v3);
      }

      pthread_mutex_destroy((v2 + 8));
      free(v2);
    }

    CGFontIndexMapRelease(*(a1 + 16));
    FPFontRelease();

    free(a1);
  }
}

void CGFontUnimapRelease(char **a1)
{
  if (a1)
  {
    CGFontIndexMapRelease(a1[2]);

    free(a1);
  }
}

void CGFontAutohinterRelease(char *a1)
{
  if (a1)
  {
    for (i = 0; i != 96; i += 8)
    {
      v3 = *&a1[i + 8];
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v3);
      }

      v4 = *&a1[i + 104];
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v4);
      }
    }

    free(a1);
  }
}

void CGCIDInfoRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 80);
    if (v3)
    {
      CFRelease(v3);
    }

    CGFontIndexMapRelease(*(a1 + 96));
    CGFontIndexMapRelease(*(a1 + 104));
    pthread_mutex_destroy(a1);

    free(a1);
  }
}

void CGFontNameTableRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      do
      {
        v3 = v2[1];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        free(*v4);
        v4 = *(v4 + 8);
      }

      while (v4);
      v5 = *(a1 + 16);
      if (v5)
      {
        do
        {
          v6 = v5[1];
          free(v5);
          v5 = v6;
        }

        while (v6);
      }
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      CFRelease(v9);
    }

    free(*(a1 + 8));

    free(a1);
  }
}

unint64_t sub_183EF7D58()
{
  result = qword_1EA853F08;
  if (!qword_1EA853F08)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F08);
  }

  return result;
}

void sub_183EF7DC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

CFTypeRef *CGGlyphLockUnlock(CFTypeRef **a1)
{
  result = *a1;
  if (result)
  {
    CGGlyphBuilderUnlockBitmaps(result);
    result = CGGlyphBuilderRelease(*a1);
    *a1 = 0;
  }

  return result;
}

CGAffineTransform *__cdecl CGAffineTransformTranslate(CGAffineTransform *__return_ptr retstr, CGAffineTransform *t, CGFloat tx, CGFloat ty)
{
  v4 = *&t->c;
  v5 = *&t->a;
  *&t->tx = vmlaq_n_f64(vmlaq_n_f64(*&t->tx, *&t->a, tx), v4, ty);
  *&retstr->a = v5;
  *&retstr->c = v4;
  *&retstr->tx = *&t->tx;
  return t;
}

CGAffineTransform *__cdecl CGAffineTransformScale(CGAffineTransform *__return_ptr retstr, CGAffineTransform *t, CGFloat sx, CGFloat sy)
{
  v4 = vmulq_n_f64(*&t->c, sy);
  *&t->a = vmulq_n_f64(*&t->a, sx);
  *&t->c = v4;
  v5 = *&t->tx;
  *&retstr->c = *&t->c;
  *&retstr->tx = v5;
  *&retstr->a = *&t->a;
  return t;
}

CGAffineTransform *__cdecl CGAffineTransformRotate(CGAffineTransform *__return_ptr retstr, CGAffineTransform *t, CGFloat angle)
{
  v6 = __sincos_stret(angle);
  v7 = *&t->a;
  v8 = *&t->c;
  v9 = *&t->tx;
  v10 = vmlsq_lane_f64(vmulq_n_f64(v8, v6.__cosval), *&t->a, v6.__sinval, 0);
  *&retstr->a = vmlaq_n_f64(vmulq_n_f64(v8, v6.__sinval), *&t->a, v6.__cosval);
  *&retstr->c = v10;
  *&retstr->tx = vaddq_f64(v9, vmlaq_f64(vmulq_f64(v8, 0), 0, v7));
  return result;
}

CGFloat CGRectGetMidY(CGRect rect)
{
  if (rect.size.width < 0.0 || rect.size.height < 0.0)
  {
    rect = CGRectStandardize(rect);
  }

  return rect.origin.y + rect.size.height * 0.5;
}

double transform_unit_rect(CGAffineTransform *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  a = a1->a;
  b = a1->b;
  c = a1->c;
  d = a1->d;
  if (b == 0.0 && c == 0.0)
  {
    v5 = fmin(a, 0.0);
  }

  else
  {
    v6 = a + c;
    v18 = 0;
    v19 = a;
    v20 = c;
    v21 = a + c;
    v7 = 0.0;
    v8 = 8;
    v9 = &v18;
    do
    {
      if (*(&v18 + v8) < v7)
      {
        v7 = *(&v18 + v8);
        v9 = (&v18 + v8);
      }

      v8 += 8;
    }

    while (v8 != 32);
    v10 = b + d;
    v5 = *v9;
    v18 = 0;
    v19 = b;
    v20 = d;
    v21 = b + d;
    v11 = 0.0;
    for (i = 8; i != 32; i += 8)
    {
      if (*(&v18 + i) < v11)
      {
        v11 = *(&v18 + i);
      }
    }

    v18 = 0;
    v19 = a;
    v20 = c;
    v13 = 0.0;
    v14 = 8;
    v21 = v6;
    do
    {
      if (v13 < *(&v18 + v14))
      {
        v13 = *(&v18 + v14);
      }

      v14 += 8;
    }

    while (v14 != 32);
    v18 = 0;
    v19 = b;
    v20 = d;
    v15 = 0.0;
    v16 = 8;
    v21 = v10;
    do
    {
      if (v15 < *(&v18 + v16))
      {
        v15 = *(&v18 + v16);
      }

      v16 += 8;
    }

    while (v16 != 32);
  }

  return v5 + a1->tx;
}

os_unfair_lock_s *CGFontNameTableCopyRootName(os_unfair_lock_s *result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    System = CFLocaleGetSystem();

    return copy_localized_value(v3, System, a2);
  }

  return result;
}

CFStringRef create_localized_name(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 10);
  if (!*(a1 + 10))
  {
    return 0;
  }

  if (*a1 != 1)
  {
    v2 = (a1 + 12);
    v4 = *(a1 + 12);
    if (v1 != 1)
    {
      if (*(a1 + 12))
      {
        goto LABEL_10;
      }

      v4 = *(a1 + 13);
    }

    if (!v4)
    {
      return 0;
    }

LABEL_10:
    v3 = 268435712;
    return CFStringCreateWithBytes(0, v2, v1, v3, 0);
  }

  v2 = (a1 + 12);
  if (*(a1 + 12))
  {
    v3 = *(a1 + 2);
    return CFStringCreateWithBytes(0, v2, v1, v3, 0);
  }

  return 0;
}

CFTypeRef CGCreateContainingLocaleForLocale(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (get_locale_mapping_predicate != -1)
  {
    dispatch_once(&get_locale_mapping_predicate, &__block_literal_global_470);
  }

  v2 = get_locale_mapping_locale_mapping;
  pthread_mutex_lock(&CGCreateContainingLocaleForLocale_mutex);
  Value = CFDictionaryGetValue(v2, a1);
  if (!Value)
  {
    v5 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0]);
    Value = v5;
    if (v5)
    {
      v6 = CFGetTypeID(v5);
      if (v6 == CFStringGetTypeID())
      {
        v7 = CFLocaleCreate(0, Value);
        Value = v7;
        if (v7)
        {
          if (CFEqual(v7, a1))
          {
            CFRelease(Value);
            System = CFLocaleGetSystem();
            Value = CFRetain(System);
          }

          CFDictionarySetValue(v2, a1, Value);
          CFRelease(Value);
        }
      }

      else
      {
        Value = 0;
      }
    }
  }

  pthread_mutex_unlock(&CGCreateContainingLocaleForLocale_mutex);
  if (!Value || Value == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  return CFRetain(Value);
}

const __CFString *CGCreateCanonicalLanguageLocale()
{
  v0 = MEMORY[0x1865ED4C0]();
  result = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, v0);
  if (result)
  {
    v2 = result;
    v3 = CFLocaleCreate(0, result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

void __get_locale_mapping_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  get_locale_mapping_locale_mapping = Mutable;
  System = CFLocaleGetSystem();
  v2 = *MEMORY[0x1E695E738];

  CFDictionarySetValue(Mutable, System, v2);
}

uint64_t CGImageGetIdentifier(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void add_root_name(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary **a3, void *key, void *a5, char a6)
{
  if (theDict)
  {
    v6 = a5;
    if ((a6 & 1) != 0 || !CFDictionaryGetValue(theDict, a5))
    {
      v11 = *a3;
      if (*a3 || (v11 = (*(*(*a1 + 16) + 192))(*(*a1 + 112)), (*a3 = v11) != 0))
      {
        Value = CFDictionaryGetValue(v11, key);
        if (Value)
        {

          CFDictionarySetValue(theDict, v6, Value);
        }
      }
    }
  }
}

os_unfair_lock_s *CGFontNameTableCreate(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x58uLL, 0x1070040B6466AE1uLL);
  *v2 = a1;
  v2[5] = 0;
  *(v2 + 12) = 0;
  v3 = MEMORY[0x1E695E9E8];
  v2[7] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v2 + 16) = 0;
  v2[9] = CFDictionaryCreateMutable(0, 0, 0, v3);
  *(v2 + 20) = 0;
  *(v2 + 8) = (*(*(a1 + 16) + 224))(*(a1 + 112));
  v2[2] = 0;
  v52 = v2;
  v53 = v2 + 2;
  v2[3] = 0;
  if (*v2)
  {
    theData = (*(*(*v2 + 16) + 432))(*(*v2 + 112), 1851878757);
    if (theData)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      v6 = Length;
      v7 = 2 * (Length > 1);
      v8 = (v7 + 2);
      v9 = v7 + 2;
      if (Length >= v8)
      {
        v10 = __rev16(*(BytePtr + 1));
        v11 = 6;
        v7 = (v7 + 2);
        v8 = 6;
      }

      else
      {
        v10 = 0;
        v11 = v7 + 2;
        v9 = 2 * (Length > 1);
      }

      if (Length >= v8)
      {
        v12 = bswap32(*&BytePtr[v7]) >> 16;
        v7 = v8;
        v9 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v7 + 12 * v10 == v12)
      {
        for (; v10; --v10)
        {
          v13 = v9 + 2;
          v14 = v9 + 2;
          if (v6 >= v13)
          {
            v56 = BytePtr[v9 + 1] | (BytePtr[v9] << 8);
            v13 = v9 + 4;
            v9 += 2;
            v14 = v13;
          }

          else
          {
            v56 = 0;
          }

          if (v13 <= v6)
          {
            v55 = BytePtr[v9 + 1] | (BytePtr[v9] << 8);
            v13 = v14 + 2;
            v9 = v14;
            v14 += 2;
          }

          else
          {
            v55 = 0;
          }

          if (v13 <= v6)
          {
            v54 = BytePtr[v9 + 1] | (BytePtr[v9] << 8);
            v13 = v14 + 2;
            v9 = v14;
            v14 += 2;
          }

          else
          {
            v54 = 0;
          }

          if (v13 <= v6)
          {
            v15 = BytePtr[v9 + 1] | (BytePtr[v9] << 8);
            v13 = v14 + 2;
            v9 = v14;
            v14 += 2;
          }

          else
          {
            v15 = 0;
          }

          if (v13 <= v6)
          {
            v16 = BytePtr[v9 + 1] | (BytePtr[v9] << 8);
            v13 = v14 + 2;
            v9 = v14;
            v14 += 2;
          }

          else
          {
            v16 = 0;
          }

          if (v13 <= v6)
          {
            v17 = BytePtr[v9 + 1] | (BytePtr[v9] << 8);
            v9 = v14;
          }

          else
          {
            v17 = 0;
          }

          v18 = (v17 + v12);
          if (v6 > v18)
          {
            v19 = v6 >= v18 + v16 ? v16 : v6 - (v17 + v12);
            v20 = v12;
            v21 = malloc_type_malloc(v19 + 13, 0x10000403E1C8BA9uLL);
            v12 = v20;
            if (v21)
            {
              v22 = v21;
              __CFSetLastAllocationEventName();
              *v22 = v56;
              v22[1] = v55;
              v22[2] = v54;
              v22[3] = v15;
              v22[5] = v19;
              memcpy(v22 + 6, &BytePtr[v18], v19);
              *(v22 + v19 + 12) = 0;
              v23 = *v53;
              v24 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
              if (v24)
              {
                *v24 = v22;
                v24[1] = v23;
                v23 = v24;
              }

              *v53 = v23;
              v12 = v20;
            }
          }
        }

        v25 = *v53;
        if (*v53)
        {
          v26 = 0;
          do
          {
            v27 = v25;
            v25 = v25[1];
            v27[1] = v26;
            v26 = v27;
          }

          while (v25);
        }

        else
        {
          v27 = 0;
        }

        *v53 = v27;
        CFRelease(theData);
      }
    }
  }

  v28 = v52;
  *&v52[6]._os_unfair_lock_opaque = 0;
  add_localized_names(v52, 1, 0xFFFF);
  add_localized_names(v52, 1, 0);
  add_localized_names(v52, 0, 0xFFFF);
  add_localized_names(v52, 3, 0xFFFF);
  add_localized_names(v52, 3, 9);
  add_localized_names(v52, 3, 1033);
  System = CFLocaleGetSystem();
  dictionary_for_locale = get_dictionary_for_locale(v52, System);
  cf = 0;
  add_root_name(v52, dictionary_for_locale, &cf, @"kCGFontNameKeyFullName", 4, 1);
  add_root_name(v52, dictionary_for_locale, &cf, @"kCGFontNameKeyFontFamily", 1, 1);
  add_root_name(v52, dictionary_for_locale, &cf, @"kCGFontNameKeyCopyright", 0, 0);
  add_root_name(v52, dictionary_for_locale, &cf, @"kCGFontNameKeyFontSubfamily", 2, 0);
  add_root_name(v52, dictionary_for_locale, &cf, @"kCGFontNameKeyUniqueID", 3, 0);
  add_root_name(v52, dictionary_for_locale, &cf, @"kCGFontNameKeyVersion", 5, 0);
  add_root_name(v52, dictionary_for_locale, &cf, @"kCGFontNameKeyTrademark", 7, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  v31 = CFLocaleGetSystem();
  v32 = get_dictionary_for_locale(v52, v31);
  if (!v32)
  {
LABEL_75:
    CGFontNameTableRelease(v52);
    return 0;
  }

  v33 = v32;
  v34 = (*(*(*&v52->_os_unfair_lock_opaque + 16) + 152))(*(*&v52->_os_unfair_lock_opaque + 112));
  if (v34)
  {
    localized_name = CFStringCreateWithCString(0, v34, 0x600u);
    if (localized_name)
    {
      goto LABEL_49;
    }
  }

  v37 = *&v52[6]._os_unfair_lock_opaque;
  if (v37)
  {
    while (1)
    {
      if (*(*v37 + 6) == 6)
      {
        localized_name = create_localized_name(*v37);
        if (localized_name)
        {
          break;
        }
      }

      v37 = v37[1];
      if (!v37)
      {
        goto LABEL_54;
      }
    }

LABEL_49:
    v36 = localized_name;
    CFDictionarySetValue(v33, 6, localized_name);
    CFRelease(v36);
  }

LABEL_54:
  v38 = CFLocaleGetSystem();
  v39 = copy_localized_value(v52, v38, 6u);
  if (!v39)
  {
LABEL_71:
    v47 = malloc_type_malloc(0x40uLL, 0xAA26C2C4uLL);
    *&v52[2]._os_unfair_lock_opaque = v47;
    if (v47)
    {
      snprintf_l(v47, 0x40uLL, 0, "--unknown-%d--", atomic_fetch_add_explicit(&fixup_ps_name_identifier, 1u, memory_order_relaxed) + 1);
      v43 = *&v52[2]._os_unfair_lock_opaque;
      if (v43)
      {
        goto LABEL_73;
      }
    }

    goto LABEL_75;
  }

  v40 = v39;
  v41 = CFStringGetLength(v39);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v41, 0x600u);
  v43 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x1BECFD2uLL);
  if (!CFStringGetCString(v40, v43, MaximumSizeForEncoding + 1, 0x600u))
  {
    free(v43);
    CFRelease(v40);
    goto LABEL_71;
  }

  CFRelease(v40);
  v44 = *v43;
  if (!*v43)
  {
    free(v43);
    goto LABEL_71;
  }

  for (i = v43 + 1; ; ++i)
  {
    if (v44 <= 0x3E)
    {
      if (((1 << v44) & 0x5000832000000000) != 0)
      {
        goto LABEL_63;
      }

      if (!v44)
      {
        break;
      }
    }

    if (v44 - 91 <= 0x22 && ((1 << (v44 - 91)) & 0x500000005) != 0 || v44 - 127 <= 0xFFFFFFA1)
    {
LABEL_63:
      *(i - 1) = 95;
    }

    v46 = *i;
    v44 = v46;
  }

  *&v52[2]._os_unfair_lock_opaque = v43;
  if (!v43)
  {
    goto LABEL_75;
  }

LABEL_73:
  v48 = CFStringCreateWithCString(0, v43, 0x600u);
  if (!v48)
  {
    goto LABEL_75;
  }

  v49 = v48;
  CFDictionarySetValue(v33, 6, v48);
  CFRelease(v49);
  return v28;
}

void add_sorted_names_with_name_id(uint64_t a1, int a2)
{
  if (a2 != 17)
  {
    if (a2 == 6)
    {
      return;
    }

    if (a2 != 2)
    {
      goto LABEL_40;
    }
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
LABEL_40:
    v23 = *(a1 + 24);
    if (!v23)
    {
      return;
    }

    while (1)
    {
      v24 = *v23;
      if (*(*v23 + 6) != a2)
      {
        goto LABEL_52;
      }

      localized_name = create_localized_name(*v23);
      if (!localized_name)
      {
        goto LABEL_52;
      }

      v26 = localized_name;
      v27 = v24[3];
      locale = create_locale(a1, *v24, v24[2]);
      dictionary_for_locale = get_dictionary_for_locale(a1, locale);
      if (dictionary_for_locale)
      {
        v30 = dictionary_for_locale;
        do
        {
          CFDictionarySetValue(v30, v27, v26);
          v31 = CGCreateContainingLocaleForLocale(locale);
          v30 = get_dictionary_for_locale(a1, v31);
          if (locale)
          {
            CFRelease(locale);
          }

          if (!v30)
          {
            break;
          }

          locale = v31;
        }

        while (!CFDictionaryGetValue(v30, v27));
        if (!v31)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v31 = locale;
        if (!locale)
        {
          goto LABEL_51;
        }
      }

      CFRelease(v31);
LABEL_51:
      CFRelease(v26);
LABEL_52:
      v23 = v23[1];
      if (!v23)
      {
        return;
      }
    }
  }

  *(a1 + 32) = 0;
  add_sorted_names_with_name_id(a1, v4);
  *(a1 + 32) = v4;
  for (i = *(a1 + 24); i; i = i[1])
  {
    v6 = *i;
    v7 = *(*i + 6);
    if (v7 == 17 || v7 == 2)
    {
      v9 = create_localized_name(*i);
      if (v9)
      {
        v10 = v9;
        v11 = v6[3];
        v12 = create_locale(a1, *v6, v6[2]);
        v13 = get_dictionary_for_locale(a1, v12);
        if (v13)
        {
          v14 = v13;
          while (1)
          {
            if (CFDictionaryGetValue(v14, v11))
            {
              goto LABEL_34;
            }

            v15 = *(a1 + 32);
            v16 = CFRetain(v12);
            v17 = get_dictionary_for_locale(a1, v16);
            if (v17)
            {
              break;
            }

LABEL_21:
            if (v16)
            {
              goto LABEL_22;
            }

LABEL_23:
            if (v17)
            {
              v20 = v17;
            }

            else
            {
              v20 = v10;
            }

            v21 = CFRetain(v20);
            CFDictionarySetValue(v14, v11, v21);
            if (v21)
            {
              CFRelease(v21);
            }

            v22 = CGCreateContainingLocaleForLocale(v12);
            v14 = get_dictionary_for_locale(a1, v22);
            if (v12)
            {
              CFRelease(v12);
            }

            v12 = v22;
            if (!v14)
            {
              goto LABEL_35;
            }
          }

          while (1)
          {
            Value = CFDictionaryGetValue(v17, v15);
            if (Value)
            {
              break;
            }

            v19 = CGCreateContainingLocaleForLocale(v16);
            v17 = get_dictionary_for_locale(a1, v19);
            if (v16)
            {
              CFRelease(v16);
            }

            v16 = v19;
            if (!v17)
            {
              v16 = v19;
              goto LABEL_21;
            }
          }

          v17 = Value;
          if (!v16)
          {
            goto LABEL_23;
          }

LABEL_22:
          CFRelease(v16);
          goto LABEL_23;
        }

LABEL_34:
        v22 = v12;
LABEL_35:
        if (v22)
        {
          CFRelease(v22);
        }

        CFRelease(v10);
      }
    }
  }
}

CFTypeRef copy_localized_value(os_unfair_lock_s *a1, const void *a2, unsigned int a3)
{
  os_unfair_lock_lock(a1 + 20);
  dictionary_for_locale = get_dictionary_for_locale(a1, a2);
  if (!dictionary_for_locale)
  {
    os_unfair_lock_unlock(a1 + 20);
    return 0;
  }

  v7 = dictionary_for_locale;
  Value = CFDictionaryGetValue(dictionary_for_locale, a3);
  if (!Value)
  {
    add_sorted_names_with_name_id(a1, a3);
    v9 = CFDictionaryGetValue(v7, a3);
    os_unfair_lock_unlock(a1 + 20);
    if (v9)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v9 = Value;
  os_unfair_lock_unlock(a1 + 20);
LABEL_7:

  return CFRetain(v9);
}

const void *get_dictionary_for_locale(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Value = 0;
  if (a2 && *(a1 + 56))
  {
    os_unfair_lock_lock((a1 + 48));
    Value = CFDictionaryGetValue(*(a1 + 56), a2);
    if (!Value)
    {
      Value = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(*(a1 + 56), a2, Value);
      CFRelease(Value);
    }

    os_unfair_lock_unlock((a1 + 48));
  }

  return Value;
}

void *add_localized_names(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result[2];
  if (!v4)
  {
    goto LABEL_15;
  }

  v7 = 0;
  do
  {
    v8 = *v4;
    if (**v4 == a2 && (a3 == 0xFFFF || *(v8 + 4) == a3))
    {
      result = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
      if (result)
      {
        *result = v8;
        result[1] = v7;
        v7 = result;
      }
    }

    v4 = *(v4 + 1);
  }

  while (v4);
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = v7;
      v7 = v7[1];
      v10[1] = v9;
      v9 = v10;
    }

    while (v7);
    v13 = v3[3];
    v12 = v3 + 3;
    v11 = v13;
    v17 = v10;
    do
    {
      v14 = v10;
      v10 = v10[1];
    }

    while (v10);
    v15 = v14 + 1;
  }

  else
  {
LABEL_15:
    v16 = v3[3];
    v12 = v3 + 3;
    v11 = v16;
    v17 = 0;
    v15 = &v17;
  }

  *v15 = v11;
  *v12 = v17;
  return result;
}

const void *CGColorTransformCreateCGCMSConverter(void *a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v6 != CGColorTransformGetTypeID_type_id)
  {
    return 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __create_resolved_source_space_block_invoke;
  v11[3] = &__block_descriptor_tmp_36_17670;
  v11[4] = a1;
  ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(a2, v11);
  Cache = CGColorTransformGetCache(a1);
  Converter = CGColorTransformCacheCreateConverter(Cache, ResolvedColorSpace, a3);
  CGColorSpaceRelease(ResolvedColorSpace);
  return Converter;
}

uint64_t CGCMSConverterConvertGetConverterInfo(uint64_t result, uint64_t (**cf)(CFTypeRef, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  *(result + 80) = 0;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  if (cf)
  {
    result = CFGetTypeID(cf);
    v7 = result;
    v8 = kCGCMSConverterID;
    if (!kCGCMSConverterID)
    {
      result = pthread_once(&CGCMSConverterGetTypeID_once, converter_initialize);
      v8 = kCGCMSConverterID;
    }

    if (v7 == v8)
    {
      v9 = cf[8];

      return v9(cf, a3, a4);
    }
  }

  return result;
}

void icc_converter_info(size_t size@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 80) = 0;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
  if (!a2 || !a3 || (v12 = *(a2 + 8), v12 != a3[1]) || (v13 = *(a2 + 16), v13 != a3[2]))
  {
    CGPostError("%s : Unable to complete color conversion", a2, a3, a4, a5, a6, a7, a8, "icc_converter_info");
    return;
  }

  if (*(size + 224) == 1)
  {
    v15 = *(a2 + 56);
    if (a3[7] > v15)
    {
      v15 = a3[7];
    }

    v16 = 4 * (v12 + v12 * v15) * v13;
    v17 = malloc_type_calloc(1uLL, v16, 0x6A391D73uLL);
    *(a9 + 72) = v17;
    v18 = malloc_type_calloc(1uLL, v16, 0xB72FA01CuLL);
    *(a9 + 80) = v18;
    v19 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
    *srcFormat = *(a2 + 48);
    memcpy(__dst, (a2 + 40), 0x130uLL);
    *&srcFormat[4] = CGBitmapPixelInfoGetBitsPerPixel(__dst, v20, v21, v22, v23, v24, v25, v26);
    *&srcFormat[8] = v19;
    memcpy(__dst, (a2 + 40), 0x130uLL);
    *&srcFormat[16] = CGBitmapPixelInfoGetCGImageBitmapInfo(__dst);
    memset(&srcFormat[20], 0, 20);
    v27 = *(a2 + 64);
    if ((v27 & 0xFFFFFFFE) == 8)
    {
      *&__dst[32] = 0;
      *__dst = 32;
    }

    else
    {
      *&__dst[32] = 0;
      *__dst = 32;
      if (!v27)
      {
        *&__dst[4] = 96;
        v30 = 8448;
LABEL_19:
        *&__dst[8] = v19;
        *&__dst[16] = v30;
        *&__dst[28] = 0;
        *&__dst[20] = 0;
        v31 = vImageConverter_CreateWithCGImageFormat(srcFormat, __dst, 0, 0x100u, 0);
        *(a9 + 40) = v31;
        if (v31)
        {
          v40 = *(a2 + 8);
          v39 = *(a2 + 16);
          srcs.data = v17;
          srcs.height = v39;
          srcs.width = v40;
          srcs.rowBytes = (v40 * *&srcFormat[4]) >> 3;
          dests.data = v17;
          dests.height = v39;
          dests.width = v40;
          dests.rowBytes = (v40 * *&__dst[4]) >> 3;
          v41 = vImageConvert_AnyToAny(v31, &srcs, &dests, 0, 0x80u);
          if (v41 < 0)
          {
            CGPostError("%s vImage_buffer_size = %ld\n", v42, v43, v44, v45, v46, v47, v48, "create_src_data_to_float_converter");
          }

          else
          {
            *(a9 + 56) = malloc_type_malloc(v41, 0x93BE0427uLL);
          }
        }

        v49 = *(a2 + 64);
        if (v49 == 9)
        {
          LOBYTE(v49) = 3;
        }

        else if (v49 == 8)
        {
          LOBYTE(v49) = 1;
        }

        else if (v49 >= 7)
        {
          CGPostError("%s : Unable to complete color conversion", v32, v33, v34, v35, v36, v37, v38, "colorsync_alpha_info_from_conversion_format");
          LOBYTE(v50) = 1;
          goto LABEL_29;
        }

        v50 = 1u >> v49;
LABEL_29:
        v51 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
        *&srcFormat[32] = 0;
        *srcFormat = a3[6];
        memcpy(__dst, a3 + 5, 0x130uLL);
        *&srcFormat[4] = CGBitmapPixelInfoGetBitsPerPixel(__dst, v52, v53, v54, v55, v56, v57, v58);
        *&srcFormat[8] = v51;
        memcpy(__dst, a3 + 5, 0x130uLL);
        *&srcFormat[16] = CGBitmapPixelInfoGetCGImageBitmapInfo(__dst);
        *&srcFormat[20] = 0uLL;
        *&__dst[32] = 0;
        if (v50)
        {
          v59 = 96;
        }

        else
        {
          v59 = 128;
        }

        if (v50)
        {
          v60 = 8448;
        }

        else
        {
          v60 = 8451;
        }

        *__dst = 32;
        *&__dst[4] = v59;
        *&__dst[8] = v51;
        *&__dst[16] = v60;
        *&__dst[20] = 0;
        *&__dst[28] = 0;
        v61 = vImageConverter_CreateWithCGImageFormat(__dst, srcFormat, 0, 0x100u, 0);
        *(a9 + 48) = v61;
        if (v61)
        {
          v63 = a3[1];
          v62 = a3[2];
          srcs.data = v18;
          srcs.height = v62;
          srcs.width = v63;
          srcs.rowBytes = (v63 * *&srcFormat[4]) >> 3;
          dests.data = v18;
          dests.height = v62;
          dests.width = v63;
          dests.rowBytes = srcs.rowBytes;
          v64 = vImageConvert_AnyToAny(v61, &srcs, &dests, 0, 0x80u);
          if (v64 < 0)
          {
            CGPostError("%s vImage_buffer_size = %ld\n", v65, v66, v67, v68, v69, v70, v71, "create_dst_float_to_src_converter");
          }

          else
          {
            *(a9 + 64) = malloc_type_malloc(v64, 0x89ACD52DuLL);
          }
        }

        return;
      }
    }

    *&__dst[4] = 128;
    v30 = 8451;
    goto LABEL_19;
  }

  if (*(size + 16) != 3 && !CFEqual(*(size + 32), *(size + 24)) || !conversion_formats_are_equal(a2, a3))
  {
    CachedCGvImageConverter = CGCMSConverterCreateCachedCGvImageConverter(size, a2, a3);
    *a9 = CachedCGvImageConverter;
    if (CachedCGvImageConverter)
    {
      v29 = CachedCGvImageConverter;
      memcpy(__dst, a2, sizeof(__dst));
      memcpy(srcFormat, a3, sizeof(srcFormat));
      *(a9 + 16) = CGvImageConverterGetBufferSize(v29, __dst, srcFormat);
    }
  }
}

uint64_t CGvImageConverterGetBufferSize(vImage_Error *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 8);
  *&srcs.height = vextq_s8(v6, v6, 8uLL);
  if (!v5)
  {
    v25 = v6.i64[0];
    memcpy(__dst, (a2 + 40), sizeof(__dst));
    v5 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v7, v8, v9, v10, v11, v12, v13) >> 3) * v25;
  }

  srcs.rowBytes = v5;
  v14 = *(a3 + 24);
  v15 = *(a3 + 8);
  *&dests.height = vextq_s8(v15, v15, 8uLL);
  if (!v14)
  {
    v26 = v15.i64[0];
    memcpy(__dst, (a3 + 40), sizeof(__dst));
    v14 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v16, v17, v18, v19, v20, v21, v22) >> 3) * v26;
  }

  __dst[0] = 0;
  dests.rowBytes = v14;
  srcs.data = __dst;
  dests.data = __dst;
  v23 = *a1;
  if (*a1)
  {
    v23 = vImageConvert_AnyToAny(v23, &srcs, &dests, 0, 0x80u);
  }

  return v23 & ~(v23 >> 63);
}

uint64_t CGColorSpaceCopyFromIOSurface(__IOSurface *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = IOSurfaceCopyValue(a1, @"IOSurfaceColorSpaceID");
  if (!v2 || ((v3 = v2, v4 = CFGetTypeID(v2), v4 != CFNumberGetTypeID()) ? (v5 = 0) : (valuePtr = 0, CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr), v5 = valuePtr), v6 = CGColorSpaceCreateWithID(v5), CFRelease(v3), !v6))
  {
    v7 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CEE0]);
    v6 = CGColorSpaceCreateWithPropertyList(v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v6;
}

uint64_t CGColorTransformConvertUsingCMSConverter(void *a1, void *a2, uint64_t a3, void *CGCMSConverter, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v14 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v14 != CGColorTransformGetTypeID_type_id)
  {
    return 0;
  }

  if (!CGCMSConverter)
  {
    CGCMSConverter = CGColorTransformCreateCGCMSConverter(a1, a2, a3);
    v22 = a5[2];
    v23 = a5[3];
    v24 = a5[4];
    v25 = *(a5 + 10);
    v20 = *a5;
    v21 = a5[1];
    if (CGCMSConverter)
    {
      goto LABEL_7;
    }

    return 0;
  }

  CFRetain(CGCMSConverter);
  v22 = a5[2];
  v23 = a5[3];
  v24 = a5[4];
  v25 = *(a5 + 10);
  v20 = *a5;
  v21 = a5[1];
LABEL_7:
  v15 = CFGetTypeID(CGCMSConverter);
  v16 = kCGCMSConverterID;
  if (!kCGCMSConverterID)
  {
    pthread_once(&CGCMSConverterGetTypeID_once, converter_initialize);
    v16 = kCGCMSConverterID;
  }

  if (v15 == v16)
  {
    v17 = CGCMSConverter[7];
    v26[2] = v22;
    v26[3] = v23;
    v26[4] = v24;
    v27 = v25;
    v26[0] = v20;
    v26[1] = v21;
    v18 = v17(CGCMSConverter, a6, a7, v26);
  }

  else
  {
    v18 = 0;
  }

  CFRelease(CGCMSConverter);
  return v18;
}

uint64_t CGColorSpaceCreateExtendedDisplayP3()
{
  if (CGColorSpaceCreateExtendedDisplayP3_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateExtendedDisplayP3_predicate, &__block_literal_global_194);
  }

  v0 = CGColorSpaceCreateExtendedDisplayP3_space;
  if (CGColorSpaceCreateExtendedDisplayP3_space)
  {
    CFRetain(CGColorSpaceCreateExtendedDisplayP3_space);
  }

  return v0;
}

void provider_for_destination_release_data(uint64_t *a1)
{
  CGDataProviderReleaseData(*a1);
  v2 = *a1;

  CGDataProviderReleaseBytePtr(v2);
}

void provider_for_destination_release_info(uint64_t a1)
{
  if ((*(a1 + 724) & 1) == 0)
  {
    CGDataProviderUnlock(*a1);
  }

  CGDataProviderRelease(*a1);
  v2 = *(a1 + 688);
  if (v2)
  {
    CFRelease(v2);
  }

  CGColorSpaceRelease(*(a1 + 24));
  v3 = *(a1 + 712);
  if (v3)
  {
    vImageConverter_Release(v3);
  }

  v4 = *(a1 + 696);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 704);
  if (v5)
  {
    CGvImageConverterCacheRelease(v5);
  }

  v6 = *(a1 + 728);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 744);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 760);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a1 + 776);
  if (v9)
  {
    vImageConverter_Release(v9);
  }

  v10 = *(a1 + 784);
  if (v10)
  {
    vImageConverter_Release(v10);
  }

  v11 = *(a1 + 792);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 800);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a1 + 808);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a1 + 816);
  if (v14)
  {
    free(v14);
  }

  free(a1);
}

uint64_t argb32_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  memset(v42, 0, sizeof(v42));
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  memset(v49, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v35, v49) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = 134755160;
  v22 = *a3;
  *(&v35 + 1) = __PAIR64__(*v6, *a3);
  if (v22 != 134755160)
  {
    v23 = SAMPLEINDEX(v22, v10, v11, v12, v13, v14, v15, v16);
    if (!v23)
    {
      return 0xFFFFFFFFLL;
    }

    if (v23 > 0xB)
    {
      if (v23 <= 0x13)
      {
        if (v23 - 14 >= 4)
        {
          if (v23 != 13 && v23 != 12)
          {
            goto LABEL_42;
          }

          v24 = *(a2 + 12);
          if (v24)
          {
            goto LABEL_42;
          }

LABEL_29:
          v25 = 0;
          goto LABEL_43;
        }

LABEL_28:
        LOBYTE(v24) = 0;
        goto LABEL_29;
      }
    }

    else
    {
      if (v23 > 6)
      {
        switch(v23)
        {
          case 7u:
            LOBYTE(v24) = 0;
            v25 = 32;
            break;
          case 9u:
            LOBYTE(v24) = 0;
            v25 = 40;
            break;
          case 8u:
            LOBYTE(v24) = 0;
            v25 = 8;
            goto LABEL_43;
          default:
            goto LABEL_42;
        }

        goto LABEL_43;
      }

      if (v23 != 2)
      {
        if (v23 != 5)
        {
          if (v23 != 6)
          {
            goto LABEL_42;
          }

          goto LABEL_28;
        }

        LOBYTE(v24) = 0;
        v25 = 24;
LABEL_43:
        *&v35 = argb32_image_sample[v23 + 1];
        if (v35)
        {
          goto LABEL_53;
        }

        if ((HIWORD(*a3) & 0x3Fu) > 8)
        {
          if ((*a3 & 0x3F0000u) >> 16 > 0x10)
          {
LABEL_50:
            *&v35 = *&RGBF_image_sample[2 * v23 + 2];
            if (v35)
            {
              v21 = 538981289;
              v26 = 16;
              goto LABEL_52;
            }

            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          *&v35 = *&RGB8_image_sample[2 * v23 + 2];
          if (v35)
          {
            v21 = 134755224;
            goto LABEL_53;
          }
        }

        *&v35 = *&RGB16_image_sample[2 * v23 + 2];
        if (v35)
        {
          v21 = 269497256;
          v26 = 8;
LABEL_52:
          LODWORD(v36) = v26;
LABEL_53:
          DWORD2(v35) = v21;
          if (v24)
          {
            goto LABEL_97;
          }

LABEL_54:
          if ((BYTE4(v36) & 7) != 3 || (v8 - 1) > 1 || a2[2] != 5 && a2[2])
          {
            goto LABEL_97;
          }

          if (v23 > 0xB)
          {
            if (v23 > 0x13)
            {
              goto LABEL_97;
            }

            if (v23 > 14)
            {
              switch(v23)
              {
                case 0xFu:
                  if (v8 == 1 && (BYTE4(v36) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
                  {
                    argb32_mark_image_rgb48(a2, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v13, v14, v15, v16);
                    return 1;
                  }

                  DWORD2(v35) = *a3;
                  v29 = argb32_image_mark_rgb48;
                  break;
                case 0x10u:
                  if ((~DWORD1(v36) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                  {
                    argb32_mark_image_RGBA64(a2, v8, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v14, v15, v16);
                    return 1;
                  }

                  DWORD2(v35) = *a3;
                  v29 = argb32_image_mark_RGBA64;
                  break;
                case 0x11u:
                  if ((~DWORD1(v36) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                  {
                    argb32_mark_image_rgba64(a2, v8, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v14, v15, v16);
                    return 1;
                  }

                  DWORD2(v35) = *a3;
                  v29 = argb32_image_mark_rgba64;
                  break;
                default:
                  goto LABEL_97;
              }
            }

            else if (v23 == 12)
            {
              if (v8 == 1 && (BYTE4(v36) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
              {
                argb32_mark_image_W16(a2, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v13, v14, v15, v16);
                return 1;
              }

              DWORD2(v35) = *a3;
              v29 = argb32_image_mark_W16;
            }

            else if (v23 == 13)
            {
              if (v8 == 1 && (BYTE4(v36) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
              {
                argb32_mark_image_w16(a2, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v13, v14, v15, v16);
                return 1;
              }

              DWORD2(v35) = *a3;
              v29 = argb32_image_mark_w16;
            }

            else
            {
              if (v8 == 1 && (BYTE4(v36) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
              {
                argb32_mark_image_RGB48(a2, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v13, v14, v15, v16);
                return 1;
              }

              DWORD2(v35) = *a3;
              v29 = argb32_image_mark_RGB48;
            }
          }

          else
          {
            HIDWORD(v28) = v25;
            LODWORD(v28) = v25;
            v27 = v28 >> 3;
            if (v27 > 2)
            {
              switch(v27)
              {
                case 3:
                  if (v8 == 1 && (BYTE4(v36) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
                  {
                    argb32_mark_image_RGB24(a2, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v13, v14, v15, v16);
                    return 1;
                  }

                  DWORD2(v35) = *a3;
                  v29 = argb32_image_mark_RGB24;
                  break;
                case 4:
                  if ((~DWORD1(v36) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                  {
                    argb32_mark_image_rgbx32(a2, v8, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v14, v15, v16);
                    return 1;
                  }

                  DWORD2(v35) = *a3;
                  v29 = argb32_image_mark_rgb32;
                  break;
                case 5:
                  if ((~DWORD1(v36) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                  {
                    argb32_mark_image_xrgb32(a2, v8, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v14, v15, v16);
                    return 1;
                  }

                  if (v43)
                  {
                    if (v21 == 134755160)
                    {
                      v17.n128_u32[0] = DWORD2(v43);
                      if (*(&v43 + 2) >= 1.0 && *(v42 + 8) == 0)
                      {
                        argb32_sample_rectilinear_argb32(a2, &v35, v8, v17);
                        return 1;
                      }
                    }
                  }

                  DWORD2(v35) = *a3;
                  v30 = argb32_image_mark_argb32;
                  goto LABEL_149;
                default:
                  goto LABEL_97;
              }
            }

            else
            {
              if (v27)
              {
                if (v27 != 1)
                {
                  if (v27 == 2)
                  {
                    if (v8 == 1 && (BYTE4(v36) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
                    {
                      argb32_mark_image_W8(a2, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v13, v14, v15, v16);
                      return 1;
                    }

                    DWORD2(v35) = *a3;
                    v29 = argb32_image_mark_W8;
                    goto LABEL_154;
                  }

LABEL_97:
                  argb32_image_mark(a2, &v35, v8, v17);
                  return 1;
                }

                if ((~DWORD1(v36) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                {
                  argb32_mark_image_XRGB32(a2, v8, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v14, v15, v16);
                  return 1;
                }

                DWORD2(v35) = *a3;
                v30 = argb32_image_mark_RGB32;
LABEL_149:
                v31 = v30;
                v32 = a2;
                v33 = v8;
                v34 = 8;
LABEL_155:
                argb32_image_mark_image(v32, &v35, v33, v34, v31);
                return 1;
              }

              if ((~DWORD1(v36) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
              {
                argb32_mark_image_RGBX32(a2, v8, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v14, v15, v16);
                return 1;
              }

              DWORD2(v35) = *a3;
              v29 = argb32_image_mark_RGB32;
            }
          }

LABEL_154:
          v31 = v29;
          v32 = a2;
          v33 = v8;
          v34 = 0;
          goto LABEL_155;
        }

        goto LABEL_50;
      }

      v24 = *(a2 + 12);
      if (!v24)
      {
        v25 = 16;
        goto LABEL_43;
      }
    }

LABEL_42:
    v25 = 255;
    LOBYTE(v24) = 1;
    goto LABEL_43;
  }

  if (v43 || (~DWORD1(v36) & 0xC3) != 0)
  {
    goto LABEL_36;
  }

  v17.n128_u32[0] = *(a3 + 8);
  if ((v8 - 1) > 1 || (BYTE4(v36) & 4) != 0 || (LODWORD(v18) = 1.0, v17.n128_f32[0] != 1.0))
  {
    LODWORD(v18) = 1.0;
    if (v17.n128_f32[0] >= 1.0)
    {
      goto LABEL_35;
    }

LABEL_36:
    *&v35 = argb32_sample_argb32;
    v23 = 9;
    v25 = 40;
    goto LABEL_54;
  }

  if (a2[2] != 5 && a2[2])
  {
LABEL_35:
    if (!*(a3 + 24))
    {
      if ((BYTE4(v36) & 4) != 0)
      {
        v17.n128_u64[0] = *(a3 + 32);
        *(a2 + 8) = v17.n128_u64[0];
      }

      argb32_mark(a1, a2, v17, v18, v19, v20, v11, v12, v13, v14, v15, v16);
      return 1;
    }

    goto LABEL_36;
  }

  argb32_mark_image(a2, v8, v41 >> SBYTE6(v36), *(&v41 + 1) >> SBYTE7(v36), *(&v42[1] + 1) >> SBYTE7(v36), v14, v15, v16);
  return 1;
}

uint64_t CGBitmapPixelInfoGet_vImageFormat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v10) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v11 = *(a2 + 16);
  v12 = *(a2 + 24) - 1;
  if (v12 <= 8)
  {
    v10 = qword_1844E0DE8[v12];
  }

  v13 = v10 + v11;
  BitsPerComponent = CGPixelComponentGetBitsPerComponent(*a2, a2, a3, a4, a5, a6, a7, a8);
  *a1 = BitsPerComponent;
  *(a1 + 4) = BitsPerComponent * v13;
  switch(v11)
  {
    case 4:
      DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
      break;
    case 3:
      DeviceCMYK = CGColorSpaceCreateDeviceRGB();
      break;
    case 1:
      DeviceCMYK = CGColorSpaceCreateDeviceGray();
      break;
    default:
      DeviceCMYK = 0;
      break;
  }

  *(a1 + 8) = DeviceCMYK;
  memcpy(v17, a2, sizeof(v17));
  result = CGBitmapPixelInfoGetCGImageBitmapInfo(v17);
  *(a1 + 16) = result;
  *(a1 + 24) = *(a2 + 40);
  *(a1 + 32) = 0;
  return result;
}

void argb32_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  if (a2 != 2 && !*(a1 + 96))
  {
    if (*(a1 + 48))
    {
      v11 = 0;
    }

    else
    {
      v11 = a2;
    }
  }

  v13 = *(a1 + 28);
  v15 = *(a1 + 4);
  v14 = *(a1 + 8);
  v26 = v14;
  v27 = v15;
  v16 = *(a1 + 136);
  if (v16)
  {
    v17 = *(a1 + 104);
    LODWORD(v28) = *(a1 + 108);
    HIDWORD(v28) = v17;
    shape_enum_clip_alloc(a1, a2, v16, 1, 1, 1, v17, v28, v15, v14);
    v19 = v18;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  v20 = 0;
  v21 = 0;
  v19 = 0;
  v28 = 0;
  while (1)
  {
    v22 = *(a1 + 76);
    v23 = (*(a1 + 88) + v22 * (a4 + v21 * a5) + 4 * (v20 + a3));
    v24 = *(a1 + 12) + v20;
    v25 = (*(a1 + 40) + (*(a1 + 16) + v21) * v13 + 4 * v24);
    if (v11 == 1)
    {
      CGBlt_copyBytes(4 * v15, v26, v23, v25, v22 * a5, v13);
      if (!v19)
      {
        return;
      }
    }

    else if (v11)
    {
      CGSBlend8888toRGBA8888(v23, v22 * a5, v25, v13, v15, v26, 0xC6u, *(a1 + 48) != 0);
      if (!v19)
      {
        return;
      }
    }

    else
    {
      CGSConvertRGBX8888toRGBA8888(v23, v22 * a5, (*(a1 + 40) + (*(a1 + 16) + v21) * v13 + 4 * v24), v13, v15, v26, a7, a8);
      if (!v19)
      {
        return;
      }
    }

LABEL_14:
    if (!shape_enum_clip_next(v19, &v28 + 1, &v28, &v27, &v26))
    {
      break;
    }

    v21 = v28;
    v20 = HIDWORD(v28);
    v15 = v27;
  }

  free(v19);
}

void CGSBlend8888toRGBA8888(char *a1, int a2, char *a3, int a4, int a5, int a6, unsigned int a7, char a8)
{
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a5;
  if (a3 > a1 && a2 == a4)
  {
    v16 = &a1[4 * a5];
    if (v16 <= a3)
    {
      v19 = &v16[(a6 - 1) * a2];
      if (v19 <= a3)
      {
        v11 = a2;
      }

      else
      {
        v11 = -a2;
      }

      if (v19 > a3)
      {
        v17 = &a3[(a6 - 1) * a2];
      }

      else
      {
        v17 = a3;
      }

      if (v19 <= a3)
      {
        v18 = a2;
      }

      else
      {
        v12 = &a3[(a6 - 1) * a2];
        v18 = -a2;
      }

      if (v19 <= a3)
      {
        v13 = a2;
      }

      else
      {
        v13 = -a2;
      }

      if (v19 > a3)
      {
        v14 = (v19 - 4 * a5);
      }
    }

    else
    {
      v11 = 4 * a5;
      v17 = malloc_type_malloc(4 * a5 * a6, 0x4391C613uLL);
      v18 = v13;
    }
  }

  else
  {
    v17 = a3;
    v18 = a4;
  }

  srcTop.data = v14;
  srcTop.height = a6;
  srcTop.width = v15;
  srcTop.rowBytes = v13;
  srcBottom.data = v12;
  srcBottom.height = a6;
  srcBottom.width = v15;
  srcBottom.rowBytes = v18;
  dest.data = v17;
  dest.height = a6;
  dest.width = v15;
  dest.rowBytes = v11;
  permuteMap[0] = a7 >> 6;
  permuteMap[1] = (a7 >> 4) & 3;
  permuteMap[2] = (a7 >> 2) & 3;
  permuteMap[3] = a7 & 3;
  vImagePremultipliedAlphaBlendWithPermute_RGBA8888(&srcTop, &srcBottom, &dest, permuteMap, a8 != 1, 0x10u);
  if (v12 != v17)
  {
    CGBlt_copyBytes(v11, a6, v17, v12, v11, v18);
    free(v17);
  }
}

void imageProvider_releaseInfo(CFTypeRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CGImageBlockSetRelease(v2);
    a1[1] = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t CGRect.debugDescription.getter()
{
  sub_184390098();

  v0 = sub_18438FDD8();
  MEMORY[0x1865EC630](v0);

  MEMORY[0x1865EC630](8236, 0xE200000000000000);
  v1 = sub_18438FDD8();
  MEMORY[0x1865EC630](v1);

  MEMORY[0x1865EC630](8236, 0xE200000000000000);
  v2 = sub_18438FDD8();
  MEMORY[0x1865EC630](v2);

  MEMORY[0x1865EC630](8236, 0xE200000000000000);
  v3 = sub_18438FDD8();
  MEMORY[0x1865EC630](v3);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 40;
}

void CGBlt_copyBytes(int a1, int a2, char *a3, char *a4, int a5, int a6)
{
  if (a1 >= 1)
  {
    v6 = a2;
    if (a2 >= 1)
    {
      v7 = a6;
      v8 = a5;
      v9 = a4;
      v10 = a3;
      if (a4 != a3 || a6 != a5)
      {
        qword_1ED4E0528 = "CGBlt_copyBytes: buffer check:\n";
        ERROR_CGBlt_copyBytes_BufferIsNotReadable();
        ERROR_CGBlt_copyBytes_BufferIsNotReadable();
        v12 = v6 - 1;
        ERROR_CGBlt_copyBytes_BufferIsNotBigEnough();
        ERROR_CGBlt_copyBytes_BufferIsNotBigEnough();
        qword_1ED4E0528 = 0;
        v13 = v7 - v8;
        v14 = &v10[v12 * v8];
        v15 = a1;
        v16 = &v9[v12 * v7];
        if (v9 < v10 || &v14[a1 - 1] < v9)
        {
          v20 = 0;
          if (v9 < v10 && v13 >= 1 && &v16[v15 - 1] >= v10)
          {
            v21 = (v10 - v9) / v13;
            v22 = __OFSUB__(v6, v21);
            v23 = v6 - v21;
            if ((v23 < 0) ^ v22 | (v23 == 0))
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }
          }
        }

        else if (v7 >= v8)
        {
          v20 = 0;
          v8 = -v8;
          v7 = -v7;
          v9 = v16;
          v10 = v14;
        }

        else if (v9 == v10)
        {
          v20 = 0;
        }

        else
        {
          v17 = (v10 - v9) / v13;
          if (v17 >= v6)
          {
            v20 = 0;
            v19 = v16;
            v18 = v14;
          }

          else
          {
            v14 = &v10[v8 * v17];
            v16 = &v9[v7 * v17];
            v18 = &v14[v8];
            v19 = &v16[v7];
            v20 = ~v17 + v6;
          }

          v8 = -v8;
          v7 = -v7;
          v9 = v16;
          v10 = v14;
          v16 = v19;
          v14 = v18;
        }

        while (1)
        {
          if (v6 <= v20)
          {
            if (!v20)
            {
              return;
            }

            v20 = 0;
            v8 = -v8;
            v7 = -v7;
            v9 = v16;
            v10 = v14;
          }

          memmove(v9, v10, v15);
          v10 += v8;
          --v6;
          v9 += v7;
        }
      }
    }
  }
}

CFTypeRef create_locale(uint64_t a1, unsigned int a2, uint32_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = (a2 | (a3 << 16));
  os_unfair_lock_lock((a1 + 64));
  Value = CFDictionaryGetValue(*(a1 + 72), v6);
  if (!Value)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = &locale_to_language;
        v14 = 119;
        while (*v13 != a3)
        {
          v13 += 10;
          if (!--v14)
          {
            goto LABEL_42;
          }
        }

        cStr[0] = 0;
        if (v13[1])
        {
          v16 = 0;
            ;
          }

          v18 = -1;
          v19 = (v13 + 1);
          while (1)
          {
            v20 = *v19++;
            cStr[v16 + v18] = v20;
            if (!v20)
            {
              break;
            }

            if (++v18 == 2)
            {
              cStr[v16 + 2] = 0;
              break;
            }
          }
        }

        if (v13[4])
        {
          v21 = 0;
          v22 = (v13 + 4);
          do
          {
            v23 = v21;
          }

          while (cStr[v21++]);
          v25 = 0;
          cStr[v23] = 95;
          while (1)
          {
            v26 = *v22++;
            cStr[v25 + v21] = v26;
            if (!v26)
            {
              break;
            }

            if (++v25 == 4)
            {
              cStr[v21 + 4] = 0;
              break;
            }
          }
        }

        v28 = v13[8];
        v27 = v13 + 8;
        if (v28)
        {
          v29 = 0;
          do
          {
            v30 = v29;
          }

          while (cStr[v29++]);
          v32 = 0;
          v33 = 0;
          cStr[v30] = 95;
          while (1)
          {
            v34 = v27[v33];
            cStr[v32 + v29] = v34;
            if (!v34)
            {
              break;
            }

            ++v32;
            v33 = 1;
            if (v32 == 2)
            {
              cStr[v29 + v32] = 0;
              break;
            }
          }
        }

        v35 = CFStringCreateWithCStringNoCopy(0, cStr, 0x600u, *MEMORY[0x1E695E498]);
        if (!v35)
        {
          goto LABEL_42;
        }

        v11 = v35;
        v12 = CFLocaleCreate(0, v35);
      }

      else
      {
        if (a2 != 3)
        {
          goto LABEL_42;
        }

        LocaleIdentifierFromWindowsLocaleCode = CFLocaleCreateLocaleIdentifierFromWindowsLocaleCode(0, a3);
        if (!LocaleIdentifierFromWindowsLocaleCode)
        {
          goto LABEL_42;
        }

        v10 = LocaleIdentifierFromWindowsLocaleCode;
        v11 = CFLocaleCreate(0, LocaleIdentifierFromWindowsLocaleCode);
        CFRelease(v10);
        if (!v11)
        {
          goto LABEL_42;
        }

        v12 = CGCreateCanonicalLanguageLocale();
      }

      Value = v12;
      CFRelease(v11);
      if (Value)
      {
        goto LABEL_41;
      }
    }

    else
    {
      System = CFLocaleGetSystem();
      Value = CFRetain(System);
      if (Value)
      {
LABEL_41:
        CFDictionarySetValue(*(a1 + 72), v6, Value);
        CFRelease(Value);
        goto LABEL_2;
      }
    }

LABEL_42:
    os_unfair_lock_unlock((a1 + 64));
    return 0;
  }

LABEL_2:
  os_unfair_lock_unlock((a1 + 64));

  return CFRetain(Value);
}

_OWORD *colorspace_from_ICC_data_data_key_retain(_OWORD *a1, void *a2)
{
  result = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  if (result)
  {
    *result = *a1;
  }

  *a2 = result;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateWithICCData(CFTypeRef data)
{
  key[2] = *MEMORY[0x1E69E9840];
  if (!data)
  {
    return 0;
  }

  v2 = CFGetTypeID(data);
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  if (v2 == CGDataProviderGetTypeID_id)
  {
    v3 = CGDataProviderCopyData(data);
  }

  else
  {
    v4 = CFGetTypeID(data);
    if (v4 != CFDataGetTypeID())
    {
      return 0;
    }

    v3 = CFRetain(data);
  }

  v5 = v3;
  value = 0;
  if (!v3)
  {
    return 0;
  }

  if (CGColorSpaceFromICCDataCacheGetRetained_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorSpaceFromICCDataCacheGetRetained_cglibrarypredicate, &__block_literal_global_17217);
  }

  Retained_f = CGColorSpaceFromICCDataCacheGetRetained_f(v5, 0);
  if (!Retained_f)
  {
    goto LABEL_34;
  }

  if (CGColorSpaceFromICCDataCacheGetRetained_cglibrarypredicate_4 != -1)
  {
    dispatch_once(&CGColorSpaceFromICCDataCacheGetRetained_cglibrarypredicate_4, &__block_literal_global_7_17218);
  }

  if (CGColorSpaceFromICCDataCacheGetRetained_f_3(Retained_f, 0, 0))
  {
    if (CGColorSpaceFromICCDataCacheGetRetained_cglibrarypredicate_10 != -1)
    {
      dispatch_once(&CGColorSpaceFromICCDataCacheGetRetained_cglibrarypredicate_10, &__block_literal_global_13_17219);
    }

    key[0] = CGColorSpaceFromICCDataCacheGetRetained_f_9(Retained_f);
    key[1] = v7;
    if (get_cache_predicate_17220 != -1)
    {
      dispatch_once(&get_cache_predicate_17220, &__block_literal_global_17_17221);
    }

    pthread_mutex_lock(get_cache_colorspace_cache);
    if (get_cache_predicate_17220 != -1)
    {
      dispatch_once(&get_cache_predicate_17220, &__block_literal_global_17_17221);
    }

    if (cache_get_and_retain(*(get_cache_colorspace_cache + 64), key, &value))
    {
      value = create_colorspace_with_colorSync_profile(Retained_f, 0);
      if (!value)
      {
LABEL_28:
        if (get_cache_predicate_17220 != -1)
        {
          dispatch_once(&get_cache_predicate_17220, &__block_literal_global_17_17221);
        }

        cache_release_value(*(get_cache_colorspace_cache + 64), value);
        if (get_cache_predicate_17220 != -1)
        {
          dispatch_once(&get_cache_predicate_17220, &__block_literal_global_17_17221);
        }

        pthread_mutex_unlock(get_cache_colorspace_cache);
        goto LABEL_33;
      }

      if (get_cache_predicate_17220 != -1)
      {
        dispatch_once(&get_cache_predicate_17220, &__block_literal_global_17_17221);
      }

      cache_set_and_retain(*(get_cache_colorspace_cache + 64), key, value, 0);
    }

    if (value)
    {
      CFRetain(value);
    }

    goto LABEL_28;
  }

LABEL_33:
  CFRelease(Retained_f);
  Retained_f = value;
LABEL_34:
  CFRelease(v5);
  return Retained_f;
}

CGContextRef CGBitmapContextCreateWithCallbacks(size_t a1, size_t a2, const void *a3, const void *a4, const void *a5, const void *a6, CFTypeRef cf, uint64_t a8)
{
  if (useDebugBitmap_predicate != -1)
  {
    dispatch_once(&useDebugBitmap_predicate, &__block_literal_global_8609);
  }

  if (useDebugBitmap_use_bitmap)
  {
    v15 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
    return CGBitmapContextCreateWithData(0, a1, a2, 8uLL, 0, v15, 1u, 0, 0);
  }

  if (!cf || (v17 = CFGetTypeID(cf), v17 == CFDictionaryGetTypeID()))
  {
    if (a1 - 0x80000000 >= 0xFFFFFFFF80000001 && a2 - 0x80000000 >= 0xFFFFFFFF80000001)
    {
      v18 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E00409E4AD1ABuLL);
      if (v18)
      {
        v19 = v18;
        v18->i64[0] = a1;
        v18->i64[1] = a2;
        v18[1] = vdupq_n_s64(0x4052000000000000uLL);
        v18[2].i64[0] = _Block_copy(a3);
        *(v19 + 40) = _Block_copy(a4);
        *(v19 + 48) = _Block_copy(a5);
        *(v19 + 56) = _Block_copy(a6);
        if (cf)
        {
          v22 = CFRetain(cf);
        }

        else
        {
          v22 = 0;
        }

        *(v19 + 64) = v22;
        v23 = CGContextCreateWithDelegateAndInfo(0, 9, 0, 0, v19, automatic_bitmap_context_context_finalize, v20, v21);
        if (!v23)
        {
          CGPostError("%s: failed to create Automatic context.", v24, v25, v26, v27, v28, v29, v30, "CGBitmapContextCreateWithCallbacks");
          automatic_bitmap_context_info_release(v19, v73, v74, v75, v76, v77, v78, v79);
          return v23;
        }

        v82 = *(v19 + 32);
        v83 = *(v19 + 48);
        v31 = *(v19 + 64);
        v84 = v31;
        v80 = *v19;
        v81 = *(v19 + 16);
        LODWORD(v85[0]) = 0;
        if (CGCFDictionaryGetInteger(v31, @"kCGAutoBitDepthMax", v85))
        {
          v32 = v85[0];
        }

        else
        {
          v32 = 5;
        }

        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v85[0] = 0;
        v85[1] = 0;
        v86 = vcvtq_f64_u64(*v19);
        CGDisplayList = CG::DisplayList::createCGDisplayList(0, v85, v34, v35, v36, v37, v38, v39);
        if (CGDisplayList)
        {
          v48 = CGDisplayList;
          v49 = CGDisplayListContextCreate(CGDisplayList, v41, v42, v43, v44, v45, v46, v47);
          if (v49)
          {
            v57 = v49;
            CGContextErase(v49, v50, v51, v52, v53, v54, v55, v56);
            v58 = malloc_type_calloc(1uLL, 0x148uLL, 0x10E00407496A52CuLL);
            if (v58)
            {
              v59 = v58;
              *(v58 + 2) = v82;
              *(v58 + 3) = v83;
              *v58 = v80;
              *(v58 + 1) = v81;
              *(v58 + 8) = v84;
              *(v58 + 9) = v48;
              *(v58 + 10) = v57;
              *(v58 + 11) = 0;
              *(v58 + 24) = v32;
              *(v58 + 108) = 0;
              *(v58 + 100) = 0;
              *(v58 + 29) = 1;
              *(v58 + 15) = 850045863;
              *(v58 + 9) = 0u;
              *(v58 + 10) = 0u;
              *(v58 + 8) = 0u;
              *(v58 + 22) = 0;
              *(v58 + 23) = Mutable;
              *(v58 + 40) = 0;
              *(v58 + 18) = 0u;
              *(v58 + 19) = 0u;
              *(v58 + 16) = 0u;
              *(v58 + 17) = 0u;
              *(v58 + 14) = 0u;
              *(v58 + 15) = 0u;
              *(v58 + 12) = 0u;
              *(v58 + 13) = 0u;
              pthread_mutex_init((v58 + 120), 0);
              v67 = CGContextDelegateCreate(v59, v60, v61, v62, v63, v64, v65, v66);
              CGContextDelegateSetCallbacks(v67, &RIPAutomaticContextDelegateCreate_callbacks, 19, v68, v69, v70, v71, v72);
              v23[5] = v67;
              if (v67)
              {
                return v23;
              }

              goto LABEL_30;
            }

            CFRelease(v48);
          }

          else
          {
            v57 = v48;
          }

          CFRelease(v57);
        }

        v23[5] = 0;
LABEL_30:
        CGPostError("%s: failed to create delegate.", v41, v42, v43, v44, v45, v46, v47, "CGBitmapContextCreateWithCallbacks");
        CFRelease(v23);
        return 0;
      }
    }
  }

  CGPostError("%s: failed to create CGAutomaticBitmapContextInfo.", a2, a3, a4, a5, a6, cf, a8, "CGBitmapContextCreateWithCallbacks");
  return 0;
}

const void *__useDebugBitmap_block_invoke()
{
  v1 = 0;
  result = get_BOOLean_property("AUTOUSEBITMAP", copy_local_domain_value, &v1);
  if (result)
  {
    useDebugBitmap_use_bitmap = v1;
  }

  return result;
}

void CGContextErase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = 0;
LABEL_7:
    handle_invalid_context("CGContextErase", v10, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v10 = a1;
    goto LABEL_7;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 168);
    if (v9)
    {
      v9();
    }
  }
}

uint64_t dlRecorder_Operation(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf1, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (v8 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, cf1, a5, a6, a7, a8, "dlRecorder_Operation");
    return 1000;
  }

  if (a5)
  {
    if (CFEqual(cf1, @"kCGContextDisplayList"))
    {
      v11 = v8;
      v12 = 6;
      v13 = 0;
    }

    else
    {
      v11 = v8;
      v12 = 5;
      v13 = cf1;
    }

    v15 = a5;
    goto LABEL_15;
  }

  if (CFEqual(cf1, @"kCGContextErase"))
  {
    v11 = v8;
    v12 = 2;
  }

  else
  {
    if (!CFEqual(cf1, @"kCGContextClear"))
    {
      if (!CFEqual(cf1, @"EndTag"))
      {
        return 1006;
      }

      v11 = v8;
      v12 = 5;
      v13 = cf1;
      goto LABEL_14;
    }

    v11 = v8;
    v12 = 1;
  }

  v13 = 0;
LABEL_14:
  v15 = 0;
LABEL_15:

  return CG::DisplayListRecorder::recordAction(v11, v12, v13, v15);
}

uint64_t CG::DisplayListRecorder::recordAction(CFArrayRef *a1, char a2, const void *a3, const void *a4)
{
  v7 = CG::DisplayListRecorder::currentDisplayList(a1);
  if (!v7)
  {
    return 1000;
  }

  v15 = v7;
  if (v7[5] == INFINITY || v7[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v15[7] != 0.0 && v15[8] != 0.0)
  {
    result = 0;
    v18 = a2 & 0xF;
    if (v18 <= 3)
    {
      if (v18 != 1)
      {
        if (v18 != 2)
        {
          if (v18 != 3)
          {
            return result;
          }

          if (*(v15 + 74) == 1)
          {
            if (CG::DisplayList::cfTypeResourceForCFType((v15 + 2), a4))
            {
              operator new();
            }

            return 1000;
          }

          return 0;
        }

        if (*(v15 + 73) == 1)
        {
          *(v15 + 11) = CGRectNull;
        }
      }

LABEL_23:
      if (*(v15 + 74) == 1)
      {
        operator new();
      }

      return 0;
    }

    switch(v18)
    {
      case 4u:
        goto LABEL_23;
      case 5u:
        CG::DisplayList::cfTypeResourceForCFType((v15 + 2), a4);
        if (CG::DisplayList::cfTypeResourceForCFType((v15 + 2), a3))
        {
          operator new();
        }

        return 1000;
      case 6u:
        CGPostError("Unimplemented", v8, v9, v10, v11, v12, v13, v14, v19);
        return 1006;
    }
  }

  return result;
}

uint64_t rip_auto_context_draw_rects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = 120;
    pthread_mutex_lock(0x78);
    v4 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 288);
  v5 = v4 + 120;
  pthread_mutex_lock((v4 + 120));
  if (!v4)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = *(v4 + 88);
  if (!v6)
  {
    v6 = *(v4 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v4, a3);
  v14 = *(v4 + 112);
  v15 = *(a3 + 120);
  if (*(v15 + 48) >= v14)
  {
    v14 = *(v15 + 48);
  }

  *(v4 + 112) = v14;
  if (v6)
  {
    v16 = *(v6 + 40);
    if (v16)
    {
      v17 = *(v16 + 64);
      if (v17)
      {
        v18 = v17();
      }

      else
      {
        v18 = 1006;
      }
    }

    else
    {
      v18 = 0;
    }

    *(v4 + 105) |= rip_auto_context_contains_transparency(v4, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v18 = 0;
  }

  pthread_mutex_unlock(v5);
  return v18;
}

void rip_auto_context_update_content_info_from_GState(uint64_t a1, uint64_t a2)
{
  FillColor = CGGStateGetFillColor(a2);
  if (FillColor < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(FillColor + 32);
  }

  update_colored_pattern_info_2365(a1 + 280, v5);
  StrokeColor = CGGStateGetStrokeColor(a2);
  if (StrokeColor < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(StrokeColor + 32);
  }

  update_colored_pattern_info_2365(a1 + 304, v7);
  if ((*(a1 + 104) & 1) == 0)
  {
    v8 = CGGStateGetFillColor(a2);
    v10 = CGColorIsWideGamut(v8) || (v9 = CGGStateGetStrokeColor(a2), CGColorIsWideGamut(v9)) || *(a1 + 280) && (*(a1 + 288) & 1) != 0 || *(a1 + 304) && (*(a1 + 312) & 1) != 0;
    *(a1 + 104) = v10;
  }

  v11 = *(a1 + 116);
  ColorSpace = CGGStateGetFillColor(a2);
  if (ColorSpace)
  {
    if ((ColorSpace & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(ColorSpace, v13, v14, v15, v16, v17, v18, v19);
    }

    else
    {
      ColorSpace = *(ColorSpace + 24);
    }
  }

  v20 = rip_adaptive_bitmap_context_get_content_type_from_color_space(ColorSpace) | v11 | *(a1 + 292);
  v21 = CGGStateGetStrokeColor(a2);
  if (v21)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
      v21 = CGTaggedColorGetColorSpace(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    else
    {
      v21 = *(v21 + 24);
    }
  }

  *(a1 + 116) = v20 | rip_adaptive_bitmap_context_get_content_type_from_color_space(v21) | *(a1 + 316) | (2 * (*(*(a2 + 120) + 16) != 0));
  v35 = CGPixelComponentMax(*(a1 + 296), *(a1 + 100), v29, v30, v31, v32, v33, v34);
  *(a1 + 100) = v35;
  *(a1 + 100) = CGPixelComponentMax(*(a1 + 320), v35, v36, v37, v38, v39, v40, v41);
  *(a1 + 105) |= *(a1 + 313) | *(a1 + 289);
  ContentHeadroom = *(a1 + 108);
  v43 = CGGStateGetFillColor(a2);
  if (CGColorGetContentHeadroom(v43) >= ContentHeadroom)
  {
    ContentHeadroom = CGColorGetContentHeadroom(v43);
  }

  if (ContentHeadroom <= *(a1 + 300))
  {
    ContentHeadroom = *(a1 + 300);
  }

  v44 = CGGStateGetStrokeColor(a2);
  if (ContentHeadroom <= CGColorGetContentHeadroom(v44))
  {
    ContentHeadroom = CGColorGetContentHeadroom(v44);
  }

  v45 = *(a1 + 324);
  if (ContentHeadroom > v45)
  {
    v45 = ContentHeadroom;
  }

  *(a1 + 108) = v45;
}

BOOL CGColorIsWideGamut(unint64_t a1)
{
  if (CGColorIsWideGamut_predicate != -1)
  {
    dispatch_once(&CGColorIsWideGamut_predicate, &__block_literal_global_28_2522);
  }

  v2 = CGColorTransformConvertColor(CGColorIsWideGamut_transform, a1, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Components = CGColorGetComponents(v2);
  v5 = 1;
  if (*Components >= -0.25 && *Components <= 1.03)
  {
    v6 = Components[1];
    if (v6 >= -0.2 && v6 <= 1.05)
    {
      v7 = Components[2];
      v5 = v7 > 1.02 || v7 < -0.1;
    }
  }

  CFRelease(v3);
  return v5;
}

void __CGColorIsWideGamut_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedSRGB");
  CGColorIsWideGamut_transform = color_transform_create(v0, 0);

  CGColorSpaceRelease(v0);
}

void CGGStateClipToOwnedPath(uint64_t *a1, CGPathRef path, int a3)
{
  if (!path)
  {
    return;
  }

  v3 = a3;
  if (a3 == 2)
  {
    v6 = CGClipStrokeCreateWithGState(a1);
    if (v6)
    {
      v7 = v6;
      v8 = v6[67];
      v9 = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
      if (v9)
      {
        v10 = v9;
        *v9 = 1;
        *(v9 + 1) = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
        *(v9 + 4) = 514;
        v9[10] = v8;
        *(v9 + 4) = *(v7 + 11);
        *(v9 + 2) = v7;
        *(v9 + 3) = path;
LABEL_12:
        maybeCopyClipState(a1);
        CGClipStackAddClip(a1[14], v10);

        CGClipRelease(v10);
        return;
      }
    }
  }

  else
  {
    v11 = *(a1[18] + 8);
    v12 = *(a1[15] + 4);
    memset(&v14, 0, sizeof(v14));
    if (CGPathIsRect(path, &v14))
    {
      CFRelease(path);
      v10 = CGClipCreateWithRect(0, HIBYTE(v12) & 1, v14.origin.x, v14.origin.y, v14.size.width, v14.size.height);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = CGClipCreate(v3, HIBYTE(v12) & 1);
      if (v13)
      {
        v10 = v13;
        *(v13 + 4) = v11;
        *(v13 + 3) = path;
        goto LABEL_12;
      }
    }
  }

  CFRelease(path);
}

void clip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v9 = *(a1 + 168);
      if (v9 && (v10 = a2, !CGPathIsEmpty(v9)))
      {
        CGGStateClipToOwnedPath(*(a1 + 96), *(a1 + 168), v10);
        *(a1 + 168) = 0;
      }

      else
      {
        CGPostError("%s: empty path.", a2, a3, a4, a5, a6, a7, a8, "clip");
      }

      return;
    }

    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  handle_invalid_context("clip", v11, a3, a4, a5, a6, a7, a8);
}

_DWORD *CGClipCreate(__int16 a1, char a2)
{
  result = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
  if (result)
  {
    *result = 1;
    result[1] = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
    *(result + 4) = (a1 << 8) | 2;
    *(result + 2) = 0;
    *(result + 10) = a2;
  }

  return result;
}

void CGContextSetInterpolationQuality(CGContextRef c, CGInterpolationQuality quality)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetInterpolationQuality(*(c + 12), quality);
      return;
    }

    v8 = c;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetInterpolationQuality", v8, v2, v3, v4, v5, v6, v7);
}

uint64_t argb32_mark_pixelmask_template(uint64_t result, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v34 = vec::template_mark_pixelmask_row<(CGCompositeOperation)0,_rgba8_t>;
    if (a2 <= 0x17)
    {
      v34 = vec::MethodList<_rgba8_t>::maskMethods[a2];
    }

    v2 = *(result + 88);
    v3 = *(result + 136);
    v4 = *result;
    v5 = *(result + 4);
    v6 = *(result + 8);
    v7 = *(result + 28) >> 2;
    v8 = *(result + 40) + 4 * v7 * *(result + 16) + 4 * *(result + 12);
    v37 = v2;
    v38 = v8;
    if (v3)
    {
      v9 = *(result + 124);
      v10 = v3 + *(result + 108) * v9 + *(result + 104);
      v35 = v10;
      v11 = *(result + 56);
      v12 = *(result + 60);
      v13 = v4 & 0xFF00;
      v14 = *(result + 76);
      if (v13 != 256)
      {
        v20 = *(result + 68);
        v33 = *(result + 64);
        v15 = v14 >> 2;
        v21 = v2 + 4 * (v14 >> 2) * v20;
        v36 = v2;
        v19 = 1;
        v16 = v2;
        v22 = v2;
        goto LABEL_17;
      }

      v15 = v14 >> 2;
      v16 = v2 + 4 * (v14 >> 2) * v12 + 4 * v11;
      v36 = -1;
      v37 = v16;
      if (v15 != v7)
      {
        v19 = 1;
LABEL_16:
        LODWORD(v20) = 0;
        v22 = 0;
        v21 = 0;
        v33 = v15;
LABEL_17:
        v23 = v19 * v5;
        if (v21)
        {
          v24 = v16 + 4 * v15 * (v12 % v20);
          v36 = v24 + 4 * v33;
          v37 = v24 + 4 * (v11 % v33);
          v22 = v37;
        }

        else
        {
          v15 -= v23;
        }

        v25 = v9 - v23;
        v26 = v7 - v23;
        v27 = -(v15 * v20);
        v28 = v6 + 1;
        do
        {
          v29 = v19;
          result = (v34)(&v37, &v38, &v36, &v35, v33);
          v35 += v25;
          v38 += 4 * v26;
          if (v21)
          {
            v30 = v22 + 4 * v15;
            if (v30 >= v21)
            {
              v31 = v27;
            }

            else
            {
              v31 = 0;
            }

            v32 = v30 + 4 * v31;
            v36 += 4 * v31 + 4 * v15;
            v22 = v32;
          }

          else
          {
            v32 = v37 + 4 * v15;
          }

          v37 = v32;
          --v28;
          v19 = v29;
        }

        while (v28 > 1);
        return result;
      }

      v17 = (v8 - v16) >> 2;
      if (v17 >= 1)
      {
        if (v17 <= v5)
        {
          v16 += 4 * (v5 - 1);
          v37 = v16;
          v38 = v8 + 4 * (v5 - 1);
          v35 = v10 + v5 - 1;
          v19 = 0xFFFFFFFFLL;
          goto LABEL_15;
        }

        v18 = v7 * (v6 - 1);
        if (v8 <= v16 + 4 * v18 + 4 * v5 - 4)
        {
          v37 = v16 + 4 * v18;
          v38 = v8 + 4 * v18;
          v7 = -v7;
          v35 = v10 + v9 * (v6 - 1);
          v9 = -v9;
          v19 = 1;
          v16 = v37;
          goto LABEL_15;
        }
      }

      v19 = 1;
LABEL_15:
      v15 = v7;
      goto LABEL_16;
    }
  }

  return result;
}

void sub_183EFC6FC(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x183EFC6F4);
}

void CG::DisplayListEntryRects::~DisplayListEntryRects(void **this)
{
  *this = &unk_1EF23AC20;
  free(this[17]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23AC20;
  free(this[17]);
}

CGPathRef CGPathCreateWithEllipseInRect(CGRect rect, const CGAffineTransform *transform)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 88, v15, v16, v17, v18, v19, v20);
  if (Instance)
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v23 = CGRectStandardize(v24);
    CG::Path::append_ellipse((Instance + 16), &v23, 1, 0, transform);
  }

  return Instance;
}

void CGContextAddEllipseInRect(CGContextRef c, CGRect rect)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
      {
        v14 = *(c + 12);
        v15 = *(c + 21);
        if (v15)
        {

          CGPathAddEllipseInRect(v15, (v14 + 24), rect);
        }

        else
        {
          *(c + 21) = CGPathCreateWithEllipseInRect(rect, (v14 + 24));
        }
      }

      return;
    }

    v16 = c;
  }

  else
  {
    v16 = 0;
  }

  handle_invalid_context("CGContextAddEllipseInRect", v16, v2, v3, v4, v5, v6, v7);
}

void CGClipRelease(char *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = a1[8];
    if (v2 == 4)
    {
      CGTextClippingRelease(*(a1 + 3));
    }

    else if (v2 == 3)
    {
      CGClipMaskRelease(*(a1 + 3));
    }

    else if (v2 == 2)
    {
      v3 = *(a1 + 3);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    v4 = *(a1 + 2);
    if (v4)
    {
      CGClipStrokeRelease(v4);
    }

    free(a1);
  }
}

void CGClipStackAddClip(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  if (*(a2 + 8))
  {
    v5 = *(a1 + 112);
    v4 = *(a1 + 120);
    if (v4 != v5)
    {
LABEL_16:
      atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
      if (v5 == 3)
      {
        v14 = a1 + 128;
      }

      else
      {
        v14 = *(a1 + 128);
      }

      v15 = *(a1 + 120);
      *(a1 + 120) = v15 + 1;
      *(v14 + 8 * v15) = a2;
      if (*(a2 + 8) == 3)
      {
        *(a1 + 8) |= 1u;
      }

      *(a1 + 4) = atomic_fetch_add_explicit(&identifier_23214, 1u, memory_order_relaxed) + 1;
      return;
    }

    v5 = 2 * v4 + 3;
    if (v4 == 3)
    {
      v6 = malloc_type_realloc(0, 0x48uLL, 0x2004093837F09uLL);
      v7 = *(a1 + 120);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v6[i] = *(a1 + 128 + 8 * i);
        }

LABEL_15:
        *(a1 + 128) = v6;
        *(a1 + 112) = v5;
        goto LABEL_16;
      }
    }

    else
    {
      v6 = malloc_type_realloc(*(a1 + 128), 8 * v5, 0x2004093837F09uLL);
    }

    if (!v6)
    {
      return;
    }

    goto LABEL_15;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 10);

  CGClipStackAddRect(a1, v13, v9, v10, v11, v12);
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)2,_rgba8_t>(int8x16_t **result, uint8x8_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, uint16x8_t a9, double a10, double a11, double a12, double a13, uint16x8_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v19 = a18;
  v20 = *result;
  v21 = *a3;
  v22 = *a2;
  v23 = *a4;
  if (a18 < 4)
  {
    goto LABEL_34;
  }

  v24 = 4 * a6;
  v25 = 4 * v24;
  v26 = vdupq_n_s16(0xFE01u);
  a9.i64[0] = -1;
  a9.i64[1] = -1;
  while (1)
  {
    v27 = *v23;
    if (*v23 == -1)
    {
      v34 = &v23[v19];
      v35 = v23;
      do
      {
        v36 = v35++;
      }

      while (v35 <= v34 && (vminvq_u8(vceqq_s8(*v36, a9)) & 0x80) != 0);
      do
      {
        v37 = v36;
        v36 = (v36 + 4);
      }

      while (v36 <= v34 && v37->i32[0] == -1);
      if (v37 < v34)
      {
        while (v37->u8[0] == 255)
        {
          v37 = (v37 + 1);
          if (v37 >= v34)
          {
            v37 = &v23[v19];
            break;
          }
        }
      }

      v38 = v37 - v23;
      v39 = v37 - v23;
      do
      {
        v40 = vqtbl1q_s8(*v20, xmmword_18439C790);
        v41 = vbicq_s8(*v20, vceqzq_s8(v40));
        v42 = vminq_u16(vmull_u8(*v22, *v40.i8), v26);
        v43 = vminq_u16(vmull_high_u8(*v22->i8, v40), v26);
        a14 = vrsraq_n_u16(v43, v43, 8uLL);
        *v22->i8 = vqaddq_u8(v41, vqsubq_u8(*v22->i8, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v42, v42, 8uLL), 8uLL), a14, 8uLL)));
        v23 += v24;
        v39 -= 4;
        v20 = (v20 + v25);
        v22 = (v22 + v25);
      }

      while (v39 > 3);
      v19 = v19 - v38 + v39;
      goto LABEL_31;
    }

    if (v27)
    {
      break;
    }

    v28 = &v23[v19];
    v29 = v23;
    do
    {
      v30 = v29++;
    }

    while (v29 <= v28 && (vminvq_u8(vceqzq_s8(*v30)) & 0x80) != 0);
    do
    {
      v31 = v30;
      v30 = (v30 + 4);
    }

    while (v30 <= v28 && !v31->i32[0]);
    if (v31 < v28)
    {
      while (!v31->i8[0])
      {
        v31 = (v31 + 1);
        if (v31 >= v28)
        {
          v31 = &v23[v19];
          break;
        }
      }
    }

    v32 = v31 - v23;
    v33 = (v31 - v23) * a6;
    v20 = (v20 + 4 * v33);
    v22 = (v22 + 4 * v33);
    v23 += v33;
    v19 -= v32;
LABEL_31:
    if (v19 <= 3)
    {
      goto LABEL_34;
    }
  }

  v44 = 0;
  while (1)
  {
    v45 = *(v20 + v44);
    v46 = *&v22->i8[v44];
    a14.i32[0] = v27;
    v47 = vqtbl1q_s8(a14, xmmword_18439C7A0);
    v48 = vmull_u8(*v45.i8, *v47.i8);
    v49 = vmull_high_u8(v45, v47);
    v50 = vminq_u16(v48, v26);
    v51 = vminq_u16(v49, v26);
    v52 = vrsraq_n_u16(v51, v51, 8uLL);
    *v48.i8 = vqrshrn_n_u16(vrsraq_n_u16(v50, v50, 8uLL), 8uLL);
    *&v18 = vqrshrn_n_u16(v52, 8uLL);
    v53 = vqtbl2q_s8(*(&v18 - 1), xmmword_18439C7B0);
    v54 = vbicq_s8(vqrshrn_high_n_u16(*v48.i8, v52, 8uLL), vceqzq_s8(v53));
    v55 = vminq_u16(vmull_u8(*v46.i8, *v53.i8), v26);
    v56 = vminq_u16(vmull_high_u8(v46, v53), v26);
    a14 = vrsraq_n_u16(v56, v56, 8uLL);
    *&v22->i8[v44] = vqaddq_u8(v54, vqsubq_u8(v46, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v55, v55, 8uLL), 8uLL), a14, 8uLL)));
    v23 += v24;
    v19 -= 4;
    if (v19 < 4)
    {
      break;
    }

    v27 = *v23;
    v44 += v25;
    if ((*v23 - 1) >= 0xFFFFFFFE)
    {
      v20 = (v20 + v44);
      v22 = (v22 + v44);
      goto LABEL_31;
    }
  }

  v20 = (v20 + v25 + v44);
  v22 = (v22 + v25 + v44);
LABEL_34:
  v57 = v19 + a17;
  if (v57)
  {
    v58 = vdupq_n_s16(0xFE01u);
    do
    {
      a9.i32[0] = v20->i32[0];
      v59 = vmovl_u8(*a9.i8);
      LOBYTE(v60) = v59.i8[0];
      BYTE1(v60) = v59.i8[2];
      BYTE2(v60) = v59.i8[4];
      HIBYTE(v60) = v59.i8[6];
      v59.i32[0] = v22->i32[0];
      v61 = vmovl_u8(*v59.i8);
      LOBYTE(v62) = v61.i8[0];
      BYTE1(v62) = v61.i8[2];
      BYTE2(v62) = v61.i8[4];
      HIBYTE(v62) = v61.i8[6];
      v61.i8[7] = 0;
      v61.i8[0] = *v23;
      v61.i8[1] = *v23;
      v61.i8[2] = *v23;
      *(v61.i32 + 3) = *v23;
      v63 = vminq_u16(vmull_u8(v60, *v61.i8), v58);
      v64 = vrsraq_n_u16(v63, v63, 8uLL);
      v65 = vqrshrn_n_u16(v64, 8uLL);
      *v64.i8 = vqtbl1_s8(vqrshrn_high_n_u16(v65, v64, 8uLL), 0x707070703030303);
      v66 = vbic_s8(v65, vceqz_s8(*v64.i8));
      v67 = vminq_u16(vmull_u8(v62, *v64.i8), v58);
      a9 = vrsraq_n_u16(v67, v67, 8uLL);
      *a9.i8 = vqadd_u8(v66, vqsub_u8(v62, vqrshrn_n_u16(a9, 8uLL)));
      *a9.i8 = vmovn_s16(vzip1q_s8(a9, v58));
      v22->i32[0] = a9.i32[0];
      v68 = &v20->i8[4 * a6];
      v23 += a6;
      if (v68 >= v21)
      {
        v69 = -a5;
      }

      else
      {
        v69 = 0;
      }

      v20 = &v68[4 * v69];
      v22 = (v22 + 4 * a6);
      --v57;
    }

    while (v57);
  }

  *result = v20;
  *a3 = v21;
  *a2 = v22;
  *a4 = v23;
  return result;
}

CGColorSpaceRef __create_resolved_space_block_invoke()
{
  create_resolved_space_gray = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  create_resolved_space_sRGB = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  result = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  create_resolved_space_cmyk = result;
  return result;
}

const void *__should_highlight_2x_scaled_images_block_invoke()
{
  result = get_BOOLean_property("CGContextHighlight2xScaledImages", copy_preference_value, &should_highlight_2x_scaled_images_highlight_2x_scaled_images);
  if ((result & 1) == 0)
  {
    should_highlight_2x_scaled_images_highlight_2x_scaled_images = 0;
  }

  return result;
}

const void *__should_track_image_drawing_block_invoke()
{
  result = get_BOOLean_property("CGContextTrackImageDrawing", copy_preference_value, &should_track_image_drawing_should_track);
  if ((result & 1) == 0)
  {
    should_track_image_drawing_should_track = 0;
  }

  return result;
}

unint64_t argb32_mark_constmask(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v143 = *(a1 + 28);
  v146 = *(a1 + 4);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 136);
  v8 = **(a1 + 88);
  pthread_mutex_lock(&argb32_cacheColorLock);
  v9 = argb32_cacheColor;
  if (!argb32_cacheColor || *(argb32_cacheColor + 16) != v8)
  {
    v12 = 0;
    while (1)
    {
      if (!v9)
      {
        goto LABEL_9;
      }

      v13 = v12;
      v12 = v9;
      if (*(v9 + 16) == v8)
      {
        break;
      }

      v9 = *v9;
      if (!*v12)
      {
        if (argb32_cacheColorCount > 6)
        {
          v140 = a2;
          v16 = v6;
          *v13 = 0;
          v17 = *(v12 + 8);
        }

        else
        {
LABEL_9:
          v14 = argb32_cacheColorBase;
          v140 = a2;
          if (argb32_cacheColorBase)
          {
            v15 = argb32_cacheColorCount;
          }

          else
          {
            v14 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x10200408056D5EBuLL);
            v15 = 0;
            argb32_cacheColorBase = v14;
          }

          v16 = v6;
          v12 = v14 + 24 * v15;
          v17 = v14 + 1024 * v15 + 168;
          *(v12 + 8) = v17;
          argb32_cacheColorCount = v15 + 1;
        }

        v18 = 0;
        *v12 = argb32_cacheColor;
        argb32_cacheColor = v12;
        *(v12 + 16) = v8;
        do
        {
          *(v17 + 4 * v18) = PDM_15068(v8, v18);
          ++v18;
        }

        while (v18 != 256);
        v11 = v12 + 8;
        result = pthread_mutex_unlock(&argb32_cacheColorLock);
        v6 = v16;
        a2 = v140;
        goto LABEL_20;
      }
    }

    if (v13)
    {
      *v13 = *v9;
      *v9 = argb32_cacheColor;
      argb32_cacheColor = v9;
    }
  }

  result = pthread_mutex_unlock(&argb32_cacheColorLock);
  v11 = v9 + 8;
LABEL_20:
  if (!v7)
  {
    return result;
  }

  v19 = *v11;
  v20 = *(*v11 + 1020);
  v21 = HIBYTE(v20);
  v22 = (v6 + 4 * (v143 >> 2) * *(a1 + 16) + 4 * *(a1 + 12));
  v23 = *(a1 + 124);
  v24 = v7 + *(a1 + 108) * v23 + *(a1 + 104);
  v25 = v23 - v146;
  v26 = (v143 >> 2) - v146;
  switch(a2)
  {
    case 0:
      do
      {
        v27 = v146;
        do
        {
          v28 = *v24;
          if (*v24)
          {
            if (v28 == 255)
            {
              result = 0;
            }

            else
            {
              result = PDM_15068(*v22, v28 ^ 0xFFu);
            }

            *v22 = result;
          }

          ++v24;
          ++v22;
          --v27;
        }

        while (v27);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 1:
      v107 = -1;
      v108 = v24 & 3;
      if ((v24 & 3) != 0)
      {
        v109 = v108 + v146;
        v107 = -1 << (8 * v108);
        v110 = v24 & 3;
        v24 &= 0xFFFFFFFFFFFFFFFCLL;
        v22 -= v110;
      }

      else
      {
        v109 = v146;
      }

      if (((v109 + v24) & 3) != 0)
      {
        v129 = 4 - ((v109 + v24) & 3);
        v108 += v129;
        v130 = 0xFFFFFFFF >> (8 * v129);
        if (v109 >= 4)
        {
          v131 = v130;
        }

        else
        {
          v131 = 0;
        }

        if (v109 >= 4)
        {
          v130 = -1;
        }

        v107 &= v130;
      }

      else
      {
        v131 = 0;
      }

      v142 = v25 - v108;
      v139 = v109 >> 2;
      v148 = vdupq_n_s32(v20);
      v137 = v26 - v108;
      v145 = v107;
      do
      {
        v132 = *v24 & v107;
        v133 = v139;
        v134 = v131;
        if (!v132)
        {
          goto LABEL_381;
        }

LABEL_379:
        if (v132 == -1)
        {
          *v22 = v148;
          goto LABEL_381;
        }

        while (1)
        {
          if (v132)
          {
            if (v132 == 255)
            {
              *v22 = v20;
            }

            else
            {
              result = DplusDM_15070(v22, *(v19 + 4 * v132), *v22, ~v132);
            }
          }

          if (BYTE1(v132))
          {
            if (BYTE1(v132) == 255)
            {
              v22[1] = v20;
            }

            else
            {
              result = DplusDM_15070(v22 + 1, *(v19 + 4 * BYTE1(v132)), v22[1], ~(v132 >> 8));
            }
          }

          if (BYTE2(v132))
          {
            if (BYTE2(v132) == 255)
            {
              v22[2] = v20;
            }

            else
            {
              result = DplusDM_15070(v22 + 2, *(v19 + 4 * BYTE2(v132)), v22[2], ~HIWORD(v132));
            }
          }

          v136 = HIBYTE(v132);
          if (HIBYTE(v132) == 255)
          {
            v22[3] = v20;
          }

          else if (v136)
          {
            result = DplusDM_15070(v22 + 3, *(v19 + 4 * v136), v22[3], ~v132 >> 24);
          }

LABEL_381:
          while (1)
          {
            v135 = v133;
            v22 += 4;
            --v133;
            v24 += 4;
            if (v135 < 2)
            {
              break;
            }

            v132 = *v24;
            if (*v24)
            {
              goto LABEL_379;
            }
          }

          if (!v134)
          {
            break;
          }

          v134 = 0;
          v132 = *v24 & v131;
        }

        v24 += v142;
        v22 += v137;
        --v4;
        v107 = v145;
      }

      while (v4);
      return result;
    case 2:
      v99 = v24 & 3;
      if ((v24 & 3) != 0)
      {
        v100 = v99 + v146;
        v144 = -1 << (8 * v99);
        v101 = v24 & 3;
        v24 &= 0xFFFFFFFFFFFFFFFCLL;
        v22 -= v101;
      }

      else
      {
        v144 = -1;
        v100 = v146;
      }

      v117 = v26;
      if (((v100 + v24) & 3) != 0)
      {
        v118 = 4 - ((v100 + v24) & 3);
        v99 += v118;
        v119 = 0xFFFFFFFF >> (8 * v118);
        if (v100 >= 4)
        {
          v120 = v119;
        }

        else
        {
          v120 = 0;
        }

        if (v100 >= 4)
        {
          v119 = -1;
        }

        v144 &= v119;
      }

      else
      {
        v120 = 0;
      }

      v147 = v25 - v99;
      v141 = v100 >> 2;
      v138 = v117 - v99;
      do
      {
        v121 = *v24 & v144;
        v122 = v141;
        v123 = v120;
        if (!v121)
        {
          goto LABEL_352;
        }

LABEL_350:
        if (v121 == -1)
        {
          DplusDM_15070(v22, v20, *v22, ~HIBYTE(v20));
          DplusDM_15070(v22 + 1, v20, v22[1], ~HIBYTE(v20));
          DplusDM_15070(v22 + 2, v20, v22[2], ~HIBYTE(v20));
          v124 = v22 + 3;
          v125 = v22[3];
          v126 = ~HIBYTE(v20);
          v127 = v20;
LABEL_365:
          result = DplusDM_15070(v124, v127, v125, v126);
          goto LABEL_352;
        }

        while (1)
        {
          if (v121)
          {
            result = DplusDM_15070(v22, *(v19 + 4 * v121), *v22, ~*(v19 + 4 * v121) >> 24);
          }

          if ((v121 & 0xFF00) != 0)
          {
            result = DplusDM_15070(v22 + 1, *(v19 + 4 * BYTE1(v121)), v22[1], ~*(v19 + 4 * BYTE1(v121)) >> 24);
          }

          if ((v121 & 0xFF0000) != 0)
          {
            result = DplusDM_15070(v22 + 2, *(v19 + 4 * BYTE2(v121)), v22[2], ~*(v19 + 4 * BYTE2(v121)) >> 24);
          }

          if (HIBYTE(v121))
          {
            v127 = *(v19 + 4 * HIBYTE(v121));
            v124 = v22 + 3;
            v125 = v22[3];
            v126 = ~v127 >> 24;
            goto LABEL_365;
          }

LABEL_352:
          while (1)
          {
            v128 = v122;
            v22 += 4;
            --v122;
            v24 += 4;
            if (v128 < 2)
            {
              break;
            }

            v121 = *v24;
            if (*v24)
            {
              goto LABEL_350;
            }
          }

          if (!v123)
          {
            break;
          }

          v123 = 0;
          v121 = *v24 & v120;
        }

        v24 += v147;
        v22 += v138;
        --v4;
      }

      while (v4);
      return result;
    case 3:
      do
      {
        v102 = v146;
        do
        {
          v103 = *v24;
          if (*v24)
          {
            if (v103 == 255)
            {
              *v22 = *(v19 + 4 * *(v22 + 3));
            }

            else
            {
              result = DplusDM_15070(v22, *(v19 + 4 * ((HIBYTE(*v22) * v103 + 128 + ((HIBYTE(*v22) * v103 + 128) >> 8)) >> 8)), *v22, v103 ^ 0xFFu);
            }
          }

          ++v24;
          ++v22;
          --v102;
        }

        while (v102);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 4:
      do
      {
        v94 = v146;
        do
        {
          v95 = *v24;
          if (*v24)
          {
            if (v95 == 255)
            {
              *v22 = *(v19 + 4 * (~*v22 >> 24));
            }

            else
            {
              result = DplusDM_15070(v22, *(v19 + 4 * (((~*v22 >> 24) * v95 + 128 + (((~*v22 >> 24) * v95 + 128) >> 8)) >> 8)), *v22, v95 ^ 0xFFu);
            }
          }

          ++v24;
          ++v22;
          --v94;
        }

        while (v94);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 5:
      do
      {
        v60 = v146;
        do
        {
          if (*v24)
          {
            v61 = *(v19 + 4 * *v24);
            result = DMplusDM_15069(v22, v61, HIBYTE(*v22), *v22, ~v61 >> 24);
          }

          ++v24;
          ++v22;
          --v60;
        }

        while (v60);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 6:
      do
      {
        v111 = v146;
        do
        {
          v112 = *v24;
          if (*v24 && ~HIBYTE(*v22))
          {
            if (~HIBYTE(*v22) == 255)
            {
              *v22 = *(v19 + 4 * v112);
            }

            else
            {
              result = DplusDM_15070(v22, *v22, *(v19 + 4 * v112), ~HIBYTE(*v22));
            }
          }

          ++v24;
          ++v22;
          --v111;
        }

        while (v111);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 7:
      do
      {
        v104 = v146;
        do
        {
          v105 = *v24;
          if (*v24)
          {
            if (v105 == 255)
            {
              v106 = HIBYTE(v20);
            }

            else
            {
              v106 = (~v105 + ((v21 * v105 + 128 + ((v21 * v105 + 128) >> 8)) >> 8));
            }

            result = PDM_15068(*v22, v106);
            *v22 = result;
          }

          ++v24;
          ++v22;
          --v104;
        }

        while (v104);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 8:
      v113 = ~HIBYTE(v20);
      do
      {
        v114 = v146;
        do
        {
          v115 = *v24;
          if (*v24)
          {
            if (v115 == 255)
            {
              v116 = v113;
            }

            else
            {
              v116 = ~((v21 * v115 + 128 + ((v21 * v115 + 128) >> 8)) >> 8);
            }

            result = PDM_15068(*v22, v116);
            *v22 = result;
          }

          ++v24;
          ++v22;
          --v114;
        }

        while (v114);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 9:
      do
      {
        v41 = v146;
        do
        {
          if (*v24)
          {
            result = DMplusDM_15069(v22, *(v19 + 4 * *v24), ~*v22 >> 24, *v22, (~*v24 + HIBYTE(*(v19 + 4 * *v24))));
          }

          ++v24;
          ++v22;
          --v41;
        }

        while (v41);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 10:
      do
      {
        v71 = v146;
        do
        {
          if (*v24)
          {
            v72 = *(v19 + 4 * *v24);
            result = DMplusDM_15069(v22, v72, ~*v22 >> 24, *v22, ~v72 >> 24);
          }

          ++v24;
          ++v22;
          --v71;
        }

        while (v71);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 11:
      do
      {
        v38 = v146;
        do
        {
          if (*v24)
          {
            v40 = HIBYTE(*v22);
            if (!v5)
            {
              LOBYTE(v40) = -1;
            }

            v39 = *(v19 + 4 * *v24);
            result = DAplusdDA_15071(v22, *v22, v40, v39, HIBYTE(v39));
          }

          ++v24;
          ++v22;
          --v38;
        }

        while (v38);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 12:
      do
      {
        v96 = v146;
        do
        {
          if (*v24)
          {
            v97 = *(v19 + 4 * *v24);
            v98 = ((*v22 >> 8) & 0xFF00FF) + ((v97 >> 8) & 0xFF00FF);
            *v22 = (v98 << 8) & 0xFF00FF00 | ((*v22 & 0xFF00FF) + (v97 & 0xFF00FF)) & 0xFF00FF | (15 * (v98 & 0x1000100 | (((*v22 & 0xFF00FF) + (v97 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v98 & 0x1000100 | (((*v22 & 0xFF00FF) + (v97 & 0xFF00FF)) >> 8) & 0x10001));
          }

          ++v24;
          ++v22;
          --v96;
        }

        while (v96);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return result;
    case 13:
      while (1)
      {
        v65 = v146;
        do
        {
          if (*v24)
          {
            v66 = *(v19 + 4 * *v24);
            if (HIBYTE(v66))
            {
              result = *v22;
              if (v5)
              {
                v67 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_179;
                }
              }

              else
              {
                v67 = 255;
              }

              result = PDAmultiplyPDA_15072(result, v67, v66, HIBYTE(v66));
              v66 = result;
LABEL_179:
              *v22 = v66;
            }
          }

          ++v24;
          ++v22;
          --v65;
        }

        while (v65);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 14:
      while (1)
      {
        v35 = v146;
        do
        {
          if (*v24)
          {
            v36 = *(v19 + 4 * *v24);
            if (HIBYTE(v36))
            {
              result = *v22;
              if (v5)
              {
                v37 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v37 = 255;
              }

              result = PDAscreenPDA_15073(result, v37, v36, HIBYTE(v36));
              v36 = result;
LABEL_63:
              *v22 = v36;
            }
          }

          ++v24;
          ++v22;
          --v35;
        }

        while (v35);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 15:
      while (1)
      {
        v48 = v146;
        do
        {
          if (*v24)
          {
            v49 = *(v19 + 4 * *v24);
            if (HIBYTE(v49))
            {
              result = *v22;
              if (v5)
              {
                v50 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_113;
                }
              }

              else
              {
                v50 = 255;
              }

              result = PDAoverlayPDA_15074(result, v50, v49, HIBYTE(v49));
              v49 = result;
LABEL_113:
              *v22 = v49;
            }
          }

          ++v24;
          ++v22;
          --v48;
        }

        while (v48);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 16:
      while (1)
      {
        v32 = v146;
        do
        {
          if (*v24)
          {
            v33 = *(v19 + 4 * *v24);
            if (HIBYTE(v33))
            {
              result = *v22;
              if (v5)
              {
                v34 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_51;
                }
              }

              else
              {
                v34 = 255;
              }

              result = PDAdarkenPDA_15076(result, v34, v33, HIBYTE(v33));
              v33 = result;
LABEL_51:
              *v22 = v33;
            }
          }

          ++v24;
          ++v22;
          --v32;
        }

        while (v32);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 17:
      while (1)
      {
        v54 = v146;
        do
        {
          if (*v24)
          {
            v55 = *(v19 + 4 * *v24);
            if (HIBYTE(v55))
            {
              result = *v22;
              if (v5)
              {
                v56 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_137;
                }
              }

              else
              {
                v56 = 255;
              }

              result = PDAlightenPDA_15075(result, v56, v55, HIBYTE(v55));
              v55 = result;
LABEL_137:
              *v22 = v55;
            }
          }

          ++v24;
          ++v22;
          --v54;
        }

        while (v54);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 18:
      while (1)
      {
        v68 = v146;
        do
        {
          if (*v24)
          {
            v69 = *(v19 + 4 * *v24);
            if (HIBYTE(v69))
            {
              result = *v22;
              if (v5)
              {
                v70 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_191;
                }
              }

              else
              {
                v70 = 255;
              }

              result = PDAcolordodgePDA_15077(result, v70, v69, HIBYTE(v69));
              v69 = result;
LABEL_191:
              *v22 = v69;
            }
          }

          ++v24;
          ++v22;
          --v68;
        }

        while (v68);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 19:
      while (1)
      {
        v79 = v146;
        do
        {
          if (*v24)
          {
            v80 = *(v19 + 4 * *v24);
            if (HIBYTE(v80))
            {
              result = *v22;
              if (v5)
              {
                v81 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_233;
                }
              }

              else
              {
                v81 = 255;
              }

              result = PDAcolorburnPDA_15078(result, v81, v80, HIBYTE(v80));
              v80 = result;
LABEL_233:
              *v22 = v80;
            }
          }

          ++v24;
          ++v22;
          --v79;
        }

        while (v79);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 20:
      while (1)
      {
        v57 = v146;
        do
        {
          if (*v24)
          {
            v58 = *(v19 + 4 * *v24);
            if (HIBYTE(v58))
            {
              result = *v22;
              if (v5)
              {
                v59 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_149;
                }
              }

              else
              {
                v59 = 255;
              }

              result = PDAsoftlightPDA_15080(result, v59, v58, HIBYTE(v58));
              v58 = result;
LABEL_149:
              *v22 = v58;
            }
          }

          ++v24;
          ++v22;
          --v57;
        }

        while (v57);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 21:
      while (1)
      {
        v62 = v146;
        do
        {
          if (*v24)
          {
            v63 = *(v19 + 4 * *v24);
            if (HIBYTE(v63))
            {
              result = *v22;
              if (v5)
              {
                v64 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_167;
                }
              }

              else
              {
                v64 = 255;
              }

              result = PDAhardlightPDA_15079(result, v64, v63, HIBYTE(v63));
              v63 = result;
LABEL_167:
              *v22 = v63;
            }
          }

          ++v24;
          ++v22;
          --v62;
        }

        while (v62);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 22:
      while (1)
      {
        v76 = v146;
        do
        {
          if (*v24)
          {
            v77 = *(v19 + 4 * *v24);
            if (HIBYTE(v77))
            {
              result = *v22;
              if (v5)
              {
                v78 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_221;
                }
              }

              else
              {
                v78 = 255;
              }

              result = PDAdifferencePDA_15081(result, v78, v77, HIBYTE(v77));
              v77 = result;
LABEL_221:
              *v22 = v77;
            }
          }

          ++v24;
          ++v22;
          --v76;
        }

        while (v76);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 23:
      while (1)
      {
        v82 = v146;
        do
        {
          if (*v24)
          {
            v83 = *(v19 + 4 * *v24);
            if (HIBYTE(v83))
            {
              result = *v22;
              if (v5)
              {
                v84 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_245;
                }
              }

              else
              {
                v84 = 255;
              }

              result = PDAexclusionPDA_15082(result, v84, v83, HIBYTE(v83));
              v83 = result;
LABEL_245:
              *v22 = v83;
            }
          }

          ++v24;
          ++v22;
          --v82;
        }

        while (v82);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 24:
      while (1)
      {
        v45 = v146;
        do
        {
          if (*v24)
          {
            v46 = *(v19 + 4 * *v24);
            if (HIBYTE(v46))
            {
              result = *v22;
              if (v5)
              {
                v47 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v47 = 255;
              }

              result = PDAhuePDA_15083(result, v47, v46, HIBYTE(v46));
              v46 = result;
LABEL_101:
              *v22 = v46;
            }
          }

          ++v24;
          ++v22;
          --v45;
        }

        while (v45);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 25:
      while (1)
      {
        v42 = v146;
        do
        {
          if (*v24)
          {
            v43 = *(v19 + 4 * *v24);
            if (HIBYTE(v43))
            {
              result = *v22;
              if (v5)
              {
                v44 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_89;
                }
              }

              else
              {
                v44 = 255;
              }

              result = PDAsaturationPDA_15084(result, v44, v43, HIBYTE(v43));
              v43 = result;
LABEL_89:
              *v22 = v43;
            }
          }

          ++v24;
          ++v22;
          --v42;
        }

        while (v42);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 26:
      while (1)
      {
        v91 = v146;
        do
        {
          if (*v24)
          {
            result = *(v19 + 4 * *v24);
            if (BYTE3(result))
            {
              v92 = *v22;
              if (v5)
              {
                v93 = HIBYTE(v92);
                if (!HIBYTE(v92))
                {
                  goto LABEL_281;
                }
              }

              else
              {
                v93 = 255;
              }

              result = PDAluminosityPDA_15085(result, BYTE3(result), v92, v93);
LABEL_281:
              *v22 = result;
            }
          }

          ++v24;
          ++v22;
          --v91;
        }

        while (v91);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 27:
      while (1)
      {
        v29 = v146;
        do
        {
          if (*v24)
          {
            v30 = *(v19 + 4 * *v24);
            if (HIBYTE(v30))
            {
              result = *v22;
              if (v5)
              {
                v31 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_39;
                }
              }

              else
              {
                v31 = 255;
              }

              result = PDAluminosityPDA_15085(result, v31, v30, HIBYTE(v30));
              v30 = result;
LABEL_39:
              *v22 = v30;
            }
          }

          ++v24;
          ++v22;
          --v29;
        }

        while (v29);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 28:
      while (1)
      {
        v85 = v146;
        do
        {
          if (*v24)
          {
            v86 = *(v19 + 4 * *v24);
            if (HIBYTE(v86))
            {
              result = *v22;
              if (v5)
              {
                v87 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_257;
                }
              }

              else
              {
                v87 = 255;
              }

              result = PDAtranspose_huePDA_15086(result, v87, v86, HIBYTE(v86));
              v86 = result;
LABEL_257:
              *v22 = v86;
            }
          }

          ++v24;
          ++v22;
          --v85;
        }

        while (v85);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 29:
      while (1)
      {
        v88 = v146;
        do
        {
          if (*v24)
          {
            v89 = *(v19 + 4 * *v24);
            if (HIBYTE(v89))
            {
              result = *v22;
              if (v5)
              {
                v90 = BYTE3(result);
                if (!BYTE3(result))
                {
                  goto LABEL_269;
                }
              }

              else
              {
                v90 = 255;
              }

              result = PDAtranspose_saturationPDA_15087(result, v90, v89, HIBYTE(v89));
              v89 = result;
LABEL_269:
              *v22 = v89;
            }
          }

          ++v24;
          ++v22;
          --v88;
        }

        while (v88);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 30:
      while (1)
      {
        v73 = v146;
        do
        {
          if (*v24)
          {
            result = *(v19 + 4 * *v24);
            if (BYTE3(result))
            {
              v74 = *v22;
              if (v5)
              {
                v75 = HIBYTE(v74);
                if (!HIBYTE(v74))
                {
                  goto LABEL_209;
                }
              }

              else
              {
                v75 = 255;
              }

              result = PDAtranspose_luminosityPDA_15088(result, BYTE3(result), v74, v75);
LABEL_209:
              *v22 = result;
            }
          }

          ++v24;
          ++v22;
          --v73;
        }

        while (v73);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return result;
        }
      }

    case 31:
      break;
    default:
      return result;
  }

LABEL_117:
  v51 = v146;
  while (1)
  {
    if (!*v24)
    {
      goto LABEL_126;
    }

    v52 = *(v19 + 4 * *v24);
    if (!HIBYTE(v52))
    {
      goto LABEL_126;
    }

    result = *v22;
    if (v5)
    {
      v53 = BYTE3(result);
      if (!BYTE3(result))
      {
        goto LABEL_125;
      }
    }

    else
    {
      v53 = 255;
    }

    result = PDAtranspose_luminosityPDA_15088(result, v53, v52, HIBYTE(v52));
    v52 = result;
LABEL_125:
    *v22 = v52;
LABEL_126:
    ++v24;
    ++v22;
    if (!--v51)
    {
      v24 += v25;
      v22 += v26;
      if (!--v4)
      {
        return result;
      }

      goto LABEL_117;
    }
  }
}