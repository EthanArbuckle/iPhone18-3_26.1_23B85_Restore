CFDataRef ColorSyncProfileCopyHeader(ColorSyncProfileRef prof)
{
  if (!prof)
  {
    return 0;
  }

  v2 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  if (*(prof + 39) == 1)
  {
    pthread_mutex_lock((prof + 24));
  }

  v3 = copyHeaderData(prof);
  if (*(prof + 39) == 1)
  {
    pthread_mutex_unlock((prof + 24));
  }

  return v3;
}

__CFData *copyHeaderData(uint64_t a1)
{
  if (*(a1 + 156) == 1)
  {
    pthread_mutex_lock((a1 + 24));
    Value = CFDictionaryGetValue(*(a1 + 96), @"iccHeader");
    v3 = copy_swapped_header(Value);
    pthread_mutex_unlock((a1 + 24));
    return v3;
  }

  else
  {
    CFRetain(*(a1 + 120));
    return *(a1 + 120);
  }
}

const void *ColorSyncProfileCopyFlexGTCInfo(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      Tag = ColorSyncProfileGetTag(a1, @"hdgm");
      if (Tag)
      {
        v4 = Tag;
        v5 = CFGetTypeID(Tag);
        if (v5 == CFDataGetTypeID())
        {
          pthread_mutex_lock((a1 + 24));
          v6 = *(a1 + 256);
          if (v6)
          {
            v7 = CFRetain(v6);
LABEL_18:
            pthread_mutex_unlock((a1 + 24));
            goto LABEL_10;
          }

          Length = CFDataGetLength(v4);
          if (Length < 0x62 || (v11 = Length, (BytePtr = CFDataGetBytePtr(v4)) == 0) || (v13 = BytePtr, (v14 = malloc_type_calloc(1uLL, v11, 0xD3FE406AuLL)) == 0))
          {
            v7 = 0;
            goto LABEL_18;
          }

          v15 = v14;
          memcpy(v14, v13, v11);
          if (validate_gmap_tag(v15, v11))
          {
            v22 = v15[5];
            v23 = v22 != v15[6] || v22 != v15[7];
            v24 = v15[9];
            v25 = v24 != v15[11] || v24 != v15[13];
            v26 = v15[10];
            if (v26 == v15[12] && !v23 && !v25 && v26 == v15[14])
            {
              if (v24 && 12 * bswap32(*(v15 + bswap32(v24) + 4)) + 8 <= bswap32(v26))
              {
                gain_map_info = create_gain_map_info(v15 + bswap32(v22));
                v27 = v15 + bswap32(v15[9]);
                v28 = *(v27 + 1);
                v29 = bswap32(v28);
                Mutable = CFArrayCreateMutable(0, v29, MEMORY[0x1E695E9C0]);
                if (v28)
                {
                  v31 = 0;
                  v32 = MEMORY[0x1E695E9E8];
                  do
                  {
                    v33 = &v27[12 * v31 + 8];
                    v34 = *v33;
                    v35 = v33[1];
                    LODWORD(v33) = v33[2];
                    v48 = bswap32(v35);
                    valuePtr = bswap32(v34);
                    v47 = bswap32(v33);
                    keys = kColorSyncFlexGTCNodeX;
                    v55 = kColorSyncFlexGTCNodeY;
                    v56 = kColorSyncFlexGTCNodeSlope;
                    values = 0;
                    v51 = 0;
                    v52 = 0;
                    values = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
                    v51 = CFNumberCreate(0, kCFNumberFloat32Type, &v48);
                    v52 = CFNumberCreate(0, kCFNumberFloat32Type, &v47);
                    v36 = CFDictionaryCreate(0, &keys, &values, 3, MEMORY[0x1E695E9D8], v32);
                    for (i = 0; i != 24; i += 8)
                    {
                      CFRelease(*(&values + i));
                    }

                    CFArrayAppendValue(Mutable, v36);
                    CFRelease(v36);
                    ++v31;
                  }

                  while (v31 != v29);
                }

                v38 = bswap32(*(v15 + bswap32(v15[4])));
                v39 = v15[8];
                if (v39)
                {
                  v40 = bswap32(*(v15 + bswap32(v39)));
                }

                else
                {
                  v40 = 0;
                }

                keys = kColorSyncMonoGainMapParams;
                v55 = kColorSyncMonoFlexGTCNodeTable;
                v56 = kColorSyncPreGainMapCICP;
                v57 = kColorSyncPostGainMapCICP;
                values = gain_map_info;
                v51 = Mutable;
                valuePtr = v38;
                v41 = 3;
                v52 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                if (v40)
                {
                  valuePtr = v40;
                  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  v41 = 4;
                }

                else
                {
                  v42 = 0;
                }

                v53 = v42;
                v7 = CFDictionaryCreate(0, &keys, &values, v41, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                for (j = 0; j != 32; j += 8)
                {
                  v44 = *(&values + j);
                  if (v44)
                  {
                    CFRelease(v44);
                  }
                }

                if (v7)
                {
                  *(a1 + 256) = CFRetain(v7);
                }

                goto LABEL_37;
              }
            }

            else
            {
              ColorSyncLog(2, "Not able to use gmap tag", v16, v17, v18, v19, v20, v21, v45);
            }
          }

          v7 = 0;
LABEL_37:
          free(v15);
          goto LABEL_18;
        }
      }
    }
  }

  v7 = 0;
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

const void *ColorSyncProfileGetTag(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  Tag = getTag(a1, a2);
  if (*(a1 + 156) == 1)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      if (Tag)
      {
        v8.length = CFArrayGetCount(v6);
        v8.location = 0;
        if (!CFArrayContainsValue(*(a1 + 104), v8, Tag))
        {
          CFArrayAppendValue(*(a1 + 104), Tag);
        }
      }
    }
  }

  return Tag;
}

uint64_t colorSyncProfileRetainCount(uint64_t a1, atomic_uint *a2)
{
  if (a1 == -1)
  {
    if (a2[39] != 2 && atomic_fetch_add_explicit(a2 + 4, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      colorSyncProfileFinalize(a2);
      v4 = CFGetAllocator(a2);
      CFAllocatorDeallocate(v4, a2);
    }

    return 0;
  }

  if (a1)
  {
    if (a1 == 1 && a2[39] != 2)
    {
      result = 0;
      atomic_fetch_add_explicit(a2 + 4, 1u, memory_order_relaxed);
      return result;
    }

    return 0;
  }

  if (a2[39] == 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return atomic_load(a2 + 4);
  }
}

CFTypeID ColorSyncProfileGetTypeID(void)
{
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  return ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID;
}

ColorSyncProfileRef ColorSyncProfileCreateWithName(CFStringRef name)
{
  if (!name)
  {
    return 0;
  }

  if (ColorSyncProfileCreateWithName_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileCreateWithName_predicate, &__block_literal_global_1017);
  }

  v2 = ColorSyncProfileCreateWithName_name_creator_pair_array;
  v3 = 28;
  if (!ColorSyncProfileCreateWithName_name_creator_pair_count)
  {
    v3 = 0;
  }

  while (v3)
  {
    if (*v2 == name)
    {
      goto LABEL_20;
    }

    v4 = v3;
    v5 = &v2[2 * v3];
    v6 = *(v5 - 2);
    if (v6 == name)
    {
      v9 = (v5 - 1);
      goto LABEL_21;
    }

    v3 = v4 >> 1;
    v7 = v2[2 * (v4 >> 1)];
    if (v7 == name)
    {
      v2 += 2 * v3;
LABEL_20:
      v9 = (v2 + 1);
LABEL_21:
      Value = *v9;
      if (*v9)
      {
        goto LABEL_23;
      }

      break;
    }

    if (*v2 >= name || v7 <= name)
    {
      v2 += 2 * v3;
      v3 = v4 - v3;
      if (v6 <= name || v7 >= name)
      {
        break;
      }
    }
  }

  Value = CFDictionaryGetValue(ColorSyncProfileCreateWithName_name_to_function_map, name);
  if (!Value)
  {
    return 0;
  }

LABEL_23:

  return Value();
}

const void *getTag(uint64_t a1, void *key)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 156) == 1)
  {
    pthread_mutex_lock((a1 + 24));
  }

  Value = CFDictionaryGetValue(*(a1 + 96), key);
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 != CFStringGetTypeID() || (v5 = CFDictionaryGetValue(*(a1 + 96), v5)) != 0)
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFDataGetTypeID())
      {
        v5 = 0;
      }
    }
  }

  if (*(a1 + 156) == 1)
  {
    pthread_mutex_unlock((a1 + 24));
  }

  return v5;
}

uint64_t compare_names(void *a1, void *a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __create_sRGBProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, sRGB_Profile_data, 3144, *MEMORY[0x1E695E498]);
  create_sRGBProfile_profile = ColorSyncProfileCreateSingleton(24, v0, 0xAB894ADB2EDA3F1DLL, 0xDD817D7C5F3CA260, @"/System/Library/ColorSync/Profiles/sRGB Profile.icc", 0, 4);

  CFRelease(v0);
}

uint64_t create(uint64_t a1, CFTypeRef cf, int a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CFDataGetTypeID())
    {
      goto LABEL_59;
    }

    BytePtr = CFDataGetBytePtr(cf);
    if (CFDataGetLength(cf) < 0x81 || *(BytePtr + 9) != 1886610273)
    {
      goto LABEL_59;
    }
  }

  else if (a3 != 1)
  {
LABEL_59:
    v11 = 0;
    goto LABEL_60;
  }

  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 84) = 0u;
    *(Instance + 260) = 0;
    *(Instance + 244) = 0u;
    *(Instance + 228) = 0u;
    *(Instance + 212) = 0u;
    *(Instance + 196) = 0u;
    *(Instance + 180) = 0u;
    *(Instance + 164) = 0u;
    *(Instance + 148) = 0u;
    *(Instance + 132) = 0u;
    *(Instance + 116) = 0u;
    *(Instance + 100) = 0u;
    *(Instance + 68) = 0u;
    *(Instance + 52) = 0u;
    *(Instance + 36) = 0u;
    *(Instance + 20) = 0u;
    *(Instance + 16) = 1;
    *(Instance + 88) = a1;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v11 + 96) = Mutable;
    if (Mutable)
    {
      if (!cf)
      {
        goto LABEL_37;
      }

      v13 = Mutable;
      v14 = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      if (v14)
      {
        v16 = Length;
        if (Length >= 0x80)
        {
          TagData = createTagData(v14, 128, a3 == 1);
          if (TagData)
          {
            v18 = TagData;
            CFDictionarySetValue(v13, @"iccHeader", TagData);
            CFRelease(v18);
            if (v16 >= 0x85)
            {
              v19 = *(v14 + 32);
              if (v19)
              {
                if (v16 >= 0x90)
                {
                  v20 = 0;
                  v46 = bswap32(v19);
                  v47 = v16;
                  v48 = &v14[v16 - 1];
                  v21 = (v14 + 132);
                  while ((v21 + 3) <= v48)
                  {
                    v22 = bswap32(v21[2]);
                    if ((v22 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v23 = v21[1];
                    v24 = bswap32(v23);
                    if (v22 + v24 > v16)
                    {
                      break;
                    }

                    v49 = v21 + 3;
                    v25 = bswap32(*v21);
                    if (v20)
                    {
                      v26 = v20;
                      v27 = (v14 + 132);
                      while (v27[1] != v23)
                      {
                        v27 += 3;
                        if (!--v26)
                        {
                          goto LABEL_26;
                        }
                      }

                      v34 = bswap32(*v27);
                      SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(v25);
                      v28 = ColorSyncCreateSignatureFromFourCharCode(v34);
                      v31 = v13;
                      v32 = SignatureFromFourCharCode;
                      v33 = v28;
                    }

                    else
                    {
LABEL_26:
                      v28 = ColorSyncCreateSignatureFromFourCharCode(v25);
                      if (CFDictionaryContainsValue(v13, v28) || (v29 = createTagData(&v14[v24], v22, a3 == 1)) == 0)
                      {
                        CFRelease(v28);
                        goto LABEL_58;
                      }

                      SignatureFromFourCharCode = v29;
                      v31 = v13;
                      v32 = v28;
                      v33 = SignatureFromFourCharCode;
                    }

                    CFDictionarySetValue(v31, v32, v33);
                    CFRelease(SignatureFromFourCharCode);
                    CFRelease(v28);
                    ++v20;
                    v21 = v49;
                    v16 = v47;
                    if (v20 == v46)
                    {
                      goto LABEL_31;
                    }
                  }
                }

                goto LABEL_58;
              }
            }

LABEL_31:
            if (a3 == 1)
            {
              *(v11 + 112) = CFRetain(cf);
LABEL_36:
              *(v11 + 136) = computeMD5(cf);
              *(v11 + 144) = v37;
LABEL_37:
              *(v11 + 156) = a3;
              if (a3 == 1)
              {
                v50.__sig = 0;
                *v50.__opaque = 0;
                pthread_mutexattr_init(&v50);
                pthread_mutexattr_settype(&v50, 2);
                pthread_mutex_init((v11 + 24), &v50);
                pthread_mutexattr_destroy(&v50);
                *(v11 + 104) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              }

LABEL_39:
              if (a4 == 3)
              {
                if (BT2020_luminance_coefficients_predicate != -1)
                {
                  dispatch_once(&BT2020_luminance_coefficients_predicate, &__block_literal_global_538);
                }

                v41 = &BT2020_luminance_coefficients_coeffs_2;
                v42 = &BT2020_luminance_coefficients_coeffs_1;
                v43 = &BT2020_luminance_coefficients_coeffs_0;
              }

              else if (a4 == 2)
              {
                if (DisplayP3_luminance_coefficients_predicate != -1)
                {
                  dispatch_once(&DisplayP3_luminance_coefficients_predicate, &__block_literal_global_535);
                }

                v41 = &DisplayP3_luminance_coefficients_coeffs_2;
                v42 = &DisplayP3_luminance_coefficients_coeffs_1;
                v43 = &DisplayP3_luminance_coefficients_coeffs_0;
              }

              else
              {
                v38 = 0;
                v39 = 0;
                v40 = 0;
                if (a4 != 1)
                {
                  goto LABEL_52;
                }

                if (BT709_luminance_coefficients_predicate != -1)
                {
                  dispatch_once(&BT709_luminance_coefficients_predicate, &__block_literal_global_532);
                }

                v41 = &BT709_luminance_coefficients_coeffs_2;
                v42 = &BT709_luminance_coefficients_coeffs_1;
                v43 = &BT709_luminance_coefficients_coeffs_0;
              }

              v40 = *v43;
              v38 = *v42;
              v39 = *v41;
LABEL_52:
              *(v11 + 160) = v40;
              *(v11 + 164) = v38;
              *(v11 + 168) = v39;
              *(v11 + 172) = 0;
              if (a3)
              {
                *(v11 + 152) = a3 == 2;
              }

              else
              {
                *(v11 + 152) = AppleCMMValidateProfile(v11);
              }

              goto LABEL_60;
            }

            Value = CFDictionaryGetValue(*(v11 + 96), @"iccHeader");
            v36 = copy_swapped_header(Value);
            *(v11 + 120) = v36;
            if (v36)
            {
              *(v11 + 112) = CFRetain(cf);
              if (a3 == 2)
              {
                *(v11 + 156) = 2;
                goto LABEL_39;
              }

              goto LABEL_36;
            }
          }
        }
      }
    }

LABEL_58:
    CFRelease(v11);
    goto LABEL_59;
  }

LABEL_60:
  v44 = *MEMORY[0x1E69E9840];
  return v11;
}

void __ColorSyncProfileCreateWithName_block_invoke()
{
  v64 = *MEMORY[0x1E69E9840];
  keys = kColorSyncGenericGrayProfile;
  v9 = kColorSyncGenericGrayGamma22Profile;
  v10 = kColorSyncGenericRGBProfile;
  v11 = kColorSyncGenericCMYKProfile;
  v12 = kColorSyncDisplayP3Profile;
  v13 = kColorSyncDisplayP3_HLGProfile[0];
  v14 = kColorSyncDisplayP3_PQProfile[0];
  v15 = kColorSyncDisplayP3_709OETFProfile;
  v16 = kColorSyncSRGBProfile;
  v17 = kColorSyncAdobeRGB1998Profile;
  v18 = kColorSyncGenericLabProfile;
  v19 = kColorSyncGenericXYZProfile;
  v20 = kColorSyncACESCGLinearProfile;
  v21 = kColorSyncDCIP3Profile;
  v22 = kColorSyncITUR709Profile;
  v23 = kColorSyncITUR709_PQProfile[0];
  v24 = kColorSyncITUR709_HLGProfile[0];
  v25 = kColorSyncITUR2020Profile;
  v26 = kColorSyncITUR2020_sRGBGammaProfile;
  v27 = kColorSyncITUR2020_HLGProfile;
  v28 = kColorSyncITUR2020_PQProfile;
  v29 = kColorSyncITUR2100_HLGProfile[0];
  v30 = kColorSyncITUR2100_PQProfile[0];
  v31 = kColorSyncROMMRGBProfile;
  v32 = kColorSyncPerceptualStandardRGBProfile;
  v33 = kColorSyncCoreVideo709Profile;
  v34 = @"com.apple.ColorSync.CoreVideoLegacy709";
  v6[10] = xmmword_1F0E0C6A8;
  v6[11] = *&off_1F0E0C6B8;
  v6[12] = xmmword_1F0E0C6C8;
  v7 = off_1F0E0C6D8;
  v6[6] = xmmword_1F0E0C668;
  v6[7] = *&off_1F0E0C678;
  v6[8] = xmmword_1F0E0C688;
  v6[9] = *&off_1F0E0C698;
  v6[2] = xmmword_1F0E0C628;
  v6[3] = *&off_1F0E0C638;
  v6[4] = xmmword_1F0E0C648;
  v6[5] = *&off_1F0E0C658;
  v6[0] = xmmword_1F0E0C608;
  v6[1] = *&off_1F0E0C618;
  ColorSyncProfileCreateWithName_name_to_function_map = CFDictionaryCreate(0, &keys, v6, 27, MEMORY[0x1E695E9D8], 0);
  keys = kColorSyncGenericGrayProfile;
  v9 = create_GenericGrayProfile;
  v10 = kColorSyncGenericGrayGamma22Profile;
  v11 = create_GenericGrayGamma22Profile;
  v12 = kColorSyncGenericRGBProfile;
  v13 = create_GenericRGBProfile;
  v14 = kColorSyncGenericCMYKProfile;
  v15 = create_GenericCMYKProfile;
  v16 = kColorSyncDisplayP3Profile;
  v17 = create_DisplayP3Profile;
  v18 = kColorSyncDisplayP3_HLGProfile[0];
  v19 = create_DisplayP3_HLGProfile;
  v20 = kColorSyncDisplayP3_PQProfile[0];
  v21 = create_DisplayP3_PQProfile;
  v22 = kColorSyncDisplayP3_709OETFProfile;
  v23 = create_DisplayP3_709OETFProfile;
  v24 = kColorSyncSRGBProfile;
  v25 = create_sRGBProfile;
  v26 = kColorSyncAdobeRGB1998Profile;
  v27 = create_AdobeRGB1998Profile;
  v28 = kColorSyncGenericLabProfile;
  v29 = create_GenericLabProfile;
  v30 = kColorSyncGenericXYZProfile;
  v31 = create_GenericXYZProfile;
  v32 = kColorSyncACESCGLinearProfile;
  v33 = create_ACESCGLinearProfile;
  v34 = kColorSyncDCIP3Profile;
  v35 = create_DCIP3Profile;
  v36 = kColorSyncITUR709Profile;
  v37 = create_ITUR709Profile;
  v38 = kColorSyncITUR709_PQProfile[0];
  v39 = create_ITUR709_PQProfile;
  v40 = kColorSyncITUR709_HLGProfile[0];
  v41 = create_ITUR709_HLGProfile;
  v42 = kColorSyncITUR2020Profile;
  v43 = create_ITUR2020Profile;
  v44 = kColorSyncITUR2020_sRGBGammaProfile;
  v45 = create_ITUR2020sRGBGammaProfile;
  v46 = kColorSyncITUR2020_HLGProfile;
  v47 = create_ITUR2020_HLGProfile;
  v48 = kColorSyncITUR2020_PQProfile;
  v49 = create_ITUR2020_PQProfile;
  v50 = kColorSyncITUR2100_HLGProfile[0];
  v51 = create_ITUR2100_HLGProfile;
  v52 = kColorSyncITUR2100_PQProfile[0];
  v53 = create_ITUR2100_PQProfile;
  v54 = kColorSyncROMMRGBProfile;
  v55 = create_ROMMRGBProfile;
  v56 = kColorSyncWebSafeColorsProfile;
  v57 = create_WebSafeColorsProfile;
  v58 = kColorSyncPerceptualStandardRGBProfile;
  v59 = create_PerceptualStandardRGBProfile;
  v60 = kColorSyncCoreVideo709Profile;
  v61 = create_CoreVideo709Profile;
  v62 = @"com.apple.ColorSync.CoreVideoLegacy709";
  v63 = create_CoreVideoLegacy709Profile;
  v0 = malloc_type_malloc(0x1C0uLL, 0xE0040372BB24AuLL);
  v1 = v0;
  if (v0)
  {
    ColorSyncProfileCreateWithName_name_creator_pair_count = 1;
    v2 = 28;
LABEL_7:
    v3 = 0;
    v4 = v2;
    do
    {
      *&v0[v3] = *(&keys + v3);
      v3 += 16;
      --v4;
    }

    while (v4);
    qsort(v0, v2, 0x10uLL, compare_names);
    goto LABEL_10;
  }

  if (ColorSyncProfileCreateWithName_name_creator_pair_count)
  {
    v2 = 28;
  }

  else
  {
    v2 = 0;
  }

  if (ColorSyncProfileCreateWithName_name_creator_pair_count)
  {
    goto LABEL_7;
  }

LABEL_10:
  ColorSyncProfileCreateWithName_name_creator_pair_array = v1;
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __ColorSyncProfileGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID = result;
  return result;
}

CFStringRef ColorSyncCreateSignatureFromFourCharCode(unsigned int a1)
{
  v1 = "0B2A";
  v2 = 59;
  while (v2)
  {
    if (*v1 == a1)
    {
      goto LABEL_16;
    }

    v3 = v2;
    v4 = &v1[16 * v2];
    v5 = *(v4 - 4);
    if (v5 == a1)
    {
      v8 = (v4 - 8);
      goto LABEL_17;
    }

    v2 = v3 >> 1;
    v6 = *&v1[16 * (v3 >> 1)];
    if (v6 == a1)
    {
      v1 += 16 * v2;
LABEL_16:
      v8 = (v1 + 8);
LABEL_17:
      v9 = *v8;
      if (*v8)
      {
        CFRetain(*v8);
        return v9;
      }

      break;
    }

    if (*v1 >= a1 || v6 <= a1)
    {
      v1 += 16 * v2;
      v2 = v3 - v2;
      if (v5 <= a1 || v6 >= a1)
      {
        break;
      }
    }
  }

  *bytes = bswap32(a1);
  v10 = CFStringCreateWithBytes(0, bytes, 4, 0x600u, 0);
  if (!v10)
  {
    __assert_rtn("ColorSyncCreateSignatureFromFourCharCode", "ColorSyncTransform.c", 1248, "sig != NULL");
  }

  return v10;
}

CFTypeRef create_sRGBProfile()
{
  if (create_sRGBProfile_predicate != -1)
  {
    dispatch_once(&create_sRGBProfile_predicate, &__block_literal_global_262);
  }

  v1 = create_sRGBProfile_profile;

  return CFRetain(v1);
}

BOOL ColorSyncProfileContainsTag(ColorSyncProfileRef prof, CFStringRef signature)
{
  if (!prof)
  {
    return 0;
  }

  v4 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  if (*(prof + 39) == 1)
  {
    pthread_mutex_lock((prof + 24));
  }

  v5 = CFDictionaryContainsKey(*(prof + 12), signature) != 0;
  if (*(prof + 39) == 1)
  {
    pthread_mutex_unlock((prof + 24));
  }

  return v5;
}

CFTypeRef create_GenericGrayGamma22Profile()
{
  if (create_GenericGrayGamma22Profile_predicate != -1)
  {
    dispatch_once(&create_GenericGrayGamma22Profile_predicate, &__block_literal_global_196);
  }

  v1 = create_GenericGrayGamma22Profile_profile;

  return CFRetain(v1);
}

CFDataRef ColorSyncProfileCopyData(ColorSyncProfileRef prof, CFErrorRef *error)
{
  if (!prof)
  {
    goto LABEL_10;
  }

  v4 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (*(prof + 39) == 1)
  {
    pthread_mutex_lock((prof + 24));
    v5 = *(prof + 14);
    if (v5)
    {
      CFRelease(v5);
    }

    ProfileData = createProfileData(prof);
    *(prof + 14) = ProfileData;
    if (!ProfileData)
    {
      goto LABEL_17;
    }
  }

  else
  {
    ProfileData = *(prof + 14);
    if (!ProfileData)
    {
      goto LABEL_17;
    }
  }

  if (CFDataGetLength(ProfileData) >= 1)
  {
    BytePtr = CFDataGetBytePtr(*(prof + 14));
    Length = CFDataGetLength(*(prof + 14));
    if (!(Length >> 31))
    {
      v11 = Length;
      v12 = 0;
      v13 = 0;
      if (BytePtr && Length)
      {
        v14 = MEMORY[0x1E69E9AC8];
        v15 = -*MEMORY[0x1E69E9AC8];
        v16 = v15 & BytePtr;
        v12 = (((BytePtr + Length + *MEMORY[0x1E69E9AC8] - 1) & v15) - (v15 & BytePtr));
        v17 = mmap(0, v12, 3, 4098, 1744830464, 0);
        if (v17 == -1)
        {
          v12 = 0;
          v13 = 0;
        }

        else
        {
          v13 = &v17[BytePtr - v16];
          v18 = v11 > 4 * *v14;
          v19 = MEMORY[0x1E69E9A60];
          if (!v18 || vm_copy(*MEMORY[0x1E69E9A60], BytePtr, v11, v13))
          {
            memcpy(v13, BytePtr, v11);
          }

          if (MEMORY[0x19EAE4B70](*v19, v13, v11, 1, 1))
          {
            ColorSyncLog(2, "%s: vm_protect failed: status %d.", v20, v21, v22, v23, v24, v25, "copy_read_only");
          }
        }
      }

      if (v13 == BytePtr)
      {
        v7 = CFDataCreate(0, BytePtr, v11);
      }

      else
      {
        context.version = 0;
        memset(&context.retain, 0, 40);
        context.info = v12;
        context.deallocate = vm_allocator_deallocate;
        context.preferredSize = 0;
        v26 = CFAllocatorCreate(0, &context);
        v7 = CFDataCreateWithBytesNoCopy(0, v13, v11, v26);
        CFRelease(v26);
      }

      goto LABEL_18;
    }
  }

LABEL_17:
  v7 = 0;
LABEL_18:
  if (*(prof + 39) == 1)
  {
    pthread_mutex_unlock((prof + 24));
  }

LABEL_11:
  if (error)
  {
    *error = 0;
  }

  return v7;
}

ColorSyncMD5 ColorSyncProfileGetMD5(ColorSyncProfileRef prof)
{
  if (prof)
  {
    v1 = prof;
    v2 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      if (*(v1 + 39) == 1)
      {
        pthread_mutex_lock((v1 + 24));
        v3 = *(v1 + 14);
        if (v3)
        {
          CFRelease(v3);
        }

        Value = CFDictionaryGetValue(*(v1 + 12), @"iccHeader");
        MutableCopy = CFDataCreateMutableCopy(0, 0, Value);
        if (MutableCopy)
        {
          v6 = MutableCopy;
          MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
          *(MutableBytePtr + 92) = 0;
          *(MutableBytePtr + 84) = 0;
          CFDictionarySetValue(*(v1 + 12), @"iccHeader", v6);
          CFRelease(v6);
          ProfileData = createProfileData(v1);
          if (ProfileData)
          {
            v9 = ProfileData;
            *(v1 + 17) = computeMD5(ProfileData);
            *(v1 + 18) = v10;
            *(v1 + 14) = v9;
          }
        }

        pthread_mutex_unlock((v1 + 24));
      }

      prof = *(v1 + 17);
      v11 = *(v1 + 18);
    }

    else
    {
      v11 = 0;
      prof = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *&result.digest[8] = v11;
  *result.digest = prof;
  return result;
}

BOOL ColorSyncProfileIsPQBased(ColorSyncProfileRef a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v3 = copyHeaderData(v1);
      if (v3)
      {
        v4 = v3;
        BytePtr = CFDataGetBytePtr(v3);
        if (BytePtr && *(BytePtr + 5) == 1482250784 && *(BytePtr + 4) == 1380401696)
        {
          Tag = getTag(v1, @"cicp");
          v16 = 0;
          if (valid_cicp_tag(Tag, &v16) && v16 == 16)
          {
            LOBYTE(v1) = 1;
LABEL_33:
            CFRelease(v4);
            return v1;
          }

          v7 = getTag(v1, @"hdTF");
          if (v7)
          {
            v8 = v7;
            v9 = CFDataGetBytePtr(v7);
            LOBYTE(v1) = 0;
            if (CFDataGetLength(v8) < 0xC || !v9)
            {
              goto LABEL_33;
            }

            v10 = *(v9 + 2) == 538988880;
            goto LABEL_17;
          }

          if (ColorSyncProfileContainsTag(v1, @"aarg") && ColorSyncProfileContainsTag(v1, @"aagg") && ColorSyncProfileContainsTag(v1, @"aabg"))
          {
            v11 = getTag(v1, @"aarg");
            v12 = getTag(v1, @"aagg");
            v13 = getTag(v1, @"aabg");
            if (CFEqual(v11, v12) == 1)
            {
              if (CFEqual(v12, v13))
              {
                v14 = CFDataGetBytePtr(v11);
                LOBYTE(v1) = 0;
                if (CFDataGetLength(v11) < 0xC || !v14)
                {
                  goto LABEL_33;
                }

                if (get_preliminary_PQ_curve_data_predicate != -1)
                {
                  dispatch_once(&get_preliminary_PQ_curve_data_predicate, &__block_literal_global_555);
                }

                v10 = get_preliminary_PQ_curve_data_preliminary_PQ_data == *v14 && dword_1EAFE00E0 == *(v14 + 2);
LABEL_17:
                LOBYTE(v1) = v10;
                goto LABEL_33;
              }
            }
          }
        }

        LOBYTE(v1) = 0;
        goto LABEL_33;
      }
    }

    LOBYTE(v1) = 0;
  }

  return v1;
}

