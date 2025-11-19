CGPDFArray *find_page_in_subtree(CGPDFArray *result, uint64_t *a2, void *a3)
{
  value[1] = result;
  if (result)
  {
    v5 = result;
    if (std::__hash_table<CGPDFDictionary *,std::hash<CGPDFDictionary *>,std::equal_to<CGPDFDictionary *>,std::allocator<CGPDFDictionary *>>::__emplace_unique_key_args<CGPDFDictionary *,CGPDFDictionary * const&>(a3, result))
    {
      value[0] = 0;
      if (CGPDFDictionaryGetArray(v5, "Kids", value))
      {
        if (value[0])
        {
          v6 = *(value[0] + 3) - *(value[0] + 2);
          if (v6)
          {
            v7 = 0;
            v8 = v6 >> 3;
            do
            {
              dict = 0;
              if (CGPDFArrayGetDictionary(value[0], v7, &dict))
              {
                if (is_page_tree_node(dict))
                {
                  v12 = 0;
                  if (!CGPDFDictionaryGetInteger(dict, "Count", &v12))
                  {
                    return 0;
                  }

                  v9 = *a2 - v12;
                  if (*a2 < v12)
                  {
                    return find_page_in_subtree(dict, a2, a3);
                  }
                }

                else
                {
                  if (!dict)
                  {
                    goto LABEL_13;
                  }

                  v12 = 0;
                  if (!CGPDFDictionaryGetObject(dict, "Parent", &v12) || !v12 || *(v12 + 8) != 8)
                  {
                    goto LABEL_13;
                  }

                  if (!*a2)
                  {
                    return dict;
                  }

                  v9 = *a2 - 1;
                }

                *a2 = v9;
              }

              else
              {
              }

LABEL_13:
              ++v7;
            }

            while (v8 != v7);
          }
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL is_page_tree_node(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    __s1 = 0;
    result = CGPDFDictionaryGetName(result, "Type", &__s1) && !strcmp(__s1, "Pages") || (value = 0, CGPDFDictionaryGetObject(v1, "Kids", &value)) && value && *(value + 2) == 7 && CGPDFDictionaryGetInteger(v1, "Count", 0);
  }

  return result;
}

void *GList::append(GList *this, void *a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  result = *this;
  if (v4 >= v5)
  {
    v7 = *(this + 4);
    if (v7 <= 0)
    {
      v7 = v5;
    }

    *(this + 2) = v7 + v5;
    result = greallocn_typed(result, v7 + v5, 8u, 0x80040B8603338uLL);
    *this = result;
    v4 = *(this + 3);
  }

  *(this + 3) = v4 + 1;
  *(result + v4) = a2;
  return result;
}

void CGErrorSetCallback(CGErrorCallback callback)
{
  pthread_mutex_lock(&error_callback_lock);
  error_callback = callback;

  pthread_mutex_unlock(&error_callback_lock);
}

os_log_t __CGLogWithArguments_block_invoke()
{
  MainBundleIfLooksLikeBundle = _CFBundleGetMainBundleIfLooksLikeBundle();
  if (MainBundleIfLooksLikeBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundleIfLooksLikeBundle);
    if (Identifier)
    {
      v2 = Identifier;
      Length = CFStringGetLength(Identifier);
      if (!CFStringGetCString(v2, fetch_process_name_name, 1024, 0x8000100u))
      {
        v5.location = 0;
        v5.length = Length;
        CFStringGetBytes(v2, v5, 0x600u, 0x3Fu, 0, fetch_process_name_name, 1024, 0);
      }
    }
  }

  if (!fetch_process_name_name[0])
  {
    __sprintf_chk(fetch_process_name_name, 0, 0x401uLL, "Unknown process name");
  }

  result = os_log_create("com.apple.coregraphics", fetch_process_name_name);
  CGLogWithArguments_log = result;
  return result;
}

void CGPDFPageGetImages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v6 = CGPDFImageExtractorCreate(0);
      if (v6)
      {
        v7 = v6;
        v8 = CGPDFContentStreamCreate(*(a1 + 40));
        *(v7 + 16) = v8;
        if (v8)
        {
          *(v7 + 24) = a2;
          *(v7 + 32) = a3;
          CGPDFImageExtractorGetImages(v7);
        }

        CGPDFImageExtractorRelease(v7);
      }
    }
  }
}

void *CGPDFImageExtractorCreate(__int128 ***a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0xA0040BCA63E43uLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    if (a1)
    {
      Copy = CGPDFRStateCreateCopy(*a1);
    }

    else
    {
      Copy = CGPDFRStateCreate();
    }

    *v2 = Copy;
    if (!Copy || (v4 = CGPDFOperatorTableCreate(), CGPDFOperatorTableSetCallback(v4, "q", image_q), CGPDFOperatorTableSetCallback(v4, "Q", image_Q), CGPDFOperatorTableSetCallback(v4, "cm", image_cm), CGPDFOperatorTableSetCallback(v4, "Do", image_Do), CGPDFOperatorTableSetCallback(v4, "EI", image_EI), (v2[1] = v4) == 0))
    {
      CGPDFImageExtractorRelease(v2);
      return 0;
    }
  }

  return v2;
}

