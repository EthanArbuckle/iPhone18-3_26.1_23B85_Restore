CGFloat *CGPDFShadingType3Init(CGPDFDictionary *a1, void *a2, _OWORD *a3)
{
  v5 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    a1 = *(a1 + 5);
  }

  if (CGColorSpaceGetType(a1) == 7)
  {
    return 0;
  }

  v6 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040C9B8900FuLL);
  __CFSetLastAllocationEventName();
  if (!v6)
  {
    return 0;
  }

  value = 0;
  *a2 = v6;
  *a3 = CGPDFShadingType3Init_type3_callbacks;
  if (v5)
  {
    v5 = *(v5 + 3);
  }

  if (!CGPDFDictionaryGetNumbers(v5, "Coords", v11, 6))
  {
    return 0;
  }

  v7 = v11[1];
  *v6 = v11[0];
  v6[1] = v7;
  v8 = v13;
  *(v6 + 4) = v12;
  *(v6 + 5) = v8;
  if (*&v7 < 0.0 || v8 < 0.0)
  {
    return 0;
  }

  if (!CGPDFDictionaryGetNumbers(v5, "Domain", (v6 + 3), 2))
  {
    v6[3] = xmmword_18439C780;
  }

  if (!CGPDFDictionaryGetObject(v5, "Function", &value))
  {
    return 0;
  }

  result = CGPDFShadingCreateShadingFunction(value, 1uLL);
  *(v6 + 8) = result;
  if (result)
  {
    if (!CGPDFDictionaryGetBooleans(v5, "Extend", v6 + 72, 2))
    {
      *(v6 + 36) = 0;
    }

    return 1;
  }

  return result;
}

void type3_release_info(int a1, void *a2)
{
  if (a2)
  {
    v3 = a2[8];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a2);
  }
}

uint64_t type3_create_shading(CGRect *a1, uint64_t a2)
{
  v3 = &CGRectNull;
  p_height = &CGRectNull.size.height;
  p_y = &CGRectNull.origin.y;
  p_size = &CGRectNull.size;
  if (a1)
  {
    p_size = &a1[2].size;
    p_y = &a1[2].origin.y;
    v3 = a1 + 2;
    p_height = &a1[2].size.height;
  }

  v7 = *p_height;
  x = v3->origin.x;
  v9 = *p_y;
  width = p_size->width;
  v19[0] = *&v3->origin.x;
  *&v19[1] = v9;
  *&v19[2] = width;
  *&v19[3] = v7;
  if (a1)
  {
    y = a1[1].origin.y;
    a1 = *&a1[1].size.width;
  }

  else
  {
    y = 0.0;
  }

  Components = CGColorGetComponents(a1);
  if (v7 == 1.79769313e308 && width == 1.79769313e308 && v9 == -8.98846567e307 && x == -8.98846567e307)
  {
    v17 = 0;
  }

  else
  {
    v17 = v19;
  }

  return CGShadingCreateRadialInternal(*&y, Components, v17, (a2 + 48), *(a2 + 64), *(a2 + 72) != 0, *(a2 + 73) != 0, v13, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40));
}

uint64_t cache_lock()
{
  if (get_cache_predicate != -1)
  {
    dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
  }

  v1 = get_cache_image_cache;

  return pthread_mutex_lock(v1);
}

uint64_t cache_unlock()
{
  if (get_cache_predicate != -1)
  {
    dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
  }

  v1 = get_cache_image_cache;

  return pthread_mutex_unlock(v1);
}

uint64_t release_and_remove(void *a1, void *value)
{
  if (get_cache_predicate != -1)
  {
    dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
  }

  cache_release_value(*(get_cache_image_cache + 64), value);
  if (get_cache_predicate != -1)
  {
    dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
  }

  v4 = *(get_cache_image_cache + 64);

  return cache_remove(v4, a1);
}

void rip_image_data_make_purgeable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("rip_image_data_make_purgeable", 146, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImageCache.c", "data != NULL", "NULL data", a6, a7, a8, v8);
  }

  v10 = *(a1 + 104);
  if (v10 && *(v10 + 8) == 1)
  {
    v11 = *(v10 + 16);

    malloc_make_purgeable(v11);
  }
}

BOOL rip_image_data_make_nonpurgeable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("rip_image_data_make_nonpurgeable", 136, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImageCache.c", "data != NULL", "NULL data", a6, a7, a8, vars0);
  }

  v8 = *(a1 + 104);
  return !v8 || *(v8 + 8) != 1 || malloc_make_nonpurgeable(*(v8 + 16)) == 0;
}

void rip_image_data_value_release(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("rip_image_data_value_release", 126, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImageCache.c", "data != NULL", "NULL data", a6, a7, a8, v8);
  }

  RIPImageDataRelease(a1);
}

void *rip_image_data_key_retain(uint64_t a1, void *a2)
{
  result = malloc_type_malloc(0x48uLL, 0x106004019ECFB16uLL);
  if (result)
  {
    *result = *a1;
    v5 = *(a1 + 16);
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    result[8] = *(a1 + 64);
    *(result + 2) = v6;
    *(result + 3) = v7;
    *(result + 1) = v5;
  }

  *a2 = result;
  return result;
}

BOOL rip_image_data_key_is_equal(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 4) == *(a2 + 4) && *(a1 + 32) == *(a2 + 32) && *(a1 + 8) == *(a2 + 8) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    v4 = *(a1 + 64);
    v5 = *(a2 + 64);
    if (a1 != a2 && *(a1 + 12) != *(a2 + 12))
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      if (v7 != *(a2 + 16) || v6 != *(a2 + 24))
      {
        return 0;
      }
    }

    result = v4 == v5;
    if (v4 && v4 != v5)
    {
      if (v5)
      {
        return CFEqual(v4, v5) != 0;
      }
    }
  }

  return result;
}

uint64_t rip_image_data_key_hash(uint64_t a1)
{
  v3[9] = *MEMORY[0x1E69E9840];
  memset(&v3[1], 0, 32);
  v3[0] = *a1;
  LODWORD(v3[1]) = *(a1 + 8);
  *&v3[2] = *(a1 + 16);
  LODWORD(v3[4]) = *(a1 + 32);
  *&v3[5] = *(a1 + 40);
  v1 = *(a1 + 64);
  v3[7] = 0;
  v3[8] = v1;
  return MEMORY[0x1865EEA10](v3, 56);
}

uint64_t CGRIPImageCachePrint()
{
  if (get_cache_predicate != -1)
  {
    dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
  }

  v0 = *(get_cache_image_cache + 64);

  return MEMORY[0x1EEE6EB40](v0);
}

uint64_t CGRIPImageCachePurge()
{
  if (get_cache_predicate != -1)
  {
    dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
  }

  v0 = *(get_cache_image_cache + 64);

  return cache_remove_all(v0);
}

uint64_t *__profile_can_be_used_as_destination_block_invoke_2()
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

  profile_can_be_used_as_destination_s = v1;
  return result;
}

uint64_t (*__profile_can_be_used_as_destination_block_invoke())()
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
    v1 = colorsync_smart_null_1554;
  }

  profile_can_be_used_as_destination_f = v1;
  return result;
}

uint64_t CGCMSUtilsCreateProfileForCalGray(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  valuePtr = vcvt_f32_f64(*a1);
  v1 = *(a1 + 16);
  v42 = v1;
  v39 = vcvt_f32_f64(*(a1 + 24));
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v40 = v3;
  keys[1] = *&off_1E6E05EA0;
  keys[2] = xmmword_1E6E05EB0;
  keys[3] = *off_1E6E05EC0;
  v38 = @"createImmutableCopy";
  keys[0] = xmmword_1E6E05E90;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  values = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr + 4);
  v33 = CFNumberCreate(0, kCFNumberFloatType, &v42);
  v4 = *MEMORY[0x1E695E480];
  v5 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 3, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 24; i += 8)
  {
    v7 = *(&values + i);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  values = CFNumberCreate(0, kCFNumberFloatType, &v39);
  v32 = CFNumberCreate(0, kCFNumberFloatType, &v39 + 4);
  v33 = CFNumberCreate(0, kCFNumberFloatType, &v40);
  v8 = CFArrayCreate(v4, &values, 3, MEMORY[0x1E695E9C0]);
  for (j = 0; j != 24; j += 8)
  {
    v10 = *(&values + j);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  values = CFNumberCreate(0, kCFNumberSInt16Type, &CGCMSUtilsCreateProfileForCalGray_iccDate);
  v32 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E496);
  v33 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E498);
  *&v34 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E49A);
  *(&v34 + 1) = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E49C);
  *&v35 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E49E);
  v11 = CFArrayCreate(v4, &values, 6, MEMORY[0x1E695E9C0]);
  for (k = 0; k != 48; k += 8)
  {
    v13 = *(&values + k);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  v29 = 0;
  v28 = v2;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v30[0] = CFNumberCreate(0, kCFNumberSInt16Type, &v29);
  v30[1] = CFNumberCreate(0, kCFNumberDoubleType, &v28);
  v30[2] = CFNumberCreate(0, kCFNumberDoubleType, &v27);
  v30[3] = CFNumberCreate(0, kCFNumberDoubleType, &v26);
  v30[4] = CFNumberCreate(0, kCFNumberDoubleType, &v25);
  v30[5] = CFNumberCreate(0, kCFNumberDoubleType, &v24);
  v30[6] = CFNumberCreate(0, kCFNumberDoubleType, &v23);
  v30[7] = CFNumberCreate(0, kCFNumberDoubleType, &v22);
  v14 = CFArrayCreate(0, v30, 8, MEMORY[0x1E695E9C0]);
  for (m = 0; m != 8; ++m)
  {
    v16 = v30[m];
    if (v16)
    {
      CFRelease(v16);
    }
  }

  values = v5;
  v32 = v8;
  v33 = v14;
  *&v34 = @"CG Cal Gray";
  *(&v34 + 1) = @"calGray";
  *&v35 = @"4.0";
  *(&v35 + 1) = *MEMORY[0x1E695E4D0];
  *&v36 = v11;
  *(&v36 + 1) = *(&v35 + 1);
  v17 = CFDictionaryCreate(v4, keys, &values, 9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (n = 0; n != 24; n += 8)
  {
    v19 = *(&values + n);
    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (CGCMSUtilsCreateProfileForCalGray_cglibrarypredicate != -1)
  {
    dispatch_once(&CGCMSUtilsCreateProfileForCalGray_cglibrarypredicate, &__block_literal_global_144);
  }

  ProfileForCalGray_f = CGCMSUtilsCreateProfileForCalGray_f(v17);
  if (v17)
  {
    CFRelease(v17);
  }

  return ProfileForCalGray_f;
}

uint64_t CGCMSUtilsCreateProfileForCalLab(char *valuePtr, uint64_t a2)
{
  values[3] = *MEMORY[0x1E69E9840];
  values[0] = CFNumberCreate(0, kCFNumberCGFloatType, valuePtr);
  values[1] = CFNumberCreate(0, kCFNumberCGFloatType, valuePtr + 8);
  values[2] = CFNumberCreate(0, kCFNumberCGFloatType, valuePtr + 16);
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9C0];
  v6 = CFArrayCreate(*MEMORY[0x1E695E480], values, 3, MEMORY[0x1E695E9C0]);
  v22[0] = CFNumberCreate(0, kCFNumberCGFloatType, a2);
  v22[1] = CFNumberCreate(0, kCFNumberCGFloatType, (a2 + 8));
  v22[2] = CFNumberCreate(0, kCFNumberCGFloatType, (a2 + 16));
  v7 = CFArrayCreate(v4, v22, 3, v5);
  for (i = 0; i != 3; ++i)
  {
    v9 = values[i];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = v22[i];
    if (v10)
    {
      CFRelease(v10);
    }
  }

  v11 = &v18;
  *keys = xmmword_1E6E05F18;
  v21 = *off_1E6E05F28;
  v18 = v6;
  v19[0] = v7;
  v12 = *MEMORY[0x1E695E4D0];
  v19[1] = @"Lab";
  v19[2] = v12;
  v13 = CFDictionaryCreate(v4, keys, &v18, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = 1;
  do
  {
    v15 = v14;
    if (*v11)
    {
      CFRelease(*v11);
    }

    v14 = 0;
    v11 = v19;
  }

  while ((v15 & 1) != 0);
  if (CGCMSUtilsCreateProfileForCalLab_cglibrarypredicate != -1)
  {
    dispatch_once(&CGCMSUtilsCreateProfileForCalLab_cglibrarypredicate, &__block_literal_global_153);
  }

  ProfileForCalLab_f = CGCMSUtilsCreateProfileForCalLab_f(v13);
  if (v13)
  {
    CFRelease(v13);
  }

  return ProfileForCalLab_f;
}

CFTypeRef CGCMSUtilsCreateLinearGrayProfile()
{
  if (CGCMSUtilsCreateLinearGrayProfile_once != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearGrayProfile_once, &__block_literal_global_237);
  }

  result = CGCMSUtilsCreateLinearGrayProfile_linear_profile;
  if (CGCMSUtilsCreateLinearGrayProfile_linear_profile)
  {

    return CFRetain(result);
  }

  return result;
}

void __CGCMSUtilsCreateLinearGrayProfile_block_invoke()
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v12 = 0x1000107E0;
  valuePtr = 0x3F8000003F76D5D0;
  v24 = 1062415525;
  v11 = 1065353216;
  *keys = xmmword_1E6E06078;
  v21 = *&off_1E6E06088;
  v22 = xmmword_1E6E06098;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  values = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr + 4);
  v16 = CFNumberCreate(0, kCFNumberFloatType, &v24);
  v0 = *MEMORY[0x1E695E480];
  v1 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 3, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 24; i += 8)
  {
    v3 = *(&values + i);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  values = CFNumberCreate(0, kCFNumberSInt16Type, &v12);
  v15 = CFNumberCreate(0, kCFNumberSInt16Type, &v12 + 2);
  v16 = CFNumberCreate(0, kCFNumberSInt16Type, &v12 + 4);
  v17 = CFNumberCreate(0, kCFNumberSInt16Type, &v12 + 6);
  v18 = CFNumberCreate(0, kCFNumberSInt16Type, &v13);
  v19 = CFNumberCreate(0, kCFNumberSInt16Type, &v13 + 2);
  v4 = CFArrayCreate(v0, &values, 6, MEMORY[0x1E695E9C0]);
  for (j = 0; j != 48; j += 8)
  {
    v6 = *(&values + j);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  values = v1;
  v15 = CFNumberCreate(0, kCFNumberFloatType, &v11);
  v16 = @"Linear Gray";
  v17 = @"calGray";
  v18 = v4;
  v19 = *MEMORY[0x1E695E4D0];
  p_values = &values;
  v8 = CFDictionaryCreate(v0, keys, &values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = 1;
  do
  {
    v10 = v9;
    if (*p_values)
    {
      CFRelease(*p_values);
    }

    v9 = 0;
    p_values = &v15;
  }

  while ((v10 & 1) != 0);
  if (v4)
  {
    CFRelease(v4);
  }

  if (_block_invoke_2_cglibrarypredicate != -1)
  {
    dispatch_once(&_block_invoke_2_cglibrarypredicate, &__block_literal_global_247);
  }

  CGCMSUtilsCreateLinearGrayProfile_linear_profile = _block_invoke_2_f(v8);
  if (v8)
  {
    CFRelease(v8);
  }
}

CFTypeRef CGCMSUtilsCreateLinearDisplayP3Profile()
{
  if (CGCMSUtilsCreateLinearDisplayP3Profile_once != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearDisplayP3Profile_once, &__block_literal_global_250);
  }

  result = CGCMSUtilsCreateLinearDisplayP3Profile_linear_profile;
  if (CGCMSUtilsCreateLinearDisplayP3Profile_linear_profile)
  {

    return CFRetain(result);
  }

  return result;
}

void __CGCMSUtilsCreateLinearDisplayP3Profile_block_invoke()
{
  v63 = *MEMORY[0x1E69E9840];
  if (_block_invoke_3_cglibrarypredicate != -1)
  {
    dispatch_once(&_block_invoke_3_cglibrarypredicate, &__block_literal_global_253);
  }

  v0 = _block_invoke_3_f;
  if (_block_invoke_3_cglibrarypredicate_254 != -1)
  {
    dispatch_once(&_block_invoke_3_cglibrarypredicate_254, &__block_literal_global_257);
  }

  v1 = v0(_block_invoke_3_s);
  if (v1)
  {
    v2 = v1;
    v31 = 0x3FE5C28F5C28F5C3;
    v30 = 0x3FD47AE147AE147BLL;
    v29 = 0x3FD0F5C28F5C28F6;
    v28 = 0x3FE6147AE147AE14;
    v27 = 0x3FC3333333333333;
    v26 = 0x3FAEB851EB851EB8;
    v25 = 0x3FD40346DC5D6388;
    v24 = 0x3FD50E5604189375;
    keys[10] = xmmword_1E6E062A8;
    keys[11] = *off_1E6E062B8;
    v62 = @"createImmutableCopy";
    keys[6] = xmmword_1E6E06268;
    keys[7] = *&off_1E6E06278;
    keys[8] = xmmword_1E6E06288;
    keys[9] = *&off_1E6E06298;
    keys[2] = xmmword_1E6E06228;
    keys[3] = *&off_1E6E06238;
    keys[4] = xmmword_1E6E06248;
    keys[5] = *&off_1E6E06258;
    keys[0] = xmmword_1E6E06208;
    keys[1] = *&off_1E6E06218;
    valuePtr = 0;
    v21 = 0;
    v22 = 0x3FF0000000000000;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    values[0] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    values[1] = CFNumberCreate(0, kCFNumberDoubleType, &v22);
    values[2] = CFNumberCreate(0, kCFNumberDoubleType, &v21);
    values[3] = CFNumberCreate(0, kCFNumberDoubleType, &v20);
    values[4] = CFNumberCreate(0, kCFNumberDoubleType, &v19);
    values[5] = CFNumberCreate(0, kCFNumberDoubleType, &v18);
    values[6] = CFNumberCreate(0, kCFNumberDoubleType, &v17);
    values[7] = CFNumberCreate(0, kCFNumberDoubleType, &v16);
    v3 = CFArrayCreate(0, values, 8, MEMORY[0x1E695E9C0]);
    if (_block_invoke_3_cglibrarypredicate_261 != -1)
    {
      dispatch_once(&_block_invoke_3_cglibrarypredicate_261, &__block_literal_global_264);
    }

    v4 = _block_invoke_3_f_260(v2, @"rXYZ");
    if (_block_invoke_3_cglibrarypredicate_266 != -1)
    {
      dispatch_once(&_block_invoke_3_cglibrarypredicate_266, &__block_literal_global_269);
    }

    v5 = _block_invoke_3_f_265(v2, @"gXYZ");
    if (_block_invoke_3_cglibrarypredicate_271 != -1)
    {
      dispatch_once(&_block_invoke_3_cglibrarypredicate_271, &__block_literal_global_274);
    }

    v6 = _block_invoke_3_f_270(v2, @"bXYZ");
    v58 = 0u;
    v59 = 0u;
    v57[0] = CFNumberCreate(0, kCFNumberSInt16Type, &_block_invoke_3_iccDate);
    v57[1] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4C6);
    v57[2] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4C8);
    v57[3] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4CA);
    v57[4] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4CC);
    v57[5] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4CE);
    v7 = CFArrayCreate(*MEMORY[0x1E695E480], v57, 6, MEMORY[0x1E695E9C0]);
    for (i = 0; i != 6; ++i)
    {
      v9 = v57[i];
      if (v9)
      {
        CFRelease(v9);
      }
    }

    *bytes = 1885563235;
    LODWORD(v33) = 16779276;
    v10 = CFDataCreate(0, bytes, 12);
    *bytes = @"displayRGB";
    v33 = @"4.0";
    v34 = @"Display P3 Linear";
    v35 = v3;
    v36 = v3;
    v37 = v3;
    v38 = v7;
    v39 = CFNumberCreate(0, kCFNumberDoubleType, &v31);
    v40 = CFNumberCreate(0, kCFNumberDoubleType, &v30);
    v41 = CFNumberCreate(0, kCFNumberDoubleType, &v29);
    v42 = CFNumberCreate(0, kCFNumberDoubleType, &v28);
    v43 = CFNumberCreate(0, kCFNumberDoubleType, &v27);
    v44 = CFNumberCreate(0, kCFNumberDoubleType, &v26);
    v45 = CFNumberCreate(0, kCFNumberDoubleType, &v25);
    v11 = CFNumberCreate(0, kCFNumberDoubleType, &v24);
    v12 = *MEMORY[0x1E695E4D0];
    v46 = v11;
    v47 = v12;
    v48 = v12;
    v49 = v12;
    v50 = v12;
    v51 = v12;
    v52 = v4;
    v53 = v5;
    v54 = v6;
    v55 = v10;
    v56 = v12;
    v13 = CFDictionaryCreate(0, keys, bytes, 25, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (_block_invoke_3_cglibrarypredicate_279 != -1)
    {
      dispatch_once(&_block_invoke_3_cglibrarypredicate_279, &__block_literal_global_282);
    }

    CGCMSUtilsCreateLinearDisplayP3Profile_linear_profile = _block_invoke_3_f_278(v13);
    if (v3)
    {
      CFRelease(v3);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    for (j = 56; j != 120; j += 8)
    {
      v15 = *&bytes[j];
      if (v15)
      {
        CFRelease(v15);
      }
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(v2);
  }
}

uint64_t *__CGCMSUtilsCreateLinearDisplayP3Profile_block_invoke_3()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncDisplayP3Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  _block_invoke_3_s = v1;
  return result;
}

CFTypeRef CGCMSUtilsCreateLinearITUR2020Profile()
{
  if (CGCMSUtilsCreateLinearITUR2020Profile_once != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearITUR2020Profile_once, &__block_literal_global_285);
  }

  result = CGCMSUtilsCreateLinearITUR2020Profile_linear_profile;
  if (CGCMSUtilsCreateLinearITUR2020Profile_linear_profile)
  {

    return CFRetain(result);
  }

  return result;
}

void __CGCMSUtilsCreateLinearITUR2020Profile_block_invoke()
{
  v63 = *MEMORY[0x1E69E9840];
  if (_block_invoke_4_cglibrarypredicate != -1)
  {
    dispatch_once(&_block_invoke_4_cglibrarypredicate, &__block_literal_global_288);
  }

  v0 = _block_invoke_4_f;
  if (_block_invoke_4_cglibrarypredicate_289 != -1)
  {
    dispatch_once(&_block_invoke_4_cglibrarypredicate_289, &__block_literal_global_292);
  }

  v1 = v0(_block_invoke_4_s);
  if (v1)
  {
    v2 = v1;
    v31 = 0x3FE6A7EF9DB22D0ELL;
    v30 = 0x3FD2B020C49BA5E3;
    v29 = 0x3FC5C28F5C28F5C3;
    v28 = 0x3FE9810624DD2F1BLL;
    v27 = 0x3FC0C49BA5E353F8;
    v26 = 0x3FA78D4FDF3B645ALL;
    v25 = 0x3FD40346DC5D6388;
    v24 = 0x3FD50E5604189375;
    keys[10] = xmmword_1E6E062A8;
    keys[11] = *off_1E6E062B8;
    v62 = @"createImmutableCopy";
    keys[6] = xmmword_1E6E06268;
    keys[7] = *&off_1E6E06278;
    keys[8] = xmmword_1E6E06288;
    keys[9] = *&off_1E6E06298;
    keys[2] = xmmword_1E6E06228;
    keys[3] = *&off_1E6E06238;
    keys[4] = xmmword_1E6E06248;
    keys[5] = *&off_1E6E06258;
    keys[0] = xmmword_1E6E06208;
    keys[1] = *&off_1E6E06218;
    valuePtr = 0;
    v21 = 0;
    v22 = 0x3FF0000000000000;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    values[0] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    values[1] = CFNumberCreate(0, kCFNumberDoubleType, &v22);
    values[2] = CFNumberCreate(0, kCFNumberDoubleType, &v21);
    values[3] = CFNumberCreate(0, kCFNumberDoubleType, &v20);
    values[4] = CFNumberCreate(0, kCFNumberDoubleType, &v19);
    values[5] = CFNumberCreate(0, kCFNumberDoubleType, &v18);
    values[6] = CFNumberCreate(0, kCFNumberDoubleType, &v17);
    values[7] = CFNumberCreate(0, kCFNumberDoubleType, &v16);
    v3 = CFArrayCreate(0, values, 8, MEMORY[0x1E695E9C0]);
    if (_block_invoke_4_cglibrarypredicate_296 != -1)
    {
      dispatch_once(&_block_invoke_4_cglibrarypredicate_296, &__block_literal_global_299);
    }

    v4 = _block_invoke_4_f_295(v2, @"rXYZ");
    if (_block_invoke_4_cglibrarypredicate_301 != -1)
    {
      dispatch_once(&_block_invoke_4_cglibrarypredicate_301, &__block_literal_global_304);
    }

    v5 = _block_invoke_4_f_300(v2, @"gXYZ");
    if (_block_invoke_4_cglibrarypredicate_306 != -1)
    {
      dispatch_once(&_block_invoke_4_cglibrarypredicate_306, &__block_literal_global_309);
    }

    v6 = _block_invoke_4_f_305(v2, @"bXYZ");
    v58 = 0u;
    v59 = 0u;
    v57[0] = CFNumberCreate(0, kCFNumberSInt16Type, &_block_invoke_4_iccDate);
    v57[1] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4D2);
    v57[2] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4D4);
    v57[3] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4D6);
    v57[4] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4D8);
    v57[5] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4DA);
    v7 = CFArrayCreate(*MEMORY[0x1E695E480], v57, 6, MEMORY[0x1E695E9C0]);
    for (i = 0; i != 6; ++i)
    {
      v9 = v57[i];
      if (v9)
      {
        CFRelease(v9);
      }
    }

    *bytes = 1885563235;
    LODWORD(v33) = 16779273;
    v10 = CFDataCreate(0, bytes, 12);
    *bytes = @"displayRGB";
    v33 = @"4.0";
    v34 = @"Rec. ITU-R BT.2020-1 Linear";
    v35 = v3;
    v36 = v3;
    v37 = v3;
    v38 = v7;
    v39 = CFNumberCreate(0, kCFNumberDoubleType, &v31);
    v40 = CFNumberCreate(0, kCFNumberDoubleType, &v30);
    v41 = CFNumberCreate(0, kCFNumberDoubleType, &v29);
    v42 = CFNumberCreate(0, kCFNumberDoubleType, &v28);
    v43 = CFNumberCreate(0, kCFNumberDoubleType, &v27);
    v44 = CFNumberCreate(0, kCFNumberDoubleType, &v26);
    v45 = CFNumberCreate(0, kCFNumberDoubleType, &v25);
    v11 = CFNumberCreate(0, kCFNumberDoubleType, &v24);
    v12 = *MEMORY[0x1E695E4D0];
    v46 = v11;
    v47 = v12;
    v48 = v12;
    v49 = v12;
    v50 = v12;
    v51 = v12;
    v52 = v4;
    v53 = v5;
    v54 = v6;
    v55 = v10;
    v56 = v12;
    v13 = CFDictionaryCreate(0, keys, bytes, 25, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (_block_invoke_4_cglibrarypredicate_314 != -1)
    {
      dispatch_once(&_block_invoke_4_cglibrarypredicate_314, &__block_literal_global_317);
    }

    CGCMSUtilsCreateLinearITUR2020Profile_linear_profile = _block_invoke_4_f_313(v13);
    if (v3)
    {
      CFRelease(v3);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    for (j = 56; j != 120; j += 8)
    {
      v15 = *&bytes[j];
      if (v15)
      {
        CFRelease(v15);
      }
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(v2);
  }
}

uint64_t *__CGCMSUtilsCreateLinearITUR2020Profile_block_invoke_3()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncITUR2020Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  _block_invoke_4_s = v1;
  return result;
}

