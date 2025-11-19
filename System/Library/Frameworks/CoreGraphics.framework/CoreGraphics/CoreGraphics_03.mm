uint64_t (**cg_font_library_link_symbol())()
{
  v0 = malloc_type_calloc(1uLL, 0x38uLL, 0x1080040BF00B4C8uLL);
  *v0 = 1;
  v0[1] = 0;
  v1 = unk_1EF243090;
  *(v0 + 1) = cg_font_library_link_symbol_font_finder_callbacks;
  *(v0 + 2) = v1;
  v0[6] = qword_1EF2430A0;
  font_finder = v0;
  return xt_vtable;
}

const void *get_BOOLean_property(const char *a1, const void *(*a2)(const char *), BOOL *a3)
{
  result = a2(a1);
  if (result)
  {
    v5 = result;
    v6 = get_BOOL(result, a3);
    CFRelease(v5);
    return v6;
  }

  return result;
}

uint64_t CGFontCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  VTable = CGFontGetVTable(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!VTable)
  {
    return 0;
  }

  v15 = VTable;
  if (_block_invoke_once_3400 != -1)
  {
    dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
  }

  Instance = CGTypeCreateInstance(CGFontGetTypeID_font_type_id, 104, v9, v10, v11, v12, v13, v14);
  v17 = Instance;
  if (Instance)
  {
    *(Instance + 16) = v15;
    *(Instance + 24) = 0;
    *(Instance + 104) = -1;
    initialize_font_database_once();
  }

  return v17;
}

uint64_t initialize_font_database_once()
{
  if (initialize_font_database_once_predicate != -1)
  {
    dispatch_once(&initialize_font_database_once_predicate, &__block_literal_global_11_3402);
  }

  v0 = pthread_mutex_lock(&initialize_font_database_once_mutex);
  if ((initialize_font_database_once_fontDBInitializer_initialized & 1) == 0)
  {
    if (fontDBInitializer)
    {
      fontDBInitializer(v0);
    }

    initialize_font_database_once_fontDBInitializer_initialized = 1;
  }

  return pthread_mutex_unlock(&initialize_font_database_once_mutex);
}

uint64_t __initialize_font_database_once_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1.__sig = 0;
  *v1.__opaque = 0;
  pthread_mutexattr_init(&v1);
  pthread_mutexattr_settype(&v1, 2);
  pthread_mutex_init(&initialize_font_database_once_mutex, &v1);
  return pthread_mutexattr_destroy(&v1);
}

void *create_private_data_with_path_and_name()
{
  result = FPFontCreateWithPathAndName();
  if (result)
  {
    v1 = result;
    result = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040D8C947D5uLL);
    *result = 1;
    result[1] = v1;
  }

  return result;
}

CFArrayRef CGFontCopyTableTags(CFArrayRef font)
{
  if (font)
  {
    return (*(*(font + 2) + 424))(*(font + 14));
  }

  return font;
}

uint64_t __CGFontGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGFontGetTypeID_class);
  CGFontGetTypeID_font_type_id = result;
  return result;
}

void __CGColorSpaceCreateGenericGrayGamma22_block_invoke()
{
  CGColorSpaceCreateGenericGrayGamma22_space = create_singleton(color_space_state_create_generic_gray_gamma_22);
  CGColorSpaceSetProperty(CGColorSpaceCreateGenericGrayGamma22_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceCreateGenericGrayGamma22_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateGenericGrayGamma22_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceLinearGray");
  CGColorSpaceSetProperty(CGColorSpaceCreateGenericGrayGamma22_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedGray");
  v0 = CGColorSpaceCreateGenericGrayGamma22_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearGray");
}

char *color_space_state_create_generic_gray_gamma_22()
{
  if (color_space_state_create_generic_gray_gamma_22_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_generic_gray_gamma_22_cglibrarypredicate, &__block_literal_global_92_1777);
  }

  v0 = color_space_state_create_generic_gray_gamma_22_f;
  if (color_space_state_create_generic_gray_gamma_22_cglibrarypredicate_93 != -1)
  {
    dispatch_once(&color_space_state_create_generic_gray_gamma_22_cglibrarypredicate_93, &__block_literal_global_96);
  }

  v1 = v0(color_space_state_create_generic_gray_gamma_22_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceGenericGrayGamma2_2";
    *(icc_with_profile + 5) = 1;
    *(*(icc_with_profile + 12) + 40) = @"Generic Gray Gamma 2.2 Profile";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_generic_gray_gamma_22_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_generic_gray_gamma_22_f = v1;
  return result;
}

uint64_t *__color_space_state_create_generic_gray_gamma_22_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncGenericGrayGamma22Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_generic_gray_gamma_22_s = v1;
  return result;
}

uint64_t __CGColorTransformGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorTransformGetTypeID_class);
  CGColorTransformGetTypeID_type_id = result;
  return result;
}

uint64_t __CGColorTransformBaseGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorTransformBaseGetTypeID_class);
  CGColorTransformBaseGetTypeID_type_id = result;
  return result;
}

uint64_t __CGColorTransformCacheGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorTransformCacheGetTypeID_class);
  CGColorTransformCacheGetTypeID_type_id = result;
  return result;
}

char *color_space_state_create_generic_cmyk()
{
  if (color_space_state_create_generic_cmyk_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_generic_cmyk_cglibrarypredicate, &__block_literal_global_21);
  }

  v0 = color_space_state_create_generic_cmyk_f;
  if (color_space_state_create_generic_cmyk_cglibrarypredicate_22 != -1)
  {
    dispatch_once(&color_space_state_create_generic_cmyk_cglibrarypredicate_22, &__block_literal_global_25_1738);
  }

  v1 = v0(color_space_state_create_generic_cmyk_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceGenericCMYK";
    *(*(icc_with_profile + 12) + 40) = @"Generic CMYK Profile";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_generic_cmyk_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_generic_cmyk_f = v1;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateDeviceCMYK(void)
{
  if (CGColorSpaceCreateDeviceCMYK_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDeviceCMYK_predicate, &__block_literal_global_148);
  }

  v0 = CGColorSpaceCreateDeviceCMYK_space;
  if (CGColorSpaceCreateDeviceCMYK_space)
  {
    CFRetain(CGColorSpaceCreateDeviceCMYK_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateGenericCMYK_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_cmyk);
  CGColorSpaceCreateGenericCMYK_space = result;
  return result;
}

uint64_t *__color_space_state_create_generic_cmyk_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncGenericCMYKProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_generic_cmyk_s = v1;
  return result;
}

uint64_t __CGColorSpaceCreateDeviceCMYK_block_invoke()
{
  result = create_singleton(color_space_state_create_device_cmyk);
  CGColorSpaceCreateDeviceCMYK_space = result;
  return result;
}

double color_space_state_create_device_cmyk()
{
  v0 = malloc_type_calloc(0x78uLL, 1uLL, 0xC9D67C26uLL);
  if (v0)
  {
    *v0 = 1;
    v0[12] = 1;
    *(v0 + 2) = 0x10000;
    *(v0 + 7) = 0;
    *(v0 + 6) = 2;
    *(v0 + 14) = &device_cmyk_vtable;
    *(v0 + 28) = 0x200000002;
    *(v0 + 11) = 0;
    *(v0 + 12) = 0;
    *(v0 + 10) = @"kCGColorSpaceDeviceCMYK";
    *(v0 + 5) = &device_cmyk_get_default_color_components_default_cmyk;
    *(v0 + 6) = 4;
    result = -2.24810663e216;
    *(v0 + 4) = xmmword_18439CA50;
  }

  return result;
}

uint64_t __CGPathGetTypeID_block_invoke()
{
  if (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least())
  {
    result = 1;
  }

  else
  {
    result = dyld_program_sdk_at_least();
  }

  CGPathDisableTypeValidation = result;
  return result;
}

void CG::Path::move_to_point(CG::Path *this, float64x2_t *a2, const CGAffineTransform *a3, __n128 a4)
{
  if (a2)
  {
    a4 = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_laneq_f64(a2[1], a4, 1), *a2, a4.n128_f64[0]));
  }

  v5 = *this;
  v19 = a4;
  if (*this == 9)
  {
    goto LABEL_13;
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
      v7 = *(this + 5);
      if (*(this + 4) && *(this + 5) && !(*(this + 3) >> (3 * v7 - 3)))
      {
        *(this + (v6 - 1) + 1) = a4;
      }

      else
      {
        *(this + 4) = v6 + 1;
        *(this + v6 + 1) = a4;
        *(this + 5) = v7 + 1;
      }

      return;
    }
  }

  CG::Path::convert_to_huge_(this);
  a4 = v19;
LABEL_13:
  v8 = *(this + 1);
  v9 = *(this + 2);
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || (v11 = *(this + 4), *(v11->f64 + *(this + 3) - v9)))
  {
    *(this + 9) = v8;
    *(this + 40) = vbslq_s8(vcgtq_f64(*(this + 40), a4), a4, *(this + 40));
    *(this + 56) = vbslq_s8(vcgtq_f64(a4, *(this + 56)), a4, *(this + 56));
    CG::Path::reserve_space(this, 1, 1);
    v13 = *(this + 3);
    v12 = *(this + 4);
    v14 = vaddq_s64(*(this + 8), vdupq_n_s64(1uLL));
    *(v12 + 16 * *(this + 1)) = v19;
    *(this + 8) = v14;
    *(v12 + v13 - v14.i64[1]) = 0;
  }

  else
  {
    v11[v8 - 1] = a4;
    v15 = vdupq_n_s64(0x7FF0000000000000uLL);
    *(this + 40) = v15;
    v16 = vdupq_n_s64(0xFFF0000000000000);
    *(this + 56) = v16;
    for (i = *(this + 1); i; --i)
    {
      v18 = *v11++;
      v15 = vbslq_s8(vcgtq_f64(v15, v18), v18, v15);
      *(this + 40) = v15;
      v16 = vbslq_s8(vcgtq_f64(v18, v16), v18, v16);
      *(this + 56) = v16;
    }
  }
}

uint64_t anonymous namespace::transform_is_valid(_anonymous_namespace_ *this, const CGAffineTransform *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!this || (*this & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 3) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 4) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 5) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return 1;
  }

  CGFloatPostError(this, a2, a3, a4, a5, a6, a7, a8, v8);
  return 0;
}

CFTypeID CGPathGetTypeID(void)
{
  if (CGPathGetTypeID::disableTypeValidationOnce != -1)
  {
    dispatch_once(&CGPathGetTypeID::disableTypeValidationOnce, &__block_literal_global_18158);
  }

  if (_ZZZ15CGPathGetTypeIDEUb_E4once != -1)
  {
    dispatch_once(&_ZZZ15CGPathGetTypeIDEUb_E4once, &__block_literal_global_18_18159);
  }

  return CGPathGetTypeID::path_type_id;
}

uint64_t __CGPathGetTypeID_block_invoke_3()
{
  result = __CGTypeRegisterInternal(CGPathGetTypeID::path_class);
  CGPathGetTypeID::path_type_id = result;
  return result;
}

uint64_t CG::Path::Path(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4 <= 4)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v14 = *(a2 + 8);
        v15 = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 24) = v15;
        *(a1 + 8) = v14;
        v7 = *(a2 + 56);
        v16 = *(a2 + 72);
        v17 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v17;
        *(a1 + 72) = v16;
        goto LABEL_18;
      }

      v8 = *(a2 + 8);
      v9 = *(a2 + 24);
      v10 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
    }

    else if (v4 == 1)
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 24);
      v10 = *(a2 + 40);
    }

    else
    {
      if (v4 != 2)
      {
        return a1;
      }

      v8 = *(a2 + 8);
      v9 = *(a2 + 24);
      v10 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 40) = v10;
LABEL_23:
    *(a1 + 24) = v9;
    *(a1 + 8) = v8;
    return a1;
  }

  if (v4 <= 6)
  {
    if (v4 != 5)
    {
      *(a1 + 8) = *(a2 + 8);
      v11 = *(a2 + 24);
      v12 = *(a2 + 40);
      v13 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v13;
      *(a1 + 40) = v12;
      *(a1 + 24) = v11;
      return a1;
    }

    v8 = *(a2 + 8);
    v9 = *(a2 + 24);
    goto LABEL_23;
  }

  switch(v4)
  {
    case 7:
      v18 = *(a2 + 8);
      if (v18)
      {
        v18 = CFRetain(v18);
      }

      *(a1 + 8) = v18;
      break;
    case 8:
      v20 = *(a2 + 8);
      v21 = *(a2 + 24);
      v22 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v22;
      *(a1 + 24) = v21;
      *(a1 + 8) = v20;
      v23 = *(a2 + 72);
      v24 = *(a2 + 88);
      v25 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v25;
      *(a1 + 88) = v24;
      *(a1 + 72) = v23;
      return a1;
    case 9:
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
      *(a1 + 32) = v6;
      memcpy(v6, *(a2 + 32), 16 * *(a1 + 8));
      memcpy((*(a1 + 32) + *(a1 + 24) - *(a1 + 16)), (*(a2 + 32) + *(a1 + 24) - *(a1 + 16)), *(a1 + 16));
      *(a1 + 40) = *(a2 + 40);
      v7 = *(a2 + 56);
LABEL_18:
      *(a1 + 56) = v7;
      break;
  }

  return a1;
}

void CG::Path::~Path(void **this)
{
  if (*this == 9)
  {
    free(this[4]);
  }

  else if (*this == 7)
  {
    v1 = this[1];
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

CGMutablePathRef CGPathCreateMutable(void)
{
  TypeID = CGPathGetTypeID();

  return CGTypeCreateInstance(TypeID, 128, v1, v2, v3, v4, v5, v6);
}

void CGPathMoveToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x, CGFloat y)
{
  if (path)
  {
    v11 = path;
    v16 = y;
    v17 = x;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v12 = CFGetTypeID(path), path = CGPathGetTypeID(), y = v16, x = v17, v12 == path))
    {
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError(path, m, v4, v5, v6, v7, v8, v9, v19);
      }

      else
      {
        v15.n128_f64[0] = v17;
        if (is_valid)
        {
          v15.n128_f64[1] = v16;

          CG::Path::move_to_point((v11 + 16), m, v14, v15);
        }
      }
    }
  }
}

CGMutablePathRef CGPathCreateMutableCopyByTransformingPath(CGPathRef path, const CGAffineTransform *transform)
{
  if (!path)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v10 = CFGetTypeID(path);
    if (v10 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 128, v12, v13, v14, v15, v16, v17);
  v19 = Instance;
  if (Instance)
  {
    CG::Path::Path(Instance + 16, path + 16);
    if (transform)
    {
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&transform->a, xmmword_18439C630), vceqq_f64(*&transform->c, xmmword_18439C780))))) & 1) != 0 || transform->tx != 0.0 || transform->ty != 0.0)
      {
        CG::Path::apply_transform((v19 + 16), transform, v20, v21, v22, v23, v24, v25);
      }
    }
  }

  return v19;
}

void CGPathAddCurveToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat cp1x, CGFloat cp1y, CGFloat cp2x, CGFloat cp2y, CGFloat x, CGFloat y)
{
  if (path)
  {
    v19 = path;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v20 = CFGetTypeID(path), path = CGPathGetTypeID(), v20 == path))
    {
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError(path, m, v8, v9, v10, v11, v12, v13, v36);
      }

      {
        v29 = *(v19 + 4);
        v28 = (v19 + 16);
        if ((v29 - 10) > 0xFFFFFFF6)
        {
          v30.f64[0] = cp1x;
          v30.f64[1] = cp1y;
          v34.x = cp2x;
          v34.y = cp2y;
          v33.x = x;
          v33.y = y;
          CG::Path::add_curve_to_point(v28, &v34, &v33, m, v24, v30);
        }

        else
        {
          CGPostError("%s: no current point.", v21, v22, v23, v24, v25, v26, v27, "CGPathAddCurveToPoint");
        }
      }
    }
  }
}

float64x2_t CG::Path::add_curve_to_point(CG::Path *this, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, const CGAffineTransform *a5, float64x2_t result)
{
  if (a4)
  {
    v7 = a4[1];
    v8 = a4[2];
    result = vaddq_f64(v8, vmlaq_n_f64(vmulq_laneq_f64(v7, result, 1), *a4, result.f64[0]));
    v9 = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, a2->f64[1]), *a4, a2->f64[0]));
    v10 = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, a3->f64[1]), *a4, a3->f64[0]));
  }

  else
  {
    v9 = *a2;
    v10 = *a3;
  }

  v11 = *this;
  v24 = v9;
  v25 = result;
  v23 = v10;
  if (*this == 9)
  {
    goto LABEL_11;
  }

  if (v11 == 8)
  {
    goto LABEL_8;
  }

  if (!v11)
  {
    *this = 8;
LABEL_8:
    v12 = *(this + 4);
    if (v12 <= 4)
    {
      *(this + v12 + 1) = result;
      v13 = (this + 16 * v12 + 16);
      *(this + 4) = v12 + 3;
      v13[1] = v9;
      v13[2] = v10;
      v14 = *(this + 5);
      *(this + 3) |= 3 << (3 * v14);
      *(this + 5) = v14 + 1;
      return result;
    }
  }

  CG::Path::convert_to_huge_(this);
  v10 = v23;
  v9 = v24;
  result = v25;
LABEL_11:
  v15 = vbslq_s8(vcgtq_f64(*(this + 40), result), result, *(this + 40));
  v16 = vbslq_s8(vcgtq_f64(v15, v9), v9, v15);
  *(this + 40) = vbslq_s8(vcgtq_f64(v16, v10), v10, v16);
  v17 = vbslq_s8(vcgtq_f64(result, *(this + 56)), result, *(this + 56));
  v18 = vbslq_s8(vcgtq_f64(v9, v17), v9, v17);
  *(this + 56) = vbslq_s8(vcgtq_f64(v10, v18), v10, v18);
  CG::Path::reserve_space(this, 3, 1);
  v19 = vaddq_s64(*(this + 8), xmmword_18439CD00);
  v21 = *(this + 3);
  v20 = *(this + 4);
  v22 = (v20 + 16 * *(this + 1));
  *v22 = v25;
  v22[1] = v24;
  result = v23;
  v22[2] = v23;
  *(this + 8) = v19;
  *(v20 + v21 - v19.i64[1]) = 3;
  return result;
}

void CG::Path::convert_to_huge_(CG::Path *this)
{
  CG::Path::Path(&v8, this);
  if (*this == 7)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 40) = vdupq_n_s64(0x7FF0000000000000uLL);
  *(this + 56) = vdupq_n_s64(0xFFF0000000000000);
  *this = 9;
  CG::Path::reserve_space(this, 24, 12);
  if (v8 > 4)
  {
    if (v8 > 6)
    {
      if (v8 == 7)
      {
        CG::Path::append_region(this, *&cf.a, 0, v3, v4, v5, v6, v7);
      }

      else if (v8 == 8)
      {
        CG::Path::append_tiny(this, &cf.b, LOWORD(cf.a), HIDWORD(cf.a), WORD1(cf.a));
      }
    }

    else if (v8 == 5)
    {
      CG::Path::append_line_segment(this, &cf, &cf.c, 0);
    }

    else
    {
      CG::Path::add_arc_relative(this, &CGPointZero, 1.0, 0.0, v10[0].width, &cf, 1);
    }
  }

  else if (v8 > 2)
  {
    if (v8 == 3)
    {
      CG::Path::append_uneven_rounded_rect(this, &unit_rect, v10, &cf);
    }

    else
    {
      CG::Path::append_ellipse(this, &unit_rect, BYTE1(v10[0].width), LOBYTE(v10[0].width), &cf);
    }
  }

  else if (v8 == 1)
  {
    CG::Path::append_rect(this, &unit_rect, &cf);
  }

  else if (v8 == 2)
  {
    CG::Path::append_rounded_rect(this, &unit_rect, v10[0], &cf);
  }

  CG::Path::recalculate_subpath_start(this);
  CG::Path::~Path(&v8);
}

void CG::Path::reserve_space(CG::Path *this, uint64_t a2, uint64_t a3)
{
  if (*this != 9)
  {
    CG::Path::convert_to_huge_(this);
  }

  v6 = *(this + 1);
  v7 = __CFADD__(a2, v6);
  v8 = a2 + v6;
  if (v7 || (v9 = *(this + 2), v7 = __CFADD__(a3, v9), v10 = a3 + v9, v7) || v8 >> 60 || (v7 = __CFADD__(v10, 16 * v8), v11 = v10 + 16 * v8, v7) || (v12 = *(this + 3), v12 >= 0x7FFFFFFFFFFFFFFFLL))
  {
    abort();
  }

  if (v11 > v12)
  {
    if (v11 <= 2 * v12)
    {
      v11 = 2 * v12;
    }

    if (v11 <= 0x110)
    {
      v13 = 272;
    }

    else
    {
      v13 = v11;
    }

    v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
    memcpy(v14, *(this + 4), 16 * *(this + 1));
    memcpy(&v14[v13 - *(this + 2)], (*(this + 4) + *(this + 3) - *(this + 2)), *(this + 2));
    free(*(this + 4));
    *(this + 3) = v13;
    *(this + 4) = v14;
  }
}

int8x16_t CG::Path::append_tiny(CG::Path *this, const CGPoint *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = a5;
  CG::Path::reserve_space(this, a3, a5);
  if (!v5)
  {
    return result;
  }

  v10 = 0;
  v11 = *(this + 1);
  do
  {
    v12 = *(this + 3);
    v13 = *(this + 4);
    v14 = *(this + 2) + 1;
    *(this + 2) = v14;
    v15 = v12 - v14;
    v16 = a4 & 7;
    *(v13 + v15) = a4 & 7;
    if (v16 <= 2)
    {
      if (v16 >= 2)
      {
        if (v16 == 2)
        {
          v17 = &a2[v10];
          v18 = *(this + 1);
          v19 = *(this + 4) + 16 * v18;
          *v19 = *v17;
          v10 += 2;
          *(this + 1) = v18 + 2;
          result = v17[1];
          *(v19 + 16) = result;
          goto LABEL_13;
        }

        goto LABEL_10;
      }

LABEL_9:
      result = a2[v10++];
      v20 = *(this + 4);
      v21 = *(this + 1);
      *(this + 1) = v21 + 1;
      *(v20 + 16 * v21) = result;
      goto LABEL_10;
    }

    if (v16 == 3)
    {
      v22 = &a2[v10];
      v23 = *(this + 1);
      v24 = *(this + 4) + 16 * v23;
      *v24 = *v22;
      *(v24 + 16) = v22[1];
      v10 += 3;
      *(this + 1) = v23 + 3;
      result = v22[2];
      *(v24 + 32) = result;
      goto LABEL_13;
    }

    if (v16 == 4)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (v16 == 4)
    {
      ++*(this + 10);
    }

LABEL_13:
    a4 >>= 3;
    --v5;
  }

  while (v5);
  v25 = *(this + 1);
  v26 = v25 > v11;
  v27 = v25 - v11;
  if (v26)
  {
    result = *(this + 40);
    v28 = *(this + 56);
    v29 = (*(this + 4) + 16 * v11);
    do
    {
      v30 = *v29++;
      result = vbslq_s8(vcgtq_f64(result, v30), v30, result);
      *(this + 40) = result;
      v28 = vbslq_s8(vcgtq_f64(v30, v28), v30, v28);
      *(this + 56) = v28;
      --v27;
    }

    while (v27);
  }

  return result;
}

void *CG::Path::recalculate_subpath_start(void *this)
{
  v2 = this[2];
  v1 = this[3];
  if (v1 >= v2)
  {
    v3 = this[1];
    v4 = this[4] + v1;
    v5 = -v2;
    while (1)
    {
      v3 -= point_counts[*(v4 + v5)];
      if (!*(v4 + v5))
      {
        break;
      }

      if (!++v5)
      {
        return this;
      }
    }

    this[9] = v3;
  }

  return this;
}

uint64_t CGImageProviderCreateWithImageProviderInRect(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (!a1)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v40 = CGRectIntegral(*&a3);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v9;
  v38.size.height = v8;
  v39 = CGRectIntersection(v38, v40);
  x = v39.origin.x;
  if (v39.origin.x == INFINITY || v39.origin.y == INFINITY)
  {
    return 0;
  }

  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = v9;
  v41.size.height = v8;
  if (CGRectEqualToRect(v39, v41))
  {
    CFRetain(a1);
    return a1;
  }

  else
  {
    if (kCGImageProviderContentAverageLightLevelNits_block_invoke_once != -1)
    {
      dispatch_once(&kCGImageProviderContentAverageLightLevelNits_block_invoke_once, &__block_literal_global_92_3534);
    }

    Instance = CGTypeCreateInstance(CGImageProviderGetTypeID_image_provider_type_id, 176, v18, v19, v20, v21, v22, v23);
    if (Instance)
    {
      v24 = *(a1 + 40);
      if (a2 && !CGColorSpaceEqualToColorSpace(a2, *(a1 + 40)))
      {
        CGLog(1, "%s: Given colorspace does not match source colorspace.", v25, v26, v27, v28, v29, v30, "CGImageProviderRef CGImageProviderCreateWithImageProviderInRect(CGImageProviderRef, CGRect, CGColorSpaceRef)");
        v24 = a2;
      }

      *(Instance + 16) = width;
      *(Instance + 24) = height;
      *(Instance + 48) = *(a1 + 48);
      *(Instance + 56) = Instance;
      *(Instance + 32) = *(a1 + 32);
      if (v24)
      {
        CFRetain(v24);
      }

      *(Instance + 40) = v24;
      *(Instance + 64) = subImageProviderCallbacks;
      *(Instance + 80) = off_1EF238AC8;
      *(Instance + 112) = 0;
      *(Instance + 128) = 256;
      CFRetain(a1);
      *(Instance + 152) = a1;
      *(Instance + 160) = x;
      *(Instance + 168) = y;
      *(Instance + 176) = width;
      *(Instance + 184) = height;
      *(Instance + 132) = *(a1 + 132);
      *(Instance + 136) = *(a1 + 136);
      *(Instance + 144) = create_debug_string(Instance, v31, v32, v33, v34, v35, v36, v37);
    }
  }

  return Instance;
}

uint64_t __CGImageProviderGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGImageProviderGetTypeID_class);
  CGImageProviderGetTypeID_image_provider_type_id = result;
  return result;
}

uint64_t __CGImageGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGImageGetTypeID_class);
  CGImageGetTypeID_image_type_id = result;
  return result;
}

uint64_t __CGContextGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGContextGetTypeID_class);
  CGContextGetTypeID_type_id = result;
  return result;
}

uint64_t get_integer_property(const char *a1, const void *(*a2)(const char *), int *a3)
{
  v4 = a2(a1);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
      {
        if (a3)
        {
          IntValue = valuePtr;
LABEL_10:
          *a3 = IntValue;
          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else if (v6 == CFStringGetTypeID())
    {
      if (a3)
      {
        IntValue = CFStringGetIntValue(v5);
        goto LABEL_10;
      }

LABEL_11:
      v8 = 1;
LABEL_13:
      CFRelease(v5);
      return v8;
    }

    v8 = 0;
    goto LABEL_13;
  }

  return 0;
}

const void *get_font_rendering_defaults()
{
  v19 = 0;
  if (get_integer_property("CGFontAntialiasingStyle", copy_local_domain_value, &v19))
  {
    if (v19 <= 4)
    {
      if (v19 <= 1)
      {
        if (!v19)
        {
          default_antialiasing_style = 0;
          goto LABEL_23;
        }

        if (v19 != 1)
        {
          goto LABEL_48;
        }

LABEL_18:
        v7 = &unk_1EA867000;
        v8 = 128;
        goto LABEL_22;
      }

      if (v19 == 2)
      {
LABEL_21:
        v7 = &unk_1EA867000;
        v8 = 256;
        goto LABEL_22;
      }

      if (v19 != 3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v19 <= 383)
      {
        if (v19 != 5)
        {
          if (v19 != 128)
          {
            if (v19 != 256)
            {
              goto LABEL_48;
            }

            goto LABEL_21;
          }

          goto LABEL_18;
        }

LABEL_20:
        v7 = &unk_1EA867000;
        v8 = 1024;
        goto LABEL_22;
      }

      if (v19 != 384)
      {
        if (v19 == 1024)
        {
          goto LABEL_20;
        }

        if (v19 != 1152)
        {
LABEL_48:
          CGPostError("unrecognized font antialiasing style: %d.", v0, v1, v2, v3, v4, v5, v6, v19);
          goto LABEL_23;
        }

LABEL_15:
        v7 = &unk_1EA867000;
        v8 = 1152;
LABEL_22:
        v7[851] = v8;
        goto LABEL_23;
      }
    }

    v7 = &unk_1EA867000;
    v8 = 384;
    goto LABEL_22;
  }

LABEL_23:
  v20 = 0;
  if (get_integer_property("CGFontSmoothingStyle", copy_local_domain_value, &v20))
  {
    if (v20 <= 4)
    {
      if (v20 <= 1)
      {
        if (!v20)
        {
          allows_font_smoothing = 0;
          goto LABEL_45;
        }

        if (v20 == 1)
        {
LABEL_40:
          allows_font_smoothing = 1;
          v16 = &unk_1EA860000;
          v17 = 16;
          goto LABEL_44;
        }

        goto LABEL_49;
      }

      if (v20 == 2)
      {
LABEL_43:
        allows_font_smoothing = 1;
        v16 = &unk_1EA860000;
        v17 = 32;
        goto LABEL_44;
      }

      if (v20 != 3)
      {
LABEL_41:
        allows_font_smoothing = 1;
        v16 = &unk_1EA860000;
        v17 = 64;
        goto LABEL_44;
      }
    }

    else
    {
      if (v20 <= 47)
      {
        if (v20 != 5)
        {
          if (v20 != 16)
          {
            if (v20 != 32)
            {
              goto LABEL_49;
            }

            goto LABEL_43;
          }

          goto LABEL_40;
        }

LABEL_37:
        allows_font_smoothing = 1;
        v16 = &unk_1EA860000;
        v17 = 112;
LABEL_44:
        v16[448] = v17;
        goto LABEL_45;
      }

      if (v20 != 48)
      {
        if (v20 != 64)
        {
          if (v20 == 112)
          {
            goto LABEL_37;
          }

LABEL_49:
          CGPostError("unrecognized font smoothing style: %d.", v9, v10, v11, v12, v13, v14, v15, v20);
          goto LABEL_45;
        }

        goto LABEL_41;
      }
    }

    allows_font_smoothing = 1;
    v16 = &unk_1EA860000;
    v17 = 48;
    goto LABEL_44;
  }

LABEL_45:
  get_BOOLean_property("CGFontDebugGlyphBitmaps", copy_local_domain_value, &default_glyph_bitmap_debugging);
  return get_BOOLean_property("CGFontDebugGlyphs", copy_local_domain_value, &default_glyph_debugging);
}

char *__device_state_create_root_block_invoke()
{
  result = malloc_type_malloc(0x30uLL, 0x1020040AD984FB8uLL);
  *(result + 1) = 1;
  *(result + 1) = 0;
  *(result + 2) = 0;
  *(result + 12) = 0;
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 11) = 0;
  device_state_create_root_root = result;
  *result = 1;
  return result;
}