void CGPDFImageExtractorGetImages(CGPDFContentStreamRef *info)
{
  v1 = CGPDFScannerCreate(info[2], info[1], info);
  CGPDFScannerScan(v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

void CGPDFImageExtractorRelease(uint64_t a1)
{
  if (a1)
  {
    CGPDFRStateRelease(*a1);
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void image_EI(uint64_t *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopStream(a1, &value))
  {
    Inline = CGPDFImageCreateInline(a1[7], value);
    if (Inline)
    {
      v5 = Inline;
      ImageForRenderingSize = CGPDFImageCreateImageForRenderingSize(Inline, a1[7], 0.0, 0.0);
      if (ImageForRenderingSize)
      {
        v7 = ImageForRenderingSize;
        v8 = *a2;
        if (*a2)
        {
          v8 = *&v8->a;
        }

        if (!v8)
        {
          v8 = &CGAffineTransformIdentity;
        }

        v9 = *&v8->c;
        v14 = *&v8->a;
        v15 = v9;
        v16 = *&v8->tx;
        v11 = *(a2 + 24);
        v10 = *(a2 + 32);
        v12[0] = v14;
        v12[1] = v9;
        v12[2] = v16;
        v11(ImageForRenderingSize, v12, v10);
        CFRelease(v7);
      }

      CFRelease(v5);
    }
  }
}

void image_Do(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (!CGPDFScannerPopName(a1, &value))
  {
    return;
  }

  v4 = *(a1 + 7);
  if (!v4)
  {
    return;
  }

  v5 = value;
  v6 = v4;
  while (1)
  {
    v7 = CGPDFResourcesCopyXObject(*(v6 + 32), v5);
    if (v7)
    {
      break;
    }

    v6 = *(v6 + 40);
    if (!v6)
    {
      return;
    }
  }

  v8 = v7[4];
  if (v8 == 2)
  {
    v16 = CGPDFXObjectGetValue(v7);
    v17 = CGPDFImageExtractorCreate(a2);
    if (v17)
    {
      if (v16)
      {
        v20 = *v16;
        v21 = *(v16 + 88);
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v24 = CGPDFContentStreamCreateWithStream(v20, v21, *(a2 + 16));
      v17[2] = v24;
      if (v24)
      {
        *(v17 + 3) = *(a2 + 24);
      }

      else
      {
        CGPDFImageExtractorRelease(v17);
        v17 = 0;
      }
    }

    CGPDFRStateGSave(*v17);
    v23 = (v16 + 40);
  }

  else
  {
    if (v8 != 1)
    {
      if (!v8)
      {
        v9 = CGPDFXObjectGetValue(v7);
        ImageForRenderingSize = CGPDFImageCreateImageForRenderingSize(v9, v4, 0.0, 0.0);
        if (ImageForRenderingSize)
        {
          v11 = ImageForRenderingSize;
          v12 = *a2;
          if (*a2)
          {
            v12 = *&v12->a;
          }

          if (!v12)
          {
            v12 = &CGAffineTransformIdentity;
          }

          v13 = *&v12->c;
          v29 = *&v12->a;
          v30 = v13;
          v31 = *&v12->tx;
          v15 = *(a2 + 24);
          v14 = *(a2 + 32);
          v28[0] = v29;
          v28[1] = v13;
          v28[2] = v31;
          v15(ImageForRenderingSize, v28, v14);
          CFRelease(v11);
        }
      }

      return;
    }

    v16 = CGPDFXObjectGetValue(v7);
    v17 = CGPDFImageExtractorCreate(a2);
    if (v17)
    {
      if (v16)
      {
        v18 = *(v16 + 16);
        v19 = *(v16 + 104);
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      v22 = CGPDFContentStreamCreateWithStream(v18, v19, *(a2 + 16));
      v17[2] = v22;
      if (v22)
      {
        *(v17 + 3) = *(a2 + 24);
      }

      else
      {
        CGPDFImageExtractorRelease(v17);
        v17 = 0;
      }
    }

    CGPDFRStateGSave(*v17);
    v23 = (v16 + 56);
  }

  if (!v16)
  {
    v23 = &CGAffineTransformIdentity;
  }

  if (*v17)
  {
    v25 = **v17;
  }

  else
  {
    v25 = 0;
  }

  v26 = *&v23->c;
  v29 = *&v23->a;
  v30 = v26;
  v31 = *&v23->tx;
  CGPDFGStateConcatCTM(v25, &v29);
  CGPDFImageExtractorGetImages(v17);
  CGPDFRStateGRestore(*v17);
  CGPDFImageExtractorRelease(v17);
}

double image_cm(CGPDFScanner *a1, float64x2_t ***a2)
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  value = 0.0;
  v8 = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v8) && CGPDFScannerPopNumber(a1, &v9) && CGPDFScannerPopNumber(a1, &v10) && CGPDFScannerPopNumber(a1, &v11) && CGPDFScannerPopNumber(a1, &v12))
  {
    if (*a2)
    {
      v5 = **a2;
    }

    else
    {
      v5 = 0;
    }

    v6[0] = v12;
    v6[1] = v11;
    v6[2] = v10;
    v6[3] = v9;
    v6[4] = v8;
    v6[5] = value;
    *&result = *&CGPDFGStateConcatCTM(v5, v6);
  }

  return result;
}

void CGFontGetGlyphsForUnichars(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    (*(*(a1 + 16) + 384))(*(a1 + 112), a2, a3);
  }

  else if (a4)
  {
    bzero(a3, 2 * a4);
  }
}

uint64_t CGFontGetMaxUnichars(uint64_t result)
{
  if (result)
  {
    get_unimap(result);
    return 256;
  }

  return result;
}

char **get_unimap(void *a1)
{
  explicit = atomic_load_explicit(a1 + 9, memory_order_acquire);
  if (!explicit)
  {
    explicit = malloc_type_calloc(1uLL, 0x18uLL, 0x102004014030ADEuLL);
    *explicit = a1;
    font_info = get_font_info(a1);
    if (font_info)
    {
      v4 = *font_info;
    }

    else
    {
      v4 = 0;
    }

    v5 = 0;
    explicit[1] = v4;
    atomic_compare_exchange_strong(a1 + 9, &v5, explicit);
    if (v5)
    {
      CGFontUnimapRelease(explicit);
      return v5;
    }
  }

  return explicit;
}

uint64_t CGFontGetUnicharsForGlyph(uint64_t result, uint64_t a2, _WORD *a3)
{
  if (!result)
  {
    return result;
  }

  result = get_unimap(result);
  if (!result)
  {
    return result;
  }

  if (*(result + 8) <= a2)
  {
    return 0;
  }

  explicit = atomic_load_explicit((result + 16), memory_order_acquire);
  if (explicit)
  {
    v6 = a2;
    if (explicit != -1)
    {
      v7 = atomic_load(&explicit[4 * (a2 >> 10) + 4]);
      if (v7)
      {
        v6 = *(v7 + 2 * (a2 & 0x3FF));
      }

      else
      {
        v6 = *explicit;
      }
    }

    if (v6 != 0xFFFF)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  v8 = *result;
  if (!*result)
  {
    return 0;
  }

  v9 = *(*(v8 + 16) + 392);
  v10 = *(v8 + 112);

  return v9(v10, a2, a3, 256);
}

void *conversion_cache_get_retained_conversion_params(CGColorSpace *a1, CGColorSpace *a2, __int128 *a3)
{
  v4 = a2;
  v5 = a1;
  v88 = *MEMORY[0x1E69E9840];
  value_out = 0;
  if (a1)
  {
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = (v6 + 64);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  if (a2)
  {
    if (v7)
    {
      v9 = *(a2 + 3);
      if (v9)
      {
        v10 = *(v9 + 64);
        v11 = *v7;
        v67 = 0uLL;
        v68 = 0;
        key[0] = v10;
        key[1] = v11;
        if (a3)
        {
          v67 = *a3;
          v68 = *(a3 + 4);
        }

        cache_lock_14662();
        if (get_cache_predicate_14663 != -1)
        {
          dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
        }

        if (!cache_get_and_retain(*(get_cache_conversion_cache + 64), key, &value_out))
        {
          cache_unlock_14665();
          if (!value_out)
          {
            _CGHandleAssert("conversion_cache_get_retained_conversion_params", 549, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayColorSpaceConversions/CGDisplayColorSpaceConversion.c", "params != NULL", "params is NULL", v16, v17, v18, v59);
          }

          if (!CGConditionalVarWait(value_out, v12, v13, v14, v15, v16, v17, v18))
          {
            release_and_remove_14669(key, value_out);
            value_out = 0;
            cache_lock_14662();
          }
        }

        if (value_out)
        {
          return value_out;
        }

        v19 = malloc_type_calloc(1uLL, 0x110uLL, 0x10600409D7FDA2EuLL);
        if (v19)
        {
          v27 = v19;
          CGConditionalVarInit(v19, v20, v21, v22, v23, v24, v25, v26);
          value_out = v27;
          if (get_cache_predicate_14663 != -1)
          {
            dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
          }

          cache_set_and_retain(*(get_cache_conversion_cache + 64), key, value_out, 0);
        }

        else
        {
          value_out = 0;
        }

        cache_unlock_14665();
        v35 = value_out;
        if (!value_out)
        {
          return value_out;
        }

        if (v5)
        {
          v36 = *(*(v5 + 3) + 48);
        }

        else
        {
          v36 = 0;
        }

        if ((v36 & 0xFFFFFFFFFFFFFFFDLL) != 1 || (v37 = *(*(v4 + 3) + 48), (v37 & 0xFFFFFFFFFFFFFFFDLL) != 1))
        {
          CGConditionalVarPost(value_out, v28, v29, v30, v31, v32, v33, v34);
LABEL_90:
          release_and_remove_14669(key, value_out);
          return 0;
        }

        if (xyz_color_space_predicate != -1)
        {
          dispatch_once(&xyz_color_space_predicate, &__block_literal_global_39_14670);
        }

        v38 = CGColorSpaceEqualToColorSpace(v5, xyz_color_space_xyz);
        v61 = CGColorSpaceEqualToColorSpace(v4, xyz_color_space_xyz);
        if ((CGColorSpaceIsMatrixBased(v5) & 1) == 0 && !CGColorSpaceUsesITUR_2100TF(v5) && !v38)
        {
          if (xsRGB_color_space_predicate != -1)
          {
            dispatch_once(&xsRGB_color_space_predicate, &__block_literal_global_11_14671);
          }

          v5 = xsRGB_color_space_sRGB;
        }

        if ((CGColorSpaceIsMatrixBased(v4) & 1) == 0 && !CGColorSpaceUsesITUR_2100TF(v4) && !v61)
        {
          if (xsRGB_color_space_predicate != -1)
          {
            dispatch_once(&xsRGB_color_space_predicate, &__block_literal_global_11_14671);
          }

          v4 = xsRGB_color_space_sRGB;
        }

        if (CGColorSpaceUsesITUR_2100TF(v5) || CGColorSpaceUsesITUR_2100TF(v4))
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *keys = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          *values = 0u;
          if (CGColorSpaceIsPQBased(v4))
          {
            keys[0] = @"kCGPQEOTFOpticalScale";
            LODWORD(valuePtr[0]) = 1120403456;
            values[0] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
            if (a3)
            {
              v39 = *(a3 + 1);
              if (v39 == 0.0)
              {
                v60 = &values[1];
                v40 = &keys[1];
                v41 = 1;
              }

              else
              {
                v60 = &v70;
                v40 = &v80;
                keys[1] = @"kCGPQMasteringDisplayWhite";
                *valuePtr = v39;
                values[1] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
                v41 = 2;
              }

              v43 = *(a3 + 2);
              if (v43 != 0.0)
              {
                *v40 = @"kCGPQMasteringDisplayBlack";
                *valuePtr = v43;
                ++v41;
                *v60 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
              }

              v44 = *(a3 + 3);
              if (v44 != 0.0)
              {
                keys[v41] = @"kCGTargetDisplayWhite";
                *valuePtr = v44;
                values[v41++] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
              }

              if (*(a3 + 2) != 0.0)
              {
                keys[v41] = @"kCGTargetDisplayBlack";
                LODWORD(valuePtr[0]) = *(a3 + 3);
                values[v41++] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
              }
            }

            else
            {
              v41 = 1;
            }
          }

          else
          {
            v41 = 0;
          }

          if (CGColorSpaceIsPQBased(v5))
          {
            keys[v41] = @"kCGPQInvEOTFOpticalScale";
            LODWORD(valuePtr[0]) = 1008981770;
            values[v41++] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          }

          IsHLGBased = CGColorSpaceIsHLGBased(v4);
          if (!a3 || !IsHLGBased)
          {
            goto LABEL_66;
          }

          v46 = *(a3 + 3);
          if (v46 != 0.0)
          {
            keys[v41] = @"kCGTargetDisplayWhite";
            *valuePtr = v46;
            values[v41++] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          }

          if (*(a3 + 2) != 0.0)
          {
            keys[v41] = @"kCGTargetDisplayBlack";
            LODWORD(valuePtr[0]) = *(a3 + 3);
            values[v41++] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          }

          else
          {
LABEL_66:
            if (!v41)
            {
              v42 = 0;
              goto LABEL_73;
            }
          }

          v47 = keys;
          v42 = CFDictionaryCreate(0, keys, values, v41, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          do
          {
            if (*v47)
            {
              CFRelease(*v47);
            }

            ++v47;
            --v41;
          }

          while (v41);
        }

        else
        {
          v42 = 0;
        }

LABEL_73:
        v48 = CGColorSpaceEqualToColorSpace(v5, v4);
        if (v42 == 0 && !v38 && !v61 || v48)
        {
          v86 = 0u;
          memset(v87, 0, sizeof(v87));
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *keys = 0u;
          if (xyz_color_space_predicate != -1)
          {
            dispatch_once(&xyz_color_space_predicate, &__block_literal_global_39_14670);
          }

          if (iterate_with_params(keys, xyz_color_space_xyz, v4, v42))
          {
            memset(v78, 0, sizeof(v78));
            v76 = 0u;
            memset(v77, 0, sizeof(v77));
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            *values = 0u;
            if (xyz_color_space_predicate != -1)
            {
              dispatch_once(&xyz_color_space_predicate, &__block_literal_global_39_14670);
            }

            v57 = iterate_with_params(values, v5, xyz_color_space_xyz, v42);
            v56 = v57;
            if (v57)
            {
              *(v35 + 15) = v36;
              *(v35 + 16) = v37;
              if (v37)
              {
                memcpy(v35 + 184, &v87[3] + 8, 8 * v37);
              }

              v63[0] = *(v87 + 8);
              v63[1] = *(&v87[1] + 8);
              v63[2] = *(&v87[2] + 8);
              v64[0] = *(v77 + 8);
              v64[1] = *(&v77[1] + 8);
              v64[2] = *(&v77[2] + 8);
              CGColorMatrixConcat(v64, v63, valuePtr);
              v58 = valuePtr[1];
              *(v35 + 136) = valuePtr[0];
              *(v35 + 152) = v58;
              *(v35 + 168) = valuePtr[2];
              if (v36)
              {
                memcpy(v35 + 208, v78, 8 * v36);
              }
            }
          }

          else
          {
            v56 = 0;
          }
        }

        else
        {
          v56 = iterate_with_params(v35, v5, v4, v42);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        CGConditionalVarPost(value_out, v49, v50, v51, v52, v53, v54, v55);
        if (v56)
        {
          return value_out;
        }

        goto LABEL_90;
      }
    }
  }

  return result;
}

uint64_t cache_lock_14662()
{
  if (get_cache_predicate_14663 != -1)
  {
    dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
  }

  v1 = get_cache_conversion_cache;

  return pthread_mutex_lock(v1);
}

uint64_t cache_unlock_14665()
{
  if (get_cache_predicate_14663 != -1)
  {
    dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
  }

  v1 = get_cache_conversion_cache;

  return pthread_mutex_unlock(v1);
}

uint64_t release_and_remove_14669(void *a1, void *value)
{
  if (get_cache_predicate_14663 != -1)
  {
    dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
  }

  cache_release_value(*(get_cache_conversion_cache + 64), value);
  if (get_cache_predicate_14663 != -1)
  {
    dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
  }

  v4 = *(get_cache_conversion_cache + 64);

  return cache_remove(v4, a1);
}

uint64_t iterate_with_params(uint64_t a1, uint64_t a2, CGColorSpace *a3, const __CFDictionary *a4)
{
  if (a2)
  {
    v4 = *(*(a2 + 24) + 48);
    if (a3)
    {
LABEL_3:
      v5 = *(*(a3 + 3) + 48);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:
  *(a1 + 120) = v4;
  *(a1 + 128) = v5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = a1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = -1;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __iterate_with_params_block_invoke_2;
  v13[3] = &unk_1E6E31960;
  v13[4] = &v18;
  v13[5] = v5;
  v13[6] = v4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __iterate_with_params_block_invoke_3;
  v12[3] = &unk_1E6E31988;
  v12[4] = &v18;
  v12[5] = &v14;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __iterate_with_params_block_invoke_4;
  v11[3] = &unk_1E6E319B0;
  v11[4] = &v14;
  v11[5] = &v18;
  v6 = CGColorConversionInfoIterateColorSpaceFunctionsWithCallbacksAndOptions(a2, a3, 0, &__block_literal_global_31_14680, v13, v12, v11, 2u, 0, a4);
  if (v6)
  {
    if (v5 >= 1)
    {
      v7 = 184;
      do
      {
        if (!*(v19[3] + v7))
        {
          *(v19[3] + v7) = CGDisplayColorCurveCreateIdentity();
        }

        v7 += 8;
        --v5;
      }

      while (v5);
    }

    if (v15[3] == -1)
    {
      v8 = v19[3];
      *(v8 + 136) = CGColorMatrixMakeIdentity_identity;
      *(v8 + 152) = unk_184564918;
      *(v8 + 168) = xmmword_184564928;
    }

    if (v4 >= 1)
    {
      v9 = 208;
      do
      {
        if (!*(v19[3] + v9))
        {
          *(v19[3] + v9) = CGDisplayColorCurveCreateIdentity();
        }

        v9 += 8;
        --v4;
      }

      while (v4);
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v6;
}

uint64_t __iterate_with_params_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a4;
  if (!a3)
  {
    if (a1[5] == a4)
    {
      if (a4 >= 1)
      {
        v21 = 23;
        do
        {
          v23 = *a5++;
          v22 = v23;
          if (v23 < 0)
          {
            Identity = CGDisplayColorCurveCreateIdentity();
          }

          else
          {
            v24 = *(*(a2 + 52) + 8 * v22);
            v39 = 0;
            v37 = 0u;
            v38 = 0u;
            CGColorTRCGetFunction(v24, &v37);
            if (CGColorTRCPureGammaOriginal_cglibrarypredicate != -1)
            {
              dispatch_once(&CGColorTRCPureGammaOriginal_cglibrarypredicate, &__block_literal_global_12);
            }

            v25 = CGColorTRCPureGammaOriginal_f(v24);
            Properties = CGColorFunctionGetProperties(v24);
            InputRange = CGColorFunctionGetInputRange(v24);
            v29 = v28;
            OutputRange = CGColorFunctionGetOutputRange(v24);
            v34 = v37;
            v35 = v38;
            v36 = v39;
            Identity = CGDisplayColorCurveCreate(&v34, v25, Properties, InputRange, v29, OutputRange, v31);
          }

          *(*(*(a1[4] + 8) + 24) + 8 * v21++) = Identity;
          --v6;
        }

        while (v6);
      }

      return 1;
    }

    return 0;
  }

  if (a1[6] != a4)
  {
    return 0;
  }

  if (a4 >= 1)
  {
    v9 = 26;
    do
    {
      v11 = *a5++;
      v10 = v11;
      if (v11 < 0)
      {
        v20 = CGDisplayColorCurveCreateIdentity();
      }

      else
      {
        v12 = *(*(a2 + 52) + 8 * v10);
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        CGColorTRCGetFunction(v12, &v37);
        if (CGColorTRCPureGammaOriginal_cglibrarypredicate != -1)
        {
          dispatch_once(&CGColorTRCPureGammaOriginal_cglibrarypredicate, &__block_literal_global_12);
        }

        v13 = CGColorTRCPureGammaOriginal_f(v12);
        v14 = CGColorFunctionGetProperties(v12);
        v15 = CGColorFunctionGetInputRange(v12);
        v17 = v16;
        v18 = CGColorFunctionGetOutputRange(v12);
        v34 = v37;
        v35 = v38;
        v36 = v39;
        v20 = CGDisplayColorCurveCreate(&v34, v13, v14, v15, v17, v18, v19);
      }

      *(*(*(a1[4] + 8) + 24) + 8 * v9++) = v20;
      --v6;
    }

    while (v6);
  }

  return 1;
}

BOOL __iterate_with_params_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    v7 = **(a2 + 60);
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    CGColorMatrixGetMatrix(v7, &v11);
    v8 = *(*(*(a1 + 32) + 8) + 24);
    v9 = v12;
    *(v8 + 136) = v11;
    *(v8 + 152) = v9;
    *(v8 + 168) = v13;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return a4 == 0;
}

uint64_t __iterate_with_params_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a2 + 68) + 8 * a4);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v7 = 240;
  if (v6 == -1)
  {
    v7 = 232;
  }

  *(*(*(*(a1 + 40) + 8) + 24) + v7) = v5;
  return 1;
}

CGColorSpaceRef __xsRGB_color_space_block_invoke()
{
  result = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedSRGB");
  xsRGB_color_space_sRGB = result;
  return result;
}

CGColorSpaceRef __xyz_color_space_block_invoke()
{
  result = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericXYZ");
  xyz_color_space_xyz = result;
  return result;
}

uint64_t __get_cache_block_invoke_14706()
{
  v9 = *MEMORY[0x1E69E9840];
  get_cache_conversion_cache = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040C6685353uLL);
  if (!get_cache_conversion_cache)
  {
    _CGHandleAssert("get_cache_block_invoke", 467, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayColorSpaceConversions/CGDisplayColorSpaceConversion.c", "conversion_cache != NULL", "conversion cache", v0, v1, v2, v7.version);
  }

  v8.__sig = 0;
  *v8.__opaque = 0;
  pthread_mutexattr_init(&v8);
  pthread_mutexattr_settype(&v8, 2);
  pthread_mutex_init(get_cache_conversion_cache, &v8);
  pthread_mutexattr_destroy(&v8);
  v7 = *byte_1EF23EBC8;
  if (cache_create("com.apple.CoreGraphics.display_colorspace_conversion_cache", &v7, (get_cache_conversion_cache + 64)))
  {
    _CGHandleAssert("get_cache_block_invoke", 489, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayColorSpaceConversions/CGDisplayColorSpaceConversion.c", "cacheErr == 0", "cache creation failed", v3, v4, v5, v7.version);
  }

  return cache_set_count_hint();
}

void conversion_params_data_value_release(uint64_t a1)
{
  if (a1)
  {
    if (!pthread_mutex_destroy(a1))
    {
      pthread_cond_destroy((a1 + 64));
    }

    CGColorCurveRelease(*(a1 + 184));
    CGColorCurveRelease(*(a1 + 192));
    CGColorCurveRelease(*(a1 + 200));
    CGColorCurveRelease(*(a1 + 208));
    CGColorCurveRelease(*(a1 + 216));
    CGColorCurveRelease(*(a1 + 224));
    v2 = *(a1 + 232);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 240);
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void conversion_params_data_key_release(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

_DWORD *conversion_params_data_key_retain(__int128 *a1, void *a2)
{
  result = malloc_type_malloc(0x34uLL, 0x10000403884A0CCuLL);
  if (result)
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    result[12] = *(a1 + 12);
    *(result + 1) = v6;
    *(result + 2) = v7;
    *result = v5;
  }

  *a2 = result;
  return result;
}

BOOL conversion_params_data_key_is_equal(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v8 != v7 || *(&v8 + 1) != *(&v7 + 1))
  {
    return 0;
  }

  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
}

uint64_t conversion_params_data_key_hash(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  return MEMORY[0x1865EEA10](v3, 52);
}

char *CGColorSpaceGetConversionMatrix@<X0>(CGColorSpace *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = 0;
  *a3 = CGColorMatrixMakeIdentity_identity;
  a3[1] = unk_184564918;
  a3[2] = xmmword_184564928;
  if (a2 > 1)
  {
    if (a2 == 3)
    {
LABEL_10:
      if (xyz_color_space_predicate != -1)
      {
        dispatch_once(&xyz_color_space_predicate, &__block_literal_global_39_14670);
      }

      v6 = xyz_color_space_xyz;
      v5 = a1;
      goto LABEL_13;
    }

    v6 = 0;
    if (a2 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (a2)
  {
    v6 = 0;
    if (a2 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (xyz_color_space_predicate != -1)
  {
    dispatch_once(&xyz_color_space_predicate, &__block_literal_global_39_14670);
  }

  v5 = xyz_color_space_xyz;
  v6 = a1;
LABEL_13:
  result = conversion_cache_get_retained_conversion_params(v5, v6, 0);
  if (result)
  {
    v8 = result;
    v9 = *(result + 152);
    *a3 = *(result + 136);
    a3[1] = v9;
    a3[2] = *(result + 168);
    if (get_cache_predicate_14663 != -1)
    {
      dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
    }

    v10 = *(get_cache_conversion_cache + 64);

    return cache_release_value(v10, v8);
  }

  return result;
}

atomic_uint *CGColorSpaceCreateConversionCurve(CGColorSpace *a1, unint64_t a2, int a3)
{
  v6 = 0;
  if (a3 > 1)
  {
    if (a3 == 3)
    {
LABEL_10:
      if (xyz_color_space_predicate != -1)
      {
        dispatch_once(&xyz_color_space_predicate, &__block_literal_global_39_14670);
      }

      v6 = xyz_color_space_xyz;
      v7 = a1;
      goto LABEL_13;
    }

    v7 = 0;
    if (a3 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (a3)
  {
    v7 = 0;
    if (a3 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (xyz_color_space_predicate != -1)
  {
    dispatch_once(&xyz_color_space_predicate, &__block_literal_global_39_14670);
  }

  v7 = xyz_color_space_xyz;
  v6 = a1;
LABEL_13:
  retained_conversion_params = conversion_cache_get_retained_conversion_params(v7, v6, 0);
  v9 = retained_conversion_params;
  v10 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return v10;
      }

LABEL_25:
      if (retained_conversion_params && *(retained_conversion_params + 15) > a2)
      {
        v10 = *(retained_conversion_params + a2 + 26);
        if (v10)
        {
          atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
        }

        if (get_cache_predicate_14663 == -1)
        {
          goto LABEL_30;
        }

        goto LABEL_33;
      }

      return 0;
    }

    goto LABEL_19;
  }

  if (a3 == 3)
  {
    goto LABEL_25;
  }

  if (a3 == 2)
  {
LABEL_19:
    if (retained_conversion_params && *(retained_conversion_params + 16) > a2)
    {
      v10 = *(retained_conversion_params + a2 + 23);
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
      }

      if (get_cache_predicate_14663 == -1)
      {
        goto LABEL_30;
      }

LABEL_33:
      v12 = retained_conversion_params;
      dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
      v9 = v12;
LABEL_30:
      cache_release_value(*(get_cache_conversion_cache + 64), v9);
      return v10;
    }

    return 0;
  }

  return v10;
}

atomic_uint *CGDisplayColorSpaceConversionCreateLinearizationCurve(CGColorSpace *a1, CGColorSpace *a2, unint64_t a3, __int128 *a4)
{
  retained_conversion_params = conversion_cache_get_retained_conversion_params(a1, a2, a4);
  if (!retained_conversion_params)
  {
    return 0;
  }

  v6 = retained_conversion_params;
  if (*(retained_conversion_params + 16) <= a3)
  {
    return 0;
  }

  v7 = *(retained_conversion_params + a3 + 23);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
  }

  if (get_cache_predicate_14663 != -1)
  {
    dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
  }

  cache_release_value(*(get_cache_conversion_cache + 64), v6);
  return v7;
}

uint64_t CGDisplayColorSpaceConversionCreatePreMatrixToneMapping(CGColorSpace *a1, CGColorSpace *a2, __int128 *a3)
{
  retained_conversion_params = conversion_cache_get_retained_conversion_params(a1, a2, a3);
  if (!retained_conversion_params)
  {
    return 0;
  }

  v4 = retained_conversion_params;
  v5 = *(retained_conversion_params + 29);
  if (get_cache_predicate_14663 != -1)
  {
    dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
  }

  cache_release_value(*(get_cache_conversion_cache + 64), v4);
  return v5;
}

char *CGDisplayColorSpaceConversionGetConversionMatrix@<X0>(CGColorSpace *a1@<X0>, CGColorSpace *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X8>)
{
  *a4 = CGColorMatrixMakeIdentity_identity;
  a4[1] = unk_184564918;
  a4[2] = xmmword_184564928;
  result = conversion_cache_get_retained_conversion_params(a1, a2, a3);
  if (result)
  {
    v6 = result;
    v7 = *(result + 152);
    *a4 = *(result + 136);
    a4[1] = v7;
    a4[2] = *(result + 168);
    if (get_cache_predicate_14663 != -1)
    {
      dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
    }

    v8 = *(get_cache_conversion_cache + 64);

    return cache_release_value(v8, v6);
  }

  return result;
}

uint64_t CGDisplayColorSpaceConversionCreatePostMatrixToneMapping(CGColorSpace *a1, CGColorSpace *a2, __int128 *a3)
{
  retained_conversion_params = conversion_cache_get_retained_conversion_params(a1, a2, a3);
  if (!retained_conversion_params)
  {
    return 0;
  }

  v4 = retained_conversion_params;
  v5 = *(retained_conversion_params + 30);
  if (get_cache_predicate_14663 != -1)
  {
    dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
  }

  cache_release_value(*(get_cache_conversion_cache + 64), v4);
  return v5;
}

atomic_uint *CGDisplayColorSpaceConversionCreateInvertedLinearizationCurve(CGColorSpace *a1, CGColorSpace *a2, unint64_t a3, __int128 *a4)
{
  retained_conversion_params = conversion_cache_get_retained_conversion_params(a1, a2, a4);
  if (!retained_conversion_params)
  {
    return 0;
  }

  v6 = retained_conversion_params;
  if (*(retained_conversion_params + 15) <= a3)
  {
    return 0;
  }

  v7 = *(retained_conversion_params + a3 + 26);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
  }

  if (get_cache_predicate_14663 != -1)
  {
    dispatch_once(&get_cache_predicate_14663, &__block_literal_global_14664);
  }

  cache_release_value(*(get_cache_conversion_cache + 64), v6);
  return v7;
}

uint64_t type4_value_add(double *a1, uint64_t a2, double *a3)
{
  if (*a2 == 258)
  {
    if (*a3 == 258)
    {
      v9 = *(a2 + 8) + a3[1];
      goto LABEL_16;
    }

    if (*a3 == 257)
    {
      v10 = *(a3 + 2);
      v11 = *(a2 + 8);
LABEL_14:
      v9 = v11 + v10;
      goto LABEL_16;
    }

    return 0;
  }

  if (*a2 != 257)
  {
    return 0;
  }

  v3 = *a3;
  if (*a3 == 258)
  {
    v10 = *(a2 + 8);
    v11 = a3[1];
    goto LABEL_14;
  }

  v4 = __OFSUB__(v3, 257);
  if (v3 != 257)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = *(a3 + 2);
  if ((v6 | v5) < 0)
  {
    if ((v6 & v5) < 0 != v4 && (0x80000000 - v6) > v5)
    {
      v7 = v5;
      v8 = v6;
      goto LABEL_8;
    }

LABEL_22:
    *a1 = 257;
    *(a1 + 2) = v6 + v5;
    return 1;
  }

  if ((v6 ^ 0x7FFFFFFF) >= v5)
  {
    goto LABEL_22;
  }

  v7 = v5;
  v8 = v6;
LABEL_8:
  v9 = v7 + v8;
LABEL_16:
  *a1 = 258;
  a1[1] = v9;
  return 1;
}

uint64_t type4_value_sub(double *a1, double *a2, uint64_t a3)
{
  if (*a2 != 258)
  {
    if (*a2 == 257)
    {
      if (*a3 == 258)
      {
        v5 = *(a2 + 2);
        v6 = *(a3 + 8);
        goto LABEL_14;
      }

      if (*a3 == 257)
      {
        v3 = *(a2 + 2);
        v4 = *(a3 + 8);
        if ((v3 & 0x80000000) != 0 || (v4 & 0x80000000) == 0)
        {
          if ((v3 & 0x80000000) != 0 && (v4 & 0x80000000) == 0 && (v4 | 0x80000000) > v3)
          {
            v5 = v3;
            v6 = v4;
            goto LABEL_14;
          }
        }

        else if (v4 + 0x7FFFFFFF < v3)
        {
          v5 = v3;
          v6 = v4;
LABEL_14:
          v7 = v5 - v6;
          goto LABEL_16;
        }

        *a1 = 257;
        *(a1 + 2) = v3 - v4;
        return 1;
      }
    }

    return 0;
  }

  if (*a3 == 258)
  {
    v7 = a2[1] - *(a3 + 8);
    goto LABEL_16;
  }

  if (*a3 != 257)
  {
    return 0;
  }

  v7 = a2[1] - *(a3 + 8);
LABEL_16:
  *a1 = 258;
  a1[1] = v7;
  return 1;
}

uint64_t type4_value_mul(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == 258)
  {
    if (*a3 == 258)
    {
      v8 = *(a2 + 8) * *(a3 + 8);
      goto LABEL_14;
    }

    if (*a3 != 257)
    {
      return 0;
    }

    v5 = *(a3 + 8);
    v6 = *(a2 + 8);
LABEL_12:
    v8 = v6 * v5;
LABEL_14:
    *a1 = 258;
    *(a1 + 8) = v8;
    return 1;
  }

  if (*a2 != 257)
  {
    return 0;
  }

  if (*a3 == 258)
  {
    v5 = *(a2 + 8);
    v6 = *(a3 + 8);
    goto LABEL_12;
  }

  if (*a3 != 257)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = *(a3 + 8);
  if (((v4 + 0x8000) | (v3 + 0x8000)) >> 16)
  {
    v9 = v4 * v3;
    if (v9 == v9)
    {
      *a1 = 257;
      *(a1 + 8) = v9;
      return 1;
    }

    v8 = v9;
    goto LABEL_14;
  }

  *a1 = 257;
  *(a1 + 8) = v4 * v3;
  return 1;
}

uint64_t type4_value_equal(uint64_t a1, uint64_t a2)
{
  if ((*a1 - 257) >= 2)
  {
    return *a1 == 256 && *a2 == 256 && *(a1 + 8) == *(a2 + 8);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v5 = 0;
    result = type4_value_compare(&v5, a1, a2);
    if (result)
    {
      return v5 == 0;
    }
  }

  return result;
}

uint64_t type4_value_compare(int *a1, uint64_t a2, double *a3)
{
  if (*a2 == 258)
  {
    if (*a3 != 258)
    {
      if (*a3 != 257)
      {
        return 0;
      }

      v4 = *(a2 + 8);
      v5 = *(a3 + 2);
LABEL_13:
      if (v4 >= v5)
      {
        v3 = v4 > v5;
      }

      else
      {
        v3 = -1;
      }

      goto LABEL_16;
    }

    v4 = *(a2 + 8);
LABEL_12:
    v5 = a3[1];
    goto LABEL_13;
  }

  if (*a2 != 257)
  {
    return 0;
  }

  if (*a3 == 258)
  {
    v4 = *(a2 + 8);
    goto LABEL_12;
  }

  if (*a3 != 257)
  {
    return 0;
  }

  v3 = *(a2 + 8) - *(a3 + 2);
LABEL_16:
  *a1 = v3;
  return 1;
}

uint64_t type4_value_cvi(_DWORD *a1, uint64_t a2, _BYTE *a3)
{
  if (*a2 == 258)
  {
    __y = 0.0;
    modf(*(a2 + 8), &__y);
    v6 = __y;
    if (__y >= -2147483650.0)
    {
      if (__y <= 2147483650.0)
      {
        *a3 = 0;
        *a1 = 257;
        a1[2] = v6;
        return 1;
      }

      result = 1;
      *a3 = 1;
      *a1 = 257;
      v7 = 0x7FFFFFFF;
    }

    else
    {
      result = 1;
      *a3 = 1;
      *a1 = 257;
      v7 = 0x80000000;
    }

    a1[2] = v7;
  }

  else
  {
    if (*a2 == 257)
    {
      *a1 = *a2;
      return 1;
    }

    return 0;
  }

  return result;
}

void CGPDFGroupRelease(CGColorSpaceRef *a1)
{
  if (a1)
  {
    CGColorSpaceRelease(a1[12]);

    free(a1);
  }
}

uint64_t CGDisplayColorCurveCreateIdentity()
{
  if (CGDisplayColorCurveCreateIdentity_predicate != -1)
  {
    dispatch_once(&CGDisplayColorCurveCreateIdentity_predicate, &__block_literal_global_14768);
  }

  result = CGDisplayColorCurveCreateIdentity_curve;
  if (CGDisplayColorCurveCreateIdentity_curve)
  {
    atomic_fetch_add_explicit(CGDisplayColorCurveCreateIdentity_curve, 1u, memory_order_relaxed);
  }

  return result;
}

float64x2_t __CGDisplayColorCurveCreateIdentity_block_invoke()
{
  v0 = malloc_type_calloc(1uLL, 0x90uLL, 0x10C2040536035A7uLL);
  CGDisplayColorCurveCreateIdentity_curve = v0;
  if (v0)
  {
    *(v0 + 1) = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *(v0 + 1) = _D0;
    *(v0 + 16) = 1065353216;
    v0[60] = 1;
    v7.f64[0] = 2.84809454e-306;
    v7.f64[1] = 2.84809454e-306;
    result = vnegq_f64(v7);
    *(v0 + 44) = result;
    *v0 = 1;
  }

  return result;
}

atomic_uint *CGColorCurveRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

char *CGDisplayColorCurveCreate(_DWORD *a1, char a2, int a3, float a4, float a5, float a6, float a7)
{
  v14 = malloc_type_calloc(1uLL, 0x90uLL, 0x10C2040536035A7uLL);
  v15 = v14;
  if (v14)
  {
    pthread_mutex_init((v14 + 80), 0);
    *v15 = 1;
    *(v15 + 1) = 4;
    v15[60] = a2;
    *(v15 + 10) = a3;
    *(v15 + 11) = a4;
    *(v15 + 12) = a5;
    *(v15 + 13) = a6;
    *(v15 + 14) = a7;
    v16 = *a1;
    if (*a1 <= 3)
    {
      if (v16 <= 1)
      {
        if (!v16)
        {
          *(v15 + 2) = a1[1];
          *(v15 + 3) = 1065353216;
          *(v15 + 2) = 0;
          *(v15 + 3) = 0;
          *(v15 + 8) = 0;
          *(v15 + 16) = a1[1];
          return v15;
        }

        if (v16 == 1)
        {
          *(v15 + 2) = a1[1];
          *(v15 + 3) = a1[2];
          *(v15 + 4) = a1[3];
          *(v15 + 7) = 0;
          *(v15 + 6) = -*(a1 + 3) / *(a1 + 2);
          *(v15 + 5) = 0;
          *(v15 + 8) = 0;
          return v15;
        }

LABEL_33:
        abort();
      }

      if (v16 == 2)
      {
        *(v15 + 2) = a1[1];
        *(v15 + 3) = a1[2];
        *(v15 + 4) = a1[3];
        *(v15 + 5) = 0;
        *(v15 + 6) = -*(a1 + 3) / *(a1 + 2);
        *(v15 + 7) = a1[4];
        *(v15 + 8) = a1[4];
        return v15;
      }

      if (v16 != 3)
      {
        goto LABEL_33;
      }

      *(v15 + 2) = a1[1];
      *(v15 + 3) = a1[2];
      *(v15 + 4) = a1[3];
      *(v15 + 5) = a1[4];
      *(v15 + 6) = a1[5];
      *(v15 + 7) = 0;
      *(v15 + 8) = 0;
      v17 = *(a1 + 1);
      v26 = *a1;
      v27 = v17;
      v28 = a1[8];
      if (trc_equal_trc(&v26, &sRGB_curve))
      {
        v18 = 1074580685;
      }

      else
      {
        v23 = *(a1 + 1);
        v26 = *a1;
        v27 = v23;
        v28 = a1[8];
        if (!trc_equal_trc(&v26, &itu_r_709_curve))
        {
          return v15;
        }

        v18 = 1072902963;
      }

LABEL_28:
      *(v15 + 16) = v18;
      return v15;
    }

    if ((v16 - 6) < 4)
    {
      v15[60] = 0;
      *(v15 + 1) = v16;
      *(v15 + 2) = 0;
      *(v15 + 3) = a1[2];
      *(v15 + 4) = a1[3];
      *(v15 + 5) = a1[4];
      *(v15 + 6) = a1[5];
      *(v15 + 7) = a1[6];
      *(v15 + 8) = a1[7];
      *(v15 + 16) = 0;
      return v15;
    }

    if (v16 == 4)
    {
      *(v15 + 2) = a1[1];
      *(v15 + 3) = a1[2];
      *(v15 + 4) = a1[3];
      *(v15 + 5) = a1[4];
      *(v15 + 6) = a1[5];
      *(v15 + 7) = a1[6];
      *(v15 + 8) = a1[7];
      v22 = *(a1 + 1);
      v26 = *a1;
      v27 = v22;
      v28 = a1[8];
      if (trc_equal_trc(&v26, &inverted_sRGB_curve))
      {
        v18 = 1055439407;
      }

      else
      {
        v24 = *(a1 + 1);
        v26 = *a1;
        v27 = v24;
        v28 = a1[8];
        if (!trc_equal_trc(&v26, &inverted_itu_r_709_curve))
        {
          return v15;
        }

        v18 = 1057406114;
      }

      goto LABEL_28;
    }

    if (v16 != 5)
    {
      goto LABEL_33;
    }

    *(v15 + 1) = 5;
    v19 = malloc_type_malloc(4 * *(a1 + 1), 0x100004052888210uLL);
    *(v15 + 9) = v19;
    if (v19)
    {
      if (*(a1 + 1))
      {
        v20 = 0;
        do
        {
          v19[v20] = *(*(a1 + 3) + 4 * v20);
          ++v20;
          v21 = *(a1 + 1);
        }

        while (v20 < v21);
      }

      else
      {
        v21 = 0;
      }

      *(v15 + 1) = v21;
    }

    *(v15 + 2) = v19;
  }

  return v15;
}

void CGColorCurveRelease(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    pthread_mutex_destroy((a1 + 80));
    free(*(a1 + 72));

    free(a1);
  }
}

BOOL CGColorCurveEqualToGammaCurve(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 4);
    if (v3 != *(a2 + 4) || v3 > 9)
    {
      return 0;
    }

    if (v3 != 5)
    {
      if (*(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32))
      {
        return *(a1 + 8) == *(a2 + 8);
      }

      return 0;
    }

    v4 = *(a1 + 8);
    if (v4 != *(a2 + 8))
    {
      return 0;
    }

    if (!v4)
    {
      return 1;
    }

    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    v7 = v4 - 1;
    do
    {
      v8 = *v5++;
      v9 = v8;
      v10 = *v6++;
      v11 = v10;
      v13 = v7-- != 0;
      v2 = v9 == v11;
    }

    while (v9 == v11 && v13);
  }

  return v2;
}

float get_gamma(uint64_t a1)
{
  if (*(a1 + 60))
  {
    v2 = 8;
  }

  else
  {
    if (*(a1 + 4) <= 5)
    {
      pthread_mutex_lock((a1 + 80));
      if (*(a1 + 64) == 0.0)
      {
        v3 = *(a1 + 4);
        v4 = 0.0;
        if (v3 <= 5)
        {
          v5 = 0;
          v6 = 0;
          v7 = 0.0;
          do
          {
            v13 = v3;
            v14 = *(a1 + 8);
            v15 = *(a1 + 24);
            calculate_trc(&v13, v6 / 1023.0);
            if (v6)
            {
              v9 = v8;
              if (v8 != 1.0 && v6 != 1023 && v8 != 0.0)
              {
                v10 = logf(v6 / 1023.0);
                v7 = v7 + (logf(v9) / v10);
                ++v5;
              }
            }

            ++v6;
          }

          while (v6 != 1024);
          if (v5 <= 0)
          {
            v11 = 1.0;
          }

          else
          {
            v11 = (v7 / v5);
          }

          v4 = floor(v11 * 10.0 + 0.5) / 10.0;
        }

        *(a1 + 64) = v4;
      }

      pthread_mutex_unlock((a1 + 80));
    }

    v2 = 64;
  }

  return *(a1 + v2);
}

void calculate_trc(uint64_t a1, float a2)
{
  v3 = *a1;
  if (*a1 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 6)
      {
        v6 = powf(fabsf(a2), *(a1 + 8));
        powf(fmaxf(v6 - *(a1 + 16), 0.0) / (*(a1 + 20) - (*(a1 + 24) * v6)), *(a1 + 12));
      }
    }

    else
    {
      switch(v3)
      {
        case 7:
          v7 = powf(fabsf(a2) * *(a1 + 28), *(a1 + 8));
          v8 = (*(a1 + 16) + (*(a1 + 20) * v7)) / ((v7 * *(a1 + 24)) + 1.0);
          powf(v8, *(a1 + 12));
          break;
        case 8:
          v9 = *(a1 + 28) + ((1.0 - *(a1 + 28)) * fabsf(a2));
          if (v9 >= 0.0 && v9 > 0.5)
          {
            expf((v9 - *(a1 + 16)) / *(a1 + 8));
          }

          break;
        case 9:
          v5 = fabsf(*(a1 + 24) * a2);
          if (v5 > *(a1 + 20))
          {
            log(-(*(a1 + 12) - v5 * 12.0));
          }

          break;
      }
    }
  }

  else if (v3 < 5)
  {
    v4 = *(a1 + 20);
    if (v4 <= a2)
    {
      fmaxf(*(a1 + 28) + (v4 * *(a1 + 16)), powf(*(a1 + 12) + (a2 * *(a1 + 8)), *(a1 + 4)) + *(a1 + 24));
    }
  }
}

void CGColorCurveGetParameters(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, float *a8)
{
  v16 = *(a1 + 4);
  if (v16 < 5)
  {
    *a2 = *(a1 + 24);
    *a3 = *(a1 + 12);
    *a4 = *(a1 + 16);
    *a5 = *(a1 + 28);
    *a6 = *(a1 + 20);
    *a7 = *(a1 + 32);
    gamma = *(a1 + 8);
LABEL_5:
    *a8 = gamma;
    return;
  }

  if (v16 - 6 < 4)
  {
    *a2 = *(a1 + 24);
    *a3 = *(a1 + 12);
    *a4 = *(a1 + 16);
    *a5 = *(a1 + 28);
    *a6 = *(a1 + 20);
    *a7 = *(a1 + 32);
    *a8 = 0.0;
    return;
  }

  if (v16 == 5)
  {
    CGPostError("%s: CGColorCurve type kCGColorTRCTable used as parametric. Returning estimated gamma", a2, a3, a4, a5, a6, a7, a8, "CGColorCurveGetParameters");
    *a2 = 0;
    *a3 = 1065353216;
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
    *a7 = 0;
    gamma = get_gamma(a1);
    goto LABEL_5;
  }

  CGPostError("%s: CGColorCurve type %d is not supprted", a2, a3, a4, a5, a6, a7, a8, "CGColorCurveGetParameters");
}

__n128 CGColorCurveGetTRC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 4);
  v3 = *(a1 + 20);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 36);
  return result;
}