uint64_t CGCMSUtilsCreateLinearizedProfile(uint64_t a1)
{
  if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate, &__block_literal_global_320);
  }

  LinearizedProfile_f = CGCMSUtilsCreateLinearizedProfile_f(a1, 0);
  if (!LinearizedProfile_f)
  {
    return 0;
  }

  v3 = LinearizedProfile_f;
  if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_322 != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_322, &__block_literal_global_325);
  }

  LinearizedProfile_f_321 = CGCMSUtilsCreateLinearizedProfile_f_321(v3);
  if (!LinearizedProfile_f_321)
  {
    goto LABEL_34;
  }

  v5 = LinearizedProfile_f_321;
  BytePtr = CFDataGetBytePtr(LinearizedProfile_f_321);
  if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_327 != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_327, &__block_literal_global_330);
  }

  LinearizedProfile_f_326 = CGCMSUtilsCreateLinearizedProfile_f_326(v3);
  if (*(BytePtr + 5) == 1482250784 && *(BytePtr + 4) == 1196573017)
  {
    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_332 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_332, &__block_literal_global_335);
    }

    LinearizedProfile_f_331 = CGCMSUtilsCreateLinearizedProfile_f_331(v3, @"kTRC");
  }

  else
  {
    LinearizedProfile_f_331 = 0;
  }

  if (((LinearizedProfile_f_326 | LinearizedProfile_f_331) & 1) == 0)
  {
LABEL_34:
    v18 = v3;
LABEL_35:
    CFRelease(v18);
    return 0;
  }

  if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_340 != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_340, &__block_literal_global_343);
  }

  LinearizedProfile_f_339 = CGCMSUtilsCreateLinearizedProfile_f_339();
  if (!LinearizedProfile_f_339)
  {
    CFRelease(v3);
    CFRelease(v5);
    return LinearizedProfile_f_339;
  }

  MutableCopy = CFDataCreateMutableCopy(0, 0, v5);
  if (!MutableCopy)
  {
    CFRelease(v3);
    v18 = v5;
    goto LABEL_35;
  }

  v11 = MutableCopy;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  *(MutableBytePtr + 92) = 0;
  *(MutableBytePtr + 84) = 0;
  if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_346[0] != -1)
  {
    dispatch_once(CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_346, &__block_literal_global_349);
  }

  CGCMSUtilsCreateLinearizedProfile_f_345(LinearizedProfile_f_339, v11);
  CFRelease(v11);
  CFRelease(v5);
  if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_352 != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_352, &__block_literal_global_355);
  }

  LinearizedProfile_f_351 = CGCMSUtilsCreateLinearizedProfile_f_351(v3, @"wtpt");
  if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_357 != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_357, &__block_literal_global_360);
  }

  CGCMSUtilsCreateLinearizedProfile_f_356(LinearizedProfile_f_339, @"wtpt", LinearizedProfile_f_351);
  if (LinearizedProfile_f_351)
  {
    CFRelease(LinearizedProfile_f_351);
  }

  *bytes = 1987212643;
  v26 = 0x1000000;
  v27 = 1;
  v14 = CFDataCreateWithBytesNoCopy(0, bytes, 14, *MEMORY[0x1E695E498]);
  if (!v14)
  {
    CFRelease(v3);
LABEL_78:
    v18 = LinearizedProfile_f_339;
    goto LABEL_35;
  }

  v15 = v14;
  if (LinearizedProfile_f_331 & 1 | ((LinearizedProfile_f_326 & 1) == 0))
  {
    if (!LinearizedProfile_f_331)
    {
      goto LABEL_67;
    }

    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_417 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_417, &__block_literal_global_420);
    }

    v16 = @"kTRC";
    v17 = &CGCMSUtilsCreateLinearizedProfile_f_416;
  }

  else
  {
    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_363 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_363, &__block_literal_global_366);
    }

    LinearizedProfile_f_362 = CGCMSUtilsCreateLinearizedProfile_f_362(v3, @"rXYZ");
    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_368 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_368, &__block_literal_global_371);
    }

    LinearizedProfile_f_367 = CGCMSUtilsCreateLinearizedProfile_f_367(v3, @"gXYZ");
    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_373 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_373, &__block_literal_global_376);
    }

    LinearizedProfile_f_372 = CGCMSUtilsCreateLinearizedProfile_f_372(v3, @"bXYZ");
    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_378 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_378, &__block_literal_global_381);
    }

    CGCMSUtilsCreateLinearizedProfile_f_377(LinearizedProfile_f_339, @"rXYZ", LinearizedProfile_f_362);
    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_383 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_383, &__block_literal_global_386);
    }

    CGCMSUtilsCreateLinearizedProfile_f_382(LinearizedProfile_f_339, @"gXYZ", LinearizedProfile_f_367);
    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_388 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_388, &__block_literal_global_391);
    }

    CGCMSUtilsCreateLinearizedProfile_f_387(LinearizedProfile_f_339, @"bXYZ", LinearizedProfile_f_372);
    if (LinearizedProfile_f_362)
    {
      CFRelease(LinearizedProfile_f_362);
    }

    if (LinearizedProfile_f_367)
    {
      CFRelease(LinearizedProfile_f_367);
    }

    if (LinearizedProfile_f_372)
    {
      CFRelease(LinearizedProfile_f_372);
    }

    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_393 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_393, &__block_literal_global_396);
    }

    CGCMSUtilsCreateLinearizedProfile_f_392(LinearizedProfile_f_339, @"rTRC", v15);
    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_401 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_401, &__block_literal_global_404);
    }

    CGCMSUtilsCreateLinearizedProfile_f_400(LinearizedProfile_f_339, @"gTRC", v15);
    if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_409 != -1)
    {
      dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_409, &__block_literal_global_412);
    }

    v16 = @"bTRC";
    v17 = &CGCMSUtilsCreateLinearizedProfile_f_408;
  }

  (*v17)(LinearizedProfile_f_339, v16, v15);
LABEL_67:
  if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_422 != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_422, &__block_literal_global_425);
  }

  LinearizedProfile_f_421 = CGCMSUtilsCreateLinearizedProfile_f_421(v3);
  v24 = CFStringCreateWithFormat(0, 0, @"%@ Linearized", LinearizedProfile_f_421);
  if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_431 != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_431, &__block_literal_global_434);
  }

  CGCMSUtilsCreateLinearizedProfile_f_430(LinearizedProfile_f_339, v24, 0);
  if (LinearizedProfile_f_421)
  {
    CFRelease(LinearizedProfile_f_421);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  CFRelease(v15);
  CFRelease(v3);
  if (CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_437 != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearizedProfile_cglibrarypredicate_437, &__block_literal_global_440);
  }

  if ((CGCMSUtilsCreateLinearizedProfile_f_436(LinearizedProfile_f_339, 0, 0) & 1) == 0)
  {
    goto LABEL_78;
  }

  return LinearizedProfile_f_339;
}

const __CFDictionary *copy_profile_dictionary_with_parameters(const __CFDictionary *result, void *a2, void *a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v8 = result;
    Count = CFDictionaryGetCount(result);
    if (Count >= 7)
    {
      _CGHandleAssert("copy_profile_dictionary_with_parameters", 1372, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSUtils.c", "count <= kPROFILE_DICT_COUNT", "count: %zu  dictionary count: %d", v9, v10, v11, Count);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    *keys = 0u;
    *values = 0u;
    v16 = 0u;
    CFDictionaryGetKeysAndValues(v8, keys, values);
    if (Count != 6)
    {
      *(&v20 + 1) = @"kCGColorSpace";
    }

    for (i = 0; i != 6; ++i)
    {
      if (CFEqual(keys[i], @"ColorSyncTransformTag"))
      {
        values[i] = a3;
      }

      if (CFEqual(keys[i], @"ColorSyncRenderingIntent"))
      {
        values[i] = a4;
      }

      if (CFEqual(keys[i], @"ColorSyncBlackPointCompensation"))
      {
        values[i] = a5;
      }

      if (CFEqual(keys[i], @"kCGColorSpace"))
      {
        values[i] = a2;
      }
    }

    return CFDictionaryCreate(0, keys, values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return result;
}

CGPDFStreamRef get_font_stream(uint64_t a1)
{
  FontDescriptor = CGPDFFontGetFontDescriptor(a1);
  if (!FontDescriptor)
  {
    return 0;
  }

  value = 0;
  if (CGPDFDictionaryGetStream(*(FontDescriptor + 32), "FontFile2", &value))
  {
    v2 = value;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    value = 0;
    if (CGPDFDictionaryGetName(*(v2 + 6), "Subtype", &value))
    {
      v3 = value;
      if (strcmp(value, "OpenType"))
      {
        return 0;
      }
    }
  }

  return v2;
}

CGFontRef CGPDFFontFindTrueTypeOrCIDType2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  while (v1[v3] - 91 >= 0xFFFFFFE6)
  {
    if (++v3 == 6)
    {
      v4 = 7;
      if (v1[6] != 43)
      {
        v4 = 0;
      }

      v1 += v4;
      break;
    }
  }

  if (a1)
  {
    v5 = *(a1 + 200);
    v6 = CGFontCreateWithName(v1);
    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = v6;
    if (v5 == 4)
    {
      return v7;
    }
  }

  else
  {
    v7 = CGFontCreateWithName(v1);
    v5 = 0;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  if (CGPDFFontHasMatchingROS(a1, v7))
  {
    return v7;
  }

  CFRelease(v7);
LABEL_15:
  __s2 = 0;
  if (CGPDFFontNameHasAlias(v1, &__s2))
  {
    v8 = __s2;
    if (strcmp(v1, __s2))
    {
      v9 = CGFontCreateWithName(v8);
      v8 = __s2;
      if (v9)
      {
        v7 = v9;
        v10 = "CIDFontType2";
        if (v5 == 4)
        {
          v10 = "TrueType";
        }

        free(__s2);
        return v7;
      }
    }

    free(v8);
  }

  v11 = 0;
  v12 = 0;
  while (2)
  {
    v13 = &variants[3 * v12];
    while (1)
    {
      v14 = *v13;
      if (font_name_contains_variant(v1, *v13))
      {
        break;
      }

      ++v12;
      v13 += 3;
      if (v12 == 8)
      {
        if ((v11 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_31;
      }
    }

    font_with_variant = find_font_with_variant(v1, v14, v13[1], v5);
    if (font_with_variant)
    {
      return font_with_variant;
    }

    ++v12;
    v11 = 1;
    if (v12 != 8)
    {
      continue;
    }

    break;
  }

LABEL_31:
  v16 = 0;
  while (1)
  {
    v17 = variants[v16];
    if (font_name_contains_variant(v1, v17))
    {
      font_with_variant = find_font_with_variant(v1, v17, "", v5);
      if (font_with_variant)
      {
        break;
      }
    }

    v16 += 3;
    if (v16 == 24)
    {
      return 0;
    }
  }

  return font_with_variant;
}

BOOL font_name_contains_variant(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  return v4 >= v5 && !strcmp(&a1[v4 - v5], a2);
}

CGFontRef find_font_with_variant(const char *a1, const char *a2, const char *a3, int a4)
{
  v8 = strlen(a1);
  v9 = strlen(a3);
  v10 = malloc_type_malloc(v8 + v9 + 1, 0xC39A6ABDuLL);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  strcpy(v10, a1);
  v12 = &v11[strlen(a1)];
  v13 = strlen(a2);
  strcpy(&v12[-v13], a3);
  v14 = CGFontCreateWithName(v11);
  if (v14)
  {
    if (pdf_is_verbose_onceToken != -1)
    {
      dispatch_once(&pdf_is_verbose_onceToken, &__block_literal_global_5_6709);
    }

    if (pdf_is_verbose_isVerbose == 1)
    {
      printable_name = create_printable_name(a1);
      v16 = create_printable_name(v11);
      v17 = v16;
      v18 = "CIDFontType2";
      if (a4 == 4)
      {
        v18 = "TrueType";
      }

      free(v17);
      free(printable_name);
    }
  }

  free(v11);
  return v14;
}

_BYTE *create_printable_name(const char *a1)
{
  v2 = strlen(a1);
  v3 = malloc_type_malloc(3 * v2 + 1, 0x79A8874FuLL);
  __CFSetLastAllocationEventName();
  if (v3)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = 0;
      v6 = (a1 + 1);
      do
      {
        if ((v4 - 127) > 0xA1u)
        {
          v3[v5++] = v4;
        }

        else
        {
          sprintf_l(&v3[v5], 0, "#%02x", v4);
          v5 += 3;
        }

        v7 = *v6++;
        v4 = v7;
      }

      while (v7);
    }

    else
    {
      v5 = 0;
    }

    v3[v5] = 0;
  }

  return v3;
}

void TaggedParser::ScannerContext::op_BMC(TaggedParser::ScannerContext *this, TaggedParser **a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopName(this, &value))
  {
    TaggedParser::BeginMarkedContentSequence(a2[6], *a2, 0, v4);
  }
}

void TaggedParser::ScannerContext::op_BDC(TaggedParser::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v5 = *(this + 18);
  if (v5 <= 0)
  {

    pdf_error("stack underflow.", a2, a3);
  }

  else
  {
    v6 = *(this + 10) + 40 * v5;
    *(this + 18) = v5 - 1;
    if (v6 == 40)
    {
      return;
    }

    value[5] = v3;
    value[6] = v4;
    v8 = *(v6 - 32);
    if (v8 == 8)
    {
      v10 = 0;
      v9 = *(v6 - 8);
    }

    else
    {
      if (v8 != 5)
      {
        return;
      }

      v9 = 0;
      v10 = *(v6 - 8);
    }

    value[0] = 0;
    if (CGPDFScannerPopName(this, value))
    {
      v12 = *(a2 + 6);
      v13 = *a2;
      if (v10)
      {
        TaggedParser::BeginMarkedContentSequence(v12, v13, v10, v11);
      }

      else
      {
        TaggedParser::BeginMarkedContentSequence(v12, v13, v9, v11);
      }
    }
  }
}

void TaggedParser::ScannerContext::op_EI(TaggedParser::ScannerContext *this, CGPDFPage **a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopStream(this, &value))
  {
    Inline = CGPDFImageCreateInline(*(this + 7), value);
    if (Inline)
    {
      v6 = Inline;
      TaggedParser::ScannerContext::drawImage(a2);
      CFRelease(v6);
    }
  }
}

void TaggedParser::ScannerContext::drawImage(CGPDFPage **a1)
{
  CGContextGetCTM(&v4, a1[9]);
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  v6.size.height = 1.0;
  v7 = CGRectApplyAffineTransform(v6, &v4);
  v2 = a1[6];
  v3 = *a1;

  TaggedParser::AddGraphicBounds(v2, v3, v7);
}

void TaggedParser::ScannerContext::op_Do(TaggedParser::ScannerContext *this, CGPDFPage **a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopName(this, &value))
  {
    v5 = *(this + 7);
    if (v5)
    {
      v6 = value;
      v7 = *(this + 7);
      while (1)
      {
        v8 = CGPDFResourcesCopyXObject(*(v7 + 32), v6);
        if (v8)
        {
          break;
        }

        v7 = *(v7 + 40);
        if (!v7)
        {
          return;
        }
      }

      v9 = v8;
      v10 = *(v8 + 4);
      if (v10 == 2)
      {
        v11 = CGPDFXObjectGetValue(v8);
        if (v11)
        {
          v12 = *v11;
          v13 = *(v11 + 88);
        }

        else
        {
          v12 = 0;
          v13 = 0;
        }

        v14 = (v11 + 40);
      }

      else
      {
        if (v10 != 1)
        {
          if (v10)
          {
            pdf_error("unrecognized or unsupported XObject subtype.");
          }

          else
          {
            CGPDFXObjectGetValue(v8);
            TaggedParser::ScannerContext::drawImage(a2);
          }

LABEL_27:
          CFRelease(v9);
          return;
        }

        v11 = CGPDFXObjectGetValue(v8);
        if (v11)
        {
          v12 = *(v11 + 16);
          v13 = *(v11 + 104);
        }

        else
        {
          v12 = 0;
          v13 = 0;
        }

        v14 = (v11 + 56);
      }

      if (!v11)
      {
        v14 = &CGAffineTransformIdentity;
      }

      v15 = *&v14->c;
      *&transform.a = *&v14->a;
      *&transform.c = v15;
      *&transform.tx = *&v14->tx;
      CGContextSaveGState(a2[9]);
      CGContextConcatCTM(a2[9], &transform);
      v16 = CGPDFContentStreamCreateWithStream(v12, v13, v5);
      v17 = CGPDFScannerCreate(v16, a2[5], a2);
      CGPDFScannerScan(v17);
      if (v17)
      {
        CFRelease(v17);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      CGContextRestoreGState(a2[9]);
      goto LABEL_27;
    }
  }
}

uint64_t TaggedParser::ScannerContext::drawPath(CGContextRef *this, CGPathDrawingMode mode, int a3)
{
  if (a3)
  {
    CGContextClosePath(this[9]);
  }

  CGContextDrawPath(this[9], mode);
  TaggedParser::ScannerContext::handleClipPath(this);
  v5 = this[8];
  v6 = &CGRectNull;
  p_height = &CGRectNull.size.height;
  p_y = &CGRectNull.origin.y;
  p_size = &CGRectNull.size;
  if (v5)
  {
    v10 = *(v5 + 86) == *(v5 + 87);
    v11 = (v5 + 88);
    v12 = (v5 + 96);
    v13 = (v5 + 104);
    v14 = (v5 + 112);
    if (!v10)
    {
      p_size = v13;
      p_y = v12;
      v6 = v11;
      p_height = v14;
    }
  }

  v18.size.height = *p_height;
  v18.origin.x = v6->origin.x;
  v18.origin.y = *p_y;
  v18.size.width = p_size->width;
  TaggedParser::AddGraphicBounds(this[6], *this, v18);
  v15 = this[8];

  return CGDisplayListReset(v15);
}

void TaggedParser::ScannerContext::handleClipPath(TaggedParser::ScannerContext *this)
{
  v1 = *(this + 14);
  if (v1)
  {
    *(this + 14) = 0;
    v3 = CGContextCopyPath(*(this + 9));
    if (v3)
    {
      v4 = v3;
      CGContextAddPath(*(this + 9), v3);
      clip(*(this + 9), v1 == 2, v5, v6, v7, v8, v9, v10);

      CFRelease(v4);
    }
  }
}

void TaggedParser::ScannerContext::op_n(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  CGContextBeginPath(a2[9]);

  TaggedParser::ScannerContext::handleClipPath(a2);
}

void TaggedParser::ScannerContext::op_re(TaggedParser::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v12 = 0.0;
  x = 0.0;
  v10 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &v10) && CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v12) && CGPDFScannerPopNumber(this, &x))
  {
    v6 = value;
    v5 = v12;
    v7 = *(a2 + 9);
    v8 = x;
    if (value < 0.0 || (v9 = v10, v10 < 0.0))
    {
      CGContextMoveToPoint(v7, x, v12);
      CGContextAddLineToPoint(*(a2 + 9), x + value, v12);
      CGContextAddLineToPoint(*(a2 + 9), x + value, v12 + v10);
      CGContextAddLineToPoint(*(a2 + 9), x, v12 + v10);
      CGContextClosePath(*(a2 + 9));
    }

    else
    {
      CGContextAddRect(v7, *&v8);
    }
  }
}

void TaggedParser::ScannerContext::op_y(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &v5) && CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v7) && CGPDFScannerPopNumber(this, &v8))
  {
    CGContextAddCurveToPoint(a2[9], v8, v7, value, v5, value, v5);
  }
}

void TaggedParser::ScannerContext::op_v(TaggedParser::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &v6) && CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v8) && CGPDFScannerPopNumber(this, &v9))
  {
    PathCurrentPoint = CGContextGetPathCurrentPoint(*(a2 + 9));
    CGContextAddCurveToPoint(*(a2 + 9), PathCurrentPoint.x, PathCurrentPoint.y, v9, v8, value, v6);
  }
}

void TaggedParser::ScannerContext::op_c(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  v10 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  value = 0.0;
  v7 = 0.0;
  y = 0.0;
  if (CGPDFScannerPopNumber(this, &y) && CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v7) && CGPDFScannerPopNumber(this, &v8) && CGPDFScannerPopNumber(this, &v9) && CGPDFScannerPopNumber(this, &v10))
  {
    CGContextAddCurveToPoint(a2[9], v10, v9, v8, v7, value, y);
  }
}

void TaggedParser::ScannerContext::op_l(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  v5 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &v5) && CGPDFScannerPopNumber(this, &value))
  {
    CGContextAddLineToPoint(a2[9], value, v5);
  }
}

void TaggedParser::ScannerContext::op_m(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  v5 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &v5) && CGPDFScannerPopNumber(this, &value))
  {
    CGContextMoveToPoint(a2[9], value, v5);
  }
}

void TaggedParser::ScannerContext::op_i(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &value))
  {
    CGContextSetFlatness(a2[9], value);
  }
}

void TaggedParser::ScannerContext::op_M(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &value))
  {
    if (value >= 1.0)
    {
      CGContextSetMiterLimit(a2[9], value);
    }

    else
    {
      pdf_error("invalid miter limit: %g.", value);
    }
  }
}

void TaggedParser::ScannerContext::op_d(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &value))
  {
    array = 0;
    if (CGPDFScannerPopArray(this, &array))
    {
      if (array)
      {
        v5 = *(array + 3) - *(array + 2);
        if (((v5 >> 3) - 0x1FFFFFFFFFFFFFFFLL) >= 0xE000000000000002)
        {
          v6 = malloc_type_malloc(v5, 0x456DD768uLL);
          if (v6)
          {
            v7 = v6;
            v8 = v5 >> 3;
            if (CGPDFArrayGetNumbers(array, v6, v8))
            {
              CGContextSetLineDash(a2[9], value, v7, v8);
            }

            else
            {
              pdf_error("invalid dash array.");
            }

            free(v7);
          }
        }
      }
    }
  }
}

void TaggedParser::ScannerContext::op_w(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &value))
  {
    if (value >= 0.0)
    {
      CGContextSetLineWidth(a2[9], value);
    }

    else
    {
      pdf_error("invalid line width: %g.", value);
    }
  }
}

void TaggedParser::ScannerContext::op_J(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopInteger(this, &value))
  {
    if (value >= 3)
    {
      pdf_error("invalid line cap: %ld.", value);
    }

    else
    {
      CGContextSetLineCap(a2[9], value);
    }
  }
}

void TaggedParser::ScannerContext::op_j(TaggedParser::ScannerContext *this, CGContextRef *a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopInteger(this, &value))
  {
    if (value >= 3)
    {
      pdf_error("invalid line join: %ld.", value);
    }

    else
    {
      CGContextSetLineJoin(a2[9], value);
    }
  }
}

void TaggedParser::ScannerContext::op_cm(TaggedParser::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  value = 0.0;
  v8 = 0.0;
  if (CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v8) && CGPDFScannerPopNumber(this, &v9) && CGPDFScannerPopNumber(this, &v10) && CGPDFScannerPopNumber(this, &v11) && CGPDFScannerPopNumber(this, &v12))
  {
    v5 = *(a2 + 9);
    v6.a = v12;
    v6.b = v11;
    v6.c = v10;
    v6.d = v9;
    v6.tx = v8;
    v6.ty = value;
    CGContextConcatCTM(v5, &v6);
  }
}

CGAffineTransform *__cdecl CGAffineTransformMake(CGAffineTransform *__return_ptr retstr, CGFloat a, CGFloat b, CGFloat c, CGFloat d, CGFloat tx, CGFloat ty)
{
  retstr->a = a;
  retstr->b = b;
  retstr->c = c;
  retstr->d = d;
  retstr->tx = tx;
  retstr->ty = ty;
  return result;
}

CGAffineTransform *__cdecl CGAffineTransformConcat(CGAffineTransform *__return_ptr retstr, CGAffineTransform *t1, CGAffineTransform *t2)
{
  tx = t1->tx;
  ty = t1->ty;
  v5 = *&t2->a;
  v6 = *&t2->c;
  v7 = vmlaq_n_f64(vmulq_n_f64(v6, t1->d), *&t2->a, t1->c);
  *&retstr->a = vmlaq_n_f64(vmulq_n_f64(v6, t1->b), *&t2->a, t1->a);
  *&retstr->c = v7;
  *&retstr->tx = vaddq_f64(*&t2->tx, vmlaq_n_f64(vmulq_n_f64(v6, ty), v5, tx));
  return t1;
}