BOOL ColorSyncProfileIsHLGBased(ColorSyncProfileRef a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v3 = copyHeaderData(v1);
      if (v3)
      {
        v4 = v3;
        BytePtr = CFDataGetBytePtr(v3);
        if (BytePtr && *(BytePtr + 5) == 1482250784 && *(BytePtr + 4) == 1380401696)
        {
          Tag = getTag(v1, @"cicp");
          v16 = 0;
          if (valid_cicp_tag(Tag, &v16) && v16 == 18)
          {
            LOBYTE(v1) = 1;
LABEL_33:
            CFRelease(v4);
            return v1;
          }

          v7 = getTag(v1, @"hdTF");
          if (v7)
          {
            v8 = v7;
            v9 = CFDataGetBytePtr(v7);
            LOBYTE(v1) = 0;
            if (CFDataGetLength(v8) < 0xC || !v9)
            {
              goto LABEL_33;
            }

            v10 = *(v9 + 2) == 541543496;
            goto LABEL_17;
          }

          if (ColorSyncProfileContainsTag(v1, @"aarg") && ColorSyncProfileContainsTag(v1, @"aagg") && ColorSyncProfileContainsTag(v1, @"aabg"))
          {
            v11 = getTag(v1, @"aarg");
            v12 = getTag(v1, @"aagg");
            v13 = getTag(v1, @"aabg");
            if (CFEqual(v11, v12) == 1)
            {
              if (CFEqual(v12, v13))
              {
                v14 = CFDataGetBytePtr(v11);
                LOBYTE(v1) = 0;
                if (CFDataGetLength(v11) < 0xC || !v14)
                {
                  goto LABEL_33;
                }

                if (get_preliminary_HLG_curve_data_predicate != -1)
                {
                  dispatch_once(&get_preliminary_HLG_curve_data_predicate, &__block_literal_global_558);
                }

                v10 = get_preliminary_HLG_curve_data_preliminary_HLG_data == *v14 && dword_1EAFE00F8 == *(v14 + 2);
LABEL_17:
                LOBYTE(v1) = v10;
                goto LABEL_33;
              }
            }
          }
        }

        LOBYTE(v1) = 0;
        goto LABEL_33;
      }
    }

    LOBYTE(v1) = 0;
  }

  return v1;
}

BOOL ColorSyncProfileIsMatrixBased(ColorSyncProfileRef a1)
{
  if (!a1)
  {
    return a1;
  }

  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    goto LABEL_28;
  }

  v3 = ColorSyncProfileCopyHeader(v1);
  v4 = *(CFDataGetBytePtr(v3) + 4);
  CFRelease(v3);
  v5 = ColorSyncProfileIsHLGBased(v1) || ColorSyncProfileIsPQBased(v1);
  if (v4 == 1380401696)
  {
    Tag = getTag(v1, @"cicp");
    if (valid_cicp_tag(Tag, 0))
    {
      if (v5)
      {
        LOBYTE(a1) = 1;
        return a1;
      }

      goto LABEL_16;
    }

    if (v5)
    {
      v10 = 3;
    }

    else
    {
      v10 = 6;
    }

    v11 = off_1E75238F0;
    while (ColorSyncProfileContainsTag(v1, *v11))
    {
      ++v11;
      if (!--v10)
      {
        LOBYTE(a1) = 1;
        goto LABEL_11;
      }
    }

LABEL_28:
    LOBYTE(a1) = 0;
    return a1;
  }

  if (v4 != 1196573017)
  {
    goto LABEL_28;
  }

  LOBYTE(a1) = ColorSyncProfileContainsTag(v1, @"kTRC");
LABEL_11:
  if (!v5 && (a1 & 1) != 0)
  {
LABEL_16:
    v7 = 0;
    do
    {
      v8 = ColorSyncProfileContainsTag(v1, ColorSyncProfileIsMatrixBased_must_not_have_tags[v7]);
      if (v8)
      {
        break;
      }
    }

    while (v7++ != 2);
    LOBYTE(a1) = !v8;
  }

  return a1;
}

BOOL ColorSyncProfileIsWideGamut(ColorSyncProfileRef a1)
{
  if (!a1)
  {
    return a1;
  }

  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    LOBYTE(a1) = 0;
    return a1;
  }

  XYZColor = getXYZColor(v1, 0x7258595Au);
  v5 = v4;
  v6 = getXYZColor(v1, 0x6758595Au);
  v7 = v6;
  v9 = v8;
  v10 = HIDWORD(v6);
  v11 = getXYZColor(v1, 0x6258595Au);
  if (HIDWORD(XYZColor) || XYZColor || v5)
  {
    v15 = (v5 + XYZColor + HIDWORD(XYZColor));
    v14 = XYZColor / v15;
    v13 = SHIDWORD(XYZColor) / v15;
  }

  else
  {
    v13 = -100.0;
    v14 = -100.0;
  }

  v16 = HIDWORD(v11);
  if (v10 || v7 || v9)
  {
    v19 = (v9 + v7 + v10);
    v18 = v7 / v19;
    v17 = v10 / v19;
    if (v16)
    {
LABEL_20:
      v22 = v12 + v11 + HIDWORD(v11);
      v20 = v11 / v22;
      v21 = SHIDWORD(v11) / v22;
      goto LABEL_21;
    }
  }

  else
  {
    v17 = -100.0;
    v18 = -100.0;
    if (v16)
    {
      goto LABEL_20;
    }
  }

  if (v11 || v12)
  {
    goto LABEL_20;
  }

  v20 = -100.0;
  v21 = -100.0;
LABEL_21:
  LOBYTE(a1) = 0;
  if (v14 != -100.0 && v13 != -100.0 && v18 != -100.0 && v17 != -100.0 && v20 != -100.0 && v21 != -100.0)
  {
    v23 = sqrt((v13 - v17) * (v13 - v17) + (v14 - v18) * (v14 - v18));
    v24 = sqrt((v14 - v20) * (v14 - v20) + (v13 - v21) * (v13 - v21));
    v25 = sqrt((v18 - v20) * (v18 - v20) + (v17 - v21) * (v17 - v21));
    LOBYTE(a1) = sqrt(((v25 + v23 + v24) * 0.5 - v25) * (((v25 + v23 + v24) * 0.5 - v24) * ((v25 + v23 + v24) * 0.5 * ((v25 + v23 + v24) * 0.5 - v23)))) > 0.13447;
  }

  return a1;
}

unint64_t getXYZColor(const void *a1, unsigned int a2)
{
  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(a2);
  XYZColor = ColorSyncProfileGetXYZColor(a1, SignatureFromFourCharCode);
  CFRelease(SignatureFromFourCharCode);
  return XYZColor;
}

unint64_t ColorSyncProfileGetXYZColor(const void *a1, void *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (a2)
    {
      v5 = 0;
      v6 = 0;
      if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
      {
        Tag = getTag(a1, a2);
        if (!Tag)
        {
          if (CFEqual(a2, @"rXYZ") || CFEqual(a2, @"bXYZ") || CFEqual(a2, @"gXYZ"))
          {
            v13 = 0;
            v14 = 0;
            v12 = 0;
            primaries_data_from_cicp = get_primaries_data_from_cicp(a1, &v14, &v13, &v12);
            Tag = 0;
            if (primaries_data_from_cicp)
            {
              if (CFEqual(a2, @"rXYZ") == 1)
              {
                Tag = v14;
              }

              else if (CFEqual(a2, @"gXYZ") == 1)
              {
                Tag = v13;
              }

              else if (CFEqual(a2, @"bXYZ") == 1)
              {
                Tag = v12;
              }

              else
              {
                Tag = 0;
              }
            }
          }

          else
          {
            Tag = 0;
          }
        }

        v9 = verified_icXYZType_data_ptr(Tag);
        if (v9 && *v9 == 542792024)
        {
          v6 = bswap32(*(v9 + 2));
          v10 = bswap32(*(v9 + 4));
          v5 = bswap32(*(v9 + 3)) << 32;
        }

        else
        {
          v5 = 0;
          v6 = 0;
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

const UInt8 *verified_icXYZType_data_ptr(const __CFData *a1)
{
  if (!a1 || CFDataGetLength(a1) < 0x14)
  {
    return 0;
  }

  return CFDataGetBytePtr(a1);
}

CFDataRef createTagData(UInt8 *bytes, CFIndex length, int a3)
{
  if (a3)
  {
    return CFDataCreate(0, bytes, length);
  }

  else
  {
    return CFDataCreateWithBytesNoCopy(0, bytes, length, *MEMORY[0x1E695E498]);
  }
}

const UInt8 *valid_cicp_tag(const UInt8 *result, _BYTE *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 != CFDataGetTypeID() || CFDataGetLength(v3) < 1 || CFDataGetLength(v3) < 0xC)
    {
      return 0;
    }

    result = CFDataGetBytePtr(v3);
    if (!result)
    {
      return result;
    }

    if (*result == 1885563235 && ((v5 = *(result + 2), v5 == 12) || (v5 & 0xFB) == 1 || (v5 & 0xFD) == 9))
    {
      result = 0;
      if (BYTE1(v5) <= 0x12u && ((1 << SBYTE1(v5)) & 0x5E142) != 0)
      {
        if (a2)
        {
          *a2 = BYTE1(v5);
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFDataRef *ColorSyncProfileCreateImmutableCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  if (*(a1 + 156) == 1)
  {
    v3 = ColorSyncProfileCopyData(a1, 0);
    if (v3)
    {
      v4 = v3;
      v5 = create(*(a1 + 88), v3, 0, 0);
      CFRelease(v4);
      v6 = system_profile_for_profile_from_data(v5);
      if (v6)
      {
        v7 = v6;
        CFRelease(v5);
        v5 = v7;
      }

      evaluate_cicp(a1);
      return v5;
    }

    return 0;
  }

  return CFRetain(a1);
}

__CFData *copy_swapped_header(CFDataRef theData)
{
  if (!theData)
  {
    return 0;
  }

  MutableCopy = CFDataCreateMutableCopy(0, 128, theData);
  v2 = MutableCopy;
  if (MutableCopy)
  {
    CFDataSetLength(MutableCopy, 128);
    MutableBytePtr = CFDataGetMutableBytePtr(v2);
    *MutableBytePtr = vrev32q_s8(*MutableBytePtr);
    v4 = vrev16_s8(*(MutableBytePtr + 24));
    *(MutableBytePtr + 2) = vrev32_s8(*(MutableBytePtr + 16));
    *(MutableBytePtr + 3) = v4;
    *(MutableBytePtr + 16) = bswap32(*(MutableBytePtr + 16)) >> 16;
    *(MutableBytePtr + 17) = bswap32(*(MutableBytePtr + 17)) >> 16;
    *(MutableBytePtr + 36) = vrev32q_s8(*(MutableBytePtr + 36));
    *(MutableBytePtr + 52) = vrev32q_s8(*(MutableBytePtr + 52));
    *(MutableBytePtr + 68) = vrev32q_s8(*(MutableBytePtr + 68));
  }

  return v2;
}

uint64_t get_primaries_data_from_cicp(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v10 = 0;
  v7 = ColorSyncProfileContainsSupportedCICP(a1, &v10);
  result = 0;
  if (v7)
  {
    result = 0;
    if (v10 <= 8u)
    {
      if (v10 == 1)
      {
        if (get_BT709RedPrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT709RedPrimaryData_predicate, &__block_literal_global_561);
        }

        *a2 = get_BT709RedPrimaryData_data;
        if (get_BT709GreenPrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT709GreenPrimaryData_predicate, &__block_literal_global_564);
        }

        *a3 = get_BT709GreenPrimaryData_data;
        if (get_BT709BluPrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT709BluPrimaryData_predicate, &__block_literal_global_567);
        }

        v9 = &get_BT709BluPrimaryData_data;
      }

      else
      {
        if (v10 != 5)
        {
          return result;
        }

        if (get_BT601RedPrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT601RedPrimaryData_predicate, &__block_literal_global_570);
        }

        *a2 = get_BT601RedPrimaryData_data;
        if (get_BT601GreenPrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT601GreenPrimaryData_predicate, &__block_literal_global_573);
        }

        *a3 = get_BT601GreenPrimaryData_data;
        if (get_BT601BluePrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT601BluePrimaryData_predicate, &__block_literal_global_576);
        }

        v9 = &get_BT601BluePrimaryData_data;
      }
    }

    else
    {
      switch(v10)
      {
        case 9u:
          if (get_BT2020RedPrimaryData_predicate != -1)
          {
            dispatch_once(&get_BT2020RedPrimaryData_predicate, &__block_literal_global_579);
          }

          *a2 = get_BT2020RedPrimaryData_data;
          if (get_BT2020GreenPrimaryData_predicate != -1)
          {
            dispatch_once(&get_BT2020GreenPrimaryData_predicate, &__block_literal_global_582);
          }

          *a3 = get_BT2020GreenPrimaryData_data;
          if (get_BT2020BluePrimaryData_predicate != -1)
          {
            dispatch_once(&get_BT2020BluePrimaryData_predicate, &__block_literal_global_585);
          }

          v9 = &get_BT2020BluePrimaryData_data;
          break;
        case 0xBu:
          if (get_DCIP3RedPrimaryData_predicate != -1)
          {
            dispatch_once(&get_DCIP3RedPrimaryData_predicate, &__block_literal_global_588);
          }

          *a2 = get_DCIP3RedPrimaryData_data;
          if (get_DCIP3GreenPrimaryData_predicate != -1)
          {
            dispatch_once(&get_DCIP3GreenPrimaryData_predicate, &__block_literal_global_591);
          }

          *a3 = get_DCIP3GreenPrimaryData_data;
          if (get_DCIP3BluePrimaryData_predicate != -1)
          {
            dispatch_once(&get_DCIP3BluePrimaryData_predicate, &__block_literal_global_594);
          }

          v9 = &get_DCIP3BluePrimaryData_data;
          break;
        case 0xCu:
          if (get_DisplayP3RedPrimaryData_predicate != -1)
          {
            dispatch_once(&get_DisplayP3RedPrimaryData_predicate, &__block_literal_global_597);
          }

          *a2 = get_DisplayP3RedPrimaryData_data;
          if (get_DisplayP3GreenPrimaryData_predicate != -1)
          {
            dispatch_once(&get_DisplayP3GreenPrimaryData_predicate, &__block_literal_global_600);
          }

          *a3 = get_DisplayP3GreenPrimaryData_data;
          if (get_DisplayP3BluePrimaryData_predicate != -1)
          {
            dispatch_once(&get_DisplayP3BluePrimaryData_predicate, &__block_literal_global_603);
          }

          v9 = &get_DisplayP3BluePrimaryData_data;
          break;
        default:
          return result;
      }
    }

    *a4 = *v9;
    return 1;
  }

  return result;
}