void CGColorCurveMapValue(uint64_t a1, float a2)
{
  v2 = *(a1 + 20);
  v3[0] = *(a1 + 4);
  v3[1] = v2;
  v4 = *(a1 + 36);
  calculate_trc(v3, a2);
}

uint64_t CGColorCurvePrint(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 4)
  {
    if (v1 < 5)
    {
      return printf("%s: d:%f | gamma:%f | c:%f f:%f | a:%f b:%f e:%f");
    }

    return printf("%s: unknown curve type\n");
  }

  if (v1 <= 6)
  {
    if (v1 == 5)
    {
      return printf("%s: table with %zu entries\n");
    }

    return printf("%s: %s a:%f | b:%f | c:%f | d:%f | e:%f | f:%f");
  }

  if (v1 == 7 || v1 == 8 || v1 == 9)
  {
    return printf("%s: %s a:%f | b:%f | c:%f | d:%f | e:%f | f:%f");
  }

  return printf("%s: unknown curve type\n");
}

void CGContextAddQuadCurveToPoint(CGContextRef c, CGFloat cpx, CGFloat cpy, CGFloat x, CGFloat y)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v13 = *(c + 21);
      if (v13 && !CGPathIsEmpty(v13))
      {
        v19 = *(c + 21);
        v20 = (*(c + 12) + 24);

        CGPathAddQuadCurveToPoint(v19, v20, cpx, cpy, x, y);
      }

      else
      {
        CGPostError("%s: no current point.", v5, v6, v7, v8, v9, v10, v11, "CGContextAddQuadCurveToPoint");
      }

      return;
    }

    v18 = c;
  }

  else
  {
    v18 = 0;
  }

  handle_invalid_context("CGContextAddQuadCurveToPoint", v18, v6, v7, v8, v9, v10, v11);
}

void CGContextAddRects(CGContextRef c, const CGRect *rects, size_t count)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (rects && count)
      {
        Mutable = *(c + 21);
        if (!Mutable)
        {
          Mutable = CGPathCreateMutable();
          *(c + 21) = Mutable;
        }

        v12 = (*(c + 12) + 24);

        CGPathAddRects(Mutable, v12, rects, count);
      }

      return;
    }

    v13 = c;
  }

  else
  {
    v13 = 0;
  }

  handle_invalid_context("CGContextAddRects", v13, count, v3, v4, v5, v6, v7);
}

void CGContextAddLines(CGContextRef c, const CGPoint *points, size_t count)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (points && count)
      {
        Mutable = *(c + 21);
        if (!Mutable)
        {
          Mutable = CGPathCreateMutable();
          *(c + 21) = Mutable;
        }

        v12 = (*(c + 12) + 24);

        CGPathAddLines(Mutable, v12, points, count);
      }

      return;
    }

    v13 = c;
  }

  else
  {
    v13 = 0;
  }

  handle_invalid_context("CGContextAddLines", v13, count, v3, v4, v5, v6, v7);
}

void CGContextAddArcToPoint(CGContextRef c, CGFloat x1, CGFloat y1, CGFloat x2, CGFloat y2, CGFloat radius)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      Mutable = *(c + 21);
      if (!Mutable)
      {
        Mutable = CGPathCreateMutable();
        *(c + 21) = Mutable;
      }

      v19 = (*(c + 12) + 24);

      CGPathAddArcToPoint(Mutable, v19, x1, y1, x2, y2, radius);
      return;
    }

    v20 = c;
  }

  else
  {
    v20 = 0;
  }

  handle_invalid_context("CGContextAddArcToPoint", v20, v6, v7, v8, v9, v10, v11);
}

BOOL CGContextIsPathEmpty(CGContextRef c)
{
  if (!c || *(c + 4) != 1129601108)
  {
    handle_invalid_context("CGContextIsPathEmpty", c, v1, v2, v3, v4, v5, v6);
    return 1;
  }

  v7 = *(c + 21);
  if (!v7)
  {
    return 1;
  }

  return CGPathIsEmpty(v7);
}

CGPoint CGContextGetPathCurrentPoint(CGContextRef c)
{
  if (!c)
  {
    v10 = 0;
LABEL_8:
    handle_invalid_context("CGContextGetPathCurrentPoint", v10, v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (*(c + 4) != 1129601108)
  {
    v10 = c;
    goto LABEL_8;
  }

  v9 = *(c + 21);
  if (!v9 || CGPathIsEmpty(v9))
  {
    CGPostError("%s: no current point.", v1, v2, v3, v4, v5, v6, v7, "CGContextGetPathCurrentPoint");
LABEL_9:
    v11 = 0.0;
    v12 = 0.0;
    goto LABEL_12;
  }

  CurrentPoint = CGPathGetCurrentPoint(*(c + 21));
  v14 = *(c + 12);
  v15 = *(v14 + 40);
  v23[0] = *(v14 + 24);
  v23[1] = v15;
  v23[2] = *(v14 + 56);
  v11 = CGPointApplyInverseAffineTransform(v23, v16, v17, v18, v19, v20, v21, v22, CurrentPoint.x, CurrentPoint.y);
LABEL_12:
  result.y = v12;
  result.x = v11;
  return result;
}

CGRect CGContextGetPathBoundingBox(CGContextRef c)
{
  if (!c)
  {
    v10 = 0;
LABEL_8:
    handle_invalid_context("CGContextGetPathBoundingBox", v10, v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (*(c + 4) != 1129601108)
  {
    v10 = c;
    goto LABEL_8;
  }

  v9 = *(c + 21);
  if (!v9 || CGPathIsEmpty(v9))
  {
    CGPostError("%s: no current point.", v1, v2, v3, v4, v5, v6, v7, "CGContextGetPathBoundingBox");
LABEL_9:
    v11 = 0.0;
    v12 = INFINITY;
    v13 = INFINITY;
    v14 = 0.0;
    goto LABEL_12;
  }

  BoundingBox = CGPathGetBoundingBox(*(c + 21));
  v15 = *(c + 12);
  v16 = *(v15 + 40);
  v17[0] = *(v15 + 24);
  v17[1] = v16;
  v17[2] = *(v15 + 56);
  v13 = CGRectApplyInverseAffineTransform(v17, *&BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height).n64_f64[0];
LABEL_12:
  result.size.height = v14;
  result.size.width = v11;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

BOOL path_coordinates_are_safe(const CGPath *a1)
{
  if (!a1)
  {
    return 1;
  }

  BoundingBox = CGPathGetBoundingBox(a1);
  result = 0;
  if (fabs(BoundingBox.origin.x) <= 1000000000.0 && fabs(BoundingBox.origin.y) <= 1000000000.0 && BoundingBox.size.width >= 0.0 && BoundingBox.size.width <= 1000000000.0 && BoundingBox.size.height >= 0.0 && BoundingBox.size.height <= 1000000000.0)
  {
    return fmax(fabs(BoundingBox.origin.x + BoundingBox.size.width), fabs(BoundingBox.origin.y + BoundingBox.size.height)) <= 1000000000.0;
  }

  return result;
}

void *__draw_path_block_invoke(void *result, int *a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a2 == 4)
  {
    v5 = result[7];
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v5 = result[6];
LABEL_8:
    ++*(*(v5 + 8) + 24);
    goto LABEL_11;
  }

  if (v3)
  {
    ++*(*(result[8] + 8) + 24);
LABEL_10:
    *a3 = 1;
    goto LABEL_11;
  }

  v4 = ++*(*(result[4] + 8) + 24);
  if (v4 != 1)
  {
    if (v4 < 2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(*(result[5] + 8) + 24) = **(a2 + 1);
LABEL_11:
  *(*(result[9] + 8) + 24) = a2;
  return result;
}

__n128 __draw_path_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a2 == 4)
  {
    v6 = (*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  result = *v6;
  v8 = *(a1 + 72);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 24);
  *(v9 + 24) = v10 + 1;
  *(v8 + 16 * v10) = result;
  v11 = *(*(*(a1 + 48) + 8) + 24);
  if (v11 >= 0x80)
  {
    CGPathAddLines(*(*(*(a1 + 56) + 8) + 24), 0, *(a1 + 72), v11);
    *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 56) + 8) + 24));
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 24);
    if (v13)
    {
      CFRelease(v13);
      v12 = *(*(a1 + 56) + 8);
    }

    *(v12 + 24) = 0;
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a3 = 1;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = CGPathCreateMutable();
      result = **(a2 + 8);
      **(a1 + 72) = result;
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

void CGContextStrokeRectWithWidth(CGContextRef c, CGRect rect, CGFloat width)
{
  height = rect.size.height;
  v5 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(c);
  CGContextSetLineWidth(c, width);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = v5;
  v10.size.height = height;
  CGContextStrokeRect(c, v10);

  CGContextRestoreGState(c);
}

void CGContextStrokeLineSegments(CGContextRef c, const CGPoint *points, size_t count)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v11 = *(c + 21);
      if (v11)
      {
        CFRelease(v11);
        *(c + 21) = 0;
      }

      if (points)
      {
        if (count)
        {
          v12 = *(c + 12);
          v13 = *(*(v12 + 128) + 8);
          if (v13 > 0.0 || v13 == -1.0905473e16)
          {
            v15 = *(c + 5);
            v16 = *(c + 14);

            CGContextDelegateDrawLines(v15, v16, v12, points, count);
          }
        }
      }

      return;
    }

    v14 = c;
  }

  else
  {
    v14 = 0;
  }

  handle_invalid_context("CGContextStrokeLineSegments", v14, count, v3, v4, v5, v6, v7);
}

void CGContextClipToMaskWithTransform(uint64_t a1, _BYTE *image, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  if (!a1)
  {
    v25 = 0;
LABEL_25:

    handle_invalid_context("CGContextClipToMaskWithTransform", v25, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v25 = a1;
    goto LABEL_25;
  }

  if (a9 != INFINITY && a10 != INFINITY)
  {
    v22 = image;
    if (!image)
    {
      goto LABEL_36;
    }

    if ((image[39] & 2) != 0)
    {
      mask_from_image = 0;
    }

    else
    {
      mask_from_image = create_mask_from_image(image, image, a3, a4, a5, a6, a7, a8);
      v22 = mask_from_image;
      if (!mask_from_image)
      {
LABEL_36:
        v31 = *(a1 + 168);
        if (v31)
        {
          CFRelease(v31);
          *(a1 + 168) = 0;
        }

        return;
      }
    }

    v26 = *(a1 + 96);
    v27 = *(v26 + 24);
    v28 = *(v26 + 40);
    if (a3)
    {
      v33 = vaddq_f64(*(v26 + 56), vmlaq_n_f64(vmulq_n_f64(v28, a3[5]), v27, a3[4]));
      v34 = vmlaq_n_f64(vmulq_n_f64(v28, a3[1]), v27, *a3);
      v32 = vmlaq_n_f64(vmulq_n_f64(v28, a3[3]), v27, a3[2]);
    }

    else
    {
      v33 = *(v26 + 56);
      v34 = *(v26 + 24);
      v32 = *(v26 + 40);
    }

    v29 = malloc_type_malloc(0x60uLL, 0x10200403191E22BuLL);
    *v29 = 1;
    *(v29 + 8) = v34;
    *(v29 + 24) = v32;
    *(v29 + 40) = v33;
    CFRetain(v22);
    *(v29 + 7) = v22;
    *(v29 + 8) = a9;
    *(v29 + 9) = a10;
    *(v29 + 10) = a11;
    *(v29 + 11) = a12;
    v30 = CGClipCreateWithMask(v29, HIBYTE(*(*(v26 + 120) + 4)) & 1);
    CGClipMaskRelease(v29);
    if (v30)
    {
      maybeCopyClipState(v26);
      CGClipStackAddClip(*(v26 + 112), v30);
      CGClipRelease(v30);
    }

    if (mask_from_image)
    {
      CFRelease(mask_from_image);
    }

    goto LABEL_36;
  }
}

void CGContextClipToRects(CGContextRef c, const CGRect *rects, size_t count)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (count == 1)
      {
        x = rects->origin.x;
        y = rects->origin.y;
        width = rects->size.width;
        height = rects->size.height;

        CGContextClipToRect(c, *&x);
      }

      else
      {
        v16 = *(c + 21);
        if (v16)
        {
          CFRelease(v16);
          *(c + 21) = 0;
        }

        CGContextAddRects(c, rects, count);

        clip(c, 0, v17, v18, v19, v20, v21, v22);
      }

      return;
    }

    v15 = c;
  }

  else
  {
    v15 = 0;
  }

  handle_invalid_context("CGContextClipToRects", v15, count, v3, v4, v5, v6, v7);
}