BOOL CGAffineTransformIsRectilinear(double *a1)
{
  if (a1[1] == 0.0 && a1[2] == 0.0)
  {
    return 1;
  }

  if (*a1 == 0.0)
  {
    return a1[3] == 0.0;
  }

  return 0;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v2 = vaddq_f64(*&t->tx, vmlaq_n_f64(vmulq_n_f64(*&t->c, point.y), *&t->a, point.x));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

void CGAffineTransformMakeWithRect(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  if (a4 < 0.0 || a5 < 0.0)
  {
    *&a2 = CGRectStandardize(*&a2);
  }

  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a5;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

CGAffineTransformComponents *__cdecl CGAffineTransformDecompose(CGAffineTransformComponents *__return_ptr retstr, CGAffineTransform *transform)
{
  a = transform->a;
  b = transform->b;
  *v6.i64 = atan2(b, transform->a);
  v17 = v6;
  v9 = __sincos_stret(*v6.i64);
  v10 = b / v9.__sinval;
  if (fabs(v9.__cosval) >= fabs(v9.__sinval))
  {
    v10 = a / v9.__cosval;
  }

  c = transform->c;
  d = transform->d;
  v13 = d * v9.__cosval - c * v9.__sinval;
  v14 = 0.0;
  if (v13 != 0.0)
  {
    v14 = (v9.__sinval * d + c * v9.__cosval) / v13;
  }

  if (v13 < 0.0)
  {
    v10 = -v10;
    v13 = -v13;
    v8.i64[0] = 0x400921FB54442D18;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v15 = *v17.i64 - *vbslq_s8(vnegq_f64(v16), v8, v17).i64;
  }

  else
  {
    v15 = *v17.i64;
  }

  retstr->scale.width = v10;
  retstr->scale.height = v13;
  retstr->horizontalShear = v14;
  retstr->rotation = v15;
  retstr->translation = *&transform->tx;
  return result;
}

CGAffineTransform *__cdecl CGAffineTransformMakeWithComponents(CGAffineTransform *__return_ptr retstr, CGAffineTransformComponents *components)
{
  v5 = __sincos_stret(components->rotation);
  height = components->scale.height;
  horizontalShear = components->horizontalShear;
  v8 = components->scale.width * v5.__sinval;
  retstr->a = components->scale.width * v5.__cosval;
  retstr->b = v8;
  retstr->c = height * horizontalShear * v5.__cosval - height * v5.__sinval;
  retstr->d = v5.__cosval * height + height * horizontalShear * v5.__sinval;
  *&retstr->tx = components->translation;
  return result;
}

BOOL CGAffineTransformDecompose_SPI(_OWORD *a1, CGSize *a2, CGFloat *a3, BOOL *a4, CGVector *a5)
{
  v9 = a1[1];
  *&v11.a = *a1;
  *&v11.c = v9;
  *&v11.tx = a1[2];
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformDecompose(&v12, &v11);
  if (a2)
  {
    *a2 = v12.scale;
  }

  if (a3)
  {
    *a3 = v12.rotation;
  }

  if (a4)
  {
    *a4 = v12.scale.width < 0.0;
  }

  if (a5)
  {
    *a5 = v12.translation;
  }

  return fabs(v12.horizontalShear) < 1.42108547e-14;
}

char *color_space_state_create_linear_display_p3()
{
  LinearDisplayP3Profile = CGCMSUtilsCreateLinearDisplayP3Profile();
  icc_with_profile = color_space_state_create_icc_with_profile(LinearDisplayP3Profile, 0, v1, v2, v3, v4, v5, v6);
  if (LinearDisplayP3Profile)
  {
    CFRelease(LinearDisplayP3Profile);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceLinearDisplayP3";
    *(icc_with_profile + 5) = 9;
    *(*(icc_with_profile + 12) + 40) = @"Display P3 Linear";
  }

  return icc_with_profile;
}

char *color_space_state_create_extended_linear_display_p3()
{
  LinearDisplayP3Profile = CGCMSUtilsCreateLinearDisplayP3Profile();
  icc_with_profile = color_space_state_create_icc_with_profile(LinearDisplayP3Profile, 1, v1, v2, v3, v4, v5, v6);
  if (LinearDisplayP3Profile)
  {
    CFRelease(LinearDisplayP3Profile);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedLinearDisplayP3";
    *(icc_with_profile + 5) = 10;
    *(*(icc_with_profile + 12) + 40) = @"Display P3 Extended Linear";
  }

  return icc_with_profile;
}

char *color_space_state_create_p3_709()
{
  if (color_space_state_create_p3_709_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_p3_709_cglibrarypredicate, &__block_literal_global_81_1774);
  }

  v0 = color_space_state_create_p3_709_f;
  if (color_space_state_create_p3_709_cglibrarypredicate_82 != -1)
  {
    dispatch_once(&color_space_state_create_p3_709_cglibrarypredicate_82, &__block_literal_global_85);
  }

  v1 = v0(color_space_state_create_p3_709_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceDisplayP3_709OETF";
    *(icc_with_profile + 5) = 13;
    *(*(icc_with_profile + 12) + 40) = @"Display P3; ITU-R 709 OETF";
  }

  return icc_with_profile;
}

uint64_t *__color_space_state_create_p3_709_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncDisplayP3_709OETFProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_p3_709_s = v1;
  return result;
}

uint64_t (*__color_space_state_create_p3_709_block_invoke())()
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

  color_space_state_create_p3_709_f = v1;
  return result;
}

char *color_space_state_create_generic_xyz()
{
  if (color_space_state_create_generic_xyz_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_generic_xyz_cglibrarypredicate, &__block_literal_global_125);
  }

  v0 = color_space_state_create_generic_xyz_f;
  if (color_space_state_create_generic_xyz_cglibrarypredicate_126 != -1)
  {
    dispatch_once(&color_space_state_create_generic_xyz_cglibrarypredicate_126, &__block_literal_global_129_1785);
  }

  v1 = v0(color_space_state_create_generic_xyz_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 1, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceGenericXYZ";
    *(icc_with_profile + 5) = 6;
    *(icc_with_profile + 7) = 7;
    *(*(icc_with_profile + 12) + 40) = @"Generic XYZ Profile";
  }

  return icc_with_profile;
}

uint64_t *__color_space_state_create_generic_xyz_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncGenericXYZProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_generic_xyz_s = v1;
  return result;
}

uint64_t (*__color_space_state_create_generic_xyz_block_invoke())()
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

  color_space_state_create_generic_xyz_f = v1;
  return result;
}

char *color_space_state_create_acescg_linear()
{
  if (color_space_state_create_acescg_linear_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_acescg_linear_cglibrarypredicate, &__block_literal_global_136);
  }

  v0 = color_space_state_create_acescg_linear_f;
  if (color_space_state_create_acescg_linear_cglibrarypredicate_137 != -1)
  {
    dispatch_once(&color_space_state_create_acescg_linear_cglibrarypredicate_137, &__block_literal_global_140);
  }

  v1 = v0(color_space_state_create_acescg_linear_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceACESCGLinear";
    *(icc_with_profile + 5) = 19;
    *(*(icc_with_profile + 12) + 40) = @"ACES CG Linear (Academy Color Encoding System AP1)";
  }

  return icc_with_profile;
}

uint64_t *__color_space_state_create_acescg_linear_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncACESCGLinearProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_acescg_linear_s = v1;
  return result;
}

uint64_t (*__color_space_state_create_acescg_linear_block_invoke())()
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

  color_space_state_create_acescg_linear_f = v1;
  return result;
}

char *color_space_state_create_itur_709_pq()
{
  if (color_space_state_create_itur_709_pq_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_itur_709_pq_cglibrarypredicate, &__block_literal_global_158);
  }

  v0 = color_space_state_create_itur_709_pq_f;
  if (color_space_state_create_itur_709_pq_cglibrarypredicate_159 != -1)
  {
    dispatch_once(&color_space_state_create_itur_709_pq_cglibrarypredicate_159, &__block_literal_global_162_1799);
  }

  v1 = v0(color_space_state_create_itur_709_pq_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceITUR_709_PQ";
    *(icc_with_profile + 5) = 21;
    *(*(icc_with_profile + 12) + 40) = @"Rec. ITU-R BT.709-5; SMPTE ST 2084 PQ";
  }

  return icc_with_profile;
}

uint64_t *__color_space_state_create_itur_709_pq_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncITUR709_PQProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_itur_709_pq_s = v1;
  return result;
}

uint64_t (*__color_space_state_create_itur_709_pq_block_invoke())()
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

  color_space_state_create_itur_709_pq_f = v1;
  return result;
}

char *color_space_state_create_itur_709_hlg()
{
  if (color_space_state_create_itur_709_hlg_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_itur_709_hlg_cglibrarypredicate, &__block_literal_global_169);
  }

  v0 = color_space_state_create_itur_709_hlg_f;
  if (color_space_state_create_itur_709_hlg_cglibrarypredicate_170 != -1)
  {
    dispatch_once(&color_space_state_create_itur_709_hlg_cglibrarypredicate_170, &__block_literal_global_173);
  }

  v1 = v0(color_space_state_create_itur_709_hlg_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceITUR_709_HLG";
    *(icc_with_profile + 5) = 22;
    *(*(icc_with_profile + 12) + 40) = @"Rec. ITU-R BT.709-5; ARIB STD-B67 HLG";
  }

  return icc_with_profile;
}

uint64_t *__color_space_state_create_itur_709_hlg_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncITUR709_HLGProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_itur_709_hlg_s = v1;
  return result;
}

uint64_t (*__color_space_state_create_itur_709_hlg_block_invoke())()
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

  color_space_state_create_itur_709_hlg_f = v1;
  return result;
}

char *color_space_state_create_linear_itur_2020()
{
  LinearITUR2020Profile = CGCMSUtilsCreateLinearITUR2020Profile();
  icc_with_profile = color_space_state_create_icc_with_profile(LinearITUR2020Profile, 0, v1, v2, v3, v4, v5, v6);
  if (LinearITUR2020Profile)
  {
    CFRelease(LinearITUR2020Profile);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceLinearITUR_2020";
    *(icc_with_profile + 5) = 24;
    *(*(icc_with_profile + 12) + 40) = @"Rec. ITU-R BT.2020-1 Linear";
  }

  return icc_with_profile;
}

char *color_space_state_create_extended_itur_2020()
{
  if (color_space_state_create_extended_itur_2020_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_extended_itur_2020_cglibrarypredicate, &__block_literal_global_205);
  }

  v0 = color_space_state_create_extended_itur_2020_f;
  if (color_space_state_create_extended_itur_2020_cglibrarypredicate_206 != -1)
  {
    dispatch_once(&color_space_state_create_extended_itur_2020_cglibrarypredicate_206, &__block_literal_global_209);
  }

  v1 = v0(color_space_state_create_extended_itur_2020_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 1, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedITUR_2020";
    *(icc_with_profile + 5) = 25;
    *(*(icc_with_profile + 12) + 40) = @"Rec. ITU-R BT.2020-1 Extended";
  }

  return icc_with_profile;
}

uint64_t *__color_space_state_create_extended_itur_2020_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncITUR2020Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_extended_itur_2020_s = v1;
  return result;
}

uint64_t (*__color_space_state_create_extended_itur_2020_block_invoke())()
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

  color_space_state_create_extended_itur_2020_f = v1;
  return result;
}

char *color_space_state_create_extended_linear_itur_2020()
{
  LinearITUR2020Profile = CGCMSUtilsCreateLinearITUR2020Profile();
  icc_with_profile = color_space_state_create_icc_with_profile(LinearITUR2020Profile, 1, v1, v2, v3, v4, v5, v6);
  if (LinearITUR2020Profile)
  {
    CFRelease(LinearITUR2020Profile);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedLinearITUR_2020";
    *(icc_with_profile + 5) = 26;
    *(*(icc_with_profile + 12) + 40) = @"Rec. ITU-R BT.2020-1 Extended Linear";
  }

  return icc_with_profile;
}

char *color_space_state_create_dci_p3()
{
  if (color_space_state_create_dci_p3_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_dci_p3_cglibrarypredicate, &__block_literal_global_251);
  }

  v0 = color_space_state_create_dci_p3_f;
  if (color_space_state_create_dci_p3_cglibrarypredicate_252 != -1)
  {
    dispatch_once(&color_space_state_create_dci_p3_cglibrarypredicate_252, &__block_literal_global_255);
  }

  v1 = v0(color_space_state_create_dci_p3_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceDCIP3";
    *(icc_with_profile + 5) = 31;
    *(*(icc_with_profile + 12) + 40) = @"SMPTE RP 431-2-2007 DCI (P3)";
  }

  return icc_with_profile;
}

uint64_t *__color_space_state_create_dci_p3_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncDCIP3Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_dci_p3_s = v1;
  return result;
}

uint64_t (*__color_space_state_create_dci_p3_block_invoke())()
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

  color_space_state_create_dci_p3_f = v1;
  return result;
}

char *color_space_state_create_linear_gray()
{
  LinearGrayProfile = CGCMSUtilsCreateLinearGrayProfile();
  icc_with_profile = color_space_state_create_icc_with_profile(LinearGrayProfile, 0, v1, v2, v3, v4, v5, v6);
  if (LinearGrayProfile)
  {
    CFRelease(LinearGrayProfile);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceLinearGray";
    *(icc_with_profile + 5) = 3;
    *(*(icc_with_profile + 12) + 40) = @"Linear Gray";
  }

  return icc_with_profile;
}

char *color_space_state_create_extended_linear_gray()
{
  LinearGrayProfile = CGCMSUtilsCreateLinearGrayProfile();
  icc_with_profile = color_space_state_create_icc_with_profile(LinearGrayProfile, 1, v1, v2, v3, v4, v5, v6);
  if (LinearGrayProfile)
  {
    CFRelease(LinearGrayProfile);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedLinearGray";
    *(icc_with_profile + 5) = 4;
    *(*(icc_with_profile + 12) + 40) = @"Linear Gray";
  }

  return icc_with_profile;
}

char *color_space_state_create_perceptual_rgb()
{
  if (color_space_state_create_perceptual_rgb_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_perceptual_rgb_cglibrarypredicate, &__block_literal_global_282_1830);
  }

  v0 = color_space_state_create_perceptual_rgb_f;
  if (color_space_state_create_perceptual_rgb_cglibrarypredicate_283 != -1)
  {
    dispatch_once(&color_space_state_create_perceptual_rgb_cglibrarypredicate_283, &__block_literal_global_286);
  }

  v1 = v0(color_space_state_create_perceptual_rgb_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpacePerceptualStandardRGB";
    *(*(icc_with_profile + 12) + 40) = @"Perceptual Standard RGB 1.0";
  }

  return icc_with_profile;
}

uint64_t *__color_space_state_create_perceptual_rgb_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncPerceptualStandardRGBProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_perceptual_rgb_s = v1;
  return result;
}

uint64_t (*__color_space_state_create_perceptual_rgb_block_invoke())()
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

  color_space_state_create_perceptual_rgb_f = v1;
  return result;
}

char *color_space_state_create_core_media_709()
{
  if (color_space_state_create_core_media_709_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_core_media_709_cglibrarypredicate, &__block_literal_global_293);
  }

  v0 = color_space_state_create_core_media_709_f;
  if (color_space_state_create_core_media_709_cglibrarypredicate_294 != -1)
  {
    dispatch_once(&color_space_state_create_core_media_709_cglibrarypredicate_294, &__block_literal_global_297);
  }

  v1 = v0(color_space_state_create_core_media_709_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceCoreMedia709";
    *(icc_with_profile + 5) = 32;
    *(*(icc_with_profile + 12) + 40) = @"HGTV";
  }

  return icc_with_profile;
}

uint64_t *__color_space_state_create_core_media_709_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncCoreVideo709Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_core_media_709_s = v1;
  return result;
}

uint64_t (*__color_space_state_create_core_media_709_block_invoke())()
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

  color_space_state_create_core_media_709_f = v1;
  return result;
}

uint64_t CGPDFCIDToGlyphMapCreate(char *a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = *(a1 + 50);
  if (v2 != 7)
  {
    if (v2 == 6)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  value = 0;
  __s1 = 0;
  format = CGPDFDataFormatRaw;
  v4 = *(a1 + 2);
  if (!CGPDFDictionaryGetStream(v4, "CIDToGIDMap", &value))
  {
    Font = CGPDFFontGetFont(v1);
    if (Font)
    {
      v12 = Font;
      pthread_mutex_lock((v1 + 136));
      v13 = v1[304];
      pthread_mutex_unlock((v1 + 136));
      if (v13 == 1)
      {
        v17 = 8226;
        v16 = 0;
        (*(*(v12 + 16) + 384))(*(v12 + 112), &v17, &v16, 1);
        v14 = v16;
        v1 = malloc_type_calloc(1uLL, 0x208uLL, 0x1080040036EC52CuLL);
        *v1 = v14;
        return v1;
      }
    }

    if (CGPDFFontIsEmbedded(v1))
    {
      if (!CGPDFDictionaryGetName(v4, "CIDToGIDMap", &__s1))
      {
        return -1;
      }

      v15 = __s1;
      if (!strcmp(__s1, "Identity"))
      {
        return -1;
      }
    }

    else
    {
      pdf_log("missing or invalid CIDToGIDMap entry.");
    }

    return 0;
  }

  v5 = CGPDFStreamCopyData(value, &format);
  if (!v5 || format)
  {
    pdf_error("invalid CIDToGIDMap entry.");
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  v1 = malloc_type_calloc(1uLL, 0x208uLL, 0x1080040036EC52CuLL);
  *v1 = 0;
  BytePtr = CFDataGetBytePtr(v5);
  v7 = CFDataGetLength(v5) & 0xFFFFFFFFFFFFFFFELL;
  if (v7)
  {
    v8 = 0;
    for (i = 0; i < v7; i += 2)
    {
      v10 = v8 + 1;
      CGFontIndexMapAddIndex(v1, v8, bswap32(*&BytePtr[i]) >> 16);
      v8 = v10;
    }
  }

  CFRelease(v5);
  return v1;
}

BOOL CGCFDictionaryGetPointerAsNSValue(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    *a3 = [v4 pointerValue];
  }

  return v5 != 0;
}

BOOL CGCFDictionaryGetSizeAsNSValue(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    [v4 sizeValue];
    *a3 = v6;
    a3[1] = v7;
  }

  return v5 != 0;
}

BOOL CGCFDictionaryGetRectAsNSValue(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    [v4 rectValue];
    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return v5 != 0;
}

BOOL CGCFDictionaryGetCGMatrixFiilterAsNSValue(void *a1, uint64_t a2, _OWORD *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    [v4 CGMatrixFilterValue];
    a3[2] = v9;
    a3[3] = v10;
    a3[4] = v11;
    *a3 = v7;
    a3[1] = v8;
  }

  return v5 != 0;
}

void AddLazyPdfOperators(CGPDFOperatorTable *a1)
{
  CGPDFOperatorTableSetCallback(a1, "b", op_b);
  CGPDFOperatorTableSetCallback(a1, "B", op_B);
  CGPDFOperatorTableSetCallback(a1, "BDC", op_BDC);
  CGPDFOperatorTableSetCallback(a1, "BMC", op_BMC);
  CGPDFOperatorTableSetCallback(a1, "BT", op_BT);
  CGPDFOperatorTableSetCallback(a1, "b*", op_bstar);
  CGPDFOperatorTableSetCallback(a1, "B*", op_Bstar);
  CGPDFOperatorTableSetCallback(a1, "c", op_c);
  CGPDFOperatorTableSetCallback(a1, "cm", op_cm);
  CGPDFOperatorTableSetCallback(a1, "cs", op_cs);
  CGPDFOperatorTableSetCallback(a1, "CS", op_CS);
  CGPDFOperatorTableSetCallback(a1, "Do", op_Do);
  CGPDFOperatorTableSetCallback(a1, "d", op_d);
  CGPDFOperatorTableSetCallback(a1, "DP", op_DP);
  CGPDFOperatorTableSetCallback(a1, "d0", op_d0);
  CGPDFOperatorTableSetCallback(a1, "d1", op_d1);
  CGPDFOperatorTableSetCallback(a1, "EI", op_EI);
  CGPDFOperatorTableSetCallback(a1, "EMC", op_EMC);
  CGPDFOperatorTableSetCallback(a1, "ET", op_ET);
  CGPDFOperatorTableSetCallback(a1, "f", op_f);
  CGPDFOperatorTableSetCallback(a1, "F", op_f);
  CGPDFOperatorTableSetCallback(a1, "f*", op_fstar);
  CGPDFOperatorTableSetCallback(a1, "g", op_g);
  CGPDFOperatorTableSetCallback(a1, "G", op_G);
  CGPDFOperatorTableSetCallback(a1, "gs", op_gs);
  CGPDFOperatorTableSetCallback(a1, "h", op_h);
  CGPDFOperatorTableSetCallback(a1, "i", op_i);
  CGPDFOperatorTableSetCallback(a1, "j", op_j);
  CGPDFOperatorTableSetCallback(a1, "J", op_J);
  CGPDFOperatorTableSetCallback(a1, "k", op_k);
  CGPDFOperatorTableSetCallback(a1, "K", op_K);
  CGPDFOperatorTableSetCallback(a1, "l", op_l);
  CGPDFOperatorTableSetCallback(a1, "m", op_m);
  CGPDFOperatorTableSetCallback(a1, "M", op_M);
  CGPDFOperatorTableSetCallback(a1, "MP", op_MP);
  CGPDFOperatorTableSetCallback(a1, "n", op_n);
  CGPDFOperatorTableSetCallback(a1, "q", op_q);
  CGPDFOperatorTableSetCallback(a1, "Q", op_Q);
  CGPDFOperatorTableSetCallback(a1, "re", op_re);
  CGPDFOperatorTableSetCallback(a1, "RG", op_RG);
  CGPDFOperatorTableSetCallback(a1, "rg", op_rg);
  CGPDFOperatorTableSetCallback(a1, "ri", op_ri);
  CGPDFOperatorTableSetCallback(a1, "s", op_s);
  CGPDFOperatorTableSetCallback(a1, "S", op_S);
  CGPDFOperatorTableSetCallback(a1, "sc", op_sc);
  CGPDFOperatorTableSetCallback(a1, "SC", op_SC);
  CGPDFOperatorTableSetCallback(a1, "SCN", op_SCN);
  CGPDFOperatorTableSetCallback(a1, "scn", op_scn);
  CGPDFOperatorTableSetCallback(a1, "sh", op_sh);
  CGPDFOperatorTableSetCallback(a1, "Tc", op_Tc);
  CGPDFOperatorTableSetCallback(a1, "Td", op_Td);
  CGPDFOperatorTableSetCallback(a1, "TD", op_TD);
  CGPDFOperatorTableSetCallback(a1, "Tf", op_Tf);
  CGPDFOperatorTableSetCallback(a1, "Tj", op_Tj);
  CGPDFOperatorTableSetCallback(a1, "TJ", op_TJ);
  CGPDFOperatorTableSetCallback(a1, "TL", op_TL);
  CGPDFOperatorTableSetCallback(a1, "Tm", op_Tm);
  CGPDFOperatorTableSetCallback(a1, "Tr", op_Tr);
  CGPDFOperatorTableSetCallback(a1, "T*", op_Tstar);
  CGPDFOperatorTableSetCallback(a1, "Ts", op_Ts);
  CGPDFOperatorTableSetCallback(a1, "Tw", op_Tw);
  CGPDFOperatorTableSetCallback(a1, "Tz", op_Tz);
  CGPDFOperatorTableSetCallback(a1, "v", op_v);
  CGPDFOperatorTableSetCallback(a1, "W", op_W);
  CGPDFOperatorTableSetCallback(a1, "w", op_w);
  CGPDFOperatorTableSetCallback(a1, "W*", op_Wstar);
  CGPDFOperatorTableSetCallback(a1, "y", op_y);
  CGPDFOperatorTableSetCallback(a1, "'", op_quo);

  CGPDFOperatorTableSetCallback(a1, "", op_quoquo);
}

void op_y(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v7) && CGPDFScannerPopNumber(a1, &v4) && CGPDFScannerPopNumber(a1, &v5) && !CGPathIsEmpty(*(*(a2 + 40) + 64)))
  {
    CGPathAddCurveToPoint(*(*(a2 + 40) + 64), (*(a2 + 40) + 16), v5, v4, v7, value, v7, value);
  }
}

BOOL op_w(CGPDFScanner *a1, uint64_t a2)
{
  result = CGPDFScannerPopNumber(a1, (*(a2 + 40) + 296));
  if (result)
  {
    *(*(a2 + 40) + 9) = 1;
  }

  return result;
}

void op_v(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v9) && CGPDFScannerPopNumber(a1, &v6) && CGPDFScannerPopNumber(a1, &v7) && !CGPathIsEmpty(*(*(a2 + 40) + 64)))
  {
    CurrentPoint = CGPathGetCurrentPoint(*(*(a2 + 40) + 64));
    v5 = *(a2 + 40);
    CGPathAddCurveToPoint(*(v5 + 64), 0, CurrentPoint.x, CurrentPoint.y, *(v5 + 48) + v6 * *(v5 + 32) + *(v5 + 16) * v7, *(v5 + 56) + v6 * *(v5 + 40) + *(v5 + 24) * v7, *(v5 + 48) + *(v5 + 32) * value + *(v5 + 16) * v9, *(v5 + 56) + *(v5 + 40) * value + *(v5 + 24) * v9);
  }
}

void op_sh(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    v5 = 0;
    v6 = 0;
    if (common_op_sh(a1, a2, &v6, &v5))
    {
      CPPDFContextSaveGState(a2);
      v3 = *(a2 + 40);
      *(v3 + 376) = v6;
      v4 = *(v3 + 64);
      if (v4)
      {
        CFRelease(v4);
        v3 = *(a2 + 40);
      }

      *(v3 + 64) = v5;
      CPPDFLazyContextAddShape(a2);
      CPPDFContextRestoreGState(a2);
    }
  }
}

CGMutablePathRef op_S(uint64_t a1, CGPath *a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    return CPPDFLazyContextAddShape(a2);
  }

  return result;
}

void op_s(uint64_t a1, CGPath *a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    op_h(a1, a2);
    if ((*(a2 + 2336) & 1) == 0)
    {

      CPPDFLazyContextAddShape(a2);
    }
  }
}

void op_h(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0 && !CGPathIsEmpty(*(*(a2 + 40) + 64)))
  {
    v3 = *(*(a2 + 40) + 64);

    CGPathCloseSubpath(v3);
  }
}