uint64_t ColorSyncProfileContainsSupportedCICP(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      Tag = ColorSyncProfileGetTag(v3, @"cicp");
      result = valid_cicp_tag(Tag, 0);
      if (a2)
      {
        if (result)
        {
          *a2 = *(CFDataGetBytePtr(Tag) + 2);
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef create_GenericCMYKProfile()
{
  if (create_GenericCMYKProfile_predicate != -1)
  {
    dispatch_once(&create_GenericCMYKProfile_predicate, &__block_literal_global_268);
  }

  v1 = create_GenericCMYKProfile_profile;

  return CFRetain(v1);
}

unsigned __int8 *CMMProfile::GetTag(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (!v4)
  {
LABEL_4:
    if (!*(a1 + 16))
    {
      return 0;
    }

    SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(a2);
    if (!ColorSyncProfileContainsTag(*(a1 + 16), SignatureFromFourCharCode) || !ColorSyncProfileGetTag(*(a1 + 16), SignatureFromFourCharCode))
    {
      v4 = 0;
LABEL_332:
      CFRelease(SignatureFromFourCharCode);
      return v4;
    }

    *theData = 0u;
    v186 = 0u;
    v6 = *(a1 + 16);
    v183 = &unk_1F0E08C80;
    v184 = v6;
    theData[0] = CFRetain(SignatureFromFourCharCode);
    Tag = ColorSyncProfileGetTag(v184, theData[0]);
    theData[1] = Tag;
    if (Tag)
    {
      *&v186 = CFDataGetBytePtr(Tag);
      *(&v186 + 1) = CFDataGetLength(theData[1]);
    }

    v8 = *(a1 + 160);
    do
    {
      v9 = v8;
      if (!v8)
      {
        break;
      }

      v8 = *(v8 + 16);
    }

    while (v8);
    if (*(&v186 + 1) >= 8uLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = 4294967294;
    }

    CMMThrowExceptionOnError(v10);
    if (a2 <= 1684370274)
    {
      if (a2 <= 1633768034)
      {
        if (a2 <= 1110589743)
        {
          v13 = -1093812784;
LABEL_95:
          if ((a2 + v13) >= 3)
          {
            goto LABEL_281;
          }

LABEL_96:
          v46 = bswap32(*v186);
          if (v46 <= 1835430960)
          {
            if (v46 == 1832993312)
            {
              if (*(&v186 + 1) <= 0x20uLL)
              {
                v78 = 4294967126;
              }

              else
              {
                v78 = 0;
              }

              CMMThrowExceptionOnError(v78);
              v4 = CMMBase::NewInternal(0x268, *(a1 + 24), v79, v80);
              CMMLutTag::CMMLutTag(v4, a2, &v183, v9, *(a1 + 24), *(v186 + 8), *(v186 + 9));
              v44 = 0;
              v50 = &unk_1F0E09400;
              goto LABEL_163;
            }

            if (v46 == 1833058592)
            {
              if (*(&v186 + 1) <= 0x20uLL)
              {
                v47 = 4294967126;
              }

              else
              {
                v47 = 0;
              }

              CMMThrowExceptionOnError(v47);
              v4 = CMMBase::NewInternal(0x268, *(a1 + 24), v48, v49);
              CMMLutTag::CMMLutTag(v4, a2, &v183, v9, *(a1 + 24), *(v186 + 9), *(v186 + 8));
              v44 = 0;
              v50 = &unk_1F0E094B0;
LABEL_163:
              *v4 = v50;
              goto LABEL_305;
            }

LABEL_157:
            if (a2 <= 1633772134)
            {
              goto LABEL_281;
            }

LABEL_269:
            v18 = 29287;
LABEL_270:
            if (a2 == (v18 | 0x61610000))
            {
              goto LABEL_271;
            }

LABEL_281:
            v157 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
            v44 = v157;
            v158 = v186;
            *v157 = &unk_1F0E08C48;
            *(v157 + 2) = a2;
            v157[3] = v9;
            v157[4] = *(&v158 + 1);
            v157[2] = 0;
            if (v9)
            {
              *(v9 + 16) = v157;
            }

            v4 = 0;
            v157[5] = v158;
            *(v157 + 24) = 0;
            goto LABEL_305;
          }

          if (v46 == 1835430962)
          {
            if (*(&v186 + 1) <= 0x34uLL)
            {
              v81 = 4294967126;
            }

            else
            {
              v81 = 0;
            }

            CMMThrowExceptionOnError(v81);
            v84 = CMMBase::NewInternal(0x90, *(a1 + 24), v82, v83);
            v4 = v84;
            v182 = *(a1 + 24);
            *(v84 + 2) = a2;
            *(v84 + 4) = 0;
            *(v84 + 5) = 0;
            *(v84 + 24) = 0;
            *(v84 + 2) = 0;
            *(v84 + 3) = v9;
            if (v9)
            {
              *(v9 + 16) = v84;
            }

            *v84 = &unk_1F0E09278;
            *(v84 + 60) = 0;
            if (v186)
            {
              if (*(&v186 + 1) >= 52)
              {
                v91 = 44;
              }

              else
              {
                v91 = *(&v186 + 1) - 8;
              }

              if (v91 <= 0)
              {
                v92 = 4294967126;
              }

              else
              {
                v92 = 0;
              }

              CMMThrowExceptionOnError(v92);
              memcpy(v4 + 50, (v186 + 8), v91);
            }

            v93 = 54;
            do
            {
              *&v4[v93] = bswap32(*&v4[v93]);
              v93 += 4;
            }

            while (v93 != 90);
            v94 = bswap32(*(v4 + 45));
            *(v4 + 45) = HIWORD(v94);
            v95 = bswap32(*(v4 + 46));
            *(v4 + 46) = HIWORD(v95);
            if ((HIWORD(v94) - 4097) <= 0xF000u || (HIWORD(v95) - 4097) <= 0xF000u || (v96 = v4[50], (v96 - 16) < 0xFFFFFFF1) || v4[51] - 16 <= 0xFFFFFFF0)
            {
              exception = __cxa_allocate_exception(4uLL);
              *exception = -170;
            }

            v97 = v4[52];
            v98 = 1;
            do
            {
              v99 = v98 * v97;
              v101 = v98 * v97 >= v98 && v99 >= v97;
              CMMThrowExceptionWithLog(v101, "Overflow in Power", v85, v86, v87, v88, v89, v90);
              v98 = v99;
              --v96;
            }

            while (v96);
            v102 = v99 * v4[51];
            v103 = 2 * v4[50] * *(v4 + 45);
            v104 = v4[51] * *(v4 + 46);
            v105 = v103 + 52;
            v106 = v103 + 52 + 2 * v102;
            v107 = v106 + 2 * v104;
            *(v4 + 4) = v107;
            if (v107 > *(&v186 + 1))
            {
              v173 = __cxa_allocate_exception(4uLL);
              *v173 = -170;
            }

            v110 = CMMBase::NewInternal(0x28, v182, v85, v86);
            v111 = v186;
            if (v186)
            {
              if (v105 <= *(&v186 + 1))
              {
                v112 = v103;
              }

              else
              {
                v112 = *(&v186 + 1) - 52;
              }

              if (v112 <= 0)
              {
                v113 = 4294967126;
              }

              else
              {
                v113 = 0;
              }

              CMMThrowExceptionOnError(v113);
              v111 = v186 + 52;
            }

            *v110 = &unk_1F0E09180;
            v110[1] = 1;
            v110[3] = v111;
            v110[4] = v103;
            v110[2] = 0;
            *(v4 + 13) = v110;
            v116 = CMMBase::NewInternal(0x28, v182, v108, v109);
            v117 = v186;
            if (v186)
            {
              if (v106 <= *(&v186 + 1))
              {
                v118 = 2 * v102;
              }

              else
              {
                v118 = *(&v186 + 1) - v105;
              }

              if (v118 <= 0)
              {
                v119 = 4294967126;
              }

              else
              {
                v119 = 0;
              }

              CMMThrowExceptionOnError(v119);
              v117 = v186 + v105;
            }

            *v116 = &unk_1F0E09180;
            v116[1] = 1;
            v116[3] = v117;
            v116[4] = 2 * v102;
            v116[2] = 0;
            *(v4 + 12) = v116;
            v120 = CMMBase::NewInternal(0x28, v182, v114, v115);
            v121 = 2 * v104;
            v122 = v186;
            if (!v186)
            {
              goto LABEL_267;
            }

            if (v107 <= *(&v186 + 1))
            {
              v123 = 2 * v104;
            }

            else
            {
              v123 = *(&v186 + 1) - v106;
            }

            if (v123 <= 0)
            {
              v124 = 4294967126;
            }

            else
            {
              v124 = 0;
            }
          }

          else
          {
            if (v46 != 1835430961)
            {
              goto LABEL_157;
            }

            if (*(&v186 + 1) <= 0x30uLL)
            {
              v51 = 4294967126;
            }

            else
            {
              v51 = 0;
            }

            CMMThrowExceptionOnError(v51);
            v54 = CMMBase::NewInternal(0x78, *(a1 + 24), v52, v53);
            v4 = v54;
            v55 = *(a1 + 24);
            *(v54 + 2) = a2;
            v54[4] = 0;
            v54[5] = 0;
            *(v54 + 24) = 0;
            v54[2] = 0;
            v54[3] = v9;
            if (v9)
            {
              *(v9 + 16) = v54;
            }

            *v54 = &unk_1F0E091A0;
            v56 = v54 + 50;
            if (v186)
            {
              if (*(&v186 + 1) >= 48)
              {
                v57 = 40;
              }

              else
              {
                v57 = *(&v186 + 1) - 8;
              }

              if (v57 <= 0)
              {
                v58 = 4294967126;
              }

              else
              {
                v58 = 0;
              }

              CMMThrowExceptionOnError(v58);
              memcpy(v4 + 50, (v186 + 8), v57);
            }

            v59 = 54;
            do
            {
              *&v4[v59] = bswap32(*&v4[v59]);
              v59 += 4;
            }

            while (v59 != 90);
            CMMThrowExceptionOnCondition(v4[52] < 2u);
            CMMThrowExceptionOnCondition(*v56 - 16 < 0xFFFFFFF1);
            CMMThrowExceptionOnCondition(v4[51] - 16 < 0xFFFFFFF1);
            v181 = v55;
            v66 = v4[50];
            if (v4[50])
            {
              v67 = v4[52];
              v68 = 1;
              do
              {
                v69 = v68;
                v68 *= v67;
                v71 = v68 >= v69 && v68 >= v67;
                CMMThrowExceptionWithLog(v71, "Overflow in Power", v60, v61, v62, v63, v64, v65);
                --v66;
              }

              while (v66);
              v66 = *v56 << 8;
            }

            else
            {
              v68 = 1;
            }

            v136 = v4[51];
            v137 = v68 * v136;
            v138 = v66 | 0x30;
            v106 = (v66 | 0x30) + v137;
            v139 = v106 + (v136 << 8);
            *(v4 + 4) = v139;
            if (v139 > *(&v186 + 1))
            {
              v172 = __cxa_allocate_exception(4uLL);
              *v172 = -170;
            }

            v142 = CMMBase::NewInternal(0x28, v181, v60, v61);
            v143 = v186;
            if (v186)
            {
              if (v106 <= *(&v186 + 1))
              {
                v144 = v137;
              }

              else
              {
                v144 = *(&v186 + 1) - v138;
              }

              if (v144 <= 0)
              {
                v145 = 4294967126;
              }

              else
              {
                v145 = 0;
              }

              CMMThrowExceptionOnError(v145);
              v143 = v186 + v138;
            }

            *v142 = &unk_1F0E09180;
            v142[1] = 1;
            v142[3] = v143;
            v142[4] = v137;
            v142[2] = 0;
            *(v4 + 12) = v142;
            v148 = CMMBase::NewInternal(0x28, v181, v140, v141);
            v149 = v186;
            if (v186)
            {
              if (v138 <= *(&v186 + 1))
              {
                v150 = v66;
              }

              else
              {
                v150 = *(&v186 + 1) - 48;
              }

              if (v150 <= 0)
              {
                v151 = 4294967126;
              }

              else
              {
                v151 = 0;
              }

              CMMThrowExceptionOnError(v151);
              v149 = v186 + 48;
            }

            *v148 = &unk_1F0E09180;
            v148[1] = 1;
            v148[3] = v149;
            v148[4] = v66;
            v148[2] = 0;
            *(v4 + 13) = v148;
            v120 = CMMBase::NewInternal(0x28, v181, v146, v147);
            v121 = v136 << 8;
            v122 = v186;
            if (!v186)
            {
LABEL_267:
              v44 = 0;
              *v120 = &unk_1F0E09180;
              v120[1] = 1;
              v120[3] = v122;
              v120[4] = v121;
              v120[2] = 0;
              *(v4 + 14) = v120;
              goto LABEL_305;
            }

            if (v139 <= *(&v186 + 1))
            {
              v152 = v136 << 8;
            }

            else
            {
              v152 = *(&v186 + 1) - v106;
            }

            if (v152 <= 0)
            {
              v124 = 4294967126;
            }

            else
            {
              v124 = 0;
            }
          }

          CMMThrowExceptionOnError(v124);
          v122 = v186 + v106;
          goto LABEL_267;
        }

        if (a2 <= 1633763938)
        {
          v13 = -1110589744;
          goto LABEL_95;
        }

        if (a2 != 1633763939 && a2 != 1633765219)
        {
          if (a2 != 1633767247)
          {
            goto LABEL_281;
          }

          v72 = CMMBase::NewInternal(0x50, *(a1 + 24), v11, v12);
          v44 = v72;
          v73 = v186;
          *v72 = &unk_1F0E08C48;
          *(v72 + 2) = 1633767247;
          v72[3] = v9;
          v72[4] = *(&v73 + 1);
          v72[2] = 0;
          if (v9)
          {
            *(v9 + 16) = v72;
          }

          v72[5] = v73;
          *(v72 + 24) = 0;
          *v72 = &unk_1F0E09598;
          if (*(&v73 + 1) >= 0x20uLL)
          {
            v74 = 0;
          }

          else
          {
            v74 = 4294967126;
          }

          CMMThrowExceptionOnError(v74);
          v4 = 0;
          v75 = v44[5];
          *(v44 + 13) = bswap32(v75[2]);
          *(v44 + 14) = v75[3];
          *(v44 + 15) = v75[4];
          *(v44 + 16) = v75[5];
          *(v44 + 17) = v75[6];
          *(v44 + 18) = v75[7];
          goto LABEL_305;
        }

LABEL_268:
        v44 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
        CMMXYZTag::CMMXYZTag(v44, a2, v186, *(&v186 + 1), v9);
LABEL_304:
        v4 = 0;
        goto LABEL_305;
      }

      if (a2 <= 1649693250)
      {
        if (a2 > 1633773414)
        {
          if (a2 == 1633773415)
          {
LABEL_271:
            v153 = bswap32(*v186);
            switch(v153)
            {
              case 0x484C4720u:
                if ((*(*a1 + 104))(a1))
                {
                  v165 = 0;
                }

                else
                {
                  v165 = 4294967126;
                }

                CMMThrowExceptionOnError(v165);
                v168 = CMMBase::NewInternal(0x58, *(a1 + 24), v166, v167);
                v44 = v168;
                v169 = *(a1 + 160);
                do
                {
                  v170 = v169;
                  if (!v169)
                  {
                    break;
                  }

                  v169 = *(v169 + 16);
                }

                while (v169);
                CMMCurveTag::CMMCurveTag(v168, a2, v186, *(&v186 + 1), v170);
                *v44 = &unk_1F0E08EE8;
                *(v44 + 4) = xmmword_19A96E240;
                *(v44 + 20) = 1051372203;
                CMMHLGCurveTag::Initialize(v44);
                goto LABEL_304;
              case 0x50512020u:
                if ((*(*a1 + 104))(a1))
                {
                  v159 = 0;
                }

                else
                {
                  v159 = 4294967126;
                }

                CMMThrowExceptionOnError(v159);
                v162 = CMMBase::NewInternal(0x60, *(a1 + 24), v160, v161);
                v44 = v162;
                v163 = *(a1 + 160);
                do
                {
                  v164 = v163;
                  if (!v163)
                  {
                    break;
                  }

                  v163 = *(v163 + 16);
                }

                while (v163);
                CMMCurveTag::CMMCurveTag(v162, a2, v186, *(&v186 + 1), v164);
                *v44 = &unk_1F0E08E28;
                v44[8] = 0;
                *(v44 + 9) = xmmword_19A96E230;
                *(v44 + 22) = 1100316672;
                CMMPQCurveTag::Initialize(v44);
                goto LABEL_304;
              case 0x70617261u:
                v44 = CMMBase::NewInternal(0x80, *(a1 + 24), v11, v12);
                CMMParaCurveTag::CMMParaCurveTag(v44, a2, v186, *(&v186 + 1), v9);
                goto LABEL_304;
            }

LABEL_303:
            v44 = 0;
            goto LABEL_304;
          }

          goto LABEL_269;
        }

        if (a2 != 1633768035)
        {
          v18 = 25191;
          goto LABEL_270;
        }

        goto LABEL_268;
      }

      if (a2 > 1651208307)
      {
        if (a2 != 1651208308)
        {
          if (a2 == 1667851120)
          {
            v129 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
            v4 = v129;
            v130 = v186;
            *v129 = &unk_1F0E08C48;
            *(v129 + 2) = 1667851120;
            *(v129 + 3) = v9;
            *(v129 + 4) = *(&v130 + 1);
            *(v129 + 2) = 0;
            if (v9)
            {
              *(v9 + 16) = v129;
            }

            *(v129 + 5) = v130;
            *(v129 + 24) = 0;
            *v129 = &unk_1F0E09740;
            v131 = *v130;
            if (*(&v130 + 1) >= 0xCuLL)
            {
              v132 = 0;
            }

            else
            {
              v132 = 4294967126;
            }

            CMMThrowExceptionOnError(v132);
            if (v131 == 1885563235)
            {
              v133 = 0;
            }

            else
            {
              v133 = 4294967126;
            }

            CMMThrowExceptionOnError(v133);
            v44 = 0;
            *(v4 + 50) = *(*(v4 + 5) + 8);
            goto LABEL_305;
          }

          if (a2 != 1668313716)
          {
            goto LABEL_281;
          }

          v15 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
          v4 = v15;
          v16 = v186;
          *v15 = &unk_1F0E08C48;
          *(v15 + 2) = 1668313716;
          *(v15 + 3) = v9;
          *(v15 + 4) = *(&v16 + 1);
          *(v15 + 2) = 0;
          if (v9)
          {
            *(v9 + 16) = v15;
          }

          *(v15 + 5) = v16;
          *(v15 + 24) = 0;
          *v15 = &unk_1F0E08CD8;
          if (*(&v16 + 1) >= 9uLL)
          {
            v17 = 0;
          }

          else
          {
            v17 = 4294967126;
          }

          goto LABEL_240;
        }

        goto LABEL_149;
      }

      if (a2 != 1649693251)
      {
        v14 = 1649957210;
LABEL_148:
        if (a2 != v14)
        {
          goto LABEL_281;
        }

        goto LABEL_149;
      }

      goto LABEL_154;
    }

    if (a2 <= 1852009521)
    {
      if (a2 > 1733843289)
      {
        if (a2 <= 1751405637)
        {
          if (a2 != 1733843290)
          {
            if (a2 != 1734438260)
            {
              goto LABEL_281;
            }

            goto LABEL_96;
          }

          goto LABEL_149;
        }

        if (a2 == 1751405638)
        {
          v154 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
          v44 = v154;
          v155 = v186;
          *v154 = &unk_1F0E08C48;
          *(v154 + 2) = 1751405638;
          v154[3] = v9;
          v154[4] = *(&v155 + 1);
          v154[2] = 0;
          if (v9)
          {
            *(v9 + 16) = v154;
          }

          v154[5] = v155;
          *(v154 + 24) = 0;
          *v154 = &unk_1F0E095D0;
          if (*(&v155 + 1) >= 0xCuLL)
          {
            v156 = 0;
          }

          else
          {
            v156 = 4294967126;
          }

          CMMThrowExceptionOnError(v156);
          goto LABEL_304;
        }

        if (a2 != 1800688195)
        {
          v14 = 1819635049;
          goto LABEL_148;
        }

        goto LABEL_154;
      }

      if (a2 <= 1684893283)
      {
        if (a2 == 1684370275)
        {
          v4 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
          CMMTextDescTag::CMMTextDescTag(v4, 1684370275, v186, *(&v186 + 1), v9);
        }

        else
        {
          if (a2 != 1684890724)
          {
            goto LABEL_281;
          }

          v4 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
          CMMTextDescTag::CMMTextDescTag(v4, 1684890724, v186, *(&v186 + 1), v9);
        }

LABEL_150:
        v44 = 0;
        goto LABEL_305;
      }

      if (a2 == 1684893284)
      {
        v4 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
        CMMTextDescTag::CMMTextDescTag(v4, 1684893284, v186, *(&v186 + 1), v9);
        goto LABEL_150;
      }

      v76 = 1733579331;
LABEL_153:
      if (a2 != v76)
      {
        goto LABEL_281;
      }

LABEL_154:
      v77 = bswap32(*v186);
      if (v77 == 1668641398)
      {
        v125 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
        v4 = v125;
        v126 = v186;
        *v125 = &unk_1F0E08C48;
        *(v125 + 2) = a2;
        *(v125 + 3) = v9;
        *(v125 + 4) = *(&v126 + 1);
        *(v125 + 2) = 0;
        if (v9)
        {
          *(v9 + 16) = v125;
        }

        *(v125 + 5) = v126;
        *(v125 + 24) = 0;
        *v125 = &unk_1F0E08D10;
        CMMCurveTag::Initialize(v125);
      }

      else
      {
        if (v77 != 1885434465)
        {
          goto LABEL_303;
        }

        v4 = CMMBase::NewInternal(0x80, *(a1 + 24), v11, v12);
        CMMParaCurveTag::CMMParaCurveTag(v4, a2, v186, *(&v186 + 1), v9);
      }

      goto LABEL_150;
    }

    if (a2 <= 1886610800)
    {
      if ((a2 - 1886545200) < 3)
      {
        goto LABEL_96;
      }

      if (a2 != 1852009522)
      {
        goto LABEL_281;
      }

      v19 = CMMBase::NewInternal(0xA0, *(a1 + 24), v11, v12);
      v4 = v19;
      v20 = *(a1 + 24);
      v21 = *(a1 + 52);
      if (v21 == 1281450528)
      {
        v21 = 1347182946;
      }

      *v19 = &unk_1F0E08C48;
      *(v19 + 2) = 1852009522;
      v19[4] = 0;
      v22 = v19 + 4;
      v19[5] = 0;
      *(v19 + 24) = 0;
      v19[2] = 0;
      v19[3] = v9;
      if (v9)
      {
        *(v9 + 16) = v19;
      }

      *v19 = &unk_1F0E09560;
      *(v19 + 13) = v21;
      if (*(&v186 + 1) >= 0x55uLL)
      {
        v23 = 0;
      }

      else
      {
        v23 = 4294967126;
      }

      CMMThrowExceptionOnError(v23);
      v26 = *(v4 + 13);
      if (v26 != 1347182946 && v26 != 1482250784)
      {
        v175 = __cxa_allocate_exception(4uLL);
        *v175 = -171;
      }

      *(v4 + 7) = 0;
      *(v4 + 8) = 0;
      *(v4 + 9) = 0;
      if (v186)
      {
        if (*(&v186 + 1) >= 84)
        {
          v27 = 76;
        }

        else
        {
          v27 = *(&v186 + 1) - 8;
        }

        if (v27 <= 0)
        {
          v28 = 4294967126;
        }

        else
        {
          v28 = 0;
        }

        CMMThrowExceptionOnError(v28);
        memcpy(v4 + 80, (v186 + 8), v27);
      }

      v29 = 80;
      do
      {
        *&v4[v29] = bswap32(*&v4[v29]);
        v29 += 4;
      }

      while (v29 != 92);
      v30 = *(v4 + 21);
      v31 = *(v4 + 22);
      if (v31)
      {
        v32 = 4294967126;
        if (!(v31 >> 30))
        {
          if (v30 <= 0x7FFFFFFFu / (2 * v31))
          {
            v32 = 0;
          }

          else
          {
            v32 = 4294967126;
          }
        }

        CMMThrowExceptionOnError(v32);
      }

      v33 = (2 * v31 + 38) * v30;
      *v22 = v33 + 84;
      if ((v33 + 84) > *(&v186 + 1))
      {
        v174 = __cxa_allocate_exception(4uLL);
        *v174 = -50;
      }

      v34 = CMMBase::NewInternal(0x28, v20, v24, v25);
      *v34 = &unk_1F0E09180;
      v34[1] = 1;
      v34[3] = 0;
      v34[4] = v33;
      v37 = CMMBase::NewInternal(v33, v20, v35, v36);
      v34[2] = v37;
      if (v186)
      {
        if (v33 + 84 > *(&v186 + 1))
        {
          v33 = *(&v186 + 1) - 84;
        }

        if (v33 <= 0)
        {
          v38 = 4294967126;
        }

        else
        {
          v38 = 0;
        }

        CMMThrowExceptionOnError(v38);
        memcpy(v37, (v186 + 84), v33);
        v37 = v34[2];
      }

      v39 = CMMTable::UInt8Data(v37, v34[3]);
      v40 = *(v4 + 21);
      if (v40)
      {
        for (i = 0; i != v40; ++i)
        {
          if (v31 != -3)
          {
            v42 = 32;
            v43 = (v31 + 3);
            do
            {
              *(v39 + v42) = bswap32(*(v39 + v42)) >> 16;
              v42 += 2;
              --v43;
            }

            while (v43);
          }

          v39 += 2 * (v31 + 3) + 32;
        }
      }

      v44 = 0;
      v45 = 64;
      if (*(v4 + 13) == 1482250784)
      {
        v45 = 56;
      }

      *&v4[v45] = v34;
LABEL_305:
      v176 = *(a1 + 48);
      if (v176 <= 1296255029)
      {
        if (v176 == 1281450528)
        {
          v176 = 1145856354;
        }

        else if (v176 == 1296255029)
        {
          v176 = 893602898;
        }
      }

      else
      {
        switch(v176)
        {
          case 1296255030:
            v176 = 910380114;
            break;
          case 1296255031:
            v176 = 927157330;
            break;
          case 1296255032:
            v176 = 943934546;
            break;
        }
      }

      v177 = CMMGetChannelCountFromCMMSpace(v176);
      if (*(a1 + 52) == 1281450528)
      {
        v178 = 1347182946;
      }

      else
      {
        v178 = *(a1 + 52);
      }

      v179 = CMMGetChannelCountFromCMMSpace(v178);
      if (v4)
      {
        if (!(*(*v4 + 32))(v4, v177, v179))
        {
LABEL_327:
          if (!v4)
          {
            v4 = v44;
          }

          if (!*(a1 + 160))
          {
            *(a1 + 160) = v4;
          }

          CMMTagDataAccess::~CMMTagDataAccess(&v183);
          goto LABEL_332;
        }
      }

      else
      {
        if (!v44 || !(*(*v44 + 32))(v44, v177, v179))
        {
          goto LABEL_326;
        }

        v4 = v44;
        v44 = 0;
      }

      (*(*v4 + 8))(v4);
LABEL_326:
      v4 = 0;
      goto LABEL_327;
    }

    if (a2 <= 1918392665)
    {
      if (a2 != 1886610801)
      {
        v76 = 1918128707;
        goto LABEL_153;
      }

      v127 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
      v4 = v127;
      v128 = v186;
      *v127 = &unk_1F0E08C48;
      *(v127 + 2) = 1886610801;
      *(v127 + 3) = v9;
      *(v127 + 4) = *(&v128 + 1);
      *(v127 + 2) = 0;
      if (v9)
      {
        *(v9 + 16) = v127;
      }

      *(v127 + 5) = v128;
      *(v127 + 24) = 0;
      *v127 = &unk_1F0E09640;
      if (*(&v128 + 1) >= 0xDuLL)
      {
        v17 = 0;
      }

      else
      {
        v17 = 4294967126;
      }
    }

    else
    {
      if (a2 == 1918392666)
      {
LABEL_149:
        v4 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
        CMMXYZTag::CMMXYZTag(v4, a2, v186, *(&v186 + 1), v9);
        goto LABEL_150;
      }

      if (a2 != 1952801640)
      {
        v14 = 2004119668;
        goto LABEL_148;
      }

      v134 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
      v4 = v134;
      v135 = v186;
      *v134 = &unk_1F0E08C48;
      *(v134 + 2) = 1952801640;
      *(v134 + 3) = v9;
      *(v134 + 4) = *(&v135 + 1);
      *(v134 + 2) = 0;
      if (v9)
      {
        *(v9 + 16) = v134;
      }

      *(v134 + 5) = v135;
      *(v134 + 24) = 0;
      *v134 = &unk_1F0E09608;
      if (*(&v135 + 1) >= 0xCuLL)
      {
        v17 = 0;
      }

      else
      {
        v17 = 4294967126;
      }
    }

LABEL_240:
    CMMThrowExceptionOnError(v17);
    goto LABEL_150;
  }

  while (*(v4 + 2) != a2)
  {
    v4 = *(v4 + 2);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  return v4;
}

uint64_t CMMProfileMaker::IsMatrixHDRProfile(const ColorSyncProfile *a1, int a2, int a3, int a4)
{
  if (a3 != 1482250784 || a2 != 1380401696)
  {
    return 0;
  }

  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(0x63696370u);
  v8 = ColorSyncProfileContainsTag(a1, SignatureFromFourCharCode);
  CFRelease(SignatureFromFourCharCode);
  if (!v8)
  {
    v17 = ColorSyncCreateSignatureFromFourCharCode(0x68645446u);
    v18 = ColorSyncProfileContainsTag(a1, v17);
    CFRelease(v17);
    if (v18)
    {
      v19 = ColorSyncCreateSignatureFromFourCharCode(0x7258595Au);
      v20 = ColorSyncProfileContainsTag(a1, v19);
      CFRelease(v19);
      if (v20)
      {
        v21 = ColorSyncCreateSignatureFromFourCharCode(0x6758595Au);
        v22 = ColorSyncProfileContainsTag(a1, v21);
        CFRelease(v21);
        if (v22)
        {
          v23 = ColorSyncCreateSignatureFromFourCharCode(0x6258595Au);
          v24 = ColorSyncProfileContainsTag(a1, v23);
          CFRelease(v23);
          if (v24)
          {
            Tag = ColorSyncProfileGetTag(a1, @"hdTF");
            if (Tag)
            {
              v26 = Tag;
              BytePtr = CFDataGetBytePtr(Tag);
              Length = CFDataGetLength(v26);
              if (BytePtr)
              {
                if (Length >= 0xC && *BytePtr == 543648115)
                {
                  v29 = bswap32(*(BytePtr + 2));
                  result = 1;
                  if (v29 == 1212958496 || v29 == 1347493920)
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_27:
    v30 = ColorSyncCreateSignatureFromFourCharCode(0x61617267u);
    v31 = ColorSyncProfileContainsTag(a1, v30);
    CFRelease(v30);
    if (!v31)
    {
      goto LABEL_56;
    }

    v32 = ColorSyncCreateSignatureFromFourCharCode(0x61616767u);
    v33 = ColorSyncProfileContainsTag(a1, v32);
    CFRelease(v32);
    if (!v33)
    {
      goto LABEL_56;
    }

    v34 = ColorSyncCreateSignatureFromFourCharCode(0x61616267u);
    v35 = ColorSyncProfileContainsTag(a1, v34);
    CFRelease(v34);
    if (!v35)
    {
      goto LABEL_56;
    }

    v36 = ColorSyncCreateSignatureFromFourCharCode(0x61615263u);
    v37 = ColorSyncProfileContainsTag(a1, v36);
    CFRelease(v36);
    if (v37 && (v38 = ColorSyncCreateSignatureFromFourCharCode(0x61614763u), v39 = ColorSyncProfileContainsTag(a1, v38), CFRelease(v38), v39) && CMMProfileMaker::TagExists(a1, 0x61614263))
    {
      if ((a4 & 1) == 0)
      {
        v40 = 0;
        while (1)
        {
          result = ColorSyncProfileGetTag(a1, off_1E7523998[v40]);
          if (!result)
          {
            break;
          }

          v41 = result;
          v42 = CFDataGetBytePtr(result);
          v43 = CFDataGetLength(v41);
          if (v42)
          {
            v44 = v43 >= 0xC;
          }

          else
          {
            v44 = 0;
          }

          if (!v44)
          {
            return 0;
          }

          result = *v42 == 538988880 || *v42 == 541543496;
          if (v40 <= 1)
          {
            ++v40;
            if (result)
            {
              continue;
            }
          }

          return result;
        }

        return result;
      }
    }

    else
    {
LABEL_56:
      if (!a4)
      {
        return 0;
      }

      v46 = ColorSyncCreateSignatureFromFourCharCode(0x72545243u);
      v47 = ColorSyncProfileContainsTag(a1, v46);
      CFRelease(v46);
      if (!v47)
      {
        return 0;
      }

      v48 = ColorSyncCreateSignatureFromFourCharCode(0x67545243u);
      v49 = ColorSyncProfileContainsTag(a1, v48);
      CFRelease(v48);
      if (!v49)
      {
        return 0;
      }

      v50 = ColorSyncCreateSignatureFromFourCharCode(0x62545243u);
      v51 = ColorSyncProfileContainsTag(a1, v50);
      CFRelease(v50);
      if (!v51)
      {
        return 0;
      }

      v52 = ColorSyncCreateSignatureFromFourCharCode(0x7258595Au);
      v53 = ColorSyncProfileContainsTag(a1, v52);
      CFRelease(v52);
      if (!v53 || !CMMProfileMaker::TagExists(a1, 0x6758595A) || !CMMProfileMaker::TagExists(a1, 0x6258595A))
      {
        return 0;
      }
    }

    return 1;
  }

  v9 = ColorSyncProfileGetTag(a1, @"cicp");
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = v9;
  v11 = CFDataGetBytePtr(v9);
  v12 = CFDataGetLength(v10);
  result = 0;
  if (v11 && v12 >= 0xC)
  {
    if (*v11 != 1885563235)
    {
      return 0;
    }

    v14 = v11[9];
    v15 = v14 & 0xFFFFFFFD;
    v16 = v14 == 8 ? a4 : 0;
    result = 1;
    if (v15 != 16 && (v16 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMMProfileMaker::IsMatrixBased(const ColorSyncProfile *a1, int a2, int a3)
{
  if (a3 != 1482250784)
  {
    return 0;
  }

  if (a2 > 1282766367)
  {
    if (a2 <= 1482250783)
    {
      if (a2 == 1282766368)
      {
        goto LABEL_16;
      }

      v4 = 1380401696;
    }

    else
    {
      if (a2 == 1482250784 || a2 == 1501067552)
      {
        goto LABEL_16;
      }

      v4 = 1497588338;
    }

LABEL_15:
    if (a2 != v4)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (a2 <= 1212961567)
  {
    if (a2 == 860048466)
    {
      goto LABEL_16;
    }

    v4 = 1129142560;
    goto LABEL_15;
  }

  if (a2 != 1212961568 && a2 != 1213421088)
  {
    v4 = 1281450528;
    goto LABEL_15;
  }

LABEL_16:
  if (ColorSyncProfileContainsSupportedCICP(a1, 0))
  {
    return 1;
  }

  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(0x72545243u);
  v7 = ColorSyncProfileContainsTag(a1, SignatureFromFourCharCode);
  CFRelease(SignatureFromFourCharCode);
  if (v7)
  {
    v8 = ColorSyncCreateSignatureFromFourCharCode(0x67545243u);
    v9 = ColorSyncProfileContainsTag(a1, v8);
    CFRelease(v8);
    if (v9)
    {
      v10 = ColorSyncCreateSignatureFromFourCharCode(0x62545243u);
      v11 = ColorSyncProfileContainsTag(a1, v10);
      CFRelease(v10);
      if (v11)
      {
        v12 = ColorSyncCreateSignatureFromFourCharCode(0x7258595Au);
        v13 = ColorSyncProfileContainsTag(a1, v12);
        CFRelease(v12);
        if (v13 && CMMProfileMaker::TagExists(a1, 0x6758595A) && CMMProfileMaker::TagExists(a1, 0x6258595A))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

CMMProfile *CMMProfileMaker::MakeProfile(CMMProfileMaker *this, const ColorSyncProfile *a2, CMMMemMgr *a3)
{
  v3 = a3;
  v6 = ColorSyncProfileCopyHeader(this);
  if (!v6)
  {
    exception = __cxa_allocate_exception(4uLL);
    v77 = -171;
LABEL_63:
    *exception = v77;
  }

  v7 = v6;
  BytePtr = CFDataGetBytePtr(v6);
  v10 = *(BytePtr + 3);
  v9 = *(BytePtr + 4);
  v11 = *(BytePtr + 5);
  CFRelease(v7);
  if (v10 <= 1852662635)
  {
    if (v10 == 1633842036)
    {
      SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
      v33 = ColorSyncProfileContainsTag(this, SignatureFromFourCharCode);
      CFRelease(SignatureFromFourCharCode);
      if (v33)
      {
        v16 = CMMBase::NewInternal(0xB8, a2, v34, v35);
        CMMProfile::CMMProfile(v16, this, a2);
        v18 = &unk_1F0E08B48;
        goto LABEL_41;
      }

      goto LABEL_61;
    }

    if (v10 != 1818848875)
    {
      if (v10 == 1835955314)
      {
        if (v9 == 1196573017)
        {
          v19 = ColorSyncCreateSignatureFromFourCharCode(0x6B545243u);
          v20 = ColorSyncProfileContainsTag(this, v19);
          CFRelease(v19);
          if (v20)
          {
            v16 = CMMBase::NewInternal(0xB8, a2, v21, v22);
            CMMProfile::CMMProfile(v16, this, a2);
            v18 = &unk_1F0E08748;
            goto LABEL_41;
          }

          goto LABEL_61;
        }

        if (CMMProfileMaker::IsMatrixHDRProfile(this, v9, v11, v3))
        {
          goto LABEL_40;
        }

        v63 = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
        v64 = ColorSyncProfileContainsTag(this, v63);
        CFRelease(v63);
        if (v64 && CMMProfileMaker::TagExists(this, 0x42324130))
        {
          v16 = CMMBase::NewInternal(0xB8, a2, v65, v66);
          CMMProfile::CMMProfile(v16, this, a2);
          v18 = &unk_1F0E088C8;
          goto LABEL_41;
        }

        if (CMMProfileMaker::IsMatrixBased(this, v9, v11))
        {
          v16 = CMMBase::NewInternal(0xE8, a2, v67, v68);
          CMMProfile::CMMProfile(v16, this, a2);
          *v69 = &unk_1F0E087C8;
          *(v69 + 184) = 0u;
          *(v69 + 200) = 0u;
          *(v69 + 216) = 0u;
          return v16;
        }
      }

LABEL_61:
      exception = __cxa_allocate_exception(4uLL);
      v77 = -170;
      goto LABEL_63;
    }

    v27 = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
    v28 = ColorSyncProfileContainsTag(this, v27);
    CFRelease(v27);
    if (!v28)
    {
      goto LABEL_61;
    }

    v16 = CMMBase::NewInternal(0xB8, a2, v29, v30);
    CMMProfile::CMMProfile(v16, this, a2);
    *v31 = &unk_1F0E08A48;
    *(v31 + 176) = 808464432;
  }

  else
  {
    if (v10 <= 1935896177)
    {
      if (v10 == 1852662636)
      {
        v36 = ColorSyncCreateSignatureFromFourCharCode(0x6E636C32u);
        v37 = ColorSyncProfileContainsTag(this, v36);
        CFRelease(v36);
        if (v37)
        {
          v16 = CMMBase::NewInternal(0xB8, a2, v38, v39);
          CMMProfile::CMMProfile(v16, this, a2);
          v18 = &unk_1F0E08BC8;
          goto LABEL_41;
        }
      }

      else if (v10 == 1886549106)
      {
        if (v9 == 1196573017)
        {
          v12 = ColorSyncCreateSignatureFromFourCharCode(0x6B545243u);
          v13 = ColorSyncProfileContainsTag(this, v12);
          CFRelease(v12);
          if (v13)
          {
            v16 = CMMBase::NewInternal(0xB8, a2, v14, v15);
            CMMProfile::CMMProfile(v16, this, a2);
            v18 = &unk_1F0E08948;
LABEL_41:
            *v17 = v18;
            return v16;
          }
        }

        else
        {
          v50 = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
          v51 = ColorSyncProfileContainsTag(this, v50);
          CFRelease(v50);
          if (v51)
          {
            v52 = ColorSyncCreateSignatureFromFourCharCode(0x42324130u);
            v53 = ColorSyncProfileContainsTag(this, v52);
            CFRelease(v52);
            if (v53)
            {
              v16 = CMMBase::NewInternal(0xB8, a2, v54, v55);
              CMMProfile::CMMProfile(v16, this, a2);
              v18 = &unk_1F0E089C8;
              goto LABEL_41;
            }
          }
        }
      }

      goto LABEL_61;
    }

    if (v10 != 1936744803)
    {
      if (v10 == 1935896178)
      {
        if (v9 == 1196573017)
        {
          v23 = ColorSyncCreateSignatureFromFourCharCode(0x6B545243u);
          v24 = ColorSyncProfileContainsTag(this, v23);
          CFRelease(v23);
          if (v24)
          {
            v16 = CMMBase::NewInternal(0xB8, a2, v25, v26);
            CMMProfile::CMMProfile(v16, this, a2);
            v18 = &unk_1F0E085C8;
            goto LABEL_41;
          }

          goto LABEL_61;
        }

        if (!CMMProfileMaker::IsMatrixHDRProfile(this, v9, v11, v3))
        {
          v58 = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
          v59 = ColorSyncProfileContainsTag(this, v58);
          CFRelease(v58);
          if (v59)
          {
            v16 = CMMBase::NewInternal(0xB8, a2, v60, v61);
            CMMProfile::CMMProfile(v16, this, a2);
            v18 = &unk_1F0E086C8;
            goto LABEL_41;
          }

          if (CMMProfileMaker::IsMatrixBased(this, v9, v11))
          {
            v16 = CMMBase::NewInternal(0xB8, a2, v70, v71);
            CMMProfile::CMMProfile(v16, this, a2);
            v18 = &unk_1F0E08648;
            goto LABEL_41;
          }

          goto LABEL_61;
        }

LABEL_40:
        v16 = CMMBase::NewInternal(0x108, a2, v56, v57);
        CMMProfile::CMMProfile(v16, this, a2);
        *(v17 + 216) = 0u;
        *(v17 + 200) = 0u;
        *(v17 + 184) = 0u;
        v18 = &unk_1F0E08848;
        goto LABEL_41;
      }

      goto LABEL_61;
    }

    v40 = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
    v41 = ColorSyncProfileContainsTag(this, v40);
    CFRelease(v40);
    if (!v41)
    {
      goto LABEL_61;
    }

    v42 = ColorSyncCreateSignatureFromFourCharCode(0x42324130u);
    v43 = ColorSyncProfileContainsTag(this, v42);
    CFRelease(v42);
    if (!v43)
    {
      goto LABEL_61;
    }

    v16 = CMMBase::NewInternal(0xB8, a2, v44, v45);
    CMMProfile::CMMProfile(v16, this, a2);
    *v46 = &unk_1F0E08AC8;
    *(v46 + 180) = 0;
    if (*(v46 + 43) == 2 && *(v16 + 12) == 1281450528 && *(v16 + 13) == 1281450528)
    {
      Tag = CMMProfile::GetTag(v16, 1093812784);
      if (Tag)
      {
        v48 = **Tag;
      }

      else
      {
        v49 = 0;
      }

      v72 = (*(*v16 + 88))(v16, 1110589744);
      if (v72)
      {
        v73 = **v72;
        if (v49)
        {
          v75 = v74;
          if (v74)
          {
            if ((*(*v49 + 64))(v49) == 2 && (*(*v75 + 64))(v75) == 2 && v49[45] == 2 && v75[45] == 2 && v49[46] == 2 && v75[46] == 2)
            {
              *(v16 + 180) = 1;
            }
          }
        }
      }
    }
  }

  return v16;
}

void CMMMemMgr::CMMMemMgr(CMMMemMgr *this)
{
  v2 = malloc_type_calloc(0x50uLL, 0x10uLL, 0x10200409A1873C7uLL);
  *this = v2;
  if (v2)
  {
    *(v2 + 18) = 1;
    pthread_mutex_init((v2 + 8), 0);
  }
}

void *CMMBase::NewInternal(CMMBase *this, void **a2, CMMMemMgr *a3, const char *a4)
{
  if (this >= 0xFFFFFFFFFFFFFFC1 || (v5 = (this + 63) & 0xFFFFFFFFFFFFFFE0, v5 != ((this + 31) & 0xFFFFFFFFFFFFFFE0) + 32))
  {
    exception = __cxa_allocate_exception(4uLL);
    v16 = -171;
    goto LABEL_12;
  }

  v7 = malloc_type_calloc(v5, 0x10uLL, 0xA00400A0658E3uLL);
  if (!v7)
  {
    exception = __cxa_allocate_exception(4uLL);
    v16 = -108;
LABEL_12:
    *exception = v16;
  }

  v8 = v7;
  v9 = (*a2 + 1);
  v8[3] = v9;
  pthread_mutex_lock(v9);
  v10 = *a2;
  v11 = **a2;
  if (v11)
  {
    v12 = 1;
    do
    {
      v13 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v12 = 2;
    v13 = *a2;
  }

  *v13 = v8;
  v8[v12] = v13;
  pthread_mutex_unlock((v10 + 8));
  return v8 + 4;
}

void CMMProfile::CMMProfile(CMMProfile *this, CFTypeRef cf, CMMMemMgr *a3)
{
  *this = &unk_1F0E084C8;
  *(this + 2) = 1;
  *(this + 44) = 808464432;
  *(this + 2) = cf;
  *(this + 3) = a3;
  if (!cf)
  {
    *(this + 20) = 0;
    *(this + 21) = 0;
LABEL_5:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  CFRetain(cf);
  *(this + 20) = 0;
  *(this + 21) = 0;
  v5 = ColorSyncProfileCopyHeader(cf);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  BytePtr = CFDataGetBytePtr(v5);
  v8 = *(BytePtr + 3);
  v10 = *BytePtr;
  v9 = *(BytePtr + 1);
  *(this + 4) = *(BytePtr + 2);
  *(this + 5) = v8;
  *(this + 2) = v10;
  *(this + 3) = v9;
  v11 = *(BytePtr + 7);
  v13 = *(BytePtr + 4);
  v12 = *(BytePtr + 5);
  *(this + 8) = *(BytePtr + 6);
  *(this + 9) = v11;
  *(this + 6) = v13;
  *(this + 7) = v12;
  CFRelease(v6);
}

_OWORD *createRuntimeInstance(unsigned int a1, unsigned int a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  ColorSpacetNofComponents = getColorSpacetNofComponents(a1);
  v7 = getColorSpacetNofComponents(a2);
  v8 = 0;
  if (ColorSpacetNofComponents)
  {
    v9 = v7;
    if (v7)
    {
      if (ColorSyncTransformGetTypeID_predicate != -1)
      {
        dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
      }

      Instance = _CFRuntimeCreateInstance();
      v8 = Instance;
      if (Instance)
      {
        Instance[1] = 0u;
        Instance[7] = 0u;
        Instance[8] = 0u;
        Instance[5] = 0u;
        Instance[6] = 0u;
        Instance[3] = 0u;
        Instance[4] = 0u;
        Instance[2] = 0u;
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(v8 + 14) = Mutable;
        if (Mutable && (v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v8 + 17) = v12) != 0))
        {
          SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(a1);
          v14 = ColorSyncCreateSignatureFromFourCharCode(a2);
          v18.__sig = 0;
          *v18.__opaque = 0;
          CFDictionarySetValue(*(v8 + 14), kColorSyncTransformSrcSpace, SignatureFromFourCharCode);
          if (a2 == 1734438260)
          {
            v15 = kColorSyncTransformGamutCheck;
          }

          else
          {
            v15 = v14;
          }

          CFDictionarySetValue(*(v8 + 14), kColorSyncTransformDstSpace, v15);
          CFRelease(SignatureFromFourCharCode);
          CFRelease(v14);
          pthread_mutexattr_init(&v18);
          pthread_mutexattr_settype(&v18, 2);
          pthread_mutex_init((v8 + 1), &v18);
          pthread_mutexattr_destroy(&v18);
          *(v8 + 11) = ColorSpacetNofComponents;
          *(v8 + 12) = v9;
          if (a3)
          {
            *(v8 + 15) = CFRetain(a3);
          }
        }

        else
        {
          CFRelease(v8);
          v8 = 0;
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t AppleCMMInitializeTransform(uint64_t result)
{
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_19A916B68(void *a1, int a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ConversionManager::~ConversionManager(va);
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v13 = *v12;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (a4)
    {
      v14 = *a4;
      if (*a4)
      {
        do
        {
          v15 = *v14;
          free(v14);
          v14 = v15;
        }

        while (v15);
      }
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (a4)
    {
      v16 = *a4;
      if (*a4)
      {
        do
        {
          v17 = *v16;
          free(v16);
          v16 = v17;
        }

        while (v17);
      }
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x19A9169CCLL);
}

void sub_19A916C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

ColorSyncProfile *ColorSyncMakeProfile(CFTypeRef cf)
{
  v95 = *MEMORY[0x1E69E9840];
  *v86 = *"lppa";
  memset(&v86[16], 0, 32);
  *&bytes[16] = unk_19A96E540;
  v83 = xmmword_19A96E550;
  v84 = *"LPPA";
  v85 = xmmword_19A96E570;
  *bytes = *"";
  memset(v81, 0, sizeof(v81));
  *v80 = 1954047348;
  if (!cf)
  {
    goto LABEL_17;
  }

  v2 = CFGetTypeID(cf);
  if (v2 != CFDictionaryGetTypeID())
  {
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(cf, @"profileVersion");
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(v4);
      v7 = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
      if (v7 <= 0x1F)
      {
        buffer = 0u;
        v88 = 0u;
        if (CFStringGetCString(v4, &buffer, v7, 0x8000100u) == 1)
        {
          v8 = strchr(&buffer, 46);
          v9 = v8;
          if (v8)
          {
            v10 = strchr(v8 + 1, 46);
            v11 = v10;
            if (v10)
            {
              v12 = atoi(v10 + 1);
              *v11 = 0;
              LODWORD(v11) = v12 & 0xF;
            }

            v13 = atoi(v9 + 1);
            *v9 = 0;
            LODWORD(v9) = (v11 | (16 * v13)) << 16;
          }

          v14 = v9 | (atoi(&buffer) << 24);
          goto LABEL_18;
        }
      }

LABEL_17:
      v14 = 34603008;
      goto LABEL_18;
    }
  }

  if (!CFDictionaryContainsKey(cf, @"paraR"))
  {
    goto LABEL_17;
  }

  v14 = 34603008;
  if (CFDictionaryContainsKey(cf, @"paraG"))
  {
    if (CFDictionaryContainsKey(cf, @"paraB"))
    {
      v14 = 0x4000000;
    }

    else
    {
      v14 = 34603008;
    }
  }

LABEL_18:
  *&bytes[8] = v14;
  *&buffer = time(0);
  v15 = localtime(&buffer);
  v16 = v15->u16[2] | (v15->i32[0] << 16);
  v17 = vand_s8(v15[1], 0xFFFF0000FFFFLL);
  v18.i64[0] = v17.u32[0];
  v18.i64[1] = v17.u32[1];
  v19 = vshlq_u64(v18, xmmword_19A96DF40);
  v20 = vorrq_s8(vdupq_laneq_s64(v19, 1), v19).u64[0] | ((v15[2].i32[0] << 16) + 0x10000) | (v15[2].i32[1] + 1900);
  *&buffer = v20;
  DWORD2(buffer) = v16;
  if (cf)
  {
    v21 = CFGetTypeID(cf);
    if (v21 == CFDictionaryGetTypeID())
    {
      v22 = CFDictionaryGetValue(cf, @"Date");
      if (v22)
      {
        v23 = v22;
        v24 = CFGetTypeID(v22);
        if (v24 == CFArrayGetTypeID() && CFArrayGetCount(v23) == 6)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v23, 0);
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, &buffer);
          v26 = CFArrayGetValueAtIndex(v23, 1);
          CFNumberGetValue(v26, kCFNumberSInt16Type, &buffer + 2);
          v27 = CFArrayGetValueAtIndex(v23, 2);
          CFNumberGetValue(v27, kCFNumberSInt16Type, &buffer + 4);
          v28 = CFArrayGetValueAtIndex(v23, 3);
          CFNumberGetValue(v28, kCFNumberSInt16Type, &buffer + 6);
          v29 = CFArrayGetValueAtIndex(v23, 4);
          CFNumberGetValue(v29, kCFNumberSInt16Type, &buffer + 8);
          v30 = CFArrayGetValueAtIndex(v23, 5);
          CFNumberGetValue(v30, kCFNumberSInt16Type, &buffer + 10);
          v20 = buffer;
          v16 = DWORD2(buffer);
        }
      }
    }
  }

  *&bytes[24] = v20;
  LODWORD(v83) = v16;
  snprintf(&v81[4], 0xC7uLL, "Copyright Apple Inc., %4d", v20);
  if (!cf)
  {
    goto LABEL_79;
  }

  v31 = CFGetTypeID(cf);
  if (v31 != CFDictionaryGetTypeID())
  {
    goto LABEL_79;
  }

  v32 = CFDictionaryGetValue(cf, @"profileType");
  v33 = v32;
  if (!v32)
  {
    goto LABEL_80;
  }

  if (!CFEqual(v32, @"abstract"))
  {
    if (CFEqual(v33, @"abstractWithVals"))
    {
      v38 = longFromDictionary(cf, @"gridPoints");
      if (v38 - 51 >= 0xFFFFFFFFFFFFFFCFLL)
      {
        v39 = v38;
      }

      else
      {
        v39 = 17;
      }

      v93 = doubleFromDictionary(cf, @"limitHueMin");
      v94 = doubleFromDictionary(cf, @"limitHueMax");
      *&buffer = doubleFromDictionary(cf, @"brightnessDarks");
      *(&buffer + 1) = doubleFromDictionary(cf, @"brightnessMids");
      *&v88 = doubleFromDictionary(cf, @"brightnessLights");
      v91 = doubleFromDictionary(cf, @"hue");
      v92 = doubleFromDictionary(cf, @"sat");
      v40 = doubleFromDictionary(cf, @"tint");
      if (v40 == 0.0)
      {
        v43 = doubleFromDictionary(cf, @"tintDarks");
        v41 = doubleFromDictionary(cf, @"tintMids");
        v42 = doubleFromDictionary(cf, @"tintLights");
      }

      else
      {
        v41 = v40;
        v42 = v40 * 0.5;
        v43 = 0.0;
      }

      *(&v88 + 1) = v43;
      v89 = v41;
      v90 = v42;
      v49 = create(0, 0, 1, 0);
      v33 = v49;
      if (v49)
      {
        qmemcpy(&bytes[12], "tsba baL baL", 12);
        addXYZTag(v49, @"wtpt", *(&v85 + 4), HIDWORD(v85));
        addAbstractA2B(v33, v39, _LabToLabValsProc, &buffer);
      }
    }

    else
    {
      if (CFEqual(v33, @"displayRGB"))
      {
        DisplayRGB = makeDisplayRGB();
      }

      else if (CFEqual(v33, @"appleCopy"))
      {
        DisplayRGB = makeAppleCopy(bytes, cf);
      }

      else if (CFEqual(v33, @"calGray"))
      {
        DisplayRGB = makeCalGray(bytes, cf);
      }

      else if (CFEqual(v33, @"calRGB"))
      {
        DisplayRGB = makeCalRGB(bytes, cf);
      }

      else if (CFEqual(v33, @"concatenate"))
      {
        DisplayRGB = makeConcatenated(bytes, cf);
      }

      else if (CFEqual(v33, @"tableBasedRGB"))
      {
        DisplayRGB = makeTableBasedRGB(bytes, cf);
      }

      else if (CFEqual(v33, @"copyTags"))
      {
        DisplayRGB = makeByCopyingTags(bytes, cf);
      }

      else if (CFEqual(v33, @"copyWithGTC"))
      {
        DisplayRGB = makeCopyWithFlexGTC(bytes, cf);
      }

      else if (CFEqual(v33, @"FlexGTC.based.A2B0"))
      {
        DisplayRGB = makeCopyWithFlexGTCBasedA2B0(bytes, cf, 0);
      }

      else if (CFEqual(v33, @"XYZ"))
      {
        DisplayRGB = makeXYZProfile(bytes);
      }

      else
      {
        if (!CFEqual(v33, @"Lab"))
        {
LABEL_79:
          v33 = 0;
          goto LABEL_80;
        }

        DisplayRGB = makeLabProfile(bytes, cf);
      }

      v33 = DisplayRGB;
    }

    if (!v33)
    {
      goto LABEL_80;
    }

    goto LABEL_71;
  }

  v34 = longFromDictionary(cf, @"gridPoints");
  if (v34 - 51 >= 0xFFFFFFFFFFFFFFCFLL)
  {
    v35 = v34;
  }

  else
  {
    v35 = 17;
  }

  v36 = CFDictionaryGetValue(cf, @"refcon");
  if (v36)
  {
    BytePtr = CFDataGetBytePtr(v36);
  }

  else
  {
    BytePtr = 0;
  }

  v44 = CFDictionaryGetValue(cf, @"proc");
  if (!v44)
  {
    goto LABEL_79;
  }

  v45 = CFDataGetBytePtr(v44);
  if (!v45)
  {
    goto LABEL_79;
  }

  v46 = v45;
  v47 = create(0, 0, 1, 0);
  v33 = v47;
  if (!v47)
  {
    goto LABEL_80;
  }

  qmemcpy(&bytes[12], "tsba baL baL", 12);
  addXYZTag(v47, @"wtpt", *(&v85 + 4), HIDWORD(v85));
  addAbstractA2B(v33, v35, v46, BytePtr);
LABEL_71:
  v50 = *MEMORY[0x1E695E498];
  v51 = CFDataCreateWithBytesNoCopy(0, bytes, 128, *MEMORY[0x1E695E498]);
  if (v51)
  {
    v52 = v51;
    ColorSyncProfileSetHeader(v33, v51);
    CFRelease(v52);
  }

  v53 = CFDictionaryGetValue(cf, @"description");
  v54 = CFDictionaryGetValue(cf, @"asciiName");
  if (v53 | v54)
  {
    ColorSyncProfileSetDescriptionTag(v33, v53, v54);
  }

  v55 = CFDictionaryGetValue(cf, @"copyright");
  v56 = v55;
  if (*&bytes[8] >> 26)
  {
    if (!v55)
    {
      goto LABEL_90;
    }

    v57 = CFGetTypeID(v55);
    if (v57 == CFDictionaryGetTypeID())
    {
      ColorSyncProfileSetLocalizedStringDictionary(v33, @"cprt", v56);
      goto LABEL_94;
    }

    v64 = CFGetTypeID(v56);
    if (v64 == CFStringGetTypeID())
    {
      *&buffer = @"en_US";
      values = v56;
      v65 = CFDictionaryCreate(0, &buffer, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v65)
      {
        goto LABEL_94;
      }

      v63 = v65;
      ColorSyncProfileSetLocalizedStringDictionary(v33, @"cprt", v65);
    }

    else
    {
LABEL_90:
      v66 = strlen(&v81[4]);
      v67 = CFStringCreateWithBytes(0, &v81[4], v66, 0x600u, 0);
      if (!v67)
      {
        goto LABEL_94;
      }

      v63 = v67;
      *&buffer = @"en_US";
      values = v67;
      v68 = CFDictionaryCreate(0, &buffer, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v68)
      {
        v69 = v68;
        ColorSyncProfileSetLocalizedStringDictionary(v33, @"cprt", v68);
        CFRelease(v69);
      }
    }

    goto LABEL_93;
  }

  if (v55 && (v60 = CFGetTypeID(v55), v60 == CFStringGetTypeID()))
  {
    CFStringGetCString(v56, &v81[4], 200, 0x600u);
    v81[203] = 0;
  }

  else if (ColorSyncProfileContainsTag(v33, @"cprt"))
  {
    goto LABEL_94;
  }

  v61 = strlen(&v81[4]);
  v62 = CFDataCreateWithBytesNoCopy(0, v80, v61 + 9, v50);
  if (v62)
  {
    v63 = v62;
    ColorSyncProfileSetTag(v33, @"cprt", v62);
LABEL_93:
    CFRelease(v63);
  }

LABEL_94:
  v70 = CFDictionaryGetValue(cf, @"luminance");
  if (v70)
  {
    *&buffer = 0;
    if (CFNumberGetValue(v70, kCFNumberDoubleType, &buffer) == 1)
    {
      addXYZTag(v33, @"lumi", (*&buffer * 65536.0 + 0.5) << 32, 0);
    }
  }

  v71 = CFDictionaryGetValue(cf, @"addMD5");
  v72 = *MEMORY[0x1E695E4D0];
  if (v71 == *MEMORY[0x1E695E4D0])
  {
    *&v86[4] = ColorSyncProfileGetMD5(v33);
    v73 = CFDataCreateWithBytesNoCopy(0, bytes, 128, v50);
    if (v73)
    {
      v74 = v73;
      ColorSyncProfileSetHeader(v33, v73);
      CFRelease(v74);
    }
  }

  if (CFDictionaryGetValue(cf, @"createImmutableCopy") == v72)
  {
    v75 = ColorSyncProfileCopyData(v33, 0);
    if (v75)
    {
      v76 = v75;
      v77 = ColorSyncProfileCreate(v75, 0);
      if (v77)
      {
        v78 = v77;
        CFRelease(v33);
        v33 = v78;
      }

      CFRelease(v76);
    }
  }

LABEL_80:
  v58 = *MEMORY[0x1E69E9840];
  return v33;
}

ColorSyncProfile *makeDisplayRGB()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v438 = *MEMORY[0x1E69E9840];
  v423 = 0;
  v421 = 0u;
  v422 = 0u;
  *v420 = 0u;
  v418 = 0u;
  memset(v419, 0, sizeof(v419));
  v416 = 0u;
  v417 = 0u;
  v414 = 0u;
  v415 = 0u;
  LODWORD(v423) = *(v0 + 8);
  v4 = longFromDictionary(v1, @"whiteTemp");
  if (v4)
  {
    if ((xyFromTemp(v4, &v417, &v417 + 1) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *&v417 = doubleFromDictionary(v2, @"whitePointx");
    v5 = doubleFromDictionary(v2, @"whitePointy");
    v6 = 0;
    *(&v417 + 1) = v5;
    if (*&v417 == 0.0 || v5 == 0.0)
    {
      goto LABEL_18;
    }
  }

  if (CFDictionaryContainsKey(v2, @"phosphorSet"))
  {
    Value = CFDictionaryGetValue(v2, @"phosphorSet");
    v6 = Value;
    if (!Value)
    {
      goto LABEL_18;
    }

    v8 = CFGetTypeID(Value);
    if (v8 == CFStringGetTypeID())
    {
      v9 = CFEqual(v6, @"P22-EBU");
      v10 = xmmword_19A96DF50;
      v11 = xmmword_19A96DF60;
      v12 = xmmword_19A96DF70;
      if (v9)
      {
        goto LABEL_25;
      }

      v13 = CFEqual(v6, @"HDTV");
      v11 = xmmword_19A96DF60;
      v12 = xmmword_19A96DF70;
      v10 = xmmword_19A96DF50;
      if (v13)
      {
        goto LABEL_25;
      }

      v14 = CFEqual(v6, @"CCIR709");
      v10 = xmmword_19A96DF80;
      v11 = xmmword_19A96DF90;
      v12 = xmmword_19A96DFA0;
      if (v14)
      {
        goto LABEL_25;
      }

      if (CFEqual(v6, @"sRGB"))
      {
        v12 = xmmword_19A96DFA0;
        v10 = xmmword_19A96DF80;
        v11 = xmmword_19A96DF90;
LABEL_25:
        v414 = v12;
        v415 = v11;
        v416 = v10;
        goto LABEL_26;
      }

      if (CFEqual(v6, @"AdobeRGB98"))
      {
        v11 = xmmword_19A96DFB0;
        v12 = xmmword_19A96DFA0;
        v10 = xmmword_19A96DF80;
        goto LABEL_25;
      }

      v18 = CFEqual(v6, @"WideRGB");
      v10 = xmmword_19A96DFC0;
      v11 = xmmword_19A96DFD0;
      v12 = xmmword_19A96DFE0;
      if (v18)
      {
        goto LABEL_25;
      }

      v19 = CFEqual(v6, @"700/525/450nm");
      v11 = xmmword_19A96DFD0;
      v12 = xmmword_19A96DFE0;
      v10 = xmmword_19A96DFC0;
      if (v19)
      {
        goto LABEL_25;
      }

      if (CFEqual(v6, @"Trinitron"))
      {
        v10 = xmmword_19A96DFF0;
        v11 = xmmword_19A96E000;
        v12 = xmmword_19A96E010;
        goto LABEL_25;
      }
    }

LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  v15 = CFDictionaryGetValue(v2, @"skipPhosphorsCheck");
  if (!primariesFromDictionary(v2, &v414) || v15 != *MEMORY[0x1E695E4D0] && !checkPrimaries(&v414))
  {
    goto LABEL_17;
  }

LABEL_26:
  v20 = CFDictionaryContainsKey(v2, @"paraR") && CFDictionaryContainsKey(v2, @"paraG") && CFDictionaryContainsKey(v2, @"paraB") != 0;
  v21 = CFDictionaryContainsKey(v2, @"tableR") && CFDictionaryContainsKey(v2, @"tableG") && CFDictionaryContainsKey(v2, @"tableB") != 0;
  v22 = CFDictionaryGetValue(v2, @"sRGBGamma");
  v23 = *MEMORY[0x1E695E4D0];
  if (v22 == *MEMORY[0x1E695E4D0])
  {
    BYTE9(v421) = 1;
    *(v419 + 8) = ksRGBCurve;
    *(&v419[1] + 8) = unk_19A96E5C0;
    *(&v419[2] + 8) = xmmword_19A96E5D0;
    *(&v419[3] + 8) = unk_19A96E5E0;
    *(&v419[4] + 8) = ksRGBCurve;
    *(&v419[5] + 8) = unk_19A96E5C0;
    *(&v419[6] + 8) = xmmword_19A96E5D0;
    *(&v419[7] + 8) = unk_19A96E5E0;
    *(&v419[11] + 8) = unk_19A96E5E0;
    *(&v419[8] + 8) = ksRGBCurve;
    *(&v419[9] + 8) = unk_19A96E5C0;
    *(&v419[10] + 8) = xmmword_19A96E5D0;
  }

  else if (v20)
  {
    BYTE9(v421) = 1;
    gammaCurveFromDictionary(v419 + 8, v2, @"paraR");
    gammaCurveFromDictionary(&v419[4] + 8, v2, @"paraG");
    gammaCurveFromDictionary(&v419[8] + 8, v2, @"paraB");
    v6 = 0;
    if (WORD4(v419[0]) == 255 || WORD4(v419[4]) == 255 || WORD4(v419[8]) == 255)
    {
      goto LABEL_18;
    }
  }

  else if (v21)
  {
    BYTE10(v421) = 1;
    v64 = gammaTableFromDictionary(v2, @"tableR");
    v6 = v65;
    *(&v419[12] + 1) = v64;
    *&v419[13] = v65;
    v66 = gammaTableFromDictionary(v2, @"tableG");
    v68 = v67;
    *(&v419[14] + 1) = v66;
    *&v419[15] = v67;
    *(&v419[13] + 1) = gammaTableFromDictionary(v2, @"tableB");
    *&v419[14] = v69;
    if (!v6)
    {
      goto LABEL_18;
    }

    v6 = 0;
    if (!v68 || !v69)
    {
      goto LABEL_18;
    }
  }

  else
  {
    gammaFromDictionary(v2, @"gammaR");
    v73 = v72;
    *&v418 = v72;
    gammaFromDictionary(v2, @"gammaG");
    v75 = v74;
    *(&v418 + 1) = v74;
    gammaFromDictionary(v2, @"gammaB");
    v6 = 0;
    *v419 = v76;
    if (v73 == 0.0 || v75 == 0.0 || v76 == 0.0)
    {
      goto LABEL_18;
    }
  }

  if (CFDictionaryContainsKey(v2, @"tableChans") || CFDictionaryContainsKey(v2, @"tableEntries") || CFDictionaryContainsKey(v2, @"tableEntrySize") || CFDictionaryContainsKey(v2, @"tableData"))
  {
    v24 = longFromDictionary(v2, @"tableChans");
    if ((v24 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v25 = v24;
      v26 = longFromDictionary(v2, @"tableEntries");
      if (v26 - 2 <= 0x3FE)
      {
        v27 = v26;
        v28 = longFromDictionary(v2, @"tableEntrySize");
        if (v28 - 1 <= 1)
        {
          v29 = v28;
          v30 = CFDictionaryGetValue(v2, @"tableData");
          if (v30)
          {
            v31 = v30;
            v32 = CFGetTypeID(v30);
            if (v32 == CFDataGetTypeID() && CFDataGetLength(v31) >= v27 * v25 * v29)
            {
              WORD4(v419[15]) = v25;
              WORD5(v419[15]) = v27;
              WORD6(v419[15]) = v29;
              v420[0] = CFDataGetBytePtr(v31);
            }
          }
        }
      }
    }
  }

  *&v421 = longFromDictionary(v2, @"targetWhite");
  gammaFromDictionary(v2, @"targetGamma");
  v420[1] = v33;
  BYTE11(v421) = 1;
  if (CFDictionaryContainsKey(v2, @"slopeLimitGamma"))
  {
    v34 = CFDictionaryGetValue(v2, @"slopeLimitGamma");
    if (v34)
    {
      v35 = v34;
      v36 = CFGetTypeID(v34);
      if (v36 == CFBooleanGetTypeID())
      {
        if (CFEqual(v35, v23))
        {
          BYTE11(v421) = 0;
        }
      }
    }
  }

  if (CFDictionaryContainsKey(v2, @"noVCGT"))
  {
    v37 = CFDictionaryGetValue(v2, @"noVCGT");
    if (v37)
    {
      v38 = v37;
      v39 = CFGetTypeID(v37);
      if (v39 == CFBooleanGetTypeID())
      {
        if (CFEqual(v38, v23))
        {
          BYTE13(v421) = 1;
        }
      }
    }
  }

  if (CFDictionaryContainsKey(v2, @"noNDIN"))
  {
    v40 = CFDictionaryGetValue(v2, @"noNDIN");
    if (v40)
    {
      v41 = v40;
      v42 = CFGetTypeID(v40);
      if (v42 == CFBooleanGetTypeID())
      {
        if (CFEqual(v41, v23))
        {
          BYTE14(v421) = 1;
        }
      }
    }
  }

  if (CFDictionaryContainsKey(v2, @"noParametricVCGT"))
  {
    v43 = CFDictionaryGetValue(v2, @"noParametricVCGT");
    if (v43)
    {
      v44 = v43;
      v45 = CFGetTypeID(v43);
      if (v45 == CFBooleanGetTypeID())
      {
        if (CFEqual(v44, v23))
        {
          HIBYTE(v421) = 1;
        }
      }
    }
  }

  if (CFDictionaryContainsKey(v2, @"allowLargeVCGT"))
  {
    v46 = CFDictionaryGetValue(v2, @"allowLargeVCGT");
    if (v46)
    {
      v47 = v46;
      v48 = CFGetTypeID(v46);
      if (v48 == CFBooleanGetTypeID())
      {
        if (CFEqual(v47, v23))
        {
          LOBYTE(v422) = 1;
        }
      }
    }
  }

  v49 = create(0, 0, 1, 0);
  v6 = v49;
  if (!v49)
  {
    goto LABEL_575;
  }

  qmemcpy((v3 + 12), "rtnm BGR ZYX", 12);
  ColorSyncProfileSetPrimaries(v49, &v414);
  *&v426[4] = 0;
  *v426 = 0;
  v52 = *&v420[1];
  __asm { FMOV            V2.2D, #0.5 }

  if (_ZF && !BYTE9(v421))
  {
    v57 = WORD4(v419[15]);
    if (WORD4(v419[15]) && BYTE8(v421) == 1)
    {
      *bytes = v418;
      *&bytes[16] = *&v419[0];
      v58 = v420[0];
      v59 = WORD5(v419[15]);
      v60 = WORD6(v419[15]);
      v61 = bytes;
      v62 = v6;
      v63 = 0;
LABEL_186:
      fillCurvTable(v62, v58, v57, v59, v60, v61, v63);
      goto LABEL_212;
    }

    v77 = *&v418;
    if (fmax(fmax(*&v418, *(&v418 + 1)), *v419) > 1.8 && !BYTE11(v421))
    {
      __ya = _Q2;
      bzero(bytes, 0x1800uLL);
      *v435 = v77;
      *&v435[8] = *(&v418 + 1);
      *&v435[16] = *&v419[0];
      v78 = 2.2;
      if (v77 >= 2.25 || (v79 = 2.2, v77 <= 2.15))
      {
        if (v77 >= 1.85 || (v79 = 1.8, v77 <= 1.75))
        {
          _NF = v77 > 0.95 && v77 < 1.05;
          v79 = 1.0;
          if (!_NF)
          {
            v79 = v77;
          }
        }
      }

      if (*(&v418 + 1) >= 2.25 || (v81 = 2.2, *(&v418 + 1) <= 2.15))
      {
        if (*(&v418 + 1) >= 1.85 || *(&v418 + 1) <= 1.75)
        {
          v114 = *(&v418 + 1) > 0.95 && *(&v418 + 1) < 1.05;
          v81 = 1.0;
          if (!v114)
          {
            v81 = *(&v418 + 1);
          }
        }

        else
        {
          v81 = 1.8;
        }
      }

      if (*v419 >= 2.25 || *v419 <= 2.15)
      {
        if (*v419 >= 1.85 || *v419 <= 1.75)
        {
          v118 = *v419 > 0.95 && *v419 < 1.05;
          v78 = 1.0;
          if (!v118)
          {
            v78 = *v419;
          }
        }

        else
        {
          v78 = 1.8;
        }
      }

      v119 = 1.8;
      if (v79 > 1.8)
      {
        v119 = (v79 + -1.8) * 0.6 / 0.4 + 1.8;
      }

      v120 = 1.8;
      if (v81 > 1.8)
      {
        v120 = (v81 + -1.8) * 0.6 / 0.4 + 1.8;
      }

      v121 = 1.8;
      if (v78 > 1.8)
      {
        v121 = (v78 + -1.8) * 0.6 / 0.4 + 1.8;
      }

      v122 = 0.0;
      v123 = 0.0;
      if (v79 > 1.8)
      {
        v123 = (v79 + -1.8) * 0.0521327014 / 0.4;
      }

      if (v81 > 1.8)
      {
        v122 = (v81 + -1.8) * 0.0521327014 / 0.4;
      }

      v124 = 0.0;
      if (v78 > 1.8)
      {
        v124 = (v78 + -1.8) * 0.0521327014 / 0.4;
      }

      v125 = 0;
      v363 = 1.0 - v124;
      v361 = 1.0 - v123;
      v362 = 1.0 - v122;
      v359 = vdupq_lane_s64(*&v122, 0);
      v360 = vdupq_lane_s64(*&v123, 0);
      v358 = vdupq_lane_s64(*&v124, 0);
      v126 = xmmword_19A96E020;
      v127 = xmmword_19A96E030;
      v128 = xmmword_19A96E040;
      v129 = xmmword_19A96E050;
      do
      {
        v373 = v129;
        v402 = v128;
        v405 = v127;
        v407 = v126;
        v130 = vcvtq_f64_u64(v129);
        v131 = vcvtq_f64_u64(v128);
        v132 = vcvtq_f64_u64(v127);
        v133 = vcvtq_f64_u64(v126);
        v134 = vdupq_n_s64(0x408FF80000000000uLL);
        v379 = vaddq_f64(v360, vdivq_f64(vmulq_n_f64(v133, v361), v134));
        v377 = vaddq_f64(v360, vdivq_f64(vmulq_n_f64(v132, v361), v134));
        v375 = vaddq_f64(v360, vdivq_f64(vmulq_n_f64(v131, v361), v134));
        v368 = vaddq_f64(v360, vdivq_f64(vmulq_n_f64(v130, v361), v134));
        v388 = vaddq_f64(v359, vdivq_f64(vmulq_n_f64(v133, v362), v134));
        v386 = vaddq_f64(v359, vdivq_f64(vmulq_n_f64(v132, v362), v134));
        v382 = vaddq_f64(v359, vdivq_f64(vmulq_n_f64(v130, v362), v134));
        v384 = vaddq_f64(v359, vdivq_f64(vmulq_n_f64(v131, v362), v134));
        v395 = vaddq_f64(v358, vdivq_f64(vmulq_n_f64(v132, v363), v134));
        v399 = vaddq_f64(v358, vdivq_f64(vmulq_n_f64(v133, v363), v134));
        *lengtha = vaddq_f64(v358, vdivq_f64(vmulq_n_f64(v130, v363), v134));
        __xb = vaddq_f64(v358, vdivq_f64(vmulq_n_f64(v131, v363), v134));
        v370 = pow(v368.f64[0], v119);
        v368.f64[0] = pow(v368.f64[1], v119);
        v366 = pow(v375.f64[0], v119);
        v375.f64[0] = pow(v375.f64[1], v119);
        v365 = pow(v377.f64[0], v119);
        v377.f64[0] = pow(v377.f64[1], v119);
        v364 = pow(v379.f64[0], v119);
        v135 = pow(v379.f64[1], v119);
        v137.f64[0] = v364;
        v136.f64[0] = v365;
        v137.f64[1] = v135;
        v136.f64[1] = v377.f64[0];
        v138.f64[0] = v366;
        v138.f64[1] = v375.f64[0];
        v139.f64[0] = v370;
        v139.f64[1] = v368.f64[0];
        v380 = vdupq_n_s64(0x40EFFFE000000000uLL);
        v140 = &bytes[v125];
        *&bytes[v125] = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v139))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v138)))), vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v136))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v137)))));
        v377.f64[0] = pow(v382.f64[0], v120);
        v382.f64[0] = pow(v382.f64[1], v120);
        v375.f64[0] = pow(v384.f64[0], v120);
        v384.f64[0] = pow(v384.f64[1], v120);
        v371 = pow(v386.f64[0], v120);
        v386.f64[0] = pow(v386.f64[1], v120);
        v368.f64[0] = pow(v388.f64[0], v120);
        v141 = pow(v388.f64[1], v120);
        v143.f64[0] = v368.f64[0];
        v142.f64[0] = v371;
        v143.f64[1] = v141;
        v142.f64[1] = v386.f64[0];
        v145.f64[0] = v375.f64[0];
        v144.f64[0] = v377.f64[0];
        v145.f64[1] = v384.f64[0];
        v144.f64[1] = v382.f64[0];
        v140[128] = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v144))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v145)))), vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v142))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v143)))));
        v388.f64[0] = pow(*lengtha, v121);
        lengtha[0] = pow(*&lengtha[1], v121);
        v386.f64[0] = pow(__xb.f64[0], v121);
        __xb.f64[0] = pow(__xb.f64[1], v121);
        v384.f64[0] = pow(v395.f64[0], v121);
        v395.f64[0] = pow(v395.f64[1], v121);
        v382.f64[0] = pow(v399.f64[0], v121);
        v146 = pow(v399.f64[1], v121);
        v148.f64[0] = v382.f64[0];
        v147.f64[0] = v384.f64[0];
        v148.f64[1] = v146;
        v147.f64[1] = v395.f64[0];
        v150.f64[0] = v386.f64[0];
        v149.f64[0] = v388.f64[0];
        v150.f64[1] = __xb.f64[0];
        *&v149.f64[1] = lengtha[0];
        v140[256] = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v149))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v150)))), vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v147))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v380, v148)))));
        v151 = vdupq_n_s64(8uLL);
        v127 = vaddq_s64(v405, v151);
        v128 = vaddq_s64(v402, v151);
        v129 = vaddq_s64(v373, v151);
        v126 = vaddq_s64(v407, v151);
        v125 += 16;
      }

      while (v125 != 2048);
      v58 = bytes;
      v61 = v435;
      v62 = v6;
      v57 = 3;
      goto LABEL_185;
    }

    v88 = *&v418 * 256.0;
    if (*&v418 * 256.0 <= 0.0)
    {
      if (*&v418 * 256.0 >= 0.0)
      {
        goto LABEL_139;
      }

      v89 = -0.5;
    }

    else
    {
      v89 = 0.5;
    }

    v88 = v88 + v89;