BOOL CGContextPathContainsPoint(CGContextRef c, CGPoint point, CGPathDrawingMode mode)
{
  if (!c)
  {
    v23 = 0;
LABEL_12:
    handle_invalid_context("CGContextPathContainsPoint", v23, v3, v4, v5, v6, v7, v8);
    goto LABEL_13;
  }

  if (*(c + 4) != 1129601108)
  {
    v23 = c;
    goto LABEL_12;
  }

  v10 = *(c + 21);
  if (!v10)
  {
    goto LABEL_13;
  }

  y = point.y;
  x = point.x;
  if (CGPathIsEmpty(v10))
  {
    goto LABEL_13;
  }

  v19 = *(c + 12);
  v20 = *(*(v19 + 128) + 8);
  if (v20 <= 0.0 && v20 != -1.0905473e16)
  {
    if (mode < (kCGPathEOFillStroke|kCGPathEOFill) && ((0x1Bu >> mode) & 1) != 0)
    {
      v21 = 0;
      v22 = 0x16u >> mode;
      goto LABEL_27;
    }

LABEL_13:
    LOBYTE(v22) = 0;
    return v22;
  }

  LOBYTE(v22) = 0;
  if (mode <= kCGPathEOFill)
  {
    if (mode)
    {
      if (mode != kCGPathEOFill)
      {
        return v22;
      }

      v21 = 0;
      LOBYTE(v22) = 1;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    switch(mode)
    {
      case kCGPathStroke:
        v25 = (v19 + 24);
        v21 = 1;
        goto LABEL_29;
      case kCGPathFillStroke:
        LOBYTE(v22) = 0;
        break;
      case kCGPathEOFillStroke:
        LOBYTE(v22) = 1;
        break;
      default:
        return v22;
    }

    v21 = 1;
  }

LABEL_27:
  v25 = (v19 + 24);
  v28.x = x;
  v28.y = y;
  if (CGPathContainsPoint(*(c + 21), (v19 + 24), v28, v22 & 1))
  {
    LOBYTE(v22) = 1;
    return v22;
  }

LABEL_29:
  if (v20 == -1.0905473e16 || v21 == 0)
  {
    goto LABEL_13;
  }

  stroked_path = create_stroked_path(*(c + 21), *(c + 12), 1, v14, v15, v16, v17, v18);
  v29.x = x;
  v29.y = y;
  LOBYTE(v22) = CGPathContainsPoint(stroked_path, v25, v29, 0);
  if (stroked_path)
  {
    CFRelease(stroked_path);
  }

  return v22;
}

uint64_t create_stroked_path(char *DashedPath, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[16];
  v10 = *(v9 + 32);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(v10 + 16);
  if (!a3 || v11 != 2)
  {
    goto LABEL_7;
  }

  if (*(v10 + 24) != 0.0)
  {
    if (*(v10 + 32) == 0.0)
    {
LABEL_6:
      v12 = 0;
      goto LABEL_9;
    }

LABEL_7:
    DashedPath = CGPathCreateDashedPath(DashedPath, (a2 + 3), (v10 + 24), v11, a5, a6, a7, a8, *(v10 + 8));
    v12 = DashedPath;
    v9 = a2[16];
    goto LABEL_9;
  }

  v12 = 0;
  DashedPath = 0;
LABEL_9:
  StrokedPath = CGPathCreateStrokedPath(DashedPath, (a2 + 3), *(v9 + 2), (*(v9 + 2) >> 8), a5, a6, a7, a8, *(v9 + 8), *(v9 + 16), *(a2[18] + 8));
  if (v12)
  {
    CFRelease(v12);
  }

  return StrokedPath;
}

void CGContextReplacePathWithStrokedPath(CGContextRef c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v8 = *(c + 21);
      if (v8 && !CGPathIsEmpty(v8))
      {
        stroked_path = create_stroked_path(*(c + 21), *(c + 12), 0, v9, v10, v11, v12, v13);
        v15 = *(c + 21);
        if (v15)
        {
          CFRelease(v15);
        }

        *(c + 21) = stroked_path;
      }

      return;
    }

    v16 = c;
  }

  else
  {
    v16 = 0;
  }

  handle_invalid_context("CGContextReplacePathWithStrokedPath", v16, v1, v2, v3, v4, v5, v6);
}

void CGContextReplacePathWithClipPath(CGContext *c, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v9 = *(c + 21);
      if (v9)
      {
        CFRelease(v9);
        *(c + 21) = 0;
      }

      ClipBoundingBox = CGContextGetClipBoundingBox(c);

      CGContextAddRect(c, ClipBoundingBox);
      return;
    }

    v10 = c;
  }

  else
  {
    v10 = 0;
  }

  handle_invalid_context("CGContextReplacePathWithClipPath", v10, a3, a4, a5, a6, a7, a8);
}

void CGContextReplacePathWithShapePath(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v10 = *(a1 + 168);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 168) = 0;
      }

      if (a2)
      {
        v11 = a2[2];
        if (v11 != &the_empty_shape && *(v11 + 4 * *(v11 + 4)) != 0x7FFFFFFF)
        {
          Mutable = CGPathCreateMutable();
          *(a1 + 168) = Mutable;
          v19 = (*(a1 + 96) + 24);

          CGPathAddRegion(Mutable, v19, a2, v14, v15, v16, v17, v18);
        }
      }

      return;
    }

    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

  handle_invalid_context("CGContextReplacePathWithShapePath", v12, a3, a4, a5, a6, a7, a8);
}

int32x2_t *CPPDFContextCreate()
{
  v0 = malloc_type_malloc(0x930uLL, 0x10B0040402FB33CuLL);
  v1 = v0;
  if (v0)
  {
    v0[282] = 0;
    v0[257].i32[0] = 0;
    v0[284].i32[0] = 0;
    v2 = *MEMORY[0x1E695E480];
    v3 = MEMORY[0x1E695E9E8];
    v0[280] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    v1[281] = CFDictionaryCreateMutable(v2, 0, 0, v3);
    v4 = malloc_type_malloc(0x188uLL, 0x10A00400C8B88DDuLL);
    *v4 = 0;
    *(v4 + 4) = 0;
    *(v4 + 9) = 0xFFFFFFFF00000000;
    *(v4 + 20) = 0;
    *(v4 + 8) = CGPathCreateMutable();
    *(v4 + 16) = CGAffineTransformIdentity;
    *(v4 + 16) = 0u;
    *(v4 + 17) = 0u;
    *(v4 + 18) = xmmword_18439CD20;
    *(v4 + 152) = 0;
    *(v4 + 316) = 0;
    *(v4 + 324) = 0;
    *(v4 + 308) = 0;
    *(v4 + 83) = 0;
    __asm { FMOV            V4.2D, #1.0 }

    *(v4 + 21) = _Q4;
    *(v4 + 44) = 0;
    *(v4 + 45) = 0;
    *(v4 + 88) = CGAffineTransformIdentity;
    *(v4 + 23) = 0;
    *(v4 + 24) = 0;
    *(v4 + 25) = 0x4059000000000000;
    *(v4 + 31) = 0;
    *(v4 + 13) = 0u;
    *(v4 + 14) = 0u;
    v4[240] = 0;
    *(v4 + 47) = 0;
    *(v4 + 48) = 0;
    *(v4 + 46) = 0;
    v1[5] = v4;
    v1[6] = 0;
    v1[268] = 0xC8000000C8;
    v1[267].i32[0] = 43200;
    v10 = malloc_type_malloc(0xA8C0uLL, 0x3CEC081uLL);
    v1[264] = v10;
    v11 = v1[267].u32[0];
    v1[267].i32[1] = v11;
    v1[265] = v10;
    v1[266] = &v10[v11];
    v1[269].i32[0] = 0;
    v1[276] = 0;
    v1[262] = vdup_n_s32(0x7D0u);
    v1[261].i32[0] = 384000;
    v12 = malloc_type_malloc(0x5DC00uLL, 0x3CEC081uLL);
    v1[258] = v12;
    v13 = v1[261].u32[0];
    v1[261].i32[1] = v13;
    v1[259] = v12;
    v1[260] = &v12[v13];
    v1[263].i32[0] = 0;
    v1[274] = 0xC8000000C8;
    v1[273].i32[0] = 36800;
    v14 = malloc_type_malloc(0x8FC0uLL, 0x3CEC081uLL);
    v1[270] = v14;
    v15 = v1[273].u32[0];
    v1[273].i32[1] = v15;
    v1[271] = v14;
    v1[272] = &v14[v15];
    v1[275].i32[0] = 0;
    v1[279] = CFDictionaryCreateMutable(v2, 0, 0, v3);
    v16 = malloc_type_calloc(0x3E9uLL, 0x34uLL, 0x10000403884A0CCuLL);
    v1[278] = v16;
    v1[277].i32[0] = 1001;
    v1[276] = 0x100000004;
    if (v16)
    {
      v1[4].i32[0] = 2400;
      v17 = malloc_type_malloc(0x2580uLL, 0x100004052888210uLL);
      v1[283] = v17;
      if (v17)
      {
        v1[284] = 0;
        v1[285] = 0;
        v1[287] = CPMultiUnicodesCreate();
        v1[293] = 0;
        return v1;
      }

      free(*&v1[264]);
      free(*&v1[258]);
      free(*&v1[270]);
      v18 = v1[278];
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      free(*&v1[264]);
      free(*&v1[258]);
      v18 = v1[270];
    }

    free(v18);
    return 0;
  }

  return v1;
}

void CPPDFContextRelease(uint64_t a1)
{
  free(*(a1 + 2264));
  v2 = *(a1 + 2256);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 104);
      if (*v2)
      {
        CFRelease(*v2);
      }

      CGColorSpaceRelease(*(v2 + 8));
      v4 = *(v2 + 16);
      if (v4)
      {
        CFRelease(v4);
      }

      CGColorSpaceRelease(*(v2 + 24));
      v5 = *(v2 + 96);
      if (v5)
      {
        CFRelease(v5);
      }

      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *(a1 + 2224);
  if (v6)
  {
    free(v6);
  }

  CFRelease(*(a1 + 2232));
  CFRelease(*(a1 + 2248));
  CFDictionaryApplyFunction(*(a1 + 2240), freeFont, 0);
  CFRelease(*(a1 + 2240));
  v7 = *(a1 + 40);
  if (v7)
  {
    do
    {
      v8 = *v7;
      CPPDFGraphicStateReleaseElements(v7);
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    do
    {
      v10 = *v9;
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = *(a1 + 2112);
  v12 = *(a1 + 2120);
  while (v11 < v12)
  {
    v13 = *(v11 + 96);
    if (v13)
    {
      CFRelease(v13);
      v12 = *(a1 + 2120);
    }

    v11 += 216;
  }

  for (i = *(a1 + 2160); i < *(a1 + 2168); i += 184)
  {
    v15 = *(i + 96);
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(i + 168);
    if (v16)
    {
      CFRelease(v16);
    }
  }

  free(*(a1 + 2064));
  free(*(a1 + 2112));
  free(*(a1 + 2160));
  CPMultiUnicodesRelease(*(a1 + 2296));
  v17 = *(a1 + 2344);
  if (v17)
  {
    CFRelease(v17);
  }

  free(a1);
}

void freeFont(uint64_t a1, void *a2)
{
  [a2 dispose];
}

void CPPDFContextSaveGState(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 48) = *v2;
  }

  else
  {
    v2 = malloc_type_malloc(0x188uLL, 0x10A00400C8B88DDuLL);
  }

  memcpy(v2, v3, 0x188uLL);
  MutableCopy = CGPathCreateMutableCopy(v3[8]);
  v2[8] = MutableCopy;
  if (MutableCopy)
  {
    CFRetain(MutableCopy);
  }

  v5 = v2[32];
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = v2[33];
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = v2[34];
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = v2[35];
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = v2[31];
  v10 = v2[8];
  if (v10)
  {
    CFRelease(v10);
  }

  *(v2 + 18) = 0;
  *v2 = *(a1 + 40);
  *(a1 + 40) = v2;
}

void CPPDFContextRestoreGState(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      if (*(v2 + 72))
      {
        v4 = *(a1 + 2212);
        v5 = *(a1 + 2216);
        if (v5 > v4)
        {
          v6 = *(a1 + 2224);
          if (v6)
          {
            v7 = (v6 + 52 * v4);
            v8 = *v7;
            if (!v7[2])
            {
LABEL_11:
              if (v8)
              {
                while (v5 > v8)
                {
                  v9 = (v6 + 52 * v8);
                  if (v9[1])
                  {
                    v8 = *v9;
                    if (*v9)
                    {
                      continue;
                    }
                  }

                  v9[1] = v4;
                  break;
                }
              }

              if (v7)
              {
                v7[1] = 0;
                v7[2] = 0;
                *v7 = v8;
              }

              goto LABEL_18;
            }

            v4 = *(a1 + 2208);
            if (v4 + 3 < v5)
            {
              *(a1 + 2212) = v4;
              v7 = (v6 + 52 * v4);
              if (v5 <= v4)
              {
                v7 = 0;
              }

              *(a1 + 2208) = v4 + 3;
              goto LABEL_11;
            }
          }
        }
      }

LABEL_18:
      *v2 = *(a1 + 48);
      *(a1 + 40) = v3;
      *(a1 + 48) = v2;
      CPPDFGraphicStateReleaseElements(v2);
    }
  }
}

float64x2_t CPPDFContextConcatCTM(float64x2_t *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  result = vmlaq_n_f64(vmulq_n_f64(v3, a2[3]), v2, a2[2]);
  v5 = vaddq_f64(a1[3], vmlaq_n_f64(vmulq_n_f64(v3, a2[5]), v2, a2[4]));
  a1[1] = vmlaq_n_f64(vmulq_n_f64(v3, a2[1]), v2, *a2);
  a1[2] = result;
  a1[3] = v5;
  return result;
}

uint64_t CPPDFContextAddPathToClip(uint64_t result, int a2)
{
  v2 = *(result + 40);
  if ((v2[19] & 0x80000000) == 0)
  {
    v3 = result;
    v4 = v2[18];
    v2[18] = v4 + 1;
    if (v4)
    {
      if (a2)
      {
        result = CPPDFClipBufferPush(v2[20], result + 2208);
        if (result)
        {
          v5 = *(v3 + 2212);
          v6 = *(v3 + 2216);
          if (v6 > v5)
          {
            v7 = *(v3 + 2224);
            if (v7)
            {
              v8 = *(v7 + 52 * v5);
              if (v8 && v6 > v8)
              {
                *(v7 + 52 * v8 + 4) = v5;
              }
            }
          }
        }
      }
    }

    else
    {
      result = CPPDFClipBufferPush(v2[20], result + 2208);
    }

    v10 = *(v3 + 2216);
    if (*(v3 + 2208) < v10)
    {
      v11 = *(v3 + 2212);
      if (v10 > v11)
      {
        v12 = *(v3 + 2224);
        if (v12)
        {
          v13 = v12 + 52 * v11;
          v14 = *(v13 + 8);
          *(v13 + 4 * v14 + 12) = v2[19];
          *(v13 + 8) = v14 + 1;
          ++*(v3 + 2208);
        }
      }
    }

    v15 = *(v3 + 2212);
    v2[19] = -1;
    v2[20] = v15;
  }

  return result;
}

uint64_t CPPDFContextAddStroke(uint64_t a1)
{
  result = CPPDFContextAddShape(a1, 1, 2);
  if (result)
  {

    return CPPDFContextAddPathToClip(a1, 1);
  }

  return result;
}

uint64_t CPPDFContextAddShape(uint64_t a1, char a2, int a3)
{
  if (!*(a1 + 2264))
  {
    return 0;
  }

  v6 = a1 + 40;
  PathBoundingBox = CGPathGetPathBoundingBox(*(*(a1 + 40) + 64));
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  if (a3 == 2 && CGPathGetNumberOfPoints(*(*v6 + 64), *&PathBoundingBox.origin.x) == 2 && (width == 0.0 || height == 0.0))
  {
    v11 = *(a1 + 16);
    v12 = 0.03;
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = 0.05;
  }

  v13 = width <= v11 * v12 && height <= *(a1 + 24) * v12;
  v17 = (*&x & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&height & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  if (v17 || (v18 = *a1, v19 = *(a1 + 8), v20 = *(a1 + 24), v36.origin.x = x, v36.origin.y = y, v36.size.width = width, v36.size.height = height, v13 | !CGRectIntersectsRect(*(&v11 - 2), v36)))
  {
    v21 = *(*v6 + 64);
    if (v21)
    {
      CFRelease(v21);
    }

    Mutable = CGPathCreateMutable();
    result = 0;
    *(*v6 + 64) = Mutable;
  }

  else
  {
    result = primitiveBufferMemoryCheck(a1, a1 + 2112);
    if (result)
    {
      ++*(a1 + 2152);
      v23 = *(a1 + 2120);
      *v23 = x;
      *(v23 + 8) = y;
      *(v23 + 16) = width;
      *(v23 + 24) = height;
      *(v23 + 68) = *(a1 + 2272);
      v24 = *(a1 + 40);
      *(v23 + 64) = *(v24 + 80);
      *(v23 + 96) = *(v24 + 64);
      if (a3 == 4)
      {
        Style = 0;
      }

      else
      {
        Style = CPPDFStyleListGetStyle(a1);
        v24 = *(a1 + 40);
      }

      *(v23 + 80) = Style;
      *(v23 + 104) = a2;
      v26 = *(v24 + 16);
      v27 = *(v24 + 48);
      *(v23 + 128) = *(v24 + 32);
      *(v23 + 144) = v27;
      *(v23 + 112) = v26;
      while (1)
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        if (*(v6 + 8) == 1)
        {
          v28 = *(v6 + 16);
          v29 = *(v6 + 48);
          *(v23 + 176) = *(v6 + 32);
          *(v23 + 192) = v29;
          *(v23 + 160) = v28;
          goto LABEL_36;
        }
      }

      *(v23 + 160) = CGAffineTransformIdentity;
LABEL_36:
      *(v23 + 88) = a3;
      v30 = *(a1 + 2344);
      if (v30 && (v31 = *(v30 + 16)) != 0)
      {
        CurrentMCID = TaggedParser::GetCurrentMCID(v31, *(a1 + 2288));
      }

      else
      {
        CurrentMCID = -1;
      }

      *(v23 + 208) = CurrentMCID;
      *(a1 + 2120) = v23 + 216;
      v33 = CGPathCreateMutable();
      v34 = *(a1 + 40);
      *(*(a1 + 2264) + 4 * *(a1 + 2272)) = 0;
      *(v34 + 64) = v33;
      *(a1 + 2272) = vadd_s32(*(a1 + 2272), 0x100000001);
      return 1;
    }
  }

  return result;
}

uint64_t primitiveBufferMemoryCheck(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) < *(a2 + 16))
  {
    return 1;
  }

  v5 = *(a1 + 32) + *(a2 + 32);
  *(a1 + 32) = v5;
  result = malloc_type_realloc(*(a1 + 2264), 4 * v5, 0x100004052888210uLL);
  *(a1 + 2264) = result;
  if (result)
  {
    v6 = *(a2 + 32);
    v7 = v6 + *(a2 + 36);
    v8 = *(a2 + 24);
    v9 = (v8 + *(a2 + 28));
    *(a2 + 24) = v9;
    *(a2 + 28) = v8;
    *(a2 + 32) = v7;
    *(a2 + 36) = v6;
    v10 = *(a2 + 16);
    v11 = *a2;
    result = malloc_type_realloc(*a2, v9, 0x2BB0D24EuLL);
    *a2 = result;
    if (result)
    {
      *(a2 + 8) = result + (v10 - v11);
      *(a2 + 16) = result + v9;
      return 1;
    }
  }

  return result;
}

uint64_t CPPDFContextAddFill(uint64_t a1, char a2)
{
  result = CPPDFContextAddShape(a1, a2, 1);
  if (result)
  {

    return CPPDFContextAddPathToClip(a1, 1);
  }

  return result;
}

uint64_t CPPDFContextAddStrokeAndFill(uint64_t a1, char a2)
{
  result = CPPDFContextAddShape(a1, a2, 3);
  if (result)
  {

    return CPPDFContextAddPathToClip(a1, 1);
  }

  return result;
}

uint64_t CPPDFContextAddClip(uint64_t a1, char a2)
{
  v3 = *(a1 + 2152);
  result = CPPDFContextAddShape(a1, a2, 4);
  if (result)
  {
    result = CPPDFContextAddPathToClip(a1, 1);
    *(*(a1 + 40) + 76) = v3;
  }

  return result;
}

void CPPDFContextAddImage(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 40);
  v5 = v4[2];
  *&v39.a = v4[1];
  *&v39.c = v5;
  *&v39.tx = v4[3];
  v6 = 0;
  *&v5 = 0;
  v7 = 1.0;
  v8 = 1.0;
  v40 = CGRectApplyAffineTransform(*(&v5 - 8), &v39);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  v14 = *(a1 + 16);
  v40.origin.y = NAN;
  v15.f64[1] = NAN;
  v16 = vnegq_f64(v15);
  v17 = vdupq_n_s64(0x7FF0000000000000uLL);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(vandq_s8(*a1, v16), v17), vcgeq_s64(vandq_s8(v14, v16), v17)))) & 1) == 0)
  {
    v18 = *(a1 + 8);
    v19 = *(a1 + 24);
    v41.origin.x = v40.origin.x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v13 = *a1;
    if (CGRectIntersectsRect(*(&v14 - 1), v41))
    {
      if (primitiveBufferMemoryCheck(a1, a1 + 2160))
      {
        ++*(a1 + 2200);
        v20 = *(a1 + 2168);
        v21 = *a2;
        v22 = a2[1];
        v23 = a2[3];
        *(v20 + 32) = a2[2];
        *(v20 + 48) = v23;
        *(v20 + 16) = v22;
        v24 = a2[4];
        v25 = a2[5];
        v26 = a2[7];
        *(v20 + 96) = a2[6];
        *(v20 + 112) = v26;
        *(v20 + 64) = v24;
        *(v20 + 80) = v25;
        v27 = a2[8];
        v28 = a2[9];
        v29 = a2[10];
        *(v20 + 176) = *(a2 + 22);
        *(v20 + 144) = v28;
        *(v20 + 160) = v29;
        *(v20 + 128) = v27;
        *v20 = v21;
        v30 = *(v20 + 96);
        if (v30)
        {
          CFRetain(v30);
        }

        v31 = *(v20 + 168);
        if (v31)
        {
          CFRetain(v31);
        }

        v32 = *(a1 + 40);
        v33 = v32[1];
        v34 = v32[2];
        *(v20 + 136) = v32[3];
        *(v20 + 120) = v34;
        *(v20 + 104) = v33;
        v35 = *(a1 + 40);
        *(v20 + 160) = *(v35 + 336);
        *(v20 + 68) = *(a1 + 2272);
        *(v20 + 64) = *(v35 + 80);
        *v20 = x;
        *(v20 + 8) = y;
        *(v20 + 16) = width;
        *(v20 + 24) = height;
        v36 = *(a1 + 2344);
        if (v36 && (v37 = *(v36 + 16)) != 0)
        {
          CurrentMCID = TaggedParser::GetCurrentMCID(v37, *(a1 + 2288));
        }

        else
        {
          CurrentMCID = -1;
        }

        *(v20 + 176) = CurrentMCID;
        *(a1 + 2168) = v20 + 184;
      }

      *(*(a1 + 2264) + 4 * (*(a1 + 2272))++) = 1;
    }
  }
}