CGPDFScanner *op_ri(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    return common_op_ri(a1, a2);
  }

  return a1;
}

void op_rg(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v5 = common_PopRGBAlphaCGColorCreate(a1, DeviceRGB);
    v6 = *(a2 + 40);
    v7 = *(v6 + 256);
    if (v7)
    {
      CFRelease(v7);
      v6 = *(a2 + 40);
    }

    *(v6 + 256) = v5;
    v8 = *(v6 + 264);
    if (v8)
    {
      CGColorSpaceRelease(v8);
      v6 = *(a2 + 40);
    }

    *(v6 + 264) = DeviceRGB;
    *(v6 + 9) = 1;
  }
}

void op_RG(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v5 = common_PopRGBAlphaCGColorCreate(a1, DeviceRGB);
    v6 = *(a2 + 40);
    v7 = *(v6 + 272);
    if (v7)
    {
      CFRelease(v7);
      v6 = *(a2 + 40);
    }

    *(v6 + 272) = v5;
    v8 = *(v6 + 280);
    if (v8)
    {
      CGColorSpaceRelease(v8);
      v6 = *(a2 + 40);
    }

    *(v6 + 280) = DeviceRGB;
    *(v6 + 9) = 1;
  }
}

void op_re(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    memset(&v3, 0, sizeof(v3));
    if (common_ReadCGRect(a1, &v3.origin.x))
    {
      CGPathAddRect(*(*(a2 + 40) + 64), (*(a2 + 40) + 16), v3);
    }
  }
}

void op_Q(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    CPPDFContextRestoreGState(a2);
  }
}

void op_q(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    CPPDFContextSaveGState(a2);
  }
}

CGPDFScanner *op_MP(CGPDFScanner *result, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    return CGPDFScannerPopName(result, &value);
  }

  return result;
}

BOOL op_M(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    result = CGPDFScannerPopNumber(result, (*(a2 + 40) + 288));
    if (result)
    {
      *(*(a2 + 40) + 9) = 1;
    }
  }

  return result;
}

void op_m(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    y = 0.0;
    value = 0.0;
    if (!CGPDFScannerPopNumber(a1, &y))
    {
      y = 0.0;
    }

    if (CGPDFScannerPopNumber(a1, &value))
    {
      v4 = value;
    }

    else
    {
      value = 0.0;
      v4 = 0.0;
    }

    CGPathMoveToPoint(*(*(a2 + 40) + 64), (*(a2 + 40) + 16), v4, y);
  }
}

void op_l(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    v4 = 0.0;
    value = 0.0;
    if (!CGPDFScannerPopNumber(a1, &v4))
    {
      v4 = 0.0;
    }

    if (!CGPDFScannerPopNumber(a1, &value))
    {
      value = 0.0;
    }

    if (!CGPathIsEmpty(*(*(a2 + 40) + 64)))
    {
      CGPathAddLineToPoint(*(*(a2 + 40) + 64), (*(a2 + 40) + 16), value, v4);
    }
  }
}

void op_K(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
    v5 = common_PopCMYKAlphaCGColorCreate(a1, DeviceCMYK);
    v6 = *(a2 + 40);
    v7 = *(v6 + 272);
    if (v7)
    {
      CFRelease(v7);
      v6 = *(a2 + 40);
    }

    *(v6 + 272) = v5;
    v8 = *(v6 + 280);
    if (v8)
    {
      CGColorSpaceRelease(v8);
      v6 = *(a2 + 40);
    }

    *(v6 + 280) = DeviceCMYK;
    *(v6 + 9) = 1;
  }
}

void op_k(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
    v5 = common_PopCMYKAlphaCGColorCreate(a1, DeviceCMYK);
    v6 = *(a2 + 40);
    v7 = *(v6 + 256);
    if (v7)
    {
      CFRelease(v7);
      v6 = *(a2 + 40);
    }

    *(v6 + 256) = v5;
    v8 = *(v6 + 264);
    if (v8)
    {
      CGColorSpaceRelease(v8);
      v6 = *(a2 + 40);
    }

    *(v6 + 264) = DeviceCMYK;
    *(v6 + 9) = 1;
  }
}

BOOL op_J(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    value = 0;
    result = CGPDFScannerPopInteger(result, &value);
    if (result)
    {
      v3 = *(a2 + 40);
      *(v3 + 304) = value;
      *(v3 + 9) = 1;
    }
  }

  return result;
}

BOOL op_j(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    value = 0;
    result = CGPDFScannerPopInteger(result, &value);
    if (result)
    {
      v3 = *(a2 + 40);
      *(v3 + 305) = value;
      *(v3 + 9) = 1;
    }
  }

  return result;
}

CGPDFReal op_i(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    value = 0.0;
    if (CGPDFScannerPopNumber(a1, &value))
    {
      result = value;
      v4 = *(a2 + 40);
      *(v4 + 312) = value;
      *(v4 + 9) = 1;
    }
  }

  return result;
}

CGPDFScanner *op_gs(CGPDFScanner *result, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    v3 = result;
    value = 0;
    result = CGPDFScannerPopName(result, &value);
    if (result)
    {
      result = common_GetResourceDictionary(*(v3 + 7), "ExtGState", value);
      if (result)
      {
        v4 = result;
        result = common_op_gs(a2, result);
        if (result)
        {
          v6 = 0;
          result = CGPDFDictionaryGetDictionary(v4, "SMask", &v6);
          v5 = *(a2 + 40);
          if (result)
          {
            *(v5 + 368) = v6;
          }

          *(v5 + 9) = 1;
        }
      }
    }
  }

  return result;
}

void op_G(CGPDFScanner *a1, uint64_t a2)
{
  value[2] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 2336) & 1) == 0)
  {
    value[1] = 1.0;
    if (CGPDFScannerPopNumber(a1, value))
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v4 = CGColorCreate(DeviceGray, value);
      v5 = *(a2 + 40);
      v6 = *(v5 + 280);
      if (v6)
      {
        CGColorSpaceRelease(v6);
        v5 = *(a2 + 40);
      }

      *(v5 + 280) = DeviceGray;
      v7 = *(v5 + 272);
      if (v7)
      {
        CFRelease(v7);
        v5 = *(a2 + 40);
      }

      *(v5 + 272) = v4;
      *(v5 + 9) = 1;
    }
  }
}

void op_g(CGPDFScanner *a1, uint64_t a2)
{
  value[2] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 2336) & 1) == 0)
  {
    value[1] = 1.0;
    if (CGPDFScannerPopNumber(a1, value))
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v4 = CGColorCreate(DeviceGray, value);
      v5 = *(a2 + 40);
      v6 = *(v5 + 264);
      if (v6)
      {
        CGColorSpaceRelease(v6);
        v5 = *(a2 + 40);
      }

      *(v5 + 264) = DeviceGray;
      v7 = *(v5 + 256);
      if (v7)
      {
        CFRelease(v7);
        v5 = *(a2 + 40);
      }

      *(v5 + 256) = v4;
      *(v5 + 9) = 1;
    }
  }
}

CGMutablePathRef op_fstar(uint64_t a1, CGPath *a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    return CPPDFLazyContextAddShape(a2);
  }

  return result;
}

CGMutablePathRef op_f(uint64_t a1, CGPath *a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    return CPPDFLazyContextAddShape(a2);
  }

  return result;
}

void op_DP(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    v2 = *(a1 + 18);
    if (v2 <= 0)
    {
      pdf_error("stack underflow.");
    }

    else
    {
      *(a1 + 18) = v2 - 1;
      CGPDFScannerPopName(a1, &value);
    }
  }
}

void op_Do(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    v9 = 0;
    v7 = 0;
    dict = 0;
    if (common_op_Do(a1, &v9, &dict, &v7))
    {
      v3 = v9;
      if (!strcmp(v9, "Image"))
      {
        value = 0.0;
        v4 = dict;
        CGPDFDictionaryGetNumber(dict, "Width", &value);
        CGPDFDictionaryGetNumber(v4, "Height", &v5);
      }

      else if (!strcmp(v3, "Form"))
      {
        DoPdfForm(a2, v7, 1);
      }
    }
  }
}

double op_cm(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    v5 = CGAffineTransformIdentity;
    if (common_ReadCGAffineTransform(a1, &v5.a))
    {
      v4 = v5;
      *&result = *&CPPDFContextConcatCTM(*(a2 + 40), &v4.a);
    }
  }

  return result;
}

void op_c(CGPDFScanner *a1, uint64_t a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    v8 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    y = 0.0;
    if (common_ReadCGPathCurve(a1, &v8, &v7, &v6, &v5, &v4, &y) && !CGPathIsEmpty(*(*(a2 + 40) + 64)))
    {
      CGPathAddCurveToPoint(*(*(a2 + 40) + 64), (*(a2 + 40) + 16), v8, v7, v6, v5, v4, y);
    }
  }
}

CGMutablePathRef op_Bstar(uint64_t a1, CGPath *a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    return CPPDFLazyContextAddShape(a2);
  }

  return result;
}

void op_bstar(uint64_t a1, CGPath *a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    op_h(a1, a2);
    if ((*(a2 + 2336) & 1) == 0)
    {

      CPPDFLazyContextAddShape(a2);
    }
  }
}

CGMutablePathRef op_B(uint64_t a1, CGPath *a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    return CPPDFLazyContextAddShape(a2);
  }

  return result;
}

void op_b(uint64_t a1, CGPath *a2)
{
  if ((*(a2 + 2336) & 1) == 0)
  {
    op_h(a1, a2);
    if ((*(a2 + 2336) & 1) == 0)
    {

      CPPDFLazyContextAddShape(a2);
    }
  }
}

CGImageRef rip_adaptive_bitmap_context_create_image(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 288);
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_lock((v4 + 120));
  v5 = *(v4 + 112);
  v6 = *(a3 + 120);
  if (*(v6 + 48) >= v5)
  {
    v5 = *(v6 + 48);
  }

  *(v4 + 112) = v5;
  v7 = rip_adaptive_bitmap_context_rasterization_loop(v4);
  Image = CGBitmapContextCreateImage(v7);
  if (v7)
  {
    CFRelease(v7);
  }

  pthread_mutex_unlock((v4 + 120));
  return Image;
}

uint64_t rip_adaptive_bitmap_context_rasterization_loop(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRetain(v2);
    return 0;
  }

  v4 = *(a1 + 80);
  if (!v4)
  {
    return 0;
  }

  CFRelease(v4);
  *(a1 + 80) = 0;
  v5 = *(a1 + 100);
  v6 = *(a1 + 116);
  v7 = *(a1 + 105);
  v8 = *(a1 + 108);
  v126 = *(a1 + 104);
  if (v126)
  {
    v9 = 1;
  }

  else
  {
    if (v5 == 1 && v6 == 1)
    {
      v10 = *(a1 + 96);
      v11 = *(a1 + 112);
      v12 = *(a1 + 105);
      v127 = *(a1 + 8);
      v129 = *a1;
LABEL_17:
      if (v12 == 1)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      if (v11 == 0.0)
      {
        v14 = *(a1 + 108);
      }

      else
      {
        v14 = v11;
      }

      v15 = &kCGColorSpaceGenericGrayGamma2_2;
      goto LABEL_24;
    }

    if (v5 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  if (*(a1 + 105))
  {
    v12 = v9;
  }

  else
  {
    v12 = 5;
  }

  v10 = *(a1 + 96);
  v11 = *(a1 + 112);
  v127 = *(a1 + 8);
  v129 = *a1;
  if (v6 == 1)
  {
    goto LABEL_17;
  }

  if (v12 == 1)
  {
    v13 = 3;
  }

  else if (v12 == 2)
  {
    v13 = 7;
  }

  else
  {
    v13 = 5;
  }

  if (v11 == 0.0)
  {
    v14 = *(a1 + 108);
  }

  else
  {
    v14 = *(a1 + 112);
  }

  if (v14 <= 1.0)
  {
    v15 = &kCGColorSpaceSRGB;
    if (*(a1 + 104))
    {
      v15 = &kCGColorSpaceExtendedSRGB;
    }
  }

  else
  {
    v15 = &kCGColorSpaceExtendedLinearDisplayP3;
  }

LABEL_24:
  v16 = CGColorSpaceCreateWithName(*v15);
  if (CGColorSpaceIsWideGamutRGB(v16))
  {
    v21 = v10;
  }

  else
  {
    v21 = 1;
  }

  v22 = (v12 - 1) < 2;
  v24 = v13 == 3 || v21 != 1;
  if (v16)
  {
    v25 = *(*(v16 + 3) + 48);
  }

  else
  {
    v25 = 0;
  }

  v124 = v6;
  v125 = v5;
  v123 = v7;
  switch(v21)
  {
    case 1:
      v26 = v21;
      break;
    case 4:
      v26 = 4;
      break;
    case 5:
      v26 = 2;
      break;
    default:
      _CGHandleAssert("rip_adaptive_bitmap_context_get_aligned_bytes_per_row_for_info", 1043, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AdaptiveBitmapContext/RIPAdaptiveBitmapContext.c", "component_size != 0", "component type not supported (%u)", v17, v18, v19, v21);
  }

  if (v13 != 1)
  {
    ++v25;
  }

  v27 = v26 * v25;
  v28 = (v26 * v25 * v129 + 31) & 0xFFFFFFFFFFFFFFE0;
  v29 = (a1 + 192);
  if (v129 == *(a1 + 192) && v127 == *(a1 + 200) && ((v20.n128_u32[0] = *(a1 + 264), v27 == *(a1 + 208)) ? (v30 = v28 == *(a1 + 216)) : (v30 = 0), v30 ? (v31 = v21 == *(a1 + 224)) : (v31 = 0), v31 ? (v32 = v13 == *(a1 + 228)) : (v32 = 0), v32 ? (v33 = *(a1 + 232) == 0) : (v33 = 0), v33 ? (v34 = *(a1 + 248) == v22) : (v34 = 0), v34 ? (v35 = *(a1 + 256) == v24) : (v35 = 0), v35 ? (v36 = v14 == v20.n128_f32[0]) : (v36 = 0), v36 && CGColorSpaceEqualToColorSpace(v16, *(a1 + 240)) && *(a1 + 40)))
  {
    CGColorSpaceRelease(v16);
    v130 = 0;
  }

  else
  {
    v43 = *(a1 + 48);
    if (v43)
    {
      v44 = *(a1 + 272);
      if (v44)
      {
        *&v141 = v129;
        *(&v141 + 1) = v127;
        *&v142 = v27;
        *(&v142 + 1) = v28;
        v143 = __PAIR64__(v13, v21);
        *cf = v16;
        cf[8] = v22;
        *&cf[9] = 0;
        *&cf[12] = 0;
        *&cf[16] = v24;
        *&cf[24] = LODWORD(v14);
        *&v133 = __PAIR64__(v124, v125);
        BYTE8(v133) = v126;
        BYTE9(v133) = v123;
        WORD5(v133) = 0;
        HIDWORD(v133) = v8;
        (*(v43 + 16))(v43, v44, &v133, &v141, v20);
        *(a1 + 272) = 0;
      }
    }

    CGColorSpaceRelease(*(a1 + 240));
    *(a1 + 240) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *v29 = 0u;
    if (v16)
    {
      CFRetain(v16);
    }

    *(a1 + 192) = v129;
    *(a1 + 200) = v127;
    *(a1 + 208) = v27;
    *(a1 + 216) = v28;
    *(a1 + 224) = v21;
    *(a1 + 228) = v13;
    *(a1 + 232) = 0;
    *(a1 + 240) = v16;
    *(a1 + 248) = v22;
    *(a1 + 249) = 0;
    *(a1 + 252) = 0;
    *(a1 + 256) = v24;
    *(a1 + 264) = v14;
    *(a1 + 268) = 0;
    v45 = *(a1 + 32);
    if (v45)
    {
      v46 = *(a1 + 240);
      v143 = *(a1 + 224);
      *cf = v46;
      *&cf[16] = *(a1 + 256);
      v47 = *(a1 + 208);
      v141 = *v29;
      v142 = v47;
      v136[0] = v125;
      v136[1] = v124;
      v137 = v126;
      v138 = v123;
      v139 = 0;
      v140 = v8;
      if (((*(v45 + 16))(v45, v136, &v141) & 1) == 0)
      {
        CGColorSpaceRelease(*(a1 + 240));
        *(a1 + 240) = 0u;
        *(a1 + 256) = 0u;
        *(a1 + 208) = 0u;
        *(a1 + 224) = 0u;
        *v29 = 0u;
        v133 = v141;
        v134 = v142;
        v135 = v143;
        v131 = *&cf[8];
        v48 = *cf;
        v132 = *&cf[24];
        if (*cf)
        {
          CFRetain(*cf);
        }

        v49 = v134;
        *v29 = v133;
        *(a1 + 208) = v49;
        *(a1 + 224) = v135;
        *(a1 + 240) = v48;
        *(a1 + 248) = v131;
        *(a1 + 264) = v132;
      }
    }

    v130 = 1;
  }

  v50 = *(a1 + 192);
  v51 = *(a1 + 200);
  v52 = *(a1 + 216);
  v53 = *(a1 + 224);
  v54 = *(a1 + 228);
  v55 = *(a1 + 240);
  v56 = *(a1 + 248);
  v57 = *(a1 + 264);
  v58 = *(a1 + 16);
  v59 = *(a1 + 24);
  if (v54 > 5)
  {
    if (v54 > 8)
    {
      if (v54 != 9)
      {
        if (v54 == 10)
        {
          if (v53 == 1)
          {
            v128 = *(a1 + 64);
            v61 = v56 == 0;
            v62 = 8197;
LABEL_132:
            if (v61)
            {
              v60 = v62;
            }

            else
            {
              v60 = 0;
            }

            goto LABEL_145;
          }
        }

        else if (v54 != 11)
        {
          goto LABEL_105;
        }

LABEL_135:
        v60 = 0;
        goto LABEL_136;
      }

      if (v53 != 1)
      {
        goto LABEL_135;
      }

      v128 = *(a1 + 64);
      v63 = (v56 & 1) == 0;
      v64 = 8193;
    }

    else
    {
      if (v54 == 6)
      {
        goto LABEL_99;
      }

      if (v54 != 7)
      {
        if (v53 == 1)
        {
          v128 = *(a1 + 64);
          v61 = v56 == 0;
          v62 = 8198;
          goto LABEL_132;
        }

        goto LABEL_135;
      }

      if (v53 != 1)
      {
        goto LABEL_135;
      }

      v128 = *(a1 + 64);
      v63 = (v56 & 1) == 0;
      v64 = 8194;
    }

    if (v63)
    {
      v60 = 0;
    }

    else
    {
      v60 = v64;
    }

LABEL_145:
    v67 = 8;
    if (!v55)
    {
      goto LABEL_143;
    }

    goto LABEL_146;
  }

  if (v54 <= 2)
  {
    if (!v54)
    {
      v60 = 7;
      goto LABEL_136;
    }

    if (v54 != 1)
    {
      if (v54 == 2)
      {
        v60 = 1;
        goto LABEL_136;
      }

LABEL_105:
      _CGHandleAssert("rip_adaptive_bitmap_context_get_alpha_info_from_bitmap_context_info", 468, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AdaptiveBitmapContext/RIPAdaptiveBitmapContext.c", "0", "unhandled context model %d", v40, v41, v42, *(a1 + 228));
    }

    goto LABEL_135;
  }

  if (v54 == 3)
  {
    if (v56)
    {
      v60 = 1;
    }

    else
    {
      v60 = 3;
    }
  }

  else
  {
    if (v54 != 4)
    {
LABEL_99:
      if (*(a1 + 248))
      {
        v60 = 0;
      }

      else
      {
        v60 = *(a1 + 228);
      }

      goto LABEL_136;
    }

    if (v56)
    {
      v60 = 2;
    }

    else
    {
      v60 = 4;
    }
  }

LABEL_136:
  if (v53 > 3)
  {
    if (v53 == 4)
    {
      v128 = *(a1 + 64);
      v67 = 32;
      if (!v55)
      {
        goto LABEL_143;
      }

      goto LABEL_146;
    }

    if (v53 != 5)
    {
      goto LABEL_139;
    }

    goto LABEL_142;
  }

  if (v53 == 1)
  {
    v128 = *(a1 + 64);
    goto LABEL_145;
  }

  if (v53 != 2)
  {
LABEL_139:
    v65 = a1;
    v66 = -1;
    goto LABEL_175;
  }

LABEL_142:
  v128 = *(a1 + 64);
  v67 = 16;
  if (!v55)
  {
LABEL_143:
    v68 = 0;
    goto LABEL_147;
  }

LABEL_146:
  v68 = *(*(v55 + 3) + 48);
LABEL_147:
  if (v60)
  {
    v69 = v68 + 1;
  }

  else
  {
    v69 = v68;
  }

  if (CGColorSpaceUsesExtendedRange(v55))
  {
    v73 = 4352;
  }

  else
  {
    v73 = 0;
  }

  v74 = *(a1 + 40);
  if (v74)
  {
    v75 = *(a1 + 272);
    if (v130)
    {
      if (v75)
      {
        _CGHandleAssert("rip_adaptive_bitmap_context_create_bitmap_context", 531, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AdaptiveBitmapContext/RIPAdaptiveBitmapContext.c", "data->current_provider == NULL", "rendering buffer provider is missing", v70, v71, v72, v122);
      }

      v76 = *(a1 + 116);
      LODWORD(v133) = *(a1 + 100);
      *(&v133 + 4) = v76;
      WORD4(v133) = *(a1 + 104);
      HIDWORD(v133) = *(a1 + 108);
      v77 = *(a1 + 240);
      v143 = *(a1 + 224);
      *cf = v77;
      *&cf[16] = *(a1 + 256);
      v78 = *(a1 + 208);
      v141 = *v29;
      v142 = v78;
      v79 = (*(v74 + 2))(v74, &v133, &v141);
      if (!v79)
      {
        v65 = a1;
        v66 = -3;
        goto LABEL_175;
      }

      v75 = v79;
      *(a1 + 272) = v79;
    }

    else if (!v75)
    {
      _CGHandleAssert("rip_adaptive_bitmap_context_create_bitmap_context", 548, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AdaptiveBitmapContext/RIPAdaptiveBitmapContext.c", "buffer_provider != NULL", "rendering buffer provider cannot be NULL", v70, v71, v72, v122);
    }

    v74 = CGRenderingBufferLockBytePtr(v75);
    v80 = rip_adaptive_bitmap_context_release_bitmap_context_data;
    if (!v74)
    {
      _CGHandleAssert("rip_adaptive_bitmap_context_handle_error", 166, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AdaptiveBitmapContext/RIPAdaptiveBitmapContext.c", "0", "unhandled error code %d", v82, v83, v84, -4);
    }

    v81 = a1;
  }

  else
  {
    v80 = 0;
    v81 = 0;
  }

  v85 = CGBitmapContextCreateWithDataAndDictionary(v74, v50, v51, v67, v69 * v67, v52, v55, v73 | v60, v58, v59, v80, v81, v128);
  if (v85)
  {
    v86 = v85;
    if (CGColorSpaceUsesITUR_2100TF(v55) || CGColorSpaceUsesExtendedRange(v55))
    {
      CGContextSetEDRTargetHeadroom(v86, v87, v88, v89, v90, v91, v92, v93, v57);
    }

    if (v130)
    {
      Count = CFArrayGetCount(*(a1 + 184));
      if (Count)
      {
        v95 = Count;
        for (i = 0; i != v95; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 184), i);
          CGDisplayListDrawInContext(ValueAtIndex, v86, v98, v99, v100, v101, v102, v103);
        }
      }
    }

    goto LABEL_176;
  }

  v65 = a1;
  v66 = -2;
LABEL_175:
  rip_adaptive_bitmap_context_handle_error(v65, v66, v37, v38, v39, v40, v41, v42);
  v86 = 0;
  v3 = 0;
  if (!*(a1 + 56))
  {
LABEL_176:
    CGDisplayListDrawInContext(*(a1 + 72), v86, v88, v89, v90, v91, v92, v93);
    v3 = v86;
  }

  CFArrayAppendValue(*(a1 + 184), *(a1 + 72));
  v110 = *(a1 + 72);
  if (v110)
  {
    CFRelease(v110);
  }

  v111 = *a1;
  v112 = *(a1 + 8);
  v141 = 0uLL;
  *&v142 = v111;
  *(&v142 + 1) = v112;
  CGDisplayList = CG::DisplayList::createCGDisplayList(0, &v141, v104, v105, v106, v107, v108, v109);
  *(a1 + 72) = CGDisplayList;
  *(a1 + 80) = CGDisplayListContextCreate(CGDisplayList, v114, v115, v116, v117, v118, v119, v120);
  return v3;
}

void rip_adaptive_bitmap_context_handle_error(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (a2 <= -3)
  {
    if (a2 != -3)
    {
      _CGHandleAssert("rip_adaptive_bitmap_context_handle_error", 166, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AdaptiveBitmapContext/RIPAdaptiveBitmapContext.c", "0", "unhandled error code %d", a6, a7, a8, -4);
    }

    v10 = @"allocate callback returned NULL CGBufferProviderRef";
  }

  else if (a2 == -1)
  {
    v10 = @"Provided CGBitmapParameters results in bits_per_component equal zero";
  }

  else
  {
    v10 = @"Failed to create bitmap context when using provided CGBitmapParameters";
  }

  if (*(a1 + 56))
  {
    v11 = *MEMORY[0x1E695E620];
    values = v10;
    keys[0] = v11;
    v12 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v13 = CFErrorCreate(0, @"CGAdaptiveBitmapContextDomain", a2, v12);
    CFRelease(v12);
    v14 = *(a1 + 116);
    v22 = *(a1 + 100);
    v23 = v14;
    v24 = 0;
    LOWORD(v24) = *(a1 + 104);
    v25 = *(a1 + 108);
    v15 = *(a1 + 240);
    v19 = *(a1 + 224);
    v20 = v15;
    v21 = *(a1 + 256);
    v16 = *(a1 + 208);
    v17 = *(a1 + 192);
    v18 = v16;
    (*(*(a1 + 56) + 16))();
    CFRelease(v13);
  }
}

uint64_t rip_adaptive_bitmap_context_operation(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a1)
  {
    v6 = *(a1 + 288);
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_lock((v6 + 120));
  if (CFEqual(a4, @"kCGContextFlush"))
  {
    v7 = rip_adaptive_bitmap_context_rasterization_loop(v6);
    if (v7)
    {
      CFRelease(v7);
    }

    goto LABEL_21;
  }

  if (CFEqual(a4, @"kCGContextClear") || CFEqual(a4, @"kCGContextErase"))
  {
    *(v6 + 104) = 0;
    *(v6 + 105) = CFEqual(a4, @"kCGContextClear") != 0;
    *(v6 + 100) = CFEqual(a4, @"kCGContextClear") == 0;
    CGColorSpaceRelease(*(v6 + 240));
    *(v6 + 240) = 0u;
    *(v6 + 256) = 0u;
    *(v6 + 208) = 0u;
    *(v6 + 224) = 0u;
    *(v6 + 192) = 0u;
    *(v6 + 116) = 1;
    rip_adaptive_bitmap_context_release_buffer_provider(v6, v8, v9, v10, v11, v12, v13, v14);
    CFArrayRemoveAllValues(*(v6 + 184));
  }

  else if (!v6)
  {
LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  v15 = *(v6 + 88);
  if (!v15)
  {
    v15 = *(v6 + 80);
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  v16 = *(v15 + 40);
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = *(v16 + 168);
  if (!v17)
  {
    v18 = 1006;
    goto LABEL_22;
  }

  v18 = v17();
  if (!v18)
  {
LABEL_28:
    if (CFEqual(a4, @"kCGContextClear") || CFEqual(a4, @"kCGContextErase"))
    {
      v19 = CGGStateCreate();
      ConstantColor = CGColorGetConstantColor(@"kCGColorWhite");
      CGGStateSetFillColor(v19, ConstantColor);
      v21 = CFEqual(a4, @"kCGContextClear") == 0;
      CGGStateSetCompositeOperation(v19, v21);
      v22 = *(v15 + 40);
      if (v22)
      {
        v23 = *(v22 + 64);
        if (v23)
        {
          v23(v22, a2, v19, 0);
        }
      }

      CGGStateRelease(v19);
    }

    goto LABEL_21;
  }

LABEL_22:
  pthread_mutex_unlock((v6 + 120));
  return v18;
}

void rip_adaptive_bitmap_context_release_buffer_provider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 272);
  if (v8)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(a1 + 116);
      v15[0] = *(a1 + 100);
      v15[1] = v11;
      v16 = 0;
      LOWORD(v16) = *(a1 + 104);
      v17 = *(a1 + 108);
      v12 = *(a1 + 240);
      v14[2] = *(a1 + 224);
      v14[3] = v12;
      v14[4] = *(a1 + 256);
      v13 = *(a1 + 208);
      v14[0] = *(a1 + 192);
      v14[1] = v13;
      (*(v10 + 16))(v10, v8, v15, v14, a5, a6, a7, a8);
    }

    else
    {
      CFRelease(v8);
    }

    *(a1 + 272) = 0;
  }
}

uint64_t rip_adaptive_bitmap_context_draw_layer(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v13 = 120;
    pthread_mutex_lock(0x78);
    v12 = 0;
    goto LABEL_6;
  }

  v12 = *(a1 + 288);
  v13 = v12 + 120;
  pthread_mutex_lock((v12 + 120));
  if (!v12)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = *(v12 + 88);
  if (!v14)
  {
    v14 = *(v12 + 80);
  }

LABEL_7:
  rip_adaptive_bitmap_context_update_content_info_from_GState(v12, a7);
  v22 = *(v12 + 112);
  v23 = *(a7 + 120);
  if (*(v23 + 48) >= v22)
  {
    v22 = *(v23 + 48);
  }

  *(v12 + 112) = v22;
  if (v14)
  {
    v24 = *(v14 + 40);
    if (v24)
    {
      v25 = *(v24 + 216);
      if (v25)
      {
        v26 = v25(a2, a3, a4, a5);
      }

      else
      {
        v26 = 1006;
      }
    }

    else
    {
      v26 = 0;
    }

    *(v12 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v12, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v26 = 0;
  }

  pthread_mutex_unlock(v13);
  return v26;
}

void rip_adaptive_bitmap_context_update_content_info_from_GState(uint64_t a1, uint64_t a2)
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

  update_colored_pattern_info(a1 + 280, v5);
  StrokeColor = CGGStateGetStrokeColor(a2);
  if (StrokeColor < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(StrokeColor + 32);
  }

  update_colored_pattern_info(a1 + 304, v7);
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

  if (ContentHeadroom <= *(a1 + 324))
  {
    ContentHeadroom = *(a1 + 324);
  }

  v45 = *(*(a2 + 120) + 16);
  if (v45)
  {
    v46 = *(v45 + 24);
  }

  else
  {
    v46 = 0;
  }

  if (ContentHeadroom <= CGColorGetContentHeadroom(v46))
  {
    ContentHeadroom = CGColorGetContentHeadroom(v46);
  }

  *(a1 + 108) = ContentHeadroom;
}

uint64_t rip_adaptive_bitmap_context_contains_transparency(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 88);
  if (v8)
  {
    if (*(v8 + 16) == 1129601108 && *(v8 + 24) == 4)
    {
      return (*(*(v8 + 32) + 40) & 0x1F) != 0;
    }

    else
    {
      handle_invalid_context("CGBitmapContextGetBitmapInfo", v8, a3, a4, a5, a6, a7, a8);
      return 0;
    }
  }

  else
  {
    v10 = *(a1 + 72);
    if (!v10)
    {
      _CGHandleAssert("rip_adaptive_bitmap_context_contains_transparency", 402, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AdaptiveBitmapContext/RIPAdaptiveBitmapContext.c", "data->dl != NULL", "display list is missing", a6, a7, a8, vars0);
    }

    return CG::DisplayList::containsTransparentContent((v10 + 16), 0);
  }
}

void update_colored_pattern_info(uint64_t a1, CFTypeRef cf)
{
  v3 = *a1;
  if (cf && *(cf + 185) == 1)
  {
    if (v3 != cf)
    {
      if (v3)
      {
        CFRelease(v3);
      }

      CFRetain(cf);
      *a1 = cf;
      Adaptive = CGBitmapContextCreateAdaptive(2uLL, 2uLL, 0, 0, 0, 0, 0, v5);
      v14 = *(cf + 21);
      if (v14)
      {
        v14(*(cf + 10), Adaptive);
      }

      v15 = *(CGContextGetDelegate(Adaptive, v6, v7, v8, v9, v10, v11, v12) + 288);
      *(a1 + 8) = *(v15 + 104);
      v16 = *(v15 + 100);
      *(a1 + 12) = *(v15 + 116);
      *(a1 + 16) = v16;
      *(a1 + 20) = *(v15 + 108);
      if (Adaptive)
      {

        CFRelease(Adaptive);
      }
    }
  }

  else if (v3)
  {
    CFRelease(v3);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t rip_adaptive_bitmap_context_get_layer(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  if (!a1)
  {
    v14 = 120;
    pthread_mutex_lock(0x78);
    v13 = 0;
    goto LABEL_6;
  }

  v13 = *(a1 + 288);
  v14 = v13 + 120;
  pthread_mutex_lock((v13 + 120));
  if (!v13)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = *(v13 + 88);
  if (!v15)
  {
    v15 = *(v13 + 80);
  }

LABEL_7:
  rip_adaptive_bitmap_context_update_content_info_from_GState(v13, a7);
  v23 = *(v13 + 112);
  v24 = *(a7 + 120);
  if (*(v24 + 48) >= v23)
  {
    v23 = *(v24 + 48);
  }

  *(v13 + 112) = v23;
  if (v15)
  {
    v25 = *(v15 + 40);
    if (v25 && (v26 = *(v25 + 208)) != 0)
    {
      v12 = v26(a2, a3, a4, a5);
    }

    else
    {
      v12 = 0;
    }

    *(v13 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v13, v16, v17, v18, v19, v20, v21, v22);
  }

  pthread_mutex_unlock(v14);
  return v12;
}

uint64_t rip_adaptive_bitmap_context_end_layer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = 120;
    pthread_mutex_lock(0x78);
    v5 = 0;
    goto LABEL_6;
  }

  v5 = *(a1 + 288);
  v6 = v5 + 120;
  pthread_mutex_lock((v5 + 120));
  if (!v5)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = *(v5 + 88);
  if (!v7)
  {
    v7 = *(v5 + 80);
  }

LABEL_7:
  rip_adaptive_bitmap_context_update_content_info_from_GState(v5, a3);
  v15 = *(v5 + 112);
  v16 = *(a3 + 120);
  if (*(v16 + 48) >= v15)
  {
    v15 = *(v16 + 48);
  }

  *(v5 + 112) = v15;
  if (v7)
  {
    v17 = *(v7 + 40);
    if (v17)
    {
      v18 = *(v17 + 200);
      if (v18)
      {
        v18();
      }
    }

    *(v5 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v5, v8, v9, v10, v11, v12, v13, v14);
  }

  pthread_mutex_unlock(v6);
  return a1;
}

uint64_t rip_adaptive_bitmap_context_begin_layer(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  if (!a1)
  {
    v15 = 120;
    pthread_mutex_lock(0x78);
    v14 = 0;
    goto LABEL_6;
  }

  v14 = *(a1 + 288);
  v15 = v14 + 120;
  pthread_mutex_lock((v14 + 120));
  if (!v14)
  {
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  v16 = *(v14 + 88);
  if (!v16)
  {
    v16 = *(v14 + 80);
  }

LABEL_7:
  rip_adaptive_bitmap_context_update_content_info_from_GState(v14, a3);
  v17 = *(v14 + 112);
  v18 = *(a3 + 120);
  if (*(v18 + 48) >= v17)
  {
    v17 = *(v18 + 48);
  }

  *(v14 + 112) = v17;
  if (v16)
  {
    v19 = *(v16 + 40);
    if (v19)
    {
      v20 = *(v19 + 192);
      if (v20)
      {
        v20(a4, a5, a6, a7);
      }
    }

    FillColor = CGGStateGetFillColor(a3);
    v22 = FillColor;
    if (FillColor)
    {
      CFRetain(FillColor);
    }

    ConstantColor = CGColorGetConstantColor(@"kCGColorClear");
    CGGStateSetFillColor(a3, ConstantColor);
    v24 = *(v16 + 40);
    if (v24)
    {
      v25 = *(v24 + 64);
      if (v25)
      {
        v25(v24, a2, a3, 0);
      }
    }

    CGGStateSetFillColor(a3, v22);
    if (v22)
    {
      CFRelease(v22);
    }

    *(v14 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v14, v26, v27, v28, v29, v30, v31, v32);
  }

  pthread_mutex_unlock(v15);
  return a1;
}

uint64_t rip_adaptive_bitmap_context_draw_display_list(uint64_t a1, uint64_t a2, uint64_t a3)
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
  rip_adaptive_bitmap_context_update_content_info_from_GState(v4, a3);
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
      v17 = *(v16 + 128);
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

    *(v4 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v4, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v18 = 0;
  }

  pthread_mutex_unlock(v5);
  return v18;
}

uint64_t rip_adaptive_bitmap_context_draw_shading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = 120;
    pthread_mutex_lock(0x78);
    v6 = 0;
    goto LABEL_6;
  }

  v6 = *(a1 + 288);
  v7 = v6 + 120;
  pthread_mutex_lock((v6 + 120));
  if (!v6)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = *(v6 + 88);
  if (!v8)
  {
    v8 = *(v6 + 80);
  }

LABEL_7:
  rip_adaptive_bitmap_context_update_content_info_from_GState(v6, a3);
  v9 = *(v6 + 112);
  v10 = *(a3 + 120);
  if (*(v10 + 48) >= v9)
  {
    v9 = *(v10 + 48);
  }

  *(v6 + 112) = v9;
  v11 = *(a4 + 24);
  content_type_from_color_space = rip_adaptive_bitmap_context_get_content_type_from_color_space(v11);
  *(v6 + 116) |= content_type_from_color_space;
  if (content_type_from_color_space != 1)
  {
    if (content_type_from_color_space == 2)
    {
      v13 = *(v6 + 104) | CGColorSpaceIsWideGamutRGB(v11);
    }

    else
    {
      v13 = 1;
    }

    *(v6 + 104) = v13;
  }

  v14 = *(v6 + 108);
  if (v14 <= CGShadingGetContentHeadroom(a4))
  {
    ContentHeadroom = CGShadingGetContentHeadroom(a4);
  }

  else
  {
    ContentHeadroom = *(v6 + 108);
  }

  *(v6 + 108) = ContentHeadroom;
  if (v8)
  {
    v23 = *(v8 + 40);
    if (v23)
    {
      v24 = *(v23 + 96);
      if (v24)
      {
        v25 = v24();
      }

      else
      {
        v25 = 1006;
      }
    }

    else
    {
      v25 = 0;
    }

    *(v6 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v6, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v25 = 0;
  }

  pthread_mutex_unlock(v7);
  return v25;
}

uint64_t rip_adaptive_bitmap_context_draw_glyphs(uint64_t a1, uint64_t a2, uint64_t a3)
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
  rip_adaptive_bitmap_context_update_content_info_from_GState(v4, a3);
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
      v17 = *(v16 + 88);
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

    *(v4 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v4, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v18 = 0;
  }

  pthread_mutex_unlock(v5);
  return v18;
}