LABEL_139:
    if (v88 >= 32767.0)
    {
      LOWORD(v111) = 0x7FFF;
    }

    else if (v88 <= -32768.0)
    {
      LOWORD(v111) = 0x8000;
    }

    else
    {
      v111 = v88;
    }

    *v426 = v111;
    v115 = *(&v418 + 1) * 256.0;
    if (*(&v418 + 1) * 256.0 <= 0.0)
    {
      if (*(&v418 + 1) * 256.0 >= 0.0)
      {
        goto LABEL_161;
      }

      v116 = -0.5;
    }

    else
    {
      v116 = 0.5;
    }

    v115 = v115 + v116;
LABEL_161:
    if (v115 >= 32767.0)
    {
      LOWORD(v117) = 0x7FFF;
    }

    else if (v115 <= -32768.0)
    {
      LOWORD(v117) = 0x8000;
    }

    else
    {
      v117 = v115;
    }

    *&v426[2] = v117;
    v152 = *v419 * 256.0;
    if (*v419 * 256.0 <= 0.0)
    {
      if (*v419 * 256.0 >= 0.0)
      {
LABEL_193:
        if (v152 >= 32767.0)
        {
          LOWORD(v154) = 0x7FFF;
        }

        else if (v152 <= -32768.0)
        {
          LOWORD(v154) = 0x8000;
        }

        else
        {
          v154 = v152;
        }

        *&v426[4] = v154;
        goto LABEL_208;
      }

      v153 = -0.5;
    }

    else
    {
      v153 = 0.5;
    }

    v152 = v152 + v153;
    goto LABEL_193;
  }

  v70 = 1.8;
  if (*&v420[1] > 1.8 && !BYTE11(v421) && !BYTE9(v421))
  {
    __y = _Q2;
    bzero(bytes, 0x800uLL);
    *v435 = v52;
    *&v435[8] = v52;
    *&v435[16] = v52;
    if (v52 >= 2.25 || v52 <= 2.15)
    {
      v71 = 0.0;
      if (v52 < 1.85 && v52 > 1.75 || v52 < 1.05 && v52 > 0.95)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v52 = 2.2;
    }

    v70 = (v52 + -1.8) * 0.6 / 0.4 + 1.8;
    v71 = (v52 + -1.8) * 0.0521327014 / 0.4;
LABEL_124:
    v90 = 0;
    v376 = 1.0 - v71;
    v91 = xmmword_19A96E020;
    v92 = xmmword_19A96E030;
    v93 = xmmword_19A96E040;
    v94 = xmmword_19A96E050;
    v372 = vdupq_n_s64(0x40EFFFE000000000uLL);
    v374 = vdupq_n_s64(0x408FF80000000000uLL);
    v367 = vdupq_lane_s64(*&v71, 0);
    v369 = vdupq_n_s64(8uLL);
    do
    {
      length = v94;
      v401 = v93;
      v404 = v92;
      v406 = v91;
      v394 = vaddq_f64(v367, vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v92), v376), v374));
      v398 = vaddq_f64(v367, vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v91), v376), v374));
      __xa = vaddq_f64(v367, vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v93), v376), v374));
      v385 = vaddq_f64(v367, vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v94), v376), v374));
      v387 = pow(v385.f64[0], v70);
      v385.f64[0] = pow(v385.f64[1], v70);
      v383 = pow(__xa.f64[0], v70);
      __xa.f64[0] = pow(__xa.f64[1], v70);
      v381 = pow(v394.f64[0], v70);
      v394.f64[0] = pow(v394.f64[1], v70);
      v378 = pow(v398.f64[0], v70);
      v95 = pow(v398.f64[1], v70);
      v97.f64[0] = v378;
      v96.f64[0] = v381;
      v97.f64[1] = v95;
      v96.f64[1] = v394.f64[0];
      v98.f64[0] = v383;
      v98.f64[1] = __xa.f64[0];
      v99.f64[0] = v387;
      v99.f64[1] = v385.f64[0];
      *&bytes[v90] = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__y, v372, v99))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__y, v372, v98)))), vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__y, v372, v96))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__y, v372, v97)))));
      v92 = vaddq_s64(v404, v369);
      v93 = vaddq_s64(v401, v369);
      v94 = vaddq_s64(length, v369);
      v91 = vaddq_s64(v406, v369);
      v90 += 16;
    }

    while (v90 != 2048);
    v58 = bytes;
    v61 = v435;
    v62 = v6;
    v57 = 1;