CGPath *CPPDFGetClipPathIntersection(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  *a3 = 1;
  v6 = a2;
  Value = CFDictionaryGetValue(*(a1 + 2232), a2);
  Mutable = Value;
  if (!a2 || Value)
  {
    return Mutable;
  }

  v9 = (*(a1 + 2224) + 52 * v6);
  v10 = v9[2];
  v11 = *v9;
  if (v11)
  {
    v12 = v11 == a2;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v12)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = malloc_type_calloc(v14, 8uLL, 0x6004044C4A2DFuLL);
  v16 = v15;
  v17 = v9[2];
  if (v17)
  {
    v18 = 0;
    v19 = *(a1 + 2112);
    v20 = *(a1 + 2152);
    do
    {
      v21 = v9[v18 + 3];
      if (v21 >= v20)
      {
        free(v15);
        return 0;
      }

      v15[v18++] = *(v19 + 216 * v21 + 96);
    }

    while (v17 != v18);
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = 0;
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  v15[v17] = CPPDFGetClipPathIntersection(a1, v11, a3);
LABEL_19:
  if (v14 == 1)
  {
    Mutable = *v16;
    if (*v16)
    {
      CFRetain(*v16);
    }
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathAddIntersection(Mutable, v16, v14);
  }

  free(v16);
  CFDictionaryAddValue(*(a1 + 2232), v6, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Mutable;
}

CGMutablePathRef CPPDFLazyContextAddShape(CGMutablePathRef result)
{
  v1 = result;
  if (*(result + 289) >= *(result + 288))
  {
LABEL_21:
    *(v1 + 2336) = 1;
    return result;
  }

  PathBoundingBox = CGPathGetPathBoundingBox(*(*(result + 5) + 64));
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  v8 = (*&PathBoundingBox.origin.x & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&PathBoundingBox.origin.y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&PathBoundingBox.size.width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&PathBoundingBox.size.height & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  if (v8 || !CGRectIntersectsRect(*v1, *&x))
  {
    v12 = *(*(v1 + 5) + 64);
    if (v12)
    {
      CFRelease(v12);
    }

    result = CGPathCreateMutable();
    *(*(v1 + 5) + 64) = result;
  }

  else
  {
    v9 = *(v1 + 289);
    v10 = *(*(v1 + 5) + 64);
    if (*(v1 + 569) == *(*(v1 + 290) + 4 * v9))
    {
      v11 = *(v1 + 291);
      *(v1 + 289) = v9 + 1;
      *(v11 + 8 * v9) = v10;
    }

    else if (v10)
    {
      CFRelease(v10);
    }

    result = CGPathCreateMutable();
    *(*(v1 + 5) + 64) = result;
    ++*(v1 + 569);
    if (*(v1 + 289) == *(v1 + 288))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t __CGImageEPSRepGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kCGImageEPSRepRuntimeID = result;
  return result;
}

uint64_t cg_image_eps_rep_equal(CFTypeRef *cf, CFTypeRef *a2)
{
  if (cf == a2)
  {
    return 1;
  }

  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    if (CGImageEPSRepGetTypeID_predicate != -1)
    {
      dispatch_once(&CGImageEPSRepGetTypeID_predicate, &__block_literal_global_14904);
    }

    if (v5 != kCGImageEPSRepRuntimeID)
    {
      return 0;
    }

    v6 = CFGetTypeID(a2);
    if (CGImageEPSRepGetTypeID_predicate != -1)
    {
      dispatch_once(&CGImageEPSRepGetTypeID_predicate, &__block_literal_global_14904);
    }

    if (v6 == kCGImageEPSRepRuntimeID)
    {
      result = CFEqual(cf[3], a2[3]);
      if (result)
      {
        return CFEqual(cf[2], a2[2]) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void cg_image_eps_rep_finalize(uint64_t a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (CGImageEPSRepGetTypeID_predicate != -1)
    {
      dispatch_once(&CGImageEPSRepGetTypeID_predicate, &__block_literal_global_14904);
    }

    if (v2 == kCGImageEPSRepRuntimeID)
    {
      CGDataProviderRelease(*(a1 + 16));
      v3 = *(a1 + 24);
      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

_OWORD *CGImageEPSRepCreate(CGDataProvider *a1, const void *a2)
{
  v11 = CGAccessSessionCreate(a1);
  v12 = 0;
  *&v82 = 0xFFFFFFFFLL;
  *(&v82 + 1) = v11;
  while (v12 != 4)
  {
    v13 = byte_1844E23E0[v12++];
    if (read_byte(&v82, v4, v5, v6, v7, v8, v9, v10) != v13)
    {
      CGAccessSessionRewind(v11);
      goto LABEL_12;
    }
  }

  byte = read_byte(&v82, v4, v5, v6, v7, v8, v9, v10);
  v29 = byte | (read_byte(&v82, v22, v23, v24, v25, v26, v27, v28) << 8);
  v37 = v29 | (read_byte(&v82, v30, v31, v32, v33, v34, v35, v36) << 16);
  v45 = v37 | (read_byte(&v82, v38, v39, v40, v41, v42, v43, v44) << 24);
  if (v45 >= 9)
  {
    v46 = v45 - 9;
      ;
    }
  }

LABEL_12:
  v48 = 0;
  while (v48 != 2)
  {
    v49 = asc_1845936A7[v48++];
    if (read_byte(&v82, v14, v15, v16, v17, v18, v19, v20) != v49)
    {
      goto LABEL_54;
    }
  }

  do
  {
    do
    {
      v50 = read_byte(&v82, v14, v15, v16, v17, v18, v19, v20);
    }

    while (v50 == 9);
  }

  while (v50 == 32);
  if (v50 != -1)
  {
    LODWORD(v82) = v50;
  }

  v51 = 0;
  while (v51 != 9)
  {
    v52 = aPsAdobe_0[v51++];
    if (read_byte(&v82, v14, v15, v16, v17, v18, v19, v20) != v52)
    {
      goto LABEL_54;
    }
  }

  if (read_byte(&v82, v14, v15, v16, v17, v18, v19, v20) - 52 < 0xFFFFFFFD)
  {
    goto LABEL_54;
  }

  v53 = 0;
  while (1)
  {
    v54 = read_byte(&v82, v14, v15, v16, v17, v18, v19, v20);
    if (v53)
    {
      break;
    }

    v53 = 1;
    if (v54 != 46)
    {
      goto LABEL_54;
    }
  }

  if ((v54 - 50) < 0xFFFFFFFE)
  {
    goto LABEL_54;
  }

  do
  {
    do
    {
      v55 = read_byte(&v82, v14, v15, v16, v17, v18, v19, v20);
    }

    while (v55 == 9);
  }

  while (v55 == 32);
  if (v55 != -1)
  {
    LODWORD(v82) = v55;
  }

  v56 = 0;
  while (v56 != 5)
  {
    v57 = aEpsf[v56++];
    if (read_byte(&v82, v14, v15, v16, v17, v18, v19, v20) != v57)
    {
      goto LABEL_54;
    }
  }

  if (read_byte(&v82, v14, v15, v16, v17, v18, v19, v20) - 52 < 0xFFFFFFFD)
  {
    goto LABEL_54;
  }

  v58 = 0;
  while (1)
  {
    v59 = read_byte(&v82, v14, v15, v16, v17, v18, v19, v20);
    if (v58)
    {
      break;
    }

    v58 = 1;
    if (v59 != 46)
    {
      goto LABEL_54;
    }
  }

  if ((v59 - 48) >= 3)
  {
LABEL_54:
    v76 = "Failed to read EPSF header.";
    goto LABEL_55;
  }

  v82 = 0u;
  v83 = 0u;
  v84[0] = 0xFFFFFFFFLL;
  v84[1] = v11;
  if (!match_anchored_string(v84, v14, v15, v16, v17, v18, v19, v20))
  {
LABEL_53:
    v76 = "Failed to read EPS bounding box.";
LABEL_55:
    CGPostError(v76, v14, v15, v16, v17, v18, v19, v20, v82);
    CGAccessSessionRelease(v11);
    return 0;
  }

  do
  {
    do
    {
      v60 = read_byte(v84, v14, v15, v16, v17, v18, v19, v20);
    }

    while (v60 == 9);
  }

  while (v60 == 32);
  if (v60 != -1)
  {
    LODWORD(v84[0]) = v60;
  }

  v61 = 0;
  while (v61 != 7)
  {
    v62 = aAtend[v61++];
    if (read_byte(v84, v14, v15, v16, v17, v18, v19, v20) != v62)
    {
      CGAccessSessionRewind(v11);
      match_anchored_string(v84, v63, v64, v65, v66, v67, v68, v69);
      if (!get_bbox(v84, &v82, v70, v71, v72, v73, v74, v75))
      {
        goto LABEL_53;
      }

      goto LABEL_61;
    }
  }

  v79 = 0;
  while (match_anchored_string(v84, v14, v15, v16, v17, v18, v19, v20))
  {
    v79 |= get_bbox(v84, &v82, v15, v16, v17, v18, v19, v20);
  }

  if ((v79 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_61:
  CGAccessSessionRelease(v11);
  if (CGImageEPSRepGetTypeID_predicate != -1)
  {
    dispatch_once(&CGImageEPSRepGetTypeID_predicate, &__block_literal_global_14904);
  }

  Instance = _CFRuntimeCreateInstance();
  v77 = Instance;
  if (Instance)
  {
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    CGDataProviderRetain(a1);
    *(v77 + 2) = a1;
    if (a2)
    {
      CFRetain(a2);
    }

    *(v77 + 3) = a2;
    v81 = v83;
    v77[2] = v82;
    v77[3] = v81;
  }

  return v77;
}

uint64_t read_byte(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (*a1 == -1)
  {
    v10 = 0;
    if (!CGAccessSessionGetBytes(*(a1 + 1), &v10, 1, a4, a5, a6, a7, a8))
    {
      return 0xFFFFFFFFLL;
    }

    LOBYTE(v8) = v10;
  }

  else
  {
    *a1 = -1;
  }

  return v8;
}

uint64_t match_anchored_string(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
LABEL_1:
  while (1)
  {
    byte = read_byte(a1, a2, a3, a4, a5, a6, a7, a8);
    if (byte == 10 || byte == 13)
    {
      break;
    }

    if (byte == -1)
    {
      return 0;
    }
  }

  do
  {
    do
    {
      v10 = read_byte(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    while (v10 == 10);
  }

  while (v10 == 13);
  if (v10 == -1)
  {
    return 0;
  }

  v11 = 0;
  *a1 = v10;
  while (v11 != 14)
  {
    v12 = aBoundingbox_0[v11++];
    if (read_byte(a1, a2, a3, a4, a5, a6, a7, a8) != v12)
    {
      goto LABEL_1;
    }
  }

  return 1;
}

BOOL get_bbox(int *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = 0.0;
  result = read_number(a1, &v35, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v34 = 0.0;
    result = read_number(a1, &v34, v11, v12, v13, v14, v15, v16);
    if (result)
    {
      v33 = 0.0;
      result = read_number(a1, &v33, v17, v18, v19, v20, v21, v22);
      if (result)
      {
        v32 = 0.0;
        result = read_number(a1, &v32, v23, v24, v25, v26, v27, v28);
        if (result)
        {
          v29 = v34;
          v30 = v33 - v35;
          v31 = v32 - v34;
          *a2 = v35;
          a2[1] = v29;
          a2[2] = v30;
          a2[3] = v31;
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL read_number(int *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  do
  {
    do
    {
      byte = read_byte(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    while (byte == 9);
  }

  while (byte == 32);
  if (byte != -1)
  {
    *a1 = byte;
  }

  v11 = read_byte(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v11 == 45 || v11 == 43)
  {
    v24[0] = v11;
    v11 = read_byte(a1, v12, v13, v14, v15, v16, v17, v18);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  if ((v11 - 58) < 0xFFFFFFF6)
  {
    return 0;
  }

  v24[v19] = v11;
  for (i = v19 + 1; ; ++i)
  {
    v22 = read_byte(a1, v12, v13, v14, v15, v16, v17, v18);
    if (v22 == -1 || (i - 1) > 0x3D)
    {
      break;
    }

    if (v22 <= 0x2E)
    {
      if (v22 == 46)
      {
        goto LABEL_19;
      }

      if (((1 << v22) & 0x100002600) != 0)
      {
        break;
      }
    }

    if (v22 - 58 < 0xFFFFFFF6)
    {
      return 0;
    }

LABEL_19:
    v24[i] = v22;
  }

  v23 = 0;
  v24[i] = 0;
  *a2 = strtod_l(v24, &v23, 0);
  return v23 != v24;
}

CFTypeRef CGImageEPSRepRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGImageEPSRepRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGImageEPSRepGetSource(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGImageEPSRepGetAlternateImage(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

CGFloat CGImageEPSRepGetBBox(const CGRect *a1)
{
  v1 = &CGRectNull;
  if (a1)
  {
    v1 = a1 + 1;
  }

  return v1->origin.x;
}

_BYTE *PDFWriteNumber(_BYTE *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v10 = fabs(a2);
  if (v10 == INFINITY)
  {
    LOBYTE(v13) = -1;
    if (a2 <= 0.0)
    {
      LOBYTE(v13) = 0;
    }

    return CGDataConsumerPrintf(a1, "%d", a4, a5, a6, a7, a8, a9, v13);
  }

  if (a2 >= -2147483650.0 && a2 <= 2147483650.0)
  {
    v11 = ceil(a2 + -0.5);
    v12 = floor(a2 + 0.5);
    if (a2 >= 0.0)
    {
      v11 = v12;
    }

    v13 = v11;
    if (vabdd_f64(a2, v11) < 0.000001)
    {
      return CGDataConsumerPrintf(a1, "%d", a4, a5, a6, a7, a8, a9, v13);
    }
  }

  if (v10 >= 1.0)
  {
    if (v10 <= 10000000.0)
    {
      return CGDataConsumerPrintf(a1, "%0.7g", a4, a5, a6, a7, a8, a9, SLOBYTE(a2));
    }

    else
    {
      return CGDataConsumerPrintf(a1, "%0.0f", a4, a5, a6, a7, a8, a9, SLOBYTE(a2));
    }
  }

  else if (v10 >= 0.000001)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v10 * v16 >= 1.0)
      {
        break;
      }

      v16 *= 10;
      ++v15;
    }

    while (v15 != 6);
    for (i = 0; i != 6; ++i)
    {
      if (vabdd_f64(v10 * v16, round(v10 * v16)) < 0.00001)
      {
        break;
      }

      v16 *= 10;
    }

    return CGDataConsumerPrintf(a1, "%0.*f", a4, a5, a6, a7, a8, a9, i + v15);
  }

  else
  {

    return CGDataConsumerPrintf(a1, "0", a4, a5, a6, a7, a8, a9, a10);
  }
}

_BYTE *PDFWriteCFData(_BYTE *a1, CFDataRef theData, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a3;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v14 = Length;
    if (BytePtr)
    {
      v15 = Length == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (v9)
    {
      if (v16)
      {
        v17 = "<>";
        goto LABEL_16;
      }

      v25 = CGDataConsumerPrintf(a1, "<", a3, a4, a5, a6, a7, a8, v33);
      do
      {
        v26 = *BytePtr++;
        v25 = &v25[CGDataConsumerPrintf(a1, "%02x", v19, v20, v21, v22, v23, v24, v26)];
        --v14;
      }

      while (v14);
      v27 = ">";
    }

    else
    {
      if (v16)
      {
        v17 = "()";
        goto LABEL_16;
      }

      v25 = CGDataConsumerPrintf(a1, "(", a3, a4, a5, a6, a7, a8, v33);
      v28 = MEMORY[0x1E69E9830];
      do
      {
        v30 = *BytePtr++;
        v29 = v30;
        if (v30 > 0x7E || (*(v28 + 4 * v29 + 60) & 0x40000) != 0)
        {
          if ((v29 - 40) <= 0x34 && ((1 << (v29 - 40)) & 0x10000000000003) != 0)
          {
            v25 = &v25[CGDataConsumerPrintf(a1, "\", v19, v20, v21, v22, v23, v24, v34)];
          }

          v31 = "%c";
        }

        else
        {
          v31 = "\\%03o";
        }

        v25 = &v25[CGDataConsumerPrintf(a1, v31, v19, v20, v21, v22, v23, v24, v29)];
        --v14;
      }

      while (v14);
      v27 = ")";
    }

    return &v25[CGDataConsumerPrintf(a1, v27, v19, v20, v21, v22, v23, v24, v34)];
  }

  if (a3)
  {
    v17 = "<>";
  }

  else
  {
    v17 = "()";
  }

LABEL_16:

  return CGDataConsumerPrintf(a1, v17, a3, a4, a5, a6, a7, a8, a9);
}

CFCalendarRef PDFCreateDateString(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  result = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  if (result)
  {
    v4 = result;
    v5 = CFTimeZoneCreateWithName(v2, @"GMT", 1u);
    if (v5)
    {
      v6 = v5;
      CFCalendarSetTimeZone(v4, v5);
      CFRelease(v6);
      MEMORY[0x1865ED2A0](a1);
      v10 = 0;
      v11 = 0;
      v9 = 0;
      v8 = 0;
      CFCalendarDecomposeAbsoluteTime(v4, v7, "yMdHms", &v11 + 4, &v11, &v10 + 4, &v10, &v9, &v8);
      CFRelease(v4);
      return CFStringCreateWithFormat(v2, 0, @"D:%04d%02d%02d%02d%02d%02dZ00'00'", HIDWORD(v11), v11, HIDWORD(v10), v10, v9, v8);
    }

    else
    {
      CFRelease(v4);
      return 0;
    }
  }

  return result;
}

char *create_image(uint64_t a1, void *a2, const void *a3, int a4, char a5, const void *a6, int a7)
{
  v14 = malloc_type_calloc(1uLL, 0x70uLL, 0x10600408DDA4898uLL);
  __CFSetLastAllocationEventName();
  if (!v14)
  {
    return v14;
  }

  *v14 = 1;
  *(v14 + 1) = a1;
  if (a2)
  {
    CFRetain(a2);
  }

  *(v14 + 6) = a2;
  if (a3)
  {
    CFRetain(a3);
  }

  *(v14 + 8) = a3;
  v15 = PDFXRefTableAddObject(*(a1 + 504));
  *(v14 + 2) = PDFStreamCreateWithObjectNumber(a1, v15);
  v14[72] = a5;
  *(v14 + 7) = 0;
  *(v14 + 11) = a4;
  if (!a2)
  {
    goto LABEL_26;
  }

  v16 = a2[27];
  if (!v16)
  {
    goto LABEL_26;
  }

  Property = CGPropertiesGetProperty(v16, @"com.apple.ImageIO.imageSourceTypeIdentifier");
  if (!Property || !CFEqual(Property, @"public.jpeg"))
  {
LABEL_16:
    v21 = a2[27];
    if (v21)
    {
      v22 = CGPropertiesGetProperty(v21, @"com.apple.ImageIO.imageSourceTypeIdentifier");
      if (v22)
      {
        if (CFEqual(v22, @"public.jpeg-2000"))
        {
          if (init_with_jpeg2000_data_predicate != -1)
          {
            dispatch_once(&init_with_jpeg2000_data_predicate, &__block_literal_global_17_15030);
          }

          v23 = init_with_jpeg2000_data_f(a2, v14 + 88);
          *(v14 + 10) = v23;
          if (v23)
          {
            v19 = 256;
            goto LABEL_23;
          }

          v24 = *(v14 + 11);
          if (v24)
          {
            CGColorSpaceRelease(v24);
          }
        }
      }
    }

LABEL_26:
    *(v14 + 73) = 0;
    *(v14 + 10) = 0;
    *(v14 + 11) = 0;
    goto LABEL_27;
  }

  if (init_with_jpeg_data_predicate != -1)
  {
    dispatch_once(&init_with_jpeg_data_predicate, &__block_literal_global_15028);
  }

  v18 = init_with_jpeg_data_f(a2, v14 + 88);
  *(v14 + 10) = v18;
  if (!v18)
  {
    v20 = *(v14 + 11);
    if (v20)
    {
      CGColorSpaceRelease(v20);
    }

    goto LABEL_16;
  }

  v19 = 1;
LABEL_23:
  *(v14 + 73) = v19;
LABEL_27:
  snprintf_l(v14 + 24, 0x10uLL, 0, "Im%d", a7);
  if (a6)
  {
    *(v14 + 12) = CFRetain(a6);
  }

  *(v14 + 13) = -1;
  return v14;
}

void *__init_with_jpeg2000_data_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageCopyJPEGDataAndColorSpace");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageCopyJPEGDataAndColorSpace");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageCopyJPEGDataAndColorSpace");
  }

  init_with_jpeg2000_data_f = result;
  return result;
}

void *__init_with_jpeg_data_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageCopyJPEGDataAndColorSpace");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageCopyJPEGDataAndColorSpace");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageCopyJPEGDataAndColorSpace");
  }

  init_with_jpeg_data_f = result;
  return result;
}

void PDFImageRelease(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      PDFStreamRelease(v2);
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
    }

    CGColorSpaceRelease(*(a1 + 88));

    free(a1);
  }
}

void path_iterator_cull_create(uint64_t a1)
{
  v2 = malloc_type_malloc(0x50uLL, 0x10200403FBF40BEuLL);
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v4 < 0.0 || v5 < 0.0)
  {
    v6 = *(a1 + 8);
    v3 = CGRectStandardize(*&v3);
  }

  *v2 = v3;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v8 < 0.0 || v9 < 0.0)
  {
    v10 = *a1;
    *(&v7 - 1) = CGRectStandardize(*(&v7 - 1));
  }

  *(v2 + 1) = v7;
  v11 = *a1;
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  if (v12 < 0.0 || v13 < 0.0)
  {
    v14 = *(a1 + 8);
    *&v11 = CGRectStandardize(*&v11);
  }

  v2[2] = v11 + v12;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  if (v16 < 0.0 || v17 < 0.0)
  {
    v18 = *a1;
    *(&v15 - 1) = CGRectStandardize(*(&v15 - 1));
  }

  v2[3] = v15 + v17;
  *(v2 + 64) = 0;
  v19 = malloc_type_malloc(0x200uLL, 0x1030040004372B3uLL);
  *v19 = 0;
  v19[1] = 0;
  v19[2] = v19 + 64;
  v19[3] = (v19 + 55) & 0xFFFFFFFFFFFFFFF8;
  v19[4] = 0;
  v19[5] = 464;
  *(v2 + 9) = v19;
  operator new();
}

void path_cull_release_info(void **a1)
{
  path_free(a1[9]);

  free(a1);
}

float64x2_t *path_cull_end(float64x2_t *a1, void *a2)
{
  result = finish_subpath(a1, a2);
  if (a2)
  {
    v4 = a2[4];
    if (v4)
    {
      v5 = a2[1];
      v6 = a2[6];

      return v4(v5, v6);
    }
  }

  return result;
}

float64x2_t *finish_subpath(float64x2_t *result, uint64_t a2)
{
  if (LOBYTE(result[4].f64[0]) == 1)
  {
    v8[6] = v2;
    v8[7] = v3;
    v4 = result;
    v5 = vmovn_s64(vcgtq_f64(vbslq_s8(vcgtq_f64(result[2], *result), result[2], *result), vbslq_s8(vcgtq_f64(result[1], result[3]), result[3], result[1])));
    if (((v5.i32[0] | v5.i32[1]) & 1) == 0 && a2 && *&result[4].f64[1])
    {
      v8[0] = *&result[4].f64[1];
      v8[1] = 4;
      v8[2] = 0;
      v8[3] = 0;
      while (1)
      {
        v7 = path_element(v8);
        if (!v7)
        {
          break;
        }

        (*(a2 + 24))(*(a2 + 8), *(v7 + 8), *(v7 + 16), *(a2 + 48));
      }
    }

    result = path_reset(&v4[4].f64[1]);
    LOBYTE(v4[4].f64[0]) = 0;
  }

  return result;
}

float64x2_t *path_cull_iterate(float64x2_t *result, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v23 = path_add(&result[4].f64[1], 2u, a3, a4, a5, a6, a7, a8);
      *v23 = *a3;
      v23[1] = *(a3 + 16);
      v12 = v10;
      v13 = a3;
      v14 = 2;
      goto LABEL_19;
    }

    if (a2 == 3)
    {
      v15 = path_add(&result[4].f64[1], 3u, a3, a4, a5, a6, a7, a8);
      *v15 = *a3;
      v15[1] = *(a3 + 16);
      v15[2] = *(a3 + 32);
      v12 = v10;
      v13 = a3;
      v14 = 3;
      goto LABEL_19;
    }

    if (a2 != 4)
    {
      goto LABEL_23;
    }

    if (LOBYTE(result[4].f64[0]) != 1)
    {
      return result;
    }

    path_add(&result[4].f64[1], 4u, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (a2 != -3)
    {
      if (!a2)
      {
        finish_subpath(result, a4);
        v11 = (v10 + 72);
        a2 = 0;
        goto LABEL_12;
      }

      if (a2 == 1)
      {
        v11 = &result[4].f64[1];
LABEL_12:
        *path_add(v11, a2, a3, a4, a5, a6, a7, a8) = *a3;
        v12 = v10;
        v13 = a3;
        v14 = 1;
LABEL_19:

        return add_subpath_points(v12, v13, v14);
      }

LABEL_23:
      abort();
    }

    finish_subpath(result, a4);
    v22 = path_add((v10 + 72), 0xFFFFFFFD, v16, v17, v18, v19, v20, v21);
    *v22 = *a3;
    v22[1] = *(a3 + 16);
    add_subpath_points(v10, a3, 2);
  }

  return finish_subpath(v10, a4);
}

uint64_t add_subpath_points(uint64_t result, double *a2, uint64_t a3)
{
  v3 = *(result + 64);
  do
  {
    if (v3)
    {
      v4 = *a2;
      if (*a2 < *(result + 32))
      {
        *(result + 32) = v4;
      }

      if (v4 > *(result + 48))
      {
        *(result + 48) = v4;
      }

      v5 = a2[1];
      if (v5 < *(result + 40))
      {
        *(result + 40) = v5;
      }

      if (v5 > *(result + 56))
      {
        *(result + 56) = v5;
      }
    }

    else
    {
      *(result + 64) = 1;
      v6 = *a2;
      *(result + 32) = *a2;
      *(result + 48) = v6;
    }

    a2 += 2;
    v3 = 1;
    --a3;
  }

  while (a3);
  return result;
}

void *path_cull_begin(uint64_t a1, uint64_t a2, void *a3)
{
  result = path_reset((a1 + 72));
  *(a1 + 64) = 0;
  if (a3)
  {
    v7 = a3[2];
    if (v7)
    {
      v8 = a3[1];
      v9 = a3[6];

      return v7(v8, a2, v9);
    }
  }

  return result;
}

unint64_t argb32_sample_RGBAf(uint64_t a1, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v15 = *(a1 + 176);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v74 = *(a1 + 80);
  v75 = *(a1 + 88);
  v86 = *(a1 + 112);
  v85 = *(a1 + 120);
  v73 = *(a1 + 188);
  v18 = (*(a1 + 152) - 4);
  v78 = *(a1 + 144) - 1;
  v83 = *(a1 + 24);
  v84 = *(a1 + 40);
  v82 = *(a1 + 32);
  result = v82 + ((*(a1 + 260) - 1) * v83) + 4 * (4 * *(a1 + 256)) - 16;
  v76 = v17;
  v77 = v16;
  v80 = -v17;
  v81 = result;
  v79 = -v16;
  while (1)
  {
    if (a3 >= v76)
    {
      if (a3 <= v75)
      {
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        HIDWORD(v32) = HIDWORD(a3);
        v23 = a4;
        v24 = v77;
      }

      else
      {
        v26 = *(a1 + 216);
        v27 = *(a1 + 224) + v75;
        v28 = v27 - a3 + (v26 >> 1);
        v23 = a4;
        v24 = v77;
        if (v28 < 1)
        {
          goto LABEL_34;
        }

        if (v28 >= v26)
        {
          LODWORD(v29) = 0x3FFFFFFF;
        }

        else
        {
          v29 = (*(a1 + 232) * v28) >> 32;
        }

        v31 = v73 | v29;
        v32 = v27 - 0x1000000;
        v30 = 448;
      }
    }

    else
    {
      v20 = *(a1 + 216);
      v21 = v76 - *(a1 + 224);
      v22 = a3 - v21 + (v20 >> 1);
      v23 = a4;
      v24 = v77;
      if (v22 < 1)
      {
        goto LABEL_34;
      }

      if (v22 >= v20)
      {
        LODWORD(v25) = 0x3FFFFFFF;
      }

      else
      {
        v25 = (*(a1 + 232) * v22) >> 32;
      }

      v31 = v73 | v25;
      v32 = v21 + 0x1000000;
      v30 = 512;
    }

    if (a2 >= v24)
    {
      if (a2 <= v74)
      {
        v37 = (a2 >> 26) & 0x3C;
        v36 = a2;
      }

      else
      {
        v38 = *(a1 + 192);
        v39 = *(a1 + 200) + v74;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_34;
        }

        if (v40 < v38)
        {
          v31 = ((v31 >> 15) * (((*(a1 + 208) * v40) >> 32) >> 15)) | v73;
        }

        v36 = v39 - 0x1000000;
        v37 = 28;
      }
    }

    else
    {
      v33 = *(a1 + 192);
      v34 = v24 - *(a1 + 200);
      v35 = a2 - v34 + (v33 >> 1);
      if (v35 < 1)
      {
        goto LABEL_34;
      }

      if (v35 < v33)
      {
        v31 = ((v31 >> 15) * (((*(a1 + 208) * v35) >> 32) >> 15)) | v73;
      }

      v36 = v34 + 0x1000000;
      v37 = 32;
    }

    if (v31 >= 0x400000)
    {
      break;
    }

LABEL_34:
    v45 = v23 - 1;
    a2 += v86;
    a3 += v85;
    ++v18;
    *++v78 = 0;
LABEL_35:
    a4 = v45;
    if (!v45)
    {
      return result;
    }
  }

  v41 = v82 + SHIDWORD(v32) * v83 + 16 * (v36 >> 32);
  v42 = *(a1 + 32);
  if (result >= v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = result;
  }

  if (v43 < v42)
  {
    v43 = *(a1 + 32);
  }

  if (v84)
  {
    v44 = *(v43 + 12);
  }

  else
  {
    v44 = 1.0;
  }

  v46 = *v43;
  v47 = *(v43 + 4);
  if (v15)
  {
    v48 = *(v15 + (v37 | v30));
LABEL_56:
    v55 = v48 & 0xF;
    v56 = HIBYTE(v48) & 3;
    if (v55 == 1)
    {
      v69 = v41 + SBYTE1(v48) * v83;
      if (result < v69)
      {
        v69 = result;
      }

      if (v69 >= v42)
      {
        v42 = v69;
      }

      v65 = *v42;
      v66 = *(v42 + 4);
      v67 = 1.0;
      if (v84)
      {
        v67 = *(v42 + 12);
      }

      v68 = &interpolate_rgbaf_21860[4 * v56];
    }

    else
    {
      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v57 = SBYTE1(v48) * v83;
          v58 = 16 * SBYTE2(v48);
          v59 = v41 + v58;
          if (result < v41 + v58)
          {
            v59 = result;
          }

          if (v59 < v42)
          {
            v59 = v42;
          }

          v60 = *(v59 + 4);
          if (v84)
          {
            v61 = *(v59 + 12);
            v62 = v41 + v57 + v58;
            if (result < v62)
            {
              v62 = result;
            }

            if (v62 >= v42)
            {
              v42 = v62;
            }

            v63 = *(v42 + 12);
          }

          else
          {
            v70 = v41 + v57 + v58;
            if (result < v70)
            {
              v70 = result;
            }

            if (v70 >= v42)
            {
              v42 = v70;
            }

            v61 = 1.0;
            v63 = 1.0;
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v56 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
          v46 = (((v46 - (v46 * v11.f32[0])) + (*v59 * v11.f32[0])) - (((v46 - (v46 * v11.f32[0])) + (*v59 * v11.f32[0])) * v12.f32[0])) + (((*v59 - (*v59 * v11.f32[0])) + (*v42 * v11.f32[0])) * v12.f32[0]);
          v71 = vmla_n_f32(vmls_lane_f32(v47, v47, v11, 0), v60, v11.f32[0]);
          v47 = vmla_n_f32(vmls_lane_f32(v71, v71, v12, 0), vmla_n_f32(vmls_lane_f32(v60, v60, v11, 0), *(v42 + 4), v11.f32[0]), v12.f32[0]);
          v44 = (((v44 - (v44 * v11.f32[0])) + (v61 * v11.f32[0])) - (((v44 - (v44 * v11.f32[0])) + (v61 * v11.f32[0])) * v12.f32[0])) + (((v61 - (v61 * v11.f32[0])) + (v63 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_40;
      }

      v64 = v41 + ((HIWORD(v48) << 56) >> 52);
      if (result < v64)
      {
        v64 = result;
      }

      if (v64 >= v42)
      {
        v42 = v64;
      }

      v65 = *v42;
      v66 = *(v42 + 4);
      v67 = 1.0;
      if (v84)
      {
        v67 = *(v42 + 12);
      }

      v68 = &interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3)];
    }

    LODWORD(a11) = v68[3];
    v46 = (v46 - (v46 * *&a11)) + (v65 * *&a11);
    v47 = vmla_n_f32(vmls_lane_f32(v47, v47, *&a11, 0), v66, *&a11);
    v44 = (v44 - (v44 * *&a11)) + (v67 * *&a11);
  }

LABEL_40:
  v49 = 0;
  v50 = v31 >> 22;
  ++v18;
  v72 = v23;
  v51 = v23 - 1;
  a3 += v85;
  v52 = v75 - a3;
  a2 += v86;
  v53 = v74 - a2;
  while (1)
  {
    RGBAF(v18, v46, v47.f32[0], v47.f32[1], v44);
    *(v78 + 1 + v49) = v50;
    result = v81;
    if (v51 == v49)
    {
      return result;
    }

    if (((v52 | v53 | (v80 + a3) | (v79 + a2)) & 0x8000000000000000) != 0)
    {
      v78 += v49 + 1;
      v45 = ~v49 + v72;
      goto LABEL_35;
    }

    v41 = v82 + SHIDWORD(a3) * v83 + 16 * (a2 >> 32);
    v42 = *(a1 + 32);
    if (v81 >= v41)
    {
      v54 = v82 + SHIDWORD(a3) * v83 + 16 * (a2 >> 32);
    }

    else
    {
      v54 = v81;
    }

    if (v54 < v42)
    {
      v54 = *(a1 + 32);
    }

    if (v84)
    {
      v44 = *(v54 + 12);
    }

    else
    {
      v44 = 1.0;
    }

    v46 = *v54;
    v47 = *(v54 + 4);
    if (v15)
    {
      v48 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v78 += v49 + 1;
        v23 = ~v49 + v72;
        v31 = -1;
        goto LABEL_56;
      }
    }

    ++v49;
    ++v18;
    a3 += v85;
    v52 -= v85;
    a2 += v86;
    v53 -= v86;
    LOBYTE(v50) = -1;
  }
}

int *RGBAF(int *result, float a2, float a3, float a4, float a5)
{
  if (a5 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    v5 = ((a5 * 255.0) + 0.5);
    if (a5 > 1.0)
    {
      v5 = 255;
      a5 = 1.0;
    }

    v6 = ((a2 * 255.0) + 0.5);
    if (a2 < 0.0)
    {
      v6 = 0;
    }

    if (a2 > a5)
    {
      v6 = v5;
    }

    v7 = ((a3 * 255.0) + 0.5);
    if (a3 < 0.0)
    {
      v7 = 0;
    }

    if (a3 > a5)
    {
      v7 = v5;
    }

    v8 = ((a4 * 255.0) + 0.5);
    if (a4 < 0.0)
    {
      v8 = 0;
    }

    if (a4 > a5)
    {
      v8 = v5;
    }

    v9 = (v6 << 16) | (v5 << 24) | (v7 << 8) | v8;
  }

  *result = v9;
  return result;
}

int *argb32_sample_RGBAF(int *result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v15 = *(result + 22);
  v71 = *(result + 10);
  v72 = *(result + 11);
  v81 = *(result + 14);
  v80 = *(result + 15);
  v70 = result[47];
  v16 = (*(result + 19) - 4);
  v75 = *(result + 18) - 1;
  v79 = *(result + 5);
  v76 = *(result + 4);
  v77 = result[6];
  v82 = result;
  v78 = v76 + ((result[65] - 1) * v77) + 4 * (4 * result[64]) - 16;
  v73 = *(result + 9);
  v74 = *(result + 8);
  while (1)
  {
    if (a3 >= v73)
    {
      if (a3 <= v72)
      {
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        HIDWORD(v29) = HIDWORD(a3);
        v20 = a4;
        v21 = v74;
      }

      else
      {
        v23 = *(v82 + 27);
        v24 = *(v82 + 28) + v72;
        v25 = v24 - a3 + (v23 >> 1);
        v20 = a4;
        v21 = v74;
        if (v25 < 1)
        {
          goto LABEL_33;
        }

        if (v25 >= v23)
        {
          LODWORD(v26) = 0x3FFFFFFF;
        }

        else
        {
          v26 = (*(v82 + 29) * v25) >> 32;
        }

        v28 = v70 | v26;
        v29 = v24 - 0x1000000;
        v27 = 448;
      }
    }

    else
    {
      v17 = *(v82 + 27);
      v18 = v73 - *(v82 + 28);
      v19 = a3 - v18 + (v17 >> 1);
      v20 = a4;
      v21 = v74;
      if (v19 < 1)
      {
        goto LABEL_33;
      }

      if (v19 >= v17)
      {
        LODWORD(v22) = 0x3FFFFFFF;
      }

      else
      {
        v22 = (*(v82 + 29) * v19) >> 32;
      }

      v28 = v70 | v22;
      v29 = v18 + 0x1000000;
      v27 = 512;
    }

    if (a2 >= v21)
    {
      if (a2 <= v71)
      {
        v34 = (a2 >> 26) & 0x3C;
        v33 = a2;
      }

      else
      {
        v35 = *(v82 + 24);
        v36 = *(v82 + 25) + v71;
        v37 = v36 - a2 + (v35 >> 1);
        if (v37 < 1)
        {
          goto LABEL_33;
        }

        if (v37 < v35)
        {
          v28 = ((v28 >> 15) * (((*(v82 + 26) * v37) >> 32) >> 15)) | v70;
        }

        v33 = v36 - 0x1000000;
        v34 = 28;
      }
    }

    else
    {
      v30 = *(v82 + 24);
      v31 = v21 - *(v82 + 25);
      v32 = a2 - v31 + (v30 >> 1);
      if (v32 < 1)
      {
        goto LABEL_33;
      }

      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(v82 + 26) * v32) >> 32) >> 15)) | v70;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
    }

    if (v28 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v42 = v20 - 1;
    a2 += v81;
    a3 += v80;
    ++v16;
    *++v75 = 0;
LABEL_34:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v38 = v76 + SHIDWORD(v29) * v77 + 16 * (v33 >> 32);
  v39 = *(v82 + 4);
  v40 = v78;
  if (v78 >= v38)
  {
    v40 = v38;
  }

  if (v40 < v39)
  {
    v40 = *(v82 + 4);
  }

  if (v79)
  {
    v41 = COERCE_FLOAT(bswap32(v40[1].u32[1]));
  }

  else
  {
    v41 = 1.0;
  }

  v43 = vrev32_s8(*v40);
  v44 = COERCE_FLOAT(bswap32(v40[1].u32[0]));
  if (v15)
  {
    v45 = *(v15 + (v34 | v27));
LABEL_54:
    v52 = v45 & 0xF;
    v53 = HIBYTE(v45) & 3;
    if (v52 == 1)
    {
      v68 = (v38 + SBYTE1(v45) * v77);
      if (v78 < v68)
      {
        v68 = v78;
      }

      if (v68 >= v39)
      {
        v39 = v68;
      }

      v64 = vrev32_s8(*v39);
      v65 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
      v66 = 1.0;
      if (v79)
      {
        v66 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
      }

      v67 = &interpolate_rgbaf_21860[4 * v53];
    }

    else
    {
      if (v52 != 2)
      {
        if (v52 == 3)
        {
          v54 = (v38 + ((HIWORD(v45) << 56) >> 52));
          if (v78 < v54)
          {
            v54 = v78;
          }

          if (v54 < v39)
          {
            v54 = v39;
          }

          v55 = vrev32_s8(*v54);
          v56 = COERCE_FLOAT(bswap32(v54[1].u32[0]));
          v57 = 1.0;
          v58 = 1.0;
          if (v79)
          {
            v58 = COERCE_FLOAT(bswap32(v54[1].u32[1]));
          }

          v59 = v38 + SBYTE1(v45) * v77 + 16 * SBYTE2(v45);
          if (v78 < v59)
          {
            v59 = v78;
          }

          if (v59 >= v39)
          {
            v39 = v59;
          }

          v60 = vrev32_s8(*v39);
          v61 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
          if (v79)
          {
            v57 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v53 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v45 >> 28) & 3) + 3];
          v44 = (((v44 - (v44 * v11.f32[0])) + (v56 * v11.f32[0])) - (((v44 - (v44 * v11.f32[0])) + (v56 * v11.f32[0])) * v12.f32[0])) + (((v56 - (v56 * v11.f32[0])) + (v61 * v11.f32[0])) * v12.f32[0]);
          v62 = vmla_n_f32(vmls_lane_f32(v43, v43, v11, 0), v55, v11.f32[0]);
          v43 = vmla_n_f32(vmls_lane_f32(v62, v62, v12, 0), vmla_n_f32(vmls_lane_f32(v55, v55, v11, 0), v60, v11.f32[0]), v12.f32[0]);
          v41 = (((v41 - (v41 * v11.f32[0])) + (v58 * v11.f32[0])) - (((v41 - (v41 * v11.f32[0])) + (v58 * v11.f32[0])) * v12.f32[0])) + (((v58 - (v58 * v11.f32[0])) + (v57 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_39;
      }

      v63 = (v38 + ((HIWORD(v45) << 56) >> 52));
      if (v78 < v63)
      {
        v63 = v78;
      }

      if (v63 >= v39)
      {
        v39 = v63;
      }

      v64 = vrev32_s8(*v39);
      v65 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
      v66 = 1.0;
      if (v79)
      {
        v66 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
      }

      v67 = &interpolate_rgbaf_21860[4 * ((v45 >> 28) & 3)];
    }

    LODWORD(a11) = v67[3];
    v43 = vmla_n_f32(vmls_lane_f32(v43, v43, *&a11, 0), v64, *&a11);
    v44 = (v44 - (v44 * *&a11)) + (v65 * *&a11);
    v41 = (v41 - (v41 * *&a11)) + (v66 * *&a11);
  }

LABEL_39:
  v46 = 0;
  v47 = v28 >> 22;
  ++v16;
  v69 = v20;
  v48 = v20 - 1;
  a3 += v80;
  v49 = v72 - a3;
  a2 += v81;
  v50 = v71 - a2;
  while (1)
  {
    result = RGBAF(v16, v43.f32[0], v43.f32[1], v44, v41);
    *(v75 + 1 + v46) = v47;
    if (v48 == v46)
    {
      return result;
    }

    if (((v49 | v50 | (a3 - v73) | (a2 - v74)) & 0x8000000000000000) != 0)
    {
      v75 += v46 + 1;
      v42 = ~v46 + v69;
      goto LABEL_34;
    }

    v38 = v76 + SHIDWORD(a3) * v77 + 16 * (a2 >> 32);
    v39 = *(v82 + 4);
    v51 = v78;
    if (v78 >= v38)
    {
      v51 = (v76 + SHIDWORD(a3) * v77 + 16 * (a2 >> 32));
    }

    if (v51 < v39)
    {
      v51 = *(v82 + 4);
    }

    if (v79)
    {
      v41 = COERCE_FLOAT(bswap32(v51[1].u32[1]));
    }

    else
    {
      v41 = 1.0;
    }

    v43 = vrev32_s8(*v51);
    v44 = COERCE_FLOAT(bswap32(v51[1].u32[0]));
    if (v15)
    {
      v45 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v45 & 0xF) != 0)
      {
        v75 += v46 + 1;
        v20 = ~v46 + v69;
        v28 = -1;
        goto LABEL_54;
      }
    }

    ++v46;
    ++v16;
    a3 += v80;
    v49 -= v80;
    a2 += v81;
    v50 -= v81;
    LOBYTE(v47) = -1;
  }
}

int *argb32_sample_RGBf(int *result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = *(result + 22);
  v60 = *(result + 10);
  v63 = *(result + 11);
  v68 = *(result + 15);
  v69 = *(result + 14);
  v13 = (*(result + 19) - 4);
  v64 = *(result + 18) - 1;
  v65 = *(result + 4);
  v66 = result[6];
  v70 = result;
  v59 = result[47];
  v67 = v65 + ((result[65] - 1) * v66) + 4 * (3 * result[64]) - 16;
  v61 = *(result + 9);
  v62 = *(result + 8);
  while (1)
  {
    if (a3 >= v61)
    {
      if (a3 <= v63)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v17 = a4;
        v18 = v62;
      }

      else
      {
        v20 = *(v70 + 27);
        v21 = *(v70 + 28) + v63;
        v22 = v21 - a3 + (v20 >> 1);
        v17 = a4;
        v18 = v62;
        if (v22 < 1)
        {
          goto LABEL_33;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(v70 + 29) * v22) >> 32;
        }

        v25 = v59 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v14 = *(v70 + 27);
      v15 = v61 - *(v70 + 28);
      v16 = a3 - v15 + (v14 >> 1);
      v17 = a4;
      v18 = v62;
      if (v16 < 1)
      {
        goto LABEL_33;
      }

      if (v16 >= v14)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(v70 + 29) * v16) >> 32;
      }

      v25 = v59 | v19;
      v26 = v15 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      if (a2 <= v60)
      {
        v31 = (a2 >> 26) & 0x3C;
        HIDWORD(v30) = HIDWORD(a2);
      }

      else
      {
        v32 = *(v70 + 24);
        v33 = *(v70 + 25) + v60;
        v34 = v33 - a2 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_33;
        }

        if (v34 < v32)
        {
          v25 = ((v25 >> 15) * (((*(v70 + 26) * v34) >> 32) >> 15)) | v59;
        }

        v30 = v33 - 0x1000000;
        v31 = 28;
      }
    }

    else
    {
      v27 = *(v70 + 24);
      v28 = v18 - *(v70 + 25);
      v29 = a2 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_33;
      }

      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(v70 + 26) * v29) >> 32) >> 15)) | v59;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v41 = v17 - 1;
    a2 += v69;
    a3 += v68;
    ++v13;
    *++v64 = 0;
LABEL_34:
    a4 = v41;
    if (!v41)
    {
      return result;
    }
  }

  v35 = v65 + SHIDWORD(v26) * v66 + 12 * SHIDWORD(v30);
  v36 = *(v70 + 4);
  v37 = v67;
  if (v67 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(v70 + 4);
  }

  v38 = *v37;
  v39 = *(v37 + 4);
  if (!v12)
  {
    goto LABEL_36;
  }

  v40 = *(v12 + (v31 | v24));