uint64_t rip_adaptive_bitmap_context_draw_images(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v13 = 120;
    pthread_mutex_lock(0x78);
    v12 = 0;
    goto LABEL_6;
  }

  v12 = *(a1 + 288);
  v13 = v12 + 120;
  pthread_mutex_lock((v12 + 120));
  if (!v12)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = *(v12 + 88);
  if (!v15)
  {
    v15 = *(v12 + 80);
  }

LABEL_7:
  if (a7)
  {
    v16 = a5;
    v17 = a7;
    do
    {
      v18 = *v16++;
      rip_adaptive_bitmap_context_update_content_info_from_image(v12, v18);
      --v17;
    }

    while (v17);
  }

  if (v15)
  {
    v19 = CGContextDelegateDrawImages(*(v15 + 40), a2, a3, a4, a5, a6, a7, v14);
    *(v12 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v12, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v19 = 0;
  }

  pthread_mutex_unlock(v13);
  return v19;
}

uint64_t rip_adaptive_bitmap_context_draw_image(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, CGImage *a8)
{
  if (!a1)
  {
    v14 = 120;
    pthread_mutex_lock(0x78);
    goto LABEL_6;
  }

  v13 = *(a1 + 288);
  v14 = v13 + 120;
  pthread_mutex_lock((v13 + 120));
  if (!v13)
  {
LABEL_6:
    rip_adaptive_bitmap_context_update_content_info_from_image(0, a8);
    goto LABEL_7;
  }

  v15 = *(v13 + 88);
  if (!v15)
  {
    v15 = *(v13 + 80);
    rip_adaptive_bitmap_context_update_content_info_from_image(v13, a8);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_7:
    v23 = 0;
    goto LABEL_15;
  }

  rip_adaptive_bitmap_context_update_content_info_from_image(v13, a8);
LABEL_9:
  v24 = *(v15 + 40);
  if (v24)
  {
    v25 = *(v24 + 80);
    if (v25)
    {
      v23 = v25(a2, a3, a4, a5);
    }

    else
    {
      v23 = 1006;
    }
  }

  else
  {
    v23 = 0;
  }

  *(v13 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v13, v16, v17, v18, v19, v20, v21, v22);
LABEL_15:
  pthread_mutex_unlock(v14);
  return v23;
}

uint64_t rip_adaptive_bitmap_context_draw_path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (!a1)
  {
    v10 = 120;
    pthread_mutex_lock(0x78);
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(a1 + 288);
  v10 = v9 + 120;
  pthread_mutex_lock((v9 + 120));
  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = *(v9 + 88);
  if (!v11)
  {
    v11 = *(v9 + 80);
  }

LABEL_7:
  rip_adaptive_bitmap_context_update_content_info_from_GState(v9, a3);
  v12 = *(v9 + 112);
  v13 = *(a3 + 120);
  if (*(v13 + 48) >= v12)
  {
    v12 = *(v13 + 48);
  }

  *(v9 + 112) = v12;
  if (v11)
  {
    v14 = CGContextDelegateDrawPath(*(v11 + 40), a2, a3, a4, a5);
    *(v9 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v9, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v14 = 0;
  }

  pthread_mutex_unlock(v10);
  return v14;
}

uint64_t rip_adaptive_bitmap_context_draw_rects(uint64_t a1, uint64_t a2, uint64_t a3)
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
  rip_adaptive_bitmap_context_update_content_info_from_GState(v4, a3);
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

    *(v4 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v4, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v18 = 0;
  }

  pthread_mutex_unlock(v5);
  return v18;
}

uint64_t rip_adaptive_bitmap_context_draw_lines(uint64_t a1, uint64_t a2, uint64_t a3, const CGPoint *a4, unint64_t a5)
{
  if (!a1)
  {
    v10 = 120;
    pthread_mutex_lock(0x78);
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(a1 + 288);
  v10 = v9 + 120;
  pthread_mutex_lock((v9 + 120));
  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = *(v9 + 88);
  if (!v11)
  {
    v11 = *(v9 + 80);
  }

LABEL_7:
  rip_adaptive_bitmap_context_update_content_info_from_GState(v9, a3);
  v12 = *(v9 + 112);
  v13 = *(a3 + 120);
  if (*(v13 + 48) >= v12)
  {
    v12 = *(v13 + 48);
  }

  *(v9 + 112) = v12;
  if (v11)
  {
    CGContextDelegateDrawLines(*(v11 + 40), a2, a3, a4, a5);
    *(v9 + 105) |= rip_adaptive_bitmap_context_contains_transparency(v9, v14, v15, v16, v17, v18, v19, v20);
  }

  return pthread_mutex_unlock(v10);
}

double rip_adaptive_bitmap_context_get_bounds(uint64_t a1)
{
  if (!a1)
  {
    v2 = 120;
    pthread_mutex_lock(0x78);
    goto LABEL_9;
  }

  v1 = *(a1 + 288);
  v2 = v1 + 120;
  pthread_mutex_lock((v1 + 120));
  if (!v1)
  {
    goto LABEL_9;
  }

  v3 = *(v1 + 88);
  if (!v3)
  {
    v3 = *(v1 + 80);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(v3 + 40);
  if (!v4)
  {
    v7 = 0x7FF0000000000000;
    goto LABEL_10;
  }

  v5 = *(v4 + 48);
  if (!v5)
  {
LABEL_9:
    v7 = 0xFFDFFFFFFFFFFFFFLL;
LABEL_10:
    v6 = *&v7;
    goto LABEL_11;
  }

  v6 = v5();
LABEL_11:
  pthread_mutex_unlock(v2);
  return v6;
}

uint64_t rip_adaptive_bitmap_context_get_transform@<X0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + 288);
  }

  else
  {
    v3 = 0;
  }

  *a2 = CGAffineTransformIdentity;
  pthread_mutex_lock((v3 + 120));
  if (v3)
  {
    v4 = *(v3 + 88);
    if (v4 || (v4 = *(v3 + 80)) != 0)
    {
      v5 = *(v4 + 40);
      if (v5 && (v6 = *(v5 + 40)) != 0)
      {
        v6();
      }

      else
      {
        *a2 = CGAffineTransformIdentity;
      }
    }
  }

  return pthread_mutex_unlock((v3 + 120));
}

void rip_adaptive_bitmap_context_finalize(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
    if (v1)
    {
      v2 = *(v1 + 88);
      if (v2)
      {
        CFRelease(v2);
      }

      v3 = *(v1 + 72);
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = *(v1 + 80);
      if (v4)
      {
        CFRelease(v4);
      }

      CGColorSpaceRelease(*(v1 + 240));
      *(v1 + 240) = 0u;
      *(v1 + 256) = 0u;
      *(v1 + 208) = 0u;
      *(v1 + 224) = 0u;
      *(v1 + 192) = 0u;
      v5 = *(v1 + 184);
      if (v5)
      {
        CFRelease(v5);
      }

      pthread_mutex_destroy((v1 + 120));
      rip_adaptive_bitmap_context_release_buffer_provider(v1, v6, v7, v8, v9, v10, v11, v12);
      v13 = *(v1 + 280);
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = *(v1 + 304);
      if (v14)
      {
        CFRelease(v14);
      }

      free(v1);
    }
  }
}

uint64_t CGSGetRegionData(void *a1, void *a2, _DWORD *a3)
{
  if (!a2)
  {
    result = 1001;
    if (!a3)
    {
      return result;
    }

    LODWORD(v8) = 0;
    goto LABEL_11;
  }

  *a2 = 0;
  if (!a3)
  {
    return 1001;
  }

  *a3 = 0;
  if (!region_check(a1))
  {
    return 1001;
  }

  v6 = a1[2];
  v7 = shape_length(v6);
  *a2 = v6;
  if (!v7)
  {
    return 1001;
  }

  v8 = 4 * v7;
  if (!(v8 >> 31) && shape_data_valid(v6, v8))
  {
    result = 0;
LABEL_11:
    *a3 = v8;
    return result;
  }

  return 1007;
}

unint64_t CGSGetRegionRectCount(void *a1)
{
  result = region_check(a1);
  if (result)
  {
    v3 = (a1[2] + 4 * *(a1[2] + 4));
    if (*v3 == 0x7FFFFFFF)
    {
      return 0;
    }

    v4 = v3[1];
    v5 = &v3[v4];
    if (*v5 == 0x7FFFFFFF)
    {
      return 0;
    }

    else
    {
      LODWORD(result) = 0;
      do
      {
        result = (result + v4 / 2 - 1);
        v4 = v5[1];
        v5 += v4;
      }

      while (*v5 != 0x7FFFFFFF);
    }
  }

  return result;
}

uint64_t CGSNewRegionWithData(_DWORD *a1, unsigned int a2, void *a3)
{
  *a3 = 0;
  result = 1001;
  if (a1 && a2)
  {
    v6 = a2;
    v7 = shape_data_valid(a1, a2);
    if (v7)
    {
      v8 = shape_alloc_data(v7, a1, v6);
      v16 = region_create_with_shape(v8, v9, v10, v11, v12, v13, v14, v15);
      result = 0;
      *a3 = v16;
    }

    else
    {
      return 1007;
    }
  }

  return result;
}