double __text_state_create_root_block_invoke()
{
  v0 = malloc_type_malloc(0x60uLL, 0x1020040FD5D42BBuLL);
  v1 = *v0;
  *(v0 + 1) = 1;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *v0 = v1 & 0xFC | 2;
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  *(v0 + 12) = default_antialiasing_style;
  *(v0 + 13) = default_smoothing_style;
  *(v0 + 14) = 0;
  v2 = *v0 & 0xFF02 | 0x3D;
  *(v0 + 5) = 0x4000000000000000;
  result = 0.0;
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  text_state_create_root_root = v0;
  *v0 = v2;
  return result;
}

void __stroke_state_create_root_block_invoke()
{
  v0 = malloc_type_malloc(0x30uLL, 0x10200406F43DBA9uLL);
  *v0 = 0;
  *(v0 + 1) = 1;
  *(v0 + 8) = xmmword_18439CEA0;
  *(v0 + 3) = 0;
  *(v0 + 4) = 0;
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  *(v0 + 5) = CGColorSpaceCopyDefaultColor(v1);
  CGColorSpaceRelease(v1);
  stroke_state_create_root_root = v0;
  *v0 = 1;
}

uint64_t __CGContextDelegateGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGContextDelegateGetTypeID_class);
  CGContextDelegateGetTypeID_context_delegate_id = result;
  return result;
}

void load_bitmap_context_delegate_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = &links;
  v10 = 6;
  while (strcmp("__CGBitmapContextDelegateCreate", *v9))
  {
    v9 += 2;
    if (!--v10)
    {
      goto LABEL_7;
    }
  }

  if (v9[1])
  {
    creator = v9[1];
    return;
  }

LABEL_7:

  CGPostError("Failed to load bitmap context.", v11, v12, v13, v14, v15, v16, v17, a9);
}

const char **CGBlt_depth(char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(&blt_depth + v2);
    if (has_matching_encoding(v3[1], __s2))
    {
      break;
    }

    v2 += 8;
    if (v2 == 216)
    {
      v3 = &blt_image_depth;
      v4 = 12;
      while (!has_matching_encoding(v3[1], __s2))
      {
        v3 += 9;
        if (!--v4)
        {
          return 0;
        }
      }

      return v3;
    }
  }

  return v3;
}

const char *has_matching_encoding(const char *result, char *__s2)
{
  if (result)
  {
    v2 = result;
    result = *result;
    if (result)
    {
      v4 = (v2 + 8);
      do
      {
        v5 = strcmp(result, __s2);
        result = (v5 == 0);
        if (!v5)
        {
          break;
        }

        v6 = *v4++;
        result = v6;
      }

      while (v6);
    }
  }

  return result;
}

void __create_default_transform_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  create_default_transform_transform = color_transform_create(v0, 0);

  CGColorSpaceRelease(v0);
}

CFDataRef CGColorSpaceICCCopyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 24);
  v10 = *(v9 + 24);
  if (v10 == 6)
  {
    if (CGColorSpaceICCCopyData_cglibrarypredicate_41 != -1)
    {
      dispatch_once(&CGColorSpaceICCCopyData_cglibrarypredicate_41, &__block_literal_global_44_7581);
    }

    v12 = CGColorSpaceICCCopyData_f_40;
    v13 = *(*(*(a1 + 24) + 96) + 8);
    goto LABEL_13;
  }

  if (v10 != 10)
  {
    if (v10 != 11)
    {
      _CGHandleAssert("CGColorSpaceICCCopyData", 579, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "s->state->type == kCGColorSpaceICCBased || s->state->type == kCGColorSpaceProfileSets || s->state->type == kCGColorSpaceFlexGTCProxy", "Colorspace not ICC. type = %d", a6, a7, a8, *(v9 + 24));
    }

    FlexGTCProfile = CGColorSpaceFlexGTCProxyGetFlexGTCProfile(a1);
    if (CGColorSpaceICCCopyData_cglibrarypredicate != -1)
    {
      dispatch_once(&CGColorSpaceICCCopyData_cglibrarypredicate, &__block_literal_global_38);
    }

    v12 = CGColorSpaceICCCopyData_f;
    v13 = FlexGTCProfile;
LABEL_13:

    return v12(v13, 0);
  }

  v14 = **(v9 + 96);

  return CGDataProviderCopyData(v14);
}

CFDataRef CGDataProviderCopyData(CGDataProviderRef provider)
{
  if (!provider)
  {
    return 0;
  }

  v2 = CGDataProviderRetainBytePtr(provider);
  if (v2)
  {
    v3 = v2;
    CGDataProviderRetainBytePtr(provider);
    v23.version = 0;
    memset(&v23.retain, 0, 40);
    v23.info = provider;
    v23.deallocate = provider_allocator_deallocate;
    v23.preferredSize = 0;
    v4 = CFAllocatorCreate(0, &v23);
    Mutable = CFDataCreateWithBytesNoCopy(0, v3, *(provider + 4), v4);
    CGDataProviderReleaseBytePtr(provider);
    CFRelease(v4);
    return Mutable;
  }

  v6 = CGAccessSessionCreate(provider);
  CGDataProviderReleaseBytePtr(provider);
  if (!v6)
  {
    return 0;
  }

  if (*v6)
  {
    v7 = *(*v6 + 32);
    v8 = v7;
    if (v7 != -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = 0x10000;
LABEL_10:
  Mutable = CFDataCreateMutable(0, 0);
  if ((CGCFDataIncreaseLength(Mutable, v8) & 1) == 0)
  {
LABEL_35:
    CGAccessSessionRelease(v6);
    CFRelease(Mutable);
    return 0;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v15 = 0;
  for (i = 0; ; v8 = i)
  {
    Bytes = CGAccessSessionGetBytes(v6, MutableBytePtr, v8, v10, v11, v12, v13, v14);
    if (!Bytes)
    {
      break;
    }

    v18 = Bytes;
    if ((v8 & 0x8000000000000000) == 0 && v8 > Bytes)
    {
      v24.location = CFDataGetLength(Mutable) - (v8 - Bytes);
      v24.length = v8 - v18;
      CFDataDeleteBytes(Mutable, v24);
      v15 += v18;
LABEL_19:
      if (v8 == v18 && i <= v8)
      {
        v18 = 2 * v8;
      }

      goto LABEL_24;
    }

    if ((v7 & 0x8000000000000000) == 0 && Bytes == v7)
    {
      goto LABEL_42;
    }

    v15 += Bytes;
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    if (v18 >= 0x4000000)
    {
      v20 = 0x4000000;
    }

    else
    {
      v20 = v18;
    }

    if (v20 <= 0x4000)
    {
      i = 0x4000;
    }

    else
    {
      i = v20;
    }

    if ((CGCFDataIncreaseLength(Mutable, i) & 1) == 0)
    {
      goto LABEL_35;
    }

    v21 = CFDataGetMutableBytePtr(Mutable);
    if (v21)
    {
      MutableBytePtr = &v21[v15];
    }

    else
    {
      CFRelease(Mutable);
      Mutable = 0;
      MutableBytePtr = 0;
    }
  }

  if (CGAccessSessionHasError(v6) || v15 < 1)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  else
  {
    v25.location = CFDataGetLength(Mutable) - v8;
    v25.length = v8;
    CFDataDeleteBytes(Mutable, v25);
  }

LABEL_42:
  CGAccessSessionRelease(v6);
  return Mutable;
}

void CGContextDrawImage(CGContextRef c, CGRect rect, CGImageRef image)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      height = rect.size.height;
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      if (*(c + 6) == 4)
      {
        ColorSpace = CGImageGetColorSpace(image);
        if (CGColorSpaceIsPQBased(ColorSpace))
        {
          if (*(c + 4) == 1129601108 && *(c + 6) == 4)
          {
            v22 = *(*(c + 4) + 32);
          }

          else
          {
            handle_invalid_context("CGBitmapContextGetColorSpace", c, v16, v17, v18, v19, v20, v21);
            v22 = 0;
          }

          if (CGColorSpaceIsPQBased(v22))
          {
            if (*(c + 4) == 1129601108 && *(c + 6) == 4)
            {
              if (*(*(c + 4) + 40) == 4353)
              {
                v66 = *(*(c + 14) + 72);
                InterpolationQuality = CGContextGetInterpolationQuality(c);
                if (*(c + 4) == 1129601108)
                {
                  *(*(c + 14) + 72) = 0x100000001;
                }

                else
                {
                  handle_invalid_context("CGContextSetInterpolationQualityRange", c, v30, v31, v32, v33, v34, v35);
                }

                v37 = 1;
                CGContextSetInterpolationQuality(c, kCGInterpolationNone);
                goto LABEL_22;
              }
            }

            else
            {
              handle_invalid_context("CGBitmapContextGetBitmapInfo", c, v24, v25, v26, v27, v28, v29);
            }
          }
        }
      }

      InterpolationQuality = kCGInterpolationDefault;
      v37 = 0;
      v66 = 0;
LABEL_22:
      CGImageGetHeadroomInfo(image, 0);
      if (*(c + 4) == 1129601108)
      {
        v45 = *(*(*(c + 12) + 120) + 48);
      }

      else
      {
        handle_invalid_context("CGContextGetEDRTargetHeadroom", c, v39, v40, v41, v42, v43, v44);
        v45 = 0.0;
      }

      v46 = 1.0;
      if (v45 >= 1.0 || v45 <= 0.0)
      {
        v46 = v45;
      }

      if (v45 >= 0.0)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0.0;
      }

      v49 = CGContextGetColorSpace(c, v38, v39, v40, v41, v42, v43, v44);
      ContentToneMappingInfo = CGContextGetContentToneMappingInfo(c, v50, v51, v52, v53, v54, v55, v56);
      OptionsForDrawingImage = CGToneMappingCreateOptionsForDrawingImage(v49, image, ContentToneMappingInfo, v58, v48);
      CGContextDrawImageWithOptions(c, image, OptionsForDrawingImage, x, y, width, height);
      if (OptionsForDrawingImage)
      {
        CFRelease(OptionsForDrawingImage);
      }

      if (v37)
      {
        if (*(c + 4) == 1129601108)
        {
          *(*(c + 14) + 72) = v66;
        }

        else
        {
          handle_invalid_context("CGContextSetInterpolationQualityRange", c, v60, v61, v62, v63, v64, v65);
        }

        CGContextSetInterpolationQuality(c, InterpolationQuality);
      }

      return;
    }

    v23 = c;
  }

  else
  {
    v23 = 0;
  }

  handle_invalid_context("CGContextDrawImage", v23, v3, v4, v5, v6, v7, v8);
}

uint64_t CGContextDrawImageWithOptions(uint64_t a1, _DWORD *cf, CGImage *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  if (cf)
  {
    v8 = cf;
    CFRetain(cf);
    v20 = CFGetTypeID(v8);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v20 != CGImageGetTypeID_image_type_id)
    {
      goto LABEL_35;
    }

    v21 = v8[7];
    if (v21 == 57005)
    {
      v35 = "Image %p is over released";
    }

    else
    {
      if (v21 == 48879)
      {
        if (!CGImageGetImageProvider(v8) && !CGImageGetEPSRep(v8))
        {
          DataProviderInternal = CGImageGetDataProviderInternal(v8, 0);
          if (CGDataProviderIsZombie(DataProviderInternal))
          {
            goto LABEL_35;
          }
        }

        if (a1)
        {
          if (*(a1 + 16) == 1129601108)
          {
            v29 = CFGetTypeID(v8);
            if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
            {
              dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
            }

            if (v29 == CGImageGetTypeID_image_type_id)
            {
              v30 = 0;
              if (a4 == INFINITY)
              {
                goto LABEL_36;
              }

              if (a5 == INFINITY)
              {
                goto LABEL_36;
              }

              v30 = 0;
              if (a6 == 0.0 || a7 == 0.0)
              {
                goto LABEL_36;
              }

              CopyWithProtectedDataProvider = CGImageCreateCopyWithProtectedDataProvider(v8);
              if (CopyWithProtectedDataProvider)
              {
                v32 = CopyWithProtectedDataProvider;
                CFRelease(v8);
                v8 = v32;
              }

              CopyWithResolvedOptions = CGImageCreateCopyWithResolvedOptions(v8, a3);
              v34 = CopyWithResolvedOptions;
              if (!a3 || CopyWithResolvedOptions)
              {
                if (CopyWithResolvedOptions)
                {
                  CFRelease(v8);
                }

                else
                {
                  v34 = v8;
                }

                ClipPath = CGImageGetClipPath(v34);
                if (ClipPath)
                {
                  CGContextSaveGState(a1);
                  CGContextSaveGState(a1);
                  CGContextTranslateCTM(a1, a4, a5);
                  CGContextScaleCTM(a1, a6, a7);
                  CGContextBeginPath(a1);
                  CGContextAddPath(a1, ClipPath);
                  CGContextRestoreGState(a1);
                  clip(a1, 1, v42, v43, v44, v45, v46, v47);
                }

                if (*(a1 + 64))
                {
                  CGContextSaveGState(a1);
                  v48 = (*(a1 + 64))(a1, v34, *(a1 + 72), a4, a5, a6, a7);
                  if (v48)
                  {
                    v49 = v48;
                    v50 = *(a1 + 40);
                    if (v50)
                    {
                      v51 = *(v50 + 80);
                      if (v51)
                      {
                        v51(a4, a5, a6, a7);
                      }
                    }

                    CFRelease(v49);
                  }

                  CGContextRestoreGState(a1);
                }

                else
                {
                  v61 = *(a1 + 40);
                  if (v61)
                  {
                    v62 = *(v61 + 80);
                    if (v62)
                    {
                      v62(a4, a5, a6, a7);
                    }
                  }
                }

                if (should_highlight_2x_scaled_images_once != -1)
                {
                  dispatch_once(&should_highlight_2x_scaled_images_once, &__block_literal_global_12592);
                }

                if (should_highlight_2x_scaled_images_highlight_2x_scaled_images == 1 && is_2x_scale(a1, v34, a4, a5, a6, a7))
                {
                  CGContextSaveGState(a1);
                  CGContextSetBlendMode(a1, kCGBlendModeNormal);
                  CGContextSetRGBFillColor(a1, 1.0, 0.0, 0.0, 0.2);
                  v64.origin.x = a4;
                  v64.origin.y = a5;
                  v64.size.width = a6;
                  v64.size.height = a7;
                  CGContextFillRect(a1, v64);
                  CGContextRestoreGState(a1);
                }

                if (should_track_image_drawing_once != -1)
                {
                  dispatch_once(&should_track_image_drawing_once, &__block_literal_global_23_12593);
                }

                if (should_track_image_drawing_should_track == 1)
                {
                  CGContextSaveGState(a1);
                  CGContextSetBlendMode(a1, kCGBlendModeNormal);
                  v52 = a7 * 0.5;
                  DelegateName = CGContextGetDelegateName(a1, v53, v54, v55, v56, v57, v58, v59);
                  if (DelegateName && !strcmp(DelegateName, "RIPContextDelegate"))
                  {
                    CGContextSetRGBFillColor(a1, 0.0, 1.0, 0.0, 0.2);
                  }

                  else
                  {
                    CGContextSetRGBFillColor(a1, 0.0, 0.0, 1.0, 0.2);
                    a5 = v52;
                  }

                  v65.origin.x = a4;
                  v65.origin.y = a5;
                  v65.size.width = a6;
                  v65.size.height = v52;
                  CGContextFillRect(a1, v65);
                  CGContextRestoreGState(a1);
                }

                if (ClipPath)
                {
                  CGContextRestoreGState(a1);
                }

                v30 = 1;
                v8 = v34;
                goto LABEL_36;
              }
            }

LABEL_35:
            v30 = 0;
LABEL_36:
            CFRelease(v8);
            return v30;
          }

          v39 = a1;
        }

        else
        {
          v39 = 0;
        }

        handle_invalid_context("CGContextDrawImageWithOptions", v39, v22, v23, v24, v25, v26, v27);
        goto LABEL_35;
      }

      v35 = "Object %p is not a CGImageRef";
    }

    CGLog(3, v35, v14, v15, v16, v17, v18, v19, v8);
    if (CGOSAppleInternalBuild_predicate != -1)
    {
      dispatch_once(&CGOSAppleInternalBuild_predicate, &__block_literal_global_18682);
    }

    if (CGOSAppleInternalBuild_is_internal == 1)
    {
      _CGHandleAssert("CGImageIsZombie", 4690, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "0", "-", v36, v37, v38, v63);
    }

    goto LABEL_35;
  }

  return 0;
}

char *CGImageCreateCopyWithResolvedOptions(char *a1, CGImage *cf)
{
  v2 = cf;
  if (!cf)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    v8 = 0;
    v9 = 0;
    v2 = 0;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(v2, @"kCGImageDestinationLossyCompressionQuality");
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    v7 = v6 == CFNumberGetTypeID();
  }

  else
  {
    v7 = 0;
  }

  v13 = CFDictionaryGetValue(v2, @"kCGImageForceConversion");
  v16 = v13 && (v14 = v13, v15 = CFGetTypeID(v13), v15 == CFBooleanGetTypeID()) && v14 == *MEMORY[0x1E695E4D0];
  v17 = CFDictionaryGetValue(v2, @"kCGImagePreferGPUForColorConversion");
  if (!v17 || (v18 = v17, v19 = CFGetTypeID(v17), v19 != CFBooleanGetTypeID()))
  {
    v50 = 0;
    CopyWithImageProvider = 0;
    goto LABEL_47;
  }

  ImageProvider = CGImageGetImageProvider(a1);
  if (v18 == *MEMORY[0x1E695E4C0])
  {
    v21 = ImageProvider;
    if (ImageProvider)
    {
      v22 = *(ImageProvider + 15);
      if (v22)
      {
        if (CGPropertiesGetProperty(v22, @"kCGImagePreferGPUForColorConversion"))
        {
          if (get_disable_GPU_provider_options_predicate != -1)
          {
            dispatch_once(&get_disable_GPU_provider_options_predicate, &__block_literal_global_357);
          }

          v23 = get_disable_GPU_provider_options_options_singleton;
          v30 = CFGetTypeID(v21);
          if (kCGImageProviderContentAverageLightLevelNits_block_invoke_once != -1)
          {
            dispatch_once(&kCGImageProviderContentAverageLightLevelNits_block_invoke_once, &__block_literal_global_92_3534);
          }

          if (v30 != CGImageProviderGetTypeID_image_provider_type_id)
          {
            return 0;
          }

          Instance = CGTypeCreateInstance(CGImageProviderGetTypeID_image_provider_type_id, 160, v24, v25, v26, v27, v28, v29);
          if (!Instance)
          {
            return 0;
          }

          v39 = Instance;
          *(Instance + 56) = Instance;
          *(Instance + 16) = *(v21 + 1);
          *(Instance + 32) = *(v21 + 4);
          v40 = *(v21 + 5);
          if (v40)
          {
            CFRetain(*(v21 + 5));
          }

          v41 = 0;
          v42 = 0;
          v43 = *(v21 + 6);
          *(v39 + 40) = v40;
          *(v39 + 48) = v43;
          v44 = v21[16];
          if (v44 > 1)
          {
            if (v44 == 2)
            {
              v48 = 0;
              v49 = 0;
              v45 = v21[17];
              v46 = *(v21 + 10);
              v47 = copy_with_options_release_info;
              v41 = copy_with_options_copy_block_set_with_options;
              v42 = 2;
            }

            else
            {
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              if (v44 == 3)
              {
                v45 = v21[17];
                v46 = *(v21 + 10);
                v47 = *(v21 + 11);
                v48 = *(v21 + 12);
                v49 = copy_with_options_release_info;
                v41 = copy_with_options_copy_block_set_with_options;
                v42 = 3;
              }
            }
          }

          else if (v44)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            if (v44 == 1)
            {
              v45 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v46 = copy_with_options_release_info;
              v41 = copy_with_options_copy_block_set_with_options;
              v42 = 1;
            }
          }

          else
          {
            CGPostError("We should not need CGImageProviderCreateCopyWithOptions with version 0", v32, v33, v34, v35, v36, v37, v38, v77);
            v42 = 0;
            v45 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v46 = copy_with_options_release_info;
            v41 = copy_with_options_copy_block_set;
          }

          *(v39 + 64) = v42;
          *(v39 + 68) = v45;
          *(v39 + 72) = v41;
          *(v39 + 80) = v46;
          *(v39 + 88) = v47;
          *(v39 + 96) = v48;
          *(v39 + 104) = v49;
          if (v23)
          {
            v66 = CFRetain(v23);
          }

          else
          {
            v66 = 0;
          }

          *(v39 + 112) = v66;
          v67 = *(v21 + 15);
          if (v67)
          {
            atomic_fetch_add_explicit(v67, 1u, memory_order_relaxed);
          }

          *(v39 + 120) = v67;
          *(v39 + 128) = *(v21 + 64);
          CFRetain(v21);
          *(v39 + 152) = v21;
          *(v39 + 132) = v21[33];
          *(v39 + 136) = v21[34];
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(v39 + 168) = Mutable;
          context[0] = 0;
          context[1] = v21;
          context[2] = Mutable;
          if (v23)
          {
            CFDictionaryApplyFunction(v23, find_supported_options, context);
            v76 = context[0];
          }

          else
          {
            v76 = 0;
          }

          *(v39 + 160) = v76;
          *(v39 + 144) = create_debug_string(v39, v69, v70, v71, v72, v73, v74, v75);
          CopyWithImageProvider = CGImageCreateCopyWithImageProvider(a1, v39);
          v50 = 1;
          CGImageSetCachingFlags(CopyWithImageProvider, 1);
          CFRelease(v39);
          a1 = CopyWithImageProvider;
LABEL_47:
          v8 = CFDictionaryGetValue(v2, @"kCGColorConversionInfoOptions");
          v9 = CFDictionaryGetValue(v2, @"kCGColorConversionInfoPayload");
          v52 = *(a1 + 24);
          if (v52 != 0 && !v16 && v50)
          {
            if (CopyWithImageProvider)
            {
              CFRelease(CopyWithImageProvider);
            }

            return 0;
          }

          if (!v7 || !v16 && v52 != 0)
          {
            v2 = 0;
            goto LABEL_91;
          }

          v53 = CFDataCreateMutable(0, 0);
          if (CGImageCreateCopyWithResolvedOptions_predicate != -1)
          {
            dispatch_once(&CGImageCreateCopyWithResolvedOptions_predicate, &__block_literal_global_75_5241);
          }

          CopyWithResolvedOptions_f = CGImageCreateCopyWithResolvedOptions_f(v53, @"public.jpeg", 1, 0);
          if (!CopyWithResolvedOptions_f)
          {
            v2 = 0;
            goto LABEL_88;
          }

          v55 = CopyWithResolvedOptions_f;
          v56 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!v56)
          {
            v2 = 0;
LABEL_87:
            CFRelease(v55);
LABEL_88:
            if (v53)
            {
              CFRelease(v53);
              if ((v50 & 1) == 0)
              {
                goto LABEL_7;
              }

LABEL_92:
              if (v2)
              {
                if (CopyWithImageProvider)
                {
                  CFRelease(CopyWithImageProvider);
                }
              }

              else
              {
                v2 = CopyWithImageProvider;
              }

LABEL_7:
              if (!(v8 | v9))
              {
                a1 = v2;
LABEL_21:
                CGImageSetCachingFlags(a1, 1);
                return a1;
              }

              if (v2)
              {
                v10 = v2;
              }

              else
              {
                v10 = a1;
              }

              Copy = CGImageCreateCopy(v10);
              a1 = Copy;
              if (v8)
              {
                if (CGImageSetColorConversionInfoOptions(Copy, v8))
                {
LABEL_19:
                  if (v2)
                  {
                    CFRelease(v2);
                  }

                  goto LABEL_21;
                }
              }

              else if (CGImageSetColorConversionInfoPayload(Copy, v9))
              {
                goto LABEL_19;
              }

              if (a1)
              {
                CFRelease(a1);
              }

              a1 = 0;
              goto LABEL_19;
            }

LABEL_91:
            if (!v50)
            {
              goto LABEL_7;
            }

            goto LABEL_92;
          }

          v80 = v53;
          v57 = v56;
          v58 = CFDictionaryGetValue(v2, @"kCGImageDestinationLossyCompressionQuality");
          v81 = v57;
          CFDictionarySetValue(v57, @"kCGImageDestinationLossyCompressionQuality", v58);
          if (CGImageCreateCopyWithResolvedOptions_predicate_81 != -1)
          {
            dispatch_once(&CGImageCreateCopyWithResolvedOptions_predicate_81, &__block_literal_global_84_5243);
          }

          v59 = v57;
          CGImageCreateCopyWithResolvedOptions_f_80(v55, a1, v57);
          v53 = v80;
          if (CGImageCreateCopyWithResolvedOptions_predicate_87 != -1)
          {
            dispatch_once(&CGImageCreateCopyWithResolvedOptions_predicate_87, &__block_literal_global_90_5244);
          }

          if (!CGImageCreateCopyWithResolvedOptions_f_86(v55) || (v60 = CGDataProviderCreateWithCFData(v80)) == 0)
          {
            v2 = 0;
LABEL_86:
            CFRelease(v59);
            goto LABEL_87;
          }

          provider = v60;
          v2 = CGImageCreateWithJPEGDataProvider2(v60, 0, 0, 1, 0);
          if (v2)
          {
            if (is_jpg_image(a1))
            {
              if (CGImageCreateCopyWithResolvedOptions_predicate_93 != -1)
              {
                dispatch_once(&CGImageCreateCopyWithResolvedOptions_predicate_93, &__block_literal_global_96_5245);
              }

              CopyWithResolvedOptions_f_92 = CGImageCreateCopyWithResolvedOptions_f_92(a1);
            }

            else
            {
              DataProviderInternal = CGImageGetDataProviderInternal(a1, 0);
              CopyWithResolvedOptions_f_92 = CGDataProviderCopyData(DataProviderInternal);
            }

            v63 = CopyWithResolvedOptions_f_92;
            if (!CopyWithResolvedOptions_f_92 || (Length = CFDataGetLength(CopyWithResolvedOptions_f_92), LODWORD(Length) = Length > CFDataGetLength(v80), CFRelease(v63), ((Length | v16) & 1) != 0))
            {
              copy_image_mask_and_matte(v2, a1);
              v64 = *(a1 + 25);
              if (v64)
              {
                v64 = CFRetain(v64);
              }

              v59 = v81;
              v65 = provider;
              *(v2 + 25) = v64;
              goto LABEL_85;
            }

            CFRelease(v2);
            v2 = 0;
            v59 = v81;
          }

          v65 = provider;
LABEL_85:
          CGDataProviderRelease(v65);
          goto LABEL_86;
        }
      }
    }
  }

  if (a1)
  {
    CFRetain(a1);
  }

  return a1;
}