LABEL_185:
    v59 = 1024;
    v60 = 2;
    v63 = 1;
    goto LABEL_186;
  }

  if (BYTE9(v421))
  {
    v50.f64[0] = *&v419[1];
    _Q2.f64[0] = *&v419[2];
    v51.f64[0] = *&v419[3];
    ColorSyncProfileSetParametricTRCTag(v6, @"rTRC", WORD4(v419[0]), v50, *(&v419[1] + 1), _Q2, *(&v419[2] + 1), v51, *(&v419[3] + 1), *&v419[4]);
    v82.f64[0] = *&v419[5];
    v83.f64[0] = *&v419[6];
    v84.f64[0] = *&v419[7];
    ColorSyncProfileSetParametricTRCTag(v6, @"gTRC", WORD4(v419[4]), v82, *(&v419[5] + 1), v83, *(&v419[6] + 1), v84, *(&v419[7] + 1), *&v419[8]);
    v85.f64[0] = *&v419[9];
    v86.f64[0] = *&v419[10];
    v87.f64[0] = *&v419[11];
    ColorSyncProfileSetParametricTRCTag(v6, @"bTRC", WORD4(v419[8]), v85, *(&v419[9] + 1), v86, *(&v419[10] + 1), v87, *(&v419[11] + 1), *&v419[12]);
    goto LABEL_212;
  }

  if (BYTE10(v421) != 1)
  {
    v112 = *&v420[1] * 256.0;
    if (*&v420[1] * 256.0 <= 0.0)
    {
      if (*&v420[1] * 256.0 >= 0.0)
      {
LABEL_202:
        if (v112 >= 32767.0)
        {
          LOWORD(v155) = 0x7FFF;
        }

        else if (v112 <= -32768.0)
        {
          LOWORD(v155) = 0x8000;
        }

        else
        {
          v155 = v112;
        }

        *&v426[4] = v155;
        *&v426[2] = v155;
        *v426 = v155;
LABEL_208:
        v156 = 0;
        v157 = *MEMORY[0x1E695E498];
        do
        {
          *bytes = 1987212643;
          *&bytes[8] = 0x1000000;
          *&bytes[12] = bswap32(*&v426[2 * v156]) >> 16;
          v158 = CFDataCreateWithBytesNoCopy(0, bytes, 14, v157);
          ColorSyncProfileSetTag(v6, off_1E7524130[v156], v158);
          if (v158)
          {
            CFRelease(v158);
          }

          ++v156;
        }

        while (v156 != 3);
        goto LABEL_212;
      }

      v113 = -0.5;
    }

    else
    {
      v113 = 0.5;
    }

    v112 = v112 + v113;
    goto LABEL_202;
  }

  v100 = 0;
  *bytes = *(&v419[12] + 8);
  *&bytes[16] = *(&v419[13] + 8);
  *&bytes[32] = *(&v419[14] + 8);
  v101 = *(&v419[12] + 1);
  v102 = 2 * *(&v419[12] + 1);
  do
  {
    v103 = malloc_type_calloc(1uLL, v102 + 12, 0x100004018756113uLL);
    v104 = v103;
    *v103 = 1987212643;
    v105 = &bytes[16 * v100];
    *(v103 + 2) = bswap32(*v105);
    if (v101)
    {
      v106 = *(v105 + 1);
      v107 = v103 + 6;
      v108 = v101;
      do
      {
        v109 = *v106++;
        *v107++ = bswap32(v109) >> 16;
        --v108;
      }

      while (v108);
    }

    v110 = CFDataCreate(0, v103, v102 + 12);
    ColorSyncProfileSetTag(v6, off_1E7524130[v100], v110);
    free(v104);
    if (v110)
    {
      CFRelease(v110);
    }

    ++v100;
  }

  while (v100 != 3);
LABEL_212:
  v159 = CFDictionaryGetKeysAndValues;
  if (BYTE13(v421) && BYTE10(v421) != 1)
  {
    goto LABEL_455;
  }

  v427 = xmmword_19A96E070;
  v428 = xmmword_19A96E060;
  *v426 = xmmword_19A96E080;
  if (!v421)
  {
    v179 = 0x10000;
    v180 = 0x10000;
    v181 = 0x10000;
    goto LABEL_259;
  }

  *bytes = 0;
  *v435 = 0;
  xyFromTemp(v421, bytes, v435);
  v160 = *bytes / *v435;
  v161 = (1.0 - *bytes) / *v435 + -1.0;
  v430 = 0u;
  v431 = 0u;
  memset(bytes, 0, sizeof(bytes));
  convertSpecToXYZ(&v414, bytes, 0);
  v162 = *&bytes[32] * *&v430 - *&bytes[40] * *&bytes[56];
  v163 = *&bytes[24] * *&v430 - *&bytes[40] * *&bytes[48];
  v164 = -v163;
  v165 = *&bytes[24] * *&bytes[56] - *&bytes[32] * *&bytes[48];
  v166 = -(*&bytes[8] * *&v430 - *&bytes[16] * *&bytes[56]);
  v167 = *bytes * v162 - v163 * *&bytes[8] + *&bytes[16] * v165;
  v168 = v164 / v167;
  v169 = -(*bytes * *&bytes[56] - *&bytes[8] * *&bytes[48]) / v167;
  v170 = v168 + v162 / v167 * v160 + v165 / v167 * v161;
  v171 = (*bytes * *&v430 - *&bytes[16] * *&bytes[48]) / v167 + v166 / v167 * v160 + v169 * v161;
  v172 = -(*bytes * *&bytes[40] - *&bytes[16] * *&bytes[24]) / v167 + (*&bytes[8] * *&bytes[40] - *&bytes[16] * *&bytes[32]) / v167 * v160 + (*bytes * *&bytes[32] - *&bytes[8] * *&bytes[24]) / v167 * v161;
  if (v171 <= v170)
  {
    v173 = v170;
  }

  else
  {
    v173 = (*bytes * *&v430 - *&bytes[16] * *&bytes[48]) / v167 + v166 / v167 * v160 + v169 * v161;
  }

  if (v172 <= v173)
  {
    v174 = v173;
  }

  else
  {
    v174 = -(*bytes * *&bytes[40] - *&bytes[16] * *&bytes[24]) / v167 + (*&bytes[8] * *&bytes[40] - *&bytes[16] * *&bytes[32]) / v167 * v160 + (*bytes * *&bytes[32] - *&bytes[8] * *&bytes[24]) / v167 * v161;
  }

  v175 = v171 / v174;
  *v435 = v170 / v174;
  *&v435[8] = v171 / v174;
  v176 = v172 / v174;
  *&v435[16] = v172 / v174;
  if (v170 / v174 > 1.0)
  {
    *v435 = 0x3FF0000000000000;
  }

  if (v175 > 1.0)
  {
    *&v435[8] = 0x3FF0000000000000;
  }

  if (v176 > 1.0)
  {
    *&v435[16] = 0x3FF0000000000000;
  }

  inverseNativeGammaLookup(&v414, v435, v176, 1.0, v172, v174, v170 / v174, v170, v168, v165 / v167);
  v177 = *v435 * 65536.0;
  if (*v435 * 65536.0 <= 0.0)
  {
    if (v177 >= 0.0)
    {
      goto LABEL_233;
    }

    v178 = -0.5;
  }

  else
  {
    v178 = 0.5;
  }

  v177 = v177 + v178;
LABEL_233:
  if (v177 >= 2147483650.0)
  {
    v181 = 0x7FFFFFFF;
  }

  else if (v177 <= -2147483650.0)
  {
    v181 = 0x80000000;
  }

  else
  {
    v181 = v177;
  }

  DWORD1(v427) = v181;
  v182 = *&v435[8] * 65536.0;
  if (*&v435[8] * 65536.0 <= 0.0)
  {
    if (v182 >= 0.0)
    {
      goto LABEL_243;
    }

    v183 = -0.5;
  }

  else
  {
    v183 = 0.5;
  }

  v182 = v182 + v183;
LABEL_243:
  if (v182 >= 2147483650.0)
  {
    v180 = 0x7FFFFFFF;
  }

  else if (v182 <= -2147483650.0)
  {
    v180 = 0x80000000;
  }

  else
  {
    v180 = v182;
  }

  LODWORD(v428) = v180;
  v184 = *&v435[16] * 65536.0;
  if (*&v435[16] * 65536.0 > 0.0)
  {
    v185 = 0.5;
LABEL_252:
    v184 = v184 + v185;
    goto LABEL_253;
  }

  if (v184 < 0.0)
  {
    v185 = -0.5;
    goto LABEL_252;
  }

LABEL_253:
  if (v184 >= 2147483650.0)
  {
    v179 = 0x7FFFFFFF;
  }

  else if (v184 <= -2147483650.0)
  {
    v179 = 0x80000000;
  }

  else
  {
    v179 = v184;
  }

  HIDWORD(v428) = v179;