void *CGSCreateRegionFromData(_DWORD *a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v4 = shape_data_valid(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = shape_alloc_data(v4, a1, v3);

  return region_create_with_shape(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t CGSRegionFromBitmap(unint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, int a11, void *a12)
{
  v13 = 0;
  v14 = a12;
  if (a3 + a2 <= a1)
  {
    v15 = a8;
    if (((a9 | a8) & 0x80000000) == 0)
    {
      if (a9)
      {
        v16 = a8 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16 || a10 == 0)
      {
        v13 = &the_empty_shape;
      }

      else
      {
        v18 = a7;
        v21 = a3;
        v22 = a2;
        v78 = a6;
        v84 = a1;
        v13 = malloc_type_malloc(0x800uLL, 0x4C113E60uLL);
        if (v13)
        {
          v23 = v13;
          *v13 = 0x280000000;
          v24 = v13 + 2;
          if (v21 >= 0x20)
          {
            v25 = 32;
          }

          else
          {
            v25 = v21;
          }

          if (v21 > 0x20)
          {
            v26 = -1;
          }

          else
          {
            v26 = ~(-1 << v21);
          }

          if (a4 <= a5)
          {
            v27 = a5;
          }

          else
          {
            v27 = a4;
          }

          if (a4 >= a5)
          {
            v28 = a5;
          }

          else
          {
            v28 = a4;
          }

          if (v28 > v26)
          {
            v28 = -1;
          }

          if (v27 > v26)
          {
            v27 = -1;
          }

          if (a9 < 0)
          {
            a2 = 512;
LABEL_98:
            *v24 = 0x7FFFFFFF;
            v13 = final_check(v23, a2, v24 - v23 + 1);
          }

          else
          {
            v29 = v28 & v26;
            v30 = v27 & v26;
            v31 = v13 + 1;
            v75 = v15;
            v74 = v22 >> 3;
            v73 = 8 - (v22 & 7);
            v32 = -v25;
            a2 = 512;
            v33 = v84;
            v34 = a9;
            v35 = a10;
            v82 = v26;
            v83 = v25;
            v80 = v27 & v26;
            v81 = v29;
            while (1)
            {
              v24[1] = 2;
              a3 = v24 + 1;
              *v24 = v18;
              v24 += 2;
              v79 = v34;
              if (v34)
              {
                break;
              }

LABEL_86:
              v66 = ((v24 - a3) >> 2) + 1;
              *a3 = v66;
              if (v31 && v66 == *v31)
              {
                if (((v24 - a3) >> 2) != 1)
                {
                  v67 = v31 + 1;
                  v68 = a3 + 1;
                  while (v68 != v24)
                  {
                    v70 = *v67++;
                    v69 = v70;
                    v71 = *v68++;
                    if (v69 != v71)
                    {
                      goto LABEL_93;
                    }
                  }
                }

                v24 = a3 - 1;
              }

              else
              {
LABEL_93:
                v31 = a3;
              }

              v34 = v79 - 1;
              ++v18;
              if (v79 <= 0)
              {
                goto LABEL_98;
              }
            }

            if (v24 - v23 + 4 > a2)
            {
              v36 = 2 * a2;
              v37 = a3;
              v38 = v31;
              v39 = malloc_type_realloc(v23, (8 * a2 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
              v30 = v80;
              v29 = v81;
              v26 = v82;
              v25 = v83;
              v33 = v84;
              if (v39 == v23)
              {
                a3 = v37;
              }

              else
              {
                v24 = (v24 + v39 - v23);
                a3 = (v37 + v39 - v23);
              }

              if (v39 == v23)
              {
                v31 = v38;
              }

              else
              {
                v31 = (v38 + v39 - v23);
              }

              if (v39 != v23)
              {
                v23 = v39;
              }

              a2 = v36;
            }

            if (v23)
            {
              v77 = v18;
              v40 = 0;
              v76 = v35;
              v41 = v75;
              v42 = (v35 + v74);
              v43 = *v42;
              v44 = v78;
              v45 = v73;
              while (1)
              {
                v46 = v45 - v25;
                if (v45 - v25 < 0)
                {
                  v47 = -v45 >> 3;
                  v48 = -v45 & 0x7FFFFFF8;
                  v49 = v45 < -7;
                  if (v45 >= -7)
                  {
                    v48 = 0;
                  }

                  v45 += v48;
                  if (v49)
                  {
                    v50 = v47;
                  }

                  else
                  {
                    v50 = 0;
                  }

                  v42 += v50;
                  do
                  {
                    v51 = *++v42;
                    v45 += 8;
                    v43 = v51 | (v43 << 8);
                  }

                  while (v32 + v45 < 0);
                  v46 = v32 + v45;
                }

                v52 = (v43 >> v46) & v26;
                v53 = v52 < v29 || v52 > v30;
                v54 = !v53;
                *v24 = v44;
                if (v40 != v54)
                {
                  if (++v24 - v23 + 4 > a2)
                  {
                    v85 = 2 * a2;
                    v86 = v24;
                    v55 = v23;
                    v56 = a3;
                    v57 = v23;
                    v58 = v31;
                    v59 = malloc_type_realloc(v55, (8 * a2 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
                    v31 = v58;
                    v23 = v57;
                    a2 = v85;
                    v24 = v86;
                    v30 = v80;
                    v29 = v81;
                    v26 = v82;
                    v25 = v83;
                    v33 = v84;
                    v60 = (v31 + v59 - v23);
                    if (!v31)
                    {
                      v60 = 0;
                    }

                    if (v59 == v23)
                    {
                      a3 = v56;
                    }

                    else
                    {
                      v24 = (v86 + v59 - v23);
                      a3 = (v56 + v59 - v23);
                    }

                    if (v59 != v23)
                    {
                      v31 = v60;
                      v23 = v59;
                    }
                  }

                  if (!v23)
                  {
                    break;
                  }
                }

                v45 -= v33;
                ++v44;
                v40 = v54;
                if (!--v41)
                {
                  v35 = v76 + a11;
                  if (!v54)
                  {
                    v18 = v77;
                    goto LABEL_86;
                  }

                  *v24++ = v44;
                  v18 = v77;
                  if (v24 - v23 + 4 > a2)
                  {
                    v61 = 2 * a2;
                    v62 = a3;
                    v63 = v31;
                    v64 = malloc_type_realloc(v23, (8 * a2 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
                    v30 = v80;
                    v29 = v81;
                    v26 = v82;
                    v25 = v83;
                    v33 = v84;
                    v65 = (v63 + v64 - v23);
                    if (!v63)
                    {
                      v65 = 0;
                    }

                    if (v64 == v23)
                    {
                      a3 = v62;
                    }

                    else
                    {
                      v24 = (v24 + v64 - v23);
                      a3 = (v62 + v64 - v23);
                    }

                    if (v64 == v23)
                    {
                      v31 = v63;
                    }

                    else
                    {
                      v31 = v65;
                    }

                    if (v64 != v23)
                    {
                      v23 = v64;
                    }

                    a2 = v61;
                  }

                  if (v23)
                  {
                    goto LABEL_86;
                  }

                  break;
                }
              }
            }

            v13 = 0;
          }

          v14 = a12;
        }
      }
    }
  }

  *v14 = region_create_with_shape(v13, a2, a3, a4, a5, a6, a7, a8);
  return 0;
}

CFTypeRef CGSRegionMergeFlushAndMoveRegions(unint64_t cf, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, const void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, int *a11, int *a12)
{
  v12 = a8;
  v13 = a7;
  if (cf | a2)
  {
    UnionWithRegion = cf;
    if (!a2)
    {
      if (cf)
      {
        UnionWithRegion = CFRetain(cf);
        if (a6)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v17 = CGRegionCreateWithOffset(a2, a3, a4, a2, a3, a4, a5, a6, a7, a8);
    v18 = v17;
    if (UnionWithRegion)
    {
      UnionWithRegion = CGRegionCreateUnionWithRegion(UnionWithRegion, v17);
      if (!v18)
      {
LABEL_18:
        if (a6)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (!v17)
      {
        UnionWithRegion = 0;
        if (a6)
        {
LABEL_19:
          v21 = CGRegionCreateWithOffset(a6, v13, v12, a2, a3, a4, a5, a6, a7, a8);
          v22 = CGRegionCreateUnionWithRegion(v21, UnionWithRegion);
          if (v21)
          {
            CFRelease(v21);
          }

          if (UnionWithRegion)
          {
            CFRelease(UnionWithRegion);
          }

          if (a5)
          {
            goto LABEL_24;
          }

          goto LABEL_28;
        }

LABEL_27:
        v22 = UnionWithRegion;
        if (a5)
        {
LABEL_24:
          v23 = CGRegionCreateUnionWithRegion(a5, v22);
          if (v22)
          {
            CFRelease(v22);
          }

          goto LABEL_29;
        }

LABEL_28:
        v23 = v22;
LABEL_29:
        result = 0;
        v13 = 0;
        v12 = 0;
        *a9 = v23;
        goto LABEL_30;
      }

      UnionWithRegion = CFRetain(v17);
    }

    CFRelease(v18);
    goto LABEL_18;
  }

  if (a5)
  {
    v19 = CFRetain(a5);
  }

  else
  {
    v19 = 0;
  }

  *a9 = v19;
  if (a6)
  {
    result = CFRetain(a6);
  }

  else
  {
    result = 0;
  }

LABEL_30:
  *a10 = result;
  *a11 = v13;
  *a12 = v12;
  return result;
}

uint64_t sortTopDescending(void *a1, void *a2)
{
  [a1 normalizedBounds];
  v7 = v4;
  v8 = v6;
  if (v5 < 0.0 || v6 < 0.0)
  {
    *&v3 = CGRectStandardize(*&v3);
    v7 = v9;
    v8 = v10;
  }

  [a2 normalizedBounds];
  if (v13 < 0.0 || v14 < 0.0)
  {
    *(&v12 - 1) = CGRectStandardize(*&v11);
  }

  v15 = v12 + v14;
  if (v7 + v8 > v15)
  {
    return -1;
  }

  else
  {
    return v7 + v8 < v15;
  }
}

BOOL sizeChange(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 160) + 72);
  v3 = *(*(a2 + 160) + 72);
  return v2 > v3 + v3 || v3 > v2 + v2;
}

BOOL fits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) == 1)
  {
    v5 = fmax(*(a2 + 144) * 0.3, 1.0);
  }

  else
  {
    v5 = *(a3 + 8);
  }

  v6 = *(a2 + 96);
  v7 = *(a1 + 96);
  if (v6 >= v7)
  {
    v8 = v7 + *(a1 + 144) - v6;
  }

  else
  {
    v5 = *a3;
    v8 = v6 + *(a2 + 144) - v7;
  }

  if (v8 >= v5)
  {
    v24 = *(a1 + 68) - *(a2 + 68);
    if (v24 < 0)
    {
      v24 = *(a2 + 68) - *(a1 + 68);
    }

    return v24 == 1;
  }

  else
  {
    v9 = *(a2 + 120);
    v10 = *(a2 + 128);
    v11 = *(a2 + 136);
    v12 = fmin(v10, v11);
    v13 = v12 < 0.0;
    y = v9;
    height = v11;
    if (v12 < 0.0)
    {
      v27 = CGRectStandardize(*(a2 + 112));
      y = v27.origin.y;
      height = v27.size.height;
    }

    rect = v10;
    v16 = *(a1 + 120);
    v17 = *(a1 + 128);
    v18 = *(a1 + 136);
    v19 = fmin(v17, v18);
    v20 = v19 < 0.0;
    v21 = v16;
    if (v19 < 0.0)
    {
      v28 = CGRectStandardize(*(a1 + 112));
      v21 = v28.origin.y;
    }

    v22 = y + height;
    if (v13)
    {
      v29.origin.x = *(a2 + 112);
      v29.origin.y = v9;
      v29.size.width = rect;
      v29.size.height = v11;
      v30 = CGRectStandardize(v29);
      v9 = v30.origin.y;
    }

    if (v21 <= v22)
    {
      if (v20)
      {
        v31.origin.x = *(a1 + 112);
        v31.origin.y = v16;
        v31.size.width = v17;
        v31.size.height = v18;
        v32 = CGRectStandardize(v31);
        v16 = v32.origin.y;
        v18 = v32.size.height;
      }

      v23 = v9 - v22;
      if (v9 <= v16 + v18)
      {
        v23 = 0.0;
      }
    }

    else
    {
      v23 = v21 - v22;
    }

    return v23 <= 0.0;
  }
}

int *resample_byte_h_Ncpp(int *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = *a6;
    v11 = a3;
    v12 = 2 * a2 + 8;
    do
    {
      if (a4)
      {
        v13 = v10 + *a7 * v8;
        v14 = *(a5 + 8 * v8);
        v15 = a4;
        v16 = result;
        do
        {
          if (v9)
          {
            v17 = 0;
            v18 = v16[1];
            v19 = v13 + *v16 * v9;
            do
            {
              if (v18)
              {
                v20 = (v19 + v17);
                v21 = 0x2000;
                v22 = (v16 + 2);
                v23 = v18;
                do
                {
                  v24 = *v22++;
                  v21 += *v20 * v24;
                  v20 += v11;
                  --v23;
                }

                while (v23);
                v25 = v21 >> 14;
              }

              else
              {
                v25 = 0;
              }

              if (v25 >= 255)
              {
                v25 = 255;
              }

              *v14++ = v25 & ~(v25 >> 31);
              ++v17;
            }

            while (v17 != v11);
          }

          v16 = (v16 + v12);
          --v15;
        }

        while (v15);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_byte_h_4cpp(int *result, unsigned int a2, double a3, double a4, double a5, uint8x8_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t *a10, int *a11, int a12)
{
  if (a12 >= 1)
  {
    v12 = 0;
    v13 = *a10;
    v14 = 2 * a2 + 8;
    v15.i64[0] = 0xFF000000FFLL;
    v15.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a8)
      {
        v16 = v13 + *a11 * v12;
        v17 = *(a9 + 8 * v12);
        v18 = a8;
        v19 = result;
        do
        {
          v20 = v19[1];
          if (v20)
          {
            v21 = (v19 + 2);
            v22 = (v16 + 4 * *v19);
            v23.i64[0] = 0x200000002000;
            v23.i64[1] = 0x200000002000;
            do
            {
              v24 = *v22++;
              a6.i32[0] = v24;
              a6 = vmovl_u8(a6).u64[0];
              v25 = vld1_dup_s16(v21++);
              v23 = vmlal_s16(v23, v25, a6);
              --v20;
            }

            while (v20);
            v26 = vshrq_n_s32(v23, 0xEuLL);
          }

          else
          {
            v26 = 0uLL;
          }

          *v17++ = vmaxq_s32(vminq_s32(v26, v15), 0);
          v19 = (v19 + v14);
          --v18;
        }

        while (v18);
      }

      ++v12;
    }

    while (v12 != a12);
  }

  return result;
}

_DWORD *resample_byte_h_3cpp(_DWORD *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = 2 * a2 + 8;
    do
    {
      if (a4)
      {
        v11 = *(a5 + 8 * v8);
        v12 = v9 + *a7 * v8 + 2;
        v13 = a4;
        v14 = result;
        do
        {
          v15 = v14[1];
          if (v15)
          {
            v16 = (v14 + 2);
            v17 = (v12 + 3 * *v14);
            v18 = 0x200000002000;
            v19 = 0x2000;
            do
            {
              v20 = *v16++;
              v21.i32[0] = *(v17 - 2);
              v21.i32[1] = *(v17 - 1);
              v18 = vmla_s32(v18, vdup_n_s32(v20), v21);
              v19 += *v17 * v20;
              v17 += 3;
              --v15;
            }

            while (v15);
            v22 = vshr_n_s32(v18, 0xEuLL);
            v15 = v19 >> 14;
          }

          else
          {
            v22 = 0;
          }

          v23 = vmin_s32(v22, 0xFF000000FFLL);
          if (v15 >= 255)
          {
            v15 = 255;
          }

          *v11 = vmax_s32(v23, 0);
          v11[1].i32[0] = v15 & ~(v15 >> 31);
          v11 = (v11 + 12);
          v14 = (v14 + v10);
          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_byte_h_1cpp(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = 2 * a2 + 8;
    v11 = a8;
    while (!a4)
    {
LABEL_16:
      if (++v8 == v11)
      {
        return result;
      }
    }

    v12 = v9 + *a7 * v8;
    v13 = *(a5 + 8 * v8);
    v14 = a4;
    v15 = result;
    while (1)
    {
      v16 = v15[1];
      v17 = *v15;
      v19 = v15 + 2;
      v18 = *(v15 + 4);
      if (v16 < 4)
      {
        break;
      }

      v20 = 0;
      v21 = v16 + 4;
      v23 = 0x2000;
      do
      {
        v24 = *(v19 + 4);
        v19 += 2;
        v22 = v12 + v17;
        v23 += v18 * *(v22 + v20) + *(v22 + v20 + 1) * *(v19 - 3) + *(v22 + v20 + 2) * *(v19 - 2) + *(v22 + v20 + 3) * *(v19 - 1);
        v18 = v24;
        v20 += 4;
        v21 -= 4;
      }

      while (v21 > 7);
      v16 -= v20;
      v25 = v12 + v17 + v20 - 1;
      if (v16)
      {
        goto LABEL_11;
      }

LABEL_13:
      v30 = v23 >> 14;
      if (v23 >> 14 >= 255)
      {
        v30 = 255;
      }

      *v13++ = v30 & ~(v30 >> 31);
      v15 = (v15 + v10);
      if (!--v14)
      {
        goto LABEL_16;
      }
    }

    v25 = v12 - 1 + v17;
    v23 = 0x2000;
    if (!v16)
    {
      goto LABEL_13;
    }

LABEL_11:
    v26 = (v25 + 1);
    v27 = v19 + 1;
    do
    {
      v28 = *v26++;
      v23 += v18 * v28;
      v29 = *v27++;
      v18 = v29;
      --v16;
    }

    while (v16);
    goto LABEL_13;
  }

  return result;
}

uint64_t resample_byte_v_Ncpp_al(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 1;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3;
  v10 = a3 * a4;
  v11 = v10 & 0xFFFFFFFC;
  if (v11 < 1)
  {
    LODWORD(v12) = 0;
    v13 = 0;
    v15 = a3;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    v15 = a3;
    do
    {
      v16 = 0uLL;
      if (v7)
      {
        v17.i64[0] = 0x200000002000;
        v17.i64[1] = 0x200000002000;
        v18 = a6;
        v19 = v8;
        v20 = v7;
        do
        {
          v21 = *v18++;
          v22 = vld1_dup_s16(v19++);
          v17 = vmlaq_s32(v17, *(v21 + 4 * v12), vmovl_s16(v22));
          --v20;
        }

        while (v20);
        v16 = vshrq_n_s32(v17, 0xEuLL);
      }

      v23 = v12 | 1;
      v24 = v12 | 2;
      v25 = v12 | 3;
      v12 += 4;
      v26 = v6 + 4;
      v27 = vmaxq_s32(vminq_s32(v16, v14), 0);
      v28 = v27.i32[0];
      if (v13 > v27.i32[0])
      {
        v28 = v13;
      }

      v29 = v23 == v15;
      result = v29;
      if (v29)
      {
        v30 = v9;
      }

      else
      {
        v30 = 0;
      }

      v31 = (v30 + v15);
      if (v29)
      {
        v32 = 0;
      }

      else
      {
        v32 = v28;
      }

      v33 = v27.i32[1];
      if (v32 > v27.i32[1])
      {
        v33 = v32;
      }

      v34 = v24 == v31;
      v35 = v24 == v31;
      if (v34)
      {
        v36 = v9;
      }

      else
      {
        v36 = 0;
      }

      v37 = (v36 + v31);
      if (v34)
      {
        v38 = 0;
      }

      else
      {
        v38 = v33;
      }

      v39 = v27.i32[2];
      if (v38 > v27.i32[2])
      {
        v39 = v38;
      }

      v40 = v25 == v37;
      v41 = v25 == v37;
      if (v40)
      {
        v42 = v9;
      }

      else
      {
        v42 = 0;
      }

      v43 = (v42 + v37);
      if (v40)
      {
        v44 = 0;
      }

      else
      {
        v44 = v39;
      }

      v45 = v27.i32[3];
      if (v44 > v27.i32[3])
      {
        v45 = v44;
      }

      v46 = v12 == v43;
      v47 = v12 == v43;
      if (v12 == v43)
      {
        v48 = v9;
      }

      else
      {
        v48 = 0;
      }

      v15 = v48 + v43;
      if (v46)
      {
        v13 = 0;
      }

      else
      {
        v13 = v45;
      }

      v49.i16[0] = result;
      v49.i16[1] = v35;
      v49.i16[2] = v41;
      v49.i16[3] = v47;
      v50.i64[0] = __PAIR64__(v33, v28);
      v50.i64[1] = __PAIR64__(v45, v39);
      *(v6 + 1) = vuzp1_s8(vmovn_s32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v49), 0x1FuLL)), v50, v27)), 0xFF000000FFLL).u32[0];
      v6 += 4;
    }

    while (v12 < v11);
    v6 = v26;
  }

  if (v12 < v10)
  {
    v12 = v12;
    do
    {
      if (v7)
      {
        v51 = 0x2000;
        v52 = a6;
        v53 = v8;
        v54 = v7;
        do
        {
          v56 = *v53++;
          v55 = v56;
          v57 = *v52++;
          v51 += *(v57 + 4 * v12) * v55;
          --v54;
        }

        while (v54);
        v58 = v51 >> 14;
      }

      else
      {
        v58 = 0;
      }

      if (v58 >= 255)
      {
        v58 = 255;
      }

      v59 = v58 & ~(v58 >> 31);
      if (v13 <= v59)
      {
        result = v59;
      }

      else
      {
        result = v13;
      }

      v60 = ++v12 == v15;
      if (v12 == v15)
      {
        v61 = v9;
      }

      else
      {
        v61 = 0;
      }

      v15 += v61;
      if (v60)
      {
        v13 = 0;
      }

      else
      {
        v13 = result;
      }

      if (v60)
      {
        LOBYTE(v59) = result;
      }

      *++v6 = v59;
    }

    while (v12 != v10);
  }

  return result;
}

uint64_t resample_byte_v_3cpp_al(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, _BYTE **a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = (result + 8);
    v10 = *a5;
    do
    {
      if (v8)
      {
        v11.i64[0] = 0x200000002000;
        v11.i64[1] = 0x200000002000;
        v12 = a6;
        v13 = v9;
        v14 = v8;
        do
        {
          v15 = *v12++;
          result = 4 * v7;
          v16 = vld1_dup_s16(v13++);
          v11 = vmlaq_s32(v11, *(v15 + 4 * v7), vmovl_s16(v16));
          --v14;
        }

        while (v14);
        v17 = vshrq_n_s32(v11, 0xEuLL);
      }

      else
      {
        v17 = 0uLL;
      }

      v18 = v17.i32[0];
      if (v17.i32[0] >= 255)
      {
        v18 = 255;
      }

      v19 = v18 & ~(v18 >> 31);
      v20 = v17.i32[1];
      if (v17.i32[1] >= 255)
      {
        v20 = 255;
      }

      v21 = v20 & ~(v20 >> 31);
      v22 = v17.i32[2];
      if (v17.i32[2] >= 255)
      {
        v22 = 255;
      }

      v23 = v22 & ~(v22 >> 31);
      v24 = v17.i32[3];
      if (v17.i32[3] >= 255)
      {
        v24 = 255;
      }

      v25 = v24 & ~(v24 >> 31);
      if (v19 > v25)
      {
        v25 = v19;
      }

      if (v21 > v25)
      {
        v25 = v21;
      }

      if (v23 > v25)
      {
        LOBYTE(v25) = v23;
      }

      *v10 = v19;
      v10[1] = v21;
      v10[2] = v23;
      v10[3] = v25;
      v10 += 4;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t resample_byte_v_Ncpp_af(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = (*a5 - 1);
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3;
  v10 = 2 - a3;
  v11 = a3 * a4;
  v12 = v11 & 0xFFFFFFFC;
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = a3;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    result = 255;
    v15 = a3;
    do
    {
      if (v7)
      {
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        v17 = a6;
        v18 = v8;
        v19 = v7;
        do
        {
          v20 = *v17++;
          v21 = vld1_dup_s16(v18++);
          v16 = vmlaq_s32(v16, *(v20 + 4 * v13), vmovl_s16(v21));
          --v19;
        }

        while (v19);
        v22 = vshrq_n_s32(v16, 0xEuLL);
      }

      else
      {
        v22 = 0uLL;
      }

      v23 = v22.i32[0];
      if (v22.i32[0] >= 255)
      {
        v23 = 255;
      }

      v24 = v22.i32[1];
      v25 = v23 & ~(v23 >> 31);
      if (v22.i32[1] >= 255)
      {
        v24 = 255;
      }

      if (v14 <= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v14;
      }

      if ((v13 | 1) == v15)
      {
        v6[v10] = v26;
        v27 = v15 + v9;
        v15 += v9;
        v26 = 0;
      }

      else
      {
        v27 = v15;
      }

      v28 = v24 & ~(v24 >> 31);
      v6[1] = v25;
      if (v26 <= v28)
      {
        v29 = v24 & ~(v24 >> 31);
      }

      else
      {
        v29 = v26;
      }

      if ((v13 | 2) == v27)
      {
        v6[v10 + 1] = v29;
        v27 = v15 + v9;
        v15 += v9;
        v29 = 0;
      }

      v6[2] = v28;
      v30 = v22.i32[2];
      if (v22.i32[2] >= 255)
      {
        v30 = 255;
      }

      v31 = v30 & ~(v30 >> 31);
      v32 = v22.i32[3];
      if (v22.i32[3] >= 255)
      {
        v32 = 255;
      }

      if (v29 <= v31)
      {
        v29 = v31;
      }

      if ((v13 | 3) == v27)
      {
        v6[v10 + 2] = v29;
        v27 = v15 + v9;
        v15 += v9;
        v29 = 0;
      }

      v33 = v32 & ~(v32 >> 31);
      v6[3] = v31;
      if (v29 <= v33)
      {
        v14 = v33;
      }

      else
      {
        v14 = v29;
      }

      v13 += 4;
      if (v13 == v27)
      {
        v6[v10 + 3] = v14;
        v15 += v9;
        v14 = 0;
      }

      v6[4] = v33;
      v6 += 4;
    }

    while (v13 < v12);
  }

  if (v13 < v11)
  {
    v13 = v13;
    do
    {
      if (v7)
      {
        v34 = 0x2000;
        v35 = a6;
        v36 = v8;
        v37 = v7;
        do
        {
          v39 = *v36++;
          v38 = v39;
          v40 = *v35++;
          v34 += *(v40 + 4 * v13) * v38;
          --v37;
        }

        while (v37);
        v41 = v34 >> 14;
      }

      else
      {
        v41 = 0;
      }

      if (v41 >= 255)
      {
        v41 = 255;
      }

      result = v41 & ~(v41 >> 31);
      if (v14 <= result)
      {
        v14 = result;
      }

      if (++v13 == v15)
      {
        v6[v10] = v14;
        v15 += v9;
        v14 = 0;
      }

      *++v6 = result;
    }

    while (v13 != v11);
  }

  return result;
}

uint64_t resample_byte_v_3cpp_af(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, _BYTE **a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = (result + 8);
    v10 = *a5;
    do
    {
      if (v8)
      {
        v11.i64[0] = 0x200000002000;
        v11.i64[1] = 0x200000002000;
        v12 = a6;
        v13 = v9;
        v14 = v8;
        do
        {
          v15 = *v12++;
          result = 4 * v7;
          v16 = vld1_dup_s16(v13++);
          v11 = vmlaq_s32(v11, *(v15 + 4 * v7), vmovl_s16(v16));
          --v14;
        }

        while (v14);
        v17 = vshrq_n_s32(v11, 0xEuLL);
      }

      else
      {
        v17 = 0uLL;
      }

      v18 = v17.i32[0];
      if (v17.i32[0] >= 255)
      {
        v18 = 255;
      }

      v19 = v18 & ~(v18 >> 31);
      v20 = v17.i32[1];
      if (v17.i32[1] >= 255)
      {
        v20 = 255;
      }

      v21 = v20 & ~(v20 >> 31);
      v22 = v17.i32[2];
      if (v17.i32[2] >= 255)
      {
        v22 = 255;
      }

      v23 = v22 & ~(v22 >> 31);
      v24 = v17.i32[3];
      if (v17.i32[3] >= 255)
      {
        v24 = 255;
      }

      v25 = v24 & ~(v24 >> 31);
      if (v21 > v19)
      {
        v19 = v21;
      }

      if (v23 > v19)
      {
        v19 = v23;
      }

      if (v25 > v19)
      {
        LOBYTE(v19) = v25;
      }

      *v10 = v19;
      v10[1] = v21;
      v10[2] = v23;
      v10[3] = v25;
      v10 += 4;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t resample_byte_v_Ncpp(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, _DWORD **a5, uint64_t *a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3 * a4;
  v10 = v9 & 0xFFFFFFFC;
  if (v10 < 1)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = 0;
    v12.i64[0] = 0xFF000000FFLL;
    v12.i64[1] = 0xFF000000FFLL;
    do
    {
      v13 = 0uLL;
      if (v7)
      {
        v14.i64[0] = 0x200000002000;
        v14.i64[1] = 0x200000002000;
        v15 = a6;
        v16 = v8;
        v17 = v7;
        do
        {
          v18 = *v15++;
          result = v18;
          v19 = vld1_dup_s16(v16++);
          v14 = vmlaq_s32(v14, *(v18 + 4 * v11), vmovl_s16(v19));
          --v17;
        }

        while (v17);
        v13 = vshrq_n_s32(v14, 0xEuLL);
      }

      *v6++ = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(v13, v12), 0)), *v12.i8).u32[0];
      v11 += 4;
    }

    while (v11 < v10);
  }

  if (v11 < v9)
  {
    v11 = v11;
    do
    {
      if (v7)
      {
        v20 = 0x2000;
        v21 = a6;
        v22 = v8;
        v23 = v7;
        do
        {
          v24 = *v22++;
          result = v24;
          v25 = *v21++;
          v20 += *(v25 + 4 * v11) * result;
          --v23;
        }

        while (v23);
        v26 = v20 >> 14;
      }

      else
      {
        v26 = 0;
      }

      if (v26 >= 255)
      {
        v26 = 255;
      }

      *v6 = v26 & ~(v26 >> 31);
      v6 = (v6 + 1);
      ++v11;
    }

    while (v11 != v9);
  }

  return result;
}

int *resample_byte_h_Ncpp_ap(int *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = a3 - 1;
    v11 = *a6;
    v12 = a6[1];
    v13 = 2 * a2 + 8;
    v14 = a8;
    do
    {
      if (a4)
      {
        v15 = v11 + *a7 * v8;
        v16 = v12 + a7[1] * v8;
        v17 = *(a5 + 8 * v8);
        v18 = a4;
        v19 = result;
        do
        {
          v20 = v19[1];
          v21 = *v19;
          v22 = (v19 + 2);
          if (v9 >= 2)
          {
            v23 = 0;
            do
            {
              if (v20)
              {
                v24 = 0x2000;
                v25 = (v15 + v21 * v10);
                v26 = (v19 + 2);
                v27 = v20;
                do
                {
                  v28 = *v26++;
                  v29 = *v25;
                  v25 += v10;
                  v24 += v29 * v28;
                  --v27;
                }

                while (v27);
                v30 = v24 >> 14;
              }

              else
              {
                v30 = 0;
              }

              if (v30 >= 255)
              {
                v30 = 255;
              }

              *v17++ = v30 & ~(v30 >> 31);
              ++v23;
            }

            while (v23 != v10);
          }

          if (v20)
          {
            v31 = (v16 + v21);
            v32 = 0x2000;
            do
            {
              v34 = *v22++;
              v33 = v34;
              v35 = *v31++;
              v32 += v35 * v33;
              --v20;
            }

            while (v20);
            v20 = v32 >> 14;
          }

          if (v20 >= 255)
          {
            v20 = 255;
          }

          *v17++ = v20 & ~(v20 >> 31);
          v19 = (v19 + v13);
          --v18;
        }

        while (v18);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return result;
}

int *resample_byte_h_4cpp_ap(int *result, unsigned int a2, double a3, double a4, double a5, uint8x8_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t *a10, int *a11, int a12)
{
  if (a12 >= 1)
  {
    v12 = 0;
    v13 = *a10;
    v14 = a10[1];
    v15 = 2 * a2 + 8;
    v16 = a12;
    v17.i64[0] = 0xFF000000FFLL;
    v17.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a8)
      {
        v18 = v13 + *a11 * v12;
        v19 = v14 + a11[1] * v12;
        v20 = *(a9 + 8 * v12);
        v21 = a8;
        v22 = result;
        do
        {
          v23 = v22[1];
          if (v23)
          {
            v24 = (v22 + 2);
            v25 = *v22;
            v26 = (v18 + 4 * v25);
            v27 = (v19 + v25);
            v28.i64[0] = 0x200000002000;
            v28.i64[1] = 0x200000002000;
            v29 = 0x2000;
            do
            {
              v31 = *v24++;
              v30 = v31;
              v33 = *v27++;
              v32 = v33;
              v34 = *v26++;
              a6.i32[0] = v34;
              a6 = vmovl_u8(a6).u64[0];
              v28 = vmlal_s16(v28, vdup_n_s16(v30), a6);
              v29 += v32 * v30;
              --v23;
            }

            while (v23);
            v35 = vshrq_n_s32(v28, 0xEuLL);
            v23 = v29 >> 14;
          }

          else
          {
            v35 = 0uLL;
          }

          v36 = vminq_s32(v35, v17);
          if (v23 >= 255)
          {
            v23 = 255;
          }

          *v20 = vmaxq_s32(v36, 0);
          v20[1].i32[0] = v23 & ~(v23 >> 31);
          v20 = (v20 + 20);
          v22 = (v22 + v15);
          --v21;
        }

        while (v21);
      }

      ++v12;
    }

    while (v12 != v16);
  }

  return result;
}

uint64_t resample_byte_h_1cpp_ap(uint64_t result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = 2 * a2 + 8;
    v12 = a8;
    while (!a4)
    {
LABEL_18:
      if (++v8 == v12)
      {
        return result;
      }
    }

    v13 = v9 + *a7 * v8;
    v14 = v10 + a7[1] * v8;
    v15 = *(a5 + 8 * v8);
    v16 = a4;
    v17 = result;
    while (1)
    {
      v18 = *(v17 + 4);
      v20 = v17 + 8;
      v19 = *(v17 + 8);
      v21 = *v17 - 1;
      v22 = v13 + v21;
      v23 = v14 + v21;
      if (v18 >= 2)
      {
        break;
      }

      v27 = 0x2000;
      v26 = 0x2000;
      if (v18)
      {
        goto LABEL_11;
      }

LABEL_13:
      v39 = v27 >> 14;
      v40 = v26 >> 14;
      if (v27 >> 14 >= 255)
      {
        v39 = 255;
      }

      v41 = v39 & ~(v39 >> 31);
      if (v40 >= 255)
      {
        v40 = 255;
      }

      *v15 = v41;
      v15[1] = v40 & ~(v40 >> 31);
      v15 += 2;
      v17 += v11;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    v24 = 0;
    v25 = v18 + 2;
    v26 = 0x2000;
    v27 = 0x2000;
    do
    {
      v28 = v27 + v19 * *(v22 + v24 + 1);
      v29 = v26 + v19 * *(v23 + v24 + 1);
      v30 = *(v20 + 4);
      v20 += 4;
      v19 = v30;
      v31 = *(v20 - 2);
      v27 = v28 + v31 * *(v22 + v24 + 2);
      v26 = v29 + *(v23 + v24 + 2) * v31;
      v24 += 2;
      v25 -= 2;
    }

    while (v25 > 3);
    v23 += v24;
    v18 -= v24;
    v22 += v24;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_11:
    v32 = (v23 + 1);
    v33 = (v22 + 1);
    v34 = (v20 + 2);
    do
    {
      v36 = *v33++;
      v35 = v36;
      v37 = *v32++;
      v27 += v19 * v35;
      v26 += v19 * v37;
      v38 = *v34++;
      v19 = v38;
      --v18;
    }

    while (v18);
    goto LABEL_13;
  }

  return result;
}

uint64_t resample_byte_v_Ncpp_ap(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 1;
  v7 = a5[1] - 1;
  v8 = *(a1 + 4);
  v9 = (a1 + 8);
  v10 = a3;
  v11 = a3 * a4;
  v12 = v11 & 0xFFFFFFFC;
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    result = 0;
    v15 = a3;
  }

  else
  {
    v13 = 0;
    LODWORD(result) = 0;
    v15 = a3;
    do
    {
      if (v8)
      {
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        v17 = a6;
        v18 = v9;
        v19 = v8;
        do
        {
          v20 = *v17++;
          v21 = vld1_dup_s16(v18++);
          v16 = vmlaq_s32(v16, *(v20 + 4 * v13), vmovl_s16(v21));
          --v19;
        }

        while (v19);
        v22 = vshrq_n_s32(v16, 0xEuLL);
      }

      else
      {
        v22 = 0uLL;
      }

      v23 = v22.i32[0];
      if (v22.i32[0] >= 255)
      {
        v23 = 255;
      }

      v24 = v23 & ~(v23 >> 31);
      if (v22.i32[1] >= 255)
      {
        v25 = 255;
      }

      else
      {
        v25 = v22.i32[1];
      }

      if (result <= v24)
      {
        LODWORD(result) = v24;
      }

      if ((v13 | 1) == v15)
      {
        *++v7 = result;
        v26 = v15 + v10;
        v15 += v10;
        LODWORD(result) = 0;
      }

      else
      {
        v26 = v15;
        *++v6 = v24;
      }

      v27 = v25 & ~(v25 >> 31);
      if (result <= v27)
      {
        v28 = v25 & ~(v25 >> 31);
      }

      else
      {
        v28 = result;
      }

      if ((v13 | 2) == v26)
      {
        *++v7 = v28;
        v26 = v15 + v10;
        v15 += v10;
        v28 = 0;
      }

      else
      {
        *++v6 = v27;
      }

      v29 = v22.i32[2];
      if (v22.i32[2] >= 255)
      {
        v29 = 255;
      }

      v30 = v29 & ~(v29 >> 31);
      v31 = v22.i32[3];
      if (v22.i32[3] >= 255)
      {
        v31 = 255;
      }

      if (v28 <= v30)
      {
        v28 = v30;
      }

      if ((v13 | 3) == v26)
      {
        *++v7 = v28;
        v26 = v15 + v10;
        v15 += v10;
        v28 = 0;
      }

      else
      {
        *++v6 = v30;
      }

      v32 = v31 & ~(v31 >> 31);
      if (v28 <= v32)
      {
        result = v32;
      }

      else
      {
        result = v28;
      }

      v13 += 4;
      if (v13 == v26)
      {
        *++v7 = result;
        v15 += v10;
        result = 0;
      }

      else
      {
        *++v6 = v32;
      }
    }

    while (v13 < v12);
  }

  if (v13 < v11)
  {
    v13 = v13;
    do
    {
      if (v8)
      {
        v33 = 0x2000;
        v34 = a6;
        v35 = v9;
        v36 = v8;
        do
        {
          v38 = *v35++;
          v37 = v38;
          v39 = *v34++;
          v33 += *(v39 + 4 * v13) * v37;
          --v36;
        }

        while (v36);
        v40 = v33 >> 14;
      }

      else
      {
        v40 = 0;
      }

      if (v40 >= 255)
      {
        v40 = 255;
      }

      v41 = v40 & ~(v40 >> 31);
      if (result <= v41)
      {
        result = v41;
      }

      else
      {
        result = result;
      }

      if (++v13 == v15)
      {
        *++v7 = result;
        v15 += v10;
        result = 0;
      }

      else
      {
        *++v6 = v41;
      }
    }

    while (v13 != v11);
  }

  return result;
}

int *resample_byte_h_3cpp_ap(int *result, unsigned int a2, double a3, double a4, double a5, int32x4_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t *a10, int *a11, int a12)
{
  if (a12 >= 1)
  {
    v12 = 0;
    v13 = *a10;
    v14 = a10[1];
    v15 = 2 * a2 + 8;
    v16 = a12;
    v17.i64[0] = 0xFF000000FFLL;
    v17.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a8)
      {
        v18 = v13 + *a11 * v12;
        v19 = v14 + a11[1] * v12;
        v20 = *(a9 + 8 * v12);
        v21 = a8;
        v22 = result;
        do
        {
          v23 = v22[1];
          if (v23)
          {
            v24 = (v22 + 2);
            v25 = *v22;
            v26 = v18 + 3 * v25;
            v27 = (v19 + v25);
            v28.i64[0] = 0x200000002000;
            v28.i64[1] = 0x200000002000;
            do
            {
              v29 = *v27++;
              a6.i16[0] = *v26;
              a6.i16[1] = HIBYTE(*v26);
              a6.i8[4] = *(v26 + 2);
              a6.i16[3] = v29;
              v30 = vld1_dup_s16(v24++);
              a6 = vandq_s8(vmovl_u16(*a6.i8), v17);
              v28 = vmlaq_s32(v28, vmovl_s16(v30), a6);
              v26 += 3;
              --v23;
            }

            while (v23);
            v31 = vshrq_n_s32(v28, 0xEuLL);
          }

          else
          {
            v31 = 0uLL;
          }

          *v20++ = vmaxq_s32(vminq_s32(v31, v17), 0);
          v22 = (v22 + v15);
          --v21;
        }

        while (v21);
      }

      ++v12;
    }

    while (v12 != v16);
  }

  return result;
}

uint64_t resample_byte_v_3cpp_ap(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = (result + 8);
    v10.i64[0] = 0xFF000000FFLL;
    v10.i64[1] = 0xFF000000FFLL;
    v12 = *a5;
    v11 = *(a5 + 8);
    do
    {
      v13 = 0uLL;
      if (v8)
      {
        v14.i64[0] = 0x200000002000;
        v14.i64[1] = 0x200000002000;
        v15 = a6;
        v16 = v9;
        v17 = v8;
        do
        {
          v18 = *v15++;
          result = v18;
          v19 = vld1_dup_s16(v16++);
          v14 = vmlaq_s32(v14, *(v18 + 4 * v7), vmovl_s16(v19));
          --v17;
        }

        while (v17);
        v13 = vshrq_n_s32(v14, 0xEuLL);
      }

      v20 = vmaxq_s32(vminq_s32(v13, v10), 0);
      *v12 = v20.i8[0];
      v12[1] = v20.i8[4];
      v12[2] = v20.i8[8];
      v12 += 3;
      *v11++ = vmaxvq_u32(v20);
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t CGReferenceWhiteToneMappingGetDefaultOptionDetails()
{
  if (CGReferenceWhiteToneMappingGetDefaultOptionDetails_predicate != -1)
  {
    dispatch_once(&CGReferenceWhiteToneMappingGetDefaultOptionDetails_predicate, &__block_literal_global_2067);
  }

  return CGReferenceWhiteToneMappingGetDefaultOptionDetails_details;
}

void __CGReferenceWhiteToneMappingGetDefaultOptionDetails_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E6E06FA8;
  v5 = @"kCGRWTMEDRHeadroom";
  LODWORD(valuePtr[0]) = 1148846080;
  valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
  v2 = 1128988672;
  valuePtr[1] = CFNumberCreate(0, kCFNumberFloatType, &v2);
  v2 = 1065353216;
  valuePtr[2] = CFNumberCreate(0, kCFNumberFloatType, &v2);
  v0 = 0;
  CGReferenceWhiteToneMappingGetDefaultOptionDetails_details = CFDictionaryCreate(0, keys, valuePtr, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  do
  {
    v1 = valuePtr[v0];
    if (v1)
    {
      CFRelease(v1);
    }

    ++v0;
  }

  while (v0 != 3);
}

uint64_t CGReferenceWhiteToneMappingGetDefaultOptions()
{
  if (CGReferenceWhiteToneMappingGetDefaultOptions_predicate != -1)
  {
    dispatch_once(&CGReferenceWhiteToneMappingGetDefaultOptions_predicate, &__block_literal_global_40);
  }

  return CGReferenceWhiteToneMappingGetDefaultOptions_options;
}

CFDictionaryRef __CGReferenceWhiteToneMappingGetDefaultOptions_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGApplyReferenceWhiteToneMapping";
  if (CGReferenceWhiteToneMappingGetDefaultOptionDetails_predicate != -1)
  {
    dispatch_once(&CGReferenceWhiteToneMappingGetDefaultOptionDetails_predicate, &__block_literal_global_2067);
  }

  values = CGReferenceWhiteToneMappingGetDefaultOptionDetails_details;
  result = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CGReferenceWhiteToneMappingGetDefaultOptions_options = result;
  return result;
}

const __CFDictionary *CGReferenceWhiteToneMappingCreateColorSyncToneMappingDetails(const __CFDictionary *cf)
{
  v1 = cf;
  v120 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return v1;
  }

  v2 = CFGetTypeID(cf);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  *keys = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  *values = 0u;
  v107 = 0u;
  Value = CFDictionaryGetValue(v1, @"kCGRWTMSourcePeak");
  v4 = Value;
  if (!Value)
  {
    goto LABEL_9;
  }

  v5 = CFGetTypeID(Value);
  if (v5 != CFNumberGetTypeID())
  {
    v4 = 0;
LABEL_9:
    v7 = keys;
    v6 = values;
    goto LABEL_10;
  }

  v6 = &values[1];
  v7 = &keys[1];
  v8 = CFGetTypeID(v4);
  TypeID = CFNumberGetTypeID();
  v10 = 0;
  if (v8 == TypeID)
  {
    valuePtr = 0;
    CFNumberGetValue(v4, kCFNumberFloatType, &valuePtr);
    v10 = valuePtr;
  }

  keys[0] = @"com.apple.cmm.RWTMSourcePeak";
  valuePtr = v10;
  values[0] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v4 = 1;
LABEL_10:
  v11 = CFDictionaryGetValue(v1, @"kCGRWTMSourceReferenceWhite");
  v12 = 0.0;
  if (v11)
  {
    v13 = v11;
    v14 = CFGetTypeID(v11);
    if (v14 == CFNumberGetTypeID())
    {
      v15 = CFGetTypeID(v13);
      if (v15 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v13, kCFNumberFloatType, &valuePtr);
        v12 = *&valuePtr;
      }

      *v7 = @"com.apple.cmm.RWTMSourceReferenceWhite";
      valuePtr = LODWORD(v12);
      *v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      ++v4;
    }
  }

  v16 = CFDictionaryGetValue(v1, @"kCGRWTMEDRHeadroom");
  if (v16)
  {
    v17 = v16;
    v18 = CFGetTypeID(v16);
    if (v18 == CFNumberGetTypeID())
    {
      v19 = CFGetTypeID(v17);
      v20 = CFNumberGetTypeID();
      v21 = 0;
      if (v19 == v20)
      {
        valuePtr = 0;
        CFNumberGetValue(v17, kCFNumberFloatType, &valuePtr);
        v21 = valuePtr;
      }

      keys[v4] = @"com.apple.cmm.RWTMEDRHeadroom";
      valuePtr = v21;
      values[v4++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  v22 = CFDictionaryGetValue(v1, @"kCGRWTMTargetReferenceWhiteBase");
  if (v22)
  {
    v23 = v22;
    v24 = CFGetTypeID(v22);
    if (v24 == CFNumberGetTypeID())
    {
      v25 = CFGetTypeID(v23);
      v26 = CFNumberGetTypeID();
      v27 = 0;
      if (v25 == v26)
      {
        valuePtr = 0;
        CFNumberGetValue(v23, kCFNumberFloatType, &valuePtr);
        v27 = valuePtr;
      }

      keys[v4] = @"com.apple.cmm.RWTMTargetReferenceWhiteBase";
      valuePtr = v27;
      values[v4++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  v28 = CFDictionaryGetValue(v1, @"kCGRWTMReferenceWhiteThreshold");
  if (v28)
  {
    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 == CFNumberGetTypeID())
    {
      v31 = CFGetTypeID(v29);
      v32 = CFNumberGetTypeID();
      v33 = 0;
      if (v31 == v32)
      {
        valuePtr = 0;
        CFNumberGetValue(v29, kCFNumberFloatType, &valuePtr);
        v33 = valuePtr;
      }

      keys[v4] = @"com.apple.cmm.RWTMReferenceWhiteThreshold";
      valuePtr = v33;
      values[v4++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  v34 = CFDictionaryGetValue(v1, @"kCGRWTMVersion");
  if (v34)
  {
    v35 = v34;
    v36 = CFGetTypeID(v34);
    if (v36 == CFNumberGetTypeID())
    {
      v37 = CFGetTypeID(v35);
      if (v37 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v35, kCFNumberIntType, &valuePtr);
        v38 = valuePtr;
      }

      else
      {
        v38 = 0;
      }

      keys[v4] = @"com.apple.cmm.RWTMVersion";
      valuePtr = v38;
      values[v4++] = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    }
  }

  v39 = CFDictionaryGetValue(v1, @"kCGContentEDRStrength");
  if (v39)
  {
    v40 = v39;
    v41 = CFGetTypeID(v39);
    if (v41 == CFNumberGetTypeID())
    {
      v42 = CFGetTypeID(v40);
      v43 = CFNumberGetTypeID();
      v44 = 0;
      if (v42 == v43)
      {
        valuePtr = 0;
        CFNumberGetValue(v40, kCFNumberFloatType, &valuePtr);
        v44 = valuePtr;
      }

      keys[v4] = @"com.apple.cmm.ContentEDRStrength";
      valuePtr = v44;
      values[v4++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  v45 = CFDictionaryGetValue(v1, @"kCGContentAverageLightLevel");
  if (v45)
  {
    v46 = v45;
    v47 = CFGetTypeID(v45);
    if (v47 == CFNumberGetTypeID())
    {
      v48 = CFGetTypeID(v46);
      v49 = 0.0;
      if (v48 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v46, kCFNumberFloatType, &valuePtr);
        v49 = *&valuePtr;
      }

      if (v12 == 0.0)
      {
        if (CGImageDefaultReferenceWhite_once != -1)
        {
          dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
        }

        v50 = CGImageDefaultReferenceWhite_media_white;
        v12 = 0.0;
        if (CGImageDefaultReferenceWhite_media_white)
        {
          v51 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
          if (v51 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            CFNumberGetValue(v50, kCFNumberFloatType, &valuePtr);
            v12 = *&valuePtr;
          }
        }
      }

      keys[v4] = @"com.apple.cmm.ContentAverageLightLevelNits";
      valuePtr = vcvtas_u32_f32(v49 / v12);
      values[v4++] = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    }
  }

  v52 = CFDictionaryGetValue(v1, @"kCGContentAverageLightLevelNits");
  if (v52)
  {
    v53 = v52;
    v54 = CFGetTypeID(v52);
    if (v54 == CFNumberGetTypeID())
    {
      v55 = CFGetTypeID(v53);
      if (v55 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v53, kCFNumberIntType, &valuePtr);
        v56 = valuePtr;
      }

      else
      {
        v56 = 0;
      }

      keys[v4] = @"com.apple.cmm.ContentAverageLightLevelNits";
      valuePtr = v56;
      values[v4++] = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    }
  }

  v57 = CFDictionaryGetValue(v1, @"kCGConstrainedDynamicRange");
  if (v57)
  {
    v58 = v57;
    v59 = CFGetTypeID(v57);
    if (v59 == CFNumberGetTypeID())
    {
      v60 = CFGetTypeID(v58);
      v61 = CFNumberGetTypeID();
      v62 = 0;
      if (v60 == v61)
      {
        valuePtr = 0;
        CFNumberGetValue(v58, kCFNumberFloatType, &valuePtr);
        v62 = valuePtr;
      }

      keys[v4] = @"com.apple.cmm.ConstrainedDynamicRange";
      valuePtr = v62;
      values[v4++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  v63 = CFDictionaryGetValue(v1, @"kCGRWTMMinimumSDRExposure");
  if (v63)
  {
    v64 = v63;
    v65 = CFGetTypeID(v63);
    if (v65 == CFNumberGetTypeID())
    {
      v66 = CFGetTypeID(v64);
      v67 = CFNumberGetTypeID();
      v68 = 0;
      if (v66 == v67)
      {
        valuePtr = 0;
        CFNumberGetValue(v64, kCFNumberFloatType, &valuePtr);
        v68 = valuePtr;
      }

      keys[v4] = @"com.apple.cmm.RWTMMinimumSDRExposure";
      valuePtr = v68;
      values[v4++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  v69 = CFDictionaryGetValue(v1, @"kCGRWTMOffsetAnchor");
  if (v69)
  {
    v70 = v69;
    v71 = CFGetTypeID(v69);
    if (v71 == CFNumberGetTypeID())
    {
      v72 = CFGetTypeID(v70);
      v73 = CFNumberGetTypeID();
      v74 = 0;
      if (v72 == v73)
      {
        valuePtr = 0;
        CFNumberGetValue(v70, kCFNumberFloatType, &valuePtr);
        v74 = valuePtr;
      }

      keys[v4] = @"com.apple.cmm.RWTMOffsetAnchor";
      valuePtr = v74;
      values[v4++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  v75 = CFDictionaryGetValue(v1, @"kCGRWTMHighlightsTradeOffRatio");
  if (v75)
  {
    v76 = v75;
    v77 = CFGetTypeID(v75);
    if (v77 == CFNumberGetTypeID())
    {
      v78 = CFGetTypeID(v76);
      v79 = CFNumberGetTypeID();
      v80 = 0;
      if (v78 == v79)
      {
        valuePtr = 0;
        CFNumberGetValue(v76, kCFNumberFloatType, &valuePtr);
        v80 = valuePtr;
      }

      keys[v4] = @"com.apple.cmm.RWTMHighlightsTradeOffRatio";
      valuePtr = v80;
      values[v4++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  v81 = CFDictionaryGetValue(v1, @"kCGRWTMMinimumGammaAdjustment");
  if (v81)
  {
    v82 = v81;
    v83 = CFGetTypeID(v81);
    if (v83 == CFNumberGetTypeID())
    {
      v84 = CFGetTypeID(v82);
      v85 = CFNumberGetTypeID();
      v86 = 0;
      if (v84 == v85)
      {
        valuePtr = 0;
        CFNumberGetValue(v82, kCFNumberFloatType, &valuePtr);
        v86 = valuePtr;
      }

      keys[v4] = @"com.apple.cmm.RWTMMinimumGammaAdjustment";
      valuePtr = v86;
      values[v4++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  v87 = CFDictionaryGetValue(v1, @"kCGRWTMStopAnchor");
  if (v87)
  {
    v88 = v87;
    v89 = CFGetTypeID(v87);
    if (v89 == CFNumberGetTypeID())
    {
      v90 = CFGetTypeID(v88);
      v91 = CFNumberGetTypeID();
      v92 = 0;
      if (v90 == v91)
      {
        valuePtr = 0;
        CFNumberGetValue(v88, kCFNumberFloatType, &valuePtr);
        v92 = valuePtr;
      }

      keys[v4] = @"com.apple.cmm.RWTMStopAnchor";
      valuePtr = v92;
      values[v4++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  if (CFDictionaryContainsKey(v1, @"kCGRWTMPrimaries") == 1)
  {
    v93 = CFDictionaryGetValue(v1, @"kCGRWTMPrimaries");
    v94 = CGColorSpaceCreateWithName(v93);
    valuePtr = 0;
    if (CGColorSpaceGetCICPInfo(v94, &valuePtr))
    {
      keys[v4] = @"com.apple.cmm.RWTMPrimaries";
      v105 = valuePtr;
      values[v4++] = CFNumberCreate(0, kCFNumberSInt8Type, &v105);
      goto LABEL_91;
    }

    v102 = @"unknown nanem";
    if (v93)
    {
      LOBYTE(v102) = v93;
    }

    CGLog(2, "kCGRWTMPrimaries cannot use %@ space", v95, v96, v97, v98, v99, v100, v102);
    if (v4)
    {
      goto LABEL_92;
    }

    return 0;
  }

LABEL_91:
  if (!v4)
  {
    return 0;
  }

LABEL_92:
  v101 = values;
  v1 = CFDictionaryCreate(0, keys, values, v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  do
  {
    if (*v101)
    {
      CFRelease(*v101);
    }

    ++v101;
    --v4;
  }

  while (v4);
  return v1;
}

const char *CGPDFTaggedNodeTypeGetName(int a1)
{
  if (a1 <= 399)
  {
    if (a1 <= 110)
    {
      if (a1 > 104)
      {
        if (a1 > 107)
        {
          if (a1 == 108)
          {
            return "TOCI";
          }

          else if (a1 == 109)
          {
            return "Index";
          }

          else
          {
            return "NonStruct";
          }
        }

        else if (a1 == 105)
        {
          return "BlockQuote";
        }

        else if (a1 == 106)
        {
          return "Caption";
        }

        else
        {
          return "TOC";
        }
      }

      else
      {
        if (a1 <= 101)
        {
          switch(a1)
          {
            case 1:
              return "Word";
            case 100:
              return "Document";
            case 101:
              return "Part";
          }

          return "Unknown";
        }

        if (a1 == 102)
        {
          return "Art";
        }

        else if (a1 == 103)
        {
          return "Sect";
        }

        else
        {
          return "Div";
        }
      }
    }

    else if (a1 <= 204)
    {
      if (a1 <= 201)
      {
        switch(a1)
        {
          case 111:
            return "Private";
          case 200:
            return "P";
          case 201:
            return "H";
        }

        return "Unknown";
      }

      if (a1 == 202)
      {
        return "H1";
      }

      else if (a1 == 203)
      {
        return "H2";
      }

      else
      {
        return "H3";
      }
    }

    else
    {
      if (a1 <= 299)
      {
        switch(a1)
        {
          case 205:
            return "H4";
          case 206:
            return "H5";
          case 207:
            return "H6";
        }

        return "Unknown";
      }

      if (a1 > 301)
      {
        if (a1 == 302)
        {
          return "Lbl";
        }

        if (a1 == 303)
        {
          return "LBody";
        }

        return "Unknown";
      }

      if (a1 == 300)
      {
        return "L";
      }

      else
      {
        return "LI";
      }
    }
  }

  else if (a1 > 505)
  {
    if (a1 <= 603)
    {
      if (a1 <= 600)
      {
        switch(a1)
        {
          case 506:
            return "Link";
          case 507:
            return "Annot";
          case 600:
            return "Ruby";
        }

        return "Unknown";
      }

      if (a1 == 601)
      {
        return "RB";
      }

      else if (a1 == 602)
      {
        return "RT";
      }

      else
      {
        return "RP";
      }
    }

    else
    {
      if (a1 <= 699)
      {
        switch(a1)
        {
          case 604:
            return "Warichu";
          case 605:
            return "WT";
          case 606:
            return "WP";
        }

        return "Unknown";
      }

      if (a1 > 701)
      {
        if (a1 == 702)
        {
          return "Form";
        }

        if (a1 == 800)
        {
          return "OBJR";
        }

        return "Unknown";
      }

      if (a1 == 700)
      {
        return "Figure";
      }

      else
      {
        return "Formula";
      }
    }
  }

  else
  {
    if (a1 > 405)
    {
      if (a1 > 501)
      {
        if (a1 > 503)
        {
          if (a1 == 504)
          {
            return "BibEntry";
          }

          else
          {
            return "Code";
          }
        }

        else if (a1 == 502)
        {
          return "Note";
        }

        else
        {
          return "Reference";
        }
      }

      switch(a1)
      {
        case 406:
          return "TFoot";
        case 500:
          return "Span";
        case 501:
          return "Quote";
      }

      return "Unknown";
    }

    if (a1 > 402)
    {
      if (a1 == 403)
      {
        return "TD";
      }

      else if (a1 == 404)
      {
        return "THead";
      }

      else
      {
        return "TBody";
      }
    }

    else if (a1 == 400)
    {
      return "Table";
    }

    else if (a1 == 401)
    {
      return "TR";
    }

    else
    {
      return "TH";
    }
  }
}

uint64_t get_y_inflections_2(float64x2_t *a1, double *a2, float64x2_t *a3)
{
  v3 = *a1;
  v4 = vsubq_f64(a1[1], *a1);
  v5 = vaddq_f64(v4, v4);
  v6 = vsubq_f64(vsubq_f64(a1[2], v5), *a1);
  v7 = vmuld_lane_f64(-2.0, v6, 1);
  v8 = v7 * 0.0001;
  v9 = v7 * 0.9999;
  v10 = v5.f64[1];
  if (v6.f64[1] <= 0.0 || v9 >= v5.f64[1] || v5.f64[1] >= v8)
  {
    if (v6.f64[1] >= 0.0)
    {
      return 0;
    }

    v10 = v5.f64[1];
    if (v8 >= v5.f64[1] || v5.f64[1] >= v9)
    {
      return 0;
    }
  }

  v15 = -v10 / (v6.f64[1] + v6.f64[1]);
  if (a2)
  {
    *a2 = v15;
  }

  if (a3)
  {
    *a3 = vmlaq_n_f64(v3, vmlaq_n_f64(v5, v6, v15), v15);
  }

  return 1;
}

CFStringRef converter_copy_format_description(CFTypeRef cf, const __CFDictionary *a2)
{
  if (cf)
  {
    v4 = CFGetRetainCount(cf);
  }

  else
  {
    v4 = 0;
  }

  v5 = CFGetAllocator(cf);
  return CFStringCreateWithFormat(v5, a2, @"<CGCMSConverter %p refCount = %ld>", cf, v4);
}

void *create_lookup_table(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (v11 = *(a1 + 24), *(v11 + 28) == 5))
  {
    v12 = *(*(v11 + 96) + 8) + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a3 + 40);
  if (a2)
  {
    v14 = *(*(a2 + 24) + 48);
  }

  else
  {
    v14 = 0;
  }

  if (v12 >= 0x101)
  {
    _CGHandleAssert("create_lookup_table", 4521, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "count <= 256", "oversize table count=%lu components=%lu", a6, a7, a8, v12);
  }

  if (!(v13 * v12))
  {
    return 0;
  }

  v15 = malloc_type_calloc(v13 * v12, 1uLL, 0x100004077774924uLL);
  if (v15)
  {
    v57 = 0;
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
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v16 = CGColorSpaceCopyColorTable(a1);
    v17 = v16;
    if (v16)
    {
      BytePtr = CFDataGetBytePtr(v16);
    }

    else
    {
      BytePtr = 0;
    }

    v37[0] = BytePtr;
    v37[1] = v12;
    v37[2] = 1;
    v37[3] = v14 * v12;
    *&v39 = 8;
    *(&v39 + 1) = v14;
    v19 = *(a3 + 84);
    DWORD2(v38) = 1;
    LODWORD(v38) = v19;
    v31[0] = v15;
    v31[1] = v12;
    v31[2] = 1;
    v31[3] = v13 * v12;
    *&v33 = 8;
    *(&v33 + 1) = v13;
    DWORD2(v32) = 1;
    LODWORD(v32) = v19;
    if (a4)
    {
      if (v13)
      {
        memcpy(v35 + 8, a4, 8 * v13);
      }

      *&v35[0] = v35 + 8;
    }

    if (BytePtr && v14 * v12 != CFDataGetLength(v17))
    {
      CFDataGetLength(v17);
      _CGHandleAssert("create_lookup_table", 4560, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "srcFormat.data == NULL || count * nSrcComponents == safe_unsigned_cast(CFDataGetLength(colorTable))", "src data %p,  count: %zu ncomponents %zu length: %zu", v28, v29, v30, BytePtr);
    }

    if ((CGCMSConverterConvert(a3, v37, v31) & 1) == 0)
    {
      CGPostError("%s : Unable to complete color conversion", v20, v21, v22, v23, v24, v25, v26, "create_lookup_table");
      free(v15);
      v15 = 0;
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  return v15;
}

uint64_t deviceN_converter_info@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  __src[4] = 0;
  v13 = *(a2 + 40);
  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(*(v14 + 24) + 48);
  }

  else
  {
    v15 = 0;
  }

  if (v13 - 7 < 3)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  BitsPerComponent = CGPixelComponentGetBitsPerComponent(v16, a2, a3, a4, a5, a6, a7, a8);
  if (v16 == v13)
  {
    v21 = *(a2 + 64);
    if (v21 == 8)
    {
      v22 = 1;
    }

    else
    {
      v22 = *(a2 + 64);
    }

    if (v21 == 9)
    {
      v23 = 3;
    }

    else
    {
      v23 = v22;
    }
  }

  else
  {
    v23 = 0;
  }

  if (!BitsPerComponent)
  {
    _CGHandleAssert("CGBitmapPixelInfoInitialize", 56, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "bits_per_component > 0 && bits_per_component <= 32", "bpc: %zu", v18, v19, v20, 0);
  }

  v24 = *(a2 + 68);
  if ((v23 - 1) > 8)
  {
    v25 = 0;
  }

  else
  {
    v25 = qword_1844E0DE8[v23 - 1];
  }

  v26 = *a2;
  v27 = (v25 + v15) * *(a2 + 8);
  *&__src[1] = *(a2 + 8);
  __src[0] = v26;
  __src[3] = v27 * (BitsPerComponent >> 3);
  __src[5] = v16;
  __src[6] = BitsPerComponent;
  __src[7] = v15;
  __src[8] = __PAIR64__(v24, v23);
  memset(&__src[9], 0, 272);
  LODWORD(__src[4]) = *(a1 + 84);
  *(a9 + 8) = 0u;
  *(a9 + 24) = 0u;
  *(a9 + 40) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  result = CGCMSConverterCreateCachedCGvImageConverter(a1, __src, a3);
  *a9 = result;
  if (result)
  {
    v29 = result;
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v30, a3, sizeof(v30));
    result = CGvImageConverterGetBufferSize(v29, __dst, v30);
    *(a9 + 16) = result;
  }

  return result;
}

uint64_t convert_deviceN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v214[44] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _CGHandleAssert("convert_deviceN", 4649, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "converter", "converter is NULL", a6, a7, a8, v164[0]);
  }

  v12 = *(a1 + 96);
  TintTransform = CGColorSpaceGetTintTransform(v12, a2, a3, a4, a5, a6, a7, a8);
  v13 = *(a1 + 32);
  v14 = *(a2 + 64) - 1;
  if (v14 > 8)
  {
    v197 = 0;
    if (v13)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v197 = qword_1844E0DE8[v14];
    if (v13)
    {
LABEL_4:
      v173 = *(v13[3] + 48);
      goto LABEL_7;
    }
  }

  v173 = 0;
LABEL_7:
  v196 = *(a2 + 56);
  v15 = *(a2 + 8);
  v179 = *a2;
  v16 = *(a2 + 24);
  v172 = *(a2 + 16);
  v175 = v16;
  v176 = v15;
  v17 = *(a3 + 24);
  memcpy(v214, (a2 + 40), 0x130uLL);
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(v214, v18, v19, v20, v21, v22, v23, v24);
  v26 = *(a2 + 48);
  v177 = *(a2 + 16);
  Type = CGColorSpaceGetType(v13);
  v27 = CGColorSpaceGetType(v12);
  if (TintTransform)
  {
    v185 = v27;
    v169 = v17;
    v186 = a2;
    v35 = *(a2 + 40);
    if (v35 > 9 || ((1 << v35) & 0x3B6) == 0)
    {
      _CGHandleAssert("convert_deviceN", 4679, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "src_component == kCGPixelComponent1BitInteger || src_component == kCGPixelComponent2BitInteger || src_component == kCGPixelComponent4BitInteger || src_component == kCGPixelComponent8BitInteger || src_component == kCGPixelComponent16BitInteger || src_component == kCGPixelComponent16BitFloat || src_component == kCGPixelComponent32BitFloat", "invalid src component type %u", v32, v33, v34, v35);
    }

    memset(&v210[34], 0, 32);
    if ((v35 - 7) < 3)
    {
      v36 = 1;
    }

    else
    {
      v36 = v35;
    }

    memset(v210, 0, 272);
    BitsPerComponent = CGPixelComponentGetBitsPerComponent(v36, v28, v29, v30, v31, v32, v33, v34);
    v168 = a4;
    if (v36 == v35)
    {
      v38 = *(v186 + 64);
      if (v38 == 9)
      {
        v38 = 3;
      }

      else if (v38 == 8)
      {
        v38 = 1;
      }
    }

    else
    {
      v38 = 0;
    }

    v195 = v26;
    v167 = a3;
    v40 = CGBitmapPixelInfoInitialize(v210, v210, v36, BitsPerComponent, v173, v38, *(v186 + 68), 0, *(v186 + 80));
    v42 = *(v186 + 8);
    v43 = v210[2];
    if ((LODWORD(v210[3]) - 1) >= 9)
    {
      v44 = 0;
      v45 = v210[2] * v42;
    }

    else
    {
      v44 = qword_1844E0DE8[LODWORD(v210[3]) - 1];
      v45 = (v44 + v210[2]) * v42;
    }

    v46 = v45 * (v210[1] >> 3);
    v171 = v164;
    v47 = v35 & 0xFFFFFFFE;
    v41.n128_u32[0] = 1132396544;
    if ((v35 & 0xFFFFFFFE) == 4)
    {
      v41.n128_f32[0] = 1.0;
    }

    if (Type == 5)
    {
      v48 = 65536.0;
    }

    else
    {
      v48 = 65535.0;
    }

    if (v36 == 2)
    {
      v49 = v48;
    }

    else
    {
      v49 = v41.n128_f32[0];
    }

    MEMORY[0x1EEE9AC00](v40, v41);
    v170 = &v164[-v57];
    if (v58)
    {
      goto LABEL_32;
    }

    if (v50 > 0x400)
    {
      v65 = malloc_type_calloc(v50, 1uLL, 0x486D2484uLL);
      v64 = Type;
      v166 = v65;
      if (!v65)
      {
LABEL_32:
        CGPostError("%s : Unable to allocate", v50, v51, v52, v53, v54, v55, v56, "convert_deviceN");
        return 0;
      }
    }

    else
    {
      LODWORD(v194) = v35 & 0xFFFFFFFE;
      v59 = v43;
      v60 = v44;
      v61 = BitsPerPixel;
      v62 = v46;
      v63 = v170;
      bzero(v170, v50);
      v166 = v63;
      v46 = v62;
      BitsPerPixel = v61;
      v44 = v60;
      v43 = v59;
      v47 = v194;
      v64 = Type;
    }

    v174 = v46;
    v165 = a1;
    v66 = 256.0;
    if (v64 != 5)
    {
      v66 = 255.0;
    }

    v67 = 1.0;
    if (v36 == 2)
    {
      v67 = v48;
    }

    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    if (v36 == 1)
    {
      v68 = v66;
    }

    else
    {
      v68 = v67;
    }

    v204 = 0uLL;
    v205 = 0uLL;
    if (v64 == 5)
    {
      CGColorSpaceGetLabData(v13, v54, v55, v56, &v204);
      v64 = Type;
    }

    v189 = *(v186 + 64);
    _ZF = v189 == 2 || (v189 & 0xFFFFFFFD) == 4;
    v70 = _ZF;
    v71 = v185;
    if (v177)
    {
      v72 = BitsPerPixel;
      v73 = &v196[v197];
      v74 = v44 + v43;
      v75 = v189 & 0xFFFFFFFB;
      v76 = v189 - 3 < 0xFFFFFFFE;
      v77 = &v196[v197 - 1];
      _ZF = v64 == 5;
      v78 = v64 != 5;
      if (_ZF)
      {
        v79 = 100.0;
      }

      else
      {
        v79 = 1.0;
      }

      v80 = v47 == 4;
      v81 = v47 != 4 || v78;
      if (v80)
      {
        v82 = 0.0;
      }

      else
      {
        v82 = 0.5;
      }

      v83 = v73 == 1 || v189 - 3 < 0xFFFFFFFE;
      v84 = v68;
      v85 = v49;
      if (v74 == 1)
      {
        v76 = 1;
      }

      v183 = v76;
      v184 = v83;
      v190 = &v200 + 1;
      v181 = 2 * v74;
      v182 = 4 * v74;
      v180 = v72 / v195;
      v178 = v166;
      while (!v176)
      {
LABEL_229:
        v179 += v175;
        --v177;
        v178 += v174;
        if (!v177)
        {
          goto LABEL_230;
        }
      }

      v86 = v178;
      v87 = v178;
      v88 = v176;
      v89 = v179;
      v90 = v178;
      v91 = v179;
      v92 = v179;
      while (1)
      {
        v195 = v88;
        v93 = 0uLL;
        memset(v214, 0, 128);
        memset(v213, 0, 96);
        v211 = 0u;
        v212 = 0u;
        if (v73)
        {
          break;
        }

        v103 = 1.0;
LABEL_160:
        if (!v184)
        {
          v124 = v214;
          v125 = v73 - 1;
          do
          {
            if (v103 == 0.0)
            {
              *v124 = 0.0;
            }

            else if (v103 != 1.0)
            {
              v93.n128_f64[0] = *v124 / v103;
              *v124 = v93.n128_f64[0];
            }

            ++v124;
            --v125;
          }

          while (v125);
        }

        v191 = v92;
        v192 = v91;
        v193 = v90;
        v194 = v89;
        v196 = v87;
        v197 = v86;
        v126 = *(v186 + 80);
        if (v126)
        {
          if (v189 <= 6 && ((1 << v189) & 0x54) != 0 || (v127 = v73, v75 == 1))
          {
            v127 = v73 - 1;
          }

          if (v127)
          {
            v128 = (v126 + 8);
            v129 = v214;
            do
            {
              v130 = *(v128 - 1);
              v131 = *v128;
              v132 = (*v129 - v130) / (v131 - v130);
              v133 = v132 + 0.0;
              v134 = v133;
              if (v132 > 1.0)
              {
                v134 = 1.0;
              }

              if (v132 >= 0.0)
              {
                v93.n128_f64[0] = v134;
              }

              else
              {
                v93.n128_f64[0] = 0.0;
              }

              *v129++ = v93.n128_f64[0];
              v128 += 2;
              --v127;
            }

            while (v127);
          }
        }

        CGFunctionEvaluate(TintTransform, v214, &v211, v93);
        v135 = Type;
        v136 = v196;
        v137 = v197;
        v139 = v193;
        v138 = v194;
        v141 = v191;
        v140 = v192;
        if (!v183)
        {
          v142 = &v211;
          v143 = v74 - 1;
          do
          {
            if (v103 == 0.0)
            {
              *v142 = 0.0;
            }

            else if (v103 != 1.0)
            {
              *v142 = v103 * *v142;
            }

            ++v142;
            --v143;
          }

          while (v143);
        }

        v71 = v185;
        if (v74)
        {
          v144 = 0;
          v145 = v103 * v84 + v82;
          v146 = v145;
          if (v145 > v85)
          {
            v146 = v49;
          }

          if (v145 >= 0.0)
          {
            v147 = v146;
          }

          else
          {
            v147 = 0.0;
          }

          v148 = v137;
          v149 = v190;
          do
          {
            if (v144)
            {
              v150 = 0;
            }

            else
            {
              v150 = v70;
            }

            if (v75 == 1 && v74 - 1 == v144)
            {
              v150 = 1;
            }

            if (v81)
            {
              _S2 = v147;
              if ((v150 & 1) == 0)
              {
                v200 = v206;
                v201 = v207;
                v202 = v208;
                v203 = v209;
                v153 = 0.0;
                v198 = v204;
                v199 = v205;
                if (v135 == 5 && v144)
                {
                  v154 = 1.0;
                  if (v144 <= 2)
                  {
                    v153 = *(v149 - 1);
                    v154 = *v149;
                  }
                }

                else
                {
                  v154 = v79;
                }

                v155 = (*(&v211 + v144) - v153) * v84 / (v154 - v153) + v82;
                v156 = v155;
                if (v155 > v85)
                {
                  v156 = v49;
                }

                if (v155 >= 0.0)
                {
                  _S2 = v156;
                }

                else
                {
                  _S2 = 0.0;
                }
              }
            }

            else
            {
              _S2 = v103;
              if ((v150 & 1) == 0)
              {
                _S2 = *(&v211 + v144);
              }
            }

            switch(v36)
            {
              case 1:
                v139[v144] = _S2;
                break;
              case 2:
                *v148 = _S2;
                break;
              case 4:
                *&v136[4 * v144] = _S2;
                break;
              case 5:
                __asm { FCVT            H2, S2 }

                *v148 = _H2;
                break;
            }

            ++v144;
            v149 += 2;
            v148 += 2;
          }

          while (v74 != v144);
        }

        v89 = &v138[v180];
        v90 = &v139[v74];
        v91 = &v140[2 * v180];
        v87 = &v136[v182];
        v92 = &v141[4 * v180];
        v86 = &v137[v181];
        v88 = v195 - 1;
        if (v195 == 1)
        {
          goto LABEL_229;
        }
      }

      v94 = 0;
      v95 = 0;
      v96 = 0;
      v93.n128_u64[0] = 1.0;
      v97 = v190;
      v98 = v179;
      while (1)
      {
        v200 = v206;
        v201 = v207;
        v202 = v208;
        v203 = v209;
        v99 = v205;
        v100 = 1.0;
        v198 = v204;
        v199 = v205;
        v101 = 0.0;
        if (v71 == 5)
        {
          if (v94)
          {
            if (v94 <= 2)
            {
              v101 = *(v97 - 1);
              v100 = *v97;
            }
          }

          else
          {
            v100 = 100.0;
          }
        }

        if (v35 <= 4)
        {
          break;
        }

        if (v35 > 7)
        {
          if (v35 == 8)
          {
            if (v95 <= 1)
            {
              v114 = *v98++;
              v96 = v114 | (v96 << 8);
              LODWORD(v95) = v95 | 8;
            }

            v108 = (v95 - 2);
            v115 = (v96 >> (v95 - 2)) & 3;
            if (v115)
            {
              v103 = (v101 + (((v100 - v101) * (85 * v115)) / v49));
            }

            else
            {
              v103 = 0.0;
            }

            if (v94)
            {
              v118 = 0;
            }

            else
            {
              v118 = v70;
            }

            v120 = v75 == 1 && v77 == v94;
            if (v118)
            {
              goto LABEL_125;
            }

            v95 = v108;
            if (v120)
            {
              goto LABEL_125;
            }
          }

          else
          {
            if (v95 <= 3)
            {
              v107 = *v98++;
              v96 = v107 | (v96 << 8);
              LODWORD(v95) = v95 | 8;
            }

            v108 = (v95 - 4);
            v109 = (v96 >> (v95 - 4)) & 0xF;
            if (v109)
            {
              v103 = (v101 + (((v100 - v101) * (v109 | (16 * v109))) / v49));
            }

            else
            {
              v103 = 0.0;
            }

            if (v94)
            {
              v121 = 0;
            }

            else
            {
              v121 = v70;
            }

            v123 = v75 == 1 && v77 == v94;
            if (v121)
            {
              goto LABEL_125;
            }

            v95 = v108;
            if (v123)
            {
              goto LABEL_125;
            }
          }

LABEL_122:
          *&v214[v94] = v103;
LABEL_123:
          v108 = v95;
          v103 = v93.n128_f64[0];
          goto LABEL_125;
        }

        if (v35 == 5)
        {
          if (v94)
          {
            v104 = 0;
          }

          else
          {
            v104 = v70;
          }

          _H3 = *&v91[2 * v94];
          __asm { FCVT            S3, H3 }

          goto LABEL_113;
        }

        if (v35 != 7)
        {
          goto LABEL_123;
        }

        if (!v95)
        {
          v102 = *v98++;
          v96 = v102 | (v96 << 8);
          LODWORD(v95) = 8;
        }

        v95 = (v95 - 1);
        if ((v96 >> v95))
        {
          v103 = (v101 + (((v100 - v101) * 255.0) / v49));
        }

        else
        {
          v103 = 0.0;
        }

        if (v94)
        {
          v104 = 0;
        }

        else
        {
          v104 = v70;
        }

        _ZF = v75 == 1;
LABEL_114:
        v117 = _ZF && v77 == v94;
        if (v104)
        {
          v108 = v95;
          goto LABEL_125;
        }

        v108 = v95;
        if ((v117 & 1) == 0)
        {
          goto LABEL_122;
        }

LABEL_125:
        ++v94;
        v97 += 2;
        v93.n128_f64[0] = v103;
        v95 = v108;
        if (v73 == v94)
        {
          goto LABEL_160;
        }
      }

      switch(v35)
      {
        case 1:
          if (v94)
          {
            v104 = 0;
          }

          else
          {
            v104 = v70;
          }

          _ZF = v75 == 1;
          LOBYTE(v99) = v89[v94];
          break;
        case 2:
          if (v94)
          {
            v104 = 0;
          }

          else
          {
            v104 = v70;
          }

          _ZF = v75 == 1;
          LOWORD(v99) = *&v91[2 * v94];
          break;
        case 4:
          if (v94)
          {
            v104 = 0;
          }

          else
          {
            v104 = v70;
          }

          _ZF = v75 == 1;
          _S3 = *&v92[4 * v94];
          goto LABEL_113;
        default:
          goto LABEL_123;
      }

      _S3 = v99;
LABEL_113:
      v103 = (v101 + (((v100 - v101) * _S3) / v49));
      goto LABEL_114;
    }

LABEL_230:
    v214[4] = 0;
    v213[0] = 0;
    v158 = v166;
    v214[0] = v166;
    v214[1] = v176;
    v214[2] = v172;
    v214[3] = v174;
    memcpy(&v214[5], v210, 0x130uLL);
    v214[10] = 0;
    v214[7] = v173;
    v159 = *v167;
    LODWORD(v214[4]) = *(v165 + 84);
    *&v211 = v159;
    *(&v211 + 1) = v176;
    *&v212 = v172;
    *(&v212 + 1) = v169;
    memcpy(&v213[1], v167 + 5, 0x130uLL);
    LODWORD(v213[0]) = v214[4];
    v160 = *(v165 + 104);
    v161 = *(v168 + 48);
    v200 = *(v168 + 32);
    v201 = v161;
    v202 = *(v168 + 64);
    *&v203 = *(v168 + 80);
    v162 = *(v168 + 16);
    v198 = *v168;
    v199 = v162;
    v39 = v160(v165, v214, &v211, &v198);
    if (v158 != v170)
    {
      free(v158);
    }
  }

  else
  {
    CGPostError("%s : Unable to complete color conversion", v28, v29, v30, v31, v32, v33, v34, "convert_deviceN");
    return 0;
  }

  return v39;
}