CGImage *CGImageCreateCopyWithProtectedDataProvider(CGImage *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 19);
    if (!v2 || *(v2 + 80) != data_get_byte_pointer || *(*(v2 + 24) + 24))
    {
      return 0;
    }

    if (use_protected_copy_predicate != -1)
    {
      dispatch_once(&use_protected_copy_predicate, &__block_literal_global_353);
    }

    if (use_protected_copy_status != 1)
    {
      return 0;
    }

    v3 = *(v1 + 19);
    v4 = CGDataProviderRetainBytePtr(v3);
    if (!v4)
    {
      return 0;
    }

    v5 = v3 ? *(v3 + 32) : -1;
    protected_copy = create_protected_copy(v4, v5);
    v7 = CGDataProviderCreateWithCFData(protected_copy);
    CGDataProviderReleaseBytePtr(v3);
    if (protected_copy)
    {
      CFRelease(protected_copy);
    }

    if (v7)
    {
      Copy = CGImageCreateCopy(v1);
      v1 = Copy;
      if (Copy)
      {
        CGDataProviderRelease(*(Copy + 19));
        *(v1 + 19) = v7;
      }

      else
      {
        CGDataProviderRelease(v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void CGImageSetCachingFlags(_BYTE *a1, char a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v4 == CGImageGetTypeID_image_type_id)
    {
      a1[36] = a2;
    }
  }
}

void *CGImageGetClipPath(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      return v1[25];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *CGImageCreateSubsampledImage(uint64_t a1, double a2, double a3)
{
  Mask = CGImageGetMask(a1);
  if (!Mask)
  {
    v8 = 1;
    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    if (*(a1 + 40) != Mask[5])
    {
      v8 = 0;
      goto LABEL_11;
    }

    v7 = *(a1 + 48);
  }

  else
  {
    v7 = Mask[5];
    if (v7)
    {
      return 0;
    }
  }

  v8 = v7 == Mask[6];
  if (a1)
  {
LABEL_11:
    v10 = 0;
    v9 = (*(a1 + 39) >> 1) & 1;
    goto LABEL_12;
  }

LABEL_9:
  LOBYTE(v9) = 0;
  v10 = 1;
LABEL_12:
  v11 = 0;
  if (v9)
  {
    return v11;
  }

  if (!v8)
  {
    return v11;
  }

  ImageProvider = CGImageGetImageProvider(a1);
  v11 = ImageProvider;
  if (!ImageProvider)
  {
    return v11;
  }

  if (*(ImageProvider + 128) != 1 || (v10 & 1) != 0)
  {
    return 0;
  }

  v13 = fabs(round(a3));
  if (*(a1 + 40) <= 2 * fabs(round(a2)) || *(a1 + 48) <= 2 * v13)
  {
    return 0;
  }

  if (block_set_options_predicate != -1)
  {
    dispatch_once(&block_set_options_predicate, &__block_literal_global_368);
  }

  v15 = CGImageProviderCopyImageBlockSetWithOptions(v11, block_set_options_options_singleton);
  if (!v15)
  {
    v15 = CGImageProviderCopyImageBlockSetWithOptions(v11, 0);
    if (!v15)
    {
      return 0;
    }
  }

  v16 = v15;
  ComponentType = CGImageGetComponentType(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  subsampled_image_provider = create_subsampled_image_provider(v16, ComponentType, ColorSpace, v11, v19, v20, v21, v22);
  if (!subsampled_image_provider)
  {
    CGImageBlockSetRelease(v16);
    return 0;
  }

  v24 = subsampled_image_provider;
  Decode = CGImageGetDecode(a1);
  ShouldInterpolate = CGImageGetShouldInterpolate(a1);
  RenderingIntent = CGImageGetRenderingIntent(a1);
  v11 = CGImageCreateWithImageProvider(v24, Decode, ShouldInterpolate, RenderingIntent, v28, v29, v30, v31);
  CFRelease(v24);
  if (!v11 || !*(a1 + 176))
  {
    return v11;
  }

  v32 = CGImageGetMask(a1);
  SubsampledImage = CGImageCreateSubsampledImage(v32, a2, a3);
  if (!SubsampledImage)
  {
    CFRelease(v11);
    return 0;
  }

  v34 = SubsampledImage;
  v35 = CGImageCreateWithMaskAndMatte(v11, SubsampledImage, 0);
  if (v35)
  {
    v36 = v35;
    CFRelease(v11);
    v11 = v36;
  }

  CFRelease(v34);
  return v11;
}

void *CGImageGetEPSRep(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      return v1[24];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *create_alternate_image(uint64_t a1, int a2)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (!a2)
  {
    v6 = 0;
    if (CGColorSpaceGetModel(ColorSpace) || !a1)
    {
      return v6;
    }

    v6 = 0;
    v7 = *(a1 + 56);
    if (v7 > 3)
    {
      if (v7 != 4)
      {
        if (v7 != 8)
        {
          return v6;
        }

        v19 = CGImageGetColorSpace(a1);
        v6 = 0;
        if (CGColorSpaceGetType(v19) != 8 || !v19)
        {
          return v6;
        }

        if (*(*(v19 + 3) + 48) == 1)
        {
          v18 = CGImageCreate8BitIndexed(a1);
          goto LABEL_24;
        }

        return 0;
      }

      if (!image_can_be_converted_to_indexed(a1))
      {
        return 0;
      }

      if (*(a1 + 56) != 4)
      {
        _CGHandleAssert("CGImageCreate4BitIndexed", 409, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGImageGetBitsPerComponent(image) == 4", "bpc %lu", v26, v27, v28, *(a1 + 56));
      }

      v29 = CGImageGetColorSpace(a1);
      if (!v29 || *(*(v29 + 3) + 48) != 1)
      {
        return 0;
      }

      v30 = CGImageGetColorSpace(a1);
      if (!v30 || *(*(v30 + 3) + 48) != 1)
      {
        v45 = CGImageGetColorSpace(a1);
        if (v45)
        {
          v49 = *(*(v45 + 3) + 48);
        }

        else
        {
          LOBYTE(v49) = 0;
        }

        _CGHandleAssert("create_4_bit_1_component_indexed_image", 389, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 1", "colorspace components %zu", v46, v47, v48, v49);
      }

      v14 = CGImageGetColorSpace(a1);
      v15 = &expand_4_to_8bpc_table;
      v16 = 15;
      goto LABEL_48;
    }

    if (v7 == 1)
    {
      if (!image_can_be_converted_to_indexed(a1))
      {
        return 0;
      }

      if (*(a1 + 56) != 1)
      {
        _CGHandleAssert("CGImageCreate1BitIndexed", 196, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGImageGetBitsPerComponent(image) == 1", "bpc %lu", v20, v21, v22, *(a1 + 56));
      }

      v23 = CGImageGetColorSpace(a1);
      if (!v23)
      {
        return 0;
      }

      v24 = *(*(v23 + 3) + 48);
      switch(v24)
      {
        case 4:
          v43 = CGImageGetColorSpace(a1);
          if (!v43 || *(*(v43 + 3) + 48) != 4)
          {
            v65 = CGImageGetColorSpace(a1);
            if (v65)
            {
              v69 = *(*(v65 + 3) + 48);
            }

            else
            {
              LOBYTE(v69) = 0;
            }

            _CGHandleAssert("create_1_bit_4_component_indexed_image", 159, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 4", "ColorSpace color components: %zu", v66, v67, v68, v69);
          }

          v44 = CGImageGetColorSpace(a1);
          Indexed = CGColorSpaceCreateIndexed(v44, 0xFuLL, create_1_bit_4_component_indexed_image_index_table);
          v36 = a1;
          v37 = Indexed;
          v38 = 4;
          break;
        case 3:
          v39 = CGImageGetColorSpace(a1);
          if (!v39 || *(*(v39 + 3) + 48) != 3)
          {
            v55 = CGImageGetColorSpace(a1);
            if (v55)
            {
              v59 = *(*(v55 + 3) + 48);
            }

            else
            {
              LOBYTE(v59) = 0;
            }

            _CGHandleAssert("create_1_bit_3_component_indexed_image", 133, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 3", "ColorSpace color components:%zu", v56, v57, v58, v59);
          }

          v40 = CGImageGetColorSpace(a1);
          Indexed = CGColorSpaceCreateIndexed(v40, 7uLL, create_1_bit_3_component_indexed_image_index_table);
          v36 = a1;
          v37 = Indexed;
          v38 = 3;
          break;
        case 1:
          v25 = CGImageGetColorSpace(a1);
          if (!v25 || *(*(v25 + 3) + 48) != 1)
          {
            v75 = CGImageGetColorSpace(a1);
            if (v75)
            {
              v79 = *(*(v75 + 3) + 48);
            }

            else
            {
              LOBYTE(v79) = 0;
            }

            _CGHandleAssert("create_1_bit_1_component_indexed_image", 116, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 1", "ColorSpace color components: %zu", v76, v77, v78, v79);
          }

          v14 = CGImageGetColorSpace(a1);
          v15 = &expand_1_to_8bpc_table;
          v16 = 1;
LABEL_48:
          Indexed = CGColorSpaceCreateIndexed(v14, v16, v15);
          CopyWithColorSpace = CGImageCreateCopyWithColorSpace(a1, Indexed);
          goto LABEL_64;
        default:
          return 0;
      }
    }

    else
    {
      if (v7 != 2)
      {
        return v6;
      }

      if (!image_can_be_converted_to_indexed(a1))
      {
        return 0;
      }

      if (*(a1 + 56) != 2)
      {
        _CGHandleAssert("CGImageCreate2BitIndexed", 363, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGImageGetBitsPerComponent(image) == 2", "bpc %zu", v8, v9, v10, *(a1 + 56));
      }

      v11 = CGImageGetColorSpace(a1);
      if (!v11)
      {
        return 0;
      }

      v12 = *(*(v11 + 3) + 48);
      switch(v12)
      {
        case 4:
          v41 = CGImageGetColorSpace(a1);
          if (!v41 || *(*(v41 + 3) + 48) != 4)
          {
            v60 = CGImageGetColorSpace(a1);
            if (v60)
            {
              v64 = *(*(v60 + 3) + 48);
            }

            else
            {
              LOBYTE(v64) = 0;
            }

            _CGHandleAssert("create_2_bit_4_component_indexed_image", 275, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 4", "colorspace components %zu", v61, v62, v63, v64);
          }

          v42 = CGImageGetColorSpace(a1);
          Indexed = CGColorSpaceCreateIndexed(v42, 0xFFuLL, create_2_bit_4_component_indexed_image_index_table);
          v36 = a1;
          v37 = Indexed;
          v38 = 8;
          break;
        case 3:
          v34 = CGImageGetColorSpace(a1);
          if (!v34 || *(*(v34 + 3) + 48) != 3)
          {
            v50 = CGImageGetColorSpace(a1);
            if (v50)
            {
              v54 = *(*(v50 + 3) + 48);
            }

            else
            {
              LOBYTE(v54) = 0;
            }

            _CGHandleAssert("create_2_bit_3_component_indexed_image", 239, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 3", "colorspace components %zu", v51, v52, v53, v54);
          }

          v35 = CGImageGetColorSpace(a1);
          Indexed = CGColorSpaceCreateIndexed(v35, 0x3FuLL, create_2_bit_3_component_indexed_image_index_table);
          v36 = a1;
          v37 = Indexed;
          v38 = 6;
          break;
        case 1:
          v13 = CGImageGetColorSpace(a1);
          if (!v13 || *(*(v13 + 3) + 48) != 1)
          {
            v70 = CGImageGetColorSpace(a1);
            if (v70)
            {
              v74 = *(*(v70 + 3) + 48);
            }

            else
            {
              LOBYTE(v74) = 0;
            }

            _CGHandleAssert("create_2_bit_1_component_indexed_image", 222, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 1", "colorspace components %zu", v71, v72, v73, v74);
          }

          v14 = CGImageGetColorSpace(a1);
          v15 = &expand_2_to_8bpc_table;
          v16 = 3;
          goto LABEL_48;
        default:
          return 0;
      }
    }

    CopyWithColorSpace = copy_image_with_color_space_and_one_component(v36, v37, v38);
LABEL_64:
    v6 = CopyWithColorSpace;
    CGColorSpaceRelease(Indexed);
    if (!v6)
    {
      return v6;
    }

    goto LABEL_25;
  }

  v5 = CGColorSpaceGetType(ColorSpace) - 7;
  if (a1)
  {
    if ((*(a1 + 39) & 8) != 0 || v5 < 3)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v5 > 2)
  {
    return 0;
  }

LABEL_21:
  RenderingIntent = CGImageGetRenderingIntent(a1);
  if (get_flattening_options_predicate != -1)
  {
    dispatch_once(&get_flattening_options_predicate, &__block_literal_global_14243);
  }

  v18 = CGColorTransformConvertImage(a1, RenderingIntent, get_flattening_options_options);
LABEL_24:
  v6 = v18;
  if (v18)
  {
LABEL_25:
    CGImageSetCachingFlags(v6, 1);
  }

  return v6;
}

uint64_t ripc_GetImageSize(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  if (result)
  {
    v3 = *(result + 40);
    v4 = *(result + 48);
    if (v3)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      Mask = CGImageGetMask(result);
      if (Mask)
      {
        if (Mask[5] > v3)
        {
          v3 = Mask[5];
        }

        if (Mask[6] > v4)
        {
          v4 = Mask[6];
        }
      }

      *a2 = v3;
      *a3 = v4;
      return 1;
    }
  }

  return result;
}

void RIPImageDataRelease(uint64_t a1)
{
  if (a1)
  {
    CGSImageDataUnlock(*(a1 + 120));
    if (!pthread_mutex_destroy((a1 + 128)))
    {
      pthread_cond_destroy((a1 + 192));
    }

    free(a1);
  }
}

uint64_t ripc_DrawImage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v8 = a4;
  if (a1)
  {
    v11 = *(a1 + 288);
  }

  else
  {
    v11 = 0;
  }

  v70 = 0;
  memset(v69, 0, sizeof(v69));
  EPSRep = CGImageGetEPSRep(a4);
  if (EPSRep)
  {
    v8 = EPSRep[3];
  }

  memset(v78, 0, 48);
  v13 = *(a3 + 56);
  v14 = *(a3 + 40);
  v66 = *(a3 + 24);
  v67 = v14;
  v68 = v13;
  v15 = v11[5];
  if (v15 == 1.0)
  {
    v17 = v66;
    v16 = v67;
  }

  else
  {
    v16 = vmulq_n_f64(v67, v15);
    v17 = vmulq_n_f64(v66, v15);
    v66 = v17;
    v67 = v16;
    v68 = vmulq_n_f64(v68, v15);
  }

  v77[0] = 0;
  v77[1] = 0;
  v75[0] = 0;
  v75[1] = 0;
  v58 = vmulq_n_f64(v16, a8);
  v59 = v16;
  v60 = v17;
  v18 = vmlaq_n_f64(v58, v17, a7);
  SubsampledImage = CGImageCreateSubsampledImage(v8, v18.f64[0], v18.f64[1]);
  v20 = SubsampledImage;
  if (SubsampledImage)
  {
    v21 = SubsampledImage;
  }

  else
  {
    v21 = v8;
  }

  v24 = *v11 && (v22 = *(*v11 + 248)) != 0 && (v23 = v22()) != 0 && *(v23 + 40) == 7;
  v73 = 0;
  v74 = 0;
  alternate_image = create_alternate_image(v21, v24);
  v26 = alternate_image;
  if (alternate_image)
  {
    v27 = alternate_image;
  }

  else
  {
    v27 = v21;
  }

  if ((ripc_GetImageSize(v27, &v74, &v73) & 1) == 0)
  {
    goto LABEL_53;
  }

  v29 = v73;
  v28 = v74;
  v71 = v73;
  v72 = v74;
  if ((ripc_GetRenderingState(v11, a2, a3, v78) & 1) == 0)
  {
    goto LABEL_53;
  }

  v76[0] = 0;
  v76[1] = 0;
  if (a7 < 0.0 || a8 < 0.0)
  {
    v79.origin.y = a6;
    v79.origin.x = a5;
    v79.size.height = a8;
    v79.size.width = a7;
    *&v31 = CGRectStandardize(v79);
    v30 = vdupq_lane_s64(v35, 0);
    v33 = v59;
    v34 = vmulq_n_f64(v59, v36);
  }

  else
  {
    v30 = vdupq_lane_s64(*&a7, 0);
    v32 = a6;
    v31 = a5;
    v34 = v58;
    v33 = v59;
  }

  v66 = vmlaq_f64(vmulq_f64(v33, 0), v60, v30);
  v67 = vmlaq_f64(v34, 0, v60);
  v68 = vaddq_f64(v68, vmlaq_n_f64(vmulq_n_f64(v33, v32), v60, v31));
  ImageTransformation = ripc_GetImageTransformation(v27, &v78[1] + 2, v28, v29, 0, v66.f64, v77, v76, v75);
  if (!ImageTransformation)
  {
    goto LABEL_53;
  }

  v38 = ImageTransformation;
  RenderingIntent = CGImageGetRenderingIntent(v27);
  if (!RenderingIntent)
  {
    v40 = *(*(a3 + 120) + 4);
    v41 = v40 << 12;
    if (((v40 >> 20) & 0xF) != 0)
    {
      v42 = v40 << 8;
    }

    else
    {
      v42 = v40 << 12;
    }

    if (!(v42 >> 28))
    {
      v42 = v41;
    }

    RenderingIntent = (v42 >> 28);
  }

  if (v38 >= 4)
  {
    ShouldInterpolate = CGImageGetShouldInterpolate(v27);
    ImageInterpolation = ripc_GetImageInterpolation(a2, *(*(a3 + 120) + 4), ShouldInterpolate);
    if (ImageInterpolation >= 3)
    {
      if ((v38 & 2) != 0)
      {
        v47 = 0;
      }

      else
      {
        v47 = v77;
      }

      if (ripc_GetImageInterpolationSize(v66.f64, &v72, &v71, v47))
      {
        v45 = ImageInterpolation;
      }

      else
      {
        v45 = 1;
      }

      v43 = v71;
      v44 = v72;
    }

    else
    {
      v45 = 1;
      v43 = v29;
      v44 = v28;
    }
  }

  else
  {
    ImageInterpolation = 1;
    v43 = v29;
    v44 = v28;
    v45 = 1;
  }

  if ((v38 & 2) != 0)
  {
    v48 = 0;
  }

  else
  {
    v48 = v77;
  }

  v49 = ripc_AcquireRIPImageData(v11, v27, v44, v43, v48, 0, v45, RenderingIntent);
  if (v49)
  {
    v53 = v49;
    if (v38 >= 4)
    {
      v54 = &v66;
    }

    else
    {
      v54 = 0;
    }

    ripc_InitializeImage(v69, v76, v49, ImageInterpolation, v28, v29, v54, 0, v50, v51, v52);
    ripc_RenderImage(v11, a2, a3, v78, v75, v69, v55, v56);
    ripc_ReleaseRIPImageData(v53);
LABEL_53:
    if (v26)
    {
      CFRelease(v26);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    return 0;
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return 1000;
}

unint64_t ripc_GetImageTransformation(void *a1, int *a2, unint64_t a3, unint64_t a4, double *a5, double *a6, uint64_t a7, int *a8, uint64_t a9)
{
  if (a1 && (Mask = CGImageGetMask(a1)) != 0 && (Mask[5] > a1[5] || Mask[6] > a1[6]))
  {
    v18 = 7;
  }

  else
  {
    v18 = 3;
  }

  v19 = a2[3];
  v20 = a2[1];
  v21 = *a2;
  v22 = a6[4];
  v23 = a6[5];
  v25 = *a6;
  v24 = a6[1];
  v27 = a6[2];
  v26 = a6[3];
  v28 = v22 + *a6;
  v29 = v23 + v24;
  if (v28 > v22)
  {
    v30 = v22 + *a6;
  }

  else
  {
    v30 = a6[4];
  }

  if (v28 >= v22)
  {
    v31 = a6[4];
  }

  else
  {
    v30 = a6[4];
    v31 = v22 + *a6;
  }

  if (v29 > v23)
  {
    v32 = v23 + v24;
  }

  else
  {
    v32 = a6[5];
  }

  if (v29 >= v23)
  {
    v33 = a6[5];
  }

  else
  {
    v32 = a6[5];
    v33 = v23 + v24;
  }

  v34 = v28 + v27;
  v35 = v29 + v26;
  if (v28 + v27 > v30)
  {
    v36 = v28 + v27;
  }

  else
  {
    v36 = v30;
  }

  if (v34 >= v31)
  {
    v37 = v36;
  }

  else
  {
    v37 = v30;
  }

  if (v34 >= v31)
  {
    v38 = v31;
  }

  else
  {
    v38 = v34;
  }

  if (v35 > v32)
  {
    v39 = v35;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v39 = v32;
    v40 = v35;
  }

  v41 = a2[2] + v21;
  v42 = v35 - v24;
  if (v34 - v25 >= v38)
  {
    if (v34 - v25 > v37)
    {
      v37 = v34 - v25;
    }
  }

  else
  {
    v38 = v34 - v25;
  }

  if (v42 > v39)
  {
    v43 = v35 - v24;
  }

  else
  {
    v43 = v39;
  }

  if (v42 >= v40)
  {
    v44 = v43;
  }

  else
  {
    v44 = v39;
  }

  if (v42 >= v40)
  {
    v45 = v40;
  }

  else
  {
    v45 = v35 - v24;
  }

  if (v38 >= v21)
  {
    v46 = v38;
  }

  else
  {
    v46 = *a2;
  }

  if (v37 <= v41)
  {
    v47 = v37;
  }

  else
  {
    v47 = a2[2] + v21;
  }

  if (v46 >= v47)
  {
    return 0;
  }

  v48 = v19 + v20;
  v49 = v45 >= v20 ? v45 : v20;
  v50 = v37 > v41 || v45 < v20;
  v51 = v50 || v38 < v21;
  v52 = !v51 && v44 <= v48;
  result = v52 ? v18 : v18 & 0xFFFFFFFFFFFFFFFDLL;
  v54 = v44 <= v48 ? v44 : v19 + v20;
  if (v49 >= v54)
  {
    return 0;
  }

  v55 = v38 + v37 - v38;
  v56 = v38 + 0.00390625;
  if (v56 <= 1073741820.0)
  {
    v58 = vcvtmd_s64_f64(v56);
    if (v56 >= -1073741820.0)
    {
      v57 = v58;
    }

    else
    {
      v57 = -1073741823;
    }
  }

  else
  {
    v57 = 0x3FFFFFFF;
  }

  *a8 = v57;
  v59 = v55 + -0.00390625;
  if (v59 <= 1073741820.0)
  {
    v61 = vcvtpd_s64_f64(v59);
    if (v59 >= -1073741820.0)
    {
      v60 = v61;
    }

    else
    {
      v60 = -1073741823;
    }
  }

  else
  {
    v60 = 0x3FFFFFFF;
  }

  v62 = v60 - v57;
  a8[2] = v62;
  v63 = v45 + v44 - v45;
  v64 = v45 + 0.00390625;
  if (v64 <= 1073741820.0)
  {
    v65 = vcvtmd_s64_f64(v64);
    if (v64 < -1073741820.0)
    {
      v65 = -1073741823;
    }
  }

  else
  {
    v65 = 0x3FFFFFFF;
  }

  v66 = a3;
  v67 = a4;
  a8[1] = v65;
  v68 = v63 + -0.00390625;
  if (v68 <= 1073741820.0)
  {
    v69 = vcvtpd_s64_f64(v68);
    if (v68 < -1073741820.0)
    {
      v69 = -1073741823;
    }
  }

  else
  {
    v69 = 0x3FFFFFFF;
  }

  v70 = 1.0 / v66;
  v71 = v69 - v65;
  a8[3] = v71;
  v72 = 1.0 / v67;
  if (v62 != a3 || v71 != a4 || fabs(v24) > 0.00390625 || vabdd_f64(v25, v66) > 0.00390625 || fabs(v27) > 0.00390625 || vabdd_f64(v26, v67) > 0.00390625)
  {
    result |= 4uLL;
  }

  v73 = v70 * v25;
  v74 = v70 * v24;
  *a6 = v73;
  a6[1] = v74;
  v75 = v72 * v27;
  v76 = v72 * v26;
  a6[2] = v75;
  a6[3] = v76;
  if (a5)
  {
    v77 = *a5 * v66;
    v78 = a5[1] * v67;
    v79 = a5[2] * v66;
    v80 = a5[3] * v67;
    v81 = v22 + v73 * v77 + v75 * v78;
    v82 = v23 + v74 * v77 + v76 * v78;
    v83 = v81 + v73 * v79;
    v84 = v82 + v74 * v79;
    if (v83 > v81)
    {
      v85 = v81 + v73 * v79;
    }

    else
    {
      v85 = v81;
    }

    if (v83 < v81)
    {
      v85 = v81;
      v81 = v81 + v73 * v79;
    }

    if (v84 > v82)
    {
      v86 = v82 + v74 * v79;
    }

    else
    {
      v86 = v82;
    }

    if (v84 >= v82)
    {
      v87 = v82;
    }

    else
    {
      v86 = v82;
      v87 = v82 + v74 * v79;
    }

    v88 = v83 + v75 * v80;
    v89 = v84 + v76 * v80;
    if (v88 > v85)
    {
      v90 = v83 + v75 * v80;
    }

    else
    {
      v90 = v85;
    }

    if (v88 >= v81)
    {
      v91 = v81;
    }

    else
    {
      v90 = v85;
      v91 = v83 + v75 * v80;
    }

    if (v89 > v86)
    {
      v92 = v84 + v76 * v80;
    }

    else
    {
      v92 = v86;
    }

    if (v89 >= v87)
    {
      v93 = v87;
    }

    else
    {
      v92 = v86;
      v93 = v89;
    }

    v94 = v88 - v73 * v79;
    v95 = v89 - v74 * v79;
    if (v94 >= v91)
    {
      if (v94 > v90)
      {
        v90 = v94;
      }
    }

    else
    {
      v91 = v94;
    }

    if (v95 > v92)
    {
      v97 = v95;
    }

    else
    {
      v97 = v92;
    }

    if (v95 < v93)
    {
      v93 = v95;
    }

    else
    {
      v92 = v97;
    }

    if (v46 < v91)
    {
      v46 = v91;
    }

    if (v47 > v90)
    {
      v47 = v90;
    }

    if (v46 >= v47)
    {
      return 0;
    }

    if (v49 < v93)
    {
      v49 = v93;
    }

    if (v54 > v92)
    {
      v54 = v92;
    }

    if (v49 >= v54)
    {
      return 0;
    }

    result &= ~2uLL;
  }

  else if ((result & 2) != 0)
  {
    *a7 = 0;
    *(a7 + 8) = a3;
    *(a7 + 12) = a4;
    *a9 = *a8;
    v96 = a8[3];
    *(a9 + 8) = a8[2];
    a7 = a9;
LABEL_126:
    *(a7 + 12) = v96;
    return result;
  }

  v98 = v75 * -v74 + v73 * v76;
  if (v98 != 0.0)
  {
    v99 = v47 - v46;
    v100 = v46 + 0.00390625;
    if (v46 + 0.00390625 <= 1073741820.0)
    {
      v102 = vcvtmd_s64_f64(v100);
      if (v100 >= -1073741820.0)
      {
        v101 = v102;
      }

      else
      {
        v101 = -1073741823;
      }
    }

    else
    {
      v101 = 0x3FFFFFFF;
    }

    v103 = v54 - v49;
    *a9 = v101;
    v104 = v46 + v99 + -0.00390625;
    if (v104 <= 1073741820.0)
    {
      v106 = vcvtpd_s64_f64(v104);
      if (v104 >= -1073741820.0)
      {
        v105 = v106;
      }

      else
      {
        v105 = -1073741823;
      }
    }

    else
    {
      v105 = 0x3FFFFFFF;
    }

    *(a9 + 8) = v105 - v101;
    v107 = v49 + 0.00390625;
    if (v49 + 0.00390625 <= 1073741820.0)
    {
      v109 = vcvtmd_s64_f64(v107);
      if (v107 >= -1073741820.0)
      {
        v108 = v109;
      }

      else
      {
        v108 = -1073741823;
      }
    }

    else
    {
      v108 = 0x3FFFFFFF;
    }

    *(a9 + 4) = v108;
    v110 = v49 + v103 + -0.00390625;
    v111 = 1.0 / v98;
    if (v110 <= 1073741820.0)
    {
      v113 = vcvtpd_s64_f64(v110);
      if (v110 >= -1073741820.0)
      {
        v112 = v113;
      }

      else
      {
        v112 = -1073741823;
      }
    }

    else
    {
      v112 = 0x3FFFFFFF;
    }

    *(a9 + 12) = v112 - v108;
    v114 = v73 * v111;
    v115 = v74 * v111;
    v116 = v115 * v22 - v114 * v23;
    v117 = v76 * v111;
    v118 = -(v76 * v111);
    v119 = v75 * v111 * v23 - v117 * v22;
    v120 = -(v75 * v111);
    v121 = v119 + v117 * v46 - v75 * v111 * v49;
    v122 = v116 - v115 * v46 + v114 * v49;
    v123 = v121 + v117 * v99;
    v124 = v122 - v115 * v99;
    if (v123 > v121)
    {
      v125 = v121 + v117 * v99;
    }

    else
    {
      v125 = v121;
    }

    if (v123 < v121)
    {
      v125 = v121;
      v121 = v121 + v117 * v99;
    }

    if (v124 > v122)
    {
      v126 = v122 - v115 * v99;
    }

    else
    {
      v126 = v122;
    }

    if (v124 < v122)
    {
      v126 = v122;
      v122 = v122 - v115 * v99;
    }

    v127 = v123 + v120 * v103;
    v128 = v124 + v114 * v103;
    if (v127 > v125)
    {
      v129 = v127;
    }

    else
    {
      v129 = v125;
    }

    if (v127 >= v121)
    {
      v130 = v121;
    }

    else
    {
      v129 = v125;
      v130 = v127;
    }

    if (v128 > v126)
    {
      v131 = v128;
    }

    else
    {
      v131 = v126;
    }

    if (v128 < v122)
    {
      v131 = v126;
      v122 = v128;
    }

    v132 = v127 + v118 * v99;
    v133 = v128 + v115 * v99;
    if (v132 >= v130)
    {
      if (v132 > v129)
      {
        v129 = v132;
      }
    }

    else
    {
      v130 = v132;
    }

    if (v133 >= v122)
    {
      if (v133 > v131)
      {
        v131 = v133;
      }
    }

    else
    {
      v122 = v133;
    }

    if (a5)
    {
      v134 = a5[1];
      v135 = v134 * v67;
      v136 = (v134 + a5[3]) * v67;
      v137 = fmax(*a5 * v66, 0.0);
      v138 = fmax(v135, 0.0);
      if ((*a5 + a5[2]) * v66 < v66)
      {
        v66 = (*a5 + a5[2]) * v66;
      }

      if (v136 < v67)
      {
        v67 = v136;
      }
    }

    else
    {
      v138 = 0.0;
      v137 = 0.0;
    }

    if (v130 < v137)
    {
      v130 = v137;
    }

    if (v129 <= v66)
    {
      v66 = v129;
    }

    if (v66 > v130)
    {
      if (v122 >= v138)
      {
        v139 = v122;
      }

      else
      {
        v139 = v138;
      }

      if (v131 > v67)
      {
        v131 = v67;
      }

      if (v131 > v139)
      {
        v140 = v130 + v66 - v130;
        v141 = v130 + 0.00390625;
        if (v130 + 0.00390625 <= 1073741820.0)
        {
          v143 = vcvtmd_s64_f64(v141);
          if (v141 >= -1073741820.0)
          {
            v142 = v143;
          }

          else
          {
            v142 = -1073741823;
          }
        }

        else
        {
          v142 = 0x3FFFFFFF;
        }

        v144 = v131 - v139;
        *a7 = v142;
        v145 = v140 + -0.00390625;
        if (v145 <= 1073741820.0)
        {
          v147 = vcvtpd_s64_f64(v145);
          if (v145 >= -1073741820.0)
          {
            v146 = v147;
          }

          else
          {
            v146 = -1073741823;
          }
        }

        else
        {
          v146 = 0x3FFFFFFF;
        }

        *(a7 + 8) = v146 - v142;
        v148 = v139 + v144;
        v149 = v139 + 0.00390625;
        if (v149 <= 1073741820.0)
        {
          v151 = vcvtmd_s64_f64(v149);
          if (v149 >= -1073741820.0)
          {
            v150 = v151;
          }

          else
          {
            v150 = -1073741823;
          }
        }

        else
        {
          v150 = 0x3FFFFFFF;
        }

        *(a7 + 4) = v150;
        v152 = v148 + -0.00390625;
        if (v152 <= 1073741820.0)
        {
          if (v152 >= -1073741820.0)
          {
            v153 = vcvtpd_s64_f64(v152);
          }

          else
          {
            v153 = -1073741823;
          }
        }

        else
        {
          v153 = 0x3FFFFFFF;
        }

        v96 = v153 - v150;
        goto LABEL_126;
      }
    }
  }

  return 0;
}

CGColorRenderingIntent CGImageGetRenderingIntent(CGImageRef image)
{
  if (image)
  {
    v1 = image;
    v2 = CFGetTypeID(image);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      LODWORD(image) = *(v1 + 9) >> 8;
    }

    else
    {
      LODWORD(image) = 0;
    }
  }

  return image;
}

_OWORD *ripc_AcquireRIPImageData(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v12 = a2;
  v13 = a1;
  v138 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v14 = *(a2 + 36) == 1;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  v15 = *(*(a1 + 48) + 32);
  if (v15)
  {
    v16 = *v15 == 34082816;
    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  if (RIPShouldCacheImages_predicate != -1)
  {
    v114 = a8;
    v115 = a7;
    dispatch_once(&RIPShouldCacheImages_predicate, &__block_literal_global_13807);
    a7 = v115;
    a8 = v114;
  }

  v17 = (v13 == 0) | ~RIPShouldCacheImages_should_cache | (v14 || v16);
  v18 = a4 * a3;
  v19 = (v17 & 1) == 0 && a4 * a3 != -1;
  v20 = v8;
  if (v13)
  {
    v20 = v8;
    if (!v8)
    {
      v20 = *(*(v13 + 48) + 32);
    }
  }

  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = *v20;
  if (*v20 == 134886228)
  {
    v22 = 5;
    goto LABEL_25;
  }

  v23 = HIWORD(v21) & 0x3F;
  if (v23 != 32)
  {
    if (v23 == 16)
    {
      if (v21)
      {
        v22 = 5;
      }

      else
      {
        v22 = 2;
      }

      goto LABEL_25;
    }

LABEL_24:
    v22 = 1;
    goto LABEL_25;
  }

  if ((v21 & 1) == 0)
  {
    _CGHandleAssert("component_type_from_depth", 115, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImage.c", "", "Unimplemented", a6, a7, a8, v116);
  }

  v22 = 4;
LABEL_25:
  if (v19)
  {
    if (a5 && *(a5 + 8) >= a3 && *(a5 + 12) >= a4)
    {
      a5 = 0;
    }

    value_out = 0;
    v136 = 0uLL;
    v137 = 0;
    if (v13)
    {
      v136 = *(v13 + 132);
      v137 = *(v13 + 148);
    }

    if (v12)
    {
      v24 = *(v12 + 24);
      Property = *(v12 + 224);
      if (Property)
      {
        v26 = a8;
        v117 = v13;
        v27 = a4 * a3;
        v28 = v8;
        v29 = v12;
        v30 = a3;
        v31 = a5;
        v32 = a4;
        v33 = v22;
        v34 = a7;
        Property = CGPropertiesGetProperty(Property, @"kCGColorConversionInfoOptions");
        a7 = v34;
        v22 = v33;
        a4 = v32;
        a5 = v31;
        a3 = v30;
        v12 = v29;
        v8 = v28;
        v18 = v27;
        v13 = v117;
        LODWORD(a8) = v26;
      }
    }

    else
    {
      v24 = 0;
      Property = 0;
    }

    *&key[0] = __PAIR64__(a7, v24);
    v44 = a7;
    v119 = a8;
    DWORD2(key[0]) = a8;
    *(key + 12) = v136;
    *(&v122 + 1) = a3;
    HIDWORD(key[1]) = v137;
    *&v122 = v22;
    *&v123 = a4;
    *(&v123 + 1) = v8;
    *&v124 = Property;
    cache_lock();
    if (get_cache_predicate != -1)
    {
      dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
    }

    if (cache_get_and_retain(*(get_cache_image_cache + 64), key, &value_out))
    {
LABEL_67:
      v52 = value_out;
      if (value_out)
      {
        return v52;
      }

      v80 = malloc_type_calloc(1uLL, 0xF8uLL, 0x10E00402B2D0641uLL);
      value_out = v80;
      if (v80)
      {
        CGConditionalVarInit(v80 + 128, v81, v82, v83, v84, v85, v86, v87);
        if (get_cache_predicate != -1)
        {
          dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
        }

        cache_set_and_retain(*(get_cache_image_cache + 64), key, value_out, v18);
      }

      v88 = v22;
      cache_unlock();
      v89 = value_out;
      if (!value_out)
      {
        return 0;
      }

      if (v13)
      {
        v90 = *(v13 + 120);
        v91 = v119;
        v92 = v44;
        if (!v8)
        {
          if (v90)
          {
            v8 = *(*(v13 + 48) + 32);
          }

          else
          {
            v8 = 0;
          }
        }

        if (!*(v13 + 88))
        {
          v93 = *v13;
          if (!*v13)
          {
            goto LABEL_81;
          }

          v113 = *(v93 + 248);
          if (v113)
          {
            v93 = v113();
            v92 = v44;
            v91 = v119;
            goto LABEL_81;
          }
        }

        v93 = 0;
      }

      else
      {
        v90 = 0;
        v93 = 0;
        v91 = v119;
        v92 = v44;
      }

LABEL_81:
      v94 = CGSImageDataLock(v12, a3, a4, a5, v92, v91, v90, v8, v93, v88, 0);
      if (v94)
      {
        initialize_skipping_conditional_var(v89, v13, v12, v94, v98, v99, v100, v101);
        v109 = value_out;
        if (!value_out || (v110 = *(value_out + 15), (v111 = *(v110 + 72)) == 0) || *(v111 + 8) != 1 || *(v110 + 80))
        {
          if (get_cache_predicate != -1)
          {
            dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
          }

          cache_remove(*(get_cache_image_cache + 64), key);
          v109 = value_out;
        }

        CGConditionalVarPost(v109 + 128, v102, v103, v104, v105, v106, v107, v108);
        return value_out;
      }

      CGConditionalVarPost(value_out + 128, v95, v96, v97, v98, v99, v100, v101);
      release_and_remove(key, value_out);
      return 0;
    }

    cache_unlock();
    if (!value_out)
    {
      _CGHandleAssert("RIPImageCacheGetRetained", 238, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImageCache.c", "data != NULL", "data is NULL", v49, v50, v51, v116);
    }

    CGConditionalVarWait(value_out + 128, v45, v46, v47, v48, v49, v50, v51);
    v52 = value_out;
    if (!*(value_out + 10) && !*(value_out + 11))
    {
      goto LABEL_65;
    }

    v53 = *(value_out + 13);
    if (v53 && *(v53 + 8) == 1)
    {
      nonpurgeable = malloc_make_nonpurgeable(*(v53 + 16));
      v52 = value_out;
      if (nonpurgeable)
      {
        goto LABEL_65;
      }

      if (!value_out)
      {
LABEL_66:
        cache_lock();
        goto LABEL_67;
      }
    }

    if (*(v52 + 14) == *(v52 + 10))
    {
      if (*(v52 + 15) == *(v52 + 11))
      {
        return v52;
      }

LABEL_63:
      v136 = 0uLL;
      if (CGSBoundsIntersection(v52 + 12, a5, &v136) && *(&v136 + 1) == *(a5 + 8))
      {
        return v52;
      }

      goto LABEL_65;
    }

    if (a5 || *(v52 + 15) == *(v52 + 11))
    {
      goto LABEL_63;
    }

LABEL_65:
    release_and_remove(key, v52);
    value_out = 0;
    goto LABEL_66;
  }

  if (v13)
  {
    v35 = *(v13 + 120);
    if (!*(v13 + 88))
    {
      v36 = *v13;
      if (!*v13)
      {
        goto LABEL_56;
      }

      v37 = *(v36 + 248);
      if (v37)
      {
        v38 = a8;
        v118 = v12;
        v39 = a3;
        v40 = a5;
        v41 = a4;
        v42 = v22;
        v43 = a7;
        v36 = v37();
        a7 = v43;
        v22 = v42;
        a4 = v41;
        a5 = v40;
        a3 = v39;
        v12 = v118;
        a8 = v38;
        goto LABEL_56;
      }
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = 0;
LABEL_56:
  v55 = CGSImageDataLock(v12, a3, a4, a5, a7, a8, v35, v20, v36, v22, 1u);
  if (!v55)
  {
    return 0;
  }

  v56 = v55;
  v52 = malloc_type_calloc(1uLL, 0xF8uLL, 0x10E00402B2D0641uLL);
  if (v52)
  {
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    memset(key, 0, sizeof(key));
    initialize_skipping_conditional_var(key, v13, v12, v56, v57, v58, v59, v60);
    v135 = 0;
    v132 = xmmword_1844DF7D0;
    v133 = unk_1844DF7E0;
    v134 = xmmword_1844DF7F0;
    v128 = CGConditionalVarInitializer;
    v129 = unk_1844DF7A0;
    v130 = xmmword_1844DF7B0;
    v131 = unk_1844DF7C0;
    CGConditionalVarPost(&v128, v61, v62, v63, v64, v65, v66, v67);
    v68 = v123;
    v70 = key[0];
    v69 = key[1];
    v52[2] = v122;
    v52[3] = v68;
    *v52 = v70;
    v52[1] = v69;
    v71 = v127;
    v73 = v124;
    v72 = v125;
    v52[6] = v126;
    v52[7] = v71;
    v52[4] = v73;
    v52[5] = v72;
    v74 = v131;
    v76 = v128;
    v75 = v129;
    v52[10] = v130;
    v52[11] = v74;
    v52[8] = v76;
    v52[9] = v75;
    v78 = v133;
    v77 = v134;
    v79 = v132;
    *(v52 + 30) = v135;
    v52[13] = v78;
    v52[14] = v77;
    v52[12] = v79;
  }

  return v52;
}

uint64_t CGSImageDataLock(CGColorSpace *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned __int8 a11)
{
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  if (!a1)
  {
    CGPostError("%s: Bad image source", a2, a3, a4, a5, a6, a7, a8, "CGSImageDataLock");
    return 0;
  }

  v12 = a7;
  v13 = a6;
  v14 = a5;
  if (a8 && !*(a8 + 40))
  {
    CGPostError("%s: Bad image depth", a2, a3, a4, a5, a6, a7, a8, "CGSImageDataLock");
    return 0;
  }

  memset(__src, 0, sizeof(__src));
  CGBitmapPixelInfoInitializeWithImage(__src, __src, a1);
  if (!a9)
  {
    if (a8)
    {
      v24 = *a8;
      if ((*a8 & 0xFFFFFFEF) == 0x4053344)
      {
        v22 = 0x10000;
      }

      else
      {
        v22 = (*a8 == 134886228) << 18;
      }

      v25 = (v24 >> 2) & 3;
      if (v25 <= 1)
      {
        if (v25)
        {
          v23 = 8;
        }

        else if ((v24 & 0xF00) != 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = 7;
        }

        goto LABEL_33;
      }

      if (v25 == 2)
      {
        v27 = v24 >> 6;
        if (v27 == 1)
        {
          v23 = 2;
        }

        else
        {
          v23 = v27 == 2;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = 0;
    goto LABEL_33;
  }

  v22 = *(a9 + 40) & 0xF0000;
  v23 = *(a9 + 40) & 0x1F;
  if (CGImageGetColorSpace(a1) && v23 <= 6 && ((1 << v23) & 0x61) != 0 && (*(a1 + 39) & 0xE) != 0)
  {
    if (v23 == 6)
    {
LABEL_12:
      v23 = 2;
      goto LABEL_33;
    }

    if (v23 != 5)
    {
      if (v23)
      {
        goto LABEL_33;
      }

      goto LABEL_12;
    }

    v23 = 1;
  }

LABEL_33:
  v47 = a10;
  if ((*(a1 + 39) & 8) != 0)
  {
    if (v23 == 7 || !v23)
    {
      if (a8 && *a8 == 134886228)
      {
        v23 = 1;
      }

      else
      {
        v23 = 3;
      }
    }
  }

  else if (v23 == 7)
  {
    ColorSpace = CGImageGetColorSpace(a1);
    if (CGColorSpaceGetType(ColorSpace) - 7 >= 3)
    {
      v12 = 0;
    }
  }

  v43 = a2;
  v44 = a3;
  v46 = a8;
  if (LODWORD(__src[2]) == 0x40000 && v22 == 0x40000)
  {
    if ((*(a1 + 39) & 8) == 0)
    {
      v47 = 0;
      v29 = 0x2000;
      v30 = 0x40000;
      v31 = 10;
      goto LABEL_54;
    }

LABEL_53:
    v30 = 0;
    v29 = 4096;
    v23 = 1;
    v31 = 16;
    goto LABEL_54;
  }

  if (v22 == 0x40000)
  {
    goto LABEL_53;
  }

  v31 = qword_1844E0BE8[a10];
  if (a9)
  {
    v32 = *(a9 + 40);
    if ((v32 & 0xF0000) == 0x10000)
    {
      v30 = 0;
      v29 = 0x4000;
    }

    else
    {
      v30 = 0;
      if ((v32 & 0xF0000) == 0x40000)
      {
        v29 = 4096;
      }

      else
      {
        v29 = *(a9 + 40) & 0x7000;
      }
    }
  }

  else if (v46)
  {
    if (v31 == 8)
    {
      v30 = 0;
      if ((*v46 & 0xFFFFFFEF) == 0x4053344)
      {
        v29 = 0x4000;
      }

      else
      {
        v29 = ((*v46 & 0x30) == 16) << 13;
      }

      v31 = 8;
    }

    else if (v31 == 16)
    {
      v30 = 0;
      v29 = ((*v46 & 0x30) == 32) << 12;
    }

    else
    {
      v30 = 0;
      if (v31 == 32)
      {
        v29 = ((*v46 & 0x30) == 32) << 13;
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v30 = 0;
    v29 = dword_1844E0BD0[a10];
  }

LABEL_54:
  if (v12)
  {
    Cache = CGColorTransformGetCache(v12);
    if (Cache && (v34 = Cache[2]) != 0)
    {
      v35 = *(*(v34 + 24) + 48);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 1;
  }

  if ((v31 - 33) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    _CGHandleAssert("CGBitmapPixelInfoInitialize", 56, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "bits_per_component > 0 && bits_per_component <= 32", "bpc: %zu", v19, v20, v21, v31);
  }

  v45 = v13;
  v49 = v47;
  v50 = 0;
  v51 = v31;
  v52 = v35;
  v53 = v23;
  v54 = v29;
  v55 = v30;
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  memcpy(__dst, __src, sizeof(__dst));
  v36 = data_conversion_required(v12, a1, &v49, __dst);
  v37 = v12;
  v38 = v36;
  v49 = v47;
  v50 = 0;
  v51 = v31;
  v52 = v35;
  v53 = v23;
  v54 = v29;
  v55 = v30;
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v39 = v13;
  v40 = v37;
  result = img_image(v73, v46, v37, v36, &v49, a1, v45);
  if (result)
  {
    if (a9)
    {
      v42 = *(a9 + 96);
    }

    else
    {
      v42 = 3;
    }

    return img_data_lock("CGSImageDataLock", v41, v73, v43, v44, a4, v14, v39, v40, v38, v46, v47, a11, v42);
  }

  return result;
}

uint64_t CGImageGetPixelComponentType(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1 > 7)
    {
      switch(v1)
      {
        case 8:
          return 1;
        case 16:
          if ((CGImageGetBitmapInfo(result) & 0x100) != 0)
          {
            return 5;
          }

          else
          {
            return 2;
          }

        case 32:
          if ((CGImageGetBitmapInfo(result) & 0x100) != 0)
          {
            return 4;
          }

          else
          {
            return 3;
          }

        default:
          return 0;
      }
    }

    else
    {
      if (v1 == 4)
      {
        v2 = 9;
      }

      else
      {
        v2 = 0;
      }

      if (v1 == 2)
      {
        v3 = 8;
      }

      else
      {
        v3 = v2;
      }

      if (v1 == 1)
      {
        return 7;
      }

      else
      {
        return v3;
      }
    }
  }

  return result;
}

void *CGBitmapPixelInfoInitializeWithImage(void *a1, char *a2, CGColorSpace *a3)
{
  *(a2 + 17) = 0u;
  *(a2 + 18) = 0u;
  *(a2 + 15) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  *a2 = CGImageGetPixelComponentType(a3);
  if (a3)
  {
    v6 = *(a3 + 7);
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 1) = v6;
  *(a2 + 2) = CGImageGetNumberOfColorComponents(a3);
  *(a2 + 6) = CGImageGetAlphaInfo(a3);
  *(a2 + 7) = CGImageGetByteOrderInfo(a3);
  *(a2 + 8) = CGImageGetPixelFormatInfo(a3);
  if (CGImageGetDecode(a3))
  {
    NumberOfComponents = CGImageGetNumberOfComponents(a3);
    if (NumberOfComponents)
    {
      v8 = NumberOfComponents;
      v9 = 0;
      v10 = (a2 + 56);
      do
      {
        *(v10 - 1) = CGImageGetDecode(a3)[v9];
        *v10 = CGImageGetDecode(a3)[v9 + 1];
        v10 += 2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    *(a2 + 5) = a2 + 48;
  }

  return memcpy(a1, a2, 0x130uLL);
}

CGImagePixelFormatInfo CGImageGetPixelFormatInfo(CGImageRef image)
{
  if (image)
  {
    v1 = image;
    v2 = CFGetTypeID(image);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      LODWORD(image) = *(v1 + 8) & 0xF0000;
    }

    else
    {
      LODWORD(image) = 0;
    }
  }

  return image;
}

BOOL data_conversion_required(void *a1, uint64_t *image, _DWORD *a3, const void *a4)
{
  if (image && (*(image + 39) & 8) != 0)
  {
    return 1;
  }

  if (a3[6] == 7)
  {
    ColorSpace = CGImageGetColorSpace(image);
    if (CGColorSpaceGetType(ColorSpace) - 7 > 2)
    {
      return 0;
    }
  }

  v9 = CGImageGetColorSpace(image);
  if (create_resolved_space_predicate != -1)
  {
    dispatch_once(&create_resolved_space_predicate, &__block_literal_global_76);
  }

  __dst[0] = MEMORY[0x1E69E9820];
  __dst[1] = 0x40000000;
  __dst[2] = __CGColorSpaceCreateResolved_block_invoke;
  __dst[3] = &__block_descriptor_tmp_39_23493;
  __dst[4] = create_resolved_space_gray;
  __dst[5] = create_resolved_space_sRGB;
  __dst[6] = create_resolved_space_cmyk;
  ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(v9, __dst);
  if (image && (v11 = image[28]) != 0 && CGPropertiesGetProperty(v11, @"kCGColorConversionInfoOptions"))
  {
    v12 = 1;
  }

  else
  {
    v12 = 1;
    if (a1 && ResolvedColorSpace && !CGColorTransformGetAttributes(a1))
    {
      Cache = CGColorTransformGetCache(a1);
      if (Cache)
      {
        Cache = Cache[2];
      }

      if (CGColorSpaceEqualToColorSpace(Cache, ResolvedColorSpace))
      {
        memcpy(__dst, a3, sizeof(__dst));
        memcpy(v15, a4, sizeof(v15));
        v12 = !CGBitmapPixelInfoIsEqualToBitmapPixelInfo(__dst, v15);
      }
    }
  }

  CGColorSpaceRelease(ResolvedColorSpace);
  return v12;
}

unint64_t CGImageGetSize(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[5];
  Mask = CGImageGetMask(a1);
  if (Mask && Mask[5] > v1)
  {
    return Mask[5];
  }

  return v1;
}

uint64_t CGDataProviderCreateForDestinationWithImage(void *a1, _DWORD *a2, vImagePixelCount a3, CGDataProviderRef a4, void *cf, unsigned int a6, int a7)
{
  v418 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 0;
  }

  v14 = CFGetTypeID(cf);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v14 != CGImageGetTypeID_image_type_id)
  {
    return 0;
  }

  v15 = cf[5];
  v16 = cf[6];
  if (!is_mul_ok(v15, v16))
  {
    return 0;
  }

  v17 = v15 * v16 <= 0x9C4 && (cf[19] | cf[30]) == 0;
  DataProviderInternal = CGImageGetDataProviderInternal(cf, v17);
  if (!DataProviderInternal)
  {
    return 0;
  }

  provider = DataProviderInternal;
  ColorSpace = CGImageGetColorSpace(cf);
  Decode = CGImageGetDecode(cf);
  ByteOrderInfo = CGImageGetByteOrderInfo(cf);
  AlphaInfo = CGImageGetAlphaInfo(cf);
  if ((*(cf + 39) & 2) != 0)
  {
    v21 = 1;
    goto LABEL_14;
  }

  v20 = CGImageGetColorSpace(cf);
  if (v20)
  {
    v21 = *(*(v20 + 3) + 48);
LABEL_14:
    v344 = v21;
    goto LABEL_15;
  }

  v344 = 0;
LABEL_15:
  PixelComponentType = CGImageGetPixelComponentType(cf);
  if (a7)
  {
    v30 = PixelComponentType;
    MaskingColors = CGImageGetMaskingColors(cf);
    PixelComponentType = v30;
  }

  else
  {
    MaskingColors = 0;
  }

  v32 = cf[5];
  v357 = cf[6];
  v33 = cf[9];
  v370 = cf[8];
  v34 = cf[19];
  if (v34 && (*(v34 + 20) & 0xFFFFFFFD) == 1 || v370 * v32 != 8 * v33)
  {
    v35 = cf[9];
  }

  else
  {
    v35 = 0;
  }

  v36 = cf[7];
  memset(v417, 0, sizeof(v417));
  v348 = ColorSpace;
  v371 = v32;
  v342 = a1;
  v343 = a6;
  if (PixelComponentType)
  {
    if (PixelComponentType != 3)
    {
      v37 = 0;
      if ((v36 & 7) == 0 || PixelComponentType == *a2)
      {
        goto LABEL_106;
      }
    }
  }

  v337 = v36;
  v335 = PixelComponentType;
  v359 = v33;
  UpscaledComponentType = CGImageGetUpscaledComponentType(cf);
  memset(v382, 0, sizeof(v382));
  CGBitmapPixelInfoInitializeWithImage(v382, v382, cf);
  PixelFormatInfo = CGImageGetPixelFormatInfo(cf);
  v39 = AlphaInfo;
  if (PixelFormatInfo == kCGImagePixelFormatRGBCIF10)
  {
    v39 = 6;
  }

  AlphaInfo = v39;
  Type = CGColorSpaceGetType(ColorSpace);
  v41 = CGColorSpaceGetType(ColorSpace);
  v45 = 0;
  if (v41 == 7 && Decode)
  {
    v45 = CGImageGetDecodeType(cf) == 2;
  }

  v46 = *&v382[24] - 1;
  v353 = *&v382[24];
  if ((*&v382[24] - 1) > 8)
  {
    v47 = 0;
  }

  else
  {
    v47 = qword_1844E0DE8[v46];
  }

  v341 = a3;
  v48 = UpscaledComponentType - 1;
  if (UpscaledComponentType - 1 >= 5 || ((0x1Bu >> v48) & 1) == 0)
  {
    _CGHandleAssert("bytes_per_upscaled_component", 94, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestinationWithImage.c", "", "Unimplemented", v42, v43, v44, v327);
  }

  v364 = *&v382[16];
  v338 = Type;
  v340 = Type == 7;
  v49 = qword_1844DF420[v48];
  v336 = v45;
  if (v45)
  {
    v50 = Decode;
  }

  else
  {
    v50 = 0;
  }

  v349 = *v382;
  v355 = *&v382[8];
  v351 = *&v382[28];
  v369 = *&v382[32];
  memcpy(__dst, &v382[36], sizeof(__dst));
  if (UpscaledComponentType > 5 || ((1 << UpscaledComponentType) & 0x36) == 0)
  {
    _CGHandleAssert("CGDataProviderCreateUpscalingProvider", 1377, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "dst_component_type == kCGImageComponent8BitInteger || dst_component_type == kCGImageComponent16BitInteger || dst_component_type == kCGImageComponent16BitFloat || dst_component_type == kCGImageComponent32BitFloat", "component type %u", v51, v52, v53, UpscaledComponentType);
  }

  v54 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10A0040BD4CEAFDuLL);
  if (!v54)
  {
LABEL_151:
    CGPostError("%s: failed to create upscaling provider", v55, v56, v57, v58, v59, v60, v61, "CGDataProviderCreateForDestinationWithImage");
    return 0;
  }

  v62 = v54;
  v345 = a2;
  v334 = a4;
  v63 = v47 + v364;
  v64 = v359 - ((v370 * v371 + 7) >> 3);
  v65 = *(provider + 5);
  *srcFormat = v349;
  *&srcFormat[8] = v355;
  *&srcFormat[16] = v364;
  v66 = v64 + v63 * v371 * v49;
  v67 = v65 & 0xFFFFFFFD;
  *&srcFormat[24] = v353;
  *&srcFormat[28] = v351;
  *&srcFormat[32] = v369;
  memcpy(&srcFormat[36], __dst, 0x10CuLL);
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(srcFormat, v68, v69, v70, v71, v72, v73, v74);
  v329 = v50;
  if (v46 > 8)
  {
    v82 = 0;
  }

  else
  {
    v82 = qword_1844E0DE8[v46];
  }

  v83 = v82 + v364;
  v84 = bits_per_component_type(UpscaledComponentType, v75, v76, v77, v78, v79, v80, v81);
  v92 = v83;
  v93 = v84 * v83;
  v94 = v84 * v83 * v371 + 7;
  v95 = v94 >> 3;
  if (v66)
  {
    v96 = v66;
  }

  else
  {
    v96 = v94 >> 3;
  }

  if (v369 == 0x40000)
  {
    v97 = bits_per_component_type(UpscaledComponentType, v85, v86, v87, v88, v89, v90, v91);
    v92 = (v83 + 1);
    v93 = v97 * (v83 + 1);
    v95 = (v93 * v371 + 7) >> 3;
    v96 = v64 + v95;
  }

  a2 = v345;
  v98 = provider;
  v331 = v96;
  v332 = v95;
  v330 = v92;
  if (!v67)
  {
    *(v62 + 8) = 1;
    CGDataProviderCreateDirectWithInternalCallbacks(v62, v96 * v357, &direct_provider_upscale_callbacks, v87, v88, v89, v90, v91);
    v37 = v100;
    if (v100)
    {
      goto LABEL_55;
    }

    goto LABEL_78;
  }

  SequentialWithInternalCallbacks = CGDataProviderCreateSequentialWithInternalCallbacks(v62, &sequential_provider_upscale_callbacks, v86, v87, v88, v89, v90, v91);
  if (!SequentialWithInternalCallbacks)
  {
LABEL_78:
    free(v62);
    goto LABEL_151;
  }

  v37 = SequentialWithInternalCallbacks;
  CGDataProviderLock(provider);
LABEL_55:
  *(v37 + 260) = *(provider + 260);
  v101 = v355;
  if (v355 <= 0xC && ((1 << v355) & 0x1016) != 0 && v338 != 7)
  {
    if (UpscaledComponentType == 2)
    {
      v102 = 16;
    }

    else
    {
      v102 = 8;
    }

    if (UpscaledComponentType == 5)
    {
      v103 = 4352;
    }

    else
    {
      v103 = 0;
    }

    if (UpscaledComponentType == 4)
    {
      v104 = 32;
    }

    else
    {
      v104 = v102;
    }

    if (UpscaledComponentType == 4)
    {
      v105 = 8448;
    }

    else
    {
      v105 = v103;
    }

    if (UpscaledComponentType == 2)
    {
      v106 = 4096;
    }

    else
    {
      v106 = v105;
    }

    DeviceGray = CGColorSpaceCreateDeviceGray();
    *srcFormat = v355;
    *&srcFormat[4] = v355;
    *&srcFormat[8] = DeviceGray;
    *&srcFormat[16] = *(v62 + 31);
    memset(&srcFormat[20], 0, 20);
    *destFormat = v104;
    *&destFormat[4] = v104;
    *&destFormat[8] = DeviceGray;
    memset(&destFormat[20], 0, 20);
    *&destFormat[16] = v106;
    v108 = vImageConverter_CreateWithCGImageFormat(srcFormat, destFormat, 0, 0x100u, 0);
    v62[17] = v108;
    if (!v108)
    {
      CGPostError("%s: failed to create vImageConverter", v109, v110, v111, v112, v113, v114, v115, "CGDataProviderCreateUpscalingProvider");
      CGDataProviderRelease(v37);
      goto LABEL_151;
    }

    a2 = v345;
    v98 = provider;
    v101 = v355;
  }

  CGDataProviderRetain(v98);
  *v62 = v98;
  v62[2] = v371;
  v62[3] = v357;
  *(v62 + 8) = UpscaledComponentType;
  v62[5] = v93;
  v32 = v371;
  v62[6] = v331;
  v62[7] = v332;
  v62[10] = BitsPerPixel;
  v62[11] = v101;
  v62[12] = v359;
  *srcFormat = v349;
  *&srcFormat[8] = v101;
  *&srcFormat[16] = v364;
  *&srcFormat[24] = v353;
  *&srcFormat[28] = v351;
  *&srcFormat[32] = v369;
  memcpy(&srcFormat[36], __dst, 0x10CuLL);
  v62[13] = ((CGBitmapPixelInfoGetBitsPerPixel(srcFormat, v116, v117, v118, v119, v120, v121, v122) * v371 + 7) >> 3);
  *(v62 + 30) = v369;
  *(v62 + 31) = v351;
  if (v353 == 9)
  {
    v123 = 3;
    a4 = v334;
    a3 = v341;
    ColorSpace = v348;
    v124 = v330;
  }

  else
  {
    v123 = v353;
    a4 = v334;
    a3 = v341;
    ColorSpace = v348;
    v124 = v330;
    if (v353 == 8)
    {
      v123 = 1;
    }
  }

  *(v62 + 32) = v123;
  v62[9] = v124;
  *(v62 + 9) = v340;
  v125 = v62[6];
  if (v125 <= v62[12])
  {
    v125 = v62[12];
  }

  v126 = ((v125 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v62[19] = v126;
  v127 = malloc_type_calloc(1uLL, v126, 0xB1FB49A9uLL);
  v62[18] = v127;
  if (!v127)
  {
    upscale_provider_release_info(v62);
    CGPostError("%s failed", v129, v130, v131, v132, v133, v134, v135, "CGDataProviderCreateUpscalingProvider");
    goto LABEL_151;
  }

  if (v329)
  {
    *(v62 + 160) = 1;
    v62[21] = *v329;
    v62[22] = *(v329 + 1);
  }

  v128 = *(v37 + 160);
  if (v128)
  {
    v33 = v128(*(v37 + 24));
  }

  else
  {
    v33 = 0;
  }

  a6 = v343;
  if (v370 * v371 == 8 * v33)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  v136 = Decode;
  PixelComponentType = UpscaledComponentType;
  if (v336)
  {
    v136 = 0;
  }

  Decode = v136;
  ByteOrderInfo = dword_1844DC588[v48];
  if (!MaskingColors || (v335 & 0xE) == 4)
  {
    provider = v37;
    a1 = v342;
  }

  else
  {
    if (ColorSpace)
    {
      v137 = 2 * *(*(v348 + 3) + 48);
      if (v137)
      {
        v360 = v33;
        v365 = v35;
        v138 = exp2(v337);
        v33 = v360;
        v35 = v365;
        PixelComponentType = UpscaledComponentType;
        v139 = v138 + -1.0;
        v140 = dbl_1844DC5A0[v48];
        v141 = v417;
        do
        {
          v142 = *MaskingColors++;
          v143 = v142 * v140 / v139;
          v144 = round(v143);
          if (v48 < 2)
          {
            v143 = v144;
          }

          *v141++ = v143;
          --v137;
        }

        while (v137);
      }
    }

    MaskingColors = v417;
    provider = v37;
    a1 = v342;
    ColorSpace = v348;
  }

LABEL_106:
  v378 = PixelComponentType;
  v339 = v37;
  if (v32 == a3 && v357 == a4)
  {
    v354 = 0;
    if (MaskingColors)
    {
      goto LABEL_109;
    }

    goto LABEL_164;
  }

  v367 = v35;
  v347 = a2;
  BitsPerComponent = CGPixelComponentGetBitsPerComponent(PixelComponentType, v23, v24, v25, v26, v27, v28, v29);
  if ((BitsPerComponent & 7) != 0)
  {
    _CGHandleAssert("CGDataProviderCreateForDestinationWithImage", 220, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestinationWithImage.c", "bits_per_component == ((bits_per_component >> 3) << 3)", "bits per component %zu", v210, v211, v212, BitsPerComponent);
  }

  NumberOfComponents = CGImageGetNumberOfComponents(cf);
  v215 = cf[8];
  v214 = cf[9];
  v216 = cf[5];
  v217 = CGImageGetNumberOfComponents(cf);
  if (BitsPerComponent > 0x20 || ((1 << BitsPerComponent) & 0x100010100) == 0)
  {
    _CGHandleAssert("CGDataProviderCreateUpsamplingProvider", 514, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "bits_per_component == 8 || bits_per_component == 16 || bits_per_component == 32", "bpc %zu", v218, v219, v220, BitsPerComponent);
  }

  v221 = v217;
  v222 = malloc_type_calloc(1uLL, 0x98uLL, 0x10A00405CE51268uLL);
  if (!v222)
  {
LABEL_167:
    if (v339)
    {
      CFRelease(v339);
    }

    CGPostError("%s: failed to create upsampling provider", v223, v224, v225, v226, v227, v228, v229, "CGDataProviderCreateForDestinationWithImage");
    return 0;
  }

  v230 = v222;
  v231 = v214 - ((v216 * v215 + 7) >> 3) + ((BitsPerComponent * a3 * NumberOfComponents) >> 3);
  v222[7] = v371;
  v222[8] = v357;
  v232 = v221 * BitsPerComponent;
  v233 = v367;
  if (!v367)
  {
    v233 = (v221 * BitsPerComponent * v371) >> 3;
  }

  v222[9] = v233;
  v222[10] = ((v221 * BitsPerComponent * v371) >> 3);
  v222[2] = a3;
  v222[3] = a4;
  v222[4] = v231;
  v222[5] = ((v232 * a3) >> 3);
  v222[12] = BitsPerComponent;
  v222[13] = v221;
  v222[14] = (v232 >> 3);
  v222[15] = ((v371 << 16) / a3);
  v222[16] = ((v357 << 16) / a4);
  v363 = v231;
  if ((*(provider + 5) & 0xFFFFFFFD) != 0)
  {
    a1 = v342;
    a6 = v343;
    a2 = v347;
    ColorSpace = v348;
    if (v357 != a4)
    {
      _CGHandleAssert("CGDataProviderCreateUpsamplingProvider", 554, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "data->src_height == data->dst_height", "src height %zu  dest height %zu", v227, v228, v229, v357);
    }

    CGDataProviderRetain(provider);
    *v230 = provider;
    v240 = CGDataProviderCreateSequentialWithInternalCallbacks(v230, &sequential_provider_upsample_callbacks, v234, v235, v236, v237, v238, v239);
    CGDataProviderLock(provider);
  }

  else
  {
    *v222 = CGDataProviderRetain(provider);
    *(v230 + 8) = 1;
    CGDataProviderCreateDirectWithInternalCallbacks(v230, v231 * a4, &direct_provider_upsample_callbacks, v243, v244, v245, v246, v247);
    v240 = v248;
    a1 = v342;
    a6 = v343;
    a2 = v347;
    ColorSpace = v348;
  }

  if (!v240)
  {
    free(v230);
    goto LABEL_167;
  }

  v249 = v230[4];
  if (v249 <= v230[9])
  {
    v249 = v230[9];
  }

  v250 = ((v249 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v230[18] = v250;
  v251 = malloc_type_calloc(1uLL, v250, 0xF1106622uLL);
  v230[17] = v251;
  if (!v251 || !*v230)
  {
    upsample_provider_release_info(v230);
    CGPostError("%s failed", v253, v254, v255, v256, v257, v258, v259, "CGDataProviderCreateUpsamplingProvider");
    goto LABEL_167;
  }

  v32 = v371;
  v33 = v363;
  if (v370 * v371 == 8 * v363)
  {
    v35 = 0;
  }

  else
  {
    v35 = v363;
  }

  v354 = v240;
  provider = v240;
  PixelComponentType = v378;
  if (MaskingColors)
  {
LABEL_109:
    v361 = v33;
    v366 = v35;
    memset(destFormat, 0, sizeof(destFormat));
    v145 = PixelComponentType;
    v146 = CGPixelComponentGetBitsPerComponent(PixelComponentType, v23, v24, v25, v26, v27, v28, v29);
    CGBitmapPixelInfoInitialize(destFormat, destFormat, v145, v146, v344, AlphaInfo, ByteOrderInfo, 0, Decode);
    if (AlphaInfo >= kCGImageAlphaOnly)
    {
      _CGHandleAssert("alpha_info_for_masking_colors", 39, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestinationWithImage.c", "", "Unimplemented", v151, v152, v153, v328);
    }

    v356 = dword_1844DC5C8[AlphaInfo];
    v154 = CGPixelComponentGetBitsPerComponent(v145, v147, v148, v149, v150, v151, v152, v153);
    if (!v154)
    {
      _CGHandleAssert("CGBitmapPixelInfoInitialize", 56, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "bits_per_component > 0 && bits_per_component <= 32", "bpc: %zu", v159, v160, v161, 0);
    }

    v162 = v154;
    v163 = v378;
    v164 = v344;
    if (!v366)
    {
      memcpy(srcFormat, destFormat, sizeof(srcFormat));
      v172 = CGBitmapPixelInfoGetBitsPerPixel(srcFormat, v165, v166, v167, v168, v169, v170, v171);
      v164 = v344;
      v163 = v378;
      v366 = (v172 * a3 + 7) >> 3;
    }

    if (AlphaInfo == kCGImageAlphaNone)
    {
      v173 = cf[9] - ((v370 * v32 + 7) >> 3);
      *srcFormat = v163;
      *&srcFormat[4] = 0;
      *&srcFormat[8] = v162;
      *&srcFormat[16] = v344;
      *&srcFormat[24] = v356;
      *&srcFormat[28] = ByteOrderInfo;
      memset(&srcFormat[32], 0, 272);
      v174 = CGBitmapPixelInfoGetBitsPerPixel(srcFormat, v155, v156, v157, v158, v159, v160, v161);
      v163 = v378;
      v164 = v344;
      v361 = v173 + ((v174 * v32 + 7) >> 3);
    }

    v346 = a2;
    v415 = 0u;
    v414 = 0u;
    v413 = 0u;
    v412 = 0u;
    v411 = 0u;
    v410 = 0u;
    v409 = 0u;
    v408 = 0u;
    v407 = 0u;
    v406 = 0u;
    v405 = 0u;
    v404 = 0u;
    v403 = 0u;
    v402 = 0u;
    v401 = 0u;
    v400 = 0u;
    v379 = *destFormat;
    v399 = *&destFormat[288];
    v398 = *&destFormat[272];
    v397 = *&destFormat[256];
    v396 = *&destFormat[240];
    v395 = *&destFormat[224];
    v394 = *&destFormat[208];
    v393 = *&destFormat[192];
    v392 = *&destFormat[176];
    v391 = *&destFormat[160];
    v390 = *&destFormat[144];
    v389 = *&destFormat[128];
    v388 = *&destFormat[112];
    v387 = *&destFormat[96];
    v386 = *&destFormat[80];
    v385 = *&destFormat[64];
    v384 = *&destFormat[48];
    if (*&destFormat[32])
    {
      _CGHandleAssert("CGDataProviderCreateWithMaskingColors", 490, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "CGBitmapPixelInfoGetCGImagePixelFormatInfo(src_pixel_info) == kCGImagePixelFormatPacked", "source pixel info %u", v159, v160, v161, destFormat[32]);
    }

    *srcFormat = v163;
    *&srcFormat[4] = 0;
    *&srcFormat[8] = v162;
    *&srcFormat[16] = v164;
    *&srcFormat[24] = v356;
    *&srcFormat[28] = ByteOrderInfo;
    memset(&srcFormat[32], 0, 272);
    *v382 = *destFormat;
    v376 = *&destFormat[16];
    *&v382[16] = *&destFormat[16];
    v352 = *&destFormat[24];
    *&v382[24] = *&destFormat[24];
    *&v382[32] = 0;
    v374 = *&destFormat[36];
    *&v382[36] = *&destFormat[36];
    v175 = *&destFormat[40];
    *&v382[40] = *&destFormat[40];
    *&v382[240] = *&destFormat[240];
    *&v382[256] = *&destFormat[256];
    *&v382[272] = *&destFormat[272];
    *&v382[288] = *&destFormat[288];
    *&v382[176] = *&destFormat[176];
    *&v382[192] = *&destFormat[192];
    *&v382[208] = *&destFormat[208];
    *&v382[224] = *&destFormat[224];
    *&v382[112] = *&destFormat[112];
    *&v382[128] = *&destFormat[128];
    *&v382[144] = *&destFormat[144];
    *&v382[160] = *&destFormat[160];
    *&v382[48] = *&destFormat[48];
    *&v382[64] = *&destFormat[64];
    *&v382[80] = *&destFormat[80];
    *&v382[96] = *&destFormat[96];
    v176 = v164;
    IsEqualToBitmapPixelInfo = CGBitmapPixelInfoIsEqualToBitmapPixelInfo(srcFormat, v382);
    v178 = malloc_type_calloc(1uLL, 0x3B8uLL, 0x10A0040D53BA96CuLL);
    if (!v178)
    {
      goto LABEL_194;
    }

    v186 = v178;
    v187 = 2 * v176;
    v188 = v378;
    v189 = v176;
    if (2 * v176)
    {
      v190 = v178 + 84;
      v191 = v178 + 84;
      v192 = v178 + 84;
      while (v378 <= 6)
      {
        if ((v378 - 4) >= 2)
        {
          if (v378 != 1)
          {
            if (v378 != 2)
            {
              goto LABEL_206;
            }

            *v191++ = fmax(fmin(*MaskingColors, 65535.0), 0.0);
            goto LABEL_133;
          }

          v193 = fmin(*MaskingColors, 255.0);
          goto LABEL_132;
        }

        *v190 = *MaskingColors;
LABEL_133:
        ++MaskingColors;
        ++v190;
        if (!--v187)
        {
          goto LABEL_134;
        }
      }

      switch(v378)
      {
        case 9:
          v193 = fmin(*MaskingColors, 15.0);
          break;
        case 8:
          v193 = fmin(*MaskingColors, 3.0);
          break;
        case 7:
          v193 = fmin(*MaskingColors, 1.0);
          break;
        default:
LABEL_206:
          _CGHandleAssert("copy_masking_colors", 453, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "", "Unimplemented", v183, v184, v185, v328);
      }

LABEL_132:
      *v192++ = fmax(v193, 0.0);
      goto LABEL_133;
    }

LABEL_134:
    if (!IsEqualToBitmapPixelInfo)
    {
      if (v176 != v376)
      {
        _CGHandleAssert("CGDataProviderCreateWithMaskingColors", 506, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "CGBitmapPixelInfoGetColorantCount(dst_pixel_info) == CGBitmapPixelInfoGetColorantCount(src_pixel_info)", "src colors %zu  dest colors %zu", v183, v184, v185, v176);
      }

      memset(v382, 0, 40);
      *srcFormat = v379;
      *&srcFormat[16] = v176;
      *&srcFormat[24] = v352;
      *&srcFormat[32] = 0;
      *&srcFormat[36] = v374;
      *&srcFormat[40] = v175;
      *&srcFormat[240] = v396;
      *&srcFormat[256] = v397;
      *&srcFormat[272] = v398;
      *&srcFormat[288] = v399;
      *&srcFormat[176] = v392;
      *&srcFormat[192] = v393;
      *&srcFormat[208] = v394;
      *&srcFormat[224] = v395;
      *&srcFormat[112] = v388;
      *&srcFormat[128] = v389;
      *&srcFormat[144] = v390;
      *&srcFormat[160] = v391;
      *&srcFormat[48] = v384;
      *&srcFormat[64] = v385;
      *&srcFormat[80] = v386;
      *&srcFormat[96] = v387;
      CGBitmapPixelInfoGet_vImageFormat(v382, srcFormat, v180, v181, v182, v183, v184, v185);
      memset(&v381, 0, sizeof(v381));
      *srcFormat = v378;
      *&srcFormat[4] = 0;
      *&srcFormat[8] = v162;
      *&srcFormat[16] = v176;
      *&srcFormat[24] = v356;
      *&srcFormat[28] = ByteOrderInfo;
      *&srcFormat[40] = 0;
      *&srcFormat[32] = 0;
      *&srcFormat[240] = v412;
      *&srcFormat[256] = v413;
      *&srcFormat[272] = v414;
      *&srcFormat[288] = v415;
      *&srcFormat[176] = v408;
      *&srcFormat[192] = v409;
      *&srcFormat[208] = v410;
      *&srcFormat[224] = v411;
      *&srcFormat[112] = v404;
      *&srcFormat[128] = v405;
      *&srcFormat[144] = v406;
      *&srcFormat[160] = v407;
      *&srcFormat[48] = v400;
      *&srcFormat[64] = v401;
      *&srcFormat[80] = v402;
      *&srcFormat[96] = v403;
      CGBitmapPixelInfoGet_vImageFormat(&v381, srcFormat, v194, v195, v196, v197, v198, v199);
      v200 = vImageConverter_CreateWithCGImageFormat(v382, &v381, 0, 0x100u, 0);
      v186[116] = v200;
      if (!v200)
      {
LABEL_189:
        free(v186);
LABEL_194:
        if (v339)
        {
          CFRelease(v339);
        }

        if (v354)
        {
          CFRelease(v354);
        }

        CGPostError("%s: failed to create masking color provider", v179, v180, v181, v182, v183, v184, v185, "CGDataProviderCreateForDestinationWithImage");
        return 0;
      }

      v188 = v378;
      v189 = v176;
    }

    v201 = v162;
    v202 = *(provider + 5) & 0xFFFFFFFD;
    *srcFormat = v188;
    *&srcFormat[4] = 0;
    v350 = v201;
    *&srcFormat[8] = v201;
    *&srcFormat[16] = v189;
    *&srcFormat[24] = v356;
    *&srcFormat[28] = ByteOrderInfo;
    *&srcFormat[40] = 0;
    *&srcFormat[32] = 0;
    *&srcFormat[240] = v412;
    *&srcFormat[256] = v413;
    *&srcFormat[272] = v414;
    *&srcFormat[288] = v415;
    *&srcFormat[176] = v408;
    *&srcFormat[192] = v409;
    *&srcFormat[208] = v410;
    *&srcFormat[224] = v411;
    *&srcFormat[112] = v404;
    *&srcFormat[128] = v405;
    *&srcFormat[144] = v406;
    *&srcFormat[160] = v407;
    *&srcFormat[48] = v400;
    *&srcFormat[64] = v401;
    *&srcFormat[80] = v402;
    *&srcFormat[96] = v403;
    v209 = CGBitmapPixelInfoGetBitsPerPixel(srcFormat, v179, v180, v181, v182, v183, v184, v185);
    if (v202)
    {
      v358 = CGDataProviderCreateSequentialWithInternalCallbacks(v186, &sequential_provider_with_masking_colors_callbacks, v203, v204, v205, v206, v207, v208);
      if (v358)
      {
        CGDataProviderLock(provider);
LABEL_171:
        *v186 = CGDataProviderRetain(provider);
        *(v186 + 1) = v379;
        v186[4] = v376;
        v186[5] = v352;
        *(v186 + 12) = 0;
        *(v186 + 13) = v374;
        v186[7] = v175;
        v268 = v397;
        *(v186 + 16) = v396;
        *(v186 + 17) = v268;
        v269 = v399;
        *(v186 + 18) = v398;
        *(v186 + 19) = v269;
        v270 = v393;
        *(v186 + 12) = v392;
        *(v186 + 13) = v270;
        v271 = v395;
        *(v186 + 14) = v394;
        *(v186 + 15) = v271;
        v272 = v389;
        *(v186 + 8) = v388;
        *(v186 + 9) = v272;
        v273 = v391;
        *(v186 + 10) = v390;
        *(v186 + 11) = v273;
        v274 = v385;
        *(v186 + 4) = v384;
        *(v186 + 5) = v274;
        v275 = v387;
        *(v186 + 6) = v386;
        *(v186 + 7) = v275;
        if (v175)
        {
          v186[7] = (v186 + 8);
        }

        v276 = v366;
        v186[40] = v366;
        *srcFormat = v379;
        *&srcFormat[16] = v376;
        *&srcFormat[24] = v352;
        *&srcFormat[32] = 0;
        *&srcFormat[36] = v374;
        *&srcFormat[40] = v175;
        *&srcFormat[240] = v396;
        *&srcFormat[256] = v397;
        *&srcFormat[272] = v398;
        *&srcFormat[288] = v399;
        *&srcFormat[176] = v392;
        *&srcFormat[192] = v393;
        *&srcFormat[208] = v394;
        *&srcFormat[224] = v395;
        *&srcFormat[112] = v388;
        *&srcFormat[128] = v389;
        *&srcFormat[144] = v390;
        *&srcFormat[160] = v391;
        *&srcFormat[48] = v384;
        *&srcFormat[64] = v385;
        *&srcFormat[80] = v386;
        *&srcFormat[96] = v387;
        v186[41] = ((CGBitmapPixelInfoGetBitsPerPixel(srcFormat, v261, v262, v263, v264, v265, v266, v267) * v371 + 7) >> 3);
        *(v186 + 86) = v378;
        *(v186 + 87) = 0;
        v186[44] = v350;
        v186[45] = v344;
        *(v186 + 92) = v356;
        *(v186 + 93) = ByteOrderInfo;
        v186[47] = 0;
        v186[48] = 0;
        v277 = v413;
        *(v186 + 73) = v412;
        *(v186 + 75) = v277;
        v278 = v415;
        *(v186 + 77) = v414;
        *(v186 + 79) = v278;
        v279 = v409;
        *(v186 + 65) = v408;
        *(v186 + 67) = v279;
        v280 = v411;
        *(v186 + 69) = v410;
        *(v186 + 71) = v280;
        v281 = v405;
        *(v186 + 57) = v404;
        *(v186 + 59) = v281;
        v282 = v407;
        *(v186 + 61) = v406;
        *(v186 + 63) = v282;
        v283 = v401;
        *(v186 + 49) = v400;
        *(v186 + 51) = v283;
        v284 = v403;
        *(v186 + 53) = v402;
        *(v186 + 55) = v284;
        v186[81] = v361;
        v186[82] = ((v209 * v371 + 7) >> 3);
        memcpy(srcFormat, v186 + 43, sizeof(srcFormat));
        v292 = CGBitmapPixelInfoGetBitsPerPixel(srcFormat, v285, v286, v287, v288, v289, v290, v291);
        memcpy(srcFormat, v186 + 2, sizeof(srcFormat));
        v300 = CGBitmapPixelInfoGetBitsPerPixel(srcFormat, v293, v294, v295, v296, v297, v298, v299);
        if (!v366)
        {
          _CGHandleAssert("calculate_work_buffer_size", 464, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "masking_colors_bytes_per_row != 0", "masking rowBytes = 0", v301, v302, v303, v328);
        }

        a6 = v343;
        ColorSpace = v348;
        if (v292 > v300)
        {
          v276 = v292 * v366 / v300;
        }

        v304 = ((v276 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
        v186[118] = v304;
        v305 = malloc_type_calloc(1uLL, v304, 0x91579F5BuLL);
        v186[117] = v305;
        if (v305)
        {
          Decode = 0;
          if (v370 * v371 == 8 * v361)
          {
            v252 = 0;
          }

          else
          {
            v252 = v361;
          }

          AlphaInfo = v356;
          provider = v358;
          a2 = v346;
          PixelComponentType = v378;
          goto LABEL_181;
        }

        provider_with_masking_colors_release_info(v186);
        CGPostError("%s failed", v320, v321, v322, v323, v324, v325, v326, "CGDataProviderCreateWithMaskingColors");
        goto LABEL_194;
      }
    }

    else
    {
      *(v186 + 8) = 1;
      CGDataProviderCreateDirectWithInternalCallbacks(v186, v361 * v357, &direct_provider_with_masking_colors_callbacks, v204, v205, v206, v207, v208);
      v358 = v260;
      if (v260)
      {
        goto LABEL_171;
      }
    }

    v319 = v186[116];
    if (v319)
    {
      vImageConverter_Release(v319);
    }

    goto LABEL_189;
  }

LABEL_164:
  v252 = v35;
  v358 = 0;
LABEL_181:
  memset(srcFormat, 0, sizeof(srcFormat));
  v306 = PixelComponentType;
  v307 = CGPixelComponentGetBitsPerComponent(PixelComponentType, v23, v24, v25, v26, v27, v28, v29);
  CGBitmapPixelInfoInitialize(srcFormat, srcFormat, v306, v307, v344, AlphaInfo, ByteOrderInfo, 0, Decode);
  memcpy(v382, a2, sizeof(v382));
  ImageBytesPerRowForPixelInfo = CGImageGetImageBytesPerRowForPixelInfo(cf, a3, v382, v308, v309, v310, v311, v312);
  v314 = cf[28];
  if (v314)
  {
    Property = CGPropertiesGetProperty(v314, @"kCGColorConversionInfoOptions");
    v316 = v339;
    if (Property)
    {
      CopyWithAttribute = CGColorTransformCreateCopyWithAttribute(a1, Property);
      v318 = CopyWithAttribute;
      if (CopyWithAttribute)
      {
        a1 = CopyWithAttribute;
      }
    }

    else
    {
      v318 = 0;
    }
  }

  else
  {
    v318 = 0;
    v316 = v339;
  }

  memcpy(v382, a2, sizeof(v382));
  memcpy(destFormat, srcFormat, sizeof(destFormat));
  v241 = CGDataProviderCreateForDestination(a1, a3, a4, v382, ImageBytesPerRowForPixelInfo, provider, ColorSpace, destFormat, v252, a6);
  CGDataProviderRelease(v316);
  CGDataProviderRelease(v354);
  CGDataProviderRelease(v358);
  if (v318)
  {
    CFRelease(v318);
  }

  return v241;
}

void *CGBitmapPixelInfoInitialize(void *a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a2 + 17) = 0u;
  *(a2 + 18) = 0u;
  *(a2 + 15) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  if ((a4 - 33) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    _CGHandleAssert("CGBitmapPixelInfoInitialize", 56, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "bits_per_component > 0 && bits_per_component <= 32", "bpc: %zu", a6, a7, a8, a4);
  }

  *a2 = a3;
  *(a2 + 1) = a4;
  *(a2 + 2) = a5;
  *(a2 + 6) = a6;
  *(a2 + 7) = a7;
  *(a2 + 8) = a8;
  if (a9)
  {
    if (a6)
    {
      v9 = a5 + 1;
    }

    else
    {
      v9 = a5;
    }

    if (v9)
    {
      v10 = a2 + 56;
      v11 = (a9 + 8);
      do
      {
        *(v10 - 1) = *(v11 - 1);
        v12 = *v11;
        v11 += 2;
        *v10 = v12;
        v10 += 2;
        --v9;
      }

      while (v9);
    }

    *(a2 + 5) = a2 + 48;
  }

  return memcpy(a1, a2, 0x130uLL);
}

unint64_t CGImageGetImageBytesPerRowForPixelInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a3 + 24) - 1;
  if (v10 > 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1844E0DE8[v10];
  }

  v12 = *(a3 + 16);
  BitsPerComponent = CGPixelComponentGetBitsPerComponent(*a3, a2, a3, a4, a5, a6, a7, a8);
  DataProviderInternal = CGImageGetDataProviderInternal(a1, 0);
  if (!DataProviderInternal)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", v15, v16, v17, v21);
  }

  v18 = DataProviderInternal;
  result = ((v11 + v12) * a2 * BitsPerComponent + 7) >> 3;
  if (*(v18 + 5))
  {
    if (a1)
    {
      v20 = *(a1 + 72) - ((*(a1 + 40) * *(a1 + 64) + 7) >> 3);
    }

    else
    {
      v20 = 0;
    }

    result += v20;
  }

  if (!result)
  {
    _CGHandleAssert("CGImageGetImageBytesPerRowForPixelInfo", 4233, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "bytes_per_row != 0", "zero rowBytes", v15, v16, v17, v21);
  }

  return result;
}

uint64_t CGDataProviderCreateForDestination(void *a1, vImagePixelCount a2, CGDataProvider *a3, uint64_t a4, size_t a5, uint64_t a6, void *a7, void *__src, size_t a9, unsigned int a10)
{
  memcpy(__dst, __src, 0x130uLL);
  if (!CGBitmapPixelInfoGetBitsPerPixel(__dst, v15, v16, v17, v18, v19, v20, v21))
  {
    memcpy(__dst, __src, 0x130uLL);
    BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst, v122, v123, v124, v125, v126, v127, v128);
    _CGHandleAssert("CGDataProviderCreateForDestination", 824, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "CGBitmapPixelInfoGetBitsPerPixel(src_pixel_info) != 0", "bpp %zu", v130, v131, v132, BitsPerPixel);
  }

  if (*(a4 + 32))
  {
    _CGHandleAssert("CGDataProviderCreateForDestination", 826, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "CGBitmapPixelInfoGetCGImagePixelFormatInfo(dst_pixel_info) == kCGImagePixelFormatPacked", "format = %u", v22, v23, v24, *(a4 + 32));
  }

  if (a1)
  {
    v25 = CGColorTransformConvertRequired(a1, a7, a10);
  }

  else
  {
    v25 = 0;
  }

  v134 = (*(a6 + 260) & 1) == 0 && (*(__src + 6) - 5) < 2;
  memcpy(__dst, a4, 0x130uLL);
  memcpy(srcFormat, __src, 0x130uLL);
  IsEqualToBitmapPixelInfo = CGBitmapPixelInfoIsEqualToBitmapPixelInfo(__dst, srcFormat);
  v27 = malloc_type_calloc(1uLL, 0x338uLL, 0x10F0040FFE4A660uLL);
  if (!v27)
  {
    return 0;
  }

  v31 = v27;
  if (v25)
  {
    v27[87] = CGColorTransformCreateCGCMSConverter(a1, a7, a10);
    v32 = a9;
    if (!a9)
    {
      memcpy(__dst, __src, 0x130uLL);
      v32 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v33, v34, v35, v36, v37, v38, v39) * a2 + 7) >> 3;
    }

    __dst[0].data = 0;
    __dst[0].height = a2;
    __dst[0].width = 1;
    __dst[0].rowBytes = v32;
    __dst[1].data = a10;
    memcpy(&__dst[1].height, __src, 0x130uLL);
    if (*(__src + 5))
    {
      __dst[2].width = &__dst[2].rowBytes;
    }

    *srcFormat = 0;
    *&srcFormat[8] = a2;
    *&srcFormat[16] = 1;
    *&srcFormat[24] = a5;
    *&srcFormat[36] = 0;
    *&srcFormat[32] = a10;
    memcpy(&srcFormat[40], a4, 0x130uLL);
    if (*(a4 + 40))
    {
      *&srcFormat[80] = &srcFormat[88];
    }

    destFormat_16 = 0u;
    memset(destFormat_32, 0, 56);
    destFormat = 0u;
    CGCMSConverterConvertGetConverterInfo(&destFormat, v31[87], __dst, srcFormat);
    v40 = destFormat_16;
    v31[88] = destFormat;
    if (v40 >= 0x401)
    {
      v31[94] = v40;
      v31[93] = malloc_type_calloc(1uLL, v40, 0xE121803uLL);
    }

    if (*(&destFormat_16 + 1))
    {
      v31[95] = *(&destFormat_16 + 1);
    }

    if (CGColorSpaceGetType(a7) == 7)
    {
      *(v31 + 192) = destFormat_32[0];
    }

    v41 = *(&destFormat_32[1] + 8);
    *(v31 + 97) = *(destFormat_32 + 8);
    *(v31 + 99) = v41;
    *(v31 + 101) = *(&destFormat_32[2] + 8);
    goto LABEL_38;
  }

  if (IsEqualToBitmapPixelInfo)
  {
    goto LABEL_38;
  }

  if (a7 && *(a4 + 16) != *(__src + 2))
  {
    _CGHandleAssert("CGDataProviderCreateForDestination", 893, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "src_space == NULL || CGBitmapPixelInfoGetColorantCount(dst_pixel_info) == CGBitmapPixelInfoGetColorantCount(src_pixel_info)", "colorSpace %p  dest colors %zu  src colors %zu", v28, v29, v30, a7);
  }

  memset(srcFormat, 0, 40);
  memcpy(__dst, __src, 0x130uLL);
  CGBitmapPixelInfoGet_vImageFormat(srcFormat, __dst, v42, v43, v44, v45, v46, v47);
  *&destFormat_32[0] = 0;
  destFormat = 0u;
  destFormat_16 = 0u;
  memcpy(__dst, a4, 0x130uLL);
  CGBitmapPixelInfoGet_vImageFormat(&destFormat, __dst, v48, v49, v50, v51, v52, v53);
  v54 = vImageConverter_CreateWithCGImageFormat(srcFormat, &destFormat, 0, 0x100u, 0);
  v31[89] = v54;
  if (!v54)
  {
    free(v31);
    return 0;
  }

  v55 = a9;
  memcpy(__dst, __src, 0x130uLL);
  if (a9)
  {
    LOBYTE(v25) = 0;
    v63 = (8 * a9 / CGBitmapPixelInfoGetBitsPerPixel(__dst, v56, v57, v58, v59, v60, v61, v62) + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v55 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v56, v57, v58, v59, v60, v61, v62) * a2 + 7) >> 3;
    v63 = a2;
  }

  v64 = v31[89];
  if (!v64)
  {
LABEL_37:
    v31[94] = 0;
    goto LABEL_38;
  }

  __dst[0].data = v144;
  __dst[0].height = 1;
  __dst[0].width = v63;
  __dst[0].rowBytes = v55;
  dests.data = v144;
  dests.height = 1;
  dests.width = v63;
  dests.rowBytes = a5;
  v65 = vImageConvert_AnyToAny(v64, __dst, &dests, 0, 0x80u);
  if ((v65 & 0x8000000000000000) != 0)
  {
    CGPostError("vImageConvert_AnyToAny failed to return vImage buffer size", v66, v67, v68, v69, v70, v71, v72, v133);
    goto LABEL_37;
  }

  v31[94] = v65;
  if (v65 >= 0x401)
  {
    v31[93] = malloc_type_calloc(1uLL, v65, 0xCE0A55A1uLL);
  }

LABEL_38:
  memcpy(__dst, a4, 0x130uLL);
  v86 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v73, v74, v75, v76, v77, v78, v79);
  if ((*(a6 + 20) | 2) == 2)
  {
    *(v31 + 724) = 1;
    CGDataProviderCreateDirectWithInternalCallbacks(v31, a5 * a3, &direct_provider_for_destination_callbacks, v81, v82, v83, v84, v85);
    v88 = v87;
    if (!v87)
    {
      goto LABEL_51;
    }
  }

  else
  {
    SequentialWithInternalCallbacks = CGDataProviderCreateSequentialWithInternalCallbacks(v31, &sequential_provider_for_destination_callbacks, v80, v81, v82, v83, v84, v85);
    if (!SequentialWithInternalCallbacks)
    {
LABEL_51:
      v100 = v31[93];
      if (v100)
      {
        free(v100);
      }

      v101 = v31[89];
      if (v101)
      {
        vImageConverter_Release(v101);
      }

      v102 = v31[95];
      if (v102)
      {
        free(v102);
      }

      free(v31);
      CGPostError("%s failed to allocate", v103, v104, v105, v106, v107, v108, v109, "CGDataProviderCreateForDestination");
      return 0;
    }

    v88 = SequentialWithInternalCallbacks;
    CGDataProviderLock(a6);
  }

  v90 = v86 * a2 + 7;
  *v31 = CGDataProviderRetain(a6);
  v31[1] = a2;
  v31[2] = a3;
  memcpy(v31 + 4, __src, 0x130uLL);
  if (*(__src + 5))
  {
    v31[9] = (v31 + 10);
  }

  v91 = v90 >> 3;
  v31[42] = a9;
  memcpy(__dst, __src, 0x130uLL);
  v31[43] = ((CGBitmapPixelInfoGetBitsPerPixel(__dst, v92, v93, v94, v95, v96, v97, v98) * a2 + 7) >> 3);
  memcpy(v31 + 45, a4, 0x130uLL);
  if (*(a4 + 40))
  {
    v31[50] = (v31 + 51);
  }

  v31[83] = a5;
  v31[84] = v91;
  v99 = !v25;
  if (!a1)
  {
    v99 = 1;
  }

  if (v99)
  {
    a1 = 0;
  }

  else
  {
    CFRetain(a1);
  }

  v31[86] = a1;
  if (a7)
  {
    CFRetain(a7);
  }

  v31[3] = a7;
  *(v31 + 180) = a10;
  *(v31 + 725) = v134;
  v110 = v31[83];
  v111 = v31[42];
  if (!v111)
  {
    v111 = v31[43];
  }

  if (v110 <= v111)
  {
    v110 = v111;
  }

  v112 = ((v110 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v31[92] = v112;
  v113 = malloc_type_calloc(1uLL, v112, 0x3E9492D1uLL);
  v31[91] = v113;
  if (!v113)
  {
    provider_for_destination_release_info(v31);
    CGPostError("%s failed", v114, v115, v116, v117, v118, v119, v120, "CGDataProviderCreateForDestination");
    return 0;
  }

  return v88;
}

uint64_t provider_for_destination_retain_data(uint64_t *a1)
{
  CGDataProviderRetainData(*a1);
  v2 = *a1;

  return CGDataProviderRetainBytePtr(v2);
}

uint64_t get_image_pointer(void *a1)
{
  if (a1[12] || a1[23])
  {
    return 0;
  }

  v2 = a1[24];
  if (!v2)
  {
    v4 = a1[18];
    v5 = CGDataProviderRetainBytePtr(v4);
    v2 = v5;
    if (v5)
    {
      a1[24] = v5;
    }

    else
    {
      CGDataProviderReleaseBytePtr(v4);
    }

    a1[11] = 0;
  }

  return v2;
}

uint64_t CGAccessSessionGetChunksAtPosition(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a3 || !a6)
  {
    return 0;
  }

  v11 = *a1;
  if (!v11)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", a6, a7, a8, v21);
  }

  v16 = *(v11 + 20);
  if (v16 > 1)
  {
    if (v16 == 3)
    {
LABEL_15:
      v18 = a1[2];
      v19 = a2 - v18;
      if (a2 != v18)
      {
        if (a2 <= v18)
        {
          CGDataProviderRewind(v11);
          v20 = CGDataProviderSkipForwardInternal(*a1, a2);
        }

        else
        {
          v20 = a1[2] + CGDataProviderSkipForwardInternal(v11, v19);
        }

        a1[2] = v20;
      }

      return get_chunks_sequential(a1, a3, a4, a5, a6, a7);
    }

    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16)
  {
    if (v16 != 1)
    {
      return 0;
    }

    goto LABEL_15;
  }

  a1[2] = a2;

  return get_chunks_direct(a1, a3, a4, a5, a6, a7);
}

unint64_t provider_for_destination_get_bytes_at_position(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 724) & 1) == 0)
  {
    _CGHandleAssert("provider_for_destination_get_bytes_at_position", 611, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "info->src_provider_uses_random_access == true", "", a6, a7, a8, v8);
  }

  return provider_for_destination_get_bytes_at_position_inner(a1, a2, a3, a4, 0, a6, a7, a8);
}

unint64_t destination_position_to_source_position(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a6 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("destination_position_to_source_position", 107, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestinationUtils.c", "destination_position >= 0", "position %lld", a6, a6, a8, a6);
  }

  return byte_count_to_byte_count(a1, a2, a3, 0, a4, a5, a6, a8);
}

void *create_image_data_handle(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (!a1 || !a2)
  {
    return v8;
  }

  v9 = a4;
  if (~a3 / a2 <= a1)
  {
    CGPostError("%s overflow detected w = %zu h = %zu extra = %zu transient %s %s", a2, a3, a4, a5, a6, a7, a8, "create_image_data_handle");
    return 0;
  }

  v10 = a1 + a1 * a2 + a3;
  if ((v10 & 0xF) != 0)
  {
    v11 = 16 - (v10 & 0xF);
  }

  else
  {
    v11 = 0;
  }

  if (-25 - v11 <= v10)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x18uLL, 0x1080040CCC1B60FuLL);
  if (v8)
  {
    v12 = v10 + v11 + 24;
    if (v9)
    {
      v13 = malloc_default_zone();
      v14 = v12;
      v15 = 1423544017;
    }

    else
    {
      v13 = malloc_default_purgeable_zone();
      v14 = v12;
      v15 = 1806014493;
    }

    v17 = malloc_type_zone_calloc(v13, v14, 1uLL, v15);
    v8[2] = v17;
    if (v17)
    {
      __CFSetLastAllocationEventName();
      *v8 = v12;
      *(v8 + 8) = v9 ^ 1;
      return v8;
    }

    free(v8);
    return 0;
  }

  return v8;
}

void img_decode_end(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[20];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[21];
  if (v10)
  {
    free(v10);
  }

  v11 = a1[22];
  if (v11)
  {
    free(v11);
  }

  v12 = a1[23];
  if (v12 || a1[24])
  {
    v13 = a1[12];
    if (v13 == -1)
    {
      if (v12)
      {
        CGImageBlockSetRelease(*v12);

        free(v12);
      }
    }

    else
    {
      if (v13)
      {
        _CGHandleAssert("img_decode_end", 1581, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "stage->param[IMG_DECODE_NDATA] == 0", "param = %ld", a6, a7, a8, a1[12]);
      }

      v14 = a1[24];
      if (v14 && v12)
      {
        _CGHandleAssert("img_decode_end", 1585, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "ptr == NULL || session == NULL", "ptr = %p, session = %p", a6, a7, a8, a1[24]);
      }

      if (v14)
      {
        v15 = a1[18];

        CGDataProviderReleaseBytePtr(v15);
      }

      else if (v12)
      {
        v16 = a1[23];

        CGAccessSessionRelease(v16);
      }
    }
  }
}

void img_release_resources(uint64_t a1)
{
  v2 = *(a1 + 28);
  if ((v2 - 3) >= 3)
  {
    if (v2 == 1)
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        CGColorSpaceRelease(v4);
      }
    }
  }

  else if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  if (!*(a1 + 128))
  {
    v5 = *(a1 + 136);

    CGDataProviderRelease(v5);
  }
}

const void *__RIPShouldCacheImages_block_invoke()
{
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  RIPShouldCacheImages_should_cache = *(RIPGetCacheState_cache_state + 34);
  v1 = 1;
  result = get_BOOLean_property("RIPIMAGECACHE", copy_local_domain_value, &v1);
  if (result)
  {
    RIPShouldCacheImages_should_cache = v1;
  }

  return result;
}

const char **__img_globals_block_invoke()
{
  v0 = 0;
  while (2)
  {
    result = &_block_invoke_matte_additive;
    switch(v0)
    {
      case 1:
        v2 = "WWWWWWWW";
        goto LABEL_41;
      case 2:
        v2 = "-RRRRRGGGGGBBBBB";
        goto LABEL_41;
      case 3:
        v2 = "-rrrrrgggggbbbbb";
        goto LABEL_41;
      case 4:
        v2 = "RRRRRRRRGGGGGGGGBBBBBBBB";
        goto LABEL_41;
      case 5:
        v2 = "RRRRRRRRGGGGGGGGBBBBBBBBAAAAAAAA";
        goto LABEL_41;
      case 6:
        v2 = "rrrrrrrrggggggggbbbbbbbbaaaaaaaa";
        goto LABEL_41;
      case 7:
        v2 = "AAAAAAAARRRRRRRRGGGGGGGGBBBBBBBB";
        goto LABEL_41;
      case 8:
        v2 = "aaaaaaaarrrrrrrrggggggggbbbbbbbb";
        goto LABEL_41;
      case 9:
        v2 = "CCCCCCCCMMMMMMMMYYYYYYYYKKKKKKKK";
        goto LABEL_41;
      case 10:
        v2 = "ccccccccmmmmmmmmyyyyyyyykkkkkkkk";
        goto LABEL_41;
      case 11:
        v2 = "WWWWWWWWWWWWWWWW";
        goto LABEL_41;
      case 12:
        v2 = "wwwwwwwwwwwwwwww";
        goto LABEL_41;
      case 13:
        v2 = "RRRRRRRRRRRRRRRRGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBB";
        goto LABEL_41;
      case 14:
        v2 = "rrrrrrrrrrrrrrrrggggggggggggggggbbbbbbbbbbbbbbbb";
        goto LABEL_41;
      case 15:
        v2 = "RRRRRRRRRRRRRRRRGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA";
        goto LABEL_41;
      case 16:
        v2 = "rrrrrrrrrrrrrrrrggggggggggggggggbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaa";
        goto LABEL_41;
      case 17:
        v2 = "CCCCCCCCCCCCCCCCMMMMMMMMMMMMMMMMYYYYYYYYYYYYYYYYKKKKKKKKKKKKKKKK";
        goto LABEL_41;
      case 18:
        v2 = "ccccccccccccccccmmmmmmmmmmmmmmmmyyyyyyyyyyyyyyyykkkkkkkkkkkkkkkk";
        goto LABEL_41;
      case 19:
        v2 = "RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB";
        goto LABEL_41;
      case 20:
        v2 = "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrggggggggggggggggggggggggggggggggbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb";
        goto LABEL_41;
      case 21:
        v2 = "RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
        goto LABEL_41;
      case 22:
        v2 = "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrggggggggggggggggggggggggggggggggbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
        goto LABEL_41;
      case 23:
        v2 = "WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW";
        goto LABEL_41;
      case 24:
        v2 = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww";
        goto LABEL_41;
      case 25:
        v2 = "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK";
        goto LABEL_41;
      case 26:
        v2 = "ccccccccccccccccccccccccccccccccmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyykkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk";
        goto LABEL_41;
      case 27:
        goto LABEL_42;
      case 28:
        result = &_block_invoke_matte_lab;
        goto LABEL_42;
      case 29:
        v2 = "_Wf16_";
        goto LABEL_41;
      case 30:
        v2 = "_WF16_";
        goto LABEL_41;
      case 31:
        v2 = "_RGBf16_";
        goto LABEL_41;
      case 32:
        v2 = "_RGBF16_";
        goto LABEL_41;
      case 33:
        v2 = "_RGBAf16_";
        goto LABEL_41;
      case 34:
        v2 = "_RGBAF16_";
        goto LABEL_41;
      case 35:
        v2 = "_CMYKf16_";
        goto LABEL_41;
      case 36:
        v2 = "_CMYKF16_";
        goto LABEL_41;
      case 37:
        v2 = "_GRAYA8_";
        goto LABEL_41;
      case 38:
        v2 = "_CIF10_";
        goto LABEL_41;
      default:
        v2 = "AAAAAAAA";
LABEL_41:
        result = CGBlt_depth(v2);
LABEL_42:
        img_globals_globals[v0++] = result;
        if (v0 != 39)
        {
          continue;
        }

        return result;
    }
  }
}

uint64_t __get_cache_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  get_cache_image_cache = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040C6685353uLL);
  if (!get_cache_image_cache)
  {
    _CGHandleAssert("get_cache_block_invoke", 159, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImageCache.c", "image_cache != NULL", "NULL image cache", v0, v1, v2, v7.version);
  }

  v8.__sig = 0;
  *v8.__opaque = 0;
  pthread_mutexattr_init(&v8);
  pthread_mutexattr_settype(&v8, 2);
  pthread_mutex_init(get_cache_image_cache, &v8);
  pthread_mutexattr_destroy(&v8);
  v7 = *byte_1EF236F00;
  if (cache_create("com.apple.CoreGraphics.image_handle_cache", &v7, (get_cache_image_cache + 64)))
  {
    _CGHandleAssert("get_cache_block_invoke", 180, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImageCache.c", "cache_create(com.apple.CoreGraphics.image_handle_cache, &attrs, &image_cache->cache) == 0", "cache creation failed", v3, v4, v5, v7.version);
  }

  return cache_set_count_hint();
}

CGColorSpaceRef CGImageGetNumberOfColorComponents(CGColorSpaceRef result)
{
  if (result)
  {
    if ((*(result + 39) & 2) != 0)
    {
      return 1;
    }

    else
    {
      result = CGImageGetColorSpace(result);
      if (result)
      {
        return *(*(result + 3) + 48);
      }
    }
  }

  return result;
}

CGImageByteOrderInfo CGImageGetByteOrderInfo(CGImageRef image)
{
  if (image)
  {
    v1 = image;
    v2 = CFGetTypeID(image);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      LODWORD(image) = *(v1 + 8) & 0x7000;
    }

    else
    {
      LODWORD(image) = 0;
    }
  }

  return image;
}

uint64_t img_image(uint64_t a1, uint64_t a2, void *a3, int a4, _DWORD *a5, uint64_t a6, unsigned int a7)
{
  Size = CGImageGetSize(a6);
  result = 0;
  if (Size - 0x4000000 >= 0xFFFFFFFFFC000001 && (v14 - 0x4000000) >= 0xFFFFFFFFFC000001)
  {
    *a1 = Size;
    *(a1 + 8) = v14;
    *(a1 + 48) = Size;
    *(a1 + 56) = v14;
    ColorSpace = CGImageGetColorSpace(a6);
    Type = CGColorSpaceGetType(ColorSpace);
    switch(Type)
    {
      case 5:
        goto LABEL_7;
      case 9:
LABEL_8:
        CGPostError("%s: Invalid image parameters", v19, v20, v21, v22, v23, v24, v25, "img_image");
        return 0;
      case 7:
LABEL_7:
        if (CGImageGetAlphaInfo(a6) == kCGImageAlphaPremultipliedFirst || CGImageGetAlphaInfo(a6) == kCGImageAlphaPremultipliedLast)
        {
          goto LABEL_8;
        }

        break;
    }

    if (a3)
    {
      v26 = a4;
    }

    else
    {
      v26 = 0;
    }

    if (v26 == 1 && (!a6 || (*(a6 + 39) & 2) == 0))
    {
      memcpy(__dst, a5, 0x130uLL);
      CGImageBitmapInfo = CGBitmapPixelInfoGetCGImageBitmapInfo(__dst);
      v28 = CGImageBitmapInfo & 0x1F;
LABEL_25:
      if (!a6 || (*(a6 + 39) & 2) == 0)
      {
        Cache = CGColorTransformGetCache(a3);
        if (Cache)
        {
          Cache = Cache[2];
        }

        goto LABEL_30;
      }

LABEL_29:
      Cache = CGImageGetColorSpace(a6);
LABEL_30:
      v140 = CGImageBitmapInfo;
      if (Cache)
      {
        v38 = v28;
      }

      else
      {
        v38 = 0;
      }

      *(a1 + 16) = Cache;
      *(a1 + 24) = v38;
      if (a6)
      {
        v39 = *(a6 + 72);
        if (v26)
        {
          if ((*(a6 + 39) & 2) != 0)
          {
            *(&__dst[17] + 4) = 0u;
            __dst[18] = 0u;
            v51 = *(a6 + 40);
            v52 = *(a6 + 48);
            *&__dst[0] = 1;
            *(__dst + 8) = xmmword_18439CC30;
            *(&__dst[1] + 1) = 0;
            memset(&__dst[2], 0, 244);
            v53 = CGDataProviderCreateForDestinationWithImage(0, __dst, v51, v52, a6, a7, 1);
            *(a1 + 136) = v53;
            *(a1 + 32) = 1;
            if (v53)
            {
              v61 = v53[20];
              if (!v61)
              {
                goto LABEL_62;
              }

              v62 = v61(v53[3]);
              v53 = *(a1 + 136);
              if (!v53)
              {
                goto LABEL_104;
              }

              if (!v62)
              {
LABEL_62:
                v62 = v39;
              }

              if (v53[12])
              {
                v63 = 4;
                v64 = v140;
              }

              else
              {
                v64 = v140;
                if (v53[14])
                {
                  v63 = 4;
                }

                else if (v53[10])
                {
                  v63 = 4;
                }

                else
                {
                  v63 = 3;
                }
              }

              *(a1 + 28) = v63;
              *(a1 + 128) = 0;
              v91 = 8;
              v82 = 8;
LABEL_160:
              v90 = 0;
              *(a1 + 120) = 0;
              *(a1 + 144) = v62;
              *(a1 + 40) = a6;
              goto LABEL_161;
            }

LABEL_104:
            CGPostError("%s: Bad image source", v54, v55, v56, v57, v58, v59, v60, "img_image");
            return 0;
          }

          if (*(a6 + 176))
          {
            v40 = a5[6] - 1;
            if (v40 > 8)
            {
              v137 = 0;
            }

            else
            {
              v137 = qword_1844E0DE8[v40];
            }

            v136 = *(a5 + 2);
            BitsPerComponent = CGPixelComponentGetBitsPerComponent(*a5, v31, v32, v33, v34, v35, v36, v37);
            v74 = *a1;
            v75 = *(a1 + 8);
            memcpy(__dst, a5, 0x130uLL);
            v76 = CGDataProviderCreateWithSoftMaskAndMatte(a3, __dst, v74, v75, a6, a7);
            *(a1 + 136) = v76;
            *(a1 + 32) = 1;
            if (v76)
            {
              v77 = *(v76 + 160);
              if (!v77)
              {
                goto LABEL_86;
              }

              v78 = v77(*(v76 + 24));
              if (*(a1 + 136))
              {
                v62 = v78;
                if (v78)
                {
LABEL_87:
                  v79 = CGColorTransformGetCache(a3);
                  if (v79)
                  {
                    v71 = v79[2];
                  }

                  else
                  {
                    v71 = 0;
                  }

                  v80 = v140;
                  v82 = BitsPerComponent;
                  v83 = v136;
                  v81 = v137;
LABEL_131:
                  v104 = v81 + v83;
                  *(a1 + 16) = v71;
                  v105 = a5[6];
                  if (v105 == 9)
                  {
                    v105 = 3;
                  }

                  else if (v105 == 8)
                  {
                    v105 = 1;
                  }

                  v91 = v82 * v104;
                  *(a1 + 24) = v105;
                  v106 = *(a1 + 136);
                  if (v106[12] || v106[14])
                  {
                    v107 = 4;
                  }

                  else if (v106[10])
                  {
                    v107 = 4;
                  }

                  else
                  {
                    v107 = 3;
                  }

                  *(a1 + 28) = v107;
                  *(a1 + 128) = 0;
                  v108 = v80 & 0xFFF080E0;
                  memcpy(__dst, a5, 0x130uLL);
                  v64 = CGBitmapPixelInfoGetCGImageBitmapInfo(__dst) | v108;
                  goto LABEL_160;
                }

LABEL_86:
                v62 = v39;
                goto LABEL_87;
              }
            }

            goto LABEL_104;
          }

LABEL_40:
          v41 = a5[6] - 1;
          if (v41 > 8)
          {
            v135 = 0;
          }

          else
          {
            v135 = qword_1844E0DE8[v41];
          }

          v133 = *(a5 + 2);
          v139 = CGPixelComponentGetBitsPerComponent(*a5, v31, v32, v33, v34, v35, v36, v37);
          if (a6)
          {
            v65 = *(a6 + 40);
            v66 = *(a6 + 48);
          }

          else
          {
            v65 = 0;
            v66 = 0;
          }

          memcpy(__dst, a5, 0x130uLL);
          v67 = CGDataProviderCreateForDestinationWithImage(a3, __dst, v65, v66, a6, a7, 1);
          *(a1 + 136) = v67;
          *(a1 + 32) = 1;
          if (!v67)
          {
            goto LABEL_104;
          }

          v68 = *(v67 + 160);
          if (!v68)
          {
            goto LABEL_73;
          }

          v69 = v68(*(v67 + 24));
          if (!*(a1 + 136))
          {
            goto LABEL_104;
          }

          v62 = v69;
          if (!v69)
          {
LABEL_73:
            v62 = v39;
          }

          v70 = CGColorTransformGetCache(a3);
          if (v70)
          {
            v71 = v70[2];
          }

          else
          {
            v71 = 0;
          }

          v80 = v140;
          v81 = v135;
          v82 = v139;
          v83 = v133;
          goto LABEL_131;
        }

        v134 = *(a6 + 64);
        v138 = *(a6 + 56);
      }

      else
      {
        v39 = 0;
        v134 = 0;
        v138 = 0;
        if (v26)
        {
          goto LABEL_40;
        }
      }

      v42 = CFGetTypeID(a6);
      if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
      {
        dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
      }

      if (v42 != CGImageGetTypeID_image_type_id)
      {
        goto LABEL_93;
      }

      v43 = *(a6 + 208);
      if (!v43)
      {
        goto LABEL_93;
      }

      v44 = *(a6 + 40);
      v45 = *(a6 + 48);
      if (!is_mul_ok(v44, v45) || v44 * v45 > 0x9C4 || *(a6 + 152) | *(a6 + 240))
      {
        *(a1 + 136) = v43;
LABEL_51:
        v46 = -1;
        v47 = 5;
        goto LABEL_98;
      }

      if (!CGImageGetDataProviderInternal(a6, 1))
      {
        v109 = *(a6 + 208);
        *(a1 + 136) = v109;
        v85 = (a1 + 136);
        if (v109)
        {
          goto LABEL_51;
        }
      }

      else
      {
LABEL_93:
        *(a1 + 136) = 0;
        v85 = (a1 + 136);
      }

      DataProviderInternal = CGImageGetDataProviderInternal(a6, 0);
      v87 = CGDataProviderRetain(DataProviderInternal);
      *v85 = v87;
      if (!v87)
      {
        goto LABEL_104;
      }

      v46 = 0;
      if (*(v87 + 4) == -1)
      {
        v47 = 3;
      }

      else
      {
        v47 = 4;
      }

LABEL_98:
      *(a1 + 28) = v47;
      *(a1 + 120) = 0;
      *(a1 + 128) = v46;
      *(a1 + 144) = v39;
      *(a1 + 40) = a6;
      v88 = *(a1 + 16);
      Decode = CGImageGetDecode(a6);
      v90 = Decode;
      if (!Decode)
      {
LABEL_102:
        v64 = v140;
        v91 = v134;
LABEL_103:
        v82 = v138;
        goto LABEL_161;
      }

      if (v38 == 4 || v38 == 2)
      {
        if (*Decode != 0.0)
        {
          goto LABEL_102;
        }

        v64 = v140;
        v82 = v138;
        if (Decode[1] != 1.0)
        {
          v91 = v134;
          goto LABEL_161;
        }

        v92 = 1;
      }

      else
      {
        v92 = 0;
      }

      if (v88)
      {
        v93 = *(v88[3] + 48);
        v94 = CGColorSpaceGetType(v88);
        if (v94 <= 5)
        {
          if (v94 >= 5)
          {
            if (v94 != 5)
            {
              goto LABEL_102;
            }

            memset(__dst, 0, 96);
            CGColorSpaceGetLabData(v88, v99, v100, v101, __dst);
            v125 = &v90[2 * v92];
            if (*v125 != 0.0)
            {
              goto LABEL_102;
            }

            v126 = &v90[2 * v92];
            if (v126[1] != 100.0 || v125[2] != *&__dst[3] || v125[3] != *(&__dst[3] + 1) || v126[4] != *&__dst[4] || v126[5] != *(&__dst[4] + 1))
            {
              goto LABEL_102;
            }

            v92 += 3;
LABEL_249:
            v91 = v134;
LABEL_250:
            if ((v38 & 0xFFFFFFFD) != 1 || v90[2 * v92] == 0.0 && v90[2 * v92 + 1] == 1.0)
            {
              v90 = 0;
            }

            goto LABEL_254;
          }

LABEL_115:
          if (v93)
          {
            v102 = v93 + v92;
            v103 = &v90[2 * v92 + 1];
            v64 = v140;
            v91 = v134;
            v82 = v138;
            while (*(v103 - 1) == 0.0 && *v103 == 1.0)
            {
              v103 += 2;
              if (!--v93)
              {
                goto LABEL_155;
              }
            }

            goto LABEL_161;
          }

          goto LABEL_249;
        }

        if (v94 > 9)
        {
          if ((v94 - 10) >= 2)
          {
            goto LABEL_102;
          }
        }

        else if (v94 != 6)
        {
          if (v94 != 7)
          {
            if (v94 != 8)
            {
              goto LABEL_102;
            }

            goto LABEL_115;
          }

          if (v90[2 * v92] != 0.0)
          {
            goto LABEL_102;
          }

          v129 = v88[3];
          if (*(v129 + 28) == 5)
          {
            v130 = *(*(v129 + 96) + 8);
          }

          else
          {
            v130 = 1.84467441e19;
          }

          v91 = v134;
          if (v90[2 * v92 + 1] == v130)
          {
            ++v92;
            goto LABEL_250;
          }

LABEL_254:
          v64 = v140;
          goto LABEL_103;
        }

        v110 = CGColorSpaceICCGetRange(v88, v95, v96, v97, v98, v99, v100, v101);
        if (!v110)
        {
          goto LABEL_102;
        }

        if (v93)
        {
          v102 = v93 + v92;
          v111 = &v90[2 * v92 + 1];
          v112 = (v110 + 8);
          v64 = v140;
          v91 = v134;
          v82 = v138;
          while (*(v111 - 1) == *(v112 - 1) && *v111 == *v112)
          {
            v111 += 2;
            v112 += 2;
            if (!--v93)
            {
LABEL_155:
              v92 = v102;
              goto LABEL_250;
            }
          }

LABEL_161:
          v113 = 0;
          *(a1 + 88) = v90;
          *(a1 + 64) = v82;
          *(a1 + 72) = v91;
          *(a1 + 80) = v64;
          if (!v90 && *(a1 + 28) == 5 && v82 == 8 && v91 == 32)
          {
            v113 = *(a1 + 136);
            if (v113)
            {
              if ((*(v113 + 36) & 0x1F) != 0)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v113 = qword_1ED4E1E30;
              }

              else
              {
                v113 = 0;
              }
            }
          }

          *(a1 + 96) = v113;
          v115 = *(a1 + 16);
          if (!v115)
          {
            if (v91 != 8)
            {
              goto LABEL_176;
            }

            if (v82 != 8)
            {
              goto LABEL_176;
            }

            v116 = *(a1 + 88);
            if (!v116 || *v116 != 1.0 || v116[1] != 0.0)
            {
              goto LABEL_176;
            }

            if (img_globals_once != -1)
            {
              dispatch_once(&img_globals_once, &__block_literal_global_12116);
            }

            v117 = img_globals_globals;
LABEL_448:
            *(a1 + 112) = v117;
            return a1;
          }

          if (*(a1 + 88))
          {
LABEL_176:
            *(a1 + 112) = 0;
            return a1;
          }

          Model = CGColorSpaceGetModel(*(a1 + 16));
          if ((Model - 3) <= 1)
          {
            v122 = CGColorSpaceGetType(v115);
            if (v122 <= 0xB && ((1 << v122) & 0xC40) != 0)
            {
              v123 = *(v115[3] + 48);
              switch(v123)
              {
                case 4:
                  Model = kCGColorSpaceModelCMYK;
                  break;
                case 3:
                  Model = kCGColorSpaceModelRGB;
                  break;
                case 1:
                  Model = kCGColorSpaceModelMonochrome;
                  break;
              }
            }
          }

          v124 = v64 & 0xF711F;
          if (v82 > 9)
          {
            if (v82 == 10)
            {
              if (v124 == 270336 && Model == kCGColorSpaceModelRGB)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v117 = qword_1ED4E1F20;
                goto LABEL_448;
              }

              goto LABEL_447;
            }

            if (v82 != 16)
            {
              if (v82 == 32)
              {
                if ((v64 & 0xF711Fu) > 0x2100)
                {
                  if ((v64 & 0xF711Fu) > 0x40FF)
                  {
                    if (v124 != 16645 && v124 != 16641)
                    {
                      if (v124 != 16640)
                      {
                        goto LABEL_447;
                      }

LABEL_303:
                      if (Model == kCGColorSpaceModelCMYK)
                      {
                        if (v91 == 128)
                        {
                          if (img_globals_once != -1)
                          {
                            dispatch_once(&img_globals_once, &__block_literal_global_12116);
                          }

                          v117 = qword_1ED4E1EB8;
                          goto LABEL_448;
                        }

                        goto LABEL_447;
                      }

                      if (Model != kCGColorSpaceModelRGB)
                      {
                        if (Model == kCGColorSpaceModelMonochrome && v91 == 32)
                        {
                          if (img_globals_once != -1)
                          {
                            dispatch_once(&img_globals_once, &__block_literal_global_12116);
                          }

                          v117 = qword_1ED4E1EA8;
                          goto LABEL_448;
                        }

                        goto LABEL_447;
                      }

                      if (v91 != 128)
                      {
                        if (v91 == 96)
                        {
                          if (img_globals_once != -1)
                          {
                            dispatch_once(&img_globals_once, &__block_literal_global_12116);
                          }

                          v117 = qword_1ED4E1E88;
                          goto LABEL_448;
                        }

                        goto LABEL_447;
                      }

                      if (img_globals_once == -1)
                      {
                        goto LABEL_293;
                      }

                      goto LABEL_462;
                    }

LABEL_290:
                    if (v91 != 128 || Model != kCGColorSpaceModelRGB)
                    {
                      goto LABEL_447;
                    }

                    if (img_globals_once == -1)
                    {
                      goto LABEL_293;
                    }

LABEL_462:
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
LABEL_293:
                    v117 = qword_1ED4E1E98;
                    goto LABEL_448;
                  }

                  if (v124 != 8449 && v124 != 8453 || v91 != 128 || Model != kCGColorSpaceModelRGB)
                  {
                    goto LABEL_447;
                  }

                  if (img_globals_once == -1)
                  {
LABEL_299:
                    v117 = qword_1ED4E1EA0;
                    goto LABEL_448;
                  }

LABEL_463:
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  goto LABEL_299;
                }

                if ((v64 & 0xF711Fu) <= 0x104)
                {
                  if (v124 == 256)
                  {
                    goto LABEL_303;
                  }

                  if (v124 != 257)
                  {
                    goto LABEL_447;
                  }

                  goto LABEL_290;
                }

                if (v124 == 261)
                {
                  goto LABEL_290;
                }

                if (v124 == 8448)
                {
                  if (Model == kCGColorSpaceModelCMYK)
                  {
                    if (v91 == 128)
                    {
                      if (img_globals_once != -1)
                      {
                        dispatch_once(&img_globals_once, &__block_literal_global_12116);
                      }

                      v117 = qword_1ED4E1EC0;
                      goto LABEL_448;
                    }

                    goto LABEL_447;
                  }

                  if (Model != kCGColorSpaceModelRGB)
                  {
                    if (Model == kCGColorSpaceModelMonochrome && v91 == 32)
                    {
                      if (img_globals_once != -1)
                      {
                        dispatch_once(&img_globals_once, &__block_literal_global_12116);
                      }

                      v117 = qword_1ED4E1EB0;
                      goto LABEL_448;
                    }

                    goto LABEL_447;
                  }

                  if (v91 != 128)
                  {
                    if (v91 == 96)
                    {
                      if (img_globals_once != -1)
                      {
                        dispatch_once(&img_globals_once, &__block_literal_global_12116);
                      }

                      v117 = qword_1ED4E1E90;
                      goto LABEL_448;
                    }

                    goto LABEL_447;
                  }

                  if (img_globals_once == -1)
                  {
                    goto LABEL_299;
                  }

                  goto LABEL_463;
                }
              }

LABEL_447:
              v117 = 0;
              goto LABEL_448;
            }

            if (Model != kCGColorSpaceModelCMYK)
            {
              if (Model != kCGColorSpaceModelRGB)
              {
                if (Model || v91 != 16)
                {
                  goto LABEL_447;
                }

                if ((v64 & 0xF711Fu) > 0x10FF)
                {
                  if (v124 == 4352)
                  {
                    if (img_globals_once != -1)
                    {
                      dispatch_once(&img_globals_once, &__block_literal_global_12116);
                    }

                    v117 = qword_1ED4E1ED8;
                    goto LABEL_448;
                  }

                  if (v124 != 12288)
                  {
                    if (v124 != 12544)
                    {
                      goto LABEL_447;
                    }

LABEL_464:
                    _CGHandleAssert("img_depth", 3279, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented", v118, v119, v120, v132);
                  }
                }

                else if (v124)
                {
                  if (v124 == 4096)
                  {
                    if (img_globals_once != -1)
                    {
                      dispatch_once(&img_globals_once, &__block_literal_global_12116);
                    }

                    v117 = qword_1ED4E1E50;
                    goto LABEL_448;
                  }

                  if (v124 != 256)
                  {
                    goto LABEL_447;
                  }

                  goto LABEL_464;
                }

                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v117 = qword_1ED4E1E48;
                goto LABEL_448;
              }

              if ((v64 & 0xF711Fu) <= 0x10FF)
              {
                if ((v64 & 0xF711Fu) > 0x100)
                {
                  if ((v64 & 0xF711Fu) > 0x1000)
                  {
                    if (v124 != 4097 && v124 != 4101 || v91 != 64)
                    {
                      goto LABEL_447;
                    }

LABEL_417:
                    if (img_globals_once != -1)
                    {
                      dispatch_once(&img_globals_once, &__block_literal_global_12116);
                    }

                    v117 = qword_1ED4E1E70;
                    goto LABEL_448;
                  }

                  if (v124 == 4096)
                  {
                    if (v91 != 64)
                    {
                      if (v91 == 48)
                      {
                        if (img_globals_once != -1)
                        {
                          dispatch_once(&img_globals_once, &__block_literal_global_12116);
                        }

                        v117 = qword_1ED4E1E60;
                        goto LABEL_448;
                      }

                      goto LABEL_447;
                    }

                    goto LABEL_417;
                  }

                  if (v124 != 257 && v124 != 261)
                  {
                    goto LABEL_447;
                  }

LABEL_461:
                  _CGHandleAssert("img_depth", 3319, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented", v118, v119, v120, v132);
                }

                if ((v64 & 0xF711Fu) <= 4)
                {
                  if (v124)
                  {
                    if (v124 != 1)
                    {
                      goto LABEL_447;
                    }

LABEL_421:
                    if (v91 != 64)
                    {
                      goto LABEL_447;
                    }

LABEL_422:
                    if (img_globals_once != -1)
                    {
                      dispatch_once(&img_globals_once, &__block_literal_global_12116);
                    }

                    v117 = qword_1ED4E1E68;
                    goto LABEL_448;
                  }

LABEL_373:
                  if (v91 != 64)
                  {
                    if (v91 == 48)
                    {
                      if (img_globals_once != -1)
                      {
                        dispatch_once(&img_globals_once, &__block_literal_global_12116);
                      }

                      v117 = qword_1ED4E1E58;
                      goto LABEL_448;
                    }

                    goto LABEL_447;
                  }

                  goto LABEL_422;
                }

                if (v124 == 5)
                {
                  goto LABEL_421;
                }

                if (v124 != 256)
                {
                  goto LABEL_447;
                }

LABEL_465:
                _CGHandleAssert("img_depth", 3312, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented", v118, v119, v120, v132);
              }

              if ((v64 & 0xF711Fu) < 0x3000)
              {
                if (v124 == 4352)
                {
                  if (v91 != 64)
                  {
                    if (v91 == 48)
                    {
                      if (img_globals_once != -1)
                      {
                        dispatch_once(&img_globals_once, &__block_literal_global_12116);
                      }

                      v117 = qword_1ED4E1EE8;
                      goto LABEL_448;
                    }

                    goto LABEL_447;
                  }
                }

                else if (v124 != 4353 && v124 != 4357 || v91 != 64)
                {
                  goto LABEL_447;
                }

                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v117 = qword_1ED4E1EF8;
                goto LABEL_448;
              }

              if ((v64 & 0xF711Fu) > 0x3004)
              {
                if ((v64 & 0xF711Fu) > 0x30FF)
                {
                  if (v124 != 12544)
                  {
                    if (v124 != 12545 && v124 != 12549)
                    {
                      goto LABEL_447;
                    }

                    goto LABEL_461;
                  }

                  goto LABEL_465;
                }

                v131 = 12293;
              }

              else
              {
                if (v124 == 12288)
                {
                  goto LABEL_373;
                }

                v131 = 12289;
              }

              if (v124 != v131)
              {
                goto LABEL_447;
              }

              goto LABEL_421;
            }

            if (v91 != 64)
            {
              goto LABEL_447;
            }

            if ((v64 & 0xF711Fu) > 0x10FF)
            {
              if (v124 == 4352)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v117 = qword_1ED4E1F08;
                goto LABEL_448;
              }

              if (v124 != 12288)
              {
                if (v124 != 12544)
                {
                  goto LABEL_447;
                }

LABEL_443:
                _CGHandleAssert("img_depth", 3349, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented", v118, v119, v120, v132);
              }
            }

            else if (v124)
            {
              if (v124 == 4096)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v117 = qword_1ED4E1E80;
                goto LABEL_448;
              }

              if (v124 != 256)
              {
                goto LABEL_447;
              }

              goto LABEL_443;
            }

            if (img_globals_once != -1)
            {
              dispatch_once(&img_globals_once, &__block_literal_global_12116);
            }

            v117 = qword_1ED4E1E78;
            goto LABEL_448;
          }

          if (v82 == 5)
          {
            if (v91 == 16 && Model == kCGColorSpaceModelRGB)
            {
              switch(v124)
              {
                case 12294:
                  goto LABEL_234;
                case 4102:
                  if (img_globals_once != -1)
                  {
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  }

                  v117 = qword_1ED4E1E08;
                  goto LABEL_448;
                case 6:
LABEL_234:
                  if (img_globals_once != -1)
                  {
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  }

                  v117 = qword_1ED4E1E00;
                  goto LABEL_448;
              }
            }

            goto LABEL_447;
          }

          if (v82 != 8)
          {
            goto LABEL_447;
          }

          if (Model == kCGColorSpaceModelCMYK)
          {
            if (v91 == 32)
            {
              switch(v124)
              {
                case 0x4000:
                  goto LABEL_278;
                case 0x2000:
                  if (img_globals_once != -1)
                  {
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  }

                  v117 = qword_1ED4E1E40;
                  goto LABEL_448;
                case 0:
LABEL_278:
                  if (img_globals_once != -1)
                  {
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  }

                  v117 = qword_1ED4E1E38;
                  goto LABEL_448;
              }
            }

            goto LABEL_447;
          }

          if (Model != kCGColorSpaceModelRGB)
          {
            if (Model == kCGColorSpaceModelMonochrome)
            {
              if (!v124 && v91 == 8)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v117 = qword_1ED4E1DF8;
                goto LABEL_448;
              }

              if ((v64 & 0xF711B) == 1 && v91 == 16)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v117 = qword_1ED4E1F18;
                if (qword_1ED4E1F18 == a2)
                {
                  goto LABEL_448;
                }
              }
            }

            goto LABEL_447;
          }

          if ((v64 & 0xF711Fu) > 0x2001)
          {
            if ((v64 & 0xF711Fu) > 0x4000)
            {
              if ((v64 & 0xF711Fu) > 0x4004)
              {
                v127 = v91;
                if (v124 != 16389)
                {
                  v128 = 16390;
LABEL_380:
                  if (v124 != v128)
                  {
                    goto LABEL_447;
                  }

LABEL_381:
                  if (v91 == 32)
                  {
                    if (img_globals_once != -1)
                    {
                      dispatch_once(&img_globals_once, &__block_literal_global_12116);
                    }

                    v117 = qword_1ED4E1E28;
                    goto LABEL_448;
                  }

                  goto LABEL_447;
                }
              }

              else
              {
                v127 = v91;
                if (v124 != 16385)
                {
                  v128 = 16386;
                  goto LABEL_380;
                }
              }

              goto LABEL_385;
            }

            if (v124 == 8194)
            {
LABEL_350:
              if (v91 == 32)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v117 = qword_1ED4E1E30;
                goto LABEL_448;
              }

              goto LABEL_447;
            }

            if (v124 != 8197)
            {
              if (v124 != 8198)
              {
                goto LABEL_447;
              }

              goto LABEL_350;
            }

LABEL_357:
            if (v91 == 32)
            {
              if (img_globals_once != -1)
              {
                dispatch_once(&img_globals_once, &__block_literal_global_12116);
              }

              v117 = qword_1ED4E1E20;
              goto LABEL_448;
            }

            goto LABEL_447;
          }

          v127 = v91;
          if ((v64 & 0xF711Fu) > 4)
          {
            if (v124 != 5)
            {
              if (v124 == 6)
              {
                goto LABEL_381;
              }

              if (v124 != 8193)
              {
                goto LABEL_447;
              }

              goto LABEL_357;
            }
          }

          else
          {
            if (!v124)
            {
              if (v91 != 32)
              {
                if (v91 == 24)
                {
                  if (img_globals_once != -1)
                  {
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  }

                  v117 = qword_1ED4E1E10;
                  goto LABEL_448;
                }

                goto LABEL_447;
              }

              goto LABEL_386;
            }

            if (v124 != 1)
            {
              if (v124 != 2)
              {
                goto LABEL_447;
              }

              goto LABEL_381;
            }
          }

LABEL_385:
          if (v127 != 32)
          {
            goto LABEL_447;
          }

LABEL_386:
          if (img_globals_once != -1)
          {
            dispatch_once(&img_globals_once, &__block_literal_global_12116);
          }

          v117 = qword_1ED4E1E18;
          goto LABEL_448;
        }

        goto LABEL_249;
      }

      if (Decode[2 * v92] != 0.0)
      {
        goto LABEL_102;
      }

      v91 = v134;
      if (Decode[2 * v92 + 1] == 1.0)
      {
        goto LABEL_250;
      }

      goto LABEL_254;
    }

    CGImageBitmapInfo = CGImageGetBitmapInfo(a6);
    if ((CGImageBitmapInfo & 0x7000) != 0)
    {
LABEL_18:
      if ((CGImageBitmapInfo & 0x1Fu) - 1 < 4)
      {
        v29 = 1;
      }

      else
      {
        v29 = v26;
      }

      if (v29)
      {
        v28 = CGImageBitmapInfo & 0x1F;
      }

      else
      {
        v28 = 0;
      }

      if (!v26)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v48 = CGImageGetColorSpace(a6);
    v49 = CGColorSpaceGetModel(v48);
    if (v49 != kCGColorSpaceModelRGB)
    {
      if (v49 || !a6)
      {
        goto LABEL_18;
      }

      v50 = *(a6 + 56);
      if (v50 != 16)
      {
        if (v50 != 32)
        {
          goto LABEL_18;
        }

LABEL_80:
        CGImageBitmapInfo |= 0x4000u;
        goto LABEL_18;
      }

LABEL_108:
      CGImageBitmapInfo |= 0x3000u;
      goto LABEL_18;
    }

    if (a6)
    {
      v72 = *(a6 + 56);
      switch(v72)
      {
        case 8:
          v84 = 1;
LABEL_145:
          if ((((CGImageBitmapInfo & 0x1F) != 0) & v84) != 0)
          {
            CGImageBitmapInfo |= 0x4000u;
          }

          goto LABEL_18;
        case 16:
          goto LABEL_108;
        case 32:
          goto LABEL_80;
      }
    }

    v84 = 0;
    goto LABEL_145;
  }

  return result;
}

void *CGImageGetMaskingColors(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      return v1[21];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CGBitmapPixelInfoIsEqualToBitmapPixelInfo(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v2 = *(a1 + 16);
    if (v2 == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28))
    {
      v3 = *(a1 + 40);
      v4 = *(a2 + 40);
      if (!v3)
      {
        if (!v4)
        {
          return 1;
        }

        v3 = &standard_decode;
      }

      if (!v4)
      {
        v4 = &standard_decode;
      }

      if (v2)
      {
        v5 = *v3;
        v6 = *v4;
        v7 = 1;
        while (v5 == v6)
        {
          v5 = v3[v7];
          v6 = v4[v7];
          result = v5 == v6;
          if (v7 < v2)
          {
            ++v7;
            if (v5 == v6)
            {
              continue;
            }
          }

          return result;
        }

        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t img_data_lock(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, unsigned __int8 a13, unsigned int a14)
{
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v17 = v16;
  v353 = v18;
  v20 = v19;
  v22 = v21;
  v363 = v23;
  v25 = v24;
  v26 = v15;
  v388 = *MEMORY[0x1E69E9840];
  v357 = v14;
  if (a11)
  {
    v27 = *(a11 + 2) & 0x3FLL;
    v28 = v27;
  }

  else if ((a12 - 2) > 3)
  {
    v27 = 8;
    v28 = 8;
  }

  else
  {
    v28 = qword_1844F1B88[a12 - 2];
    v27 = 8;
  }

  v29 = a10;
  if (v16)
  {
    v30 = a11;
    if (a11)
    {
      v31 = *(v15 + 128) == 0;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      v32 = a10;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v30 = a11;
    v32 = 0;
  }

  v364 = 0;
  v365 = 0;
  bzero(&v367, 0xB40uLL);
  v41 = *v26;
  v40 = *(v26 + 8);
  v359 = v25;
  if (v25 == *v26)
  {
    v42 = 0;
    v43 = v363;
    if (v20 - 3 <= 1)
    {
      v44 = *(v26 + 8);
      v362 = *v26;
      if (v40 == v363)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

LABEL_21:
    v44 = *(v26 + 8);
    v362 = *v26;
    goto LABEL_22;
  }

  v43 = v363;
  if (v20 - 3 > 1)
  {
    v42 = 0;
    goto LABEL_21;
  }

LABEL_19:
  v42 = 2;
  LODWORD(v44) = v43;
  LODWORD(v362) = v359;
LABEL_22:
  v45 = *(v26 + 28);
  if ((v45 - 3) <= 2 && (v41 != *(v26 + 48) || v40 != *(v26 + 56)))
  {
    v42 |= 0x80u;
  }

  if (!v22)
  {
    v352 = 0;
    goto LABEL_34;
  }

  v46 = *(v22 + 4);
  v47 = v46 & ~(v46 >> 31);
  if (*(v22 + 12) + v46 <= v43)
  {
    v48 = *(v22 + 12) + v46;
  }

  else
  {
    v48 = v43;
  }

  if (v48 <= v47)
  {
    goto LABEL_609;
  }

  if (v48 - v47 == v43)
  {
    v352 = v47;
LABEL_34:
    v49 = 1;
    v355 = v44;
    goto LABEL_54;
  }

  if (v43 != v44)
  {
    v50 = v44 / v43;
    v48 = vcvtpd_s64_f64(v50 * v48);
    v47 = vcvtmd_s64_f64(v50 * v47);
    if (v48 >= v44)
    {
      v48 = v44;
    }
  }

  if (v47 >= 17)
  {
    v51 = 16;
  }

  else
  {
    v51 = 16 - v47;
  }

  if (v47 >= 17)
  {
    v52 = v47;
  }

  else
  {
    v52 = 0;
  }

  v53 = v51 + v48;
  if (v48 - v52 + 15 >= v43)
  {
    v48 = v43;
  }

  if (v53 >= v43)
  {
    v48 = v43;
  }

  v54 = v48 - v52;
  v49 = v54 >= v43;
  if (v54 >= v43)
  {
    v48 = v43;
  }

  v355 = v48;
  if (v54 < v43)
  {
    v55 = v52;
  }

  else
  {
    v55 = 0;
  }

  v352 = v55;
LABEL_54:
  v56 = *(v26 + 120);
  if (v56)
  {
    if (!v49)
    {
      if (*v56 > v41 || v56[2] + *v56 < 0)
      {
        goto LABEL_609;
      }

      v58 = v352;
      v59 = v355;
      if (v40 != v44)
      {
        if (v355 - v352 == v44)
        {
          v58 = 0;
          v59 = *(v26 + 8);
        }

        else
        {
          v71 = v40 / v44;
          v59 = vcvtpd_s64_f64(v71 * v355);
          v58 = vcvtmd_s64_f64(v71 * v352);
          if (v59 >= v40)
          {
            v59 = *(v26 + 8);
          }
        }
      }

      v72 = v40 - v58;
      v73 = v56[1];
      if (v72 < v73 || v40 - v59 > v56[3] + v73)
      {
        goto LABEL_609;
      }
    }

    v42 |= 1u;
  }

  if (v45 < 3)
  {
    v57 = 1;
  }

  else
  {
    v57 = v32;
  }

  v360 = v44;
  if ((v57 & 1) == 0)
  {
    if (CGImageGetMaskingColors(*(v26 + 40)))
    {
      v42 |= 0x10u;
    }

    else if (CGImageGetMask(*(v26 + 40)))
    {
      Matte = CGImageGetMatte(*(v26 + 40));
      v61 = 48;
      if (!Matte)
      {
        v61 = 16;
      }

      v42 |= v61;
    }

    LODWORD(v44) = v360;
  }

  v62 = *(v26 + 16);
  v351 = v20;
  v348 = v62;
  if (!v62)
  {
    if (img_globals_once != -1)
    {
      dispatch_once(&img_globals_once, &__block_literal_global_12116);
      LODWORD(v44) = v360;
    }

    v67 = 0;
    v68 = img_globals_globals;
    v350 = img_globals_globals;
    if (!v30)
    {
      v68 = 0;
    }

    v347 = v68;
    goto LABEL_130;
  }

  BaseColorSpace = *(v26 + 16);
  v64 = v49;
  v65 = *(v26 + 24);
  v350 = *(v26 + 112);
  if ((v42 & 0xA2) != 0)
  {
    if (CGColorSpaceGetType(v62) == 7)
    {
      BaseColorSpace = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
      v42 |= 8u;
      v28 = 8;
    }

    LODWORD(v44) = v360;
  }

  if (!v17 || (*(v26 + 32) & 1) != 0)
  {
    goto LABEL_105;
  }

  if (CGColorTransformConvertNeedsCMS(v17, BaseColorSpace, v353))
  {
    goto LABEL_81;
  }

  Type = CGColorSpaceGetType(BaseColorSpace);
  if (Type > 0xB)
  {
LABEL_102:
    if ((v32 & 1) == 0)
    {
      goto LABEL_81;
    }

    BaseColorSpace = v348;
    goto LABEL_104;
  }

  if (((1 << Type) & 0x1F) == 0)
  {
    if (((1 << Type) & 0xC40) != 0)
    {
      if (!BaseColorSpace || (v70 = *(*(BaseColorSpace + 3) + 48), v70 > 4) || ((1 << v70) & 0x1A) == 0)
      {
LABEL_81:
        Cache = CGColorTransformGetCache(v17);
        if (Cache)
        {
          BaseColorSpace = Cache[2];
        }

        else
        {
          BaseColorSpace = 0;
        }

        LODWORD(v44) = v360;
        v67 = v65;
        v42 |= 4u;
        goto LABEL_106;
      }

      goto LABEL_104;
    }

    goto LABEL_102;
  }

LABEL_104:
  LODWORD(v44) = v360;
LABEL_105:
  v67 = v65;
LABEL_106:
  v49 = v64;
  v29 = a10;
  if (v30)
  {
    v74 = *v30 != 67637640;
    v75 = *v30 != 134886228;
  }

  else
  {
    v74 = 1;
    v75 = 1;
  }

  v27 = v28;
  if (!BaseColorSpace)
  {
    goto LABEL_117;
  }

  v76 = *(*(BaseColorSpace + 3) + 48);
  if (v76 == 4)
  {
    v347 = v30;
    v78 = (v42 & 0x10) == 0 && *(v26 + 24) == 0;
    v77 = 8;
LABEL_128:
    if (!v78)
    {
      v67 = v77;
    }

    goto LABEL_130;
  }

  if (v76 != 3)
  {
    if (v76 == 1)
    {
      v347 = v30;
      v31 = !v74;
      v77 = 8;
      if (v31)
      {
        v77 = v67;
      }

      v78 = *(v26 + 24) == 0;
      goto LABEL_128;
    }

LABEL_117:
    img_release_resources(v26);
    CGPostError("%s: Cannot convert to destination", v79, v80, v81, v82, v83, v84, v85, v357);
    return 0;
  }

  v86 = *(v26 + 24);
  v347 = v30;
  if (v86 == 0 || v75)
  {
    if (v86 > 7)
    {
      if ((v86 - 8) >= 2)
      {
        goto LABEL_130;
      }
    }

    else if (v86)
    {
      if (v86 == 3)
      {
        v67 = 1;
        goto LABEL_130;
      }

      if (v86 != 4)
      {
        goto LABEL_130;
      }
    }

    else if ((v42 & 0x10) == 0)
    {
      goto LABEL_130;
    }

    v67 = 2;
    goto LABEL_130;
  }

  v67 = 8;
LABEL_130:
  v87 = a13;
  v88 = *(v26 + 112);
  v89 = *(v26 + 28);
  v90 = v89 - 3;
  if (v89 != 3 && (v42 & 0x96) == 0)
  {
    if (v89 == 2)
    {
      if (*(v26 + 128) && v88)
      {
        goto LABEL_153;
      }
    }

    else
    {
      if (v89 == 5)
      {
        v35 = *(v26 + 96);
        if (v35)
        {
LABEL_139:
          v345 = v67;
          LODWORD(v364) = 0;
          HIDWORD(v364) = v44 - v355;
          LODWORD(v365) = v362;
          HIDWORD(v365) = v355 - v352;
          if (v49)
          {
            v91 = 0;
          }

          else
          {
            v91 = &v364;
          }

          v92 = img_blocks_create(*(v26 + 136), 0, v91, v35);
          if (!v92)
          {
            goto LABEL_609;
          }

          v94 = v92;
          v88 = v92->i64[1];
          if (v88 || (v88 = *(v26 + 112)) != 0)
          {
            v96 = v359;
            v95 = v360;
            v97 = a12;
            if (v92[2].i64[1] == 1)
            {
              v98 = *v92[5].i64[0];
              if (v98)
              {
                v99 = v355;
                v100 = malloc_type_calloc(1uLL, 0x88uLL, 0x10F00409D9D9E87uLL);
                v102 = v100;
                if (v100)
                {
                  *(v100 + 22) = v353;
                  *(v100 + 23) = v351;
                  *(v100 + 24) = a12;
                  v100[14] = 0;
                  v100[15] = v94;
                  v100[13] = 0;
                  v100[10] = 0;
                  v100[2] = v94[2];
                  v103 = v94[3];
                  v100[3] = v103;
                  *(v100 + 8) = *(v94 + 14);
                  v104 = *(v94 + 17);
                  *(v100 + 9) = v103 - (*(v94 + 15) + v104);
                  *(v100 + 10) = *(v94 + 16);
                  *(v100 + 11) = v104;
                  v105 = *v94[10];
                  v100[7] = v105;
                  v106 = *v94[11];
                  *(v100 + 12) = v106;
                  if (*(v26 + 24) && (v107 = (*v88 >> 2) & 3, v107 >= 2))
                  {
                    v108 = v347;
                    if (v107 != 2)
                    {
                      goto LABEL_291;
                    }

                    *v100 = *(*(v88 + 1) + 8);
                    v100[8] = v105;
                  }

                  else
                  {
                    v106 = 0;
                    *v100 = **(v88 + 1);
                    v100[8] = 0;
                    v108 = v347;
                  }

                  goto LABEL_290;
                }

                CGImageBlockSetRelease(*v94);
                free(v94);
LABEL_301:
                img_release_resources(v26);
                CGPostError("%s: Cannot allocate memory", v187, v188, v189, v190, v191, v192, v193, v357);
                return v102;
              }
            }

            else
            {
              LOBYTE(v98) = 0;
            }
          }

          else
          {
            LOBYTE(v98) = 1;
            v95 = v360;
            v97 = a12;
          }

          v382 = 0u;
          v383 = 0u;
          v380 = 0u;
          v381 = 0u;
          v378 = 0u;
          v379 = 0u;
          v376 = 0u;
          v377 = 0u;
          memset(v375, 0, sizeof(v375));
          v373 = 0u;
          v374 = 0u;
          v371 = 0u;
          v372 = 0u;
          v369 = 0u;
          v370 = 0u;
          v367 = 0u;
          *&v368 = 0;
          *(&v368 + 1) = img_decode_end;
          *&v370 = vmovn_s64(v92[1]);
          v177 = *(v26 + 16);
          if (v177)
          {
            v178 = *(*(v177 + 24) + 48);
          }

          else
          {
            v178 = 1;
          }

          *(&v369 + 4) = __PAIR64__(*(v26 + 64), v178);
          HIDWORD(v369) = *(v26 + 24);
          if (v92[2].i64[1] != 1 || v92[3].i64[0] != 1 || (v179 = img_raw_read, !*v92[5].i64[0]))
          {
            v179 = img_blocks_read;
          }

          v344 = a13;
          v180 = *(v26 + 128);
          *&v368 = v179;
          *&v373 = v180;
          *(&v374 + 1) = v92[1].i64[0];
          *&v375[0] = v178;
          v166 = vextq_s8(*(v26 + 136), *(v26 + 136), 8uLL);
          *(v375 + 8) = v166;
          *(&v375[1] + 1) = v92 + 56;
          *(&v377 + 1) = v92;
          *(&v373 + 1) = (v92[1].i64[0] * *(v26 + 72) + 7) >> 3;
          if (v49)
          {
            v167 = 0;
            v168 = v362;
            v181 = v347;
            v149 = v345;
            v169 = v355;
          }

          else
          {
            v182 = v92[3].i32[3];
            v167 = v92[3].i32[2];
            v168 = v92[4].i32[0] + v167;
            v169 = v95 - v182;
            v352 = v95 - (v182 + v92[4].i32[1]);
            v181 = v347;
            v149 = v345;
          }

          if (v98)
          {
            v183 = &v367;
            v184 = v348;
            v185 = v167;
            goto LABEL_424;
          }

          v87 = a13;
LABEL_285:
          v341 = v167;
          v349 = v168 - v167;
          v343 = v169 - v352;
          v183 = &v367;
          v350 = v88;
          goto LABEL_482;
        }
      }

      if (v88)
      {
        if (v89 != 4)
        {
          if (v89 == 5)
          {
            v35 = *(v26 + 96);
            goto LABEL_139;
          }

LABEL_153:
          v99 = v355;
          v109 = malloc_type_calloc(1uLL, 0x88uLL, 0x10F00409D9D9E87uLL);
          v102 = v109;
          if (!v109)
          {
            goto LABEL_301;
          }

          *(v109 + 22) = v353;
          *(v109 + 23) = v351;
          *(v109 + 24) = a12;
          v109[14] = 0;
          v109[15] = 0;
          v109[13] = *(v26 + 40);
          v109[10] = 0;
          v110 = *v26;
          v109[2] = *v26;
          v111 = *(v26 + 8);
          v109[3] = v111;
          if (v42)
          {
            v110 = *(v26 + 120);
            v112 = *v110;
            v140 = v110[1];
            v141 = v110 + 2;
            LODWORD(v110) = v110[2];
            v114 = v141[1];
            v113 = v111 - (v140 + v114);
          }

          else
          {
            v112 = 0;
            v113 = 0;
            v114 = v111;
          }

          v108 = v347;
          *(v109 + 8) = v112;
          *(v109 + 9) = v113;
          *(v109 + 10) = v110;
          *(v109 + 11) = v114;
          v109[7] = **(v26 + 136);
          *(v109 + 12) = **(v26 + 144);
          v96 = v359;
          if (*(v26 + 24))
          {
            v142 = (*v88 >> 2) & 3;
            if (v142 > 1)
            {
              if (v142 != 2)
              {
LABEL_291:
                v102[9] = 0;
                v102[1] = v88;
                if (!v108)
                {
                  return v102;
                }

                v186 = v351;
                if ((v29 & 1) == 0)
                {
                  return v102;
                }

                goto LABEL_603;
              }

              *v109 = *(*(v88 + 1) + 8);
              v109[8] = **(v26 + 136);
              v106 = **(v26 + 144);
LABEL_290:
              *(v102 + 13) = v106;
              goto LABEL_291;
            }

            if (v142)
            {
              *v109 = *(*(v88 + 1) + 8);
              v109[8] = *(*(v26 + 136) + 8);
              v106 = *(*(v26 + 144) + 4);
              goto LABEL_290;
            }
          }

          v106 = 0;
          *v109 = **(v88 + 1);
          v109[8] = 0;
          goto LABEL_290;
        }

        v345 = v67;
        v129 = CGAccessSessionCreate(*(v26 + 136));
        if (!v129)
        {
          img_release_resources(v26);
          CGPostError("%s: Cannot create session", v170, v171, v172, v173, v174, v175, v176, v357);
          return 0;
        }

        v130 = v129;
        if ((v29 & 1) != 0 || (v131 = v129[1]) == 0)
        {
          v166 = img_stream_stage(&v367, v26, v129);
          v167 = 0;
          v95 = v360;
          v168 = v362;
          v169 = v355;
          goto LABEL_285;
        }

        v132 = malloc_type_calloc(1uLL, 0x88uLL, 0x10F00409D9D9E87uLL);
        v102 = v132;
        if (!v132)
        {
          CGAccessSessionRelease(v130);
          goto LABEL_301;
        }

        v133 = *(v26 + 136);
        *(v132 + 22) = v353;
        *(v132 + 23) = v351;
        *(v132 + 24) = a12;
        v132[15] = 0;
        v132[16] = v133;
        v132[13] = 0;
        v132[14] = v130;
        v132[10] = 0;
        v134 = *v26;
        v132[2] = *v26;
        v135 = *(v26 + 8);
        v132[3] = v135;
        if (v42)
        {
          v134 = *(v26 + 120);
          v136 = *v134;
          v334 = v134[1];
          v335 = v134 + 2;
          LODWORD(v134) = v134[2];
          v138 = v335[1];
          v137 = v135 - (v334 + v138);
        }

        else
        {
          v136 = 0;
          v137 = 0;
          v138 = v135;
        }

        *(v132 + 8) = v136;
        *(v132 + 9) = v137;
        *(v132 + 10) = v134;
        *(v132 + 11) = v138;
        v132[7] = v131;
        v336 = *(v26 + 144);
        *(v132 + 12) = v336;
        if (*(v26 + 24) && (v337 = (*v88 >> 2) & 3, v337 >= 2))
        {
          if (v337 != 2)
          {
            goto LABEL_627;
          }

          v338 = (*(v88 + 1) + 8);
        }

        else
        {
          v131 = 0;
          v336 = 0;
          v338 = *(v88 + 1);
        }

        *v132 = *v338;
        v132[8] = v131;
        *(v132 + 13) = v336;
LABEL_627:
        v132[9] = 0;
        v132[1] = v88;
        return v102;
      }
    }
  }

  v346 = v49;
  v367 = 0u;
  v368 = 0u;
  if (v67 <= 7 && (v42 & 0xC) == 0)
  {
    v116 = v42;
  }

  else
  {
    v116 = v42 | 0x100;
  }

  v369 = 0uLL;
  v370 = 0uLL;
  v371 = 0uLL;
  v372 = 0uLL;
  v373 = 0uLL;
  v374 = 0uLL;
  memset(v375, 0, sizeof(v375));
  v376 = 0uLL;
  v377 = 0uLL;
  v378 = 0uLL;
  v379 = 0uLL;
  v380 = 0uLL;
  v381 = 0uLL;
  v382 = 0uLL;
  v383 = 0uLL;
  LODWORD(v369) = 1024;
  *(&v368 + 1) = img_decode_end;
  v117 = 48;
  if (v90 >= 3)
  {
    v117 = 0;
  }

  v118 = 8;
  if (v90 < 3)
  {
    v118 = 56;
  }

  v119 = *(v26 + v117);
  v120 = *(v26 + v118);
  *&v370 = __PAIR64__(v120, v119);
  v121 = *(v26 + 16);
  if (v121)
  {
    v122 = *(*(v121 + 24) + 48);
  }

  else
  {
    v122 = 1;
  }

  v123 = *(v26 + 120);
  *&v373 = *(v26 + 128);
  *(&v374 + 1) = v119;
  v124 = *(v26 + 24);
  DWORD1(v369) = v122;
  HIDWORD(v369) = v124;
  v125 = *(v26 + 136);
  *(v375 + 8) = vextq_s8(v125, v125, 8uLL);
  *&v375[0] = v122;
  *(&v375[1] + 1) = v123;
  *&v379 = a12;
  if (!v121)
  {
    v127 = 0;
    v126 = 0;
    goto LABEL_211;
  }

  v126 = 0;
  v127 = 0;
  if (v124 <= 2)
  {
    if (!v124)
    {
      goto LABEL_211;
    }

    if (v124 != 1)
    {
      if (v124 == 2)
      {
        if ((v116 & 0x100) != 0)
        {
          v128 = 8;
          goto LABEL_206;
        }

LABEL_182:
        v126 = 0;
LABEL_207:
        v122 = (v122 + 1);
        v127 = 0x200000;
        goto LABEL_211;
      }

LABEL_194:
      CGPostError("%s: Assertion failed - unknown alpha", v33, v34, v35, v36, v37, v38, v39, "img_decode_stage");
      goto LABEL_224;
    }

    if ((v116 & 0x100) == 0)
    {
      goto LABEL_193;
    }

    v139 = 8;
LABEL_209:
    HIDWORD(v369) = v139;
    v126 = -1;
    goto LABEL_210;
  }

  if (v124 > 9)
  {
    goto LABEL_194;
  }

  if (((1 << v124) & 0x360) != 0)
  {
    goto LABEL_211;
  }

  if (v124 != 3)
  {
    if (v124 == 4)
    {
      if ((v116 & 0x100) != 0)
      {
        v128 = 9;
LABEL_206:
        HIDWORD(v369) = v128;
        v126 = -1;
        goto LABEL_207;
      }

      goto LABEL_182;
    }

    goto LABEL_194;
  }

  if ((v116 & 0x100) != 0)
  {
    v139 = 9;
    goto LABEL_209;
  }

LABEL_193:
  v126 = 0;
LABEL_210:
  v122 = (v122 + 1);
  v127 = 0x400000;
LABEL_211:
  v143 = v362;
  v144 = v44;
  if ((v89 - 1) < 2)
  {
    v340 = v44;
    v342 = v362;
    v147 = *v88;
    v148 = v147 >> 22;
    *(&v373 + 1) = ((v147 >> 22) * v119 + 7) >> 3;
    v93 = (v147 >> 16) & 0x3F;
    v344 = a13;
    v149 = v67;
    if (v93 == 32)
    {
      if (v27 <= 8)
      {
        v150 = v127 | 0x81;
        LODWORD(v151) = 8;
LABEL_241:
        v126 = -1;
        goto LABEL_243;
      }

      if (v27 <= 0x10)
      {
        v150 = v127 | 0x82;
        LODWORD(v151) = 16;
        goto LABEL_241;
      }

      v150 = v127 | 0x80;
      LODWORD(v151) = 32;
    }

    else
    {
      v160 = v27 < 9 || v93 < 9;
      v161 = !v160;
      if (v160)
      {
        v162 = 1;
      }

      else
      {
        v162 = 2;
      }

      v150 = v162 | v127;
      v151 = 16;
      if (!v161)
      {
        v151 = 8;
      }

      if (v151 != v93)
      {
        v126 = -1;
      }
    }

LABEL_243:
    v97 = a12;
    DWORD2(v369) = v151;
    if (v93 * v122 == v148)
    {
      v163 = v126;
    }

    else
    {
      if (v126)
      {
        v163 = v126;
      }

      else
      {
        v163 = -1;
      }

      if ((v147 & 0xC0) != 0x80)
      {
        v150 |= 0x100000u;
      }
    }

    v164 = (v147 >> 4) & 3;
    if (v164 == 2)
    {
      if (v93 == 32)
      {
        if (v163)
        {
          v150 |= 0x200u;
          LODWORD(v93) = 32;
          goto LABEL_400;
        }
      }

      else
      {
        if (v93 != 16)
        {
          goto LABEL_265;
        }

        if (v163)
        {
          v150 |= 0x100u;
          LODWORD(v93) = 16;
          goto LABEL_400;
        }
      }
    }

    else
    {
      if (v164 == 1)
      {
        if (v148 == 16)
        {
          v165 = 0;
          v150 |= 0x100u;
          *&v374 = 4096;
          v148 = 16;
LABEL_267:
          if (v163)
          {
            goto LABEL_391;
          }

          goto LABEL_399;
        }

        if (v148 == 32)
        {
          if (v163)
          {
            v150 |= 0x200u;
            v148 = 32;
LABEL_400:
            *&v368 = img_decode_read;
            v212 = v122;
            v213 = v148;
            v214 = 0;
LABEL_401:
            *&v376 = decode_create(v212, v93, v213, v214, v150, v125);
LABEL_402:
            v211 = v351;
            LODWORD(v44) = v360;
            goto LABEL_403;
          }

          goto LABEL_261;
        }

LABEL_265:
        v165 = 0;
        goto LABEL_267;
      }

      if (v163)
      {
        goto LABEL_400;
      }

      if (v93 == 32)
      {
LABEL_261:
        v163 = 0x2000;
        goto LABEL_288;
      }

      if (v93 != 16)
      {
        goto LABEL_399;
      }

      v163 = 0;
    }

LABEL_288:
    *&v374 = v163;
    goto LABEL_399;
  }

  if (v90 < 2)
  {
    goto LABEL_304;
  }

  if (v89 != 5)
  {
LABEL_224:
    img_release_resources(v26);
    CGPostError("%s: Cannot read image", v152, v153, v154, v155, v156, v157, v158, v357);
    return 0;
  }

  if ((v116 & 2) != 0 && (v362 < v119 || v44 < v120) && v125.n128_u64[0] && *(v125.n128_u64[0] + 128) == 1)
  {
    v145 = v44;
    v386 = v362;
    v387 = v44;
    v146 = img_blocks_create(v125.n128_i64[0], &v386, 0, 0);
    if (v146)
    {
      *(&v377 + 1) = v146;
      *(&v375[1] + 1) = v146 + 7;
      v119 = v146[2];
      *(&v374 + 1) = v119;
      LODWORD(v370) = v119;
      DWORD1(v370) = v146[3];
      v143 = v362;
      v144 = v145;
      goto LABEL_304;
    }

    LODWORD(v119) = v370;
    v143 = v362;
    v144 = v145;
  }

  *(&v367 + 1) = img_blocks_extent;
LABEL_304:
  v148 = *(v26 + 72);
  *(&v373 + 1) = (v119 * v148 + 7) >> 3;
  v194 = *(v26 + 88);
  v340 = v144;
  v342 = v143;
  if (!v194)
  {
    v198 = *(v26 + 16);
    if (v198)
    {
      v165 = 0;
      goto LABEL_312;
    }

    v125.n128_u64[0] = 1065353216;
LABEL_321:
    *v385 = v125.n128_u64[0];
    v165 = v385;
    v126 = -1;
LABEL_322:
    LODWORD(v44) = v360;
    goto LABEL_323;
  }

  if (v122 >= 1)
  {
    v195 = v122;
    v196 = v385;
    do
    {
      v197 = *v194++;
      v125.n128_u64[1] = *&v197.f64[1];
      v125.n128_u64[0] = vcvt_f32_f64(v197);
      *v196 = v125.n128_u64[0];
      v196 += 2;
      --v195;
    }

    while (v195);
  }

  v198 = *(v26 + 16);
  if (v198)
  {
    v165 = v385;
LABEL_312:
    if ((CGColorSpaceGetType(v198) & 0xFFFFFFFD) == 5)
    {
      v127 |= 0x400u;
    }

    if (v165)
    {
      v126 = -1;
    }

    goto LABEL_322;
  }

  v125.n128_u32[0] = v385[0];
  if (*v385 == 1.0 && *&v385[1] == 0.0)
  {
    v125.n128_u64[0] = 0x3F80000000000000;
    goto LABEL_321;
  }

  LODWORD(v44) = v360;
  if (*v385 != 1.0 || *&v385[1] == 0.0)
  {
    *v385 = __PAIR64__(v385[0], v385[1]);
    v165 = v385;
    v126 = -1;
  }

  else
  {
    v165 = v385;
  }

LABEL_323:
  v93 = *(v26 + 64);
  v199 = *(v26 + 80);
  v200 = v199 & 0x100;
  v344 = a13;
  if ((v199 & 0x100) != 0 && v93 == 32)
  {
    v149 = v67;
    if (v27 <= 8)
    {
      v150 = v127 | 0x81;
      LODWORD(v201) = 8;
LABEL_346:
      v126 = -1;
      goto LABEL_348;
    }

    if (v27 <= 0x10)
    {
      v150 = v127 | 0x82;
      LODWORD(v201) = 16;
      goto LABEL_346;
    }

    v150 = v127 | 0x80;
    LODWORD(v201) = 32;
  }

  else
  {
    v149 = v67;
    if ((v199 & 0x100) != 0 && v93 == 16)
    {
      v150 = v127 | 4;
      LODWORD(v201) = 16;
    }

    else
    {
      v203 = v27 < 9 || v93 < 9;
      v204 = !v203;
      if (v203)
      {
        v205 = 1;
      }

      else
      {
        v205 = 2;
      }

      v150 = v205 | v127;
      v201 = 16;
      if (!v204)
      {
        v201 = 8;
      }

      if (v201 != v93)
      {
        v126 = -1;
      }
    }
  }

LABEL_348:
  v97 = a12;
  DWORD2(v369) = v201;
  if (v122 * v93 != v148)
  {
    if (!v126)
    {
      v126 = -1;
    }

    if ((v199 & 0x1Fu) <= 6 && ((1 << (v199 & 0x1F)) & 0x54) != 0)
    {
      v150 |= 0x100000u;
    }
  }

  v206 = ((v199 & 0x7000u) - 4096) >> 12;
  if (v206 <= 1)
  {
    if (v206)
    {
      if (v206 == 1)
      {
        v150 |= 0x200u;
        if (!v126)
        {
          v207 = (v93 == 8) << 13;
          if (v93 != 8 && v93 != 32)
          {
            goto LABEL_387;
          }

          goto LABEL_386;
        }

        goto LABEL_380;
      }

LABEL_369:
      if (!v126)
      {
        v207 = 4096;
        if (v93 != 16)
        {
          v207 = 0x2000;
        }

        if (v93 != 32 && v93 != 16)
        {
          v208 = 0;
          goto LABEL_388;
        }

LABEL_386:
        v208 = 0;
        *&v374 = v207;
        goto LABEL_388;
      }

LABEL_380:
      v208 = v126;
      goto LABEL_388;
    }

    v150 |= v200 ^ 0x100;
    if (v126)
    {
      goto LABEL_380;
    }

    if (v93 != 8)
    {
      if (v93 == 16)
      {
        v207 = 0;
        goto LABEL_386;
      }

      goto LABEL_387;
    }

    goto LABEL_385;
  }

  if (v206 == 2)
  {
    if (v126)
    {
      goto LABEL_380;
    }

    if (v93 != 16)
    {
LABEL_387:
      v208 = -1;
      goto LABEL_388;
    }

LABEL_385:
    v207 = 4096;
    goto LABEL_386;
  }

  if (v206 != 3)
  {
    goto LABEL_369;
  }

  if (v126)
  {
    v208 = v126;
  }

  else
  {
    v208 = -1;
  }

  if (!v126 && v93 == 32)
  {
    v207 = 0x2000;
    goto LABEL_386;
  }

LABEL_388:
  if (*(&v375[0] + 1) < 1 || *(&v375[0] + 1) > ((*(&v373 + 1) + 63) & 0xFFFFFFFFFFFFFFBFLL))
  {
    DWORD2(v370) = DWORD2(v373);
    if (v208)
    {
      goto LABEL_391;
    }

LABEL_399:
    *&v368 = img_raw_read;
    v211 = v351;
LABEL_403:
    v184 = v348;
    goto LABEL_404;
  }

  DWORD2(v370) = DWORD2(v375[0]);
  if (!v208)
  {
    goto LABEL_399;
  }

LABEL_391:
  if (!v165)
  {
    goto LABEL_400;
  }

  if (HIDWORD(v369) == 1)
  {
    HIDWORD(v369) = 3;
    *&v368 = img_decode_read_alpha;
    *&v376 = decode_create(v122, v93, v148, 0, v150, v125);
    v237 = v150 & 0x400487;
    if (DWORD2(v369) == 16)
    {
      v237 = v150 & 0x400487 | 0x100;
    }

    if (DWORD2(v369) == 32)
    {
      v238 = v150 & 0x400487 | 0x200;
    }

    else
    {
      v238 = v237;
    }

    *(&v376 + 1) = decode_create(v122, DWORD2(v369), DWORD2(v369) * v122, v165, v238, v236);
    goto LABEL_402;
  }

  if (HIDWORD(v369) == 8)
  {
    HIDWORD(v369) = 9;
    *&v368 = img_decode_read_alpha;
    *&v376 = decode_create(v122, v93, v148, 0, v150, v125);
    v233 = v150 & 0x487;
    if (DWORD2(v369) == 16)
    {
      v233 = v150 & 0x487 | 0x100;
    }

    if (DWORD2(v369) == 32)
    {
      v234 = v150 & 0x487 | 0x200;
    }

    else
    {
      v234 = v233;
    }

    *(&v376 + 1) = decode_create(DWORD1(v369), DWORD2(v369), DWORD1(v369) * DWORD2(v369), v165 + ((v150 >> 18) & 8), v234, v232);
    *&v377 = decode_create(1, DWORD2(v369), SDWORD2(v369), &v165[((v150 << 9) >> 31) & (2 * DWORD1(v369))], v234, v235);
    goto LABEL_402;
  }

  if (HIDWORD(v369) != 2)
  {
    *&v368 = img_decode_read;
    v212 = v122;
    v213 = v148;
    v214 = v165;
    goto LABEL_401;
  }

  HIDWORD(v369) = 4;
  *&v368 = img_decode_read_alpha;
  *&v376 = decode_create(v122, v93, v148, 0, v150, v125);
  v210 = v150 & 0x200487;
  if (DWORD2(v369) == 32)
  {
    v210 |= 0x200u;
    v211 = v351;
    v184 = v348;
  }

  else
  {
    v211 = v351;
    v184 = v348;
    if (DWORD2(v369) == 16)
    {
      v210 |= 0x100u;
    }
  }

  *(&v376 + 1) = decode_create(v122, DWORD2(v369), DWORD2(v369) * v122, v165, v210, v209);
  LODWORD(v44) = v360;
LABEL_404:
  if ((v116 & 0x28) == 0x28)
  {
    goto LABEL_630;
  }

  v183 = &v367;
  if ((v116 & 0x80) != 0)
  {
    v183 = img_interpolate_stage(&v384, &v367, v26, 1, *v26, *(v26 + 8), v97, a14);
    LODWORD(v44) = v360;
  }

  if ((v116 & 0x10) != 0)
  {
    _CGHandleAssert("img_colormask_stage", 2270, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented", v37, v38, v39, v339);
  }

  if ((v116 & 0x28) == 8)
  {
LABEL_630:
    _CGHandleAssert("img_colorindex_stage", 2380, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented", v37, v38, v39, v339);
  }

  v181 = v347;
  if ((v116 & 2) == 0)
  {
    v215 = v44;
    v168 = v362;
    if ((v116 & 4) == 0)
    {
      goto LABEL_411;
    }

LABEL_415:
    _CGHandleAssert("img_colormatch_stage", 2796, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented", v37, v38, v39, v339);
  }

  v216 = img_interpolate_stage((v183 + 18), v183, v26, v211, v342, v340, v97, a14);
  if (v216 == v183)
  {
    v168 = *(v183 + 12);
    v215 = *(v183 + 13);
    if (v355 - v352 == v360)
    {
      v224 = *(v183 + 13);
    }

    else
    {
      v231 = v215 / v360;
      v224 = vcvtpd_s64_f64(v231 * v355);
      v352 = vcvtmd_s64_f64(v231 * v352);
      if (v215 < v224)
      {
        v224 = *(v183 + 13);
      }
    }

    v355 = v224;
    if ((v116 & 4) == 0)
    {
      goto LABEL_411;
    }

    goto LABEL_415;
  }

  v215 = v360;
  v168 = v362;
  v183 = v216;
  if ((v116 & 4) != 0)
  {
    goto LABEL_415;
  }

LABEL_411:
  if (v346)
  {
    v185 = 0;
    v95 = v215;
    LODWORD(v362) = v168;
    v169 = v355;
  }

  else
  {
    v169 = v355;
    v185 = 0;
    if (!*(v26 + 120))
    {
      v217 = (v215 - v355) & 0xFFFFFFF0;
      v218 = v215 - v352 + 15;
      if ((v218 | 0xF) >= v215)
      {
        v219 = v215;
      }

      else
      {
        v219 = v218 & 0xFFFFFFF0;
      }

      v220 = v219 - v217 + 32;
      v221 = v215 - v219;
      if (v220 >= v215)
      {
        v217 = 0;
        v221 = 0;
      }

      v352 = v221;
      v169 = v215 - v217;
    }

    v95 = v215;
    LODWORD(v362) = v168;
  }

LABEL_424:
  v222 = v95;
  if (!v149)
  {
    goto LABEL_469;
  }

  v223 = *(v183 + 10);
  if (v223 >= 9)
  {
    if (v149 == 4)
    {
      v149 = 3;
    }

    else if (v149 == 2)
    {
      v149 = 1;
    }
  }

  v225 = *(v183 + 11);
  if (v149 == v225)
  {
    goto LABEL_469;
  }

  *(v183 + 71) = 0;
  *(v183 + 536) = 0u;
  *(v183 + 552) = 0u;
  *(v183 + 504) = 0u;
  *(v183 + 520) = 0u;
  *(v183 + 472) = 0u;
  *(v183 + 488) = 0u;
  *(v183 + 440) = 0u;
  *(v183 + 456) = 0u;
  *(v183 + 408) = 0u;
  *(v183 + 424) = 0u;
  *(v183 + 376) = 0u;
  *(v183 + 392) = 0u;
  *(v183 + 344) = 0u;
  *(v183 + 360) = 0u;
  *(v183 + 312) = 0u;
  *(v183 + 328) = 0u;
  *(v183 + 296) = 0u;
  *(v183 + 36) = v183;
  if (*(v183 + 1))
  {
    *(v183 + 37) = img_extent;
  }

  *(v183 + 38) = img_alphamerge_read;
  *(v183 + 39) = img_alphamerge_end;
  *(v183 + 80) = 512;
  v226 = *(v183 + 6);
  *(v183 + 42) = v226;
  v227 = *(v183 + 9);
  *(v183 + 81) = v227;
  *(v183 + 82) = v223;
  *(v183 + 83) = v149;
  if (v225 > 9)
  {
    goto LABEL_453;
  }

  v228 = 1;
  if (((1 << v225) & 0x1E) == 0)
  {
    v229 = 1 << v225;
    if ((v229 & 0x301) != 0)
    {
      v228 = 0;
      goto LABEL_439;
    }

    if ((v229 & 0x60) != 0)
    {
      goto LABEL_469;
    }

LABEL_453:
    CGPostError("%s: Assertion failed - unknown source alpha", v93, v34, v35, v36, v37, v38, v39, "img_alphamerge_stage");
    goto LABEL_469;
  }

LABEL_439:
  if (v149 <= 9)
  {
    if (((1 << v149) & 0x1E) != 0)
    {
      if ((v228 & 1) == 0)
      {
        *(v183 + 47) = 2;
        v230 = v223 / 8;
        *(v183 + 86) = v227 * v226 * v230;
        *(v183 + 87) = v230 * v226;
LABEL_447:
        *(v183 + 50) = v97;
        v183 += 18;
        goto LABEL_469;
      }

      goto LABEL_446;
    }

    if (((1 << v149) & 0x301) != 0)
    {
      if (v228)
      {
        *(v183 + 47) = 1;
        *(v183 + 86) = (v226 + v226 * v227) * (v223 / 8);
        goto LABEL_447;
      }

LABEL_446:
      *(v183 + 47) = 0;
      goto LABEL_447;
    }
  }

  CGPostError("%s: Assertion failed - unknown destination alpha", v93, v34, v35, v36, v37, v38, v39, "img_alphamerge_stage");
LABEL_469:
  if (v181)
  {
    v239 = *v181;
    ComponentType = CGImageGetComponentType(*(v26 + 40));
    v246 = v239 == 34082816;
    if (v239 == 34082816)
    {
      v247 = ComponentType;
    }

    else
    {
      v247 = v97;
    }

    if (v239 == 34082816 && v247 == 5)
    {
      v247 = 5;
      *(v183 + 14) = 5;
      v246 = 1;
    }

    if (!v184)
    {
      goto LABEL_480;
    }

    goto LABEL_479;
  }

  CGImageGetComponentType(*(v26 + 40));
  v246 = 0;
  v247 = v97;
  if (v184)
  {
LABEL_479:
    v350 = img_data_depth(v183, v247, v246, v241, v242, v243, v244, v245);
    if (v350)
    {
      goto LABEL_480;
    }

    (*(v183 + 3))(v183);
    img_release_resources(v26);
    CGPostError("%s: Cannot process image", v281, v282, v283, v284, v285, v286, v287, v357);
    return 0;
  }

LABEL_480:
  v345 = v149;
  v341 = v185;
  v349 = v168 - v185;
  v343 = v169 - v352;
  if (!v183)
  {
    v249 = 0;
    v248 = 0;
    v255 = 16;
    v254 = 1;
    v95 = v222;
    v87 = v344;
    goto LABEL_491;
  }

  v95 = v222;
  v87 = v344;
LABEL_482:
  v248 = 0;
  v249 = 0;
  v250 = 0;
  v251 = v183;
  do
  {
    v252 = *(v251 + 14);
    if (v252)
    {
      v248 += v252;
      ++v250;
      v249 |= *(v251 + 8);
    }

    v253 = *(v251 + 15);
    if (v253)
    {
      v248 += v253;
      ++v250;
      v249 |= *(v251 + 8);
    }

    v251 = *v251;
  }

  while (v251 && (v248 & 0x80000000) == 0);
  v254 = 0;
  v255 = 16 * v250 + 16;
LABEL_491:
  v361 = v95;
  if (*(v26 + 128))
  {
    v256 = 0;
LABEL_493:
    v257 = 0;
    goto LABEL_494;
  }

  v256 = *(v26 + 136);
  if (!v256)
  {
    goto LABEL_493;
  }

  v261 = *(v256 + 168);
  if (!v261)
  {
    goto LABEL_493;
  }

  v257 = v261(*(v256 + 24), v166);
LABEL_494:
  v258 = v87;
  v356 = v169;
  v259 = (v248 + v257);
  if (v259 < 1)
  {
    LODWORD(v260) = 1;
    if ((v259 & 0x80000000) != 0)
    {
LABEL_578:
      (*(v183 + 3))(v183, v166);
      img_release_resources(v26);
      CGPostError("%s: Cannot allocate memory", v312, v313, v314, v315, v316, v317, v318, v357);
      return 0;
    }
  }

  else
  {
    v260 = (4096 - v255) / v259;
    if (!v260)
    {
      LODWORD(v259) = v259 + v255;
      if ((v259 & 0x80000000) != 0)
      {
        goto LABEL_578;
      }
    }
  }

  if (v260)
  {
    v262 = 136;
  }

  else
  {
    v262 = (v259 + 136);
  }

  v263 = malloc_type_calloc(1uLL, v262, 0x10F00409D9D9E87uLL);
  if (!v263)
  {
    goto LABEL_578;
  }

  v102 = v263;
  v263[22] = v353;
  v263[23] = v351;
  v263[24] = a12;
  if (v259)
  {
    v267 = v260 <= 1 ? 1 : v260;
    if ((v254 & 1) == 0)
    {
      v268 = v263 + 34;
      if (v260)
      {
        v268 = v385;
      }

      v269 = (v268 + 15) & 0xFFFFFFFFFFFFFFF0;
      v270 = v183;
      do
      {
        v271 = *(v270 + 14);
        if (v271)
        {
          *(v270 + 16) = v267;
          *(v270 + 9) = v269;
          v269 += (v271 * v267 + 15) & 0xFFFFFFFFFFFFFFF0;
        }

        v272 = *(v270 + 15);
        if (v272)
        {
          *(v270 + 16) = v267;
          *(v270 + 10) = v269;
          v269 += (v272 * v267 + 15) & 0xFFFFFFFFFFFFFFF0;
        }

        v270 = *v270;
      }

      while (v270);
    }
  }

  v273 = *v350;
  v274 = ((((*v350 >> 22) * v349) >> 3) + 15) & 0x3FFFFFF0;
  if (v345)
  {
    v275 = (v273 >> 2) & 3;
    v276 = ((((((BYTE2(v273) & 0x3F) + 7) & 0x78) * v349) >> 3) + 15) & 0x3FFFFFF0;
    v277 = v276 + v274;
    if (v275 != 1)
    {
      v276 = 0;
      v277 = ((((*v350 >> 22) * v349) >> 3) + 15) & 0x3FFFFFF0;
    }

    if (v275 == 2)
    {
      v276 = ((((*v350 >> 22) * v349) >> 3) + 15) & 0x3FFFFFF0;
    }

    v358 = v276;
    v278 = v275 != 2 && v275 == 1;
    v279 = v275 != 2 && v275 != 1;
    v354 = v279;
    if (v275 == 2)
    {
      v280 = ((((*v350 >> 22) * v349) >> 3) + 15) & 0x3FFFFFF0;
    }

    else
    {
      v280 = v277;
    }
  }

  else
  {
    v358 = 0;
    v278 = 0;
    v354 = 1;
    v280 = ((((*v350 >> 22) * v349) >> 3) + 15) & 0x3FFFFFF0;
  }

  v87 = v258;
  if (v249 && *MEMORY[0x1E695E0C0] == 1)
  {
    v288 = "";
    v289 = "DECODE";
    if ((v249 & 0x400) == 0)
    {
      v289 = "";
    }

    v290 = "|";
    if ((((v249 & 0x3FF) != 0) & (v249 >> 10)) != 0)
    {
      v291 = "|";
    }

    else
    {
      v291 = "";
    }

    v292 = "ALPHAM";
    if ((v249 & 0x200) == 0)
    {
      v292 = "";
    }

    if ((((v249 & 0x1FF) != 0) & (v249 >> 9)) != 0)
    {
      v293 = "|";
    }

    else
    {
      v293 = "";
    }

    v294 = "ALPHA";
    if ((v249 & 0x100) == 0)
    {
      v294 = "";
    }

    if (((v249 != 0) & (v249 >> 8)) != 0)
    {
      v295 = "|";
    }

    else
    {
      v295 = "";
    }

    v296 = "COLORMASK";
    if ((v249 & 0x10) == 0)
    {
      v296 = "";
    }

    if ((((v249 & 0xF) != 0) & (v249 >> 4)) != 0)
    {
      v297 = "|";
    }

    else
    {
      v297 = "";
    }

    v298 = "COLORINDEX";
    if ((v249 & 8) == 0)
    {
      v298 = "";
    }

    if ((((v249 & 7) != 0) & (v249 >> 3)) != 0)
    {
      v299 = "|";
    }

    else
    {
      v299 = "";
    }

    v300 = "COLORSPACE";
    if ((v249 & 4) == 0)
    {
      v300 = "";
    }

    if ((((v249 & 3) != 0) & (v249 >> 2)) == 0)
    {
      v290 = "";
    }

    if ((v249 & 2) != 0)
    {
      v288 = "INTERP";
    }

    v301 = __str;
    snprintf(__str, 0x100uLL, "CGSImageData (%s%s%s%s%s%s%s%s%s%s%s%s%s)", v289, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v290, v288);
  }

  else
  {
    v301 = 0;
  }

  if (v256 && (v302 = *(v256 + 168)) != 0)
  {
    v303 = v302(*(v256 + 24)) + 15;
  }

  else
  {
    v303 = 15;
  }

  image_data_handle = create_image_data_handle(v280, v343, v303, v258, v301, v264, v265, v266);
  v102[9] = image_data_handle;
  if (!image_data_handle)
  {
    free(v102);
    goto LABEL_578;
  }

  *(v102 + 12) = v274;
  v102[10] = 0;
  v305 = image_data_handle[2];
  v102[7] = v305;
  if (v278)
  {
    v306 = v343;
    v102[8] = v305 + (v274 * v343);
    *(v102 + 13) = v358;
    v307 = v350;
    v308 = (*(v350 + 8) + 8);
    v186 = v351;
    v309 = v361;
    v310 = v341;
    v311 = v349;
  }

  else
  {
    v309 = v361;
    v311 = v349;
    if (v354)
    {
      v102[8] = 0;
      *(v102 + 13) = 0;
      v307 = v350;
      v308 = *(v350 + 8);
    }

    else
    {
      v102[8] = v305;
      *(v102 + 13) = v358;
      v307 = v350;
      v308 = (*(v350 + 8) + 8);
    }

    v186 = v351;
    v310 = v341;
    v306 = v343;
  }

  *v102 = *v308;
  v102[1] = v307;
  v102[2] = v362;
  v102[3] = v309;
  *(v102 + 8) = v310;
  *(v102 + 9) = v352;
  *(v102 + 10) = v311;
  *(v102 + 11) = v306;
  v319 = v309 - v356;
  v320 = *(v183 + 1);
  if (v320)
  {
    LODWORD(v364) = v310;
    HIDWORD(v364) = v309 - v356;
    v365 = __PAIR64__(v306, v311);
    if ((v320(v183, &v364) & 0x80000000) != 0)
    {
      CGSImageDataHandleRelease(v102[9]);
      free(v102);
      (*(v183 + 3))(v183);
LABEL_609:
      img_release_resources(v26);
      return 0;
    }
  }

  if (v306 >= 1 && *(v102 + 12) <= (0x7FFFFFFFu / v306) && *(v102 + 13) <= (0x7FFFFFFFu / v306))
  {
    v330 = 0;
    do
    {
      v321 = v330;
      v331 = (v306 - v330);
      if (v306 <= v330)
      {
        break;
      }

      v332 = *(v102 + 8);
      *&v386 = v102[7] + *(v102 + 12) * v321;
      if (v332 != 0.0)
      {
        *&v332 += *(v102 + 13) * v321;
      }

      v387 = v332;
      v333 = (*(v183 + 2))(v183, (v321 + v319), v331, &v386, v102 + 6, a14);
      v330 = v333 + v321;
    }

    while (v333 > 0);
  }

  else
  {
    v321 = 0;
  }

  if (v347)
  {
    if ((*(v347 + 1) & 0xF) == 0)
    {
      v322 = v102[1];
      if (!v322 || (*(v322 + 1) & 0xF) != 0)
      {
        if (CGImageGetComponentType(*(v26 + 40)) == 5)
        {
          v328 = 5;
        }

        else
        {
          v328 = 1;
        }

        v102[1] = img_data_depth(v183, v328, 1, v323, v324, v325, v326, v327);
      }
    }
  }

  (*(v183 + 3))(v183);
  img_release_resources(v26);
  v102[13] = 0;
  v102[14] = 0;
  v102[15] = 0;
  v99 = v306 - v321;
  v96 = v359;
  if (v306 <= v321)
  {
    v99 = 0;
  }

  else
  {
    if (v306 != *(v102 + 11))
    {
      *(v102 + 11) = 0;
LABEL_613:
      CGSImageDataHandleRelease(v102[9]);
      free(v102);
      return 0;
    }

    *(v102 + 9) += v99;
    *(v102 + 11) = v321;
    if (!v321)
    {
      goto LABEL_613;
    }
  }

  v108 = v347;
  if (!v347)
  {
    return v102;
  }

LABEL_603:
  if (*v108 != 134886228 && (v102[1] != v108 || v102[2] != v96 || v102[3] != v363))
  {
    return img_data_lock_depth(v102, v96, v363, v99, v108, v186, v87, v101);
  }

  return v102;
}