LABEL_49:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  if (v48 == 1)
  {
    v57 = v35 + SBYTE1(v40) * v66;
    if (v67 < v57)
    {
      v57 = v67;
    }

    if (v57 >= v36)
    {
      v36 = v57;
    }

    v55 = *v36;
    v56 = &interpolate_rgbaf_21860[4 * v49];
    goto LABEL_72;
  }

  if (v48 == 2)
  {
    v54 = v35 + 12 * SBYTE2(v40);
    if (v67 < v54)
    {
      v54 = v67;
    }

    if (v54 >= v36)
    {
      v36 = v54;
    }

    v55 = *v36;
    v56 = &interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3)];
LABEL_72:
    LODWORD(a8) = v56[3];
    v38 = (v38 - (v38 * *&a8)) + (v55 * *&a8);
    v39 = vmla_n_f32(vmls_lane_f32(v39, v39, *&a8, 0), *(v36 + 4), *&a8);
    *&a8 = *&a8 + (1.0 - *&a8);
    goto LABEL_37;
  }

  if (v48 != 3)
  {
LABEL_36:
    LODWORD(a8) = 1.0;
    goto LABEL_37;
  }

  v50 = v35 + 12 * SBYTE2(v40);
  if (v67 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v67;
  }

  if (v51 < v36)
  {
    v51 = v36;
  }

  v52 = v50 + SBYTE1(v40) * v66;
  if (v67 < v52)
  {
    v52 = v67;
  }

  if (v52 >= v36)
  {
    v36 = v52;
  }

  LODWORD(a9) = interpolate_rgbaf_21860[4 * v49 + 3];
  LODWORD(a10) = interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3) + 3];
  v38 = (((v38 - (v38 * *&a9)) + (*v51 * *&a9)) - (((v38 - (v38 * *&a9)) + (*v51 * *&a9)) * *&a10)) + (((*v51 - (*v51 * *&a9)) + (*v36 * *&a9)) * *&a10);
  a8 = *(v51 + 4);
  v53 = vmla_n_f32(vmls_lane_f32(v39, v39, *&a9, 0), *&a8, *&a9);
  v39 = vmla_n_f32(vmls_lane_f32(v53, v53, *&a10, 0), vmla_n_f32(vmls_lane_f32(*&a8, *&a8, *&a9, 0), *(v36 + 4), *&a9), *&a10);
  *&a8 = ((*&a9 + (1.0 - *&a9)) - ((*&a9 + (1.0 - *&a9)) * *&a10)) + ((*&a9 + (1.0 - *&a9)) * *&a10);