LABEL_259:
  __yb = v420[1];
  if (*&v420[1] == 0.0)
  {
    v253 = 0x10000;
    v254 = 0x10000;
    v255 = 0x10000;
    goto LABEL_353;
  }

  memset(v434, 0, 64);
  v432 = 0u;
  v433 = 0u;
  v430 = 0u;
  v431 = 0u;
  memset(bytes, 0, sizeof(bytes));
  *bytes = -1;
  LOWORD(v430) = -1;
  LOWORD(v434[0]) = -1;
  if (ColorSyncProfileGetTag(v6, @"aarg") && ColorSyncProfileGetTag(v6, @"aabg") && ColorSyncProfileGetTag(v6, @"aagg"))
  {
    v408 = v181;
    v186 = bytes;
    v187 = &v430;
    v188 = v434;
    Tag = ColorSyncProfileGetTag(v6, @"aarg");
    v190 = ColorSyncProfileGetTag(v6, @"aabg");
    v191 = ColorSyncProfileGetTag(v6, @"aagg");
    BytePtr = CFDataGetBytePtr(Tag);
    v436.i64[0] = BytePtr;
    v193 = CFDataGetBytePtr(v190);
    v436.i64[1] = v193;
    v194 = CFDataGetBytePtr(v191);
    v195 = 0;
    v437 = *&v194;
    v196 = bytes;
    v197 = vdupq_n_s64(0x3EF0000000000000uLL);
    do
    {
      v198 = v436.i64[v195];
      v199 = bswap32(*(v198 + 8)) >> 16;
      if (v199 <= 1)
      {
        if (v199)
        {
          if (v199 == 1)
          {
            v205 = bswap32(*(v198 + 20));
            *v196 = 1;
            v206 = vrev32_s8(*(v198 + 12));
            v207.i64[0] = v206.i32[0];
            v207.i64[1] = v206.i32[1];
            *(v196 + 8) = vmulq_f64(vcvtq_f64_s64(v207), v197);
            *(v196 + 3) = vcvtd_n_f64_s32(v205, 0x10uLL);
          }
        }

        else
        {
          v215 = bswap32(*(v198 + 12));
          *v196 = 0;
          *(v196 + 1) = vcvtd_n_f64_s32(v215, 0x10uLL);
        }
      }

      else
      {
        switch(v199)
        {
          case 2:
            *v196 = 2;
            v208 = vrev32_s8(*(v198 + 12));
            v209.i64[0] = v208.i32[0];
            v209.i64[1] = v208.i32[1];
            *(v196 + 8) = vmulq_f64(vcvtq_f64_s64(v209), v197);
            v210 = vrev32_s8(*(v198 + 20));
            v209.i64[0] = v210.i32[0];
            v209.i64[1] = v210.i32[1];
            *(v196 + 24) = vmulq_f64(vcvtq_f64_s64(v209), v197);
            break;
          case 3:
            v211 = bswap32(*(v198 + 28));
            *v196 = 3;
            v212 = vrev32_s8(*(v198 + 12));
            v213.i64[0] = v212.i32[0];
            v213.i64[1] = v212.i32[1];
            *(v196 + 8) = vmulq_f64(vcvtq_f64_s64(v213), v197);
            v214 = vrev32_s8(*(v198 + 20));
            v213.i64[0] = v214.i32[0];
            v213.i64[1] = v214.i32[1];
            *(v196 + 24) = vmulq_f64(vcvtq_f64_s64(v213), v197);
            *(v196 + 5) = vcvtd_n_f64_s32(v211, 0x10uLL);
            break;
          case 4:
            v200 = bswap32(*(v198 + 36));
            *v196 = 3;
            v201 = vrev32_s8(*(v198 + 12));
            v202.i64[0] = v201.i32[0];
            v202.i64[1] = v201.i32[1];
            *(v196 + 8) = vmulq_f64(vcvtq_f64_s64(v202), v197);
            v203 = vrev32_s8(*(v198 + 20));
            v202.i64[0] = v203.i32[0];
            v202.i64[1] = v203.i32[1];
            *(v196 + 24) = vmulq_f64(vcvtq_f64_s64(v202), v197);
            v204 = vrev32_s8(*(v198 + 28));
            v202.i64[0] = v204.i32[0];
            v202.i64[1] = v204.i32[1];
            *(v196 + 40) = vmulq_f64(vcvtq_f64_s64(v202), v197);
            *(v196 + 7) = vcvtd_n_f64_s32(v200, 0x10uLL);
            break;
        }
      }

      v196 += 64;
      ++v195;
    }

    while (v195 != 3);
    v181 = v408;
    if (!HIBYTE(v421))
    {
      *&v435[52] = 0;
      *&v435[36] = 0u;
      *&v435[20] = 0u;
      *&v435[4] = 0u;
      *v435 = 1885823862;
      *&v435[8] = *(BytePtr + 1);
      *&v435[16] = *(v193 + 1);
      v216 = *(v194 + 1);
      *&v217.f64[0] = v418;
      v217.f64[1] = *v419;
      *&v435[32] = vrev64q_s8(vcvtq_n_s64_f64(v217, 0x20uLL));
      *&v435[24] = v216;
      *&v435[48] = bswap64(vcvtd_n_s64_f64(*(&v418 + 1), 0x20uLL));
      v218 = CFDataCreateWithBytesNoCopy(0, v435, 56, *MEMORY[0x1E695E498]);
      ColorSyncProfileSetTag(v6, @"vcgp", v218);
      if (v218)
      {
        CFRelease(v218);
      }
    }

    v219 = 1;
    v159 = CFDictionaryGetKeysAndValues;
  }

  else
  {
    v219 = 0;
    v186 = v419 + 4;
    v187 = &v419[4] + 4;
    v188 = &v419[8] + 4;
  }

  v220 = WORD4(v419[15]);
  if (WORD4(v419[15]) && BYTE8(v421) == 1)
  {
    v425 = 0;
    v424 = 0;
    v221 = *&v420[1] / *&v418;
    v222 = *&v420[1] / *(&v418 + 1);
    v223 = 2.2;
    if (*&v420[1] / *&v418 >= 2.25 || (v224 = 2.2, v221 <= 2.15))
    {
      if (v221 >= 1.85 || v221 <= 1.75)
      {
        v267 = v221 > 0.95 && v221 < 1.05;
        v224 = 1.0;
        if (!v267)
        {
          v224 = *&v420[1] / *&v418;
        }
      }

      else
      {
        v224 = 1.8;
      }
    }

    v268 = *&v420[1] / *v419;
    if (v222 >= 2.25 || (v269 = 2.2, v222 <= 2.15))
    {
      if (v222 >= 1.85 || v222 <= 1.75)
      {
        v270 = v222 > 0.95 && v222 < 1.05;
        v269 = 1.0;
        if (!v270)
        {
          v269 = *&v420[1] / *(&v418 + 1);
        }
      }

      else
      {
        v269 = 1.8;
      }
    }

    if (v268 >= 2.25 || v268 <= 2.15)
    {
      if (v268 >= 1.85 || v268 <= 1.75)
      {
        v271 = v268 > 0.95 && v268 < 1.05;
        v223 = 1.0;
        if (!v271)
        {
          v223 = *&v420[1] / *v419;
        }
      }

      else
      {
        v223 = 1.8;
      }
    }

    v272 = v224 <= 1.8 || (v224 + -1.8) * 0.04045 / 0.4 <= 0.0;
    v273 = v269 <= 1.8 || (v269 + -1.8) * 0.04045 / 0.4 <= 0.0;
    v274 = v223 <= 1.8 || (v223 + -1.8) * 0.04045 / 0.4 <= 0.0;
    if (v224 <= 1.8)
    {
      v272 = 1;
    }

    v275 = 0.0;
    v409 = 0.0;
    if (!v272)
    {
      v409 = (v224 + -1.8) * 0.0773993808 / 0.4;
    }

    v276 = v269 <= 1.8 || v273;
    if ((v276 & 1) == 0)
    {
      v275 = (v269 + -1.8) * 0.0773993808 / 0.4;
    }

    v396 = v275;
    v277 = v223 <= 1.8 || v274;
    v278 = 0.0;
    if ((v277 & 1) == 0)
    {
      v278 = (v223 + -1.8) * 0.0773993808 / 0.4;
    }

    if (*&v420[1] == 0.0)
    {
      v279 = 48;
    }

    else
    {
      v279 = (WORD4(v419[15]) << 9) | 0x12;
    }

    v280 = malloc_type_calloc(1uLL, v279, 0x1000040EED21634uLL);
    if (v280)
    {
      v281 = 0;
      *v280 = 1952932726;
      v280[2] = 0;
      *(v280 + 6) = __rev16(v220);
      *(v280 + 14) = 33554433;
      __x = v280;
      v403 = v280 + 18;
      v282 = vcvtd_n_f64_s32(v181, 0x10uLL);
      v283 = vcvtd_n_f64_s32(v180, 0x10uLL);
      v284 = vcvtd_n_f64_s32(v179, 0x10uLL);
      __asm { FMOV            V0.2D, #1.0 }

      v400 = _Q0;
      _Q0.f64[0] = v409;
      _Q0.f64[1] = v396;
      v410 = _Q0;
      v397 = vdupq_n_s64(0x406FE00000000000uLL);
      do
      {
        v286 = (255 - v281);
        v287 = v286 / 255.0;
        v288 = v278 * v286 / 255.0;
        v289 = vdivq_f64(vmulq_n_f64(v410, v286), v397);
        v436 = vbslq_s8(vcgtq_f64(v289, v400), v400, v289);
        if (v288 <= 1.0)
        {
          v290 = v288;
        }

        else
        {
          v290 = 1.0;
        }

        v437 = v290;
        *&v435[8] = pow(v287, *&__yb);
        *&v435[16] = *&v435[8];
        *v435 = *&v435[8];
        inverseNativeGammaLookup(&v414, v435, *&v435[8], v291, v292, v293, v294, v295, v296, v297);
        for (i = 0; i != 3; ++i)
        {
          if (i == 1)
          {
            v299 = 8;
          }

          else
          {
            v299 = 16;
          }

          if (!i)
          {
            v299 = 0;
          }

          if (*(&v424 + i) == 1)
          {
            *&v435[v299] = v436.i64[i];
          }

          else
          {
            v300 = *&v436.i64[i];
            if (*&v435[v299] < v300)
            {
              *&v435[v299] = v300;
              *(&v424 + i) = 1;
            }
          }
        }

        v301 = *&v435[8];
        v302 = *&v435[16];
        v303 = v282 * *v435 * 65535.0;
        if (v303 <= 0.0)
        {
          if (v303 < 0.0)
          {
            v303 = v303 + -0.5;
          }
        }

        else
        {
          v303 = v303 + 0.5;
        }

        if (v303 >= 65535.0)
        {
          v304 = -1;
        }

        else if (v303 <= 0.0)
        {
          v304 = 0;
        }

        else
        {
          v304 = __rev16(v303);
        }

        v305 = &v403[2 * (255 - v281)];
        *v305 = v304;
        if (v220 == 3)
        {
          v306 = v283 * v301 * 65535.0;
          if (v306 <= 0.0)
          {
            if (v306 < 0.0)
            {
              v306 = v306 + -0.5;
            }
          }

          else
          {
            v306 = v306 + 0.5;
          }

          v307 = v284 * v302;
          v308 = __rev16(v306);
          if (v306 <= 0.0)
          {
            v308 = 0;
          }

          if (v306 >= 65535.0)
          {
            v308 = -1;
          }

          v305[256] = v308;
          v309 = v307 * 65535.0;
          if (v309 <= 0.0)
          {
            if (v309 < 0.0)
            {
              v309 = v309 + -0.5;
            }
          }

          else
          {
            v309 = v309 + 0.5;
          }

          if (v309 >= 65535.0)
          {
            v310 = -1;
          }

          else if (v309 <= 0.0)
          {
            v310 = 0;
          }

          else
          {
            v310 = __rev16(v309);
          }

          v305[512] = v310;
        }

        ++v281;
      }

      while (v281 != 256);
      v311 = CFDataCreateWithBytesNoCopy(0, __x, v279, *MEMORY[0x1E695E498]);
      ColorSyncProfileSetTag(v6, @"vcgt", v311);
      if (v311)
      {
        CFRelease(v311);
      }

      v252 = __x;
LABEL_454:
      free(v252);
      v159 = CFDictionaryGetKeysAndValues;
      goto LABEL_455;
    }

    goto LABEL_455;
  }

  if (((v219 | BYTE9(v421)) & 1) == 0 || v422 != 1)
  {
    v256 = *&__yb / *&v418 * 65536.0;
    if (v256 < 0.0)
    {
      v257 = v256 + -0.5;
    }

    else
    {
      v257 = *&__yb / *&v418 * 65536.0;
    }

    v258 = 0.5;
    v242 = v256 <= 0.0;
    v259 = v256 + 0.5;
    if (!v242)
    {
      v257 = v259;
    }

    v260 = *(v159 + 305);
    if (v257 > -2147483650.0)
    {
      v261 = v257;
    }

    else
    {
      v261 = 0x80000000;
    }

    if (v257 < v260)
    {
      v255 = v261;
    }

    else
    {
      v255 = 0x7FFFFFFF;
    }

    v262 = *&__yb / *(&v418 + 1) * 65536.0;
    if (v262 <= 0.0)
    {
      if (v262 >= 0.0)
      {
        goto LABEL_337;
      }

      v258 = -0.5;
    }

    v262 = v262 + v258;
LABEL_337:
    if (v262 > -2147483650.0)
    {
      v263 = v262;
    }

    else
    {
      v263 = 0x80000000;
    }

    if (v262 < v260)
    {
      v254 = v263;
    }

    else
    {
      v254 = 0x7FFFFFFF;
    }

    v264 = *&__yb / *v419 * 65536.0;
    if (v264 <= 0.0)
    {
      if (v264 >= 0.0)
      {
        goto LABEL_348;
      }

      v265 = -0.5;
    }

    else
    {
      v265 = 0.5;
    }

    v264 = v264 + v265;
LABEL_348:
    if (v264 >= v260)
    {
      v253 = 0x7FFFFFFF;
    }

    else if (v264 <= -2147483650.0)
    {
      v253 = 0x80000000;
    }

    else
    {
      v253 = v264;
    }

LABEL_353:
    *(&v427 + 4) = _byteswap_uint64(__PAIR64__(v181, v254));
    *&v426[12] = bswap32(v255);
    *&v428 = _byteswap_uint64(__PAIR64__(v180, v253));
    HIDWORD(v428) = bswap32(v179);
    v266 = CFDataCreateWithBytesNoCopy(0, v426, 48, *MEMORY[0x1E695E498]);
    ColorSyncProfileSetTag(v6, @"vcgt", v266);
    if (v266)
    {
      CFRelease(v266);
    }

    goto LABEL_455;
  }

  v225 = malloc_type_calloc(1uLL, 0x1812uLL, 0x1000040EED21634uLL);
  if (v225)
  {
    v226 = v225;
    *v225 = 1952932726;
    *(v225 + 1) = 0x4030000000000;
    v227 = vcvtd_n_f64_s32(v181, 0x10uLL);
    v228 = vcvtd_n_f64_s32(v180, 0x10uLL);
    *(v225 + 8) = 512;
    v229 = vcvtd_n_f64_s32(v179, 0x10uLL);
    v230 = 2056;
    v231 = v225;
    do
    {
      *v435 = applyParametricGamma(v186, (v230 - 1033) / 1023.0);
      *&v435[8] = applyParametricGamma(v187, (v230 - 1033) / 1023.0);
      *&v435[16] = applyParametricGamma(v188, (v230 - 1033) / 1023.0);
      inverseNativeGammaLookup(&v414, v435, *&v435[16], v232, v233, v234, v235, v236, v237, v238);
      v239 = v228 * *&v435[8];
      v240 = *&v435[16];
      v241 = v227 * *v435 * 65535.0;
      v242 = v241 <= 0.0;
      v243 = v241 + -0.5;
      if (v241 >= 0.0)
      {
        v243 = v227 * *v435 * 65535.0;
      }

      v244 = v241 + 0.5;
      if (v242)
      {
        v244 = v243;
      }

      v245 = __rev16(v244);
      if (v244 <= 0.0)
      {
        v245 = 0;
      }

      if (v244 >= 65535.0)
      {
        v245 = -1;
      }

      *(v231 + 1032) = v245;
      v246 = v239 * 65535.0;
      if (v246 <= 0.0)
      {
        if (v246 < 0.0)
        {
          v246 = v246 + -0.5;
        }
      }

      else
      {
        v246 = v246 + 0.5;
      }

      v247 = v229 * v240;
      v248 = __rev16(v246);
      if (v246 <= 0.0)
      {
        v248 = 0;
      }

      if (v246 >= 65535.0)
      {
        v248 = -1;
      }

      *(v231 + 2056) = v248;
      v249 = v247 * 65535.0;
      if (v249 <= 0.0)
      {
        if (v249 < 0.0)
        {
          v249 = v249 + -0.5;
        }
      }

      else
      {
        v249 = v249 + 0.5;
      }

      if (v249 >= 65535.0)
      {
        v250 = -1;
      }

      else if (v249 <= 0.0)
      {
        v250 = 0;
      }

      else
      {
        v250 = __rev16(v249);
      }

      *(v231 + 3080) = v250;
      --v230;
      v231 -= 2;
    }

    while (v230 != 1032);
    v251 = CFDataCreateWithBytesNoCopy(0, v226, 6162, *MEMORY[0x1E695E498]);
    ColorSyncProfileSetTag(v6, @"vcgt", v251);
    if (v251)
    {
      CFRelease(v251);
    }

    v252 = v226;
    goto LABEL_454;
  }

LABEL_455:
  if (BYTE14(v421) && BYTE10(v421) != 1)
  {
    goto LABEL_575;
  }

  memset(&bytes[4], 0, 60);
  *bytes = 1852400750;
  v312 = *&v414 * 65536.0;
  if (*&v414 * 65536.0 <= 0.0)
  {
    if (*&v414 * 65536.0 >= 0.0)
    {
      goto LABEL_462;
    }

    v313 = -0.5;
  }

  else
  {
    v313 = 0.5;
  }

  v312 = v312 + v313;
LABEL_462:
  v314 = *(v159 + 305);
  if (v312 >= v314)
  {
    v315 = 0x7FFFFFFF;
  }

  else if (v312 <= -2147483650.0)
  {
    v315 = 0x80000000;
  }

  else
  {
    v315 = v312;
  }

  *&bytes[12] = bswap32(v315);
  v316 = *(&v414 + 1) * 65536.0;
  if (*(&v414 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v414 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_472;
    }

    v317 = -0.5;
  }

  else
  {
    v317 = 0.5;
  }

  v316 = v316 + v317;
LABEL_472:
  if (v316 >= v314)
  {
    v318 = 0x7FFFFFFF;
  }

  else if (v316 <= -2147483650.0)
  {
    v318 = 0x80000000;
  }

  else
  {
    v318 = v316;
  }

  *&bytes[16] = bswap32(v318);
  v319 = *&v415 * 65536.0;
  if (*&v415 * 65536.0 <= 0.0)
  {
    if (*&v415 * 65536.0 >= 0.0)
    {
      goto LABEL_482;
    }

    v320 = -0.5;
  }

  else
  {
    v320 = 0.5;
  }

  v319 = v319 + v320;
LABEL_482:
  if (v319 >= v314)
  {
    v321 = 0x7FFFFFFF;
  }

  else if (v319 <= -2147483650.0)
  {
    v321 = 0x80000000;
  }

  else
  {
    v321 = v319;
  }

  *&bytes[20] = bswap32(v321);
  v322 = *(&v415 + 1) * 65536.0;
  if (*(&v415 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v415 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_492;
    }

    v323 = -0.5;
  }

  else
  {
    v323 = 0.5;
  }

  v322 = v322 + v323;
LABEL_492:
  if (v322 >= v314)
  {
    v324 = 0x7FFFFFFF;
  }

  else if (v322 <= -2147483650.0)
  {
    v324 = 0x80000000;
  }

  else
  {
    v324 = v322;
  }

  *&bytes[24] = bswap32(v324);
  v325 = *&v416 * 65536.0;
  if (*&v416 * 65536.0 <= 0.0)
  {
    if (*&v416 * 65536.0 >= 0.0)
    {
      goto LABEL_502;
    }

    v326 = -0.5;
  }

  else
  {
    v326 = 0.5;
  }

  v325 = v325 + v326;
LABEL_502:
  if (v325 >= v314)
  {
    v327 = 0x7FFFFFFF;
  }

  else if (v325 <= -2147483650.0)
  {
    v327 = 0x80000000;
  }

  else
  {
    v327 = v325;
  }

  *&bytes[28] = bswap32(v327);
  v328 = *(&v416 + 1) * 65536.0;
  if (*(&v416 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v416 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_512;
    }

    v329 = -0.5;
  }

  else
  {
    v329 = 0.5;
  }

  v328 = v328 + v329;
LABEL_512:
  if (v328 >= v314)
  {
    v330 = 0x7FFFFFFF;
  }

  else if (v328 <= -2147483650.0)
  {
    v330 = 0x80000000;
  }

  else
  {
    v330 = v328;
  }

  *&bytes[32] = bswap32(v330);
  v331 = *&v417 * 65536.0;
  if (*&v417 * 65536.0 <= 0.0)
  {
    if (*&v417 * 65536.0 >= 0.0)
    {
      goto LABEL_522;
    }

    v332 = -0.5;
  }

  else
  {
    v332 = 0.5;
  }

  v331 = v331 + v332;
LABEL_522:
  if (v331 >= v314)
  {
    v333 = 0x7FFFFFFF;
  }

  else if (v331 <= -2147483650.0)
  {
    v333 = 0x80000000;
  }

  else
  {
    v333 = v331;
  }

  *&bytes[36] = bswap32(v333);
  v334 = *(&v417 + 1) * 65536.0;
  if (*(&v417 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v417 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_532;
    }

    v335 = -0.5;
  }

  else
  {
    v335 = 0.5;
  }

  v334 = v334 + v335;
LABEL_532:
  if (v334 >= v314)
  {
    v336 = 0x7FFFFFFF;
  }

  else if (v334 <= -2147483650.0)
  {
    v336 = 0x80000000;
  }

  else
  {
    v336 = v334;
  }

  *&bytes[40] = bswap32(v336);
  v337 = *&v418 * 65536.0;
  if (*&v418 * 65536.0 <= 0.0)
  {
    if (*&v418 * 65536.0 >= 0.0)
    {
      goto LABEL_542;
    }

    v338 = -0.5;
  }

  else
  {
    v338 = 0.5;
  }

  v337 = v337 + v338;
LABEL_542:
  if (v337 >= v314)
  {
    v339 = 0x7FFFFFFF;
  }

  else if (v337 <= -2147483650.0)
  {
    v339 = 0x80000000;
  }

  else
  {
    v339 = v337;
  }

  *&bytes[44] = bswap32(v339);
  v340 = *(&v418 + 1) * 65536.0;
  if (*(&v418 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v418 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_552;
    }

    v341 = -0.5;
  }

  else
  {
    v341 = 0.5;
  }

  v340 = v340 + v341;
LABEL_552:
  if (v340 >= v314)
  {
    v342 = 0x7FFFFFFF;
  }

  else if (v340 <= -2147483650.0)
  {
    v342 = 0x80000000;
  }

  else
  {
    v342 = v340;
  }

  *&bytes[48] = bswap32(v342);
  v343 = *v419 * 65536.0;
  if (*v419 * 65536.0 > 0.0)
  {
    v344 = 0.5;
LABEL_561:
    v343 = v343 + v344;
    goto LABEL_562;
  }

  if (*v419 * 65536.0 < 0.0)
  {
    v344 = -0.5;
    goto LABEL_561;
  }

LABEL_562:
  if (v343 >= v314)
  {
    v345 = 0x7FFFFFFF;
  }

  else if (v343 <= -2147483650.0)
  {
    v345 = 0x80000000;
  }

  else
  {
    v345 = v343;
  }

  v346 = WORD5(v419[15]) * WORD4(v419[15]) * WORD6(v419[15]);
  *&bytes[52] = bswap32(v345);
  *&bytes[8] = bswap32(v346 + 54);
  *&bytes[56] = __rev16(WORD4(v419[15]));
  *&bytes[58] = __rev16(WORD5(v419[15]));
  *&bytes[60] = __rev16(WORD6(v419[15]));
  if (!v346)
  {
    v352 = CFDataCreateWithBytesNoCopy(0, bytes, 62, *MEMORY[0x1E695E498]);
    v348 = 0;
    goto LABEL_571;
  }

  v347 = malloc_type_malloc(v346 + 62, 0x100004043748019uLL);
  if (v347)
  {
    v348 = v347;
    v349 = *bytes;
    v350 = *&bytes[16];
    v351 = *&bytes[48];
    *(v347 + 2) = *&bytes[32];
    *(v347 + 3) = v351;
    *v347 = v349;
    *(v347 + 1) = v350;
    swab(v420[0], v347 + 62, v346);
    v352 = CFDataCreateWithBytesNoCopy(0, v348, v346 + 62, *MEMORY[0x1E695E498]);
LABEL_571:
    if (v352)
    {
      ColorSyncProfileSetTag(v6, @"ndin", v352);
      CFRelease(v352);
    }

    if (v348)
    {
      free(v348);
    }
  }

LABEL_575:
  if (CFDictionaryContainsKey(v2, @"rXYZ"))
  {
    v353 = CFDictionaryGetValue(v2, @"rXYZ");
    ColorSyncProfileSetTag(v6, @"rXYZ", v353);
  }

  if (CFDictionaryContainsKey(v2, @"gXYZ"))
  {
    v354 = CFDictionaryGetValue(v2, @"gXYZ");
    ColorSyncProfileSetTag(v6, @"gXYZ", v354);
  }

  if (CFDictionaryContainsKey(v2, @"bXYZ"))
  {
    v355 = CFDictionaryGetValue(v2, @"bXYZ");
    ColorSyncProfileSetTag(v6, @"bXYZ", v355);
  }

  if (CFDictionaryContainsKey(v2, @"cicp"))
  {
    v356 = CFDictionaryGetValue(v2, @"cicp");
    v357 = CFGetTypeID(v356);
    if (v357 == CFDataGetTypeID() && CFDataGetLength(v356) >= 12)
    {
      ColorSyncProfileSetTag(v6, @"cicp", v356);
    }
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

const __CFNumber *longFromDictionary(const __CFDictionary *a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = CFDictionaryGetValue(a1, a2);
  valuePtr = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() && !CFNumberIsFloatType(v3))
    {
      if (CFNumberGetValue(v3, kCFNumberLongType, &valuePtr))
      {
        return valuePtr;
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

  return result;
}

BOOL primariesFromDictionary(const __CFDictionary *a1, uint64_t a2)
{
  *a2 = doubleFromDictionary(a1, @"phosphorRx");
  *(a2 + 8) = doubleFromDictionary(a1, @"phosphorRy");
  *(a2 + 16) = doubleFromDictionary(a1, @"phosphorGx");
  *(a2 + 24) = doubleFromDictionary(a1, @"phosphorGy");
  *(a2 + 32) = doubleFromDictionary(a1, @"phosphorBx");
  v4 = doubleFromDictionary(a1, @"phosphorBy");
  *(a2 + 40) = v4;
  v5 = &primariesFromDictionary_primaries;
  v6 = *a2;
  v7 = 4;
  while (1)
  {
    if (*v5 + -0.00001 < v6 && *v5 + 0.00001 > v6)
    {
      v9 = *(a2 + 8);
      v10 = *(v5 + 1);
      v11 = v10 + -0.00001;
      v12 = v10 + 0.00001;
      if (v11 < v9 && v12 > v9)
      {
        v14 = *(a2 + 16);
        v15 = *(v5 + 2);
        v16 = v15 + -0.00001;
        v17 = v15 + 0.00001;
        if (v16 < v14 && v17 > v14)
        {
          v19 = *(a2 + 24);
          v20 = *(v5 + 3);
          v21 = v20 + -0.00001;
          v22 = v20 + 0.00001;
          if (v21 < v19 && v22 > v19)
          {
            v24 = *(a2 + 32);
            v25 = *(v5 + 4);
            v26 = v25 + -0.00001;
            v27 = v25 + 0.00001;
            if (v26 < v24 && v27 > v24)
            {
              v29 = *(v5 + 5);
              v30 = v29 + -0.00001;
              v31 = v29 + 0.00001;
              if (v30 < v4 && v31 > v4)
              {
                v33 = *(a2 + 48);
                v34 = *(v5 + 6);
                v35 = v34 + -0.00001;
                v36 = v34 + 0.00001;
                if (v35 < v33 && v36 > v33)
                {
                  v38 = *(a2 + 56);
                  v39 = *(v5 + 7);
                  if (v39 + -0.00001 < v38 && v39 + 0.00001 > v38)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

    v5 += 9;
    if (!--v7)
    {
      return v6 != 0.0 && *(a2 + 8) != 0.0 && *(a2 + 16) != 0.0 && *(a2 + 24) != 0.0 && *(a2 + 32) != 0.0 && v4 != 0.0;
    }
  }

  *(a2 + 376) = v5[8];
  return v6 != 0.0 && *(a2 + 8) != 0.0 && *(a2 + 16) != 0.0 && *(a2 + 24) != 0.0 && *(a2 + 32) != 0.0 && v4 != 0.0;
}

void ColorSyncProfileSetPrimaries(ColorSyncProfile *a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v78[1].f64[1] = 0.0;
  *(v79 + 8) = 0u;
  *(v78 + 8) = 0u;
  v78[0].f64[0] = 1.0;
  v79[0].f64[0] = 1.0;
  v79[1].f64[1] = 0.0;
  v80 = 1.0;
  v72 = 0u;
  memset(v73, 0, sizeof(v73));
  v70 = 0u;
  v71 = 0u;
  convertSpecToXYZ(a2, &v70, 1);
  v4.i32[0] = vuzp1_s16(vmovn_s64(vcgtq_f64(xmmword_19A96E480, *(&v73[1] + 8))), *(&v73[1] + 8)).u32[0];
  v5 = vmovn_s64(vcgtq_f64(*(&v73[1] + 8), xmmword_19A96E490));
  v4.i32[1] = vuzp1_s16(v5, v5).i32[1];
  if ((vminv_u16(v4) & 1) != 0 && *(&v73[2] + 1) > 0.8246 && *(&v73[2] + 1) < 0.8252)
  {
    *(&v73[1] + 8) = xmmword_19A96E220;
    *(&v73[2] + 1) = 0x3FEA6594AF4F0D84;
    v6 = 1;
  }

  else
  {
    ColorSyncConvertDoubleXYZToD50(&v70, (&v73[1] + 8), &v70, 3, v78);
    ColorSyncConvertDoubleXYZToD50((&v71 + 8), (&v73[1] + 8), (&v71 + 8), 3, v78);
    ColorSyncConvertDoubleXYZToD50(v73, (&v73[1] + 8), v73, 3, v78);
    v6 = 0;
  }

  bytes[5] = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  strcpy(bytes, "XYZ ");
  v7 = *(a2 + 376);
  v8 = MEMORY[0x1E695E498];
  if (v7)
  {
    if (CFEqual(v7, @"ITU_R709"))
    {
      if (get_itu709_profile_predicate != -1)
      {
        dispatch_once(&get_itu709_profile_predicate, &__block_literal_global_1034);
      }

      v9 = &get_itu709_profile_itu709;
    }

    else if (CFEqual(*(a2 + 376), @"ITU_R2020"))
    {
      if (get_itu2020_profile_predicate != -1)
      {
        dispatch_once(&get_itu2020_profile_predicate, &__block_literal_global_30);
      }

      v9 = &get_itu2020_profile_itu2020;
    }

    else if (CFEqual(*(a2 + 376), @"P3_D65"))
    {
      if (get_dispP3_profile_predicate != -1)
      {
        dispatch_once(&get_dispP3_profile_predicate, &__block_literal_global_33);
      }

      v9 = &get_dispP3_profile_dispP3;
    }

    else
    {
      if (!CFEqual(*(a2 + 376), @"DCI_P3"))
      {
        __assert_rtn("setPrimariesByName", "ColorSyncMakeDisplayProfile.c", 551, "0");
      }

      if (get_dciP3_profile_predicate != -1)
      {
        dispatch_once(&get_dciP3_profile_predicate, &__block_literal_global_36);
      }

      v9 = &get_dciP3_profile_dciP3;
    }

    v48 = *v9;
    v49 = *(a2 + 384);
    Tag = ColorSyncProfileGetTag(*v9, @"rXYZ");
    ColorSyncProfileSetTag(a1, @"rXYZ", Tag);
    v51 = ColorSyncProfileGetTag(v48, @"gXYZ");
    ColorSyncProfileSetTag(a1, @"gXYZ", v51);
    v52 = ColorSyncProfileGetTag(v48, @"bXYZ");
    ColorSyncProfileSetTag(a1, @"bXYZ", v52);
    if (v49 >> 26)
    {
      v53 = ColorSyncProfileGetTag(v48, @"chad");
      ColorSyncProfileSetTag(a1, @"chad", v53);
    }

    goto LABEL_124;
  }

  v10 = *&v70 * 65536.0;
  if (*&v70 * 65536.0 <= 0.0)
  {
    if (*&v70 * 65536.0 >= 0.0)
    {
      goto LABEL_20;
    }

    v11 = -0.5;
  }

  else
  {
    v11 = 0.5;
  }

  v10 = v10 + v11;
LABEL_20:
  if (v10 >= 2147483650.0)
  {
    v12 = 0x7FFFFFFF;
  }

  else if (v10 <= -2147483650.0)
  {
    v12 = 0x80000000;
  }

  else
  {
    v12 = v10;
  }

  v68 = bswap32(v12);
  v13 = *(&v70 + 1) * 65536.0;
  if (*(&v70 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v70 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_30;
    }

    v14 = -0.5;
  }

  else
  {
    v14 = 0.5;
  }

  v13 = v13 + v14;
LABEL_30:
  if (v13 >= 2147483650.0)
  {
    v15 = 0x7FFFFFFF;
  }

  else if (v13 <= -2147483650.0)
  {
    v15 = 0x80000000;
  }

  else
  {
    v15 = v13;
  }

  LODWORD(v69) = bswap32(v15);
  v16 = *&v71 * 65536.0;
  if (*&v71 * 65536.0 <= 0.0)
  {
    if (*&v71 * 65536.0 >= 0.0)
    {
      goto LABEL_40;
    }

    v17 = -0.5;
  }

  else
  {
    v17 = 0.5;
  }

  v16 = v16 + v17;
LABEL_40:
  if (v16 >= 2147483650.0)
  {
    v18 = 0x7FFFFFFF;
  }

  else if (v16 <= -2147483650.0)
  {
    v18 = 0x80000000;
  }

  else
  {
    v18 = v16;
  }

  HIDWORD(v69) = bswap32(v18);
  v19 = *MEMORY[0x1E695E498];
  v20 = CFDataCreateWithBytesNoCopy(0, bytes, 20, *MEMORY[0x1E695E498]);
  ColorSyncProfileSetTag(a1, @"rXYZ", v20);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(&v71 + 1) * 65536.0;
  if (*(&v71 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v71 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_52;
    }

    v22 = -0.5;
  }

  else
  {
    v22 = 0.5;
  }

  v21 = v21 + v22;
LABEL_52:
  if (v21 >= 2147483650.0)
  {
    v23 = 0x7FFFFFFF;
  }

  else if (v21 <= -2147483650.0)
  {
    v23 = 0x80000000;
  }

  else
  {
    v23 = v21;
  }

  v68 = bswap32(v23);
  v24 = *&v72 * 65536.0;
  if (*&v72 * 65536.0 <= 0.0)
  {
    if (*&v72 * 65536.0 >= 0.0)
    {
      goto LABEL_62;
    }

    v25 = -0.5;
  }

  else
  {
    v25 = 0.5;
  }

  v24 = v24 + v25;
LABEL_62:
  if (v24 >= 2147483650.0)
  {
    v26 = 0x7FFFFFFF;
  }

  else if (v24 <= -2147483650.0)
  {
    v26 = 0x80000000;
  }

  else
  {
    v26 = v24;
  }

  LODWORD(v69) = bswap32(v26);
  v27 = *(&v72 + 1) * 65536.0;
  if (*(&v72 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v72 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_72;
    }

    v28 = -0.5;
  }

  else
  {
    v28 = 0.5;
  }

  v27 = v27 + v28;
LABEL_72:
  if (v27 >= 2147483650.0)
  {
    v29 = 0x7FFFFFFF;
  }

  else if (v27 <= -2147483650.0)
  {
    v29 = 0x80000000;
  }

  else
  {
    v29 = v27;
  }

  HIDWORD(v69) = bswap32(v29);
  v30 = CFDataCreateWithBytesNoCopy(0, bytes, 20, v19);
  ColorSyncProfileSetTag(a1, @"gXYZ", v30);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *v73 * 65536.0;
  if (*v73 * 65536.0 <= 0.0)
  {
    if (*v73 * 65536.0 >= 0.0)
    {
      goto LABEL_84;
    }

    v32 = -0.5;
  }

  else
  {
    v32 = 0.5;
  }

  v31 = v31 + v32;
LABEL_84:
  if (v31 >= 2147483650.0)
  {
    v33 = 0x7FFFFFFF;
  }

  else if (v31 <= -2147483650.0)
  {
    v33 = 0x80000000;
  }

  else
  {
    v33 = v31;
  }

  v68 = bswap32(v33);
  v34 = *(v73 + 1) * 65536.0;
  if (*(v73 + 1) * 65536.0 <= 0.0)
  {
    if (*(v73 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_94;
    }

    v35 = -0.5;
  }

  else
  {
    v35 = 0.5;
  }

  v34 = v34 + v35;
LABEL_94:
  if (v34 >= 2147483650.0)
  {
    v36 = 0x7FFFFFFF;
  }

  else if (v34 <= -2147483650.0)
  {
    v36 = 0x80000000;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v69) = bswap32(v36);
  v37 = *&v73[1] * 65536.0;
  if (*&v73[1] * 65536.0 > 0.0)
  {
    v38 = 0.5;
LABEL_103:
    v37 = v37 + v38;
    goto LABEL_104;
  }

  if (*&v73[1] * 65536.0 < 0.0)
  {
    v38 = -0.5;
    goto LABEL_103;
  }

LABEL_104:
  if (v37 >= 2147483650.0)
  {
    v39 = 0x7FFFFFFF;
  }

  else if (v37 <= -2147483650.0)
  {
    v39 = 0x80000000;
  }

  else
  {
    v39 = v37;
  }

  HIDWORD(v69) = bswap32(v39);
  v40 = CFDataCreateWithBytesNoCopy(0, bytes, 20, v19);
  ColorSyncProfileSetTag(a1, @"bXYZ", v40);
  if (v40)
  {
    CFRelease(v40);
  }

  if (*(a2 + 384) >> 26)
  {
    *v74 = 842229363;
    v41 = vdupq_n_s64(0x40F0000000000000uLL);
    __asm { FMOV            V3.2D, #0.5 }

    v75 = vrev32q_s8(vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(_Q3, v41, v78[0])), vcvtq_s64_f64(vmlaq_f64(_Q3, v41, v78[1]))));
    v76 = vrev32q_s8(vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(_Q3, v41, v79[0])), vcvtq_s64_f64(vmlaq_f64(_Q3, v41, v79[1]))));
    v77 = bswap32((v80 * 65536.0 + 0.5));
    v47 = CFDataCreateWithBytesNoCopy(0, v74, 44, v19);
    ColorSyncProfileSetTag(a1, @"chad", v47);
    if (v47)
    {
      CFRelease(v47);
    }
  }

LABEL_124:
  if (*(a2 + 384) >> 26)
  {
    v54 = v6;
  }

  else
  {
    v54 = 1;
  }

  if ((v54 & 1) == 0)
  {
    *(&v73[1] + 8) = xmmword_19A96E220;
    *(&v73[2] + 1) = 0x3FEA6594AF4F0D84;
    v55 = 63189.8112;
    goto LABEL_132;
  }

  v55 = *(&v73[1] + 1) * 65536.0;
  if (*(&v73[1] + 1) * 65536.0 > 0.0)
  {
LABEL_132:
    v56 = 0.5;
    goto LABEL_133;
  }

  if (*(&v73[1] + 1) * 65536.0 >= 0.0)
  {
    goto LABEL_134;
  }

  v56 = -0.5;
LABEL_133:
  v55 = v55 + v56;
LABEL_134:
  if (v55 >= 2147483650.0)
  {
    v57 = 0x7FFFFFFF;
  }

  else if (v55 <= -2147483650.0)
  {
    v57 = 0x80000000;
  }

  else
  {
    v57 = v55;
  }

  v68 = bswap32(v57);
  v58 = *&v73[2] * 65536.0;
  if (*&v73[2] * 65536.0 <= 0.0)
  {
    if (*&v73[2] * 65536.0 >= 0.0)
    {
      goto LABEL_144;
    }

    v59 = -0.5;
  }

  else
  {
    v59 = 0.5;
  }

  v58 = v58 + v59;
LABEL_144:
  if (v58 >= 2147483650.0)
  {
    v60 = 0x7FFFFFFF;
  }

  else if (v58 <= -2147483650.0)
  {
    v60 = 0x80000000;
  }

  else
  {
    v60 = v58;
  }

  LODWORD(v69) = bswap32(v60);
  v61 = *(&v73[2] + 1) * 65536.0;
  if (*(&v73[2] + 1) * 65536.0 <= 0.0)
  {
    if (*(&v73[2] + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_154;
    }

    v62 = -0.5;
  }

  else
  {
    v62 = 0.5;
  }

  v61 = v61 + v62;
LABEL_154:
  if (v61 >= 2147483650.0)
  {
    v63 = 0x7FFFFFFF;
  }

  else if (v61 <= -2147483650.0)
  {
    v63 = 0x80000000;
  }

  else
  {
    v63 = v61;
  }

  HIDWORD(v69) = bswap32(v63);
  v64 = CFDataCreateWithBytesNoCopy(0, bytes, 20, *v8);
  ColorSyncProfileSetTag(a1, @"wtpt", v64);
  if (v64)
  {
    CFRelease(v64);
  }

  v65 = *MEMORY[0x1E69E9840];
}

double convertSpecToXYZ(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 && (v5 = *(a1 + 352)) != 0)
  {
    v33 = 0;
    v34 = 0;
    v6 = &v34;
    v7 = &v33;
    xyFromTemp(v5, &v34, &v33);
  }

  else
  {
    v6 = (a1 + 48);
    v7 = (a1 + 56);
  }

  v8 = *v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *a1 - v12;
  v15 = *a1 - v10;
  v16 = *v7 * ((v10 - v12) * v9 - v14 * v11 + v15 * v13);
  v17 = *v6 - v12;
  v18 = *v6 - v10;
  v19 = v9 * ((v10 - v12) * *v7 - v17 * v11 + v18 * v13) / v16;
  v20 = v14 * *v7 - v17 * v9;
  v21 = *v6 - *a1;
  v22 = -(v11 * (v20 + v21 * v13)) / v16;
  v23 = v13 * (v15 * *v7 - v18 * v9 + v21 * v11) / v16;
  v24 = *a1 * v19 / v9;
  v25 = ((1.0 - *a1) / v9 + -1.0) * v19;
  v26 = v10 * v22 / v11;
  v27 = ((1.0 - v10) / v11 + -1.0) * v22;
  v28 = v12 * v23 / v13;
  v29 = ((1.0 - v12) / v13 + -1.0) * v23;
  v30 = *v6 / *v7;
  v31 = 1.0 - *v6 - *v7;
  *a2 = v24;
  *(a2 + 8) = v19;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 32) = v22;
  *(a2 + 40) = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v23;
  *(a2 + 64) = v29;
  *(a2 + 72) = v30;
  *(a2 + 80) = 0x3FF0000000000000;
  result = v31 / v8;
  *(a2 + 88) = result;
  return result;
}

ColorSyncProfileRef __get_itu709_profile_block_invoke()
{
  result = ColorSyncProfileCreateWithName(kColorSyncITUR709Profile);
  get_itu709_profile_itu709 = result;
  return result;
}

double doubleFromDictionary(const __CFDictionary *a1, const void *a2)
{
  if (!a2)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  valuePtr = 0.0;
  v3 = 0.0;
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberIsFloatType(v4))
      {
        if (CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr))
        {
          return valuePtr;
        }

        else
        {
          return 0.0;
        }
      }
    }
  }

  return v3;
}

double gammaCurveFromDictionary(uint64_t a1, CFDictionaryRef theDict, void *key)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 255;
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFArrayGetTypeID() && CFArrayGetCount(v6) == 8)
    {
      valuePtr = 255;
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, &valuePtr) == 1 && valuePtr <= 4u)
      {
        *a1 = valuePtr;
        v16 = 0.0;
        v9 = CFArrayGetValueAtIndex(v6, 1);
        if (CFNumberGetValue(v9, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 8) = v16;
        }

        v10 = CFArrayGetValueAtIndex(v6, 2);
        if (CFNumberGetValue(v10, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 16) = v16;
        }

        v11 = CFArrayGetValueAtIndex(v6, 3);
        if (CFNumberGetValue(v11, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 24) = v16;
        }

        v12 = CFArrayGetValueAtIndex(v6, 4);
        if (CFNumberGetValue(v12, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 32) = v16;
        }

        v13 = CFArrayGetValueAtIndex(v6, 5);
        if (CFNumberGetValue(v13, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 40) = v16;
        }

        v14 = CFArrayGetValueAtIndex(v6, 6);
        if (CFNumberGetValue(v14, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 48) = v16;
        }

        v15 = CFArrayGetValueAtIndex(v6, 7);
        if (CFNumberGetValue(v15, kCFNumberDoubleType, &v16) == 1)
        {
          result = v16;
          *(a1 + 56) = v16;
        }
      }
    }
  }

  return result;
}