LABEL_37:
  v42 = 0;
  v43 = v25 >> 22;
  ++v13;
  v58 = v17;
  v44 = v17 - 1;
  a3 += v68;
  v45 = v63 - a3;
  a2 += v69;
  v46 = v60 - a2;
  while (1)
  {
    result = RGBAF(v13, v38, v39.f32[0], v39.f32[1], *&a8);
    *(v64 + 1 + v42) = v43;
    if (v44 == v42)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v61) | (a2 - v62)) & 0x8000000000000000) != 0)
    {
      v64 += v42 + 1;
      v41 = ~v42 + v58;
      goto LABEL_34;
    }

    v35 = v65 + SHIDWORD(a3) * v66 + 12 * SHIDWORD(a2);
    v36 = *(v70 + 4);
    v47 = v67;
    if (v67 >= v35)
    {
      v47 = v65 + SHIDWORD(a3) * v66 + 12 * SHIDWORD(a2);
    }

    if (v47 < v36)
    {
      v47 = *(v70 + 4);
    }

    v38 = *v47;
    v39 = *(v47 + 4);
    if (v12)
    {
      v40 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v64 += v42 + 1;
        v17 = ~v42 + v58;
        v25 = -1;
        goto LABEL_49;
      }
    }

    ++v42;
    ++v13;
    a3 += v68;
    v45 -= v68;
    a2 += v69;
    v46 -= v69;
    LODWORD(a8) = 1.0;
    LOBYTE(v43) = -1;
  }
}

int *argb32_sample_RGBF(int *result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = *(result + 22);
  v61 = *(result + 10);
  v64 = *(result + 11);
  v69 = *(result + 15);
  v70 = *(result + 14);
  v13 = (*(result + 19) - 4);
  v65 = *(result + 18) - 1;
  v66 = *(result + 4);
  v67 = result[6];
  v71 = result;
  v60 = result[47];
  v68 = v66 + ((result[65] - 1) * v67) + 4 * (3 * result[64]) - 16;
  v62 = *(result + 9);
  v63 = *(result + 8);
  while (1)
  {
    if (a3 >= v62)
    {
      if (a3 <= v64)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v17 = a4;
        v18 = v63;
      }

      else
      {
        v20 = *(v71 + 27);
        v21 = *(v71 + 28) + v64;
        v22 = v21 - a3 + (v20 >> 1);
        v17 = a4;
        v18 = v63;
        if (v22 < 1)
        {
          goto LABEL_33;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(v71 + 29) * v22) >> 32;
        }

        v25 = v60 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v14 = *(v71 + 27);
      v15 = v62 - *(v71 + 28);
      v16 = a3 - v15 + (v14 >> 1);
      v17 = a4;
      v18 = v63;
      if (v16 < 1)
      {
        goto LABEL_33;
      }

      if (v16 >= v14)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(v71 + 29) * v16) >> 32;
      }

      v25 = v60 | v19;
      v26 = v15 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      if (a2 <= v61)
      {
        v31 = (a2 >> 26) & 0x3C;
        HIDWORD(v30) = HIDWORD(a2);
      }

      else
      {
        v32 = *(v71 + 24);
        v33 = *(v71 + 25) + v61;
        v34 = v33 - a2 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_33;
        }

        if (v34 < v32)
        {
          v25 = ((v25 >> 15) * (((*(v71 + 26) * v34) >> 32) >> 15)) | v60;
        }

        v30 = v33 - 0x1000000;
        v31 = 28;
      }
    }

    else
    {
      v27 = *(v71 + 24);
      v28 = v18 - *(v71 + 25);
      v29 = a2 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_33;
      }

      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(v71 + 26) * v29) >> 32) >> 15)) | v60;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v41 = v17 - 1;
    a2 += v70;
    a3 += v69;
    ++v13;
    *++v65 = 0;
LABEL_34:
    a4 = v41;
    if (!v41)
    {
      return result;
    }
  }

  v35 = v66 + SHIDWORD(v26) * v67 + 12 * SHIDWORD(v30);
  v36 = *(v71 + 4);
  v37 = v68;
  if (v68 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(v71 + 4);
  }

  v38 = vrev32_s8(*v37);
  v39 = COERCE_FLOAT(bswap32(v37[1].u32[0]));
  if (!v12)
  {
    goto LABEL_36;
  }

  v40 = *(v12 + (v31 | v24));
LABEL_49:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  if (v48 == 1)
  {
    v58 = (v35 + SBYTE1(v40) * v67);
    if (v68 < v58)
    {
      v58 = v68;
    }

    if (v58 >= v36)
    {
      v36 = v58;
    }

    v56 = COERCE_FLOAT(bswap32(v36[1].u32[0]));
    v57 = &interpolate_rgbaf_21860[4 * v49];
    goto LABEL_72;
  }

  if (v48 == 2)
  {
    v55 = (v35 + 12 * SBYTE2(v40));
    if (v68 < v55)
    {
      v55 = v68;
    }

    if (v55 >= v36)
    {
      v36 = v55;
    }

    v56 = COERCE_FLOAT(bswap32(v36[1].u32[0]));
    v57 = &interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3)];
LABEL_72:
    LODWORD(a8) = v57[3];
    v38 = vmla_n_f32(vmls_lane_f32(v38, v38, *&a8, 0), vrev32_s8(*v36), *&a8);
    v39 = (v39 - (v39 * *&a8)) + (v56 * *&a8);
    *&a8 = *&a8 + (1.0 - *&a8);
    goto LABEL_37;
  }

  if (v48 != 3)
  {
LABEL_36:
    LODWORD(a8) = 1.0;
    goto LABEL_37;
  }

  v50 = (v35 + 12 * SBYTE2(v40));
  if (v68 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v68;
  }

  if (v51 < v36)
  {
    v51 = v36;
  }

  v52 = COERCE_FLOAT(bswap32(v51[1].u32[0]));
  v53 = (v50 + SBYTE1(v40) * v67);
  if (v68 < v53)
  {
    v53 = v68;
  }

  if (v53 >= v36)
  {
    v36 = v53;
  }

  LODWORD(a9) = interpolate_rgbaf_21860[4 * v49 + 3];
  LODWORD(a10) = interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3) + 3];
  v39 = (((v39 - (v39 * *&a9)) + (v52 * *&a9)) - (((v39 - (v39 * *&a9)) + (v52 * *&a9)) * *&a10)) + (((v52 - (v52 * *&a9)) + (COERCE_FLOAT(bswap32(v36[1].u32[0])) * *&a9)) * *&a10);
  a8 = COERCE_DOUBLE(vrev32_s8(*v51));
  v54 = vmla_n_f32(vmls_lane_f32(v38, v38, *&a9, 0), *&a8, *&a9);
  v38 = vmla_n_f32(vmls_lane_f32(v54, v54, *&a10, 0), vmla_n_f32(vmls_lane_f32(*&a8, *&a8, *&a9, 0), vrev32_s8(*v36), *&a9), *&a10);
  *&a8 = ((*&a9 + (1.0 - *&a9)) - ((*&a9 + (1.0 - *&a9)) * *&a10)) + ((*&a9 + (1.0 - *&a9)) * *&a10);
LABEL_37:
  v42 = 0;
  v43 = v25 >> 22;
  ++v13;
  v59 = v17;
  v44 = v17 - 1;
  a3 += v69;
  v45 = v64 - a3;
  a2 += v70;
  v46 = v61 - a2;
  while (1)
  {
    result = RGBAF(v13, v38.f32[0], v38.f32[1], v39, *&a8);
    *(v65 + 1 + v42) = v43;
    if (v44 == v42)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v62) | (a2 - v63)) & 0x8000000000000000) != 0)
    {
      v65 += v42 + 1;
      v41 = ~v42 + v59;
      goto LABEL_34;
    }

    v35 = v66 + SHIDWORD(a3) * v67 + 12 * SHIDWORD(a2);
    v36 = *(v71 + 4);
    v47 = v68;
    if (v68 >= v35)
    {
      v47 = (v66 + SHIDWORD(a3) * v67 + 12 * SHIDWORD(a2));
    }

    if (v47 < v36)
    {
      v47 = *(v71 + 4);
    }

    v38 = vrev32_s8(*v47);
    v39 = COERCE_FLOAT(bswap32(v47[1].u32[0]));
    if (v12)
    {
      v40 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v65 += v42 + 1;
        v17 = ~v42 + v59;
        v25 = -1;
        goto LABEL_49;
      }
    }

    ++v42;
    ++v13;
    a3 += v69;
    v45 -= v69;
    a2 += v70;
    v46 -= v70;
    LODWORD(a8) = 1.0;
    LOBYTE(v43) = -1;
  }
}

uint64_t argb32_sample_rgba64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v75 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v73 = *(result + 188);
  v10 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = 0xFF00000000000000;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v74 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_37;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v73 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_37;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v73 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v74)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v74 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v73;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v75;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v73;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v12 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 8 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 8 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = *v38;
  if (!v5)
  {
    goto LABEL_39;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_53:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  switch(v48)
  {
    case 1:
      v70 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v70)
      {
        v70 = v14;
      }

      if (v70 < v37)
      {
        v70 = v37;
      }

      v71 = interpolate_16161616_21862[v49];
      v72 = v49 + 1;
      v64 = v39 - ((v71 & v39) >> v72);
      v69 = (v71 & *v70) >> v72;
LABEL_81:
      v39 = v64 + v69;
      break;
    case 2:
      v66 = (v36 + ((HIWORD(v40) << 56) >> 53));
      if (v14 < v66)
      {
        v66 = v14;
      }

      if (v66 < v37)
      {
        v66 = v37;
      }

      v67 = (v40 >> 28) & 3;
      v68 = interpolate_16161616_21862[v67];
      v63 = v67 + 1;
      v64 = v39 - ((v68 & v39) >> v63);
      v65 = v68 & *v66;
LABEL_75:
      v69 = v65 >> v63;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v40) << 56;
      v51 = (v36 + (v50 >> 53));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = *v51;
      v53 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = *v54;
      v56 = (v53 + (v50 >> 53));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_16161616_21862[v49];
      v58 = v49 + 1;
      v59 = v39 - ((v57 & v39) >> v58) + ((v57 & v55) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((v57 & *v56) >> v58);
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_16161616_21862[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      v65 = v60 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v41 = 0;
  v42 = 0;
  v43 = v24 >> 22;
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v75 - a2;
  while (1)
  {
    *(v10 + 4 + 4 * v42) = BYTE5(v39) | (BYTE1(v39) << 16) | (BYTE3(v39) << 8) | ((v39 | v13) >> 32) & 0xFF000000;
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v6) | (a2 - v74)) & 0x8000000000000000) != 0)
    {
      v11 += v42 + 1;
      v10 = v10 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v36 = v46 + 8 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v47 = (v46 + 8 * (a2 >> 32));
    }

    else
    {
      v47 = v14;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = *v47;
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = v10 - v41 + 4;
        a4 += ~v42;
        v24 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t argb32_sample_RGBA64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v71 = *(result + 80);
  v72 = *(result + 88);
  v7 = *(result + 112);
  v8 = *(result + 120);
  v69 = *(result + 188);
  v9 = *(result + 152) - 4;
  v10 = *(result + 144) - 1;
  v11 = *(result + 32);
  if (*(result + 40))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFF00000000000000;
  }

  v13 = v11 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v70 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v72)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
        v25 = v70;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v72;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_37;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v25 = v70;
        v23 = v69 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v6 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_37;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v25 = v70;
      v23 = v69 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v25)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v25 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v69;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v7;
    a3 += v8;
    v9 += 4;
    *++v10 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v71)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v71;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v69;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v23 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v11 + SHIDWORD(v24) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 8 * v35;
  v37 = *(result + 32);
  if (v13 >= v36)
  {
    v38 = (v34 + 8 * v35);
  }

  else
  {
    v38 = v13;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = ((bswap32(v38[2]) >> 16) << 32) | ((bswap32(v38[3]) >> 16) << 48) | bswap32(v38[1]) & 0xFFFF0000 | (bswap32(*v38) >> 16);
  if (v5)
  {
    v40 = *(v5 + (v30 | v22));
LABEL_53:
    v48 = v40 & 0xF;
    v49 = HIBYTE(v40) & 3;
    switch(v48)
    {
      case 1:
        v67 = (v36 + SBYTE1(v40) * v4);
        if (v13 < v67)
        {
          v67 = v13;
        }

        if (v67 < v37)
        {
          v67 = v37;
        }

        v68 = interpolate_16161616_21862[v49];
        v63 = v39 - ((v68 & v39) >> (v49 + 1));
        v64 = ((((bswap32(v67[2]) >> 16) << 32) | ((bswap32(v67[3]) >> 16) << 48) | bswap32(v67[1]) & 0xFFFF0000 | (bswap32(*v67) >> 16)) & v68) >> (v49 + 1);
LABEL_80:
        v39 = v63 + v64;
        break;
      case 2:
        v65 = (v36 + ((HIWORD(v40) << 56) >> 53));
        if (v13 < v65)
        {
          v65 = v13;
        }

        if (v65 < v37)
        {
          v65 = v37;
        }

        v66 = (v40 >> 28) & 3;
        v39 = v39 - ((interpolate_16161616_21862[v66] & v39) >> (v66 + 1)) + (((((bswap32(v65[2]) >> 16) << 32) | ((bswap32(v65[3]) >> 16) << 48) | bswap32(v65[1]) & 0xFFFF0000 | (bswap32(*v65) >> 16)) & interpolate_16161616_21862[v66]) >> (v66 + 1));
        break;
      case 3:
        v50 = HIWORD(v40) << 56;
        v51 = (v36 + (v50 >> 53));
        if (v13 < v51)
        {
          v51 = v13;
        }

        if (v51 < v37)
        {
          v51 = v37;
        }

        v52 = ((bswap32(v51[2]) >> 16) << 32) | ((bswap32(v51[3]) >> 16) << 48) | bswap32(v51[1]) & 0xFFFF0000 | (bswap32(*v51) >> 16);
        v53 = v36 + SBYTE1(v40) * v4;
        if (v13 >= v53)
        {
          v54 = (v36 + SBYTE1(v40) * v4);
        }

        else
        {
          v54 = v13;
        }

        if (v54 < v37)
        {
          v54 = v37;
        }

        v55 = ((bswap32(v54[2]) >> 16) << 32) | ((bswap32(v54[3]) >> 16) << 48) | bswap32(v54[1]) & 0xFFFF0000 | (bswap32(*v54) >> 16);
        v56 = (v53 + (v50 >> 53));
        if (v13 < v56)
        {
          v56 = v13;
        }

        if (v56 < v37)
        {
          v56 = v37;
        }

        v57 = interpolate_16161616_21862[v49];
        v58 = v49 + 1;
        v59 = v39 - ((v57 & v39) >> v58) + ((v55 & v57) >> v58);
        v60 = v52 - ((v57 & v52) >> v58) + (((((bswap32(v56[2]) >> 16) << 32) | ((bswap32(v56[3]) >> 16) << 48) | bswap32(v56[1]) & 0xFFFF0000 | (bswap32(*v56) >> 16)) & v57) >> v58);
        v61 = (v40 >> 28) & 3;
        v62 = interpolate_16161616_21862[v61];
        LOBYTE(v61) = v61 + 1;
        v63 = v59 - ((v59 & v62) >> v61);
        v64 = (v60 & v62) >> v61;
        goto LABEL_80;
    }
  }

  v41 = 0;
  v42 = 0;
  v43 = v23 >> 22;
  a3 += v8;
  v44 = v72 - a3;
  a2 += v7;
  v45 = v71 - a2;
  while (1)
  {
    *(v9 + 4 + 4 * v42) = BYTE5(v39) | (BYTE1(v39) << 16) | (BYTE3(v39) << 8) | ((v39 | v12) >> 32) & 0xFF000000;
    *(v10 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v6) | (a2 - v70)) & 0x8000000000000000) != 0)
    {
      v10 += v42 + 1;
      v9 = v9 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v11 + SHIDWORD(a3) * v4;
    v36 = v46 + 8 * (a2 >> 32);
    v37 = *(result + 32);
    if (v13 >= v36)
    {
      v47 = (v46 + 8 * (a2 >> 32));
    }

    else
    {
      v47 = v13;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = ((bswap32(v47[2]) >> 16) << 32) | ((bswap32(v47[3]) >> 16) << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16);
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v10 += v42 + 1;
        v9 = v9 - v41 + 4;
        a4 += ~v42;
        v23 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v8;
    v44 -= v8;
    a2 += v7;
    v45 -= v7;
    LOBYTE(v43) = -1;
  }
}