double ColorSyncConvertDoubleXYZToD50(__int128 *a1, float64x2_t *a2, __int128 *a3, int a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = xmmword_19A96E220;
  v25 = 0x3FEA6594AF4F0D84;
  v7 = *(a1 + 2);
  *a3 = *a1;
  *(a3 + 2) = v7;
  v30 = 0.0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  ColorSyncGetAdaptationMtx(a4, v26.f64, a2, &v24);
  if (a5)
  {
    v9 = v26;
    v8 = v27;
    *a5 = v26;
    *(a5 + 16) = v8;
    _V4.D[1] = *(&v28 + 1);
    v10 = v29;
    *(a5 + 32) = v28;
    *(a5 + 48) = v10;
    v12 = v30;
    *(a5 + 64) = v30;
  }

  else
  {
    _V4.D[1] = *(&v28 + 1);
    v10 = v29;
    v9 = v26;
    *&v8 = v27;
    v12 = v30;
  }

  v13 = *a3;
  _D5 = *(a3 + 2);
  v15 = *(a3 + 1);
  __asm { FMLA            D16, D5, V4.D[1] }

  v21 = 0.0;
  if (_D16 < 0.0 || (v21 = 1.0, _D16 > 1.0))
  {
    _D16 = v21;
  }

  result = vmuld_lane_f64(v15, v9, 1) + *&v13 * v9.f64[0] + _D5 * *&v8;
  *a3 = result;
  *(a3 + 1) = _D16;
  *(a3 + 2) = vmuld_lane_f64(v15, v10, 1) + *&v13 * v10.f64[0] + _D5 * v12;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

double ColorSyncGetAdaptationMtx(int a1, double *a2, float64x2_t *a3, float64x2_t *a4)
{
  v28[9] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 2;
  }

  if ((v5 - 4) < 0xFFFFFFFD)
  {
    v5 = 3;
  }

  v6 = &Bradford_mtx;
  if (v5 == 2)
  {
    v6 = &vonKries_mtx;
    v7 = &invVonKries_mtx;
  }

  else
  {
    v7 = &invBradford_mtx;
  }

  if (v5 == 1)
  {
    v8 = &identity_mtx;
  }

  else
  {
    v8 = v6;
  }

  if (v5 == 1)
  {
    v9 = &identity_mtx;
  }

  else
  {
    v9 = v7;
  }

  v10 = a3[1].f64[0];
  v11 = v8[1];
  v12 = v8[2];
  v13 = v8[3];
  v14 = vmuld_lane_f64(v11, *a3, 1) + a3->f64[0] * *v8 + v10 * v12;
  v15 = v8[4];
  v16 = v8[5];
  v17 = vmuld_lane_f64(v15, *a3, 1) + a3->f64[0] * v13 + v10 * v16;
  v18 = v8[6];
  v19 = v8[7];
  v20 = v8[8];
  v21 = vmuld_lane_f64(v19, *a3, 1) + a3->f64[0] * v18 + v10 * v20;
  v22 = a4[1].f64[0];
  v23 = vmuld_lane_f64(v11, *a4, 1) + a4->f64[0] * *v8 + v22 * v12;
  v24 = vmuld_lane_f64(v15, *a4, 1) + a4->f64[0] * v13 + v22 * v16;
  v25 = vmuld_lane_f64(v19, *a4, 1) + a4->f64[0] * v18 + v22 * v20;
  v28[0] = v23 / v14;
  memset(&v28[1], 0, 24);
  v28[4] = v24 / v17;
  memset(&v28[5], 0, 24);
  v28[8] = v25 / v21;
  MatrixMatrix(v8, v28, a2);
  v26 = *MEMORY[0x1E69E9840];

  return MatrixMatrix(a2, v9, a2);
}

double MatrixMatrix(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  v21 = v7 * v13 + v4 * *a2 + v10 * v14;
  *a3 = v6 * v13 + *a1 * *a2 + v9 * v14;
  a3[1] = v21;
  a3[2] = v8 * v13 + v5 * v12 + v11 * v14;
  a3[3] = v6 * v16 + v3 * v15 + v9 * v17;
  a3[4] = v7 * v16 + v4 * v15 + v10 * v17;
  a3[5] = v8 * v16 + v5 * v15 + v11 * v17;
  a3[6] = v6 * v19 + v3 * v18 + v9 * v20;
  a3[7] = v7 * v19 + v4 * v18 + v10 * v20;
  result = v8 * v19 + v5 * v18 + v11 * v20;
  a3[8] = result;
  return result;
}

uint64_t tagValueComparer(uint64_t result, CFTypeRef cf1, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    v4 = result;
    result = CFEqual(cf1, *a3);
    if (result)
    {
      *(a3 + 8) = v4;
    }
  }

  return result;
}

void ColorSyncProfileSetParametricTRCTag(ColorSyncProfile *a1, const __CFString *a2, unsigned int a3, float64x2_t a4, float64_t a5, float64x2_t a6, float64_t a7, float64x2_t a8, float64_t a9, double a10)
{
  v27 = *MEMORY[0x1E69E9840];
  *bytes = 1634886000;
  v21 = __rev16(a3);
  a6.f64[1] = a7;
  a4.f64[1] = a5;
  v22 = 0;
  v10 = vdupq_n_s64(0x40F0000000000000uLL);
  __asm { FMOV            V3.2D, #0.5 }

  v23 = vrev32q_s8(vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(_Q3, v10, a4)), vcvtq_s64_f64(vmlaq_f64(_Q3, v10, a6))));
  a8.f64[1] = a9;
  v24 = vrev32_s8(vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q3, v10, a8))));
  v25 = bswap32((a10 * 65536.0 + 0.5));
  v26 = 0;
  if (a3 <= 4)
  {
    v18 = CFDataCreateWithBytesNoCopy(0, bytes, qword_19A96E638[a3], *MEMORY[0x1E695E498]);
    ColorSyncProfileSetTag(a1, a2, v18);
    if (v18)
    {
      CFRelease(v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void ColorSyncProfileSetHeader(ColorSyncMutableProfileRef prof, CFDataRef header)
{
  if (prof)
  {
    v4 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID && *(prof + 39) == 1)
    {
      v5 = CFGetTypeID(header);
      if (v5 == CFDataGetTypeID())
      {
        MutableCopy = CFDataCreateMutableCopy(0, 128, header);
        if (MutableCopy)
        {
          v7 = MutableCopy;
          CFDataSetLength(MutableCopy, 128);
          MutableBytePtr = CFDataGetMutableBytePtr(v7);
          *MutableBytePtr = vrev32q_s8(*MutableBytePtr);
          v9 = vrev16_s8(*(MutableBytePtr + 24));
          *(MutableBytePtr + 2) = vrev32_s8(*(MutableBytePtr + 16));
          *(MutableBytePtr + 3) = v9;
          *(MutableBytePtr + 16) = bswap32(*(MutableBytePtr + 16)) >> 16;
          *(MutableBytePtr + 17) = bswap32(*(MutableBytePtr + 17)) >> 16;
          *(MutableBytePtr + 36) = vrev32q_s8(*(MutableBytePtr + 36));
          *(MutableBytePtr + 52) = vrev32q_s8(*(MutableBytePtr + 52));
          *(MutableBytePtr + 68) = vrev32q_s8(*(MutableBytePtr + 68));
          pthread_mutex_lock((prof + 24));
          CFDictionarySetValue(*(prof + 12), @"iccHeader", v7);
          v10 = *(prof + 14);
          if (v10)
          {
            CFRelease(v10);
            *(prof + 14) = 0;
          }

          *(prof + 17) = 0;
          *(prof + 18) = 0;
          pthread_mutex_unlock((prof + 24));

          CFRelease(v7);
        }
      }
    }
  }
}

void ColorSyncProfileSetLocalizedStringDictionary(ColorSyncProfile *a1, const __CFString *a2, const void *a3)
{
  bytes[5] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v33 = 0;
  strcpy(bytes, "mluc");
  *v32 = 0;
  Mutable = CFDataCreateMutable(0, 0);
  if (!a3)
  {
    goto LABEL_39;
  }

  v7 = CFGetTypeID(a3);
  if (v7 != CFDictionaryGetTypeID() || !CFDictionaryGetCount(a3) || !Mutable)
  {
    goto LABEL_39;
  }

  Count = CFDictionaryGetCount(a3);
  v9 = malloc_type_calloc(1uLL, 24 * Count, 0x100004077774924uLL);
  if (v9)
  {
    v10 = v9;
    v30 = a1;
    v31 = a2;
    v11 = &v9[Count];
    CFDictionaryGetKeysAndValues(a3, v9, v11);
    if (Count < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = v10;
      v14 = Count;
      do
      {
        if (localeCFStrToChars(*v13, 0) && (v15 = v13[Count]) != 0 && CFStringGetLength(v15))
        {
          ++v12;
        }

        else
        {
          v13[Count] = 0;
          *v13 = 0;
        }

        ++v13;
        --v14;
      }

      while (v14);
    }

    v36 = bswap32(v12);
    LODWORD(v37) = 201326592;
    CFDataAppendBytes(Mutable, bytes, 16);
    if (Count >= 1)
    {
      v16 = 0;
      v17 = &v10[2 * Count];
      v18 = 12 * v12 + 16;
      do
      {
        v19 = v10[v16];
        if (v19)
        {
          localeCFStrToChars(v19, v32);
          v20 = 2 * CFStringGetLength(v11[v16]);
          *&v32[4] = v20;
          v33 = v18;
          v17[v16] = v18;
          if (v16)
          {
            v21 = 0;
            while (1)
            {
              v22 = v11[v21];
              if (v22)
              {
                if (CFEqual(v11[v16], v22))
                {
                  break;
                }
              }

              if (v16 == ++v21)
              {
                v20 = *&v32[4];
                LODWORD(v23) = v33;
                goto LABEL_27;
              }
            }

            v20 = *&v32[4];
            v18 -= *&v32[4];
            v23 = v17[v21];
            v17[v16] = 0;
          }

          else
          {
            LODWORD(v23) = v18;
          }

LABEL_27:
          v18 += v20;
          *&v32[4] = bswap32(v20);
          v33 = bswap32(v23);
          CFDataAppendBytes(Mutable, v32, 12);
        }

        ++v16;
      }

      while (v16 != Count);
      for (i = 0; i != Count; ++i)
      {
        if (v10[i])
        {
          if (v17[i])
          {
            Length = CFStringGetLength(v11[i]);
            v26 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
            if (v26)
            {
              v27 = v26;
              v39.location = 0;
              v39.length = Length;
              CFStringGetCharacters(v11[i], v39, v26);
              v28 = Length & 0x7FFFFFFFFFFFFFFFLL;
              if ((Length & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v29 = v27;
                do
                {
                  *v29 = bswap32(*v29) >> 16;
                  v29 += 2;
                  --v28;
                }

                while (v28);
              }

              CFDataAppendBytes(Mutable, v27, 2 * Length);
              free(v27);
            }
          }
        }
      }
    }

    ColorSyncProfileSetTag(v30, v31, Mutable);
    free(v10);
LABEL_39:
    if (!Mutable)
    {
      return;
    }
  }

  CFRelease(Mutable);
}

CFTypeRef create_DisplayP3Profile()
{
  if (create_DisplayP3Profile_predicate != -1)
  {
    dispatch_once(&create_DisplayP3Profile_predicate, &__block_literal_global_214);
  }

  v1 = create_DisplayP3Profile_profile;

  return CFRetain(v1);
}

CFTypeRef create_ITUR709Profile()
{
  if (create_ITUR709Profile_predicate != -1)
  {
    dispatch_once(&create_ITUR709Profile_predicate, &__block_literal_global_250);
  }

  v1 = create_ITUR709Profile_profile;

  return CFRetain(v1);
}

void ColorSyncProfileSetTag(ColorSyncMutableProfileRef prof, CFStringRef signature, CFDataRef data)
{
  if (prof)
  {
    v6 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v6 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      if (data)
      {
        if (*(prof + 39) == 1)
        {
          v7 = CFGetTypeID(data);
          if (v7 == CFDataGetTypeID())
          {
            v11 = data;
            cf2 = 0;
            pthread_mutex_lock((prof + 24));
            CFDictionaryApplyFunction(*(prof + 12), tagValueComparer, &v11);
            if (cf2 && !CFEqual(signature, cf2))
            {
              CFDictionarySetValue(*(prof + 12), signature, cf2);
            }

            else
            {
              Copy = CFDataCreateCopy(0, data);
              if (Copy)
              {
                v9 = Copy;
                if (CFDictionaryContainsValue(*(prof + 12), signature))
                {
                  removeReference(prof, signature);
                }

                CFDictionarySetValue(*(prof + 12), signature, v9);
                v10 = *(prof + 14);
                if (v10)
                {
                  CFRelease(v10);
                  *(prof + 14) = 0;
                }

                *(prof + 17) = 0;
                *(prof + 18) = 0;
                CFRelease(v9);
              }
            }

            pthread_mutex_unlock((prof + 24));
          }
        }
      }
    }
  }
}

void ColorSyncProfileSetDescriptionTag(const ColorSyncProfile *a1, const __CFString *a2, __CFString *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = ColorSyncProfileCopyHeader(a1);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  BytePtr = CFDataGetBytePtr(v6);
  if (!BytePtr || *(BytePtr + 9) != 1633907568)
  {
    CFRelease(v7);
    goto LABEL_11;
  }

  v9 = *(BytePtr + 2);
  CFRelease(v7);
  if (!(v9 >> 26))
  {
LABEL_11:
    bzero(buffer, 0x401uLL);
    usedBufLen = 0;
    bzero(v29, 0x802uLL);
    if (!a2)
    {
      goto LABEL_38;
    }

    v12 = CFGetTypeID(a2);
    if (v12 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a2);
      if (CFStringGetCString(a2, buffer, 1024, 0x600u))
      {
        v14 = 0;
      }

      else
      {
        v34.location = 0;
        v34.length = Length;
        CFStringGetBytes(a2, v34, 0x600u, 0x3Fu, 0, buffer, 1024, 0);
        v35.location = 0;
        v35.length = Length;
        CFStringGetBytes(a2, v35, 0x100u, 0x3Fu, 0, v29, 1024, &usedBufLen);
        v14 = ++usedBufLen;
      }

      v20 = strlen(buffer) + 1;
      v22 = v29;
      v21 = a1;
      v23 = v14;
      goto LABEL_31;
    }

    v15 = CFGetTypeID(a2);
    if (v15 == CFDictionaryGetTypeID())
    {
      ColorSyncProfileSetLocalizedStringDictionary(a1, @"dscm", a2);
      if (!a3)
      {
        goto LABEL_32;
      }

      v16 = CFGetTypeID(a3);
      if (v16 != CFStringGetTypeID())
      {
        goto LABEL_32;
      }

      v17 = CFStringGetLength(a3);
      if (!v17)
      {
        goto LABEL_32;
      }

      v33.length = v17;
      v33.location = 0;
      if (!CFStringGetBytes(a3, v33, 0x600u, 0x3Fu, 0, buffer, 1024, 0))
      {
        goto LABEL_32;
      }
    }

    else
    {
LABEL_38:
      if (ColorSyncProfileContainsTag(a1, @"desc") || ColorSyncProfileContainsTag(a1, @"dscm"))
      {
        goto LABEL_32;
      }

      v18 = a3 ? a3 : @"Unknown";
      v19 = CFGetTypeID(v18);
      if (v19 != CFStringGetTypeID())
      {
        goto LABEL_32;
      }

      CFStringGetLength(v18);
      if (!CFStringGetCString(v18, buffer, 1024, 0x600u))
      {
        goto LABEL_32;
      }
    }

    v20 = strlen(buffer) + 1;
    v21 = a1;
    v22 = 0;
    v23 = 0;
LABEL_31:
    setDESCTag(v21, buffer, v20, v22, v23);
    goto LABEL_32;
  }

  if (!a2)
  {
LABEL_32:
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  v10 = CFGetTypeID(a2);
  if (v10 != CFDictionaryGetTypeID())
  {
    v25 = CFGetTypeID(a2);
    if (v25 == CFStringGetTypeID())
    {
      *v29 = @"en_US";
      *buffer = a2;
      v26 = CFDictionaryCreate(0, v29, buffer, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v26)
      {
        v27 = v26;
        ColorSyncProfileSetLocalizedStringDictionary(a1, @"desc", v26);
        CFRelease(v27);
      }
    }

    goto LABEL_32;
  }

  v11 = *MEMORY[0x1E69E9840];

  ColorSyncProfileSetLocalizedStringDictionary(a1, @"desc", a2);
}

CFArrayRef ColorSyncProfileCopyTagSignatures(ColorSyncProfileRef prof)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (prof)
  {
    v3 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v3 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID && Mutable != 0)
    {
      if (*(prof + 39) == 1)
      {
        pthread_mutex_lock((prof + 24));
      }

      CFDictionaryApplyFunction(*(prof + 12), tagSignatureAppender, Mutable);
      if (*(prof + 39) == 1)
      {
        pthread_mutex_unlock((prof + 24));
      }

      v6.length = CFArrayGetCount(Mutable);
      v6.location = 0;
      CFArraySortValues(Mutable, v6, compareTags, 0);
    }
  }

  return Mutable;
}