uint64_t argb32_sample_rgb48(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v70 = *(result + 64);
  v71 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v69 = *(result + 188);
  v13 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v8;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v69 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v7 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v23 = v69 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v70)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v70 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v69;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v71)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v71;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v69;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v28 >> 32;
  v34 = v4 + SHIDWORD(v24) * v5;
  v35 = v34 + 6 * v33;
  v36 = *(result + 32);
  if (v13 >= v35)
  {
    v37 = (v34 + 6 * v33);
  }

  else
  {
    v37 = v13;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37 | (*(v37 + 2) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v39 = *(v6 + (v29 | v22));
LABEL_50:
  v47 = v39 & 0xF;
  v48 = HIBYTE(v39) & 3;
  switch(v47)
  {
    case 1:
      v66 = (v35 + SBYTE1(v39) * v5);
      if (v13 < v66)
      {
        v66 = v13;
      }

      if (v66 < v36)
      {
        v66 = v36;
      }

      v67 = interpolate_16161616_21862[v48];
      v68 = v48 + 1;
      v62 = v38 - ((v67 & v38) >> v68);
      v65 = ((*v66 | (*(v66 + 2) << 32) | 0xFFFF000000000000) & v67) >> v68;
LABEL_78:
      v38 = v62 + v65;
      break;
    case 2:
      v63 = (v35 + 6 * SBYTE2(v39));
      if (v13 < v63)
      {
        v63 = v13;
      }

      if (v63 < v36)
      {
        v63 = v36;
      }

      v58 = *v63 | (*(v63 + 2) << 32) | 0xFFFF000000000000;
      v64 = (v39 >> 28) & 3;
      v60 = interpolate_16161616_21862[v64];
      v61 = v64 + 1;
      v62 = v38 - ((v60 & v38) >> v61);
LABEL_72:
      v65 = (v58 & v60) >> v61;
      goto LABEL_78;
    case 3:
      v49 = (v35 + 6 * SBYTE2(v39));
      if (v13 < v49)
      {
        v49 = v13;
      }

      if (v49 < v36)
      {
        v49 = v36;
      }

      v50 = *v49 | (*(v49 + 2) << 32) | 0xFFFF000000000000;
      v51 = v35 + SBYTE1(v39) * v5;
      if (v13 >= v51)
      {
        v52 = (v35 + SBYTE1(v39) * v5);
      }

      else
      {
        v52 = v13;
      }

      if (v52 < v36)
      {
        v52 = v36;
      }

      v53 = *v52 | (*(v52 + 2) << 32) | 0xFFFF000000000000;
      v54 = (v51 + 6 * SBYTE2(v39));
      if (v13 < v54)
      {
        v54 = v13;
      }

      if (v54 < v36)
      {
        v54 = v36;
      }

      v55 = interpolate_16161616_21862[v48];
      v56 = v48 + 1;
      v57 = v38 - ((v55 & v38) >> v56) + ((v53 & v55) >> v56);
      v58 = v50 - ((v55 & v50) >> v56) + (((*v54 | (*(v54 + 2) << 32) | 0xFFFF000000000000) & v55) >> v56);
      v59 = (v39 >> 28) & 3;
      v60 = interpolate_16161616_21862[v59];
      v61 = v59 + 1;
      v62 = v57 - ((v57 & v60) >> v61);
      goto LABEL_72;
  }

LABEL_36:
  v40 = 0;
  v41 = 0;
  v42 = v23 >> 22;
  a3 += v10;
  v43 = v8 - a3;
  a2 += v9;
  v44 = v71 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v41) = BYTE5(v38) | HIDWORD(v38) & 0xFF000000 | (BYTE1(v38) << 16) | (BYTE3(v38) << 8);
    *(v12 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v43 | v44 | (a3 - v7) | (a2 - v70)) & 0x8000000000000000) != 0)
    {
      v12 += v41 + 1;
      v11 = v11 - v40 + 4;
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v45 = v4 + SHIDWORD(a3) * v5;
    v35 = v45 + 6 * SHIDWORD(a2);
    v36 = *(result + 32);
    if (v13 >= v35)
    {
      v46 = (v45 + 6 * SHIDWORD(a2));
    }

    else
    {
      v46 = v13;
    }

    if (v46 < v36)
    {
      v46 = *(result + 32);
    }

    v38 = *v46 | (*(v46 + 2) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v39 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v12 += v41 + 1;
        v11 = v11 - v40 + 4;
        a4 += ~v41;
        v23 = -1;
        goto LABEL_50;
      }
    }

    ++v41;
    v40 -= 4;
    a3 += v10;
    v43 -= v10;
    a2 += v9;
    v44 -= v9;
    LOBYTE(v42) = -1;
  }
}

uint64_t argb32_sample_RGB48(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v72 = *(result + 64);
  v73 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v71 = *(result + 188);
  v13 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
        v25 = v72;
        v26 = v73;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v8;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v25 = v72;
        v26 = v73;
        v23 = v71 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v7 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v25 = v72;
      v26 = v73;
      v23 = v71 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v25)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v25 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v71;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v26)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_26;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v26;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_34;
  }

  if (v34 < v32)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v71;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v35 = v30 >> 32;
  v36 = v4 + SHIDWORD(v24) * v5;
  v37 = v36 + 6 * v35;
  v38 = *(result + 32);
  if (v13 >= v37)
  {
    v39 = (v36 + 6 * v35);
  }

  else
  {
    v39 = v13;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = (bswap32(*v39) >> 16) | ((bswap32(v39[1]) >> 16) << 16) | ((bswap32(v39[2]) >> 16) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v41 = *(v6 + (v31 | v22));
LABEL_50:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v37 + SBYTE1(v41) * v5);
      if (v13 < v68)
      {
        v68 = v13;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = interpolate_16161616_21862[v50];
      v70 = v50 + 1;
      v64 = v40 - ((v69 & v40) >> v70);
      v67 = (((bswap32(*v68) >> 16) | ((bswap32(v68[1]) >> 16) << 16) | ((bswap32(v68[2]) >> 16) << 32) | 0xFFFF000000000000) & v69) >> v70;
LABEL_78:
      v40 = v64 + v67;
      break;
    case 2:
      v65 = (v37 + 6 * SBYTE2(v41));
      if (v13 < v65)
      {
        v65 = v13;
      }

      if (v65 < v38)
      {
        v65 = v38;
      }

      v60 = (bswap32(*v65) >> 16) | ((bswap32(v65[1]) >> 16) << 16) | ((bswap32(v65[2]) >> 16) << 32) | 0xFFFF000000000000;
      v66 = (v41 >> 28) & 3;
      v62 = interpolate_16161616_21862[v66];
      v63 = v66 + 1;
      v64 = v40 - ((v62 & v40) >> v63);
LABEL_72:
      v67 = (v60 & v62) >> v63;
      goto LABEL_78;
    case 3:
      v51 = (v37 + 6 * SBYTE2(v41));
      if (v13 < v51)
      {
        v51 = v13;
      }

      if (v51 < v38)
      {
        v51 = v38;
      }

      v52 = (bswap32(*v51) >> 16) | ((bswap32(v51[1]) >> 16) << 16) | ((bswap32(v51[2]) >> 16) << 32) | 0xFFFF000000000000;
      v53 = v37 + SBYTE1(v41) * v5;
      if (v13 >= v53)
      {
        v54 = (v37 + SBYTE1(v41) * v5);
      }

      else
      {
        v54 = v13;
      }

      if (v54 < v38)
      {
        v54 = v38;
      }

      v55 = (bswap32(*v54) >> 16) | ((bswap32(v54[1]) >> 16) << 16) | ((bswap32(v54[2]) >> 16) << 32) | 0xFFFF000000000000;
      v56 = (v53 + 6 * SBYTE2(v41));
      if (v13 < v56)
      {
        v56 = v13;
      }

      if (v56 < v38)
      {
        v56 = v38;
      }

      v57 = interpolate_16161616_21862[v50];
      v58 = v50 + 1;
      v59 = v40 - ((v57 & v40) >> v58) + ((v55 & v57) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((((bswap32(*v56) >> 16) | ((bswap32(v56[1]) >> 16) << 16) | ((bswap32(v56[2]) >> 16) << 32) | 0xFFFF000000000000) & v57) >> v58);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_16161616_21862[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      goto LABEL_72;
  }

LABEL_36:
  v42 = 0;
  v43 = 0;
  v44 = v23 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v73 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v43) = BYTE5(v40) | HIDWORD(v40) & 0xFF000000 | (BYTE1(v40) << 16) | (BYTE3(v40) << 8);
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v7) | (a2 - v72)) & 0x8000000000000000) != 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 4;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v4 + SHIDWORD(a3) * v5;
    v37 = v47 + 6 * SHIDWORD(a2);
    v38 = *(result + 32);
    if (v13 >= v37)
    {
      v48 = (v47 + 6 * SHIDWORD(a2));
    }

    else
    {
      v48 = v13;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = (bswap32(*v48) >> 16) | ((bswap32(v48[1]) >> 16) << 16) | ((bswap32(v48[2]) >> 16) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v41 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 4;
        a4 += ~v43;
        v23 = -1;
        goto LABEL_50;
      }
    }

    ++v43;
    v42 -= 4;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t argb32_sample_cmyk32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 4);
  v92 = *(result + 144) - 1;
  v9 = 0xFF00000000;
  if (v6)
  {
    v9 = 0;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 4 * v11 - 8;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_40;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v87 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_40;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v87 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_40;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_40;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_40:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    ++v8;
    *++v92 = 0;
LABEL_41:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 4 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37;
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 32;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_63:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = *v36;
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 32;
    }

    v84 = interpolate_cif10a[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 54));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = *v36;
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 32;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_cif10a[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_45;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 54));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = *v55;
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = *v58;
      v60 = (v57 + (v54 >> 54));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = *v36;
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 32;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 32;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 32;
      }

      v67 = interpolate_cif10a[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_cif10a[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_45:
  v44 = 0;
  v45 = v23 >> 22;
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    CMYK32_15063(v8, v38 | v96);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if ((v47 | v48 | (a3 - v90) | (a2 - v91)) < 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_41;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = *v49;
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 32;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_63;
      }
    }

    ++v44;
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

_DWORD *CMYK32_15063(_DWORD *result, uint64_t a2)
{
  v2 = BYTE4(a2) - (BYTE3(a2) + a2);
  v3 = BYTE4(a2) - (BYTE2(a2) + a2);
  *result = ((HIDWORD(a2) << 24) | ((v2 & ~(v2 >> 31)) << 16) | ((v3 & ~(v3 >> 31)) << 8)) + ((BYTE4(a2) - (BYTE1(a2) + a2)) & ~((BYTE4(a2) - (BYTE1(a2) + a2)) >> 31));
  return result;
}

uint64_t argb32_sample_CMYK32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 4);
  v92 = *(result + 144) - 1;
  v9 = 0xFF00000000;
  if (v6)
  {
    v9 = 0;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 4 * v11 - 8;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_40;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v87 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_40;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v87 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_40;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_40;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_40:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    ++v8;
    *++v92 = 0;
LABEL_41:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 4 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = bswap32(*v37);
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 32;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_63:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = bswap32(*v36);
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 32;
    }

    v84 = interpolate_cif10a[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 54));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = bswap32(*v36);
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 32;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_cif10a[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_45;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 54));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = bswap32(*v55);
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = bswap32(*v58);
      v60 = (v57 + (v54 >> 54));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = bswap32(*v36);
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 32;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 32;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 32;
      }

      v67 = interpolate_cif10a[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_cif10a[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_45:
  v44 = 0;
  v45 = v23 >> 22;
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    CMYK32_15063(v8, v38 | v96);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if ((v47 | v48 | (a3 - v90) | (a2 - v91)) < 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_41;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = bswap32(*v49);
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 32;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_63;
      }
    }

    ++v44;
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

uint64_t argb32_sample_ARGB32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v108 = *(result + 112);
    if (v5 > v6)
    {
      v108 = v5 % v6;
    }
  }

  else
  {
    v108 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v107 = v11;
  }

  else
  {
    v107 = 0;
  }

  v103 = *(result + 80);
  v104 = *(result + 64);
  v105 = *(result + 88);
  v106 = *(result + 72);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v102 = *(result + 188);
  v15 = v9 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v16 = -*(result + 64);
  v17 = -*(result + 72);
  while (1)
  {
LABEL_14:
    if (a3 >= v106)
    {
      if (a3 <= v105)
      {
        v26 = 0;
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        v29 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v105;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_54;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v28 = v102 | v25;
        v29 = v23 - 0x1000000;
        v26 = a3 - (v23 - 0x1000000);
        v27 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v106 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_54;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v28 = v102 | v21;
      v29 = v19 + 0x1000000;
      v26 = a3 - (v19 + 0x1000000);
      v27 = 512;
    }

    if (a2 >= v104)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v104 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v102;
      }

      v33 = v31 + 0x1000000;
      v34 = a2 - (v31 + 0x1000000);
      v35 = 32;
      goto LABEL_38;
    }

LABEL_54:
    --a4;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v103)
  {
    v34 = 0;
    v35 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_38;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v103;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_54;
  }

  if (v38 < v36)
  {
    v28 = ((v28 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v102;
  }

  v33 = v37 - 0x1000000;
  v34 = a2 - (v37 - 0x1000000);
  v35 = 28;
LABEL_38:
  if (v28 < 0x400000)
  {
    goto LABEL_54;
  }

  if (v6)
  {
    v39 = (v7 & ((v29 % v7) >> 63)) + v29 % v7;
    v40 = (v6 & ((v33 % v6) >> 63)) + v33 % v6;
    if (v39 >= v7)
    {
      v41 = v7;
    }

    else
    {
      v41 = 0;
    }

    v29 = v39 - v41;
    if (v40 >= v6)
    {
      v42 = v6;
    }

    else
    {
      v42 = 0;
    }

    v33 = v40 - v42;
    v26 += v29;
    v34 += v33;
  }

  v43 = v9 + SHIDWORD(v29) * v4;
  v44 = v33 >> 32;
  v45 = v43 + 4 * v44;
  v46 = *(result + 32);
  if (v15 >= v45)
  {
    v47 = (v43 + 4 * v44);
  }

  else
  {
    v47 = v15;
  }

  if (v47 < v46)
  {
    v47 = *(result + 32);
  }

  v48 = bswap32(*v47);
  if (v8)
  {
    v49 = *(v8 + (v35 | v27));
LABEL_80:
    v61 = v49 & 0xF;
    v62 = v49 >> 8;
    v63 = HIBYTE(v49) & 3;
    switch(v61)
    {
      case 1:
        LODWORD(v92) = SBYTE1(v49);
        if (v6)
        {
          v93 = v62 << 56;
          v94 = v26 + (SBYTE1(v49) << 32);
          v95 = v7 & (v94 >> 63);
          if (v95 + v94 >= v7)
          {
            v96 = v7;
          }

          else
          {
            v96 = 0;
          }

          v92 = (v95 + (v93 >> 24) - v96) >> 32;
        }

        v97 = (v45 + v92 * v4);
        if (v15 < v97)
        {
          v97 = v15;
        }

        if (v97 < v46)
        {
          v97 = v46;
        }

        v98 = interpolate_8888_21865[v63];
        v99 = v63 + 1;
        v85 = v48 - ((v98 & v48) >> v99);
        v86 = (bswap32(*v97) & v98) >> v99;
LABEL_125:
        v48 = v85 + v86;
        break;
      case 2:
        v87 = SBYTE2(v49);
        if (v6)
        {
          v88 = v34 + (SBYTE2(v49) << 32);
          v89 = v6 & (v88 >> 63);
          if (v89 + v88 >= v6)
          {
            v90 = v6;
          }

          else
          {
            v90 = 0;
          }

          v87 = (v89 + ((HIWORD(v49) << 56) >> 24) - v90) >> 32;
        }

        v91 = (v45 + 4 * v87);
        if (v15 < v91)
        {
          v91 = v15;
        }

        if (v91 < v46)
        {
          v91 = v46;
        }

        v48 = v48 - ((interpolate_8888_21865[(v49 >> 28) & 3] & v48) >> (((v49 >> 28) & 3) + 1)) + ((bswap32(*v91) & interpolate_8888_21865[(v49 >> 28) & 3]) >> (((v49 >> 28) & 3) + 1));
        break;
      case 3:
        v101 = HIBYTE(v49) & 3;
        LODWORD(v64) = SBYTE1(v49);
        v65 = SBYTE2(v49);
        if (v6)
        {
          v100 = v62 << 56;
          v66 = HIWORD(v49) << 56;
          v67 = v26 + (SBYTE1(v49) << 32);
          v68 = v34 + (v66 >> 24);
          v69 = v7 & (v67 >> 63);
          v70 = v6 & (v68 >> 63);
          v71 = v70 + v68;
          if (v69 + v67 >= v7)
          {
            v72 = v7;
          }

          else
          {
            v72 = 0;
          }

          if (v71 >= v6)
          {
            v73 = v6;
          }

          else
          {
            v73 = 0;
          }

          v64 = (v69 + (v100 >> 24) - v72) >> 32;
          v65 = (v70 + (v66 >> 24) - v73) >> 32;
        }

        v74 = (v45 + 4 * v65);
        if (v15 < v74)
        {
          v74 = v15;
        }

        if (v74 < v46)
        {
          v74 = v46;
        }

        v75 = bswap32(*v74);
        v76 = v45 + v64 * v4;
        if (v15 >= v76)
        {
          v77 = (v45 + v64 * v4);
        }

        else
        {
          v77 = v15;
        }

        if (v77 < v46)
        {
          v77 = v46;
        }

        v78 = bswap32(*v77);
        v79 = (v76 + 4 * v65);
        if (v15 < v79)
        {
          v79 = v15;
        }

        if (v79 < v46)
        {
          v79 = v46;
        }

        v80 = interpolate_8888_21865[v101];
        v81 = v48 - ((v80 & v48) >> (v101 + 1)) + ((v80 & v78) >> (v101 + 1));
        v82 = v75 - ((v80 & v75) >> (v101 + 1)) + ((bswap32(*v79) & v80) >> (v101 + 1));
        v83 = (v49 >> 28) & 3;
        v84 = interpolate_8888_21865[v83];
        LOBYTE(v83) = v83 + 1;
        v85 = v81 - ((v81 & v84) >> v83);
        v86 = (v82 & v84) >> v83;
        goto LABEL_125;
    }
  }

  *(v12 + 4) = v48 | v14;
  *(v13 + 1) = v28 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    a2 += v5;
    v51 = v103 - a2;
    a3 += v10;
    v52 = v105 - a3;
    v53 = -4;
    while (((v52 | v51 | (v17 + a3) | (v16 + a2)) & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v54 = (v7 & ((v26 + v107) >> 63)) + v26 + v107;
        v55 = (v6 & ((v34 + v108) >> 63)) + v34 + v108;
        if (v54 >= v7)
        {
          v56 = v7;
        }

        else
        {
          v56 = 0;
        }

        v26 = v54 - v56;
        if (v55 >= v6)
        {
          v57 = v6;
        }

        else
        {
          v57 = 0;
        }

        v34 = v55 - v57;
        v58 = HIDWORD(v26);
        v59 = v34;
      }

      else
      {
        v58 = HIDWORD(a3);
        v59 = a2;
      }

      v45 = v9 + v58 * v4 + 4 * (v59 >> 32);
      v46 = *(result + 32);
      if (v15 >= v45)
      {
        v60 = v45;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v46)
      {
        v60 = *(result + 32);
      }

      v48 = bswap32(*v60);
      if (v8)
      {
        v49 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v49 & 0xF) != 0)
        {
          v13 += v50 + 1;
          v12 -= v53;
          a4 += ~v50;
          v28 = -1;
          goto LABEL_80;
        }
      }

      *(v12 + 4 * v50 + 8) = v48 | v14;
      *(v13 + v50++ + 2) = -1;
      v53 -= 4;
      a2 += v5;
      v51 -= v5;
      a3 += v10;
      v52 -= v10;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v13 += v50 + 1;
    v12 -= v53;
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t argb32_sample_rgba32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v76 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v75 = *(result + 188);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = 255;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v75 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v75 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v75;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v76)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v76;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v75;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = *v39;
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_54:
  v50 = v41 & 0xF;
  v51 = HIBYTE(v41) & 3;
  switch(v50)
  {
    case 1:
      v72 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v72)
      {
        v72 = v15;
      }

      if (v72 < v38)
      {
        v72 = v38;
      }

      v73 = interpolate_8888_21865[v51];
      v74 = v51 + 1;
      v66 = v40 - ((v73 & v40) >> v74);
      v71 = (v73 & *v72) >> v74;
LABEL_82:
      v40 = v66 + v71;
      break;
    case 2:
      v68 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v68)
      {
        v68 = v15;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = (v41 >> 28) & 3;
      v70 = interpolate_8888_21865[v69];
      v65 = v69 + 1;
      v66 = v40 - ((v70 & v40) >> v65);
      v67 = v70 & *v68;
LABEL_76:
      v71 = v67 >> v65;
      goto LABEL_82;
    case 3:
      v52 = HIWORD(v41) << 56;
      v53 = (v37 + (v52 >> 54));
      if (v15 < v53)
      {
        v53 = v15;
      }

      if (v53 < v38)
      {
        v53 = v38;
      }

      v54 = *v53;
      v55 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v55)
      {
        v56 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v56 = v15;
      }

      if (v56 < v38)
      {
        v56 = v38;
      }

      v57 = *v56;
      v58 = (v55 + (v52 >> 54));
      if (v15 < v58)
      {
        v58 = v15;
      }

      if (v58 < v38)
      {
        v58 = v38;
      }

      v59 = interpolate_8888_21865[v51];
      v60 = v51 + 1;
      v61 = v40 - ((v59 & v40) >> v60) + ((v59 & v57) >> v60);
      v62 = v54 - ((v59 & v54) >> v60) + ((v59 & *v58) >> v60);
      v63 = (v41 >> 28) & 3;
      v64 = interpolate_8888_21865[v63];
      v65 = v63 + 1;
      v66 = v61 - ((v61 & v64) >> v65);
      v67 = v62 & v64;
      goto LABEL_76;
  }

LABEL_39:
  HIDWORD(v42) = v40 | v14;
  LODWORD(v42) = v40 | v14;
  *(v11 + 4) = v42 >> 8;
  *(v12 + 1) = v25 >> 22;
  if (a4 != 1)
  {
    v43 = 0;
    a2 += v9;
    v44 = v76 - a2;
    a3 += v10;
    v45 = v8 - a3;
    v46 = -4;
    while (((v45 | v44 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) == 0)
    {
      v47 = v13 + SHIDWORD(a3) * v4;
      v37 = v47 + 4 * (a2 >> 32);
      v38 = *(result + 32);
      if (v15 >= v37)
      {
        v48 = (v47 + 4 * (a2 >> 32));
      }

      else
      {
        v48 = v15;
      }

      if (v48 < v38)
      {
        v48 = *(result + 32);
      }

      v40 = *v48;
      if (v5)
      {
        v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v41 & 0xF) != 0)
        {
          v12 += v43 + 1;
          v11 -= v46;
          a4 += ~v43;
          v25 = -1;
          goto LABEL_54;
        }
      }

      HIDWORD(v49) = v40 | v14;
      LODWORD(v49) = v40 | v14;
      *(v11 + 4 * v43 + 8) = v49 >> 8;
      *(v12 + v43++ + 2) = -1;
      v46 -= 4;
      a2 += v9;
      v44 -= v9;
      a3 += v10;
      v45 -= v10;
      if (a4 - 1 == v43)
      {
        return result;
      }
    }

    v12 += v43 + 1;
    v11 -= v46;
    a4 += ~v43;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}