void tagSignatureAppender(const void *a1, uint64_t a2, __CFArray *a3)
{
  if (a1 && CFEqual(a1, @"iccHeader") != 1)
  {

    CFArrayAppendValue(a3, a1);
  }
}

const void *gammaFromDictionary(const __CFDictionary *a1, const void *a2)
{
  v3 = doubleFromDictionary(a1, a2);
  result = CFDictionaryGetValue(a1, @"unrestrictedGamma");
  if (v3 != 0.0 && v3 < 0.25)
  {
    v5 = result == *MEMORY[0x1E695E4D0];
  }

  return result;
}

uint64_t localeCFStrToChars(const __CFString *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  *buffer = 0;
  if (a2)
  {
    *a2 = 0;
  }

  result = CFStringGetCString(a1, buffer, 9, 0x600u);
  if (result)
  {
    v4 = strlen(buffer);
    result = 0;
    if (v4 <= 5 && ((1 << v4) & 0x34) != 0)
    {
      if (a2)
      {
        v5 = &buffer[3];
        *a2 = *buffer;
        if (v4 == 4)
        {
          v6 = &buffer[2];
          goto LABEL_11;
        }

        if (v4 == 5)
        {
          v6 = &buffer[3];
          v5 = &buffer[4];
LABEL_11:
          *(a2 + 2) = *v6;
          *(a2 + 3) = *v5;
        }
      }

      result = 1;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

__CFData *createProfileData(CFDictionaryRef *a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v3 = a1[12];
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"iccHeader");
      Count = CFDictionaryGetCount(a1[12]);
      if (Value)
      {
        if (Count >= 2)
        {
          v6 = Count - 1;
          v7 = a1[12];
          context[0] = Mutable;
          context[1] = v7;
          context[3] = 0;
          BytePtr = CFDataGetBytePtr(Value);
          CFDataAppendBytes(Mutable, BytePtr, 128);
          *bytes = bswap32(v6);
          CFDataAppendBytes(Mutable, bytes, 4);
          CFDataSetLength(Mutable, 12 * v6 + 132);
          context[2] = 12 * v6 + 132;
          v9 = ColorSyncProfileCopyTagSignatures(a1);
          if (v9)
          {
            v10 = v9;
            v11 = CFArrayGetCount(v9);
            v15.location = 0;
            v15.length = v11;
            CFArrayApplyFunction(v10, v15, tagDataAdder, context);
            v16.location = 0;
            v16.length = v11;
            CFArrayApplyFunction(v10, v16, tagReferenceAdder, context);
            LODWORD(v11) = bswap32(CFDataGetLength(Mutable));
            *CFDataGetMutableBytePtr(Mutable) = v11;
            CFRelease(v10);
          }
        }
      }
    }
  }

  return Mutable;
}

uint64_t overlap_verifier(uint64_t result, CFTypeRef cf, uint64_t a3)
{
  if (!cf)
  {
    return result;
  }

  if (*(a3 + 16))
  {
    return result;
  }

  v5 = result;
  v6 = CFGetTypeID(cf);
  result = CFDataGetTypeID();
  if (v6 != result)
  {
    return result;
  }

  BytePtr = CFDataGetBytePtr(cf);
  result = CFDataGetLength(cf);
  if (!BytePtr)
  {
    return result;
  }

  v8 = *a3;
  v9 = *a3 + *(a3 + 8) - (*(a3 + 8) != 0);
  if (*a3 >= BytePtr)
  {
    v11 = &BytePtr[result - (result != 0)];
    if (BytePtr >= v8)
    {
      *(a3 + 16) = v9 != v11;
      if (v9 == v11)
      {
        return result;
      }

      goto LABEL_14;
    }

    v10 = v11 >= v8;
  }

  else
  {
    v10 = v9 >= BytePtr;
  }

  v12 = v10;
  *(a3 + 16) = v12;
  if (v10)
  {
LABEL_14:
    *(a3 + 32) = v5;
  }

  return result;
}

BOOL CMMProfile::Usable(CMMProfile *this)
{
  if (*(this + 17) != 1633907568)
  {
    return 0;
  }

  v2 = *(this + 43) << 24;
  if (v2 != 0x4000000 && v2 != 0x2000000)
  {
    return 0;
  }

  v4 = ColorSyncProfileCopyTagSignatures(*(this + 2));
  if (!v4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count)
  {
    v7 = Count;
    v8 = 0;
    for (i = 0; i != v7; v8 = ++i >= v7)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      FourCharCodeFromSignature = ColorSyncGetFourCharCodeFromSignature(ValueAtIndex);
      v12 = FourCharCodeFromSignature;
      if (FourCharCodeFromSignature > 1633776230)
      {
        if (FourCharCodeFromSignature <= 1733843289)
        {
          if (FourCharCodeFromSignature <= 1649957209)
          {
            if (FourCharCodeFromSignature != 1633776231)
            {
              v15 = 1649693251;
              goto LABEL_39;
            }
          }

          else if (FourCharCodeFromSignature != 1649957210 && FourCharCodeFromSignature != 1667851120)
          {
            v15 = 1733579331;
            goto LABEL_39;
          }
        }

        else if (FourCharCodeFromSignature > 1800688194)
        {
          if (FourCharCodeFromSignature != 1800688195 && FourCharCodeFromSignature != 1918128707)
          {
            v15 = 1918392666;
            goto LABEL_39;
          }
        }

        else if (FourCharCodeFromSignature != 1733843290 && FourCharCodeFromSignature != 1734438260)
        {
          if (FourCharCodeFromSignature == 1751405638)
          {
            if (ColorSyncProfileIsPQBased(*(this + 2)) || ColorSyncProfileIsHLGBased(*(this + 2)))
            {
              v13 = 0;
            }

            else
            {
              v13 = 4294967126;
            }

            CMMThrowExceptionOnError(v13);
          }

          continue;
        }
      }

      else if (FourCharCodeFromSignature > 1633763938)
      {
        if (FourCharCodeFromSignature <= 1633768034)
        {
          if (FourCharCodeFromSignature != 1633763939)
          {
            v14 = 18275;
LABEL_36:
            v15 = v14 | 0x61610000;
LABEL_39:
            if (FourCharCodeFromSignature != v15)
            {
              continue;
            }
          }
        }

        else if (FourCharCodeFromSignature != 1633768035 && FourCharCodeFromSignature != 1633772135)
        {
          v14 = 26471;
          goto LABEL_36;
        }
      }

      else if ((FourCharCodeFromSignature - 1093812784) >= 3 && (FourCharCodeFromSignature - 1110589744) >= 3)
      {
        continue;
      }

      v16 = *(this + 2);
      if (!*(v16 + 156))
      {
        Tag = ColorSyncProfileGetTag(*(this + 2), ValueAtIndex);
        if (Tag)
        {
          v18 = Tag;
          v33 = 0;
          context[0] = CFDataGetBytePtr(Tag);
          context[1] = CFDataGetLength(v18);
          LOBYTE(v33) = 0;
          v34 = ValueAtIndex;
          v35 = 0;
          CFDictionaryApplyFunction(*(v16 + 96), overlap_verifier, context);
          if (v33)
          {
            v19 = ColorSyncProfileCopyDescriptionString(*(this + 2));
            v26 = v19;
            v27 = @"No description";
            if (v19)
            {
              LOBYTE(v27) = v19;
            }

            ColorSyncLog(2, "Invalid profile '%@': tags '%@' and '%@' overlap", v20, v21, v22, v23, v24, v25, v27);
            if (v26)
            {
              CFRelease(v26);
            }
          }
        }
      }

      if (!CMMProfile::GetTag(this, v12))
      {
        goto LABEL_55;
      }
    }
  }

  v8 = 1;
LABEL_55:
  v28 = *(this + 20);
  *(this + 20) = 0;
  if (v28)
  {
    do
    {
      v29 = v28[2];
      (*(*v28 + 8))(v28);
      v28 = v29;
    }

    while (v29);
  }

  CFRelease(v5);
  return v8;
}

void sub_19A91CE3C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19A91CDE4);
}

uint64_t computeMD5(const __CFData *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  *md = 0;
  v22 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (BytePtr)
  {
    v4 = Length;
    result = 0;
    if (v4 >= 0x80)
    {
      v6 = *BytePtr;
      v7 = *(BytePtr + 1);
      v8 = *(BytePtr + 3);
      v16 = *(BytePtr + 2);
      v10 = *(BytePtr + 6);
      v9 = *(BytePtr + 7);
      v11 = *(BytePtr + 4);
      *v19 = *(BytePtr + 5);
      *&v19[16] = v10;
      v17 = v8;
      v18 = v11;
      data[0] = v6;
      data[1] = v7;
      v20 = v9;
      HIDWORD(v16) = 0;
      LODWORD(v18) = 0;
      *&v19[4] = 0uLL;
      memset(&v14, 0, sizeof(v14));
      CC_MD5_Init(&v14);
      CC_MD5_Update(&v14, data, 0x80u);
      v12 = bswap32(data[0]);
      if (v4 < v12)
      {
        v12 = v4;
      }

      if (v12 - 129 <= 0xFFFFFFFE)
      {
        CC_MD5_Update(&v14, BytePtr + 128, v12 - 128);
      }

      CC_MD5_Final(md, &v14);
      result = *md;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AppleCMMValidateProfile(CMMProfileMaker *a1)
{
  v8 = 0;
  CMMMemMgr::CMMMemMgr(&v8);
  Profile = CMMProfileMaker::MakeProfile(a1, &v8, 0);
  v3 = (*(*Profile + 16))(Profile);
  v4 = *(Profile + 2) - 1;
  *(Profile + 2) = v4;
  if (!v4)
  {
    (*(*Profile + 8))(Profile);
  }

  if (v8)
  {
    v5 = *v8;
    if (*v8)
    {
      do
      {
        v6 = *v5;
        free(v5);
        v5 = v6;
      }

      while (v6);
    }
  }

  CMMMemMgr::ReleaseMemList(&v8);
  return v3;
}

void sub_19A91D094(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (v10)
    {
      v12 = v10[2] - 1;
      v10[2] = v12;
      if (!v12)
      {
        (*(*v10 + 8))(v10);
      }
    }

    if (a10)
    {
      v13 = *a10;
      if (*a10)
      {
        do
        {
          v14 = *v13;
          free(v13);
          v13 = v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    if (v10)
    {
      v15 = v10[2] - 1;
      v10[2] = v15;
      if (!v15)
      {
        (*(*v10 + 8))(v10);
      }
    }

    if (a10)
    {
      v16 = *a10;
      if (*a10)
      {
        do
        {
          v17 = *v16;
          free(v16);
          v16 = v17;
        }

        while (v17);
      }
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x19A91D070);
}

void sub_19A91D170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

CFComparisonResult compareTags(const __CFString *a1, const __CFString *a2)
{
  FourCharCodeFromSignature = ColorSyncGetFourCharCodeFromSignature(a1);
  v5 = ColorSyncGetFourCharCodeFromSignature(a2);
  v6 = 0;
  while (FourCharCodeFromSignature != *&aCsedmcsdtrpctp[4 * v6])
  {
    if (++v6 == 28)
    {
      v6 = 1000;
      break;
    }
  }

  v7 = 0;
  while (v5 != *&aCsedmcsdtrpctp[4 * v7])
  {
    if (++v7 == 28)
    {
      v7 = 1000;
      break;
    }
  }

  if (v6 < 0x3E8 || v7 <= 0x3E7)
  {
    v9 = v6 >= v7;
    v10 = v6 == v7;
    v11 = -1;
    if (v9)
    {
      v11 = 1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else
  {

    return CFStringCompare(a1, a2, 0);
  }
}

uint64_t ColorSyncGetFourCharCodeFromSignature(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    CStringPtr = CFStringGetCStringPtr(result, 0x600u);
    *buffer = 0;
    v6 = 0;
    if (CStringPtr)
    {
      v3 = *CStringPtr;
    }

    else
    {
      if (!CFStringGetCString(v1, buffer, 16, 0x600u))
      {
        result = 1061109567;
        goto LABEL_7;
      }

      v3 = *buffer;
    }

    result = bswap32(v3);
  }

LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL CMMProfileMaker::TagExists(CMMProfileMaker *this, const ColorSyncProfile *a2)
{
  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(a2);
  v4 = ColorSyncProfileContainsTag(this, SignatureFromFourCharCode);
  CFRelease(SignatureFromFourCharCode);
  return v4;
}

void CMMBase::operator delete(pthread_mutex_t **a1)
{
  if (!a1)
  {
    return;
  }

  pthread_mutex_lock(*(a1 - 1));
  v2 = *(a1 - 3);
  if (v2)
  {
    v3 = *(a1 - 4);
LABEL_6:
    *v2 = v3;
    goto LABEL_7;
  }

  v2 = *(a1 - 2);
  v3 = *(a1 - 4);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v3)
  {
    v4 = *(a1 - 2);
    if (v4)
    {
      v5 = 0;
      *(v3 + 16) = v4;
    }

    else
    {
      v5 = *(a1 - 3);
    }

    *(v3 + 8) = v5;
  }

  pthread_mutex_unlock(*(a1 - 1));

  free(a1 - 4);
}

uint64_t CMMCurveTag::Initialize(uint64_t this)
{
  v2 = **(this + 40);
  *(this + 52) = bswap32(v2);
  if (v2 == 1987212643)
  {
    v3 = this;
    if (*(this + 32) >= 0xCuLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294967126;
    }

    CMMThrowExceptionOnError(v4);
    if (*(v3 + 32) >= 2 * bswap32(*(*(v3 + 40) + 8)) + 12)
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294967126;
    }

    return CMMThrowExceptionOnError(v5);
  }

  return this;
}

void CMMTagDataAccess::~CMMTagDataAccess(CMMTagDataAccess *this)
{
  *this = &unk_1F0E08C80;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  CMMTagDataAccess::~CMMTagDataAccess(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMThrowExceptionOnError(uint64_t result)
{
  if (result)
  {
    v1 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v1;
  }

  return result;
}

uint64_t CMMGetChannelCountFromCMMSpace(int a1)
{
  v1 = 0;
  v2 = 0;
  if (a1 > 1145261137)
  {
    if (a1 > 1282766367)
    {
      if (a1 <= 1482250783)
      {
        if (a1 == 1282766368 || a1 == 1347182946)
        {
          goto LABEL_65;
        }

        v10 = 1380401696;
        goto LABEL_56;
      }

      if (a1 <= 1501067551)
      {
        if (a1 == 1482250784)
        {
          goto LABEL_65;
        }

        v10 = 1497588338;
        goto LABEL_56;
      }

      if (a1 == 1501067552)
      {
        goto LABEL_65;
      }

      v5 = 1734438260;
    }

    else
    {
      if (a1 <= 1178815569)
      {
        if (a1 == 1145261138)
        {
          v2 = 1;
          v1 = 13;
          goto LABEL_66;
        }

        if (a1 != 1145856354)
        {
          v3 = a1 == 1162038354;
          v4 = 14;
          goto LABEL_25;
        }

        goto LABEL_65;
      }

      if (a1 > 1212961567)
      {
        if (a1 == 1212961568)
        {
          goto LABEL_65;
        }

        v10 = 1213421088;
        goto LABEL_56;
      }

      if (a1 == 1178815570)
      {
        v2 = 1;
        v1 = 15;
        goto LABEL_66;
      }

      v5 = 1196573017;
    }

    if (a1 != v5)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (a1 <= 943934545)
  {
    if (a1 > 876825681)
    {
      if (a1 <= 910380113)
      {
        if (a1 != 876825682)
        {
          v3 = a1 == 893602898;
          v4 = 5;
LABEL_25:
          v2 = v3;
          if (v3)
          {
            v1 = v4;
          }

          else
          {
            v1 = 0;
          }

          goto LABEL_66;
        }

LABEL_60:
        v2 = 1;
        v1 = 4;
        goto LABEL_66;
      }

      v6 = 910380114;
      v7 = 6;
      v8 = a1 == 927157330;
      v9 = 7;
      goto LABEL_43;
    }

    if (a1 != 1)
    {
      if (a1 == 843271250)
      {
        v2 = 1;
        v1 = 2;
        goto LABEL_66;
      }

      v10 = 860048466;
LABEL_56:
      if (a1 != v10)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

LABEL_64:
    v2 = 1;
    v1 = 1;
    goto LABEL_66;
  }

  if (a1 <= 1111706705)
  {
    v6 = 943934546;
    v7 = 8;
    v11 = 10;
    if (a1 != 1094929490)
    {
      v11 = 0;
    }

    v12 = a1 == 960711762 || a1 == 1094929490;
    if (a1 == 960711762)
    {
      v9 = 9;
    }

    else
    {
      v9 = v11;
    }

    goto LABEL_48;
  }

  if (a1 > 1129142559)
  {
    if (a1 != 1129142560)
    {
      if (a1 != 1129142603)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

LABEL_65:
    v2 = 1;
    v1 = 3;
    goto LABEL_66;
  }

  v6 = 1111706706;
  v7 = 11;
  v8 = a1 == 1128483922;
  v9 = 12;
LABEL_43:
  v12 = v8;
  if (!v8)
  {
    v9 = 0;
  }

LABEL_48:
  v13 = a1 == v6;
  v2 = a1 == v6 || v12;
  if (v13)
  {
    v1 = v7;
  }

  else
  {
    v1 = v9;
  }

LABEL_66:
  if (!a1)
  {
    v2 = 1;
  }

  if (v2)
  {
    v14 = 0;
  }

  else
  {
    v14 = 4294967126;
  }

  CMMThrowExceptionOnError(v14);
  return v1;
}

void CMMMemMgr::ReleaseMemList(void **this)
{
  if (*this)
  {
    pthread_mutex_lock((*this + 8));
    v2 = *this;
    v3 = *(*this + 18) - 1;
    *(v2 + 18) = v3;
    pthread_mutex_unlock((v2 + 8));
    if (!v3)
    {
      pthread_mutex_destroy((*this + 8));
      free(*this);
      *this = 0;
    }
  }
}

uint64_t CMMXYZTag::CMMXYZTag(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F0E08C48;
  *(a1 + 8) = a2;
  *(a1 + 24) = a5;
  *(a1 + 32) = a4;
  *(a1 + 16) = 0;
  if (a5)
  {
    *(a5 + 16) = a1;
  }

  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *a1 = &unk_1F0E09148;
  if (a4 >= 0x14)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4294967126;
  }

  CMMThrowExceptionOnError(v6);
  return a1;
}

unint64_t CMMProfileInfoContainer::GetMaxNofChannels(CMMProfileInfoContainer *this)
{
  v1 = *(this + 2) - *(this + 1);
  if (!v1)
  {
    return 3;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v1 >> 3);
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = 3;
  do
  {
    v8 = *(this + 1);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v8) >> 3) <= v4)
    {
      std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__throw_out_of_range[abi:ne200100]();
    }

    v9 = *(v8 + v3 + 8);
    v10 = *(v9 + 48);
    if (v10 <= 1296255029)
    {
      if (v10 == 1281450528)
      {
        v10 = 1145856354;
      }

      else if (v10 == 1296255029)
      {
        v10 = 893602898;
      }
    }

    else
    {
      switch(v10)
      {
        case 1296255030:
          v10 = 910380114;
          break;
        case 1296255031:
          v10 = 927157330;
          break;
        case 1296255032:
          v10 = 943934546;
          break;
      }
    }

    v11 = *(v9 + 52);
    if (v11 == 1281450528)
    {
      v12 = 1347182946;
    }

    else
    {
      v12 = v11;
    }

    if (*(v8 + v3 + 16) != 4)
    {
      v13 = CMMGetChannelCountFromCMMSpace(v10);
      if (v7 <= v13)
      {
        v7 = v13;
      }
    }

    v14 = CMMGetChannelCountFromCMMSpace(v12);
    if (v7 <= v14)
    {
      v7 = v14;
    }

    ++v4;
    v3 += 40;
  }

  while (v6 != v4);
  return v7;
}

CFDataRef ColorSyncProfileCopyTag(ColorSyncProfileRef prof, CFStringRef signature)
{
  if (!prof)
  {
    return 0;
  }

  v4 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  if (*(prof + 39) == 1)
  {
    pthread_mutex_lock((prof + 24));
  }

  Tag = getTag(prof, signature);
  if (Tag)
  {
    Copy = CFDataCreateCopy(0, Tag);
  }

  else
  {
    Copy = 0;
  }

  if (*(prof + 39) == 1)
  {
    pthread_mutex_unlock((prof + 24));
  }

  return Copy;
}

ColorSyncTransformRef ColorSyncTransformCreate(CFArrayRef profileSequence, CFDictionaryRef options)
{
  if (!profileSequence)
  {
    LODWORD(v6) = 0;
    goto LABEL_43;
  }

  v4 = CFGetTypeID(profileSequence);
  if (v4 != CFArrayGetTypeID())
  {
    goto LABEL_21;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(profileSequence, 0);
  v6 = ValueAtIndex;
  if (ValueAtIndex)
  {
    v7 = CFGetTypeID(ValueAtIndex);
    if (v7 != CFDictionaryGetTypeID())
    {
      goto LABEL_21;
    }

    Value = CFDictionaryGetValue(v6, kColorSyncProfile);
    v9 = CFDictionaryGetValue(v6, kColorSyncTransformTag);
    if (!Value)
    {
      goto LABEL_21;
    }

    v10 = v9;
    v11 = CFGetTypeID(Value);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    LODWORD(v6) = 0;
    if (v11 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID && v10)
    {
      v12 = ColorSyncProfileCopyHeader(Value);
      if (!CFEqual(v10, kColorSyncTransformDeviceToPCS))
      {
        if (CFEqual(v10, kColorSyncTransformPCSToPCS) || CFEqual(v10, kColorSyncTransformPCSToDevice))
        {
          if (v12)
          {
            BytePtr = CFDataGetBytePtr(v12);
            if (BytePtr)
            {
              v14 = BytePtr + 20;
              goto LABEL_20;
            }

LABEL_37:
            LODWORD(v6) = 0;
            goto LABEL_38;
          }

          goto LABEL_21;
        }

        if (!CFEqual(v10, kColorSyncTransformDeviceToDevice) && !CFEqual(v10, kColorSyncTransformSceneLinearToPCS) && !CFEqual(v10, kColorSyncTransformDisplayLinearToPCS) && !CFEqual(v10, kColorSyncTransformDeviceToSceneLinearPCS))
        {
          LODWORD(v6) = 0;
          if (!v12)
          {
            goto LABEL_22;
          }

          goto LABEL_38;
        }
      }

      if (v12)
      {
        v13 = CFDataGetBytePtr(v12);
        if (v13)
        {
          v14 = v13 + 16;
LABEL_20:
          LODWORD(v6) = *v14;
LABEL_38:
          CFRelease(v12);
          goto LABEL_22;
        }

        goto LABEL_37;
      }

LABEL_21:
      LODWORD(v6) = 0;
    }
  }

LABEL_22:
  v16 = CFGetTypeID(profileSequence);
  if (v16 != CFArrayGetTypeID())
  {
    goto LABEL_43;
  }

  if (CFArrayGetCount(profileSequence) < 1)
  {
    goto LABEL_43;
  }

  Count = CFArrayGetCount(profileSequence);
  v18 = CFArrayGetValueAtIndex(profileSequence, Count - 1);
  if (!v18)
  {
    goto LABEL_43;
  }

  v19 = v18;
  v20 = CFGetTypeID(v18);
  if (v20 != CFDictionaryGetTypeID())
  {
    goto LABEL_43;
  }

  v21 = CFDictionaryGetValue(v19, kColorSyncProfile);
  v22 = CFDictionaryGetValue(v19, kColorSyncTransformTag);
  if (!v21)
  {
    goto LABEL_43;
  }

  v23 = v22;
  v24 = CFGetTypeID(v21);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    v38 = v24;
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    v24 = v38;
  }

  v25 = 0;
  if (v24 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID && v23)
  {
    v26 = ColorSyncProfileCopyHeader(v21);
    if (CFEqual(v23, kColorSyncTransformDeviceToPCS) || CFEqual(v23, kColorSyncTransformPCSToPCS))
    {
LABEL_33:
      if (v26)
      {
        v27 = CFDataGetBytePtr(v26);
        if (v27)
        {
          v28 = (v27 + 20);
LABEL_36:
          v25 = *v28;
LABEL_58:
          CFRelease(v26);
          goto LABEL_44;
        }

        goto LABEL_57;
      }

      goto LABEL_43;
    }

    if (CFEqual(v23, kColorSyncTransformPCSToDevice))
    {
LABEL_40:
      if (v26)
      {
        v29 = CFDataGetBytePtr(v26);
        if (v29)
        {
          v28 = (v29 + 16);
          goto LABEL_36;
        }

LABEL_57:
        v25 = 0;
        goto LABEL_58;
      }

LABEL_43:
      v25 = 0;
      goto LABEL_44;
    }

    if (CFEqual(v23, kColorSyncTransformDeviceToDevice))
    {
      goto LABEL_33;
    }

    if (CFEqual(v23, kColorSyncTransformGamutCheck))
    {
      v25 = 1734438260;
    }

    else
    {
      if (CFEqual(v23, kColorSyncTransformPCSToSceneLinear) || CFEqual(v23, kColorSyncTransformPCSToDisplayLinear) || CFEqual(v23, kColorSyncTransformSceneLinearPCSToDevice))
      {
        goto LABEL_40;
      }

      v25 = 0;
    }

    if (v26)
    {
      goto LABEL_58;
    }
  }

LABEL_44:
  RuntimeInstance = createRuntimeInstance(v6, v25, profileSequence);
  if (RuntimeInstance)
  {
    v31 = ColorSyncCMMCreateAppleCMM();
    if (profileSequence && (v32 = v31, v33 = CFGetTypeID(profileSequence), v33 == CFArrayGetTypeID()) && (!options || (v34 = CFGetTypeID(options), v34 == CFDictionaryGetTypeID())) && (v35 = v32[6]) != 0 && v35(RuntimeInstance, profileSequence, options))
    {
      *(RuntimeInstance + 10) = CFRetain(v32);
      CFDictionarySetValue(*(RuntimeInstance + 14), kColorSyncTransformCreator, @"Apple CMM");
      CFRelease(@"Apple CMM");
      if (options)
      {
        v36 = CFRetain(options);
      }

      else
      {
        v36 = 0;
      }

      *(RuntimeInstance + 16) = v36;
    }

    else
    {
      CFRelease(RuntimeInstance);
      return 0;
    }
  }

  return RuntimeInstance;
}

uint64_t getColorSpacetNofComponents(int a1)
{
  v1 = 0;
  if (a1 > 1145261137)
  {
    if (a1 <= 1281450527)
    {
      if (a1 <= 1196573016)
      {
        v2 = 1145261138;
        v3 = 13;
        v7 = 1162038354;
        v8 = 14;
        v9 = a1 == 1178815570;
        v10 = 15;
        goto LABEL_24;
      }

      if (a1 != 1196573017)
      {
        if (a1 == 1212961568)
        {
          return 3;
        }

        v5 = 1213421088;
        goto LABEL_35;
      }
    }

    else
    {
      if (a1 <= 1482250783)
      {
        if (a1 == 1281450528 || a1 == 1282766368)
        {
          return 3;
        }

        v5 = 1380401696;
        goto LABEL_35;
      }

      if (a1 <= 1501067551)
      {
        if (a1 == 1482250784)
        {
          return 3;
        }

        v5 = 1497588338;
LABEL_35:
        if (a1 != v5)
        {
          return v1;
        }

        return 3;
      }

      if (a1 == 1501067552)
      {
        return 3;
      }

      if (a1 != 1734438260)
      {
        return v1;
      }
    }

    return 1;
  }

  if (a1 <= 943934545)
  {
    if (a1 <= 893602897)
    {
      if (a1 == 843271250)
      {
        return 2;
      }

      if (a1 != 860048466)
      {
        v6 = 876825682;
        goto LABEL_39;
      }

      return 3;
    }

    v2 = 893602898;
    v3 = 5;
    v7 = 910380114;
    v8 = 6;
    v9 = a1 == 927157330;
    v10 = 7;
LABEL_24:
    if (!v9)
    {
      v10 = 0;
    }

    if (a1 == v7)
    {
      v4 = v8;
    }

    else
    {
      v4 = v10;
    }

    goto LABEL_29;
  }

  if (a1 <= 1111706705)
  {
    v2 = 943934546;
    v3 = 8;
    v7 = 960711762;
    v8 = 9;
    v9 = a1 == 1094929490;
    v10 = 10;
    goto LABEL_24;
  }

  if (a1 <= 1129142559)
  {
    v2 = 1111706706;
    v3 = 11;
    v4 = 12;
    if (a1 != 1128483922)
    {
      v4 = 0;
    }

LABEL_29:
    if (a1 == v2)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  if (a1 == 1129142560)
  {
    return 3;
  }

  v6 = 1129142603;
LABEL_39:
  if (a1 == v6)
  {
    return 4;
  }

  return v1;
}